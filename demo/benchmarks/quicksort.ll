; ModuleID = './quicksort.c'
source_filename = "./quicksort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@d = common dso_local global [5 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qsort(i32 %l, i32 %r) #0 {
entry:
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %r.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @d, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %x, align 4
  %4 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %j, align 4
  %5 = load i32, i32* %l.addr, align 4
  store i32 %5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %r.addr, align 4
  %cmp1 = icmp sle i32 %6, %7
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* @d, i64 0, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32, i32* %x, align 4
  %cmp4 = icmp sle i32 %9, %10
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [5 x i32], [5 x i32]* @d, i64 0, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  store i32 %13, i32* %temp, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [5 x i32], [5 x i32]* @d, i64 0, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], [5 x i32]* @d, i64 0, i64 %idxprom10
  store i32 %15, i32* %arrayidx11, align 4
  %17 = load i32, i32* %temp, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [5 x i32], [5 x i32]* @d, i64 0, i64 %idxprom12
  store i32 %17, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %19, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %l.addr, align 4
  %21 = load i32, i32* %j, align 4
  %sub15 = sub nsw i32 %21, 1
  call void @qsort(i32 %20, i32 %sub15)
  %22 = load i32, i32* %j, align 4
  %add = add nsw i32 %22, 1
  %23 = load i32, i32* %r.addr, align 4
  call void @qsort(i32 %add, i32 %23)
  br label %if.end16

if.end16:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i32*, i64, ...) bitcast (i32 (...)* @make_symbolic to i32 (i32*, i64, ...)*)(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @d, i64 0, i64 0), i64 20)
  call void @qsort(i32 0, i32 4)
  ret i32 0
}

declare dso_local i32 @make_symbolic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-16 "}
