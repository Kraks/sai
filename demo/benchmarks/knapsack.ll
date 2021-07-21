; ModuleID = './knapsack.c'
source_filename = "./knapsack.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @knapSack(i32 %W, i32* %wt, i32* %val, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %W.addr = alloca i32, align 4
  %wt.addr = alloca i32*, align 8
  %val.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  store i32 %W, i32* %W.addr, align 4
  store i32* %wt, i32** %wt.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %W.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32*, i32** %wt.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %W.addr, align 4
  %cmp2 = icmp sgt i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %6 = load i32, i32* %W.addr, align 4
  %7 = load i32*, i32** %wt.addr, align 8
  %8 = load i32*, i32** %val.addr, align 8
  %9 = load i32, i32* %n.addr, align 4
  %sub4 = sub nsw i32 %9, 1
  %call = call i32 @knapSack(i32 %6, i32* %7, i32* %8, i32 %sub4)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %10 = load i32*, i32** %val.addr, align 8
  %11 = load i32, i32* %n.addr, align 4
  %sub5 = sub nsw i32 %11, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  %13 = load i32, i32* %W.addr, align 4
  %14 = load i32*, i32** %wt.addr, align 8
  %15 = load i32, i32* %n.addr, align 4
  %sub8 = sub nsw i32 %15, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  %16 = load i32, i32* %arrayidx10, align 4
  %sub11 = sub nsw i32 %13, %16
  %17 = load i32*, i32** %wt.addr, align 8
  %18 = load i32*, i32** %val.addr, align 8
  %19 = load i32, i32* %n.addr, align 4
  %sub12 = sub nsw i32 %19, 1
  %call13 = call i32 @knapSack(i32 %sub11, i32* %17, i32* %18, i32 %sub12)
  %add = add nsw i32 %12, %call13
  %20 = load i32, i32* %W.addr, align 4
  %21 = load i32*, i32** %wt.addr, align 8
  %22 = load i32*, i32** %val.addr, align 8
  %23 = load i32, i32* %n.addr, align 4
  %sub14 = sub nsw i32 %23, 1
  %call15 = call i32 @knapSack(i32 %20, i32* %21, i32* %22, i32 %sub14)
  %call16 = call i32 @max(i32 %add, i32 %call15)
  store i32 %call16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then3, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %val = alloca [4 x i32], align 16
  %wt = alloca [4 x i32], align 16
  %W = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 0
  store i32 60, i32* %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 1
  store i32 100, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 2
  store i32 120, i32* %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 3
  store i32 130, i32* %arrayidx3, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %wt, i64 0, i64 0
  %call = call i32 (i32*, i64, ...) bitcast (i32 (...)* @make_symbolic to i32 (i32*, i64, ...)*)(i32* %arraydecay, i64 16)
  store i32 50, i32* %W, align 4
  %0 = load i32, i32* %W, align 4
  %arraydecay4 = getelementptr inbounds [4 x i32], [4 x i32]* %wt, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [4 x i32], [4 x i32]* %val, i64 0, i64 0
  %call6 = call i32 @knapSack(i32 %0, i32* %arraydecay4, i32* %arraydecay5, i32 4)
  ret i32 0
}

declare dso_local i32 @make_symbolic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-16 "}
