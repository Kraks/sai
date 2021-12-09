; ModuleID = './shuf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.hash_tuning = type { float, float, float, float, i8 }
%struct.linebuffer = type { i64, i64, i8* }
%struct.randint_source = type { %struct.randread_source*, i64, i64 }
%struct.randread_source = type { %struct._IO_FILE*, void (i8*)*, i8*, %union.anon.15 }
%union.anon.15 = type { %struct.isaac }
%struct.isaac = type { i64, %struct.isaac_state, %union.anon.0 }
%struct.isaac_state = type { [256 x i64], i64, i64, i64 }
%union.anon.0 = type { [256 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.hash_table = type { %struct.hash_entry*, %struct.hash_entry*, i64, i64, i64, %struct.hash_tuning*, i64 (i8*, i64)*, i1 (i8*, i8*)*, void (i8*)*, %struct.hash_entry* }
%struct.hash_entry = type { i8*, %struct.hash_entry* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [95 x i8] c"Usage: %s [OPTION]... [FILE]\0A  or:  %s -e [OPTION]... [ARG]...\0A  or:  %s -i LO-HI [OPTION]...\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"Write a random permutation of the input lines to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [381 x i8] c"  -e, --echo                treat each ARG as an input line\0A  -i, --input-range=LO-HI   treat each number LO through HI as an input line\0A  -n, --head-count=COUNT    output at most COUNT lines\0A  -o, --output=FILE         write result to FILE instead of standard output\0A      --random-source=FILE  get random bytes from FILE\0A  -r, --repeat              output lines can be repeated\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"shuf\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.39 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.42 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.28 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ei:n:o:rz\00", align 1
@long_opts = internal constant [10 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), i32 0, i32* null, i32 101 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16
@optarg = external dso_local global i8*, align 8
@.str.10 = private unnamed_addr constant [30 x i8] c"multiple -i options specified\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"invalid input range\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"invalid line count: %s\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"multiple output files specified\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"multiple random sources specified\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Paul Eggert\00", align 1
@optind = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"cannot combine -e and -i options\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"getrandom\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"no lines to repeat\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%lu%c\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"too many input lines\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"input-range\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"head-count\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"random-source\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local global i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), align 8
@.str.57 = private unnamed_addr constant [13 x i8] c"9.0.36-5e36c\00", align 1
@file_name = internal global i8* null, align 8
@ignore_EPIPE = internal global i8 0, align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.61 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.62 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4
@.str.69 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@program_name = dso_local global i8* null, align 8
@.str.80 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external dso_local global i8*, align 8
@program_invocation_name = external dso_local global i8*, align 8
@quoting_style_args = dso_local constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.85, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.86, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.87, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.90, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.92, i32 0, i32 0), i8* null], align 16
@.str.83 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.84 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.85 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.86 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.87 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.88 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.89 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.90 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.91 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.92 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8
@.str.10.93 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.94 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.96 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.14.97 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.98 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.16.99 = private unnamed_addr constant [8 x i8] c"GB18030\00", align 1
@.str.17.100 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.101 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal global %struct.slotvec* @slotvec0, align 8
@nslots = internal global i32 1, align 4
@slot0 = internal global [256 x i8] zeroinitializer, align 16
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8
@.str.121 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1.122 = private unnamed_addr constant [16 x i8] c"%s: end of file\00", align 1
@.str.2.123 = private unnamed_addr constant [15 x i8] c"%s: read error\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"rbe\00", align 1
@.str.1.135 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.137 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.138 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.139 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.140 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.5.141 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.6.142 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.7.143 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.8.144 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.9.145 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.10.146 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.11.147 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.12.148 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.13.149 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.14.150 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.15.151 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.16.154 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.17.155 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.18.156 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.19.157 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.20.158 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.21.159 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.22.160 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16
@.str.181 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.182 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.188 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.189 = private unnamed_addr constant [17 x i8] c"../lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoumax = private unnamed_addr constant [79 x i8] c"strtol_error xstrtoumax(const char *, char **, int, uintmax_t *, const char *)\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.211 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.212 = private unnamed_addr constant [24 x i8] c"# entries:         %lu\0A\00", align 1
@.str.1.213 = private unnamed_addr constant [24 x i8] c"# buckets:         %lu\0A\00", align 1
@.str.2.214 = private unnamed_addr constant [33 x i8] c"# buckets used:    %lu (%.2f%%)\0A\00", align 1
@.str.3.215 = private unnamed_addr constant [24 x i8] c"max bucket length: %lu\0A\00", align 1
@default_tuning = internal constant %struct.hash_tuning { float 0.000000e+00, float 1.000000e+00, float 0x3FE99999A0000000, float 0x3FF69FBE80000000, i8 0 }, align 4
@.str.236 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.237 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal global i32 0, align 4

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 %status) #0 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4, !tbaa !2
  %0 = load i32, i32* %status.addr, align 4, !tbaa !2
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  ; %2 = load i8*, i8** @program_name, align 8, !tbaa !6
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %2)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %entry
  ; %3 = load i8*, i8** @program_name, align 8, !tbaa !6
  ; %4 = load i8*, i8** @program_name, align 8, !tbaa !6
  ; %5 = load i8*, i8** @program_name, align 8, !tbaa !6
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i8* %3, i8* %4, i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call2 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %6)
  call void @emit_stdin_note()
  call void @emit_mandatory_arg_note()
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([381 x i8], [381 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call4 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call6 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %10)
  call void @emit_ancillary_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %11 = load i32, i32* %status.addr, align 4, !tbaa !2
  call void @exit(i32 %11) #20
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fputs_unlocked(i8*, %struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_stdin_note() #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call = call i32 @fputs_unlocked(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.28, i64 0, i64 0), %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_mandatory_arg_note() #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call = call i32 @fputs_unlocked(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @emit_ancillary_info(i8* %program) #2 {
entry:
  %program.addr = alloca i8*, align 8
  %infomap = alloca [7 x %struct.infomap], align 16
  %node = alloca i8*, align 8
  %map_prog = alloca %struct.infomap*, align 8
  %lc_messages = alloca i8*, align 8
  store i8* %program, i8** %program.addr, align 8, !tbaa !6
  %0 = bitcast [7 x %struct.infomap]* %infomap to i8*
  call void @llvm.lifetime.start.p0i8(i64 112, i8* %0) #13
  %1 = bitcast [7 x %struct.infomap]* %infomap to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false)
  %2 = bitcast i8** %node to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load i8*, i8** %program.addr, align 8, !tbaa !6
  store i8* %3, i8** %node, align 8, !tbaa !6
  %4 = bitcast %struct.infomap** %map_prog to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #13
  %arraydecay = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %infomap, i64 0, i64 0
  store %struct.infomap* %arraydecay, %struct.infomap** %map_prog, align 8, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !tbaa !6
  %program1 = getelementptr inbounds %struct.infomap, %struct.infomap* %5, i32 0, i32 0
  %6 = load i8*, i8** %program1, align 8, !tbaa !8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i8*, i8** %program.addr, align 8, !tbaa !6
  %8 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !tbaa !6
  %program2 = getelementptr inbounds %struct.infomap, %struct.infomap* %8, i32 0, i32 0
  %9 = load i8*, i8** %program2, align 8, !tbaa !8
  %call = call i32 @strcmp(i8* %7, i8* %9) #21
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.infomap, %struct.infomap* %11, i32 1
  store %struct.infomap* %incdec.ptr, %struct.infomap** %map_prog, align 8, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !tbaa !6
  %node3 = getelementptr inbounds %struct.infomap, %struct.infomap* %12, i32 0, i32 1
  %13 = load i8*, i8** %node3, align 8, !tbaa !10
  %tobool4 = icmp ne i8* %13, null
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load %struct.infomap*, %struct.infomap** %map_prog, align 8, !tbaa !6
  %node5 = getelementptr inbounds %struct.infomap, %struct.infomap* %14, i32 0, i32 1
  %15 = load i8*, i8** %node5, align 8, !tbaa !10
  store i8* %15, i8** %node, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0))
  %16 = bitcast i8** %lc_messages to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #13
  %call7 = call i8* @setlocale(i32 5, i8* null) #13
  store i8* %call7, i8** %lc_messages, align 8, !tbaa !6
  %17 = load i8*, i8** %lc_messages, align 8, !tbaa !6
  %tobool8 = icmp ne i8* %17, null
  br i1 %tobool8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %18 = load i8*, i8** %lc_messages, align 8, !tbaa !6
  %call9 = call i32 @strncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i64 3) #21
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call12 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* %19)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true, %if.end
  %20 = load i8*, i8** %program.addr, align 8, !tbaa !6
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i64 0, i64 0), i8* %20)
  %21 = load i8*, i8** %node, align 8, !tbaa !6
  %22 = load i8*, i8** %node, align 8, !tbaa !6
  %23 = load i8*, i8** %program.addr, align 8, !tbaa !6
  %cmp15 = icmp eq i8* %22, %23
  %24 = zext i1 %cmp15 to i64
  %cond = select i1 %cmp15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.44, i64 0, i64 0), i8* %21, i8* %cond)
  %25 = bitcast i8** %lc_messages to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #13
  %26 = bitcast %struct.infomap** %map_prog to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #13
  %27 = bitcast i8** %node to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #13
  %28 = bitcast [7 x %struct.infomap]* %infomap to i8*
  call void @llvm.lifetime.end.p0i8(i64 112, i8* %28) #13
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32, i8*) #6

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %echo = alloca i8, align 1
  %input_range = alloca i8, align 1
  %lo_input = alloca i64, align 8
  %hi_input = alloca i64, align 8
  %head_lines = alloca i64, align 8
  %outfile = alloca i8*, align 8
  %random_source = alloca i8*, align 8
  %eolbyte = alloca i8, align 1
  %input_lines = alloca i8**, align 8
  %use_reservoir_sampling = alloca i8, align 1
  %repeat = alloca i8, align 1
  %optc = alloca i32, align 4
  %n_operands = alloca i32, align 4
  %operand = alloca i8**, align 8
  %n_lines = alloca i64, align 8
  %line = alloca i8**, align 8
  %reservoir = alloca %struct.linebuffer*, align 8
  %randint_source = alloca %struct.randint_source*, align 8
  %permutation = alloca i64*, align 8
  %i = alloca i32, align 4
  %p = alloca i8*, align 8
  %hi_optarg = alloca i8*, align 8
  %invalid = alloca i8, align 1
  %argval = alloca i64, align 8
  %e = alloca i32, align 4
  %ahead_lines = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %echo) #13
  store i8 0, i8* %echo, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %input_range) #13
  store i8 0, i8* %input_range, align 1, !tbaa !11
  %0 = bitcast i64* %lo_input to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 -1, i64* %lo_input, align 8, !tbaa !13
  %1 = bitcast i64* %hi_input to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  store i64 0, i64* %hi_input, align 8, !tbaa !13
  %2 = bitcast i64* %head_lines to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  store i64 -1, i64* %head_lines, align 8, !tbaa !13
  %3 = bitcast i8** %outfile to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  store i8* null, i8** %outfile, align 8, !tbaa !6
  %4 = bitcast i8** %random_source to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #13
  store i8* null, i8** %random_source, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %eolbyte) #13
  store i8 10, i8* %eolbyte, align 1, !tbaa !15
  %5 = bitcast i8*** %input_lines to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  store i8** null, i8*** %input_lines, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %use_reservoir_sampling) #13
  store i8 0, i8* %use_reservoir_sampling, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %repeat) #13
  store i8 0, i8* %repeat, align 1, !tbaa !11
  %6 = bitcast i32* %optc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #13
  %7 = bitcast i32* %n_operands to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #13
  %8 = bitcast i8*** %operand to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #13
  %9 = bitcast i64* %n_lines to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #13
  %10 = bitcast i8*** %line to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #13
  store i8** null, i8*** %line, align 8, !tbaa !6
  %11 = bitcast %struct.linebuffer** %reservoir to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #13
  store %struct.linebuffer* null, %struct.linebuffer** %reservoir, align 8, !tbaa !6
  %12 = bitcast %struct.randint_source** %randint_source to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #13
  %13 = bitcast i64** %permutation to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #13
  store i64* null, i64** %permutation, align 8, !tbaa !6
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #13
  %15 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %15, i64 0
  %16 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  ; call void @set_program_name(i8* %16)
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #13
  ; %call1 = call i32 @atexit(void ()* @close_stdout) #13
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %17 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %18 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %call2 = call i32 @getopt_long(i32 %17, i8** %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), %struct.option* getelementptr inbounds ([10 x %struct.option], [10 x %struct.option]* @long_opts, i64 0, i64 0), i32* null) #13
  store i32 %call2, i32* %optc, align 4, !tbaa !2
  %cmp = icmp ne i32 %call2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i32, i32* %optc, align 4, !tbaa !2
  switch i32 %19, label %sw.default [
    i32 101, label %sw.bb
    i32 105, label %sw.bb3
    i32 110, label %sw.bb25
    i32 111, label %sw.bb38
    i32 128, label %sw.bb45
    i32 114, label %sw.bb53
    i32 122, label %sw.bb54
    i32 -130, label %sw.bb55
    i32 -131, label %sw.bb56
  ]

sw.bb:                                            ; preds = %while.body
  store i8 1, i8* %echo, align 1, !tbaa !11
  br label %sw.epilog

sw.bb3:                                           ; preds = %while.body
  %20 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #13
  %21 = load i8*, i8** @optarg, align 8, !tbaa !6
  %call4 = call i8* @strchr(i8* %21, i32 45) #21
  store i8* %call4, i8** %p, align 8, !tbaa !6
  %22 = bitcast i8** %hi_optarg to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #13
  %23 = load i8*, i8** @optarg, align 8, !tbaa !6
  store i8* %23, i8** %hi_optarg, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %invalid) #13
  %24 = load i8*, i8** %p, align 8, !tbaa !6
  %tobool = icmp ne i8* %24, null
  %lnot = xor i1 %tobool, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %invalid, align 1, !tbaa !11
  %25 = load i8, i8* %input_range, align 1, !tbaa !11, !range !16
  %tobool5 = trunc i8 %25 to i1
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb3
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  unreachable

if.end:                                           ; preds = %sw.bb3
  store i8 1, i8* %input_range, align 1, !tbaa !11
  %26 = load i8*, i8** %p, align 8, !tbaa !6
  %tobool6 = icmp ne i8* %26, null
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %27 = load i8*, i8** %p, align 8, !tbaa !6
  store i8 0, i8* %27, align 1, !tbaa !15
  %28 = load i8*, i8** @optarg, align 8, !tbaa !6
  %call8 = call i64 @xdectoumax(i8* %28, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 0)
  store i64 %call8, i64* %lo_input, align 8, !tbaa !13
  %29 = load i8*, i8** %p, align 8, !tbaa !6
  store i8 45, i8* %29, align 1, !tbaa !15
  %30 = load i8*, i8** %p, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %add.ptr, i8** %hi_optarg, align 8, !tbaa !6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  %31 = load i8*, i8** %hi_optarg, align 8, !tbaa !6
  %call10 = call i64 @xdectoumax(i8* %31, i64 0, i64 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 0)
  store i64 %call10, i64* %hi_input, align 8, !tbaa !13
  %32 = load i64, i64* %hi_input, align 8, !tbaa !13
  %33 = load i64, i64* %lo_input, align 8, !tbaa !13
  %sub = sub i64 %32, %33
  %add = add i64 %sub, 1
  store i64 %add, i64* %n_lines, align 8, !tbaa !13
  %34 = load i64, i64* %lo_input, align 8, !tbaa !13
  %35 = load i64, i64* %hi_input, align 8, !tbaa !13
  %cmp11 = icmp ule i64 %34, %35
  %conv = zext i1 %cmp11 to i32
  %36 = load i64, i64* %n_lines, align 8, !tbaa !13
  %cmp12 = icmp eq i64 %36, 0
  %conv13 = zext i1 %cmp12 to i32
  %cmp14 = icmp eq i32 %conv, %conv13
  %conv15 = zext i1 %cmp14 to i32
  %37 = load i8, i8* %invalid, align 1, !tbaa !11, !range !16
  %tobool16 = trunc i8 %37 to i1
  %conv17 = zext i1 %tobool16 to i32
  %or = or i32 %conv17, %conv15
  %tobool18 = icmp ne i32 %or, 0
  %frombool19 = zext i1 %tobool18 to i8
  store i8 %frombool19, i8* %invalid, align 1, !tbaa !11
  %38 = load i8, i8* %invalid, align 1, !tbaa !11, !range !16
  %tobool20 = trunc i8 %38 to i1
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end9
  %call22 = call i32* @__errno_location() #22
  %39 = load i32, i32* %call22, align 4, !tbaa !2
  %40 = load i8*, i8** @optarg, align 8, !tbaa !6
  %call23 = call i8* @quote(i8* %40)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %call23)
  unreachable

if.end24:                                         ; preds = %if.end9
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %invalid) #13
  %41 = bitcast i8** %hi_optarg to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #13
  %42 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #13
  br label %sw.epilog

sw.bb25:                                          ; preds = %while.body
  %43 = bitcast i64* %argval to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43) #13
  %44 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #13
  %45 = load i8*, i8** @optarg, align 8, !tbaa !6
  %call26 = call i32 @xstrtoumax(i8* %45, i8** null, i32 10, i64* %argval, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  store i32 %call26, i32* %e, align 4, !tbaa !15
  %46 = load i32, i32* %e, align 4, !tbaa !15
  %cmp27 = icmp eq i32 %46, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %sw.bb25
  %47 = load i64, i64* %head_lines, align 8, !tbaa !13
  %48 = load i64, i64* %argval, align 8, !tbaa !13
  %cmp30 = icmp ult i64 %47, %48
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then29
  %49 = load i64, i64* %head_lines, align 8, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %if.then29
  %50 = load i64, i64* %argval, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %49, %cond.true ], [ %50, %cond.false ]
  store i64 %cond, i64* %head_lines, align 8, !tbaa !13
  br label %if.end37

if.else:                                          ; preds = %sw.bb25
  %51 = load i32, i32* %e, align 4, !tbaa !15
  %cmp32 = icmp ne i32 %51, 1
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.else
  %52 = load i8*, i8** @optarg, align 8, !tbaa !6
  %call35 = call i8* @quote(i8* %52)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %call35)
  unreachable

if.end36:                                         ; preds = %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %cond.end
  %53 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #13
  %54 = bitcast i64* %argval to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #13
  br label %sw.epilog

sw.bb38:                                          ; preds = %while.body
  %55 = load i8*, i8** %outfile, align 8, !tbaa !6
  %tobool39 = icmp ne i8* %55, null
  br i1 %tobool39, label %land.lhs.true, label %if.end44

land.lhs.true:                                    ; preds = %sw.bb38
  %56 = load i8*, i8** %outfile, align 8, !tbaa !6
  %57 = load i8*, i8** @optarg, align 8, !tbaa !6
  %call40 = call i32 @strcmp(i8* %56, i8* %57) #21
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.end44, label %if.then43

if.then43:                                        ; preds = %land.lhs.true
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  unreachable

if.end44:                                         ; preds = %land.lhs.true, %sw.bb38
  %58 = load i8*, i8** @optarg, align 8, !tbaa !6
  store i8* %58, i8** %outfile, align 8, !tbaa !6
  br label %sw.epilog

sw.bb45:                                          ; preds = %while.body
  %59 = load i8*, i8** %random_source, align 8, !tbaa !6
  %tobool46 = icmp ne i8* %59, null
  br i1 %tobool46, label %land.lhs.true47, label %if.end52

land.lhs.true47:                                  ; preds = %sw.bb45
  %60 = load i8*, i8** %random_source, align 8, !tbaa !6
  %61 = load i8*, i8** @optarg, align 8, !tbaa !6
  %call48 = call i32 @strcmp(i8* %60, i8* %61) #21
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.end52, label %if.then51

if.then51:                                        ; preds = %land.lhs.true47
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  unreachable

if.end52:                                         ; preds = %land.lhs.true47, %sw.bb45
  %62 = load i8*, i8** @optarg, align 8, !tbaa !6
  store i8* %62, i8** %random_source, align 8, !tbaa !6
  br label %sw.epilog

sw.bb53:                                          ; preds = %while.body
  store i8 1, i8* %repeat, align 1, !tbaa !11
  br label %sw.epilog

sw.bb54:                                          ; preds = %while.body
  store i8 0, i8* %eolbyte, align 1, !tbaa !15
  br label %sw.epilog

sw.bb55:                                          ; preds = %while.body
  call void @usage(i32 0) #23
  unreachable

sw.bb56:                                          ; preds = %while.body
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %64 = load i8*, i8** @Version, align 8, !tbaa !6
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i8* null)
  call void @exit(i32 0) #20
  unreachable

sw.default:                                       ; preds = %while.body
  call void @usage(i32 1) #23
  unreachable

sw.epilog:                                        ; preds = %sw.bb54, %sw.bb53, %if.end52, %if.end44, %if.end37, %if.end24, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %65 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %66 = load i32, i32* @optind, align 4, !tbaa !2
  %sub57 = sub nsw i32 %65, %66
  store i32 %sub57, i32* %n_operands, align 4, !tbaa !2
  %67 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %68 = load i32, i32* @optind, align 4, !tbaa !2
  %idx.ext = sext i32 %68 to i64
  %add.ptr58 = getelementptr inbounds i8*, i8** %67, i64 %idx.ext
  store i8** %add.ptr58, i8*** %operand, align 8, !tbaa !6
  %69 = load i8, i8* %echo, align 1, !tbaa !11, !range !16
  %tobool59 = trunc i8 %69 to i1
  br i1 %tobool59, label %land.lhs.true61, label %if.end65

land.lhs.true61:                                  ; preds = %while.end
  %70 = load i8, i8* %input_range, align 1, !tbaa !11, !range !16
  %tobool62 = trunc i8 %70 to i1
  br i1 %tobool62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true61
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  call void @usage(i32 1) #23
  unreachable

if.end65:                                         ; preds = %land.lhs.true61, %while.end
  %71 = load i8, i8* %input_range, align 1, !tbaa !11, !range !16
  %tobool66 = trunc i8 %71 to i1
  br i1 %tobool66, label %cond.true68, label %cond.false71

cond.true68:                                      ; preds = %if.end65
  %72 = load i32, i32* %n_operands, align 4, !tbaa !2
  %cmp69 = icmp slt i32 0, %72
  br i1 %cmp69, label %if.then76, label %if.end81

cond.false71:                                     ; preds = %if.end65
  %73 = load i8, i8* %echo, align 1, !tbaa !11, !range !16
  %tobool72 = trunc i8 %73 to i1
  br i1 %tobool72, label %if.end81, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %cond.false71
  %74 = load i32, i32* %n_operands, align 4, !tbaa !2
  %cmp74 = icmp slt i32 1, %74
  br i1 %cmp74, label %if.then76, label %if.end81

if.then76:                                        ; preds = %land.lhs.true73, %cond.true68
  %75 = load i8**, i8*** %operand, align 8, !tbaa !6
  %76 = load i8, i8* %input_range, align 1, !tbaa !11, !range !16
  %tobool77 = trunc i8 %76 to i1
  %lnot78 = xor i1 %tobool77, true
  %lnot.ext = zext i1 %lnot78 to i32
  %idxprom = sext i32 %lnot.ext to i64
  %arrayidx79 = getelementptr inbounds i8*, i8** %75, i64 %idxprom
  %77 = load i8*, i8** %arrayidx79, align 8, !tbaa !6
  %call80 = call i8* @quote(i8* %77)
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* %call80)
  call void @usage(i32 1) #23
  unreachable

if.end81:                                         ; preds = %land.lhs.true73, %cond.false71, %cond.true68
  %78 = load i64, i64* %head_lines, align 8, !tbaa !13
  %cmp82 = icmp eq i64 %78, 0
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %if.end81
  store i64 0, i64* %n_lines, align 8, !tbaa !13
  store i8** null, i8*** %line, align 8, !tbaa !6
  br label %if.end125

if.else85:                                        ; preds = %if.end81
  %79 = load i8, i8* %echo, align 1, !tbaa !11, !range !16
  %tobool86 = trunc i8 %79 to i1
  br i1 %tobool86, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.else85
  %80 = load i8**, i8*** %operand, align 8, !tbaa !6
  %81 = load i32, i32* %n_operands, align 4, !tbaa !2
  %82 = load i8, i8* %eolbyte, align 1, !tbaa !15
  call void @input_from_argv(i8** %80, i32 %81, i8 signext %82)
  %83 = load i32, i32* %n_operands, align 4, !tbaa !2
  %conv88 = sext i32 %83 to i64
  store i64 %conv88, i64* %n_lines, align 8, !tbaa !13
  %84 = load i8**, i8*** %operand, align 8, !tbaa !6
  store i8** %84, i8*** %line, align 8, !tbaa !6
  br label %if.end124

if.else89:                                        ; preds = %if.else85
  %85 = load i8, i8* %input_range, align 1, !tbaa !11, !range !16
  %tobool90 = trunc i8 %85 to i1
  br i1 %tobool90, label %if.then91, label %if.else94

if.then91:                                        ; preds = %if.else89
  %86 = load i64, i64* %hi_input, align 8, !tbaa !13
  %87 = load i64, i64* %lo_input, align 8, !tbaa !13
  %sub92 = sub i64 %86, %87
  %add93 = add i64 %sub92, 1
  store i64 %add93, i64* %n_lines, align 8, !tbaa !13
  store i8** null, i8*** %line, align 8, !tbaa !6
  br label %if.end123

if.else94:                                        ; preds = %if.else89
  %88 = load i32, i32* %n_operands, align 4, !tbaa !2
  %cmp95 = icmp eq i32 %88, 1
  br i1 %cmp95, label %land.lhs.true97, label %if.end109

land.lhs.true97:                                  ; preds = %if.else94
  %89 = load i8**, i8*** %operand, align 8, !tbaa !6
  %arrayidx98 = getelementptr inbounds i8*, i8** %89, i64 0
  %90 = load i8*, i8** %arrayidx98, align 8, !tbaa !6
  %call99 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0)) #21
  %cmp100 = icmp eq i32 %call99, 0
  br i1 %cmp100, label %if.end109, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true97
  %91 = load i8**, i8*** %operand, align 8, !tbaa !6
  %arrayidx102 = getelementptr inbounds i8*, i8** %91, i64 0
  %92 = load i8*, i8** %arrayidx102, align 8, !tbaa !6
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !6
  %call103 = call %struct._IO_FILE* @freopen_safer(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %struct._IO_FILE* %93)
  %tobool104 = icmp ne %struct._IO_FILE* %call103, null
  br i1 %tobool104, label %if.end109, label %if.then105

if.then105:                                       ; preds = %lor.lhs.false
  %call106 = call i32* @__errno_location() #22
  %94 = load i32, i32* %call106, align 4, !tbaa !2
  %95 = load i8**, i8*** %operand, align 8, !tbaa !6
  %arrayidx107 = getelementptr inbounds i8*, i8** %95, i64 0
  %96 = load i8*, i8** %arrayidx107, align 8, !tbaa !6
  %call108 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %96)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* %call108)
  unreachable

if.end109:                                        ; preds = %lor.lhs.false, %land.lhs.true97, %if.else94
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !6
  call void @fadvise(%struct._IO_FILE* %97, i32 2)
  %98 = load i8, i8* %repeat, align 1, !tbaa !11, !range !16
  %tobool110 = trunc i8 %98 to i1
  br i1 %tobool110, label %if.then119, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %if.end109
  %99 = load i64, i64* %head_lines, align 8, !tbaa !13
  %cmp113 = icmp eq i64 %99, -1
  br i1 %cmp113, label %if.then119, label %lor.lhs.false115

lor.lhs.false115:                                 ; preds = %lor.lhs.false112
  %call116 = call i64 @input_size()
  %cmp117 = icmp sle i64 %call116, 8388608
  br i1 %cmp117, label %if.then119, label %if.else121

if.then119:                                       ; preds = %lor.lhs.false115, %lor.lhs.false112, %if.end109
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !6
  %101 = load i8, i8* %eolbyte, align 1, !tbaa !15
  %call120 = call i64 @read_input(%struct._IO_FILE* %100, i8 signext %101, i8*** %input_lines)
  store i64 %call120, i64* %n_lines, align 8, !tbaa !13
  %102 = load i8**, i8*** %input_lines, align 8, !tbaa !6
  store i8** %102, i8*** %line, align 8, !tbaa !6
  br label %if.end122

if.else121:                                       ; preds = %lor.lhs.false115
  store i8 1, i8* %use_reservoir_sampling, align 1, !tbaa !11
  store i64 -1, i64* %n_lines, align 8, !tbaa !13
  br label %if.end122

if.end122:                                        ; preds = %if.else121, %if.then119
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then91
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then87
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.then84
  %103 = bitcast i64* %ahead_lines to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %103) #13
  %104 = load i8, i8* %repeat, align 1, !tbaa !11, !range !16
  %tobool126 = trunc i8 %104 to i1
  br i1 %tobool126, label %cond.true131, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.end125
  %105 = load i64, i64* %head_lines, align 8, !tbaa !13
  %106 = load i64, i64* %n_lines, align 8, !tbaa !13
  %cmp129 = icmp ult i64 %105, %106
  br i1 %cmp129, label %cond.true131, label %cond.false132

cond.true131:                                     ; preds = %lor.lhs.false128, %if.end125
  %107 = load i64, i64* %head_lines, align 8, !tbaa !13
  br label %cond.end133

cond.false132:                                    ; preds = %lor.lhs.false128
  %108 = load i64, i64* %n_lines, align 8, !tbaa !13
  br label %cond.end133

cond.end133:                                      ; preds = %cond.false132, %cond.true131
  %cond134 = phi i64 [ %107, %cond.true131 ], [ %108, %cond.false132 ]
  store i64 %cond134, i64* %ahead_lines, align 8, !tbaa !13
  %109 = load i8*, i8** %random_source, align 8, !tbaa !6
  %110 = load i8, i8* %use_reservoir_sampling, align 1, !tbaa !11, !range !16
  %tobool135 = trunc i8 %110 to i1
  br i1 %tobool135, label %cond.true140, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %cond.end133
  %111 = load i8, i8* %repeat, align 1, !tbaa !11, !range !16
  %tobool138 = trunc i8 %111 to i1
  br i1 %tobool138, label %cond.true140, label %cond.false141

cond.true140:                                     ; preds = %lor.lhs.false137, %cond.end133
  br label %cond.end143

cond.false141:                                    ; preds = %lor.lhs.false137
  %112 = load i64, i64* %ahead_lines, align 8, !tbaa !13
  %113 = load i64, i64* %n_lines, align 8, !tbaa !13
  %call142 = call i64 @randperm_bound(i64 %112, i64 %113) #22
  br label %cond.end143

cond.end143:                                      ; preds = %cond.false141, %cond.true140
  %cond144 = phi i64 [ -1, %cond.true140 ], [ %call142, %cond.false141 ]
  %call145 = call noalias %struct.randint_source* @randint_all_new(i8* %109, i64 %cond144)
  store %struct.randint_source* %call145, %struct.randint_source** %randint_source, align 8, !tbaa !6
  %114 = load %struct.randint_source*, %struct.randint_source** %randint_source, align 8, !tbaa !6
  %tobool146 = icmp ne %struct.randint_source* %114, null
  br i1 %tobool146, label %if.end155, label %if.then147

if.then147:                                       ; preds = %cond.end143
  %call148 = call i32* @__errno_location() #22
  %115 = load i32, i32* %call148, align 4, !tbaa !2
  %116 = load i8*, i8** %random_source, align 8, !tbaa !6
  %tobool149 = icmp ne i8* %116, null
  br i1 %tobool149, label %cond.true150, label %cond.false151

cond.true150:                                     ; preds = %if.then147
  %117 = load i8*, i8** %random_source, align 8, !tbaa !6
  br label %cond.end152

cond.false151:                                    ; preds = %if.then147
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false151, %cond.true150
  %cond153 = phi i8* [ %117, %cond.true150 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), %cond.false151 ]
  %call154 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %cond153)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* %call154)
  unreachable

if.end155:                                        ; preds = %cond.end143
  %118 = load i8, i8* %use_reservoir_sampling, align 1, !tbaa !11, !range !16
  %tobool156 = trunc i8 %118 to i1
  br i1 %tobool156, label %if.then157, label %if.end159

if.then157:                                       ; preds = %if.end155
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !6
  %120 = load i8, i8* %eolbyte, align 1, !tbaa !15
  %121 = load i64, i64* %ahead_lines, align 8, !tbaa !13
  %122 = load %struct.randint_source*, %struct.randint_source** %randint_source, align 8, !tbaa !6
  %call158 = call i64 @read_input_reservoir_sampling(%struct._IO_FILE* %119, i8 signext %120, i64 %121, %struct.randint_source* %122, %struct.linebuffer** %reservoir)
  store i64 %call158, i64* %n_lines, align 8, !tbaa !13
  %123 = load i64, i64* %n_lines, align 8, !tbaa !13
  store i64 %123, i64* %ahead_lines, align 8, !tbaa !13
  br label %if.end159

if.end159:                                        ; preds = %if.then157, %if.end155
  %124 = load i64, i64* %head_lines, align 8, !tbaa !13
  %cmp160 = icmp eq i64 %124, 0
  br i1 %cmp160, label %if.end174, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %if.end159
  %125 = load i8, i8* %echo, align 1, !tbaa !11, !range !16
  %tobool163 = trunc i8 %125 to i1
  br i1 %tobool163, label %if.end174, label %lor.lhs.false165

lor.lhs.false165:                                 ; preds = %lor.lhs.false162
  %126 = load i8, i8* %input_range, align 1, !tbaa !11, !range !16
  %tobool166 = trunc i8 %126 to i1
  br i1 %tobool166, label %if.end174, label %lor.lhs.false168

lor.lhs.false168:                                 ; preds = %lor.lhs.false165
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !tbaa !6
  %call169 = call i32 @rpl_fclose(%struct._IO_FILE* %127)
  %cmp170 = icmp eq i32 %call169, 0
  br i1 %cmp170, label %if.end174, label %if.then172

if.then172:                                       ; preds = %lor.lhs.false168
  %call173 = call i32* @__errno_location() #22
  %128 = load i32, i32* %call173, align 4, !tbaa !2
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  unreachable

if.end174:                                        ; preds = %lor.lhs.false168, %lor.lhs.false165, %lor.lhs.false162, %if.end159
  %129 = load i8, i8* %repeat, align 1, !tbaa !11, !range !16
  %tobool175 = trunc i8 %129 to i1
  br i1 %tobool175, label %if.end178, label %if.then176

if.then176:                                       ; preds = %if.end174
  %130 = load %struct.randint_source*, %struct.randint_source** %randint_source, align 8, !tbaa !6
  %131 = load i64, i64* %ahead_lines, align 8, !tbaa !13
  %132 = load i64, i64* %n_lines, align 8, !tbaa !13
  %call177 = call noalias i64* @randperm_new(%struct.randint_source* %130, i64 %131, i64 %132)
  store i64* %call177, i64** %permutation, align 8, !tbaa !6
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %if.end174
  %133 = load i8*, i8** %outfile, align 8, !tbaa !6
  %tobool179 = icmp ne i8* %133, null
  br i1 %tobool179, label %land.lhs.true180, label %if.end186

land.lhs.true180:                                 ; preds = %if.end178
  %134 = load i8*, i8** %outfile, align 8, !tbaa !6
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call181 = call %struct._IO_FILE* @freopen_safer(i8* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %struct._IO_FILE* %135)
  %tobool182 = icmp ne %struct._IO_FILE* %call181, null
  br i1 %tobool182, label %if.end186, label %if.then183

if.then183:                                       ; preds = %land.lhs.true180
  %call184 = call i32* @__errno_location() #22
  %136 = load i32, i32* %call184, align 4, !tbaa !2
  %137 = load i8*, i8** %outfile, align 8, !tbaa !6
  %call185 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %137)
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* %call185)
  unreachable

if.end186:                                        ; preds = %land.lhs.true180, %if.end178
  %138 = load i8, i8* %repeat, align 1, !tbaa !11, !range !16
  %tobool187 = trunc i8 %138 to i1
  br i1 %tobool187, label %if.then188, label %if.else204

if.then188:                                       ; preds = %if.end186
  %139 = load i64, i64* %head_lines, align 8, !tbaa !13
  %cmp189 = icmp eq i64 %139, 0
  br i1 %cmp189, label %if.then191, label %if.else192

if.then191:                                       ; preds = %if.then188
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %if.end203

if.else192:                                       ; preds = %if.then188
  %140 = load i64, i64* %n_lines, align 8, !tbaa !13
  %cmp193 = icmp eq i64 %140, 0
  br i1 %cmp193, label %if.then195, label %if.end196

if.then195:                                       ; preds = %if.else192
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  unreachable

if.end196:                                        ; preds = %if.else192
  %141 = load i8, i8* %input_range, align 1, !tbaa !11, !range !16
  %tobool197 = trunc i8 %141 to i1
  br i1 %tobool197, label %if.then198, label %if.else200

if.then198:                                       ; preds = %if.end196
  %142 = load %struct.randint_source*, %struct.randint_source** %randint_source, align 8, !tbaa !6
  %143 = load i64, i64* %ahead_lines, align 8, !tbaa !13
  %144 = load i64, i64* %lo_input, align 8, !tbaa !13
  %145 = load i64, i64* %hi_input, align 8, !tbaa !13
  %146 = load i8, i8* %eolbyte, align 1, !tbaa !15
  %call199 = call i32 @write_random_numbers(%struct.randint_source* %142, i64 %143, i64 %144, i64 %145, i8 signext %146)
  store i32 %call199, i32* %i, align 4, !tbaa !2
  br label %if.end202

if.else200:                                       ; preds = %if.end196
  %147 = load %struct.randint_source*, %struct.randint_source** %randint_source, align 8, !tbaa !6
  %148 = load i64, i64* %ahead_lines, align 8, !tbaa !13
  %149 = load i8**, i8*** %line, align 8, !tbaa !6
  %150 = load i64, i64* %n_lines, align 8, !tbaa !13
  %call201 = call i32 @write_random_lines(%struct.randint_source* %147, i64 %148, i8** %149, i64 %150)
  store i32 %call201, i32* %i, align 4, !tbaa !2
  br label %if.end202

if.end202:                                        ; preds = %if.else200, %if.then198
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.then191
  br label %if.end216

if.else204:                                       ; preds = %if.end186
  %151 = load i8, i8* %use_reservoir_sampling, align 1, !tbaa !11, !range !16
  %tobool205 = trunc i8 %151 to i1
  br i1 %tobool205, label %if.then206, label %if.else208

if.then206:                                       ; preds = %if.else204
  %152 = load i64, i64* %n_lines, align 8, !tbaa !13
  %153 = load %struct.linebuffer*, %struct.linebuffer** %reservoir, align 8, !tbaa !6
  %154 = load i64*, i64** %permutation, align 8, !tbaa !6
  %call207 = call i32 @write_permuted_output_reservoir(i64 %152, %struct.linebuffer* %153, i64* %154)
  store i32 %call207, i32* %i, align 4, !tbaa !2
  br label %if.end215

if.else208:                                       ; preds = %if.else204
  %155 = load i8, i8* %input_range, align 1, !tbaa !11, !range !16
  %tobool209 = trunc i8 %155 to i1
  br i1 %tobool209, label %if.then210, label %if.else212

if.then210:                                       ; preds = %if.else208
  %156 = load i64, i64* %ahead_lines, align 8, !tbaa !13
  %157 = load i64, i64* %lo_input, align 8, !tbaa !13
  %158 = load i64*, i64** %permutation, align 8, !tbaa !6
  %159 = load i8, i8* %eolbyte, align 1, !tbaa !15
  %call211 = call i32 @write_permuted_numbers(i64 %156, i64 %157, i64* %158, i8 signext %159)
  store i32 %call211, i32* %i, align 4, !tbaa !2
  br label %if.end214

if.else212:                                       ; preds = %if.else208
  %160 = load i64, i64* %ahead_lines, align 8, !tbaa !13
  %161 = load i8**, i8*** %line, align 8, !tbaa !6
  %162 = load i64*, i64** %permutation, align 8, !tbaa !6
  %call213 = call i32 @write_permuted_lines(i64 %160, i8** %161, i64* %162)
  store i32 %call213, i32* %i, align 4, !tbaa !2
  br label %if.end214

if.end214:                                        ; preds = %if.else212, %if.then210
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.then206
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.end203
  %163 = load i32, i32* %i, align 4, !tbaa !2
  %cmp217 = icmp ne i32 %163, 0
  br i1 %cmp217, label %if.then219, label %if.end221

if.then219:                                       ; preds = %if.end216
  %call220 = call i32* @__errno_location() #22
  %164 = load i32, i32* %call220, align 4, !tbaa !2
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0))
  unreachable

if.end221:                                        ; preds = %if.end216
  store i32 0, i32* %retval, align 4
  %165 = bitcast i64* %ahead_lines to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %165) #13
  %166 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %166) #13
  %167 = bitcast i64** %permutation to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %167) #13
  %168 = bitcast %struct.randint_source** %randint_source to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %168) #13
  %169 = bitcast %struct.linebuffer** %reservoir to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %169) #13
  %170 = bitcast i8*** %line to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %170) #13
  %171 = bitcast i64* %n_lines to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %171) #13
  %172 = bitcast i8*** %operand to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %172) #13
  %173 = bitcast i32* %n_operands to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %173) #13
  %174 = bitcast i32* %optc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %174) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %repeat) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %use_reservoir_sampling) #13
  %175 = bitcast i8*** %input_lines to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %175) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %eolbyte) #13
  %176 = bitcast i8** %random_source to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %176) #13
  %177 = bitcast i8** %outfile to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %177) #13
  %178 = bitcast i64* %head_lines to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %178) #13
  %179 = bitcast i64* %hi_input to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %179) #13
  %180 = bitcast i64* %lo_input to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %180) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %input_range) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %echo) #13
  %181 = load i32, i32* %retval, align 4
  ret i32 %181
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) #6

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #6

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #5

declare dso_local void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

; Function Attrs: nounwind uwtable
define internal void @input_from_argv(i8** %operand, i32 %n_operands, i8 signext %eolbyte) #7 {
entry:
  %operand.addr = alloca i8**, align 8
  %n_operands.addr = alloca i32, align 4
  %eolbyte.addr = alloca i8, align 1
  %p = alloca i8*, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  %p1 = alloca i8*, align 8
  store i8** %operand, i8*** %operand.addr, align 8, !tbaa !6
  store i32 %n_operands, i32* %n_operands.addr, align 4, !tbaa !2
  store i8 %eolbyte, i8* %eolbyte.addr, align 1, !tbaa !15
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load i32, i32* %n_operands.addr, align 4, !tbaa !2
  %conv = sext i32 %2 to i64
  store i64 %conv, i64* %size, align 8, !tbaa !13
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #13
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %n_operands.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8**, i8*** %operand.addr, align 8, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call = call i64 @strlen(i8* %8) #21
  %9 = load i64, i64* %size, align 8, !tbaa !13
  %add = add i64 %9, %call
  store i64 %add, i64* %size, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i64, i64* %size, align 8, !tbaa !13
  %call2 = call noalias nonnull i8* @xmalloc(i64 %11) #24
  store i8* %call2, i8** %p, align 8, !tbaa !6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc12, %for.end
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %13 = load i32, i32* %n_operands.addr, align 4, !tbaa !2
  %cmp4 = icmp slt i32 %12, %13
  br i1 %cmp4, label %for.body6, label %for.end14

for.body6:                                        ; preds = %for.cond3
  %14 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #13
  %15 = load i8*, i8** %p, align 8, !tbaa !6
  %16 = load i8**, i8*** %operand.addr, align 8, !tbaa !6
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i8*, i8** %16, i64 %idxprom7
  %18 = load i8*, i8** %arrayidx8, align 8, !tbaa !6
  %call9 = call i8* @stpcpy(i8* %15, i8* %18) #13
  store i8* %call9, i8** %p1, align 8, !tbaa !6
  %19 = load i8*, i8** %p, align 8, !tbaa !6
  %20 = load i8**, i8*** %operand.addr, align 8, !tbaa !6
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i8*, i8** %20, i64 %idxprom10
  store i8* %19, i8** %arrayidx11, align 8, !tbaa !6
  %22 = load i8*, i8** %p1, align 8, !tbaa !6
  store i8* %22, i8** %p, align 8, !tbaa !6
  %23 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %24 = load i8*, i8** %p, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !6
  store i8 %23, i8* %24, align 1, !tbaa !15
  %25 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #13
  br label %for.inc12

for.inc12:                                        ; preds = %for.body6
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %inc13 = add nsw i32 %26, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !2
  br label %for.cond3

for.end14:                                        ; preds = %for.cond3
  %27 = load i8*, i8** %p, align 8, !tbaa !6
  %28 = load i8**, i8*** %operand.addr, align 8, !tbaa !6
  %29 = load i32, i32* %n_operands.addr, align 4, !tbaa !2
  %idxprom15 = sext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds i8*, i8** %28, i64 %idxprom15
  store i8* %27, i8** %arrayidx16, align 8, !tbaa !6
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #13
  %31 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #13
  %32 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @input_size() #7 {
entry:
  %retval = alloca i64, align 8
  %file_size = alloca i64, align 8
  %stat_buf = alloca %struct.stat, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %input_offset = alloca i64, align 8
  %0 = bitcast i64* %file_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast %struct.stat* %stat_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* %1) #13
  %call = call i32 @fstat(i32 0, %struct.stat* %stat_buf) #13
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup8

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @usable_st_size(%struct.stat* %stat_buf)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %stat_buf, i32 0, i32 8
  %2 = load i64, i64* %st_size, align 8, !tbaa !17
  store i64 %2, i64* %file_size, align 8, !tbaa !13
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i64 9223372036854775807, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup8

if.end3:                                          ; preds = %if.then2
  %3 = bitcast i64* %input_offset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %call4 = call i64 @lseek(i32 0, i64 0, i32 1) #13
  store i64 %call4, i64* %input_offset, align 8, !tbaa !13
  %4 = load i64, i64* %input_offset, align 8, !tbaa !13
  %cmp5 = icmp slt i64 %4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i64 9223372036854775807, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = load i64, i64* %input_offset, align 8, !tbaa !13
  %6 = load i64, i64* %file_size, align 8, !tbaa !13
  %sub = sub nsw i64 %6, %5
  store i64 %sub, i64* %file_size, align 8, !tbaa !13
  %7 = load i64, i64* %file_size, align 8, !tbaa !13
  store i64 %7, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  %8 = bitcast i64* %input_offset to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #13
  br label %cleanup8

cleanup8:                                         ; preds = %cleanup, %if.else, %if.then
  %9 = bitcast %struct.stat* %stat_buf to i8*
  call void @llvm.lifetime.end.p0i8(i64 144, i8* %9) #13
  %10 = bitcast i64* %file_size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #13
  %11 = load i64, i64* %retval, align 8
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal i64 @read_input(%struct._IO_FILE* %in, i8 signext %eolbyte, i8*** %pline) #7 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %eolbyte.addr = alloca i8, align 1
  %pline.addr = alloca i8***, align 8
  %p = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %used = alloca i64, align 8
  %lim = alloca i8*, align 8
  %line = alloca i8**, align 8
  %n_lines = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8, !tbaa !6
  store i8 %eolbyte, i8* %eolbyte.addr, align 1, !tbaa !15
  store i8*** %pline, i8**** %pline.addr, align 8, !tbaa !6
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  store i8* null, i8** %buf, align 8, !tbaa !6
  %2 = bitcast i64* %used to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = bitcast i8** %lim to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = bitcast i8*** %line to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #13
  %5 = bitcast i64* %n_lines to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !6
  %call = call noalias i8* @fread_file(%struct._IO_FILE* %6, i32 0, i64* %used)
  store i8* %call, i8** %buf, align 8, !tbaa !6
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #22
  %7 = load i32, i32* %call1, align 4, !tbaa !2
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %used, align 8, !tbaa !13
  %tobool2 = icmp ne i64 %8, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8*, i8** %buf, align 8, !tbaa !6
  %10 = load i64, i64* %used, align 8, !tbaa !13
  %sub = sub i64 %10, 1
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub
  %11 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %11 to i32
  %12 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %conv3 = sext i8 %12 to i32
  %cmp = icmp ne i32 %conv, %conv3
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  %13 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %14 = load i8*, i8** %buf, align 8, !tbaa !6
  %15 = load i64, i64* %used, align 8, !tbaa !13
  %inc = add i64 %15, 1
  store i64 %inc, i64* %used, align 8, !tbaa !13
  %arrayidx6 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8 %13, i8* %arrayidx6, align 1, !tbaa !15
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  %16 = load i8*, i8** %buf, align 8, !tbaa !6
  %17 = load i64, i64* %used, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %add.ptr, i8** %lim, align 8, !tbaa !6
  store i64 0, i64* %n_lines, align 8, !tbaa !13
  %18 = load i8*, i8** %buf, align 8, !tbaa !6
  store i8* %18, i8** %p, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %19 = load i8*, i8** %p, align 8, !tbaa !6
  %20 = load i8*, i8** %lim, align 8, !tbaa !6
  %cmp8 = icmp ult i8* %19, %20
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i64, i64* %n_lines, align 8, !tbaa !13
  %inc10 = add i64 %21, 1
  store i64 %inc10, i64* %n_lines, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i8*, i8** %p, align 8, !tbaa !6
  %23 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %call11 = call i8* @next_line(i8* %22, i8 signext %23)
  store i8* %call11, i8** %p, align 8, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i64, i64* %n_lines, align 8, !tbaa !13
  %add = add i64 %24, 1
  %call12 = call noalias nonnull i8* @xnmalloc(i64 %add, i64 8) #25
  %25 = bitcast i8* %call12 to i8**
  store i8** %25, i8*** %line, align 8, !tbaa !6
  %26 = load i8***, i8**** %pline.addr, align 8, !tbaa !6
  store i8** %25, i8*** %26, align 8, !tbaa !6
  %27 = load i8*, i8** %buf, align 8, !tbaa !6
  store i8* %27, i8** %p, align 8, !tbaa !6
  %28 = load i8**, i8*** %line, align 8, !tbaa !6
  %arrayidx13 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %27, i8** %arrayidx13, align 8, !tbaa !6
  %29 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #13
  store i64 1, i64* %i, align 8, !tbaa !13
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc20, %for.end
  %30 = load i64, i64* %i, align 8, !tbaa !13
  %31 = load i64, i64* %n_lines, align 8, !tbaa !13
  %cmp15 = icmp ule i64 %30, %31
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond14
  %32 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #13
  br label %for.end22

for.body17:                                       ; preds = %for.cond14
  %33 = load i8*, i8** %p, align 8, !tbaa !6
  %34 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %call18 = call i8* @next_line(i8* %33, i8 signext %34)
  store i8* %call18, i8** %p, align 8, !tbaa !6
  %35 = load i8**, i8*** %line, align 8, !tbaa !6
  %36 = load i64, i64* %i, align 8, !tbaa !13
  %arrayidx19 = getelementptr inbounds i8*, i8** %35, i64 %36
  store i8* %call18, i8** %arrayidx19, align 8, !tbaa !6
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %37 = load i64, i64* %i, align 8, !tbaa !13
  %inc21 = add i64 %37, 1
  store i64 %inc21, i64* %i, align 8, !tbaa !13
  br label %for.cond14

for.end22:                                        ; preds = %for.cond.cleanup
  %38 = load i64, i64* %n_lines, align 8, !tbaa !13
  %39 = bitcast i64* %n_lines to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #13
  %40 = bitcast i8*** %line to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #13
  %41 = bitcast i8** %lim to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #13
  %42 = bitcast i64* %used to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #13
  %43 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #13
  %44 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #13
  ret i64 %38
}

; Function Attrs: nounwind uwtable
define internal i64 @read_input_reservoir_sampling(%struct._IO_FILE* %in, i8 signext %eolbyte, i64 %k, %struct.randint_source* %s, %struct.linebuffer** %out_rsrv) #7 {
entry:
  %in.addr = alloca %struct._IO_FILE*, align 8
  %eolbyte.addr = alloca i8, align 1
  %k.addr = alloca i64, align 8
  %s.addr = alloca %struct.randint_source*, align 8
  %out_rsrv.addr = alloca %struct.linebuffer**, align 8
  %n_lines = alloca i64, align 8
  %n_alloc_lines = alloca i64, align 8
  %line = alloca %struct.linebuffer*, align 8
  %rsrv = alloca %struct.linebuffer*, align 8
  %dummy = alloca %struct.linebuffer, align 8
  %j = alloca i64, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8, !tbaa !6
  store i8 %eolbyte, i8* %eolbyte.addr, align 1, !tbaa !15
  store i64 %k, i64* %k.addr, align 8, !tbaa !13
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  store %struct.linebuffer** %out_rsrv, %struct.linebuffer*** %out_rsrv.addr, align 8, !tbaa !6
  %0 = bitcast i64* %n_lines to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %n_lines, align 8, !tbaa !13
  %1 = bitcast i64* %n_alloc_lines to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load i64, i64* %k.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %2, 1024
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i64, i64* %k.addr, align 8, !tbaa !13
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ 1024, %cond.false ]
  store i64 %cond, i64* %n_alloc_lines, align 8, !tbaa !13
  %4 = bitcast %struct.linebuffer** %line to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #13
  store %struct.linebuffer* null, %struct.linebuffer** %line, align 8, !tbaa !6
  %5 = bitcast %struct.linebuffer** %rsrv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  %6 = load i64, i64* %n_alloc_lines, align 8, !tbaa !13
  %call = call noalias nonnull i8* @xcalloc(i64 %6, i64 24) #25
  %7 = bitcast i8* %call to %struct.linebuffer*
  store %struct.linebuffer* %7, %struct.linebuffer** %rsrv, align 8, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %8 = load i64, i64* %n_lines, align 8, !tbaa !13
  %9 = load i64, i64* %k.addr, align 8, !tbaa !13
  %cmp1 = icmp ult i64 %8, %9
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load %struct.linebuffer*, %struct.linebuffer** %rsrv, align 8, !tbaa !6
  %11 = load i64, i64* %n_lines, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %10, i64 %11
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !6
  %13 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %call2 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %arrayidx, %struct._IO_FILE* %12, i8 signext %13)
  store %struct.linebuffer* %call2, %struct.linebuffer** %line, align 8, !tbaa !6
  %cmp3 = icmp ne %struct.linebuffer* %call2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i64, i64* %n_lines, align 8, !tbaa !13
  %inc = add i64 %15, 1
  store i64 %inc, i64* %n_lines, align 8, !tbaa !13
  %16 = load i64, i64* %n_lines, align 8, !tbaa !13
  %17 = load i64, i64* %n_alloc_lines, align 8, !tbaa !13
  %cmp4 = icmp uge i64 %16, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %18 = load i64, i64* %n_alloc_lines, align 8, !tbaa !13
  %add = add i64 %18, 1024
  store i64 %add, i64* %n_alloc_lines, align 8, !tbaa !13
  %19 = load %struct.linebuffer*, %struct.linebuffer** %rsrv, align 8, !tbaa !6
  %20 = bitcast %struct.linebuffer* %19 to i8*
  %21 = load i64, i64* %n_alloc_lines, align 8, !tbaa !13
  %call5 = call i8* @xnrealloc(i8* %20, i64 %21, i64 24) #26
  %22 = bitcast i8* %call5 to %struct.linebuffer*
  store %struct.linebuffer* %22, %struct.linebuffer** %rsrv, align 8, !tbaa !6
  %23 = load %struct.linebuffer*, %struct.linebuffer** %rsrv, align 8, !tbaa !6
  %24 = load i64, i64* %n_lines, align 8, !tbaa !13
  %arrayidx6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %23, i64 %24
  %25 = bitcast %struct.linebuffer* %arrayidx6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24576, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %26 = load %struct.linebuffer*, %struct.linebuffer** %line, align 8, !tbaa !6
  %cmp7 = icmp ne %struct.linebuffer* %26, null
  br i1 %cmp7, label %if.then8, label %if.end25

if.then8:                                         ; preds = %while.end
  %27 = bitcast %struct.linebuffer* %dummy to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %27) #13
  call void @initbuffer(%struct.linebuffer* %dummy)
  br label %do.body

do.body:                                          ; preds = %land.end21, %if.then8
  %28 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %28) #13
  %29 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %30 = load i64, i64* %n_lines, align 8, !tbaa !13
  %add9 = add i64 %30, 1
  %call10 = call i64 @randint_choose(%struct.randint_source* %29, i64 %add9)
  store i64 %call10, i64* %j, align 8, !tbaa !13
  %31 = load i64, i64* %j, align 8, !tbaa !13
  %32 = load i64, i64* %k.addr, align 8, !tbaa !13
  %cmp11 = icmp ult i64 %31, %32
  br i1 %cmp11, label %cond.true12, label %cond.false14

cond.true12:                                      ; preds = %do.body
  %33 = load %struct.linebuffer*, %struct.linebuffer** %rsrv, align 8, !tbaa !6
  %34 = load i64, i64* %j, align 8, !tbaa !13
  %arrayidx13 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %33, i64 %34
  br label %cond.end15

cond.false14:                                     ; preds = %do.body
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.true12
  %cond16 = phi %struct.linebuffer* [ %arrayidx13, %cond.true12 ], [ %dummy, %cond.false14 ]
  store %struct.linebuffer* %cond16, %struct.linebuffer** %line, align 8, !tbaa !6
  %35 = bitcast i64* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #13
  br label %do.cond

do.cond:                                          ; preds = %cond.end15
  %36 = load %struct.linebuffer*, %struct.linebuffer** %line, align 8, !tbaa !6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !6
  %38 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %call17 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %36, %struct._IO_FILE* %37, i8 signext %38)
  %cmp18 = icmp ne %struct.linebuffer* %call17, null
  br i1 %cmp18, label %land.rhs19, label %land.end21

land.rhs19:                                       ; preds = %do.cond
  %39 = load i64, i64* %n_lines, align 8, !tbaa !13
  %inc20 = add i64 %39, 1
  store i64 %inc20, i64* %n_lines, align 8, !tbaa !13
  %tobool = icmp ne i64 %39, 0
  br label %land.end21

land.end21:                                       ; preds = %land.rhs19, %do.cond
  %40 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs19 ]
  br i1 %40, label %do.body, label %do.end

do.end:                                           ; preds = %land.end21
  %41 = load i64, i64* %n_lines, align 8, !tbaa !13
  %tobool22 = icmp ne i64 %41, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %do.end
  call void (i32, i32, i8*, ...) @error(i32 1, i32 75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0))
  unreachable

if.end24:                                         ; preds = %do.end
  call void @freebuffer(%struct.linebuffer* %dummy)
  %42 = bitcast %struct.linebuffer* %dummy to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %42) #13
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %while.end
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8, !tbaa !6
  %call26 = call i32 @ferror_unlocked(%struct._IO_FILE* %43) #13
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  %call29 = call i32* @__errno_location() #22
  %44 = load i32, i32* %call29, align 4, !tbaa !2
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  unreachable

if.end30:                                         ; preds = %if.end25
  %45 = load %struct.linebuffer*, %struct.linebuffer** %rsrv, align 8, !tbaa !6
  %46 = load %struct.linebuffer**, %struct.linebuffer*** %out_rsrv.addr, align 8, !tbaa !6
  store %struct.linebuffer* %45, %struct.linebuffer** %46, align 8, !tbaa !6
  %47 = load i64, i64* %k.addr, align 8, !tbaa !13
  %48 = load i64, i64* %n_lines, align 8, !tbaa !13
  %cmp31 = icmp ult i64 %47, %48
  br i1 %cmp31, label %cond.true32, label %cond.false33

cond.true32:                                      ; preds = %if.end30
  %49 = load i64, i64* %k.addr, align 8, !tbaa !13
  br label %cond.end34

cond.false33:                                     ; preds = %if.end30
  %50 = load i64, i64* %n_lines, align 8, !tbaa !13
  br label %cond.end34

cond.end34:                                       ; preds = %cond.false33, %cond.true32
  %cond35 = phi i64 [ %49, %cond.true32 ], [ %50, %cond.false33 ]
  %51 = bitcast %struct.linebuffer** %rsrv to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #13
  %52 = bitcast %struct.linebuffer** %line to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #13
  %53 = bitcast i64* %n_alloc_lines to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #13
  %54 = bitcast i64* %n_lines to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #13
  ret i64 %cond35
}

; Function Attrs: nounwind uwtable
define internal i32 @write_random_numbers(%struct.randint_source* %s, i64 %count, i64 %lo_input, i64 %hi_input, i8 signext %eolbyte) #7 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.randint_source*, align 8
  %count.addr = alloca i64, align 8
  %lo_input.addr = alloca i64, align 8
  %hi_input.addr = alloca i64, align 8
  %eolbyte.addr = alloca i8, align 1
  %range = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i64, align 8
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  store i64 %count, i64* %count.addr, align 8, !tbaa !13
  store i64 %lo_input, i64* %lo_input.addr, align 8, !tbaa !13
  store i64 %hi_input, i64* %hi_input.addr, align 8, !tbaa !13
  store i8 %eolbyte, i8* %eolbyte.addr, align 1, !tbaa !15
  %0 = bitcast i64* %range to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64, i64* %hi_input.addr, align 8, !tbaa !13
  %2 = load i64, i64* %lo_input.addr, align 8, !tbaa !13
  %sub = sub i64 %1, %2
  %add = add i64 %sub, 1
  store i64 %add, i64* %range, align 8, !tbaa !13
  %3 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8, !tbaa !13
  %5 = load i64, i64* %count.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup5

for.body:                                         ; preds = %for.cond
  %6 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #13
  %7 = load i64, i64* %lo_input.addr, align 8, !tbaa !13
  %8 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %9 = load i64, i64* %range, align 8, !tbaa !13
  %call = call i64 @randint_choose(%struct.randint_source* %8, i64 %9)
  %add1 = add i64 %7, %call
  store i64 %add1, i64* %j, align 8, !tbaa !13
  %10 = load i64, i64* %j, align 8, !tbaa !13
  %11 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %conv = sext i8 %11 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i64 %10, i32 %conv)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i64* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %13 = load i64, i64* %i, align 8, !tbaa !13
  %inc = add i64 %13, 1
  store i64 %inc, i64* %i, align 8, !tbaa !13
  br label %for.cond

cleanup5:                                         ; preds = %cleanup, %for.cond.cleanup
  %14 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #13
  %cleanup.dest6 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest6, label %cleanup7 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup5
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %for.end, %cleanup5
  %15 = bitcast i64* %range to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #13
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @write_random_lines(%struct.randint_source* %s, i64 %count, i8** %lines, i64 %n_lines) #7 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.randint_source*, align 8
  %count.addr = alloca i64, align 8
  %lines.addr = alloca i8**, align 8
  %n_lines.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i64, align 8
  %p = alloca i8**, align 8
  %len = alloca i64, align 8
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  store i64 %count, i64* %count.addr, align 8, !tbaa !13
  store i8** %lines, i8*** %lines.addr, align 8, !tbaa !6
  store i64 %n_lines, i64* %n_lines.addr, align 8, !tbaa !13
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !tbaa !13
  %2 = load i64, i64* %count.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup7

for.body:                                         ; preds = %for.cond
  %3 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %5 = load i64, i64* %n_lines.addr, align 8, !tbaa !13
  %call = call i64 @randint_choose(%struct.randint_source* %4, i64 %5)
  store i64 %call, i64* %j, align 8, !tbaa !13
  %6 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #13
  %7 = load i8**, i8*** %lines.addr, align 8, !tbaa !6
  %8 = load i64, i64* %j, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8*, i8** %7, i64 %8
  store i8** %add.ptr, i8*** %p, align 8, !tbaa !6
  %9 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #13
  %10 = load i8**, i8*** %p, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %12 = load i8**, i8*** %p, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx1, align 8, !tbaa !6
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8, !tbaa !13
  %14 = load i8**, i8*** %p, align 8, !tbaa !6
  %arrayidx2 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx2, align 8, !tbaa !6
  %16 = load i64, i64* %len, align 8, !tbaa !13
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call3 = call i64 @fwrite_unlocked(i8* %15, i64 1, i64 %16, %struct._IO_FILE* %17)
  %18 = load i64, i64* %len, align 8, !tbaa !13
  %cmp4 = icmp ne i64 %call3, %18
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %19 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  %20 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #13
  %21 = bitcast i64* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %22 = load i64, i64* %i, align 8, !tbaa !13
  %inc = add i64 %22, 1
  store i64 %inc, i64* %i, align 8, !tbaa !13
  br label %for.cond

cleanup7:                                         ; preds = %cleanup, %for.cond.cleanup
  %23 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #13
  %cleanup.dest8 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest8, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup7
  %24 = load i32, i32* %retval, align 4
  ret i32 %24

unreachable:                                      ; preds = %cleanup7
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @write_permuted_output_reservoir(i64 %n_lines, %struct.linebuffer* %lines, i64* %permutation) #7 {
entry:
  %retval = alloca i32, align 4
  %n_lines.addr = alloca i64, align 8
  %lines.addr = alloca %struct.linebuffer*, align 8
  %permutation.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca %struct.linebuffer*, align 8
  store i64 %n_lines, i64* %n_lines.addr, align 8, !tbaa !13
  store %struct.linebuffer* %lines, %struct.linebuffer** %lines.addr, align 8, !tbaa !6
  store i64* %permutation, i64** %permutation.addr, align 8, !tbaa !6
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !tbaa !13
  %2 = load i64, i64* %n_lines.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup4

for.body:                                         ; preds = %for.cond
  %3 = bitcast %struct.linebuffer** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load %struct.linebuffer*, %struct.linebuffer** %lines.addr, align 8, !tbaa !6
  %5 = load i64*, i64** %permutation.addr, align 8, !tbaa !6
  %6 = load i64, i64* %i, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %6
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %arrayidx1 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 %7
  store %struct.linebuffer* %arrayidx1, %struct.linebuffer** %p, align 8, !tbaa !6
  %8 = load %struct.linebuffer*, %struct.linebuffer** %p, align 8, !tbaa !6
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %8, i32 0, i32 2
  %9 = load i8*, i8** %buffer, align 8, !tbaa !20
  %10 = load %struct.linebuffer*, %struct.linebuffer** %p, align 8, !tbaa !6
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %10, i32 0, i32 1
  %11 = load i64, i64* %length, align 8, !tbaa !22
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call = call i64 @fwrite_unlocked(i8* %9, i64 1, i64 %11, %struct._IO_FILE* %12)
  %13 = load %struct.linebuffer*, %struct.linebuffer** %p, align 8, !tbaa !6
  %length2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %13, i32 0, i32 1
  %14 = load i64, i64* %length2, align 8, !tbaa !22
  %cmp3 = icmp ne i64 %call, %14
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast %struct.linebuffer** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup4 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %16 = load i64, i64* %i, align 8, !tbaa !13
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8, !tbaa !13
  br label %for.cond

cleanup4:                                         ; preds = %cleanup, %for.cond.cleanup
  %17 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #13
  %cleanup.dest5 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest5, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup4
  %18 = load i32, i32* %retval, align 4
  ret i32 %18

unreachable:                                      ; preds = %cleanup4
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @write_permuted_numbers(i64 %n_lines, i64 %lo_input, i64* %permutation, i8 signext %eolbyte) #7 {
entry:
  %retval = alloca i32, align 4
  %n_lines.addr = alloca i64, align 8
  %lo_input.addr = alloca i64, align 8
  %permutation.addr = alloca i64*, align 8
  %eolbyte.addr = alloca i8, align 1
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca i64, align 8
  store i64 %n_lines, i64* %n_lines.addr, align 8, !tbaa !13
  store i64 %lo_input, i64* %lo_input.addr, align 8, !tbaa !13
  store i64* %permutation, i64** %permutation.addr, align 8, !tbaa !6
  store i8 %eolbyte, i8* %eolbyte.addr, align 1, !tbaa !15
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !tbaa !13
  %2 = load i64, i64* %n_lines.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup3

for.body:                                         ; preds = %for.cond
  %3 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load i64, i64* %lo_input.addr, align 8, !tbaa !13
  %5 = load i64*, i64** %permutation.addr, align 8, !tbaa !6
  %6 = load i64, i64* %i, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %6
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %add = add i64 %4, %7
  store i64 %add, i64* %n, align 8, !tbaa !13
  %8 = load i64, i64* %n, align 8, !tbaa !13
  %9 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %conv = sext i8 %9 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i64 %8, i32 %conv)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup3 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %11 = load i64, i64* %i, align 8, !tbaa !13
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8, !tbaa !13
  br label %for.cond

cleanup3:                                         ; preds = %cleanup, %for.cond.cleanup
  %12 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #13
  %cleanup.dest4 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest4, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup3
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup3
  %13 = load i32, i32* %retval, align 4
  ret i32 %13

unreachable:                                      ; preds = %cleanup3
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @write_permuted_lines(i64 %n_lines, i8** %line, i64* %permutation) #7 {
entry:
  %retval = alloca i32, align 4
  %n_lines.addr = alloca i64, align 8
  %line.addr = alloca i8**, align 8
  %permutation.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %p = alloca i8**, align 8
  %len = alloca i64, align 8
  store i64 %n_lines, i64* %n_lines.addr, align 8, !tbaa !13
  store i8** %line, i8*** %line.addr, align 8, !tbaa !6
  store i64* %permutation, i64** %permutation.addr, align 8, !tbaa !6
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !tbaa !13
  %2 = load i64, i64* %n_lines.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup6

for.body:                                         ; preds = %for.cond
  %3 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load i8**, i8*** %line.addr, align 8, !tbaa !6
  %5 = load i64*, i64** %permutation.addr, align 8, !tbaa !6
  %6 = load i64, i64* %i, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %6
  %7 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8*, i8** %4, i64 %7
  store i8** %add.ptr, i8*** %p, align 8, !tbaa !6
  %8 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #13
  %9 = load i8**, i8*** %p, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx1, align 8, !tbaa !6
  %11 = load i8**, i8*** %p, align 8, !tbaa !6
  %arrayidx2 = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx2, align 8, !tbaa !6
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %len, align 8, !tbaa !13
  %13 = load i8**, i8*** %p, align 8, !tbaa !6
  %arrayidx3 = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx3, align 8, !tbaa !6
  %15 = load i64, i64* %len, align 8, !tbaa !13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call = call i64 @fwrite_unlocked(i8* %14, i64 1, i64 %15, %struct._IO_FILE* %16)
  %17 = load i64, i64* %len, align 8, !tbaa !13
  %cmp4 = icmp ne i64 %call, %17
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %18 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #13
  %19 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup6 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %20 = load i64, i64* %i, align 8, !tbaa !13
  %inc = add i64 %20, 1
  store i64 %inc, i64* %i, align 8, !tbaa !13
  br label %for.cond

cleanup6:                                         ; preds = %cleanup, %for.cond.cleanup
  %21 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #13
  %cleanup.dest7 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest7, label %unreachable [
    i32 2, label %for.end
    i32 1, label %return
  ]

for.end:                                          ; preds = %cleanup6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %cleanup6
  %22 = load i32, i32* %retval, align 4
  ret i32 %22

unreachable:                                      ; preds = %cleanup6
  unreachable
}

declare dso_local i64 @fwrite_unlocked(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @randint_choose(%struct.randint_source* %s, i64 %choices) #2 {
entry:
  %s.addr = alloca %struct.randint_source*, align 8
  %choices.addr = alloca i64, align 8
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  store i64 %choices, i64* %choices.addr, align 8, !tbaa !13
  %0 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %1 = load i64, i64* %choices.addr, align 8, !tbaa !13
  %sub = sub i64 %1, 1
  %call = call i64 @randint_genmax(%struct.randint_source* %0, i64 %sub)
  ret i64 %call
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @ferror_unlocked(%struct._IO_FILE*) #6

; Function Attrs: nounwind uwtable
define internal i8* @next_line(i8* %line, i8 signext %eolbyte) #7 {
entry:
  %line.addr = alloca i8*, align 8
  %eolbyte.addr = alloca i8, align 1
  %p = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8, !tbaa !6
  store i8 %eolbyte, i8* %eolbyte.addr, align 1, !tbaa !15
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %line.addr, align 8, !tbaa !6
  %2 = load i8, i8* %eolbyte.addr, align 1, !tbaa !15
  %conv = sext i8 %2 to i32
  %call = call i8* @rawmemchr(i8* %1, i32 %conv) #21
  store i8* %call, i8** %p, align 8, !tbaa !6
  %3 = load i8*, i8** %p, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #13
  ret i8* %add.ptr
}

; Function Attrs: nounwind readonly
declare dso_local i8* @rawmemchr(i8*, i32) #5

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @usable_st_size(%struct.stat* %sb) #2 {
entry:
  %sb.addr = alloca %struct.stat*, align 8
  store %struct.stat* %sb, %struct.stat** %sb.addr, align 8, !tbaa !6
  %0 = load %struct.stat*, %struct.stat** %sb.addr, align 8, !tbaa !6
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 3
  %1 = load i32, i32* %st_mode, align 8, !tbaa !23
  %and = and i32 %1, 61440
  %cmp = icmp eq i32 %and, 32768
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.stat*, %struct.stat** %sb.addr, align 8, !tbaa !6
  %st_mode1 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 3
  %3 = load i32, i32* %st_mode1, align 8, !tbaa !23
  %and2 = and i32 %3, 61440
  %cmp3 = icmp eq i32 %and2, 40960
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %4 = load %struct.stat*, %struct.stat** %sb.addr, align 8, !tbaa !6
  %st_mode5 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 3
  %5 = load i32, i32* %st_mode5, align 8, !tbaa !23
  %6 = load %struct.stat*, %struct.stat** %sb.addr, align 8, !tbaa !6
  %st_mode6 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %7 = load i32, i32* %st_mode6, align 8, !tbaa !23
  %sub = sub i32 %5, %7
  %tobool = icmp ne i32 %sub, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false4
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false, %entry
  %8 = phi i1 [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false ], [ true, %entry ], [ false, %lor.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #6

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @stpcpy(i8*, i8*) #6

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout_set_file_name(i8* %file) #7 {
entry:
  %file.addr = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %file.addr, align 8, !tbaa !6
  store i8* %0, i8** @file_name, align 8, !tbaa !6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext %ignore) #7 {
entry:
  %ignore.addr = alloca i8, align 1
  %frombool = zext i1 %ignore to i8
  store i8 %frombool, i8* %ignore.addr, align 1, !tbaa !11
  %0 = load i8, i8* %ignore.addr, align 1, !tbaa !11, !range !16
  %tobool = trunc i8 %0 to i1
  %frombool1 = zext i1 %tobool to i8
  store i8 %frombool1, i8* @ignore_EPIPE, align 1, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #7 {
entry:
  %write_error = alloca i8*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call = call i32 @close_stream(%struct._IO_FILE* %0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* @ignore_EPIPE, align 1, !tbaa !11, !range !16
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %land.lhs.true1, label %if.then

land.lhs.true1:                                   ; preds = %land.lhs.true
  %call2 = call i32* @__errno_location() #22
  %2 = load i32, i32* %call2, align 4, !tbaa !2
  %cmp3 = icmp eq i32 %2, 32
  br i1 %cmp3, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true1, %land.lhs.true
  %3 = bitcast i8** %write_error to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.60, i64 0, i64 0), i8** %write_error, align 8, !tbaa !6
  %4 = load i8*, i8** @file_name, align 8, !tbaa !6
  %tobool4 = icmp ne i8* %4, null
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %call6 = call i32* @__errno_location() #22
  %5 = load i32, i32* %call6, align 4, !tbaa !2
  %6 = load i8*, i8** @file_name, align 8, !tbaa !6
  %call7 = call i8* @quotearg_colon(i8* %6)
  %7 = load i8*, i8** %write_error, align 8, !tbaa !6
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.61, i64 0, i64 0), i8* %call7, i8* %7)
  br label %if.end

if.else:                                          ; preds = %if.then
  %call8 = call i32* @__errno_location() #22
  %8 = load i32, i32* %call8, align 4, !tbaa !2
  %9 = load i8*, i8** %write_error, align 8, !tbaa !6
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.62, i64 0, i64 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %10 = load volatile i32, i32* @exit_failure, align 4, !tbaa !2
  call void @_exit(i32 %10) #23
  unreachable

if.end9:                                          ; preds = %land.lhs.true1, %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call10 = call i32 @close_stream(%struct._IO_FILE* %11)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %12 = load volatile i32, i32* @exit_failure, align 4, !tbaa !2
  call void @_exit(i32 %12) #23
  unreachable

if.end13:                                         ; preds = %if.end9
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #9

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 %fd, i64 %offset, i64 %len, i32 %advice) #7 {
entry:
  %fd.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %advice.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !2
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !13
  store i64 %len, i64* %len.addr, align 8, !tbaa !13
  store i32 %advice, i32* %advice.addr, align 4, !tbaa !15
  %0 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %1 = load i64, i64* %offset.addr, align 8, !tbaa !13
  %2 = load i64, i64* %len.addr, align 8, !tbaa !13
  %3 = load i32, i32* %advice.addr, align 4, !tbaa !15
  %call = call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #13
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @posix_fadvise(i32, i64, i64, i32) #6

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* %fp, i32 %advice) #7 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %advice.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  store i32 %advice, i32* %advice.addr, align 4, !tbaa !15
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call = call i32 @fileno(%struct._IO_FILE* %1) #13
  %2 = load i32, i32* %advice.addr, align 4, !tbaa !15
  call void @fdadvise(i32 %call, i64 0, i64 0, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #6

; Function Attrs: nounwind uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8* %name, i8* nonnull %mode, %struct._IO_FILE* nonnull %f) #7 {
entry:
  %name.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %f.addr = alloca %struct._IO_FILE*, align 8
  %protect_in = alloca i8, align 1
  %protect_out = alloca i8, align 1
  %protect_err = alloca i8, align 1
  %saved_errno = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !6
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %protect_in) #13
  store i8 0, i8* %protect_in, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %protect_out) #13
  store i8 0, i8* %protect_out, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %protect_err) #13
  store i8 0, i8* %protect_err, align 1, !tbaa !11
  %0 = bitcast i32* %saved_errno to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %call = call i32 @fileno(%struct._IO_FILE* %1) #13
  switch i32 %call, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
    i32 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  %call1 = call i32 @dup2(i32 2, i32 2) #13
  %cmp = icmp ne i32 %call1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  store i8 1, i8* %protect_err, align 1, !tbaa !11
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %if.end
  %call2 = call i32 @dup2(i32 1, i32 1) #13
  %cmp3 = icmp ne i32 %call2, 1
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %sw.bb
  store i8 1, i8* %protect_out, align 1, !tbaa !11
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %sw.bb
  br label %sw.bb6

sw.bb6:                                           ; preds = %entry, %if.end5
  %call7 = call i32 @dup2(i32 0, i32 0) #13
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %sw.bb6
  store i8 1, i8* %protect_in, align 1, !tbaa !11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sw.bb6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end10, %entry
  %2 = load i8, i8* %protect_in, align 1, !tbaa !11, !range !16
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.epilog
  %call11 = call zeroext i1 @protect_fd(i32 0)
  br i1 %call11, label %if.else, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  store %struct._IO_FILE* null, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  br label %if.end26

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %3 = load i8, i8* %protect_out, align 1, !tbaa !11, !range !16
  %tobool13 = trunc i8 %3 to i1
  br i1 %tobool13, label %land.lhs.true14, label %if.else17

land.lhs.true14:                                  ; preds = %if.else
  %call15 = call zeroext i1 @protect_fd(i32 1)
  br i1 %call15, label %if.else17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true14
  store %struct._IO_FILE* null, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  br label %if.end25

if.else17:                                        ; preds = %land.lhs.true14, %if.else
  %4 = load i8, i8* %protect_err, align 1, !tbaa !11, !range !16
  %tobool18 = trunc i8 %4 to i1
  br i1 %tobool18, label %land.lhs.true19, label %if.else22

land.lhs.true19:                                  ; preds = %if.else17
  %call20 = call zeroext i1 @protect_fd(i32 2)
  br i1 %call20, label %if.else22, label %if.then21

if.then21:                                        ; preds = %land.lhs.true19
  store %struct._IO_FILE* null, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  br label %if.end24

if.else22:                                        ; preds = %land.lhs.true19, %if.else17
  %5 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %6 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %call23 = call %struct._IO_FILE* @freopen(i8* %5, i8* %6, %struct._IO_FILE* %7)
  store %struct._IO_FILE* %call23, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then16
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then12
  %call27 = call i32* @__errno_location() #22
  %8 = load i32, i32* %call27, align 4, !tbaa !2
  store i32 %8, i32* %saved_errno, align 4, !tbaa !2
  %9 = load i8, i8* %protect_err, align 1, !tbaa !11, !range !16
  %tobool28 = trunc i8 %9 to i1
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end26
  %call30 = call i32 @close(i32 2)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26
  %10 = load i8, i8* %protect_out, align 1, !tbaa !11, !range !16
  %tobool32 = trunc i8 %10 to i1
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %call34 = call i32 @close(i32 1)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31
  %11 = load i8, i8* %protect_in, align 1, !tbaa !11, !range !16
  %tobool36 = trunc i8 %11 to i1
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end35
  %call38 = call i32 @close(i32 0)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %tobool40 = icmp ne %struct._IO_FILE* %12, null
  br i1 %tobool40, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end39
  %13 = load i32, i32* %saved_errno, align 4, !tbaa !2
  %call42 = call i32* @__errno_location() #22
  store i32 %13, i32* %call42, align 4, !tbaa !2
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end39
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !6
  %15 = bitcast i32* %saved_errno to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %protect_err) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %protect_out) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %protect_in) #13
  ret %struct._IO_FILE* %14
}

; Function Attrs: nounwind
declare dso_local i32 @dup2(i32, i32) #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @protect_fd(i32 %fd) #7 {
entry:
  %retval = alloca i1, align 1
  %fd.addr = alloca i32, align 4
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !2
  %0 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %call = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0), i32 0)
  store i32 %call, i32* %value, align 4, !tbaa !2
  %1 = load i32, i32* %value, align 4, !tbaa !2
  %2 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %value, align 4, !tbaa !2
  %cmp1 = icmp sle i32 0, %3
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i32, i32* %value, align 4, !tbaa !2
  %call3 = call i32 @close(i32 %4)
  %call4 = call i32* @__errno_location() #22
  store i32 9, i32* %call4, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end
  %5 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #13
  %6 = load i1, i1* %retval, align 1
  ret i1 %6
}

declare dso_local %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define dso_local void @initbuffer(%struct.linebuffer* %linebuffer) #7 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %0 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %1 = bitcast %struct.linebuffer* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer* %linebuffer, %struct._IO_FILE* %stream) #7 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %0 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %0, %struct._IO_FILE* %1, i8 signext 10)
  ret %struct.linebuffer* %call
}

; Function Attrs: nounwind uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %linebuffer, %struct._IO_FILE* %stream, i8 signext %delimiter) #7 {
entry:
  %retval = alloca %struct.linebuffer*, align 8
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %delimiter.addr = alloca i8, align 1
  %c = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %p = alloca i8*, align 8
  %end = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %oldsize = alloca i64, align 8
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  store i8 %delimiter, i8* %delimiter.addr, align 1, !tbaa !15
  %0 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %1 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %buffer1 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %2, i32 0, i32 2
  %3 = load i8*, i8** %buffer1, align 8, !tbaa !20
  store i8* %3, i8** %buffer, align 8, !tbaa !6
  %4 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #13
  %5 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %buffer2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %5, i32 0, i32 2
  %6 = load i8*, i8** %buffer2, align 8, !tbaa !20
  store i8* %6, i8** %p, align 8, !tbaa !6
  %7 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #13
  %8 = load i8*, i8** %buffer, align 8, !tbaa !6
  %9 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %size = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %9, i32 0, i32 0
  %10 = load i64, i64* %size, align 8, !tbaa !24
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %10
  store i8* %add.ptr, i8** %end, align 8, !tbaa !6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call = call i32 @feof_unlocked(%struct._IO_FILE* %11) #13
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.linebuffer* null, %struct.linebuffer** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call3 = call i32 @getc_unlocked(%struct._IO_FILE* %12)
  store i32 %call3, i32* %c, align 4, !tbaa !2
  %13 = load i32, i32* %c, align 4, !tbaa !2
  %cmp = icmp eq i32 %13, -1
  br i1 %cmp, label %if.then4, label %if.end16

if.then4:                                         ; preds = %do.body
  %14 = load i8*, i8** %p, align 8, !tbaa !6
  %15 = load i8*, i8** %buffer, align 8, !tbaa !6
  %cmp5 = icmp eq i8* %14, %15
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call6 = call i32 @ferror_unlocked(%struct._IO_FILE* %16) #13
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.then4
  store %struct.linebuffer* null, %struct.linebuffer** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %17 = load i8*, i8** %p, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 -1
  %18 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %18 to i32
  %19 = load i8, i8* %delimiter.addr, align 1, !tbaa !15
  %conv10 = sext i8 %19 to i32
  %cmp11 = icmp eq i32 %conv, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %do.end

if.end14:                                         ; preds = %if.end9
  %20 = load i8, i8* %delimiter.addr, align 1, !tbaa !15
  %conv15 = sext i8 %20 to i32
  store i32 %conv15, i32* %c, align 4, !tbaa !2
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %do.body
  %21 = load i8*, i8** %p, align 8, !tbaa !6
  %22 = load i8*, i8** %end, align 8, !tbaa !6
  %cmp17 = icmp eq i8* %21, %22
  br i1 %cmp17, label %if.then19, label %if.end27

if.then19:                                        ; preds = %if.end16
  %23 = bitcast i64* %oldsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23) #13
  %24 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %size20 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %24, i32 0, i32 0
  %25 = load i64, i64* %size20, align 8, !tbaa !24
  store i64 %25, i64* %oldsize, align 8, !tbaa !13
  %26 = load i8*, i8** %buffer, align 8, !tbaa !6
  %27 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %size21 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %27, i32 0, i32 0
  %call22 = call nonnull i8* @xpalloc(i8* %26, i64* %size21, i64 1, i64 -1, i64 1)
  store i8* %call22, i8** %buffer, align 8, !tbaa !6
  %28 = load i8*, i8** %buffer, align 8, !tbaa !6
  %29 = load i64, i64* %oldsize, align 8, !tbaa !13
  %add.ptr23 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %add.ptr23, i8** %p, align 8, !tbaa !6
  %30 = load i8*, i8** %buffer, align 8, !tbaa !6
  %31 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %buffer24 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %31, i32 0, i32 2
  store i8* %30, i8** %buffer24, align 8, !tbaa !20
  %32 = load i8*, i8** %buffer, align 8, !tbaa !6
  %33 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %size25 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %33, i32 0, i32 0
  %34 = load i64, i64* %size25, align 8, !tbaa !24
  %add.ptr26 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %add.ptr26, i8** %end, align 8, !tbaa !6
  %35 = bitcast i64* %oldsize to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #13
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %if.end16
  %36 = load i32, i32* %c, align 4, !tbaa !2
  %conv28 = trunc i32 %36 to i8
  %37 = load i8*, i8** %p, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !6
  store i8 %conv28, i8* %37, align 1, !tbaa !15
  br label %do.cond

do.cond:                                          ; preds = %if.end27
  %38 = load i32, i32* %c, align 4, !tbaa !2
  %39 = load i8, i8* %delimiter.addr, align 1, !tbaa !15
  %conv29 = sext i8 %39 to i32
  %cmp30 = icmp ne i32 %38, %conv29
  br i1 %cmp30, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then13
  %40 = load i8*, i8** %p, align 8, !tbaa !6
  %41 = load i8*, i8** %buffer, align 8, !tbaa !6
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %42 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %length = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %42, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %length, align 8, !tbaa !22
  %43 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  store %struct.linebuffer* %43, %struct.linebuffer** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then8, %if.then
  %44 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #13
  %45 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #13
  %46 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #13
  %47 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #13
  %48 = load %struct.linebuffer*, %struct.linebuffer** %retval, align 8
  ret %struct.linebuffer* %48
}

; Function Attrs: nounwind
declare dso_local i32 @feof_unlocked(%struct._IO_FILE*) #6

declare dso_local i32 @getc_unlocked(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define dso_local void @freebuffer(%struct.linebuffer* %linebuffer) #7 {
entry:
  %linebuffer.addr = alloca %struct.linebuffer*, align 8
  store %struct.linebuffer* %linebuffer, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %0 = load %struct.linebuffer*, %struct.linebuffer** %linebuffer.addr, align 8, !tbaa !6
  %buffer = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i32 0, i32 2
  %1 = load i8*, i8** %buffer, align 8, !tbaa !20
  call void @rpl_free(i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_program_name(i8* %argv0) #7 {
entry:
  %argv0.addr = alloca i8*, align 8
  %slash = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %argv0, i8** %argv0.addr, align 8, !tbaa !6
  %0 = bitcast i8** %slash to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load i8*, i8** %argv0.addr, align 8, !tbaa !6
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call = call i32 @fputs(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.80, i64 0, i64 0), %struct._IO_FILE* %3)
  call void @abort() #20
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %argv0.addr, align 8, !tbaa !6
  %call1 = call i8* @strrchr(i8* %4, i32 47) #21
  store i8* %call1, i8** %slash, align 8, !tbaa !6
  %5 = load i8*, i8** %slash, align 8, !tbaa !6
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load i8*, i8** %slash, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load i8*, i8** %argv0.addr, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %7, %cond.false ]
  store i8* %cond, i8** %base, align 8, !tbaa !6
  %8 = load i8*, i8** %base, align 8, !tbaa !6
  %9 = load i8*, i8** %argv0.addr, align 8, !tbaa !6
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp3 = icmp sge i64 %sub.ptr.sub, 7
  br i1 %cmp3, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %cond.end
  %10 = load i8*, i8** %base, align 8, !tbaa !6
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 -7
  %call5 = call i32 @strncmp(i8* %add.ptr4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.81, i64 0, i64 0), i64 7) #21
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %11 = load i8*, i8** %base, align 8, !tbaa !6
  store i8* %11, i8** %argv0.addr, align 8, !tbaa !6
  %12 = load i8*, i8** %base, align 8, !tbaa !6
  %call8 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i64 3) #21
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then7
  %13 = load i8*, i8** %base, align 8, !tbaa !6
  %add.ptr11 = getelementptr inbounds i8, i8* %13, i64 3
  store i8* %add.ptr11, i8** %argv0.addr, align 8, !tbaa !6
  %14 = load i8*, i8** %argv0.addr, align 8, !tbaa !6
  store i8* %14, i8** @program_invocation_short_name, align 8, !tbaa !6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %cond.end
  %15 = load i8*, i8** %argv0.addr, align 8, !tbaa !6
  store i8* %15, i8** @program_name, align 8, !tbaa !6
  %16 = load i8*, i8** %argv0.addr, align 8, !tbaa !6
  store i8* %16, i8** @program_invocation_name, align 8, !tbaa !6
  %17 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #13
  %18 = bitcast i8** %slash to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #13
  ret void
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* %o) #7 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %p = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %0 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %call = call i32* @__errno_location() #22
  %1 = load i32, i32* %call, align 4, !tbaa !2
  store i32 %1, i32* %e, align 4, !tbaa !2
  %2 = bitcast %struct.quoting_options** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.quoting_options* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %4, %cond.true ], [ @default_quoting_options, %cond.false ]
  %5 = bitcast %struct.quoting_options* %cond to i8*
  %call1 = call noalias nonnull i8* @xmemdup(i8* %5, i64 56) #27
  %6 = bitcast i8* %call1 to %struct.quoting_options*
  store %struct.quoting_options* %6, %struct.quoting_options** %p, align 8, !tbaa !6
  %7 = load i32, i32* %e, align 4, !tbaa !2
  %call2 = call i32* @__errno_location() #22
  store i32 %7, i32* %call2, align 4, !tbaa !2
  %8 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %9 = bitcast %struct.quoting_options** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #13
  %10 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #13
  ret %struct.quoting_options* %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* %o) #7 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %1, %cond.true ], [ @default_quoting_options, %cond.false ]
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0
  %2 = load i32, i32* %style, align 8, !tbaa !25
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local void @set_quoting_style(%struct.quoting_options* %o, i32 %s) #7 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %s.addr = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  store i32 %s, i32* %s.addr, align 4, !tbaa !15
  %0 = load i32, i32* %s.addr, align 4, !tbaa !15
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ]
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 0
  store i32 %0, i32* %style, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options* %o, i8 signext %c, i32 %i) #7 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %c.addr = alloca i8, align 1
  %i.addr = alloca i32, align 4
  %uc = alloca i8, align 1
  %p = alloca i32*, align 8
  %shift = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  store i8 %c, i8* %c.addr, align 1, !tbaa !15
  store i32 %i, i32* %i.addr, align 4, !tbaa !2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %uc) #13
  %0 = load i8, i8* %c.addr, align 1, !tbaa !15
  store i8 %0, i8* %uc, align 1, !tbaa !15
  %1 = bitcast i32** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.quoting_options* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %3, %cond.true ], [ @default_quoting_options, %cond.false ]
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %cond, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %4 = load i8, i8* %uc, align 1, !tbaa !15
  %conv = zext i8 %4 to i64
  %div = udiv i64 %conv, 32
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 %div
  store i32* %add.ptr, i32** %p, align 8, !tbaa !6
  %5 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #13
  %6 = load i8, i8* %uc, align 1, !tbaa !15
  %conv1 = zext i8 %6 to i64
  %rem = urem i64 %conv1, 32
  %conv2 = trunc i64 %rem to i32
  store i32 %conv2, i32* %shift, align 4, !tbaa !2
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #13
  %8 = load i32*, i32** %p, align 8, !tbaa !6
  %9 = load i32, i32* %8, align 4, !tbaa !2
  %10 = load i32, i32* %shift, align 4, !tbaa !2
  %shr = lshr i32 %9, %10
  %and = and i32 %shr, 1
  store i32 %and, i32* %r, align 4, !tbaa !2
  %11 = load i32, i32* %i.addr, align 4, !tbaa !2
  %and3 = and i32 %11, 1
  %12 = load i32, i32* %r, align 4, !tbaa !2
  %xor = xor i32 %and3, %12
  %13 = load i32, i32* %shift, align 4, !tbaa !2
  %shl = shl i32 %xor, %13
  %14 = load i32*, i32** %p, align 8, !tbaa !6
  %15 = load i32, i32* %14, align 4, !tbaa !2
  %xor4 = xor i32 %15, %shl
  store i32 %xor4, i32* %14, align 4, !tbaa !2
  %16 = load i32, i32* %r, align 4, !tbaa !2
  %17 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #13
  %18 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #13
  %19 = bitcast i32** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %uc) #13
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options* %o, i32 %i) #7 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %i.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  store i32 %i, i32* %i.addr, align 4, !tbaa !2
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i32 0, i32 1
  %3 = load i32, i32* %flags, align 4, !tbaa !27
  store i32 %3, i32* %r, align 4, !tbaa !2
  %4 = load i32, i32* %i.addr, align 4, !tbaa !2
  %5 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i32 0, i32 1
  store i32 %4, i32* %flags1, align 4, !tbaa !27
  %6 = load i32, i32* %r, align 4, !tbaa !2
  %7 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #13
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* %o, i8* %left_quote, i8* %right_quote) #7 {
entry:
  %o.addr = alloca %struct.quoting_options*, align 8
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  store i8* %left_quote, i8** %left_quote.addr, align 8, !tbaa !6
  store i8* %right_quote, i8** %right_quote.addr, align 8, !tbaa !6
  %0 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.quoting_options* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.quoting_options* @default_quoting_options, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %1, i32 0, i32 0
  store i32 10, i32* %style, align 8, !tbaa !25
  %2 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  %tobool1 = icmp ne i8* %2, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  %tobool2 = icmp ne i8* %3, null
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  call void @abort() #20
  unreachable

if.end4:                                          ; preds = %lor.lhs.false
  %4 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  %5 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %left_quote5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i32 0, i32 3
  store i8* %4, i8** %left_quote5, align 8, !tbaa !28
  %6 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  %7 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %right_quote6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i32 0, i32 4
  store i8* %6, i8** %right_quote6, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, %struct.quoting_options* %o) #7 {
entry:
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %r = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !6
  store i64 %buffersize, i64* %buffersize.addr, align 8, !tbaa !13
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %0 = bitcast %struct.quoting_options** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ]
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !tbaa !6
  %3 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #13
  %call = call i32* @__errno_location() #22
  %4 = load i32, i32* %call, align 4, !tbaa !2
  store i32 %4, i32* %e, align 4, !tbaa !2
  %5 = bitcast i64* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  %6 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %7 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %8 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %9 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %10 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %10, i32 0, i32 0
  %11 = load i32, i32* %style, align 8, !tbaa !25
  %12 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %flags = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %12, i32 0, i32 1
  %13 = load i32, i32* %flags, align 4, !tbaa !27
  %14 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %14, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %15 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %15, i32 0, i32 3
  %16 = load i8*, i8** %left_quote, align 8, !tbaa !28
  %17 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %17, i32 0, i32 4
  %18 = load i8*, i8** %right_quote, align 8, !tbaa !29
  %call1 = call i64 @quotearg_buffer_restyled(i8* %6, i64 %7, i8* %8, i64 %9, i32 %11, i32 %13, i32* %arraydecay, i8* %16, i8* %18)
  store i64 %call1, i64* %r, align 8, !tbaa !13
  %19 = load i32, i32* %e, align 4, !tbaa !2
  %call2 = call i32* @__errno_location() #22
  store i32 %19, i32* %call2, align 4, !tbaa !2
  %20 = load i64, i64* %r, align 8, !tbaa !13
  %21 = bitcast i64* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #13
  %22 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #13
  %23 = bitcast %struct.quoting_options** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #13
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define internal i64 @quotearg_buffer_restyled(i8* %buffer, i64 %buffersize, i8* %arg, i64 %argsize, i32 %quoting_style, i32 %flags, i32* %quote_these_too, i8* %left_quote, i8* %right_quote) #7 {
entry:
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8*, align 8
  %buffersize.addr = alloca i64, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %quoting_style.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %quote_these_too.addr = alloca i32*, align 8
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %orig_buffersize = alloca i64, align 8
  %quote_string = alloca i8*, align 8
  %quote_string_len = alloca i64, align 8
  %backslash_escapes = alloca i8, align 1
  %unibyte_locale = alloca i8, align 1
  %elide_outer_quotes = alloca i8, align 1
  %pending_shell_escape_end = alloca i8, align 1
  %encountered_single_quote = alloca i8, align 1
  %all_c_and_shell_quote_compat = alloca i8, align 1
  %c = alloca i8, align 1
  %esc = alloca i8, align 1
  %is_right_quote = alloca i8, align 1
  %escaping = alloca i8, align 1
  %c_and_shell_quote_compat = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %m = alloca i64, align 8
  %printable = alloca i8, align 1
  %mbstate = alloca %struct.__mbstate_t, align 4
  %w = alloca i32, align 4
  %bytes = alloca i64, align 8
  %j = alloca i64, align 8
  %ilim = alloca i64, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !6
  store i64 %buffersize, i64* %buffersize.addr, align 8, !tbaa !13
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  store i32 %quoting_style, i32* %quoting_style.addr, align 4, !tbaa !15
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !2
  store i32* %quote_these_too, i32** %quote_these_too.addr, align 8, !tbaa !6
  store i8* %left_quote, i8** %left_quote.addr, align 8, !tbaa !6
  store i8* %right_quote, i8** %right_quote.addr, align 8, !tbaa !6
  %0 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i64* %len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  store i64 0, i64* %len, align 8, !tbaa !13
  %2 = bitcast i64* %orig_buffersize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  store i64 0, i64* %orig_buffersize, align 8, !tbaa !13
  %3 = bitcast i8** %quote_string to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  store i8* null, i8** %quote_string, align 8, !tbaa !6
  %4 = bitcast i64* %quote_string_len to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #13
  store i64 0, i64* %quote_string_len, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %backslash_escapes) #13
  store i8 0, i8* %backslash_escapes, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %unibyte_locale) #13
  %call = call i64 @__ctype_get_mb_cur_max() #13
  %cmp = icmp eq i64 %call, 1
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %unibyte_locale, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %elide_outer_quotes) #13
  %5 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and = and i32 %5, 2
  %cmp1 = icmp ne i32 %and, 0
  %frombool2 = zext i1 %cmp1 to i8
  store i8 %frombool2, i8* %elide_outer_quotes, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %pending_shell_escape_end) #13
  store i8 0, i8* %pending_shell_escape_end, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %encountered_single_quote) #13
  store i8 0, i8* %encountered_single_quote, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %all_c_and_shell_quote_compat) #13
  store i8 1, i8* %all_c_and_shell_quote_compat, align 1, !tbaa !11
  br label %process_input

process_input:                                    ; preds = %if.then737, %entry
  %6 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  switch i32 %6, label %sw.default [
    i32 6, label %sw.bb
    i32 5, label %sw.bb3
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb8
    i32 10, label %sw.bb8
    i32 3, label %sw.bb27
    i32 1, label %sw.bb28
    i32 4, label %sw.bb29
    i32 2, label %sw.bb33
    i32 0, label %sw.bb45
  ]

sw.bb:                                            ; preds = %process_input
  store i32 5, i32* %quoting_style.addr, align 4, !tbaa !15
  store i8 1, i8* %elide_outer_quotes, align 1, !tbaa !11
  br label %sw.bb3

sw.bb3:                                           ; preds = %process_input, %sw.bb
  %7 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool = trunc i8 %7 to i1
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %sw.bb3
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load i64, i64* %len, align 8, !tbaa !13
  %9 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp4 = icmp ult i64 %8, %9
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %do.body
  %10 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %11 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11
  store i8 34, i8* %arrayidx, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then5, %do.body
  %12 = load i64, i64* %len, align 8, !tbaa !13
  %inc = add i64 %12, 1
  store i64 %inc, i64* %len, align 8, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %do.end, %sw.bb3
  store i8 1, i8* %backslash_escapes, align 1, !tbaa !11
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), i8** %quote_string, align 8, !tbaa !6
  store i64 1, i64* %quote_string_len, align 8, !tbaa !13
  br label %sw.epilog

sw.bb7:                                           ; preds = %process_input
  store i8 1, i8* %backslash_escapes, align 1, !tbaa !11
  store i8 0, i8* %elide_outer_quotes, align 1, !tbaa !11
  br label %sw.epilog

sw.bb8:                                           ; preds = %process_input, %process_input, %process_input
  %13 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp9 = icmp ne i32 %13, 10
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %sw.bb8
  %14 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %call11 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.94, i64 0, i64 0), i32 %14)
  store i8* %call11, i8** %left_quote.addr, align 8, !tbaa !6
  %15 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %call12 = call i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 %15)
  store i8* %call12, i8** %right_quote.addr, align 8, !tbaa !6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %sw.bb8
  %16 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool14 = trunc i8 %16 to i1
  br i1 %tobool14, label %if.end25, label %if.then15

if.then15:                                        ; preds = %if.end13
  %17 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  store i8* %17, i8** %quote_string, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %18 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %19 = load i8, i8* %18, align 1, !tbaa !15
  %tobool16 = icmp ne i8 %19, 0
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body17

do.body17:                                        ; preds = %for.body
  %20 = load i64, i64* %len, align 8, !tbaa !13
  %21 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp18 = icmp ult i64 %20, %21
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %do.body17
  %22 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %23 = load i8, i8* %22, align 1, !tbaa !15
  %24 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %25 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8 %23, i8* %arrayidx20, align 1, !tbaa !15
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body17
  %26 = load i64, i64* %len, align 8, !tbaa !13
  %inc22 = add i64 %26, 1
  store i64 %inc22, i64* %len, align 8, !tbaa !13
  br label %do.cond23

do.cond23:                                        ; preds = %if.end21
  br label %do.end24

do.end24:                                         ; preds = %do.cond23
  br label %for.inc

for.inc:                                          ; preds = %do.end24
  %27 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %quote_string, align 8, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.end13
  store i8 1, i8* %backslash_escapes, align 1, !tbaa !11
  %28 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  store i8* %28, i8** %quote_string, align 8, !tbaa !6
  %29 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %call26 = call i64 @strlen(i8* %29) #21
  store i64 %call26, i64* %quote_string_len, align 8, !tbaa !13
  br label %sw.epilog

sw.bb27:                                          ; preds = %process_input
  store i8 1, i8* %backslash_escapes, align 1, !tbaa !11
  br label %sw.bb28

sw.bb28:                                          ; preds = %process_input, %sw.bb27
  store i8 1, i8* %elide_outer_quotes, align 1, !tbaa !11
  br label %sw.bb29

sw.bb29:                                          ; preds = %process_input, %sw.bb28
  %30 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool30 = trunc i8 %30 to i1
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %sw.bb29
  store i8 1, i8* %backslash_escapes, align 1, !tbaa !11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %sw.bb29
  br label %sw.bb33

sw.bb33:                                          ; preds = %process_input, %if.end32
  store i32 2, i32* %quoting_style.addr, align 4, !tbaa !15
  %31 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool34 = trunc i8 %31 to i1
  br i1 %tobool34, label %if.end44, label %if.then35

if.then35:                                        ; preds = %sw.bb33
  br label %do.body36

do.body36:                                        ; preds = %if.then35
  %32 = load i64, i64* %len, align 8, !tbaa !13
  %33 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp37 = icmp ult i64 %32, %33
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.body36
  %34 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %35 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx39 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 39, i8* %arrayidx39, align 1, !tbaa !15
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %do.body36
  %36 = load i64, i64* %len, align 8, !tbaa !13
  %inc41 = add i64 %36, 1
  store i64 %inc41, i64* %len, align 8, !tbaa !13
  br label %do.cond42

do.cond42:                                        ; preds = %if.end40
  br label %do.end43

do.end43:                                         ; preds = %do.cond42
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %sw.bb33
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i8** %quote_string, align 8, !tbaa !6
  store i64 1, i64* %quote_string_len, align 8, !tbaa !13
  br label %sw.epilog

sw.bb45:                                          ; preds = %process_input
  store i8 0, i8* %elide_outer_quotes, align 1, !tbaa !11
  br label %sw.epilog

sw.default:                                       ; preds = %process_input
  call void @abort() #20
  unreachable

sw.epilog:                                        ; preds = %sw.bb45, %if.end44, %if.end25, %sw.bb7, %if.end6
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc709, %sw.epilog
  %37 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp47 = icmp eq i64 %37, -1
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond46
  %38 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %39 = load i64, i64* %i, align 8, !tbaa !13
  %arrayidx48 = getelementptr inbounds i8, i8* %38, i64 %39
  %40 = load i8, i8* %arrayidx48, align 1, !tbaa !15
  %conv = sext i8 %40 to i32
  %cmp49 = icmp eq i32 %conv, 0
  %conv50 = zext i1 %cmp49 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond46
  %41 = load i64, i64* %i, align 8, !tbaa !13
  %42 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp51 = icmp eq i64 %41, %42
  %conv52 = zext i1 %cmp51 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv50, %cond.true ], [ %conv52, %cond.false ]
  %tobool53 = icmp ne i32 %cond, 0
  %lnot = xor i1 %tobool53, true
  br i1 %lnot, label %for.body54, label %for.end711

for.body54:                                       ; preds = %cond.end
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %c) #13
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %esc) #13
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %is_right_quote) #13
  store i8 0, i8* %is_right_quote, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %escaping) #13
  store i8 0, i8* %escaping, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %c_and_shell_quote_compat) #13
  store i8 0, i8* %c_and_shell_quote_compat, align 1, !tbaa !11
  %43 = load i8, i8* %backslash_escapes, align 1, !tbaa !11, !range !16
  %tobool55 = trunc i8 %43 to i1
  br i1 %tobool55, label %land.lhs.true, label %if.end82

land.lhs.true:                                    ; preds = %for.body54
  %44 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp57 = icmp ne i32 %44, 2
  br i1 %cmp57, label %land.lhs.true59, label %if.end82

land.lhs.true59:                                  ; preds = %land.lhs.true
  %45 = load i64, i64* %quote_string_len, align 8, !tbaa !13
  %tobool60 = icmp ne i64 %45, 0
  br i1 %tobool60, label %land.lhs.true61, label %if.end82

land.lhs.true61:                                  ; preds = %land.lhs.true59
  %46 = load i64, i64* %i, align 8, !tbaa !13
  %47 = load i64, i64* %quote_string_len, align 8, !tbaa !13
  %add = add i64 %46, %47
  %48 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp62 = icmp eq i64 %48, -1
  br i1 %cmp62, label %land.lhs.true64, label %cond.false69

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %49 = load i64, i64* %quote_string_len, align 8, !tbaa !13
  %cmp65 = icmp ult i64 1, %49
  br i1 %cmp65, label %cond.true67, label %cond.false69

cond.true67:                                      ; preds = %land.lhs.true64
  %50 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call68 = call i64 @strlen(i8* %50) #21
  store i64 %call68, i64* %argsize.addr, align 8, !tbaa !13
  br label %cond.end70

cond.false69:                                     ; preds = %land.lhs.true64, %land.lhs.true61
  %51 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %cond.true67
  %cond71 = phi i64 [ %call68, %cond.true67 ], [ %51, %cond.false69 ]
  %cmp72 = icmp ule i64 %add, %cond71
  br i1 %cmp72, label %land.lhs.true74, label %if.end82

land.lhs.true74:                                  ; preds = %cond.end70
  %52 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %53 = load i64, i64* %i, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %52, i64 %53
  %54 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %55 = load i64, i64* %quote_string_len, align 8, !tbaa !13
  %call75 = call i32 @memcmp(i8* %add.ptr, i8* %54, i64 %55) #21
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %if.end82

if.then78:                                        ; preds = %land.lhs.true74
  %56 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool79 = trunc i8 %56 to i1
  br i1 %tobool79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.then78
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end81:                                         ; preds = %if.then78
  store i8 1, i8* %is_right_quote, align 1, !tbaa !11
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %land.lhs.true74, %cond.end70, %land.lhs.true59, %land.lhs.true, %for.body54
  %57 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %58 = load i64, i64* %i, align 8, !tbaa !13
  %arrayidx83 = getelementptr inbounds i8, i8* %57, i64 %58
  %59 = load i8, i8* %arrayidx83, align 1, !tbaa !15
  store i8 %59, i8* %c, align 1, !tbaa !15
  %60 = load i8, i8* %c, align 1, !tbaa !15
  %conv84 = zext i8 %60 to i32
  switch i32 %conv84, label %sw.default351 [
    i32 0, label %sw.bb85
    i32 63, label %sw.bb179
    i32 7, label %sw.bb249
    i32 8, label %sw.bb250
    i32 12, label %sw.bb251
    i32 10, label %sw.bb252
    i32 13, label %sw.bb253
    i32 9, label %sw.bb254
    i32 11, label %sw.bb255
    i32 92, label %sw.bb256
    i32 123, label %sw.bb283
    i32 125, label %sw.bb283
    i32 35, label %sw.bb296
    i32 126, label %sw.bb296
    i32 32, label %sw.bb301
    i32 33, label %sw.bb302
    i32 34, label %sw.bb302
    i32 36, label %sw.bb302
    i32 38, label %sw.bb302
    i32 40, label %sw.bb302
    i32 41, label %sw.bb302
    i32 42, label %sw.bb302
    i32 59, label %sw.bb302
    i32 60, label %sw.bb302
    i32 61, label %sw.bb302
    i32 62, label %sw.bb302
    i32 91, label %sw.bb302
    i32 94, label %sw.bb302
    i32 96, label %sw.bb302
    i32 124, label %sw.bb302
    i32 39, label %sw.bb310
    i32 37, label %sw.bb350
    i32 43, label %sw.bb350
    i32 44, label %sw.bb350
    i32 45, label %sw.bb350
    i32 46, label %sw.bb350
    i32 47, label %sw.bb350
    i32 48, label %sw.bb350
    i32 49, label %sw.bb350
    i32 50, label %sw.bb350
    i32 51, label %sw.bb350
    i32 52, label %sw.bb350
    i32 53, label %sw.bb350
    i32 54, label %sw.bb350
    i32 55, label %sw.bb350
    i32 56, label %sw.bb350
    i32 57, label %sw.bb350
    i32 58, label %sw.bb350
    i32 65, label %sw.bb350
    i32 66, label %sw.bb350
    i32 67, label %sw.bb350
    i32 68, label %sw.bb350
    i32 69, label %sw.bb350
    i32 70, label %sw.bb350
    i32 71, label %sw.bb350
    i32 72, label %sw.bb350
    i32 73, label %sw.bb350
    i32 74, label %sw.bb350
    i32 75, label %sw.bb350
    i32 76, label %sw.bb350
    i32 77, label %sw.bb350
    i32 78, label %sw.bb350
    i32 79, label %sw.bb350
    i32 80, label %sw.bb350
    i32 81, label %sw.bb350
    i32 82, label %sw.bb350
    i32 83, label %sw.bb350
    i32 84, label %sw.bb350
    i32 85, label %sw.bb350
    i32 86, label %sw.bb350
    i32 87, label %sw.bb350
    i32 88, label %sw.bb350
    i32 89, label %sw.bb350
    i32 90, label %sw.bb350
    i32 93, label %sw.bb350
    i32 95, label %sw.bb350
    i32 97, label %sw.bb350
    i32 98, label %sw.bb350
    i32 99, label %sw.bb350
    i32 100, label %sw.bb350
    i32 101, label %sw.bb350
    i32 102, label %sw.bb350
    i32 103, label %sw.bb350
    i32 104, label %sw.bb350
    i32 105, label %sw.bb350
    i32 106, label %sw.bb350
    i32 107, label %sw.bb350
    i32 108, label %sw.bb350
    i32 109, label %sw.bb350
    i32 110, label %sw.bb350
    i32 111, label %sw.bb350
    i32 112, label %sw.bb350
    i32 113, label %sw.bb350
    i32 114, label %sw.bb350
    i32 115, label %sw.bb350
    i32 116, label %sw.bb350
    i32 117, label %sw.bb350
    i32 118, label %sw.bb350
    i32 119, label %sw.bb350
    i32 120, label %sw.bb350
    i32 121, label %sw.bb350
    i32 122, label %sw.bb350
  ]

sw.bb85:                                          ; preds = %if.end82
  %61 = load i8, i8* %backslash_escapes, align 1, !tbaa !11, !range !16
  %tobool86 = trunc i8 %61 to i1
  br i1 %tobool86, label %if.then87, label %if.else

if.then87:                                        ; preds = %sw.bb85
  br label %do.body88

do.body88:                                        ; preds = %if.then87
  %62 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool89 = trunc i8 %62 to i1
  br i1 %tobool89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %do.body88
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end91:                                         ; preds = %do.body88
  store i8 1, i8* %escaping, align 1, !tbaa !11
  %63 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp92 = icmp eq i32 %63, 2
  br i1 %cmp92, label %land.lhs.true94, label %if.end124

land.lhs.true94:                                  ; preds = %if.end91
  %64 = load i8, i8* %pending_shell_escape_end, align 1, !tbaa !11, !range !16
  %tobool95 = trunc i8 %64 to i1
  br i1 %tobool95, label %if.end124, label %if.then96

if.then96:                                        ; preds = %land.lhs.true94
  br label %do.body97

do.body97:                                        ; preds = %if.then96
  %65 = load i64, i64* %len, align 8, !tbaa !13
  %66 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp98 = icmp ult i64 %65, %66
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %do.body97
  %67 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %68 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx101 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 39, i8* %arrayidx101, align 1, !tbaa !15
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %do.body97
  %69 = load i64, i64* %len, align 8, !tbaa !13
  %inc103 = add i64 %69, 1
  store i64 %inc103, i64* %len, align 8, !tbaa !13
  br label %do.cond104

do.cond104:                                       ; preds = %if.end102
  br label %do.end105

do.end105:                                        ; preds = %do.cond104
  br label %do.body106

do.body106:                                       ; preds = %do.end105
  %70 = load i64, i64* %len, align 8, !tbaa !13
  %71 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp107 = icmp ult i64 %70, %71
  br i1 %cmp107, label %if.then109, label %if.end111

if.then109:                                       ; preds = %do.body106
  %72 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %73 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx110 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 36, i8* %arrayidx110, align 1, !tbaa !15
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %do.body106
  %74 = load i64, i64* %len, align 8, !tbaa !13
  %inc112 = add i64 %74, 1
  store i64 %inc112, i64* %len, align 8, !tbaa !13
  br label %do.cond113

do.cond113:                                       ; preds = %if.end111
  br label %do.end114

do.end114:                                        ; preds = %do.cond113
  br label %do.body115

do.body115:                                       ; preds = %do.end114
  %75 = load i64, i64* %len, align 8, !tbaa !13
  %76 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp116 = icmp ult i64 %75, %76
  br i1 %cmp116, label %if.then118, label %if.end120

if.then118:                                       ; preds = %do.body115
  %77 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %78 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx119 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 39, i8* %arrayidx119, align 1, !tbaa !15
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %do.body115
  %79 = load i64, i64* %len, align 8, !tbaa !13
  %inc121 = add i64 %79, 1
  store i64 %inc121, i64* %len, align 8, !tbaa !13
  br label %do.cond122

do.cond122:                                       ; preds = %if.end120
  br label %do.end123

do.end123:                                        ; preds = %do.cond122
  store i8 1, i8* %pending_shell_escape_end, align 1, !tbaa !11
  br label %if.end124

if.end124:                                        ; preds = %do.end123, %land.lhs.true94, %if.end91
  br label %do.body125

do.body125:                                       ; preds = %if.end124
  %80 = load i64, i64* %len, align 8, !tbaa !13
  %81 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp126 = icmp ult i64 %80, %81
  br i1 %cmp126, label %if.then128, label %if.end130

if.then128:                                       ; preds = %do.body125
  %82 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %83 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx129 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 92, i8* %arrayidx129, align 1, !tbaa !15
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %do.body125
  %84 = load i64, i64* %len, align 8, !tbaa !13
  %inc131 = add i64 %84, 1
  store i64 %inc131, i64* %len, align 8, !tbaa !13
  br label %do.cond132

do.cond132:                                       ; preds = %if.end130
  br label %do.end133

do.end133:                                        ; preds = %do.cond132
  br label %do.cond134

do.cond134:                                       ; preds = %do.end133
  br label %do.end135

do.end135:                                        ; preds = %do.cond134
  %85 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp136 = icmp ne i32 %85, 2
  br i1 %cmp136, label %land.lhs.true138, label %if.end173

land.lhs.true138:                                 ; preds = %do.end135
  %86 = load i64, i64* %i, align 8, !tbaa !13
  %add139 = add i64 %86, 1
  %87 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp140 = icmp ult i64 %add139, %87
  br i1 %cmp140, label %land.lhs.true142, label %if.end173

land.lhs.true142:                                 ; preds = %land.lhs.true138
  %88 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %89 = load i64, i64* %i, align 8, !tbaa !13
  %add143 = add i64 %89, 1
  %arrayidx144 = getelementptr inbounds i8, i8* %88, i64 %add143
  %90 = load i8, i8* %arrayidx144, align 1, !tbaa !15
  %conv145 = sext i8 %90 to i32
  %cmp146 = icmp sle i32 48, %conv145
  br i1 %cmp146, label %land.lhs.true148, label %if.end173

land.lhs.true148:                                 ; preds = %land.lhs.true142
  %91 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %92 = load i64, i64* %i, align 8, !tbaa !13
  %add149 = add i64 %92, 1
  %arrayidx150 = getelementptr inbounds i8, i8* %91, i64 %add149
  %93 = load i8, i8* %arrayidx150, align 1, !tbaa !15
  %conv151 = sext i8 %93 to i32
  %cmp152 = icmp sle i32 %conv151, 57
  br i1 %cmp152, label %if.then154, label %if.end173

if.then154:                                       ; preds = %land.lhs.true148
  br label %do.body155

do.body155:                                       ; preds = %if.then154
  %94 = load i64, i64* %len, align 8, !tbaa !13
  %95 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp156 = icmp ult i64 %94, %95
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %do.body155
  %96 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %97 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx159 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 48, i8* %arrayidx159, align 1, !tbaa !15
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %do.body155
  %98 = load i64, i64* %len, align 8, !tbaa !13
  %inc161 = add i64 %98, 1
  store i64 %inc161, i64* %len, align 8, !tbaa !13
  br label %do.cond162

do.cond162:                                       ; preds = %if.end160
  br label %do.end163

do.end163:                                        ; preds = %do.cond162
  br label %do.body164

do.body164:                                       ; preds = %do.end163
  %99 = load i64, i64* %len, align 8, !tbaa !13
  %100 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp165 = icmp ult i64 %99, %100
  br i1 %cmp165, label %if.then167, label %if.end169

if.then167:                                       ; preds = %do.body164
  %101 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %102 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx168 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8 48, i8* %arrayidx168, align 1, !tbaa !15
  br label %if.end169

if.end169:                                        ; preds = %if.then167, %do.body164
  %103 = load i64, i64* %len, align 8, !tbaa !13
  %inc170 = add i64 %103, 1
  store i64 %inc170, i64* %len, align 8, !tbaa !13
  br label %do.cond171

do.cond171:                                       ; preds = %if.end169
  br label %do.end172

do.end172:                                        ; preds = %do.cond171
  br label %if.end173

if.end173:                                        ; preds = %do.end172, %land.lhs.true148, %land.lhs.true142, %land.lhs.true138, %do.end135
  store i8 48, i8* %c, align 1, !tbaa !15
  br label %if.end178

if.else:                                          ; preds = %sw.bb85
  %104 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and174 = and i32 %104, 1
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.else
  store i32 15, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end177:                                        ; preds = %if.else
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.end173
  br label %sw.epilog593

sw.bb179:                                         ; preds = %if.end82
  %105 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  switch i32 %105, label %sw.default247 [
    i32 2, label %sw.bb180
    i32 5, label %sw.bb184
  ]

sw.bb180:                                         ; preds = %sw.bb179
  %106 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool181 = trunc i8 %106 to i1
  br i1 %tobool181, label %if.then182, label %if.end183

if.then182:                                       ; preds = %sw.bb180
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end183:                                        ; preds = %sw.bb180
  br label %sw.epilog248

sw.bb184:                                         ; preds = %sw.bb179
  %107 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and185 = and i32 %107, 4
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %land.lhs.true187, label %if.end246

land.lhs.true187:                                 ; preds = %sw.bb184
  %108 = load i64, i64* %i, align 8, !tbaa !13
  %add188 = add i64 %108, 2
  %109 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp189 = icmp ult i64 %add188, %109
  br i1 %cmp189, label %land.lhs.true191, label %if.end246

land.lhs.true191:                                 ; preds = %land.lhs.true187
  %110 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %111 = load i64, i64* %i, align 8, !tbaa !13
  %add192 = add i64 %111, 1
  %arrayidx193 = getelementptr inbounds i8, i8* %110, i64 %add192
  %112 = load i8, i8* %arrayidx193, align 1, !tbaa !15
  %conv194 = sext i8 %112 to i32
  %cmp195 = icmp eq i32 %conv194, 63
  br i1 %cmp195, label %if.then197, label %if.end246

if.then197:                                       ; preds = %land.lhs.true191
  %113 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %114 = load i64, i64* %i, align 8, !tbaa !13
  %add198 = add i64 %114, 2
  %arrayidx199 = getelementptr inbounds i8, i8* %113, i64 %add198
  %115 = load i8, i8* %arrayidx199, align 1, !tbaa !15
  %conv200 = sext i8 %115 to i32
  switch i32 %conv200, label %sw.default244 [
    i32 33, label %sw.bb201
    i32 39, label %sw.bb201
    i32 40, label %sw.bb201
    i32 41, label %sw.bb201
    i32 45, label %sw.bb201
    i32 47, label %sw.bb201
    i32 60, label %sw.bb201
    i32 61, label %sw.bb201
    i32 62, label %sw.bb201
  ]

sw.bb201:                                         ; preds = %if.then197, %if.then197, %if.then197, %if.then197, %if.then197, %if.then197, %if.then197, %if.then197, %if.then197
  %116 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool202 = trunc i8 %116 to i1
  br i1 %tobool202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %sw.bb201
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end204:                                        ; preds = %sw.bb201
  %117 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %118 = load i64, i64* %i, align 8, !tbaa !13
  %add205 = add i64 %118, 2
  %arrayidx206 = getelementptr inbounds i8, i8* %117, i64 %add205
  %119 = load i8, i8* %arrayidx206, align 1, !tbaa !15
  store i8 %119, i8* %c, align 1, !tbaa !15
  %120 = load i64, i64* %i, align 8, !tbaa !13
  %add207 = add i64 %120, 2
  store i64 %add207, i64* %i, align 8, !tbaa !13
  br label %do.body208

do.body208:                                       ; preds = %if.end204
  %121 = load i64, i64* %len, align 8, !tbaa !13
  %122 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp209 = icmp ult i64 %121, %122
  br i1 %cmp209, label %if.then211, label %if.end213

if.then211:                                       ; preds = %do.body208
  %123 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %124 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx212 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8 63, i8* %arrayidx212, align 1, !tbaa !15
  br label %if.end213

if.end213:                                        ; preds = %if.then211, %do.body208
  %125 = load i64, i64* %len, align 8, !tbaa !13
  %inc214 = add i64 %125, 1
  store i64 %inc214, i64* %len, align 8, !tbaa !13
  br label %do.cond215

do.cond215:                                       ; preds = %if.end213
  br label %do.end216

do.end216:                                        ; preds = %do.cond215
  br label %do.body217

do.body217:                                       ; preds = %do.end216
  %126 = load i64, i64* %len, align 8, !tbaa !13
  %127 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp218 = icmp ult i64 %126, %127
  br i1 %cmp218, label %if.then220, label %if.end222

if.then220:                                       ; preds = %do.body217
  %128 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %129 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx221 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 34, i8* %arrayidx221, align 1, !tbaa !15
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %do.body217
  %130 = load i64, i64* %len, align 8, !tbaa !13
  %inc223 = add i64 %130, 1
  store i64 %inc223, i64* %len, align 8, !tbaa !13
  br label %do.cond224

do.cond224:                                       ; preds = %if.end222
  br label %do.end225

do.end225:                                        ; preds = %do.cond224
  br label %do.body226

do.body226:                                       ; preds = %do.end225
  %131 = load i64, i64* %len, align 8, !tbaa !13
  %132 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp227 = icmp ult i64 %131, %132
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %do.body226
  %133 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %134 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx230 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8 34, i8* %arrayidx230, align 1, !tbaa !15
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %do.body226
  %135 = load i64, i64* %len, align 8, !tbaa !13
  %inc232 = add i64 %135, 1
  store i64 %inc232, i64* %len, align 8, !tbaa !13
  br label %do.cond233

do.cond233:                                       ; preds = %if.end231
  br label %do.end234

do.end234:                                        ; preds = %do.cond233
  br label %do.body235

do.body235:                                       ; preds = %do.end234
  %136 = load i64, i64* %len, align 8, !tbaa !13
  %137 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp236 = icmp ult i64 %136, %137
  br i1 %cmp236, label %if.then238, label %if.end240

if.then238:                                       ; preds = %do.body235
  %138 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %139 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx239 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 63, i8* %arrayidx239, align 1, !tbaa !15
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %do.body235
  %140 = load i64, i64* %len, align 8, !tbaa !13
  %inc241 = add i64 %140, 1
  store i64 %inc241, i64* %len, align 8, !tbaa !13
  br label %do.cond242

do.cond242:                                       ; preds = %if.end240
  br label %do.end243

do.end243:                                        ; preds = %do.cond242
  br label %sw.epilog245

sw.default244:                                    ; preds = %if.then197
  br label %sw.epilog245

sw.epilog245:                                     ; preds = %sw.default244, %do.end243
  br label %if.end246

if.end246:                                        ; preds = %sw.epilog245, %land.lhs.true191, %land.lhs.true187, %sw.bb184
  br label %sw.epilog248

sw.default247:                                    ; preds = %sw.bb179
  br label %sw.epilog248

sw.epilog248:                                     ; preds = %sw.default247, %if.end246, %if.end183
  br label %sw.epilog593

sw.bb249:                                         ; preds = %if.end82
  store i8 97, i8* %esc, align 1, !tbaa !15
  br label %c_escape

sw.bb250:                                         ; preds = %if.end82
  store i8 98, i8* %esc, align 1, !tbaa !15
  br label %c_escape

sw.bb251:                                         ; preds = %if.end82
  store i8 102, i8* %esc, align 1, !tbaa !15
  br label %c_escape

sw.bb252:                                         ; preds = %if.end82
  store i8 110, i8* %esc, align 1, !tbaa !15
  br label %c_and_shell_escape

sw.bb253:                                         ; preds = %if.end82
  store i8 114, i8* %esc, align 1, !tbaa !15
  br label %c_and_shell_escape

sw.bb254:                                         ; preds = %if.end82
  store i8 116, i8* %esc, align 1, !tbaa !15
  br label %c_and_shell_escape

sw.bb255:                                         ; preds = %if.end82
  store i8 118, i8* %esc, align 1, !tbaa !15
  br label %c_escape

sw.bb256:                                         ; preds = %if.end82
  %141 = load i8, i8* %c, align 1, !tbaa !15
  store i8 %141, i8* %esc, align 1, !tbaa !15
  %142 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp257 = icmp eq i32 %142, 2
  br i1 %cmp257, label %if.then259, label %if.end263

if.then259:                                       ; preds = %sw.bb256
  %143 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool260 = trunc i8 %143 to i1
  br i1 %tobool260, label %if.then261, label %if.end262

if.then261:                                       ; preds = %if.then259
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end262:                                        ; preds = %if.then259
  br label %store_c

if.end263:                                        ; preds = %sw.bb256
  %144 = load i8, i8* %backslash_escapes, align 1, !tbaa !11, !range !16
  %tobool264 = trunc i8 %144 to i1
  br i1 %tobool264, label %land.lhs.true266, label %if.end272

land.lhs.true266:                                 ; preds = %if.end263
  %145 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool267 = trunc i8 %145 to i1
  br i1 %tobool267, label %land.lhs.true269, label %if.end272

land.lhs.true269:                                 ; preds = %land.lhs.true266
  %146 = load i64, i64* %quote_string_len, align 8, !tbaa !13
  %tobool270 = icmp ne i64 %146, 0
  br i1 %tobool270, label %if.then271, label %if.end272

if.then271:                                       ; preds = %land.lhs.true269
  br label %store_c

if.end272:                                        ; preds = %land.lhs.true269, %land.lhs.true266, %if.end263
  br label %c_and_shell_escape

c_and_shell_escape:                               ; preds = %if.end272, %sw.bb254, %sw.bb253, %sw.bb252
  %147 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp273 = icmp eq i32 %147, 2
  br i1 %cmp273, label %land.lhs.true275, label %if.end279

land.lhs.true275:                                 ; preds = %c_and_shell_escape
  %148 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool276 = trunc i8 %148 to i1
  br i1 %tobool276, label %if.then278, label %if.end279

if.then278:                                       ; preds = %land.lhs.true275
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end279:                                        ; preds = %land.lhs.true275, %c_and_shell_escape
  br label %c_escape

c_escape:                                         ; preds = %if.end279, %sw.bb255, %sw.bb251, %sw.bb250, %sw.bb249
  %149 = load i8, i8* %backslash_escapes, align 1, !tbaa !11, !range !16
  %tobool280 = trunc i8 %149 to i1
  br i1 %tobool280, label %if.then281, label %if.end282

if.then281:                                       ; preds = %c_escape
  %150 = load i8, i8* %esc, align 1, !tbaa !15
  store i8 %150, i8* %c, align 1, !tbaa !15
  br label %store_escape

if.end282:                                        ; preds = %c_escape
  br label %sw.epilog593

sw.bb283:                                         ; preds = %if.end82, %if.end82
  %151 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp284 = icmp eq i64 %151, -1
  br i1 %cmp284, label %cond.true286, label %cond.false291

cond.true286:                                     ; preds = %sw.bb283
  %152 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %arrayidx287 = getelementptr inbounds i8, i8* %152, i64 1
  %153 = load i8, i8* %arrayidx287, align 1, !tbaa !15
  %conv288 = sext i8 %153 to i32
  %cmp289 = icmp eq i32 %conv288, 0
  br i1 %cmp289, label %if.end295, label %if.then294

cond.false291:                                    ; preds = %sw.bb283
  %154 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp292 = icmp eq i64 %154, 1
  br i1 %cmp292, label %if.end295, label %if.then294

if.then294:                                       ; preds = %cond.false291, %cond.true286
  br label %sw.epilog593

if.end295:                                        ; preds = %cond.false291, %cond.true286
  br label %sw.bb296

sw.bb296:                                         ; preds = %if.end82, %if.end82, %if.end295
  %155 = load i64, i64* %i, align 8, !tbaa !13
  %cmp297 = icmp ne i64 %155, 0
  br i1 %cmp297, label %if.then299, label %if.end300

if.then299:                                       ; preds = %sw.bb296
  br label %sw.epilog593

if.end300:                                        ; preds = %sw.bb296
  br label %sw.bb301

sw.bb301:                                         ; preds = %if.end82, %if.end300
  store i8 1, i8* %c_and_shell_quote_compat, align 1, !tbaa !11
  br label %sw.bb302

sw.bb302:                                         ; preds = %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %sw.bb301
  %156 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp303 = icmp eq i32 %156, 2
  br i1 %cmp303, label %land.lhs.true305, label %if.end309

land.lhs.true305:                                 ; preds = %sw.bb302
  %157 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool306 = trunc i8 %157 to i1
  br i1 %tobool306, label %if.then308, label %if.end309

if.then308:                                       ; preds = %land.lhs.true305
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end309:                                        ; preds = %land.lhs.true305, %sw.bb302
  br label %sw.epilog593

sw.bb310:                                         ; preds = %if.end82
  store i8 1, i8* %encountered_single_quote, align 1, !tbaa !11
  store i8 1, i8* %c_and_shell_quote_compat, align 1, !tbaa !11
  %158 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp311 = icmp eq i32 %158, 2
  br i1 %cmp311, label %if.then313, label %if.end349

if.then313:                                       ; preds = %sw.bb310
  %159 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool314 = trunc i8 %159 to i1
  br i1 %tobool314, label %if.then315, label %if.end316

if.then315:                                       ; preds = %if.then313
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end316:                                        ; preds = %if.then313
  %160 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %tobool317 = icmp ne i64 %160, 0
  br i1 %tobool317, label %land.lhs.true318, label %if.end321

land.lhs.true318:                                 ; preds = %if.end316
  %161 = load i64, i64* %orig_buffersize, align 8, !tbaa !13
  %tobool319 = icmp ne i64 %161, 0
  br i1 %tobool319, label %if.end321, label %if.then320

if.then320:                                       ; preds = %land.lhs.true318
  %162 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  store i64 %162, i64* %orig_buffersize, align 8, !tbaa !13
  store i64 0, i64* %buffersize.addr, align 8, !tbaa !13
  br label %if.end321

if.end321:                                        ; preds = %if.then320, %land.lhs.true318, %if.end316
  br label %do.body322

do.body322:                                       ; preds = %if.end321
  %163 = load i64, i64* %len, align 8, !tbaa !13
  %164 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp323 = icmp ult i64 %163, %164
  br i1 %cmp323, label %if.then325, label %if.end327

if.then325:                                       ; preds = %do.body322
  %165 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %166 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx326 = getelementptr inbounds i8, i8* %165, i64 %166
  store i8 39, i8* %arrayidx326, align 1, !tbaa !15
  br label %if.end327

if.end327:                                        ; preds = %if.then325, %do.body322
  %167 = load i64, i64* %len, align 8, !tbaa !13
  %inc328 = add i64 %167, 1
  store i64 %inc328, i64* %len, align 8, !tbaa !13
  br label %do.cond329

do.cond329:                                       ; preds = %if.end327
  br label %do.end330

do.end330:                                        ; preds = %do.cond329
  br label %do.body331

do.body331:                                       ; preds = %do.end330
  %168 = load i64, i64* %len, align 8, !tbaa !13
  %169 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp332 = icmp ult i64 %168, %169
  br i1 %cmp332, label %if.then334, label %if.end336

if.then334:                                       ; preds = %do.body331
  %170 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %171 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx335 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8 92, i8* %arrayidx335, align 1, !tbaa !15
  br label %if.end336

if.end336:                                        ; preds = %if.then334, %do.body331
  %172 = load i64, i64* %len, align 8, !tbaa !13
  %inc337 = add i64 %172, 1
  store i64 %inc337, i64* %len, align 8, !tbaa !13
  br label %do.cond338

do.cond338:                                       ; preds = %if.end336
  br label %do.end339

do.end339:                                        ; preds = %do.cond338
  br label %do.body340

do.body340:                                       ; preds = %do.end339
  %173 = load i64, i64* %len, align 8, !tbaa !13
  %174 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp341 = icmp ult i64 %173, %174
  br i1 %cmp341, label %if.then343, label %if.end345

if.then343:                                       ; preds = %do.body340
  %175 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %176 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx344 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8 39, i8* %arrayidx344, align 1, !tbaa !15
  br label %if.end345

if.end345:                                        ; preds = %if.then343, %do.body340
  %177 = load i64, i64* %len, align 8, !tbaa !13
  %inc346 = add i64 %177, 1
  store i64 %inc346, i64* %len, align 8, !tbaa !13
  br label %do.cond347

do.cond347:                                       ; preds = %if.end345
  br label %do.end348

do.end348:                                        ; preds = %do.cond347
  store i8 0, i8* %pending_shell_escape_end, align 1, !tbaa !11
  br label %if.end349

if.end349:                                        ; preds = %do.end348, %sw.bb310
  br label %sw.epilog593

sw.bb350:                                         ; preds = %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82, %if.end82
  store i8 1, i8* %c_and_shell_quote_compat, align 1, !tbaa !11
  br label %sw.epilog593

sw.default351:                                    ; preds = %if.end82
  %178 = bitcast i64* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %178) #13
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %printable) #13
  %179 = load i8, i8* %unibyte_locale, align 1, !tbaa !11, !range !16
  %tobool352 = trunc i8 %179 to i1
  br i1 %tobool352, label %if.then353, label %if.else362

if.then353:                                       ; preds = %sw.default351
  store i64 1, i64* %m, align 8, !tbaa !13
  %call354 = call i16** @__ctype_b_loc() #22
  %180 = load i16*, i16** %call354, align 8, !tbaa !6
  %181 = load i8, i8* %c, align 1, !tbaa !15
  %conv355 = zext i8 %181 to i32
  %idxprom = sext i32 %conv355 to i64
  %arrayidx356 = getelementptr inbounds i16, i16* %180, i64 %idxprom
  %182 = load i16, i16* %arrayidx356, align 2, !tbaa !30
  %conv357 = zext i16 %182 to i32
  %and358 = and i32 %conv357, 16384
  %cmp359 = icmp ne i32 %and358, 0
  %frombool361 = zext i1 %cmp359 to i8
  store i8 %frombool361, i8* %printable, align 1, !tbaa !11
  br label %if.end434

if.else362:                                       ; preds = %sw.default351
  %183 = bitcast %struct.__mbstate_t* %mbstate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %183) #13
  %184 = bitcast %struct.__mbstate_t* %mbstate to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %184, i8 0, i64 8, i1 false)
  store i64 0, i64* %m, align 8, !tbaa !13
  store i8 1, i8* %printable, align 1, !tbaa !11
  %185 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp363 = icmp eq i64 %185, -1
  br i1 %cmp363, label %if.then365, label %if.end367

if.then365:                                       ; preds = %if.else362
  %186 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call366 = call i64 @strlen(i8* %186) #21
  store i64 %call366, i64* %argsize.addr, align 8, !tbaa !13
  br label %if.end367

if.end367:                                        ; preds = %if.then365, %if.else362
  br label %do.body368

do.body368:                                       ; preds = %do.cond426, %if.end367
  %187 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %187) #13
  %188 = bitcast i64* %bytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %188) #13
  %189 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %190 = load i64, i64* %i, align 8, !tbaa !13
  %191 = load i64, i64* %m, align 8, !tbaa !13
  %add369 = add i64 %190, %191
  %arrayidx370 = getelementptr inbounds i8, i8* %189, i64 %add369
  %192 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %193 = load i64, i64* %i, align 8, !tbaa !13
  %194 = load i64, i64* %m, align 8, !tbaa !13
  %add371 = add i64 %193, %194
  %sub = sub i64 %192, %add371
  %call372 = call i64 @rpl_mbrtowc(i32* %w, i8* %arrayidx370, i64 %sub, %struct.__mbstate_t* %mbstate)
  store i64 %call372, i64* %bytes, align 8, !tbaa !13
  %195 = load i64, i64* %bytes, align 8, !tbaa !13
  %cmp373 = icmp eq i64 %195, 0
  br i1 %cmp373, label %if.then375, label %if.else376

if.then375:                                       ; preds = %do.body368
  store i32 52, i32* %cleanup.dest.slot, align 4
  br label %cleanup422

if.else376:                                       ; preds = %do.body368
  %196 = load i64, i64* %bytes, align 8, !tbaa !13
  %cmp377 = icmp eq i64 %196, -1
  br i1 %cmp377, label %if.then379, label %if.else380

if.then379:                                       ; preds = %if.else376
  store i8 0, i8* %printable, align 1, !tbaa !11
  store i32 52, i32* %cleanup.dest.slot, align 4
  br label %cleanup422

if.else380:                                       ; preds = %if.else376
  %197 = load i64, i64* %bytes, align 8, !tbaa !13
  %cmp381 = icmp eq i64 %197, -2
  br i1 %cmp381, label %if.then383, label %if.else392

if.then383:                                       ; preds = %if.else380
  store i8 0, i8* %printable, align 1, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then383
  %198 = load i64, i64* %i, align 8, !tbaa !13
  %199 = load i64, i64* %m, align 8, !tbaa !13
  %add384 = add i64 %198, %199
  %200 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %cmp385 = icmp ult i64 %add384, %200
  br i1 %cmp385, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %201 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %202 = load i64, i64* %i, align 8, !tbaa !13
  %203 = load i64, i64* %m, align 8, !tbaa !13
  %add387 = add i64 %202, %203
  %arrayidx388 = getelementptr inbounds i8, i8* %201, i64 %add387
  %204 = load i8, i8* %arrayidx388, align 1, !tbaa !15
  %conv389 = sext i8 %204 to i32
  %tobool390 = icmp ne i32 %conv389, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %205 = phi i1 [ false, %while.cond ], [ %tobool390, %land.rhs ]
  br i1 %205, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %206 = load i64, i64* %m, align 8, !tbaa !13
  %inc391 = add i64 %206, 1
  store i64 %inc391, i64* %m, align 8, !tbaa !13
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 52, i32* %cleanup.dest.slot, align 4
  br label %cleanup422

if.else392:                                       ; preds = %if.else380
  %207 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool393 = trunc i8 %207 to i1
  br i1 %tobool393, label %land.lhs.true395, label %if.end413

land.lhs.true395:                                 ; preds = %if.else392
  %208 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp396 = icmp eq i32 %208, 2
  br i1 %cmp396, label %if.then398, label %if.end413

if.then398:                                       ; preds = %land.lhs.true395
  %209 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %209) #13
  store i64 1, i64* %j, align 8, !tbaa !13
  br label %for.cond399

for.cond399:                                      ; preds = %for.inc410, %if.then398
  %210 = load i64, i64* %j, align 8, !tbaa !13
  %211 = load i64, i64* %bytes, align 8, !tbaa !13
  %cmp400 = icmp ult i64 %210, %211
  br i1 %cmp400, label %for.body402, label %for.end412

for.body402:                                      ; preds = %for.cond399
  %212 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %213 = load i64, i64* %i, align 8, !tbaa !13
  %214 = load i64, i64* %m, align 8, !tbaa !13
  %add403 = add i64 %213, %214
  %215 = load i64, i64* %j, align 8, !tbaa !13
  %add404 = add i64 %add403, %215
  %arrayidx405 = getelementptr inbounds i8, i8* %212, i64 %add404
  %216 = load i8, i8* %arrayidx405, align 1, !tbaa !15
  %conv406 = sext i8 %216 to i32
  switch i32 %conv406, label %sw.default408 [
    i32 91, label %sw.bb407
    i32 92, label %sw.bb407
    i32 94, label %sw.bb407
    i32 96, label %sw.bb407
    i32 124, label %sw.bb407
  ]

sw.bb407:                                         ; preds = %for.body402, %for.body402, %for.body402, %for.body402, %for.body402
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup

sw.default408:                                    ; preds = %for.body402
  br label %sw.epilog409

sw.epilog409:                                     ; preds = %sw.default408
  br label %for.inc410

for.inc410:                                       ; preds = %sw.epilog409
  %217 = load i64, i64* %j, align 8, !tbaa !13
  %inc411 = add i64 %217, 1
  store i64 %inc411, i64* %j, align 8, !tbaa !13
  br label %for.cond399

for.end412:                                       ; preds = %for.cond399
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb407, %for.end412
  %218 = bitcast i64* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %218) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup422 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end413

if.end413:                                        ; preds = %cleanup.cont, %land.lhs.true395, %if.else392
  %219 = load i32, i32* %w, align 4, !tbaa !2
  %call414 = call i32 @iswprint(i32 %219) #13
  %tobool415 = icmp ne i32 %call414, 0
  br i1 %tobool415, label %if.end417, label %if.then416

if.then416:                                       ; preds = %if.end413
  store i8 0, i8* %printable, align 1, !tbaa !11
  br label %if.end417

if.end417:                                        ; preds = %if.then416, %if.end413
  %220 = load i64, i64* %bytes, align 8, !tbaa !13
  %221 = load i64, i64* %m, align 8, !tbaa !13
  %add418 = add i64 %221, %220
  store i64 %add418, i64* %m, align 8, !tbaa !13
  br label %if.end419

if.end419:                                        ; preds = %if.end417
  br label %if.end420

if.end420:                                        ; preds = %if.end419
  br label %if.end421

if.end421:                                        ; preds = %if.end420
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup422

cleanup422:                                       ; preds = %if.end421, %cleanup, %while.end, %if.then379, %if.then375
  %222 = bitcast i64* %bytes to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %222) #13
  %223 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %223) #13
  %cleanup.dest424 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest424, label %cleanup431 [
    i32 0, label %cleanup.cont425
    i32 52, label %do.end430
  ]

cleanup.cont425:                                  ; preds = %cleanup422
  br label %do.cond426

do.cond426:                                       ; preds = %cleanup.cont425
  %call427 = call i32 @mbsinit(%struct.__mbstate_t* %mbstate) #21
  %tobool428 = icmp ne i32 %call427, 0
  %lnot429 = xor i1 %tobool428, true
  br i1 %lnot429, label %do.body368, label %do.end430

do.end430:                                        ; preds = %do.cond426, %cleanup422
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup431

cleanup431:                                       ; preds = %do.end430, %cleanup422
  %224 = bitcast %struct.__mbstate_t* %mbstate to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %224) #13
  %cleanup.dest432 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest432, label %cleanup589 [
    i32 0, label %cleanup.cont433
  ]

cleanup.cont433:                                  ; preds = %cleanup431
  br label %if.end434

if.end434:                                        ; preds = %cleanup.cont433, %if.then353
  %225 = load i8, i8* %printable, align 1, !tbaa !11, !range !16
  %tobool435 = trunc i8 %225 to i1
  %frombool436 = zext i1 %tobool435 to i8
  store i8 %frombool436, i8* %c_and_shell_quote_compat, align 1, !tbaa !11
  %226 = load i64, i64* %m, align 8, !tbaa !13
  %cmp437 = icmp ult i64 1, %226
  br i1 %cmp437, label %if.then443, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end434
  %227 = load i8, i8* %backslash_escapes, align 1, !tbaa !11, !range !16
  %tobool439 = trunc i8 %227 to i1
  br i1 %tobool439, label %land.lhs.true441, label %if.end588

land.lhs.true441:                                 ; preds = %lor.lhs.false
  %228 = load i8, i8* %printable, align 1, !tbaa !11, !range !16
  %tobool442 = trunc i8 %228 to i1
  br i1 %tobool442, label %if.end588, label %if.then443

if.then443:                                       ; preds = %land.lhs.true441, %if.end434
  %229 = bitcast i64* %ilim to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %229) #13
  %230 = load i64, i64* %i, align 8, !tbaa !13
  %231 = load i64, i64* %m, align 8, !tbaa !13
  %add444 = add i64 %230, %231
  store i64 %add444, i64* %ilim, align 8, !tbaa !13
  br label %for.cond445

for.cond445:                                      ; preds = %do.end583, %if.then443
  %232 = load i8, i8* %backslash_escapes, align 1, !tbaa !11, !range !16
  %tobool446 = trunc i8 %232 to i1
  br i1 %tobool446, label %land.lhs.true448, label %if.else529

land.lhs.true448:                                 ; preds = %for.cond445
  %233 = load i8, i8* %printable, align 1, !tbaa !11, !range !16
  %tobool449 = trunc i8 %233 to i1
  br i1 %tobool449, label %if.else529, label %if.then450

if.then450:                                       ; preds = %land.lhs.true448
  br label %do.body451

do.body451:                                       ; preds = %if.then450
  %234 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool452 = trunc i8 %234 to i1
  br i1 %tobool452, label %if.then453, label %if.end454

if.then453:                                       ; preds = %do.body451
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup587

if.end454:                                        ; preds = %do.body451
  store i8 1, i8* %escaping, align 1, !tbaa !11
  %235 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp455 = icmp eq i32 %235, 2
  br i1 %cmp455, label %land.lhs.true457, label %if.end487

land.lhs.true457:                                 ; preds = %if.end454
  %236 = load i8, i8* %pending_shell_escape_end, align 1, !tbaa !11, !range !16
  %tobool458 = trunc i8 %236 to i1
  br i1 %tobool458, label %if.end487, label %if.then459

if.then459:                                       ; preds = %land.lhs.true457
  br label %do.body460

do.body460:                                       ; preds = %if.then459
  %237 = load i64, i64* %len, align 8, !tbaa !13
  %238 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp461 = icmp ult i64 %237, %238
  br i1 %cmp461, label %if.then463, label %if.end465

if.then463:                                       ; preds = %do.body460
  %239 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %240 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx464 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8 39, i8* %arrayidx464, align 1, !tbaa !15
  br label %if.end465

if.end465:                                        ; preds = %if.then463, %do.body460
  %241 = load i64, i64* %len, align 8, !tbaa !13
  %inc466 = add i64 %241, 1
  store i64 %inc466, i64* %len, align 8, !tbaa !13
  br label %do.cond467

do.cond467:                                       ; preds = %if.end465
  br label %do.end468

do.end468:                                        ; preds = %do.cond467
  br label %do.body469

do.body469:                                       ; preds = %do.end468
  %242 = load i64, i64* %len, align 8, !tbaa !13
  %243 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp470 = icmp ult i64 %242, %243
  br i1 %cmp470, label %if.then472, label %if.end474

if.then472:                                       ; preds = %do.body469
  %244 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %245 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx473 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8 36, i8* %arrayidx473, align 1, !tbaa !15
  br label %if.end474

if.end474:                                        ; preds = %if.then472, %do.body469
  %246 = load i64, i64* %len, align 8, !tbaa !13
  %inc475 = add i64 %246, 1
  store i64 %inc475, i64* %len, align 8, !tbaa !13
  br label %do.cond476

do.cond476:                                       ; preds = %if.end474
  br label %do.end477

do.end477:                                        ; preds = %do.cond476
  br label %do.body478

do.body478:                                       ; preds = %do.end477
  %247 = load i64, i64* %len, align 8, !tbaa !13
  %248 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp479 = icmp ult i64 %247, %248
  br i1 %cmp479, label %if.then481, label %if.end483

if.then481:                                       ; preds = %do.body478
  %249 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %250 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx482 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8 39, i8* %arrayidx482, align 1, !tbaa !15
  br label %if.end483

if.end483:                                        ; preds = %if.then481, %do.body478
  %251 = load i64, i64* %len, align 8, !tbaa !13
  %inc484 = add i64 %251, 1
  store i64 %inc484, i64* %len, align 8, !tbaa !13
  br label %do.cond485

do.cond485:                                       ; preds = %if.end483
  br label %do.end486

do.end486:                                        ; preds = %do.cond485
  store i8 1, i8* %pending_shell_escape_end, align 1, !tbaa !11
  br label %if.end487

if.end487:                                        ; preds = %do.end486, %land.lhs.true457, %if.end454
  br label %do.body488

do.body488:                                       ; preds = %if.end487
  %252 = load i64, i64* %len, align 8, !tbaa !13
  %253 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp489 = icmp ult i64 %252, %253
  br i1 %cmp489, label %if.then491, label %if.end493

if.then491:                                       ; preds = %do.body488
  %254 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %255 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx492 = getelementptr inbounds i8, i8* %254, i64 %255
  store i8 92, i8* %arrayidx492, align 1, !tbaa !15
  br label %if.end493

if.end493:                                        ; preds = %if.then491, %do.body488
  %256 = load i64, i64* %len, align 8, !tbaa !13
  %inc494 = add i64 %256, 1
  store i64 %inc494, i64* %len, align 8, !tbaa !13
  br label %do.cond495

do.cond495:                                       ; preds = %if.end493
  br label %do.end496

do.end496:                                        ; preds = %do.cond495
  br label %do.cond497

do.cond497:                                       ; preds = %do.end496
  br label %do.end498

do.end498:                                        ; preds = %do.cond497
  br label %do.body499

do.body499:                                       ; preds = %do.end498
  %257 = load i64, i64* %len, align 8, !tbaa !13
  %258 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp500 = icmp ult i64 %257, %258
  br i1 %cmp500, label %if.then502, label %if.end507

if.then502:                                       ; preds = %do.body499
  %259 = load i8, i8* %c, align 1, !tbaa !15
  %conv503 = zext i8 %259 to i32
  %shr = ashr i32 %conv503, 6
  %add504 = add nsw i32 48, %shr
  %conv505 = trunc i32 %add504 to i8
  %260 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %261 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx506 = getelementptr inbounds i8, i8* %260, i64 %261
  store i8 %conv505, i8* %arrayidx506, align 1, !tbaa !15
  br label %if.end507

if.end507:                                        ; preds = %if.then502, %do.body499
  %262 = load i64, i64* %len, align 8, !tbaa !13
  %inc508 = add i64 %262, 1
  store i64 %inc508, i64* %len, align 8, !tbaa !13
  br label %do.cond509

do.cond509:                                       ; preds = %if.end507
  br label %do.end510

do.end510:                                        ; preds = %do.cond509
  br label %do.body511

do.body511:                                       ; preds = %do.end510
  %263 = load i64, i64* %len, align 8, !tbaa !13
  %264 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp512 = icmp ult i64 %263, %264
  br i1 %cmp512, label %if.then514, label %if.end521

if.then514:                                       ; preds = %do.body511
  %265 = load i8, i8* %c, align 1, !tbaa !15
  %conv515 = zext i8 %265 to i32
  %shr516 = ashr i32 %conv515, 3
  %and517 = and i32 %shr516, 7
  %add518 = add nsw i32 48, %and517
  %conv519 = trunc i32 %add518 to i8
  %266 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %267 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx520 = getelementptr inbounds i8, i8* %266, i64 %267
  store i8 %conv519, i8* %arrayidx520, align 1, !tbaa !15
  br label %if.end521

if.end521:                                        ; preds = %if.then514, %do.body511
  %268 = load i64, i64* %len, align 8, !tbaa !13
  %inc522 = add i64 %268, 1
  store i64 %inc522, i64* %len, align 8, !tbaa !13
  br label %do.cond523

do.cond523:                                       ; preds = %if.end521
  br label %do.end524

do.end524:                                        ; preds = %do.cond523
  %269 = load i8, i8* %c, align 1, !tbaa !15
  %conv525 = zext i8 %269 to i32
  %and526 = and i32 %conv525, 7
  %add527 = add nsw i32 48, %and526
  %conv528 = trunc i32 %add527 to i8
  store i8 %conv528, i8* %c, align 1, !tbaa !15
  br label %if.end542

if.else529:                                       ; preds = %land.lhs.true448, %for.cond445
  %270 = load i8, i8* %is_right_quote, align 1, !tbaa !11, !range !16
  %tobool530 = trunc i8 %270 to i1
  br i1 %tobool530, label %if.then531, label %if.end541

if.then531:                                       ; preds = %if.else529
  br label %do.body532

do.body532:                                       ; preds = %if.then531
  %271 = load i64, i64* %len, align 8, !tbaa !13
  %272 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp533 = icmp ult i64 %271, %272
  br i1 %cmp533, label %if.then535, label %if.end537

if.then535:                                       ; preds = %do.body532
  %273 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %274 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx536 = getelementptr inbounds i8, i8* %273, i64 %274
  store i8 92, i8* %arrayidx536, align 1, !tbaa !15
  br label %if.end537

if.end537:                                        ; preds = %if.then535, %do.body532
  %275 = load i64, i64* %len, align 8, !tbaa !13
  %inc538 = add i64 %275, 1
  store i64 %inc538, i64* %len, align 8, !tbaa !13
  br label %do.cond539

do.cond539:                                       ; preds = %if.end537
  br label %do.end540

do.end540:                                        ; preds = %do.cond539
  store i8 0, i8* %is_right_quote, align 1, !tbaa !11
  br label %if.end541

if.end541:                                        ; preds = %do.end540, %if.else529
  br label %if.end542

if.end542:                                        ; preds = %if.end541, %do.end524
  %276 = load i64, i64* %ilim, align 8, !tbaa !13
  %277 = load i64, i64* %i, align 8, !tbaa !13
  %add543 = add i64 %277, 1
  %cmp544 = icmp ule i64 %276, %add543
  br i1 %cmp544, label %if.then546, label %if.end547

if.then546:                                       ; preds = %if.end542
  br label %for.end586

if.end547:                                        ; preds = %if.end542
  br label %do.body548

do.body548:                                       ; preds = %if.end547
  %278 = load i8, i8* %pending_shell_escape_end, align 1, !tbaa !11, !range !16
  %tobool549 = trunc i8 %278 to i1
  br i1 %tobool549, label %land.lhs.true551, label %if.end572

land.lhs.true551:                                 ; preds = %do.body548
  %279 = load i8, i8* %escaping, align 1, !tbaa !11, !range !16
  %tobool552 = trunc i8 %279 to i1
  br i1 %tobool552, label %if.end572, label %if.then553

if.then553:                                       ; preds = %land.lhs.true551
  br label %do.body554

do.body554:                                       ; preds = %if.then553
  %280 = load i64, i64* %len, align 8, !tbaa !13
  %281 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp555 = icmp ult i64 %280, %281
  br i1 %cmp555, label %if.then557, label %if.end559

if.then557:                                       ; preds = %do.body554
  %282 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %283 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx558 = getelementptr inbounds i8, i8* %282, i64 %283
  store i8 39, i8* %arrayidx558, align 1, !tbaa !15
  br label %if.end559

if.end559:                                        ; preds = %if.then557, %do.body554
  %284 = load i64, i64* %len, align 8, !tbaa !13
  %inc560 = add i64 %284, 1
  store i64 %inc560, i64* %len, align 8, !tbaa !13
  br label %do.cond561

do.cond561:                                       ; preds = %if.end559
  br label %do.end562

do.end562:                                        ; preds = %do.cond561
  br label %do.body563

do.body563:                                       ; preds = %do.end562
  %285 = load i64, i64* %len, align 8, !tbaa !13
  %286 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp564 = icmp ult i64 %285, %286
  br i1 %cmp564, label %if.then566, label %if.end568

if.then566:                                       ; preds = %do.body563
  %287 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %288 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx567 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8 39, i8* %arrayidx567, align 1, !tbaa !15
  br label %if.end568

if.end568:                                        ; preds = %if.then566, %do.body563
  %289 = load i64, i64* %len, align 8, !tbaa !13
  %inc569 = add i64 %289, 1
  store i64 %inc569, i64* %len, align 8, !tbaa !13
  br label %do.cond570

do.cond570:                                       ; preds = %if.end568
  br label %do.end571

do.end571:                                        ; preds = %do.cond570
  store i8 0, i8* %pending_shell_escape_end, align 1, !tbaa !11
  br label %if.end572

if.end572:                                        ; preds = %do.end571, %land.lhs.true551, %do.body548
  br label %do.cond573

do.cond573:                                       ; preds = %if.end572
  br label %do.end574

do.end574:                                        ; preds = %do.cond573
  br label %do.body575

do.body575:                                       ; preds = %do.end574
  %290 = load i64, i64* %len, align 8, !tbaa !13
  %291 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp576 = icmp ult i64 %290, %291
  br i1 %cmp576, label %if.then578, label %if.end580

if.then578:                                       ; preds = %do.body575
  %292 = load i8, i8* %c, align 1, !tbaa !15
  %293 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %294 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx579 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8 %292, i8* %arrayidx579, align 1, !tbaa !15
  br label %if.end580

if.end580:                                        ; preds = %if.then578, %do.body575
  %295 = load i64, i64* %len, align 8, !tbaa !13
  %inc581 = add i64 %295, 1
  store i64 %inc581, i64* %len, align 8, !tbaa !13
  br label %do.cond582

do.cond582:                                       ; preds = %if.end580
  br label %do.end583

do.end583:                                        ; preds = %do.cond582
  %296 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %297 = load i64, i64* %i, align 8, !tbaa !13
  %inc584 = add i64 %297, 1
  store i64 %inc584, i64* %i, align 8, !tbaa !13
  %arrayidx585 = getelementptr inbounds i8, i8* %296, i64 %inc584
  %298 = load i8, i8* %arrayidx585, align 1, !tbaa !15
  store i8 %298, i8* %c, align 1, !tbaa !15
  br label %for.cond445

for.end586:                                       ; preds = %if.then546
  store i32 44, i32* %cleanup.dest.slot, align 4
  br label %cleanup587

cleanup587:                                       ; preds = %for.end586, %if.then453
  %299 = bitcast i64* %ilim to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %299) #13
  br label %cleanup589

if.end588:                                        ; preds = %land.lhs.true441, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup589

cleanup589:                                       ; preds = %if.end588, %cleanup587, %cleanup431
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %printable) #13
  %300 = bitcast i64* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %300) #13
  %cleanup.dest591 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest591, label %cleanup702 [
    i32 0, label %cleanup.cont592
    i32 44, label %store_c
  ]

cleanup.cont592:                                  ; preds = %cleanup589
  br label %sw.epilog593

sw.epilog593:                                     ; preds = %cleanup.cont592, %sw.bb350, %if.end349, %if.end309, %if.then299, %if.then294, %if.end282, %sw.epilog248, %if.end178
  %301 = load i8, i8* %backslash_escapes, align 1, !tbaa !11, !range !16
  %tobool594 = trunc i8 %301 to i1
  br i1 %tobool594, label %land.lhs.true596, label %lor.lhs.false599

land.lhs.true596:                                 ; preds = %sw.epilog593
  %302 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp597 = icmp ne i32 %302, 2
  br i1 %cmp597, label %land.lhs.true602, label %lor.lhs.false599

lor.lhs.false599:                                 ; preds = %land.lhs.true596, %sw.epilog593
  %303 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool600 = trunc i8 %303 to i1
  br i1 %tobool600, label %land.lhs.true602, label %land.lhs.true611

land.lhs.true602:                                 ; preds = %lor.lhs.false599, %land.lhs.true596
  %304 = load i32*, i32** %quote_these_too.addr, align 8, !tbaa !6
  %tobool603 = icmp ne i32* %304, null
  br i1 %tobool603, label %land.lhs.true604, label %land.lhs.true611

land.lhs.true604:                                 ; preds = %land.lhs.true602
  %305 = load i32*, i32** %quote_these_too.addr, align 8, !tbaa !6
  %306 = load i8, i8* %c, align 1, !tbaa !15
  %conv605 = zext i8 %306 to i64
  %div = udiv i64 %conv605, 32
  %arrayidx606 = getelementptr inbounds i32, i32* %305, i64 %div
  %307 = load i32, i32* %arrayidx606, align 4, !tbaa !2
  %308 = load i8, i8* %c, align 1, !tbaa !15
  %conv607 = zext i8 %308 to i64
  %rem = urem i64 %conv607, 32
  %sh_prom = trunc i64 %rem to i32
  %shr608 = lshr i32 %307, %sh_prom
  %and609 = and i32 %shr608, 1
  %tobool610 = icmp ne i32 %and609, 0
  br i1 %tobool610, label %if.end614, label %land.lhs.true611

land.lhs.true611:                                 ; preds = %land.lhs.true604, %land.lhs.true602, %lor.lhs.false599
  %309 = load i8, i8* %is_right_quote, align 1, !tbaa !11, !range !16
  %tobool612 = trunc i8 %309 to i1
  br i1 %tobool612, label %if.end614, label %if.then613

if.then613:                                       ; preds = %land.lhs.true611
  br label %store_c

if.end614:                                        ; preds = %land.lhs.true611, %land.lhs.true604
  br label %store_escape

store_escape:                                     ; preds = %if.end614, %if.then281
  br label %do.body615

do.body615:                                       ; preds = %store_escape
  %310 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool616 = trunc i8 %310 to i1
  br i1 %tobool616, label %if.then617, label %if.end618

if.then617:                                       ; preds = %do.body615
  store i32 16, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

if.end618:                                        ; preds = %do.body615
  store i8 1, i8* %escaping, align 1, !tbaa !11
  %311 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp619 = icmp eq i32 %311, 2
  br i1 %cmp619, label %land.lhs.true621, label %if.end651

land.lhs.true621:                                 ; preds = %if.end618
  %312 = load i8, i8* %pending_shell_escape_end, align 1, !tbaa !11, !range !16
  %tobool622 = trunc i8 %312 to i1
  br i1 %tobool622, label %if.end651, label %if.then623

if.then623:                                       ; preds = %land.lhs.true621
  br label %do.body624

do.body624:                                       ; preds = %if.then623
  %313 = load i64, i64* %len, align 8, !tbaa !13
  %314 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp625 = icmp ult i64 %313, %314
  br i1 %cmp625, label %if.then627, label %if.end629

if.then627:                                       ; preds = %do.body624
  %315 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %316 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx628 = getelementptr inbounds i8, i8* %315, i64 %316
  store i8 39, i8* %arrayidx628, align 1, !tbaa !15
  br label %if.end629

if.end629:                                        ; preds = %if.then627, %do.body624
  %317 = load i64, i64* %len, align 8, !tbaa !13
  %inc630 = add i64 %317, 1
  store i64 %inc630, i64* %len, align 8, !tbaa !13
  br label %do.cond631

do.cond631:                                       ; preds = %if.end629
  br label %do.end632

do.end632:                                        ; preds = %do.cond631
  br label %do.body633

do.body633:                                       ; preds = %do.end632
  %318 = load i64, i64* %len, align 8, !tbaa !13
  %319 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp634 = icmp ult i64 %318, %319
  br i1 %cmp634, label %if.then636, label %if.end638

if.then636:                                       ; preds = %do.body633
  %320 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %321 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx637 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8 36, i8* %arrayidx637, align 1, !tbaa !15
  br label %if.end638

if.end638:                                        ; preds = %if.then636, %do.body633
  %322 = load i64, i64* %len, align 8, !tbaa !13
  %inc639 = add i64 %322, 1
  store i64 %inc639, i64* %len, align 8, !tbaa !13
  br label %do.cond640

do.cond640:                                       ; preds = %if.end638
  br label %do.end641

do.end641:                                        ; preds = %do.cond640
  br label %do.body642

do.body642:                                       ; preds = %do.end641
  %323 = load i64, i64* %len, align 8, !tbaa !13
  %324 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp643 = icmp ult i64 %323, %324
  br i1 %cmp643, label %if.then645, label %if.end647

if.then645:                                       ; preds = %do.body642
  %325 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %326 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx646 = getelementptr inbounds i8, i8* %325, i64 %326
  store i8 39, i8* %arrayidx646, align 1, !tbaa !15
  br label %if.end647

if.end647:                                        ; preds = %if.then645, %do.body642
  %327 = load i64, i64* %len, align 8, !tbaa !13
  %inc648 = add i64 %327, 1
  store i64 %inc648, i64* %len, align 8, !tbaa !13
  br label %do.cond649

do.cond649:                                       ; preds = %if.end647
  br label %do.end650

do.end650:                                        ; preds = %do.cond649
  store i8 1, i8* %pending_shell_escape_end, align 1, !tbaa !11
  br label %if.end651

if.end651:                                        ; preds = %do.end650, %land.lhs.true621, %if.end618
  br label %do.body652

do.body652:                                       ; preds = %if.end651
  %328 = load i64, i64* %len, align 8, !tbaa !13
  %329 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp653 = icmp ult i64 %328, %329
  br i1 %cmp653, label %if.then655, label %if.end657

if.then655:                                       ; preds = %do.body652
  %330 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %331 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx656 = getelementptr inbounds i8, i8* %330, i64 %331
  store i8 92, i8* %arrayidx656, align 1, !tbaa !15
  br label %if.end657

if.end657:                                        ; preds = %if.then655, %do.body652
  %332 = load i64, i64* %len, align 8, !tbaa !13
  %inc658 = add i64 %332, 1
  store i64 %inc658, i64* %len, align 8, !tbaa !13
  br label %do.cond659

do.cond659:                                       ; preds = %if.end657
  br label %do.end660

do.end660:                                        ; preds = %do.cond659
  br label %do.cond661

do.cond661:                                       ; preds = %do.end660
  br label %do.end662

do.end662:                                        ; preds = %do.cond661
  br label %store_c

store_c:                                          ; preds = %do.end662, %cleanup589, %if.then613, %if.then271, %if.end262
  br label %do.body663

do.body663:                                       ; preds = %store_c
  %333 = load i8, i8* %pending_shell_escape_end, align 1, !tbaa !11, !range !16
  %tobool664 = trunc i8 %333 to i1
  br i1 %tobool664, label %land.lhs.true666, label %if.end687

land.lhs.true666:                                 ; preds = %do.body663
  %334 = load i8, i8* %escaping, align 1, !tbaa !11, !range !16
  %tobool667 = trunc i8 %334 to i1
  br i1 %tobool667, label %if.end687, label %if.then668

if.then668:                                       ; preds = %land.lhs.true666
  br label %do.body669

do.body669:                                       ; preds = %if.then668
  %335 = load i64, i64* %len, align 8, !tbaa !13
  %336 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp670 = icmp ult i64 %335, %336
  br i1 %cmp670, label %if.then672, label %if.end674

if.then672:                                       ; preds = %do.body669
  %337 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %338 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx673 = getelementptr inbounds i8, i8* %337, i64 %338
  store i8 39, i8* %arrayidx673, align 1, !tbaa !15
  br label %if.end674

if.end674:                                        ; preds = %if.then672, %do.body669
  %339 = load i64, i64* %len, align 8, !tbaa !13
  %inc675 = add i64 %339, 1
  store i64 %inc675, i64* %len, align 8, !tbaa !13
  br label %do.cond676

do.cond676:                                       ; preds = %if.end674
  br label %do.end677

do.end677:                                        ; preds = %do.cond676
  br label %do.body678

do.body678:                                       ; preds = %do.end677
  %340 = load i64, i64* %len, align 8, !tbaa !13
  %341 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp679 = icmp ult i64 %340, %341
  br i1 %cmp679, label %if.then681, label %if.end683

if.then681:                                       ; preds = %do.body678
  %342 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %343 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx682 = getelementptr inbounds i8, i8* %342, i64 %343
  store i8 39, i8* %arrayidx682, align 1, !tbaa !15
  br label %if.end683

if.end683:                                        ; preds = %if.then681, %do.body678
  %344 = load i64, i64* %len, align 8, !tbaa !13
  %inc684 = add i64 %344, 1
  store i64 %inc684, i64* %len, align 8, !tbaa !13
  br label %do.cond685

do.cond685:                                       ; preds = %if.end683
  br label %do.end686

do.end686:                                        ; preds = %do.cond685
  store i8 0, i8* %pending_shell_escape_end, align 1, !tbaa !11
  br label %if.end687

if.end687:                                        ; preds = %do.end686, %land.lhs.true666, %do.body663
  br label %do.cond688

do.cond688:                                       ; preds = %if.end687
  br label %do.end689

do.end689:                                        ; preds = %do.cond688
  br label %do.body690

do.body690:                                       ; preds = %do.end689
  %345 = load i64, i64* %len, align 8, !tbaa !13
  %346 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp691 = icmp ult i64 %345, %346
  br i1 %cmp691, label %if.then693, label %if.end695

if.then693:                                       ; preds = %do.body690
  %347 = load i8, i8* %c, align 1, !tbaa !15
  %348 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %349 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx694 = getelementptr inbounds i8, i8* %348, i64 %349
  store i8 %347, i8* %arrayidx694, align 1, !tbaa !15
  br label %if.end695

if.end695:                                        ; preds = %if.then693, %do.body690
  %350 = load i64, i64* %len, align 8, !tbaa !13
  %inc696 = add i64 %350, 1
  store i64 %inc696, i64* %len, align 8, !tbaa !13
  br label %do.cond697

do.cond697:                                       ; preds = %if.end695
  br label %do.end698

do.end698:                                        ; preds = %do.cond697
  %351 = load i8, i8* %c_and_shell_quote_compat, align 1, !tbaa !11, !range !16
  %tobool699 = trunc i8 %351 to i1
  br i1 %tobool699, label %if.end701, label %if.then700

if.then700:                                       ; preds = %do.end698
  store i8 0, i8* %all_c_and_shell_quote_compat, align 1, !tbaa !11
  br label %if.end701

if.end701:                                        ; preds = %if.then700, %do.end698
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup702

cleanup702:                                       ; preds = %if.then617, %if.then315, %if.then308, %if.then278, %if.then261, %if.then203, %if.then182, %if.then90, %if.then80, %if.end701, %cleanup589, %if.then176
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %c_and_shell_quote_compat) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %escaping) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %is_right_quote) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %esc) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %c) #13
  %cleanup.dest707 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest707, label %cleanup775 [
    i32 0, label %cleanup.cont708
    i32 15, label %for.inc709
    i32 16, label %force_outer_quoting_style
  ]

cleanup.cont708:                                  ; preds = %cleanup702
  br label %for.inc709

for.inc709:                                       ; preds = %cleanup.cont708, %cleanup702
  %352 = load i64, i64* %i, align 8, !tbaa !13
  %inc710 = add i64 %352, 1
  store i64 %inc710, i64* %i, align 8, !tbaa !13
  br label %for.cond46

for.end711:                                       ; preds = %cond.end
  %353 = load i64, i64* %len, align 8, !tbaa !13
  %cmp712 = icmp eq i64 %353, 0
  br i1 %cmp712, label %land.lhs.true714, label %if.end721

land.lhs.true714:                                 ; preds = %for.end711
  %354 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp715 = icmp eq i32 %354, 2
  br i1 %cmp715, label %land.lhs.true717, label %if.end721

land.lhs.true717:                                 ; preds = %land.lhs.true714
  %355 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool718 = trunc i8 %355 to i1
  br i1 %tobool718, label %if.then720, label %if.end721

if.then720:                                       ; preds = %land.lhs.true717
  br label %force_outer_quoting_style

if.end721:                                        ; preds = %land.lhs.true717, %land.lhs.true714, %for.end711
  %356 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp722 = icmp eq i32 %356, 2
  br i1 %cmp722, label %land.lhs.true724, label %if.end740

land.lhs.true724:                                 ; preds = %if.end721
  %357 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool725 = trunc i8 %357 to i1
  br i1 %tobool725, label %if.end740, label %land.lhs.true726

land.lhs.true726:                                 ; preds = %land.lhs.true724
  %358 = load i8, i8* %encountered_single_quote, align 1, !tbaa !11, !range !16
  %tobool727 = trunc i8 %358 to i1
  br i1 %tobool727, label %if.then729, label %if.end740

if.then729:                                       ; preds = %land.lhs.true726
  %359 = load i8, i8* %all_c_and_shell_quote_compat, align 1, !tbaa !11, !range !16
  %tobool730 = trunc i8 %359 to i1
  br i1 %tobool730, label %if.then731, label %if.else733

if.then731:                                       ; preds = %if.then729
  %360 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %361 = load i64, i64* %orig_buffersize, align 8, !tbaa !13
  %362 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %363 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %364 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %365 = load i32*, i32** %quote_these_too.addr, align 8, !tbaa !6
  %366 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  %367 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  %call732 = call i64 @quotearg_buffer_restyled(i8* %360, i64 %361, i8* %362, i64 %363, i32 5, i32 %364, i32* %365, i8* %366, i8* %367)
  store i64 %call732, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup775

if.else733:                                       ; preds = %if.then729
  %368 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %tobool734 = icmp ne i64 %368, 0
  br i1 %tobool734, label %if.end738, label %land.lhs.true735

land.lhs.true735:                                 ; preds = %if.else733
  %369 = load i64, i64* %orig_buffersize, align 8, !tbaa !13
  %tobool736 = icmp ne i64 %369, 0
  br i1 %tobool736, label %if.then737, label %if.end738

if.then737:                                       ; preds = %land.lhs.true735
  %370 = load i64, i64* %orig_buffersize, align 8, !tbaa !13
  store i64 %370, i64* %buffersize.addr, align 8, !tbaa !13
  store i64 0, i64* %len, align 8, !tbaa !13
  br label %process_input

if.end738:                                        ; preds = %land.lhs.true735, %if.else733
  br label %if.end739

if.end739:                                        ; preds = %if.end738
  br label %if.end740

if.end740:                                        ; preds = %if.end739, %land.lhs.true726, %land.lhs.true724, %if.end721
  %371 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %tobool741 = icmp ne i8* %371, null
  br i1 %tobool741, label %land.lhs.true742, label %if.end760

land.lhs.true742:                                 ; preds = %if.end740
  %372 = load i8, i8* %elide_outer_quotes, align 1, !tbaa !11, !range !16
  %tobool743 = trunc i8 %372 to i1
  br i1 %tobool743, label %if.end760, label %if.then744

if.then744:                                       ; preds = %land.lhs.true742
  br label %for.cond745

for.cond745:                                      ; preds = %for.inc757, %if.then744
  %373 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %374 = load i8, i8* %373, align 1, !tbaa !15
  %tobool746 = icmp ne i8 %374, 0
  br i1 %tobool746, label %for.body747, label %for.end759

for.body747:                                      ; preds = %for.cond745
  br label %do.body748

do.body748:                                       ; preds = %for.body747
  %375 = load i64, i64* %len, align 8, !tbaa !13
  %376 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp749 = icmp ult i64 %375, %376
  br i1 %cmp749, label %if.then751, label %if.end753

if.then751:                                       ; preds = %do.body748
  %377 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %378 = load i8, i8* %377, align 1, !tbaa !15
  %379 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %380 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx752 = getelementptr inbounds i8, i8* %379, i64 %380
  store i8 %378, i8* %arrayidx752, align 1, !tbaa !15
  br label %if.end753

if.end753:                                        ; preds = %if.then751, %do.body748
  %381 = load i64, i64* %len, align 8, !tbaa !13
  %inc754 = add i64 %381, 1
  store i64 %inc754, i64* %len, align 8, !tbaa !13
  br label %do.cond755

do.cond755:                                       ; preds = %if.end753
  br label %do.end756

do.end756:                                        ; preds = %do.cond755
  br label %for.inc757

for.inc757:                                       ; preds = %do.end756
  %382 = load i8*, i8** %quote_string, align 8, !tbaa !6
  %incdec.ptr758 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %incdec.ptr758, i8** %quote_string, align 8, !tbaa !6
  br label %for.cond745

for.end759:                                       ; preds = %for.cond745
  br label %if.end760

if.end760:                                        ; preds = %for.end759, %land.lhs.true742, %if.end740
  %383 = load i64, i64* %len, align 8, !tbaa !13
  %384 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %cmp761 = icmp ult i64 %383, %384
  br i1 %cmp761, label %if.then763, label %if.end765

if.then763:                                       ; preds = %if.end760
  %385 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %386 = load i64, i64* %len, align 8, !tbaa !13
  %arrayidx764 = getelementptr inbounds i8, i8* %385, i64 %386
  store i8 0, i8* %arrayidx764, align 1, !tbaa !15
  br label %if.end765

if.end765:                                        ; preds = %if.then763, %if.end760
  %387 = load i64, i64* %len, align 8, !tbaa !13
  store i64 %387, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup775

force_outer_quoting_style:                        ; preds = %cleanup702, %if.then720
  %388 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %cmp766 = icmp eq i32 %388, 2
  br i1 %cmp766, label %land.lhs.true768, label %if.end772

land.lhs.true768:                                 ; preds = %force_outer_quoting_style
  %389 = load i8, i8* %backslash_escapes, align 1, !tbaa !11, !range !16
  %tobool769 = trunc i8 %389 to i1
  br i1 %tobool769, label %if.then771, label %if.end772

if.then771:                                       ; preds = %land.lhs.true768
  store i32 4, i32* %quoting_style.addr, align 4, !tbaa !15
  br label %if.end772

if.end772:                                        ; preds = %if.then771, %land.lhs.true768, %force_outer_quoting_style
  %390 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  %391 = load i64, i64* %buffersize.addr, align 8, !tbaa !13
  %392 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %393 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %394 = load i32, i32* %quoting_style.addr, align 4, !tbaa !15
  %395 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and773 = and i32 %395, -3
  %396 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  %397 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  %call774 = call i64 @quotearg_buffer_restyled(i8* %390, i64 %391, i8* %392, i64 %393, i32 %394, i32 %and773, i32* null, i8* %396, i8* %397)
  store i64 %call774, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup775

cleanup775:                                       ; preds = %if.end772, %if.end765, %if.then731, %cleanup702
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %all_c_and_shell_quote_compat) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %encountered_single_quote) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %pending_shell_escape_end) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %elide_outer_quotes) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %unibyte_locale) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %backslash_escapes) #13
  %398 = bitcast i64* %quote_string_len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %398) #13
  %399 = bitcast i8** %quote_string to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %399) #13
  %400 = bitcast i64* %orig_buffersize to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %400) #13
  %401 = bitcast i64* %len to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %401) #13
  %402 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %402) #13
  %403 = load i64, i64* %retval, align 8
  ret i64 %403
}

; Function Attrs: nounwind
declare dso_local i64 @__ctype_get_mb_cur_max() #6

; Function Attrs: nounwind uwtable
define internal i8* @gettext_quote(i8* %msgid, i32 %s) #7 {
entry:
  %retval = alloca i8*, align 8
  %msgid.addr = alloca i8*, align 8
  %s.addr = alloca i32, align 4
  %translation = alloca i8*, align 8
  %locale_code = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %msgid, i8** %msgid.addr, align 8, !tbaa !6
  store i32 %s, i32* %s.addr, align 4, !tbaa !15
  %0 = bitcast i8** %translation to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %msgid.addr, align 8, !tbaa !6
  store i8* %1, i8** %translation, align 8, !tbaa !6
  %2 = bitcast i8** %locale_code to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load i8*, i8** %translation, align 8, !tbaa !6
  %4 = load i8*, i8** %msgid.addr, align 8, !tbaa !6
  %cmp = icmp ne i8* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %translation, align 8, !tbaa !6
  store i8* %5, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i8* @locale_charset()
  store i8* %call, i8** %locale_code, align 8, !tbaa !6
  %6 = load i8*, i8** %locale_code, align 8, !tbaa !6
  %call1 = call i32 @c_strcasecmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13.96, i64 0, i64 0)) #21
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %7 = load i8*, i8** %msgid.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, 96
  %9 = zext i1 %cmp4 to i64
  %cond = select i1 %cmp4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.97, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.98, i64 0, i64 0)
  store i8* %cond, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = load i8*, i8** %locale_code, align 8, !tbaa !6
  %call7 = call i32 @c_strcasecmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.99, i64 0, i64 0)) #21
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end6
  %11 = load i8*, i8** %msgid.addr, align 8, !tbaa !6
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx11, align 1, !tbaa !15
  %conv12 = sext i8 %12 to i32
  %cmp13 = icmp eq i32 %conv12, 96
  %13 = zext i1 %cmp13 to i64
  %cond15 = select i1 %cmp13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.100, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.101, i64 0, i64 0)
  store i8* %cond15, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %14 = load i32, i32* %s.addr, align 4, !tbaa !15
  %cmp17 = icmp eq i32 %14, 9
  %15 = zext i1 %cmp17 to i64
  %cond19 = select i1 %cmp17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.93, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0)
  store i8* %cond19, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10, %if.then3, %if.then
  %16 = bitcast i8** %locale_code to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #13
  %17 = bitcast i8** %translation to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #13
  %18 = load i8*, i8** %retval, align 8
  ret i8* %18
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #8

; Function Attrs: nounwind
declare dso_local i32 @iswprint(i32) #6

; Function Attrs: nounwind readonly
declare dso_local i32 @mbsinit(%struct.__mbstate_t*) #5

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* %arg, i64 %argsize, %struct.quoting_options* %o) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %1 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %call = call noalias nonnull i8* @quotearg_alloc_mem(i8* %0, i64 %1, i64* null, %struct.quoting_options* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* %arg, i64 %argsize, i64* %size, %struct.quoting_options* %o) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %size.addr = alloca i64*, align 8
  %o.addr = alloca %struct.quoting_options*, align 8
  %p = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %flags = alloca i32, align 4
  %bufsize = alloca i64, align 8
  %buf = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  store i64* %size, i64** %size.addr, align 8, !tbaa !6
  store %struct.quoting_options* %o, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %0 = bitcast %struct.quoting_options** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.quoting_options* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.quoting_options*, %struct.quoting_options** %o.addr, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.quoting_options* [ %2, %cond.true ], [ @default_quoting_options, %cond.false ]
  store %struct.quoting_options* %cond, %struct.quoting_options** %p, align 8, !tbaa !6
  %3 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #13
  %call = call i32* @__errno_location() #22
  %4 = load i32, i32* %call, align 4, !tbaa !2
  store i32 %4, i32* %e, align 4, !tbaa !2
  %5 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #13
  %6 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %flags1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i32 0, i32 1
  %7 = load i32, i32* %flags1, align 4, !tbaa !27
  %8 = load i64*, i64** %size.addr, align 8, !tbaa !6
  %tobool2 = icmp ne i64* %8, null
  %9 = zext i1 %tobool2 to i64
  %cond3 = select i1 %tobool2, i32 0, i32 1
  %or = or i32 %7, %cond3
  store i32 %or, i32* %flags, align 4, !tbaa !2
  %10 = bitcast i64* %bufsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #13
  %11 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %12 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %13 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %13, i32 0, i32 0
  %14 = load i32, i32* %style, align 8, !tbaa !25
  %15 = load i32, i32* %flags, align 4, !tbaa !2
  %16 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %16, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %17 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %17, i32 0, i32 3
  %18 = load i8*, i8** %left_quote, align 8, !tbaa !28
  %19 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %19, i32 0, i32 4
  %20 = load i8*, i8** %right_quote, align 8, !tbaa !29
  %call4 = call i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %11, i64 %12, i32 %14, i32 %15, i32* %arraydecay, i8* %18, i8* %20)
  %add = add i64 %call4, 1
  store i64 %add, i64* %bufsize, align 8, !tbaa !13
  %21 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #13
  %22 = load i64, i64* %bufsize, align 8, !tbaa !13
  %call5 = call noalias nonnull i8* @xcharalloc(i64 %22) #24
  store i8* %call5, i8** %buf, align 8, !tbaa !6
  %23 = load i8*, i8** %buf, align 8, !tbaa !6
  %24 = load i64, i64* %bufsize, align 8, !tbaa !13
  %25 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %26 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %27 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %style6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %27, i32 0, i32 0
  %28 = load i32, i32* %style6, align 8, !tbaa !25
  %29 = load i32, i32* %flags, align 4, !tbaa !2
  %30 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %quote_these_too7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %30, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too7, i64 0, i64 0
  %31 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %left_quote9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %31, i32 0, i32 3
  %32 = load i8*, i8** %left_quote9, align 8, !tbaa !28
  %33 = load %struct.quoting_options*, %struct.quoting_options** %p, align 8, !tbaa !6
  %right_quote10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %33, i32 0, i32 4
  %34 = load i8*, i8** %right_quote10, align 8, !tbaa !29
  %call11 = call i64 @quotearg_buffer_restyled(i8* %23, i64 %24, i8* %25, i64 %26, i32 %28, i32 %29, i32* %arraydecay8, i8* %32, i8* %34)
  %35 = load i32, i32* %e, align 4, !tbaa !2
  %call12 = call i32* @__errno_location() #22
  store i32 %35, i32* %call12, align 4, !tbaa !2
  %36 = load i64*, i64** %size.addr, align 8, !tbaa !6
  %tobool13 = icmp ne i64* %36, null
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %37 = load i64, i64* %bufsize, align 8, !tbaa !13
  %sub = sub i64 %37, 1
  %38 = load i64*, i64** %size.addr, align 8, !tbaa !6
  store i64 %sub, i64* %38, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %39 = load i8*, i8** %buf, align 8, !tbaa !6
  %40 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #13
  %41 = bitcast i64* %bufsize to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #13
  %42 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #13
  %43 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #13
  %44 = bitcast %struct.quoting_options** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #13
  ret i8* %39
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() #7 {
entry:
  %sv = alloca %struct.slotvec*, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct.slotvec** %sv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !6
  store %struct.slotvec* %1, %struct.slotvec** %sv, align 8, !tbaa !6
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #13
  store i32 1, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load i32, i32* @nslots, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %5, i64 %idxprom
  %val = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 1
  %7 = load i8*, i8** %val, align 8, !tbaa !32
  call void @rpl_free(i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %9, i64 0
  %val2 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx1, i32 0, i32 1
  %10 = load i8*, i8** %val2, align 8, !tbaa !32
  %cmp3 = icmp ne i8* %10, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %11 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %arrayidx4 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %11, i64 0
  %val5 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx4, i32 0, i32 1
  %12 = load i8*, i8** %val5, align 8, !tbaa !32
  call void @rpl_free(i8* %12)
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 0), align 8, !tbaa !34
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i32 0, i32 1), align 8, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %13 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %cmp6 = icmp ne %struct.slotvec* %13, @slotvec0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %14 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %15 = bitcast %struct.slotvec* %14 to i8*
  call void @rpl_free(i8* %15)
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !tbaa !6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  store i32 1, i32* @nslots, align 4, !tbaa !2
  %16 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #13
  %17 = bitcast %struct.slotvec** %sv to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 %n, i8* %arg) #7 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = load i32, i32* %n.addr, align 4, !tbaa !2
  %1 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal i8* @quotearg_n_options(i32 %n, i8* %arg, i64 %argsize, %struct.quoting_options* %options) #7 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %options.addr = alloca %struct.quoting_options*, align 8
  %e = alloca i32, align 4
  %sv = alloca %struct.slotvec*, align 8
  %nslots_max = alloca i32, align 4
  %preallocated = alloca i8, align 1
  %new_nslots = alloca i64, align 8
  %size = alloca i64, align 8
  %val = alloca i8*, align 8
  %flags = alloca i32, align 4
  %qsize = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  store %struct.quoting_options* %options, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %0 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %call = call i32* @__errno_location() #22
  %1 = load i32, i32* %call, align 4, !tbaa !2
  store i32 %1, i32* %e, align 4, !tbaa !2
  %2 = bitcast %struct.slotvec** %sv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !tbaa !6
  store %struct.slotvec* %3, %struct.slotvec** %sv, align 8, !tbaa !6
  %4 = bitcast i32* %nslots_max to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #13
  store i32 2147483647, i32* %nslots_max, align 4, !tbaa !2
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp sle i32 0, %5
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %n.addr, align 4, !tbaa !2
  %7 = load i32, i32* %nslots_max, align 4, !tbaa !2
  %cmp1 = icmp slt i32 %6, %7
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  call void @abort() #20
  unreachable

if.end:                                           ; preds = %land.lhs.true
  %8 = load i32, i32* @nslots, align 4, !tbaa !2
  %9 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp2 = icmp sle i32 %8, %9
  br i1 %cmp2, label %if.then3, label %if.end15

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %preallocated) #13
  %10 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %cmp4 = icmp eq %struct.slotvec* %10, @slotvec0
  %frombool = zext i1 %cmp4 to i8
  store i8 %frombool, i8* %preallocated, align 1, !tbaa !11
  %11 = bitcast i64* %new_nslots to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #13
  %12 = load i32, i32* @nslots, align 4, !tbaa !2
  %conv = sext i32 %12 to i64
  store i64 %conv, i64* %new_nslots, align 8, !tbaa !13
  %13 = load i8, i8* %preallocated, align 1, !tbaa !11, !range !16
  %tobool = trunc i8 %13 to i1
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  %14 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.slotvec* [ null, %cond.true ], [ %14, %cond.false ]
  %15 = bitcast %struct.slotvec* %cond to i8*
  %16 = load i32, i32* %n.addr, align 4, !tbaa !2
  %17 = load i32, i32* @nslots, align 4, !tbaa !2
  %sub = sub nsw i32 %16, %17
  %add = add nsw i32 %sub, 1
  %conv6 = sext i32 %add to i64
  %18 = load i32, i32* %nslots_max, align 4, !tbaa !2
  %conv7 = sext i32 %18 to i64
  %call8 = call nonnull i8* @xpalloc(i8* %15, i64* %new_nslots, i64 %conv6, i64 %conv7, i64 16)
  %19 = bitcast i8* %call8 to %struct.slotvec*
  store %struct.slotvec* %19, %struct.slotvec** %sv, align 8, !tbaa !6
  store %struct.slotvec* %19, %struct.slotvec** @slotvec, align 8, !tbaa !6
  %20 = load i8, i8* %preallocated, align 1, !tbaa !11, !range !16
  %tobool9 = trunc i8 %20 to i1
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %cond.end
  %21 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %22 = bitcast %struct.slotvec* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !tbaa.struct !35
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %cond.end
  %23 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %24 = load i32, i32* @nslots, align 4, !tbaa !2
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds %struct.slotvec, %struct.slotvec* %23, i64 %idx.ext
  %25 = bitcast %struct.slotvec* %add.ptr to i8*
  %26 = load i64, i64* %new_nslots, align 8, !tbaa !13
  %27 = load i32, i32* @nslots, align 4, !tbaa !2
  %conv12 = sext i32 %27 to i64
  %sub13 = sub nsw i64 %26, %conv12
  %mul = mul i64 %sub13, 16
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 %mul, i1 false)
  %28 = load i64, i64* %new_nslots, align 8, !tbaa !13
  %conv14 = trunc i64 %28 to i32
  store i32 %conv14, i32* @nslots, align 4, !tbaa !2
  %29 = bitcast i64* %new_nslots to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %preallocated) #13
  br label %if.end15

if.end15:                                         ; preds = %if.end11, %if.end
  %30 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #13
  %31 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %32 = load i32, i32* %n.addr, align 4, !tbaa !2
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds %struct.slotvec, %struct.slotvec* %31, i64 %idxprom
  %size16 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx, i32 0, i32 0
  %33 = load i64, i64* %size16, align 8, !tbaa !34
  store i64 %33, i64* %size, align 8, !tbaa !13
  %34 = bitcast i8** %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %34) #13
  %35 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %36 = load i32, i32* %n.addr, align 4, !tbaa !2
  %idxprom17 = sext i32 %36 to i64
  %arrayidx18 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %idxprom17
  %val19 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx18, i32 0, i32 1
  %37 = load i8*, i8** %val19, align 8, !tbaa !32
  store i8* %37, i8** %val, align 8, !tbaa !6
  %38 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #13
  %39 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %flags20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %39, i32 0, i32 1
  %40 = load i32, i32* %flags20, align 4, !tbaa !27
  %or = or i32 %40, 1
  store i32 %or, i32* %flags, align 4, !tbaa !2
  %41 = bitcast i64* %qsize to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41) #13
  %42 = load i8*, i8** %val, align 8, !tbaa !6
  %43 = load i64, i64* %size, align 8, !tbaa !13
  %44 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %45 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %46 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %style = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %46, i32 0, i32 0
  %47 = load i32, i32* %style, align 8, !tbaa !25
  %48 = load i32, i32* %flags, align 4, !tbaa !2
  %49 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %quote_these_too = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %49, i32 0, i32 2
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too, i64 0, i64 0
  %50 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %left_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %50, i32 0, i32 3
  %51 = load i8*, i8** %left_quote, align 8, !tbaa !28
  %52 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %right_quote = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %52, i32 0, i32 4
  %53 = load i8*, i8** %right_quote, align 8, !tbaa !29
  %call21 = call i64 @quotearg_buffer_restyled(i8* %42, i64 %43, i8* %44, i64 %45, i32 %47, i32 %48, i32* %arraydecay, i8* %51, i8* %53)
  store i64 %call21, i64* %qsize, align 8, !tbaa !13
  %54 = load i64, i64* %size, align 8, !tbaa !13
  %55 = load i64, i64* %qsize, align 8, !tbaa !13
  %cmp22 = icmp ule i64 %54, %55
  br i1 %cmp22, label %if.then24, label %if.end43

if.then24:                                        ; preds = %if.end15
  %56 = load i64, i64* %qsize, align 8, !tbaa !13
  %add25 = add i64 %56, 1
  store i64 %add25, i64* %size, align 8, !tbaa !13
  %57 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %58 = load i32, i32* %n.addr, align 4, !tbaa !2
  %idxprom26 = sext i32 %58 to i64
  %arrayidx27 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %57, i64 %idxprom26
  %size28 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx27, i32 0, i32 0
  store i64 %add25, i64* %size28, align 8, !tbaa !34
  %59 = load i8*, i8** %val, align 8, !tbaa !6
  %cmp29 = icmp ne i8* %59, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0)
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then24
  %60 = load i8*, i8** %val, align 8, !tbaa !6
  call void @rpl_free(i8* %60)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.then24
  %61 = load i64, i64* %size, align 8, !tbaa !13
  %call33 = call noalias nonnull i8* @xcharalloc(i64 %61) #24
  store i8* %call33, i8** %val, align 8, !tbaa !6
  %62 = load %struct.slotvec*, %struct.slotvec** %sv, align 8, !tbaa !6
  %63 = load i32, i32* %n.addr, align 4, !tbaa !2
  %idxprom34 = sext i32 %63 to i64
  %arrayidx35 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %62, i64 %idxprom34
  %val36 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %arrayidx35, i32 0, i32 1
  store i8* %call33, i8** %val36, align 8, !tbaa !32
  %64 = load i8*, i8** %val, align 8, !tbaa !6
  %65 = load i64, i64* %size, align 8, !tbaa !13
  %66 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %67 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %68 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %style37 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %68, i32 0, i32 0
  %69 = load i32, i32* %style37, align 8, !tbaa !25
  %70 = load i32, i32* %flags, align 4, !tbaa !2
  %71 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %quote_these_too38 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %71, i32 0, i32 2
  %arraydecay39 = getelementptr inbounds [8 x i32], [8 x i32]* %quote_these_too38, i64 0, i64 0
  %72 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %left_quote40 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %72, i32 0, i32 3
  %73 = load i8*, i8** %left_quote40, align 8, !tbaa !28
  %74 = load %struct.quoting_options*, %struct.quoting_options** %options.addr, align 8, !tbaa !6
  %right_quote41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %74, i32 0, i32 4
  %75 = load i8*, i8** %right_quote41, align 8, !tbaa !29
  %call42 = call i64 @quotearg_buffer_restyled(i8* %64, i64 %65, i8* %66, i64 %67, i32 %69, i32 %70, i32* %arraydecay39, i8* %73, i8* %75)
  br label %if.end43

if.end43:                                         ; preds = %if.end32, %if.end15
  %76 = load i32, i32* %e, align 4, !tbaa !2
  %call44 = call i32* @__errno_location() #22
  store i32 %76, i32* %call44, align 4, !tbaa !2
  %77 = load i8*, i8** %val, align 8, !tbaa !6
  %78 = bitcast i64* %qsize to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %78) #13
  %79 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #13
  %80 = bitcast i8** %val to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %80) #13
  %81 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #13
  %82 = bitcast i32* %nslots_max to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #13
  %83 = bitcast %struct.slotvec** %sv to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #13
  %84 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %84) #13
  ret i8* %77
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 %n, i8* %arg, i64 %argsize) #7 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = load i32, i32* %n.addr, align 4, !tbaa !2
  %1 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %2 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* @default_quoting_options)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* %arg) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quotearg_n(i32 0, i8* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* %arg, i64 %argsize) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %1 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quotearg_n_mem(i32 0, i8* %0, i64 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 %n, i32 %s, i8* %arg) #7 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i32 %s, i32* %s.addr, align 4, !tbaa !15
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %0) #13
  %1 = load i32, i32* %s.addr, align 4, !tbaa !15
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %1)
  %2 = load i32, i32* %n.addr, align 4, !tbaa !2
  %3 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quotearg_n_options(i32 %2, i8* %3, i64 -1, %struct.quoting_options* %o)
  %4 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %4) #13
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @quoting_options_from_style(%struct.quoting_options* noalias sret %agg.result, i32 %style) #7 {
entry:
  %style.addr = alloca i32, align 4
  store i32 %style, i32* %style.addr, align 4, !tbaa !15
  %0 = bitcast %struct.quoting_options* %agg.result to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false)
  %1 = load i32, i32* %style.addr, align 4, !tbaa !15
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #20
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %style.addr, align 4, !tbaa !15
  %style1 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %agg.result, i32 0, i32 0
  store i32 %2, i32* %style1, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 %n, i32 %s, i8* %arg, i64 %argsize) #7 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i32 %s, i32* %s.addr, align 4, !tbaa !15
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %0) #13
  %1 = load i32, i32* %s.addr, align 4, !tbaa !15
  call void @quoting_options_from_style(%struct.quoting_options* sret %o, i32 %1)
  %2 = load i32, i32* %n.addr, align 4, !tbaa !2
  %3 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %4 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quotearg_n_options(i32 %2, i8* %3, i64 %4, %struct.quoting_options* %o)
  %5 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %5) #13
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 %s, i8* %arg) #7 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %s, i32* %s.addr, align 4, !tbaa !15
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = load i32, i32* %s.addr, align 4, !tbaa !15
  %1 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quotearg_n_style(i32 0, i32 %0, i8* %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 %s, i8* %arg, i64 %argsize) #7 {
entry:
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %s, i32* %s.addr, align 4, !tbaa !15
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = load i32, i32* %s.addr, align 4, !tbaa !15
  %1 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %2 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quotearg_n_style_mem(i32 0, i32 %0, i8* %1, i64 %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* %arg, i64 %argsize, i8 signext %ch) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %ch.addr = alloca i8, align 1
  %options = alloca %struct.quoting_options, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  store i8 %ch, i8* %ch.addr, align 1, !tbaa !15
  %0 = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %0) #13
  %1 = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !36
  %2 = load i8, i8* %ch.addr, align 1, !tbaa !15
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext %2, i32 1)
  %3 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %4 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call1 = call i8* @quotearg_n_options(i32 0, i8* %3, i64 %4, %struct.quoting_options* %options)
  %5 = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %5) #13
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* %arg, i8 signext %ch) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  %ch.addr = alloca i8, align 1
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i8 %ch, i8* %ch.addr, align 1, !tbaa !15
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %1 = load i8, i8* %ch.addr, align 1, !tbaa !15
  %call = call i8* @quotearg_char_mem(i8* %0, i64 -1, i8 signext %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* %arg) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quotearg_char(i8* %0, i8 signext 58)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* %arg, i64 %argsize) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %1 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quotearg_char_mem(i8* %0, i64 %1, i8 signext 58)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 %n, i32 %s, i8* %arg) #7 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %options = alloca %struct.quoting_options, align 8
  %tmp = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i32 %s, i32* %s.addr, align 4, !tbaa !15
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %0) #13
  %1 = bitcast %struct.quoting_options* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %1) #13
  %2 = load i32, i32* %s.addr, align 4, !tbaa !15
  call void @quoting_options_from_style(%struct.quoting_options* sret %tmp, i32 %2)
  %3 = bitcast %struct.quoting_options* %options to i8*
  %4 = bitcast %struct.quoting_options* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 56, i1 false), !tbaa.struct !36
  %5 = bitcast %struct.quoting_options* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %5) #13
  %call = call i32 @set_char_quoting(%struct.quoting_options* %options, i8 signext 58, i32 1)
  %6 = load i32, i32* %n.addr, align 4, !tbaa !2
  %7 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call1 = call i8* @quotearg_n_options(i32 %6, i8* %7, i64 -1, %struct.quoting_options* %options)
  %8 = bitcast %struct.quoting_options* %options to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %8) #13
  ret i8* %call1
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg) #7 {
entry:
  %n.addr = alloca i32, align 4
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i8* %left_quote, i8** %left_quote.addr, align 8, !tbaa !6
  store i8* %right_quote, i8** %right_quote.addr, align 8, !tbaa !6
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = load i32, i32* %n.addr, align 4, !tbaa !2
  %1 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  %3 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quotearg_n_custom_mem(i32 %0, i8* %1, i8* %2, i8* %3, i64 -1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 %n, i8* %left_quote, i8* %right_quote, i8* %arg, i64 %argsize) #7 {
entry:
  %n.addr = alloca i32, align 4
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  %o = alloca %struct.quoting_options, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i8* %left_quote, i8** %left_quote.addr, align 8, !tbaa !6
  store i8* %right_quote, i8** %right_quote.addr, align 8, !tbaa !6
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.lifetime.start.p0i8(i64 56, i8* %0) #13
  %1 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !tbaa.struct !36
  %2 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  %3 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  call void @set_custom_quoting(%struct.quoting_options* %o, i8* %2, i8* %3)
  %4 = load i32, i32* %n.addr, align 4, !tbaa !2
  %5 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %6 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quotearg_n_options(i32 %4, i8* %5, i64 %6, %struct.quoting_options* %o)
  %7 = bitcast %struct.quoting_options* %o to i8*
  call void @llvm.lifetime.end.p0i8(i64 56, i8* %7) #13
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* %left_quote, i8* %right_quote, i8* %arg) #7 {
entry:
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8, !tbaa !6
  store i8* %right_quote, i8** %right_quote.addr, align 8, !tbaa !6
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  %1 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quotearg_n_custom(i32 0, i8* %0, i8* %1, i8* %2)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* %left_quote, i8* %right_quote, i8* %arg, i64 %argsize) #7 {
entry:
  %left_quote.addr = alloca i8*, align 8
  %right_quote.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %left_quote, i8** %left_quote.addr, align 8, !tbaa !6
  store i8* %right_quote, i8** %right_quote.addr, align 8, !tbaa !6
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = load i8*, i8** %left_quote.addr, align 8, !tbaa !6
  %1 = load i8*, i8** %right_quote.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %3 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quotearg_n_custom_mem(i32 0, i8* %0, i8* %1, i8* %2, i64 %3)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 %n, i8* %arg, i64 %argsize) #7 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = load i32, i32* %n.addr, align 4, !tbaa !2
  %1 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %2 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* @quote_quoting_options)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* %arg, i64 %argsize) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  %argsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  store i64 %argsize, i64* %argsize.addr, align 8, !tbaa !13
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %1 = load i64, i64* %argsize.addr, align 8, !tbaa !13
  %call = call i8* @quote_n_mem(i32 0, i8* %0, i64 %1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 %n, i8* %arg) #7 {
entry:
  %n.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = load i32, i32* %n.addr, align 4, !tbaa !2
  %1 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quote_n_mem(i32 %0, i8* %1, i64 -1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* %arg) #7 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %arg.addr, align 8, !tbaa !6
  %call = call i8* @quote_n(i32 0, i8* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.randint_source* @randint_new(%struct.randread_source* nonnull %source) #7 {
entry:
  %source.addr = alloca %struct.randread_source*, align 8
  %s = alloca %struct.randint_source*, align 8
  store %struct.randread_source* %source, %struct.randread_source** %source.addr, align 8, !tbaa !6
  %0 = bitcast %struct.randint_source** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %call = call noalias nonnull i8* @xmalloc(i64 24) #24
  %1 = bitcast i8* %call to %struct.randint_source*
  store %struct.randint_source* %1, %struct.randint_source** %s, align 8, !tbaa !6
  %2 = load %struct.randread_source*, %struct.randread_source** %source.addr, align 8, !tbaa !6
  %3 = load %struct.randint_source*, %struct.randint_source** %s, align 8, !tbaa !6
  %source1 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %3, i32 0, i32 0
  store %struct.randread_source* %2, %struct.randread_source** %source1, align 8, !tbaa !37
  %4 = load %struct.randint_source*, %struct.randint_source** %s, align 8, !tbaa !6
  %randmax = getelementptr inbounds %struct.randint_source, %struct.randint_source* %4, i32 0, i32 2
  store i64 0, i64* %randmax, align 8, !tbaa !39
  %5 = load %struct.randint_source*, %struct.randint_source** %s, align 8, !tbaa !6
  %randnum = getelementptr inbounds %struct.randint_source, %struct.randint_source* %5, i32 0, i32 1
  store i64 0, i64* %randnum, align 8, !tbaa !40
  %6 = load %struct.randint_source*, %struct.randint_source** %s, align 8, !tbaa !6
  %7 = bitcast %struct.randint_source** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #13
  ret %struct.randint_source* %6
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.randint_source* @randint_all_new(i8* nonnull %name, i64 %bytes_bound) #7 {
entry:
  %name.addr = alloca i8*, align 8
  %bytes_bound.addr = alloca i64, align 8
  %source = alloca %struct.randread_source*, align 8
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  store i64 %bytes_bound, i64* %bytes_bound.addr, align 8, !tbaa !13
  %0 = bitcast %struct.randread_source** %source to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %2 = load i64, i64* %bytes_bound.addr, align 8, !tbaa !13
  %call = call noalias %struct.randread_source* @randread_new(i8* %1, i64 %2)
  store %struct.randread_source* %call, %struct.randread_source** %source, align 8, !tbaa !6
  %3 = load %struct.randread_source*, %struct.randread_source** %source, align 8, !tbaa !6
  %tobool = icmp ne %struct.randread_source* %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.randread_source*, %struct.randread_source** %source, align 8, !tbaa !6
  %call1 = call noalias nonnull %struct.randint_source* @randint_new(%struct.randread_source* %4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.randint_source* [ %call1, %cond.true ], [ null, %cond.false ]
  %5 = bitcast %struct.randread_source** %source to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #13
  ret %struct.randint_source* %cond
}

; Function Attrs: nounwind readonly uwtable
define dso_local %struct.randread_source* @randint_get_source(%struct.randint_source* nonnull %s) #10 {
entry:
  %s.addr = alloca %struct.randint_source*, align 8
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %0 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %source = getelementptr inbounds %struct.randint_source, %struct.randint_source* %0, i32 0, i32 0
  %1 = load %struct.randread_source*, %struct.randread_source** %source, align 8, !tbaa !37
  ret %struct.randread_source* %1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @randint_genmax(%struct.randint_source* nonnull %s, i64 %genmax) #7 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca %struct.randint_source*, align 8
  %genmax.addr = alloca i64, align 8
  %source = alloca %struct.randread_source*, align 8
  %randnum = alloca i64, align 8
  %randmax = alloca i64, align 8
  %choices = alloca i64, align 8
  %i = alloca i64, align 8
  %rmax = alloca i64, align 8
  %buf = alloca [8 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  %excess_choices = alloca i64, align 8
  %unusable_choices = alloca i64, align 8
  %last_usable_choice = alloca i64, align 8
  %reduced_randnum = alloca i64, align 8
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  store i64 %genmax, i64* %genmax.addr, align 8, !tbaa !13
  %0 = bitcast %struct.randread_source** %source to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %source1 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %1, i32 0, i32 0
  %2 = load %struct.randread_source*, %struct.randread_source** %source1, align 8, !tbaa !37
  store %struct.randread_source* %2, %struct.randread_source** %source, align 8, !tbaa !6
  %3 = bitcast i64* %randnum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %randnum2 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %4, i32 0, i32 1
  %5 = load i64, i64* %randnum2, align 8, !tbaa !40
  store i64 %5, i64* %randnum, align 8, !tbaa !13
  %6 = bitcast i64* %randmax to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #13
  %7 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %randmax3 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %7, i32 0, i32 2
  %8 = load i64, i64* %randmax3, align 8, !tbaa !39
  store i64 %8, i64* %randmax, align 8, !tbaa !13
  %9 = bitcast i64* %choices to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #13
  %10 = load i64, i64* %genmax.addr, align 8, !tbaa !13
  %add = add i64 %10, 1
  store i64 %add, i64* %choices, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %if.end34, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* %randmax, align 8, !tbaa !13
  %12 = load i64, i64* %genmax.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #13
  store i64 0, i64* %i, align 8, !tbaa !13
  %14 = bitcast i64* %rmax to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #13
  %15 = load i64, i64* %randmax, align 8, !tbaa !13
  store i64 %15, i64* %rmax, align 8, !tbaa !13
  %16 = bitcast [8 x i8]* %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #13
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %17 = load i64, i64* %rmax, align 8, !tbaa !13
  %call = call i64 @shift_left(i64 %17)
  %add4 = add i64 %call, 255
  store i64 %add4, i64* %rmax, align 8, !tbaa !13
  %18 = load i64, i64* %i, align 8, !tbaa !13
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8, !tbaa !13
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %19 = load i64, i64* %rmax, align 8, !tbaa !13
  %20 = load i64, i64* %genmax.addr, align 8, !tbaa !13
  %cmp5 = icmp ult i64 %19, %20
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.randread_source*, %struct.randread_source** %source, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 0
  %22 = load i64, i64* %i, align 8, !tbaa !13
  call void @randread(%struct.randread_source* %21, i8* %arraydecay, i64 %22)
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %do.body6

do.body6:                                         ; preds = %do.cond12, %do.end
  %23 = load i64, i64* %randnum, align 8, !tbaa !13
  %call7 = call i64 @shift_left(i64 %23)
  %24 = load i64, i64* %i, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 %24
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = zext i8 %25 to i64
  %add8 = add i64 %call7, %conv
  store i64 %add8, i64* %randnum, align 8, !tbaa !13
  %26 = load i64, i64* %randmax, align 8, !tbaa !13
  %call9 = call i64 @shift_left(i64 %26)
  %add10 = add i64 %call9, 255
  store i64 %add10, i64* %randmax, align 8, !tbaa !13
  %27 = load i64, i64* %i, align 8, !tbaa !13
  %inc11 = add i64 %27, 1
  store i64 %inc11, i64* %i, align 8, !tbaa !13
  br label %do.cond12

do.cond12:                                        ; preds = %do.body6
  %28 = load i64, i64* %randmax, align 8, !tbaa !13
  %29 = load i64, i64* %genmax.addr, align 8, !tbaa !13
  %cmp13 = icmp ult i64 %28, %29
  br i1 %cmp13, label %do.body6, label %do.end15

do.end15:                                         ; preds = %do.cond12
  %30 = bitcast [8 x i8]* %buf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #13
  %31 = bitcast i64* %rmax to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #13
  %32 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #13
  br label %if.end

if.end:                                           ; preds = %do.end15, %while.body
  %33 = load i64, i64* %randmax, align 8, !tbaa !13
  %34 = load i64, i64* %genmax.addr, align 8, !tbaa !13
  %cmp16 = icmp eq i64 %33, %34
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end
  %35 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %randmax19 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %35, i32 0, i32 2
  store i64 0, i64* %randmax19, align 8, !tbaa !39
  %36 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %randnum20 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %36, i32 0, i32 1
  store i64 0, i64* %randnum20, align 8, !tbaa !40
  %37 = load i64, i64* %randnum, align 8, !tbaa !13
  store i64 %37, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup35

if.else:                                          ; preds = %if.end
  %38 = bitcast i64* %excess_choices to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %38) #13
  %39 = load i64, i64* %randmax, align 8, !tbaa !13
  %40 = load i64, i64* %genmax.addr, align 8, !tbaa !13
  %sub = sub i64 %39, %40
  store i64 %sub, i64* %excess_choices, align 8, !tbaa !13
  %41 = bitcast i64* %unusable_choices to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %41) #13
  %42 = load i64, i64* %excess_choices, align 8, !tbaa !13
  %43 = load i64, i64* %choices, align 8, !tbaa !13
  %rem = urem i64 %42, %43
  store i64 %rem, i64* %unusable_choices, align 8, !tbaa !13
  %44 = bitcast i64* %last_usable_choice to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %44) #13
  %45 = load i64, i64* %randmax, align 8, !tbaa !13
  %46 = load i64, i64* %unusable_choices, align 8, !tbaa !13
  %sub21 = sub i64 %45, %46
  store i64 %sub21, i64* %last_usable_choice, align 8, !tbaa !13
  %47 = bitcast i64* %reduced_randnum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %47) #13
  %48 = load i64, i64* %randnum, align 8, !tbaa !13
  %49 = load i64, i64* %choices, align 8, !tbaa !13
  %rem22 = urem i64 %48, %49
  store i64 %rem22, i64* %reduced_randnum, align 8, !tbaa !13
  %50 = load i64, i64* %randnum, align 8, !tbaa !13
  %51 = load i64, i64* %last_usable_choice, align 8, !tbaa !13
  %cmp23 = icmp ule i64 %50, %51
  br i1 %cmp23, label %if.then25, label %if.end29

if.then25:                                        ; preds = %if.else
  %52 = load i64, i64* %randnum, align 8, !tbaa !13
  %53 = load i64, i64* %choices, align 8, !tbaa !13
  %div = udiv i64 %52, %53
  %54 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %randnum26 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %54, i32 0, i32 1
  store i64 %div, i64* %randnum26, align 8, !tbaa !40
  %55 = load i64, i64* %excess_choices, align 8, !tbaa !13
  %56 = load i64, i64* %choices, align 8, !tbaa !13
  %div27 = udiv i64 %55, %56
  %57 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %randmax28 = getelementptr inbounds %struct.randint_source, %struct.randint_source* %57, i32 0, i32 2
  store i64 %div27, i64* %randmax28, align 8, !tbaa !39
  %58 = load i64, i64* %reduced_randnum, align 8, !tbaa !13
  store i64 %58, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.else
  %59 = load i64, i64* %reduced_randnum, align 8, !tbaa !13
  store i64 %59, i64* %randnum, align 8, !tbaa !13
  %60 = load i64, i64* %unusable_choices, align 8, !tbaa !13
  %sub30 = sub i64 %60, 1
  store i64 %sub30, i64* %randmax, align 8, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then25
  %61 = bitcast i64* %reduced_randnum to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #13
  %62 = bitcast i64* %last_usable_choice to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #13
  %63 = bitcast i64* %unusable_choices to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #13
  %64 = bitcast i64* %excess_choices to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end34

if.end34:                                         ; preds = %cleanup.cont
  br label %while.cond

cleanup35:                                        ; preds = %cleanup, %if.then18
  %65 = bitcast i64* %choices to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65) #13
  %66 = bitcast i64* %randmax to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #13
  %67 = bitcast i64* %randnum to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67) #13
  %68 = bitcast %struct.randread_source** %source to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #13
  %69 = load i64, i64* %retval, align 8
  ret i64 %69
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @shift_left(i64 %x) #2 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8, !tbaa !13
  %0 = load i64, i64* %x.addr, align 8, !tbaa !13
  %shl = shl i64 %0, 8
  ret i64 %shl
}

; Function Attrs: nounwind uwtable
define dso_local void @randint_free(%struct.randint_source* nonnull %s) #7 {
entry:
  %s.addr = alloca %struct.randint_source*, align 8
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %0 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %1 = bitcast %struct.randint_source* %0 to i8*
  call void @explicit_bzero(i8* %1, i64 24) #13
  %2 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %3 = bitcast %struct.randint_source* %2 to i8*
  call void @rpl_free(i8* %3)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @explicit_bzero(i8*, i64) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @randint_all_free(%struct.randint_source* nonnull %s) #7 {
entry:
  %s.addr = alloca %struct.randint_source*, align 8
  %r = alloca i32, align 4
  %e = alloca i32, align 4
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %1 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %source = getelementptr inbounds %struct.randint_source, %struct.randint_source* %1, i32 0, i32 0
  %2 = load %struct.randread_source*, %struct.randread_source** %source, align 8, !tbaa !37
  %call = call i32 @randread_free(%struct.randread_source* %2)
  store i32 %call, i32* %r, align 4, !tbaa !2
  %3 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #13
  %call1 = call i32* @__errno_location() #22
  %4 = load i32, i32* %call1, align 4, !tbaa !2
  store i32 %4, i32* %e, align 4, !tbaa !2
  %5 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  call void @randint_free(%struct.randint_source* %5)
  %6 = load i32, i32* %e, align 4, !tbaa !2
  %call2 = call i32* @__errno_location() #22
  store i32 %6, i32* %call2, align 4, !tbaa !2
  %7 = load i32, i32* %r, align 4, !tbaa !2
  %8 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #13
  %9 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #13
  ret i32 %7
}

; Function Attrs: nounwind readnone uwtable
define dso_local i64 @randperm_bound(i64 %h, i64 %n) #11 {
entry:
  %h.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %lg_n = alloca i64, align 8
  %ar = alloca i64, align 8
  %bound = alloca i64, align 8
  store i64 %h, i64* %h.addr, align 8, !tbaa !13
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  %0 = bitcast i64* %lg_n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64, i64* %n.addr, align 8, !tbaa !13
  %call = call i32 @floor_lg(i64 %1) #22
  %add = add nsw i32 %call, 1
  %conv = sext i32 %add to i64
  store i64 %conv, i64* %lg_n, align 8, !tbaa !13
  %2 = bitcast i64* %ar to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load i64, i64* %lg_n, align 8, !tbaa !13
  %4 = load i64, i64* %h.addr, align 8, !tbaa !13
  %mul = mul i64 %3, %4
  store i64 %mul, i64* %ar, align 8, !tbaa !13
  %5 = bitcast i64* %bound to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  %6 = load i64, i64* %ar, align 8, !tbaa !13
  %add1 = add i64 %6, 8
  %sub = sub i64 %add1, 1
  %div = udiv i64 %sub, 8
  store i64 %div, i64* %bound, align 8, !tbaa !13
  %7 = load i64, i64* %bound, align 8, !tbaa !13
  %8 = bitcast i64* %bound to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #13
  %9 = bitcast i64* %ar to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #13
  %10 = bitcast i64* %lg_n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #13
  ret i64 %7
}

; Function Attrs: nounwind readnone uwtable
define internal i32 @floor_lg(i64 %n) #11 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  %0 = load i64, i64* %n.addr, align 8, !tbaa !13
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8, !tbaa !13
  %call = call i32 @count_leading_zeros_l(i64 %1)
  %sub = sub nsw i32 63, %call
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %sub, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nounwind uwtable
define dso_local noalias i64* @randperm_new(%struct.randint_source* %r, i64 %h, i64 %n) #7 {
entry:
  %r.addr = alloca %struct.randint_source*, align 8
  %h.addr = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %v = alloca i64*, align 8
  %sparse = alloca i8, align 1
  %i = alloca i64, align 8
  %sv = alloca %struct.hash_table*, align 8
  %j = alloca i64, align 8
  store %struct.randint_source* %r, %struct.randint_source** %r.addr, align 8, !tbaa !6
  store i64 %h, i64* %h.addr, align 8, !tbaa !13
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  %0 = bitcast i64** %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64, i64* %h.addr, align 8, !tbaa !13
  switch i64 %1, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i64* null, i64** %v, align 8, !tbaa !6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call = call noalias nonnull i8* @xmalloc(i64 8) #24
  %2 = bitcast i8* %call to i64*
  store i64* %2, i64** %v, align 8, !tbaa !6
  %3 = load %struct.randint_source*, %struct.randint_source** %r.addr, align 8, !tbaa !6
  %4 = load i64, i64* %n.addr, align 8, !tbaa !13
  %call2 = call i64 @randint_choose.116(%struct.randint_source* %3, i64 %4)
  %5 = load i64*, i64** %v, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 0
  store i64 %call2, i64* %arrayidx, align 8, !tbaa !13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %sparse) #13
  %6 = load i64, i64* %n.addr, align 8, !tbaa !13
  %cmp = icmp uge i64 %6, 131072
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.default
  %7 = load i64, i64* %n.addr, align 8, !tbaa !13
  %8 = load i64, i64* %h.addr, align 8, !tbaa !13
  %div = udiv i64 %7, %8
  %cmp3 = icmp uge i64 %div, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.default
  %9 = phi i1 [ false, %sw.default ], [ %cmp3, %land.rhs ]
  %frombool = zext i1 %9 to i8
  store i8 %frombool, i8* %sparse, align 1, !tbaa !11
  %10 = bitcast i64* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #13
  %11 = bitcast %struct.hash_table** %sv to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #13
  %12 = load i8, i8* %sparse, align 1, !tbaa !11, !range !16
  %tobool = trunc i8 %12 to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %13 = load i64, i64* %h.addr, align 8, !tbaa !13
  %mul = mul i64 %13, 2
  %call4 = call %struct.hash_table* @sparse_new(i64 %mul)
  store %struct.hash_table* %call4, %struct.hash_table** %sv, align 8, !tbaa !6
  %14 = load %struct.hash_table*, %struct.hash_table** %sv, align 8, !tbaa !6
  %cmp5 = icmp eq %struct.hash_table* %14, null
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  call void @xalloc_die() #23
  unreachable

if.end:                                           ; preds = %if.then
  %15 = load i64, i64* %h.addr, align 8, !tbaa !13
  %call7 = call noalias nonnull i8* @xnmalloc(i64 %15, i64 8) #25
  %16 = bitcast i8* %call7 to i64*
  store i64* %16, i64** %v, align 8, !tbaa !6
  br label %if.end11

if.else:                                          ; preds = %land.end
  store %struct.hash_table* null, %struct.hash_table** %sv, align 8, !tbaa !6
  %17 = load i64, i64* %n.addr, align 8, !tbaa !13
  %call8 = call noalias nonnull i8* @xnmalloc(i64 %17, i64 8) #25
  %18 = bitcast i8* %call8 to i64*
  store i64* %18, i64** %v, align 8, !tbaa !6
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %19 = load i64, i64* %i, align 8, !tbaa !13
  %20 = load i64, i64* %n.addr, align 8, !tbaa !13
  %cmp9 = icmp ult i64 %19, %20
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i64, i64* %i, align 8, !tbaa !13
  %22 = load i64*, i64** %v, align 8, !tbaa !6
  %23 = load i64, i64* %i, align 8, !tbaa !13
  %arrayidx10 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64 %21, i64* %arrayidx10, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, i64* %i, align 8, !tbaa !13
  %inc = add i64 %24, 1
  store i64 %inc, i64* %i, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end11

if.end11:                                         ; preds = %for.end, %if.end
  store i64 0, i64* %i, align 8, !tbaa !13
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc20, %if.end11
  %25 = load i64, i64* %i, align 8, !tbaa !13
  %26 = load i64, i64* %h.addr, align 8, !tbaa !13
  %cmp13 = icmp ult i64 %25, %26
  br i1 %cmp13, label %for.body14, label %for.end22

for.body14:                                       ; preds = %for.cond12
  %27 = bitcast i64* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #13
  %28 = load i64, i64* %i, align 8, !tbaa !13
  %29 = load %struct.randint_source*, %struct.randint_source** %r.addr, align 8, !tbaa !6
  %30 = load i64, i64* %n.addr, align 8, !tbaa !13
  %31 = load i64, i64* %i, align 8, !tbaa !13
  %sub = sub i64 %30, %31
  %call15 = call i64 @randint_choose.116(%struct.randint_source* %29, i64 %sub)
  %add = add i64 %28, %call15
  store i64 %add, i64* %j, align 8, !tbaa !13
  %32 = load i8, i8* %sparse, align 1, !tbaa !11, !range !16
  %tobool16 = trunc i8 %32 to i1
  br i1 %tobool16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %for.body14
  %33 = load %struct.hash_table*, %struct.hash_table** %sv, align 8, !tbaa !6
  %34 = load i64*, i64** %v, align 8, !tbaa !6
  %35 = load i64, i64* %i, align 8, !tbaa !13
  %36 = load i64, i64* %j, align 8, !tbaa !13
  call void @sparse_swap(%struct.hash_table* %33, i64* %34, i64 %35, i64 %36)
  br label %if.end19

if.else18:                                        ; preds = %for.body14
  %37 = load i64*, i64** %v, align 8, !tbaa !6
  %38 = load i64, i64* %i, align 8, !tbaa !13
  %39 = load i64, i64* %j, align 8, !tbaa !13
  call void @swap(i64* %37, i64 %38, i64 %39)
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  %40 = bitcast i64* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #13
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %41 = load i64, i64* %i, align 8, !tbaa !13
  %inc21 = add i64 %41, 1
  store i64 %inc21, i64* %i, align 8, !tbaa !13
  br label %for.cond12

for.end22:                                        ; preds = %for.cond12
  %42 = load i8, i8* %sparse, align 1, !tbaa !11, !range !16
  %tobool23 = trunc i8 %42 to i1
  br i1 %tobool23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %for.end22
  %43 = load %struct.hash_table*, %struct.hash_table** %sv, align 8, !tbaa !6
  call void @sparse_free(%struct.hash_table* %43)
  br label %if.end27

if.else25:                                        ; preds = %for.end22
  %44 = load i64*, i64** %v, align 8, !tbaa !6
  %45 = bitcast i64* %44 to i8*
  %46 = load i64, i64* %h.addr, align 8, !tbaa !13
  %call26 = call i8* @xnrealloc(i8* %45, i64 %46, i64 8) #26
  %47 = bitcast i8* %call26 to i64*
  store i64* %47, i64** %v, align 8, !tbaa !6
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  %48 = bitcast %struct.hash_table** %sv to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #13
  %49 = bitcast i64* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %sparse) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end27, %sw.bb1, %sw.bb
  %50 = load i64*, i64** %v, align 8, !tbaa !6
  %51 = bitcast i64** %v to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #13
  ret i64* %50
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @randint_choose.116(%struct.randint_source* %s, i64 %choices) #2 {
entry:
  %s.addr = alloca %struct.randint_source*, align 8
  %choices.addr = alloca i64, align 8
  store %struct.randint_source* %s, %struct.randint_source** %s.addr, align 8, !tbaa !6
  store i64 %choices, i64* %choices.addr, align 8, !tbaa !13
  %0 = load %struct.randint_source*, %struct.randint_source** %s.addr, align 8, !tbaa !6
  %1 = load i64, i64* %choices.addr, align 8, !tbaa !13
  %sub = sub i64 %1, 1
  %call = call i64 @randint_genmax(%struct.randint_source* %0, i64 %sub)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal %struct.hash_table* @sparse_new(i64 %size_hint) #7 {
entry:
  %size_hint.addr = alloca i64, align 8
  store i64 %size_hint, i64* %size_hint.addr, align 8, !tbaa !13
  %0 = load i64, i64* %size_hint.addr, align 8, !tbaa !13
  %call = call noalias %struct.hash_table* @hash_initialize(i64 %0, %struct.hash_tuning* null, i64 (i8*, i64)* @sparse_hash_, i1 (i8*, i8*)* @sparse_cmp_, void (i8*)* @rpl_free)
  ret %struct.hash_table* %call
}

; Function Attrs: nounwind uwtable
define internal void @sparse_swap(%struct.hash_table* %sv, i64* %v, i64 %i, i64 %j) #7 {
entry:
  %sv.addr = alloca %struct.hash_table*, align 8
  %v.addr = alloca i64*, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %v1 = alloca %struct.timespec*, align 8
  %.compoundliteral = alloca %struct.timespec, align 8
  %v2 = alloca %struct.timespec*, align 8
  %.compoundliteral1 = alloca %struct.timespec, align 8
  %t = alloca i64, align 8
  store %struct.hash_table* %sv, %struct.hash_table** %sv.addr, align 8, !tbaa !6
  store i64* %v, i64** %v.addr, align 8, !tbaa !6
  store i64 %i, i64* %i.addr, align 8, !tbaa !13
  store i64 %j, i64* %j.addr, align 8, !tbaa !13
  %0 = bitcast %struct.timespec** %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %sv.addr, align 8, !tbaa !6
  %index = getelementptr inbounds %struct.timespec, %struct.timespec* %.compoundliteral, i32 0, i32 0
  %2 = load i64, i64* %i.addr, align 8, !tbaa !13
  store i64 %2, i64* %index, align 8, !tbaa !41
  %val = getelementptr inbounds %struct.timespec, %struct.timespec* %.compoundliteral, i32 0, i32 1
  store i64 0, i64* %val, align 8, !tbaa !43
  %3 = bitcast %struct.timespec* %.compoundliteral to i8*
  %call = call i8* @hash_remove(%struct.hash_table* %1, i8* %3)
  %4 = bitcast i8* %call to %struct.timespec*
  store %struct.timespec* %4, %struct.timespec** %v1, align 8, !tbaa !6
  %5 = bitcast %struct.timespec** %v2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  %6 = load %struct.hash_table*, %struct.hash_table** %sv.addr, align 8, !tbaa !6
  %index2 = getelementptr inbounds %struct.timespec, %struct.timespec* %.compoundliteral1, i32 0, i32 0
  %7 = load i64, i64* %j.addr, align 8, !tbaa !13
  store i64 %7, i64* %index2, align 8, !tbaa !41
  %val3 = getelementptr inbounds %struct.timespec, %struct.timespec* %.compoundliteral1, i32 0, i32 1
  store i64 0, i64* %val3, align 8, !tbaa !43
  %8 = bitcast %struct.timespec* %.compoundliteral1 to i8*
  %call4 = call i8* @hash_remove(%struct.hash_table* %6, i8* %8)
  %9 = bitcast i8* %call4 to %struct.timespec*
  store %struct.timespec* %9, %struct.timespec** %v2, align 8, !tbaa !6
  %10 = load %struct.timespec*, %struct.timespec** %v1, align 8, !tbaa !6
  %tobool = icmp ne %struct.timespec* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call5 = call noalias nonnull i8* @xmalloc(i64 16) #24
  %11 = bitcast i8* %call5 to %struct.timespec*
  store %struct.timespec* %11, %struct.timespec** %v1, align 8, !tbaa !6
  %12 = load i64, i64* %i.addr, align 8, !tbaa !13
  %13 = load %struct.timespec*, %struct.timespec** %v1, align 8, !tbaa !6
  %val6 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  store i64 %12, i64* %val6, align 8, !tbaa !43
  %14 = load %struct.timespec*, %struct.timespec** %v1, align 8, !tbaa !6
  %index7 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 0
  store i64 %12, i64* %index7, align 8, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load %struct.timespec*, %struct.timespec** %v2, align 8, !tbaa !6
  %tobool8 = icmp ne %struct.timespec* %15, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = call noalias nonnull i8* @xmalloc(i64 16) #24
  %16 = bitcast i8* %call10 to %struct.timespec*
  store %struct.timespec* %16, %struct.timespec** %v2, align 8, !tbaa !6
  %17 = load i64, i64* %j.addr, align 8, !tbaa !13
  %18 = load %struct.timespec*, %struct.timespec** %v2, align 8, !tbaa !6
  %val11 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1
  store i64 %17, i64* %val11, align 8, !tbaa !43
  %19 = load %struct.timespec*, %struct.timespec** %v2, align 8, !tbaa !6
  %index12 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  store i64 %17, i64* %index12, align 8, !tbaa !41
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end
  %20 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %20) #13
  %21 = load %struct.timespec*, %struct.timespec** %v1, align 8, !tbaa !6
  %val14 = getelementptr inbounds %struct.timespec, %struct.timespec* %21, i32 0, i32 1
  %22 = load i64, i64* %val14, align 8, !tbaa !43
  store i64 %22, i64* %t, align 8, !tbaa !13
  %23 = load %struct.timespec*, %struct.timespec** %v2, align 8, !tbaa !6
  %val15 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1
  %24 = load i64, i64* %val15, align 8, !tbaa !43
  %25 = load %struct.timespec*, %struct.timespec** %v1, align 8, !tbaa !6
  %val16 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 1
  store i64 %24, i64* %val16, align 8, !tbaa !43
  %26 = load i64, i64* %t, align 8, !tbaa !13
  %27 = load %struct.timespec*, %struct.timespec** %v2, align 8, !tbaa !6
  %val17 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 1
  store i64 %26, i64* %val17, align 8, !tbaa !43
  %28 = load %struct.hash_table*, %struct.hash_table** %sv.addr, align 8, !tbaa !6
  %29 = load %struct.timespec*, %struct.timespec** %v1, align 8, !tbaa !6
  %30 = bitcast %struct.timespec* %29 to i8*
  %call18 = call i8* @hash_insert(%struct.hash_table* %28, i8* %30)
  %tobool19 = icmp ne i8* %call18, null
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end13
  call void @xalloc_die() #23
  unreachable

if.end21:                                         ; preds = %if.end13
  %31 = load %struct.hash_table*, %struct.hash_table** %sv.addr, align 8, !tbaa !6
  %32 = load %struct.timespec*, %struct.timespec** %v2, align 8, !tbaa !6
  %33 = bitcast %struct.timespec* %32 to i8*
  %call22 = call i8* @hash_insert(%struct.hash_table* %31, i8* %33)
  %tobool23 = icmp ne i8* %call22, null
  br i1 %tobool23, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @xalloc_die() #23
  unreachable

if.end25:                                         ; preds = %if.end21
  %34 = load %struct.timespec*, %struct.timespec** %v1, align 8, !tbaa !6
  %val26 = getelementptr inbounds %struct.timespec, %struct.timespec* %34, i32 0, i32 1
  %35 = load i64, i64* %val26, align 8, !tbaa !43
  %36 = load i64*, i64** %v.addr, align 8, !tbaa !6
  %37 = load i64, i64* %i.addr, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %35, i64* %arrayidx, align 8, !tbaa !13
  %38 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38) #13
  %39 = bitcast %struct.timespec** %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #13
  %40 = bitcast %struct.timespec** %v1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @swap(i64* %v, i64 %i, i64 %j) #7 {
entry:
  %v.addr = alloca i64*, align 8
  %i.addr = alloca i64, align 8
  %j.addr = alloca i64, align 8
  %t = alloca i64, align 8
  store i64* %v, i64** %v.addr, align 8, !tbaa !6
  store i64 %i, i64* %i.addr, align 8, !tbaa !13
  store i64 %j, i64* %j.addr, align 8, !tbaa !13
  %0 = bitcast i64* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64*, i64** %v.addr, align 8, !tbaa !6
  %2 = load i64, i64* %i.addr, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %2
  %3 = load i64, i64* %arrayidx, align 8, !tbaa !13
  store i64 %3, i64* %t, align 8, !tbaa !13
  %4 = load i64*, i64** %v.addr, align 8, !tbaa !6
  %5 = load i64, i64* %j.addr, align 8, !tbaa !13
  %arrayidx1 = getelementptr inbounds i64, i64* %4, i64 %5
  %6 = load i64, i64* %arrayidx1, align 8, !tbaa !13
  %7 = load i64*, i64** %v.addr, align 8, !tbaa !6
  %8 = load i64, i64* %i.addr, align 8, !tbaa !13
  %arrayidx2 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 %6, i64* %arrayidx2, align 8, !tbaa !13
  %9 = load i64, i64* %t, align 8, !tbaa !13
  %10 = load i64*, i64** %v.addr, align 8, !tbaa !6
  %11 = load i64, i64* %j.addr, align 8, !tbaa !13
  %arrayidx3 = getelementptr inbounds i64, i64* %10, i64 %11
  store i64 %9, i64* %arrayidx3, align 8, !tbaa !13
  %12 = bitcast i64* %t to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sparse_free(%struct.hash_table* %sv) #7 {
entry:
  %sv.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %sv, %struct.hash_table** %sv.addr, align 8, !tbaa !6
  %0 = load %struct.hash_table*, %struct.hash_table** %sv.addr, align 8, !tbaa !6
  call void @hash_free(%struct.hash_table* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @sparse_hash_(i8* %x, i64 %table_size) #7 {
entry:
  %x.addr = alloca i8*, align 8
  %table_size.addr = alloca i64, align 8
  %ent = alloca %struct.timespec*, align 8
  store i8* %x, i8** %x.addr, align 8, !tbaa !6
  store i64 %table_size, i64* %table_size.addr, align 8, !tbaa !13
  %0 = bitcast %struct.timespec** %ent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %x.addr, align 8, !tbaa !6
  %2 = bitcast i8* %1 to %struct.timespec*
  store %struct.timespec* %2, %struct.timespec** %ent, align 8, !tbaa !6
  %3 = load %struct.timespec*, %struct.timespec** %ent, align 8, !tbaa !6
  %index = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %4 = load i64, i64* %index, align 8, !tbaa !41
  %5 = load i64, i64* %table_size.addr, align 8, !tbaa !13
  %rem = urem i64 %4, %5
  %6 = bitcast %struct.timespec** %ent to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #13
  ret i64 %rem
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @sparse_cmp_(i8* %x, i8* %y) #7 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %ent1 = alloca %struct.timespec*, align 8
  %ent2 = alloca %struct.timespec*, align 8
  store i8* %x, i8** %x.addr, align 8, !tbaa !6
  store i8* %y, i8** %y.addr, align 8, !tbaa !6
  %0 = bitcast %struct.timespec** %ent1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %x.addr, align 8, !tbaa !6
  %2 = bitcast i8* %1 to %struct.timespec*
  store %struct.timespec* %2, %struct.timespec** %ent1, align 8, !tbaa !6
  %3 = bitcast %struct.timespec** %ent2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load i8*, i8** %y.addr, align 8, !tbaa !6
  %5 = bitcast i8* %4 to %struct.timespec*
  store %struct.timespec* %5, %struct.timespec** %ent2, align 8, !tbaa !6
  %6 = load %struct.timespec*, %struct.timespec** %ent1, align 8, !tbaa !6
  %index = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %7 = load i64, i64* %index, align 8, !tbaa !41
  %8 = load %struct.timespec*, %struct.timespec** %ent2, align 8, !tbaa !6
  %index1 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  %9 = load i64, i64* %index1, align 8, !tbaa !41
  %cmp = icmp eq i64 %7, %9
  %10 = bitcast %struct.timespec** %ent2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #13
  %11 = bitcast %struct.timespec** %ent1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #13
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.randread_source* @randread_new(i8* %name, i64 %bytes_bound) #7 {
entry:
  %retval = alloca %struct.randread_source*, align 8
  %name.addr = alloca i8*, align 8
  %bytes_bound.addr = alloca i64, align 8
  %source = alloca %struct._IO_FILE*, align 8
  %s = alloca %struct.randread_source*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %e = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8, !tbaa !6
  store i64 %bytes_bound, i64* %bytes_bound.addr, align 8, !tbaa !13
  %0 = load i64, i64* %bytes_bound.addr, align 8, !tbaa !13
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.randread_source* @simple_new(%struct._IO_FILE* null, i8* null)
  store %struct.randread_source* %call, %struct.randread_source** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = bitcast %struct._IO_FILE** %source to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  store %struct._IO_FILE* null, %struct._IO_FILE** %source, align 8, !tbaa !6
  %2 = bitcast %struct.randread_source** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then1, label %if.end5

if.then1:                                         ; preds = %if.else
  %4 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call2 = call %struct._IO_FILE* @fopen_safer(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %source, align 8, !tbaa !6
  %tobool3 = icmp ne %struct._IO_FILE* %call2, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then1
  store %struct.randread_source* null, %struct.randread_source** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then1
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.else
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %source, align 8, !tbaa !6
  %6 = load i8*, i8** %name.addr, align 8, !tbaa !6
  %call6 = call %struct.randread_source* @simple_new(%struct._IO_FILE* %5, i8* %6)
  store %struct.randread_source* %call6, %struct.randread_source** %s, align 8, !tbaa !6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %source, align 8, !tbaa !6
  %tobool7 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.end5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %source, align 8, !tbaa !6
  %9 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %buf = getelementptr inbounds %struct.randread_source, %struct.randread_source* %9, i32 0, i32 3
  %c = bitcast %union.anon.15* %buf to [4096 x i8]*
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %c, i64 0, i64 0
  %10 = load i64, i64* %bytes_bound.addr, align 8, !tbaa !13
  %cmp9 = icmp ult i64 4096, %10
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  %11 = load i64, i64* %bytes_bound.addr, align 8, !tbaa !13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4096, %cond.true ], [ %11, %cond.false ]
  %call10 = call i32 @setvbuf(%struct._IO_FILE* %8, i8* %arraydecay, i32 0, i64 %cond) #13
  br label %if.end30

if.else11:                                        ; preds = %if.end5
  %12 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %buf12 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %12, i32 0, i32 3
  %isaac = bitcast %union.anon.15* %buf12 to %struct.isaac*
  %buffered = getelementptr inbounds %struct.isaac, %struct.isaac* %isaac, i32 0, i32 0
  store i64 0, i64* %buffered, align 8, !tbaa !15
  %13 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %buf13 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %13, i32 0, i32 3
  %isaac14 = bitcast %union.anon.15* %buf13 to %struct.isaac*
  %state = getelementptr inbounds %struct.isaac, %struct.isaac* %isaac14, i32 0, i32 1
  %m = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %state, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [256 x i64], [256 x i64]* %m, i64 0, i64 0
  %14 = bitcast i64* %arraydecay15 to i8*
  %15 = load i64, i64* %bytes_bound.addr, align 8, !tbaa !13
  %cmp16 = icmp ult i64 2048, %15
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %if.else11
  br label %cond.end19

cond.false18:                                     ; preds = %if.else11
  %16 = load i64, i64* %bytes_bound.addr, align 8, !tbaa !13
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.true17
  %cond20 = phi i64 [ 2048, %cond.true17 ], [ %16, %cond.false18 ]
  %call21 = call zeroext i1 @get_nonce(i8* %14, i64 %cond20)
  br i1 %call21, label %if.end26, label %if.then22

if.then22:                                        ; preds = %cond.end19
  %17 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #13
  %call23 = call i32* @__errno_location() #22
  %18 = load i32, i32* %call23, align 4, !tbaa !2
  store i32 %18, i32* %e, align 4, !tbaa !2
  %19 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %call24 = call i32 @randread_free_body(%struct.randread_source* %19)
  %20 = load i32, i32* %e, align 4, !tbaa !2
  %call25 = call i32* @__errno_location() #22
  store i32 %20, i32* %call25, align 4, !tbaa !2
  store %struct.randread_source* null, %struct.randread_source** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  %21 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #13
  br label %cleanup

if.end26:                                         ; preds = %cond.end19
  %22 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %buf27 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %22, i32 0, i32 3
  %isaac28 = bitcast %union.anon.15* %buf27 to %struct.isaac*
  %state29 = getelementptr inbounds %struct.isaac, %struct.isaac* %isaac28, i32 0, i32 1
  call void @isaac_seed(%struct.isaac_state* %state29)
  br label %if.end30

if.end30:                                         ; preds = %if.end26, %cond.end
  %23 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  store %struct.randread_source* %23, %struct.randread_source** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.then22, %if.then4
  %24 = bitcast %struct.randread_source** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #13
  %25 = bitcast %struct._IO_FILE** %source to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #13
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %26 = load %struct.randread_source*, %struct.randread_source** %retval, align 8
  ret %struct.randread_source* %26
}

; Function Attrs: nounwind uwtable
define internal %struct.randread_source* @simple_new(%struct._IO_FILE* %source, i8* %handler_arg) #7 {
entry:
  %source.addr = alloca %struct._IO_FILE*, align 8
  %handler_arg.addr = alloca i8*, align 8
  %s = alloca %struct.randread_source*, align 8
  store %struct._IO_FILE* %source, %struct._IO_FILE** %source.addr, align 8, !tbaa !6
  store i8* %handler_arg, i8** %handler_arg.addr, align 8, !tbaa !6
  %0 = bitcast %struct.randread_source** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %call = call noalias nonnull i8* @xmalloc(i64 4152) #24
  %1 = bitcast i8* %call to %struct.randread_source*
  store %struct.randread_source* %1, %struct.randread_source** %s, align 8, !tbaa !6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %source.addr, align 8, !tbaa !6
  %3 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %source1 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %3, i32 0, i32 0
  store %struct._IO_FILE* %2, %struct._IO_FILE** %source1, align 8, !tbaa !44
  %4 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %handler = getelementptr inbounds %struct.randread_source, %struct.randread_source* %4, i32 0, i32 1
  store void (i8*)* @randread_error, void (i8*)** %handler, align 8, !tbaa !46
  %5 = load i8*, i8** %handler_arg.addr, align 8, !tbaa !6
  %6 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %handler_arg2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %6, i32 0, i32 2
  store i8* %5, i8** %handler_arg2, align 8, !tbaa !47
  %7 = load %struct.randread_source*, %struct.randread_source** %s, align 8, !tbaa !6
  %8 = bitcast %struct.randread_source** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #13
  ret %struct.randread_source* %7
}

; Function Attrs: nounwind
declare dso_local i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #6

; Function Attrs: nounwind uwtable
define internal zeroext i1 @get_nonce(i8* %buffer, i64 %bufsize) #7 {
entry:
  %retval = alloca i1, align 1
  %buffer.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %buf = alloca i8*, align 8
  %buflim = alloca i8*, align 8
  %nbytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !6
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !13
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !6
  store i8* %1, i8** %buf, align 8, !tbaa !6
  %2 = bitcast i8** %buflim to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load i8*, i8** %buf, align 8, !tbaa !6
  %4 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4
  store i8* %add.ptr, i8** %buflim, align 8, !tbaa !6
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %5 = load i8*, i8** %buf, align 8, !tbaa !6
  %6 = load i8*, i8** %buflim, align 8, !tbaa !6
  %cmp = icmp ult i8* %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #13
  %8 = load i8*, i8** %buf, align 8, !tbaa !6
  %9 = load i8*, i8** %buflim, align 8, !tbaa !6
  %10 = load i8*, i8** %buf, align 8, !tbaa !6
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i64 @getrandom(i8* %8, i64 %sub.ptr.sub, i32 0)
  store i64 %call, i64* %nbytes, align 8, !tbaa !13
  %11 = load i64, i64* %nbytes, align 8, !tbaa !13
  %cmp1 = icmp sle i64 0, %11
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i64, i64* %nbytes, align 8, !tbaa !13
  %13 = load i8*, i8** %buf, align 8, !tbaa !6
  %add.ptr2 = getelementptr inbounds i8, i8* %13, i64 %12
  store i8* %add.ptr2, i8** %buf, align 8, !tbaa !6
  br label %if.end6

if.else:                                          ; preds = %while.body
  %call3 = call i32* @__errno_location() #22
  %14 = load i32, i32* %call3, align 4, !tbaa !2
  %cmp4 = icmp ne i32 %14, 4
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5
  %15 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup7 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %while.end, %cleanup
  %16 = bitcast i8** %buflim to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #13
  %17 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #13
  %18 = load i1, i1* %retval, align 1
  ret i1 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @randread_free_body(%struct.randread_source* %s) #7 {
entry:
  %s.addr = alloca %struct.randread_source*, align 8
  %source = alloca %struct._IO_FILE*, align 8
  store %struct.randread_source* %s, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %0 = bitcast %struct._IO_FILE** %source to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %source1 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %1, i32 0, i32 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %source1, align 8, !tbaa !44
  store %struct._IO_FILE* %2, %struct._IO_FILE** %source, align 8, !tbaa !6
  %3 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %4 = bitcast %struct.randread_source* %3 to i8*
  call void @explicit_bzero(i8* %4, i64 4152) #13
  %5 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %6 = bitcast %struct.randread_source* %5 to i8*
  call void @rpl_free(i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %source, align 8, !tbaa !6
  %tobool = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %source, align 8, !tbaa !6
  %call = call i32 @rpl_fclose(%struct._IO_FILE* %8)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %9 = bitcast %struct._IO_FILE** %source to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #13
  ret i32 %cond
}

declare dso_local i64 @getrandom(i8*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal void @randread_error(i8* %file_name) #7 {
entry:
  %file_name.addr = alloca i8*, align 8
  store i8* %file_name, i8** %file_name.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %file_name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* @exit_failure, align 4, !tbaa !2
  %call = call i32* @__errno_location() #22
  %2 = load i32, i32* %call, align 4, !tbaa !2
  %call1 = call i32* @__errno_location() #22
  %3 = load i32, i32* %call1, align 4, !tbaa !2
  %cmp = icmp eq i32 %3, 0
  %4 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.122, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.123, i64 0, i64 0)
  %5 = load i8*, i8** %file_name.addr, align 8, !tbaa !6
  %call2 = call i8* @quote(i8* %5)
  call void (i32, i32, i8*, ...) @error(i32 %1, i32 %2, i8* %cond, i8* %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @abort() #20
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local void @randread_set_handler(%struct.randread_source* nonnull %s, void (i8*)* nonnull %handler) #7 {
entry:
  %s.addr = alloca %struct.randread_source*, align 8
  %handler.addr = alloca void (i8*)*, align 8
  store %struct.randread_source* %s, %struct.randread_source** %s.addr, align 8, !tbaa !6
  store void (i8*)* %handler, void (i8*)** %handler.addr, align 8, !tbaa !6
  %0 = load void (i8*)*, void (i8*)** %handler.addr, align 8, !tbaa !6
  %1 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %handler1 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %1, i32 0, i32 1
  store void (i8*)* %0, void (i8*)** %handler1, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @randread_set_handler_arg(%struct.randread_source* nonnull %s, i8* %handler_arg) #7 {
entry:
  %s.addr = alloca %struct.randread_source*, align 8
  %handler_arg.addr = alloca i8*, align 8
  store %struct.randread_source* %s, %struct.randread_source** %s.addr, align 8, !tbaa !6
  store i8* %handler_arg, i8** %handler_arg.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %handler_arg.addr, align 8, !tbaa !6
  %1 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %handler_arg1 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %1, i32 0, i32 2
  store i8* %0, i8** %handler_arg1, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @randread(%struct.randread_source* nonnull %s, i8* nonnull %buf, i64 %size) #7 {
entry:
  %s.addr = alloca %struct.randread_source*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.randread_source* %s, %struct.randread_source** %s.addr, align 8, !tbaa !6
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !6
  store i64 %size, i64* %size.addr, align 8, !tbaa !13
  %0 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %source = getelementptr inbounds %struct.randread_source, %struct.randread_source* %0, i32 0, i32 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %source, align 8, !tbaa !44
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %3 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %4 = load i64, i64* %size.addr, align 8, !tbaa !13
  call void @readsource(%struct.randread_source* %2, i8* %3, i64 %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %buf1 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %5, i32 0, i32 3
  %isaac = bitcast %union.anon.15* %buf1 to %struct.isaac*
  %6 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %7 = load i64, i64* %size.addr, align 8, !tbaa !13
  call void @readisaac(%struct.isaac* %isaac, i8* %6, i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @readsource(%struct.randread_source* %s, i8* %p, i64 %size) #7 {
entry:
  %s.addr = alloca %struct.randread_source*, align 8
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %inbytes = alloca i64, align 8
  %fread_errno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.randread_source* %s, %struct.randread_source** %s.addr, align 8, !tbaa !6
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %size, i64* %size.addr, align 8, !tbaa !13
  br label %while.body

while.body:                                       ; preds = %entry, %cleanup.cont
  %0 = bitcast i64* %inbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %2 = load i64, i64* %size.addr, align 8, !tbaa !13
  %3 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %source = getelementptr inbounds %struct.randread_source, %struct.randread_source* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %source, align 8, !tbaa !44
  %call = call i64 @fread_unlocked(i8* %1, i64 1, i64 %2, %struct._IO_FILE* %4)
  store i64 %call, i64* %inbytes, align 8, !tbaa !13
  %5 = bitcast i32* %fread_errno to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #13
  %call1 = call i32* @__errno_location() #22
  %6 = load i32, i32* %call1, align 4, !tbaa !2
  store i32 %6, i32* %fread_errno, align 4, !tbaa !2
  %7 = load i64, i64* %inbytes, align 8, !tbaa !13
  %8 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %7
  store i8* %add.ptr, i8** %p.addr, align 8, !tbaa !6
  %9 = load i64, i64* %inbytes, align 8, !tbaa !13
  %10 = load i64, i64* %size.addr, align 8, !tbaa !13
  %sub = sub i64 %10, %9
  store i64 %sub, i64* %size.addr, align 8, !tbaa !13
  %11 = load i64, i64* %size.addr, align 8, !tbaa !13
  %cmp = icmp eq i64 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 3, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %12 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %source2 = getelementptr inbounds %struct.randread_source, %struct.randread_source* %12, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %source2, align 8, !tbaa !44
  %call3 = call i32 @ferror_unlocked(%struct._IO_FILE* %13) #13
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %14 = load i32, i32* %fread_errno, align 4, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ 0, %cond.false ]
  %call4 = call i32* @__errno_location() #22
  store i32 %cond, i32* %call4, align 4, !tbaa !2
  %15 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %handler = getelementptr inbounds %struct.randread_source, %struct.randread_source* %15, i32 0, i32 1
  %16 = load void (i8*)*, void (i8*)** %handler, align 8, !tbaa !46
  %17 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %handler_arg = getelementptr inbounds %struct.randread_source, %struct.randread_source* %17, i32 0, i32 2
  %18 = load i8*, i8** %handler_arg, align 8, !tbaa !47
  call void %16(i8* %18)
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %19 = bitcast i32* %fread_errno to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #13
  %20 = bitcast i64* %inbytes to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.body

while.end:                                        ; preds = %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @readisaac(%struct.isaac* %isaac, i8* %p, i64 %size) #7 {
entry:
  %isaac.addr = alloca %struct.isaac*, align 8
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %inbytes = alloca i64, align 8
  %char_p = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %wp = alloca i64*, align 8
  store %struct.isaac* %isaac, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %size, i64* %size.addr, align 8, !tbaa !13
  %0 = bitcast i64* %inbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.isaac*, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  %buffered = getelementptr inbounds %struct.isaac, %struct.isaac* %1, i32 0, i32 0
  %2 = load i64, i64* %buffered, align 8, !tbaa !48
  store i64 %2, i64* %inbytes, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont28, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %3 = bitcast i8** %char_p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !6
  store i8* %4, i8** %char_p, align 8, !tbaa !6
  %5 = load i64, i64* %size.addr, align 8, !tbaa !13
  %6 = load i64, i64* %inbytes, align 8, !tbaa !13
  %cmp = icmp ule i64 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %8 = load %struct.isaac*, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.isaac, %struct.isaac* %8, i32 0, i32 2
  %b = bitcast %union.anon.0* %data to [2048 x i8]*
  %arraydecay = getelementptr inbounds [2048 x i8], [2048 x i8]* %b, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 2048
  %9 = load i64, i64* %inbytes, align 8, !tbaa !13
  %idx.neg = sub i64 0, %9
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %10 = load i64, i64* %size.addr, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %add.ptr1, i64 %10, i1 false)
  %11 = load i64, i64* %inbytes, align 8, !tbaa !13
  %12 = load i64, i64* %size.addr, align 8, !tbaa !13
  %sub = sub i64 %11, %12
  %13 = load %struct.isaac*, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  %buffered2 = getelementptr inbounds %struct.isaac, %struct.isaac* %13, i32 0, i32 0
  store i64 %sub, i64* %buffered2, align 8, !tbaa !48
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup26

if.end:                                           ; preds = %while.body
  %14 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %15 = load %struct.isaac*, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  %data3 = getelementptr inbounds %struct.isaac, %struct.isaac* %15, i32 0, i32 2
  %b4 = bitcast %union.anon.0* %data3 to [2048 x i8]*
  %arraydecay5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %b4, i64 0, i64 0
  %add.ptr6 = getelementptr inbounds i8, i8* %arraydecay5, i64 2048
  %16 = load i64, i64* %inbytes, align 8, !tbaa !13
  %idx.neg7 = sub i64 0, %16
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr6, i64 %idx.neg7
  %17 = load i64, i64* %inbytes, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 %add.ptr8, i64 %17, i1 false)
  %18 = load i8*, i8** %char_p, align 8, !tbaa !6
  %19 = load i64, i64* %inbytes, align 8, !tbaa !13
  %add.ptr9 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %add.ptr9, i8** %p.addr, align 8, !tbaa !6
  %20 = load i64, i64* %inbytes, align 8, !tbaa !13
  %21 = load i64, i64* %size.addr, align 8, !tbaa !13
  %sub10 = sub i64 %21, %20
  store i64 %sub10, i64* %size.addr, align 8, !tbaa !13
  %22 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %23 = ptrtoint i8* %22 to i64
  %rem = urem i64 %23, 8
  %cmp11 = icmp eq i64 %rem, 0
  br i1 %cmp11, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.end
  %24 = bitcast i64** %wp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #13
  %25 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %26 = bitcast i8* %25 to i64*
  store i64* %26, i64** %wp, align 8, !tbaa !6
  br label %while.cond13

while.cond13:                                     ; preds = %if.end21, %if.then12
  %27 = load i64, i64* %size.addr, align 8, !tbaa !13
  %cmp14 = icmp ule i64 2048, %27
  br i1 %cmp14, label %while.body15, label %while.end

while.body15:                                     ; preds = %while.cond13
  %28 = load %struct.isaac*, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  %state = getelementptr inbounds %struct.isaac, %struct.isaac* %28, i32 0, i32 1
  %29 = load i64*, i64** %wp, align 8, !tbaa !6
  call void @isaac_refill(%struct.isaac_state* %state, i64* %29)
  %30 = load i64*, i64** %wp, align 8, !tbaa !6
  %add.ptr16 = getelementptr inbounds i64, i64* %30, i64 256
  store i64* %add.ptr16, i64** %wp, align 8, !tbaa !6
  %31 = load i64, i64* %size.addr, align 8, !tbaa !13
  %sub17 = sub i64 %31, 2048
  store i64 %sub17, i64* %size.addr, align 8, !tbaa !13
  %32 = load i64, i64* %size.addr, align 8, !tbaa !13
  %cmp18 = icmp eq i64 %32, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %while.body15
  %33 = load %struct.isaac*, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  %buffered20 = getelementptr inbounds %struct.isaac, %struct.isaac* %33, i32 0, i32 0
  store i64 0, i64* %buffered20, align 8, !tbaa !48
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end21:                                         ; preds = %while.body15
  br label %while.cond13

while.end:                                        ; preds = %while.cond13
  %34 = load i64*, i64** %wp, align 8, !tbaa !6
  %35 = bitcast i64* %34 to i8*
  store i8* %35, i8** %p.addr, align 8, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then19
  %36 = bitcast i64** %wp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end22

if.end22:                                         ; preds = %cleanup.cont, %if.end
  %37 = load %struct.isaac*, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  %state23 = getelementptr inbounds %struct.isaac, %struct.isaac* %37, i32 0, i32 1
  %38 = load %struct.isaac*, %struct.isaac** %isaac.addr, align 8, !tbaa !6
  %data24 = getelementptr inbounds %struct.isaac, %struct.isaac* %38, i32 0, i32 2
  %w = bitcast %union.anon.0* %data24 to [256 x i64]*
  %arraydecay25 = getelementptr inbounds [256 x i64], [256 x i64]* %w, i64 0, i64 0
  call void @isaac_refill(%struct.isaac_state* %state23, i64* %arraydecay25)
  store i64 2048, i64* %inbytes, align 8, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %if.end22, %cleanup, %if.then
  %39 = bitcast i8** %char_p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #13
  %cleanup.dest27 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest27, label %cleanup29 [
    i32 0, label %cleanup.cont28
  ]

cleanup.cont28:                                   ; preds = %cleanup26
  br label %while.cond

cleanup29:                                        ; preds = %cleanup26
  %40 = bitcast i64* %inbytes to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #13
  ret void
}

declare dso_local i64 @fread_unlocked(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @randread_free(%struct.randread_source* nonnull %s) #7 {
entry:
  %s.addr = alloca %struct.randread_source*, align 8
  store %struct.randread_source* %s, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %0 = load %struct.randread_source*, %struct.randread_source** %s.addr, align 8, !tbaa !6
  %call = call i32 @randread_free_body(%struct.randread_source* %0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local void @isaac_refill(%struct.isaac_state* nonnull %s, i64* nonnull %result) #7 {
entry:
  %s.addr = alloca %struct.isaac_state*, align 8
  %result.addr = alloca i64*, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %m = alloca i64*, align 8
  %r = alloca i64*, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %x18 = alloca i64, align 8
  %y19 = alloca i64, align 8
  %x40 = alloca i64, align 8
  %y41 = alloca i64, align 8
  %x61 = alloca i64, align 8
  %y62 = alloca i64, align 8
  %x88 = alloca i64, align 8
  %y89 = alloca i64, align 8
  %x110 = alloca i64, align 8
  %y111 = alloca i64, align 8
  %x132 = alloca i64, align 8
  %y133 = alloca i64, align 8
  %x153 = alloca i64, align 8
  %y154 = alloca i64, align 8
  store %struct.isaac_state* %s, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  store i64* %result, i64** %result.addr, align 8, !tbaa !6
  %0 = bitcast i64* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %a1 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %1, i32 0, i32 1
  %2 = load i64, i64* %a1, align 8, !tbaa !51
  store i64 %2, i64* %a, align 8, !tbaa !13
  %3 = bitcast i64* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %b2 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %4, i32 0, i32 2
  %5 = load i64, i64* %b2, align 8, !tbaa !52
  %6 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %c = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %6, i32 0, i32 3
  %7 = load i64, i64* %c, align 8, !tbaa !53
  %inc = add i64 %7, 1
  store i64 %inc, i64* %c, align 8, !tbaa !53
  %add = add i64 %5, %inc
  store i64 %add, i64* %b, align 8, !tbaa !13
  %8 = bitcast i64** %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #13
  %9 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m3 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %9, i32 0, i32 0
  %arraydecay = getelementptr inbounds [256 x i64], [256 x i64]* %m3, i64 0, i64 0
  store i64* %arraydecay, i64** %m, align 8, !tbaa !6
  %10 = bitcast i64** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #13
  %11 = load i64*, i64** %result.addr, align 8, !tbaa !6
  store i64* %11, i64** %r, align 8, !tbaa !6
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %12 = bitcast i64* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #13
  %13 = bitcast i64* %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #13
  %14 = load i64, i64* %a, align 8, !tbaa !13
  %15 = load i64, i64* %a, align 8, !tbaa !13
  %shl = shl i64 %15, 21
  %xor = xor i64 %14, %shl
  %neg = xor i64 %xor, -1
  %xor4 = xor i64 0, %neg
  %16 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i64, i64* %16, i64 128
  %17 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %add5 = add i64 %xor4, %17
  store i64 %add5, i64* %a, align 8, !tbaa !13
  %18 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx6 = getelementptr inbounds i64, i64* %18, i64 0
  %19 = load i64, i64* %arrayidx6, align 8, !tbaa !13
  store i64 %19, i64* %x, align 8, !tbaa !13
  %20 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m7 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %20, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [256 x i64], [256 x i64]* %m7, i64 0, i64 0
  %21 = load i64, i64* %x, align 8, !tbaa !13
  %call = call i64 @ind(i64* %arraydecay8, i64 %21)
  %22 = load i64, i64* %a, align 8, !tbaa !13
  %add9 = add i64 %call, %22
  %23 = load i64, i64* %b, align 8, !tbaa !13
  %add10 = add i64 %add9, %23
  store i64 %add10, i64* %y, align 8, !tbaa !13
  %24 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx11 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %add10, i64* %arrayidx11, align 8, !tbaa !13
  %25 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m12 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %25, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [256 x i64], [256 x i64]* %m12, i64 0, i64 0
  %26 = load i64, i64* %y, align 8, !tbaa !13
  %shr = lshr i64 %26, 8
  %call14 = call i64 @ind(i64* %arraydecay13, i64 %shr)
  %27 = load i64, i64* %x, align 8, !tbaa !13
  %add15 = add i64 %call14, %27
  %call16 = call i64 @just(i64 %add15)
  store i64 %call16, i64* %b, align 8, !tbaa !13
  %28 = load i64*, i64** %r, align 8, !tbaa !6
  %arrayidx17 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %call16, i64* %arrayidx17, align 8, !tbaa !13
  %29 = bitcast i64* %y to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29) #13
  %30 = bitcast i64* %x to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #13
  %31 = bitcast i64* %x18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %31) #13
  %32 = bitcast i64* %y19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %32) #13
  %33 = load i64, i64* %a, align 8, !tbaa !13
  %34 = load i64, i64* %a, align 8, !tbaa !13
  %call20 = call i64 @just(i64 %34)
  %shr21 = lshr i64 %call20, 5
  %xor22 = xor i64 %33, %shr21
  %xor23 = xor i64 0, %xor22
  %35 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx24 = getelementptr inbounds i64, i64* %35, i64 129
  %36 = load i64, i64* %arrayidx24, align 8, !tbaa !13
  %add25 = add i64 %xor23, %36
  store i64 %add25, i64* %a, align 8, !tbaa !13
  %37 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx26 = getelementptr inbounds i64, i64* %37, i64 1
  %38 = load i64, i64* %arrayidx26, align 8, !tbaa !13
  store i64 %38, i64* %x18, align 8, !tbaa !13
  %39 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m27 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %39, i32 0, i32 0
  %arraydecay28 = getelementptr inbounds [256 x i64], [256 x i64]* %m27, i64 0, i64 0
  %40 = load i64, i64* %x18, align 8, !tbaa !13
  %call29 = call i64 @ind(i64* %arraydecay28, i64 %40)
  %41 = load i64, i64* %a, align 8, !tbaa !13
  %add30 = add i64 %call29, %41
  %42 = load i64, i64* %b, align 8, !tbaa !13
  %add31 = add i64 %add30, %42
  store i64 %add31, i64* %y19, align 8, !tbaa !13
  %43 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx32 = getelementptr inbounds i64, i64* %43, i64 1
  store i64 %add31, i64* %arrayidx32, align 8, !tbaa !13
  %44 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m33 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %44, i32 0, i32 0
  %arraydecay34 = getelementptr inbounds [256 x i64], [256 x i64]* %m33, i64 0, i64 0
  %45 = load i64, i64* %y19, align 8, !tbaa !13
  %shr35 = lshr i64 %45, 8
  %call36 = call i64 @ind(i64* %arraydecay34, i64 %shr35)
  %46 = load i64, i64* %x18, align 8, !tbaa !13
  %add37 = add i64 %call36, %46
  %call38 = call i64 @just(i64 %add37)
  store i64 %call38, i64* %b, align 8, !tbaa !13
  %47 = load i64*, i64** %r, align 8, !tbaa !6
  %arrayidx39 = getelementptr inbounds i64, i64* %47, i64 1
  store i64 %call38, i64* %arrayidx39, align 8, !tbaa !13
  %48 = bitcast i64* %y19 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #13
  %49 = bitcast i64* %x18 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #13
  %50 = bitcast i64* %x40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %50) #13
  %51 = bitcast i64* %y41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %51) #13
  %52 = load i64, i64* %a, align 8, !tbaa !13
  %53 = load i64, i64* %a, align 8, !tbaa !13
  %shl42 = shl i64 %53, 12
  %xor43 = xor i64 %52, %shl42
  %xor44 = xor i64 0, %xor43
  %54 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx45 = getelementptr inbounds i64, i64* %54, i64 130
  %55 = load i64, i64* %arrayidx45, align 8, !tbaa !13
  %add46 = add i64 %xor44, %55
  store i64 %add46, i64* %a, align 8, !tbaa !13
  %56 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx47 = getelementptr inbounds i64, i64* %56, i64 2
  %57 = load i64, i64* %arrayidx47, align 8, !tbaa !13
  store i64 %57, i64* %x40, align 8, !tbaa !13
  %58 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m48 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %58, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [256 x i64], [256 x i64]* %m48, i64 0, i64 0
  %59 = load i64, i64* %x40, align 8, !tbaa !13
  %call50 = call i64 @ind(i64* %arraydecay49, i64 %59)
  %60 = load i64, i64* %a, align 8, !tbaa !13
  %add51 = add i64 %call50, %60
  %61 = load i64, i64* %b, align 8, !tbaa !13
  %add52 = add i64 %add51, %61
  store i64 %add52, i64* %y41, align 8, !tbaa !13
  %62 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx53 = getelementptr inbounds i64, i64* %62, i64 2
  store i64 %add52, i64* %arrayidx53, align 8, !tbaa !13
  %63 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m54 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %63, i32 0, i32 0
  %arraydecay55 = getelementptr inbounds [256 x i64], [256 x i64]* %m54, i64 0, i64 0
  %64 = load i64, i64* %y41, align 8, !tbaa !13
  %shr56 = lshr i64 %64, 8
  %call57 = call i64 @ind(i64* %arraydecay55, i64 %shr56)
  %65 = load i64, i64* %x40, align 8, !tbaa !13
  %add58 = add i64 %call57, %65
  %call59 = call i64 @just(i64 %add58)
  store i64 %call59, i64* %b, align 8, !tbaa !13
  %66 = load i64*, i64** %r, align 8, !tbaa !6
  %arrayidx60 = getelementptr inbounds i64, i64* %66, i64 2
  store i64 %call59, i64* %arrayidx60, align 8, !tbaa !13
  %67 = bitcast i64* %y41 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67) #13
  %68 = bitcast i64* %x40 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #13
  %69 = bitcast i64* %x61 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %69) #13
  %70 = bitcast i64* %y62 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %70) #13
  %71 = load i64, i64* %a, align 8, !tbaa !13
  %72 = load i64, i64* %a, align 8, !tbaa !13
  %call63 = call i64 @just(i64 %72)
  %shr64 = lshr i64 %call63, 33
  %xor65 = xor i64 %71, %shr64
  %xor66 = xor i64 0, %xor65
  %73 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx67 = getelementptr inbounds i64, i64* %73, i64 131
  %74 = load i64, i64* %arrayidx67, align 8, !tbaa !13
  %add68 = add i64 %xor66, %74
  store i64 %add68, i64* %a, align 8, !tbaa !13
  %75 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx69 = getelementptr inbounds i64, i64* %75, i64 3
  %76 = load i64, i64* %arrayidx69, align 8, !tbaa !13
  store i64 %76, i64* %x61, align 8, !tbaa !13
  %77 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m70 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %77, i32 0, i32 0
  %arraydecay71 = getelementptr inbounds [256 x i64], [256 x i64]* %m70, i64 0, i64 0
  %78 = load i64, i64* %x61, align 8, !tbaa !13
  %call72 = call i64 @ind(i64* %arraydecay71, i64 %78)
  %79 = load i64, i64* %a, align 8, !tbaa !13
  %add73 = add i64 %call72, %79
  %80 = load i64, i64* %b, align 8, !tbaa !13
  %add74 = add i64 %add73, %80
  store i64 %add74, i64* %y62, align 8, !tbaa !13
  %81 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx75 = getelementptr inbounds i64, i64* %81, i64 3
  store i64 %add74, i64* %arrayidx75, align 8, !tbaa !13
  %82 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m76 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %82, i32 0, i32 0
  %arraydecay77 = getelementptr inbounds [256 x i64], [256 x i64]* %m76, i64 0, i64 0
  %83 = load i64, i64* %y62, align 8, !tbaa !13
  %shr78 = lshr i64 %83, 8
  %call79 = call i64 @ind(i64* %arraydecay77, i64 %shr78)
  %84 = load i64, i64* %x61, align 8, !tbaa !13
  %add80 = add i64 %call79, %84
  %call81 = call i64 @just(i64 %add80)
  store i64 %call81, i64* %b, align 8, !tbaa !13
  %85 = load i64*, i64** %r, align 8, !tbaa !6
  %arrayidx82 = getelementptr inbounds i64, i64* %85, i64 3
  store i64 %call81, i64* %arrayidx82, align 8, !tbaa !13
  %86 = bitcast i64* %y62 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #13
  %87 = bitcast i64* %x61 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %87) #13
  %88 = load i64*, i64** %r, align 8, !tbaa !6
  %add.ptr = getelementptr inbounds i64, i64* %88, i64 4
  store i64* %add.ptr, i64** %r, align 8, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %89 = load i64*, i64** %m, align 8, !tbaa !6
  %add.ptr83 = getelementptr inbounds i64, i64* %89, i64 4
  store i64* %add.ptr83, i64** %m, align 8, !tbaa !6
  %90 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m84 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %90, i32 0, i32 0
  %arraydecay85 = getelementptr inbounds [256 x i64], [256 x i64]* %m84, i64 0, i64 0
  %add.ptr86 = getelementptr inbounds i64, i64* %arraydecay85, i64 128
  %cmp = icmp ult i64* %add.ptr83, %add.ptr86
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body87

do.body87:                                        ; preds = %do.cond176, %do.end
  %91 = bitcast i64* %x88 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %91) #13
  %92 = bitcast i64* %y89 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %92) #13
  %93 = load i64, i64* %a, align 8, !tbaa !13
  %94 = load i64, i64* %a, align 8, !tbaa !13
  %shl90 = shl i64 %94, 21
  %xor91 = xor i64 %93, %shl90
  %neg92 = xor i64 %xor91, -1
  %xor93 = xor i64 0, %neg92
  %95 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx94 = getelementptr inbounds i64, i64* %95, i64 -128
  %96 = load i64, i64* %arrayidx94, align 8, !tbaa !13
  %add95 = add i64 %xor93, %96
  store i64 %add95, i64* %a, align 8, !tbaa !13
  %97 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx96 = getelementptr inbounds i64, i64* %97, i64 0
  %98 = load i64, i64* %arrayidx96, align 8, !tbaa !13
  store i64 %98, i64* %x88, align 8, !tbaa !13
  %99 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m97 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %99, i32 0, i32 0
  %arraydecay98 = getelementptr inbounds [256 x i64], [256 x i64]* %m97, i64 0, i64 0
  %100 = load i64, i64* %x88, align 8, !tbaa !13
  %call99 = call i64 @ind(i64* %arraydecay98, i64 %100)
  %101 = load i64, i64* %a, align 8, !tbaa !13
  %add100 = add i64 %call99, %101
  %102 = load i64, i64* %b, align 8, !tbaa !13
  %add101 = add i64 %add100, %102
  store i64 %add101, i64* %y89, align 8, !tbaa !13
  %103 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx102 = getelementptr inbounds i64, i64* %103, i64 0
  store i64 %add101, i64* %arrayidx102, align 8, !tbaa !13
  %104 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m103 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %104, i32 0, i32 0
  %arraydecay104 = getelementptr inbounds [256 x i64], [256 x i64]* %m103, i64 0, i64 0
  %105 = load i64, i64* %y89, align 8, !tbaa !13
  %shr105 = lshr i64 %105, 8
  %call106 = call i64 @ind(i64* %arraydecay104, i64 %shr105)
  %106 = load i64, i64* %x88, align 8, !tbaa !13
  %add107 = add i64 %call106, %106
  %call108 = call i64 @just(i64 %add107)
  store i64 %call108, i64* %b, align 8, !tbaa !13
  %107 = load i64*, i64** %r, align 8, !tbaa !6
  %arrayidx109 = getelementptr inbounds i64, i64* %107, i64 0
  store i64 %call108, i64* %arrayidx109, align 8, !tbaa !13
  %108 = bitcast i64* %y89 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %108) #13
  %109 = bitcast i64* %x88 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %109) #13
  %110 = bitcast i64* %x110 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %110) #13
  %111 = bitcast i64* %y111 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %111) #13
  %112 = load i64, i64* %a, align 8, !tbaa !13
  %113 = load i64, i64* %a, align 8, !tbaa !13
  %call112 = call i64 @just(i64 %113)
  %shr113 = lshr i64 %call112, 5
  %xor114 = xor i64 %112, %shr113
  %xor115 = xor i64 0, %xor114
  %114 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx116 = getelementptr inbounds i64, i64* %114, i64 -127
  %115 = load i64, i64* %arrayidx116, align 8, !tbaa !13
  %add117 = add i64 %xor115, %115
  store i64 %add117, i64* %a, align 8, !tbaa !13
  %116 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx118 = getelementptr inbounds i64, i64* %116, i64 1
  %117 = load i64, i64* %arrayidx118, align 8, !tbaa !13
  store i64 %117, i64* %x110, align 8, !tbaa !13
  %118 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m119 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %118, i32 0, i32 0
  %arraydecay120 = getelementptr inbounds [256 x i64], [256 x i64]* %m119, i64 0, i64 0
  %119 = load i64, i64* %x110, align 8, !tbaa !13
  %call121 = call i64 @ind(i64* %arraydecay120, i64 %119)
  %120 = load i64, i64* %a, align 8, !tbaa !13
  %add122 = add i64 %call121, %120
  %121 = load i64, i64* %b, align 8, !tbaa !13
  %add123 = add i64 %add122, %121
  store i64 %add123, i64* %y111, align 8, !tbaa !13
  %122 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx124 = getelementptr inbounds i64, i64* %122, i64 1
  store i64 %add123, i64* %arrayidx124, align 8, !tbaa !13
  %123 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m125 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %123, i32 0, i32 0
  %arraydecay126 = getelementptr inbounds [256 x i64], [256 x i64]* %m125, i64 0, i64 0
  %124 = load i64, i64* %y111, align 8, !tbaa !13
  %shr127 = lshr i64 %124, 8
  %call128 = call i64 @ind(i64* %arraydecay126, i64 %shr127)
  %125 = load i64, i64* %x110, align 8, !tbaa !13
  %add129 = add i64 %call128, %125
  %call130 = call i64 @just(i64 %add129)
  store i64 %call130, i64* %b, align 8, !tbaa !13
  %126 = load i64*, i64** %r, align 8, !tbaa !6
  %arrayidx131 = getelementptr inbounds i64, i64* %126, i64 1
  store i64 %call130, i64* %arrayidx131, align 8, !tbaa !13
  %127 = bitcast i64* %y111 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %127) #13
  %128 = bitcast i64* %x110 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %128) #13
  %129 = bitcast i64* %x132 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %129) #13
  %130 = bitcast i64* %y133 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %130) #13
  %131 = load i64, i64* %a, align 8, !tbaa !13
  %132 = load i64, i64* %a, align 8, !tbaa !13
  %shl134 = shl i64 %132, 12
  %xor135 = xor i64 %131, %shl134
  %xor136 = xor i64 0, %xor135
  %133 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx137 = getelementptr inbounds i64, i64* %133, i64 -126
  %134 = load i64, i64* %arrayidx137, align 8, !tbaa !13
  %add138 = add i64 %xor136, %134
  store i64 %add138, i64* %a, align 8, !tbaa !13
  %135 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx139 = getelementptr inbounds i64, i64* %135, i64 2
  %136 = load i64, i64* %arrayidx139, align 8, !tbaa !13
  store i64 %136, i64* %x132, align 8, !tbaa !13
  %137 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m140 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %137, i32 0, i32 0
  %arraydecay141 = getelementptr inbounds [256 x i64], [256 x i64]* %m140, i64 0, i64 0
  %138 = load i64, i64* %x132, align 8, !tbaa !13
  %call142 = call i64 @ind(i64* %arraydecay141, i64 %138)
  %139 = load i64, i64* %a, align 8, !tbaa !13
  %add143 = add i64 %call142, %139
  %140 = load i64, i64* %b, align 8, !tbaa !13
  %add144 = add i64 %add143, %140
  store i64 %add144, i64* %y133, align 8, !tbaa !13
  %141 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx145 = getelementptr inbounds i64, i64* %141, i64 2
  store i64 %add144, i64* %arrayidx145, align 8, !tbaa !13
  %142 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m146 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %142, i32 0, i32 0
  %arraydecay147 = getelementptr inbounds [256 x i64], [256 x i64]* %m146, i64 0, i64 0
  %143 = load i64, i64* %y133, align 8, !tbaa !13
  %shr148 = lshr i64 %143, 8
  %call149 = call i64 @ind(i64* %arraydecay147, i64 %shr148)
  %144 = load i64, i64* %x132, align 8, !tbaa !13
  %add150 = add i64 %call149, %144
  %call151 = call i64 @just(i64 %add150)
  store i64 %call151, i64* %b, align 8, !tbaa !13
  %145 = load i64*, i64** %r, align 8, !tbaa !6
  %arrayidx152 = getelementptr inbounds i64, i64* %145, i64 2
  store i64 %call151, i64* %arrayidx152, align 8, !tbaa !13
  %146 = bitcast i64* %y133 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %146) #13
  %147 = bitcast i64* %x132 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %147) #13
  %148 = bitcast i64* %x153 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %148) #13
  %149 = bitcast i64* %y154 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %149) #13
  %150 = load i64, i64* %a, align 8, !tbaa !13
  %151 = load i64, i64* %a, align 8, !tbaa !13
  %call155 = call i64 @just(i64 %151)
  %shr156 = lshr i64 %call155, 33
  %xor157 = xor i64 %150, %shr156
  %xor158 = xor i64 0, %xor157
  %152 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx159 = getelementptr inbounds i64, i64* %152, i64 -125
  %153 = load i64, i64* %arrayidx159, align 8, !tbaa !13
  %add160 = add i64 %xor158, %153
  store i64 %add160, i64* %a, align 8, !tbaa !13
  %154 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx161 = getelementptr inbounds i64, i64* %154, i64 3
  %155 = load i64, i64* %arrayidx161, align 8, !tbaa !13
  store i64 %155, i64* %x153, align 8, !tbaa !13
  %156 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m162 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %156, i32 0, i32 0
  %arraydecay163 = getelementptr inbounds [256 x i64], [256 x i64]* %m162, i64 0, i64 0
  %157 = load i64, i64* %x153, align 8, !tbaa !13
  %call164 = call i64 @ind(i64* %arraydecay163, i64 %157)
  %158 = load i64, i64* %a, align 8, !tbaa !13
  %add165 = add i64 %call164, %158
  %159 = load i64, i64* %b, align 8, !tbaa !13
  %add166 = add i64 %add165, %159
  store i64 %add166, i64* %y154, align 8, !tbaa !13
  %160 = load i64*, i64** %m, align 8, !tbaa !6
  %arrayidx167 = getelementptr inbounds i64, i64* %160, i64 3
  store i64 %add166, i64* %arrayidx167, align 8, !tbaa !13
  %161 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m168 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %161, i32 0, i32 0
  %arraydecay169 = getelementptr inbounds [256 x i64], [256 x i64]* %m168, i64 0, i64 0
  %162 = load i64, i64* %y154, align 8, !tbaa !13
  %shr170 = lshr i64 %162, 8
  %call171 = call i64 @ind(i64* %arraydecay169, i64 %shr170)
  %163 = load i64, i64* %x153, align 8, !tbaa !13
  %add172 = add i64 %call171, %163
  %call173 = call i64 @just(i64 %add172)
  store i64 %call173, i64* %b, align 8, !tbaa !13
  %164 = load i64*, i64** %r, align 8, !tbaa !6
  %arrayidx174 = getelementptr inbounds i64, i64* %164, i64 3
  store i64 %call173, i64* %arrayidx174, align 8, !tbaa !13
  %165 = bitcast i64* %y154 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %165) #13
  %166 = bitcast i64* %x153 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %166) #13
  %167 = load i64*, i64** %r, align 8, !tbaa !6
  %add.ptr175 = getelementptr inbounds i64, i64* %167, i64 4
  store i64* %add.ptr175, i64** %r, align 8, !tbaa !6
  br label %do.cond176

do.cond176:                                       ; preds = %do.body87
  %168 = load i64*, i64** %m, align 8, !tbaa !6
  %add.ptr177 = getelementptr inbounds i64, i64* %168, i64 4
  store i64* %add.ptr177, i64** %m, align 8, !tbaa !6
  %169 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m178 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %169, i32 0, i32 0
  %arraydecay179 = getelementptr inbounds [256 x i64], [256 x i64]* %m178, i64 0, i64 0
  %add.ptr180 = getelementptr inbounds i64, i64* %arraydecay179, i64 256
  %cmp181 = icmp ult i64* %add.ptr177, %add.ptr180
  br i1 %cmp181, label %do.body87, label %do.end182

do.end182:                                        ; preds = %do.cond176
  %170 = load i64, i64* %a, align 8, !tbaa !13
  %171 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %a183 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %171, i32 0, i32 1
  store i64 %170, i64* %a183, align 8, !tbaa !51
  %172 = load i64, i64* %b, align 8, !tbaa !13
  %173 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %b184 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %173, i32 0, i32 2
  store i64 %172, i64* %b184, align 8, !tbaa !52
  %174 = bitcast i64** %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %174) #13
  %175 = bitcast i64** %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %175) #13
  %176 = bitcast i64* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %176) #13
  %177 = bitcast i64* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %177) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @ind(i64* %m, i64 %x) #2 {
entry:
  %m.addr = alloca i64*, align 8
  %x.addr = alloca i64, align 8
  %void_m = alloca i8*, align 8
  %base_p = alloca i8*, align 8
  %word_p = alloca i8*, align 8
  %p = alloca i64*, align 8
  store i64* %m, i64** %m.addr, align 8, !tbaa !6
  store i64 %x, i64* %x.addr, align 8, !tbaa !13
  %0 = bitcast i8** %void_m to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64*, i64** %m.addr, align 8, !tbaa !6
  %2 = bitcast i64* %1 to i8*
  store i8* %2, i8** %void_m, align 8, !tbaa !6
  %3 = bitcast i8** %base_p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load i8*, i8** %void_m, align 8, !tbaa !6
  store i8* %4, i8** %base_p, align 8, !tbaa !6
  %5 = bitcast i8** %word_p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  %6 = load i8*, i8** %base_p, align 8, !tbaa !6
  %7 = load i64, i64* %x.addr, align 8, !tbaa !13
  %and = and i64 %7, 2040
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %and
  store i8* %add.ptr, i8** %word_p, align 8, !tbaa !6
  %8 = bitcast i64** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #13
  %9 = load i8*, i8** %word_p, align 8, !tbaa !6
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %p, align 8, !tbaa !6
  %11 = load i64*, i64** %p, align 8, !tbaa !6
  %12 = load i64, i64* %11, align 8, !tbaa !13
  %13 = bitcast i64** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %13) #13
  %14 = bitcast i8** %word_p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #13
  %15 = bitcast i8** %base_p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #13
  %16 = bitcast i8** %void_m to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #13
  ret i64 %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @just(i64 %a) #2 {
entry:
  %a.addr = alloca i64, align 8
  %desired_bits = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8, !tbaa !13
  %0 = bitcast i64* %desired_bits to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 -1, i64* %desired_bits, align 8, !tbaa !13
  %1 = load i64, i64* %a.addr, align 8, !tbaa !13
  %2 = load i64, i64* %desired_bits, align 8, !tbaa !13
  %and = and i64 %1, %2
  %3 = bitcast i64* %desired_bits to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #13
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define dso_local void @isaac_seed(%struct.isaac_state* nonnull %s) #7 {
entry:
  %s.addr = alloca %struct.isaac_state*, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  %f = alloca i64, align 8
  %g = alloca i64, align 8
  %h = alloca i64, align 8
  %i = alloca i32, align 4
  %i99 = alloca i32, align 4
  store %struct.isaac_state* %s, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %0 = bitcast i64* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 7240739780546808700, i64* %a, align 8, !tbaa !13
  %1 = bitcast i64* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  store i64 -5046086420515862430, i64* %b, align 8, !tbaa !13
  %2 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  store i64 -8354558816804203872, i64* %c, align 8, !tbaa !13
  %3 = bitcast i64* %d to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  store i64 -5576812576440232668, i64* %d, align 8, !tbaa !13
  %4 = bitcast i64* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #13
  store i64 -9011610652101975858, i64* %e, align 8, !tbaa !13
  %5 = bitcast i64* %f to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  store i64 5259722845879046933, i64* %f, align 8, !tbaa !13
  %6 = bitcast i64* %g to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #13
  store i64 -5865837416287532563, i64* %g, align 8, !tbaa !13
  %7 = bitcast i64* %h to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #13
  store i64 -7424904924229222229, i64* %h, align 8, !tbaa !13
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #13
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %cmp = icmp slt i32 %9, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %10, i32 0, i32 0
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [256 x i64], [256 x i64]* %m, i64 0, i64 %idxprom
  %12 = load i64, i64* %arrayidx, align 8, !tbaa !13
  %13 = load i64, i64* %a, align 8, !tbaa !13
  %add = add i64 %13, %12
  store i64 %add, i64* %a, align 8, !tbaa !13
  %14 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m1 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %14, i32 0, i32 0
  %15 = load i32, i32* %i, align 4, !tbaa !2
  %add2 = add nsw i32 %15, 1
  %idxprom3 = sext i32 %add2 to i64
  %arrayidx4 = getelementptr inbounds [256 x i64], [256 x i64]* %m1, i64 0, i64 %idxprom3
  %16 = load i64, i64* %arrayidx4, align 8, !tbaa !13
  %17 = load i64, i64* %b, align 8, !tbaa !13
  %add5 = add i64 %17, %16
  store i64 %add5, i64* %b, align 8, !tbaa !13
  %18 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m6 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %18, i32 0, i32 0
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %add7 = add nsw i32 %19, 2
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds [256 x i64], [256 x i64]* %m6, i64 0, i64 %idxprom8
  %20 = load i64, i64* %arrayidx9, align 8, !tbaa !13
  %21 = load i64, i64* %c, align 8, !tbaa !13
  %add10 = add i64 %21, %20
  store i64 %add10, i64* %c, align 8, !tbaa !13
  %22 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m11 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %22, i32 0, i32 0
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %add12 = add nsw i32 %23, 3
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds [256 x i64], [256 x i64]* %m11, i64 0, i64 %idxprom13
  %24 = load i64, i64* %arrayidx14, align 8, !tbaa !13
  %25 = load i64, i64* %d, align 8, !tbaa !13
  %add15 = add i64 %25, %24
  store i64 %add15, i64* %d, align 8, !tbaa !13
  %26 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m16 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %26, i32 0, i32 0
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %add17 = add nsw i32 %27, 4
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [256 x i64], [256 x i64]* %m16, i64 0, i64 %idxprom18
  %28 = load i64, i64* %arrayidx19, align 8, !tbaa !13
  %29 = load i64, i64* %e, align 8, !tbaa !13
  %add20 = add i64 %29, %28
  store i64 %add20, i64* %e, align 8, !tbaa !13
  %30 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m21 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %30, i32 0, i32 0
  %31 = load i32, i32* %i, align 4, !tbaa !2
  %add22 = add nsw i32 %31, 5
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [256 x i64], [256 x i64]* %m21, i64 0, i64 %idxprom23
  %32 = load i64, i64* %arrayidx24, align 8, !tbaa !13
  %33 = load i64, i64* %f, align 8, !tbaa !13
  %add25 = add i64 %33, %32
  store i64 %add25, i64* %f, align 8, !tbaa !13
  %34 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m26 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %34, i32 0, i32 0
  %35 = load i32, i32* %i, align 4, !tbaa !2
  %add27 = add nsw i32 %35, 6
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [256 x i64], [256 x i64]* %m26, i64 0, i64 %idxprom28
  %36 = load i64, i64* %arrayidx29, align 8, !tbaa !13
  %37 = load i64, i64* %g, align 8, !tbaa !13
  %add30 = add i64 %37, %36
  store i64 %add30, i64* %g, align 8, !tbaa !13
  %38 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m31 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %38, i32 0, i32 0
  %39 = load i32, i32* %i, align 4, !tbaa !2
  %add32 = add nsw i32 %39, 7
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds [256 x i64], [256 x i64]* %m31, i64 0, i64 %idxprom33
  %40 = load i64, i64* %arrayidx34, align 8, !tbaa !13
  %41 = load i64, i64* %h, align 8, !tbaa !13
  %add35 = add i64 %41, %40
  store i64 %add35, i64* %h, align 8, !tbaa !13
  %42 = load i64, i64* %e, align 8, !tbaa !13
  %43 = load i64, i64* %a, align 8, !tbaa !13
  %sub = sub i64 %43, %42
  store i64 %sub, i64* %a, align 8, !tbaa !13
  %44 = load i64, i64* %h, align 8, !tbaa !13
  %call = call i64 @just(i64 %44)
  %shr = lshr i64 %call, 9
  %45 = load i64, i64* %f, align 8, !tbaa !13
  %xor = xor i64 %45, %shr
  store i64 %xor, i64* %f, align 8, !tbaa !13
  %46 = load i64, i64* %a, align 8, !tbaa !13
  %47 = load i64, i64* %h, align 8, !tbaa !13
  %add36 = add i64 %47, %46
  store i64 %add36, i64* %h, align 8, !tbaa !13
  %48 = load i64, i64* %f, align 8, !tbaa !13
  %49 = load i64, i64* %b, align 8, !tbaa !13
  %sub37 = sub i64 %49, %48
  store i64 %sub37, i64* %b, align 8, !tbaa !13
  %50 = load i64, i64* %a, align 8, !tbaa !13
  %shl = shl i64 %50, 9
  %51 = load i64, i64* %g, align 8, !tbaa !13
  %xor38 = xor i64 %51, %shl
  store i64 %xor38, i64* %g, align 8, !tbaa !13
  %52 = load i64, i64* %b, align 8, !tbaa !13
  %53 = load i64, i64* %a, align 8, !tbaa !13
  %add39 = add i64 %53, %52
  store i64 %add39, i64* %a, align 8, !tbaa !13
  %54 = load i64, i64* %g, align 8, !tbaa !13
  %55 = load i64, i64* %c, align 8, !tbaa !13
  %sub40 = sub i64 %55, %54
  store i64 %sub40, i64* %c, align 8, !tbaa !13
  %56 = load i64, i64* %b, align 8, !tbaa !13
  %call41 = call i64 @just(i64 %56)
  %shr42 = lshr i64 %call41, 23
  %57 = load i64, i64* %h, align 8, !tbaa !13
  %xor43 = xor i64 %57, %shr42
  store i64 %xor43, i64* %h, align 8, !tbaa !13
  %58 = load i64, i64* %c, align 8, !tbaa !13
  %59 = load i64, i64* %b, align 8, !tbaa !13
  %add44 = add i64 %59, %58
  store i64 %add44, i64* %b, align 8, !tbaa !13
  %60 = load i64, i64* %h, align 8, !tbaa !13
  %61 = load i64, i64* %d, align 8, !tbaa !13
  %sub45 = sub i64 %61, %60
  store i64 %sub45, i64* %d, align 8, !tbaa !13
  %62 = load i64, i64* %c, align 8, !tbaa !13
  %shl46 = shl i64 %62, 15
  %63 = load i64, i64* %a, align 8, !tbaa !13
  %xor47 = xor i64 %63, %shl46
  store i64 %xor47, i64* %a, align 8, !tbaa !13
  %64 = load i64, i64* %d, align 8, !tbaa !13
  %65 = load i64, i64* %c, align 8, !tbaa !13
  %add48 = add i64 %65, %64
  store i64 %add48, i64* %c, align 8, !tbaa !13
  %66 = load i64, i64* %a, align 8, !tbaa !13
  %67 = load i64, i64* %e, align 8, !tbaa !13
  %sub49 = sub i64 %67, %66
  store i64 %sub49, i64* %e, align 8, !tbaa !13
  %68 = load i64, i64* %d, align 8, !tbaa !13
  %call50 = call i64 @just(i64 %68)
  %shr51 = lshr i64 %call50, 14
  %69 = load i64, i64* %b, align 8, !tbaa !13
  %xor52 = xor i64 %69, %shr51
  store i64 %xor52, i64* %b, align 8, !tbaa !13
  %70 = load i64, i64* %e, align 8, !tbaa !13
  %71 = load i64, i64* %d, align 8, !tbaa !13
  %add53 = add i64 %71, %70
  store i64 %add53, i64* %d, align 8, !tbaa !13
  %72 = load i64, i64* %b, align 8, !tbaa !13
  %73 = load i64, i64* %f, align 8, !tbaa !13
  %sub54 = sub i64 %73, %72
  store i64 %sub54, i64* %f, align 8, !tbaa !13
  %74 = load i64, i64* %e, align 8, !tbaa !13
  %shl55 = shl i64 %74, 20
  %75 = load i64, i64* %c, align 8, !tbaa !13
  %xor56 = xor i64 %75, %shl55
  store i64 %xor56, i64* %c, align 8, !tbaa !13
  %76 = load i64, i64* %f, align 8, !tbaa !13
  %77 = load i64, i64* %e, align 8, !tbaa !13
  %add57 = add i64 %77, %76
  store i64 %add57, i64* %e, align 8, !tbaa !13
  %78 = load i64, i64* %c, align 8, !tbaa !13
  %79 = load i64, i64* %g, align 8, !tbaa !13
  %sub58 = sub i64 %79, %78
  store i64 %sub58, i64* %g, align 8, !tbaa !13
  %80 = load i64, i64* %f, align 8, !tbaa !13
  %call59 = call i64 @just(i64 %80)
  %shr60 = lshr i64 %call59, 17
  %81 = load i64, i64* %d, align 8, !tbaa !13
  %xor61 = xor i64 %81, %shr60
  store i64 %xor61, i64* %d, align 8, !tbaa !13
  %82 = load i64, i64* %g, align 8, !tbaa !13
  %83 = load i64, i64* %f, align 8, !tbaa !13
  %add62 = add i64 %83, %82
  store i64 %add62, i64* %f, align 8, !tbaa !13
  %84 = load i64, i64* %d, align 8, !tbaa !13
  %85 = load i64, i64* %h, align 8, !tbaa !13
  %sub63 = sub i64 %85, %84
  store i64 %sub63, i64* %h, align 8, !tbaa !13
  %86 = load i64, i64* %g, align 8, !tbaa !13
  %shl64 = shl i64 %86, 14
  %87 = load i64, i64* %e, align 8, !tbaa !13
  %xor65 = xor i64 %87, %shl64
  store i64 %xor65, i64* %e, align 8, !tbaa !13
  %88 = load i64, i64* %h, align 8, !tbaa !13
  %89 = load i64, i64* %g, align 8, !tbaa !13
  %add66 = add i64 %89, %88
  store i64 %add66, i64* %g, align 8, !tbaa !13
  %90 = load i64, i64* %a, align 8, !tbaa !13
  %91 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m67 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %91, i32 0, i32 0
  %92 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom68 = sext i32 %92 to i64
  %arrayidx69 = getelementptr inbounds [256 x i64], [256 x i64]* %m67, i64 0, i64 %idxprom68
  store i64 %90, i64* %arrayidx69, align 8, !tbaa !13
  %93 = load i64, i64* %b, align 8, !tbaa !13
  %94 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m70 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %94, i32 0, i32 0
  %95 = load i32, i32* %i, align 4, !tbaa !2
  %add71 = add nsw i32 %95, 1
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [256 x i64], [256 x i64]* %m70, i64 0, i64 %idxprom72
  store i64 %93, i64* %arrayidx73, align 8, !tbaa !13
  %96 = load i64, i64* %c, align 8, !tbaa !13
  %97 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m74 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %97, i32 0, i32 0
  %98 = load i32, i32* %i, align 4, !tbaa !2
  %add75 = add nsw i32 %98, 2
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds [256 x i64], [256 x i64]* %m74, i64 0, i64 %idxprom76
  store i64 %96, i64* %arrayidx77, align 8, !tbaa !13
  %99 = load i64, i64* %d, align 8, !tbaa !13
  %100 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m78 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %100, i32 0, i32 0
  %101 = load i32, i32* %i, align 4, !tbaa !2
  %add79 = add nsw i32 %101, 3
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds [256 x i64], [256 x i64]* %m78, i64 0, i64 %idxprom80
  store i64 %99, i64* %arrayidx81, align 8, !tbaa !13
  %102 = load i64, i64* %e, align 8, !tbaa !13
  %103 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m82 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %103, i32 0, i32 0
  %104 = load i32, i32* %i, align 4, !tbaa !2
  %add83 = add nsw i32 %104, 4
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds [256 x i64], [256 x i64]* %m82, i64 0, i64 %idxprom84
  store i64 %102, i64* %arrayidx85, align 8, !tbaa !13
  %105 = load i64, i64* %f, align 8, !tbaa !13
  %106 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m86 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %106, i32 0, i32 0
  %107 = load i32, i32* %i, align 4, !tbaa !2
  %add87 = add nsw i32 %107, 5
  %idxprom88 = sext i32 %add87 to i64
  %arrayidx89 = getelementptr inbounds [256 x i64], [256 x i64]* %m86, i64 0, i64 %idxprom88
  store i64 %105, i64* %arrayidx89, align 8, !tbaa !13
  %108 = load i64, i64* %g, align 8, !tbaa !13
  %109 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m90 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %109, i32 0, i32 0
  %110 = load i32, i32* %i, align 4, !tbaa !2
  %add91 = add nsw i32 %110, 6
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [256 x i64], [256 x i64]* %m90, i64 0, i64 %idxprom92
  store i64 %108, i64* %arrayidx93, align 8, !tbaa !13
  %111 = load i64, i64* %h, align 8, !tbaa !13
  %112 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m94 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %112, i32 0, i32 0
  %113 = load i32, i32* %i, align 4, !tbaa !2
  %add95 = add nsw i32 %113, 7
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds [256 x i64], [256 x i64]* %m94, i64 0, i64 %idxprom96
  store i64 %111, i64* %arrayidx97, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %114 = load i32, i32* %i, align 4, !tbaa !2
  %add98 = add nsw i32 %114, 8
  store i32 %add98, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %115 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %115) #13
  %116 = bitcast i32* %i99 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %116) #13
  store i32 0, i32* %i99, align 4, !tbaa !2
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc209, %for.end
  %117 = load i32, i32* %i99, align 4, !tbaa !2
  %cmp101 = icmp slt i32 %117, 256
  br i1 %cmp101, label %for.body102, label %for.end211

for.body102:                                      ; preds = %for.cond100
  %118 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m103 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %118, i32 0, i32 0
  %119 = load i32, i32* %i99, align 4, !tbaa !2
  %idxprom104 = sext i32 %119 to i64
  %arrayidx105 = getelementptr inbounds [256 x i64], [256 x i64]* %m103, i64 0, i64 %idxprom104
  %120 = load i64, i64* %arrayidx105, align 8, !tbaa !13
  %121 = load i64, i64* %a, align 8, !tbaa !13
  %add106 = add i64 %121, %120
  store i64 %add106, i64* %a, align 8, !tbaa !13
  %122 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m107 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %122, i32 0, i32 0
  %123 = load i32, i32* %i99, align 4, !tbaa !2
  %add108 = add nsw i32 %123, 1
  %idxprom109 = sext i32 %add108 to i64
  %arrayidx110 = getelementptr inbounds [256 x i64], [256 x i64]* %m107, i64 0, i64 %idxprom109
  %124 = load i64, i64* %arrayidx110, align 8, !tbaa !13
  %125 = load i64, i64* %b, align 8, !tbaa !13
  %add111 = add i64 %125, %124
  store i64 %add111, i64* %b, align 8, !tbaa !13
  %126 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m112 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %126, i32 0, i32 0
  %127 = load i32, i32* %i99, align 4, !tbaa !2
  %add113 = add nsw i32 %127, 2
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds [256 x i64], [256 x i64]* %m112, i64 0, i64 %idxprom114
  %128 = load i64, i64* %arrayidx115, align 8, !tbaa !13
  %129 = load i64, i64* %c, align 8, !tbaa !13
  %add116 = add i64 %129, %128
  store i64 %add116, i64* %c, align 8, !tbaa !13
  %130 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m117 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %130, i32 0, i32 0
  %131 = load i32, i32* %i99, align 4, !tbaa !2
  %add118 = add nsw i32 %131, 3
  %idxprom119 = sext i32 %add118 to i64
  %arrayidx120 = getelementptr inbounds [256 x i64], [256 x i64]* %m117, i64 0, i64 %idxprom119
  %132 = load i64, i64* %arrayidx120, align 8, !tbaa !13
  %133 = load i64, i64* %d, align 8, !tbaa !13
  %add121 = add i64 %133, %132
  store i64 %add121, i64* %d, align 8, !tbaa !13
  %134 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m122 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %134, i32 0, i32 0
  %135 = load i32, i32* %i99, align 4, !tbaa !2
  %add123 = add nsw i32 %135, 4
  %idxprom124 = sext i32 %add123 to i64
  %arrayidx125 = getelementptr inbounds [256 x i64], [256 x i64]* %m122, i64 0, i64 %idxprom124
  %136 = load i64, i64* %arrayidx125, align 8, !tbaa !13
  %137 = load i64, i64* %e, align 8, !tbaa !13
  %add126 = add i64 %137, %136
  store i64 %add126, i64* %e, align 8, !tbaa !13
  %138 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m127 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %138, i32 0, i32 0
  %139 = load i32, i32* %i99, align 4, !tbaa !2
  %add128 = add nsw i32 %139, 5
  %idxprom129 = sext i32 %add128 to i64
  %arrayidx130 = getelementptr inbounds [256 x i64], [256 x i64]* %m127, i64 0, i64 %idxprom129
  %140 = load i64, i64* %arrayidx130, align 8, !tbaa !13
  %141 = load i64, i64* %f, align 8, !tbaa !13
  %add131 = add i64 %141, %140
  store i64 %add131, i64* %f, align 8, !tbaa !13
  %142 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m132 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %142, i32 0, i32 0
  %143 = load i32, i32* %i99, align 4, !tbaa !2
  %add133 = add nsw i32 %143, 6
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds [256 x i64], [256 x i64]* %m132, i64 0, i64 %idxprom134
  %144 = load i64, i64* %arrayidx135, align 8, !tbaa !13
  %145 = load i64, i64* %g, align 8, !tbaa !13
  %add136 = add i64 %145, %144
  store i64 %add136, i64* %g, align 8, !tbaa !13
  %146 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m137 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %146, i32 0, i32 0
  %147 = load i32, i32* %i99, align 4, !tbaa !2
  %add138 = add nsw i32 %147, 7
  %idxprom139 = sext i32 %add138 to i64
  %arrayidx140 = getelementptr inbounds [256 x i64], [256 x i64]* %m137, i64 0, i64 %idxprom139
  %148 = load i64, i64* %arrayidx140, align 8, !tbaa !13
  %149 = load i64, i64* %h, align 8, !tbaa !13
  %add141 = add i64 %149, %148
  store i64 %add141, i64* %h, align 8, !tbaa !13
  %150 = load i64, i64* %e, align 8, !tbaa !13
  %151 = load i64, i64* %a, align 8, !tbaa !13
  %sub142 = sub i64 %151, %150
  store i64 %sub142, i64* %a, align 8, !tbaa !13
  %152 = load i64, i64* %h, align 8, !tbaa !13
  %call143 = call i64 @just(i64 %152)
  %shr144 = lshr i64 %call143, 9
  %153 = load i64, i64* %f, align 8, !tbaa !13
  %xor145 = xor i64 %153, %shr144
  store i64 %xor145, i64* %f, align 8, !tbaa !13
  %154 = load i64, i64* %a, align 8, !tbaa !13
  %155 = load i64, i64* %h, align 8, !tbaa !13
  %add146 = add i64 %155, %154
  store i64 %add146, i64* %h, align 8, !tbaa !13
  %156 = load i64, i64* %f, align 8, !tbaa !13
  %157 = load i64, i64* %b, align 8, !tbaa !13
  %sub147 = sub i64 %157, %156
  store i64 %sub147, i64* %b, align 8, !tbaa !13
  %158 = load i64, i64* %a, align 8, !tbaa !13
  %shl148 = shl i64 %158, 9
  %159 = load i64, i64* %g, align 8, !tbaa !13
  %xor149 = xor i64 %159, %shl148
  store i64 %xor149, i64* %g, align 8, !tbaa !13
  %160 = load i64, i64* %b, align 8, !tbaa !13
  %161 = load i64, i64* %a, align 8, !tbaa !13
  %add150 = add i64 %161, %160
  store i64 %add150, i64* %a, align 8, !tbaa !13
  %162 = load i64, i64* %g, align 8, !tbaa !13
  %163 = load i64, i64* %c, align 8, !tbaa !13
  %sub151 = sub i64 %163, %162
  store i64 %sub151, i64* %c, align 8, !tbaa !13
  %164 = load i64, i64* %b, align 8, !tbaa !13
  %call152 = call i64 @just(i64 %164)
  %shr153 = lshr i64 %call152, 23
  %165 = load i64, i64* %h, align 8, !tbaa !13
  %xor154 = xor i64 %165, %shr153
  store i64 %xor154, i64* %h, align 8, !tbaa !13
  %166 = load i64, i64* %c, align 8, !tbaa !13
  %167 = load i64, i64* %b, align 8, !tbaa !13
  %add155 = add i64 %167, %166
  store i64 %add155, i64* %b, align 8, !tbaa !13
  %168 = load i64, i64* %h, align 8, !tbaa !13
  %169 = load i64, i64* %d, align 8, !tbaa !13
  %sub156 = sub i64 %169, %168
  store i64 %sub156, i64* %d, align 8, !tbaa !13
  %170 = load i64, i64* %c, align 8, !tbaa !13
  %shl157 = shl i64 %170, 15
  %171 = load i64, i64* %a, align 8, !tbaa !13
  %xor158 = xor i64 %171, %shl157
  store i64 %xor158, i64* %a, align 8, !tbaa !13
  %172 = load i64, i64* %d, align 8, !tbaa !13
  %173 = load i64, i64* %c, align 8, !tbaa !13
  %add159 = add i64 %173, %172
  store i64 %add159, i64* %c, align 8, !tbaa !13
  %174 = load i64, i64* %a, align 8, !tbaa !13
  %175 = load i64, i64* %e, align 8, !tbaa !13
  %sub160 = sub i64 %175, %174
  store i64 %sub160, i64* %e, align 8, !tbaa !13
  %176 = load i64, i64* %d, align 8, !tbaa !13
  %call161 = call i64 @just(i64 %176)
  %shr162 = lshr i64 %call161, 14
  %177 = load i64, i64* %b, align 8, !tbaa !13
  %xor163 = xor i64 %177, %shr162
  store i64 %xor163, i64* %b, align 8, !tbaa !13
  %178 = load i64, i64* %e, align 8, !tbaa !13
  %179 = load i64, i64* %d, align 8, !tbaa !13
  %add164 = add i64 %179, %178
  store i64 %add164, i64* %d, align 8, !tbaa !13
  %180 = load i64, i64* %b, align 8, !tbaa !13
  %181 = load i64, i64* %f, align 8, !tbaa !13
  %sub165 = sub i64 %181, %180
  store i64 %sub165, i64* %f, align 8, !tbaa !13
  %182 = load i64, i64* %e, align 8, !tbaa !13
  %shl166 = shl i64 %182, 20
  %183 = load i64, i64* %c, align 8, !tbaa !13
  %xor167 = xor i64 %183, %shl166
  store i64 %xor167, i64* %c, align 8, !tbaa !13
  %184 = load i64, i64* %f, align 8, !tbaa !13
  %185 = load i64, i64* %e, align 8, !tbaa !13
  %add168 = add i64 %185, %184
  store i64 %add168, i64* %e, align 8, !tbaa !13
  %186 = load i64, i64* %c, align 8, !tbaa !13
  %187 = load i64, i64* %g, align 8, !tbaa !13
  %sub169 = sub i64 %187, %186
  store i64 %sub169, i64* %g, align 8, !tbaa !13
  %188 = load i64, i64* %f, align 8, !tbaa !13
  %call170 = call i64 @just(i64 %188)
  %shr171 = lshr i64 %call170, 17
  %189 = load i64, i64* %d, align 8, !tbaa !13
  %xor172 = xor i64 %189, %shr171
  store i64 %xor172, i64* %d, align 8, !tbaa !13
  %190 = load i64, i64* %g, align 8, !tbaa !13
  %191 = load i64, i64* %f, align 8, !tbaa !13
  %add173 = add i64 %191, %190
  store i64 %add173, i64* %f, align 8, !tbaa !13
  %192 = load i64, i64* %d, align 8, !tbaa !13
  %193 = load i64, i64* %h, align 8, !tbaa !13
  %sub174 = sub i64 %193, %192
  store i64 %sub174, i64* %h, align 8, !tbaa !13
  %194 = load i64, i64* %g, align 8, !tbaa !13
  %shl175 = shl i64 %194, 14
  %195 = load i64, i64* %e, align 8, !tbaa !13
  %xor176 = xor i64 %195, %shl175
  store i64 %xor176, i64* %e, align 8, !tbaa !13
  %196 = load i64, i64* %h, align 8, !tbaa !13
  %197 = load i64, i64* %g, align 8, !tbaa !13
  %add177 = add i64 %197, %196
  store i64 %add177, i64* %g, align 8, !tbaa !13
  %198 = load i64, i64* %a, align 8, !tbaa !13
  %199 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m178 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %199, i32 0, i32 0
  %200 = load i32, i32* %i99, align 4, !tbaa !2
  %idxprom179 = sext i32 %200 to i64
  %arrayidx180 = getelementptr inbounds [256 x i64], [256 x i64]* %m178, i64 0, i64 %idxprom179
  store i64 %198, i64* %arrayidx180, align 8, !tbaa !13
  %201 = load i64, i64* %b, align 8, !tbaa !13
  %202 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m181 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %202, i32 0, i32 0
  %203 = load i32, i32* %i99, align 4, !tbaa !2
  %add182 = add nsw i32 %203, 1
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds [256 x i64], [256 x i64]* %m181, i64 0, i64 %idxprom183
  store i64 %201, i64* %arrayidx184, align 8, !tbaa !13
  %204 = load i64, i64* %c, align 8, !tbaa !13
  %205 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m185 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %205, i32 0, i32 0
  %206 = load i32, i32* %i99, align 4, !tbaa !2
  %add186 = add nsw i32 %206, 2
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds [256 x i64], [256 x i64]* %m185, i64 0, i64 %idxprom187
  store i64 %204, i64* %arrayidx188, align 8, !tbaa !13
  %207 = load i64, i64* %d, align 8, !tbaa !13
  %208 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m189 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %208, i32 0, i32 0
  %209 = load i32, i32* %i99, align 4, !tbaa !2
  %add190 = add nsw i32 %209, 3
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds [256 x i64], [256 x i64]* %m189, i64 0, i64 %idxprom191
  store i64 %207, i64* %arrayidx192, align 8, !tbaa !13
  %210 = load i64, i64* %e, align 8, !tbaa !13
  %211 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m193 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %211, i32 0, i32 0
  %212 = load i32, i32* %i99, align 4, !tbaa !2
  %add194 = add nsw i32 %212, 4
  %idxprom195 = sext i32 %add194 to i64
  %arrayidx196 = getelementptr inbounds [256 x i64], [256 x i64]* %m193, i64 0, i64 %idxprom195
  store i64 %210, i64* %arrayidx196, align 8, !tbaa !13
  %213 = load i64, i64* %f, align 8, !tbaa !13
  %214 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m197 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %214, i32 0, i32 0
  %215 = load i32, i32* %i99, align 4, !tbaa !2
  %add198 = add nsw i32 %215, 5
  %idxprom199 = sext i32 %add198 to i64
  %arrayidx200 = getelementptr inbounds [256 x i64], [256 x i64]* %m197, i64 0, i64 %idxprom199
  store i64 %213, i64* %arrayidx200, align 8, !tbaa !13
  %216 = load i64, i64* %g, align 8, !tbaa !13
  %217 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m201 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %217, i32 0, i32 0
  %218 = load i32, i32* %i99, align 4, !tbaa !2
  %add202 = add nsw i32 %218, 6
  %idxprom203 = sext i32 %add202 to i64
  %arrayidx204 = getelementptr inbounds [256 x i64], [256 x i64]* %m201, i64 0, i64 %idxprom203
  store i64 %216, i64* %arrayidx204, align 8, !tbaa !13
  %219 = load i64, i64* %h, align 8, !tbaa !13
  %220 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %m205 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %220, i32 0, i32 0
  %221 = load i32, i32* %i99, align 4, !tbaa !2
  %add206 = add nsw i32 %221, 7
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds [256 x i64], [256 x i64]* %m205, i64 0, i64 %idxprom207
  store i64 %219, i64* %arrayidx208, align 8, !tbaa !13
  br label %for.inc209

for.inc209:                                       ; preds = %for.body102
  %222 = load i32, i32* %i99, align 4, !tbaa !2
  %add210 = add nsw i32 %222, 8
  store i32 %add210, i32* %i99, align 4, !tbaa !2
  br label %for.cond100

for.end211:                                       ; preds = %for.cond100
  %223 = bitcast i32* %i99 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %223) #13
  %224 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %c212 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %224, i32 0, i32 3
  store i64 0, i64* %c212, align 8, !tbaa !53
  %225 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %b213 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %225, i32 0, i32 2
  store i64 0, i64* %b213, align 8, !tbaa !52
  %226 = load %struct.isaac_state*, %struct.isaac_state** %s.addr, align 8, !tbaa !6
  %a214 = getelementptr inbounds %struct.isaac_state, %struct.isaac_state* %226, i32 0, i32 1
  store i64 0, i64* %a214, align 8, !tbaa !51
  %227 = bitcast i64* %h to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %227) #13
  %228 = bitcast i64* %g to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %228) #13
  %229 = bitcast i64* %f to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %229) #13
  %230 = bitcast i64* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %230) #13
  %231 = bitcast i64* %d to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %231) #13
  %232 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %232) #13
  %233 = bitcast i64* %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %233) #13
  %234 = bitcast i64* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %234) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @fread_file(%struct._IO_FILE* %stream, i32 %flags, i64* %length) #7 {
entry:
  %retval = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %flags.addr = alloca i32, align 4
  %length.addr = alloca i64*, align 8
  %buf = alloca i8*, align 8
  %alloc = alloca i64, align 8
  %st = alloca %struct.stat, align 8
  %pos = alloca i64, align 8
  %alloc_off = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %size = alloca i64, align 8
  %save_errno = alloca i32, align 4
  %requested = alloca i64, align 8
  %count = alloca i64, align 8
  %smaller_buf = alloca i8*, align 8
  %smaller_buf47 = alloca i8*, align 8
  %new_buf = alloca i8*, align 8
  %save_alloc = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !2
  store i64* %length, i64** %length.addr, align 8, !tbaa !6
  %0 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i8* null, i8** %buf, align 8, !tbaa !6
  %1 = bitcast i64* %alloc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  store i64 8192, i64* %alloc, align 8, !tbaa !13
  %2 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.start.p0i8(i64 144, i8* %2) #13
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call = call i32 @fileno(%struct._IO_FILE* %3) #13
  %call1 = call i32 @fstat(i32 %call, %struct.stat* %st) #13
  %cmp = icmp sge i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 3
  %4 = load i32, i32* %st_mode, align 8, !tbaa !23
  %and = and i32 %4, 61440
  %cmp2 = icmp eq i32 %and, 32768
  br i1 %cmp2, label %if.then, label %if.end16

if.then:                                          ; preds = %land.lhs.true
  %5 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call3 = call i64 @ftello(%struct._IO_FILE* %6)
  store i64 %call3, i64* %pos, align 8, !tbaa !13
  %7 = load i64, i64* %pos, align 8, !tbaa !13
  %cmp4 = icmp sge i64 %7, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.end12

land.lhs.true5:                                   ; preds = %if.then
  %8 = load i64, i64* %pos, align 8, !tbaa !13
  %st_size = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %9 = load i64, i64* %st_size, align 8, !tbaa !17
  %cmp6 = icmp slt i64 %8, %9
  br i1 %cmp6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %land.lhs.true5
  %10 = bitcast i64* %alloc_off to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #13
  %st_size8 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 8
  %11 = load i64, i64* %st_size8, align 8, !tbaa !17
  %12 = load i64, i64* %pos, align 8, !tbaa !13
  %sub = sub nsw i64 %11, %12
  store i64 %sub, i64* %alloc_off, align 8, !tbaa !13
  %13 = load i64, i64* %alloc_off, align 8, !tbaa !13
  %cmp9 = icmp slt i64 9223372036854775806, %13
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then7
  %call11 = call i32* @__errno_location() #22
  store i32 12, i32* %call11, align 4, !tbaa !2
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then7
  %14 = load i64, i64* %alloc_off, align 8, !tbaa !13
  %add = add nsw i64 %14, 1
  store i64 %add, i64* %alloc, align 8, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10
  %15 = bitcast i64* %alloc_off to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup13 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end12

if.end12:                                         ; preds = %cleanup.cont, %land.lhs.true5, %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup13

cleanup13:                                        ; preds = %if.end12, %cleanup
  %16 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #13
  %cleanup.dest14 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest14, label %cleanup17 [
    i32 0, label %cleanup.cont15
  ]

cleanup.cont15:                                   ; preds = %cleanup13
  br label %if.end16

if.end16:                                         ; preds = %cleanup.cont15, %land.lhs.true, %entry
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %if.end16, %cleanup13
  %17 = bitcast %struct.stat* %st to i8*
  call void @llvm.lifetime.end.p0i8(i64 144, i8* %17) #13
  %cleanup.dest18 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %cleanup96 [
    i32 0, label %cleanup.cont19
  ]

cleanup.cont19:                                   ; preds = %cleanup17
  %18 = load i64, i64* %alloc, align 8, !tbaa !13
  %call20 = call noalias i8* @malloc(i64 %18) #13
  store i8* %call20, i8** %buf, align 8, !tbaa !6
  %tobool = icmp ne i8* %call20, null
  br i1 %tobool, label %if.end22, label %if.then21

if.then21:                                        ; preds = %cleanup.cont19
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup96

if.end22:                                         ; preds = %cleanup.cont19
  %19 = bitcast i64* %size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #13
  store i64 0, i64* %size, align 8, !tbaa !13
  %20 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #13
  br label %for.cond

for.cond:                                         ; preds = %cleanup.cont88, %if.end22
  %21 = bitcast i64* %requested to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %21) #13
  %22 = load i64, i64* %alloc, align 8, !tbaa !13
  %23 = load i64, i64* %size, align 8, !tbaa !13
  %sub23 = sub i64 %22, %23
  store i64 %sub23, i64* %requested, align 8, !tbaa !13
  %24 = bitcast i64* %count to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %24) #13
  %25 = load i8*, i8** %buf, align 8, !tbaa !6
  %26 = load i64, i64* %size, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %26
  %27 = load i64, i64* %requested, align 8, !tbaa !13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call24 = call i64 @fread(i8* %add.ptr, i64 1, i64 %27, %struct._IO_FILE* %28)
  store i64 %call24, i64* %count, align 8, !tbaa !13
  %29 = load i64, i64* %count, align 8, !tbaa !13
  %30 = load i64, i64* %size, align 8, !tbaa !13
  %add25 = add i64 %30, %29
  store i64 %add25, i64* %size, align 8, !tbaa !13
  %31 = load i64, i64* %count, align 8, !tbaa !13
  %32 = load i64, i64* %requested, align 8, !tbaa !13
  %cmp26 = icmp ne i64 %31, %32
  br i1 %cmp26, label %if.then27, label %if.end55

if.then27:                                        ; preds = %for.cond
  %call28 = call i32* @__errno_location() #22
  %33 = load i32, i32* %call28, align 4, !tbaa !2
  store i32 %33, i32* %save_errno, align 4, !tbaa !2
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call29 = call i32 @ferror(%struct._IO_FILE* %34) #13
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.then27
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup85

if.end32:                                         ; preds = %if.then27
  %35 = load i64, i64* %size, align 8, !tbaa !13
  %36 = load i64, i64* %alloc, align 8, !tbaa !13
  %sub33 = sub i64 %36, 1
  %cmp34 = icmp ult i64 %35, %sub33
  br i1 %cmp34, label %if.then35, label %if.end54

if.then35:                                        ; preds = %if.end32
  %37 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and36 = and i32 %37, 2
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.else46

if.then38:                                        ; preds = %if.then35
  %38 = bitcast i8** %smaller_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %38) #13
  %39 = load i64, i64* %size, align 8, !tbaa !13
  %add39 = add i64 %39, 1
  %call40 = call noalias i8* @malloc(i64 %add39) #13
  store i8* %call40, i8** %smaller_buf, align 8, !tbaa !6
  %40 = load i8*, i8** %smaller_buf, align 8, !tbaa !6
  %cmp41 = icmp eq i8* %40, null
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then38
  %41 = load i8*, i8** %buf, align 8, !tbaa !6
  %42 = load i64, i64* %size, align 8, !tbaa !13
  %add.ptr43 = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = load i64, i64* %alloc, align 8, !tbaa !13
  %44 = load i64, i64* %size, align 8, !tbaa !13
  %sub44 = sub i64 %43, %44
  call void @explicit_bzero(i8* %add.ptr43, i64 %sub44) #13
  br label %if.end45

if.else:                                          ; preds = %if.then38
  %45 = load i8*, i8** %smaller_buf, align 8, !tbaa !6
  %46 = load i8*, i8** %buf, align 8, !tbaa !6
  %47 = load i64, i64* %size, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 %46, i64 %47, i1 false)
  %48 = load i8*, i8** %buf, align 8, !tbaa !6
  %49 = load i64, i64* %alloc, align 8, !tbaa !13
  call void @explicit_bzero(i8* %48, i64 %49) #13
  %50 = load i8*, i8** %buf, align 8, !tbaa !6
  call void @rpl_free(i8* %50)
  %51 = load i8*, i8** %smaller_buf, align 8, !tbaa !6
  store i8* %51, i8** %buf, align 8, !tbaa !6
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  %52 = bitcast i8** %smaller_buf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #13
  br label %if.end53

if.else46:                                        ; preds = %if.then35
  %53 = bitcast i8** %smaller_buf47 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %53) #13
  %54 = load i8*, i8** %buf, align 8, !tbaa !6
  %55 = load i64, i64* %size, align 8, !tbaa !13
  %add48 = add i64 %55, 1
  %call49 = call i8* @realloc(i8* %54, i64 %add48) #13
  store i8* %call49, i8** %smaller_buf47, align 8, !tbaa !6
  %56 = load i8*, i8** %smaller_buf47, align 8, !tbaa !6
  %cmp50 = icmp ne i8* %56, null
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.else46
  %57 = load i8*, i8** %smaller_buf47, align 8, !tbaa !6
  store i8* %57, i8** %buf, align 8, !tbaa !6
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.else46
  %58 = bitcast i8** %smaller_buf47 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58) #13
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end45
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end32
  %59 = load i8*, i8** %buf, align 8, !tbaa !6
  %60 = load i64, i64* %size, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %arrayidx, align 1, !tbaa !15
  %61 = load i64, i64* %size, align 8, !tbaa !13
  %62 = load i64*, i64** %length.addr, align 8, !tbaa !6
  store i64 %61, i64* %62, align 8, !tbaa !13
  %63 = load i8*, i8** %buf, align 8, !tbaa !6
  store i8* %63, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup85

if.end55:                                         ; preds = %for.cond
  %64 = bitcast i8** %new_buf to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %64) #13
  %65 = bitcast i64* %save_alloc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %65) #13
  %66 = load i64, i64* %alloc, align 8, !tbaa !13
  store i64 %66, i64* %save_alloc, align 8, !tbaa !13
  %67 = load i64, i64* %alloc, align 8, !tbaa !13
  %cmp56 = icmp eq i64 %67, 9223372036854775807
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end55
  store i32 12, i32* %save_errno, align 4, !tbaa !2
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup81

if.end58:                                         ; preds = %if.end55
  %68 = load i64, i64* %alloc, align 8, !tbaa !13
  %69 = load i64, i64* %alloc, align 8, !tbaa !13
  %div = udiv i64 %69, 2
  %sub59 = sub i64 9223372036854775807, %div
  %cmp60 = icmp ult i64 %68, %sub59
  br i1 %cmp60, label %if.then61, label %if.else64

if.then61:                                        ; preds = %if.end58
  %70 = load i64, i64* %alloc, align 8, !tbaa !13
  %71 = load i64, i64* %alloc, align 8, !tbaa !13
  %div62 = udiv i64 %71, 2
  %add63 = add i64 %70, %div62
  store i64 %add63, i64* %alloc, align 8, !tbaa !13
  br label %if.end65

if.else64:                                        ; preds = %if.end58
  store i64 9223372036854775807, i64* %alloc, align 8, !tbaa !13
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %if.then61
  %72 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and66 = and i32 %72, 2
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.then68, label %if.else74

if.then68:                                        ; preds = %if.end65
  %73 = load i64, i64* %alloc, align 8, !tbaa !13
  %call69 = call noalias i8* @malloc(i64 %73) #13
  store i8* %call69, i8** %new_buf, align 8, !tbaa !6
  %74 = load i8*, i8** %new_buf, align 8, !tbaa !6
  %tobool70 = icmp ne i8* %74, null
  br i1 %tobool70, label %if.end73, label %if.then71

if.then71:                                        ; preds = %if.then68
  %call72 = call i32* @__errno_location() #22
  %75 = load i32, i32* %call72, align 4, !tbaa !2
  store i32 %75, i32* %save_errno, align 4, !tbaa !2
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup81

if.end73:                                         ; preds = %if.then68
  %76 = load i8*, i8** %new_buf, align 8, !tbaa !6
  %77 = load i8*, i8** %buf, align 8, !tbaa !6
  %78 = load i64, i64* %save_alloc, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %76, i8* align 1 %77, i64 %78, i1 false)
  %79 = load i8*, i8** %buf, align 8, !tbaa !6
  %80 = load i64, i64* %save_alloc, align 8, !tbaa !13
  call void @explicit_bzero(i8* %79, i64 %80) #13
  %81 = load i8*, i8** %buf, align 8, !tbaa !6
  call void @rpl_free(i8* %81)
  br label %if.end80

if.else74:                                        ; preds = %if.end65
  %82 = load i8*, i8** %buf, align 8, !tbaa !6
  %83 = load i64, i64* %alloc, align 8, !tbaa !13
  %call75 = call i8* @realloc(i8* %82, i64 %83) #13
  store i8* %call75, i8** %new_buf, align 8, !tbaa !6
  %tobool76 = icmp ne i8* %call75, null
  br i1 %tobool76, label %if.end79, label %if.then77

if.then77:                                        ; preds = %if.else74
  %call78 = call i32* @__errno_location() #22
  %84 = load i32, i32* %call78, align 4, !tbaa !2
  store i32 %84, i32* %save_errno, align 4, !tbaa !2
  store i32 2, i32* %cleanup.dest.slot, align 4
  br label %cleanup81

if.end79:                                         ; preds = %if.else74
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end73
  %85 = load i8*, i8** %new_buf, align 8, !tbaa !6
  store i8* %85, i8** %buf, align 8, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup81

cleanup81:                                        ; preds = %if.end80, %if.then77, %if.then71, %if.then57
  %86 = bitcast i64* %save_alloc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %86) #13
  %87 = bitcast i8** %new_buf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %87) #13
  %cleanup.dest83 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest83, label %cleanup85 [
    i32 0, label %cleanup.cont84
  ]

cleanup.cont84:                                   ; preds = %cleanup81
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %cleanup.cont84, %cleanup81, %if.end54, %if.then31
  %88 = bitcast i64* %count to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %88) #13
  %89 = bitcast i64* %requested to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %89) #13
  %cleanup.dest87 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest87, label %cleanup94 [
    i32 0, label %cleanup.cont88
    i32 2, label %for.end
  ]

cleanup.cont88:                                   ; preds = %cleanup85
  br label %for.cond

for.end:                                          ; preds = %cleanup85
  %90 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and89 = and i32 %90, 2
  %tobool90 = icmp ne i32 %and89, 0
  br i1 %tobool90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %for.end
  %91 = load i8*, i8** %buf, align 8, !tbaa !6
  %92 = load i64, i64* %alloc, align 8, !tbaa !13
  call void @explicit_bzero(i8* %91, i64 %92) #13
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %for.end
  %93 = load i8*, i8** %buf, align 8, !tbaa !6
  call void @rpl_free(i8* %93)
  %94 = load i32, i32* %save_errno, align 4, !tbaa !2
  %call93 = call i32* @__errno_location() #22
  store i32 %94, i32* %call93, align 4, !tbaa !2
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup94

cleanup94:                                        ; preds = %if.end92, %cleanup85
  %95 = bitcast i32* %save_errno to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %95) #13
  %96 = bitcast i64* %size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %96) #13
  br label %cleanup96

cleanup96:                                        ; preds = %cleanup94, %if.then21, %cleanup17
  %97 = bitcast i64* %alloc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %97) #13
  %98 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %98) #13
  %99 = load i8*, i8** %retval, align 8
  ret i8* %99
}

declare dso_local i64 @ftello(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #6

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #6

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @read_file(i8* %filename, i32 %flags, i64* %length) #7 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %length.addr = alloca i64*, align 8
  %mode = alloca i8*, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  %out = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !6
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !2
  store i64* %length, i64** %length.addr, align 8, !tbaa !6
  %0 = bitcast i8** %mode to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.135, i64 0, i64 0)
  store i8* %cond, i8** %mode, align 8, !tbaa !6
  %3 = bitcast %struct._IO_FILE** %stream to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load i8*, i8** %filename.addr, align 8, !tbaa !6
  %5 = load i8*, i8** %mode, align 8, !tbaa !6
  %call = call %struct._IO_FILE* @fopen(i8* %4, i8* %5)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %stream, align 8, !tbaa !6
  %6 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #13
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !6
  %tobool1 = icmp ne %struct._IO_FILE* %7, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and2 = and i32 %8, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !6
  %call5 = call i32 @setvbuf(%struct._IO_FILE* %9, i8* null, i32 2, i64 0) #13
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !6
  %11 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %12 = load i64*, i64** %length.addr, align 8, !tbaa !6
  %call7 = call noalias i8* @fread_file(%struct._IO_FILE* %10, i32 %11, i64* %12)
  store i8* %call7, i8** %out, align 8, !tbaa !6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !tbaa !6
  %call8 = call i32 @rpl_fclose(%struct._IO_FILE* %13)
  %cmp = icmp ne i32 %call8, 0
  br i1 %cmp, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.end6
  %14 = load i8*, i8** %out, align 8, !tbaa !6
  %tobool10 = icmp ne i8* %14, null
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.then9
  %15 = load i32, i32* %flags.addr, align 4, !tbaa !2
  %and12 = and i32 %15, 2
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  %16 = load i8*, i8** %out, align 8, !tbaa !6
  %17 = load i64*, i64** %length.addr, align 8, !tbaa !6
  %18 = load i64, i64* %17, align 8, !tbaa !13
  call void @explicit_bzero(i8* %16, i64 %18) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then11
  %19 = load i8*, i8** %out, align 8, !tbaa !6
  call void @rpl_free(i8* %19)
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then9
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %20 = load i8*, i8** %out, align 8, !tbaa !6
  store i8* %20, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end16, %if.then
  %21 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #13
  %22 = bitcast %struct._IO_FILE** %stream to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %22) #13
  %23 = bitcast i8** %mode to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #13
  %24 = load i8*, i8** %retval, align 8
  ret i8* %24
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %authors, i64 %n_authors) #7 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8**, align 8
  %n_authors.addr = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  store i8* %command_name, i8** %command_name.addr, align 8, !tbaa !6
  store i8* %package, i8** %package.addr, align 8, !tbaa !6
  store i8* %version, i8** %version.addr, align 8, !tbaa !6
  store i8** %authors, i8*** %authors.addr, align 8, !tbaa !6
  store i64 %n_authors, i64* %n_authors.addr, align 8, !tbaa !13
  %0 = load i8*, i8** %command_name.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %command_name.addr, align 8, !tbaa !6
  %3 = load i8*, i8** %package.addr, align 8, !tbaa !6
  %4 = load i8*, i8** %version.addr, align 8, !tbaa !6
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i64 0, i64 0), i8* %2, i8* %3, i8* %4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %6 = load i8*, i8** %package.addr, align 8, !tbaa !6
  %7 = load i8*, i8** %version.addr, align 8, !tbaa !6
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.137, i64 0, i64 0), i8* %6, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.138, i64 0, i64 0), i32 2021)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call3 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.139, i64 0, i64 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4.140, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.141, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call5 = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.139, i64 0, i64 0), %struct._IO_FILE* %11)
  %12 = load i64, i64* %n_authors.addr, align 8, !tbaa !13
  switch i64 %12, label %sw.default [
    i64 0, label %sw.epilog
    i64 1, label %sw.bb
    i64 2, label %sw.bb7
    i64 3, label %sw.bb11
    i64 4, label %sw.bb16
    i64 5, label %sw.bb22
    i64 6, label %sw.bb29
    i64 7, label %sw.bb37
    i64 8, label %sw.bb46
    i64 9, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %14 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.142, i64 0, i64 0), i8* %15)
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %17 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx8 = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx8, align 8, !tbaa !6
  %19 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx9 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx9, align 8, !tbaa !6
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.143, i64 0, i64 0), i8* %18, i8* %20)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %22 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx12 = getelementptr inbounds i8*, i8** %22, i64 0
  %23 = load i8*, i8** %arrayidx12, align 8, !tbaa !6
  %24 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx13 = getelementptr inbounds i8*, i8** %24, i64 1
  %25 = load i8*, i8** %arrayidx13, align 8, !tbaa !6
  %26 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx14 = getelementptr inbounds i8*, i8** %26, i64 2
  %27 = load i8*, i8** %arrayidx14, align 8, !tbaa !6
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8.144, i64 0, i64 0), i8* %23, i8* %25, i8* %27)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %29 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx17 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx17, align 8, !tbaa !6
  %31 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx18 = getelementptr inbounds i8*, i8** %31, i64 1
  %32 = load i8*, i8** %arrayidx18, align 8, !tbaa !6
  %33 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx19 = getelementptr inbounds i8*, i8** %33, i64 2
  %34 = load i8*, i8** %arrayidx19, align 8, !tbaa !6
  %35 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx20 = getelementptr inbounds i8*, i8** %35, i64 3
  %36 = load i8*, i8** %arrayidx20, align 8, !tbaa !6
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.145, i64 0, i64 0), i8* %30, i8* %32, i8* %34, i8* %36)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %38 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx23 = getelementptr inbounds i8*, i8** %38, i64 0
  %39 = load i8*, i8** %arrayidx23, align 8, !tbaa !6
  %40 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx24 = getelementptr inbounds i8*, i8** %40, i64 1
  %41 = load i8*, i8** %arrayidx24, align 8, !tbaa !6
  %42 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx25 = getelementptr inbounds i8*, i8** %42, i64 2
  %43 = load i8*, i8** %arrayidx25, align 8, !tbaa !6
  %44 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx26 = getelementptr inbounds i8*, i8** %44, i64 3
  %45 = load i8*, i8** %arrayidx26, align 8, !tbaa !6
  %46 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx27 = getelementptr inbounds i8*, i8** %46, i64 4
  %47 = load i8*, i8** %arrayidx27, align 8, !tbaa !6
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.146, i64 0, i64 0), i8* %39, i8* %41, i8* %43, i8* %45, i8* %47)
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %49 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx30 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx30, align 8, !tbaa !6
  %51 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx31 = getelementptr inbounds i8*, i8** %51, i64 1
  %52 = load i8*, i8** %arrayidx31, align 8, !tbaa !6
  %53 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx32 = getelementptr inbounds i8*, i8** %53, i64 2
  %54 = load i8*, i8** %arrayidx32, align 8, !tbaa !6
  %55 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx33 = getelementptr inbounds i8*, i8** %55, i64 3
  %56 = load i8*, i8** %arrayidx33, align 8, !tbaa !6
  %57 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx34 = getelementptr inbounds i8*, i8** %57, i64 4
  %58 = load i8*, i8** %arrayidx34, align 8, !tbaa !6
  %59 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx35 = getelementptr inbounds i8*, i8** %59, i64 5
  %60 = load i8*, i8** %arrayidx35, align 8, !tbaa !6
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11.147, i64 0, i64 0), i8* %50, i8* %52, i8* %54, i8* %56, i8* %58, i8* %60)
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %62 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx38 = getelementptr inbounds i8*, i8** %62, i64 0
  %63 = load i8*, i8** %arrayidx38, align 8, !tbaa !6
  %64 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx39 = getelementptr inbounds i8*, i8** %64, i64 1
  %65 = load i8*, i8** %arrayidx39, align 8, !tbaa !6
  %66 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx40 = getelementptr inbounds i8*, i8** %66, i64 2
  %67 = load i8*, i8** %arrayidx40, align 8, !tbaa !6
  %68 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx41 = getelementptr inbounds i8*, i8** %68, i64 3
  %69 = load i8*, i8** %arrayidx41, align 8, !tbaa !6
  %70 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx42 = getelementptr inbounds i8*, i8** %70, i64 4
  %71 = load i8*, i8** %arrayidx42, align 8, !tbaa !6
  %72 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx43 = getelementptr inbounds i8*, i8** %72, i64 5
  %73 = load i8*, i8** %arrayidx43, align 8, !tbaa !6
  %74 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx44 = getelementptr inbounds i8*, i8** %74, i64 6
  %75 = load i8*, i8** %arrayidx44, align 8, !tbaa !6
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12.148, i64 0, i64 0), i8* %63, i8* %65, i8* %67, i8* %69, i8* %71, i8* %73, i8* %75)
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %77 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx47 = getelementptr inbounds i8*, i8** %77, i64 0
  %78 = load i8*, i8** %arrayidx47, align 8, !tbaa !6
  %79 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx48 = getelementptr inbounds i8*, i8** %79, i64 1
  %80 = load i8*, i8** %arrayidx48, align 8, !tbaa !6
  %81 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx49 = getelementptr inbounds i8*, i8** %81, i64 2
  %82 = load i8*, i8** %arrayidx49, align 8, !tbaa !6
  %83 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx50 = getelementptr inbounds i8*, i8** %83, i64 3
  %84 = load i8*, i8** %arrayidx50, align 8, !tbaa !6
  %85 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx51 = getelementptr inbounds i8*, i8** %85, i64 4
  %86 = load i8*, i8** %arrayidx51, align 8, !tbaa !6
  %87 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx52 = getelementptr inbounds i8*, i8** %87, i64 5
  %88 = load i8*, i8** %arrayidx52, align 8, !tbaa !6
  %89 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx53 = getelementptr inbounds i8*, i8** %89, i64 6
  %90 = load i8*, i8** %arrayidx53, align 8, !tbaa !6
  %91 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx54 = getelementptr inbounds i8*, i8** %91, i64 7
  %92 = load i8*, i8** %arrayidx54, align 8, !tbaa !6
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13.149, i64 0, i64 0), i8* %78, i8* %80, i8* %82, i8* %84, i8* %86, i8* %88, i8* %90, i8* %92)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %94 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx57 = getelementptr inbounds i8*, i8** %94, i64 0
  %95 = load i8*, i8** %arrayidx57, align 8, !tbaa !6
  %96 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx58 = getelementptr inbounds i8*, i8** %96, i64 1
  %97 = load i8*, i8** %arrayidx58, align 8, !tbaa !6
  %98 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx59 = getelementptr inbounds i8*, i8** %98, i64 2
  %99 = load i8*, i8** %arrayidx59, align 8, !tbaa !6
  %100 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx60 = getelementptr inbounds i8*, i8** %100, i64 3
  %101 = load i8*, i8** %arrayidx60, align 8, !tbaa !6
  %102 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx61 = getelementptr inbounds i8*, i8** %102, i64 4
  %103 = load i8*, i8** %arrayidx61, align 8, !tbaa !6
  %104 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx62 = getelementptr inbounds i8*, i8** %104, i64 5
  %105 = load i8*, i8** %arrayidx62, align 8, !tbaa !6
  %106 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx63 = getelementptr inbounds i8*, i8** %106, i64 6
  %107 = load i8*, i8** %arrayidx63, align 8, !tbaa !6
  %108 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx64 = getelementptr inbounds i8*, i8** %108, i64 7
  %109 = load i8*, i8** %arrayidx64, align 8, !tbaa !6
  %110 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx65 = getelementptr inbounds i8*, i8** %110, i64 8
  %111 = load i8*, i8** %arrayidx65, align 8, !tbaa !6
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14.150, i64 0, i64 0), i8* %95, i8* %97, i8* %99, i8* %101, i8* %103, i8* %105, i8* %107, i8* %109, i8* %111)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %113 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx67 = getelementptr inbounds i8*, i8** %113, i64 0
  %114 = load i8*, i8** %arrayidx67, align 8, !tbaa !6
  %115 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx68 = getelementptr inbounds i8*, i8** %115, i64 1
  %116 = load i8*, i8** %arrayidx68, align 8, !tbaa !6
  %117 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx69 = getelementptr inbounds i8*, i8** %117, i64 2
  %118 = load i8*, i8** %arrayidx69, align 8, !tbaa !6
  %119 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx70 = getelementptr inbounds i8*, i8** %119, i64 3
  %120 = load i8*, i8** %arrayidx70, align 8, !tbaa !6
  %121 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx71 = getelementptr inbounds i8*, i8** %121, i64 4
  %122 = load i8*, i8** %arrayidx71, align 8, !tbaa !6
  %123 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx72 = getelementptr inbounds i8*, i8** %123, i64 5
  %124 = load i8*, i8** %arrayidx72, align 8, !tbaa !6
  %125 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx73 = getelementptr inbounds i8*, i8** %125, i64 6
  %126 = load i8*, i8** %arrayidx73, align 8, !tbaa !6
  %127 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx74 = getelementptr inbounds i8*, i8** %127, i64 7
  %128 = load i8*, i8** %arrayidx74, align 8, !tbaa !6
  %129 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %arrayidx75 = getelementptr inbounds i8*, i8** %129, i64 8
  %130 = load i8*, i8** %arrayidx75, align 8, !tbaa !6
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15.151, i64 0, i64 0), i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124, i8* %126, i8* %128, i8* %130)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb56, %sw.bb46, %sw.bb37, %sw.bb29, %sw.bb22, %sw.bb16, %sw.bb11, %sw.bb7, %sw.bb, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, i8** %authors) #7 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca i8**, align 8
  %n_authors = alloca i64, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  store i8* %command_name, i8** %command_name.addr, align 8, !tbaa !6
  store i8* %package, i8** %package.addr, align 8, !tbaa !6
  store i8* %version, i8** %version.addr, align 8, !tbaa !6
  store i8** %authors, i8*** %authors.addr, align 8, !tbaa !6
  %0 = bitcast i64* %n_authors to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %n_authors, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %2 = load i64, i64* %n_authors, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %2
  %3 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %n_authors, align 8, !tbaa !13
  %inc = add i64 %4, 1
  store i64 %inc, i64* %n_authors, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %6 = load i8*, i8** %command_name.addr, align 8, !tbaa !6
  %7 = load i8*, i8** %package.addr, align 8, !tbaa !6
  %8 = load i8*, i8** %version.addr, align 8, !tbaa !6
  %9 = load i8**, i8*** %authors.addr, align 8, !tbaa !6
  %10 = load i64, i64* %n_authors, align 8, !tbaa !13
  call void @version_etc_arn(%struct._IO_FILE* %5, i8* %6, i8* %7, i8* %8, i8** %9, i64 %10)
  %11 = bitcast i64* %n_authors to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, %struct.__va_list_tag* %authors) #7 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors.addr = alloca %struct.__va_list_tag*, align 8
  %n_authors = alloca i64, align 8
  %authtab = alloca [10 x i8*], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  store i8* %command_name, i8** %command_name.addr, align 8, !tbaa !6
  store i8* %package, i8** %package.addr, align 8, !tbaa !6
  store i8* %version, i8** %version.addr, align 8, !tbaa !6
  store %struct.__va_list_tag* %authors, %struct.__va_list_tag** %authors.addr, align 8, !tbaa !6
  %0 = bitcast i64* %n_authors to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast [10 x i8*]* %authtab to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %1) #13
  store i64 0, i64* %n_authors, align 8, !tbaa !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %n_authors, align 8, !tbaa !13
  %cmp = icmp ult i64 %2, 10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %authors.addr, align 8, !tbaa !6
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 8
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %land.rhs
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 3
  %reg_save_area = load i8*, i8** %4, align 8
  %5 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %6 = bitcast i8* %5 to i8**
  %7 = add i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p, align 8
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %land.rhs
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %8 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %6, %vaarg.in_reg ], [ %8, %vaarg.in_mem ]
  %9 = load i8*, i8** %vaarg.addr, align 8
  %10 = load i64, i64* %n_authors, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i64 0, i64 %10
  store i8* %9, i8** %arrayidx, align 8, !tbaa !6
  %cmp1 = icmp ne i8* %9, null
  br label %land.end

land.end:                                         ; preds = %vaarg.end, %for.cond
  %11 = phi i1 [ false, %for.cond ], [ %cmp1, %vaarg.end ]
  br i1 %11, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %n_authors, align 8, !tbaa !13
  %inc = add i64 %12, 1
  store i64 %inc, i64* %n_authors, align 8, !tbaa !13
  br label %for.cond

for.end:                                          ; preds = %land.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %14 = load i8*, i8** %command_name.addr, align 8, !tbaa !6
  %15 = load i8*, i8** %package.addr, align 8, !tbaa !6
  %16 = load i8*, i8** %version.addr, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [10 x i8*], [10 x i8*]* %authtab, i64 0, i64 0
  %17 = load i64, i64* %n_authors, align 8, !tbaa !13
  call void @version_etc_arn(%struct._IO_FILE* %13, i8* %14, i8* %15, i8* %16, i8** %arraydecay, i64 %17)
  %18 = bitcast [10 x i8*]* %authtab to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %18) #13
  %19 = bitcast i64* %n_authors to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* %stream, i8* %command_name, i8* %package, i8* %version, ...) #7 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %command_name.addr = alloca i8*, align 8
  %package.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %authors = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  store i8* %command_name, i8** %command_name.addr, align 8, !tbaa !6
  store i8* %package, i8** %package.addr, align 8, !tbaa !6
  store i8* %version, i8** %version.addr, align 8, !tbaa !6
  %0 = bitcast [1 x %struct.__va_list_tag]* %authors to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %0) #13
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %command_name.addr, align 8, !tbaa !6
  %3 = load i8*, i8** %package.addr, align 8, !tbaa !6
  %4 = load i8*, i8** %version.addr, align 8, !tbaa !6
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i64 0, i64 0
  call void @version_etc_va(%struct._IO_FILE* %1, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %authors, i64 0, i64 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %5 = bitcast [1 x %struct.__va_list_tag]* %authors to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %5) #13
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #13

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #13

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() #7 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !6
  %call = call i32 @fputs_unlocked(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.139, i64 0, i64 0), %struct._IO_FILE* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.154, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17.155, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18.156, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19.157, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20.158, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21.159, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22.160, i64 0, i64 0))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* %p, i64 %n, i64 %s) #14 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %1 = load i64, i64* %n.addr, align 8, !tbaa !13
  %2 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call i8* @xreallocarray(i8* %0, i64 %1, i64 %2) #26
  ret i8* %call
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* %p, i64 %n, i64 %s) #15 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %r = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %2 = load i64, i64* %n.addr, align 8, !tbaa !13
  %3 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call i8* @reallocarray(i8* %1, i64 %2, i64 %3) #13
  store i8* %call, i8** %r, align 8, !tbaa !6
  %4 = load i8*, i8** %r, align 8, !tbaa !6
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i64, i64* %n.addr, align 8, !tbaa !13
  %tobool2 = icmp ne i64 %6, 0
  br i1 %tobool2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %lor.lhs.false
  %7 = load i64, i64* %s.addr, align 8, !tbaa !13
  %tobool4 = icmp ne i64 %7, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3, %land.lhs.true
  call void @xalloc_die() #23
  unreachable

if.end:                                           ; preds = %land.lhs.true3, %lor.lhs.false, %entry
  %8 = load i8*, i8** %r, align 8, !tbaa !6
  %9 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #13
  ret i8* %8
}

; Function Attrs: nounwind
declare dso_local i8* @reallocarray(i8*, i64, i64) #6

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 %s) #16 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias i8* @malloc(i64 %0) #13
  %call1 = call i8* @nonnull(i8* %call) #21
  ret i8* %call1
}

; Function Attrs: nounwind readonly uwtable
define internal i8* @nonnull(i8* %p) #10 {
entry:
  %p.addr = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @xalloc_die() #23
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !6
  ret i8* %1
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 %s) #16 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias i8* @imalloc(i64 %0)
  %call1 = call i8* @nonnull(i8* %call) #21
  ret i8* %call1
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 %n) #16 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  %0 = load i64, i64* %n.addr, align 8, !tbaa !13
  %call = call noalias nonnull i8* @xmalloc(i64 %0) #24
  ret i8* %call
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local i8* @xrealloc(i8* %p, i64 %s) #17 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  %r = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = bitcast i8** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %2 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call i8* @realloc(i8* %1, i64 %2) #13
  store i8* %call, i8** %r, align 8, !tbaa !6
  %3 = load i8*, i8** %r, align 8, !tbaa !6
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i64, i64* %s.addr, align 8, !tbaa !13
  %tobool2 = icmp ne i64 %5, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @xalloc_die() #23
  unreachable

if.end:                                           ; preds = %lor.lhs.false, %entry
  %6 = load i8*, i8** %r, align 8, !tbaa !6
  %7 = bitcast i8** %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #13
  ret i8* %6
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local nonnull i8* @xirealloc(i8* %p, i64 %s) #17 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call i8* @irealloc(i8* %0, i64 %1)
  %call1 = call i8* @nonnull(i8* %call) #21
  ret i8* %call1
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* %p, i64 %n, i64 %s) #15 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %1 = load i64, i64* %n.addr, align 8, !tbaa !13
  %2 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call i8* @ireallocarray(i8* %0, i64 %1, i64 %2)
  %call1 = call i8* @nonnull(i8* %call) #21
  ret i8* %call1
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 %n, i64 %s) #18 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %n.addr, align 8, !tbaa !13
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call i8* @xreallocarray(i8* null, i64 %0, i64 %1) #26
  ret i8* %call
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 %n, i64 %s) #18 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %n.addr, align 8, !tbaa !13
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call nonnull i8* @xireallocarray(i8* null, i64 %0, i64 %1) #26
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* %p, i64* %ps) #7 {
entry:
  %p.addr = alloca i8*, align 8
  %ps.addr = alloca i64*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64* %ps, i64** %ps.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %1 = load i64*, i64** %ps.addr, align 8, !tbaa !6
  %call = call nonnull i8* @x2nrealloc(i8* %0, i64* %1, i64 1)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* %p, i64* %pn, i64 %s) #7 {
entry:
  %p.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %s.addr = alloca i64, align 8
  %n = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64* %pn, i64** %pn.addr, align 8, !tbaa !6
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64*, i64** %pn.addr, align 8, !tbaa !6
  %2 = load i64, i64* %1, align 8, !tbaa !13
  store i64 %2, i64* %n, align 8, !tbaa !13
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %n, align 8, !tbaa !13
  %tobool1 = icmp ne i64 %4, 0
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %5 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div = udiv i64 128, %5
  store i64 %div, i64* %n, align 8, !tbaa !13
  %6 = load i64, i64* %n, align 8, !tbaa !13
  %tobool3 = icmp ne i64 %6, 0
  %lnot = xor i1 %tobool3, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %7 = load i64, i64* %n, align 8, !tbaa !13
  %add = add i64 %7, %conv
  store i64 %add, i64* %n, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end7

if.else:                                          ; preds = %entry
  %8 = load i64, i64* %n, align 8, !tbaa !13
  %9 = load i64, i64* %n, align 8, !tbaa !13
  %shr = lshr i64 %9, 1
  %add4 = add i64 %shr, 1
  %10 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %8, i64 %add4)
  %11 = extractvalue { i64, i1 } %10, 1
  %12 = extractvalue { i64, i1 } %10, 0
  store i64 %12, i64* %n, align 8
  br i1 %11, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  call void @xalloc_die() #23
  unreachable

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %13 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %14 = load i64, i64* %n, align 8, !tbaa !13
  %15 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call i8* @xreallocarray(i8* %13, i64 %14, i64 %15) #26
  store i8* %call, i8** %p.addr, align 8, !tbaa !6
  %16 = load i64, i64* %n, align 8, !tbaa !13
  %17 = load i64*, i64** %pn.addr, align 8, !tbaa !6
  store i64 %16, i64* %17, align 8, !tbaa !13
  %18 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %19 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  ret i8* %18
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @xpalloc(i8* %pa, i64* %pn, i64 %n_incr_min, i64 %n_max, i64 %s) #7 {
entry:
  %pa.addr = alloca i8*, align 8
  %pn.addr = alloca i64*, align 8
  %n_incr_min.addr = alloca i64, align 8
  %n_max.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %n0 = alloca i64, align 8
  %n = alloca i64, align 8
  %nbytes = alloca i64, align 8
  %adjusted_nbytes = alloca i64, align 8
  store i8* %pa, i8** %pa.addr, align 8, !tbaa !6
  store i64* %pn, i64** %pn.addr, align 8, !tbaa !6
  store i64 %n_incr_min, i64* %n_incr_min.addr, align 8, !tbaa !13
  store i64 %n_max, i64* %n_max.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = bitcast i64* %n0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64*, i64** %pn.addr, align 8, !tbaa !6
  %2 = load i64, i64* %1, align 8, !tbaa !13
  store i64 %2, i64* %n0, align 8, !tbaa !13
  %3 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load i64, i64* %n0, align 8, !tbaa !13
  %5 = load i64, i64* %n0, align 8, !tbaa !13
  %shr = ashr i64 %5, 1
  %6 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %4, i64 %shr)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  store i64 %8, i64* %n, align 8
  br i1 %7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, i64* %n, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %n_max.addr, align 8, !tbaa !13
  %cmp = icmp sle i64 0, %9
  br i1 %cmp, label %land.lhs.true, label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %10 = load i64, i64* %n_max.addr, align 8, !tbaa !13
  %11 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1 = icmp slt i64 %10, %11
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  %12 = load i64, i64* %n_max.addr, align 8, !tbaa !13
  store i64 %12, i64* %n, align 8, !tbaa !13
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %13 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #13
  %14 = bitcast i64* %adjusted_nbytes to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %14) #13
  br i1 false, label %cond.true, label %cond.false160

cond.true:                                        ; preds = %if.end3
  br i1 false, label %cond.false69, label %cond.true4

cond.true4:                                       ; preds = %cond.true
  %15 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp5 = icmp slt i64 %15, 0
  br i1 %cmp5, label %cond.true6, label %cond.false36

cond.true6:                                       ; preds = %cond.true4
  %16 = load i64, i64* %n, align 8, !tbaa !13
  %cmp7 = icmp slt i64 %16, 0
  br i1 %cmp7, label %cond.true8, label %cond.false20

cond.true8:                                       ; preds = %cond.true6
  br i1 true, label %cond.true9, label %cond.false

cond.true9:                                       ; preds = %cond.true8
  %17 = load i64, i64* %n, align 8, !tbaa !13
  %18 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div = sdiv i64 127, %18
  %cmp10 = icmp slt i64 %17, %div
  br i1 %cmp10, label %cond.true59, label %cond.false63

cond.false:                                       ; preds = %cond.true8
  br i1 true, label %cond.true11, label %cond.false13

cond.true11:                                      ; preds = %cond.false
  %19 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp12 = icmp slt i64 %19, -9223372036854775807
  br i1 %cmp12, label %cond.true15, label %cond.false16

cond.false13:                                     ; preds = %cond.false
  %20 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp14 = icmp slt i64 0, %20
  br i1 %cmp14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.false13, %cond.true11
  br label %cond.end

cond.false16:                                     ; preds = %cond.false13, %cond.true11
  %21 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub = sub nsw i64 0, %21
  %div17 = sdiv i64 127, %sub
  br label %cond.end

cond.end:                                         ; preds = %cond.false16, %cond.true15
  %cond = phi i64 [ 0, %cond.true15 ], [ %div17, %cond.false16 ]
  %22 = load i64, i64* %n, align 8, !tbaa !13
  %sub18 = sub nsw i64 -1, %22
  %cmp19 = icmp sle i64 %cond, %sub18
  br i1 %cmp19, label %cond.true59, label %cond.false63

cond.false20:                                     ; preds = %cond.true6
  br i1 true, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.false20
  br i1 false, label %land.lhs.true23, label %cond.false33

cond.false22:                                     ; preds = %cond.false20
  br i1 false, label %land.lhs.true23, label %cond.false33

land.lhs.true23:                                  ; preds = %cond.false22, %cond.true21
  %23 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp24 = icmp eq i64 %23, -1
  br i1 %cmp24, label %cond.true25, label %cond.false33

cond.true25:                                      ; preds = %land.lhs.true23
  br i1 true, label %cond.true26, label %cond.false28

cond.true26:                                      ; preds = %cond.true25
  %24 = load i64, i64* %n, align 8, !tbaa !13
  %add = add nsw i64 %24, -128
  %cmp27 = icmp slt i64 0, %add
  br i1 %cmp27, label %cond.true59, label %cond.false63

cond.false28:                                     ; preds = %cond.true25
  %25 = load i64, i64* %n, align 8, !tbaa !13
  %cmp29 = icmp slt i64 0, %25
  br i1 %cmp29, label %land.lhs.true30, label %cond.false63

land.lhs.true30:                                  ; preds = %cond.false28
  %26 = load i64, i64* %n, align 8, !tbaa !13
  %sub31 = sub nsw i64 %26, 1
  %cmp32 = icmp slt i64 127, %sub31
  br i1 %cmp32, label %cond.true59, label %cond.false63

cond.false33:                                     ; preds = %land.lhs.true23, %cond.false22, %cond.true21
  %27 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div34 = sdiv i64 -128, %27
  %28 = load i64, i64* %n, align 8, !tbaa !13
  %cmp35 = icmp slt i64 %div34, %28
  br i1 %cmp35, label %cond.true59, label %cond.false63

cond.false36:                                     ; preds = %cond.true4
  %29 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp37 = icmp eq i64 %29, 0
  br i1 %cmp37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.false36
  br i1 false, label %cond.true59, label %cond.false63

cond.false39:                                     ; preds = %cond.false36
  %30 = load i64, i64* %n, align 8, !tbaa !13
  %cmp40 = icmp slt i64 %30, 0
  br i1 %cmp40, label %cond.true41, label %cond.false56

cond.true41:                                      ; preds = %cond.false39
  br i1 true, label %cond.true42, label %cond.false43

cond.true42:                                      ; preds = %cond.true41
  br i1 false, label %land.lhs.true44, label %cond.false53

cond.false43:                                     ; preds = %cond.true41
  br i1 false, label %land.lhs.true44, label %cond.false53

land.lhs.true44:                                  ; preds = %cond.false43, %cond.true42
  %31 = load i64, i64* %n, align 8, !tbaa !13
  %cmp45 = icmp eq i64 %31, -1
  br i1 %cmp45, label %cond.true46, label %cond.false53

cond.true46:                                      ; preds = %land.lhs.true44
  br i1 true, label %cond.true47, label %cond.false50

cond.true47:                                      ; preds = %cond.true46
  %32 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add48 = add nsw i64 %32, -128
  %cmp49 = icmp slt i64 0, %add48
  br i1 %cmp49, label %cond.true59, label %cond.false63

cond.false50:                                     ; preds = %cond.true46
  %33 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub51 = sub nsw i64 %33, 1
  %cmp52 = icmp slt i64 127, %sub51
  br i1 %cmp52, label %cond.true59, label %cond.false63

cond.false53:                                     ; preds = %land.lhs.true44, %cond.false43, %cond.true42
  %34 = load i64, i64* %n, align 8, !tbaa !13
  %div54 = sdiv i64 -128, %34
  %35 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp55 = icmp slt i64 %div54, %35
  br i1 %cmp55, label %cond.true59, label %cond.false63

cond.false56:                                     ; preds = %cond.false39
  %36 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div57 = sdiv i64 127, %36
  %37 = load i64, i64* %n, align 8, !tbaa !13
  %cmp58 = icmp slt i64 %div57, %37
  br i1 %cmp58, label %cond.true59, label %cond.false63

cond.true59:                                      ; preds = %cond.false56, %cond.false53, %cond.false50, %cond.true47, %cond.true38, %cond.false33, %land.lhs.true30, %cond.true26, %cond.end, %cond.true9
  %38 = load i64, i64* %n, align 8, !tbaa !13
  %conv = trunc i64 %38 to i32
  %39 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv60 = trunc i64 %39 to i32
  %mul = mul i32 %conv, %conv60
  %conv61 = trunc i32 %mul to i8
  %conv62 = sext i8 %conv61 to i64
  store i64 %conv62, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false63:                                     ; preds = %cond.false56, %cond.false53, %cond.false50, %cond.true47, %cond.true38, %cond.false33, %land.lhs.true30, %cond.false28, %cond.true26, %cond.end, %cond.true9
  %40 = load i64, i64* %n, align 8, !tbaa !13
  %conv64 = trunc i64 %40 to i32
  %41 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv65 = trunc i64 %41 to i32
  %mul66 = mul i32 %conv64, %conv65
  %conv67 = trunc i32 %mul66 to i8
  %conv68 = sext i8 %conv67 to i64
  store i64 %conv68, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false69:                                     ; preds = %cond.true
  %42 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp70 = icmp slt i64 %42, 0
  br i1 %cmp70, label %cond.true72, label %cond.false118

cond.true72:                                      ; preds = %cond.false69
  %43 = load i64, i64* %n, align 8, !tbaa !13
  %cmp73 = icmp slt i64 %43, 0
  br i1 %cmp73, label %cond.true75, label %cond.false96

cond.true75:                                      ; preds = %cond.true72
  br i1 true, label %cond.true76, label %cond.false80

cond.true76:                                      ; preds = %cond.true75
  %44 = load i64, i64* %n, align 8, !tbaa !13
  %45 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div77 = sdiv i64 255, %45
  %cmp78 = icmp slt i64 %44, %div77
  br i1 %cmp78, label %cond.true148, label %cond.false154

cond.false80:                                     ; preds = %cond.true75
  br i1 true, label %cond.true81, label %cond.false84

cond.true81:                                      ; preds = %cond.false80
  %46 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp82 = icmp slt i64 %46, -9223372036854775807
  br i1 %cmp82, label %cond.true87, label %cond.false88

cond.false84:                                     ; preds = %cond.false80
  %47 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp85 = icmp slt i64 0, %47
  br i1 %cmp85, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.false84, %cond.true81
  br label %cond.end91

cond.false88:                                     ; preds = %cond.false84, %cond.true81
  %48 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub89 = sub nsw i64 0, %48
  %div90 = sdiv i64 255, %sub89
  br label %cond.end91

cond.end91:                                       ; preds = %cond.false88, %cond.true87
  %cond92 = phi i64 [ 0, %cond.true87 ], [ %div90, %cond.false88 ]
  %49 = load i64, i64* %n, align 8, !tbaa !13
  %sub93 = sub nsw i64 -1, %49
  %cmp94 = icmp sle i64 %cond92, %sub93
  br i1 %cmp94, label %cond.true148, label %cond.false154

cond.false96:                                     ; preds = %cond.true72
  br i1 true, label %cond.true97, label %cond.false98

cond.true97:                                      ; preds = %cond.false96
  br i1 false, label %land.lhs.true99, label %cond.false114

cond.false98:                                     ; preds = %cond.false96
  br i1 false, label %land.lhs.true99, label %cond.false114

land.lhs.true99:                                  ; preds = %cond.false98, %cond.true97
  %50 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp100 = icmp eq i64 %50, -1
  br i1 %cmp100, label %cond.true102, label %cond.false114

cond.true102:                                     ; preds = %land.lhs.true99
  br i1 true, label %cond.true103, label %cond.false107

cond.true103:                                     ; preds = %cond.true102
  %51 = load i64, i64* %n, align 8, !tbaa !13
  %add104 = add nsw i64 %51, 0
  %cmp105 = icmp slt i64 0, %add104
  br i1 %cmp105, label %cond.true148, label %cond.false154

cond.false107:                                    ; preds = %cond.true102
  %52 = load i64, i64* %n, align 8, !tbaa !13
  %cmp108 = icmp slt i64 0, %52
  br i1 %cmp108, label %land.lhs.true110, label %cond.false154

land.lhs.true110:                                 ; preds = %cond.false107
  %53 = load i64, i64* %n, align 8, !tbaa !13
  %sub111 = sub nsw i64 %53, 1
  %cmp112 = icmp slt i64 -1, %sub111
  br i1 %cmp112, label %cond.true148, label %cond.false154

cond.false114:                                    ; preds = %land.lhs.true99, %cond.false98, %cond.true97
  %54 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div115 = sdiv i64 0, %54
  %55 = load i64, i64* %n, align 8, !tbaa !13
  %cmp116 = icmp slt i64 %div115, %55
  br i1 %cmp116, label %cond.true148, label %cond.false154

cond.false118:                                    ; preds = %cond.false69
  %56 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp119 = icmp eq i64 %56, 0
  br i1 %cmp119, label %cond.true121, label %cond.false122

cond.true121:                                     ; preds = %cond.false118
  br i1 false, label %cond.true148, label %cond.false154

cond.false122:                                    ; preds = %cond.false118
  %57 = load i64, i64* %n, align 8, !tbaa !13
  %cmp123 = icmp slt i64 %57, 0
  br i1 %cmp123, label %cond.true125, label %cond.false144

cond.true125:                                     ; preds = %cond.false122
  br i1 true, label %cond.true126, label %cond.false127

cond.true126:                                     ; preds = %cond.true125
  br i1 false, label %land.lhs.true128, label %cond.false140

cond.false127:                                    ; preds = %cond.true125
  br i1 false, label %land.lhs.true128, label %cond.false140

land.lhs.true128:                                 ; preds = %cond.false127, %cond.true126
  %58 = load i64, i64* %n, align 8, !tbaa !13
  %cmp129 = icmp eq i64 %58, -1
  br i1 %cmp129, label %cond.true131, label %cond.false140

cond.true131:                                     ; preds = %land.lhs.true128
  br i1 true, label %cond.true132, label %cond.false136

cond.true132:                                     ; preds = %cond.true131
  %59 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add133 = add nsw i64 %59, 0
  %cmp134 = icmp slt i64 0, %add133
  br i1 %cmp134, label %cond.true148, label %cond.false154

cond.false136:                                    ; preds = %cond.true131
  %60 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub137 = sub nsw i64 %60, 1
  %cmp138 = icmp slt i64 -1, %sub137
  br i1 %cmp138, label %cond.true148, label %cond.false154

cond.false140:                                    ; preds = %land.lhs.true128, %cond.false127, %cond.true126
  %61 = load i64, i64* %n, align 8, !tbaa !13
  %div141 = sdiv i64 0, %61
  %62 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp142 = icmp slt i64 %div141, %62
  br i1 %cmp142, label %cond.true148, label %cond.false154

cond.false144:                                    ; preds = %cond.false122
  %63 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div145 = sdiv i64 255, %63
  %64 = load i64, i64* %n, align 8, !tbaa !13
  %cmp146 = icmp slt i64 %div145, %64
  br i1 %cmp146, label %cond.true148, label %cond.false154

cond.true148:                                     ; preds = %cond.false144, %cond.false140, %cond.false136, %cond.true132, %cond.true121, %cond.false114, %land.lhs.true110, %cond.true103, %cond.end91, %cond.true76
  %65 = load i64, i64* %n, align 8, !tbaa !13
  %conv149 = trunc i64 %65 to i32
  %66 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv150 = trunc i64 %66 to i32
  %mul151 = mul i32 %conv149, %conv150
  %conv152 = trunc i32 %mul151 to i8
  %conv153 = zext i8 %conv152 to i64
  store i64 %conv153, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false154:                                    ; preds = %cond.false144, %cond.false140, %cond.false136, %cond.true132, %cond.true121, %cond.false114, %land.lhs.true110, %cond.false107, %cond.true103, %cond.end91, %cond.true76
  %67 = load i64, i64* %n, align 8, !tbaa !13
  %conv155 = trunc i64 %67 to i32
  %68 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv156 = trunc i64 %68 to i32
  %mul157 = mul i32 %conv155, %conv156
  %conv158 = trunc i32 %mul157 to i8
  %conv159 = zext i8 %conv158 to i64
  store i64 %conv159, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false160:                                    ; preds = %if.end3
  br i1 false, label %cond.true161, label %cond.false344

cond.true161:                                     ; preds = %cond.false160
  br i1 false, label %cond.false253, label %cond.true162

cond.true162:                                     ; preds = %cond.true161
  %69 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp163 = icmp slt i64 %69, 0
  br i1 %cmp163, label %cond.true165, label %cond.false211

cond.true165:                                     ; preds = %cond.true162
  %70 = load i64, i64* %n, align 8, !tbaa !13
  %cmp166 = icmp slt i64 %70, 0
  br i1 %cmp166, label %cond.true168, label %cond.false189

cond.true168:                                     ; preds = %cond.true165
  br i1 true, label %cond.true169, label %cond.false173

cond.true169:                                     ; preds = %cond.true168
  %71 = load i64, i64* %n, align 8, !tbaa !13
  %72 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div170 = sdiv i64 32767, %72
  %cmp171 = icmp slt i64 %71, %div170
  br i1 %cmp171, label %cond.true241, label %cond.false247

cond.false173:                                    ; preds = %cond.true168
  br i1 true, label %cond.true174, label %cond.false177

cond.true174:                                     ; preds = %cond.false173
  %73 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp175 = icmp slt i64 %73, -9223372036854775807
  br i1 %cmp175, label %cond.true180, label %cond.false181

cond.false177:                                    ; preds = %cond.false173
  %74 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp178 = icmp slt i64 0, %74
  br i1 %cmp178, label %cond.true180, label %cond.false181

cond.true180:                                     ; preds = %cond.false177, %cond.true174
  br label %cond.end184

cond.false181:                                    ; preds = %cond.false177, %cond.true174
  %75 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub182 = sub nsw i64 0, %75
  %div183 = sdiv i64 32767, %sub182
  br label %cond.end184

cond.end184:                                      ; preds = %cond.false181, %cond.true180
  %cond185 = phi i64 [ 0, %cond.true180 ], [ %div183, %cond.false181 ]
  %76 = load i64, i64* %n, align 8, !tbaa !13
  %sub186 = sub nsw i64 -1, %76
  %cmp187 = icmp sle i64 %cond185, %sub186
  br i1 %cmp187, label %cond.true241, label %cond.false247

cond.false189:                                    ; preds = %cond.true165
  br i1 true, label %cond.true190, label %cond.false191

cond.true190:                                     ; preds = %cond.false189
  br i1 false, label %land.lhs.true192, label %cond.false207

cond.false191:                                    ; preds = %cond.false189
  br i1 false, label %land.lhs.true192, label %cond.false207

land.lhs.true192:                                 ; preds = %cond.false191, %cond.true190
  %77 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp193 = icmp eq i64 %77, -1
  br i1 %cmp193, label %cond.true195, label %cond.false207

cond.true195:                                     ; preds = %land.lhs.true192
  br i1 true, label %cond.true196, label %cond.false200

cond.true196:                                     ; preds = %cond.true195
  %78 = load i64, i64* %n, align 8, !tbaa !13
  %add197 = add nsw i64 %78, -32768
  %cmp198 = icmp slt i64 0, %add197
  br i1 %cmp198, label %cond.true241, label %cond.false247

cond.false200:                                    ; preds = %cond.true195
  %79 = load i64, i64* %n, align 8, !tbaa !13
  %cmp201 = icmp slt i64 0, %79
  br i1 %cmp201, label %land.lhs.true203, label %cond.false247

land.lhs.true203:                                 ; preds = %cond.false200
  %80 = load i64, i64* %n, align 8, !tbaa !13
  %sub204 = sub nsw i64 %80, 1
  %cmp205 = icmp slt i64 32767, %sub204
  br i1 %cmp205, label %cond.true241, label %cond.false247

cond.false207:                                    ; preds = %land.lhs.true192, %cond.false191, %cond.true190
  %81 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div208 = sdiv i64 -32768, %81
  %82 = load i64, i64* %n, align 8, !tbaa !13
  %cmp209 = icmp slt i64 %div208, %82
  br i1 %cmp209, label %cond.true241, label %cond.false247

cond.false211:                                    ; preds = %cond.true162
  %83 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp212 = icmp eq i64 %83, 0
  br i1 %cmp212, label %cond.true214, label %cond.false215

cond.true214:                                     ; preds = %cond.false211
  br i1 false, label %cond.true241, label %cond.false247

cond.false215:                                    ; preds = %cond.false211
  %84 = load i64, i64* %n, align 8, !tbaa !13
  %cmp216 = icmp slt i64 %84, 0
  br i1 %cmp216, label %cond.true218, label %cond.false237

cond.true218:                                     ; preds = %cond.false215
  br i1 true, label %cond.true219, label %cond.false220

cond.true219:                                     ; preds = %cond.true218
  br i1 false, label %land.lhs.true221, label %cond.false233

cond.false220:                                    ; preds = %cond.true218
  br i1 false, label %land.lhs.true221, label %cond.false233

land.lhs.true221:                                 ; preds = %cond.false220, %cond.true219
  %85 = load i64, i64* %n, align 8, !tbaa !13
  %cmp222 = icmp eq i64 %85, -1
  br i1 %cmp222, label %cond.true224, label %cond.false233

cond.true224:                                     ; preds = %land.lhs.true221
  br i1 true, label %cond.true225, label %cond.false229

cond.true225:                                     ; preds = %cond.true224
  %86 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add226 = add nsw i64 %86, -32768
  %cmp227 = icmp slt i64 0, %add226
  br i1 %cmp227, label %cond.true241, label %cond.false247

cond.false229:                                    ; preds = %cond.true224
  %87 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub230 = sub nsw i64 %87, 1
  %cmp231 = icmp slt i64 32767, %sub230
  br i1 %cmp231, label %cond.true241, label %cond.false247

cond.false233:                                    ; preds = %land.lhs.true221, %cond.false220, %cond.true219
  %88 = load i64, i64* %n, align 8, !tbaa !13
  %div234 = sdiv i64 -32768, %88
  %89 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp235 = icmp slt i64 %div234, %89
  br i1 %cmp235, label %cond.true241, label %cond.false247

cond.false237:                                    ; preds = %cond.false215
  %90 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div238 = sdiv i64 32767, %90
  %91 = load i64, i64* %n, align 8, !tbaa !13
  %cmp239 = icmp slt i64 %div238, %91
  br i1 %cmp239, label %cond.true241, label %cond.false247

cond.true241:                                     ; preds = %cond.false237, %cond.false233, %cond.false229, %cond.true225, %cond.true214, %cond.false207, %land.lhs.true203, %cond.true196, %cond.end184, %cond.true169
  %92 = load i64, i64* %n, align 8, !tbaa !13
  %conv242 = trunc i64 %92 to i32
  %93 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv243 = trunc i64 %93 to i32
  %mul244 = mul i32 %conv242, %conv243
  %conv245 = trunc i32 %mul244 to i16
  %conv246 = sext i16 %conv245 to i64
  store i64 %conv246, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false247:                                    ; preds = %cond.false237, %cond.false233, %cond.false229, %cond.true225, %cond.true214, %cond.false207, %land.lhs.true203, %cond.false200, %cond.true196, %cond.end184, %cond.true169
  %94 = load i64, i64* %n, align 8, !tbaa !13
  %conv248 = trunc i64 %94 to i32
  %95 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv249 = trunc i64 %95 to i32
  %mul250 = mul i32 %conv248, %conv249
  %conv251 = trunc i32 %mul250 to i16
  %conv252 = sext i16 %conv251 to i64
  store i64 %conv252, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false253:                                    ; preds = %cond.true161
  %96 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp254 = icmp slt i64 %96, 0
  br i1 %cmp254, label %cond.true256, label %cond.false302

cond.true256:                                     ; preds = %cond.false253
  %97 = load i64, i64* %n, align 8, !tbaa !13
  %cmp257 = icmp slt i64 %97, 0
  br i1 %cmp257, label %cond.true259, label %cond.false280

cond.true259:                                     ; preds = %cond.true256
  br i1 true, label %cond.true260, label %cond.false264

cond.true260:                                     ; preds = %cond.true259
  %98 = load i64, i64* %n, align 8, !tbaa !13
  %99 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div261 = sdiv i64 65535, %99
  %cmp262 = icmp slt i64 %98, %div261
  br i1 %cmp262, label %cond.true332, label %cond.false338

cond.false264:                                    ; preds = %cond.true259
  br i1 true, label %cond.true265, label %cond.false268

cond.true265:                                     ; preds = %cond.false264
  %100 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp266 = icmp slt i64 %100, -9223372036854775807
  br i1 %cmp266, label %cond.true271, label %cond.false272

cond.false268:                                    ; preds = %cond.false264
  %101 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp269 = icmp slt i64 0, %101
  br i1 %cmp269, label %cond.true271, label %cond.false272

cond.true271:                                     ; preds = %cond.false268, %cond.true265
  br label %cond.end275

cond.false272:                                    ; preds = %cond.false268, %cond.true265
  %102 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub273 = sub nsw i64 0, %102
  %div274 = sdiv i64 65535, %sub273
  br label %cond.end275

cond.end275:                                      ; preds = %cond.false272, %cond.true271
  %cond276 = phi i64 [ 0, %cond.true271 ], [ %div274, %cond.false272 ]
  %103 = load i64, i64* %n, align 8, !tbaa !13
  %sub277 = sub nsw i64 -1, %103
  %cmp278 = icmp sle i64 %cond276, %sub277
  br i1 %cmp278, label %cond.true332, label %cond.false338

cond.false280:                                    ; preds = %cond.true256
  br i1 true, label %cond.true281, label %cond.false282

cond.true281:                                     ; preds = %cond.false280
  br i1 false, label %land.lhs.true283, label %cond.false298

cond.false282:                                    ; preds = %cond.false280
  br i1 false, label %land.lhs.true283, label %cond.false298

land.lhs.true283:                                 ; preds = %cond.false282, %cond.true281
  %104 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp284 = icmp eq i64 %104, -1
  br i1 %cmp284, label %cond.true286, label %cond.false298

cond.true286:                                     ; preds = %land.lhs.true283
  br i1 true, label %cond.true287, label %cond.false291

cond.true287:                                     ; preds = %cond.true286
  %105 = load i64, i64* %n, align 8, !tbaa !13
  %add288 = add nsw i64 %105, 0
  %cmp289 = icmp slt i64 0, %add288
  br i1 %cmp289, label %cond.true332, label %cond.false338

cond.false291:                                    ; preds = %cond.true286
  %106 = load i64, i64* %n, align 8, !tbaa !13
  %cmp292 = icmp slt i64 0, %106
  br i1 %cmp292, label %land.lhs.true294, label %cond.false338

land.lhs.true294:                                 ; preds = %cond.false291
  %107 = load i64, i64* %n, align 8, !tbaa !13
  %sub295 = sub nsw i64 %107, 1
  %cmp296 = icmp slt i64 -1, %sub295
  br i1 %cmp296, label %cond.true332, label %cond.false338

cond.false298:                                    ; preds = %land.lhs.true283, %cond.false282, %cond.true281
  %108 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div299 = sdiv i64 0, %108
  %109 = load i64, i64* %n, align 8, !tbaa !13
  %cmp300 = icmp slt i64 %div299, %109
  br i1 %cmp300, label %cond.true332, label %cond.false338

cond.false302:                                    ; preds = %cond.false253
  %110 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp303 = icmp eq i64 %110, 0
  br i1 %cmp303, label %cond.true305, label %cond.false306

cond.true305:                                     ; preds = %cond.false302
  br i1 false, label %cond.true332, label %cond.false338

cond.false306:                                    ; preds = %cond.false302
  %111 = load i64, i64* %n, align 8, !tbaa !13
  %cmp307 = icmp slt i64 %111, 0
  br i1 %cmp307, label %cond.true309, label %cond.false328

cond.true309:                                     ; preds = %cond.false306
  br i1 true, label %cond.true310, label %cond.false311

cond.true310:                                     ; preds = %cond.true309
  br i1 false, label %land.lhs.true312, label %cond.false324

cond.false311:                                    ; preds = %cond.true309
  br i1 false, label %land.lhs.true312, label %cond.false324

land.lhs.true312:                                 ; preds = %cond.false311, %cond.true310
  %112 = load i64, i64* %n, align 8, !tbaa !13
  %cmp313 = icmp eq i64 %112, -1
  br i1 %cmp313, label %cond.true315, label %cond.false324

cond.true315:                                     ; preds = %land.lhs.true312
  br i1 true, label %cond.true316, label %cond.false320

cond.true316:                                     ; preds = %cond.true315
  %113 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add317 = add nsw i64 %113, 0
  %cmp318 = icmp slt i64 0, %add317
  br i1 %cmp318, label %cond.true332, label %cond.false338

cond.false320:                                    ; preds = %cond.true315
  %114 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub321 = sub nsw i64 %114, 1
  %cmp322 = icmp slt i64 -1, %sub321
  br i1 %cmp322, label %cond.true332, label %cond.false338

cond.false324:                                    ; preds = %land.lhs.true312, %cond.false311, %cond.true310
  %115 = load i64, i64* %n, align 8, !tbaa !13
  %div325 = sdiv i64 0, %115
  %116 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp326 = icmp slt i64 %div325, %116
  br i1 %cmp326, label %cond.true332, label %cond.false338

cond.false328:                                    ; preds = %cond.false306
  %117 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div329 = sdiv i64 65535, %117
  %118 = load i64, i64* %n, align 8, !tbaa !13
  %cmp330 = icmp slt i64 %div329, %118
  br i1 %cmp330, label %cond.true332, label %cond.false338

cond.true332:                                     ; preds = %cond.false328, %cond.false324, %cond.false320, %cond.true316, %cond.true305, %cond.false298, %land.lhs.true294, %cond.true287, %cond.end275, %cond.true260
  %119 = load i64, i64* %n, align 8, !tbaa !13
  %conv333 = trunc i64 %119 to i32
  %120 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv334 = trunc i64 %120 to i32
  %mul335 = mul i32 %conv333, %conv334
  %conv336 = trunc i32 %mul335 to i16
  %conv337 = zext i16 %conv336 to i64
  store i64 %conv337, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false338:                                    ; preds = %cond.false328, %cond.false324, %cond.false320, %cond.true316, %cond.true305, %cond.false298, %land.lhs.true294, %cond.false291, %cond.true287, %cond.end275, %cond.true260
  %121 = load i64, i64* %n, align 8, !tbaa !13
  %conv339 = trunc i64 %121 to i32
  %122 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv340 = trunc i64 %122 to i32
  %mul341 = mul i32 %conv339, %conv340
  %conv342 = trunc i32 %mul341 to i16
  %conv343 = zext i16 %conv342 to i64
  store i64 %conv343, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false344:                                    ; preds = %cond.false160
  br i1 false, label %cond.true345, label %cond.false524

cond.true345:                                     ; preds = %cond.false344
  br i1 true, label %cond.true346, label %cond.false435

cond.true346:                                     ; preds = %cond.true345
  %123 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp347 = icmp slt i64 %123, 0
  br i1 %cmp347, label %cond.true349, label %cond.false395

cond.true349:                                     ; preds = %cond.true346
  %124 = load i64, i64* %n, align 8, !tbaa !13
  %cmp350 = icmp slt i64 %124, 0
  br i1 %cmp350, label %cond.true352, label %cond.false373

cond.true352:                                     ; preds = %cond.true349
  br i1 true, label %cond.true353, label %cond.false357

cond.true353:                                     ; preds = %cond.true352
  %125 = load i64, i64* %n, align 8, !tbaa !13
  %126 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div354 = sdiv i64 2147483647, %126
  %cmp355 = icmp slt i64 %125, %div354
  br i1 %cmp355, label %cond.true425, label %cond.false430

cond.false357:                                    ; preds = %cond.true352
  br i1 true, label %cond.true358, label %cond.false361

cond.true358:                                     ; preds = %cond.false357
  %127 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp359 = icmp slt i64 %127, -9223372036854775807
  br i1 %cmp359, label %cond.true364, label %cond.false365

cond.false361:                                    ; preds = %cond.false357
  %128 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp362 = icmp slt i64 0, %128
  br i1 %cmp362, label %cond.true364, label %cond.false365

cond.true364:                                     ; preds = %cond.false361, %cond.true358
  br label %cond.end368

cond.false365:                                    ; preds = %cond.false361, %cond.true358
  %129 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub366 = sub nsw i64 0, %129
  %div367 = sdiv i64 2147483647, %sub366
  br label %cond.end368

cond.end368:                                      ; preds = %cond.false365, %cond.true364
  %cond369 = phi i64 [ 0, %cond.true364 ], [ %div367, %cond.false365 ]
  %130 = load i64, i64* %n, align 8, !tbaa !13
  %sub370 = sub nsw i64 -1, %130
  %cmp371 = icmp sle i64 %cond369, %sub370
  br i1 %cmp371, label %cond.true425, label %cond.false430

cond.false373:                                    ; preds = %cond.true349
  br i1 true, label %cond.true374, label %cond.false375

cond.true374:                                     ; preds = %cond.false373
  br i1 false, label %land.lhs.true376, label %cond.false391

cond.false375:                                    ; preds = %cond.false373
  br i1 false, label %land.lhs.true376, label %cond.false391

land.lhs.true376:                                 ; preds = %cond.false375, %cond.true374
  %131 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp377 = icmp eq i64 %131, -1
  br i1 %cmp377, label %cond.true379, label %cond.false391

cond.true379:                                     ; preds = %land.lhs.true376
  br i1 true, label %cond.true380, label %cond.false384

cond.true380:                                     ; preds = %cond.true379
  %132 = load i64, i64* %n, align 8, !tbaa !13
  %add381 = add nsw i64 %132, -2147483648
  %cmp382 = icmp slt i64 0, %add381
  br i1 %cmp382, label %cond.true425, label %cond.false430

cond.false384:                                    ; preds = %cond.true379
  %133 = load i64, i64* %n, align 8, !tbaa !13
  %cmp385 = icmp slt i64 0, %133
  br i1 %cmp385, label %land.lhs.true387, label %cond.false430

land.lhs.true387:                                 ; preds = %cond.false384
  %134 = load i64, i64* %n, align 8, !tbaa !13
  %sub388 = sub nsw i64 %134, 1
  %cmp389 = icmp slt i64 2147483647, %sub388
  br i1 %cmp389, label %cond.true425, label %cond.false430

cond.false391:                                    ; preds = %land.lhs.true376, %cond.false375, %cond.true374
  %135 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div392 = sdiv i64 -2147483648, %135
  %136 = load i64, i64* %n, align 8, !tbaa !13
  %cmp393 = icmp slt i64 %div392, %136
  br i1 %cmp393, label %cond.true425, label %cond.false430

cond.false395:                                    ; preds = %cond.true346
  %137 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp396 = icmp eq i64 %137, 0
  br i1 %cmp396, label %cond.true398, label %cond.false399

cond.true398:                                     ; preds = %cond.false395
  br i1 false, label %cond.true425, label %cond.false430

cond.false399:                                    ; preds = %cond.false395
  %138 = load i64, i64* %n, align 8, !tbaa !13
  %cmp400 = icmp slt i64 %138, 0
  br i1 %cmp400, label %cond.true402, label %cond.false421

cond.true402:                                     ; preds = %cond.false399
  br i1 true, label %cond.true403, label %cond.false404

cond.true403:                                     ; preds = %cond.true402
  br i1 false, label %land.lhs.true405, label %cond.false417

cond.false404:                                    ; preds = %cond.true402
  br i1 false, label %land.lhs.true405, label %cond.false417

land.lhs.true405:                                 ; preds = %cond.false404, %cond.true403
  %139 = load i64, i64* %n, align 8, !tbaa !13
  %cmp406 = icmp eq i64 %139, -1
  br i1 %cmp406, label %cond.true408, label %cond.false417

cond.true408:                                     ; preds = %land.lhs.true405
  br i1 true, label %cond.true409, label %cond.false413

cond.true409:                                     ; preds = %cond.true408
  %140 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add410 = add nsw i64 %140, -2147483648
  %cmp411 = icmp slt i64 0, %add410
  br i1 %cmp411, label %cond.true425, label %cond.false430

cond.false413:                                    ; preds = %cond.true408
  %141 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub414 = sub nsw i64 %141, 1
  %cmp415 = icmp slt i64 2147483647, %sub414
  br i1 %cmp415, label %cond.true425, label %cond.false430

cond.false417:                                    ; preds = %land.lhs.true405, %cond.false404, %cond.true403
  %142 = load i64, i64* %n, align 8, !tbaa !13
  %div418 = sdiv i64 -2147483648, %142
  %143 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp419 = icmp slt i64 %div418, %143
  br i1 %cmp419, label %cond.true425, label %cond.false430

cond.false421:                                    ; preds = %cond.false399
  %144 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div422 = sdiv i64 2147483647, %144
  %145 = load i64, i64* %n, align 8, !tbaa !13
  %cmp423 = icmp slt i64 %div422, %145
  br i1 %cmp423, label %cond.true425, label %cond.false430

cond.true425:                                     ; preds = %cond.false421, %cond.false417, %cond.false413, %cond.true409, %cond.true398, %cond.false391, %land.lhs.true387, %cond.true380, %cond.end368, %cond.true353
  %146 = load i64, i64* %n, align 8, !tbaa !13
  %conv426 = trunc i64 %146 to i32
  %147 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv427 = trunc i64 %147 to i32
  %mul428 = mul i32 %conv426, %conv427
  %conv429 = sext i32 %mul428 to i64
  store i64 %conv429, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false430:                                    ; preds = %cond.false421, %cond.false417, %cond.false413, %cond.true409, %cond.true398, %cond.false391, %land.lhs.true387, %cond.false384, %cond.true380, %cond.end368, %cond.true353
  %148 = load i64, i64* %n, align 8, !tbaa !13
  %conv431 = trunc i64 %148 to i32
  %149 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv432 = trunc i64 %149 to i32
  %mul433 = mul i32 %conv431, %conv432
  %conv434 = sext i32 %mul433 to i64
  store i64 %conv434, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false435:                                    ; preds = %cond.true345
  %150 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp436 = icmp slt i64 %150, 0
  br i1 %cmp436, label %cond.true438, label %cond.false484

cond.true438:                                     ; preds = %cond.false435
  %151 = load i64, i64* %n, align 8, !tbaa !13
  %cmp439 = icmp slt i64 %151, 0
  br i1 %cmp439, label %cond.true441, label %cond.false462

cond.true441:                                     ; preds = %cond.true438
  br i1 true, label %cond.true442, label %cond.false446

cond.true442:                                     ; preds = %cond.true441
  %152 = load i64, i64* %n, align 8, !tbaa !13
  %153 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div443 = sdiv i64 4294967295, %153
  %cmp444 = icmp slt i64 %152, %div443
  br i1 %cmp444, label %cond.true514, label %cond.false519

cond.false446:                                    ; preds = %cond.true441
  br i1 true, label %cond.true447, label %cond.false450

cond.true447:                                     ; preds = %cond.false446
  %154 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp448 = icmp slt i64 %154, -9223372036854775807
  br i1 %cmp448, label %cond.true453, label %cond.false454

cond.false450:                                    ; preds = %cond.false446
  %155 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp451 = icmp slt i64 0, %155
  br i1 %cmp451, label %cond.true453, label %cond.false454

cond.true453:                                     ; preds = %cond.false450, %cond.true447
  br label %cond.end457

cond.false454:                                    ; preds = %cond.false450, %cond.true447
  %156 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub455 = sub nsw i64 0, %156
  %div456 = sdiv i64 4294967295, %sub455
  br label %cond.end457

cond.end457:                                      ; preds = %cond.false454, %cond.true453
  %cond458 = phi i64 [ 0, %cond.true453 ], [ %div456, %cond.false454 ]
  %157 = load i64, i64* %n, align 8, !tbaa !13
  %sub459 = sub nsw i64 -1, %157
  %cmp460 = icmp sle i64 %cond458, %sub459
  br i1 %cmp460, label %cond.true514, label %cond.false519

cond.false462:                                    ; preds = %cond.true438
  br i1 true, label %cond.true463, label %cond.false464

cond.true463:                                     ; preds = %cond.false462
  br i1 false, label %land.lhs.true465, label %cond.false480

cond.false464:                                    ; preds = %cond.false462
  br i1 false, label %land.lhs.true465, label %cond.false480

land.lhs.true465:                                 ; preds = %cond.false464, %cond.true463
  %158 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp466 = icmp eq i64 %158, -1
  br i1 %cmp466, label %cond.true468, label %cond.false480

cond.true468:                                     ; preds = %land.lhs.true465
  br i1 true, label %cond.true469, label %cond.false473

cond.true469:                                     ; preds = %cond.true468
  %159 = load i64, i64* %n, align 8, !tbaa !13
  %add470 = add nsw i64 %159, 0
  %cmp471 = icmp slt i64 0, %add470
  br i1 %cmp471, label %cond.true514, label %cond.false519

cond.false473:                                    ; preds = %cond.true468
  %160 = load i64, i64* %n, align 8, !tbaa !13
  %cmp474 = icmp slt i64 0, %160
  br i1 %cmp474, label %land.lhs.true476, label %cond.false519

land.lhs.true476:                                 ; preds = %cond.false473
  %161 = load i64, i64* %n, align 8, !tbaa !13
  %sub477 = sub nsw i64 %161, 1
  %cmp478 = icmp slt i64 -1, %sub477
  br i1 %cmp478, label %cond.true514, label %cond.false519

cond.false480:                                    ; preds = %land.lhs.true465, %cond.false464, %cond.true463
  %162 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div481 = sdiv i64 0, %162
  %163 = load i64, i64* %n, align 8, !tbaa !13
  %cmp482 = icmp slt i64 %div481, %163
  br i1 %cmp482, label %cond.true514, label %cond.false519

cond.false484:                                    ; preds = %cond.false435
  %164 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp485 = icmp eq i64 %164, 0
  br i1 %cmp485, label %cond.true487, label %cond.false488

cond.true487:                                     ; preds = %cond.false484
  br i1 false, label %cond.true514, label %cond.false519

cond.false488:                                    ; preds = %cond.false484
  %165 = load i64, i64* %n, align 8, !tbaa !13
  %cmp489 = icmp slt i64 %165, 0
  br i1 %cmp489, label %cond.true491, label %cond.false510

cond.true491:                                     ; preds = %cond.false488
  br i1 true, label %cond.true492, label %cond.false493

cond.true492:                                     ; preds = %cond.true491
  br i1 false, label %land.lhs.true494, label %cond.false506

cond.false493:                                    ; preds = %cond.true491
  br i1 false, label %land.lhs.true494, label %cond.false506

land.lhs.true494:                                 ; preds = %cond.false493, %cond.true492
  %166 = load i64, i64* %n, align 8, !tbaa !13
  %cmp495 = icmp eq i64 %166, -1
  br i1 %cmp495, label %cond.true497, label %cond.false506

cond.true497:                                     ; preds = %land.lhs.true494
  br i1 true, label %cond.true498, label %cond.false502

cond.true498:                                     ; preds = %cond.true497
  %167 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add499 = add nsw i64 %167, 0
  %cmp500 = icmp slt i64 0, %add499
  br i1 %cmp500, label %cond.true514, label %cond.false519

cond.false502:                                    ; preds = %cond.true497
  %168 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub503 = sub nsw i64 %168, 1
  %cmp504 = icmp slt i64 -1, %sub503
  br i1 %cmp504, label %cond.true514, label %cond.false519

cond.false506:                                    ; preds = %land.lhs.true494, %cond.false493, %cond.true492
  %169 = load i64, i64* %n, align 8, !tbaa !13
  %div507 = sdiv i64 0, %169
  %170 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp508 = icmp slt i64 %div507, %170
  br i1 %cmp508, label %cond.true514, label %cond.false519

cond.false510:                                    ; preds = %cond.false488
  %171 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div511 = sdiv i64 4294967295, %171
  %172 = load i64, i64* %n, align 8, !tbaa !13
  %cmp512 = icmp slt i64 %div511, %172
  br i1 %cmp512, label %cond.true514, label %cond.false519

cond.true514:                                     ; preds = %cond.false510, %cond.false506, %cond.false502, %cond.true498, %cond.true487, %cond.false480, %land.lhs.true476, %cond.true469, %cond.end457, %cond.true442
  %173 = load i64, i64* %n, align 8, !tbaa !13
  %conv515 = trunc i64 %173 to i32
  %174 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv516 = trunc i64 %174 to i32
  %mul517 = mul i32 %conv515, %conv516
  %conv518 = zext i32 %mul517 to i64
  store i64 %conv518, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false519:                                    ; preds = %cond.false510, %cond.false506, %cond.false502, %cond.true498, %cond.true487, %cond.false480, %land.lhs.true476, %cond.false473, %cond.true469, %cond.end457, %cond.true442
  %175 = load i64, i64* %n, align 8, !tbaa !13
  %conv520 = trunc i64 %175 to i32
  %176 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv521 = trunc i64 %176 to i32
  %mul522 = mul i32 %conv520, %conv521
  %conv523 = zext i32 %mul522 to i64
  store i64 %conv523, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false524:                                    ; preds = %cond.false344
  br i1 true, label %cond.true525, label %cond.false686

cond.true525:                                     ; preds = %cond.false524
  br i1 true, label %cond.true526, label %cond.false603

cond.true526:                                     ; preds = %cond.true525
  %177 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp527 = icmp slt i64 %177, 0
  br i1 %cmp527, label %cond.true529, label %cond.false572

cond.true529:                                     ; preds = %cond.true526
  %178 = load i64, i64* %n, align 8, !tbaa !13
  %cmp530 = icmp slt i64 %178, 0
  br i1 %cmp530, label %cond.true532, label %cond.false553

cond.true532:                                     ; preds = %cond.true529
  br i1 true, label %cond.true533, label %cond.false537

cond.true533:                                     ; preds = %cond.true532
  %179 = load i64, i64* %n, align 8, !tbaa !13
  %180 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div534 = sdiv i64 9223372036854775807, %180
  %cmp535 = icmp slt i64 %179, %div534
  br i1 %cmp535, label %cond.true599, label %cond.false601

cond.false537:                                    ; preds = %cond.true532
  br i1 true, label %cond.true538, label %cond.false541

cond.true538:                                     ; preds = %cond.false537
  %181 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp539 = icmp slt i64 %181, -9223372036854775807
  br i1 %cmp539, label %cond.true544, label %cond.false545

cond.false541:                                    ; preds = %cond.false537
  %182 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp542 = icmp slt i64 0, %182
  br i1 %cmp542, label %cond.true544, label %cond.false545

cond.true544:                                     ; preds = %cond.false541, %cond.true538
  br label %cond.end548

cond.false545:                                    ; preds = %cond.false541, %cond.true538
  %183 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub546 = sub nsw i64 0, %183
  %div547 = sdiv i64 9223372036854775807, %sub546
  br label %cond.end548

cond.end548:                                      ; preds = %cond.false545, %cond.true544
  %cond549 = phi i64 [ 0, %cond.true544 ], [ %div547, %cond.false545 ]
  %184 = load i64, i64* %n, align 8, !tbaa !13
  %sub550 = sub nsw i64 -1, %184
  %cmp551 = icmp sle i64 %cond549, %sub550
  br i1 %cmp551, label %cond.true599, label %cond.false601

cond.false553:                                    ; preds = %cond.true529
  %185 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp554 = icmp eq i64 %185, -1
  br i1 %cmp554, label %cond.true556, label %cond.false568

cond.true556:                                     ; preds = %cond.false553
  br i1 true, label %cond.true557, label %cond.false561

cond.true557:                                     ; preds = %cond.true556
  %186 = load i64, i64* %n, align 8, !tbaa !13
  %add558 = add nsw i64 %186, -9223372036854775808
  %cmp559 = icmp slt i64 0, %add558
  br i1 %cmp559, label %cond.true599, label %cond.false601

cond.false561:                                    ; preds = %cond.true556
  %187 = load i64, i64* %n, align 8, !tbaa !13
  %cmp562 = icmp slt i64 0, %187
  br i1 %cmp562, label %land.lhs.true564, label %cond.false601

land.lhs.true564:                                 ; preds = %cond.false561
  %188 = load i64, i64* %n, align 8, !tbaa !13
  %sub565 = sub nsw i64 %188, 1
  %cmp566 = icmp slt i64 9223372036854775807, %sub565
  br i1 %cmp566, label %cond.true599, label %cond.false601

cond.false568:                                    ; preds = %cond.false553
  %189 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div569 = sdiv i64 -9223372036854775808, %189
  %190 = load i64, i64* %n, align 8, !tbaa !13
  %cmp570 = icmp slt i64 %div569, %190
  br i1 %cmp570, label %cond.true599, label %cond.false601

cond.false572:                                    ; preds = %cond.true526
  %191 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp573 = icmp eq i64 %191, 0
  br i1 %cmp573, label %cond.true575, label %cond.false576

cond.true575:                                     ; preds = %cond.false572
  br i1 false, label %cond.true599, label %cond.false601

cond.false576:                                    ; preds = %cond.false572
  %192 = load i64, i64* %n, align 8, !tbaa !13
  %cmp577 = icmp slt i64 %192, 0
  br i1 %cmp577, label %cond.true579, label %cond.false595

cond.true579:                                     ; preds = %cond.false576
  %193 = load i64, i64* %n, align 8, !tbaa !13
  %cmp580 = icmp eq i64 %193, -1
  br i1 %cmp580, label %cond.true582, label %cond.false591

cond.true582:                                     ; preds = %cond.true579
  br i1 true, label %cond.true583, label %cond.false587

cond.true583:                                     ; preds = %cond.true582
  %194 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add584 = add nsw i64 %194, -9223372036854775808
  %cmp585 = icmp slt i64 0, %add584
  br i1 %cmp585, label %cond.true599, label %cond.false601

cond.false587:                                    ; preds = %cond.true582
  %195 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub588 = sub nsw i64 %195, 1
  %cmp589 = icmp slt i64 9223372036854775807, %sub588
  br i1 %cmp589, label %cond.true599, label %cond.false601

cond.false591:                                    ; preds = %cond.true579
  %196 = load i64, i64* %n, align 8, !tbaa !13
  %div592 = sdiv i64 -9223372036854775808, %196
  %197 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp593 = icmp slt i64 %div592, %197
  br i1 %cmp593, label %cond.true599, label %cond.false601

cond.false595:                                    ; preds = %cond.false576
  %198 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div596 = sdiv i64 9223372036854775807, %198
  %199 = load i64, i64* %n, align 8, !tbaa !13
  %cmp597 = icmp slt i64 %div596, %199
  br i1 %cmp597, label %cond.true599, label %cond.false601

cond.true599:                                     ; preds = %cond.false595, %cond.false591, %cond.false587, %cond.true583, %cond.true575, %cond.false568, %land.lhs.true564, %cond.true557, %cond.end548, %cond.true533
  %200 = load i64, i64* %n, align 8, !tbaa !13
  %201 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul600 = mul i64 %200, %201
  store i64 %mul600, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false601:                                    ; preds = %cond.false595, %cond.false591, %cond.false587, %cond.true583, %cond.true575, %cond.false568, %land.lhs.true564, %cond.false561, %cond.true557, %cond.end548, %cond.true533
  %202 = load i64, i64* %n, align 8, !tbaa !13
  %203 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul602 = mul i64 %202, %203
  store i64 %mul602, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false603:                                    ; preds = %cond.true525
  %204 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp604 = icmp slt i64 %204, 0
  br i1 %cmp604, label %cond.true606, label %cond.false652

cond.true606:                                     ; preds = %cond.false603
  %205 = load i64, i64* %n, align 8, !tbaa !13
  %cmp607 = icmp slt i64 %205, 0
  br i1 %cmp607, label %cond.true609, label %cond.false630

cond.true609:                                     ; preds = %cond.true606
  br i1 false, label %cond.true610, label %cond.false614

cond.true610:                                     ; preds = %cond.true609
  %206 = load i64, i64* %n, align 8, !tbaa !13
  %207 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div611 = udiv i64 -1, %207
  %cmp612 = icmp ult i64 %206, %div611
  br i1 %cmp612, label %cond.true682, label %cond.false684

cond.false614:                                    ; preds = %cond.true609
  br i1 true, label %cond.true615, label %cond.false618

cond.true615:                                     ; preds = %cond.false614
  %208 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp616 = icmp slt i64 %208, -9223372036854775807
  br i1 %cmp616, label %cond.true621, label %cond.false622

cond.false618:                                    ; preds = %cond.false614
  %209 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp619 = icmp slt i64 0, %209
  br i1 %cmp619, label %cond.true621, label %cond.false622

cond.true621:                                     ; preds = %cond.false618, %cond.true615
  br label %cond.end625

cond.false622:                                    ; preds = %cond.false618, %cond.true615
  %210 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub623 = sub nsw i64 0, %210
  %div624 = udiv i64 -1, %sub623
  br label %cond.end625

cond.end625:                                      ; preds = %cond.false622, %cond.true621
  %cond626 = phi i64 [ 1, %cond.true621 ], [ %div624, %cond.false622 ]
  %211 = load i64, i64* %n, align 8, !tbaa !13
  %sub627 = sub nsw i64 -1, %211
  %cmp628 = icmp ule i64 %cond626, %sub627
  br i1 %cmp628, label %cond.true682, label %cond.false684

cond.false630:                                    ; preds = %cond.true606
  br i1 true, label %cond.true631, label %cond.false632

cond.true631:                                     ; preds = %cond.false630
  br i1 false, label %land.lhs.true633, label %cond.false648

cond.false632:                                    ; preds = %cond.false630
  br i1 false, label %land.lhs.true633, label %cond.false648

land.lhs.true633:                                 ; preds = %cond.false632, %cond.true631
  %212 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp634 = icmp eq i64 %212, -1
  br i1 %cmp634, label %cond.true636, label %cond.false648

cond.true636:                                     ; preds = %land.lhs.true633
  br i1 true, label %cond.true637, label %cond.false641

cond.true637:                                     ; preds = %cond.true636
  %213 = load i64, i64* %n, align 8, !tbaa !13
  %add638 = add nsw i64 %213, 0
  %cmp639 = icmp slt i64 0, %add638
  br i1 %cmp639, label %cond.true682, label %cond.false684

cond.false641:                                    ; preds = %cond.true636
  %214 = load i64, i64* %n, align 8, !tbaa !13
  %cmp642 = icmp slt i64 0, %214
  br i1 %cmp642, label %land.lhs.true644, label %cond.false684

land.lhs.true644:                                 ; preds = %cond.false641
  %215 = load i64, i64* %n, align 8, !tbaa !13
  %sub645 = sub nsw i64 %215, 1
  %cmp646 = icmp slt i64 -1, %sub645
  br i1 %cmp646, label %cond.true682, label %cond.false684

cond.false648:                                    ; preds = %land.lhs.true633, %cond.false632, %cond.true631
  %216 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div649 = sdiv i64 0, %216
  %217 = load i64, i64* %n, align 8, !tbaa !13
  %cmp650 = icmp slt i64 %div649, %217
  br i1 %cmp650, label %cond.true682, label %cond.false684

cond.false652:                                    ; preds = %cond.false603
  %218 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp653 = icmp eq i64 %218, 0
  br i1 %cmp653, label %cond.true655, label %cond.false656

cond.true655:                                     ; preds = %cond.false652
  br i1 false, label %cond.true682, label %cond.false684

cond.false656:                                    ; preds = %cond.false652
  %219 = load i64, i64* %n, align 8, !tbaa !13
  %cmp657 = icmp slt i64 %219, 0
  br i1 %cmp657, label %cond.true659, label %cond.false678

cond.true659:                                     ; preds = %cond.false656
  br i1 true, label %cond.true660, label %cond.false661

cond.true660:                                     ; preds = %cond.true659
  br i1 false, label %land.lhs.true662, label %cond.false674

cond.false661:                                    ; preds = %cond.true659
  br i1 false, label %land.lhs.true662, label %cond.false674

land.lhs.true662:                                 ; preds = %cond.false661, %cond.true660
  %220 = load i64, i64* %n, align 8, !tbaa !13
  %cmp663 = icmp eq i64 %220, -1
  br i1 %cmp663, label %cond.true665, label %cond.false674

cond.true665:                                     ; preds = %land.lhs.true662
  br i1 true, label %cond.true666, label %cond.false670

cond.true666:                                     ; preds = %cond.true665
  %221 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add667 = add nsw i64 %221, 0
  %cmp668 = icmp slt i64 0, %add667
  br i1 %cmp668, label %cond.true682, label %cond.false684

cond.false670:                                    ; preds = %cond.true665
  %222 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub671 = sub nsw i64 %222, 1
  %cmp672 = icmp slt i64 -1, %sub671
  br i1 %cmp672, label %cond.true682, label %cond.false684

cond.false674:                                    ; preds = %land.lhs.true662, %cond.false661, %cond.true660
  %223 = load i64, i64* %n, align 8, !tbaa !13
  %div675 = sdiv i64 0, %223
  %224 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp676 = icmp slt i64 %div675, %224
  br i1 %cmp676, label %cond.true682, label %cond.false684

cond.false678:                                    ; preds = %cond.false656
  %225 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div679 = udiv i64 -1, %225
  %226 = load i64, i64* %n, align 8, !tbaa !13
  %cmp680 = icmp ult i64 %div679, %226
  br i1 %cmp680, label %cond.true682, label %cond.false684

cond.true682:                                     ; preds = %cond.false678, %cond.false674, %cond.false670, %cond.true666, %cond.true655, %cond.false648, %land.lhs.true644, %cond.true637, %cond.end625, %cond.true610
  %227 = load i64, i64* %n, align 8, !tbaa !13
  %228 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul683 = mul i64 %227, %228
  store i64 %mul683, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false684:                                    ; preds = %cond.false678, %cond.false674, %cond.false670, %cond.true666, %cond.true655, %cond.false648, %land.lhs.true644, %cond.false641, %cond.true637, %cond.end625, %cond.true610
  %229 = load i64, i64* %n, align 8, !tbaa !13
  %230 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul685 = mul i64 %229, %230
  store i64 %mul685, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false686:                                    ; preds = %cond.false524
  br i1 true, label %cond.true687, label %cond.false764

cond.true687:                                     ; preds = %cond.false686
  %231 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp688 = icmp slt i64 %231, 0
  br i1 %cmp688, label %cond.true690, label %cond.false733

cond.true690:                                     ; preds = %cond.true687
  %232 = load i64, i64* %n, align 8, !tbaa !13
  %cmp691 = icmp slt i64 %232, 0
  br i1 %cmp691, label %cond.true693, label %cond.false714

cond.true693:                                     ; preds = %cond.true690
  br i1 true, label %cond.true694, label %cond.false698

cond.true694:                                     ; preds = %cond.true693
  %233 = load i64, i64* %n, align 8, !tbaa !13
  %234 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div695 = sdiv i64 9223372036854775807, %234
  %cmp696 = icmp slt i64 %233, %div695
  br i1 %cmp696, label %cond.true760, label %cond.false762

cond.false698:                                    ; preds = %cond.true693
  br i1 true, label %cond.true699, label %cond.false702

cond.true699:                                     ; preds = %cond.false698
  %235 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp700 = icmp slt i64 %235, -9223372036854775807
  br i1 %cmp700, label %cond.true705, label %cond.false706

cond.false702:                                    ; preds = %cond.false698
  %236 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp703 = icmp slt i64 0, %236
  br i1 %cmp703, label %cond.true705, label %cond.false706

cond.true705:                                     ; preds = %cond.false702, %cond.true699
  br label %cond.end709

cond.false706:                                    ; preds = %cond.false702, %cond.true699
  %237 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub707 = sub nsw i64 0, %237
  %div708 = sdiv i64 9223372036854775807, %sub707
  br label %cond.end709

cond.end709:                                      ; preds = %cond.false706, %cond.true705
  %cond710 = phi i64 [ 0, %cond.true705 ], [ %div708, %cond.false706 ]
  %238 = load i64, i64* %n, align 8, !tbaa !13
  %sub711 = sub nsw i64 -1, %238
  %cmp712 = icmp sle i64 %cond710, %sub711
  br i1 %cmp712, label %cond.true760, label %cond.false762

cond.false714:                                    ; preds = %cond.true690
  %239 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp715 = icmp eq i64 %239, -1
  br i1 %cmp715, label %cond.true717, label %cond.false729

cond.true717:                                     ; preds = %cond.false714
  br i1 true, label %cond.true718, label %cond.false722

cond.true718:                                     ; preds = %cond.true717
  %240 = load i64, i64* %n, align 8, !tbaa !13
  %add719 = add nsw i64 %240, -9223372036854775808
  %cmp720 = icmp slt i64 0, %add719
  br i1 %cmp720, label %cond.true760, label %cond.false762

cond.false722:                                    ; preds = %cond.true717
  %241 = load i64, i64* %n, align 8, !tbaa !13
  %cmp723 = icmp slt i64 0, %241
  br i1 %cmp723, label %land.lhs.true725, label %cond.false762

land.lhs.true725:                                 ; preds = %cond.false722
  %242 = load i64, i64* %n, align 8, !tbaa !13
  %sub726 = sub nsw i64 %242, 1
  %cmp727 = icmp slt i64 9223372036854775807, %sub726
  br i1 %cmp727, label %cond.true760, label %cond.false762

cond.false729:                                    ; preds = %cond.false714
  %243 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div730 = sdiv i64 -9223372036854775808, %243
  %244 = load i64, i64* %n, align 8, !tbaa !13
  %cmp731 = icmp slt i64 %div730, %244
  br i1 %cmp731, label %cond.true760, label %cond.false762

cond.false733:                                    ; preds = %cond.true687
  %245 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp734 = icmp eq i64 %245, 0
  br i1 %cmp734, label %cond.true736, label %cond.false737

cond.true736:                                     ; preds = %cond.false733
  br i1 false, label %cond.true760, label %cond.false762

cond.false737:                                    ; preds = %cond.false733
  %246 = load i64, i64* %n, align 8, !tbaa !13
  %cmp738 = icmp slt i64 %246, 0
  br i1 %cmp738, label %cond.true740, label %cond.false756

cond.true740:                                     ; preds = %cond.false737
  %247 = load i64, i64* %n, align 8, !tbaa !13
  %cmp741 = icmp eq i64 %247, -1
  br i1 %cmp741, label %cond.true743, label %cond.false752

cond.true743:                                     ; preds = %cond.true740
  br i1 true, label %cond.true744, label %cond.false748

cond.true744:                                     ; preds = %cond.true743
  %248 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add745 = add nsw i64 %248, -9223372036854775808
  %cmp746 = icmp slt i64 0, %add745
  br i1 %cmp746, label %cond.true760, label %cond.false762

cond.false748:                                    ; preds = %cond.true743
  %249 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub749 = sub nsw i64 %249, 1
  %cmp750 = icmp slt i64 9223372036854775807, %sub749
  br i1 %cmp750, label %cond.true760, label %cond.false762

cond.false752:                                    ; preds = %cond.true740
  %250 = load i64, i64* %n, align 8, !tbaa !13
  %div753 = sdiv i64 -9223372036854775808, %250
  %251 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp754 = icmp slt i64 %div753, %251
  br i1 %cmp754, label %cond.true760, label %cond.false762

cond.false756:                                    ; preds = %cond.false737
  %252 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div757 = sdiv i64 9223372036854775807, %252
  %253 = load i64, i64* %n, align 8, !tbaa !13
  %cmp758 = icmp slt i64 %div757, %253
  br i1 %cmp758, label %cond.true760, label %cond.false762

cond.true760:                                     ; preds = %cond.false756, %cond.false752, %cond.false748, %cond.true744, %cond.true736, %cond.false729, %land.lhs.true725, %cond.true718, %cond.end709, %cond.true694
  %254 = load i64, i64* %n, align 8, !tbaa !13
  %255 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul761 = mul i64 %254, %255
  store i64 %mul761, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false762:                                    ; preds = %cond.false756, %cond.false752, %cond.false748, %cond.true744, %cond.true736, %cond.false729, %land.lhs.true725, %cond.false722, %cond.true718, %cond.end709, %cond.true694
  %256 = load i64, i64* %n, align 8, !tbaa !13
  %257 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul763 = mul i64 %256, %257
  store i64 %mul763, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.false764:                                    ; preds = %cond.false686
  %258 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp765 = icmp slt i64 %258, 0
  br i1 %cmp765, label %cond.true767, label %cond.false813

cond.true767:                                     ; preds = %cond.false764
  %259 = load i64, i64* %n, align 8, !tbaa !13
  %cmp768 = icmp slt i64 %259, 0
  br i1 %cmp768, label %cond.true770, label %cond.false791

cond.true770:                                     ; preds = %cond.true767
  br i1 false, label %cond.true771, label %cond.false775

cond.true771:                                     ; preds = %cond.true770
  %260 = load i64, i64* %n, align 8, !tbaa !13
  %261 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div772 = udiv i64 -1, %261
  %cmp773 = icmp ult i64 %260, %div772
  br i1 %cmp773, label %cond.true843, label %cond.false845

cond.false775:                                    ; preds = %cond.true770
  br i1 true, label %cond.true776, label %cond.false779

cond.true776:                                     ; preds = %cond.false775
  %262 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp777 = icmp slt i64 %262, -9223372036854775807
  br i1 %cmp777, label %cond.true782, label %cond.false783

cond.false779:                                    ; preds = %cond.false775
  %263 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp780 = icmp slt i64 0, %263
  br i1 %cmp780, label %cond.true782, label %cond.false783

cond.true782:                                     ; preds = %cond.false779, %cond.true776
  br label %cond.end786

cond.false783:                                    ; preds = %cond.false779, %cond.true776
  %264 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub784 = sub nsw i64 0, %264
  %div785 = udiv i64 -1, %sub784
  br label %cond.end786

cond.end786:                                      ; preds = %cond.false783, %cond.true782
  %cond787 = phi i64 [ 1, %cond.true782 ], [ %div785, %cond.false783 ]
  %265 = load i64, i64* %n, align 8, !tbaa !13
  %sub788 = sub nsw i64 -1, %265
  %cmp789 = icmp ule i64 %cond787, %sub788
  br i1 %cmp789, label %cond.true843, label %cond.false845

cond.false791:                                    ; preds = %cond.true767
  br i1 true, label %cond.true792, label %cond.false793

cond.true792:                                     ; preds = %cond.false791
  br i1 false, label %land.lhs.true794, label %cond.false809

cond.false793:                                    ; preds = %cond.false791
  br i1 false, label %land.lhs.true794, label %cond.false809

land.lhs.true794:                                 ; preds = %cond.false793, %cond.true792
  %266 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp795 = icmp eq i64 %266, -1
  br i1 %cmp795, label %cond.true797, label %cond.false809

cond.true797:                                     ; preds = %land.lhs.true794
  br i1 true, label %cond.true798, label %cond.false802

cond.true798:                                     ; preds = %cond.true797
  %267 = load i64, i64* %n, align 8, !tbaa !13
  %add799 = add nsw i64 %267, 0
  %cmp800 = icmp slt i64 0, %add799
  br i1 %cmp800, label %cond.true843, label %cond.false845

cond.false802:                                    ; preds = %cond.true797
  %268 = load i64, i64* %n, align 8, !tbaa !13
  %cmp803 = icmp slt i64 0, %268
  br i1 %cmp803, label %land.lhs.true805, label %cond.false845

land.lhs.true805:                                 ; preds = %cond.false802
  %269 = load i64, i64* %n, align 8, !tbaa !13
  %sub806 = sub nsw i64 %269, 1
  %cmp807 = icmp slt i64 -1, %sub806
  br i1 %cmp807, label %cond.true843, label %cond.false845

cond.false809:                                    ; preds = %land.lhs.true794, %cond.false793, %cond.true792
  %270 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div810 = sdiv i64 0, %270
  %271 = load i64, i64* %n, align 8, !tbaa !13
  %cmp811 = icmp slt i64 %div810, %271
  br i1 %cmp811, label %cond.true843, label %cond.false845

cond.false813:                                    ; preds = %cond.false764
  %272 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp814 = icmp eq i64 %272, 0
  br i1 %cmp814, label %cond.true816, label %cond.false817

cond.true816:                                     ; preds = %cond.false813
  br i1 false, label %cond.true843, label %cond.false845

cond.false817:                                    ; preds = %cond.false813
  %273 = load i64, i64* %n, align 8, !tbaa !13
  %cmp818 = icmp slt i64 %273, 0
  br i1 %cmp818, label %cond.true820, label %cond.false839

cond.true820:                                     ; preds = %cond.false817
  br i1 true, label %cond.true821, label %cond.false822

cond.true821:                                     ; preds = %cond.true820
  br i1 false, label %land.lhs.true823, label %cond.false835

cond.false822:                                    ; preds = %cond.true820
  br i1 false, label %land.lhs.true823, label %cond.false835

land.lhs.true823:                                 ; preds = %cond.false822, %cond.true821
  %274 = load i64, i64* %n, align 8, !tbaa !13
  %cmp824 = icmp eq i64 %274, -1
  br i1 %cmp824, label %cond.true826, label %cond.false835

cond.true826:                                     ; preds = %land.lhs.true823
  br i1 true, label %cond.true827, label %cond.false831

cond.true827:                                     ; preds = %cond.true826
  %275 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add828 = add nsw i64 %275, 0
  %cmp829 = icmp slt i64 0, %add828
  br i1 %cmp829, label %cond.true843, label %cond.false845

cond.false831:                                    ; preds = %cond.true826
  %276 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub832 = sub nsw i64 %276, 1
  %cmp833 = icmp slt i64 -1, %sub832
  br i1 %cmp833, label %cond.true843, label %cond.false845

cond.false835:                                    ; preds = %land.lhs.true823, %cond.false822, %cond.true821
  %277 = load i64, i64* %n, align 8, !tbaa !13
  %div836 = sdiv i64 0, %277
  %278 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp837 = icmp slt i64 %div836, %278
  br i1 %cmp837, label %cond.true843, label %cond.false845

cond.false839:                                    ; preds = %cond.false817
  %279 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div840 = udiv i64 -1, %279
  %280 = load i64, i64* %n, align 8, !tbaa !13
  %cmp841 = icmp ult i64 %div840, %280
  br i1 %cmp841, label %cond.true843, label %cond.false845

cond.true843:                                     ; preds = %cond.false839, %cond.false835, %cond.false831, %cond.true827, %cond.true816, %cond.false809, %land.lhs.true805, %cond.true798, %cond.end786, %cond.true771
  %281 = load i64, i64* %n, align 8, !tbaa !13
  %282 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul844 = mul i64 %281, %282
  store i64 %mul844, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %cond.true847, label %cond.false848

cond.false845:                                    ; preds = %cond.false839, %cond.false835, %cond.false831, %cond.true827, %cond.true816, %cond.false809, %land.lhs.true805, %cond.false802, %cond.true798, %cond.end786, %cond.true771
  %283 = load i64, i64* %n, align 8, !tbaa !13
  %284 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul846 = mul i64 %283, %284
  store i64 %mul846, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %cond.true847, label %cond.false848

cond.true847:                                     ; preds = %cond.false845, %cond.true843, %cond.false762, %cond.true760, %cond.false684, %cond.true682, %cond.false601, %cond.true599, %cond.false519, %cond.true514, %cond.false430, %cond.true425, %cond.false338, %cond.true332, %cond.false247, %cond.true241, %cond.false154, %cond.true148, %cond.false63, %cond.true59
  br label %cond.end853

cond.false848:                                    ; preds = %cond.false845, %cond.true843, %cond.false762, %cond.true760, %cond.false684, %cond.true682, %cond.false601, %cond.true599, %cond.false519, %cond.true514, %cond.false430, %cond.true425, %cond.false338, %cond.true332, %cond.false247, %cond.true241, %cond.false154, %cond.true148, %cond.false63, %cond.true59
  %285 = load i64, i64* %nbytes, align 8, !tbaa !13
  %cmp849 = icmp slt i64 %285, 128
  %286 = zext i1 %cmp849 to i64
  %cond851 = select i1 %cmp849, i32 128, i32 0
  %conv852 = sext i32 %cond851 to i64
  br label %cond.end853

cond.end853:                                      ; preds = %cond.false848, %cond.true847
  %cond854 = phi i64 [ 9223372036854775807, %cond.true847 ], [ %conv852, %cond.false848 ]
  store i64 %cond854, i64* %adjusted_nbytes, align 8, !tbaa !13
  %287 = load i64, i64* %adjusted_nbytes, align 8, !tbaa !13
  %tobool = icmp ne i64 %287, 0
  br i1 %tobool, label %if.then855, label %if.end858

if.then855:                                       ; preds = %cond.end853
  %288 = load i64, i64* %adjusted_nbytes, align 8, !tbaa !13
  %289 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div856 = sdiv i64 %288, %289
  store i64 %div856, i64* %n, align 8, !tbaa !13
  %290 = load i64, i64* %adjusted_nbytes, align 8, !tbaa !13
  %291 = load i64, i64* %adjusted_nbytes, align 8, !tbaa !13
  %292 = load i64, i64* %s.addr, align 8, !tbaa !13
  %rem = srem i64 %291, %292
  %sub857 = sub nsw i64 %290, %rem
  store i64 %sub857, i64* %nbytes, align 8, !tbaa !13
  br label %if.end858

if.end858:                                        ; preds = %if.then855, %cond.end853
  %293 = load i8*, i8** %pa.addr, align 8, !tbaa !6
  %tobool859 = icmp ne i8* %293, null
  br i1 %tobool859, label %if.end861, label %if.then860

if.then860:                                       ; preds = %if.end858
  %294 = load i64*, i64** %pn.addr, align 8, !tbaa !6
  store i64 0, i64* %294, align 8, !tbaa !13
  br label %if.end861

if.end861:                                        ; preds = %if.then860, %if.end858
  %295 = load i64, i64* %n, align 8, !tbaa !13
  %296 = load i64, i64* %n0, align 8, !tbaa !13
  %sub862 = sub nsw i64 %295, %296
  %297 = load i64, i64* %n_incr_min.addr, align 8, !tbaa !13
  %cmp863 = icmp slt i64 %sub862, %297
  br i1 %cmp863, label %land.lhs.true865, label %if.end1744

land.lhs.true865:                                 ; preds = %if.end861
  %298 = load i64, i64* %n0, align 8, !tbaa !13
  %299 = load i64, i64* %n_incr_min.addr, align 8, !tbaa !13
  %300 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %298, i64 %299)
  %301 = extractvalue { i64, i1 } %300, 1
  %302 = extractvalue { i64, i1 } %300, 0
  store i64 %302, i64* %n, align 8
  br i1 %301, label %if.then1743, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true865
  %303 = load i64, i64* %n_max.addr, align 8, !tbaa !13
  %cmp867 = icmp sle i64 0, %303
  br i1 %cmp867, label %land.lhs.true869, label %lor.lhs.false872

land.lhs.true869:                                 ; preds = %lor.lhs.false
  %304 = load i64, i64* %n_max.addr, align 8, !tbaa !13
  %305 = load i64, i64* %n, align 8, !tbaa !13
  %cmp870 = icmp slt i64 %304, %305
  br i1 %cmp870, label %if.then1743, label %lor.lhs.false872

lor.lhs.false872:                                 ; preds = %land.lhs.true869, %lor.lhs.false
  br i1 false, label %cond.true873, label %cond.false1056

cond.true873:                                     ; preds = %lor.lhs.false872
  br i1 false, label %cond.false965, label %cond.true874

cond.true874:                                     ; preds = %cond.true873
  %306 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp875 = icmp slt i64 %306, 0
  br i1 %cmp875, label %cond.true877, label %cond.false923

cond.true877:                                     ; preds = %cond.true874
  %307 = load i64, i64* %n, align 8, !tbaa !13
  %cmp878 = icmp slt i64 %307, 0
  br i1 %cmp878, label %cond.true880, label %cond.false901

cond.true880:                                     ; preds = %cond.true877
  br i1 true, label %cond.true881, label %cond.false885

cond.true881:                                     ; preds = %cond.true880
  %308 = load i64, i64* %n, align 8, !tbaa !13
  %309 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div882 = sdiv i64 127, %309
  %cmp883 = icmp slt i64 %308, %div882
  br i1 %cmp883, label %cond.true953, label %cond.false959

cond.false885:                                    ; preds = %cond.true880
  br i1 true, label %cond.true886, label %cond.false889

cond.true886:                                     ; preds = %cond.false885
  %310 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp887 = icmp slt i64 %310, -9223372036854775807
  br i1 %cmp887, label %cond.true892, label %cond.false893

cond.false889:                                    ; preds = %cond.false885
  %311 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp890 = icmp slt i64 0, %311
  br i1 %cmp890, label %cond.true892, label %cond.false893

cond.true892:                                     ; preds = %cond.false889, %cond.true886
  br label %cond.end896

cond.false893:                                    ; preds = %cond.false889, %cond.true886
  %312 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub894 = sub nsw i64 0, %312
  %div895 = sdiv i64 127, %sub894
  br label %cond.end896

cond.end896:                                      ; preds = %cond.false893, %cond.true892
  %cond897 = phi i64 [ 0, %cond.true892 ], [ %div895, %cond.false893 ]
  %313 = load i64, i64* %n, align 8, !tbaa !13
  %sub898 = sub nsw i64 -1, %313
  %cmp899 = icmp sle i64 %cond897, %sub898
  br i1 %cmp899, label %cond.true953, label %cond.false959

cond.false901:                                    ; preds = %cond.true877
  br i1 true, label %cond.true902, label %cond.false903

cond.true902:                                     ; preds = %cond.false901
  br i1 false, label %land.lhs.true904, label %cond.false919

cond.false903:                                    ; preds = %cond.false901
  br i1 false, label %land.lhs.true904, label %cond.false919

land.lhs.true904:                                 ; preds = %cond.false903, %cond.true902
  %314 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp905 = icmp eq i64 %314, -1
  br i1 %cmp905, label %cond.true907, label %cond.false919

cond.true907:                                     ; preds = %land.lhs.true904
  br i1 true, label %cond.true908, label %cond.false912

cond.true908:                                     ; preds = %cond.true907
  %315 = load i64, i64* %n, align 8, !tbaa !13
  %add909 = add nsw i64 %315, -128
  %cmp910 = icmp slt i64 0, %add909
  br i1 %cmp910, label %cond.true953, label %cond.false959

cond.false912:                                    ; preds = %cond.true907
  %316 = load i64, i64* %n, align 8, !tbaa !13
  %cmp913 = icmp slt i64 0, %316
  br i1 %cmp913, label %land.lhs.true915, label %cond.false959

land.lhs.true915:                                 ; preds = %cond.false912
  %317 = load i64, i64* %n, align 8, !tbaa !13
  %sub916 = sub nsw i64 %317, 1
  %cmp917 = icmp slt i64 127, %sub916
  br i1 %cmp917, label %cond.true953, label %cond.false959

cond.false919:                                    ; preds = %land.lhs.true904, %cond.false903, %cond.true902
  %318 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div920 = sdiv i64 -128, %318
  %319 = load i64, i64* %n, align 8, !tbaa !13
  %cmp921 = icmp slt i64 %div920, %319
  br i1 %cmp921, label %cond.true953, label %cond.false959

cond.false923:                                    ; preds = %cond.true874
  %320 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp924 = icmp eq i64 %320, 0
  br i1 %cmp924, label %cond.true926, label %cond.false927

cond.true926:                                     ; preds = %cond.false923
  br i1 false, label %cond.true953, label %cond.false959

cond.false927:                                    ; preds = %cond.false923
  %321 = load i64, i64* %n, align 8, !tbaa !13
  %cmp928 = icmp slt i64 %321, 0
  br i1 %cmp928, label %cond.true930, label %cond.false949

cond.true930:                                     ; preds = %cond.false927
  br i1 true, label %cond.true931, label %cond.false932

cond.true931:                                     ; preds = %cond.true930
  br i1 false, label %land.lhs.true933, label %cond.false945

cond.false932:                                    ; preds = %cond.true930
  br i1 false, label %land.lhs.true933, label %cond.false945

land.lhs.true933:                                 ; preds = %cond.false932, %cond.true931
  %322 = load i64, i64* %n, align 8, !tbaa !13
  %cmp934 = icmp eq i64 %322, -1
  br i1 %cmp934, label %cond.true936, label %cond.false945

cond.true936:                                     ; preds = %land.lhs.true933
  br i1 true, label %cond.true937, label %cond.false941

cond.true937:                                     ; preds = %cond.true936
  %323 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add938 = add nsw i64 %323, -128
  %cmp939 = icmp slt i64 0, %add938
  br i1 %cmp939, label %cond.true953, label %cond.false959

cond.false941:                                    ; preds = %cond.true936
  %324 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub942 = sub nsw i64 %324, 1
  %cmp943 = icmp slt i64 127, %sub942
  br i1 %cmp943, label %cond.true953, label %cond.false959

cond.false945:                                    ; preds = %land.lhs.true933, %cond.false932, %cond.true931
  %325 = load i64, i64* %n, align 8, !tbaa !13
  %div946 = sdiv i64 -128, %325
  %326 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp947 = icmp slt i64 %div946, %326
  br i1 %cmp947, label %cond.true953, label %cond.false959

cond.false949:                                    ; preds = %cond.false927
  %327 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div950 = sdiv i64 127, %327
  %328 = load i64, i64* %n, align 8, !tbaa !13
  %cmp951 = icmp slt i64 %div950, %328
  br i1 %cmp951, label %cond.true953, label %cond.false959

cond.true953:                                     ; preds = %cond.false949, %cond.false945, %cond.false941, %cond.true937, %cond.true926, %cond.false919, %land.lhs.true915, %cond.true908, %cond.end896, %cond.true881
  %329 = load i64, i64* %n, align 8, !tbaa !13
  %conv954 = trunc i64 %329 to i32
  %330 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv955 = trunc i64 %330 to i32
  %mul956 = mul i32 %conv954, %conv955
  %conv957 = trunc i32 %mul956 to i8
  %conv958 = sext i8 %conv957 to i64
  store i64 %conv958, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false959:                                    ; preds = %cond.false949, %cond.false945, %cond.false941, %cond.true937, %cond.true926, %cond.false919, %land.lhs.true915, %cond.false912, %cond.true908, %cond.end896, %cond.true881
  %331 = load i64, i64* %n, align 8, !tbaa !13
  %conv960 = trunc i64 %331 to i32
  %332 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv961 = trunc i64 %332 to i32
  %mul962 = mul i32 %conv960, %conv961
  %conv963 = trunc i32 %mul962 to i8
  %conv964 = sext i8 %conv963 to i64
  store i64 %conv964, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false965:                                    ; preds = %cond.true873
  %333 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp966 = icmp slt i64 %333, 0
  br i1 %cmp966, label %cond.true968, label %cond.false1014

cond.true968:                                     ; preds = %cond.false965
  %334 = load i64, i64* %n, align 8, !tbaa !13
  %cmp969 = icmp slt i64 %334, 0
  br i1 %cmp969, label %cond.true971, label %cond.false992

cond.true971:                                     ; preds = %cond.true968
  br i1 true, label %cond.true972, label %cond.false976

cond.true972:                                     ; preds = %cond.true971
  %335 = load i64, i64* %n, align 8, !tbaa !13
  %336 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div973 = sdiv i64 255, %336
  %cmp974 = icmp slt i64 %335, %div973
  br i1 %cmp974, label %cond.true1044, label %cond.false1050

cond.false976:                                    ; preds = %cond.true971
  br i1 true, label %cond.true977, label %cond.false980

cond.true977:                                     ; preds = %cond.false976
  %337 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp978 = icmp slt i64 %337, -9223372036854775807
  br i1 %cmp978, label %cond.true983, label %cond.false984

cond.false980:                                    ; preds = %cond.false976
  %338 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp981 = icmp slt i64 0, %338
  br i1 %cmp981, label %cond.true983, label %cond.false984

cond.true983:                                     ; preds = %cond.false980, %cond.true977
  br label %cond.end987

cond.false984:                                    ; preds = %cond.false980, %cond.true977
  %339 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub985 = sub nsw i64 0, %339
  %div986 = sdiv i64 255, %sub985
  br label %cond.end987

cond.end987:                                      ; preds = %cond.false984, %cond.true983
  %cond988 = phi i64 [ 0, %cond.true983 ], [ %div986, %cond.false984 ]
  %340 = load i64, i64* %n, align 8, !tbaa !13
  %sub989 = sub nsw i64 -1, %340
  %cmp990 = icmp sle i64 %cond988, %sub989
  br i1 %cmp990, label %cond.true1044, label %cond.false1050

cond.false992:                                    ; preds = %cond.true968
  br i1 true, label %cond.true993, label %cond.false994

cond.true993:                                     ; preds = %cond.false992
  br i1 false, label %land.lhs.true995, label %cond.false1010

cond.false994:                                    ; preds = %cond.false992
  br i1 false, label %land.lhs.true995, label %cond.false1010

land.lhs.true995:                                 ; preds = %cond.false994, %cond.true993
  %341 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp996 = icmp eq i64 %341, -1
  br i1 %cmp996, label %cond.true998, label %cond.false1010

cond.true998:                                     ; preds = %land.lhs.true995
  br i1 true, label %cond.true999, label %cond.false1003

cond.true999:                                     ; preds = %cond.true998
  %342 = load i64, i64* %n, align 8, !tbaa !13
  %add1000 = add nsw i64 %342, 0
  %cmp1001 = icmp slt i64 0, %add1000
  br i1 %cmp1001, label %cond.true1044, label %cond.false1050

cond.false1003:                                   ; preds = %cond.true998
  %343 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1004 = icmp slt i64 0, %343
  br i1 %cmp1004, label %land.lhs.true1006, label %cond.false1050

land.lhs.true1006:                                ; preds = %cond.false1003
  %344 = load i64, i64* %n, align 8, !tbaa !13
  %sub1007 = sub nsw i64 %344, 1
  %cmp1008 = icmp slt i64 -1, %sub1007
  br i1 %cmp1008, label %cond.true1044, label %cond.false1050

cond.false1010:                                   ; preds = %land.lhs.true995, %cond.false994, %cond.true993
  %345 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1011 = sdiv i64 0, %345
  %346 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1012 = icmp slt i64 %div1011, %346
  br i1 %cmp1012, label %cond.true1044, label %cond.false1050

cond.false1014:                                   ; preds = %cond.false965
  %347 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1015 = icmp eq i64 %347, 0
  br i1 %cmp1015, label %cond.true1017, label %cond.false1018

cond.true1017:                                    ; preds = %cond.false1014
  br i1 false, label %cond.true1044, label %cond.false1050

cond.false1018:                                   ; preds = %cond.false1014
  %348 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1019 = icmp slt i64 %348, 0
  br i1 %cmp1019, label %cond.true1021, label %cond.false1040

cond.true1021:                                    ; preds = %cond.false1018
  br i1 true, label %cond.true1022, label %cond.false1023

cond.true1022:                                    ; preds = %cond.true1021
  br i1 false, label %land.lhs.true1024, label %cond.false1036

cond.false1023:                                   ; preds = %cond.true1021
  br i1 false, label %land.lhs.true1024, label %cond.false1036

land.lhs.true1024:                                ; preds = %cond.false1023, %cond.true1022
  %349 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1025 = icmp eq i64 %349, -1
  br i1 %cmp1025, label %cond.true1027, label %cond.false1036

cond.true1027:                                    ; preds = %land.lhs.true1024
  br i1 true, label %cond.true1028, label %cond.false1032

cond.true1028:                                    ; preds = %cond.true1027
  %350 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1029 = add nsw i64 %350, 0
  %cmp1030 = icmp slt i64 0, %add1029
  br i1 %cmp1030, label %cond.true1044, label %cond.false1050

cond.false1032:                                   ; preds = %cond.true1027
  %351 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1033 = sub nsw i64 %351, 1
  %cmp1034 = icmp slt i64 -1, %sub1033
  br i1 %cmp1034, label %cond.true1044, label %cond.false1050

cond.false1036:                                   ; preds = %land.lhs.true1024, %cond.false1023, %cond.true1022
  %352 = load i64, i64* %n, align 8, !tbaa !13
  %div1037 = sdiv i64 0, %352
  %353 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1038 = icmp slt i64 %div1037, %353
  br i1 %cmp1038, label %cond.true1044, label %cond.false1050

cond.false1040:                                   ; preds = %cond.false1018
  %354 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1041 = sdiv i64 255, %354
  %355 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1042 = icmp slt i64 %div1041, %355
  br i1 %cmp1042, label %cond.true1044, label %cond.false1050

cond.true1044:                                    ; preds = %cond.false1040, %cond.false1036, %cond.false1032, %cond.true1028, %cond.true1017, %cond.false1010, %land.lhs.true1006, %cond.true999, %cond.end987, %cond.true972
  %356 = load i64, i64* %n, align 8, !tbaa !13
  %conv1045 = trunc i64 %356 to i32
  %357 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1046 = trunc i64 %357 to i32
  %mul1047 = mul i32 %conv1045, %conv1046
  %conv1048 = trunc i32 %mul1047 to i8
  %conv1049 = zext i8 %conv1048 to i64
  store i64 %conv1049, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1050:                                   ; preds = %cond.false1040, %cond.false1036, %cond.false1032, %cond.true1028, %cond.true1017, %cond.false1010, %land.lhs.true1006, %cond.false1003, %cond.true999, %cond.end987, %cond.true972
  %358 = load i64, i64* %n, align 8, !tbaa !13
  %conv1051 = trunc i64 %358 to i32
  %359 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1052 = trunc i64 %359 to i32
  %mul1053 = mul i32 %conv1051, %conv1052
  %conv1054 = trunc i32 %mul1053 to i8
  %conv1055 = zext i8 %conv1054 to i64
  store i64 %conv1055, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false1056:                                   ; preds = %lor.lhs.false872
  br i1 false, label %cond.true1057, label %cond.false1240

cond.true1057:                                    ; preds = %cond.false1056
  br i1 false, label %cond.false1149, label %cond.true1058

cond.true1058:                                    ; preds = %cond.true1057
  %360 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1059 = icmp slt i64 %360, 0
  br i1 %cmp1059, label %cond.true1061, label %cond.false1107

cond.true1061:                                    ; preds = %cond.true1058
  %361 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1062 = icmp slt i64 %361, 0
  br i1 %cmp1062, label %cond.true1064, label %cond.false1085

cond.true1064:                                    ; preds = %cond.true1061
  br i1 true, label %cond.true1065, label %cond.false1069

cond.true1065:                                    ; preds = %cond.true1064
  %362 = load i64, i64* %n, align 8, !tbaa !13
  %363 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1066 = sdiv i64 32767, %363
  %cmp1067 = icmp slt i64 %362, %div1066
  br i1 %cmp1067, label %cond.true1137, label %cond.false1143

cond.false1069:                                   ; preds = %cond.true1064
  br i1 true, label %cond.true1070, label %cond.false1073

cond.true1070:                                    ; preds = %cond.false1069
  %364 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1071 = icmp slt i64 %364, -9223372036854775807
  br i1 %cmp1071, label %cond.true1076, label %cond.false1077

cond.false1073:                                   ; preds = %cond.false1069
  %365 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1074 = icmp slt i64 0, %365
  br i1 %cmp1074, label %cond.true1076, label %cond.false1077

cond.true1076:                                    ; preds = %cond.false1073, %cond.true1070
  br label %cond.end1080

cond.false1077:                                   ; preds = %cond.false1073, %cond.true1070
  %366 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1078 = sub nsw i64 0, %366
  %div1079 = sdiv i64 32767, %sub1078
  br label %cond.end1080

cond.end1080:                                     ; preds = %cond.false1077, %cond.true1076
  %cond1081 = phi i64 [ 0, %cond.true1076 ], [ %div1079, %cond.false1077 ]
  %367 = load i64, i64* %n, align 8, !tbaa !13
  %sub1082 = sub nsw i64 -1, %367
  %cmp1083 = icmp sle i64 %cond1081, %sub1082
  br i1 %cmp1083, label %cond.true1137, label %cond.false1143

cond.false1085:                                   ; preds = %cond.true1061
  br i1 true, label %cond.true1086, label %cond.false1087

cond.true1086:                                    ; preds = %cond.false1085
  br i1 false, label %land.lhs.true1088, label %cond.false1103

cond.false1087:                                   ; preds = %cond.false1085
  br i1 false, label %land.lhs.true1088, label %cond.false1103

land.lhs.true1088:                                ; preds = %cond.false1087, %cond.true1086
  %368 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1089 = icmp eq i64 %368, -1
  br i1 %cmp1089, label %cond.true1091, label %cond.false1103

cond.true1091:                                    ; preds = %land.lhs.true1088
  br i1 true, label %cond.true1092, label %cond.false1096

cond.true1092:                                    ; preds = %cond.true1091
  %369 = load i64, i64* %n, align 8, !tbaa !13
  %add1093 = add nsw i64 %369, -32768
  %cmp1094 = icmp slt i64 0, %add1093
  br i1 %cmp1094, label %cond.true1137, label %cond.false1143

cond.false1096:                                   ; preds = %cond.true1091
  %370 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1097 = icmp slt i64 0, %370
  br i1 %cmp1097, label %land.lhs.true1099, label %cond.false1143

land.lhs.true1099:                                ; preds = %cond.false1096
  %371 = load i64, i64* %n, align 8, !tbaa !13
  %sub1100 = sub nsw i64 %371, 1
  %cmp1101 = icmp slt i64 32767, %sub1100
  br i1 %cmp1101, label %cond.true1137, label %cond.false1143

cond.false1103:                                   ; preds = %land.lhs.true1088, %cond.false1087, %cond.true1086
  %372 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1104 = sdiv i64 -32768, %372
  %373 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1105 = icmp slt i64 %div1104, %373
  br i1 %cmp1105, label %cond.true1137, label %cond.false1143

cond.false1107:                                   ; preds = %cond.true1058
  %374 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1108 = icmp eq i64 %374, 0
  br i1 %cmp1108, label %cond.true1110, label %cond.false1111

cond.true1110:                                    ; preds = %cond.false1107
  br i1 false, label %cond.true1137, label %cond.false1143

cond.false1111:                                   ; preds = %cond.false1107
  %375 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1112 = icmp slt i64 %375, 0
  br i1 %cmp1112, label %cond.true1114, label %cond.false1133

cond.true1114:                                    ; preds = %cond.false1111
  br i1 true, label %cond.true1115, label %cond.false1116

cond.true1115:                                    ; preds = %cond.true1114
  br i1 false, label %land.lhs.true1117, label %cond.false1129

cond.false1116:                                   ; preds = %cond.true1114
  br i1 false, label %land.lhs.true1117, label %cond.false1129

land.lhs.true1117:                                ; preds = %cond.false1116, %cond.true1115
  %376 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1118 = icmp eq i64 %376, -1
  br i1 %cmp1118, label %cond.true1120, label %cond.false1129

cond.true1120:                                    ; preds = %land.lhs.true1117
  br i1 true, label %cond.true1121, label %cond.false1125

cond.true1121:                                    ; preds = %cond.true1120
  %377 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1122 = add nsw i64 %377, -32768
  %cmp1123 = icmp slt i64 0, %add1122
  br i1 %cmp1123, label %cond.true1137, label %cond.false1143

cond.false1125:                                   ; preds = %cond.true1120
  %378 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1126 = sub nsw i64 %378, 1
  %cmp1127 = icmp slt i64 32767, %sub1126
  br i1 %cmp1127, label %cond.true1137, label %cond.false1143

cond.false1129:                                   ; preds = %land.lhs.true1117, %cond.false1116, %cond.true1115
  %379 = load i64, i64* %n, align 8, !tbaa !13
  %div1130 = sdiv i64 -32768, %379
  %380 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1131 = icmp slt i64 %div1130, %380
  br i1 %cmp1131, label %cond.true1137, label %cond.false1143

cond.false1133:                                   ; preds = %cond.false1111
  %381 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1134 = sdiv i64 32767, %381
  %382 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1135 = icmp slt i64 %div1134, %382
  br i1 %cmp1135, label %cond.true1137, label %cond.false1143

cond.true1137:                                    ; preds = %cond.false1133, %cond.false1129, %cond.false1125, %cond.true1121, %cond.true1110, %cond.false1103, %land.lhs.true1099, %cond.true1092, %cond.end1080, %cond.true1065
  %383 = load i64, i64* %n, align 8, !tbaa !13
  %conv1138 = trunc i64 %383 to i32
  %384 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1139 = trunc i64 %384 to i32
  %mul1140 = mul i32 %conv1138, %conv1139
  %conv1141 = trunc i32 %mul1140 to i16
  %conv1142 = sext i16 %conv1141 to i64
  store i64 %conv1142, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1143:                                   ; preds = %cond.false1133, %cond.false1129, %cond.false1125, %cond.true1121, %cond.true1110, %cond.false1103, %land.lhs.true1099, %cond.false1096, %cond.true1092, %cond.end1080, %cond.true1065
  %385 = load i64, i64* %n, align 8, !tbaa !13
  %conv1144 = trunc i64 %385 to i32
  %386 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1145 = trunc i64 %386 to i32
  %mul1146 = mul i32 %conv1144, %conv1145
  %conv1147 = trunc i32 %mul1146 to i16
  %conv1148 = sext i16 %conv1147 to i64
  store i64 %conv1148, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false1149:                                   ; preds = %cond.true1057
  %387 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1150 = icmp slt i64 %387, 0
  br i1 %cmp1150, label %cond.true1152, label %cond.false1198

cond.true1152:                                    ; preds = %cond.false1149
  %388 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1153 = icmp slt i64 %388, 0
  br i1 %cmp1153, label %cond.true1155, label %cond.false1176

cond.true1155:                                    ; preds = %cond.true1152
  br i1 true, label %cond.true1156, label %cond.false1160

cond.true1156:                                    ; preds = %cond.true1155
  %389 = load i64, i64* %n, align 8, !tbaa !13
  %390 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1157 = sdiv i64 65535, %390
  %cmp1158 = icmp slt i64 %389, %div1157
  br i1 %cmp1158, label %cond.true1228, label %cond.false1234

cond.false1160:                                   ; preds = %cond.true1155
  br i1 true, label %cond.true1161, label %cond.false1164

cond.true1161:                                    ; preds = %cond.false1160
  %391 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1162 = icmp slt i64 %391, -9223372036854775807
  br i1 %cmp1162, label %cond.true1167, label %cond.false1168

cond.false1164:                                   ; preds = %cond.false1160
  %392 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1165 = icmp slt i64 0, %392
  br i1 %cmp1165, label %cond.true1167, label %cond.false1168

cond.true1167:                                    ; preds = %cond.false1164, %cond.true1161
  br label %cond.end1171

cond.false1168:                                   ; preds = %cond.false1164, %cond.true1161
  %393 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1169 = sub nsw i64 0, %393
  %div1170 = sdiv i64 65535, %sub1169
  br label %cond.end1171

cond.end1171:                                     ; preds = %cond.false1168, %cond.true1167
  %cond1172 = phi i64 [ 0, %cond.true1167 ], [ %div1170, %cond.false1168 ]
  %394 = load i64, i64* %n, align 8, !tbaa !13
  %sub1173 = sub nsw i64 -1, %394
  %cmp1174 = icmp sle i64 %cond1172, %sub1173
  br i1 %cmp1174, label %cond.true1228, label %cond.false1234

cond.false1176:                                   ; preds = %cond.true1152
  br i1 true, label %cond.true1177, label %cond.false1178

cond.true1177:                                    ; preds = %cond.false1176
  br i1 false, label %land.lhs.true1179, label %cond.false1194

cond.false1178:                                   ; preds = %cond.false1176
  br i1 false, label %land.lhs.true1179, label %cond.false1194

land.lhs.true1179:                                ; preds = %cond.false1178, %cond.true1177
  %395 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1180 = icmp eq i64 %395, -1
  br i1 %cmp1180, label %cond.true1182, label %cond.false1194

cond.true1182:                                    ; preds = %land.lhs.true1179
  br i1 true, label %cond.true1183, label %cond.false1187

cond.true1183:                                    ; preds = %cond.true1182
  %396 = load i64, i64* %n, align 8, !tbaa !13
  %add1184 = add nsw i64 %396, 0
  %cmp1185 = icmp slt i64 0, %add1184
  br i1 %cmp1185, label %cond.true1228, label %cond.false1234

cond.false1187:                                   ; preds = %cond.true1182
  %397 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1188 = icmp slt i64 0, %397
  br i1 %cmp1188, label %land.lhs.true1190, label %cond.false1234

land.lhs.true1190:                                ; preds = %cond.false1187
  %398 = load i64, i64* %n, align 8, !tbaa !13
  %sub1191 = sub nsw i64 %398, 1
  %cmp1192 = icmp slt i64 -1, %sub1191
  br i1 %cmp1192, label %cond.true1228, label %cond.false1234

cond.false1194:                                   ; preds = %land.lhs.true1179, %cond.false1178, %cond.true1177
  %399 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1195 = sdiv i64 0, %399
  %400 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1196 = icmp slt i64 %div1195, %400
  br i1 %cmp1196, label %cond.true1228, label %cond.false1234

cond.false1198:                                   ; preds = %cond.false1149
  %401 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1199 = icmp eq i64 %401, 0
  br i1 %cmp1199, label %cond.true1201, label %cond.false1202

cond.true1201:                                    ; preds = %cond.false1198
  br i1 false, label %cond.true1228, label %cond.false1234

cond.false1202:                                   ; preds = %cond.false1198
  %402 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1203 = icmp slt i64 %402, 0
  br i1 %cmp1203, label %cond.true1205, label %cond.false1224

cond.true1205:                                    ; preds = %cond.false1202
  br i1 true, label %cond.true1206, label %cond.false1207

cond.true1206:                                    ; preds = %cond.true1205
  br i1 false, label %land.lhs.true1208, label %cond.false1220

cond.false1207:                                   ; preds = %cond.true1205
  br i1 false, label %land.lhs.true1208, label %cond.false1220

land.lhs.true1208:                                ; preds = %cond.false1207, %cond.true1206
  %403 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1209 = icmp eq i64 %403, -1
  br i1 %cmp1209, label %cond.true1211, label %cond.false1220

cond.true1211:                                    ; preds = %land.lhs.true1208
  br i1 true, label %cond.true1212, label %cond.false1216

cond.true1212:                                    ; preds = %cond.true1211
  %404 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1213 = add nsw i64 %404, 0
  %cmp1214 = icmp slt i64 0, %add1213
  br i1 %cmp1214, label %cond.true1228, label %cond.false1234

cond.false1216:                                   ; preds = %cond.true1211
  %405 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1217 = sub nsw i64 %405, 1
  %cmp1218 = icmp slt i64 -1, %sub1217
  br i1 %cmp1218, label %cond.true1228, label %cond.false1234

cond.false1220:                                   ; preds = %land.lhs.true1208, %cond.false1207, %cond.true1206
  %406 = load i64, i64* %n, align 8, !tbaa !13
  %div1221 = sdiv i64 0, %406
  %407 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1222 = icmp slt i64 %div1221, %407
  br i1 %cmp1222, label %cond.true1228, label %cond.false1234

cond.false1224:                                   ; preds = %cond.false1202
  %408 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1225 = sdiv i64 65535, %408
  %409 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1226 = icmp slt i64 %div1225, %409
  br i1 %cmp1226, label %cond.true1228, label %cond.false1234

cond.true1228:                                    ; preds = %cond.false1224, %cond.false1220, %cond.false1216, %cond.true1212, %cond.true1201, %cond.false1194, %land.lhs.true1190, %cond.true1183, %cond.end1171, %cond.true1156
  %410 = load i64, i64* %n, align 8, !tbaa !13
  %conv1229 = trunc i64 %410 to i32
  %411 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1230 = trunc i64 %411 to i32
  %mul1231 = mul i32 %conv1229, %conv1230
  %conv1232 = trunc i32 %mul1231 to i16
  %conv1233 = zext i16 %conv1232 to i64
  store i64 %conv1233, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1234:                                   ; preds = %cond.false1224, %cond.false1220, %cond.false1216, %cond.true1212, %cond.true1201, %cond.false1194, %land.lhs.true1190, %cond.false1187, %cond.true1183, %cond.end1171, %cond.true1156
  %412 = load i64, i64* %n, align 8, !tbaa !13
  %conv1235 = trunc i64 %412 to i32
  %413 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1236 = trunc i64 %413 to i32
  %mul1237 = mul i32 %conv1235, %conv1236
  %conv1238 = trunc i32 %mul1237 to i16
  %conv1239 = zext i16 %conv1238 to i64
  store i64 %conv1239, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false1240:                                   ; preds = %cond.false1056
  br i1 false, label %cond.true1241, label %cond.false1420

cond.true1241:                                    ; preds = %cond.false1240
  br i1 true, label %cond.true1242, label %cond.false1331

cond.true1242:                                    ; preds = %cond.true1241
  %414 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1243 = icmp slt i64 %414, 0
  br i1 %cmp1243, label %cond.true1245, label %cond.false1291

cond.true1245:                                    ; preds = %cond.true1242
  %415 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1246 = icmp slt i64 %415, 0
  br i1 %cmp1246, label %cond.true1248, label %cond.false1269

cond.true1248:                                    ; preds = %cond.true1245
  br i1 true, label %cond.true1249, label %cond.false1253

cond.true1249:                                    ; preds = %cond.true1248
  %416 = load i64, i64* %n, align 8, !tbaa !13
  %417 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1250 = sdiv i64 2147483647, %417
  %cmp1251 = icmp slt i64 %416, %div1250
  br i1 %cmp1251, label %cond.true1321, label %cond.false1326

cond.false1253:                                   ; preds = %cond.true1248
  br i1 true, label %cond.true1254, label %cond.false1257

cond.true1254:                                    ; preds = %cond.false1253
  %418 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1255 = icmp slt i64 %418, -9223372036854775807
  br i1 %cmp1255, label %cond.true1260, label %cond.false1261

cond.false1257:                                   ; preds = %cond.false1253
  %419 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1258 = icmp slt i64 0, %419
  br i1 %cmp1258, label %cond.true1260, label %cond.false1261

cond.true1260:                                    ; preds = %cond.false1257, %cond.true1254
  br label %cond.end1264

cond.false1261:                                   ; preds = %cond.false1257, %cond.true1254
  %420 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1262 = sub nsw i64 0, %420
  %div1263 = sdiv i64 2147483647, %sub1262
  br label %cond.end1264

cond.end1264:                                     ; preds = %cond.false1261, %cond.true1260
  %cond1265 = phi i64 [ 0, %cond.true1260 ], [ %div1263, %cond.false1261 ]
  %421 = load i64, i64* %n, align 8, !tbaa !13
  %sub1266 = sub nsw i64 -1, %421
  %cmp1267 = icmp sle i64 %cond1265, %sub1266
  br i1 %cmp1267, label %cond.true1321, label %cond.false1326

cond.false1269:                                   ; preds = %cond.true1245
  br i1 true, label %cond.true1270, label %cond.false1271

cond.true1270:                                    ; preds = %cond.false1269
  br i1 false, label %land.lhs.true1272, label %cond.false1287

cond.false1271:                                   ; preds = %cond.false1269
  br i1 false, label %land.lhs.true1272, label %cond.false1287

land.lhs.true1272:                                ; preds = %cond.false1271, %cond.true1270
  %422 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1273 = icmp eq i64 %422, -1
  br i1 %cmp1273, label %cond.true1275, label %cond.false1287

cond.true1275:                                    ; preds = %land.lhs.true1272
  br i1 true, label %cond.true1276, label %cond.false1280

cond.true1276:                                    ; preds = %cond.true1275
  %423 = load i64, i64* %n, align 8, !tbaa !13
  %add1277 = add nsw i64 %423, -2147483648
  %cmp1278 = icmp slt i64 0, %add1277
  br i1 %cmp1278, label %cond.true1321, label %cond.false1326

cond.false1280:                                   ; preds = %cond.true1275
  %424 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1281 = icmp slt i64 0, %424
  br i1 %cmp1281, label %land.lhs.true1283, label %cond.false1326

land.lhs.true1283:                                ; preds = %cond.false1280
  %425 = load i64, i64* %n, align 8, !tbaa !13
  %sub1284 = sub nsw i64 %425, 1
  %cmp1285 = icmp slt i64 2147483647, %sub1284
  br i1 %cmp1285, label %cond.true1321, label %cond.false1326

cond.false1287:                                   ; preds = %land.lhs.true1272, %cond.false1271, %cond.true1270
  %426 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1288 = sdiv i64 -2147483648, %426
  %427 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1289 = icmp slt i64 %div1288, %427
  br i1 %cmp1289, label %cond.true1321, label %cond.false1326

cond.false1291:                                   ; preds = %cond.true1242
  %428 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1292 = icmp eq i64 %428, 0
  br i1 %cmp1292, label %cond.true1294, label %cond.false1295

cond.true1294:                                    ; preds = %cond.false1291
  br i1 false, label %cond.true1321, label %cond.false1326

cond.false1295:                                   ; preds = %cond.false1291
  %429 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1296 = icmp slt i64 %429, 0
  br i1 %cmp1296, label %cond.true1298, label %cond.false1317

cond.true1298:                                    ; preds = %cond.false1295
  br i1 true, label %cond.true1299, label %cond.false1300

cond.true1299:                                    ; preds = %cond.true1298
  br i1 false, label %land.lhs.true1301, label %cond.false1313

cond.false1300:                                   ; preds = %cond.true1298
  br i1 false, label %land.lhs.true1301, label %cond.false1313

land.lhs.true1301:                                ; preds = %cond.false1300, %cond.true1299
  %430 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1302 = icmp eq i64 %430, -1
  br i1 %cmp1302, label %cond.true1304, label %cond.false1313

cond.true1304:                                    ; preds = %land.lhs.true1301
  br i1 true, label %cond.true1305, label %cond.false1309

cond.true1305:                                    ; preds = %cond.true1304
  %431 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1306 = add nsw i64 %431, -2147483648
  %cmp1307 = icmp slt i64 0, %add1306
  br i1 %cmp1307, label %cond.true1321, label %cond.false1326

cond.false1309:                                   ; preds = %cond.true1304
  %432 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1310 = sub nsw i64 %432, 1
  %cmp1311 = icmp slt i64 2147483647, %sub1310
  br i1 %cmp1311, label %cond.true1321, label %cond.false1326

cond.false1313:                                   ; preds = %land.lhs.true1301, %cond.false1300, %cond.true1299
  %433 = load i64, i64* %n, align 8, !tbaa !13
  %div1314 = sdiv i64 -2147483648, %433
  %434 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1315 = icmp slt i64 %div1314, %434
  br i1 %cmp1315, label %cond.true1321, label %cond.false1326

cond.false1317:                                   ; preds = %cond.false1295
  %435 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1318 = sdiv i64 2147483647, %435
  %436 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1319 = icmp slt i64 %div1318, %436
  br i1 %cmp1319, label %cond.true1321, label %cond.false1326

cond.true1321:                                    ; preds = %cond.false1317, %cond.false1313, %cond.false1309, %cond.true1305, %cond.true1294, %cond.false1287, %land.lhs.true1283, %cond.true1276, %cond.end1264, %cond.true1249
  %437 = load i64, i64* %n, align 8, !tbaa !13
  %conv1322 = trunc i64 %437 to i32
  %438 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1323 = trunc i64 %438 to i32
  %mul1324 = mul i32 %conv1322, %conv1323
  %conv1325 = sext i32 %mul1324 to i64
  store i64 %conv1325, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1326:                                   ; preds = %cond.false1317, %cond.false1313, %cond.false1309, %cond.true1305, %cond.true1294, %cond.false1287, %land.lhs.true1283, %cond.false1280, %cond.true1276, %cond.end1264, %cond.true1249
  %439 = load i64, i64* %n, align 8, !tbaa !13
  %conv1327 = trunc i64 %439 to i32
  %440 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1328 = trunc i64 %440 to i32
  %mul1329 = mul i32 %conv1327, %conv1328
  %conv1330 = sext i32 %mul1329 to i64
  store i64 %conv1330, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false1331:                                   ; preds = %cond.true1241
  %441 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1332 = icmp slt i64 %441, 0
  br i1 %cmp1332, label %cond.true1334, label %cond.false1380

cond.true1334:                                    ; preds = %cond.false1331
  %442 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1335 = icmp slt i64 %442, 0
  br i1 %cmp1335, label %cond.true1337, label %cond.false1358

cond.true1337:                                    ; preds = %cond.true1334
  br i1 true, label %cond.true1338, label %cond.false1342

cond.true1338:                                    ; preds = %cond.true1337
  %443 = load i64, i64* %n, align 8, !tbaa !13
  %444 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1339 = sdiv i64 4294967295, %444
  %cmp1340 = icmp slt i64 %443, %div1339
  br i1 %cmp1340, label %cond.true1410, label %cond.false1415

cond.false1342:                                   ; preds = %cond.true1337
  br i1 true, label %cond.true1343, label %cond.false1346

cond.true1343:                                    ; preds = %cond.false1342
  %445 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1344 = icmp slt i64 %445, -9223372036854775807
  br i1 %cmp1344, label %cond.true1349, label %cond.false1350

cond.false1346:                                   ; preds = %cond.false1342
  %446 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1347 = icmp slt i64 0, %446
  br i1 %cmp1347, label %cond.true1349, label %cond.false1350

cond.true1349:                                    ; preds = %cond.false1346, %cond.true1343
  br label %cond.end1353

cond.false1350:                                   ; preds = %cond.false1346, %cond.true1343
  %447 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1351 = sub nsw i64 0, %447
  %div1352 = sdiv i64 4294967295, %sub1351
  br label %cond.end1353

cond.end1353:                                     ; preds = %cond.false1350, %cond.true1349
  %cond1354 = phi i64 [ 0, %cond.true1349 ], [ %div1352, %cond.false1350 ]
  %448 = load i64, i64* %n, align 8, !tbaa !13
  %sub1355 = sub nsw i64 -1, %448
  %cmp1356 = icmp sle i64 %cond1354, %sub1355
  br i1 %cmp1356, label %cond.true1410, label %cond.false1415

cond.false1358:                                   ; preds = %cond.true1334
  br i1 true, label %cond.true1359, label %cond.false1360

cond.true1359:                                    ; preds = %cond.false1358
  br i1 false, label %land.lhs.true1361, label %cond.false1376

cond.false1360:                                   ; preds = %cond.false1358
  br i1 false, label %land.lhs.true1361, label %cond.false1376

land.lhs.true1361:                                ; preds = %cond.false1360, %cond.true1359
  %449 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1362 = icmp eq i64 %449, -1
  br i1 %cmp1362, label %cond.true1364, label %cond.false1376

cond.true1364:                                    ; preds = %land.lhs.true1361
  br i1 true, label %cond.true1365, label %cond.false1369

cond.true1365:                                    ; preds = %cond.true1364
  %450 = load i64, i64* %n, align 8, !tbaa !13
  %add1366 = add nsw i64 %450, 0
  %cmp1367 = icmp slt i64 0, %add1366
  br i1 %cmp1367, label %cond.true1410, label %cond.false1415

cond.false1369:                                   ; preds = %cond.true1364
  %451 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1370 = icmp slt i64 0, %451
  br i1 %cmp1370, label %land.lhs.true1372, label %cond.false1415

land.lhs.true1372:                                ; preds = %cond.false1369
  %452 = load i64, i64* %n, align 8, !tbaa !13
  %sub1373 = sub nsw i64 %452, 1
  %cmp1374 = icmp slt i64 -1, %sub1373
  br i1 %cmp1374, label %cond.true1410, label %cond.false1415

cond.false1376:                                   ; preds = %land.lhs.true1361, %cond.false1360, %cond.true1359
  %453 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1377 = sdiv i64 0, %453
  %454 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1378 = icmp slt i64 %div1377, %454
  br i1 %cmp1378, label %cond.true1410, label %cond.false1415

cond.false1380:                                   ; preds = %cond.false1331
  %455 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1381 = icmp eq i64 %455, 0
  br i1 %cmp1381, label %cond.true1383, label %cond.false1384

cond.true1383:                                    ; preds = %cond.false1380
  br i1 false, label %cond.true1410, label %cond.false1415

cond.false1384:                                   ; preds = %cond.false1380
  %456 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1385 = icmp slt i64 %456, 0
  br i1 %cmp1385, label %cond.true1387, label %cond.false1406

cond.true1387:                                    ; preds = %cond.false1384
  br i1 true, label %cond.true1388, label %cond.false1389

cond.true1388:                                    ; preds = %cond.true1387
  br i1 false, label %land.lhs.true1390, label %cond.false1402

cond.false1389:                                   ; preds = %cond.true1387
  br i1 false, label %land.lhs.true1390, label %cond.false1402

land.lhs.true1390:                                ; preds = %cond.false1389, %cond.true1388
  %457 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1391 = icmp eq i64 %457, -1
  br i1 %cmp1391, label %cond.true1393, label %cond.false1402

cond.true1393:                                    ; preds = %land.lhs.true1390
  br i1 true, label %cond.true1394, label %cond.false1398

cond.true1394:                                    ; preds = %cond.true1393
  %458 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1395 = add nsw i64 %458, 0
  %cmp1396 = icmp slt i64 0, %add1395
  br i1 %cmp1396, label %cond.true1410, label %cond.false1415

cond.false1398:                                   ; preds = %cond.true1393
  %459 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1399 = sub nsw i64 %459, 1
  %cmp1400 = icmp slt i64 -1, %sub1399
  br i1 %cmp1400, label %cond.true1410, label %cond.false1415

cond.false1402:                                   ; preds = %land.lhs.true1390, %cond.false1389, %cond.true1388
  %460 = load i64, i64* %n, align 8, !tbaa !13
  %div1403 = sdiv i64 0, %460
  %461 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1404 = icmp slt i64 %div1403, %461
  br i1 %cmp1404, label %cond.true1410, label %cond.false1415

cond.false1406:                                   ; preds = %cond.false1384
  %462 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1407 = sdiv i64 4294967295, %462
  %463 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1408 = icmp slt i64 %div1407, %463
  br i1 %cmp1408, label %cond.true1410, label %cond.false1415

cond.true1410:                                    ; preds = %cond.false1406, %cond.false1402, %cond.false1398, %cond.true1394, %cond.true1383, %cond.false1376, %land.lhs.true1372, %cond.true1365, %cond.end1353, %cond.true1338
  %464 = load i64, i64* %n, align 8, !tbaa !13
  %conv1411 = trunc i64 %464 to i32
  %465 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1412 = trunc i64 %465 to i32
  %mul1413 = mul i32 %conv1411, %conv1412
  %conv1414 = zext i32 %mul1413 to i64
  store i64 %conv1414, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1415:                                   ; preds = %cond.false1406, %cond.false1402, %cond.false1398, %cond.true1394, %cond.true1383, %cond.false1376, %land.lhs.true1372, %cond.false1369, %cond.true1365, %cond.end1353, %cond.true1338
  %466 = load i64, i64* %n, align 8, !tbaa !13
  %conv1416 = trunc i64 %466 to i32
  %467 = load i64, i64* %s.addr, align 8, !tbaa !13
  %conv1417 = trunc i64 %467 to i32
  %mul1418 = mul i32 %conv1416, %conv1417
  %conv1419 = zext i32 %mul1418 to i64
  store i64 %conv1419, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false1420:                                   ; preds = %cond.false1240
  br i1 true, label %cond.true1421, label %cond.false1582

cond.true1421:                                    ; preds = %cond.false1420
  br i1 true, label %cond.true1422, label %cond.false1499

cond.true1422:                                    ; preds = %cond.true1421
  %468 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1423 = icmp slt i64 %468, 0
  br i1 %cmp1423, label %cond.true1425, label %cond.false1468

cond.true1425:                                    ; preds = %cond.true1422
  %469 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1426 = icmp slt i64 %469, 0
  br i1 %cmp1426, label %cond.true1428, label %cond.false1449

cond.true1428:                                    ; preds = %cond.true1425
  br i1 true, label %cond.true1429, label %cond.false1433

cond.true1429:                                    ; preds = %cond.true1428
  %470 = load i64, i64* %n, align 8, !tbaa !13
  %471 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1430 = sdiv i64 9223372036854775807, %471
  %cmp1431 = icmp slt i64 %470, %div1430
  br i1 %cmp1431, label %cond.true1495, label %cond.false1497

cond.false1433:                                   ; preds = %cond.true1428
  br i1 true, label %cond.true1434, label %cond.false1437

cond.true1434:                                    ; preds = %cond.false1433
  %472 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1435 = icmp slt i64 %472, -9223372036854775807
  br i1 %cmp1435, label %cond.true1440, label %cond.false1441

cond.false1437:                                   ; preds = %cond.false1433
  %473 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1438 = icmp slt i64 0, %473
  br i1 %cmp1438, label %cond.true1440, label %cond.false1441

cond.true1440:                                    ; preds = %cond.false1437, %cond.true1434
  br label %cond.end1444

cond.false1441:                                   ; preds = %cond.false1437, %cond.true1434
  %474 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1442 = sub nsw i64 0, %474
  %div1443 = sdiv i64 9223372036854775807, %sub1442
  br label %cond.end1444

cond.end1444:                                     ; preds = %cond.false1441, %cond.true1440
  %cond1445 = phi i64 [ 0, %cond.true1440 ], [ %div1443, %cond.false1441 ]
  %475 = load i64, i64* %n, align 8, !tbaa !13
  %sub1446 = sub nsw i64 -1, %475
  %cmp1447 = icmp sle i64 %cond1445, %sub1446
  br i1 %cmp1447, label %cond.true1495, label %cond.false1497

cond.false1449:                                   ; preds = %cond.true1425
  %476 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1450 = icmp eq i64 %476, -1
  br i1 %cmp1450, label %cond.true1452, label %cond.false1464

cond.true1452:                                    ; preds = %cond.false1449
  br i1 true, label %cond.true1453, label %cond.false1457

cond.true1453:                                    ; preds = %cond.true1452
  %477 = load i64, i64* %n, align 8, !tbaa !13
  %add1454 = add nsw i64 %477, -9223372036854775808
  %cmp1455 = icmp slt i64 0, %add1454
  br i1 %cmp1455, label %cond.true1495, label %cond.false1497

cond.false1457:                                   ; preds = %cond.true1452
  %478 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1458 = icmp slt i64 0, %478
  br i1 %cmp1458, label %land.lhs.true1460, label %cond.false1497

land.lhs.true1460:                                ; preds = %cond.false1457
  %479 = load i64, i64* %n, align 8, !tbaa !13
  %sub1461 = sub nsw i64 %479, 1
  %cmp1462 = icmp slt i64 9223372036854775807, %sub1461
  br i1 %cmp1462, label %cond.true1495, label %cond.false1497

cond.false1464:                                   ; preds = %cond.false1449
  %480 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1465 = sdiv i64 -9223372036854775808, %480
  %481 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1466 = icmp slt i64 %div1465, %481
  br i1 %cmp1466, label %cond.true1495, label %cond.false1497

cond.false1468:                                   ; preds = %cond.true1422
  %482 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1469 = icmp eq i64 %482, 0
  br i1 %cmp1469, label %cond.true1471, label %cond.false1472

cond.true1471:                                    ; preds = %cond.false1468
  br i1 false, label %cond.true1495, label %cond.false1497

cond.false1472:                                   ; preds = %cond.false1468
  %483 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1473 = icmp slt i64 %483, 0
  br i1 %cmp1473, label %cond.true1475, label %cond.false1491

cond.true1475:                                    ; preds = %cond.false1472
  %484 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1476 = icmp eq i64 %484, -1
  br i1 %cmp1476, label %cond.true1478, label %cond.false1487

cond.true1478:                                    ; preds = %cond.true1475
  br i1 true, label %cond.true1479, label %cond.false1483

cond.true1479:                                    ; preds = %cond.true1478
  %485 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1480 = add nsw i64 %485, -9223372036854775808
  %cmp1481 = icmp slt i64 0, %add1480
  br i1 %cmp1481, label %cond.true1495, label %cond.false1497

cond.false1483:                                   ; preds = %cond.true1478
  %486 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1484 = sub nsw i64 %486, 1
  %cmp1485 = icmp slt i64 9223372036854775807, %sub1484
  br i1 %cmp1485, label %cond.true1495, label %cond.false1497

cond.false1487:                                   ; preds = %cond.true1475
  %487 = load i64, i64* %n, align 8, !tbaa !13
  %div1488 = sdiv i64 -9223372036854775808, %487
  %488 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1489 = icmp slt i64 %div1488, %488
  br i1 %cmp1489, label %cond.true1495, label %cond.false1497

cond.false1491:                                   ; preds = %cond.false1472
  %489 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1492 = sdiv i64 9223372036854775807, %489
  %490 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1493 = icmp slt i64 %div1492, %490
  br i1 %cmp1493, label %cond.true1495, label %cond.false1497

cond.true1495:                                    ; preds = %cond.false1491, %cond.false1487, %cond.false1483, %cond.true1479, %cond.true1471, %cond.false1464, %land.lhs.true1460, %cond.true1453, %cond.end1444, %cond.true1429
  %491 = load i64, i64* %n, align 8, !tbaa !13
  %492 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul1496 = mul i64 %491, %492
  store i64 %mul1496, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1497:                                   ; preds = %cond.false1491, %cond.false1487, %cond.false1483, %cond.true1479, %cond.true1471, %cond.false1464, %land.lhs.true1460, %cond.false1457, %cond.true1453, %cond.end1444, %cond.true1429
  %493 = load i64, i64* %n, align 8, !tbaa !13
  %494 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul1498 = mul i64 %493, %494
  store i64 %mul1498, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false1499:                                   ; preds = %cond.true1421
  %495 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1500 = icmp slt i64 %495, 0
  br i1 %cmp1500, label %cond.true1502, label %cond.false1548

cond.true1502:                                    ; preds = %cond.false1499
  %496 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1503 = icmp slt i64 %496, 0
  br i1 %cmp1503, label %cond.true1505, label %cond.false1526

cond.true1505:                                    ; preds = %cond.true1502
  br i1 false, label %cond.true1506, label %cond.false1510

cond.true1506:                                    ; preds = %cond.true1505
  %497 = load i64, i64* %n, align 8, !tbaa !13
  %498 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1507 = udiv i64 -1, %498
  %cmp1508 = icmp ult i64 %497, %div1507
  br i1 %cmp1508, label %cond.true1578, label %cond.false1580

cond.false1510:                                   ; preds = %cond.true1505
  br i1 true, label %cond.true1511, label %cond.false1514

cond.true1511:                                    ; preds = %cond.false1510
  %499 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1512 = icmp slt i64 %499, -9223372036854775807
  br i1 %cmp1512, label %cond.true1517, label %cond.false1518

cond.false1514:                                   ; preds = %cond.false1510
  %500 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1515 = icmp slt i64 0, %500
  br i1 %cmp1515, label %cond.true1517, label %cond.false1518

cond.true1517:                                    ; preds = %cond.false1514, %cond.true1511
  br label %cond.end1521

cond.false1518:                                   ; preds = %cond.false1514, %cond.true1511
  %501 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1519 = sub nsw i64 0, %501
  %div1520 = udiv i64 -1, %sub1519
  br label %cond.end1521

cond.end1521:                                     ; preds = %cond.false1518, %cond.true1517
  %cond1522 = phi i64 [ 1, %cond.true1517 ], [ %div1520, %cond.false1518 ]
  %502 = load i64, i64* %n, align 8, !tbaa !13
  %sub1523 = sub nsw i64 -1, %502
  %cmp1524 = icmp ule i64 %cond1522, %sub1523
  br i1 %cmp1524, label %cond.true1578, label %cond.false1580

cond.false1526:                                   ; preds = %cond.true1502
  br i1 true, label %cond.true1527, label %cond.false1528

cond.true1527:                                    ; preds = %cond.false1526
  br i1 false, label %land.lhs.true1529, label %cond.false1544

cond.false1528:                                   ; preds = %cond.false1526
  br i1 false, label %land.lhs.true1529, label %cond.false1544

land.lhs.true1529:                                ; preds = %cond.false1528, %cond.true1527
  %503 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1530 = icmp eq i64 %503, -1
  br i1 %cmp1530, label %cond.true1532, label %cond.false1544

cond.true1532:                                    ; preds = %land.lhs.true1529
  br i1 true, label %cond.true1533, label %cond.false1537

cond.true1533:                                    ; preds = %cond.true1532
  %504 = load i64, i64* %n, align 8, !tbaa !13
  %add1534 = add nsw i64 %504, 0
  %cmp1535 = icmp slt i64 0, %add1534
  br i1 %cmp1535, label %cond.true1578, label %cond.false1580

cond.false1537:                                   ; preds = %cond.true1532
  %505 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1538 = icmp slt i64 0, %505
  br i1 %cmp1538, label %land.lhs.true1540, label %cond.false1580

land.lhs.true1540:                                ; preds = %cond.false1537
  %506 = load i64, i64* %n, align 8, !tbaa !13
  %sub1541 = sub nsw i64 %506, 1
  %cmp1542 = icmp slt i64 -1, %sub1541
  br i1 %cmp1542, label %cond.true1578, label %cond.false1580

cond.false1544:                                   ; preds = %land.lhs.true1529, %cond.false1528, %cond.true1527
  %507 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1545 = sdiv i64 0, %507
  %508 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1546 = icmp slt i64 %div1545, %508
  br i1 %cmp1546, label %cond.true1578, label %cond.false1580

cond.false1548:                                   ; preds = %cond.false1499
  %509 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1549 = icmp eq i64 %509, 0
  br i1 %cmp1549, label %cond.true1551, label %cond.false1552

cond.true1551:                                    ; preds = %cond.false1548
  br i1 false, label %cond.true1578, label %cond.false1580

cond.false1552:                                   ; preds = %cond.false1548
  %510 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1553 = icmp slt i64 %510, 0
  br i1 %cmp1553, label %cond.true1555, label %cond.false1574

cond.true1555:                                    ; preds = %cond.false1552
  br i1 true, label %cond.true1556, label %cond.false1557

cond.true1556:                                    ; preds = %cond.true1555
  br i1 false, label %land.lhs.true1558, label %cond.false1570

cond.false1557:                                   ; preds = %cond.true1555
  br i1 false, label %land.lhs.true1558, label %cond.false1570

land.lhs.true1558:                                ; preds = %cond.false1557, %cond.true1556
  %511 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1559 = icmp eq i64 %511, -1
  br i1 %cmp1559, label %cond.true1561, label %cond.false1570

cond.true1561:                                    ; preds = %land.lhs.true1558
  br i1 true, label %cond.true1562, label %cond.false1566

cond.true1562:                                    ; preds = %cond.true1561
  %512 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1563 = add nsw i64 %512, 0
  %cmp1564 = icmp slt i64 0, %add1563
  br i1 %cmp1564, label %cond.true1578, label %cond.false1580

cond.false1566:                                   ; preds = %cond.true1561
  %513 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1567 = sub nsw i64 %513, 1
  %cmp1568 = icmp slt i64 -1, %sub1567
  br i1 %cmp1568, label %cond.true1578, label %cond.false1580

cond.false1570:                                   ; preds = %land.lhs.true1558, %cond.false1557, %cond.true1556
  %514 = load i64, i64* %n, align 8, !tbaa !13
  %div1571 = sdiv i64 0, %514
  %515 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1572 = icmp slt i64 %div1571, %515
  br i1 %cmp1572, label %cond.true1578, label %cond.false1580

cond.false1574:                                   ; preds = %cond.false1552
  %516 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1575 = udiv i64 -1, %516
  %517 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1576 = icmp ult i64 %div1575, %517
  br i1 %cmp1576, label %cond.true1578, label %cond.false1580

cond.true1578:                                    ; preds = %cond.false1574, %cond.false1570, %cond.false1566, %cond.true1562, %cond.true1551, %cond.false1544, %land.lhs.true1540, %cond.true1533, %cond.end1521, %cond.true1506
  %518 = load i64, i64* %n, align 8, !tbaa !13
  %519 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul1579 = mul i64 %518, %519
  store i64 %mul1579, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1580:                                   ; preds = %cond.false1574, %cond.false1570, %cond.false1566, %cond.true1562, %cond.true1551, %cond.false1544, %land.lhs.true1540, %cond.false1537, %cond.true1533, %cond.end1521, %cond.true1506
  %520 = load i64, i64* %n, align 8, !tbaa !13
  %521 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul1581 = mul i64 %520, %521
  store i64 %mul1581, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false1582:                                   ; preds = %cond.false1420
  br i1 true, label %cond.true1583, label %cond.false1660

cond.true1583:                                    ; preds = %cond.false1582
  %522 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1584 = icmp slt i64 %522, 0
  br i1 %cmp1584, label %cond.true1586, label %cond.false1629

cond.true1586:                                    ; preds = %cond.true1583
  %523 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1587 = icmp slt i64 %523, 0
  br i1 %cmp1587, label %cond.true1589, label %cond.false1610

cond.true1589:                                    ; preds = %cond.true1586
  br i1 true, label %cond.true1590, label %cond.false1594

cond.true1590:                                    ; preds = %cond.true1589
  %524 = load i64, i64* %n, align 8, !tbaa !13
  %525 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1591 = sdiv i64 9223372036854775807, %525
  %cmp1592 = icmp slt i64 %524, %div1591
  br i1 %cmp1592, label %cond.true1656, label %cond.false1658

cond.false1594:                                   ; preds = %cond.true1589
  br i1 true, label %cond.true1595, label %cond.false1598

cond.true1595:                                    ; preds = %cond.false1594
  %526 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1596 = icmp slt i64 %526, -9223372036854775807
  br i1 %cmp1596, label %cond.true1601, label %cond.false1602

cond.false1598:                                   ; preds = %cond.false1594
  %527 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1599 = icmp slt i64 0, %527
  br i1 %cmp1599, label %cond.true1601, label %cond.false1602

cond.true1601:                                    ; preds = %cond.false1598, %cond.true1595
  br label %cond.end1605

cond.false1602:                                   ; preds = %cond.false1598, %cond.true1595
  %528 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1603 = sub nsw i64 0, %528
  %div1604 = sdiv i64 9223372036854775807, %sub1603
  br label %cond.end1605

cond.end1605:                                     ; preds = %cond.false1602, %cond.true1601
  %cond1606 = phi i64 [ 0, %cond.true1601 ], [ %div1604, %cond.false1602 ]
  %529 = load i64, i64* %n, align 8, !tbaa !13
  %sub1607 = sub nsw i64 -1, %529
  %cmp1608 = icmp sle i64 %cond1606, %sub1607
  br i1 %cmp1608, label %cond.true1656, label %cond.false1658

cond.false1610:                                   ; preds = %cond.true1586
  %530 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1611 = icmp eq i64 %530, -1
  br i1 %cmp1611, label %cond.true1613, label %cond.false1625

cond.true1613:                                    ; preds = %cond.false1610
  br i1 true, label %cond.true1614, label %cond.false1618

cond.true1614:                                    ; preds = %cond.true1613
  %531 = load i64, i64* %n, align 8, !tbaa !13
  %add1615 = add nsw i64 %531, -9223372036854775808
  %cmp1616 = icmp slt i64 0, %add1615
  br i1 %cmp1616, label %cond.true1656, label %cond.false1658

cond.false1618:                                   ; preds = %cond.true1613
  %532 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1619 = icmp slt i64 0, %532
  br i1 %cmp1619, label %land.lhs.true1621, label %cond.false1658

land.lhs.true1621:                                ; preds = %cond.false1618
  %533 = load i64, i64* %n, align 8, !tbaa !13
  %sub1622 = sub nsw i64 %533, 1
  %cmp1623 = icmp slt i64 9223372036854775807, %sub1622
  br i1 %cmp1623, label %cond.true1656, label %cond.false1658

cond.false1625:                                   ; preds = %cond.false1610
  %534 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1626 = sdiv i64 -9223372036854775808, %534
  %535 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1627 = icmp slt i64 %div1626, %535
  br i1 %cmp1627, label %cond.true1656, label %cond.false1658

cond.false1629:                                   ; preds = %cond.true1583
  %536 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1630 = icmp eq i64 %536, 0
  br i1 %cmp1630, label %cond.true1632, label %cond.false1633

cond.true1632:                                    ; preds = %cond.false1629
  br i1 false, label %cond.true1656, label %cond.false1658

cond.false1633:                                   ; preds = %cond.false1629
  %537 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1634 = icmp slt i64 %537, 0
  br i1 %cmp1634, label %cond.true1636, label %cond.false1652

cond.true1636:                                    ; preds = %cond.false1633
  %538 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1637 = icmp eq i64 %538, -1
  br i1 %cmp1637, label %cond.true1639, label %cond.false1648

cond.true1639:                                    ; preds = %cond.true1636
  br i1 true, label %cond.true1640, label %cond.false1644

cond.true1640:                                    ; preds = %cond.true1639
  %539 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1641 = add nsw i64 %539, -9223372036854775808
  %cmp1642 = icmp slt i64 0, %add1641
  br i1 %cmp1642, label %cond.true1656, label %cond.false1658

cond.false1644:                                   ; preds = %cond.true1639
  %540 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1645 = sub nsw i64 %540, 1
  %cmp1646 = icmp slt i64 9223372036854775807, %sub1645
  br i1 %cmp1646, label %cond.true1656, label %cond.false1658

cond.false1648:                                   ; preds = %cond.true1636
  %541 = load i64, i64* %n, align 8, !tbaa !13
  %div1649 = sdiv i64 -9223372036854775808, %541
  %542 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1650 = icmp slt i64 %div1649, %542
  br i1 %cmp1650, label %cond.true1656, label %cond.false1658

cond.false1652:                                   ; preds = %cond.false1633
  %543 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1653 = sdiv i64 9223372036854775807, %543
  %544 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1654 = icmp slt i64 %div1653, %544
  br i1 %cmp1654, label %cond.true1656, label %cond.false1658

cond.true1656:                                    ; preds = %cond.false1652, %cond.false1648, %cond.false1644, %cond.true1640, %cond.true1632, %cond.false1625, %land.lhs.true1621, %cond.true1614, %cond.end1605, %cond.true1590
  %545 = load i64, i64* %n, align 8, !tbaa !13
  %546 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul1657 = mul i64 %545, %546
  store i64 %mul1657, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1658:                                   ; preds = %cond.false1652, %cond.false1648, %cond.false1644, %cond.true1640, %cond.true1632, %cond.false1625, %land.lhs.true1621, %cond.false1618, %cond.true1614, %cond.end1605, %cond.true1590
  %547 = load i64, i64* %n, align 8, !tbaa !13
  %548 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul1659 = mul i64 %547, %548
  store i64 %mul1659, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

cond.false1660:                                   ; preds = %cond.false1582
  %549 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1661 = icmp slt i64 %549, 0
  br i1 %cmp1661, label %cond.true1663, label %cond.false1709

cond.true1663:                                    ; preds = %cond.false1660
  %550 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1664 = icmp slt i64 %550, 0
  br i1 %cmp1664, label %cond.true1666, label %cond.false1687

cond.true1666:                                    ; preds = %cond.true1663
  br i1 false, label %cond.true1667, label %cond.false1671

cond.true1667:                                    ; preds = %cond.true1666
  %551 = load i64, i64* %n, align 8, !tbaa !13
  %552 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1668 = udiv i64 -1, %552
  %cmp1669 = icmp ult i64 %551, %div1668
  br i1 %cmp1669, label %cond.true1739, label %cond.false1741

cond.false1671:                                   ; preds = %cond.true1666
  br i1 true, label %cond.true1672, label %cond.false1675

cond.true1672:                                    ; preds = %cond.false1671
  %553 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1673 = icmp slt i64 %553, -9223372036854775807
  br i1 %cmp1673, label %cond.true1678, label %cond.false1679

cond.false1675:                                   ; preds = %cond.false1671
  %554 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1676 = icmp slt i64 0, %554
  br i1 %cmp1676, label %cond.true1678, label %cond.false1679

cond.true1678:                                    ; preds = %cond.false1675, %cond.true1672
  br label %cond.end1682

cond.false1679:                                   ; preds = %cond.false1675, %cond.true1672
  %555 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1680 = sub nsw i64 0, %555
  %div1681 = udiv i64 -1, %sub1680
  br label %cond.end1682

cond.end1682:                                     ; preds = %cond.false1679, %cond.true1678
  %cond1683 = phi i64 [ 1, %cond.true1678 ], [ %div1681, %cond.false1679 ]
  %556 = load i64, i64* %n, align 8, !tbaa !13
  %sub1684 = sub nsw i64 -1, %556
  %cmp1685 = icmp ule i64 %cond1683, %sub1684
  br i1 %cmp1685, label %cond.true1739, label %cond.false1741

cond.false1687:                                   ; preds = %cond.true1663
  br i1 true, label %cond.true1688, label %cond.false1689

cond.true1688:                                    ; preds = %cond.false1687
  br i1 false, label %land.lhs.true1690, label %cond.false1705

cond.false1689:                                   ; preds = %cond.false1687
  br i1 false, label %land.lhs.true1690, label %cond.false1705

land.lhs.true1690:                                ; preds = %cond.false1689, %cond.true1688
  %557 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1691 = icmp eq i64 %557, -1
  br i1 %cmp1691, label %cond.true1693, label %cond.false1705

cond.true1693:                                    ; preds = %land.lhs.true1690
  br i1 true, label %cond.true1694, label %cond.false1698

cond.true1694:                                    ; preds = %cond.true1693
  %558 = load i64, i64* %n, align 8, !tbaa !13
  %add1695 = add nsw i64 %558, 0
  %cmp1696 = icmp slt i64 0, %add1695
  br i1 %cmp1696, label %cond.true1739, label %cond.false1741

cond.false1698:                                   ; preds = %cond.true1693
  %559 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1699 = icmp slt i64 0, %559
  br i1 %cmp1699, label %land.lhs.true1701, label %cond.false1741

land.lhs.true1701:                                ; preds = %cond.false1698
  %560 = load i64, i64* %n, align 8, !tbaa !13
  %sub1702 = sub nsw i64 %560, 1
  %cmp1703 = icmp slt i64 -1, %sub1702
  br i1 %cmp1703, label %cond.true1739, label %cond.false1741

cond.false1705:                                   ; preds = %land.lhs.true1690, %cond.false1689, %cond.true1688
  %561 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1706 = sdiv i64 0, %561
  %562 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1707 = icmp slt i64 %div1706, %562
  br i1 %cmp1707, label %cond.true1739, label %cond.false1741

cond.false1709:                                   ; preds = %cond.false1660
  %563 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1710 = icmp eq i64 %563, 0
  br i1 %cmp1710, label %cond.true1712, label %cond.false1713

cond.true1712:                                    ; preds = %cond.false1709
  br i1 false, label %cond.true1739, label %cond.false1741

cond.false1713:                                   ; preds = %cond.false1709
  %564 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1714 = icmp slt i64 %564, 0
  br i1 %cmp1714, label %cond.true1716, label %cond.false1735

cond.true1716:                                    ; preds = %cond.false1713
  br i1 true, label %cond.true1717, label %cond.false1718

cond.true1717:                                    ; preds = %cond.true1716
  br i1 false, label %land.lhs.true1719, label %cond.false1731

cond.false1718:                                   ; preds = %cond.true1716
  br i1 false, label %land.lhs.true1719, label %cond.false1731

land.lhs.true1719:                                ; preds = %cond.false1718, %cond.true1717
  %565 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1720 = icmp eq i64 %565, -1
  br i1 %cmp1720, label %cond.true1722, label %cond.false1731

cond.true1722:                                    ; preds = %land.lhs.true1719
  br i1 true, label %cond.true1723, label %cond.false1727

cond.true1723:                                    ; preds = %cond.true1722
  %566 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add1724 = add nsw i64 %566, 0
  %cmp1725 = icmp slt i64 0, %add1724
  br i1 %cmp1725, label %cond.true1739, label %cond.false1741

cond.false1727:                                   ; preds = %cond.true1722
  %567 = load i64, i64* %s.addr, align 8, !tbaa !13
  %sub1728 = sub nsw i64 %567, 1
  %cmp1729 = icmp slt i64 -1, %sub1728
  br i1 %cmp1729, label %cond.true1739, label %cond.false1741

cond.false1731:                                   ; preds = %land.lhs.true1719, %cond.false1718, %cond.true1717
  %568 = load i64, i64* %n, align 8, !tbaa !13
  %div1732 = sdiv i64 0, %568
  %569 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1733 = icmp slt i64 %div1732, %569
  br i1 %cmp1733, label %cond.true1739, label %cond.false1741

cond.false1735:                                   ; preds = %cond.false1713
  %570 = load i64, i64* %s.addr, align 8, !tbaa !13
  %div1736 = udiv i64 -1, %570
  %571 = load i64, i64* %n, align 8, !tbaa !13
  %cmp1737 = icmp ult i64 %div1736, %571
  br i1 %cmp1737, label %cond.true1739, label %cond.false1741

cond.true1739:                                    ; preds = %cond.false1735, %cond.false1731, %cond.false1727, %cond.true1723, %cond.true1712, %cond.false1705, %land.lhs.true1701, %cond.true1694, %cond.end1682, %cond.true1667
  %572 = load i64, i64* %n, align 8, !tbaa !13
  %573 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul1740 = mul i64 %572, %573
  store i64 %mul1740, i64* %nbytes, align 8, !tbaa !13
  br i1 true, label %if.then1743, label %if.end1744

cond.false1741:                                   ; preds = %cond.false1735, %cond.false1731, %cond.false1727, %cond.true1723, %cond.true1712, %cond.false1705, %land.lhs.true1701, %cond.false1698, %cond.true1694, %cond.end1682, %cond.true1667
  %574 = load i64, i64* %n, align 8, !tbaa !13
  %575 = load i64, i64* %s.addr, align 8, !tbaa !13
  %mul1742 = mul i64 %574, %575
  store i64 %mul1742, i64* %nbytes, align 8, !tbaa !13
  br i1 false, label %if.then1743, label %if.end1744

if.then1743:                                      ; preds = %cond.false1741, %cond.true1739, %cond.false1658, %cond.true1656, %cond.false1580, %cond.true1578, %cond.false1497, %cond.true1495, %cond.false1415, %cond.true1410, %cond.false1326, %cond.true1321, %cond.false1234, %cond.true1228, %cond.false1143, %cond.true1137, %cond.false1050, %cond.true1044, %cond.false959, %cond.true953, %land.lhs.true869, %land.lhs.true865
  call void @xalloc_die() #23
  unreachable

if.end1744:                                       ; preds = %cond.false1741, %cond.true1739, %cond.false1658, %cond.true1656, %cond.false1580, %cond.true1578, %cond.false1497, %cond.true1495, %cond.false1415, %cond.true1410, %cond.false1326, %cond.true1321, %cond.false1234, %cond.true1228, %cond.false1143, %cond.true1137, %cond.false1050, %cond.true1044, %cond.false959, %cond.true953, %if.end861
  %576 = load i8*, i8** %pa.addr, align 8, !tbaa !6
  %577 = load i64, i64* %nbytes, align 8, !tbaa !13
  %call = call i8* @xrealloc(i8* %576, i64 %577) #27
  store i8* %call, i8** %pa.addr, align 8, !tbaa !6
  %578 = load i64, i64* %n, align 8, !tbaa !13
  %579 = load i64*, i64** %pn.addr, align 8, !tbaa !6
  store i64 %578, i64* %579, align 8, !tbaa !13
  %580 = load i8*, i8** %pa.addr, align 8, !tbaa !6
  %581 = bitcast i64* %adjusted_nbytes to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %581) #13
  %582 = bitcast i64* %nbytes to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %582) #13
  %583 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %583) #13
  %584 = bitcast i64* %n0 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %584) #13
  ret i8* %580
}

; Function Attrs: nounwind readnone speculatable
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #12

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 %s) #16 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias nonnull i8* @xcalloc(i64 %0, i64 1) #25
  ret i8* %call
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 %n, i64 %s) #18 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %n.addr, align 8, !tbaa !13
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias i8* @calloc(i64 %0, i64 %1) #13
  %call1 = call i8* @nonnull(i8* %call) #21
  ret i8* %call1
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #6

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 %s) #16 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias nonnull i8* @xicalloc(i64 %0, i64 1) #25
  ret i8* %call
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 %n, i64 %s) #18 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %n.addr, align 8, !tbaa !13
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias i8* @icalloc(i64 %0, i64 %1)
  %call1 = call i8* @nonnull(i8* %call) #21
  ret i8* %call1
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* %p, i64 %s) #17 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias nonnull i8* @xmalloc(i64 %0) #24
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %2 = load i64, i64* %s.addr, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %call, i8* align 1 %1, i64 %2, i1 false)
  ret i8* %call
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* %p, i64 %s) #17 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias nonnull i8* @ximalloc(i64 %0) #24
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %2 = load i64, i64* %s.addr, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %call, i8* align 1 %1, i64 %2, i1 false)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* %p, i64 %s) #7 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %add = add nsw i64 %1, 1
  %call = call noalias nonnull i8* @ximalloc(i64 %add) #24
  store i8* %call, i8** %result, align 8, !tbaa !6
  %2 = load i8*, i8** %result, align 8, !tbaa !6
  %3 = load i64, i64* %s.addr, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3
  store i8 0, i8* %arrayidx, align 1, !tbaa !15
  %4 = load i8*, i8** %result, align 8, !tbaa !6
  %5 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %6 = load i64, i64* %s.addr, align 8, !tbaa !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 %6, i1 false)
  %7 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #13
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* %string) #7 {
entry:
  %string.addr = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %string.addr, align 8, !tbaa !6
  %1 = load i8*, i8** %string.addr, align 8, !tbaa !6
  %call = call i64 @strlen(i8* %1) #21
  %add = add i64 %call, 1
  %call1 = call noalias nonnull i8* @xmemdup(i8* %0, i64 %add) #27
  ret i8* %call1
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() #0 {
entry:
  %0 = load volatile i32, i32* @exit_failure, align 4, !tbaa !2
  call void (i32, i32, i8*, ...) @error(i32 %0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.181, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.182, i64 0, i64 0))
  call void @abort() #20
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(i8* nonnull %n_str, i32 %base, i64 %min, i64 %max, i8* %suffixes, i8* nonnull %err, i32 %err_exit) #7 {
entry:
  %n_str.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %suffixes.addr = alloca i8*, align 8
  %err.addr = alloca i8*, align 8
  %err_exit.addr = alloca i32, align 4
  %s_err = alloca i32, align 4
  %tnum = alloca i64, align 8
  store i8* %n_str, i8** %n_str.addr, align 8, !tbaa !6
  store i32 %base, i32* %base.addr, align 4, !tbaa !2
  store i64 %min, i64* %min.addr, align 8, !tbaa !13
  store i64 %max, i64* %max.addr, align 8, !tbaa !13
  store i8* %suffixes, i8** %suffixes.addr, align 8, !tbaa !6
  store i8* %err, i8** %err.addr, align 8, !tbaa !6
  store i32 %err_exit, i32* %err_exit.addr, align 4, !tbaa !2
  %0 = bitcast i32* %s_err to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %1 = bitcast i64* %tnum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load i8*, i8** %n_str.addr, align 8, !tbaa !6
  %3 = load i32, i32* %base.addr, align 4, !tbaa !2
  %4 = load i8*, i8** %suffixes.addr, align 8, !tbaa !6
  %call = call i32 @xstrtoumax(i8* %2, i8** null, i32 %3, i64* %tnum, i8* %4)
  store i32 %call, i32* %s_err, align 4, !tbaa !15
  %5 = load i32, i32* %s_err, align 4, !tbaa !15
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %tnum, align 8, !tbaa !13
  %7 = load i64, i64* %min.addr, align 8, !tbaa !13
  %cmp1 = icmp ult i64 %6, %7
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load i64, i64* %max.addr, align 8, !tbaa !13
  %9 = load i64, i64* %tnum, align 8, !tbaa !13
  %cmp2 = icmp ult i64 %8, %9
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %s_err, align 4, !tbaa !15
  %10 = load i64, i64* %tnum, align 8, !tbaa !13
  %cmp4 = icmp ugt i64 %10, 1073741823
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  %call6 = call i32* @__errno_location() #22
  store i32 75, i32* %call6, align 4, !tbaa !2
  br label %if.end

if.else:                                          ; preds = %if.then3
  %call7 = call i32* @__errno_location() #22
  store i32 34, i32* %call7, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %lor.lhs.false
  br label %if.end19

if.else9:                                         ; preds = %entry
  %11 = load i32, i32* %s_err, align 4, !tbaa !15
  %cmp10 = icmp eq i32 %11, 1
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %call12 = call i32* @__errno_location() #22
  store i32 75, i32* %call12, align 4, !tbaa !2
  br label %if.end18

if.else13:                                        ; preds = %if.else9
  %12 = load i32, i32* %s_err, align 4, !tbaa !15
  %cmp14 = icmp eq i32 %12, 3
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else13
  %call16 = call i32* @__errno_location() #22
  store i32 0, i32* %call16, align 4, !tbaa !2
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then11
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end8
  %13 = load i32, i32* %s_err, align 4, !tbaa !15
  %cmp20 = icmp ne i32 %13, 0
  br i1 %cmp20, label %if.then21, label %if.end30

if.then21:                                        ; preds = %if.end19
  %14 = load i32, i32* %err_exit.addr, align 4, !tbaa !2
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then21
  %15 = load i32, i32* %err_exit.addr, align 4, !tbaa !2
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ 1, %cond.false ]
  %call22 = call i32* @__errno_location() #22
  %16 = load i32, i32* %call22, align 4, !tbaa !2
  %cmp23 = icmp eq i32 %16, 22
  br i1 %cmp23, label %cond.true24, label %cond.false25

cond.true24:                                      ; preds = %cond.end
  br label %cond.end27

cond.false25:                                     ; preds = %cond.end
  %call26 = call i32* @__errno_location() #22
  %17 = load i32, i32* %call26, align 4, !tbaa !2
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true24
  %cond28 = phi i32 [ 0, %cond.true24 ], [ %17, %cond.false25 ]
  %18 = load i8*, i8** %err.addr, align 8, !tbaa !6
  %19 = load i8*, i8** %n_str.addr, align 8, !tbaa !6
  %call29 = call i8* @quote(i8* %19)
  call void (i32, i32, i8*, ...) @error(i32 %cond, i32 %cond28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.183, i64 0, i64 0), i8* %18, i8* %call29)
  br label %if.end30

if.end30:                                         ; preds = %cond.end27, %if.end19
  %20 = load i64, i64* %tnum, align 8, !tbaa !13
  %21 = bitcast i64* %tnum to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #13
  %22 = bitcast i32* %s_err to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #13
  ret i64 %20
}

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(i8* nonnull %n_str, i64 %min, i64 %max, i8* %suffixes, i8* nonnull %err, i32 %err_exit) #7 {
entry:
  %n_str.addr = alloca i8*, align 8
  %min.addr = alloca i64, align 8
  %max.addr = alloca i64, align 8
  %suffixes.addr = alloca i8*, align 8
  %err.addr = alloca i8*, align 8
  %err_exit.addr = alloca i32, align 4
  store i8* %n_str, i8** %n_str.addr, align 8, !tbaa !6
  store i64 %min, i64* %min.addr, align 8, !tbaa !13
  store i64 %max, i64* %max.addr, align 8, !tbaa !13
  store i8* %suffixes, i8** %suffixes.addr, align 8, !tbaa !6
  store i8* %err, i8** %err.addr, align 8, !tbaa !6
  store i32 %err_exit, i32* %err_exit.addr, align 4, !tbaa !2
  %0 = load i8*, i8** %n_str.addr, align 8, !tbaa !6
  %1 = load i64, i64* %min.addr, align 8, !tbaa !13
  %2 = load i64, i64* %max.addr, align 8, !tbaa !13
  %3 = load i8*, i8** %suffixes.addr, align 8, !tbaa !6
  %4 = load i8*, i8** %err.addr, align 8, !tbaa !6
  %5 = load i32, i32* %err_exit.addr, align 4, !tbaa !2
  %call = call i64 @xnumtoumax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(i8* %s, i8** %ptr, i32 %strtol_base, i64* %val, i8* %valid_suffixes) #7 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %strtol_base.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %valid_suffixes.addr = alloca i8*, align 8
  %t_ptr = alloca i8*, align 8
  %p = alloca i8**, align 8
  %tmp = alloca i64, align 8
  %err = alloca i32, align 4
  %q = alloca i8*, align 8
  %ch = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %base = alloca i32, align 4
  %suffixes = alloca i32, align 4
  %overflow = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8, !tbaa !6
  store i8** %ptr, i8*** %ptr.addr, align 8, !tbaa !6
  store i32 %strtol_base, i32* %strtol_base.addr, align 4, !tbaa !2
  store i64* %val, i64** %val.addr, align 8, !tbaa !6
  store i8* %valid_suffixes, i8** %valid_suffixes.addr, align 8, !tbaa !6
  %0 = bitcast i8** %t_ptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #13
  store i32 0, i32* %err, align 4, !tbaa !15
  %4 = load i32, i32* %strtol_base.addr, align 4, !tbaa !2
  %cmp = icmp sle i32 0, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %strtol_base.addr, align 4, !tbaa !2
  %cmp1 = icmp sle i32 %5, 36
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.188, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.189, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__PRETTY_FUNCTION__.xstrtoumax, i64 0, i64 0)) #20
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load i8**, i8*** %ptr.addr, align 8, !tbaa !6
  %tobool = icmp ne i8** %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load i8**, i8*** %ptr.addr, align 8, !tbaa !6
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %7, %cond.true ], [ %t_ptr, %cond.false ]
  store i8** %cond, i8*** %p, align 8, !tbaa !6
  %call = call i32* @__errno_location() #22
  store i32 0, i32* %call, align 4, !tbaa !2
  %8 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #13
  %9 = load i8*, i8** %s.addr, align 8, !tbaa !6
  store i8* %9, i8** %q, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %ch) #13
  %10 = load i8*, i8** %q, align 8, !tbaa !6
  %11 = load i8, i8* %10, align 1, !tbaa !15
  store i8 %11, i8* %ch, align 1, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %call2 = call i16** @__ctype_b_loc() #22
  %12 = load i16*, i16** %call2, align 8, !tbaa !6
  %13 = load i8, i8* %ch, align 1, !tbaa !15
  %conv = zext i8 %13 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 %idxprom
  %14 = load i16, i16* %arrayidx, align 2, !tbaa !30
  %conv3 = zext i16 %14 to i32
  %and = and i32 %conv3, 8192
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %q, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !6
  %16 = load i8, i8* %incdec.ptr, align 1, !tbaa !15
  store i8 %16, i8* %ch, align 1, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8, i8* %ch, align 1, !tbaa !15
  %conv5 = zext i8 %17 to i32
  %cmp6 = icmp eq i32 %conv5, 45
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.end
  store i32 4, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end9:                                          ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %ch) #13
  %18 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup105 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  %19 = load i8*, i8** %s.addr, align 8, !tbaa !6
  %20 = load i8**, i8*** %p, align 8, !tbaa !6
  %21 = load i32, i32* %strtol_base.addr, align 4, !tbaa !2
  %call11 = call i64 @strtoumax(i8* %19, i8** %20, i32 %21) #13
  store i64 %call11, i64* %tmp, align 8, !tbaa !13
  %22 = load i8**, i8*** %p, align 8, !tbaa !6
  %23 = load i8*, i8** %22, align 8, !tbaa !6
  %24 = load i8*, i8** %s.addr, align 8, !tbaa !6
  %cmp12 = icmp eq i8* %23, %24
  br i1 %cmp12, label %if.then14, label %if.else26

if.then14:                                        ; preds = %cleanup.cont
  %25 = load i8*, i8** %valid_suffixes.addr, align 8, !tbaa !6
  %tobool15 = icmp ne i8* %25, null
  br i1 %tobool15, label %land.lhs.true16, label %if.else24

land.lhs.true16:                                  ; preds = %if.then14
  %26 = load i8**, i8*** %p, align 8, !tbaa !6
  %27 = load i8*, i8** %26, align 8, !tbaa !6
  %28 = load i8, i8* %27, align 1, !tbaa !15
  %conv17 = sext i8 %28 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.lhs.true19, label %if.else24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %29 = load i8*, i8** %valid_suffixes.addr, align 8, !tbaa !6
  %30 = load i8**, i8*** %p, align 8, !tbaa !6
  %31 = load i8*, i8** %30, align 8, !tbaa !6
  %32 = load i8, i8* %31, align 1, !tbaa !15
  %conv20 = sext i8 %32 to i32
  %call21 = call i8* @strchr(i8* %29, i32 %conv20) #21
  %tobool22 = icmp ne i8* %call21, null
  br i1 %tobool22, label %if.then23, label %if.else24

if.then23:                                        ; preds = %land.lhs.true19
  store i64 1, i64* %tmp, align 8, !tbaa !13
  br label %if.end25

if.else24:                                        ; preds = %land.lhs.true19, %land.lhs.true16, %if.then14
  store i32 4, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup105

if.end25:                                         ; preds = %if.then23
  br label %if.end37

if.else26:                                        ; preds = %cleanup.cont
  %call27 = call i32* @__errno_location() #22
  %33 = load i32, i32* %call27, align 4, !tbaa !2
  %cmp28 = icmp ne i32 %33, 0
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.else26
  %call31 = call i32* @__errno_location() #22
  %34 = load i32, i32* %call31, align 4, !tbaa !2
  %cmp32 = icmp ne i32 %34, 34
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then30
  store i32 4, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup105

if.end35:                                         ; preds = %if.then30
  store i32 1, i32* %err, align 4, !tbaa !15
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.else26
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end25
  %35 = load i8*, i8** %valid_suffixes.addr, align 8, !tbaa !6
  %tobool38 = icmp ne i8* %35, null
  br i1 %tobool38, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end37
  %36 = load i64, i64* %tmp, align 8, !tbaa !13
  %37 = load i64*, i64** %val.addr, align 8, !tbaa !6
  store i64 %36, i64* %37, align 8, !tbaa !13
  %38 = load i32, i32* %err, align 4, !tbaa !15
  store i32 %38, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup105

if.end40:                                         ; preds = %if.end37
  %39 = load i8**, i8*** %p, align 8, !tbaa !6
  %40 = load i8*, i8** %39, align 8, !tbaa !6
  %41 = load i8, i8* %40, align 1, !tbaa !15
  %conv41 = sext i8 %41 to i32
  %cmp42 = icmp ne i32 %conv41, 0
  br i1 %cmp42, label %if.then44, label %if.end104

if.then44:                                        ; preds = %if.end40
  %42 = bitcast i32* %base to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #13
  store i32 1024, i32* %base, align 4, !tbaa !2
  %43 = bitcast i32* %suffixes to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43) #13
  store i32 1, i32* %suffixes, align 4, !tbaa !2
  %44 = bitcast i32* %overflow to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #13
  %45 = load i8*, i8** %valid_suffixes.addr, align 8, !tbaa !6
  %46 = load i8**, i8*** %p, align 8, !tbaa !6
  %47 = load i8*, i8** %46, align 8, !tbaa !6
  %48 = load i8, i8* %47, align 1, !tbaa !15
  %conv45 = sext i8 %48 to i32
  %call46 = call i8* @strchr(i8* %45, i32 %conv45) #21
  %tobool47 = icmp ne i8* %call46, null
  br i1 %tobool47, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.then44
  %49 = load i64, i64* %tmp, align 8, !tbaa !13
  %50 = load i64*, i64** %val.addr, align 8, !tbaa !6
  store i64 %49, i64* %50, align 8, !tbaa !13
  %51 = load i32, i32* %err, align 4, !tbaa !15
  %or = or i32 %51, 2
  store i32 %or, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup99

if.end49:                                         ; preds = %if.then44
  %52 = load i8**, i8*** %p, align 8, !tbaa !6
  %53 = load i8*, i8** %52, align 8, !tbaa !6
  %54 = load i8, i8* %53, align 1, !tbaa !15
  %conv50 = sext i8 %54 to i32
  switch i32 %conv50, label %sw.epilog67 [
    i32 69, label %sw.bb
    i32 71, label %sw.bb
    i32 103, label %sw.bb
    i32 107, label %sw.bb
    i32 75, label %sw.bb
    i32 77, label %sw.bb
    i32 109, label %sw.bb
    i32 80, label %sw.bb
    i32 84, label %sw.bb
    i32 116, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49, %if.end49
  %55 = load i8*, i8** %valid_suffixes.addr, align 8, !tbaa !6
  %call51 = call i8* @strchr(i8* %55, i32 48) #21
  %tobool52 = icmp ne i8* %call51, null
  br i1 %tobool52, label %if.then53, label %if.end66

if.then53:                                        ; preds = %sw.bb
  %56 = load i8**, i8*** %p, align 8, !tbaa !6
  %arrayidx54 = getelementptr inbounds i8*, i8** %56, i64 0
  %57 = load i8*, i8** %arrayidx54, align 8, !tbaa !6
  %arrayidx55 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx55, align 1, !tbaa !15
  %conv56 = sext i8 %58 to i32
  switch i32 %conv56, label %sw.epilog [
    i32 105, label %sw.bb57
    i32 66, label %sw.bb65
    i32 68, label %sw.bb65
  ]

sw.bb57:                                          ; preds = %if.then53
  %59 = load i8**, i8*** %p, align 8, !tbaa !6
  %arrayidx58 = getelementptr inbounds i8*, i8** %59, i64 0
  %60 = load i8*, i8** %arrayidx58, align 8, !tbaa !6
  %arrayidx59 = getelementptr inbounds i8, i8* %60, i64 2
  %61 = load i8, i8* %arrayidx59, align 1, !tbaa !15
  %conv60 = sext i8 %61 to i32
  %cmp61 = icmp eq i32 %conv60, 66
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %sw.bb57
  %62 = load i32, i32* %suffixes, align 4, !tbaa !2
  %add = add nsw i32 %62, 2
  store i32 %add, i32* %suffixes, align 4, !tbaa !2
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %sw.bb57
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.then53, %if.then53
  store i32 1000, i32* %base, align 4, !tbaa !2
  %63 = load i32, i32* %suffixes, align 4, !tbaa !2
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %suffixes, align 4, !tbaa !2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then53, %sw.bb65, %if.end64
  br label %if.end66

if.end66:                                         ; preds = %sw.epilog, %sw.bb
  br label %sw.epilog67

sw.epilog67:                                      ; preds = %if.end66, %if.end49
  %64 = load i8**, i8*** %p, align 8, !tbaa !6
  %65 = load i8*, i8** %64, align 8, !tbaa !6
  %66 = load i8, i8* %65, align 1, !tbaa !15
  %conv68 = sext i8 %66 to i32
  switch i32 %conv68, label %sw.default [
    i32 98, label %sw.bb69
    i32 66, label %sw.bb71
    i32 99, label %sw.bb73
    i32 69, label %sw.bb74
    i32 71, label %sw.bb76
    i32 103, label %sw.bb76
    i32 107, label %sw.bb78
    i32 75, label %sw.bb78
    i32 77, label %sw.bb80
    i32 109, label %sw.bb80
    i32 80, label %sw.bb82
    i32 84, label %sw.bb84
    i32 116, label %sw.bb84
    i32 119, label %sw.bb86
    i32 89, label %sw.bb88
    i32 90, label %sw.bb90
  ]

sw.bb69:                                          ; preds = %sw.epilog67
  %call70 = call i32 @bkm_scale(i64* %tmp, i32 512)
  store i32 %call70, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb71:                                          ; preds = %sw.epilog67
  %call72 = call i32 @bkm_scale(i64* %tmp, i32 1024)
  store i32 %call72, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb73:                                          ; preds = %sw.epilog67
  store i32 0, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb74:                                          ; preds = %sw.epilog67
  %67 = load i32, i32* %base, align 4, !tbaa !2
  %call75 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %67, i32 6)
  store i32 %call75, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb76:                                          ; preds = %sw.epilog67, %sw.epilog67
  %68 = load i32, i32* %base, align 4, !tbaa !2
  %call77 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %68, i32 3)
  store i32 %call77, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb78:                                          ; preds = %sw.epilog67, %sw.epilog67
  %69 = load i32, i32* %base, align 4, !tbaa !2
  %call79 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %69, i32 1)
  store i32 %call79, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb80:                                          ; preds = %sw.epilog67, %sw.epilog67
  %70 = load i32, i32* %base, align 4, !tbaa !2
  %call81 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %70, i32 2)
  store i32 %call81, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb82:                                          ; preds = %sw.epilog67
  %71 = load i32, i32* %base, align 4, !tbaa !2
  %call83 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %71, i32 5)
  store i32 %call83, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb84:                                          ; preds = %sw.epilog67, %sw.epilog67
  %72 = load i32, i32* %base, align 4, !tbaa !2
  %call85 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %72, i32 4)
  store i32 %call85, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb86:                                          ; preds = %sw.epilog67
  %call87 = call i32 @bkm_scale(i64* %tmp, i32 2)
  store i32 %call87, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb88:                                          ; preds = %sw.epilog67
  %73 = load i32, i32* %base, align 4, !tbaa !2
  %call89 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %73, i32 8)
  store i32 %call89, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.bb90:                                          ; preds = %sw.epilog67
  %74 = load i32, i32* %base, align 4, !tbaa !2
  %call91 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %74, i32 7)
  store i32 %call91, i32* %overflow, align 4, !tbaa !15
  br label %sw.epilog93

sw.default:                                       ; preds = %sw.epilog67
  %75 = load i64, i64* %tmp, align 8, !tbaa !13
  %76 = load i64*, i64** %val.addr, align 8, !tbaa !6
  store i64 %75, i64* %76, align 8, !tbaa !13
  %77 = load i32, i32* %err, align 4, !tbaa !15
  %or92 = or i32 %77, 2
  store i32 %or92, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup99

sw.epilog93:                                      ; preds = %sw.bb90, %sw.bb88, %sw.bb86, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb73, %sw.bb71, %sw.bb69
  %78 = load i32, i32* %overflow, align 4, !tbaa !15
  %79 = load i32, i32* %err, align 4, !tbaa !15
  %or94 = or i32 %79, %78
  store i32 %or94, i32* %err, align 4, !tbaa !15
  %80 = load i32, i32* %suffixes, align 4, !tbaa !2
  %81 = load i8**, i8*** %p, align 8, !tbaa !6
  %82 = load i8*, i8** %81, align 8, !tbaa !6
  %idx.ext = sext i32 %80 to i64
  %add.ptr = getelementptr inbounds i8, i8* %82, i64 %idx.ext
  store i8* %add.ptr, i8** %81, align 8, !tbaa !6
  %83 = load i8**, i8*** %p, align 8, !tbaa !6
  %84 = load i8*, i8** %83, align 8, !tbaa !6
  %85 = load i8, i8* %84, align 1, !tbaa !15
  %tobool95 = icmp ne i8 %85, 0
  br i1 %tobool95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %sw.epilog93
  %86 = load i32, i32* %err, align 4, !tbaa !15
  %or97 = or i32 %86, 2
  store i32 %or97, i32* %err, align 4, !tbaa !15
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %sw.epilog93
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup99

cleanup99:                                        ; preds = %if.end98, %sw.default, %if.then48
  %87 = bitcast i32* %overflow to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %87) #13
  %88 = bitcast i32* %suffixes to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #13
  %89 = bitcast i32* %base to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #13
  %cleanup.dest102 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest102, label %cleanup105 [
    i32 0, label %cleanup.cont103
  ]

cleanup.cont103:                                  ; preds = %cleanup99
  br label %if.end104

if.end104:                                        ; preds = %cleanup.cont103, %if.end40
  %90 = load i64, i64* %tmp, align 8, !tbaa !13
  %91 = load i64*, i64** %val.addr, align 8, !tbaa !6
  store i64 %90, i64* %91, align 8, !tbaa !13
  %92 = load i32, i32* %err, align 4, !tbaa !15
  store i32 %92, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup105

cleanup105:                                       ; preds = %if.end104, %cleanup99, %if.then39, %if.then34, %if.else24, %cleanup
  %93 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #13
  %94 = bitcast i64* %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %94) #13
  %95 = bitcast i8*** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %95) #13
  %96 = bitcast i8** %t_ptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %96) #13
  %97 = load i32, i32* %retval, align 4
  ret i32 %97
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare dso_local i64 @strtoumax(i8*, i8**, i32) #6

; Function Attrs: nounwind uwtable
define internal i32 @bkm_scale(i64* %x, i32 %scale_factor) #7 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64*, align 8
  %scale_factor.addr = alloca i32, align 4
  store i64* %x, i64** %x.addr, align 8, !tbaa !6
  store i32 %scale_factor, i32* %scale_factor.addr, align 4, !tbaa !2
  %0 = load i32, i32* %scale_factor.addr, align 4, !tbaa !2
  %conv = sext i32 %0 to i64
  %div = udiv i64 -1, %conv
  %1 = load i64*, i64** %x.addr, align 8, !tbaa !6
  %2 = load i64, i64* %1, align 8, !tbaa !13
  %cmp = icmp ult i64 %div, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %x.addr, align 8, !tbaa !6
  store i64 -1, i64* %3, align 8, !tbaa !13
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %scale_factor.addr, align 4, !tbaa !2
  %conv2 = sext i32 %4 to i64
  %5 = load i64*, i64** %x.addr, align 8, !tbaa !6
  %6 = load i64, i64* %5, align 8, !tbaa !13
  %mul = mul i64 %6, %conv2
  store i64 %mul, i64* %5, align 8, !tbaa !13
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @bkm_scale_by_power(i64* %x, i32 %base, i32 %power) #7 {
entry:
  %x.addr = alloca i64*, align 8
  %base.addr = alloca i32, align 4
  %power.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i64* %x, i64** %x.addr, align 8, !tbaa !6
  store i32 %base, i32* %base.addr, align 4, !tbaa !2
  store i32 %power, i32* %power.addr, align 4, !tbaa !2
  %0 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  store i32 0, i32* %err, align 4, !tbaa !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %power.addr, align 4, !tbaa !2
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %power.addr, align 4, !tbaa !2
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64*, i64** %x.addr, align 8, !tbaa !6
  %3 = load i32, i32* %base.addr, align 4, !tbaa !2
  %call = call i32 @bkm_scale(i64* %2, i32 %3)
  %4 = load i32, i32* %err, align 4, !tbaa !15
  %or = or i32 %4, %call
  store i32 %or, i32* %err, align 4, !tbaa !15
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %err, align 4, !tbaa !15
  %6 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #13
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull %fp) #7 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %saved_errno = alloca i32, align 4
  %fd = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %0 = bitcast i32* %saved_errno to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  store i32 0, i32* %saved_errno, align 4, !tbaa !2
  %1 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #13
  %2 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #13
  store i32 0, i32* %result, align 4, !tbaa !2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call = call i32 @fileno(%struct._IO_FILE* %3) #13
  store i32 %call, i32* %fd, align 4, !tbaa !2
  %4 = load i32, i32* %fd, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call1 = call i32 @fclose(%struct._IO_FILE* %5)
  store i32 %call1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call2 = call i32 @__freading(%struct._IO_FILE* %6) #13
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call4 = call i32 @fileno(%struct._IO_FILE* %7) #13
  %call5 = call i64 @lseek(i32 %call4, i64 0, i32 1) #13
  %cmp6 = icmp ne i64 %call5, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call7 = call i32 @rpl_fflush(%struct._IO_FILE* %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call i32* @__errno_location() #22
  %9 = load i32, i32* %call9, align 4, !tbaa !2
  store i32 %9, i32* %saved_errno, align 4, !tbaa !2
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true, %lor.lhs.false
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call11 = call i32 @fclose(%struct._IO_FILE* %10)
  store i32 %call11, i32* %result, align 4, !tbaa !2
  %11 = load i32, i32* %saved_errno, align 4, !tbaa !2
  %cmp12 = icmp ne i32 %11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %12 = load i32, i32* %saved_errno, align 4, !tbaa !2
  %call14 = call i32* @__errno_location() #22
  store i32 %12, i32* %call14, align 4, !tbaa !2
  store i32 -1, i32* %result, align 4, !tbaa !2
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %13 = load i32, i32* %result, align 4, !tbaa !2
  store i32 %13, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then
  %14 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #13
  %15 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #13
  %16 = bitcast i32* %saved_errno to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #13
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @__freading(%struct._IO_FILE*) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* %stream) #7 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call = call i32 @__freading(%struct._IO_FILE* %1) #13
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  store i32 %call2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  call void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call3 = call i32 @fflush(%struct._IO_FILE* %4)
  store i32 %call3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @clear_ungetc_buffer_preserving_position(%struct._IO_FILE* %fp) #7 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 0
  %1 = load i32, i32* %_flags, align 8, !tbaa !54
  %and = and i32 %1, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call = call i32 @rpl_fseeko(%struct._IO_FILE* %2, i64 0, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rpl_free(i8* %p) #7 {
entry:
  %p.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  %0 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %call = call i32* @__errno_location() #22
  %1 = load i32, i32* %call, align 4, !tbaa !2
  store i32 %1, i32* %err, align 4, !tbaa !2
  %2 = load i8*, i8** %p.addr, align 8, !tbaa !6
  call void @free(i8* %2) #13
  %3 = load i32, i32* %err, align 4, !tbaa !2
  %call1 = call i32* @__errno_location() #22
  store i32 %3, i32* %call1, align 4, !tbaa !2
  %4 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #13
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nonnull %fp, i64 %offset, i32 %whence) #7 {
entry:
  %retval = alloca i32, align 4
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  store i64 %offset, i64* %offset.addr, align 8, !tbaa !13
  store i32 %whence, i32* %whence.addr, align 4, !tbaa !2
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i32 0, i32 2
  %1 = load i8*, i8** %_IO_read_end, align 8, !tbaa !56
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i32 0, i32 1
  %3 = load i8*, i8** %_IO_read_ptr, align 8, !tbaa !57
  %cmp = icmp eq i8* %1, %3
  br i1 %cmp, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %4, i32 0, i32 5
  %5 = load i8*, i8** %_IO_write_ptr, align 8, !tbaa !58
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %_IO_write_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i32 0, i32 4
  %7 = load i8*, i8** %_IO_write_base, align 8, !tbaa !59
  %cmp1 = icmp eq i8* %5, %7
  br i1 %cmp1, label %land.lhs.true2, label %if.end7

land.lhs.true2:                                   ; preds = %land.lhs.true
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %_IO_save_base = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %8, i32 0, i32 9
  %9 = load i8*, i8** %_IO_save_base, align 8, !tbaa !60
  %cmp3 = icmp eq i8* %9, null
  br i1 %cmp3, label %if.then, label %if.end7

if.then:                                          ; preds = %land.lhs.true2
  %10 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #13
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %call = call i32 @fileno(%struct._IO_FILE* %11) #13
  %12 = load i64, i64* %offset.addr, align 8, !tbaa !13
  %13 = load i32, i32* %whence.addr, align 4, !tbaa !2
  %call4 = call i64 @lseek(i32 %call, i64 %12, i32 %13) #13
  store i64 %call4, i64* %pos, align 8, !tbaa !13
  %14 = load i64, i64* %pos, align 8, !tbaa !13
  %cmp5 = icmp eq i64 %14, -1
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %15, i32 0, i32 0
  %16 = load i32, i32* %_flags, align 8, !tbaa !54
  %and = and i32 %16, -17
  store i32 %and, i32* %_flags, align 8, !tbaa !54
  %17 = load i64, i64* %pos, align 8, !tbaa !13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %_offset = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %18, i32 0, i32 21
  store i64 %17, i64* %_offset, align 8, !tbaa !61
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then6
  %19 = bitcast i64* %pos to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  br label %return

if.end7:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !6
  %21 = load i64, i64* %offset.addr, align 8, !tbaa !13
  %22 = load i32, i32* %whence.addr, align 4, !tbaa !2
  %call8 = call i32 @fseeko(%struct._IO_FILE* %20, i64 %21, i32 %22)
  store i32 %call8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %cleanup
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local i32 @fseeko(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtowc(i32* %pwc, i8* %s, i64 %n, %struct.__mbstate_t* %ps) #7 {
entry:
  %retval = alloca i64, align 8
  %pwc.addr = alloca i32*, align 8
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %ps.addr = alloca %struct.__mbstate_t*, align 8
  %ret = alloca i64, align 8
  %wc = alloca i32, align 4
  %uc = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32* %pwc, i32** %pwc.addr, align 8, !tbaa !6
  store i8* %s, i8** %s.addr, align 8, !tbaa !6
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store %struct.__mbstate_t* %ps, %struct.__mbstate_t** %ps.addr, align 8, !tbaa !6
  %0 = bitcast i64* %ret to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i32* %wc to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #13
  %2 = load i32*, i32** %pwc.addr, align 8, !tbaa !6
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32* %wc, i32** %pwc.addr, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %pwc.addr, align 8, !tbaa !6
  %4 = load i8*, i8** %s.addr, align 8, !tbaa !6
  %5 = load i64, i64* %n.addr, align 8, !tbaa !13
  %6 = load %struct.__mbstate_t*, %struct.__mbstate_t** %ps.addr, align 8, !tbaa !6
  %call = call i64 @mbrtowc(i32* %3, i8* %4, i64 %5, %struct.__mbstate_t* %6) #13
  store i64 %call, i64* %ret, align 8, !tbaa !13
  %7 = load i64, i64* %ret, align 8, !tbaa !13
  %cmp = icmp ule i64 -2, %7
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, i64* %n.addr, align 8, !tbaa !13
  %cmp1 = icmp ne i64 %8, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end5

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call3 = call zeroext i1 @hard_locale(i32 0)
  br i1 %call3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %land.lhs.true2
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %uc) #13
  %9 = load i8*, i8** %s.addr, align 8, !tbaa !6
  %10 = load i8, i8* %9, align 1, !tbaa !15
  store i8 %10, i8* %uc, align 1, !tbaa !15
  %11 = load i8, i8* %uc, align 1, !tbaa !15
  %conv = zext i8 %11 to i32
  %12 = load i32*, i32** %pwc.addr, align 8, !tbaa !6
  store i32 %conv, i32* %12, align 4, !tbaa !2
  store i64 1, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %uc) #13
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true2, %land.lhs.true, %if.end
  %13 = load i64, i64* %ret, align 8, !tbaa !13
  store i64 %13, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  %14 = bitcast i32* %wc to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #13
  %15 = bitcast i64* %ret to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #13
  %16 = load i64, i64* %retval, align 8
  ret i64 %16
}

; Function Attrs: nounwind
declare dso_local i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) #6

; Function Attrs: nounwind readonly uwtable
define dso_local i32 @c_strcasecmp(i8* %s1, i8* %s2) #10 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8, !tbaa !6
  store i8* %s2, i8** %s2.addr, align 8, !tbaa !6
  %0 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %s1.addr, align 8, !tbaa !6
  store i8* %1, i8** %p1, align 8, !tbaa !6
  %2 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load i8*, i8** %s2.addr, align 8, !tbaa !6
  store i8* %3, i8** %p2, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %c1) #13
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %c2) #13
  %4 = load i8*, i8** %p1, align 8, !tbaa !6
  %5 = load i8*, i8** %p2, align 8, !tbaa !6
  %cmp = icmp eq i8* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load i8*, i8** %p1, align 8, !tbaa !6
  %7 = load i8, i8* %6, align 1, !tbaa !15
  %conv = zext i8 %7 to i32
  %call = call i32 @c_tolower(i32 %conv)
  %conv1 = trunc i32 %call to i8
  store i8 %conv1, i8* %c1, align 1, !tbaa !15
  %8 = load i8*, i8** %p2, align 8, !tbaa !6
  %9 = load i8, i8* %8, align 1, !tbaa !15
  %conv2 = zext i8 %9 to i32
  %call3 = call i32 @c_tolower(i32 %conv2)
  %conv4 = trunc i32 %call3 to i8
  store i8 %conv4, i8* %c2, align 1, !tbaa !15
  %10 = load i8, i8* %c1, align 1, !tbaa !15
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %do.body
  br label %do.end

if.end9:                                          ; preds = %do.body
  %11 = load i8*, i8** %p1, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8, !tbaa !6
  %12 = load i8*, i8** %p2, align 8, !tbaa !6
  %incdec.ptr10 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr10, i8** %p2, align 8, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %if.end9
  %13 = load i8, i8* %c1, align 1, !tbaa !15
  %conv11 = zext i8 %13 to i32
  %14 = load i8, i8* %c2, align 1, !tbaa !15
  %conv12 = zext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv11, %conv12
  br i1 %cmp13, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then8
  %15 = load i8, i8* %c1, align 1, !tbaa !15
  %conv15 = zext i8 %15 to i32
  %16 = load i8, i8* %c2, align 1, !tbaa !15
  %conv16 = zext i8 %16 to i32
  %sub = sub nsw i32 %conv15, %conv16
  store i32 %sub, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %c2) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %c1) #13
  %17 = bitcast i8** %p2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #13
  %18 = bitcast i8** %p1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #13
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* %stream) #7 {
entry:
  %retval = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %some_pending = alloca i8, align 1
  %prev_fail = alloca i8, align 1
  %fclose_fail = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %some_pending) #13
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call = call i64 @__fpending(%struct._IO_FILE* %0) #13
  %cmp = icmp ne i64 %call, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* %some_pending, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %prev_fail) #13
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call1 = call i32 @ferror_unlocked(%struct._IO_FILE* %1) #13
  %cmp2 = icmp ne i32 %call1, 0
  %frombool3 = zext i1 %cmp2 to i8
  store i8 %frombool3, i8* %prev_fail, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %fclose_fail) #13
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %call4 = call i32 @rpl_fclose(%struct._IO_FILE* %2)
  %cmp5 = icmp ne i32 %call4, 0
  %frombool6 = zext i1 %cmp5 to i8
  store i8 %frombool6, i8* %fclose_fail, align 1, !tbaa !11
  %3 = load i8, i8* %prev_fail, align 1, !tbaa !11, !range !16
  %tobool = trunc i8 %3 to i1
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8, i8* %fclose_fail, align 1, !tbaa !11, !range !16
  %tobool7 = trunc i8 %4 to i1
  br i1 %tobool7, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8, i8* %some_pending, align 1, !tbaa !11, !range !16
  %tobool8 = trunc i8 %5 to i1
  br i1 %tobool8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %land.lhs.true
  %call10 = call i32* @__errno_location() #22
  %6 = load i32, i32* %call10, align 4, !tbaa !2
  %cmp11 = icmp ne i32 %6, 9
  br i1 %cmp11, label %if.then, label %if.end15

if.then:                                          ; preds = %lor.lhs.false9, %land.lhs.true, %entry
  %7 = load i8, i8* %fclose_fail, align 1, !tbaa !11, !range !16
  %tobool12 = trunc i8 %7 to i1
  br i1 %tobool12, label %if.end, label %if.then13

if.then13:                                        ; preds = %if.then
  %call14 = call i32* @__errno_location() #22
  store i32 0, i32* %call14, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false9, %lor.lhs.false
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %fclose_fail) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %prev_fail) #13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %some_pending) #13
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare dso_local i64 @__fpending(%struct._IO_FILE*) #6

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @count_leading_zeros(i32 %x) #2 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !2
  %0 = load i32, i32* %x.addr, align 4, !tbaa !2
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4, !tbaa !2
  %2 = call i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %conv = sext i32 %2 to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ 32, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  ret i32 %conv1
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @count_leading_zeros_l(i64 %x) #2 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8, !tbaa !13
  %0 = load i64, i64* %x.addr, align 8, !tbaa !13
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8, !tbaa !13
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %conv = sext i32 %cast to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ 64, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  ret i32 %conv1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @count_leading_zeros_ll(i64 %x) #2 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8, !tbaa !62
  %0 = load i64, i64* %x.addr, align 8, !tbaa !62
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8, !tbaa !62
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %conv = sext i32 %cast to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ 64, %cond.false ]
  %conv1 = trunc i64 %cond to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define dso_local %struct._IO_FILE* @fopen_safer(i8* nonnull %file, i8* nonnull %mode) #7 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %file.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %f = alloca i32, align 4
  %e = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %e15 = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8, !tbaa !6
  store i8* %mode, i8** %mode.addr, align 8, !tbaa !6
  %0 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %file.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* %2)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %tobool = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #13
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %call1 = call i32 @fileno(%struct._IO_FILE* %5) #13
  store i32 %call1, i32* %fd, align 4, !tbaa !2
  %6 = load i32, i32* %fd, align 4, !tbaa !2
  %cmp = icmp sle i32 0, %6
  br i1 %cmp, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.then
  %7 = load i32, i32* %fd, align 4, !tbaa !2
  %cmp2 = icmp sle i32 %7, 2
  br i1 %cmp2, label %if.then3, label %if.end20

if.then3:                                         ; preds = %land.lhs.true
  %8 = bitcast i32* %f to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #13
  %9 = load i32, i32* %fd, align 4, !tbaa !2
  %call4 = call i32 @dup_safer(i32 %9)
  store i32 %call4, i32* %f, align 4, !tbaa !2
  %10 = load i32, i32* %f, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %11 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #13
  %call7 = call i32* @__errno_location() #22
  %12 = load i32, i32* %call7, align 4, !tbaa !2
  store i32 %12, i32* %e, align 4, !tbaa !2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %call8 = call i32 @rpl_fclose(%struct._IO_FILE* %13)
  %14 = load i32, i32* %e, align 4, !tbaa !2
  %call9 = call i32* @__errno_location() #22
  store i32 %14, i32* %call9, align 4, !tbaa !2
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  %15 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #13
  br label %cleanup

if.end:                                           ; preds = %if.then3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %call10 = call i32 @rpl_fclose(%struct._IO_FILE* %16)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i32, i32* %f, align 4, !tbaa !2
  %18 = load i8*, i8** %mode.addr, align 8, !tbaa !6
  %call12 = call %struct._IO_FILE* @fdopen(i32 %17, i8* %18) #13
  store %struct._IO_FILE* %call12, %struct._IO_FILE** %fp, align 8, !tbaa !6
  %tobool13 = icmp ne %struct._IO_FILE* %call12, null
  br i1 %tobool13, label %if.end19, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  %19 = bitcast i32* %e15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #13
  %call16 = call i32* @__errno_location() #22
  %20 = load i32, i32* %call16, align 4, !tbaa !2
  store i32 %20, i32* %e15, align 4, !tbaa !2
  %21 = load i32, i32* %f, align 4, !tbaa !2
  %call17 = call i32 @close(i32 %21)
  %22 = load i32, i32* %e15, align 4, !tbaa !2
  %call18 = call i32* @__errno_location() #22
  store i32 %22, i32* %call18, align 4, !tbaa !2
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  %23 = bitcast i32* %e15 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #13
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then14, %if.then6
  %24 = bitcast i32* %f to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end20

if.end20:                                         ; preds = %cleanup.cont, %land.lhs.true, %if.then
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup21

cleanup21:                                        ; preds = %if.end20, %cleanup
  %25 = bitcast i32* %fd to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #13
  %cleanup.dest22 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %cleanup25 [
    i32 0, label %cleanup.cont23
  ]

cleanup.cont23:                                   ; preds = %cleanup21
  br label %if.end24

if.end24:                                         ; preds = %cleanup.cont23, %entry
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !tbaa !6
  store %struct._IO_FILE* %26, %struct._IO_FILE** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup25

cleanup25:                                        ; preds = %if.end24, %cleanup21
  %27 = bitcast %struct._IO_FILE** %fp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #13
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %retval, align 8
  ret %struct._IO_FILE* %28
}

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #6

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 %category) #7 {
entry:
  %retval = alloca i1, align 1
  %category.addr = alloca i32, align 4
  %locale = alloca [257 x i8], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %category, i32* %category.addr, align 4, !tbaa !2
  %0 = bitcast [257 x i8]* %locale to i8*
  call void @llvm.lifetime.start.p0i8(i64 257, i8* %0) #13
  %1 = load i32, i32* %category.addr, align 4, !tbaa !2
  %arraydecay = getelementptr inbounds [257 x i8], [257 x i8]* %locale, i64 0, i64 0
  %call = call i32 @setlocale_null_r(i32 %1, i8* %arraydecay, i64 257)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [257 x i8], [257 x i8]* %locale, i64 0, i64 0
  %call2 = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.210, i64 0, i64 0)) #21
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %arraydecay3 = getelementptr inbounds [257 x i8], [257 x i8]* %locale, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.211, i64 0, i64 0)) #21
  %cmp5 = icmp eq i32 %call4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %2 = phi i1 [ true, %if.end ], [ %cmp5, %lor.rhs ]
  %lnot = xor i1 %2, true
  store i1 %lnot, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.then
  %3 = bitcast [257 x i8]* %locale to i8*
  call void @llvm.lifetime.end.p0i8(i64 257, i8* %3) #13
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: nounwind readonly uwtable
define dso_local i64 @hash_get_n_buckets(%struct.hash_table* %table) #10 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i32 0, i32 2
  %1 = load i64, i64* %n_buckets, align 8, !tbaa !64
  ret i64 %1
}

; Function Attrs: nounwind readonly uwtable
define dso_local i64 @hash_get_n_buckets_used(%struct.hash_table* %table) #10 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i32 0, i32 3
  %1 = load i64, i64* %n_buckets_used, align 8, !tbaa !66
  ret i64 %1
}

; Function Attrs: nounwind readonly uwtable
define dso_local i64 @hash_get_n_entries(%struct.hash_table* %table) #10 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_entries = getelementptr inbounds %struct.hash_table, %struct.hash_table* %0, i32 0, i32 4
  %1 = load i64, i64* %n_entries, align 8, !tbaa !67
  ret i64 %1
}

; Function Attrs: nounwind readonly uwtable
define dso_local i64 @hash_get_max_bucket_length(%struct.hash_table* %table) #10 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %max_bucket_length = alloca i64, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %bucket_length = alloca i64, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i64* %max_bucket_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  store i64 0, i64* %max_bucket_length, align 8, !tbaa !13
  %2 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %2, i32 0, i32 0
  %3 = load %struct.hash_entry*, %struct.hash_entry** %bucket1, align 8, !tbaa !68
  store %struct.hash_entry* %3, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %5 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %5, i32 0, i32 1
  %6 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp = icmp ult %struct.hash_entry* %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !70
  %tobool = icmp ne i8* %8, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %for.body
  %9 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #13
  %10 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  store %struct.hash_entry* %10, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %11 = bitcast i64* %bucket_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #13
  store i64 1, i64* %bucket_length, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %12 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i32 0, i32 1
  %13 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  store %struct.hash_entry* %13, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %14 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool2 = icmp ne %struct.hash_entry* %14, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i64, i64* %bucket_length, align 8, !tbaa !13
  %inc = add i64 %15, 1
  store i64 %inc, i64* %bucket_length, align 8, !tbaa !13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %bucket_length, align 8, !tbaa !13
  %17 = load i64, i64* %max_bucket_length, align 8, !tbaa !13
  %cmp3 = icmp ugt i64 %16, %17
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %while.end
  %18 = load i64, i64* %bucket_length, align 8, !tbaa !13
  store i64 %18, i64* %max_bucket_length, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then4, %while.end
  %19 = bitcast i64* %bucket_length to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  %20 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #13
  br label %if.end5

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %21 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i64, i64* %max_bucket_length, align 8, !tbaa !13
  %23 = bitcast i64* %max_bucket_length to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #13
  %24 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #13
  ret i64 %22
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @hash_table_ok(%struct.hash_table* %table) #10 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %n_buckets_used = alloca i64, align 8
  %n_entries = alloca i64, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i64* %n_buckets_used to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  store i64 0, i64* %n_buckets_used, align 8, !tbaa !13
  %2 = bitcast i64* %n_entries to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  store i64 0, i64* %n_entries, align 8, !tbaa !13
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 0
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket1, align 8, !tbaa !68
  store %struct.hash_entry* %4, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %6 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp = icmp ult %struct.hash_entry* %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !70
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #13
  %11 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  store %struct.hash_entry* %11, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %12 = load i64, i64* %n_buckets_used, align 8, !tbaa !13
  %inc = add i64 %12, 1
  store i64 %inc, i64* %n_buckets_used, align 8, !tbaa !13
  %13 = load i64, i64* %n_entries, align 8, !tbaa !13
  %inc2 = add i64 %13, 1
  store i64 %inc2, i64* %n_entries, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %14 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i32 0, i32 1
  %15 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  store %struct.hash_entry* %15, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %16 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool3 = icmp ne %struct.hash_entry* %16, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load i64, i64* %n_entries, align 8, !tbaa !13
  %inc4 = add i64 %17, 1
  store i64 %inc4, i64* %n_entries, align 8, !tbaa !13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #13
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i64, i64* %n_buckets_used, align 8, !tbaa !13
  %21 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used5 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %21, i32 0, i32 3
  %22 = load i64, i64* %n_buckets_used5, align 8, !tbaa !66
  %cmp6 = icmp eq i64 %20, %22
  br i1 %cmp6, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %for.end
  %23 = load i64, i64* %n_entries, align 8, !tbaa !13
  %24 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_entries7 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %24, i32 0, i32 4
  %25 = load i64, i64* %n_entries7, align 8, !tbaa !67
  %cmp8 = icmp eq i64 %23, %25
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true, %for.end
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9
  %26 = bitcast i64* %n_entries to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #13
  %27 = bitcast i64* %n_buckets_used to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #13
  %28 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #13
  %29 = load i1, i1* %retval, align 1
  ret i1 %29
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_print_statistics(%struct.hash_table* %table, %struct._IO_FILE* %stream) #7 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %n_entries = alloca i64, align 8
  %n_buckets = alloca i64, align 8
  %n_buckets_used = alloca i64, align 8
  %max_bucket_length = alloca i64, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %0 = bitcast i64* %n_entries to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %call = call i64 @hash_get_n_entries(%struct.hash_table* %1) #21
  store i64 %call, i64* %n_entries, align 8, !tbaa !13
  %2 = bitcast i64* %n_buckets to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %call1 = call i64 @hash_get_n_buckets(%struct.hash_table* %3) #21
  store i64 %call1, i64* %n_buckets, align 8, !tbaa !13
  %4 = bitcast i64* %n_buckets_used to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #13
  %5 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %call2 = call i64 @hash_get_n_buckets_used(%struct.hash_table* %5) #21
  store i64 %call2, i64* %n_buckets_used, align 8, !tbaa !13
  %6 = bitcast i64* %max_bucket_length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #13
  %7 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %call3 = call i64 @hash_get_max_bucket_length(%struct.hash_table* %7) #21
  store i64 %call3, i64* %max_bucket_length, align 8, !tbaa !13
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %9 = load i64, i64* %n_entries, align 8, !tbaa !13
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.212, i64 0, i64 0), i64 %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %11 = load i64, i64* %n_buckets, align 8, !tbaa !13
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1.213, i64 0, i64 0), i64 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %13 = load i64, i64* %n_buckets_used, align 8, !tbaa !13
  %14 = load i64, i64* %n_buckets_used, align 8, !tbaa !13
  %conv = uitofp i64 %14 to double
  %mul = fmul double 1.000000e+02, %conv
  %15 = load i64, i64* %n_buckets, align 8, !tbaa !13
  %conv6 = uitofp i64 %15 to double
  %div = fdiv double %mul, %conv6
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.214, i64 0, i64 0), i64 %13, double %div)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8, !tbaa !6
  %17 = load i64, i64* %max_bucket_length, align 8, !tbaa !13
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.215, i64 0, i64 0), i64 %17)
  %18 = bitcast i64* %max_bucket_length to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #13
  %19 = bitcast i64* %n_buckets_used to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  %20 = bitcast i64* %n_buckets to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #13
  %21 = bitcast i64* %n_entries to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_lookup(%struct.hash_table* %table, i8* %entry1) #7 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8* %entry1, i8** %entry.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %call = call %struct.hash_entry* @safe_hasher(%struct.hash_table* %1, i8* %2)
  store %struct.hash_entry* %call, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %3 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !70
  %cmp = icmp eq i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  store %struct.hash_entry* %6, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool = icmp ne %struct.hash_entry* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %9 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data2 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %9, i32 0, i32 0
  %10 = load i8*, i8** %data2, align 8, !tbaa !70
  %cmp3 = icmp eq i8* %8, %10
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %comparator = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 7
  %12 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comparator, align 8, !tbaa !73
  %13 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %14 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data4 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i32 0, i32 0
  %15 = load i8*, i8** %data4, align 8, !tbaa !70
  %call5 = call zeroext i1 %12(i8* %13, i8* %15)
  br i1 %call5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %for.body
  %16 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data7 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i32 0, i32 0
  %17 = load i8*, i8** %data7, align 8, !tbaa !70
  store i8* %17, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %18 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i32 0, i32 1
  %19 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  store %struct.hash_entry* %19, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then6, %if.then
  %20 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #13
  %21 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %21) #13
  %22 = load i8*, i8** %retval, align 8
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define internal %struct.hash_entry* @safe_hasher(%struct.hash_table* %table, i8* %key) #7 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %key.addr = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8* %key, i8** %key.addr, align 8, !tbaa !6
  %0 = bitcast i64* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %hasher = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 6
  %2 = load i64 (i8*, i64)*, i64 (i8*, i64)** %hasher, align 8, !tbaa !74
  %3 = load i8*, i8** %key.addr, align 8, !tbaa !6
  %4 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 2
  %5 = load i64, i64* %n_buckets, align 8, !tbaa !64
  %call = call i64 %2(i8* %3, i64 %5)
  store i64 %call, i64* %n, align 8, !tbaa !13
  %6 = load i64, i64* %n, align 8, !tbaa !13
  %7 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 2
  %8 = load i64, i64* %n_buckets1, align 8, !tbaa !64
  %cmp = icmp ult i64 %6, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #20
  unreachable

if.end:                                           ; preds = %entry
  %9 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket = getelementptr inbounds %struct.hash_table, %struct.hash_table* %9, i32 0, i32 0
  %10 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !68
  %11 = load i64, i64* %n, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i64 %11
  %12 = bitcast i64* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #13
  ret %struct.hash_entry* %add.ptr
}

; Function Attrs: nounwind readonly uwtable
define dso_local i8* @hash_get_first(%struct.hash_table* %table) #10 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_entries = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 4
  %2 = load i64, i64* %n_entries, align 8, !tbaa !67
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 0
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket1, align 8, !tbaa !68
  store %struct.hash_entry* %4, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %6 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp2 = icmp ult %struct.hash_entry* %5, %7
  br i1 %cmp2, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.cond
  call void @abort() #20
  unreachable

if.else:                                          ; preds = %for.cond
  %8 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !70
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.else
  %10 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data5 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i32 0, i32 0
  %11 = load i8*, i8** %data5, align 8, !tbaa !70
  store i8* %11, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %12 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

cleanup:                                          ; preds = %if.then4, %if.then
  %13 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %13) #13
  %14 = load i8*, i8** %retval, align 8
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_get_next(%struct.hash_table* %table, i8* %entry1) #7 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8* %entry1, i8** %entry.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %call = call %struct.hash_entry* @safe_hasher(%struct.hash_table* %1, i8* %2)
  store %struct.hash_entry* %call, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %3 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  store %struct.hash_entry* %4, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !70
  %7 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %cmp = icmp eq i8* %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %8, i32 0, i32 1
  %9 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  %tobool = icmp ne %struct.hash_entry* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next2 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i32 0, i32 1
  %11 = load %struct.hash_entry*, %struct.hash_entry** %next2, align 8, !tbaa !72
  %data3 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %11, i32 0, i32 0
  %12 = load i8*, i8** %data3, align 8, !tbaa !70
  store i8* %12, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %do.body
  %13 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next4 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i32 0, i32 1
  %14 = load %struct.hash_entry*, %struct.hash_entry** %next4, align 8, !tbaa !72
  store %struct.hash_entry* %14, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %15 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %cmp5 = icmp ne %struct.hash_entry* %15, null
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %do.end
  %16 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %16, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %17 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %17, i32 0, i32 1
  %18 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp6 = icmp ult %struct.hash_entry* %incdec.ptr, %18
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data7 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 0, i32 0
  %20 = load i8*, i8** %data7, align 8, !tbaa !70
  %tobool8 = icmp ne i8* %20, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %while.body
  %21 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data10 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i32 0, i32 0
  %22 = load i8*, i8** %data10, align 8, !tbaa !70
  store i8* %22, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end11:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then9, %if.then
  %23 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #13
  %24 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #13
  %25 = load i8*, i8** %retval, align 8
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define dso_local i64 @hash_get_entries(%struct.hash_table* %table, i8** %buffer, i64 %buffer_size) #7 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %buffer.addr = alloca i8**, align 8
  %buffer_size.addr = alloca i64, align 8
  %counter = alloca i64, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8** %buffer, i8*** %buffer.addr, align 8, !tbaa !6
  store i64 %buffer_size, i64* %buffer_size.addr, align 8, !tbaa !13
  %0 = bitcast i64* %counter to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %counter, align 8, !tbaa !13
  %1 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 0
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket1, align 8, !tbaa !68
  store %struct.hash_entry* %4, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %5 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %6 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp = icmp ult %struct.hash_entry* %5, %7
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  %8 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !70
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %for.body
  %10 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  store %struct.hash_entry* %10, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %11 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool3 = icmp ne %struct.hash_entry* %11, null
  br i1 %tobool3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %12 = load i64, i64* %counter, align 8, !tbaa !13
  %13 = load i64, i64* %buffer_size.addr, align 8, !tbaa !13
  %cmp5 = icmp uge i64 %12, %13
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body4
  %14 = load i64, i64* %counter, align 8, !tbaa !13
  store i64 %14, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body4
  %15 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data7 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i32 0, i32 0
  %16 = load i8*, i8** %data7, align 8, !tbaa !70
  %17 = load i8**, i8*** %buffer.addr, align 8, !tbaa !6
  %18 = load i64, i64* %counter, align 8, !tbaa !13
  %inc = add i64 %18, 1
  store i64 %inc, i64* %counter, align 8, !tbaa !13
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %18
  store i8* %16, i8** %arrayidx, align 8, !tbaa !6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 0, i32 1
  %20 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  store %struct.hash_entry* %20, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %if.end8

if.end8:                                          ; preds = %for.end, %for.body
  br label %for.inc9

for.inc9:                                         ; preds = %if.end8
  %21 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %22 = load i64, i64* %counter, align 8, !tbaa !13
  store i64 %22, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end10, %if.then6
  %23 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #13
  %24 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #13
  %25 = bitcast i64* %counter to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #13
  %26 = load i64, i64* %retval, align 8
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define dso_local i64 @hash_do_for_each(%struct.hash_table* %table, i1 (i8*, i8*)* %processor, i8* %processor_data) #7 {
entry:
  %retval = alloca i64, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %processor.addr = alloca i1 (i8*, i8*)*, align 8
  %processor_data.addr = alloca i8*, align 8
  %counter = alloca i64, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i1 (i8*, i8*)* %processor, i1 (i8*, i8*)** %processor.addr, align 8, !tbaa !6
  store i8* %processor_data, i8** %processor_data.addr, align 8, !tbaa !6
  %0 = bitcast i64* %counter to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %counter, align 8, !tbaa !13
  %1 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 0
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket1, align 8, !tbaa !68
  store %struct.hash_entry* %4, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %5 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %6 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp = icmp ult %struct.hash_entry* %5, %7
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %8 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !70
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %for.body
  %10 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  store %struct.hash_entry* %10, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %11 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool3 = icmp ne %struct.hash_entry* %11, null
  br i1 %tobool3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %12 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %processor.addr, align 8, !tbaa !6
  %13 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data5 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %13, i32 0, i32 0
  %14 = load i8*, i8** %data5, align 8, !tbaa !70
  %15 = load i8*, i8** %processor_data.addr, align 8, !tbaa !6
  %call = call zeroext i1 %12(i8* %14, i8* %15)
  br i1 %call, label %if.end, label %if.then6

if.then6:                                         ; preds = %for.body4
  %16 = load i64, i64* %counter, align 8, !tbaa !13
  store i64 %16, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body4
  %17 = load i64, i64* %counter, align 8, !tbaa !13
  %inc = add i64 %17, 1
  store i64 %inc, i64* %counter, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i32 0, i32 1
  %19 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  store %struct.hash_entry* %19, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  br label %if.end7

if.end7:                                          ; preds = %for.end, %for.body
  br label %for.inc8

for.inc8:                                         ; preds = %if.end7
  %20 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %20, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  %21 = load i64, i64* %counter, align 8, !tbaa !13
  store i64 %21, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end9, %if.then6
  %22 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %22) #13
  %23 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %23) #13
  %24 = bitcast i64* %counter to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #13
  %25 = load i64, i64* %retval, align 8
  ret i64 %25
}

; Function Attrs: nounwind readonly uwtable
define dso_local i64 @hash_string(i8* %string, i64 %n_buckets) #10 {
entry:
  %string.addr = alloca i8*, align 8
  %n_buckets.addr = alloca i64, align 8
  %value = alloca i64, align 8
  %ch = alloca i8, align 1
  store i8* %string, i8** %string.addr, align 8, !tbaa !6
  store i64 %n_buckets, i64* %n_buckets.addr, align 8, !tbaa !13
  %0 = bitcast i64* %value to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 0, i64* %value, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0i8(i64 1, i8* %ch) #13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i8*, i8** %string.addr, align 8, !tbaa !6
  %2 = load i8, i8* %1, align 1, !tbaa !15
  store i8 %2, i8* %ch, align 1, !tbaa !15
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %value, align 8, !tbaa !13
  %mul = mul i64 %3, 31
  %4 = load i8, i8* %ch, align 1, !tbaa !15
  %conv = zext i8 %4 to i64
  %add = add i64 %mul, %conv
  %5 = load i64, i64* %n_buckets.addr, align 8, !tbaa !13
  %rem = urem i64 %add, %5
  store i64 %rem, i64* %value, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8*, i8** %string.addr, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 8, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %value, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0i8(i64 1, i8* %ch) #13
  %8 = bitcast i64* %value to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #13
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_reset_tuning(%struct.hash_tuning* %tuning) #7 {
entry:
  %tuning.addr = alloca %struct.hash_tuning*, align 8
  store %struct.hash_tuning* %tuning, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  %0 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  %1 = bitcast %struct.hash_tuning* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast (%struct.hash_tuning* @default_tuning to i8*), i64 20, i1 false), !tbaa.struct !75
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.hash_table* @hash_initialize(i64 %candidate, %struct.hash_tuning* %tuning, i64 (i8*, i64)* %hasher, i1 (i8*, i8*)* %comparator, void (i8*)* %data_freer) #7 {
entry:
  %retval = alloca %struct.hash_table*, align 8
  %candidate.addr = alloca i64, align 8
  %tuning.addr = alloca %struct.hash_tuning*, align 8
  %hasher.addr = alloca i64 (i8*, i64)*, align 8
  %comparator.addr = alloca i1 (i8*, i8*)*, align 8
  %data_freer.addr = alloca void (i8*)*, align 8
  %table = alloca %struct.hash_table*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %candidate, i64* %candidate.addr, align 8, !tbaa !13
  store %struct.hash_tuning* %tuning, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  store i64 (i8*, i64)* %hasher, i64 (i8*, i64)** %hasher.addr, align 8, !tbaa !6
  store i1 (i8*, i8*)* %comparator, i1 (i8*, i8*)** %comparator.addr, align 8, !tbaa !6
  store void (i8*)* %data_freer, void (i8*)** %data_freer.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_table** %table to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i64 (i8*, i64)*, i64 (i8*, i64)** %hasher.addr, align 8, !tbaa !6
  %cmp = icmp eq i64 (i8*, i64)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 (i8*, i64)* @raw_hasher, i64 (i8*, i64)** %hasher.addr, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comparator.addr, align 8, !tbaa !6
  %cmp1 = icmp eq i1 (i8*, i8*)* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i1 (i8*, i8*)* @raw_comparator, i1 (i8*, i8*)** %comparator.addr, align 8, !tbaa !6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %call = call noalias i8* @malloc(i64 80) #13
  %3 = bitcast i8* %call to %struct.hash_table*
  store %struct.hash_table* %3, %struct.hash_table** %table, align 8, !tbaa !6
  %4 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %cmp4 = icmp eq %struct.hash_table* %4, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store %struct.hash_table* null, %struct.hash_table** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %5 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  %tobool = icmp ne %struct.hash_tuning* %5, null
  br i1 %tobool, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end6
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end6
  %6 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  %7 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %tuning9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 5
  store %struct.hash_tuning* %6, %struct.hash_tuning** %tuning9, align 8, !tbaa !78
  %8 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %call10 = call zeroext i1 @check_tuning(%struct.hash_table* %8)
  br i1 %call10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  br label %fail

if.end12:                                         ; preds = %if.end8
  %9 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %10 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  %call13 = call i64 @compute_bucket_size(i64 %9, %struct.hash_tuning* %10) #21
  %11 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %n_buckets = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 2
  store i64 %call13, i64* %n_buckets, align 8, !tbaa !64
  %12 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %n_buckets14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %12, i32 0, i32 2
  %13 = load i64, i64* %n_buckets14, align 8, !tbaa !64
  %tobool15 = icmp ne i64 %13, 0
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end12
  br label %fail

if.end17:                                         ; preds = %if.end12
  %14 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %n_buckets18 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %14, i32 0, i32 2
  %15 = load i64, i64* %n_buckets18, align 8, !tbaa !64
  %call19 = call noalias i8* @calloc(i64 %15, i64 16) #13
  %16 = bitcast i8* %call19 to %struct.hash_entry*
  %17 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %bucket = getelementptr inbounds %struct.hash_table, %struct.hash_table* %17, i32 0, i32 0
  store %struct.hash_entry* %16, %struct.hash_entry** %bucket, align 8, !tbaa !68
  %18 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %bucket20 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %18, i32 0, i32 0
  %19 = load %struct.hash_entry*, %struct.hash_entry** %bucket20, align 8, !tbaa !68
  %cmp21 = icmp eq %struct.hash_entry* %19, null
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  br label %fail

if.end23:                                         ; preds = %if.end17
  %20 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %bucket24 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %20, i32 0, i32 0
  %21 = load %struct.hash_entry*, %struct.hash_entry** %bucket24, align 8, !tbaa !68
  %22 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %n_buckets25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %22, i32 0, i32 2
  %23 = load i64, i64* %n_buckets25, align 8, !tbaa !64
  %add.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i64 %23
  %24 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %24, i32 0, i32 1
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %25 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %n_buckets_used = getelementptr inbounds %struct.hash_table, %struct.hash_table* %25, i32 0, i32 3
  store i64 0, i64* %n_buckets_used, align 8, !tbaa !66
  %26 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %n_entries = getelementptr inbounds %struct.hash_table, %struct.hash_table* %26, i32 0, i32 4
  store i64 0, i64* %n_entries, align 8, !tbaa !67
  %27 = load i64 (i8*, i64)*, i64 (i8*, i64)** %hasher.addr, align 8, !tbaa !6
  %28 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %hasher26 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 6
  store i64 (i8*, i64)* %27, i64 (i8*, i64)** %hasher26, align 8, !tbaa !74
  %29 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comparator.addr, align 8, !tbaa !6
  %30 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %comparator27 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %30, i32 0, i32 7
  store i1 (i8*, i8*)* %29, i1 (i8*, i8*)** %comparator27, align 8, !tbaa !73
  %31 = load void (i8*)*, void (i8*)** %data_freer.addr, align 8, !tbaa !6
  %32 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %data_freer28 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %32, i32 0, i32 8
  store void (i8*)* %31, void (i8*)** %data_freer28, align 8, !tbaa !79
  %33 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %free_entry_list = getelementptr inbounds %struct.hash_table, %struct.hash_table* %33, i32 0, i32 9
  store %struct.hash_entry* null, %struct.hash_entry** %free_entry_list, align 8, !tbaa !80
  %34 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  store %struct.hash_table* %34, %struct.hash_table** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

fail:                                             ; preds = %if.then22, %if.then16, %if.then11
  %35 = load %struct.hash_table*, %struct.hash_table** %table, align 8, !tbaa !6
  %36 = bitcast %struct.hash_table* %35 to i8*
  call void @rpl_free(i8* %36)
  store %struct.hash_table* null, %struct.hash_table** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end23, %if.then5
  %37 = bitcast %struct.hash_table** %table to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #13
  %38 = load %struct.hash_table*, %struct.hash_table** %retval, align 8
  ret %struct.hash_table* %38
}

; Function Attrs: nounwind uwtable
define internal i64 @raw_hasher(i8* %data, i64 %n) #7 {
entry:
  %data.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8, !tbaa !6
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  %0 = bitcast i64* %val to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !6
  %2 = ptrtoint i8* %1 to i64
  %call = call i64 @rotr_sz(i64 %2, i32 3)
  store i64 %call, i64* %val, align 8, !tbaa !13
  %3 = load i64, i64* %val, align 8, !tbaa !13
  %4 = load i64, i64* %n.addr, align 8, !tbaa !13
  %rem = urem i64 %3, %4
  %5 = bitcast i64* %val to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #13
  ret i64 %rem
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @raw_comparator(i8* %a, i8* %b) #7 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8, !tbaa !6
  store i8* %b, i8** %b.addr, align 8, !tbaa !6
  %0 = load i8*, i8** %a.addr, align 8, !tbaa !6
  %1 = load i8*, i8** %b.addr, align 8, !tbaa !6
  %cmp = icmp eq i8* %0, %1
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @check_tuning(%struct.hash_table* %table) #7 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.hash_table*, align 8
  %tuning = alloca %struct.hash_tuning*, align 8
  %epsilon = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_tuning** %tuning to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 5
  %2 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning1, align 8, !tbaa !78
  store %struct.hash_tuning* %2, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %3 = bitcast float* %epsilon to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #13
  %4 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %cmp = icmp eq %struct.hash_tuning* %4, @default_tuning
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  store float 0x3FB99999A0000000, float* %epsilon, align 4, !tbaa !76
  %5 = load float, float* %epsilon, align 4, !tbaa !76
  %6 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %growth_threshold = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %6, i32 0, i32 2
  %7 = load float, float* %growth_threshold, align 4, !tbaa !81
  %cmp2 = fcmp olt float %5, %7
  br i1 %cmp2, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %growth_threshold3 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %8, i32 0, i32 2
  %9 = load float, float* %growth_threshold3, align 4, !tbaa !81
  %10 = load float, float* %epsilon, align 4, !tbaa !76
  %sub = fsub float 1.000000e+00, %10
  %cmp4 = fcmp olt float %9, %sub
  br i1 %cmp4, label %land.lhs.true5, label %if.end22

land.lhs.true5:                                   ; preds = %land.lhs.true
  %11 = load float, float* %epsilon, align 4, !tbaa !76
  %add = fadd float 1.000000e+00, %11
  %12 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %growth_factor = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %12, i32 0, i32 3
  %13 = load float, float* %growth_factor, align 4, !tbaa !83
  %cmp6 = fcmp olt float %add, %13
  br i1 %cmp6, label %land.lhs.true7, label %if.end22

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %14 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %shrink_threshold = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %14, i32 0, i32 0
  %15 = load float, float* %shrink_threshold, align 4, !tbaa !84
  %cmp8 = fcmp ole float 0.000000e+00, %15
  br i1 %cmp8, label %land.lhs.true9, label %if.end22

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %16 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %shrink_threshold10 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %16, i32 0, i32 0
  %17 = load float, float* %shrink_threshold10, align 4, !tbaa !84
  %18 = load float, float* %epsilon, align 4, !tbaa !76
  %add11 = fadd float %17, %18
  %19 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %shrink_factor = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %19, i32 0, i32 1
  %20 = load float, float* %shrink_factor, align 4, !tbaa !85
  %cmp12 = fcmp olt float %add11, %20
  br i1 %cmp12, label %land.lhs.true13, label %if.end22

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %21 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %shrink_factor14 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %21, i32 0, i32 1
  %22 = load float, float* %shrink_factor14, align 4, !tbaa !85
  %cmp15 = fcmp ole float %22, 1.000000e+00
  br i1 %cmp15, label %land.lhs.true16, label %if.end22

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %23 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %shrink_threshold17 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %23, i32 0, i32 0
  %24 = load float, float* %shrink_threshold17, align 4, !tbaa !84
  %25 = load float, float* %epsilon, align 4, !tbaa !76
  %add18 = fadd float %24, %25
  %26 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !6
  %growth_threshold19 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %26, i32 0, i32 2
  %27 = load float, float* %growth_threshold19, align 4, !tbaa !81
  %cmp20 = fcmp olt float %add18, %27
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %land.lhs.true16
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true16, %land.lhs.true13, %land.lhs.true9, %land.lhs.true7, %land.lhs.true5, %land.lhs.true, %if.end
  %28 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning23 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 5
  store %struct.hash_tuning* @default_tuning, %struct.hash_tuning** %tuning23, align 8, !tbaa !78
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then21, %if.then
  %29 = bitcast float* %epsilon to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #13
  %30 = bitcast %struct.hash_tuning** %tuning to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %30) #13
  %31 = load i1, i1* %retval, align 1
  ret i1 %31
}

; Function Attrs: nounwind readonly uwtable
define internal i64 @compute_bucket_size(i64 %candidate, %struct.hash_tuning* %tuning) #10 {
entry:
  %retval = alloca i64, align 8
  %candidate.addr = alloca i64, align 8
  %tuning.addr = alloca %struct.hash_tuning*, align 8
  %new_candidate = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %candidate, i64* %candidate.addr, align 8, !tbaa !13
  store %struct.hash_tuning* %tuning, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  %0 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %0, i32 0, i32 4
  %1 = load i8, i8* %is_n_buckets, align 4, !tbaa !86, !range !16
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %2 = bitcast float* %new_candidate to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #13
  %3 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %conv = uitofp i64 %3 to float
  %4 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning.addr, align 8, !tbaa !6
  %growth_threshold = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %4, i32 0, i32 2
  %5 = load float, float* %growth_threshold, align 4, !tbaa !81
  %div = fdiv float %conv, %5
  store float %div, float* %new_candidate, align 4, !tbaa !76
  %6 = load float, float* %new_candidate, align 4, !tbaa !76
  %cmp = fcmp ole float 0x43F0000000000000, %6
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i64 0, i64* %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = load float, float* %new_candidate, align 4, !tbaa !76
  %conv3 = fptoui float %7 to i64
  store i64 %conv3, i64* %candidate.addr, align 8, !tbaa !13
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2
  %8 = bitcast float* %new_candidate to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end4

if.end4:                                          ; preds = %cleanup.cont, %entry
  %9 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %call = call i64 @next_prime(i64 %9) #22
  store i64 %call, i64* %candidate.addr, align 8, !tbaa !13
  %10 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %cmp5 = icmp ult i64 1152921504606846975, %10
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  store i64 0, i64* %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end4
  %11 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  store i64 %11, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %cleanup
  %12 = load i64, i64* %retval, align 8
  ret i64 %12

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind readnone uwtable
define internal i64 @next_prime(i64 %candidate) #11 {
entry:
  %candidate.addr = alloca i64, align 8
  store i64 %candidate, i64* %candidate.addr, align 8, !tbaa !13
  %0 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 10, i64* %candidate.addr, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %or = or i64 %1, 1
  store i64 %or, i64* %candidate.addr, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %cmp1 = icmp ne i64 -1, %2
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %call = call zeroext i1 @is_prime(i64 %3) #22
  %lnot = xor i1 %call, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %add = add i64 %5, 2
  store i64 %add, i64* %candidate.addr, align 8, !tbaa !13
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  ret i64 %6
}

; Function Attrs: nounwind readnone uwtable
define internal zeroext i1 @is_prime(i64 %candidate) #11 {
entry:
  %candidate.addr = alloca i64, align 8
  %divisor = alloca i64, align 8
  %square = alloca i64, align 8
  store i64 %candidate, i64* %candidate.addr, align 8, !tbaa !13
  %0 = bitcast i64* %divisor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  store i64 3, i64* %divisor, align 8, !tbaa !13
  %1 = bitcast i64* %square to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load i64, i64* %divisor, align 8, !tbaa !13
  %3 = load i64, i64* %divisor, align 8, !tbaa !13
  %mul = mul i64 %2, %3
  store i64 %mul, i64* %square, align 8, !tbaa !13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64, i64* %square, align 8, !tbaa !13
  %5 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %7 = load i64, i64* %divisor, align 8, !tbaa !13
  %rem = urem i64 %6, %7
  %tobool = icmp ne i64 %rem, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i64, i64* %divisor, align 8, !tbaa !13
  %inc = add i64 %9, 1
  store i64 %inc, i64* %divisor, align 8, !tbaa !13
  %10 = load i64, i64* %divisor, align 8, !tbaa !13
  %mul1 = mul i64 4, %10
  %11 = load i64, i64* %square, align 8, !tbaa !13
  %add = add i64 %11, %mul1
  store i64 %add, i64* %square, align 8, !tbaa !13
  %12 = load i64, i64* %divisor, align 8, !tbaa !13
  %inc2 = add i64 %12, 1
  store i64 %inc2, i64* %divisor, align 8, !tbaa !13
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %14 = load i64, i64* %divisor, align 8, !tbaa !13
  %rem3 = urem i64 %13, %14
  %tobool4 = icmp ne i64 %rem3, 0
  %15 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, i32 1, i32 0
  %tobool5 = icmp ne i32 %cond, 0
  %16 = bitcast i64* %square to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #13
  %17 = bitcast i64* %divisor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #13
  ret i1 %tobool5
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_clear(%struct.hash_table* %table) #7 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %next = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 0
  %2 = load %struct.hash_entry*, %struct.hash_entry** %bucket1, align 8, !tbaa !68
  store %struct.hash_entry* %2, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %3 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %4 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 1
  %5 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp = icmp ult %struct.hash_entry* %3, %5
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %6 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !70
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %if.then, label %if.end22

if.then:                                          ; preds = %for.body
  %8 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #13
  %9 = bitcast %struct.hash_entry** %next to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #13
  %10 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next2 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %10, i32 0, i32 1
  %11 = load %struct.hash_entry*, %struct.hash_entry** %next2, align 8, !tbaa !72
  store %struct.hash_entry* %11, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %12 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool4 = icmp ne %struct.hash_entry* %12, null
  br i1 %tobool4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %13 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %data_freer = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 8
  %14 = load void (i8*)*, void (i8*)** %data_freer, align 8, !tbaa !79
  %tobool6 = icmp ne void (i8*)* %14, null
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body5
  %15 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %data_freer8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %15, i32 0, i32 8
  %16 = load void (i8*)*, void (i8*)** %data_freer8, align 8, !tbaa !79
  %17 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data9 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i32 0, i32 0
  %18 = load i8*, i8** %data9, align 8, !tbaa !70
  call void %16(i8* %18)
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body5
  %19 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data10 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 0, i32 0
  store i8* null, i8** %data10, align 8, !tbaa !70
  %20 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next11 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %20, i32 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %next11, align 8, !tbaa !72
  store %struct.hash_entry* %21, %struct.hash_entry** %next, align 8, !tbaa !6
  %22 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list = getelementptr inbounds %struct.hash_table, %struct.hash_table* %22, i32 0, i32 9
  %23 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list, align 8, !tbaa !80
  %24 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next12 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i32 0, i32 1
  store %struct.hash_entry* %23, %struct.hash_entry** %next12, align 8, !tbaa !72
  %25 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %26 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %26, i32 0, i32 9
  store %struct.hash_entry* %25, %struct.hash_entry** %free_entry_list13, align 8, !tbaa !80
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !6
  store %struct.hash_entry* %27, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond3

for.end:                                          ; preds = %for.cond3
  %28 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %data_freer14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 8
  %29 = load void (i8*)*, void (i8*)** %data_freer14, align 8, !tbaa !79
  %tobool15 = icmp ne void (i8*)* %29, null
  br i1 %tobool15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %for.end
  %30 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %data_freer17 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %30, i32 0, i32 8
  %31 = load void (i8*)*, void (i8*)** %data_freer17, align 8, !tbaa !79
  %32 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i32 0, i32 0
  %33 = load i8*, i8** %data18, align 8, !tbaa !70
  call void %31(i8* %33)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %for.end
  %34 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i32 0, i32 0
  store i8* null, i8** %data20, align 8, !tbaa !70
  %35 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next21 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i32 0, i32 1
  store %struct.hash_entry* null, %struct.hash_entry** %next21, align 8, !tbaa !72
  %36 = bitcast %struct.hash_entry** %next to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36) #13
  %37 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #13
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %for.body
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %38 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %38, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.end24:                                        ; preds = %for.cond
  %39 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used = getelementptr inbounds %struct.hash_table, %struct.hash_table* %39, i32 0, i32 3
  store i64 0, i64* %n_buckets_used, align 8, !tbaa !66
  %40 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_entries = getelementptr inbounds %struct.hash_table, %struct.hash_table* %40, i32 0, i32 4
  store i64 0, i64* %n_entries, align 8, !tbaa !67
  %41 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hash_free(%struct.hash_table* %table) #7 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %next = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = bitcast %struct.hash_entry** %next to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %data_freer = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 8
  %4 = load void (i8*)*, void (i8*)** %data_freer, align 8, !tbaa !79
  %tobool = icmp ne void (i8*)* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_entries = getelementptr inbounds %struct.hash_table, %struct.hash_table* %5, i32 0, i32 4
  %6 = load i64, i64* %n_entries, align 8, !tbaa !67
  %tobool1 = icmp ne i64 %6, 0
  br i1 %tobool1, label %if.then, label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 0
  %8 = load %struct.hash_entry*, %struct.hash_entry** %bucket2, align 8, !tbaa !68
  store %struct.hash_entry* %8, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %if.then
  %9 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %10 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %10, i32 0, i32 1
  %11 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp = icmp ult %struct.hash_entry* %9, %11
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %12 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8, !tbaa !70
  %tobool3 = icmp ne i8* %13, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %14 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  store %struct.hash_entry* %14, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.then4
  %15 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool6 = icmp ne %struct.hash_entry* %15, null
  br i1 %tobool6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %16 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %data_freer8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 8
  %17 = load void (i8*)*, void (i8*)** %data_freer8, align 8, !tbaa !79
  %18 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data9 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i32 0, i32 0
  %19 = load i8*, i8** %data9, align 8, !tbaa !70
  call void %17(i8* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %20 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next10 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %20, i32 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %next10, align 8, !tbaa !72
  store %struct.hash_entry* %21, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc11

for.inc11:                                        ; preds = %if.end
  %22 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %22, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.end12:                                        ; preds = %for.cond
  br label %if.end13

if.end13:                                         ; preds = %for.end12, %land.lhs.true, %entry
  %23 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %23, i32 0, i32 0
  %24 = load %struct.hash_entry*, %struct.hash_entry** %bucket14, align 8, !tbaa !68
  store %struct.hash_entry* %24, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %if.end13
  %25 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %26 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %26, i32 0, i32 1
  %27 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit16, align 8, !tbaa !69
  %cmp17 = icmp ult %struct.hash_entry* %25, %27
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond15
  %28 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next19 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %28, i32 0, i32 1
  %29 = load %struct.hash_entry*, %struct.hash_entry** %next19, align 8, !tbaa !72
  store %struct.hash_entry* %29, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc24, %for.body18
  %30 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool21 = icmp ne %struct.hash_entry* %30, null
  br i1 %tobool21, label %for.body22, label %for.end25

for.body22:                                       ; preds = %for.cond20
  %31 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next23 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %31, i32 0, i32 1
  %32 = load %struct.hash_entry*, %struct.hash_entry** %next23, align 8, !tbaa !72
  store %struct.hash_entry* %32, %struct.hash_entry** %next, align 8, !tbaa !6
  %33 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %34 = bitcast %struct.hash_entry* %33 to i8*
  call void @rpl_free(i8* %34)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body22
  %35 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !6
  store %struct.hash_entry* %35, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond20

for.end25:                                        ; preds = %for.cond20
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %36 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr27 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %36, i32 1
  store %struct.hash_entry* %incdec.ptr27, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond15

for.end28:                                        ; preds = %for.cond15
  %37 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list = getelementptr inbounds %struct.hash_table, %struct.hash_table* %37, i32 0, i32 9
  %38 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list, align 8, !tbaa !80
  store %struct.hash_entry* %38, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc33, %for.end28
  %39 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool30 = icmp ne %struct.hash_entry* %39, null
  br i1 %tobool30, label %for.body31, label %for.end34

for.body31:                                       ; preds = %for.cond29
  %40 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %40, i32 0, i32 1
  %41 = load %struct.hash_entry*, %struct.hash_entry** %next32, align 8, !tbaa !72
  store %struct.hash_entry* %41, %struct.hash_entry** %next, align 8, !tbaa !6
  %42 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %43 = bitcast %struct.hash_entry* %42 to i8*
  call void @rpl_free(i8* %43)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body31
  %44 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !6
  store %struct.hash_entry* %44, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond29

for.end34:                                        ; preds = %for.cond29
  %45 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %45, i32 0, i32 0
  %46 = load %struct.hash_entry*, %struct.hash_entry** %bucket35, align 8, !tbaa !68
  %47 = bitcast %struct.hash_entry* %46 to i8*
  call void @rpl_free(i8* %47)
  %48 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %49 = bitcast %struct.hash_table* %48 to i8*
  call void @rpl_free(i8* %49)
  %50 = bitcast %struct.hash_entry** %next to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %50) #13
  %51 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #13
  %52 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hash_rehash(%struct.hash_table* %table, i64 %candidate) #7 {
entry:
  %retval = alloca i1, align 1
  %table.addr = alloca %struct.hash_table*, align 8
  %candidate.addr = alloca i64, align 8
  %storage = alloca %struct.hash_table, align 8
  %new_table = alloca %struct.hash_table*, align 8
  %new_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i64 %candidate, i64* %candidate.addr, align 8, !tbaa !13
  %0 = bitcast %struct.hash_table* %storage to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %0) #13
  %1 = bitcast %struct.hash_table** %new_table to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load i64, i64* %candidate.addr, align 8, !tbaa !13
  %4 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning = getelementptr inbounds %struct.hash_table, %struct.hash_table* %4, i32 0, i32 5
  %5 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !78
  %call = call i64 @compute_bucket_size(i64 %3, %struct.hash_tuning* %5) #21
  store i64 %call, i64* %new_size, align 8, !tbaa !13
  %6 = load i64, i64* %new_size, align 8, !tbaa !13
  %tobool = icmp ne i64 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %new_size, align 8, !tbaa !13
  %8 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets = getelementptr inbounds %struct.hash_table, %struct.hash_table* %8, i32 0, i32 2
  %9 = load i64, i64* %n_buckets, align 8, !tbaa !64
  %cmp = icmp eq i64 %7, %9
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  store %struct.hash_table* %storage, %struct.hash_table** %new_table, align 8, !tbaa !6
  %10 = load i64, i64* %new_size, align 8, !tbaa !13
  %call3 = call noalias i8* @calloc(i64 %10, i64 16) #13
  %11 = bitcast i8* %call3 to %struct.hash_entry*
  %12 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %bucket = getelementptr inbounds %struct.hash_table, %struct.hash_table* %12, i32 0, i32 0
  store %struct.hash_entry* %11, %struct.hash_entry** %bucket, align 8, !tbaa !68
  %13 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %bucket4 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 0
  %14 = load %struct.hash_entry*, %struct.hash_entry** %bucket4, align 8, !tbaa !68
  %cmp5 = icmp eq %struct.hash_entry* %14, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end2
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %15 = load i64, i64* %new_size, align 8, !tbaa !13
  %16 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %n_buckets8 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 2
  store i64 %15, i64* %n_buckets8, align 8, !tbaa !64
  %17 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %bucket9 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %17, i32 0, i32 0
  %18 = load %struct.hash_entry*, %struct.hash_entry** %bucket9, align 8, !tbaa !68
  %19 = load i64, i64* %new_size, align 8, !tbaa !13
  %add.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %18, i64 %19
  %20 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %20, i32 0, i32 1
  store %struct.hash_entry* %add.ptr, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %21 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %n_buckets_used = getelementptr inbounds %struct.hash_table, %struct.hash_table* %21, i32 0, i32 3
  store i64 0, i64* %n_buckets_used, align 8, !tbaa !66
  %22 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %n_entries = getelementptr inbounds %struct.hash_table, %struct.hash_table* %22, i32 0, i32 4
  store i64 0, i64* %n_entries, align 8, !tbaa !67
  %23 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning10 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %23, i32 0, i32 5
  %24 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning10, align 8, !tbaa !78
  %25 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %tuning11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %25, i32 0, i32 5
  store %struct.hash_tuning* %24, %struct.hash_tuning** %tuning11, align 8, !tbaa !78
  %26 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %hasher = getelementptr inbounds %struct.hash_table, %struct.hash_table* %26, i32 0, i32 6
  %27 = load i64 (i8*, i64)*, i64 (i8*, i64)** %hasher, align 8, !tbaa !74
  %28 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %hasher12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 6
  store i64 (i8*, i64)* %27, i64 (i8*, i64)** %hasher12, align 8, !tbaa !74
  %29 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %comparator = getelementptr inbounds %struct.hash_table, %struct.hash_table* %29, i32 0, i32 7
  %30 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comparator, align 8, !tbaa !73
  %31 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %comparator13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %31, i32 0, i32 7
  store i1 (i8*, i8*)* %30, i1 (i8*, i8*)** %comparator13, align 8, !tbaa !73
  %32 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %data_freer = getelementptr inbounds %struct.hash_table, %struct.hash_table* %32, i32 0, i32 8
  %33 = load void (i8*)*, void (i8*)** %data_freer, align 8, !tbaa !79
  %34 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %data_freer14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %34, i32 0, i32 8
  store void (i8*)* %33, void (i8*)** %data_freer14, align 8, !tbaa !79
  %35 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list = getelementptr inbounds %struct.hash_table, %struct.hash_table* %35, i32 0, i32 9
  %36 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list, align 8, !tbaa !80
  %37 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %free_entry_list15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %37, i32 0, i32 9
  store %struct.hash_entry* %36, %struct.hash_entry** %free_entry_list15, align 8, !tbaa !80
  %38 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %39 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %call16 = call zeroext i1 @transfer_entries(%struct.hash_table* %38, %struct.hash_table* %39, i1 zeroext false)
  br i1 %call16, label %if.then17, label %if.end29

if.then17:                                        ; preds = %if.end7
  %40 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket18 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %40, i32 0, i32 0
  %41 = load %struct.hash_entry*, %struct.hash_entry** %bucket18, align 8, !tbaa !68
  %42 = bitcast %struct.hash_entry* %41 to i8*
  call void @rpl_free(i8* %42)
  %43 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %bucket19 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %43, i32 0, i32 0
  %44 = load %struct.hash_entry*, %struct.hash_entry** %bucket19, align 8, !tbaa !68
  %45 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket20 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %45, i32 0, i32 0
  store %struct.hash_entry* %44, %struct.hash_entry** %bucket20, align 8, !tbaa !68
  %46 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %bucket_limit21 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %46, i32 0, i32 1
  %47 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit21, align 8, !tbaa !69
  %48 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %bucket_limit22 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %48, i32 0, i32 1
  store %struct.hash_entry* %47, %struct.hash_entry** %bucket_limit22, align 8, !tbaa !69
  %49 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %n_buckets23 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %49, i32 0, i32 2
  %50 = load i64, i64* %n_buckets23, align 8, !tbaa !64
  %51 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets24 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %51, i32 0, i32 2
  store i64 %50, i64* %n_buckets24, align 8, !tbaa !64
  %52 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %n_buckets_used25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %52, i32 0, i32 3
  %53 = load i64, i64* %n_buckets_used25, align 8, !tbaa !66
  %54 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used26 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %54, i32 0, i32 3
  store i64 %53, i64* %n_buckets_used26, align 8, !tbaa !66
  %55 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %free_entry_list27 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %55, i32 0, i32 9
  %56 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list27, align 8, !tbaa !80
  %57 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list28 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %57, i32 0, i32 9
  store %struct.hash_entry* %56, %struct.hash_entry** %free_entry_list28, align 8, !tbaa !80
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end7
  %58 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %free_entry_list30 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %58, i32 0, i32 9
  %59 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list30, align 8, !tbaa !80
  %60 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list31 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %60, i32 0, i32 9
  store %struct.hash_entry* %59, %struct.hash_entry** %free_entry_list31, align 8, !tbaa !80
  %61 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %62 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %call32 = call zeroext i1 @transfer_entries(%struct.hash_table* %61, %struct.hash_table* %62, i1 zeroext true)
  br i1 %call32, label %land.lhs.true, label %if.then34

land.lhs.true:                                    ; preds = %if.end29
  %63 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %64 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %call33 = call zeroext i1 @transfer_entries(%struct.hash_table* %63, %struct.hash_table* %64, i1 zeroext false)
  br i1 %call33, label %if.end35, label %if.then34

if.then34:                                        ; preds = %land.lhs.true, %if.end29
  call void @abort() #20
  unreachable

if.end35:                                         ; preds = %land.lhs.true
  %65 = load %struct.hash_table*, %struct.hash_table** %new_table, align 8, !tbaa !6
  %bucket36 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %65, i32 0, i32 0
  %66 = load %struct.hash_entry*, %struct.hash_entry** %bucket36, align 8, !tbaa !68
  %67 = bitcast %struct.hash_entry* %66 to i8*
  call void @rpl_free(i8* %67)
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then17, %if.then6, %if.then1, %if.then
  %68 = bitcast i64* %new_size to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #13
  %69 = bitcast %struct.hash_table** %new_table to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %69) #13
  %70 = bitcast %struct.hash_table* %storage to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %70) #13
  %71 = load i1, i1* %retval, align 1
  ret i1 %71
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @transfer_entries(%struct.hash_table* %dst, %struct.hash_table* %src, i1 zeroext %safe) #7 {
entry:
  %retval = alloca i1, align 1
  %dst.addr = alloca %struct.hash_table*, align 8
  %src.addr = alloca %struct.hash_table*, align 8
  %safe.addr = alloca i8, align 1
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %next = alloca %struct.hash_entry*, align 8
  %data2 = alloca i8*, align 8
  %new_bucket = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %new_entry = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %dst, %struct.hash_table** %dst.addr, align 8, !tbaa !6
  store %struct.hash_table* %src, %struct.hash_table** %src.addr, align 8, !tbaa !6
  %frombool = zext i1 %safe to i8
  store i8 %frombool, i8* %safe.addr, align 1, !tbaa !11
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = bitcast %struct.hash_entry** %next to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #13
  %3 = load %struct.hash_table*, %struct.hash_table** %src.addr, align 8, !tbaa !6
  %bucket1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 0
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket1, align 8, !tbaa !68
  store %struct.hash_entry* %4, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %5 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %6 = load %struct.hash_table*, %struct.hash_table** %src.addr, align 8, !tbaa !6
  %bucket_limit = getelementptr inbounds %struct.hash_table, %struct.hash_table* %6, i32 0, i32 1
  %7 = load %struct.hash_entry*, %struct.hash_entry** %bucket_limit, align 8, !tbaa !69
  %cmp = icmp ult %struct.hash_entry* %5, %7
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %8 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8, !tbaa !70
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then, label %if.end44

if.then:                                          ; preds = %for.body
  %10 = bitcast i8** %data2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #13
  %11 = bitcast %struct.hash_entry** %new_bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #13
  %12 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next3 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %12, i32 0, i32 1
  %13 = load %struct.hash_entry*, %struct.hash_entry** %next3, align 8, !tbaa !72
  store %struct.hash_entry* %13, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %if.then
  %14 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool5 = icmp ne %struct.hash_entry* %14, null
  br i1 %tobool5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %15 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %data7 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %15, i32 0, i32 0
  %16 = load i8*, i8** %data7, align 8, !tbaa !70
  store i8* %16, i8** %data2, align 8, !tbaa !6
  %17 = load %struct.hash_table*, %struct.hash_table** %dst.addr, align 8, !tbaa !6
  %18 = load i8*, i8** %data2, align 8, !tbaa !6
  %call = call %struct.hash_entry* @safe_hasher(%struct.hash_table* %17, i8* %18)
  store %struct.hash_entry* %call, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %19 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next8 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %19, i32 0, i32 1
  %20 = load %struct.hash_entry*, %struct.hash_entry** %next8, align 8, !tbaa !72
  store %struct.hash_entry* %20, %struct.hash_entry** %next, align 8, !tbaa !6
  %21 = load %struct.hash_entry*, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %data9 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %21, i32 0, i32 0
  %22 = load i8*, i8** %data9, align 8, !tbaa !70
  %tobool10 = icmp ne i8* %22, null
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body6
  %23 = load %struct.hash_entry*, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %next12 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i32 0, i32 1
  %24 = load %struct.hash_entry*, %struct.hash_entry** %next12, align 8, !tbaa !72
  %25 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i32 0, i32 1
  store %struct.hash_entry* %24, %struct.hash_entry** %next13, align 8, !tbaa !72
  %26 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %27 = load %struct.hash_entry*, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %next14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i32 0, i32 1
  store %struct.hash_entry* %26, %struct.hash_entry** %next14, align 8, !tbaa !72
  br label %if.end

if.else:                                          ; preds = %for.body6
  %28 = load i8*, i8** %data2, align 8, !tbaa !6
  %29 = load %struct.hash_entry*, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %data15 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %29, i32 0, i32 0
  store i8* %28, i8** %data15, align 8, !tbaa !70
  %30 = load %struct.hash_table*, %struct.hash_table** %dst.addr, align 8, !tbaa !6
  %n_buckets_used = getelementptr inbounds %struct.hash_table, %struct.hash_table* %30, i32 0, i32 3
  %31 = load i64, i64* %n_buckets_used, align 8, !tbaa !66
  %inc = add i64 %31, 1
  store i64 %inc, i64* %n_buckets_used, align 8, !tbaa !66
  %32 = load %struct.hash_table*, %struct.hash_table** %dst.addr, align 8, !tbaa !6
  %33 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  call void @free_entry(%struct.hash_table* %32, %struct.hash_entry* %33)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %34 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !6
  store %struct.hash_entry* %34, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond4

for.end:                                          ; preds = %for.cond4
  %35 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data16 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %35, i32 0, i32 0
  %36 = load i8*, i8** %data16, align 8, !tbaa !70
  store i8* %36, i8** %data2, align 8, !tbaa !6
  %37 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next17 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %37, i32 0, i32 1
  store %struct.hash_entry* null, %struct.hash_entry** %next17, align 8, !tbaa !72
  %38 = load i8, i8* %safe.addr, align 1, !tbaa !11, !range !16
  %tobool18 = trunc i8 %38 to i1
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %for.end
  store i32 4, i32* %cleanup.dest.slot, align 4
  br label %cleanup40

if.end20:                                         ; preds = %for.end
  %39 = load %struct.hash_table*, %struct.hash_table** %dst.addr, align 8, !tbaa !6
  %40 = load i8*, i8** %data2, align 8, !tbaa !6
  %call21 = call %struct.hash_entry* @safe_hasher(%struct.hash_table* %39, i8* %40)
  store %struct.hash_entry* %call21, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %41 = load %struct.hash_entry*, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %data22 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %41, i32 0, i32 0
  %42 = load i8*, i8** %data22, align 8, !tbaa !70
  %tobool23 = icmp ne i8* %42, null
  br i1 %tobool23, label %if.then24, label %if.else33

if.then24:                                        ; preds = %if.end20
  %43 = bitcast %struct.hash_entry** %new_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %43) #13
  %44 = load %struct.hash_table*, %struct.hash_table** %dst.addr, align 8, !tbaa !6
  %call25 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* %44)
  store %struct.hash_entry* %call25, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %45 = load %struct.hash_entry*, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %cmp26 = icmp eq %struct.hash_entry* %45, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  store i1 false, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  %46 = load i8*, i8** %data2, align 8, !tbaa !6
  %47 = load %struct.hash_entry*, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %data29 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %47, i32 0, i32 0
  store i8* %46, i8** %data29, align 8, !tbaa !70
  %48 = load %struct.hash_entry*, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %next30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %48, i32 0, i32 1
  %49 = load %struct.hash_entry*, %struct.hash_entry** %next30, align 8, !tbaa !72
  %50 = load %struct.hash_entry*, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %next31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %50, i32 0, i32 1
  store %struct.hash_entry* %49, %struct.hash_entry** %next31, align 8, !tbaa !72
  %51 = load %struct.hash_entry*, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %52 = load %struct.hash_entry*, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %next32 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i32 0, i32 1
  store %struct.hash_entry* %51, %struct.hash_entry** %next32, align 8, !tbaa !72
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then27
  %53 = bitcast %struct.hash_entry** %new_entry to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup40 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end37

if.else33:                                        ; preds = %if.end20
  %54 = load i8*, i8** %data2, align 8, !tbaa !6
  %55 = load %struct.hash_entry*, %struct.hash_entry** %new_bucket, align 8, !tbaa !6
  %data34 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i32 0, i32 0
  store i8* %54, i8** %data34, align 8, !tbaa !70
  %56 = load %struct.hash_table*, %struct.hash_table** %dst.addr, align 8, !tbaa !6
  %n_buckets_used35 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %56, i32 0, i32 3
  %57 = load i64, i64* %n_buckets_used35, align 8, !tbaa !66
  %inc36 = add i64 %57, 1
  store i64 %inc36, i64* %n_buckets_used35, align 8, !tbaa !66
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %cleanup.cont
  %58 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i32 0, i32 0
  store i8* null, i8** %data38, align 8, !tbaa !70
  %59 = load %struct.hash_table*, %struct.hash_table** %src.addr, align 8, !tbaa !6
  %n_buckets_used39 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %59, i32 0, i32 3
  %60 = load i64, i64* %n_buckets_used39, align 8, !tbaa !66
  %dec = add i64 %60, -1
  store i64 %dec, i64* %n_buckets_used39, align 8, !tbaa !66
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup40

cleanup40:                                        ; preds = %if.end37, %cleanup, %if.then19
  %61 = bitcast %struct.hash_entry** %new_bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #13
  %62 = bitcast i8** %data2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #13
  %cleanup.dest42 = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest42, label %cleanup47 [
    i32 0, label %cleanup.cont43
    i32 4, label %for.inc45
  ]

cleanup.cont43:                                   ; preds = %cleanup40
  br label %if.end44

if.end44:                                         ; preds = %cleanup.cont43, %for.body
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44, %cleanup40
  %63 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %incdec.ptr = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %63, i32 1
  store %struct.hash_entry* %incdec.ptr, %struct.hash_entry** %bucket, align 8, !tbaa !6
  br label %for.cond

for.end46:                                        ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup47

cleanup47:                                        ; preds = %for.end46, %cleanup40
  %64 = bitcast %struct.hash_entry** %next to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64) #13
  %65 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65) #13
  %66 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #13
  %67 = load i1, i1* %retval, align 1
  ret i1 %67
}

; Function Attrs: nounwind uwtable
define internal void @free_entry(%struct.hash_table* %table, %struct.hash_entry* %entry1) #7 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store %struct.hash_entry* %entry1, %struct.hash_entry** %entry.addr, align 8, !tbaa !6
  %0 = load %struct.hash_entry*, %struct.hash_entry** %entry.addr, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %0, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !70
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 9
  %2 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list, align 8, !tbaa !80
  %3 = load %struct.hash_entry*, %struct.hash_entry** %entry.addr, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %3, i32 0, i32 1
  store %struct.hash_entry* %2, %struct.hash_entry** %next, align 8, !tbaa !72
  %4 = load %struct.hash_entry*, %struct.hash_entry** %entry.addr, align 8, !tbaa !6
  %5 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %5, i32 0, i32 9
  store %struct.hash_entry* %4, %struct.hash_entry** %free_entry_list2, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.hash_entry* @allocate_entry(%struct.hash_table* %table) #7 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %new = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %0 = bitcast %struct.hash_entry** %new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list = getelementptr inbounds %struct.hash_table, %struct.hash_table* %1, i32 0, i32 9
  %2 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list, align 8, !tbaa !80
  %tobool = icmp ne %struct.hash_entry* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list1 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %3, i32 0, i32 9
  %4 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list1, align 8, !tbaa !80
  store %struct.hash_entry* %4, %struct.hash_entry** %new, align 8, !tbaa !6
  %5 = load %struct.hash_entry*, %struct.hash_entry** %new, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %5, i32 0, i32 1
  %6 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  %7 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list2 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %7, i32 0, i32 9
  store %struct.hash_entry* %6, %struct.hash_entry** %free_entry_list2, align 8, !tbaa !80
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #13
  %8 = bitcast i8* %call to %struct.hash_entry*
  store %struct.hash_entry* %8, %struct.hash_entry** %new, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.hash_entry*, %struct.hash_entry** %new, align 8, !tbaa !6
  %10 = bitcast %struct.hash_entry** %new to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #13
  ret %struct.hash_entry* %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @hash_insert_if_absent(%struct.hash_table* %table, i8* %entry1, i8** %matched_ent) #7 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %matched_ent.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tuning22 = alloca %struct.hash_tuning*, align 8
  %candidate = alloca float, align 4
  %new_entry = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8* %entry1, i8** %entry.addr, align 8, !tbaa !6
  store i8** %matched_ent, i8*** %matched_ent.addr, align 8, !tbaa !6
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #20
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %4 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %call = call i8* @hash_find_entry(%struct.hash_table* %3, i8* %4, %struct.hash_entry** %bucket, i1 zeroext false)
  store i8* %call, i8** %data, align 8, !tbaa !6
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %5 = load i8**, i8*** %matched_ent.addr, align 8, !tbaa !6
  %tobool3 = icmp ne i8** %5, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  %6 = load i8*, i8** %data, align 8, !tbaa !6
  %7 = load i8**, i8*** %matched_ent.addr, align 8, !tbaa !6
  store i8* %6, i8** %7, align 8, !tbaa !6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup69

if.end6:                                          ; preds = %if.end
  %8 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used = getelementptr inbounds %struct.hash_table, %struct.hash_table* %8, i32 0, i32 3
  %9 = load i64, i64* %n_buckets_used, align 8, !tbaa !66
  %conv = uitofp i64 %9 to float
  %10 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning = getelementptr inbounds %struct.hash_table, %struct.hash_table* %10, i32 0, i32 5
  %11 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !78
  %growth_threshold = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %11, i32 0, i32 2
  %12 = load float, float* %growth_threshold, align 4, !tbaa !81
  %13 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 2
  %14 = load i64, i64* %n_buckets, align 8, !tbaa !64
  %conv7 = uitofp i64 %14 to float
  %mul = fmul float %12, %conv7
  %cmp8 = fcmp ogt float %conv, %mul
  br i1 %cmp8, label %if.then10, label %if.end50

if.then10:                                        ; preds = %if.end6
  %15 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %call11 = call zeroext i1 @check_tuning(%struct.hash_table* %15)
  %16 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used12 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 3
  %17 = load i64, i64* %n_buckets_used12, align 8, !tbaa !66
  %conv13 = uitofp i64 %17 to float
  %18 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning14 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %18, i32 0, i32 5
  %19 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning14, align 8, !tbaa !78
  %growth_threshold15 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %19, i32 0, i32 2
  %20 = load float, float* %growth_threshold15, align 4, !tbaa !81
  %21 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets16 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %21, i32 0, i32 2
  %22 = load i64, i64* %n_buckets16, align 8, !tbaa !64
  %conv17 = uitofp i64 %22 to float
  %mul18 = fmul float %20, %conv17
  %cmp19 = fcmp ogt float %conv13, %mul18
  br i1 %cmp19, label %if.then21, label %if.end49

if.then21:                                        ; preds = %if.then10
  %23 = bitcast %struct.hash_tuning** %tuning22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %23) #13
  %24 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning23 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %24, i32 0, i32 5
  %25 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning23, align 8, !tbaa !78
  store %struct.hash_tuning* %25, %struct.hash_tuning** %tuning22, align 8, !tbaa !6
  %26 = bitcast float* %candidate to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #13
  %27 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning22, align 8, !tbaa !6
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %27, i32 0, i32 4
  %28 = load i8, i8* %is_n_buckets, align 4, !tbaa !86, !range !16
  %tobool24 = trunc i8 %28 to i1
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then21
  %29 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets26 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %29, i32 0, i32 2
  %30 = load i64, i64* %n_buckets26, align 8, !tbaa !64
  %conv27 = uitofp i64 %30 to float
  %31 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning22, align 8, !tbaa !6
  %growth_factor = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %31, i32 0, i32 3
  %32 = load float, float* %growth_factor, align 4, !tbaa !83
  %mul28 = fmul float %conv27, %32
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  %33 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %33, i32 0, i32 2
  %34 = load i64, i64* %n_buckets29, align 8, !tbaa !64
  %conv30 = uitofp i64 %34 to float
  %35 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning22, align 8, !tbaa !6
  %growth_factor31 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %35, i32 0, i32 3
  %36 = load float, float* %growth_factor31, align 4, !tbaa !83
  %mul32 = fmul float %conv30, %36
  %37 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning22, align 8, !tbaa !6
  %growth_threshold33 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %37, i32 0, i32 2
  %38 = load float, float* %growth_threshold33, align 4, !tbaa !81
  %mul34 = fmul float %mul32, %38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %mul28, %cond.true ], [ %mul34, %cond.false ]
  store float %cond, float* %candidate, align 4, !tbaa !76
  %39 = load float, float* %candidate, align 4, !tbaa !76
  %cmp35 = fcmp ole float 0x43F0000000000000, %39
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %cond.end
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end38:                                         ; preds = %cond.end
  %40 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %41 = load float, float* %candidate, align 4, !tbaa !76
  %conv39 = fptoui float %41 to i64
  %call40 = call zeroext i1 @hash_rehash(%struct.hash_table* %40, i64 %conv39)
  br i1 %call40, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %42 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %43 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %call43 = call i8* @hash_find_entry(%struct.hash_table* %42, i8* %43, %struct.hash_entry** %bucket, i1 zeroext false)
  %cmp44 = icmp ne i8* %call43, null
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end42
  call void @abort() #20
  unreachable

if.end47:                                         ; preds = %if.end42
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then41, %if.then37
  %44 = bitcast float* %candidate to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #13
  %45 = bitcast %struct.hash_tuning** %tuning22 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #13
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end49

if.end49:                                         ; preds = %cleanup.cont, %if.then10
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end6
  %46 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data51 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %46, i32 0, i32 0
  %47 = load i8*, i8** %data51, align 8, !tbaa !70
  %tobool52 = icmp ne i8* %47, null
  br i1 %tobool52, label %if.then53, label %if.end63

if.then53:                                        ; preds = %if.end50
  %48 = bitcast %struct.hash_entry** %new_entry to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %48) #13
  %49 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %call54 = call %struct.hash_entry* @allocate_entry(%struct.hash_table* %49)
  store %struct.hash_entry* %call54, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %50 = load %struct.hash_entry*, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %cmp55 = icmp eq %struct.hash_entry* %50, null
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.then53
  store i32 -1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup62

if.end58:                                         ; preds = %if.then53
  %51 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %52 = load %struct.hash_entry*, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %data59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %52, i32 0, i32 0
  store i8* %51, i8** %data59, align 8, !tbaa !70
  %53 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %53, i32 0, i32 1
  %54 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  %55 = load %struct.hash_entry*, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %next60 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %55, i32 0, i32 1
  store %struct.hash_entry* %54, %struct.hash_entry** %next60, align 8, !tbaa !72
  %56 = load %struct.hash_entry*, %struct.hash_entry** %new_entry, align 8, !tbaa !6
  %57 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next61 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %57, i32 0, i32 1
  store %struct.hash_entry* %56, %struct.hash_entry** %next61, align 8, !tbaa !72
  %58 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_entries = getelementptr inbounds %struct.hash_table, %struct.hash_table* %58, i32 0, i32 4
  %59 = load i64, i64* %n_entries, align 8, !tbaa !67
  %inc = add i64 %59, 1
  store i64 %inc, i64* %n_entries, align 8, !tbaa !67
  store i32 1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup62

cleanup62:                                        ; preds = %if.end58, %if.then57
  %60 = bitcast %struct.hash_entry** %new_entry to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %60) #13
  br label %cleanup69

if.end63:                                         ; preds = %if.end50
  %61 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %62 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data64 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %62, i32 0, i32 0
  store i8* %61, i8** %data64, align 8, !tbaa !70
  %63 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_entries65 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %63, i32 0, i32 4
  %64 = load i64, i64* %n_entries65, align 8, !tbaa !67
  %inc66 = add i64 %64, 1
  store i64 %inc66, i64* %n_entries65, align 8, !tbaa !67
  %65 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %65, i32 0, i32 3
  %66 = load i64, i64* %n_buckets_used67, align 8, !tbaa !66
  %inc68 = add i64 %66, 1
  store i64 %inc68, i64* %n_buckets_used67, align 8, !tbaa !66
  store i32 1, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup69

cleanup69:                                        ; preds = %if.end63, %cleanup62, %cleanup, %if.end5
  %67 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67) #13
  %68 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #13
  %69 = load i32, i32* %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i8* @hash_find_entry(%struct.hash_table* %table, i8* %entry1, %struct.hash_entry** %bucket_head, i1 zeroext %delete) #7 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %bucket_head.addr = alloca %struct.hash_entry**, align 8
  %delete.addr = alloca i8, align 1
  %bucket = alloca %struct.hash_entry*, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %data7 = alloca i8*, align 8
  %next12 = alloca %struct.hash_entry*, align 8
  %data29 = alloca i8*, align 8
  %next34 = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8* %entry1, i8** %entry.addr, align 8, !tbaa !6
  store %struct.hash_entry** %bucket_head, %struct.hash_entry*** %bucket_head.addr, align 8, !tbaa !6
  %frombool = zext i1 %delete to i8
  store i8 %frombool, i8* %delete.addr, align 1, !tbaa !11
  %0 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %2 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %call = call %struct.hash_entry* @safe_hasher(%struct.hash_table* %1, i8* %2)
  store %struct.hash_entry* %call, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %3 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #13
  %4 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %5 = load %struct.hash_entry**, %struct.hash_entry*** %bucket_head.addr, align 8, !tbaa !6
  store %struct.hash_entry* %4, %struct.hash_entry** %5, align 8, !tbaa !6
  %6 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !70
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %9 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data2 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %9, i32 0, i32 0
  %10 = load i8*, i8** %data2, align 8, !tbaa !70
  %cmp3 = icmp eq i8* %8, %10
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %comparator = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 7
  %12 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comparator, align 8, !tbaa !73
  %13 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %14 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data4 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %14, i32 0, i32 0
  %15 = load i8*, i8** %data4, align 8, !tbaa !70
  %call5 = call zeroext i1 %12(i8* %13, i8* %15)
  br i1 %call5, label %if.then6, label %if.end17

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %16 = bitcast i8** %data7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %16) #13
  %17 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data8 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %17, i32 0, i32 0
  %18 = load i8*, i8** %data8, align 8, !tbaa !70
  store i8* %18, i8** %data7, align 8, !tbaa !6
  %19 = load i8, i8* %delete.addr, align 1, !tbaa !11, !range !16
  %tobool = trunc i8 %19 to i1
  br i1 %tobool, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.then6
  %20 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %20, i32 0, i32 1
  %21 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !72
  %tobool10 = icmp ne %struct.hash_entry* %21, null
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then9
  %22 = bitcast %struct.hash_entry** %next12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %22) #13
  %23 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %next13 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i32 0, i32 1
  %24 = load %struct.hash_entry*, %struct.hash_entry** %next13, align 8, !tbaa !72
  store %struct.hash_entry* %24, %struct.hash_entry** %next12, align 8, !tbaa !6
  %25 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %26 = load %struct.hash_entry*, %struct.hash_entry** %next12, align 8, !tbaa !6
  %27 = bitcast %struct.hash_entry* %25 to i8*
  %28 = bitcast %struct.hash_entry* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false), !tbaa.struct !87
  %29 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %30 = load %struct.hash_entry*, %struct.hash_entry** %next12, align 8, !tbaa !6
  call void @free_entry(%struct.hash_table* %29, %struct.hash_entry* %30)
  %31 = bitcast %struct.hash_entry** %next12 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %31) #13
  br label %if.end15

if.else:                                          ; preds = %if.then9
  %32 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data14 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %32, i32 0, i32 0
  store i8* null, i8** %data14, align 8, !tbaa !70
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  %33 = load i8*, i8** %data7, align 8, !tbaa !6
  store i8* %33, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  %34 = bitcast i8** %data7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #13
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  %35 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  store %struct.hash_entry* %35, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %36 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next18 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %36, i32 0, i32 1
  %37 = load %struct.hash_entry*, %struct.hash_entry** %next18, align 8, !tbaa !72
  %tobool19 = icmp ne %struct.hash_entry* %37, null
  br i1 %tobool19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %39 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next20 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %39, i32 0, i32 1
  %40 = load %struct.hash_entry*, %struct.hash_entry** %next20, align 8, !tbaa !72
  %data21 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %40, i32 0, i32 0
  %41 = load i8*, i8** %data21, align 8, !tbaa !70
  %cmp22 = icmp eq i8* %38, %41
  br i1 %cmp22, label %if.then28, label %lor.lhs.false23

lor.lhs.false23:                                  ; preds = %for.body
  %42 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %comparator24 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %42, i32 0, i32 7
  %43 = load i1 (i8*, i8*)*, i1 (i8*, i8*)** %comparator24, align 8, !tbaa !73
  %44 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %45 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %45, i32 0, i32 1
  %46 = load %struct.hash_entry*, %struct.hash_entry** %next25, align 8, !tbaa !72
  %data26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %46, i32 0, i32 0
  %47 = load i8*, i8** %data26, align 8, !tbaa !70
  %call27 = call zeroext i1 %43(i8* %44, i8* %47)
  br i1 %call27, label %if.then28, label %if.end39

if.then28:                                        ; preds = %lor.lhs.false23, %for.body
  %48 = bitcast i8** %data29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %48) #13
  %49 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %49, i32 0, i32 1
  %50 = load %struct.hash_entry*, %struct.hash_entry** %next30, align 8, !tbaa !72
  %data31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %50, i32 0, i32 0
  %51 = load i8*, i8** %data31, align 8, !tbaa !70
  store i8* %51, i8** %data29, align 8, !tbaa !6
  %52 = load i8, i8* %delete.addr, align 1, !tbaa !11, !range !16
  %tobool32 = trunc i8 %52 to i1
  br i1 %tobool32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.then28
  %53 = bitcast %struct.hash_entry** %next34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %53) #13
  %54 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %54, i32 0, i32 1
  %55 = load %struct.hash_entry*, %struct.hash_entry** %next35, align 8, !tbaa !72
  store %struct.hash_entry* %55, %struct.hash_entry** %next34, align 8, !tbaa !6
  %56 = load %struct.hash_entry*, %struct.hash_entry** %next34, align 8, !tbaa !6
  %next36 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %56, i32 0, i32 1
  %57 = load %struct.hash_entry*, %struct.hash_entry** %next36, align 8, !tbaa !72
  %58 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i32 0, i32 1
  store %struct.hash_entry* %57, %struct.hash_entry** %next37, align 8, !tbaa !72
  %59 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %60 = load %struct.hash_entry*, %struct.hash_entry** %next34, align 8, !tbaa !6
  call void @free_entry(%struct.hash_table* %59, %struct.hash_entry* %60)
  %61 = bitcast %struct.hash_entry** %next34 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #13
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.then28
  %62 = load i8*, i8** %data29, align 8, !tbaa !6
  store i8* %62, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  %63 = bitcast i8** %data29 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #13
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false23
  br label %for.inc

for.inc:                                          ; preds = %if.end39
  %64 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next40 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %64, i32 0, i32 1
  %65 = load %struct.hash_entry*, %struct.hash_entry** %next40, align 8, !tbaa !72
  store %struct.hash_entry* %65, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end38, %if.end16, %if.then
  %66 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #13
  %67 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67) #13
  %68 = load i8*, i8** %retval, align 8
  ret i8* %68
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_insert(%struct.hash_table* %table, i8* %entry1) #7 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %matched_ent = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8* %entry1, i8** %entry.addr, align 8, !tbaa !6
  %0 = bitcast i8** %matched_ent to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast i32* %err to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #13
  %2 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %3 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %call = call i32 @hash_insert_if_absent(%struct.hash_table* %2, i8* %3, i8** %matched_ent)
  store i32 %call, i32* %err, align 4, !tbaa !2
  %4 = load i32, i32* %err, align 4, !tbaa !2
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end5

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %err, align 4, !tbaa !2
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.false
  %6 = load i8*, i8** %matched_ent, align 8, !tbaa !6
  br label %cond.end

cond.false4:                                      ; preds = %cond.false
  %7 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  br label %cond.end

cond.end:                                         ; preds = %cond.false4, %cond.true3
  %cond = phi i8* [ %6, %cond.true3 ], [ %7, %cond.false4 ]
  br label %cond.end5

cond.end5:                                        ; preds = %cond.end, %cond.true
  %cond6 = phi i8* [ null, %cond.true ], [ %cond, %cond.end ]
  %8 = bitcast i32* %err to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #13
  %9 = bitcast i8** %matched_ent to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #13
  ret i8* %cond6
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_remove(%struct.hash_table* %table, i8* %entry1) #7 {
entry:
  %retval = alloca i8*, align 8
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %bucket = alloca %struct.hash_entry*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tuning21 = alloca %struct.hash_tuning*, align 8
  %candidate = alloca i64, align 8
  %cursor = alloca %struct.hash_entry*, align 8
  %next = alloca %struct.hash_entry*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8* %entry1, i8** %entry.addr, align 8, !tbaa !6
  %0 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #13
  %2 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %3 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %call = call i8* @hash_find_entry(%struct.hash_table* %2, i8* %3, %struct.hash_entry** %bucket, i1 zeroext true)
  store i8* %call, i8** %data, align 8, !tbaa !6
  %4 = load i8*, i8** %data, align 8, !tbaa !6
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_entries = getelementptr inbounds %struct.hash_table, %struct.hash_table* %5, i32 0, i32 4
  %6 = load i64, i64* %n_entries, align 8, !tbaa !67
  %dec = add i64 %6, -1
  store i64 %dec, i64* %n_entries, align 8, !tbaa !67
  %7 = load %struct.hash_entry*, %struct.hash_entry** %bucket, align 8, !tbaa !6
  %data2 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %7, i32 0, i32 0
  %8 = load i8*, i8** %data2, align 8, !tbaa !70
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %if.end42, label %if.then4

if.then4:                                         ; preds = %if.end
  %9 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used = getelementptr inbounds %struct.hash_table, %struct.hash_table* %9, i32 0, i32 3
  %10 = load i64, i64* %n_buckets_used, align 8, !tbaa !66
  %dec5 = add i64 %10, -1
  store i64 %dec5, i64* %n_buckets_used, align 8, !tbaa !66
  %11 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used6 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %11, i32 0, i32 3
  %12 = load i64, i64* %n_buckets_used6, align 8, !tbaa !66
  %conv = uitofp i64 %12 to float
  %13 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning = getelementptr inbounds %struct.hash_table, %struct.hash_table* %13, i32 0, i32 5
  %14 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning, align 8, !tbaa !78
  %shrink_threshold = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %14, i32 0, i32 0
  %15 = load float, float* %shrink_threshold, align 4, !tbaa !84
  %16 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets = getelementptr inbounds %struct.hash_table, %struct.hash_table* %16, i32 0, i32 2
  %17 = load i64, i64* %n_buckets, align 8, !tbaa !64
  %conv7 = uitofp i64 %17 to float
  %mul = fmul float %15, %conv7
  %cmp = fcmp olt float %conv, %mul
  br i1 %cmp, label %if.then9, label %if.end41

if.then9:                                         ; preds = %if.then4
  %18 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %call10 = call zeroext i1 @check_tuning(%struct.hash_table* %18)
  %19 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets_used11 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %19, i32 0, i32 3
  %20 = load i64, i64* %n_buckets_used11, align 8, !tbaa !66
  %conv12 = uitofp i64 %20 to float
  %21 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning13 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %21, i32 0, i32 5
  %22 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning13, align 8, !tbaa !78
  %shrink_threshold14 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %22, i32 0, i32 0
  %23 = load float, float* %shrink_threshold14, align 4, !tbaa !84
  %24 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %24, i32 0, i32 2
  %25 = load i64, i64* %n_buckets15, align 8, !tbaa !64
  %conv16 = uitofp i64 %25 to float
  %mul17 = fmul float %23, %conv16
  %cmp18 = fcmp olt float %conv12, %mul17
  br i1 %cmp18, label %if.then20, label %if.end40

if.then20:                                        ; preds = %if.then9
  %26 = bitcast %struct.hash_tuning** %tuning21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %26) #13
  %27 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %tuning22 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %27, i32 0, i32 5
  %28 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning22, align 8, !tbaa !78
  store %struct.hash_tuning* %28, %struct.hash_tuning** %tuning21, align 8, !tbaa !6
  %29 = bitcast i64* %candidate to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %29) #13
  %30 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning21, align 8, !tbaa !6
  %is_n_buckets = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %30, i32 0, i32 4
  %31 = load i8, i8* %is_n_buckets, align 4, !tbaa !86, !range !16
  %tobool23 = trunc i8 %31 to i1
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then20
  %32 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets25 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %32, i32 0, i32 2
  %33 = load i64, i64* %n_buckets25, align 8, !tbaa !64
  %conv26 = uitofp i64 %33 to float
  %34 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning21, align 8, !tbaa !6
  %shrink_factor = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %34, i32 0, i32 1
  %35 = load float, float* %shrink_factor, align 4, !tbaa !85
  %mul27 = fmul float %conv26, %35
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  %36 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %n_buckets28 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %36, i32 0, i32 2
  %37 = load i64, i64* %n_buckets28, align 8, !tbaa !64
  %conv29 = uitofp i64 %37 to float
  %38 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning21, align 8, !tbaa !6
  %shrink_factor30 = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %38, i32 0, i32 1
  %39 = load float, float* %shrink_factor30, align 4, !tbaa !85
  %mul31 = fmul float %conv29, %39
  %40 = load %struct.hash_tuning*, %struct.hash_tuning** %tuning21, align 8, !tbaa !6
  %growth_threshold = getelementptr inbounds %struct.hash_tuning, %struct.hash_tuning* %40, i32 0, i32 2
  %41 = load float, float* %growth_threshold, align 4, !tbaa !81
  %mul32 = fmul float %mul31, %41
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %mul27, %cond.true ], [ %mul32, %cond.false ]
  %conv33 = fptoui float %cond to i64
  store i64 %conv33, i64* %candidate, align 8, !tbaa !13
  %42 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %43 = load i64, i64* %candidate, align 8, !tbaa !13
  %call34 = call zeroext i1 @hash_rehash(%struct.hash_table* %42, i64 %43)
  br i1 %call34, label %if.end39, label %if.then35

if.then35:                                        ; preds = %cond.end
  %44 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %44) #13
  %45 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list = getelementptr inbounds %struct.hash_table, %struct.hash_table* %45, i32 0, i32 9
  %46 = load %struct.hash_entry*, %struct.hash_entry** %free_entry_list, align 8, !tbaa !80
  store %struct.hash_entry* %46, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %47 = bitcast %struct.hash_entry** %next to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %47) #13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then35
  %48 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %tobool36 = icmp ne %struct.hash_entry* %48, null
  br i1 %tobool36, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %next37 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %49, i32 0, i32 1
  %50 = load %struct.hash_entry*, %struct.hash_entry** %next37, align 8, !tbaa !72
  store %struct.hash_entry* %50, %struct.hash_entry** %next, align 8, !tbaa !6
  %51 = load %struct.hash_entry*, %struct.hash_entry** %cursor, align 8, !tbaa !6
  %52 = bitcast %struct.hash_entry* %51 to i8*
  call void @rpl_free(i8* %52)
  %53 = load %struct.hash_entry*, %struct.hash_entry** %next, align 8, !tbaa !6
  store %struct.hash_entry* %53, %struct.hash_entry** %cursor, align 8, !tbaa !6
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %free_entry_list38 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %54, i32 0, i32 9
  store %struct.hash_entry* null, %struct.hash_entry** %free_entry_list38, align 8, !tbaa !80
  %55 = bitcast %struct.hash_entry** %next to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %55) #13
  %56 = bitcast %struct.hash_entry** %cursor to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %56) #13
  br label %if.end39

if.end39:                                         ; preds = %while.end, %cond.end
  %57 = bitcast i64* %candidate to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %57) #13
  %58 = bitcast %struct.hash_tuning** %tuning21 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58) #13
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then9
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then4
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end
  %59 = load i8*, i8** %data, align 8, !tbaa !6
  store i8* %59, i8** %retval, align 8
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then
  %60 = bitcast %struct.hash_entry** %bucket to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %60) #13
  %61 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #13
  %62 = load i8*, i8** %retval, align 8
  ret i8* %62
}

; Function Attrs: nounwind uwtable
define dso_local i8* @hash_delete(%struct.hash_table* %table, i8* %entry1) #7 {
entry:
  %table.addr = alloca %struct.hash_table*, align 8
  %entry.addr = alloca i8*, align 8
  store %struct.hash_table* %table, %struct.hash_table** %table.addr, align 8, !tbaa !6
  store i8* %entry1, i8** %entry.addr, align 8, !tbaa !6
  %0 = load %struct.hash_table*, %struct.hash_table** %table.addr, align 8, !tbaa !6
  %1 = load i8*, i8** %entry.addr, align 8, !tbaa !6
  %call = call i8* @hash_remove(%struct.hash_table* %0, i8* %1)
  ret i8* %call
}

; Function Attrs: cold inlinehint nounwind optsize uwtable
define dso_local i8* @_gl_alloc_nomem() #19 {
entry:
  %call = call i32* @__errno_location() #22
  store i32 12, i32* %call, align 4, !tbaa !2
  ret i8* null
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noalias i8* @imalloc(i64 %s) #2 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp = icmp ule i64 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call noalias i8* @malloc(i64 %1) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i8* @_gl_alloc_nomem() #28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i8* %cond
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @irealloc(i8* %p, i64 %s) #2 {
entry:
  %p.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp = icmp ule i64 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %2 = load i64, i64* %s.addr, align 8, !tbaa !13
  %3 = load i64, i64* %s.addr, align 8, !tbaa !13
  %tobool = icmp ne i64 %3, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %or = or i64 %2, %conv
  %call = call i8* @realloc(i8* %1, i64 %or) #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i8* @_gl_alloc_nomem() #28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i8* %cond
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noalias i8* @icalloc(i64 %n, i64 %s) #2 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %n.addr, align 8, !tbaa !13
  %cmp = icmp ult i64 -1, %0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1 = icmp ne i64 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %call = call i8* @_gl_alloc_nomem() #28
  store i8* %call, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  store i64 0, i64* %n.addr, align 8, !tbaa !13
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %2 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp4 = icmp ult i64 -1, %2
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  %3 = load i64, i64* %n.addr, align 8, !tbaa !13
  %cmp6 = icmp ne i64 %3, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then5
  %call8 = call i8* @_gl_alloc_nomem() #28
  store i8* %call8, i8** %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.then5
  store i64 0, i64* %s.addr, align 8, !tbaa !13
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end3
  %4 = load i64, i64* %n.addr, align 8, !tbaa !13
  %5 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call11 = call noalias i8* @calloc(i64 %4, i64 %5) #13
  store i8* %call11, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then7, %if.then2
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @ireallocarray(i8* %p, i64 %n, i64 %s) #2 {
entry:
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i8* %p, i8** %p.addr, align 8, !tbaa !6
  store i64 %n, i64* %n.addr, align 8, !tbaa !13
  store i64 %s, i64* %s.addr, align 8, !tbaa !13
  %0 = load i64, i64* %n.addr, align 8, !tbaa !13
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 1, i64* %s.addr, align 8, !tbaa !13
  store i64 1, i64* %n.addr, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i64, i64* %n.addr, align 8, !tbaa !13
  %cmp2 = icmp ule i64 %2, -1
  br i1 %cmp2, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, i64* %s.addr, align 8, !tbaa !13
  %cmp3 = icmp ule i64 %3, -1
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %4 = load i8*, i8** %p.addr, align 8, !tbaa !6
  %5 = load i64, i64* %n.addr, align 8, !tbaa !13
  %6 = load i64, i64* %s.addr, align 8, !tbaa !13
  %call = call i8* @reallocarray(i8* %4, i64 %5, i64 %6) #13
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %call4 = call i8* @_gl_alloc_nomem() #28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call4, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define dso_local i8* @locale_charset() #7 {
entry:
  %codeset = alloca i8*, align 8
  %0 = bitcast i8** %codeset to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %call = call i8* @nl_langinfo(i32 14) #13
  store i8* %call, i8** %codeset, align 8, !tbaa !6
  %1 = load i8*, i8** %codeset, align 8, !tbaa !6
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.236, i64 0, i64 0), i8** %codeset, align 8, !tbaa !6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %codeset, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !15
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.237, i64 0, i64 0), i8** %codeset, align 8, !tbaa !6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load i8*, i8** %codeset, align 8, !tbaa !6
  %5 = bitcast i8** %codeset to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %5) #13
  ret i8* %4
}

; Function Attrs: nounwind
declare dso_local i8* @nl_langinfo(i32) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 %category, i8* nonnull %buf, i64 %bufsize) #7 {
entry:
  %category.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  store i32 %category, i32* %category.addr, align 4, !tbaa !2
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !6
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !13
  %0 = load i32, i32* %category.addr, align 4, !tbaa !2
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %2 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %call = call i32 @setlocale_null_unlocked(i32 %0, i8* %1, i64 %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @setlocale_null_unlocked(i32 %category, i8* %buf, i64 %bufsize) #7 {
entry:
  %retval = alloca i32, align 4
  %category.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %result = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %length = alloca i64, align 8
  store i32 %category, i32* %category.addr, align 4, !tbaa !2
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !6
  store i64 %bufsize, i64* %bufsize.addr, align 8, !tbaa !13
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i32, i32* %category.addr, align 4, !tbaa !2
  %call = call i8* @setlocale_null_androidfix(i32 %1)
  store i8* %call, i8** %result, align 8, !tbaa !6
  %2 = load i8*, i8** %result, align 8, !tbaa !6
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %cmp1 = icmp ugt i64 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 0
  store i8 0, i8* %arrayidx, align 1, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 22, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup12

if.else:                                          ; preds = %entry
  %5 = bitcast i64* %length to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #13
  %6 = load i8*, i8** %result, align 8, !tbaa !6
  %call3 = call i64 @strlen(i8* %6) #21
  store i64 %call3, i64* %length, align 8, !tbaa !13
  %7 = load i64, i64* %length, align 8, !tbaa !13
  %8 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %cmp4 = icmp ult i64 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  %9 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %10 = load i8*, i8** %result, align 8, !tbaa !6
  %11 = load i64, i64* %length, align 8, !tbaa !13
  %add = add i64 %11, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 %add, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.else6:                                         ; preds = %if.else
  %12 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %cmp7 = icmp ugt i64 %12, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.else6
  %13 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %14 = load i8*, i8** %result, align 8, !tbaa !6
  %15 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %sub = sub i64 %15, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 %sub, i1 false)
  %16 = load i8*, i8** %buf.addr, align 8, !tbaa !6
  %17 = load i64, i64* %bufsize.addr, align 8, !tbaa !13
  %sub9 = sub i64 %17, 1
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %sub9
  store i8 0, i8* %arrayidx10, align 1, !tbaa !15
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.else6
  store i32 34, i32* %retval, align 4
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then5
  %18 = bitcast i64* %length to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #13
  br label %cleanup12

cleanup12:                                        ; preds = %cleanup, %if.end
  %19 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #13
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i8* @setlocale_null_androidfix(i32 %category) #7 {
entry:
  %category.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  store i32 %category, i32* %category.addr, align 4, !tbaa !2
  %0 = bitcast i8** %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #13
  %1 = load i32, i32* %category.addr, align 4, !tbaa !2
  %call = call i8* @setlocale(i32 %1, i8* null) #13
  store i8* %call, i8** %result, align 8, !tbaa !6
  %2 = load i8*, i8** %result, align 8, !tbaa !6
  %3 = bitcast i8** %result to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #13
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 %category) #7 {
entry:
  %category.addr = alloca i32, align 4
  store i32 %category, i32* %category.addr, align 4, !tbaa !2
  %0 = load i32, i32* %category.addr, align 4, !tbaa !2
  %call = call i8* @setlocale_null_androidfix(i32 %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 %fd) #7 {
entry:
  %fd.addr = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !2
  %0 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %call = call i32 (i32, i32, ...) @rpl_fcntl(i32 %0, i32 0, i32 3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 %fd, i32 %action, ...) #7 {
entry:
  %fd.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  %arg = alloca [1 x %struct.__va_list_tag], align 16
  %result = alloca i32, align 4
  %target = alloca i32, align 4
  %target4 = alloca i32, align 4
  %x = alloca i32, align 4
  %p = alloca i8*, align 8
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !2
  store i32 %action, i32* %action.addr, align 4, !tbaa !2
  %0 = bitcast [1 x %struct.__va_list_tag]* %arg to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %0) #13
  %1 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #13
  store i32 -1, i32* %result, align 4, !tbaa !2
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %2 = load i32, i32* %action.addr, align 4, !tbaa !2
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1030, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %3 = bitcast i32* %target to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #13
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %4, align 16
  %5 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %6 = bitcast i8* %5 to i32*
  %7 = add i32 %gp_offset, 8
  store i32 %7, i32* %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8
  %8 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %6, %vaarg.in_reg ], [ %8, %vaarg.in_mem ]
  %9 = load i32, i32* %vaarg.addr, align 4
  store i32 %9, i32* %target, align 4, !tbaa !2
  %10 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %11 = load i32, i32* %target, align 4, !tbaa !2
  %call = call i32 @rpl_fcntl_DUPFD(i32 %10, i32 %11)
  store i32 %call, i32* %result, align 4, !tbaa !2
  %12 = bitcast i32* %target to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #13
  br label %sw.epilog48

sw.bb3:                                           ; preds = %entry
  %13 = bitcast i32* %target4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #13
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %gp_offset_p6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 0
  %gp_offset7 = load i32, i32* %gp_offset_p6, align 16
  %fits_in_gp8 = icmp ule i32 %gp_offset7, 40
  br i1 %fits_in_gp8, label %vaarg.in_reg9, label %vaarg.in_mem11

vaarg.in_reg9:                                    ; preds = %sw.bb3
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 3
  %reg_save_area10 = load i8*, i8** %14, align 16
  %15 = getelementptr i8, i8* %reg_save_area10, i32 %gp_offset7
  %16 = bitcast i8* %15 to i32*
  %17 = add i32 %gp_offset7, 8
  store i32 %17, i32* %gp_offset_p6, align 16
  br label %vaarg.end15

vaarg.in_mem11:                                   ; preds = %sw.bb3
  %overflow_arg_area_p12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay5, i32 0, i32 2
  %overflow_arg_area13 = load i8*, i8** %overflow_arg_area_p12, align 8
  %18 = bitcast i8* %overflow_arg_area13 to i32*
  %overflow_arg_area.next14 = getelementptr i8, i8* %overflow_arg_area13, i32 8
  store i8* %overflow_arg_area.next14, i8** %overflow_arg_area_p12, align 8
  br label %vaarg.end15

vaarg.end15:                                      ; preds = %vaarg.in_mem11, %vaarg.in_reg9
  %vaarg.addr16 = phi i32* [ %16, %vaarg.in_reg9 ], [ %18, %vaarg.in_mem11 ]
  %19 = load i32, i32* %vaarg.addr16, align 4
  store i32 %19, i32* %target4, align 4, !tbaa !2
  %20 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %21 = load i32, i32* %target4, align 4, !tbaa !2
  %call17 = call i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 %20, i32 %21)
  store i32 %call17, i32* %result, align 4, !tbaa !2
  %22 = bitcast i32* %target4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #13
  br label %sw.epilog48

sw.default:                                       ; preds = %entry
  %23 = load i32, i32* %action.addr, align 4, !tbaa !2
  switch i32 %23, label %sw.default34 [
    i32 1, label %sw.bb18
    i32 3, label %sw.bb18
    i32 1025, label %sw.bb18
    i32 9, label %sw.bb18
    i32 1032, label %sw.bb18
    i32 1034, label %sw.bb18
    i32 11, label %sw.bb18
    i32 1033, label %sw.bb20
    i32 0, label %sw.bb20
    i32 1030, label %sw.bb20
    i32 1026, label %sw.bb20
    i32 2, label %sw.bb20
    i32 4, label %sw.bb20
    i32 1024, label %sw.bb20
    i32 8, label %sw.bb20
    i32 1031, label %sw.bb20
    i32 10, label %sw.bb20
  ]

sw.bb18:                                          ; preds = %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default
  %24 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %25 = load i32, i32* %action.addr, align 4, !tbaa !2
  %call19 = call i32 (i32, i32, ...) @fcntl(i32 %24, i32 %25)
  store i32 %call19, i32* %result, align 4, !tbaa !2
  br label %sw.epilog

sw.bb20:                                          ; preds = %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default, %sw.default
  %26 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #13
  %arraydecay21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %gp_offset_p22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 0
  %gp_offset23 = load i32, i32* %gp_offset_p22, align 16
  %fits_in_gp24 = icmp ule i32 %gp_offset23, 40
  br i1 %fits_in_gp24, label %vaarg.in_reg25, label %vaarg.in_mem27

vaarg.in_reg25:                                   ; preds = %sw.bb20
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 3
  %reg_save_area26 = load i8*, i8** %27, align 16
  %28 = getelementptr i8, i8* %reg_save_area26, i32 %gp_offset23
  %29 = bitcast i8* %28 to i32*
  %30 = add i32 %gp_offset23, 8
  store i32 %30, i32* %gp_offset_p22, align 16
  br label %vaarg.end31

vaarg.in_mem27:                                   ; preds = %sw.bb20
  %overflow_arg_area_p28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay21, i32 0, i32 2
  %overflow_arg_area29 = load i8*, i8** %overflow_arg_area_p28, align 8
  %31 = bitcast i8* %overflow_arg_area29 to i32*
  %overflow_arg_area.next30 = getelementptr i8, i8* %overflow_arg_area29, i32 8
  store i8* %overflow_arg_area.next30, i8** %overflow_arg_area_p28, align 8
  br label %vaarg.end31

vaarg.end31:                                      ; preds = %vaarg.in_mem27, %vaarg.in_reg25
  %vaarg.addr32 = phi i32* [ %29, %vaarg.in_reg25 ], [ %31, %vaarg.in_mem27 ]
  %32 = load i32, i32* %vaarg.addr32, align 4
  store i32 %32, i32* %x, align 4, !tbaa !2
  %33 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %34 = load i32, i32* %action.addr, align 4, !tbaa !2
  %35 = load i32, i32* %x, align 4, !tbaa !2
  %call33 = call i32 (i32, i32, ...) @fcntl(i32 %33, i32 %34, i32 %35)
  store i32 %call33, i32* %result, align 4, !tbaa !2
  %36 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #13
  br label %sw.epilog

sw.default34:                                     ; preds = %sw.default
  %37 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %37) #13
  %arraydecay35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %gp_offset_p36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 0
  %gp_offset37 = load i32, i32* %gp_offset_p36, align 16
  %fits_in_gp38 = icmp ule i32 %gp_offset37, 40
  br i1 %fits_in_gp38, label %vaarg.in_reg39, label %vaarg.in_mem41

vaarg.in_reg39:                                   ; preds = %sw.default34
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 3
  %reg_save_area40 = load i8*, i8** %38, align 16
  %39 = getelementptr i8, i8* %reg_save_area40, i32 %gp_offset37
  %40 = bitcast i8* %39 to i8**
  %41 = add i32 %gp_offset37, 8
  store i32 %41, i32* %gp_offset_p36, align 16
  br label %vaarg.end45

vaarg.in_mem41:                                   ; preds = %sw.default34
  %overflow_arg_area_p42 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay35, i32 0, i32 2
  %overflow_arg_area43 = load i8*, i8** %overflow_arg_area_p42, align 8
  %42 = bitcast i8* %overflow_arg_area43 to i8**
  %overflow_arg_area.next44 = getelementptr i8, i8* %overflow_arg_area43, i32 8
  store i8* %overflow_arg_area.next44, i8** %overflow_arg_area_p42, align 8
  br label %vaarg.end45

vaarg.end45:                                      ; preds = %vaarg.in_mem41, %vaarg.in_reg39
  %vaarg.addr46 = phi i8** [ %40, %vaarg.in_reg39 ], [ %42, %vaarg.in_mem41 ]
  %43 = load i8*, i8** %vaarg.addr46, align 8
  store i8* %43, i8** %p, align 8, !tbaa !6
  %44 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %45 = load i32, i32* %action.addr, align 4, !tbaa !2
  %46 = load i8*, i8** %p, align 8, !tbaa !6
  %call47 = call i32 (i32, i32, ...) @fcntl(i32 %44, i32 %45, i8* %46)
  store i32 %call47, i32* %result, align 4, !tbaa !2
  %47 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %vaarg.end45, %vaarg.end31, %sw.bb18
  br label %sw.epilog48

sw.epilog48:                                      ; preds = %sw.epilog, %vaarg.end15, %vaarg.end
  %arraydecay49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %arg, i64 0, i64 0
  %arraydecay4950 = bitcast %struct.__va_list_tag* %arraydecay49 to i8*
  call void @llvm.va_end(i8* %arraydecay4950)
  %48 = load i32, i32* %result, align 4, !tbaa !2
  %49 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #13
  %50 = bitcast [1 x %struct.__va_list_tag]* %arg to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %50) #13
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define internal i32 @rpl_fcntl_DUPFD(i32 %fd, i32 %target) #7 {
entry:
  %fd.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !2
  store i32 %target, i32* %target.addr, align 4, !tbaa !2
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %1 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %2 = load i32, i32* %target.addr, align 4, !tbaa !2
  %call = call i32 (i32, i32, ...) @fcntl(i32 %1, i32 0, i32 %2)
  store i32 %call, i32* %result, align 4, !tbaa !2
  %3 = load i32, i32* %result, align 4, !tbaa !2
  %4 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #13
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @rpl_fcntl_DUPFD_CLOEXEC(i32 %fd, i32 %target) #7 {
entry:
  %fd.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %flags = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  store i32 %fd, i32* %fd.addr, align 4, !tbaa !2
  store i32 %target, i32* %target.addr, align 4, !tbaa !2
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #13
  %1 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !2
  %cmp = icmp sle i32 0, %1
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %3 = load i32, i32* %target.addr, align 4, !tbaa !2
  %call = call i32 (i32, i32, ...) @fcntl(i32 %2, i32 1030, i32 %3)
  store i32 %call, i32* %result, align 4, !tbaa !2
  %4 = load i32, i32* %result, align 4, !tbaa !2
  %cmp1 = icmp sle i32 0, %4
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %call2 = call i32* @__errno_location() #22
  %5 = load i32, i32* %call2, align 4, !tbaa !2
  %cmp3 = icmp ne i32 %5, 22
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !2
  br label %if.end8

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %7 = load i32, i32* %target.addr, align 4, !tbaa !2
  %call5 = call i32 @rpl_fcntl_DUPFD(i32 %6, i32 %7)
  store i32 %call5, i32* %result, align 4, !tbaa !2
  %8 = load i32, i32* %result, align 4, !tbaa !2
  %cmp6 = icmp sge i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then4
  br label %if.end11

if.else9:                                         ; preds = %entry
  %9 = load i32, i32* %fd.addr, align 4, !tbaa !2
  %10 = load i32, i32* %target.addr, align 4, !tbaa !2
  %call10 = call i32 @rpl_fcntl_DUPFD(i32 %9, i32 %10)
  store i32 %call10, i32* %result, align 4, !tbaa !2
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.end8
  %11 = load i32, i32* %result, align 4, !tbaa !2
  %cmp12 = icmp sle i32 0, %11
  br i1 %cmp12, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end11
  %12 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !tbaa !2
  %cmp13 = icmp eq i32 %12, -1
  br i1 %cmp13, label %if.then14, label %if.end25

if.then14:                                        ; preds = %land.lhs.true
  %13 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #13
  %14 = load i32, i32* %result, align 4, !tbaa !2
  %call15 = call i32 (i32, i32, ...) @fcntl(i32 %14, i32 1)
  store i32 %call15, i32* %flags, align 4, !tbaa !2
  %15 = load i32, i32* %flags, align 4, !tbaa !2
  %cmp16 = icmp slt i32 %15, 0
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.then14
  %16 = load i32, i32* %result, align 4, !tbaa !2
  %17 = load i32, i32* %flags, align 4, !tbaa !2
  %or = or i32 %17, 1
  %call18 = call i32 (i32, i32, ...) @fcntl(i32 %16, i32 2, i32 %or)
  %cmp19 = icmp eq i32 %call18, -1
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %lor.lhs.false17, %if.then14
  %18 = bitcast i32* %saved_errno to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #13
  %call21 = call i32* @__errno_location() #22
  %19 = load i32, i32* %call21, align 4, !tbaa !2
  store i32 %19, i32* %saved_errno, align 4, !tbaa !2
  %20 = load i32, i32* %result, align 4, !tbaa !2
  %call22 = call i32 @close(i32 %20)
  %21 = load i32, i32* %saved_errno, align 4, !tbaa !2
  %call23 = call i32* @__errno_location() #22
  store i32 %21, i32* %call23, align 4, !tbaa !2
  store i32 -1, i32* %result, align 4, !tbaa !2
  %22 = bitcast i32* %saved_errno to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #13
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %lor.lhs.false17
  %23 = bitcast i32* %flags to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #13
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %land.lhs.true, %if.end11
  %24 = load i32, i32* %result, align 4, !tbaa !2
  %25 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #13
  ret i32 %24
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @rotl64(i64 %x, i32 %n) #2 {
entry:
  %x.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8, !tbaa !13
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i64, i64* %x.addr, align 8, !tbaa !13
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 %0, %sh_prom
  %2 = load i64, i64* %x.addr, align 8, !tbaa !13
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub = sub nsw i32 64, %3
  %sh_prom1 = zext i32 %sub to i64
  %shr = lshr i64 %2, %sh_prom1
  %or = or i64 %shl, %shr
  ret i64 %or
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @rotr64(i64 %x, i32 %n) #2 {
entry:
  %x.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8, !tbaa !13
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i64, i64* %x.addr, align 8, !tbaa !13
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %0, %sh_prom
  %2 = load i64, i64* %x.addr, align 8, !tbaa !13
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub = sub nsw i32 64, %3
  %sh_prom1 = zext i32 %sub to i64
  %shl = shl i64 %2, %sh_prom1
  %or = or i64 %shr, %shl
  ret i64 %or
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @rotl32(i32 %x, i32 %n) #2 {
entry:
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i32, i32* %x.addr, align 4, !tbaa !2
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %shl = shl i32 %0, %1
  %2 = load i32, i32* %x.addr, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub = sub nsw i32 32, %3
  %shr = lshr i32 %2, %sub
  %or = or i32 %shl, %shr
  ret i32 %or
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @rotr32(i32 %x, i32 %n) #2 {
entry:
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i32, i32* %x.addr, align 4, !tbaa !2
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %shr = lshr i32 %0, %1
  %2 = load i32, i32* %x.addr, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub = sub nsw i32 32, %3
  %shl = shl i32 %2, %sub
  %or = or i32 %shr, %shl
  ret i32 %or
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @rotl_sz(i64 %x, i32 %n) #2 {
entry:
  %x.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8, !tbaa !13
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i64, i64* %x.addr, align 8, !tbaa !13
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 %0, %sh_prom
  %2 = load i64, i64* %x.addr, align 8, !tbaa !13
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv = sext i32 %3 to i64
  %sub = sub i64 64, %conv
  %shr = lshr i64 %2, %sub
  %or = or i64 %shl, %shr
  ret i64 %or
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @rotr_sz(i64 %x, i32 %n) #2 {
entry:
  %x.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8, !tbaa !13
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i64, i64* %x.addr, align 8, !tbaa !13
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sh_prom = zext i32 %1 to i64
  %shr = lshr i64 %0, %sh_prom
  %2 = load i64, i64* %x.addr, align 8, !tbaa !13
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv = sext i32 %3 to i64
  %sub = sub i64 64, %conv
  %shl = shl i64 %2, %sub
  %or = or i64 %shr, %shl
  ret i64 %or
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i16 @rotl16(i16 zeroext %x, i32 %n) #2 {
entry:
  %x.addr = alloca i16, align 2
  %n.addr = alloca i32, align 4
  store i16 %x, i16* %x.addr, align 2, !tbaa !30
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i16, i16* %x.addr, align 2, !tbaa !30
  %conv = zext i16 %0 to i32
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %shl = shl i32 %conv, %1
  %2 = load i16, i16* %x.addr, align 2, !tbaa !30
  %conv1 = zext i16 %2 to i32
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub = sub nsw i32 16, %3
  %shr = lshr i32 %conv1, %sub
  %or = or i32 %shl, %shr
  %and = and i32 %or, 65535
  %conv2 = trunc i32 %and to i16
  ret i16 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i16 @rotr16(i16 zeroext %x, i32 %n) #2 {
entry:
  %x.addr = alloca i16, align 2
  %n.addr = alloca i32, align 4
  store i16 %x, i16* %x.addr, align 2, !tbaa !30
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i16, i16* %x.addr, align 2, !tbaa !30
  %conv = zext i16 %0 to i32
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %shr = lshr i32 %conv, %1
  %2 = load i16, i16* %x.addr, align 2, !tbaa !30
  %conv1 = zext i16 %2 to i32
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub = sub nsw i32 16, %3
  %shl = shl i32 %conv1, %sub
  %or = or i32 %shr, %shl
  %and = and i32 %or, 65535
  %conv2 = trunc i32 %and to i16
  ret i16 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @rotl8(i8 zeroext %x, i32 %n) #2 {
entry:
  %x.addr = alloca i8, align 1
  %n.addr = alloca i32, align 4
  store i8 %x, i8* %x.addr, align 1, !tbaa !15
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i8, i8* %x.addr, align 1, !tbaa !15
  %conv = zext i8 %0 to i32
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %shl = shl i32 %conv, %1
  %2 = load i8, i8* %x.addr, align 1, !tbaa !15
  %conv1 = zext i8 %2 to i32
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub = sub nsw i32 8, %3
  %shr = lshr i32 %conv1, %sub
  %or = or i32 %shl, %shr
  %and = and i32 %or, 255
  %conv2 = trunc i32 %and to i8
  ret i8 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @rotr8(i8 zeroext %x, i32 %n) #2 {
entry:
  %x.addr = alloca i8, align 1
  %n.addr = alloca i32, align 4
  store i8 %x, i8* %x.addr, align 1, !tbaa !15
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  %0 = load i8, i8* %x.addr, align 1, !tbaa !15
  %conv = zext i8 %0 to i32
  %1 = load i32, i32* %n.addr, align 4, !tbaa !2
  %shr = lshr i32 %conv, %1
  %2 = load i8, i8* %x.addr, align 1, !tbaa !15
  %conv1 = zext i8 %2 to i32
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub = sub nsw i32 8, %3
  %shl = shl i32 %conv1, %sub
  %or = or i32 %shr, %shl
  %and = and i32 %or, 255
  %conv2 = trunc i32 %and to i8
  ret i8 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isalnum(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 112, label %sw.bb
    i32 113, label %sw.bb
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 116, label %sw.bb
    i32 117, label %sw.bb
    i32 118, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
    i32 83, label %sw.bb
    i32 84, label %sw.bb
    i32 85, label %sw.bb
    i32 86, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isalpha(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 112, label %sw.bb
    i32 113, label %sw.bb
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 116, label %sw.bb
    i32 117, label %sw.bb
    i32 118, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
    i32 83, label %sw.bb
    i32 84, label %sw.bb
    i32 85, label %sw.bb
    i32 86, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isascii(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 22, label %sw.bb
    i32 23, label %sw.bb
    i32 24, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 27, label %sw.bb
    i32 28, label %sw.bb
    i32 29, label %sw.bb
    i32 30, label %sw.bb
    i32 31, label %sw.bb
    i32 127, label %sw.bb
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 112, label %sw.bb
    i32 113, label %sw.bb
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 116, label %sw.bb
    i32 117, label %sw.bb
    i32 118, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
    i32 33, label %sw.bb
    i32 34, label %sw.bb
    i32 35, label %sw.bb
    i32 36, label %sw.bb
    i32 37, label %sw.bb
    i32 38, label %sw.bb
    i32 39, label %sw.bb
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 42, label %sw.bb
    i32 43, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 46, label %sw.bb
    i32 47, label %sw.bb
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 60, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 63, label %sw.bb
    i32 64, label %sw.bb
    i32 91, label %sw.bb
    i32 92, label %sw.bb
    i32 93, label %sw.bb
    i32 94, label %sw.bb
    i32 95, label %sw.bb
    i32 96, label %sw.bb
    i32 123, label %sw.bb
    i32 124, label %sw.bb
    i32 125, label %sw.bb
    i32 126, label %sw.bb
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
    i32 83, label %sw.bb
    i32 84, label %sw.bb
    i32 85, label %sw.bb
    i32 86, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isblank(i32 %c) #2 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4, !tbaa !2
  %cmp1 = icmp eq i32 %1, 9
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  ret i1 %2
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_iscntrl(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb
    i32 16, label %sw.bb
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 19, label %sw.bb
    i32 20, label %sw.bb
    i32 21, label %sw.bb
    i32 22, label %sw.bb
    i32 23, label %sw.bb
    i32 24, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 27, label %sw.bb
    i32 28, label %sw.bb
    i32 29, label %sw.bb
    i32 30, label %sw.bb
    i32 31, label %sw.bb
    i32 127, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isdigit(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isgraph(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 112, label %sw.bb
    i32 113, label %sw.bb
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 116, label %sw.bb
    i32 117, label %sw.bb
    i32 118, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
    i32 33, label %sw.bb
    i32 34, label %sw.bb
    i32 35, label %sw.bb
    i32 36, label %sw.bb
    i32 37, label %sw.bb
    i32 38, label %sw.bb
    i32 39, label %sw.bb
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 42, label %sw.bb
    i32 43, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 46, label %sw.bb
    i32 47, label %sw.bb
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 60, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 63, label %sw.bb
    i32 64, label %sw.bb
    i32 91, label %sw.bb
    i32 92, label %sw.bb
    i32 93, label %sw.bb
    i32 94, label %sw.bb
    i32 95, label %sw.bb
    i32 96, label %sw.bb
    i32 123, label %sw.bb
    i32 124, label %sw.bb
    i32 125, label %sw.bb
    i32 126, label %sw.bb
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
    i32 83, label %sw.bb
    i32 84, label %sw.bb
    i32 85, label %sw.bb
    i32 86, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_islower(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 112, label %sw.bb
    i32 113, label %sw.bb
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 116, label %sw.bb
    i32 117, label %sw.bb
    i32 118, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isprint(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 112, label %sw.bb
    i32 113, label %sw.bb
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 116, label %sw.bb
    i32 117, label %sw.bb
    i32 118, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
    i32 33, label %sw.bb
    i32 34, label %sw.bb
    i32 35, label %sw.bb
    i32 36, label %sw.bb
    i32 37, label %sw.bb
    i32 38, label %sw.bb
    i32 39, label %sw.bb
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 42, label %sw.bb
    i32 43, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 46, label %sw.bb
    i32 47, label %sw.bb
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 60, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 63, label %sw.bb
    i32 64, label %sw.bb
    i32 91, label %sw.bb
    i32 92, label %sw.bb
    i32 93, label %sw.bb
    i32 94, label %sw.bb
    i32 95, label %sw.bb
    i32 96, label %sw.bb
    i32 123, label %sw.bb
    i32 124, label %sw.bb
    i32 125, label %sw.bb
    i32 126, label %sw.bb
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
    i32 83, label %sw.bb
    i32 84, label %sw.bb
    i32 85, label %sw.bb
    i32 86, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_ispunct(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 33, label %sw.bb
    i32 34, label %sw.bb
    i32 35, label %sw.bb
    i32 36, label %sw.bb
    i32 37, label %sw.bb
    i32 38, label %sw.bb
    i32 39, label %sw.bb
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 42, label %sw.bb
    i32 43, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 46, label %sw.bb
    i32 47, label %sw.bb
    i32 58, label %sw.bb
    i32 59, label %sw.bb
    i32 60, label %sw.bb
    i32 61, label %sw.bb
    i32 62, label %sw.bb
    i32 63, label %sw.bb
    i32 64, label %sw.bb
    i32 91, label %sw.bb
    i32 92, label %sw.bb
    i32 93, label %sw.bb
    i32 94, label %sw.bb
    i32 95, label %sw.bb
    i32 96, label %sw.bb
    i32 123, label %sw.bb
    i32 124, label %sw.bb
    i32 125, label %sw.bb
    i32 126, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isspace(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 32, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isupper(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
    i32 83, label %sw.bb
    i32 84, label %sw.bb
    i32 85, label %sw.bb
    i32 86, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i1 @c_isxdigit(i32 %c) #2 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 50, label %sw.bb
    i32 51, label %sw.bb
    i32 52, label %sw.bb
    i32 53, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 57, label %sw.bb
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i1 true, i1* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %1 = load i1, i1* %retval, align 1
  ret i1 %1
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @c_tolower(i32 %c) #2 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 65, label %sw.bb
    i32 66, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
    i32 83, label %sw.bb
    i32 84, label %sw.bb
    i32 85, label %sw.bb
    i32 86, label %sw.bb
    i32 87, label %sw.bb
    i32 88, label %sw.bb
    i32 89, label %sw.bb
    i32 90, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load i32, i32* %c.addr, align 4, !tbaa !2
  %sub = sub nsw i32 %1, 65
  %add = add nsw i32 %sub, 97
  store i32 %add, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4, !tbaa !2
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @c_toupper(i32 %c) #2 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4, !tbaa !2
  %0 = load i32, i32* %c.addr, align 4, !tbaa !2
  switch i32 %0, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb
    i32 99, label %sw.bb
    i32 100, label %sw.bb
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb
    i32 105, label %sw.bb
    i32 106, label %sw.bb
    i32 107, label %sw.bb
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
    i32 112, label %sw.bb
    i32 113, label %sw.bb
    i32 114, label %sw.bb
    i32 115, label %sw.bb
    i32 116, label %sw.bb
    i32 117, label %sw.bb
    i32 118, label %sw.bb
    i32 119, label %sw.bb
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %1 = load i32, i32* %c.addr, align 4, !tbaa !2
  %sub = sub nsw i32 %1, 97
  %add = add nsw i32 %sub, 65
  store i32 %add, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %2 = load i32, i32* %c.addr, align 4, !tbaa !2
  store i32 %2, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

attributes #0 = { noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind readnone speculatable }
attributes #13 = { nounwind }
attributes #14 = { inlinehint nounwind uwtable allocsize(1,2) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { nounwind uwtable allocsize(1,2) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nounwind uwtable allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind uwtable allocsize(1) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #18 = { nounwind uwtable allocsize(0,1) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #19 = { cold inlinehint nounwind optsize uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly }
attributes #22 = { nounwind readnone }
attributes #23 = { noreturn }
attributes #24 = { allocsize(0) }
attributes #25 = { allocsize(0,1) }
attributes #26 = { allocsize(1,2) }
attributes #27 = { allocsize(1) }
attributes #28 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 9.0.0-2~ubuntu18.04.2 (tags/RELEASE_900/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !7, i64 0}
!9 = !{!"infomap", !7, i64 0, !7, i64 8}
!10 = !{!9, !7, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !4, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{i8 0, i8 2}
!17 = !{!18, !14, i64 48}
!18 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !3, i64 24, !3, i64 28, !3, i64 32, !3, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !19, i64 88, !19, i64 104, !4, i64 120}
!19 = !{!"timespec", !14, i64 0, !14, i64 8}
!20 = !{!21, !7, i64 16}
!21 = !{!"linebuffer", !14, i64 0, !14, i64 8, !7, i64 16}
!22 = !{!21, !14, i64 8}
!23 = !{!18, !3, i64 24}
!24 = !{!21, !14, i64 0}
!25 = !{!26, !4, i64 0}
!26 = !{!"quoting_options", !4, i64 0, !3, i64 4, !4, i64 8, !7, i64 40, !7, i64 48}
!27 = !{!26, !3, i64 4}
!28 = !{!26, !7, i64 40}
!29 = !{!26, !7, i64 48}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !4, i64 0}
!32 = !{!33, !7, i64 8}
!33 = !{!"slotvec", !14, i64 0, !7, i64 8}
!34 = !{!33, !14, i64 0}
!35 = !{i64 0, i64 8, !13, i64 8, i64 8, !6}
!36 = !{i64 0, i64 4, !15, i64 4, i64 4, !2, i64 8, i64 32, !15, i64 40, i64 8, !6, i64 48, i64 8, !6}
!37 = !{!38, !7, i64 0}
!38 = !{!"randint_source", !7, i64 0, !14, i64 8, !14, i64 16}
!39 = !{!38, !14, i64 16}
!40 = !{!38, !14, i64 8}
!41 = !{!42, !14, i64 0}
!42 = !{!"sparse_ent_", !14, i64 0, !14, i64 8}
!43 = !{!42, !14, i64 8}
!44 = !{!45, !7, i64 0}
!45 = !{!"randread_source", !7, i64 0, !7, i64 8, !7, i64 16, !4, i64 24}
!46 = !{!45, !7, i64 8}
!47 = !{!45, !7, i64 16}
!48 = !{!49, !14, i64 0}
!49 = !{!"isaac", !14, i64 0, !50, i64 8, !4, i64 2080}
!50 = !{!"isaac_state", !4, i64 0, !14, i64 2048, !14, i64 2056, !14, i64 2064}
!51 = !{!50, !14, i64 2048}
!52 = !{!50, !14, i64 2056}
!53 = !{!50, !14, i64 2064}
!54 = !{!55, !3, i64 0}
!55 = !{!"_IO_FILE", !3, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !3, i64 112, !3, i64 116, !14, i64 120, !31, i64 128, !4, i64 130, !4, i64 131, !7, i64 136, !14, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !14, i64 184, !3, i64 192, !4, i64 196}
!56 = !{!55, !7, i64 16}
!57 = !{!55, !7, i64 8}
!58 = !{!55, !7, i64 40}
!59 = !{!55, !7, i64 32}
!60 = !{!55, !7, i64 72}
!61 = !{!55, !14, i64 144}
!62 = !{!63, !63, i64 0}
!63 = !{!"long long", !4, i64 0}
!64 = !{!65, !14, i64 16}
!65 = !{!"hash_table", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!66 = !{!65, !14, i64 24}
!67 = !{!65, !14, i64 32}
!68 = !{!65, !7, i64 0}
!69 = !{!65, !7, i64 8}
!70 = !{!71, !7, i64 0}
!71 = !{!"hash_entry", !7, i64 0, !7, i64 8}
!72 = !{!71, !7, i64 8}
!73 = !{!65, !7, i64 56}
!74 = !{!65, !7, i64 48}
!75 = !{i64 0, i64 4, !76, i64 4, i64 4, !76, i64 8, i64 4, !76, i64 12, i64 4, !76, i64 16, i64 1, !11}
!76 = !{!77, !77, i64 0}
!77 = !{!"float", !4, i64 0}
!78 = !{!65, !7, i64 40}
!79 = !{!65, !7, i64 64}
!80 = !{!65, !7, i64 72}
!81 = !{!82, !77, i64 8}
!82 = !{!"hash_tuning", !77, i64 0, !77, i64 4, !77, i64 8, !77, i64 12, !12, i64 16}
!83 = !{!82, !77, i64 12}
!84 = !{!82, !77, i64 0}
!85 = !{!82, !77, i64 4}
!86 = !{!82, !12, i64 16}
!87 = !{i64 0, i64 8, !6, i64 8, i64 8, !6}
