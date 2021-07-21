; ModuleID = './kth.c'
source_filename = "./kth.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kth(i32* %arr1, i32* %arr2, i32 %m, i32 %n, i32 %k) #0 {
entry:
  %arr1.addr = alloca i32*, align 8
  %arr2.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %sorted1 = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  store i32* %arr1, i32** %arr1.addr, align 8
  store i32* %arr2, i32** %arr2.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, %1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @malloc(i64 %mul)
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %sorted1, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %d, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32*, i32** %arr1.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32*, i32** %arr2.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp slt i32 %10, %13
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %14 = load i32*, i32** %arr1.addr, align 8
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %17 = load i32*, i32** %sorted1, align 8
  %18 = load i32, i32* %d, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* %d, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 %idxprom11
  store i32 %16, i32* %arrayidx12, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %19 = load i32*, i32** %arr2.addr, align 8
  %20 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %j, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %19, i64 %idxprom14
  %21 = load i32, i32* %arrayidx15, align 4
  %22 = load i32*, i32** %sorted1, align 8
  %23 = load i32, i32* %d, align 4
  %inc16 = add nsw i32 %23, 1
  store i32 %inc16, i32* %d, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %22, i64 %idxprom17
  store i32 %21, i32* %arrayidx18, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond19

while.cond19:                                     ; preds = %while.body22, %while.end
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %m.addr, align 4
  %cmp20 = icmp slt i32 %24, %25
  br i1 %cmp20, label %while.body22, label %while.end29

while.body22:                                     ; preds = %while.cond19
  %26 = load i32*, i32** %arr1.addr, align 8
  %27 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %27, 1
  store i32 %inc23, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %26, i64 %idxprom24
  %28 = load i32, i32* %arrayidx25, align 4
  %29 = load i32*, i32** %sorted1, align 8
  %30 = load i32, i32* %d, align 4
  %inc26 = add nsw i32 %30, 1
  store i32 %inc26, i32* %d, align 4
  %idxprom27 = sext i32 %30 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %29, i64 %idxprom27
  store i32 %28, i32* %arrayidx28, align 4
  br label %while.cond19

while.end29:                                      ; preds = %while.cond19
  br label %while.cond30

while.cond30:                                     ; preds = %while.body33, %while.end29
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %n.addr, align 4
  %cmp31 = icmp slt i32 %31, %32
  br i1 %cmp31, label %while.body33, label %while.end40

while.body33:                                     ; preds = %while.cond30
  %33 = load i32*, i32** %arr2.addr, align 8
  %34 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, i32* %j, align 4
  %idxprom35 = sext i32 %34 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %33, i64 %idxprom35
  %35 = load i32, i32* %arrayidx36, align 4
  %36 = load i32*, i32** %sorted1, align 8
  %37 = load i32, i32* %d, align 4
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, i32* %d, align 4
  %idxprom38 = sext i32 %37 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %36, i64 %idxprom38
  store i32 %35, i32* %arrayidx39, align 4
  br label %while.cond30

while.end40:                                      ; preds = %while.cond30
  %38 = load i32*, i32** %sorted1, align 8
  %39 = load i32, i32* %k.addr, align 4
  %sub = sub nsw i32 %39, 1
  %idxprom41 = sext i32 %sub to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %38, i64 %idxprom41
  %40 = load i32, i32* %arrayidx42, align 4
  ret i32 %40
}

declare dso_local i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr1 = alloca [5 x i32], align 16
  %arr2 = alloca [5 x i32], align 16
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 5, i32* %k, align 4
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %arr1, i64 0, i64 0
  %call = call i32 (i32*, i64, ...) bitcast (i32 (...)* @make_symbolic to i32 (i32*, i64, ...)*)(i32* %arraydecay, i64 20)
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %arr2, i64 0, i64 0
  %call2 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @make_symbolic to i32 (i32*, i64, ...)*)(i32* %arraydecay1, i64 20)
  %arraydecay3 = getelementptr inbounds [5 x i32], [5 x i32]* %arr1, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [5 x i32], [5 x i32]* %arr2, i64 0, i64 0
  %0 = load i32, i32* %k, align 4
  %call5 = call i32 @kth(i32* %arraydecay3, i32* %arraydecay4, i32 5, i32 5, i32 %0)
  store i32 %call5, i32* %r, align 4
  ret i32 0
}

declare dso_local i32 @make_symbolic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-16 "}
