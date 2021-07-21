; ModuleID = './kmpmatcher.c'
source_filename = "./kmpmatcher.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pi = common dso_local global [4 x i32] zeroinitializer, align 16
@lp = common dso_local global i32 0, align 4
@lt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"matched with shift %d\0A\00", align 1
@__const.main.P = private unnamed_addr constant [5 x i8] c"llsc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_prefix_function(i8* %P) #0 {
entry:
  %P.addr = alloca i8*, align 8
  %q = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %P, i8** %P.addr, align 8
  store i32 0, i32* %q, align 4
  store i32 0, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @pi, i64 0, i64 0), align 16
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @lp, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i32, i32* %q, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %P.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %6 = load i8*, i8** %P.addr, align 8
  %7 = load i32, i32* %q, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %q, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* @pi, i64 0, i64 %idxprom7
  %11 = load i32, i32* %arrayidx8, align 4
  store i32 %11, i32* %q, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i8*, i8** %P.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %12, i64 %idxprom9
  %14 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %14 to i32
  %15 = load i8*, i8** %P.addr, align 8
  %16 = load i32, i32* %q, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv11, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %18 = load i32, i32* %q, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %q, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %19 = load i32, i32* %q, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* @pi, i64 0, i64 %idxprom17
  store i32 %19, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @KMP_matcher(i8* %P, i8* %T) #0 {
entry:
  %P.addr = alloca i8*, align 8
  %T.addr = alloca i8*, align 8
  %q = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %P, i8** %P.addr, align 8
  store i8* %T, i8** %T.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  call void @compute_prefix_function(i8* %0)
  store i32 0, i32* %q, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @lt, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, i32* %q, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %T.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8*, i8** %P.addr, align 8
  %8 = load i32, i32* %q, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  %cmp5 = icmp ne i32 %conv, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %q, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* @pi, i64 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  store i32 %12, i32* %q, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i8*, i8** %T.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %16 = load i8*, i8** %P.addr, align 8
  %17 = load i32, i32* %q, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %16, i64 %idxprom12
  %18 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp eq i32 %conv11, %conv14
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %19 = load i32, i32* %q, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %q, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %20 = load i32, i32* %q, align 4
  %21 = load i32, i32* @lp, align 4
  %cmp17 = icmp eq i32 %20, %21
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @lp, align 4
  %sub20 = sub nsw i32 %22, %23
  %add = add nsw i32 %sub20, 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %add)
  %24 = load i32, i32* %q, align 4
  %sub21 = sub nsw i32 %24, 1
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* @pi, i64 0, i64 %idxprom22
  %25 = load i32, i32* %arrayidx23, align 4
  store i32 %25, i32* %q, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %26 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %P = alloca [5 x i8], align 1
  %T = alloca [10 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i8]* %P to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.P, i32 0, i32 0), i64 5, i1 false)
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %T, i64 0, i64 0
  %call = call i32 (i8*, i32, ...) bitcast (i32 (...)* @make_symbolic to i32 (i8*, i32, ...)*)(i8* %arraydecay, i32 10)
  store i32 9, i32* @lt, align 4
  store i32 4, i32* @lp, align 4
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %P, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %T, i64 0, i64 0
  call void @KMP_matcher(i8* %arraydecay1, i8* %arraydecay2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @make_symbolic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-16 "}
