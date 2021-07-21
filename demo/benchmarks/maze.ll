; ModuleID = './maze.c'
source_filename = "./maze.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@maze = dso_local global [7 x [11 x i8]] [[11 x i8] c"+-+---+---+", [11 x i8] c"| |     |#|", [11 x i8] c"| | --+ | |", [11 x i8] c"| |   | | |", [11 x i8] c"| +-- | | |", [11 x i8] c"|     |   |", [11 x i8] c"+-----+---+"], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 11
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %2 = load i32, i32* %j, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %3 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %3, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end6:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %i = alloca i32, align 4
  %program = alloca [28 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 1, i32* %x, align 4
  store i32 1, i32* %y, align 4
  %0 = load i32, i32* %y, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom
  %1 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx, i64 0, i64 %idxprom1
  store i8 88, i8* %arrayidx2, align 1
  call void @draw()
  %arraydecay = getelementptr inbounds [28 x i8], [28 x i8]* %program, i64 0, i64 0
  %call = call i32 (i8*, i32, ...) bitcast (i32 (...)* @make_symbolic to i32 (i8*, i32, ...)*)(i8* %arraydecay, i32 28)
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 28
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %x, align 4
  store i32 %3, i32* %ox, align 4
  %4 = load i32, i32* %y, align 4
  store i32 %4, i32* %oy, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [28 x i8], [28 x i8]* %program, i64 0, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %6 to i32
  switch i32 %conv, label %sw.default [
    i32 119, label %sw.bb
    i32 115, label %sw.bb5
    i32 97, label %sw.bb6
    i32 100, label %sw.bb8
  ]

sw.bb:                                            ; preds = %while.body
  %7 = load i32, i32* %y, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %y, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %8 = load i32, i32* %y, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %y, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  %9 = load i32, i32* %x, align 4
  %dec7 = add nsw i32 %9, -1
  store i32 %dec7, i32* %x, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  %10 = load i32, i32* %x, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %x, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @exit(i32 -1) #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb6, %sw.bb5, %sw.bb
  %11 = load i32, i32* %y, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom10
  %12 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx11, i64 0, i64 %idxprom12
  %13 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %13 to i32
  %cmp15 = icmp eq i32 %conv14, 35
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %sw.epilog
  %14 = load i32, i32* %y, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom17
  %15 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx18, i64 0, i64 %idxprom19
  %16 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %16 to i32
  %cmp22 = icmp ne i32 %conv21, 32
  br i1 %cmp22, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* %y, align 4
  %cmp24 = icmp eq i32 %17, 2
  br i1 %cmp24, label %land.lhs.true26, label %if.then40

land.lhs.true26:                                  ; preds = %land.lhs.true
  %18 = load i32, i32* %y, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom27
  %19 = load i32, i32* %x, align 4
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx28, i64 0, i64 %idxprom29
  %20 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %20 to i32
  %cmp32 = icmp eq i32 %conv31, 124
  br i1 %cmp32, label %land.lhs.true34, label %if.then40

land.lhs.true34:                                  ; preds = %land.lhs.true26
  %21 = load i32, i32* %x, align 4
  %cmp35 = icmp sgt i32 %21, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.then40

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %22 = load i32, i32* %x, align 4
  %cmp38 = icmp slt i32 %22, 11
  br i1 %cmp38, label %if.end41, label %if.then40

if.then40:                                        ; preds = %land.lhs.true37, %land.lhs.true34, %land.lhs.true26, %land.lhs.true
  %23 = load i32, i32* %ox, align 4
  store i32 %23, i32* %x, align 4
  %24 = load i32, i32* %oy, align 4
  store i32 %24, i32* %y, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %land.lhs.true37, %if.end
  %25 = load i32, i32* %ox, align 4
  %26 = load i32, i32* %x, align 4
  %cmp42 = icmp eq i32 %25, %26
  br i1 %cmp42, label %land.lhs.true44, label %if.end48

land.lhs.true44:                                  ; preds = %if.end41
  %27 = load i32, i32* %oy, align 4
  %28 = load i32, i32* %y, align 4
  %cmp45 = icmp eq i32 %27, %28
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %land.lhs.true44
  call void @exit(i32 -2) #3
  unreachable

if.end48:                                         ; preds = %land.lhs.true44, %if.end41
  %29 = load i32, i32* %y, align 4
  %idxprom49 = sext i32 %29 to i64
  %arrayidx50 = getelementptr inbounds [7 x [11 x i8]], [7 x [11 x i8]]* @maze, i64 0, i64 %idxprom49
  %30 = load i32, i32* %x, align 4
  %idxprom51 = sext i32 %30 to i64
  %arrayidx52 = getelementptr inbounds [11 x i8], [11 x i8]* %arrayidx50, i64 0, i64 %idxprom51
  store i8 88, i8* %arrayidx52, align 1
  call void @draw()
  %31 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %31, 1
  store i32 %inc53, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @exit(i32 -2) #3
  unreachable
}

declare dso_local i32 @make_symbolic(...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.1-16 "}
