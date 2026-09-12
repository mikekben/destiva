; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rsync = external dso_local global i32, align 4
@optind = external dso_local global i32, align 4
@optarg = external dso_local global ptr, align 8
@stderr = external global ptr, align 8
@ascii = external dso_local global i32, align 4
@to_stdout = external dso_local global i32, align 4
@decompress = external dso_local global i32, align 4
@force = external dso_local global i32, align 4
@no_name = external dso_local global i32, align 4
@no_time = external dso_local global i32, align 4
@recursive = external dso_local global i32, align 4
@list = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@quiet = external dso_local global i32, align 4
@do_lzw = external dso_local global i32, align 4
@test = external dso_local global i32, align 4
@maxbits = external dso_local global i32, align 4
@level = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@args = external dso_local global ptr, align 8
@longopts = external dso_local global [25 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }], align 16
@work = external dso_local global ptr, align 8
@progname = external dso_local global ptr, align 8
@.str.38 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.39 = external hidden unnamed_addr constant [5 x i8], align 1
@env = external dso_local global ptr, align 8
@foreground = external dso_local global i32, align 4
@.str.40 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.41 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.42 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.43 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.44 = external hidden unnamed_addr constant [4 x i8], align 1
@z_suffix = external dso_local global ptr, align 8
@z_len = external dso_local global i64, align 8
@.str.45 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.46 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.47 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.48 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.49 = external hidden unnamed_addr constant [27 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #2 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %argc.addr = alloca i32, align 4, !mymd !7
  %argv.addr = alloca ptr, align 8, !mymd !8
  %file_count = alloca i32, align 4, !mymd !9
  %proglen = alloca i32, align 4, !mymd !10
  %optc = alloca i32, align 4, !mymd !11
  store i32 0, ptr %retval, align 4, !mymd !12
  store i32 %argc, ptr %argc.addr, align 4, !mymd !13
  store ptr %argv, ptr %argv.addr, align 8, !mymd !14
  %0 = load ptr, ptr %argv.addr, align 8, !mymd !15
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0, !mymd !16
  %1 = load ptr, ptr %arrayidx, align 8, !mymd !17
  %call = call ptr @base_name(ptr noundef %1), !mymd !18
  store ptr %call, ptr @progname, align 8, !mymd !19
  %2 = load ptr, ptr @progname, align 8, !mymd !20
  %call1 = call i64 @strlen(ptr noundef %2) #3, !mymd !21
  %conv = trunc i64 %call1 to i32, !mymd !22
  store i32 %conv, ptr %proglen, align 4, !mymd !23
  %3 = load i32, ptr %proglen, align 4, !mymd !24
  %cmp = icmp sgt i32 %3, 4, !mymd !25
  br i1 %cmp, label %land.lhs.true, label %if.end, !mymd !26

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr @progname, align 8, !mymd !27
  %5 = load i32, ptr %proglen, align 4, !mymd !28
  %idx.ext = sext i32 %5 to i64, !mymd !29
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !mymd !30
  %add.ptr3 = getelementptr inbounds i8, ptr %add.ptr, i64 -4, !mymd !31
  %call4 = call i32 @strcmp(ptr noundef %add.ptr3, ptr noundef @.str.38) #3, !mymd !32
  %cmp5 = icmp eq i32 %call4, 0, !mymd !33
  br i1 %cmp5, label %if.then, label %if.end, !mymd !34

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr @progname, align 8, !mymd !35
  %7 = load i32, ptr %proglen, align 4, !mymd !36
  %sub = sub nsw i32 %7, 4, !mymd !37
  %idxprom = sext i32 %sub to i64, !mymd !38
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 %idxprom, !mymd !39
  store i8 0, ptr %arrayidx7, align 1, !mymd !40
  br label %if.end, !mymd !41

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call8 = call ptr @add_envopt(ptr noundef %argc.addr, ptr noundef %argv.addr, ptr noundef @.str.39), !mymd !42
  store ptr %call8, ptr @env, align 8, !mymd !43
  %8 = load ptr, ptr @env, align 8, !mymd !44
  %cmp9 = icmp ne ptr %8, null, !mymd !45
  br i1 %cmp9, label %if.then11, label %if.end12, !mymd !46

if.then11:                                        ; preds = %if.end
  %9 = load ptr, ptr %argv.addr, align 8, !mymd !47
  store ptr %9, ptr @args, align 8, !mymd !48
  br label %if.end12, !mymd !49

if.end12:                                         ; preds = %if.then11, %if.end
  %call13 = call ptr @signal(i32 noundef 2, ptr noundef inttoptr (i64 1 to ptr)) #4, !mymd !50
  %cmp14 = icmp ne ptr %call13, inttoptr (i64 1 to ptr), !mymd !51
  %conv15 = zext i1 %cmp14 to i32, !mymd !52
  store i32 %conv15, ptr @foreground, align 4, !mymd !53
  %10 = load i32, ptr @foreground, align 4, !mymd !54
  %tobool = icmp ne i32 %10, 0, !mymd !55
  br i1 %tobool, label %if.then16, label %if.end18, !mymd !56

if.then16:                                        ; preds = %if.end12
  %call17 = call ptr @signal(i32 noundef 2, ptr noundef @abort_gzip_signal) #4, !mymd !57
  br label %if.end18, !mymd !58

if.end18:                                         ; preds = %if.then16, %if.end12
  %call19 = call ptr @signal(i32 noundef 15, ptr noundef inttoptr (i64 1 to ptr)) #4, !mymd !59
  %cmp20 = icmp ne ptr %call19, inttoptr (i64 1 to ptr), !mymd !60
  br i1 %cmp20, label %if.then22, label %if.end24, !mymd !61

if.then22:                                        ; preds = %if.end18
  %call23 = call ptr @signal(i32 noundef 15, ptr noundef @abort_gzip_signal) #4, !mymd !62
  br label %if.end24, !mymd !63

if.end24:                                         ; preds = %if.then22, %if.end18
  %call25 = call ptr @signal(i32 noundef 1, ptr noundef inttoptr (i64 1 to ptr)) #4, !mymd !64
  %cmp26 = icmp ne ptr %call25, inttoptr (i64 1 to ptr), !mymd !65
  br i1 %cmp26, label %if.then28, label %if.end30, !mymd !66

if.then28:                                        ; preds = %if.end24
  %call29 = call ptr @signal(i32 noundef 1, ptr noundef @abort_gzip_signal) #4, !mymd !67
  br label %if.end30, !mymd !68

if.end30:                                         ; preds = %if.then28, %if.end24
  %11 = load ptr, ptr @progname, align 8, !mymd !69
  %call31 = call i32 @strncmp(ptr noundef %11, ptr noundef @.str.40, i64 noundef 2) #3, !mymd !70
  %cmp32 = icmp eq i32 %call31, 0, !mymd !71
  br i1 %cmp32, label %if.then37, label %lor.lhs.false, !mymd !72

lor.lhs.false:                                    ; preds = %if.end30
  %12 = load ptr, ptr @progname, align 8, !mymd !73
  %call34 = call i32 @strncmp(ptr noundef %12, ptr noundef @.str.41, i64 noundef 3) #3, !mymd !74
  %cmp35 = icmp eq i32 %call34, 0, !mymd !75
  br i1 %cmp35, label %if.then37, label %if.else, !mymd !76

if.then37:                                        ; preds = %lor.lhs.false, %if.end30
  store i32 1, ptr @decompress, align 4, !mymd !77
  br label %if.end48, !mymd !78

if.else:                                          ; preds = %lor.lhs.false
  %13 = load ptr, ptr @progname, align 8, !mymd !79
  %add.ptr38 = getelementptr inbounds i8, ptr %13, i64 1, !mymd !80
  %call39 = call i32 @strcmp(ptr noundef %add.ptr38, ptr noundef @.str.42) #3, !mymd !81
  %cmp40 = icmp eq i32 %call39, 0, !mymd !82
  br i1 %cmp40, label %if.then46, label %lor.lhs.false42, !mymd !83

lor.lhs.false42:                                  ; preds = %if.else
  %14 = load ptr, ptr @progname, align 8, !mymd !84
  %call43 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.43) #3, !mymd !85
  %cmp44 = icmp eq i32 %call43, 0, !mymd !86
  br i1 %cmp44, label %if.then46, label %if.end47, !mymd !87

if.then46:                                        ; preds = %lor.lhs.false42, %if.else
  store i32 1, ptr @to_stdout, align 4, !mymd !88
  store i32 1, ptr @decompress, align 4, !mymd !89
  br label %if.end47, !mymd !90

if.end47:                                         ; preds = %if.then46, %lor.lhs.false42
  br label %if.end48, !mymd !91

if.end48:                                         ; preds = %if.end47, %if.then37
  store ptr @.str.44, ptr @z_suffix, align 8, !mymd !92
  %15 = load ptr, ptr @z_suffix, align 8, !mymd !93
  %call49 = call i64 @strlen(ptr noundef %15) #3, !mymd !94
  store i64 %call49, ptr @z_len, align 8, !mymd !95
  br label %while.cond, !mymd !96

while.cond:                                       ; preds = %sw.epilog, %if.end48
  %16 = load i32, ptr %argc.addr, align 4, !mymd !97
  %17 = load ptr, ptr %argv.addr, align 8, !mymd !98
  %call50 = call i32 @getopt_long(i32 noundef %16, ptr noundef %17, ptr noundef @.str.45, ptr noundef @longopts, ptr noundef null), !mymd !99
  store i32 %call50, ptr %optc, align 4, !mymd !100
  %cmp51 = icmp ne i32 %call50, -1, !mymd !101
  br i1 %cmp51, label %while.body, label %while.end, !mymd !102

while.body:                                       ; preds = %while.cond
  %18 = load i32, ptr %optc, align 4, !mymd !103
  switch i32 %18, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb53
    i32 99, label %sw.bb66
    i32 100, label %sw.bb67
    i32 102, label %sw.bb68
    i32 104, label %sw.bb69
    i32 72, label %sw.bb69
    i32 63, label %sw.bb69
    i32 108, label %sw.bb70
    i32 76, label %sw.bb71
    i32 109, label %sw.bb72
    i32 77, label %sw.bb73
    i32 110, label %sw.bb74
    i32 78, label %sw.bb75
    i32 113, label %sw.bb76
    i32 114, label %sw.bb77
    i32 82, label %sw.bb78
    i32 83, label %sw.bb79
    i32 116, label %sw.bb81
    i32 118, label %sw.bb82
    i32 86, label %sw.bb84
    i32 90, label %sw.bb85
    i32 49, label %sw.bb87
    i32 50, label %sw.bb87
    i32 51, label %sw.bb87
    i32 52, label %sw.bb87
    i32 53, label %sw.bb87
    i32 54, label %sw.bb87
    i32 55, label %sw.bb87
    i32 56, label %sw.bb87
    i32 57, label %sw.bb87
  ], !mymd !104

sw.bb:                                            ; preds = %while.body
  store i32 1, ptr @ascii, align 4, !mymd !105
  br label %sw.epilog, !mymd !106

sw.bb53:                                          ; preds = %while.body
  %19 = load ptr, ptr @optarg, align 8, !mymd !107
  %call54 = call i32 @atoi(ptr noundef %19) #3, !mymd !108
  store i32 %call54, ptr @maxbits, align 4, !mymd !109
  br label %for.cond, !mymd !110

for.cond:                                         ; preds = %for.inc, %sw.bb53
  %20 = load ptr, ptr @optarg, align 8, !mymd !111
  %21 = load i8, ptr %20, align 1, !mymd !112
  %tobool55 = icmp ne i8 %21, 0, !mymd !113
  br i1 %tobool55, label %for.body, label %for.end, !mymd !114

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr @optarg, align 8, !mymd !115
  %23 = load i8, ptr %22, align 1, !mymd !116
  %conv56 = sext i8 %23 to i32, !mymd !117
  %cmp57 = icmp sle i32 48, %conv56, !mymd !118
  br i1 %cmp57, label %land.lhs.true59, label %if.then63, !mymd !119

land.lhs.true59:                                  ; preds = %for.body
  %24 = load ptr, ptr @optarg, align 8, !mymd !120
  %25 = load i8, ptr %24, align 1, !mymd !121
  %conv60 = sext i8 %25 to i32, !mymd !122
  %cmp61 = icmp sle i32 %conv60, 57, !mymd !123
  br i1 %cmp61, label %if.end65, label %if.then63, !mymd !124

if.then63:                                        ; preds = %land.lhs.true59, %for.body
  %26 = load ptr, ptr @stderr, align 8, !mymd !125
  %27 = load ptr, ptr @progname, align 8, !mymd !126
  %call64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.46, ptr noundef %27) #4, !mymd !127
  call void @usage(), !mymd !128
  call void @do_exit(i32 noundef 1), !mymd !129
  br label %if.end65, !mymd !130

if.end65:                                         ; preds = %if.then63, %land.lhs.true59
  br label %for.inc, !mymd !131

for.inc:                                          ; preds = %if.end65
  %28 = load ptr, ptr @optarg, align 8, !mymd !132
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %28, i32 1, !mymd !133
  store ptr %incdec.ptr, ptr @optarg, align 8, !mymd !134
  br label %for.cond, !llvm.loop !135, !mymd !137

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !mymd !138

sw.bb66:                                          ; preds = %while.body
  store i32 1, ptr @to_stdout, align 4, !mymd !139
  br label %sw.epilog, !mymd !140

sw.bb67:                                          ; preds = %while.body
  store i32 1, ptr @decompress, align 4, !mymd !141
  br label %sw.epilog, !mymd !142

sw.bb68:                                          ; preds = %while.body
  %29 = load i32, ptr @force, align 4, !mymd !143
  %inc = add nsw i32 %29, 1, !mymd !144
  store i32 %inc, ptr @force, align 4, !mymd !145
  br label %sw.epilog, !mymd !146

sw.bb69:                                          ; preds = %while.body, %while.body, %while.body
  call void @help(), !mymd !147
  call void @do_exit(i32 noundef 0), !mymd !148
  br label %sw.epilog, !mymd !149

sw.bb70:                                          ; preds = %while.body
  store i32 1, ptr @to_stdout, align 4, !mymd !150
  store i32 1, ptr @decompress, align 4, !mymd !151
  store i32 1, ptr @list, align 4, !mymd !152
  br label %sw.epilog, !mymd !153

sw.bb71:                                          ; preds = %while.body
  call void @license(), !mymd !154
  call void @do_exit(i32 noundef 0), !mymd !155
  br label %sw.epilog, !mymd !156

sw.bb72:                                          ; preds = %while.body
  store i32 1, ptr @no_time, align 4, !mymd !157
  br label %sw.epilog, !mymd !158

sw.bb73:                                          ; preds = %while.body
  store i32 0, ptr @no_time, align 4, !mymd !159
  br label %sw.epilog, !mymd !160

sw.bb74:                                          ; preds = %while.body
  store i32 1, ptr @no_time, align 4, !mymd !161
  store i32 1, ptr @no_name, align 4, !mymd !162
  br label %sw.epilog, !mymd !163

sw.bb75:                                          ; preds = %while.body
  store i32 0, ptr @no_time, align 4, !mymd !164
  store i32 0, ptr @no_name, align 4, !mymd !165
  br label %sw.epilog, !mymd !166

sw.bb76:                                          ; preds = %while.body
  store i32 1, ptr @quiet, align 4, !mymd !167
  store i32 0, ptr @verbose, align 4, !mymd !168
  br label %sw.epilog, !mymd !169

sw.bb77:                                          ; preds = %while.body
  store i32 1, ptr @recursive, align 4, !mymd !170
  br label %sw.epilog, !mymd !171

sw.bb78:                                          ; preds = %while.body
  store i32 1, ptr @rsync, align 4, !mymd !172
  br label %sw.epilog, !mymd !173

sw.bb79:                                          ; preds = %while.body
  %30 = load ptr, ptr @optarg, align 8, !mymd !174
  %call80 = call i64 @strlen(ptr noundef %30) #3, !mymd !175
  store i64 %call80, ptr @z_len, align 8, !mymd !176
  %31 = load ptr, ptr @optarg, align 8, !mymd !177
  store ptr %31, ptr @z_suffix, align 8, !mymd !178
  br label %sw.epilog, !mymd !179

sw.bb81:                                          ; preds = %while.body
  store i32 1, ptr @to_stdout, align 4, !mymd !180
  store i32 1, ptr @decompress, align 4, !mymd !181
  store i32 1, ptr @test, align 4, !mymd !182
  br label %sw.epilog, !mymd !183

sw.bb82:                                          ; preds = %while.body
  %32 = load i32, ptr @verbose, align 4, !mymd !184
  %inc83 = add nsw i32 %32, 1, !mymd !185
  store i32 %inc83, ptr @verbose, align 4, !mymd !186
  store i32 0, ptr @quiet, align 4, !mymd !187
  br label %sw.epilog, !mymd !188

sw.bb84:                                          ; preds = %while.body
  call void @version(), !mymd !189
  call void @do_exit(i32 noundef 0), !mymd !190
  br label %sw.epilog, !mymd !191

sw.bb85:                                          ; preds = %while.body
  %33 = load ptr, ptr @stderr, align 8, !mymd !192
  %34 = load ptr, ptr @progname, align 8, !mymd !193
  %call86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.47, ptr noundef %34) #4, !mymd !194
  call void @usage(), !mymd !195
  call void @do_exit(i32 noundef 1), !mymd !196
  br label %sw.epilog, !mymd !197

sw.bb87:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %35 = load i32, ptr %optc, align 4, !mymd !198
  %sub88 = sub nsw i32 %35, 48, !mymd !199
  store i32 %sub88, ptr @level, align 4, !mymd !200
  br label %sw.epilog, !mymd !201

sw.default:                                       ; preds = %while.body
  call void @usage(), !mymd !202
  call void @do_exit(i32 noundef 1), !mymd !203
  br label %sw.epilog, !mymd !204

sw.epilog:                                        ; preds = %sw.default, %sw.bb87, %sw.bb85, %sw.bb84, %sw.bb82, %sw.bb81, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %for.end, %sw.bb
  br label %while.cond, !llvm.loop !205, !mymd !206

while.end:                                        ; preds = %while.cond
  %36 = load i32, ptr @quiet, align 4, !mymd !207
  %tobool89 = icmp ne i32 %36, 0, !mymd !208
  br i1 %tobool89, label %land.lhs.true90, label %if.end96, !mymd !209

land.lhs.true90:                                  ; preds = %while.end
  %call91 = call ptr @signal(i32 noundef 13, ptr noundef inttoptr (i64 1 to ptr)) #4, !mymd !210
  %cmp92 = icmp ne ptr %call91, inttoptr (i64 1 to ptr), !mymd !211
  br i1 %cmp92, label %if.then94, label %if.end96, !mymd !212

if.then94:                                        ; preds = %land.lhs.true90
  %call95 = call ptr @signal(i32 noundef 13, ptr noundef @abort_gzip_signal) #4, !mymd !213
  br label %if.end96, !mymd !214

if.end96:                                         ; preds = %if.then94, %land.lhs.true90, %while.end
  %37 = load i32, ptr @no_time, align 4, !mymd !215
  %cmp97 = icmp slt i32 %37, 0, !mymd !216
  br i1 %cmp97, label %if.then99, label %if.end100, !mymd !217

if.then99:                                        ; preds = %if.end96
  %38 = load i32, ptr @decompress, align 4, !mymd !218
  store i32 %38, ptr @no_time, align 4, !mymd !219
  br label %if.end100, !mymd !220

if.end100:                                        ; preds = %if.then99, %if.end96
  %39 = load i32, ptr @no_name, align 4, !mymd !221
  %cmp101 = icmp slt i32 %39, 0, !mymd !222
  br i1 %cmp101, label %if.then103, label %if.end104, !mymd !223

if.then103:                                       ; preds = %if.end100
  %40 = load i32, ptr @decompress, align 4, !mymd !224
  store i32 %40, ptr @no_name, align 4, !mymd !225
  br label %if.end104, !mymd !226

if.end104:                                        ; preds = %if.then103, %if.end100
  %41 = load i32, ptr %argc.addr, align 4, !mymd !227
  %42 = load i32, ptr @optind, align 4, !mymd !228
  %sub105 = sub nsw i32 %41, %42, !mymd !229
  store i32 %sub105, ptr %file_count, align 4, !mymd !230
  %43 = load i32, ptr @ascii, align 4, !mymd !231
  %tobool106 = icmp ne i32 %43, 0, !mymd !232
  br i1 %tobool106, label %land.lhs.true107, label %if.end111, !mymd !233

land.lhs.true107:                                 ; preds = %if.end104
  %44 = load i32, ptr @quiet, align 4, !mymd !234
  %tobool108 = icmp ne i32 %44, 0, !mymd !235
  br i1 %tobool108, label %if.end111, label %if.then109, !mymd !236

if.then109:                                       ; preds = %land.lhs.true107
  %45 = load ptr, ptr @stderr, align 8, !mymd !237
  %46 = load ptr, ptr @progname, align 8, !mymd !238
  %call110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.48, ptr noundef %46) #4, !mymd !239
  br label %if.end111, !mymd !240

if.end111:                                        ; preds = %if.then109, %land.lhs.true107, %if.end104
  %47 = load i64, ptr @z_len, align 8, !mymd !241
  %cmp112 = icmp eq i64 %47, 0, !mymd !242
  br i1 %cmp112, label %land.lhs.true114, label %lor.lhs.false116, !mymd !243

land.lhs.true114:                                 ; preds = %if.end111
  %48 = load i32, ptr @decompress, align 4, !mymd !244
  %tobool115 = icmp ne i32 %48, 0, !mymd !245
  br i1 %tobool115, label %lor.lhs.false116, label %if.then119, !mymd !246

lor.lhs.false116:                                 ; preds = %land.lhs.true114, %if.end111
  %49 = load i64, ptr @z_len, align 8, !mymd !247
  %cmp117 = icmp ugt i64 %49, 30, !mymd !248
  br i1 %cmp117, label %if.then119, label %if.end121, !mymd !249

if.then119:                                       ; preds = %lor.lhs.false116, %land.lhs.true114
  %50 = load ptr, ptr @stderr, align 8, !mymd !250
  %51 = load ptr, ptr @progname, align 8, !mymd !251
  %52 = load ptr, ptr @z_suffix, align 8, !mymd !252
  %call120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.49, ptr noundef %51, ptr noundef %52) #4, !mymd !253
  call void @do_exit(i32 noundef 1), !mymd !254
  br label %if.end121, !mymd !255

if.end121:                                        ; preds = %if.then119, %lor.lhs.false116
  %53 = load i32, ptr @do_lzw, align 4, !mymd !256
  %tobool122 = icmp ne i32 %53, 0, !mymd !257
  br i1 %tobool122, label %land.lhs.true123, label %if.end126, !mymd !258

land.lhs.true123:                                 ; preds = %if.end121
  %54 = load i32, ptr @decompress, align 4, !mymd !259
  %tobool124 = icmp ne i32 %54, 0, !mymd !260
  br i1 %tobool124, label %if.end126, label %if.then125, !mymd !261

if.then125:                                       ; preds = %land.lhs.true123
  store ptr @lzw, ptr @work, align 8, !mymd !262
  br label %if.end126, !mymd !263

if.end126:                                        ; preds = %if.then125, %land.lhs.true123, %if.end121
  %55 = load i32, ptr %file_count, align 4, !mymd !264
  %cmp127 = icmp ne i32 %55, 0, !mymd !265
  br i1 %cmp127, label %if.then129, label %if.else149, !mymd !266

if.then129:                                       ; preds = %if.end126
  %56 = load i32, ptr @to_stdout, align 4, !mymd !267
  %tobool130 = icmp ne i32 %56, 0, !mymd !268
  br i1 %tobool130, label %land.lhs.true131, label %if.end140, !mymd !269

land.lhs.true131:                                 ; preds = %if.then129
  %57 = load i32, ptr @test, align 4, !mymd !270
  %tobool132 = icmp ne i32 %57, 0, !mymd !271
  br i1 %tobool132, label %if.end140, label %land.lhs.true133, !mymd !272

land.lhs.true133:                                 ; preds = %land.lhs.true131
  %58 = load i32, ptr @list, align 4, !mymd !273
  %tobool134 = icmp ne i32 %58, 0, !mymd !274
  br i1 %tobool134, label %if.end140, label %land.lhs.true135, !mymd !275

land.lhs.true135:                                 ; preds = %land.lhs.true133
  %59 = load i32, ptr @decompress, align 4, !mymd !276
  %tobool136 = icmp ne i32 %59, 0, !mymd !277
  br i1 %tobool136, label %lor.lhs.false137, label %if.then139, !mymd !278

lor.lhs.false137:                                 ; preds = %land.lhs.true135
  %60 = load i32, ptr @ascii, align 4, !mymd !279
  %tobool138 = icmp ne i32 %60, 0, !mymd !280
  br i1 %tobool138, label %if.end140, label %if.then139, !mymd !281

if.then139:                                       ; preds = %lor.lhs.false137, %land.lhs.true135
  br label %if.end140, !mymd !282

if.end140:                                        ; preds = %if.then139, %lor.lhs.false137, %land.lhs.true133, %land.lhs.true131, %if.then129
  br label %while.cond141, !mymd !283

while.cond141:                                    ; preds = %while.body144, %if.end140
  %61 = load i32, ptr @optind, align 4, !mymd !284
  %62 = load i32, ptr %argc.addr, align 4, !mymd !285
  %cmp142 = icmp slt i32 %61, %62, !mymd !286
  br i1 %cmp142, label %while.body144, label %while.end148, !mymd !287

while.body144:                                    ; preds = %while.cond141
  %63 = load ptr, ptr %argv.addr, align 8, !mymd !288
  %64 = load i32, ptr @optind, align 4, !mymd !289
  %inc145 = add nsw i32 %64, 1, !mymd !290
  store i32 %inc145, ptr @optind, align 4, !mymd !291
  %idxprom146 = sext i32 %64 to i64, !mymd !292
  %arrayidx147 = getelementptr inbounds ptr, ptr %63, i64 %idxprom146, !mymd !293
  %65 = load ptr, ptr %arrayidx147, align 8, !mymd !294
  call void @treat_file(ptr noundef %65), !mymd !295
  br label %while.cond141, !llvm.loop !296, !mymd !297

while.end148:                                     ; preds = %while.cond141
  br label %if.end150, !mymd !298

if.else149:                                       ; preds = %if.end126
  call void @treat_stdin(), !mymd !299
  br label %if.end150, !mymd !300

if.end150:                                        ; preds = %if.else149, %while.end148
  %66 = load i32, ptr @list, align 4, !mymd !301
  %tobool151 = icmp ne i32 %66, 0, !mymd !302
  br i1 %tobool151, label %land.lhs.true152, label %if.end158, !mymd !303

land.lhs.true152:                                 ; preds = %if.end150
  %67 = load i32, ptr @quiet, align 4, !mymd !304
  %tobool153 = icmp ne i32 %67, 0, !mymd !305
  br i1 %tobool153, label %if.end158, label %land.lhs.true154, !mymd !306

land.lhs.true154:                                 ; preds = %land.lhs.true152
  %68 = load i32, ptr %file_count, align 4, !mymd !307
  %cmp155 = icmp sgt i32 %68, 1, !mymd !308
  br i1 %cmp155, label %if.then157, label %if.end158, !mymd !309

if.then157:                                       ; preds = %land.lhs.true154
  call void @do_list(i32 noundef -1, i32 noundef -1), !mymd !310
  br label %if.end158, !mymd !311

if.end158:                                        ; preds = %if.then157, %land.lhs.true154, %land.lhs.true152, %if.end150
  %69 = load i32, ptr @exit_code, align 4, !mymd !312
  call void @do_exit(i32 noundef %69), !mymd !313
  %70 = load i32, ptr @exit_code, align 4, !mymd !314
  ret i32 %70, !mymd !315
}

; Function Attrs: noinline nounwind uwtable
declare dso_local ptr @base_name(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
declare dso_local ptr @add_envopt(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @abort_gzip_signal() #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @usage() #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @do_exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @help() #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @license() #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @version() #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @lzw(i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @treat_file(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @treat_stdin() #2

; Function Attrs: noinline nounwind uwtable
declare hidden void @do_list(i32 noundef, i32 noundef) #2

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"3884"}
!7 = !{!"3885"}
!8 = !{!"3886"}
!9 = !{!"3887"}
!10 = !{!"3888"}
!11 = !{!"3889"}
!12 = !{!"3890"}
!13 = !{!"3891"}
!14 = !{!"3892"}
!15 = !{!"3893"}
!16 = !{!"3894"}
!17 = !{!"3895"}
!18 = !{!"3896"}
!19 = !{!"3897"}
!20 = !{!"3898"}
!21 = !{!"3899"}
!22 = !{!"3900"}
!23 = !{!"3901"}
!24 = !{!"3902"}
!25 = !{!"3903"}
!26 = !{!"3904"}
!27 = !{!"3905"}
!28 = !{!"3906"}
!29 = !{!"3907"}
!30 = !{!"3908"}
!31 = !{!"3909"}
!32 = !{!"3910"}
!33 = !{!"3911"}
!34 = !{!"3912"}
!35 = !{!"3913"}
!36 = !{!"3914"}
!37 = !{!"3915"}
!38 = !{!"3916"}
!39 = !{!"3917"}
!40 = !{!"3918"}
!41 = !{!"3919"}
!42 = !{!"3920"}
!43 = !{!"3921"}
!44 = !{!"3922"}
!45 = !{!"3923"}
!46 = !{!"3924"}
!47 = !{!"3925"}
!48 = !{!"3926"}
!49 = !{!"3927"}
!50 = !{!"3928"}
!51 = !{!"3929"}
!52 = !{!"3930"}
!53 = !{!"3931"}
!54 = !{!"3932"}
!55 = !{!"3933"}
!56 = !{!"3934"}
!57 = !{!"3935"}
!58 = !{!"3936"}
!59 = !{!"3937"}
!60 = !{!"3938"}
!61 = !{!"3939"}
!62 = !{!"3940"}
!63 = !{!"3941"}
!64 = !{!"3942"}
!65 = !{!"3943"}
!66 = !{!"3944"}
!67 = !{!"3945"}
!68 = !{!"3946"}
!69 = !{!"3947"}
!70 = !{!"3948"}
!71 = !{!"3949"}
!72 = !{!"3950"}
!73 = !{!"3951"}
!74 = !{!"3952"}
!75 = !{!"3953"}
!76 = !{!"3954"}
!77 = !{!"3955"}
!78 = !{!"3956"}
!79 = !{!"3957"}
!80 = !{!"3958"}
!81 = !{!"3959"}
!82 = !{!"3960"}
!83 = !{!"3961"}
!84 = !{!"3962"}
!85 = !{!"3963"}
!86 = !{!"3964"}
!87 = !{!"3965"}
!88 = !{!"3966"}
!89 = !{!"3967"}
!90 = !{!"3968"}
!91 = !{!"3969"}
!92 = !{!"3970"}
!93 = !{!"3971"}
!94 = !{!"3972"}
!95 = !{!"3973"}
!96 = !{!"3974"}
!97 = !{!"3975"}
!98 = !{!"3976"}
!99 = !{!"3977"}
!100 = !{!"3978"}
!101 = !{!"3979"}
!102 = !{!"3980"}
!103 = !{!"3981"}
!104 = !{!"3982"}
!105 = !{!"3983"}
!106 = !{!"3984"}
!107 = !{!"3985"}
!108 = !{!"3986"}
!109 = !{!"3987"}
!110 = !{!"3988"}
!111 = !{!"3989"}
!112 = !{!"3990"}
!113 = !{!"3991"}
!114 = !{!"3992"}
!115 = !{!"3993"}
!116 = !{!"3994"}
!117 = !{!"3995"}
!118 = !{!"3996"}
!119 = !{!"3997"}
!120 = !{!"3998"}
!121 = !{!"3999"}
!122 = !{!"4000"}
!123 = !{!"4001"}
!124 = !{!"4002"}
!125 = !{!"4003"}
!126 = !{!"4004"}
!127 = !{!"4005"}
!128 = !{!"4006"}
!129 = !{!"4007"}
!130 = !{!"4008"}
!131 = !{!"4009"}
!132 = !{!"4010"}
!133 = !{!"4011"}
!134 = !{!"4012"}
!135 = distinct !{!135, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"4013"}
!138 = !{!"4014"}
!139 = !{!"4015"}
!140 = !{!"4016"}
!141 = !{!"4017"}
!142 = !{!"4018"}
!143 = !{!"4019"}
!144 = !{!"4020"}
!145 = !{!"4021"}
!146 = !{!"4022"}
!147 = !{!"4023"}
!148 = !{!"4024"}
!149 = !{!"4025"}
!150 = !{!"4026"}
!151 = !{!"4027"}
!152 = !{!"4028"}
!153 = !{!"4029"}
!154 = !{!"4030"}
!155 = !{!"4031"}
!156 = !{!"4032"}
!157 = !{!"4033"}
!158 = !{!"4034"}
!159 = !{!"4035"}
!160 = !{!"4036"}
!161 = !{!"4037"}
!162 = !{!"4038"}
!163 = !{!"4039"}
!164 = !{!"4040"}
!165 = !{!"4041"}
!166 = !{!"4042"}
!167 = !{!"4043"}
!168 = !{!"4044"}
!169 = !{!"4045"}
!170 = !{!"4046"}
!171 = !{!"4047"}
!172 = !{!"4048"}
!173 = !{!"4049"}
!174 = !{!"4050"}
!175 = !{!"4051"}
!176 = !{!"4052"}
!177 = !{!"4053"}
!178 = !{!"4054"}
!179 = !{!"4055"}
!180 = !{!"4056"}
!181 = !{!"4057"}
!182 = !{!"4058"}
!183 = !{!"4059"}
!184 = !{!"4060"}
!185 = !{!"4061"}
!186 = !{!"4062"}
!187 = !{!"4063"}
!188 = !{!"4064"}
!189 = !{!"4065"}
!190 = !{!"4066"}
!191 = !{!"4067"}
!192 = !{!"4068"}
!193 = !{!"4069"}
!194 = !{!"4070"}
!195 = !{!"4071"}
!196 = !{!"4072"}
!197 = !{!"4073"}
!198 = !{!"4074"}
!199 = !{!"4075"}
!200 = !{!"4076"}
!201 = !{!"4077"}
!202 = !{!"4078"}
!203 = !{!"4079"}
!204 = !{!"4080"}
!205 = distinct !{!205, !136}
!206 = !{!"4081"}
!207 = !{!"4082"}
!208 = !{!"4083"}
!209 = !{!"4084"}
!210 = !{!"4085"}
!211 = !{!"4086"}
!212 = !{!"4087"}
!213 = !{!"4088"}
!214 = !{!"4089"}
!215 = !{!"4090"}
!216 = !{!"4091"}
!217 = !{!"4092"}
!218 = !{!"4093"}
!219 = !{!"4094"}
!220 = !{!"4095"}
!221 = !{!"4096"}
!222 = !{!"4097"}
!223 = !{!"4098"}
!224 = !{!"4099"}
!225 = !{!"4100"}
!226 = !{!"4101"}
!227 = !{!"4102"}
!228 = !{!"4103"}
!229 = !{!"4104"}
!230 = !{!"4105"}
!231 = !{!"4106"}
!232 = !{!"4107"}
!233 = !{!"4108"}
!234 = !{!"4109"}
!235 = !{!"4110"}
!236 = !{!"4111"}
!237 = !{!"4112"}
!238 = !{!"4113"}
!239 = !{!"4114"}
!240 = !{!"4115"}
!241 = !{!"4116"}
!242 = !{!"4117"}
!243 = !{!"4118"}
!244 = !{!"4119"}
!245 = !{!"4120"}
!246 = !{!"4121"}
!247 = !{!"4122"}
!248 = !{!"4123"}
!249 = !{!"4124"}
!250 = !{!"4125"}
!251 = !{!"4126"}
!252 = !{!"4127"}
!253 = !{!"4128"}
!254 = !{!"4129"}
!255 = !{!"4130"}
!256 = !{!"4131"}
!257 = !{!"4132"}
!258 = !{!"4133"}
!259 = !{!"4134"}
!260 = !{!"4135"}
!261 = !{!"4136"}
!262 = !{!"4137"}
!263 = !{!"4138"}
!264 = !{!"4139"}
!265 = !{!"4140"}
!266 = !{!"4141"}
!267 = !{!"4142"}
!268 = !{!"4143"}
!269 = !{!"4144"}
!270 = !{!"4145"}
!271 = !{!"4146"}
!272 = !{!"4147"}
!273 = !{!"4148"}
!274 = !{!"4149"}
!275 = !{!"4150"}
!276 = !{!"4151"}
!277 = !{!"4152"}
!278 = !{!"4153"}
!279 = !{!"4154"}
!280 = !{!"4155"}
!281 = !{!"4156"}
!282 = !{!"4157"}
!283 = !{!"4158"}
!284 = !{!"4159"}
!285 = !{!"4160"}
!286 = !{!"4161"}
!287 = !{!"4162"}
!288 = !{!"4163"}
!289 = !{!"4164"}
!290 = !{!"4165"}
!291 = !{!"4166"}
!292 = !{!"4167"}
!293 = !{!"4168"}
!294 = !{!"4169"}
!295 = !{!"4170"}
!296 = distinct !{!296, !136}
!297 = !{!"4171"}
!298 = !{!"4172"}
!299 = !{!"4173"}
!300 = !{!"4174"}
!301 = !{!"4175"}
!302 = !{!"4176"}
!303 = !{!"4177"}
!304 = !{!"4178"}
!305 = !{!"4179"}
!306 = !{!"4180"}
!307 = !{!"4181"}
!308 = !{!"4182"}
!309 = !{!"4183"}
!310 = !{!"4184"}
!311 = !{!"4185"}
!312 = !{!"4186"}
!313 = !{!"4187"}
!314 = !{!"4188"}
!315 = !{!"4189"}
