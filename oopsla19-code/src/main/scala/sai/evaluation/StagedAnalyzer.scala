package sai.evaluation

import scala.virtualization.lms.internal.GenericNestedCodegen
import scala.virtualization.lms.common.{
  SetOps => _, SetOpsExp => _, ScalaGenSetOps => _,
  ListOps => _, ListOpsExp => _, ScalaGenListOps => _,
  _}
import org.scala_lang.virtualized.virtualize
import org.scala_lang.virtualized.SourceContext

import sai.lms._
import sai.monads._
import sai.lattices._
import sai.lattices.Lattices._
import sai.evaluation.parser._

@virtualize
trait StagedSchemeAnalyzerOps extends AbstractComponents with RepMonads with RepLattices with SAIDsl {
  import ReaderT._
  import StateT._
  import ListReaderStateM._

  //type Config = (Expr, Env, Store)
  type Config = (Int, Env, Store)
  type Cache = Map[Config, Set[(Value, Store)]]

  type EnvT[F[_], B] = ReaderT[F, Env, B]
  type StoreT[F[_], B] = StateT[F, Store, B]

  type NdInOutCacheM[T] = ListReaderStateM[Cache, Cache, T]
  type StoreNdInOutCacheM[T] = StoreT[NdInOutCacheM, T]

  def mCache: Manifest[Cache] = manifest[Cache]
  def mValue: Manifest[Value] = manifest[Value]
  def mAddr: Manifest[Addr] = manifest[Addr]

  type R[T] = Rep[T]
  type AnsM[T] = ReaderT[StateT[ListReaderStateM[Cache, Cache, ?], Store, ?], Env, T]

  def mapM[A, B](xs: List[A])(f: A => AnsM[B])(implicit mB: Manifest[B]): AnsM[List[B]] = Monad.mapM(xs)(f)
  def forM[A, B](xs: List[A])(f: A => AnsM[B])(implicit mB: Manifest[B]): AnsM[B] = Monad.forM(xs)(f)

  def emit_ap_clo(fun: Rep[AbsValue], arg: Rep[List[Value]], σ: Rep[Store],
                  in: Rep[Cache], out: Rep[Cache]): Rep[(List[(Value, Store)], Cache)]
  def emit_compiled_clo(f: (Rep[List[Value]], Rep[Store], Rep[Cache], Rep[Cache]) => Rep[(List[(Value, Store)], Cache)],
                        λ: Lam, ρ: Rep[Env]): Rep[AbsValue]
  def emit_addr(x: String): Rep[Addr] = unit(ZCFAAddr(x))

  // environment operations
  def ask_env: AnsM[Env] = ReaderTMonad[StoreNdInOutCacheM, Env].ask
  def ext_env(ans: Ans)(xα: (String, Rep[Addr])): Ans =
    ReaderTMonad[StoreNdInOutCacheM, Env].local(ans)(ρ => ρ + (unit(xα._1) → xα._2))
  def local_env(ans: Ans)(ρ: Rep[Env]): Ans = ReaderTMonad[StoreNdInOutCacheM, Env].local(ans)(_ => ρ)

  // allocate addresses
  def alloc(σ: Rep[Store], x: String): Rep[Addr] = emit_addr(x)
  def alloc(x: String): AnsM[Addr] = for { σ <- get_store } yield alloc(σ, x)

  // store operations
  def get_store: AnsM[Store] = ReaderT.liftM[StoreNdInOutCacheM, Env, Store](StateTMonad[NdInOutCacheM, Store].get)
  def put_store(σ: Rep[Store]): AnsM[Unit] =
    ReaderT.liftM[StoreNdInOutCacheM, Env, Unit](StateTMonad[NdInOutCacheM, Store].put(σ))
  def set_store(αv: (Rep[Addr], Rep[Value])): AnsM[Unit] =
    ReaderT.liftM[StoreNdInOutCacheM, Env, Unit](StateTMonad[NdInOutCacheM, Store].mod(σ => σ ⊔ Map(αv)))

  def void: Ans = ReaderTMonad[StoreNdInOutCacheM, Env].pure[Value](Set[AbsValue]())
  def literal(i: Any): Ans = {
    val v: AbsValue = i match {
      case i: Int => IntV
      case f: Double => FloatV
      case c: Char => CharV
      case b: Boolean => BoolV
      case _ =>
        println(s"value representation for $i not implemented")
          ???
    }
    ReaderTMonad[StoreNdInOutCacheM, Env].pure[Value](Set[AbsValue](unit(v)))
  }
  def get(ρ: Rep[Env], x: String): Rep[Addr] = ρ(x)
  def get(σ: Rep[Store], ρ: Rep[Env], x: String): Rep[Value] = σ(ρ(x))
  def br(test: Rep[Value], thn: => Ans, els: => Ans): Ans =
    ReaderTMonadPlus[StoreNdInOutCacheM, Env].mplus(thn, els)
  def close(ev: EvalFun)(λ: Lam, ρ: Rep[Env]): Rep[Value] = {
    val Lam(params, e) = λ
    val f: (Rep[List[Value]], Rep[Store], Rep[Cache], Rep[Cache]) => Rep[(List[(Value,Store)], Cache)] = {
      case (args, σ, in, out) =>
        val αs: List[Rep[Addr]] = params.foldRight(collection.immutable.List[Rep[Addr]]()) { case (x, αs_*) => alloc(σ, x)::αs_* }
        val ρ_* = params.zip(αs).foldLeft(ρ) { case (ρ, (x, α)) => ρ + (unit(x) → α) }
        val repαs: Rep[List[Addr]] = List(αs :_*)
        val σ_* = repαs.zip(args).foldLeft(σ) { case (σ, αv) => σ ⊔ Map(αv) }
        ev(e)(ρ_*)(σ_*).run(in)(out)
    }
    Set[AbsValue](emit_compiled_clo(f, λ, ρ))
  }
  def ap_clo(ev: EvalFun)(fun: Rep[Value], args: Rep[List[Value]]): Ans = {
    get_store.flatMap { σ =>
      lift_nd[AbsValue](fun.toList).flatMap { clo =>
        ask_in_cache.flatMap { in =>
          get_out_cache.flatMap { out =>
            val res: Rep[(List[(Value, Store)], Cache)] = emit_ap_clo(clo, args, σ, in, out)
            put_out_cache(res._2).flatMap { _ =>
              lift_nd[(Value, Store)](res._1).flatMap { vs =>
                put_store(vs._2).map { _ => vs._1 }
              } } } } } } }
  def primtives(v: Rep[Value], args: List[Rep[Value]]): Rep[Value] = ???

  // auxiliary function that lifts values
  def lift_nd[T: Manifest](vs: Rep[List[T]]): AnsM[T] =
    ReaderT.liftM[StoreNdInOutCacheM, Env, T](
      StateT.liftM[NdInOutCacheM, Store, T](
        ListReaderStateM.fromList(vs)
      ))

  // cache operations
  def ask_in_cache: AnsM[Cache] =
    ReaderT.liftM[StoreNdInOutCacheM, Env, Cache](
      StateT.liftM[NdInOutCacheM, Store, Cache](
        ListReaderStateMonad[Cache, Cache].ask
      ))
  def get_out_cache: AnsM[Cache] =
    ReaderT.liftM[StoreNdInOutCacheM, Env, Cache](
      StateT.liftM[NdInOutCacheM, Store, Cache](
        ListReaderStateMonad[Cache, Cache].get
      ))
  def put_out_cache(out: Rep[Cache]): AnsM[Unit] =
    ReaderT.liftM[StoreNdInOutCacheM, Env, Unit](
      StateT.liftM[NdInOutCacheM, Store, Unit](
        ListReaderStateMonad[Cache, Cache].put(out)
      ))
  def update_out_cache(cfg: Rep[Config], vs: Rep[(Value, Store)]): AnsM[Unit] =
    ReaderT.liftM[StoreNdInOutCacheM, Env, Unit](
      StateT.liftM[NdInOutCacheM, Store, Unit](
        ListReaderStateMonad[Cache, Cache].mod(c => c ⊔ Map(cfg → Set(vs)))
      ))

  def fix_select: EvalFun = e => e match {
    case Void() | Sym(_) | CharLit(_) | IntLit(_)
       | FloatLit(_) | BoolLit(_) | Var(_) | Lam(_, _) => eval(fix_select)(e)
    case _ => fix_cache(e)
  }

  def fix_cache: EvalFun = { e =>
    ask_env.flatMap { ρ =>
      get_store.flatMap { σ =>
        ask_in_cache.flatMap { in =>
          get_out_cache.flatMap { out =>
            //val cfg: Rep[(Expr, Env, Store)] = (unit(e), ρ, σ)
            val cfg: Rep[(Int, Env, Store)] = (unit(e.hashCode), ρ, σ)
            val res: Rep[(List[(Value, Store)], Cache)] =
              if (out.contains(cfg)) {
                (repMapToMapOps(out).apply(cfg).toList, out) //FIXME: ambigious implicit
              } else {
                val res_in = in.getOrElse(cfg, RepLattice[Set[(Value, Store)]].bot)
                val m: Ans = for {
                  _ <- put_out_cache(out + (cfg → res_in))
                  v <- eval(fix_select)(e)
                  σ <- get_store
                  _ <- update_out_cache(cfg, (v, σ))
                } yield v
                m(ρ)(σ)(in)(out)
              }
            put_out_cache(res._2).flatMap { _ =>
              lift_nd(res._1).flatMap { vs =>
                put_store(vs._2).map { _ =>
                  vs._1
                } } } } } } } }

  val ρ0: Rep[Env] = Map[String, Addr]()
  val σ0: Rep[Store] = Map[Addr, Value]()
  val cache0: Rep[Cache] = Map[Config, Set[(Value, Store)]]()

  type Result = (Rep[List[(Value, Store)]], Rep[Cache])
  def fix(ev: EvalFun => EvalFun): EvalFun = fix_select
  def run(e: Expr): (Rep[List[(Value, Store)]], Rep[Cache]) = fix(eval)(e)(ρ0)(σ0)(cache0)(cache0)
}

trait ZeroCFAEnvOpt extends MapOpsExpOpt { self: StagedSchemeAnalyzerOps =>
  override def map_apply[K:Manifest,V:Manifest](m: Exp[Map[K,V]], k:Exp[K])(implicit pos: SourceContext) = (m, k) match {
    case (m1: Exp[Map[String,Addr]], Const(x: String)) => unit(ZCFAAddr(x).asInstanceOf[V])
    case _ => super.map_apply(m, k)
  }
}

trait StagedSchemeAnalyzerExp extends StagedSchemeAnalyzerOps with SAIOpsExp with ZeroCFAEnvOpt {
  //case class IRCompiledClo(f: (List[Exp[Value]], Exp[Store], Exp[Cache], Exp[Cache]) => Exp[(List[(Value, Store)], Cache)],
  case class IRCompiledClo(f: Exp[((List[Value], Store, Cache, Cache)) => (List[(Value, Store)], Cache)],
                           λ: Int, ρ: Exp[Env]) extends Def[AbsValue]
  case class IRApClo(clo: Exp[AbsValue], args: Exp[List[Value]], σ: Exp[Store],
                     in: Exp[Cache], out: Exp[Cache]) extends Def[(List[(Value, Store)], Cache)]

  def emit_compiled_clo(f: (Exp[List[Value]], Exp[Store], Exp[Cache], Exp[Cache]) => Exp[(List[(Value, Store)], Cache)],
                        λ: Lam, ρ: Exp[Env]) = {
    reflectEffect(IRCompiledClo(fun(f), λ.hashCode, ρ))
  }

  def emit_ap_clo(clo: Exp[AbsValue], args: Exp[List[Value]], σ: Exp[Store], in: Exp[Cache], out: Exp[Cache]) = clo match {
    case _ => reflectEffect(IRApClo(clo, args, σ, in, out))
  }
}

trait StagedSchemeAnalyzerGen extends GenericNestedCodegen {
  val IR: StagedSchemeAnalyzerExp
  import IR._

  override def remap[A](m: Manifest[A]): String = {
    if (m.toString.endsWith("$AbsValue")) "AbsValue"
    else if (m.toString.endsWith("$ZCFAAddr")) "ZCFAAddr"
    else if (m.toString.endsWith("$Addr")) "Addr"
    else if (m.toString.endsWith("$Expr")) "Expr"
    else super.remap(m)
  }

  override def emitNode(sym: Sym[Any], rhs: Def[Any]) = rhs match {
    case IRCompiledClo(f, λ, ρ) =>
      emitValDef(sym, s"CompiledClo(${quote(f)}, ${quote(λ)}, ${quote(ρ)})")
    case IRApClo(f, args, σ, in, out) =>
      emitValDef(sym, s"${quote(f)}.asInstanceOf[CompiledClo].f(${quote(args)}, ${quote(σ)}, ${quote(in)}, ${quote(out)})")
    case Struct(tag, elems) =>
      //This fixes code generation for tuples, such as Tuple2MapIntValueValue
      //TODO: merge back to LMS
      registerStruct(structName(sym.tp), sym.tp, elems)
      val typeName = sym.tp.runtimeClass.getSimpleName +
        "[" + sym.tp.typeArguments.map(a => remap(a)).mkString(",") + "]"
      emitValDef(sym, "new " + typeName + "(" + elems.map(e => quote(e._2)).mkString(",") + ")")
    case _ => super.emitNode(sym, rhs)
  }
}

trait StagedSchemeAnalyzerDriver extends DslDriver[Unit, Unit] with StagedSchemeAnalyzerExp { q =>
  override val codegen = new DslGen
      with ScalaGenMapOps
      with ScalaGenSetOps
      with ScalaGenListOps
      with ScalaGenUncheckedOps
      with SAI_ScalaGenTupleOps
      with SAI_ScalaGenTupledFunctions
      with StagedSchemeAnalyzerGen
  {
    val IR: q.type = q
    override def emitSource[A : Manifest](args: List[Sym[_]], body: Block[A], className: String,
                                          stream: java.io.PrintWriter): List[(Sym[Any], Any)] = {
      val prelude = """
  import sai.evaluation.parser._
  import sai.evaluation.SAIRuntime._
      """
      stream.println(prelude)
      super.emitSource(args, body, className, stream)
    }
  }
}