; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__STDIO_FILE_STRUCT = type { i16, [2 x i8], i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.__STDIO_FILE_STRUCT*, [2 x i32], %struct.__mbstate_t, i8* }
%struct.__mbstate_t = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Successfully opened file\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Failed to open file\00", align 1
@errno = external global i32, align 4
@_stdio_openlist = external global %struct.__STDIO_FILE_STRUCT*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct._IO_FILE* bitcast (%struct.__STDIO_FILE_STRUCT* (i8*, i8*)* @fopen to %struct._IO_FILE* (i8*, i8*)*)(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) bitcast (i32 (...)* @print_string to i32 (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) bitcast (i32 (...)* @print_string to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare dso_local i32 @print_string(...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define hidden %struct.__STDIO_FILE_STRUCT* @_stdio_fopen(i64 %fname_or_mode, i8* noalias %mode, %struct.__STDIO_FILE_STRUCT* noalias %stream, i32 %filedes) #0 {
entry:
  %retval = alloca %struct.__STDIO_FILE_STRUCT*, align 8
  %fname_or_mode.addr = alloca i64, align 8
  %mode.addr = alloca i8*, align 8
  %stream.addr = alloca %struct.__STDIO_FILE_STRUCT*, align 8
  %filedes.addr = alloca i32, align 4
  %open_mode = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %fname_or_mode, i64* %fname_or_mode.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  store %struct.__STDIO_FILE_STRUCT* %stream, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  store i32 %filedes, i32* %filedes.addr, align 4
  store i32 0, i32* %open_mode, align 4
  %0 = load i8*, i8** %mode.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 114
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  store i32 577, i32* %open_mode, align 4
  %2 = load i8*, i8** %mode.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp ne i32 %conv2, 119
  br i1 %cmp3, label %if.then5, label %if.end16

if.then5:                                         ; preds = %if.then
  store i32 1089, i32* %open_mode, align 4
  %4 = load i8*, i8** %mode.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp ne i32 %conv6, 97
  br i1 %cmp7, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.then5
  br label %DO_EINVAL

DO_EINVAL:                                        ; preds = %if.then54, %if.then9
  store i32 22, i32* @errno, align 4
  %6 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %tobool = icmp ne %struct.__STDIO_FILE_STRUCT* %6, null
  br i1 %tobool, label %if.then10, label %if.end14

if.then10:                                        ; preds = %DO_EINVAL
  br label %FREE_STREAM

FREE_STREAM:                                      ; preds = %if.then67, %if.then10
  br label %do.body

do.body:                                          ; preds = %FREE_STREAM
  %7 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__modeflags = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %7, i32 0, i32 0
  %8 = load i16, i16* %__modeflags, align 8
  %conv11 = zext i16 %8 to i32
  %and = and i32 %conv11, 8192
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %do.body
  %9 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %10 = bitcast %struct.__STDIO_FILE_STRUCT* %9 to i8*
  call void @free(i8* %10) #3
  br label %if.end

if.end:                                           ; preds = %if.then13, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end14

if.end14:                                         ; preds = %do.end, %DO_EINVAL
  store %struct.__STDIO_FILE_STRUCT* null, %struct.__STDIO_FILE_STRUCT** %retval, align 8
  br label %return

if.end15:                                         ; preds = %if.then5
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  %11 = load i8*, i8** %mode.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx, align 1
  %conv18 = sext i8 %12 to i32
  %cmp19 = icmp eq i32 %conv18, 98
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  %13 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %mode.addr, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17
  %14 = load i8*, i8** %mode.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %15 to i32
  %cmp25 = icmp eq i32 %conv24, 43
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end22
  %16 = load i8*, i8** %mode.addr, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr28, i8** %mode.addr, align 8
  %17 = load i32, i32* %open_mode, align 4
  %or = or i32 %17, 1
  store i32 %or, i32* %open_mode, align 4
  %18 = load i32, i32* %open_mode, align 4
  %add = add i32 %18, 1
  store i32 %add, i32* %open_mode, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22
  %19 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %tobool30 = icmp ne %struct.__STDIO_FILE_STRUCT* %19, null
  br i1 %tobool30, label %if.end37, label %if.then31

if.then31:                                        ; preds = %if.end29
  %call = call noalias i8* @malloc(i64 88) #3
  %20 = bitcast i8* %call to %struct.__STDIO_FILE_STRUCT*
  store %struct.__STDIO_FILE_STRUCT* %20, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %cmp32 = icmp eq %struct.__STDIO_FILE_STRUCT* %20, null
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then31
  %21 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  store %struct.__STDIO_FILE_STRUCT* %21, %struct.__STDIO_FILE_STRUCT** %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.then31
  %22 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__modeflags36 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %22, i32 0, i32 0
  store i16 8192, i16* %__modeflags36, align 8
  %23 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufstart = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %23, i32 0, i32 3
  store i8* null, i8** %__bufstart, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end29
  %24 = load i32, i32* %filedes.addr, align 4
  %cmp38 = icmp sge i32 %24, 0
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end37
  %25 = load i32, i32* %filedes.addr, align 4
  %26 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__filedes = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %26, i32 0, i32 2
  store i32 %25, i32* %__filedes, align 4
  %27 = load i32, i32* %open_mode, align 4
  %and41 = and i32 %27, 3
  %add42 = add i32 %and41, 1
  store i32 %add42, i32* %i, align 4
  %28 = load i32, i32* %i, align 4
  %29 = load i64, i64* %fname_or_mode.addr, align 8
  %conv43 = trunc i64 %29 to i32
  %add44 = add nsw i32 %conv43, 1
  %and45 = and i32 %28, %add44
  %30 = load i32, i32* %i, align 4
  %cmp46 = icmp ne i32 %and45, %30
  br i1 %cmp46, label %if.then54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then40
  %31 = load i32, i32* %open_mode, align 4
  %32 = load i64, i64* %fname_or_mode.addr, align 8
  %conv48 = trunc i64 %32 to i32
  %neg = xor i32 %conv48, -1
  %and49 = and i32 %31, %neg
  %and50 = and i32 %and49, 1024
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %lor.lhs.false
  %33 = load i32, i32* %filedes.addr, align 4
  %call52 = call i32 (i32, i32, ...) @__libc_fcntl(i32 %33, i32 4, i32 1024) #4
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %land.lhs.true, %if.then40
  br label %DO_EINVAL

if.end55:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %34 = load i64, i64* %fname_or_mode.addr, align 8
  %conv56 = trunc i64 %34 to i32
  %and57 = and i32 %conv56, 0
  %35 = load i32, i32* %open_mode, align 4
  %or58 = or i32 %35, %and57
  store i32 %or58, i32* %open_mode, align 4
  br label %if.end69

if.else:                                          ; preds = %if.end37
  %36 = load i32, i32* %filedes.addr, align 4
  %cmp59 = icmp slt i32 %36, -1
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else
  %37 = load i32, i32* %open_mode, align 4
  store i32 %37, i32* %open_mode, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.else
  %38 = load i64, i64* %fname_or_mode.addr, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* %open_mode, align 4
  %call63 = call i32 (i8*, i32, ...) @__libc_open(i8* %39, i32 %40, i32 438) #4
  %41 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__filedes64 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %41, i32 0, i32 2
  store i32 %call63, i32* %__filedes64, align 4
  %cmp65 = icmp slt i32 %call63, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end62
  br label %FREE_STREAM

if.end68:                                         ; preds = %if.end62
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end55
  %42 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__modeflags70 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %42, i32 0, i32 0
  %43 = load i16, i16* %__modeflags70, align 8
  %conv71 = zext i16 %43 to i32
  %and72 = and i32 %conv71, 8192
  %conv73 = trunc i32 %and72 to i16
  store i16 %conv73, i16* %__modeflags70, align 8
  %44 = load i32, i32* %open_mode, align 4
  %and74 = and i32 %44, 1024
  %45 = load i32, i32* %open_mode, align 4
  %and75 = and i32 %45, 3
  %add76 = add i32 %and75, 1
  %xor = xor i32 %add76, 3
  %mul = mul i32 %xor, 16
  %or77 = or i32 %and74, %mul
  %46 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__modeflags78 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %46, i32 0, i32 0
  %47 = load i16, i16* %__modeflags78, align 8
  %conv79 = zext i16 %47 to i32
  %or80 = or i32 %conv79, %or77
  %conv81 = trunc i32 %or80 to i16
  store i16 %conv81, i16* %__modeflags78, align 8
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %i, align 4
  %49 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__filedes82 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %49, i32 0, i32 2
  %50 = load i32, i32* %__filedes82, align 4
  %call83 = call i32 @isatty(i32 %50) #3
  %mul84 = mul i32 %call83, 256
  %51 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__modeflags85 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %51, i32 0, i32 0
  %52 = load i16, i16* %__modeflags85, align 8
  %conv86 = zext i16 %52 to i32
  %or87 = or i32 %conv86, %mul84
  %conv88 = trunc i32 %or87 to i16
  store i16 %conv88, i16* %__modeflags85, align 8
  %53 = load i32, i32* %i, align 4
  store i32 %53, i32* @errno, align 4
  %54 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufstart89 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %54, i32 0, i32 3
  %55 = load i8*, i8** %__bufstart89, align 8
  %tobool90 = icmp ne i8* %55, null
  br i1 %tobool90, label %if.end106, label %if.then91

if.then91:                                        ; preds = %if.end69
  %call92 = call noalias i8* @malloc(i64 4096) #3
  %56 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufstart93 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %56, i32 0, i32 3
  store i8* %call92, i8** %__bufstart93, align 8
  %cmp94 = icmp ne i8* %call92, null
  br i1 %cmp94, label %if.then96, label %if.else102

if.then96:                                        ; preds = %if.then91
  %57 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufstart97 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %57, i32 0, i32 3
  %58 = load i8*, i8** %__bufstart97, align 8
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 4096
  %59 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufend = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %59, i32 0, i32 4
  store i8* %add.ptr, i8** %__bufend, align 8
  %60 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__modeflags98 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %60, i32 0, i32 0
  %61 = load i16, i16* %__modeflags98, align 8
  %conv99 = zext i16 %61 to i32
  %or100 = or i32 %conv99, 16384
  %conv101 = trunc i32 %or100 to i16
  store i16 %conv101, i16* %__modeflags98, align 8
  br label %if.end105

if.else102:                                       ; preds = %if.then91
  %62 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufstart103 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %62, i32 0, i32 3
  %63 = load i8*, i8** %__bufstart103, align 8
  %64 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufend104 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %64, i32 0, i32 4
  store i8* %63, i8** %__bufend104, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then96
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end69
  %65 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufstart107 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %65, i32 0, i32 3
  %66 = load i8*, i8** %__bufstart107, align 8
  %67 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufgetc_u = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %67, i32 0, i32 7
  store i8* %66, i8** %__bufgetc_u, align 8
  %68 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufstart108 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %68, i32 0, i32 3
  %69 = load i8*, i8** %__bufstart108, align 8
  %70 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufputc_u = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %70, i32 0, i32 8
  store i8* %69, i8** %__bufputc_u, align 8
  %71 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufstart109 = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %71, i32 0, i32 3
  %72 = load i8*, i8** %__bufstart109, align 8
  %73 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufpos = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %73, i32 0, i32 5
  store i8* %72, i8** %__bufpos, align 8
  %74 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__bufread = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %74, i32 0, i32 6
  store i8* %72, i8** %__bufread, align 8
  %75 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__ungot_width = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %75, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [2 x i8], [2 x i8]* %__ungot_width, i64 0, i64 0
  store i8 0, i8* %arrayidx110, align 2
  %76 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__state = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %76, i32 0, i32 11
  %__mask = getelementptr inbounds %struct.__mbstate_t, %struct.__mbstate_t* %__state, i32 0, i32 0
  store i32 0, i32* %__mask, align 8
  %77 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** @_stdio_openlist, align 8
  %78 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  %__nextopen = getelementptr inbounds %struct.__STDIO_FILE_STRUCT, %struct.__STDIO_FILE_STRUCT* %78, i32 0, i32 9
  store %struct.__STDIO_FILE_STRUCT* %77, %struct.__STDIO_FILE_STRUCT** %__nextopen, align 8
  %79 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  store %struct.__STDIO_FILE_STRUCT* %79, %struct.__STDIO_FILE_STRUCT** @_stdio_openlist, align 8
  %80 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %stream.addr, align 8
  store %struct.__STDIO_FILE_STRUCT* %80, %struct.__STDIO_FILE_STRUCT** %retval, align 8
  br label %return

return:                                           ; preds = %if.end106, %if.then34, %if.end14
  %81 = load %struct.__STDIO_FILE_STRUCT*, %struct.__STDIO_FILE_STRUCT** %retval, align 8
  ret %struct.__STDIO_FILE_STRUCT* %81
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @__libc_fcntl(i32, i32, ...) #1

declare i32 @__libc_open(i8*, i32, ...) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define %struct.__STDIO_FILE_STRUCT* @fopen(i8* noalias %filename, i8* noalias %mode) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = load i8*, i8** %mode.addr, align 8
  %call = call %struct.__STDIO_FILE_STRUCT* @_stdio_fopen(i64 %1, i8* %2, %struct.__STDIO_FILE_STRUCT* null, i32 -1) #4
  ret %struct.__STDIO_FILE_STRUCT* %call
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
