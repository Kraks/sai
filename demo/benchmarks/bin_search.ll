; ModuleID = './bin_search.c'
source_filename = "./bin_search.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"searching for %d in:\0A[\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"a[result] == x\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"./bin_search.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"a[i] != x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_data(i32* %arr, i32 %size, i32 %target) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32, i32* %target.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32*, i32** %arr.addr, align 8
  %8 = load i32, i32* %size.addr, align 4
  %sub2 = sub nsw i32 %8, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %7, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binary_search(i32* %arr, i32 %size, i32 %target) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  %2 = load i32, i32* %target.addr, align 4
  call void @print_data(i32* %0, i32 %1, i32 %2)
  store i32 0, i32* %low, align 4
  %3 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %high, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %4 = load i32, i32* %low, align 4
  %5 = load i32, i32* %high, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %low, align 4
  %7 = load i32, i32* %high, align 4
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %target.addr, align 4
  %cmp1 = icmp eq i32 %10, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load i32, i32* %mid, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %13 = load i32*, i32** %arr.addr, align 8
  %14 = load i32, i32* %mid, align 4
  %idxprom2 = sext i32 %14 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %13, i64 %idxprom2
  %15 = load i32, i32* %arrayidx3, align 4
  %16 = load i32, i32* %target.addr, align 4
  %cmp4 = icmp slt i32 %15, %16
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %17 = load i32, i32* %mid, align 4
  %add6 = add nsw i32 %17, 1
  store i32 %add6, i32* %low, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %18 = load i32*, i32** %arr.addr, align 8
  %19 = load i32, i32* %mid, align 4
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 %idxprom8
  %20 = load i32, i32* %arrayidx9, align 4
  %21 = load i32, i32* %target.addr, align 4
  %cmp10 = icmp sgt i32 %20, %21
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %22 = load i32, i32* %mid, align 4
  %sub12 = sub nsw i32 %22, 1
  store i32 %sub12, i32* %high, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  %x = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 ([10 x i32]*, i64, ...) bitcast (i32 (...)* @make_symbolic to i32 ([10 x i32]*, i64, ...)*)([10 x i32]* %a, i64 40)
  %call1 = call i32 (i32*, i64, ...) bitcast (i32 (...)* @make_symbolic to i32 (i32*, i64, ...)*)(i32* %x, i64 4)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 0
  %0 = load i32, i32* %x, align 4
  %call2 = call i32 @binary_search(i32* %arraydecay, i32 10, i32 %0)
  store i32 %call2, i32* %result, align 4
  %1 = load i32, i32* %result, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %1)
  %2 = load i32, i32* %result, align 4
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %result, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %x, align 4
  %cmp4 = icmp eq i32 %4, %5
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #3
  unreachable

if.end:                                           ; preds = %if.then5
  br label %if.end14

if.else6:                                         ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else6
  %6 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %6, 10
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx9, align 4
  %9 = load i32, i32* %x, align 4
  %cmp10 = icmp ne i32 %8, %9
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %for.body
  br label %if.end13

if.else12:                                        ; preds = %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #3
  unreachable

if.end13:                                         ; preds = %if.then11
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end14

if.end14:                                         ; preds = %for.end, %if.end
  ret i32 1
}

declare dso_local i32 @make_symbolic(...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-16 "}
