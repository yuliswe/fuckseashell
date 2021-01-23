; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_CS136_TOOLS_SNOOP_MESSAGE = constant [91 x i8] c"GREETINGS to all students trying to snoop through the .ll file! Have fun! With love, Dave.\00", align 16
@READ_INT_FAIL = constant i32 -2147483648, align 4
@READ_CHAR_FAIL = constant i8 0, align 1
@INVALID_SYMBOL = constant i32 0, align 4
@_tracing_out = internal global %struct._IO_FILE* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c">>> cs136tools version 1.3\0A\00", align 1
@TRACE_FLAG = internal global i8 1, align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c">>> [%s|%s|%d] >> \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s => %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s => %c\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s => %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s => %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%s => %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"trace_array_len > 0\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"/u1/dtompkins/.seashell/projects/_cs136tools/common/cs136.c\00", align 1
@__PRETTY_FUNCTION__._TRACE_ARR = private unnamed_addr constant [90 x i8] c"void _TRACE_ARR(const char *, const char *, void *, int, const char *, const char *, int)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"trace_array_ptr\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%s => [\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"INVALID TYPE: %s]\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@_num_symbols = internal global i32 0, align 4
@_symbol_table = internal global <{ [64 x i8], [255 x [64 x i8]] }> <{ [64 x i8] c"INVALID_SYMBOL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [255 x [64 x i8]] zeroinitializer }>, align 16
@.str.26 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@_symbol_buffer = internal global [64 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone
define void @trace_version() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone
define void @trace_off() #0 {
entry:
  store i8 0, i8* @TRACE_FLAG, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @trace_sync() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** @_tracing_out, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @_TRACE_MSG(i8* %expstr, i8* %expval, i8* %filename, i8* %funcname, i32 %lineno) #0 {
entry:
  %expstr.addr = alloca i8*, align 8
  %expval.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %expstr, i8** %expstr.addr, align 8
  store i8* %expval, i8** %expval.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* @TRACE_FLAG, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %4, i32 47) #6
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %5 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @strrchr(i8* %5, i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %6 = load i8*, i8** %filename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  %7 = load i8*, i8** %funcname.addr, align 8
  %8 = load i32, i32* %lineno.addr, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %10 = load i8*, i8** %expstr.addr, align 8
  %11 = load i8*, i8** %expval.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %10, i8* %11)
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define void @_TRACE_INT(i8* %expstr, i32 %expval, i8* %filename, i8* %funcname, i32 %lineno) #0 {
entry:
  %expstr.addr = alloca i8*, align 8
  %expval.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %expstr, i8** %expstr.addr, align 8
  store i32 %expval, i32* %expval.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* @TRACE_FLAG, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %4, i32 47) #6
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %5 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @strrchr(i8* %5, i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %6 = load i8*, i8** %filename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  %7 = load i8*, i8** %funcname.addr, align 8
  %8 = load i32, i32* %lineno.addr, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %10 = load i8*, i8** %expstr.addr, align 8
  %11 = load i32, i32* %expval.addr, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %10, i32 %11)
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @_TRACE_CHAR(i8* %expstr, i8 signext %expval, i8* %filename, i8* %funcname, i32 %lineno) #0 {
entry:
  %expstr.addr = alloca i8*, align 8
  %expval.addr = alloca i8, align 1
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %expstr, i8** %expstr.addr, align 8
  store i8 %expval, i8* %expval.addr, align 1
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* @TRACE_FLAG, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %4, i32 47) #6
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %5 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @strrchr(i8* %5, i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %6 = load i8*, i8** %filename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  %7 = load i8*, i8** %funcname.addr, align 8
  %8 = load i32, i32* %lineno.addr, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %10 = load i8*, i8** %expstr.addr, align 8
  %11 = load i8, i8* %expval.addr, align 1
  %conv = sext i8 %11 to i32
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %10, i32 %conv)
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @_TRACE_DOUBLE(i8* %expstr, double %expval, i8* %filename, i8* %funcname, i32 %lineno) #0 {
entry:
  %expstr.addr = alloca i8*, align 8
  %expval.addr = alloca double, align 8
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %expstr, i8** %expstr.addr, align 8
  store double %expval, double* %expval.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* @TRACE_FLAG, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %4, i32 47) #6
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %5 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @strrchr(i8* %5, i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %6 = load i8*, i8** %filename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  %7 = load i8*, i8** %funcname.addr, align 8
  %8 = load i32, i32* %lineno.addr, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %10 = load i8*, i8** %expstr.addr, align 8
  %11 = load double, double* %expval.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %10, double %11)
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @_TRACE_STRING(i8* %expstr, i8* %expval, i8* %filename, i8* %funcname, i32 %lineno) #0 {
entry:
  %expstr.addr = alloca i8*, align 8
  %expval.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %expstr, i8** %expstr.addr, align 8
  store i8* %expval, i8** %expval.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* @TRACE_FLAG, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %4, i32 47) #6
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %5 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @strrchr(i8* %5, i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %6 = load i8*, i8** %filename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  %7 = load i8*, i8** %funcname.addr, align 8
  %8 = load i32, i32* %lineno.addr, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %10 = load i8*, i8** %expstr.addr, align 8
  %11 = load i8*, i8** %expval.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %10, i8* %11)
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @_TRACE_SYMBOL(i8* %expstr, i8* %expval, i8* %filename, i8* %funcname, i32 %lineno) #0 {
entry:
  %expstr.addr = alloca i8*, align 8
  %expval.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %expstr, i8** %expstr.addr, align 8
  store i8* %expval, i8** %expval.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* @TRACE_FLAG, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %4, i32 47) #6
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %5 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @strrchr(i8* %5, i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %6 = load i8*, i8** %filename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  %7 = load i8*, i8** %funcname.addr, align 8
  %8 = load i32, i32* %lineno.addr, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %10 = load i8*, i8** %expstr.addr, align 8
  %11 = load i8*, i8** %expval.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %10, i8* %11)
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @_TRACE_PTR(i8* %expstr, i8* %expval, i8* %filename, i8* %funcname, i32 %lineno) #0 {
entry:
  %expstr.addr = alloca i8*, align 8
  %expval.addr = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i8* %expstr, i8** %expstr.addr, align 8
  store i8* %expval, i8** %expval.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* @TRACE_FLAG, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %4, i32 47) #6
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then2
  %5 = load i8*, i8** %filename.addr, align 8
  %call4 = call i8* @strrchr(i8* %5, i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call4, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %6 = load i8*, i8** %filename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %6, %cond.false ]
  %7 = load i8*, i8** %funcname.addr, align 8
  %8 = load i32, i32* %lineno.addr, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %7, i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %10 = load i8*, i8** %expstr.addr, align 8
  %11 = load i8*, i8** %expval.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %10, i8* %11)
  br label %if.end7

if.end7:                                          ; preds = %cond.end, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone
define void @_TRACE_ARR(i8* %type, i8* %expstr, i8* %trace_array_ptr, i32 %trace_array_len, i8* %filename, i8* %funcname, i32 %lineno) #0 {
entry:
  %type.addr = alloca i8*, align 8
  %expstr.addr = alloca i8*, align 8
  %trace_array_ptr.addr = alloca i8*, align 8
  %trace_array_len.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %type, i8** %type.addr, align 8
  store i8* %expstr, i8** %expstr.addr, align 8
  store i8* %trace_array_ptr, i8** %trace_array_ptr.addr, align 8
  store i32 %trace_array_len, i32* %trace_array_len.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** @_tracing_out, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* @TRACE_FLAG, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then2, label %if.end62

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %trace_array_len.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then2
  br label %if.end4

if.else:                                          ; preds = %if.then2
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i32 66, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @__PRETTY_FUNCTION__._TRACE_ARR, i64 0, i64 0)) #7
  unreachable

if.end4:                                          ; preds = %if.then3
  %4 = load i8*, i8** %trace_array_ptr.addr, align 8
  %tobool5 = icmp ne i8* %4, null
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end4
  br label %if.end8

if.else7:                                         ; preds = %if.end4
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @__PRETTY_FUNCTION__._TRACE_ARR, i64 0, i64 0)) #7
  unreachable

if.end8:                                          ; preds = %if.then6
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strchr(i8* %6, i32 47) #6
  %tobool9 = icmp ne i8* %call, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  %7 = load i8*, i8** %filename.addr, align 8
  %call10 = call i8* @strrchr(i8* %7, i32 47) #6
  %add.ptr = getelementptr inbounds i8, i8* %call10, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  %8 = load i8*, i8** %filename.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %8, %cond.false ]
  %9 = load i8*, i8** %funcname.addr, align 8
  %10 = load i32, i32* %lineno.addr, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %cond, i8* %9, i32 %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %12 = load i8*, i8** %expstr.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %12)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %trace_array_len.addr, align 4
  %cmp13 = icmp slt i32 %13, %14
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %tobool14 = icmp ne i32 %15, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %for.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.body
  %17 = load i8*, i8** %type.addr, align 8
  %call18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)) #6
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.else22, label %if.then20

if.then20:                                        ; preds = %if.end17
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %19 = load i8*, i8** %trace_array_ptr.addr, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %idxprom
  %22 = load i32, i32* %arrayidx, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %22)
  br label %if.end60

if.else22:                                        ; preds = %if.end17
  %23 = load i8*, i8** %type.addr, align 8
  %call23 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.else29, label %if.then25

if.then25:                                        ; preds = %if.else22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %25 = load i8*, i8** %trace_array_ptr.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 %idxprom26
  %27 = load i8, i8* %arrayidx27, align 1
  %conv = sext i8 %27 to i32
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %conv)
  br label %if.end59

if.else29:                                        ; preds = %if.else22
  %28 = load i8*, i8** %type.addr, align 8
  %call30 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0)) #6
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else36, label %if.then32

if.then32:                                        ; preds = %if.else29
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %30 = load i8*, i8** %trace_array_ptr.addr, align 8
  %31 = bitcast i8* %30 to double*
  %32 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds double, double* %31, i64 %idxprom33
  %33 = load double, double* %arrayidx34, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), double %33)
  br label %if.end58

if.else36:                                        ; preds = %if.else29
  %34 = load i8*, i8** %type.addr, align 8
  %call37 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #6
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.else46, label %if.then39

if.then39:                                        ; preds = %if.else36
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %36 = load i8*, i8** %trace_array_ptr.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds i8, i8* %36, i64 %idxprom40
  %38 = load i8, i8* %arrayidx41, align 1
  %tobool42 = trunc i8 %38 to i1
  %39 = zext i1 %tobool42 to i64
  %cond44 = select i1 %tobool42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %cond44)
  br label %if.end57

if.else46:                                        ; preds = %if.else36
  %40 = load i8*, i8** %type.addr, align 8
  %call47 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0)) #6
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.else54, label %if.then49

if.then49:                                        ; preds = %if.else46
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %42 = load i8*, i8** %trace_array_ptr.addr, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %44 to i64
  %arrayidx51 = getelementptr inbounds i32, i32* %43, i64 %idxprom50
  %45 = load i32, i32* %arrayidx51, align 4
  %call52 = call i8* @_SYM(i32 %45)
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %call52)
  br label %if.end56

if.else54:                                        ; preds = %if.else46
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %47 = load i8*, i8** %type.addr, align 8
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i8* %47)
  br label %if.end62

if.end56:                                         ; preds = %if.then49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then39
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then32
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then25
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then20
  br label %for.inc

for.inc:                                          ; preds = %if.end60
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @_tracing_out, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %if.end62

if.end62:                                         ; preds = %if.else54, %for.end, %if.end
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define i8* @_SYM(i32 %symbol_id) #0 {
entry:
  %symbol_id.addr = alloca i32, align 4
  store i32 %symbol_id, i32* %symbol_id.addr, align 4
  %0 = load i32, i32* %symbol_id.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %symbol_id.addr, align 4
  %2 = load i32, i32* @_num_symbols, align 4
  %cmp1 = icmp sgt i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %symbol_id.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i32, i32* %symbol_id.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x [64 x i8]], [256 x [64 x i8]]* bitcast (<{ [64 x i8], [255 x [64 x i8]] }>* @_symbol_table to [256 x [64 x i8]]*), i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx, i64 0, i64 0
  ret i8* %arraydecay
}

; Function Attrs: noinline nounwind optnone
define i32 @read_int() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32* %i)
  store i32 %call, i32* %result, align 4
  %0 = load i32, i32* %result, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2147483648, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone
define signext i8 @read_char(i1 zeroext %ignore_ws) #0 {
entry:
  %retval = alloca i8, align 1
  %ignore_ws.addr = alloca i8, align 1
  %c = alloca i8, align 1
  %result = alloca i32, align 4
  %frombool = zext i1 %ignore_ws to i8
  store i8 %frombool, i8* %ignore_ws.addr, align 1
  store i8 0, i8* %c, align 1
  %0 = load i8, i8* %ignore_ws.addr, align 1
  %tobool = trunc i8 %0 to i1
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* %cond, i8* %c)
  store i32 %call, i32* %result, align 4
  %2 = load i32, i32* %result, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8, i8* %c, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i8, i8* %c, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp sle i32 32, %conv3
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load i8, i8* %c, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp sle i32 %conv6, 126
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true, %if.end
  %6 = load i8, i8* %c, align 1
  store i8 %6, i8* %retval, align 1
  br label %return

if.end10:                                         ; preds = %land.lhs.true, %lor.lhs.false
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end10, %if.then9, %if.then
  %7 = load i8, i8* %retval, align 1
  ret i8 %7
}

; Function Attrs: noinline nounwind optnone
define i32 @lookup_symbol(i8* %symbol_string) #0 {
entry:
  %retval = alloca i32, align 4
  %symbol_string.addr = alloca i8*, align 8
  store i8* %symbol_string, i8** %symbol_string.addr, align 8
  %0 = load i8*, i8** %symbol_string.addr, align 8
  %call = call zeroext i1 @_valid_symbol(i8* %0)
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %symbol_string.addr, align 8
  %call1 = call i32 @_lookup_add(i8* %1)
  store i32 %call1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @_valid_symbol(i8* %s) #0 {
entry:
  %retval = alloca i1, align 1
  %s.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %len, align 4
  %cmp2 = icmp sge i32 %2, 64
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

if.end5:                                          ; preds = %if.end
  %3 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %4 to i32
  %call7 = call i32 @toupper(i32 %conv6) #6
  %cmp8 = icmp slt i32 %call7, 65
  br i1 %cmp8, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end5
  %5 = load i8*, i8** %s.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %6 to i32
  %call12 = call i32 @toupper(i32 %conv11) #6
  %cmp13 = icmp sgt i32 %call12, 90
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false, %if.end5
  store i1 false, i1* %retval, align 1
  br label %return

if.end16:                                         ; preds = %lor.lhs.false
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %len, align 4
  %cmp17 = icmp slt i32 %7, %8
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %11 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %11 to i32
  %call21 = call i32 @toupper(i32 %conv20) #6
  %cmp22 = icmp sge i32 %call21, 65
  br i1 %cmp22, label %land.lhs.true, label %land.lhs.true30

land.lhs.true:                                    ; preds = %for.body
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %12, i64 %idxprom24
  %14 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %14 to i32
  %call27 = call i32 @toupper(i32 %conv26) #6
  %cmp28 = icmp sle i32 %call27, 90
  br i1 %cmp28, label %if.end49, label %land.lhs.true30

land.lhs.true30:                                  ; preds = %land.lhs.true, %for.body
  %15 = load i8*, i8** %s.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %15, i64 %idxprom31
  %17 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %17 to i32
  %cmp34 = icmp sge i32 %conv33, 48
  br i1 %cmp34, label %land.lhs.true36, label %land.lhs.true42

land.lhs.true36:                                  ; preds = %land.lhs.true30
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds i8, i8* %18, i64 %idxprom37
  %20 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %20 to i32
  %cmp40 = icmp sle i32 %conv39, 57
  br i1 %cmp40, label %if.end49, label %land.lhs.true42

land.lhs.true42:                                  ; preds = %land.lhs.true36, %land.lhs.true30
  %21 = load i8*, i8** %s.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %22 to i64
  %arrayidx44 = getelementptr inbounds i8, i8* %21, i64 %idxprom43
  %23 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %23 to i32
  %cmp46 = icmp eq i32 %conv45, 95
  br i1 %cmp46, label %if.end49, label %if.then48

if.then48:                                        ; preds = %land.lhs.true42
  store i1 false, i1* %retval, align 1
  br label %return

if.end49:                                         ; preds = %land.lhs.true42, %land.lhs.true36, %land.lhs.true
  br label %for.inc

for.inc:                                          ; preds = %if.end49
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then48, %if.then15, %if.then4, %if.then
  %25 = load i1, i1* %retval, align 1
  ret i1 %25
}

; Function Attrs: noinline nounwind optnone
define internal i32 @_lookup_add(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @_num_symbols, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x [64 x i8]], [256 x [64 x i8]]* bitcast (<{ [64 x i8], [255 x [64 x i8]] }>* @_symbol_table to [256 x [64 x i8]]*), i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx, i64 0, i64 0
  %call = call i32 @strcmp(i8* %2, i8* %arraydecay) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* @_num_symbols, align 4
  %add = add nsw i32 %6, 1
  %cmp1 = icmp eq i32 %add, 256
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %for.end
  %7 = load i32, i32* @_num_symbols, align 4
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, i32* @_num_symbols, align 4
  %8 = load i32, i32* @_num_symbols, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [256 x [64 x i8]], [256 x [64 x i8]]* bitcast (<{ [64 x i8], [255 x [64 x i8]] }>* @_symbol_table to [256 x [64 x i8]]*), i64 0, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %arrayidx6, i64 0, i64 0
  %9 = load i8*, i8** %s.addr, align 8
  %call8 = call i8* @strcpy(i8* %arraydecay7, i8* %9) #8
  %10 = load i32, i32* @_num_symbols, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #2

; Function Attrs: noinline nounwind optnone
define i32 @read_symbol() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %len = alloca i32, align 4
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @_symbol_buffer, i64 0, i64 0))
  store i32 %call, i32* %retval1, align 4
  %0 = load i32, i32* %retval1, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %len, align 4
  %cmp2 = icmp slt i32 %1, 64
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @_symbol_buffer, i64 0, i64 0), i64 %idx.ext
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %add.ptr)
  store i32 %call3, i32* %retval1, align 4
  %3 = load i32, i32* %retval1, align 4
  %cmp4 = icmp ne i32 %3, 1
  br i1 %cmp4, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %call5 = call i16** @__ctype_b_loc() #9
  %4 = load i16*, i16** %call5, align 8
  %5 = load i32, i32* %len, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* @_symbol_buffer, i64 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %idxprom6 = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds i16, i16* %4, i64 %idxprom6
  %7 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %7 to i32
  %and = and i32 %conv8, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end10:                                         ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %8 = load i32, i32* %len, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %len, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then9, %for.cond
  %9 = load i32, i32* %len, align 4
  %cmp11 = icmp eq i32 %9, 64
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %for.end
  %10 = load i32, i32* %len, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [64 x i8], [64 x i8]* @_symbol_buffer, i64 0, i64 %idxprom15
  store i8 0, i8* %arrayidx16, align 1
  %call17 = call i32 @lookup_symbol(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @_symbol_buffer, i64 0, i64 0))
  store i32 %call17, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then13, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind optnone
define void @print_symbol(i32 %symbol_id) #0 {
entry:
  %symbol_id.addr = alloca i32, align 4
  store i32 %symbol_id, i32* %symbol_id.addr, align 4
  %0 = load i32, i32* %symbol_id.addr, align 4
  %call = call i8* @_SYM(i32 %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %call)
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1 = !{i32 1, !"wchar_size", i32 4}
