; ModuleID = './mergesort.c'
source_filename = "./mergesort.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@d = common dso_local global [6 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge(i32* %arr, i32 %l, i32 %m, i32 %r) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %L = alloca i32*, align 8
  %R = alloca i32*, align 8
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %n1, align 4
  %2 = load i32, i32* %r.addr, align 4
  %3 = load i32, i32* %m.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %n2, align 4
  %4 = load i32, i32* %n1, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 4
  %call = call i8* @malloc(i64 %mul)
  %5 = bitcast i8* %call to i32*
  store i32* %5, i32** %L, align 8
  %6 = load i32, i32* %n2, align 4
  %conv2 = sext i32 %6 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call i8* @malloc(i64 %mul3)
  %7 = bitcast i8* %call4 to i32*
  store i32* %7, i32** %R, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n1, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %arr.addr, align 8
  %11 = load i32, i32* %l.addr, align 4
  %12 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %11, %12
  %idxprom = sext i32 %add6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4
  %14 = load i32*, i32** %L, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  store i32 %13, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %for.end
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %n2, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body12, label %for.end21

for.body12:                                       ; preds = %for.cond9
  %19 = load i32*, i32** %arr.addr, align 8
  %20 = load i32, i32* %m.addr, align 4
  %add13 = add nsw i32 %20, 1
  %21 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %add13, %21
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %19, i64 %idxprom15
  %22 = load i32, i32* %arrayidx16, align 4
  %23 = load i32*, i32** %R, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 %idxprom17
  store i32 %22, i32* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body12
  %25 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond9

for.end21:                                        ; preds = %for.cond9
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  %26 = load i32, i32* %l.addr, align 4
  store i32 %26, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end21
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n1, align 4
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %n2, align 4
  %cmp24 = icmp slt i32 %29, %30
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %31 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %32 = load i32*, i32** %L, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %33 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %32, i64 %idxprom26
  %34 = load i32, i32* %arrayidx27, align 4
  %35 = load i32*, i32** %R, align 8
  %36 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %35, i64 %idxprom28
  %37 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp sle i32 %34, %37
  br i1 %cmp30, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %38 = load i32*, i32** %L, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %38, i64 %idxprom32
  %40 = load i32, i32* %arrayidx33, align 4
  %41 = load i32*, i32** %arr.addr, align 8
  %42 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %41, i64 %idxprom34
  store i32 %40, i32* %arrayidx35, align 4
  %43 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %43, 1
  store i32 %inc36, i32* %i, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %44 = load i32*, i32** %R, align 8
  %45 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %45 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %44, i64 %idxprom37
  %46 = load i32, i32* %arrayidx38, align 4
  %47 = load i32*, i32** %arr.addr, align 8
  %48 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %48 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %47, i64 %idxprom39
  store i32 %46, i32* %arrayidx40, align 4
  %49 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %49, 1
  store i32 %inc41, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %50 = load i32, i32* %k, align 4
  %inc42 = add nsw i32 %50, 1
  store i32 %inc42, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond43

while.cond43:                                     ; preds = %while.body46, %while.end
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %n1, align 4
  %cmp44 = icmp slt i32 %51, %52
  br i1 %cmp44, label %while.body46, label %while.end53

while.body46:                                     ; preds = %while.cond43
  %53 = load i32*, i32** %L, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %54 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %53, i64 %idxprom47
  %55 = load i32, i32* %arrayidx48, align 4
  %56 = load i32*, i32** %arr.addr, align 8
  %57 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %57 to i64
  %arrayidx50 = getelementptr inbounds i32, i32* %56, i64 %idxprom49
  store i32 %55, i32* %arrayidx50, align 4
  %58 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %58, 1
  store i32 %inc51, i32* %i, align 4
  %59 = load i32, i32* %k, align 4
  %inc52 = add nsw i32 %59, 1
  store i32 %inc52, i32* %k, align 4
  br label %while.cond43

while.end53:                                      ; preds = %while.cond43
  br label %while.cond54

while.cond54:                                     ; preds = %while.body57, %while.end53
  %60 = load i32, i32* %j, align 4
  %61 = load i32, i32* %n2, align 4
  %cmp55 = icmp slt i32 %60, %61
  br i1 %cmp55, label %while.body57, label %while.end64

while.body57:                                     ; preds = %while.cond54
  %62 = load i32*, i32** %R, align 8
  %63 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %63 to i64
  %arrayidx59 = getelementptr inbounds i32, i32* %62, i64 %idxprom58
  %64 = load i32, i32* %arrayidx59, align 4
  %65 = load i32*, i32** %arr.addr, align 8
  %66 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %66 to i64
  %arrayidx61 = getelementptr inbounds i32, i32* %65, i64 %idxprom60
  store i32 %64, i32* %arrayidx61, align 4
  %67 = load i32, i32* %j, align 4
  %inc62 = add nsw i32 %67, 1
  store i32 %inc62, i32* %j, align 4
  %68 = load i32, i32* %k, align 4
  %inc63 = add nsw i32 %68, 1
  store i32 %inc63, i32* %k, align 4
  br label %while.cond54

while.end64:                                      ; preds = %while.cond54
  %69 = load i32*, i32** %L, align 8
  %call65 = call i32 (i32*, ...) bitcast (i32 (...)* @free to i32 (i32*, ...)*)(i32* %69)
  %70 = load i32*, i32** %R, align 8
  %call66 = call i32 (i32*, ...) bitcast (i32 (...)* @free to i32 (i32*, ...)*)(i32* %70)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mergeSort(i32* %arr, i32 %l, i32 %r) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %l.addr, align 4
  %3 = load i32, i32* %r.addr, align 4
  %4 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %3, %4
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %2, %div
  store i32 %add, i32* %m, align 4
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %l.addr, align 4
  %7 = load i32, i32* %m, align 4
  call void @mergeSort(i32* %5, i32 %6, i32 %7)
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %m, align 4
  %add1 = add nsw i32 %9, 1
  %10 = load i32, i32* %r.addr, align 4
  call void @mergeSort(i32* %8, i32 %add1, i32 %10)
  %11 = load i32*, i32** %arr.addr, align 8
  %12 = load i32, i32* %l.addr, align 4
  %13 = load i32, i32* %m, align 4
  %14 = load i32, i32* %r.addr, align 4
  call void @merge(i32* %11, i32 %12, i32 %13, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i32*, i64, ...) bitcast (i32 (...)* @make_symbolic to i32 (i32*, i64, ...)*)(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @d, i64 0, i64 0), i64 24)
  call void @mergeSort(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @d, i64 0, i64 0), i32 0, i32 5)
  ret i32 0
}

declare dso_local i32 @make_symbolic(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-16 "}
