; ModuleID = './bubblesort.c'
source_filename = "./bubblesort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubble_sort(i32* %d, i32 %n) #0 {
entry:
  %d.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %d, i32** %d.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32*, i32** %d.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %d.addr, align 8
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom4 = sext i32 %sub to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp slt i32 %6, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %10 = load i32*, i32** %d.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  store i32 %12, i32* %temp, align 4
  %13 = load i32*, i32** %d.addr, align 8
  %14 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 %14, 1
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32*, i32** %d.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %16, i64 %idxprom12
  store i32 %15, i32* %arrayidx13, align 4
  %18 = load i32, i32* %temp, align 4
  %19 = load i32*, i32** %d.addr, align 8
  %20 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %20, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %19, i64 %idxprom15
  store i32 %18, i32* %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %22 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, i32* %k, align 4
  br label %for.cond

for.end19:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca [4 x i32], align 16
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 0
  %call = call i32 (i32*, i64, ...) bitcast (i32 (...)* @make_symbolic to i32 (i32*, i64, ...)*)(i32* %arraydecay, i64 16)
  %arraydecay1 = getelementptr inbounds [4 x i32], [4 x i32]* %data, i64 0, i64 0
  call void @bubble_sort(i32* %arraydecay1, i32 4)
  ret i32 0
}

declare dso_local i32 @make_symbolic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-16 "}
