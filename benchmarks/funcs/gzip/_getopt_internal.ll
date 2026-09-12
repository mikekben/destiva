; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }

@optind = external dso_local global i32, align 4
@opterr = external dso_local global i32, align 4
@optopt = external dso_local global i32, align 4
@optarg = external dso_local global ptr, align 8
@__getopt_initialized = external dso_local global i32, align 4
@nextchar = external hidden global ptr, align 8
@last_nonopt = external hidden global i32, align 4
@first_nonopt = external hidden global i32, align 4
@ordering = external hidden global i32, align 4
@.str.1 = external hidden unnamed_addr constant [3 x i8], align 1
@stderr = external global ptr, align 8
@.str.2 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.3 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.5 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.6 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.7 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.8 = external hidden unnamed_addr constant [1 x i8], align 1
@posixly_correct = external hidden global ptr, align 8
@.str.9 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.10 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.11 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.12 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.13 = external hidden unnamed_addr constant [46 x i8], align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_getopt_internal(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring, ptr noundef %longopts, ptr noundef %longind, i32 noundef %long_only) #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %argc.addr = alloca i32, align 4, !mymd !7
  %argv.addr = alloca ptr, align 8, !mymd !8
  %optstring.addr = alloca ptr, align 8, !mymd !9
  %longopts.addr = alloca ptr, align 8, !mymd !10
  %longind.addr = alloca ptr, align 8, !mymd !11
  %long_only.addr = alloca i32, align 4, !mymd !12
  %print_errors = alloca i32, align 4, !mymd !13
  %nameend = alloca ptr, align 8, !mymd !14
  %p = alloca ptr, align 8, !mymd !15
  %pfound = alloca ptr, align 8, !mymd !16
  %exact = alloca i32, align 4, !mymd !17
  %ambig = alloca i32, align 4, !mymd !18
  %indfound = alloca i32, align 4, !mymd !19
  %option_index = alloca i32, align 4, !mymd !20
  %c = alloca i8, align 1, !mymd !21
  %temp = alloca ptr, align 8, !mymd !22
  %nameend374 = alloca ptr, align 8, !mymd !23
  %p375 = alloca ptr, align 8, !mymd !24
  %pfound376 = alloca ptr, align 8, !mymd !25
  %exact377 = alloca i32, align 4, !mymd !26
  %ambig378 = alloca i32, align 4, !mymd !27
  %indfound379 = alloca i32, align 4, !mymd !28
  %option_index380 = alloca i32, align 4, !mymd !29
  store i32 %argc, ptr %argc.addr, align 4, !mymd !30
  store ptr %argv, ptr %argv.addr, align 8, !mymd !31
  store ptr %optstring, ptr %optstring.addr, align 8, !mymd !32
  store ptr %longopts, ptr %longopts.addr, align 8, !mymd !33
  store ptr %longind, ptr %longind.addr, align 8, !mymd !34
  store i32 %long_only, ptr %long_only.addr, align 4, !mymd !35
  %0 = load i32, ptr @opterr, align 4, !mymd !36
  store i32 %0, ptr %print_errors, align 4, !mymd !37
  %1 = load ptr, ptr %optstring.addr, align 8, !mymd !38
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0, !mymd !39
  %2 = load i8, ptr %arrayidx, align 1, !mymd !40
  %conv = sext i8 %2 to i32, !mymd !41
  %cmp = icmp eq i32 %conv, 58, !mymd !42
  br i1 %cmp, label %if.then, label %if.end, !mymd !43

if.then:                                          ; preds = %entry
  store i32 0, ptr %print_errors, align 4, !mymd !44
  br label %if.end, !mymd !45

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %argc.addr, align 4, !mymd !46
  %cmp2 = icmp slt i32 %3, 1, !mymd !47
  br i1 %cmp2, label %if.then4, label %if.end5, !mymd !48

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !mymd !49
  br label %return, !mymd !50

if.end5:                                          ; preds = %if.end
  store ptr null, ptr @optarg, align 8, !mymd !51
  %4 = load i32, ptr @optind, align 4, !mymd !52
  %cmp6 = icmp eq i32 %4, 0, !mymd !53
  br i1 %cmp6, label %if.then8, label %lor.lhs.false, !mymd !54

lor.lhs.false:                                    ; preds = %if.end5
  %5 = load i32, ptr @__getopt_initialized, align 4, !mymd !55
  %tobool = icmp ne i32 %5, 0, !mymd !56
  br i1 %tobool, label %if.end13, label %if.then8, !mymd !57

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  %6 = load i32, ptr @optind, align 4, !mymd !58
  %cmp9 = icmp eq i32 %6, 0, !mymd !59
  br i1 %cmp9, label %if.then11, label %if.end12, !mymd !60

if.then11:                                        ; preds = %if.then8
  store i32 1, ptr @optind, align 4, !mymd !61
  br label %if.end12, !mymd !62

if.end12:                                         ; preds = %if.then11, %if.then8
  %7 = load i32, ptr %argc.addr, align 4, !mymd !63
  %8 = load ptr, ptr %argv.addr, align 8, !mymd !64
  %9 = load ptr, ptr %optstring.addr, align 8, !mymd !65
  %call = call ptr @_getopt_initialize(i32 noundef %7, ptr noundef %8, ptr noundef %9), !mymd !66
  store ptr %call, ptr %optstring.addr, align 8, !mymd !67
  store i32 1, ptr @__getopt_initialized, align 4, !mymd !68
  br label %if.end13, !mymd !69

if.end13:                                         ; preds = %if.end12, %lor.lhs.false
  %10 = load ptr, ptr @nextchar, align 8, !mymd !70
  %cmp14 = icmp eq ptr %10, null, !mymd !71
  br i1 %cmp14, label %if.then20, label %lor.lhs.false16, !mymd !72

lor.lhs.false16:                                  ; preds = %if.end13
  %11 = load ptr, ptr @nextchar, align 8, !mymd !73
  %12 = load i8, ptr %11, align 1, !mymd !74
  %conv17 = sext i8 %12 to i32, !mymd !75
  %cmp18 = icmp eq i32 %conv17, 0, !mymd !76
  br i1 %cmp18, label %if.then20, label %if.end121, !mymd !77

if.then20:                                        ; preds = %lor.lhs.false16, %if.end13
  %13 = load i32, ptr @last_nonopt, align 4, !mymd !78
  %14 = load i32, ptr @optind, align 4, !mymd !79
  %cmp21 = icmp sgt i32 %13, %14, !mymd !80
  br i1 %cmp21, label %if.then23, label %if.end24, !mymd !81

if.then23:                                        ; preds = %if.then20
  %15 = load i32, ptr @optind, align 4, !mymd !82
  store i32 %15, ptr @last_nonopt, align 4, !mymd !83
  br label %if.end24, !mymd !84

if.end24:                                         ; preds = %if.then23, %if.then20
  %16 = load i32, ptr @first_nonopt, align 4, !mymd !85
  %17 = load i32, ptr @optind, align 4, !mymd !86
  %cmp25 = icmp sgt i32 %16, %17, !mymd !87
  br i1 %cmp25, label %if.then27, label %if.end28, !mymd !88

if.then27:                                        ; preds = %if.end24
  %18 = load i32, ptr @optind, align 4, !mymd !89
  store i32 %18, ptr @first_nonopt, align 4, !mymd !90
  br label %if.end28, !mymd !91

if.end28:                                         ; preds = %if.then27, %if.end24
  %19 = load i32, ptr @ordering, align 4, !mymd !92
  %cmp29 = icmp eq i32 %19, 1, !mymd !93
  br i1 %cmp29, label %if.then31, label %if.end55, !mymd !94

if.then31:                                        ; preds = %if.end28
  %20 = load i32, ptr @first_nonopt, align 4, !mymd !95
  %21 = load i32, ptr @last_nonopt, align 4, !mymd !96
  %cmp32 = icmp ne i32 %20, %21, !mymd !97
  br i1 %cmp32, label %land.lhs.true, label %if.else, !mymd !98

land.lhs.true:                                    ; preds = %if.then31
  %22 = load i32, ptr @last_nonopt, align 4, !mymd !99
  %23 = load i32, ptr @optind, align 4, !mymd !100
  %cmp34 = icmp ne i32 %22, %23, !mymd !101
  br i1 %cmp34, label %if.then36, label %if.else, !mymd !102

if.then36:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %argv.addr, align 8, !mymd !103
  call void @exchange(ptr noundef %24), !mymd !104
  br label %if.end41, !mymd !105

if.else:                                          ; preds = %land.lhs.true, %if.then31
  %25 = load i32, ptr @last_nonopt, align 4, !mymd !106
  %26 = load i32, ptr @optind, align 4, !mymd !107
  %cmp37 = icmp ne i32 %25, %26, !mymd !108
  br i1 %cmp37, label %if.then39, label %if.end40, !mymd !109

if.then39:                                        ; preds = %if.else
  %27 = load i32, ptr @optind, align 4, !mymd !110
  store i32 %27, ptr @first_nonopt, align 4, !mymd !111
  br label %if.end40, !mymd !112

if.end40:                                         ; preds = %if.then39, %if.else
  br label %if.end41, !mymd !113

if.end41:                                         ; preds = %if.end40, %if.then36
  br label %while.cond, !mymd !114

while.cond:                                       ; preds = %while.body, %if.end41
  %28 = load i32, ptr @optind, align 4, !mymd !115
  %29 = load i32, ptr %argc.addr, align 4, !mymd !116
  %cmp42 = icmp slt i32 %28, %29, !mymd !117
  br i1 %cmp42, label %land.rhs, label %land.end, !mymd !118

land.rhs:                                         ; preds = %while.cond
  %30 = load ptr, ptr %argv.addr, align 8, !mymd !119
  %31 = load i32, ptr @optind, align 4, !mymd !120
  %idxprom = sext i32 %31 to i64, !mymd !121
  %arrayidx44 = getelementptr inbounds ptr, ptr %30, i64 %idxprom, !mymd !122
  %32 = load ptr, ptr %arrayidx44, align 8, !mymd !123
  %arrayidx45 = getelementptr inbounds i8, ptr %32, i64 0, !mymd !124
  %33 = load i8, ptr %arrayidx45, align 1, !mymd !125
  %conv46 = sext i8 %33 to i32, !mymd !126
  %cmp47 = icmp ne i32 %conv46, 45, !mymd !127
  br i1 %cmp47, label %lor.end, label %lor.rhs, !mymd !128

lor.rhs:                                          ; preds = %land.rhs
  %34 = load ptr, ptr %argv.addr, align 8, !mymd !129
  %35 = load i32, ptr @optind, align 4, !mymd !130
  %idxprom49 = sext i32 %35 to i64, !mymd !131
  %arrayidx50 = getelementptr inbounds ptr, ptr %34, i64 %idxprom49, !mymd !132
  %36 = load ptr, ptr %arrayidx50, align 8, !mymd !133
  %arrayidx51 = getelementptr inbounds i8, ptr %36, i64 1, !mymd !134
  %37 = load i8, ptr %arrayidx51, align 1, !mymd !135
  %conv52 = sext i8 %37 to i32, !mymd !136
  %cmp53 = icmp eq i32 %conv52, 0, !mymd !137
  br label %lor.end, !mymd !138

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %38 = phi i1 [ true, %land.rhs ], [ %cmp53, %lor.rhs ], !mymd !139
  br label %land.end, !mymd !140

land.end:                                         ; preds = %lor.end, %while.cond
  %39 = phi i1 [ false, %while.cond ], [ %38, %lor.end ], !mymd !141
  br i1 %39, label %while.body, label %while.end, !mymd !142

while.body:                                       ; preds = %land.end
  %40 = load i32, ptr @optind, align 4, !mymd !143
  %inc = add nsw i32 %40, 1, !mymd !144
  store i32 %inc, ptr @optind, align 4, !mymd !145
  br label %while.cond, !llvm.loop !146, !mymd !148

while.end:                                        ; preds = %land.end
  %41 = load i32, ptr @optind, align 4, !mymd !149
  store i32 %41, ptr @last_nonopt, align 4, !mymd !150
  br label %if.end55, !mymd !151

if.end55:                                         ; preds = %while.end, %if.end28
  %42 = load i32, ptr @optind, align 4, !mymd !152
  %43 = load i32, ptr %argc.addr, align 4, !mymd !153
  %cmp56 = icmp ne i32 %42, %43, !mymd !154
  br i1 %cmp56, label %land.lhs.true58, label %if.end77, !mymd !155

land.lhs.true58:                                  ; preds = %if.end55
  %44 = load ptr, ptr %argv.addr, align 8, !mymd !156
  %45 = load i32, ptr @optind, align 4, !mymd !157
  %idxprom59 = sext i32 %45 to i64, !mymd !158
  %arrayidx60 = getelementptr inbounds ptr, ptr %44, i64 %idxprom59, !mymd !159
  %46 = load ptr, ptr %arrayidx60, align 8, !mymd !160
  %call61 = call i32 @strcmp(ptr noundef %46, ptr noundef @.str.1) #3, !mymd !161
  %tobool62 = icmp ne i32 %call61, 0, !mymd !162
  br i1 %tobool62, label %if.end77, label %if.then63, !mymd !163

if.then63:                                        ; preds = %land.lhs.true58
  %47 = load i32, ptr @optind, align 4, !mymd !164
  %inc64 = add nsw i32 %47, 1, !mymd !165
  store i32 %inc64, ptr @optind, align 4, !mymd !166
  %48 = load i32, ptr @first_nonopt, align 4, !mymd !167
  %49 = load i32, ptr @last_nonopt, align 4, !mymd !168
  %cmp65 = icmp ne i32 %48, %49, !mymd !169
  br i1 %cmp65, label %land.lhs.true67, label %if.else71, !mymd !170

land.lhs.true67:                                  ; preds = %if.then63
  %50 = load i32, ptr @last_nonopt, align 4, !mymd !171
  %51 = load i32, ptr @optind, align 4, !mymd !172
  %cmp68 = icmp ne i32 %50, %51, !mymd !173
  br i1 %cmp68, label %if.then70, label %if.else71, !mymd !174

if.then70:                                        ; preds = %land.lhs.true67
  %52 = load ptr, ptr %argv.addr, align 8, !mymd !175
  call void @exchange(ptr noundef %52), !mymd !176
  br label %if.end76, !mymd !177

if.else71:                                        ; preds = %land.lhs.true67, %if.then63
  %53 = load i32, ptr @first_nonopt, align 4, !mymd !178
  %54 = load i32, ptr @last_nonopt, align 4, !mymd !179
  %cmp72 = icmp eq i32 %53, %54, !mymd !180
  br i1 %cmp72, label %if.then74, label %if.end75, !mymd !181

if.then74:                                        ; preds = %if.else71
  %55 = load i32, ptr @optind, align 4, !mymd !182
  store i32 %55, ptr @first_nonopt, align 4, !mymd !183
  br label %if.end75, !mymd !184

if.end75:                                         ; preds = %if.then74, %if.else71
  br label %if.end76, !mymd !185

if.end76:                                         ; preds = %if.end75, %if.then70
  %56 = load i32, ptr %argc.addr, align 4, !mymd !186
  store i32 %56, ptr @last_nonopt, align 4, !mymd !187
  %57 = load i32, ptr %argc.addr, align 4, !mymd !188
  store i32 %57, ptr @optind, align 4, !mymd !189
  br label %if.end77, !mymd !190

if.end77:                                         ; preds = %if.end76, %land.lhs.true58, %if.end55
  %58 = load i32, ptr @optind, align 4, !mymd !191
  %59 = load i32, ptr %argc.addr, align 4, !mymd !192
  %cmp78 = icmp eq i32 %58, %59, !mymd !193
  br i1 %cmp78, label %if.then80, label %if.end85, !mymd !194

if.then80:                                        ; preds = %if.end77
  %60 = load i32, ptr @first_nonopt, align 4, !mymd !195
  %61 = load i32, ptr @last_nonopt, align 4, !mymd !196
  %cmp81 = icmp ne i32 %60, %61, !mymd !197
  br i1 %cmp81, label %if.then83, label %if.end84, !mymd !198

if.then83:                                        ; preds = %if.then80
  %62 = load i32, ptr @first_nonopt, align 4, !mymd !199
  store i32 %62, ptr @optind, align 4, !mymd !200
  br label %if.end84, !mymd !201

if.end84:                                         ; preds = %if.then83, %if.then80
  store i32 -1, ptr %retval, align 4, !mymd !202
  br label %return, !mymd !203

if.end85:                                         ; preds = %if.end77
  %63 = load ptr, ptr %argv.addr, align 8, !mymd !204
  %64 = load i32, ptr @optind, align 4, !mymd !205
  %idxprom86 = sext i32 %64 to i64, !mymd !206
  %arrayidx87 = getelementptr inbounds ptr, ptr %63, i64 %idxprom86, !mymd !207
  %65 = load ptr, ptr %arrayidx87, align 8, !mymd !208
  %arrayidx88 = getelementptr inbounds i8, ptr %65, i64 0, !mymd !209
  %66 = load i8, ptr %arrayidx88, align 1, !mymd !210
  %conv89 = sext i8 %66 to i32, !mymd !211
  %cmp90 = icmp ne i32 %conv89, 45, !mymd !212
  br i1 %cmp90, label %if.then99, label %lor.lhs.false92, !mymd !213

lor.lhs.false92:                                  ; preds = %if.end85
  %67 = load ptr, ptr %argv.addr, align 8, !mymd !214
  %68 = load i32, ptr @optind, align 4, !mymd !215
  %idxprom93 = sext i32 %68 to i64, !mymd !216
  %arrayidx94 = getelementptr inbounds ptr, ptr %67, i64 %idxprom93, !mymd !217
  %69 = load ptr, ptr %arrayidx94, align 8, !mymd !218
  %arrayidx95 = getelementptr inbounds i8, ptr %69, i64 1, !mymd !219
  %70 = load i8, ptr %arrayidx95, align 1, !mymd !220
  %conv96 = sext i8 %70 to i32, !mymd !221
  %cmp97 = icmp eq i32 %conv96, 0, !mymd !222
  br i1 %cmp97, label %if.then99, label %if.end107, !mymd !223

if.then99:                                        ; preds = %lor.lhs.false92, %if.end85
  %71 = load i32, ptr @ordering, align 4, !mymd !224
  %cmp100 = icmp eq i32 %71, 0, !mymd !225
  br i1 %cmp100, label %if.then102, label %if.end103, !mymd !226

if.then102:                                       ; preds = %if.then99
  store i32 -1, ptr %retval, align 4, !mymd !227
  br label %return, !mymd !228

if.end103:                                        ; preds = %if.then99
  %72 = load ptr, ptr %argv.addr, align 8, !mymd !229
  %73 = load i32, ptr @optind, align 4, !mymd !230
  %inc104 = add nsw i32 %73, 1, !mymd !231
  store i32 %inc104, ptr @optind, align 4, !mymd !232
  %idxprom105 = sext i32 %73 to i64, !mymd !233
  %arrayidx106 = getelementptr inbounds ptr, ptr %72, i64 %idxprom105, !mymd !234
  %74 = load ptr, ptr %arrayidx106, align 8, !mymd !235
  store ptr %74, ptr @optarg, align 8, !mymd !236
  store i32 1, ptr %retval, align 4, !mymd !237
  br label %return, !mymd !238

if.end107:                                        ; preds = %lor.lhs.false92
  %75 = load ptr, ptr %argv.addr, align 8, !mymd !239
  %76 = load i32, ptr @optind, align 4, !mymd !240
  %idxprom108 = sext i32 %76 to i64, !mymd !241
  %arrayidx109 = getelementptr inbounds ptr, ptr %75, i64 %idxprom108, !mymd !242
  %77 = load ptr, ptr %arrayidx109, align 8, !mymd !243
  %add.ptr = getelementptr inbounds i8, ptr %77, i64 1, !mymd !244
  %78 = load ptr, ptr %longopts.addr, align 8, !mymd !245
  %cmp110 = icmp ne ptr %78, null, !mymd !246
  br i1 %cmp110, label %land.rhs112, label %land.end119, !mymd !247

land.rhs112:                                      ; preds = %if.end107
  %79 = load ptr, ptr %argv.addr, align 8, !mymd !248
  %80 = load i32, ptr @optind, align 4, !mymd !249
  %idxprom113 = sext i32 %80 to i64, !mymd !250
  %arrayidx114 = getelementptr inbounds ptr, ptr %79, i64 %idxprom113, !mymd !251
  %81 = load ptr, ptr %arrayidx114, align 8, !mymd !252
  %arrayidx115 = getelementptr inbounds i8, ptr %81, i64 1, !mymd !253
  %82 = load i8, ptr %arrayidx115, align 1, !mymd !254
  %conv116 = sext i8 %82 to i32, !mymd !255
  %cmp117 = icmp eq i32 %conv116, 45, !mymd !256
  br label %land.end119, !mymd !257

land.end119:                                      ; preds = %land.rhs112, %if.end107
  %83 = phi i1 [ false, %if.end107 ], [ %cmp117, %land.rhs112 ], !mymd !258
  %land.ext = zext i1 %83 to i32, !mymd !259
  %idx.ext = sext i32 %land.ext to i64, !mymd !260
  %add.ptr120 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext, !mymd !261
  store ptr %add.ptr120, ptr @nextchar, align 8, !mymd !262
  br label %if.end121, !mymd !263

if.end121:                                        ; preds = %land.end119, %lor.lhs.false16
  %84 = load ptr, ptr %longopts.addr, align 8, !mymd !264
  %cmp122 = icmp ne ptr %84, null, !mymd !265
  br i1 %cmp122, label %land.lhs.true124, label %if.end332, !mymd !266

land.lhs.true124:                                 ; preds = %if.end121
  %85 = load ptr, ptr %argv.addr, align 8, !mymd !267
  %86 = load i32, ptr @optind, align 4, !mymd !268
  %idxprom125 = sext i32 %86 to i64, !mymd !269
  %arrayidx126 = getelementptr inbounds ptr, ptr %85, i64 %idxprom125, !mymd !270
  %87 = load ptr, ptr %arrayidx126, align 8, !mymd !271
  %arrayidx127 = getelementptr inbounds i8, ptr %87, i64 1, !mymd !272
  %88 = load i8, ptr %arrayidx127, align 1, !mymd !273
  %conv128 = sext i8 %88 to i32, !mymd !274
  %cmp129 = icmp eq i32 %conv128, 45, !mymd !275
  br i1 %cmp129, label %if.then146, label %lor.lhs.false131, !mymd !276

lor.lhs.false131:                                 ; preds = %land.lhs.true124
  %89 = load i32, ptr %long_only.addr, align 4, !mymd !277
  %tobool132 = icmp ne i32 %89, 0, !mymd !278
  br i1 %tobool132, label %land.lhs.true133, label %if.end332, !mymd !279

land.lhs.true133:                                 ; preds = %lor.lhs.false131
  %90 = load ptr, ptr %argv.addr, align 8, !mymd !280
  %91 = load i32, ptr @optind, align 4, !mymd !281
  %idxprom134 = sext i32 %91 to i64, !mymd !282
  %arrayidx135 = getelementptr inbounds ptr, ptr %90, i64 %idxprom134, !mymd !283
  %92 = load ptr, ptr %arrayidx135, align 8, !mymd !284
  %arrayidx136 = getelementptr inbounds i8, ptr %92, i64 2, !mymd !285
  %93 = load i8, ptr %arrayidx136, align 1, !mymd !286
  %conv137 = sext i8 %93 to i32, !mymd !287
  %tobool138 = icmp ne i32 %conv137, 0, !mymd !288
  br i1 %tobool138, label %if.then146, label %lor.lhs.false139, !mymd !289

lor.lhs.false139:                                 ; preds = %land.lhs.true133
  %94 = load ptr, ptr %optstring.addr, align 8, !mymd !290
  %95 = load ptr, ptr %argv.addr, align 8, !mymd !291
  %96 = load i32, ptr @optind, align 4, !mymd !292
  %idxprom140 = sext i32 %96 to i64, !mymd !293
  %arrayidx141 = getelementptr inbounds ptr, ptr %95, i64 %idxprom140, !mymd !294
  %97 = load ptr, ptr %arrayidx141, align 8, !mymd !295
  %arrayidx142 = getelementptr inbounds i8, ptr %97, i64 1, !mymd !296
  %98 = load i8, ptr %arrayidx142, align 1, !mymd !297
  %conv143 = sext i8 %98 to i32, !mymd !298
  %call144 = call ptr @my_index(ptr noundef %94, i32 noundef %conv143), !mymd !299
  %tobool145 = icmp ne ptr %call144, null, !mymd !300
  br i1 %tobool145, label %if.end332, label %if.then146, !mymd !301

if.then146:                                       ; preds = %lor.lhs.false139, %land.lhs.true133, %land.lhs.true124
  store ptr null, ptr %pfound, align 8, !mymd !302
  store i32 0, ptr %exact, align 4, !mymd !303
  store i32 0, ptr %ambig, align 4, !mymd !304
  store i32 -1, ptr %indfound, align 4, !mymd !305
  %99 = load ptr, ptr @nextchar, align 8, !mymd !306
  store ptr %99, ptr %nameend, align 8, !mymd !307
  br label %for.cond, !mymd !308

for.cond:                                         ; preds = %for.inc, %if.then146
  %100 = load ptr, ptr %nameend, align 8, !mymd !309
  %101 = load i8, ptr %100, align 1, !mymd !310
  %conv147 = sext i8 %101 to i32, !mymd !311
  %tobool148 = icmp ne i32 %conv147, 0, !mymd !312
  br i1 %tobool148, label %land.rhs149, label %land.end153, !mymd !313

land.rhs149:                                      ; preds = %for.cond
  %102 = load ptr, ptr %nameend, align 8, !mymd !314
  %103 = load i8, ptr %102, align 1, !mymd !315
  %conv150 = sext i8 %103 to i32, !mymd !316
  %cmp151 = icmp ne i32 %conv150, 61, !mymd !317
  br label %land.end153, !mymd !318

land.end153:                                      ; preds = %land.rhs149, %for.cond
  %104 = phi i1 [ false, %for.cond ], [ %cmp151, %land.rhs149 ], !mymd !319
  br i1 %104, label %for.body, label %for.end, !mymd !320

for.body:                                         ; preds = %land.end153
  br label %for.inc, !mymd !321

for.inc:                                          ; preds = %for.body
  %105 = load ptr, ptr %nameend, align 8, !mymd !322
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %105, i32 1, !mymd !323
  store ptr %incdec.ptr, ptr %nameend, align 8, !mymd !324
  br label %for.cond, !llvm.loop !325, !mymd !326

for.end:                                          ; preds = %land.end153
  %106 = load ptr, ptr %longopts.addr, align 8, !mymd !327
  store ptr %106, ptr %p, align 8, !mymd !328
  store i32 0, ptr %option_index, align 4, !mymd !329
  br label %for.cond155, !mymd !330

for.cond155:                                      ; preds = %for.inc195, %for.end
  %107 = load ptr, ptr %p, align 8, !mymd !331
  %name = getelementptr inbounds nuw %struct.option, ptr %107, i32 0, i32 0, !mymd !332
  %108 = load ptr, ptr %name, align 8, !mymd !333
  %tobool156 = icmp ne ptr %108, null, !mymd !334
  br i1 %tobool156, label %for.body157, label %for.end198, !mymd !335

for.body157:                                      ; preds = %for.cond155
  %109 = load ptr, ptr %p, align 8, !mymd !336
  %name158 = getelementptr inbounds nuw %struct.option, ptr %109, i32 0, i32 0, !mymd !337
  %110 = load ptr, ptr %name158, align 8, !mymd !338
  %111 = load ptr, ptr @nextchar, align 8, !mymd !339
  %112 = load ptr, ptr %nameend, align 8, !mymd !340
  %113 = load ptr, ptr @nextchar, align 8, !mymd !341
  %sub.ptr.lhs.cast = ptrtoint ptr %112 to i64, !mymd !342
  %sub.ptr.rhs.cast = ptrtoint ptr %113 to i64, !mymd !343
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !mymd !344
  %call159 = call i32 @strncmp(ptr noundef %110, ptr noundef %111, i64 noundef %sub.ptr.sub) #3, !mymd !345
  %tobool160 = icmp ne i32 %call159, 0, !mymd !346
  br i1 %tobool160, label %if.end194, label %if.then161, !mymd !347

if.then161:                                       ; preds = %for.body157
  %114 = load ptr, ptr %nameend, align 8, !mymd !348
  %115 = load ptr, ptr @nextchar, align 8, !mymd !349
  %sub.ptr.lhs.cast162 = ptrtoint ptr %114 to i64, !mymd !350
  %sub.ptr.rhs.cast163 = ptrtoint ptr %115 to i64, !mymd !351
  %sub.ptr.sub164 = sub i64 %sub.ptr.lhs.cast162, %sub.ptr.rhs.cast163, !mymd !352
  %conv165 = trunc i64 %sub.ptr.sub164 to i32, !mymd !353
  %116 = load ptr, ptr %p, align 8, !mymd !354
  %name166 = getelementptr inbounds nuw %struct.option, ptr %116, i32 0, i32 0, !mymd !355
  %117 = load ptr, ptr %name166, align 8, !mymd !356
  %call167 = call i64 @strlen(ptr noundef %117) #3, !mymd !357
  %conv168 = trunc i64 %call167 to i32, !mymd !358
  %cmp169 = icmp eq i32 %conv165, %conv168, !mymd !359
  br i1 %cmp169, label %if.then171, label %if.else172, !mymd !360

if.then171:                                       ; preds = %if.then161
  %118 = load ptr, ptr %p, align 8, !mymd !361
  store ptr %118, ptr %pfound, align 8, !mymd !362
  %119 = load i32, ptr %option_index, align 4, !mymd !363
  store i32 %119, ptr %indfound, align 4, !mymd !364
  store i32 1, ptr %exact, align 4, !mymd !365
  br label %for.end198, !mymd !366

if.else172:                                       ; preds = %if.then161
  %120 = load ptr, ptr %pfound, align 8, !mymd !367
  %cmp173 = icmp eq ptr %120, null, !mymd !368
  br i1 %cmp173, label %if.then175, label %if.else176, !mymd !369

if.then175:                                       ; preds = %if.else172
  %121 = load ptr, ptr %p, align 8, !mymd !370
  store ptr %121, ptr %pfound, align 8, !mymd !371
  %122 = load i32, ptr %option_index, align 4, !mymd !372
  store i32 %122, ptr %indfound, align 4, !mymd !373
  br label %if.end192, !mymd !374

if.else176:                                       ; preds = %if.else172
  %123 = load i32, ptr %long_only.addr, align 4, !mymd !375
  %tobool177 = icmp ne i32 %123, 0, !mymd !376
  br i1 %tobool177, label %if.then190, label %lor.lhs.false178, !mymd !377

lor.lhs.false178:                                 ; preds = %if.else176
  %124 = load ptr, ptr %pfound, align 8, !mymd !378
  %has_arg = getelementptr inbounds nuw %struct.option, ptr %124, i32 0, i32 1, !mymd !379
  %125 = load i32, ptr %has_arg, align 8, !mymd !380
  %126 = load ptr, ptr %p, align 8, !mymd !381
  %has_arg179 = getelementptr inbounds nuw %struct.option, ptr %126, i32 0, i32 1, !mymd !382
  %127 = load i32, ptr %has_arg179, align 8, !mymd !383
  %cmp180 = icmp ne i32 %125, %127, !mymd !384
  br i1 %cmp180, label %if.then190, label %lor.lhs.false182, !mymd !385

lor.lhs.false182:                                 ; preds = %lor.lhs.false178
  %128 = load ptr, ptr %pfound, align 8, !mymd !386
  %flag = getelementptr inbounds nuw %struct.option, ptr %128, i32 0, i32 2, !mymd !387
  %129 = load ptr, ptr %flag, align 8, !mymd !388
  %130 = load ptr, ptr %p, align 8, !mymd !389
  %flag183 = getelementptr inbounds nuw %struct.option, ptr %130, i32 0, i32 2, !mymd !390
  %131 = load ptr, ptr %flag183, align 8, !mymd !391
  %cmp184 = icmp ne ptr %129, %131, !mymd !392
  br i1 %cmp184, label %if.then190, label %lor.lhs.false186, !mymd !393

lor.lhs.false186:                                 ; preds = %lor.lhs.false182
  %132 = load ptr, ptr %pfound, align 8, !mymd !394
  %val = getelementptr inbounds nuw %struct.option, ptr %132, i32 0, i32 3, !mymd !395
  %133 = load i32, ptr %val, align 8, !mymd !396
  %134 = load ptr, ptr %p, align 8, !mymd !397
  %val187 = getelementptr inbounds nuw %struct.option, ptr %134, i32 0, i32 3, !mymd !398
  %135 = load i32, ptr %val187, align 8, !mymd !399
  %cmp188 = icmp ne i32 %133, %135, !mymd !400
  br i1 %cmp188, label %if.then190, label %if.end191, !mymd !401

if.then190:                                       ; preds = %lor.lhs.false186, %lor.lhs.false182, %lor.lhs.false178, %if.else176
  store i32 1, ptr %ambig, align 4, !mymd !402
  br label %if.end191, !mymd !403

if.end191:                                        ; preds = %if.then190, %lor.lhs.false186
  br label %if.end192, !mymd !404

if.end192:                                        ; preds = %if.end191, %if.then175
  br label %if.end193, !mymd !405

if.end193:                                        ; preds = %if.end192
  br label %if.end194, !mymd !406

if.end194:                                        ; preds = %if.end193, %for.body157
  br label %for.inc195, !mymd !407

for.inc195:                                       ; preds = %if.end194
  %136 = load ptr, ptr %p, align 8, !mymd !408
  %incdec.ptr196 = getelementptr inbounds nuw %struct.option, ptr %136, i32 1, !mymd !409
  store ptr %incdec.ptr196, ptr %p, align 8, !mymd !410
  %137 = load i32, ptr %option_index, align 4, !mymd !411
  %inc197 = add nsw i32 %137, 1, !mymd !412
  store i32 %inc197, ptr %option_index, align 4, !mymd !413
  br label %for.cond155, !llvm.loop !414, !mymd !415

for.end198:                                       ; preds = %if.then171, %for.cond155
  %138 = load i32, ptr %ambig, align 4, !mymd !416
  %tobool199 = icmp ne i32 %138, 0, !mymd !417
  br i1 %tobool199, label %land.lhs.true200, label %if.end213, !mymd !418

land.lhs.true200:                                 ; preds = %for.end198
  %139 = load i32, ptr %exact, align 4, !mymd !419
  %tobool201 = icmp ne i32 %139, 0, !mymd !420
  br i1 %tobool201, label %if.end213, label %if.then202, !mymd !421

if.then202:                                       ; preds = %land.lhs.true200
  %140 = load i32, ptr %print_errors, align 4, !mymd !422
  %tobool203 = icmp ne i32 %140, 0, !mymd !423
  br i1 %tobool203, label %if.then204, label %if.end209, !mymd !424

if.then204:                                       ; preds = %if.then202
  %141 = load ptr, ptr @stderr, align 8, !mymd !425
  %142 = load ptr, ptr %argv.addr, align 8, !mymd !426
  %arrayidx205 = getelementptr inbounds ptr, ptr %142, i64 0, !mymd !427
  %143 = load ptr, ptr %arrayidx205, align 8, !mymd !428
  %144 = load ptr, ptr %argv.addr, align 8, !mymd !429
  %145 = load i32, ptr @optind, align 4, !mymd !430
  %idxprom206 = sext i32 %145 to i64, !mymd !431
  %arrayidx207 = getelementptr inbounds ptr, ptr %144, i64 %idxprom206, !mymd !432
  %146 = load ptr, ptr %arrayidx207, align 8, !mymd !433
  %call208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.2, ptr noundef %143, ptr noundef %146) #4, !mymd !434
  br label %if.end209, !mymd !435

if.end209:                                        ; preds = %if.then204, %if.then202
  %147 = load ptr, ptr @nextchar, align 8, !mymd !436
  %call210 = call i64 @strlen(ptr noundef %147) #3, !mymd !437
  %148 = load ptr, ptr @nextchar, align 8, !mymd !438
  %add.ptr211 = getelementptr inbounds nuw i8, ptr %148, i64 %call210, !mymd !439
  store ptr %add.ptr211, ptr @nextchar, align 8, !mymd !440
  %149 = load i32, ptr @optind, align 4, !mymd !441
  %inc212 = add nsw i32 %149, 1, !mymd !442
  store i32 %inc212, ptr @optind, align 4, !mymd !443
  store i32 0, ptr @optopt, align 4, !mymd !444
  store i32 63, ptr %retval, align 4, !mymd !445
  br label %return, !mymd !446

if.end213:                                        ; preds = %land.lhs.true200, %for.end198
  %150 = load ptr, ptr %pfound, align 8, !mymd !447
  %cmp214 = icmp ne ptr %150, null, !mymd !448
  br i1 %cmp214, label %if.then216, label %if.end295, !mymd !449

if.then216:                                       ; preds = %if.end213
  %151 = load i32, ptr %indfound, align 4, !mymd !450
  store i32 %151, ptr %option_index, align 4, !mymd !451
  %152 = load i32, ptr @optind, align 4, !mymd !452
  %inc217 = add nsw i32 %152, 1, !mymd !453
  store i32 %inc217, ptr @optind, align 4, !mymd !454
  %153 = load ptr, ptr %nameend, align 8, !mymd !455
  %154 = load i8, ptr %153, align 1, !mymd !456
  %tobool218 = icmp ne i8 %154, 0, !mymd !457
  br i1 %tobool218, label %if.then219, label %if.else252, !mymd !458

if.then219:                                       ; preds = %if.then216
  %155 = load ptr, ptr %pfound, align 8, !mymd !459
  %has_arg220 = getelementptr inbounds nuw %struct.option, ptr %155, i32 0, i32 1, !mymd !460
  %156 = load i32, ptr %has_arg220, align 8, !mymd !461
  %tobool221 = icmp ne i32 %156, 0, !mymd !462
  br i1 %tobool221, label %if.then222, label %if.else224, !mymd !463

if.then222:                                       ; preds = %if.then219
  %157 = load ptr, ptr %nameend, align 8, !mymd !464
  %add.ptr223 = getelementptr inbounds i8, ptr %157, i64 1, !mymd !465
  store ptr %add.ptr223, ptr @optarg, align 8, !mymd !466
  br label %if.end251, !mymd !467

if.else224:                                       ; preds = %if.then219
  %158 = load i32, ptr %print_errors, align 4, !mymd !468
  %tobool225 = icmp ne i32 %158, 0, !mymd !469
  br i1 %tobool225, label %if.then226, label %if.end247, !mymd !470

if.then226:                                       ; preds = %if.else224
  %159 = load ptr, ptr %argv.addr, align 8, !mymd !471
  %160 = load i32, ptr @optind, align 4, !mymd !472
  %sub = sub nsw i32 %160, 1, !mymd !473
  %idxprom227 = sext i32 %sub to i64, !mymd !474
  %arrayidx228 = getelementptr inbounds ptr, ptr %159, i64 %idxprom227, !mymd !475
  %161 = load ptr, ptr %arrayidx228, align 8, !mymd !476
  %arrayidx229 = getelementptr inbounds i8, ptr %161, i64 1, !mymd !477
  %162 = load i8, ptr %arrayidx229, align 1, !mymd !478
  %conv230 = sext i8 %162 to i32, !mymd !479
  %cmp231 = icmp eq i32 %conv230, 45, !mymd !480
  br i1 %cmp231, label %if.then233, label %if.else237, !mymd !481

if.then233:                                       ; preds = %if.then226
  %163 = load ptr, ptr @stderr, align 8, !mymd !482
  %164 = load ptr, ptr %argv.addr, align 8, !mymd !483
  %arrayidx234 = getelementptr inbounds ptr, ptr %164, i64 0, !mymd !484
  %165 = load ptr, ptr %arrayidx234, align 8, !mymd !485
  %166 = load ptr, ptr %pfound, align 8, !mymd !486
  %name235 = getelementptr inbounds nuw %struct.option, ptr %166, i32 0, i32 0, !mymd !487
  %167 = load ptr, ptr %name235, align 8, !mymd !488
  %call236 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.3, ptr noundef %165, ptr noundef %167) #4, !mymd !489
  br label %if.end246, !mymd !490

if.else237:                                       ; preds = %if.then226
  %168 = load ptr, ptr @stderr, align 8, !mymd !491
  %169 = load ptr, ptr %argv.addr, align 8, !mymd !492
  %arrayidx238 = getelementptr inbounds ptr, ptr %169, i64 0, !mymd !493
  %170 = load ptr, ptr %arrayidx238, align 8, !mymd !494
  %171 = load ptr, ptr %argv.addr, align 8, !mymd !495
  %172 = load i32, ptr @optind, align 4, !mymd !496
  %sub239 = sub nsw i32 %172, 1, !mymd !497
  %idxprom240 = sext i32 %sub239 to i64, !mymd !498
  %arrayidx241 = getelementptr inbounds ptr, ptr %171, i64 %idxprom240, !mymd !499
  %173 = load ptr, ptr %arrayidx241, align 8, !mymd !500
  %arrayidx242 = getelementptr inbounds i8, ptr %173, i64 0, !mymd !501
  %174 = load i8, ptr %arrayidx242, align 1, !mymd !502
  %conv243 = sext i8 %174 to i32, !mymd !503
  %175 = load ptr, ptr %pfound, align 8, !mymd !504
  %name244 = getelementptr inbounds nuw %struct.option, ptr %175, i32 0, i32 0, !mymd !505
  %176 = load ptr, ptr %name244, align 8, !mymd !506
  %call245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.4, ptr noundef %170, i32 noundef %conv243, ptr noundef %176) #4, !mymd !507
  br label %if.end246, !mymd !508

if.end246:                                        ; preds = %if.else237, %if.then233
  br label %if.end247, !mymd !509

if.end247:                                        ; preds = %if.end246, %if.else224
  %177 = load ptr, ptr @nextchar, align 8, !mymd !510
  %call248 = call i64 @strlen(ptr noundef %177) #3, !mymd !511
  %178 = load ptr, ptr @nextchar, align 8, !mymd !512
  %add.ptr249 = getelementptr inbounds nuw i8, ptr %178, i64 %call248, !mymd !513
  store ptr %add.ptr249, ptr @nextchar, align 8, !mymd !514
  %179 = load ptr, ptr %pfound, align 8, !mymd !515
  %val250 = getelementptr inbounds nuw %struct.option, ptr %179, i32 0, i32 3, !mymd !516
  %180 = load i32, ptr %val250, align 8, !mymd !517
  store i32 %180, ptr @optopt, align 4, !mymd !518
  store i32 63, ptr %retval, align 4, !mymd !519
  br label %return, !mymd !520

if.end251:                                        ; preds = %if.then222
  br label %if.end281, !mymd !521

if.else252:                                       ; preds = %if.then216
  %181 = load ptr, ptr %pfound, align 8, !mymd !522
  %has_arg253 = getelementptr inbounds nuw %struct.option, ptr %181, i32 0, i32 1, !mymd !523
  %182 = load i32, ptr %has_arg253, align 8, !mymd !524
  %cmp254 = icmp eq i32 %182, 1, !mymd !525
  br i1 %cmp254, label %if.then256, label %if.end280, !mymd !526

if.then256:                                       ; preds = %if.else252
  %183 = load i32, ptr @optind, align 4, !mymd !527
  %184 = load i32, ptr %argc.addr, align 4, !mymd !528
  %cmp257 = icmp slt i32 %183, %184, !mymd !529
  br i1 %cmp257, label %if.then259, label %if.else263, !mymd !530

if.then259:                                       ; preds = %if.then256
  %185 = load ptr, ptr %argv.addr, align 8, !mymd !531
  %186 = load i32, ptr @optind, align 4, !mymd !532
  %inc260 = add nsw i32 %186, 1, !mymd !533
  store i32 %inc260, ptr @optind, align 4, !mymd !534
  %idxprom261 = sext i32 %186 to i64, !mymd !535
  %arrayidx262 = getelementptr inbounds ptr, ptr %185, i64 %idxprom261, !mymd !536
  %187 = load ptr, ptr %arrayidx262, align 8, !mymd !537
  store ptr %187, ptr @optarg, align 8, !mymd !538
  br label %if.end279, !mymd !539

if.else263:                                       ; preds = %if.then256
  %188 = load i32, ptr %print_errors, align 4, !mymd !540
  %tobool264 = icmp ne i32 %188, 0, !mymd !541
  br i1 %tobool264, label %if.then265, label %if.end271, !mymd !542

if.then265:                                       ; preds = %if.else263
  %189 = load ptr, ptr @stderr, align 8, !mymd !543
  %190 = load ptr, ptr %argv.addr, align 8, !mymd !544
  %arrayidx266 = getelementptr inbounds ptr, ptr %190, i64 0, !mymd !545
  %191 = load ptr, ptr %arrayidx266, align 8, !mymd !546
  %192 = load ptr, ptr %argv.addr, align 8, !mymd !547
  %193 = load i32, ptr @optind, align 4, !mymd !548
  %sub267 = sub nsw i32 %193, 1, !mymd !549
  %idxprom268 = sext i32 %sub267 to i64, !mymd !550
  %arrayidx269 = getelementptr inbounds ptr, ptr %192, i64 %idxprom268, !mymd !551
  %194 = load ptr, ptr %arrayidx269, align 8, !mymd !552
  %call270 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef @.str.5, ptr noundef %191, ptr noundef %194) #4, !mymd !553
  br label %if.end271, !mymd !554

if.end271:                                        ; preds = %if.then265, %if.else263
  %195 = load ptr, ptr @nextchar, align 8, !mymd !555
  %call272 = call i64 @strlen(ptr noundef %195) #3, !mymd !556
  %196 = load ptr, ptr @nextchar, align 8, !mymd !557
  %add.ptr273 = getelementptr inbounds nuw i8, ptr %196, i64 %call272, !mymd !558
  store ptr %add.ptr273, ptr @nextchar, align 8, !mymd !559
  %197 = load ptr, ptr %pfound, align 8, !mymd !560
  %val274 = getelementptr inbounds nuw %struct.option, ptr %197, i32 0, i32 3, !mymd !561
  %198 = load i32, ptr %val274, align 8, !mymd !562
  store i32 %198, ptr @optopt, align 4, !mymd !563
  %199 = load ptr, ptr %optstring.addr, align 8, !mymd !564
  %arrayidx275 = getelementptr inbounds i8, ptr %199, i64 0, !mymd !565
  %200 = load i8, ptr %arrayidx275, align 1, !mymd !566
  %conv276 = sext i8 %200 to i32, !mymd !567
  %cmp277 = icmp eq i32 %conv276, 58, !mymd !568
  %201 = zext i1 %cmp277 to i64, !mymd !569
  %cond = select i1 %cmp277, i32 58, i32 63, !mymd !570
  store i32 %cond, ptr %retval, align 4, !mymd !571
  br label %return, !mymd !572

if.end279:                                        ; preds = %if.then259
  br label %if.end280, !mymd !573

if.end280:                                        ; preds = %if.end279, %if.else252
  br label %if.end281, !mymd !574

if.end281:                                        ; preds = %if.end280, %if.end251
  %202 = load ptr, ptr @nextchar, align 8, !mymd !575
  %call282 = call i64 @strlen(ptr noundef %202) #3, !mymd !576
  %203 = load ptr, ptr @nextchar, align 8, !mymd !577
  %add.ptr283 = getelementptr inbounds nuw i8, ptr %203, i64 %call282, !mymd !578
  store ptr %add.ptr283, ptr @nextchar, align 8, !mymd !579
  %204 = load ptr, ptr %longind.addr, align 8, !mymd !580
  %cmp284 = icmp ne ptr %204, null, !mymd !581
  br i1 %cmp284, label %if.then286, label %if.end287, !mymd !582

if.then286:                                       ; preds = %if.end281
  %205 = load i32, ptr %option_index, align 4, !mymd !583
  %206 = load ptr, ptr %longind.addr, align 8, !mymd !584
  store i32 %205, ptr %206, align 4, !mymd !585
  br label %if.end287, !mymd !586

if.end287:                                        ; preds = %if.then286, %if.end281
  %207 = load ptr, ptr %pfound, align 8, !mymd !587
  %flag288 = getelementptr inbounds nuw %struct.option, ptr %207, i32 0, i32 2, !mymd !588
  %208 = load ptr, ptr %flag288, align 8, !mymd !589
  %tobool289 = icmp ne ptr %208, null, !mymd !590
  br i1 %tobool289, label %if.then290, label %if.end293, !mymd !591

if.then290:                                       ; preds = %if.end287
  %209 = load ptr, ptr %pfound, align 8, !mymd !592
  %val291 = getelementptr inbounds nuw %struct.option, ptr %209, i32 0, i32 3, !mymd !593
  %210 = load i32, ptr %val291, align 8, !mymd !594
  %211 = load ptr, ptr %pfound, align 8, !mymd !595
  %flag292 = getelementptr inbounds nuw %struct.option, ptr %211, i32 0, i32 2, !mymd !596
  %212 = load ptr, ptr %flag292, align 8, !mymd !597
  store i32 %210, ptr %212, align 4, !mymd !598
  store i32 0, ptr %retval, align 4, !mymd !599
  br label %return, !mymd !600

if.end293:                                        ; preds = %if.end287
  %213 = load ptr, ptr %pfound, align 8, !mymd !601
  %val294 = getelementptr inbounds nuw %struct.option, ptr %213, i32 0, i32 3, !mymd !602
  %214 = load i32, ptr %val294, align 8, !mymd !603
  store i32 %214, ptr %retval, align 4, !mymd !604
  br label %return, !mymd !605

if.end295:                                        ; preds = %if.end213
  %215 = load i32, ptr %long_only.addr, align 4, !mymd !606
  %tobool296 = icmp ne i32 %215, 0, !mymd !607
  br i1 %tobool296, label %lor.lhs.false297, label %if.then309, !mymd !608

lor.lhs.false297:                                 ; preds = %if.end295
  %216 = load ptr, ptr %argv.addr, align 8, !mymd !609
  %217 = load i32, ptr @optind, align 4, !mymd !610
  %idxprom298 = sext i32 %217 to i64, !mymd !611
  %arrayidx299 = getelementptr inbounds ptr, ptr %216, i64 %idxprom298, !mymd !612
  %218 = load ptr, ptr %arrayidx299, align 8, !mymd !613
  %arrayidx300 = getelementptr inbounds i8, ptr %218, i64 1, !mymd !614
  %219 = load i8, ptr %arrayidx300, align 1, !mymd !615
  %conv301 = sext i8 %219 to i32, !mymd !616
  %cmp302 = icmp eq i32 %conv301, 45, !mymd !617
  br i1 %cmp302, label %if.then309, label %lor.lhs.false304, !mymd !618

lor.lhs.false304:                                 ; preds = %lor.lhs.false297
  %220 = load ptr, ptr %optstring.addr, align 8, !mymd !619
  %221 = load ptr, ptr @nextchar, align 8, !mymd !620
  %222 = load i8, ptr %221, align 1, !mymd !621
  %conv305 = sext i8 %222 to i32, !mymd !622
  %call306 = call ptr @my_index(ptr noundef %220, i32 noundef %conv305), !mymd !623
  %cmp307 = icmp eq ptr %call306, null, !mymd !624
  br i1 %cmp307, label %if.then309, label %if.end331, !mymd !625

if.then309:                                       ; preds = %lor.lhs.false304, %lor.lhs.false297, %if.end295
  %223 = load i32, ptr %print_errors, align 4, !mymd !626
  %tobool310 = icmp ne i32 %223, 0, !mymd !627
  br i1 %tobool310, label %if.then311, label %if.end329, !mymd !628

if.then311:                                       ; preds = %if.then309
  %224 = load ptr, ptr %argv.addr, align 8, !mymd !629
  %225 = load i32, ptr @optind, align 4, !mymd !630
  %idxprom312 = sext i32 %225 to i64, !mymd !631
  %arrayidx313 = getelementptr inbounds ptr, ptr %224, i64 %idxprom312, !mymd !632
  %226 = load ptr, ptr %arrayidx313, align 8, !mymd !633
  %arrayidx314 = getelementptr inbounds i8, ptr %226, i64 1, !mymd !634
  %227 = load i8, ptr %arrayidx314, align 1, !mymd !635
  %conv315 = sext i8 %227 to i32, !mymd !636
  %cmp316 = icmp eq i32 %conv315, 45, !mymd !637
  br i1 %cmp316, label %if.then318, label %if.else321, !mymd !638

if.then318:                                       ; preds = %if.then311
  %228 = load ptr, ptr @stderr, align 8, !mymd !639
  %229 = load ptr, ptr %argv.addr, align 8, !mymd !640
  %arrayidx319 = getelementptr inbounds ptr, ptr %229, i64 0, !mymd !641
  %230 = load ptr, ptr %arrayidx319, align 8, !mymd !642
  %231 = load ptr, ptr @nextchar, align 8, !mymd !643
  %call320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef @.str.6, ptr noundef %230, ptr noundef %231) #4, !mymd !644
  br label %if.end328, !mymd !645

if.else321:                                       ; preds = %if.then311
  %232 = load ptr, ptr @stderr, align 8, !mymd !646
  %233 = load ptr, ptr %argv.addr, align 8, !mymd !647
  %arrayidx322 = getelementptr inbounds ptr, ptr %233, i64 0, !mymd !648
  %234 = load ptr, ptr %arrayidx322, align 8, !mymd !649
  %235 = load ptr, ptr %argv.addr, align 8, !mymd !650
  %236 = load i32, ptr @optind, align 4, !mymd !651
  %idxprom323 = sext i32 %236 to i64, !mymd !652
  %arrayidx324 = getelementptr inbounds ptr, ptr %235, i64 %idxprom323, !mymd !653
  %237 = load ptr, ptr %arrayidx324, align 8, !mymd !654
  %arrayidx325 = getelementptr inbounds i8, ptr %237, i64 0, !mymd !655
  %238 = load i8, ptr %arrayidx325, align 1, !mymd !656
  %conv326 = sext i8 %238 to i32, !mymd !657
  %239 = load ptr, ptr @nextchar, align 8, !mymd !658
  %call327 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef @.str.7, ptr noundef %234, i32 noundef %conv326, ptr noundef %239) #4, !mymd !659
  br label %if.end328, !mymd !660

if.end328:                                        ; preds = %if.else321, %if.then318
  br label %if.end329, !mymd !661

if.end329:                                        ; preds = %if.end328, %if.then309
  store ptr @.str.8, ptr @nextchar, align 8, !mymd !662
  %240 = load i32, ptr @optind, align 4, !mymd !663
  %inc330 = add nsw i32 %240, 1, !mymd !664
  store i32 %inc330, ptr @optind, align 4, !mymd !665
  store i32 0, ptr @optopt, align 4, !mymd !666
  store i32 63, ptr %retval, align 4, !mymd !667
  br label %return, !mymd !668

if.end331:                                        ; preds = %lor.lhs.false304
  br label %if.end332, !mymd !669

if.end332:                                        ; preds = %if.end331, %lor.lhs.false139, %lor.lhs.false131, %if.end121
  %241 = load ptr, ptr @nextchar, align 8, !mymd !670
  %incdec.ptr333 = getelementptr inbounds nuw i8, ptr %241, i32 1, !mymd !671
  store ptr %incdec.ptr333, ptr @nextchar, align 8, !mymd !672
  %242 = load i8, ptr %241, align 1, !mymd !673
  store i8 %242, ptr %c, align 1, !mymd !674
  %243 = load ptr, ptr %optstring.addr, align 8, !mymd !675
  %244 = load i8, ptr %c, align 1, !mymd !676
  %conv334 = sext i8 %244 to i32, !mymd !677
  %call335 = call ptr @my_index(ptr noundef %243, i32 noundef %conv334), !mymd !678
  store ptr %call335, ptr %temp, align 8, !mymd !679
  %245 = load ptr, ptr @nextchar, align 8, !mymd !680
  %246 = load i8, ptr %245, align 1, !mymd !681
  %conv336 = sext i8 %246 to i32, !mymd !682
  %cmp337 = icmp eq i32 %conv336, 0, !mymd !683
  br i1 %cmp337, label %if.then339, label %if.end341, !mymd !684

if.then339:                                       ; preds = %if.end332
  %247 = load i32, ptr @optind, align 4, !mymd !685
  %inc340 = add nsw i32 %247, 1, !mymd !686
  store i32 %inc340, ptr @optind, align 4, !mymd !687
  br label %if.end341, !mymd !688

if.end341:                                        ; preds = %if.then339, %if.end332
  %248 = load ptr, ptr %temp, align 8, !mymd !689
  %cmp342 = icmp eq ptr %248, null, !mymd !690
  br i1 %cmp342, label %if.then348, label %lor.lhs.false344, !mymd !691

lor.lhs.false344:                                 ; preds = %if.end341
  %249 = load i8, ptr %c, align 1, !mymd !692
  %conv345 = sext i8 %249 to i32, !mymd !693
  %cmp346 = icmp eq i32 %conv345, 58, !mymd !694
  br i1 %cmp346, label %if.then348, label %if.end363, !mymd !695

if.then348:                                       ; preds = %lor.lhs.false344, %if.end341
  %250 = load i32, ptr %print_errors, align 4, !mymd !696
  %tobool349 = icmp ne i32 %250, 0, !mymd !697
  br i1 %tobool349, label %if.then350, label %if.end361, !mymd !698

if.then350:                                       ; preds = %if.then348
  %251 = load ptr, ptr @posixly_correct, align 8, !mymd !699
  %tobool351 = icmp ne ptr %251, null, !mymd !700
  br i1 %tobool351, label %if.then352, label %if.else356, !mymd !701

if.then352:                                       ; preds = %if.then350
  %252 = load ptr, ptr @stderr, align 8, !mymd !702
  %253 = load ptr, ptr %argv.addr, align 8, !mymd !703
  %arrayidx353 = getelementptr inbounds ptr, ptr %253, i64 0, !mymd !704
  %254 = load ptr, ptr %arrayidx353, align 8, !mymd !705
  %255 = load i8, ptr %c, align 1, !mymd !706
  %conv354 = sext i8 %255 to i32, !mymd !707
  %call355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef @.str.9, ptr noundef %254, i32 noundef %conv354) #4, !mymd !708
  br label %if.end360, !mymd !709

if.else356:                                       ; preds = %if.then350
  %256 = load ptr, ptr @stderr, align 8, !mymd !710
  %257 = load ptr, ptr %argv.addr, align 8, !mymd !711
  %arrayidx357 = getelementptr inbounds ptr, ptr %257, i64 0, !mymd !712
  %258 = load ptr, ptr %arrayidx357, align 8, !mymd !713
  %259 = load i8, ptr %c, align 1, !mymd !714
  %conv358 = sext i8 %259 to i32, !mymd !715
  %call359 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %256, ptr noundef @.str.10, ptr noundef %258, i32 noundef %conv358) #4, !mymd !716
  br label %if.end360, !mymd !717

if.end360:                                        ; preds = %if.else356, %if.then352
  br label %if.end361, !mymd !718

if.end361:                                        ; preds = %if.end360, %if.then348
  %260 = load i8, ptr %c, align 1, !mymd !719
  %conv362 = sext i8 %260 to i32, !mymd !720
  store i32 %conv362, ptr @optopt, align 4, !mymd !721
  store i32 63, ptr %retval, align 4, !mymd !722
  br label %return, !mymd !723

if.end363:                                        ; preds = %lor.lhs.false344
  %261 = load ptr, ptr %temp, align 8, !mymd !724
  %arrayidx364 = getelementptr inbounds i8, ptr %261, i64 0, !mymd !725
  %262 = load i8, ptr %arrayidx364, align 1, !mymd !726
  %conv365 = sext i8 %262 to i32, !mymd !727
  %cmp366 = icmp eq i32 %conv365, 87, !mymd !728
  br i1 %cmp366, label %land.lhs.true368, label %if.end535, !mymd !729

land.lhs.true368:                                 ; preds = %if.end363
  %263 = load ptr, ptr %temp, align 8, !mymd !730
  %arrayidx369 = getelementptr inbounds i8, ptr %263, i64 1, !mymd !731
  %264 = load i8, ptr %arrayidx369, align 1, !mymd !732
  %conv370 = sext i8 %264 to i32, !mymd !733
  %cmp371 = icmp eq i32 %conv370, 59, !mymd !734
  br i1 %cmp371, label %if.then373, label %if.end535, !mymd !735

if.then373:                                       ; preds = %land.lhs.true368
  store ptr null, ptr %pfound376, align 8, !mymd !736
  store i32 0, ptr %exact377, align 4, !mymd !737
  store i32 0, ptr %ambig378, align 4, !mymd !738
  store i32 0, ptr %indfound379, align 4, !mymd !739
  %265 = load ptr, ptr @nextchar, align 8, !mymd !740
  %266 = load i8, ptr %265, align 1, !mymd !741
  %conv381 = sext i8 %266 to i32, !mymd !742
  %cmp382 = icmp ne i32 %conv381, 0, !mymd !743
  br i1 %cmp382, label %if.then384, label %if.else386, !mymd !744

if.then384:                                       ; preds = %if.then373
  %267 = load ptr, ptr @nextchar, align 8, !mymd !745
  store ptr %267, ptr @optarg, align 8, !mymd !746
  %268 = load i32, ptr @optind, align 4, !mymd !747
  %inc385 = add nsw i32 %268, 1, !mymd !748
  store i32 %inc385, ptr @optind, align 4, !mymd !749
  br label %if.end410, !mymd !750

if.else386:                                       ; preds = %if.then373
  %269 = load i32, ptr @optind, align 4, !mymd !751
  %270 = load i32, ptr %argc.addr, align 4, !mymd !752
  %cmp387 = icmp eq i32 %269, %270, !mymd !753
  br i1 %cmp387, label %if.then389, label %if.else405, !mymd !754

if.then389:                                       ; preds = %if.else386
  %271 = load i32, ptr %print_errors, align 4, !mymd !755
  %tobool390 = icmp ne i32 %271, 0, !mymd !756
  br i1 %tobool390, label %if.then391, label %if.end395, !mymd !757

if.then391:                                       ; preds = %if.then389
  %272 = load ptr, ptr @stderr, align 8, !mymd !758
  %273 = load ptr, ptr %argv.addr, align 8, !mymd !759
  %arrayidx392 = getelementptr inbounds ptr, ptr %273, i64 0, !mymd !760
  %274 = load ptr, ptr %arrayidx392, align 8, !mymd !761
  %275 = load i8, ptr %c, align 1, !mymd !762
  %conv393 = sext i8 %275 to i32, !mymd !763
  %call394 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef @.str.11, ptr noundef %274, i32 noundef %conv393) #4, !mymd !764
  br label %if.end395, !mymd !765

if.end395:                                        ; preds = %if.then391, %if.then389
  %276 = load i8, ptr %c, align 1, !mymd !766
  %conv396 = sext i8 %276 to i32, !mymd !767
  store i32 %conv396, ptr @optopt, align 4, !mymd !768
  %277 = load ptr, ptr %optstring.addr, align 8, !mymd !769
  %arrayidx397 = getelementptr inbounds i8, ptr %277, i64 0, !mymd !770
  %278 = load i8, ptr %arrayidx397, align 1, !mymd !771
  %conv398 = sext i8 %278 to i32, !mymd !772
  %cmp399 = icmp eq i32 %conv398, 58, !mymd !773
  br i1 %cmp399, label %if.then401, label %if.else402, !mymd !774

if.then401:                                       ; preds = %if.end395
  store i8 58, ptr %c, align 1, !mymd !775
  br label %if.end403, !mymd !776

if.else402:                                       ; preds = %if.end395
  store i8 63, ptr %c, align 1, !mymd !777
  br label %if.end403, !mymd !778

if.end403:                                        ; preds = %if.else402, %if.then401
  %279 = load i8, ptr %c, align 1, !mymd !779
  %conv404 = sext i8 %279 to i32, !mymd !780
  store i32 %conv404, ptr %retval, align 4, !mymd !781
  br label %return, !mymd !782

if.else405:                                       ; preds = %if.else386
  %280 = load ptr, ptr %argv.addr, align 8, !mymd !783
  %281 = load i32, ptr @optind, align 4, !mymd !784
  %inc406 = add nsw i32 %281, 1, !mymd !785
  store i32 %inc406, ptr @optind, align 4, !mymd !786
  %idxprom407 = sext i32 %281 to i64, !mymd !787
  %arrayidx408 = getelementptr inbounds ptr, ptr %280, i64 %idxprom407, !mymd !788
  %282 = load ptr, ptr %arrayidx408, align 8, !mymd !789
  store ptr %282, ptr @optarg, align 8, !mymd !790
  br label %if.end409, !mymd !791

if.end409:                                        ; preds = %if.else405
  br label %if.end410, !mymd !792

if.end410:                                        ; preds = %if.end409, %if.then384
  %283 = load ptr, ptr @optarg, align 8, !mymd !793
  store ptr %283, ptr %nameend374, align 8, !mymd !794
  store ptr %283, ptr @nextchar, align 8, !mymd !795
  br label %for.cond411, !mymd !796

for.cond411:                                      ; preds = %for.inc421, %if.end410
  %284 = load ptr, ptr %nameend374, align 8, !mymd !797
  %285 = load i8, ptr %284, align 1, !mymd !798
  %conv412 = sext i8 %285 to i32, !mymd !799
  %tobool413 = icmp ne i32 %conv412, 0, !mymd !800
  br i1 %tobool413, label %land.rhs414, label %land.end418, !mymd !801

land.rhs414:                                      ; preds = %for.cond411
  %286 = load ptr, ptr %nameend374, align 8, !mymd !802
  %287 = load i8, ptr %286, align 1, !mymd !803
  %conv415 = sext i8 %287 to i32, !mymd !804
  %cmp416 = icmp ne i32 %conv415, 61, !mymd !805
  br label %land.end418, !mymd !806

land.end418:                                      ; preds = %land.rhs414, %for.cond411
  %288 = phi i1 [ false, %for.cond411 ], [ %cmp416, %land.rhs414 ], !mymd !807
  br i1 %288, label %for.body420, label %for.end423, !mymd !808

for.body420:                                      ; preds = %land.end418
  br label %for.inc421, !mymd !809

for.inc421:                                       ; preds = %for.body420
  %289 = load ptr, ptr %nameend374, align 8, !mymd !810
  %incdec.ptr422 = getelementptr inbounds nuw i8, ptr %289, i32 1, !mymd !811
  store ptr %incdec.ptr422, ptr %nameend374, align 8, !mymd !812
  br label %for.cond411, !llvm.loop !813, !mymd !814

for.end423:                                       ; preds = %land.end418
  %290 = load ptr, ptr %longopts.addr, align 8, !mymd !815
  store ptr %290, ptr %p375, align 8, !mymd !816
  store i32 0, ptr %option_index380, align 4, !mymd !817
  br label %for.cond424, !mymd !818

for.cond424:                                      ; preds = %for.inc453, %for.end423
  %291 = load ptr, ptr %p375, align 8, !mymd !819
  %name425 = getelementptr inbounds nuw %struct.option, ptr %291, i32 0, i32 0, !mymd !820
  %292 = load ptr, ptr %name425, align 8, !mymd !821
  %tobool426 = icmp ne ptr %292, null, !mymd !822
  br i1 %tobool426, label %for.body427, label %for.end456, !mymd !823

for.body427:                                      ; preds = %for.cond424
  %293 = load ptr, ptr %p375, align 8, !mymd !824
  %name428 = getelementptr inbounds nuw %struct.option, ptr %293, i32 0, i32 0, !mymd !825
  %294 = load ptr, ptr %name428, align 8, !mymd !826
  %295 = load ptr, ptr @nextchar, align 8, !mymd !827
  %296 = load ptr, ptr %nameend374, align 8, !mymd !828
  %297 = load ptr, ptr @nextchar, align 8, !mymd !829
  %sub.ptr.lhs.cast429 = ptrtoint ptr %296 to i64, !mymd !830
  %sub.ptr.rhs.cast430 = ptrtoint ptr %297 to i64, !mymd !831
  %sub.ptr.sub431 = sub i64 %sub.ptr.lhs.cast429, %sub.ptr.rhs.cast430, !mymd !832
  %call432 = call i32 @strncmp(ptr noundef %294, ptr noundef %295, i64 noundef %sub.ptr.sub431) #3, !mymd !833
  %tobool433 = icmp ne i32 %call432, 0, !mymd !834
  br i1 %tobool433, label %if.end452, label %if.then434, !mymd !835

if.then434:                                       ; preds = %for.body427
  %298 = load ptr, ptr %nameend374, align 8, !mymd !836
  %299 = load ptr, ptr @nextchar, align 8, !mymd !837
  %sub.ptr.lhs.cast435 = ptrtoint ptr %298 to i64, !mymd !838
  %sub.ptr.rhs.cast436 = ptrtoint ptr %299 to i64, !mymd !839
  %sub.ptr.sub437 = sub i64 %sub.ptr.lhs.cast435, %sub.ptr.rhs.cast436, !mymd !840
  %conv438 = trunc i64 %sub.ptr.sub437 to i32, !mymd !841
  %conv439 = zext i32 %conv438 to i64, !mymd !842
  %300 = load ptr, ptr %p375, align 8, !mymd !843
  %name440 = getelementptr inbounds nuw %struct.option, ptr %300, i32 0, i32 0, !mymd !844
  %301 = load ptr, ptr %name440, align 8, !mymd !845
  %call441 = call i64 @strlen(ptr noundef %301) #3, !mymd !846
  %cmp442 = icmp eq i64 %conv439, %call441, !mymd !847
  br i1 %cmp442, label %if.then444, label %if.else445, !mymd !848

if.then444:                                       ; preds = %if.then434
  %302 = load ptr, ptr %p375, align 8, !mymd !849
  store ptr %302, ptr %pfound376, align 8, !mymd !850
  %303 = load i32, ptr %option_index380, align 4, !mymd !851
  store i32 %303, ptr %indfound379, align 4, !mymd !852
  store i32 1, ptr %exact377, align 4, !mymd !853
  br label %for.end456, !mymd !854

if.else445:                                       ; preds = %if.then434
  %304 = load ptr, ptr %pfound376, align 8, !mymd !855
  %cmp446 = icmp eq ptr %304, null, !mymd !856
  br i1 %cmp446, label %if.then448, label %if.else449, !mymd !857

if.then448:                                       ; preds = %if.else445
  %305 = load ptr, ptr %p375, align 8, !mymd !858
  store ptr %305, ptr %pfound376, align 8, !mymd !859
  %306 = load i32, ptr %option_index380, align 4, !mymd !860
  store i32 %306, ptr %indfound379, align 4, !mymd !861
  br label %if.end450, !mymd !862

if.else449:                                       ; preds = %if.else445
  store i32 1, ptr %ambig378, align 4, !mymd !863
  br label %if.end450, !mymd !864

if.end450:                                        ; preds = %if.else449, %if.then448
  br label %if.end451, !mymd !865

if.end451:                                        ; preds = %if.end450
  br label %if.end452, !mymd !866

if.end452:                                        ; preds = %if.end451, %for.body427
  br label %for.inc453, !mymd !867

for.inc453:                                       ; preds = %if.end452
  %307 = load ptr, ptr %p375, align 8, !mymd !868
  %incdec.ptr454 = getelementptr inbounds nuw %struct.option, ptr %307, i32 1, !mymd !869
  store ptr %incdec.ptr454, ptr %p375, align 8, !mymd !870
  %308 = load i32, ptr %option_index380, align 4, !mymd !871
  %inc455 = add nsw i32 %308, 1, !mymd !872
  store i32 %inc455, ptr %option_index380, align 4, !mymd !873
  br label %for.cond424, !llvm.loop !874, !mymd !875

for.end456:                                       ; preds = %if.then444, %for.cond424
  %309 = load i32, ptr %ambig378, align 4, !mymd !876
  %tobool457 = icmp ne i32 %309, 0, !mymd !877
  br i1 %tobool457, label %land.lhs.true458, label %if.end471, !mymd !878

land.lhs.true458:                                 ; preds = %for.end456
  %310 = load i32, ptr %exact377, align 4, !mymd !879
  %tobool459 = icmp ne i32 %310, 0, !mymd !880
  br i1 %tobool459, label %if.end471, label %if.then460, !mymd !881

if.then460:                                       ; preds = %land.lhs.true458
  %311 = load i32, ptr %print_errors, align 4, !mymd !882
  %tobool461 = icmp ne i32 %311, 0, !mymd !883
  br i1 %tobool461, label %if.then462, label %if.end467, !mymd !884

if.then462:                                       ; preds = %if.then460
  %312 = load ptr, ptr @stderr, align 8, !mymd !885
  %313 = load ptr, ptr %argv.addr, align 8, !mymd !886
  %arrayidx463 = getelementptr inbounds ptr, ptr %313, i64 0, !mymd !887
  %314 = load ptr, ptr %arrayidx463, align 8, !mymd !888
  %315 = load ptr, ptr %argv.addr, align 8, !mymd !889
  %316 = load i32, ptr @optind, align 4, !mymd !890
  %idxprom464 = sext i32 %316 to i64, !mymd !891
  %arrayidx465 = getelementptr inbounds ptr, ptr %315, i64 %idxprom464, !mymd !892
  %317 = load ptr, ptr %arrayidx465, align 8, !mymd !893
  %call466 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef @.str.12, ptr noundef %314, ptr noundef %317) #4, !mymd !894
  br label %if.end467, !mymd !895

if.end467:                                        ; preds = %if.then462, %if.then460
  %318 = load ptr, ptr @nextchar, align 8, !mymd !896
  %call468 = call i64 @strlen(ptr noundef %318) #3, !mymd !897
  %319 = load ptr, ptr @nextchar, align 8, !mymd !898
  %add.ptr469 = getelementptr inbounds nuw i8, ptr %319, i64 %call468, !mymd !899
  store ptr %add.ptr469, ptr @nextchar, align 8, !mymd !900
  %320 = load i32, ptr @optind, align 4, !mymd !901
  %inc470 = add nsw i32 %320, 1, !mymd !902
  store i32 %inc470, ptr @optind, align 4, !mymd !903
  store i32 63, ptr %retval, align 4, !mymd !904
  br label %return, !mymd !905

if.end471:                                        ; preds = %land.lhs.true458, %for.end456
  %321 = load ptr, ptr %pfound376, align 8, !mymd !906
  %cmp472 = icmp ne ptr %321, null, !mymd !907
  br i1 %cmp472, label %if.then474, label %if.end534, !mymd !908

if.then474:                                       ; preds = %if.end471
  %322 = load i32, ptr %indfound379, align 4, !mymd !909
  store i32 %322, ptr %option_index380, align 4, !mymd !910
  %323 = load ptr, ptr %nameend374, align 8, !mymd !911
  %324 = load i8, ptr %323, align 1, !mymd !912
  %tobool475 = icmp ne i8 %324, 0, !mymd !913
  br i1 %tobool475, label %if.then476, label %if.else491, !mymd !914

if.then476:                                       ; preds = %if.then474
  %325 = load ptr, ptr %pfound376, align 8, !mymd !915
  %has_arg477 = getelementptr inbounds nuw %struct.option, ptr %325, i32 0, i32 1, !mymd !916
  %326 = load i32, ptr %has_arg477, align 8, !mymd !917
  %tobool478 = icmp ne i32 %326, 0, !mymd !918
  br i1 %tobool478, label %if.then479, label %if.else481, !mymd !919

if.then479:                                       ; preds = %if.then476
  %327 = load ptr, ptr %nameend374, align 8, !mymd !920
  %add.ptr480 = getelementptr inbounds i8, ptr %327, i64 1, !mymd !921
  store ptr %add.ptr480, ptr @optarg, align 8, !mymd !922
  br label %if.end490, !mymd !923

if.else481:                                       ; preds = %if.then476
  %328 = load i32, ptr %print_errors, align 4, !mymd !924
  %tobool482 = icmp ne i32 %328, 0, !mymd !925
  br i1 %tobool482, label %if.then483, label %if.end487, !mymd !926

if.then483:                                       ; preds = %if.else481
  %329 = load ptr, ptr @stderr, align 8, !mymd !927
  %330 = load ptr, ptr %argv.addr, align 8, !mymd !928
  %arrayidx484 = getelementptr inbounds ptr, ptr %330, i64 0, !mymd !929
  %331 = load ptr, ptr %arrayidx484, align 8, !mymd !930
  %332 = load ptr, ptr %pfound376, align 8, !mymd !931
  %name485 = getelementptr inbounds nuw %struct.option, ptr %332, i32 0, i32 0, !mymd !932
  %333 = load ptr, ptr %name485, align 8, !mymd !933
  %call486 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %329, ptr noundef @.str.13, ptr noundef %331, ptr noundef %333) #4, !mymd !934
  br label %if.end487, !mymd !935

if.end487:                                        ; preds = %if.then483, %if.else481
  %334 = load ptr, ptr @nextchar, align 8, !mymd !936
  %call488 = call i64 @strlen(ptr noundef %334) #3, !mymd !937
  %335 = load ptr, ptr @nextchar, align 8, !mymd !938
  %add.ptr489 = getelementptr inbounds nuw i8, ptr %335, i64 %call488, !mymd !939
  store ptr %add.ptr489, ptr @nextchar, align 8, !mymd !940
  store i32 63, ptr %retval, align 4, !mymd !941
  br label %return, !mymd !942

if.end490:                                        ; preds = %if.then479
  br label %if.end520, !mymd !943

if.else491:                                       ; preds = %if.then474
  %336 = load ptr, ptr %pfound376, align 8, !mymd !944
  %has_arg492 = getelementptr inbounds nuw %struct.option, ptr %336, i32 0, i32 1, !mymd !945
  %337 = load i32, ptr %has_arg492, align 8, !mymd !946
  %cmp493 = icmp eq i32 %337, 1, !mymd !947
  br i1 %cmp493, label %if.then495, label %if.end519, !mymd !948

if.then495:                                       ; preds = %if.else491
  %338 = load i32, ptr @optind, align 4, !mymd !949
  %339 = load i32, ptr %argc.addr, align 4, !mymd !950
  %cmp496 = icmp slt i32 %338, %339, !mymd !951
  br i1 %cmp496, label %if.then498, label %if.else502, !mymd !952

if.then498:                                       ; preds = %if.then495
  %340 = load ptr, ptr %argv.addr, align 8, !mymd !953
  %341 = load i32, ptr @optind, align 4, !mymd !954
  %inc499 = add nsw i32 %341, 1, !mymd !955
  store i32 %inc499, ptr @optind, align 4, !mymd !956
  %idxprom500 = sext i32 %341 to i64, !mymd !957
  %arrayidx501 = getelementptr inbounds ptr, ptr %340, i64 %idxprom500, !mymd !958
  %342 = load ptr, ptr %arrayidx501, align 8, !mymd !959
  store ptr %342, ptr @optarg, align 8, !mymd !960
  br label %if.end518, !mymd !961

if.else502:                                       ; preds = %if.then495
  %343 = load i32, ptr %print_errors, align 4, !mymd !962
  %tobool503 = icmp ne i32 %343, 0, !mymd !963
  br i1 %tobool503, label %if.then504, label %if.end510, !mymd !964

if.then504:                                       ; preds = %if.else502
  %344 = load ptr, ptr @stderr, align 8, !mymd !965
  %345 = load ptr, ptr %argv.addr, align 8, !mymd !966
  %arrayidx505 = getelementptr inbounds ptr, ptr %345, i64 0, !mymd !967
  %346 = load ptr, ptr %arrayidx505, align 8, !mymd !968
  %347 = load ptr, ptr %argv.addr, align 8, !mymd !969
  %348 = load i32, ptr @optind, align 4, !mymd !970
  %sub506 = sub nsw i32 %348, 1, !mymd !971
  %idxprom507 = sext i32 %sub506 to i64, !mymd !972
  %arrayidx508 = getelementptr inbounds ptr, ptr %347, i64 %idxprom507, !mymd !973
  %349 = load ptr, ptr %arrayidx508, align 8, !mymd !974
  %call509 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef @.str.5, ptr noundef %346, ptr noundef %349) #4, !mymd !975
  br label %if.end510, !mymd !976

if.end510:                                        ; preds = %if.then504, %if.else502
  %350 = load ptr, ptr @nextchar, align 8, !mymd !977
  %call511 = call i64 @strlen(ptr noundef %350) #3, !mymd !978
  %351 = load ptr, ptr @nextchar, align 8, !mymd !979
  %add.ptr512 = getelementptr inbounds nuw i8, ptr %351, i64 %call511, !mymd !980
  store ptr %add.ptr512, ptr @nextchar, align 8, !mymd !981
  %352 = load ptr, ptr %optstring.addr, align 8, !mymd !982
  %arrayidx513 = getelementptr inbounds i8, ptr %352, i64 0, !mymd !983
  %353 = load i8, ptr %arrayidx513, align 1, !mymd !984
  %conv514 = sext i8 %353 to i32, !mymd !985
  %cmp515 = icmp eq i32 %conv514, 58, !mymd !986
  %354 = zext i1 %cmp515 to i64, !mymd !987
  %cond517 = select i1 %cmp515, i32 58, i32 63, !mymd !988
  store i32 %cond517, ptr %retval, align 4, !mymd !989
  br label %return, !mymd !990

if.end518:                                        ; preds = %if.then498
  br label %if.end519, !mymd !991

if.end519:                                        ; preds = %if.end518, %if.else491
  br label %if.end520, !mymd !992

if.end520:                                        ; preds = %if.end519, %if.end490
  %355 = load ptr, ptr @nextchar, align 8, !mymd !993
  %call521 = call i64 @strlen(ptr noundef %355) #3, !mymd !994
  %356 = load ptr, ptr @nextchar, align 8, !mymd !995
  %add.ptr522 = getelementptr inbounds nuw i8, ptr %356, i64 %call521, !mymd !996
  store ptr %add.ptr522, ptr @nextchar, align 8, !mymd !997
  %357 = load ptr, ptr %longind.addr, align 8, !mymd !998
  %cmp523 = icmp ne ptr %357, null, !mymd !999
  br i1 %cmp523, label %if.then525, label %if.end526, !mymd !1000

if.then525:                                       ; preds = %if.end520
  %358 = load i32, ptr %option_index380, align 4, !mymd !1001
  %359 = load ptr, ptr %longind.addr, align 8, !mymd !1002
  store i32 %358, ptr %359, align 4, !mymd !1003
  br label %if.end526, !mymd !1004

if.end526:                                        ; preds = %if.then525, %if.end520
  %360 = load ptr, ptr %pfound376, align 8, !mymd !1005
  %flag527 = getelementptr inbounds nuw %struct.option, ptr %360, i32 0, i32 2, !mymd !1006
  %361 = load ptr, ptr %flag527, align 8, !mymd !1007
  %tobool528 = icmp ne ptr %361, null, !mymd !1008
  br i1 %tobool528, label %if.then529, label %if.end532, !mymd !1009

if.then529:                                       ; preds = %if.end526
  %362 = load ptr, ptr %pfound376, align 8, !mymd !1010
  %val530 = getelementptr inbounds nuw %struct.option, ptr %362, i32 0, i32 3, !mymd !1011
  %363 = load i32, ptr %val530, align 8, !mymd !1012
  %364 = load ptr, ptr %pfound376, align 8, !mymd !1013
  %flag531 = getelementptr inbounds nuw %struct.option, ptr %364, i32 0, i32 2, !mymd !1014
  %365 = load ptr, ptr %flag531, align 8, !mymd !1015
  store i32 %363, ptr %365, align 4, !mymd !1016
  store i32 0, ptr %retval, align 4, !mymd !1017
  br label %return, !mymd !1018

if.end532:                                        ; preds = %if.end526
  %366 = load ptr, ptr %pfound376, align 8, !mymd !1019
  %val533 = getelementptr inbounds nuw %struct.option, ptr %366, i32 0, i32 3, !mymd !1020
  %367 = load i32, ptr %val533, align 8, !mymd !1021
  store i32 %367, ptr %retval, align 4, !mymd !1022
  br label %return, !mymd !1023

if.end534:                                        ; preds = %if.end471
  store ptr null, ptr @nextchar, align 8, !mymd !1024
  store i32 87, ptr %retval, align 4, !mymd !1025
  br label %return, !mymd !1026

if.end535:                                        ; preds = %land.lhs.true368, %if.end363
  %368 = load ptr, ptr %temp, align 8, !mymd !1027
  %arrayidx536 = getelementptr inbounds i8, ptr %368, i64 1, !mymd !1028
  %369 = load i8, ptr %arrayidx536, align 1, !mymd !1029
  %conv537 = sext i8 %369 to i32, !mymd !1030
  %cmp538 = icmp eq i32 %conv537, 58, !mymd !1031
  br i1 %cmp538, label %if.then540, label %if.end584, !mymd !1032

if.then540:                                       ; preds = %if.end535
  %370 = load ptr, ptr %temp, align 8, !mymd !1033
  %arrayidx541 = getelementptr inbounds i8, ptr %370, i64 2, !mymd !1034
  %371 = load i8, ptr %arrayidx541, align 1, !mymd !1035
  %conv542 = sext i8 %371 to i32, !mymd !1036
  %cmp543 = icmp eq i32 %conv542, 58, !mymd !1037
  br i1 %cmp543, label %if.then545, label %if.else553, !mymd !1038

if.then545:                                       ; preds = %if.then540
  %372 = load ptr, ptr @nextchar, align 8, !mymd !1039
  %373 = load i8, ptr %372, align 1, !mymd !1040
  %conv546 = sext i8 %373 to i32, !mymd !1041
  %cmp547 = icmp ne i32 %conv546, 0, !mymd !1042
  br i1 %cmp547, label %if.then549, label %if.else551, !mymd !1043

if.then549:                                       ; preds = %if.then545
  %374 = load ptr, ptr @nextchar, align 8, !mymd !1044
  store ptr %374, ptr @optarg, align 8, !mymd !1045
  %375 = load i32, ptr @optind, align 4, !mymd !1046
  %inc550 = add nsw i32 %375, 1, !mymd !1047
  store i32 %inc550, ptr @optind, align 4, !mymd !1048
  br label %if.end552, !mymd !1049

if.else551:                                       ; preds = %if.then545
  store ptr null, ptr @optarg, align 8, !mymd !1050
  br label %if.end552, !mymd !1051

if.end552:                                        ; preds = %if.else551, %if.then549
  store ptr null, ptr @nextchar, align 8, !mymd !1052
  br label %if.end583, !mymd !1053

if.else553:                                       ; preds = %if.then540
  %376 = load ptr, ptr @nextchar, align 8, !mymd !1054
  %377 = load i8, ptr %376, align 1, !mymd !1055
  %conv554 = sext i8 %377 to i32, !mymd !1056
  %cmp555 = icmp ne i32 %conv554, 0, !mymd !1057
  br i1 %cmp555, label %if.then557, label %if.else559, !mymd !1058

if.then557:                                       ; preds = %if.else553
  %378 = load ptr, ptr @nextchar, align 8, !mymd !1059
  store ptr %378, ptr @optarg, align 8, !mymd !1060
  %379 = load i32, ptr @optind, align 4, !mymd !1061
  %inc558 = add nsw i32 %379, 1, !mymd !1062
  store i32 %inc558, ptr @optind, align 4, !mymd !1063
  br label %if.end582, !mymd !1064

if.else559:                                       ; preds = %if.else553
  %380 = load i32, ptr @optind, align 4, !mymd !1065
  %381 = load i32, ptr %argc.addr, align 4, !mymd !1066
  %cmp560 = icmp eq i32 %380, %381, !mymd !1067
  br i1 %cmp560, label %if.then562, label %if.else577, !mymd !1068

if.then562:                                       ; preds = %if.else559
  %382 = load i32, ptr %print_errors, align 4, !mymd !1069
  %tobool563 = icmp ne i32 %382, 0, !mymd !1070
  br i1 %tobool563, label %if.then564, label %if.end568, !mymd !1071

if.then564:                                       ; preds = %if.then562
  %383 = load ptr, ptr @stderr, align 8, !mymd !1072
  %384 = load ptr, ptr %argv.addr, align 8, !mymd !1073
  %arrayidx565 = getelementptr inbounds ptr, ptr %384, i64 0, !mymd !1074
  %385 = load ptr, ptr %arrayidx565, align 8, !mymd !1075
  %386 = load i8, ptr %c, align 1, !mymd !1076
  %conv566 = sext i8 %386 to i32, !mymd !1077
  %call567 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %383, ptr noundef @.str.11, ptr noundef %385, i32 noundef %conv566) #4, !mymd !1078
  br label %if.end568, !mymd !1079

if.end568:                                        ; preds = %if.then564, %if.then562
  %387 = load i8, ptr %c, align 1, !mymd !1080
  %conv569 = sext i8 %387 to i32, !mymd !1081
  store i32 %conv569, ptr @optopt, align 4, !mymd !1082
  %388 = load ptr, ptr %optstring.addr, align 8, !mymd !1083
  %arrayidx570 = getelementptr inbounds i8, ptr %388, i64 0, !mymd !1084
  %389 = load i8, ptr %arrayidx570, align 1, !mymd !1085
  %conv571 = sext i8 %389 to i32, !mymd !1086
  %cmp572 = icmp eq i32 %conv571, 58, !mymd !1087
  br i1 %cmp572, label %if.then574, label %if.else575, !mymd !1088

if.then574:                                       ; preds = %if.end568
  store i8 58, ptr %c, align 1, !mymd !1089
  br label %if.end576, !mymd !1090

if.else575:                                       ; preds = %if.end568
  store i8 63, ptr %c, align 1, !mymd !1091
  br label %if.end576, !mymd !1092

if.end576:                                        ; preds = %if.else575, %if.then574
  br label %if.end581, !mymd !1093

if.else577:                                       ; preds = %if.else559
  %390 = load ptr, ptr %argv.addr, align 8, !mymd !1094
  %391 = load i32, ptr @optind, align 4, !mymd !1095
  %inc578 = add nsw i32 %391, 1, !mymd !1096
  store i32 %inc578, ptr @optind, align 4, !mymd !1097
  %idxprom579 = sext i32 %391 to i64, !mymd !1098
  %arrayidx580 = getelementptr inbounds ptr, ptr %390, i64 %idxprom579, !mymd !1099
  %392 = load ptr, ptr %arrayidx580, align 8, !mymd !1100
  store ptr %392, ptr @optarg, align 8, !mymd !1101
  br label %if.end581, !mymd !1102

if.end581:                                        ; preds = %if.else577, %if.end576
  br label %if.end582, !mymd !1103

if.end582:                                        ; preds = %if.end581, %if.then557
  store ptr null, ptr @nextchar, align 8, !mymd !1104
  br label %if.end583, !mymd !1105

if.end583:                                        ; preds = %if.end582, %if.end552
  br label %if.end584, !mymd !1106

if.end584:                                        ; preds = %if.end583, %if.end535
  %393 = load i8, ptr %c, align 1, !mymd !1107
  %conv585 = sext i8 %393 to i32, !mymd !1108
  store i32 %conv585, ptr %retval, align 4, !mymd !1109
  br label %return, !mymd !1110

return:                                           ; preds = %if.end584, %if.end534, %if.end532, %if.then529, %if.end510, %if.end487, %if.end467, %if.end403, %if.end361, %if.end329, %if.end293, %if.then290, %if.end271, %if.end247, %if.end209, %if.end103, %if.then102, %if.end84, %if.then4
  %394 = load i32, ptr %retval, align 4, !mymd !1111
  ret i32 %394, !mymd !1112
}

; Function Attrs: noinline nounwind uwtable
declare hidden ptr @_getopt_initialize(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @exchange(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden ptr @my_index(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"1989"}
!7 = !{!"1990"}
!8 = !{!"1991"}
!9 = !{!"1992"}
!10 = !{!"1993"}
!11 = !{!"1994"}
!12 = !{!"1995"}
!13 = !{!"1996"}
!14 = !{!"1997"}
!15 = !{!"1998"}
!16 = !{!"1999"}
!17 = !{!"2000"}
!18 = !{!"2001"}
!19 = !{!"2002"}
!20 = !{!"2003"}
!21 = !{!"2004"}
!22 = !{!"2005"}
!23 = !{!"2006"}
!24 = !{!"2007"}
!25 = !{!"2008"}
!26 = !{!"2009"}
!27 = !{!"2010"}
!28 = !{!"2011"}
!29 = !{!"2012"}
!30 = !{!"2013"}
!31 = !{!"2014"}
!32 = !{!"2015"}
!33 = !{!"2016"}
!34 = !{!"2017"}
!35 = !{!"2018"}
!36 = !{!"2019"}
!37 = !{!"2020"}
!38 = !{!"2021"}
!39 = !{!"2022"}
!40 = !{!"2023"}
!41 = !{!"2024"}
!42 = !{!"2025"}
!43 = !{!"2026"}
!44 = !{!"2027"}
!45 = !{!"2028"}
!46 = !{!"2029"}
!47 = !{!"2030"}
!48 = !{!"2031"}
!49 = !{!"2032"}
!50 = !{!"2033"}
!51 = !{!"2034"}
!52 = !{!"2035"}
!53 = !{!"2036"}
!54 = !{!"2037"}
!55 = !{!"2038"}
!56 = !{!"2039"}
!57 = !{!"2040"}
!58 = !{!"2041"}
!59 = !{!"2042"}
!60 = !{!"2043"}
!61 = !{!"2044"}
!62 = !{!"2045"}
!63 = !{!"2046"}
!64 = !{!"2047"}
!65 = !{!"2048"}
!66 = !{!"2049"}
!67 = !{!"2050"}
!68 = !{!"2051"}
!69 = !{!"2052"}
!70 = !{!"2053"}
!71 = !{!"2054"}
!72 = !{!"2055"}
!73 = !{!"2056"}
!74 = !{!"2057"}
!75 = !{!"2058"}
!76 = !{!"2059"}
!77 = !{!"2060"}
!78 = !{!"2061"}
!79 = !{!"2062"}
!80 = !{!"2063"}
!81 = !{!"2064"}
!82 = !{!"2065"}
!83 = !{!"2066"}
!84 = !{!"2067"}
!85 = !{!"2068"}
!86 = !{!"2069"}
!87 = !{!"2070"}
!88 = !{!"2071"}
!89 = !{!"2072"}
!90 = !{!"2073"}
!91 = !{!"2074"}
!92 = !{!"2075"}
!93 = !{!"2076"}
!94 = !{!"2077"}
!95 = !{!"2078"}
!96 = !{!"2079"}
!97 = !{!"2080"}
!98 = !{!"2081"}
!99 = !{!"2082"}
!100 = !{!"2083"}
!101 = !{!"2084"}
!102 = !{!"2085"}
!103 = !{!"2086"}
!104 = !{!"2087"}
!105 = !{!"2088"}
!106 = !{!"2089"}
!107 = !{!"2090"}
!108 = !{!"2091"}
!109 = !{!"2092"}
!110 = !{!"2093"}
!111 = !{!"2094"}
!112 = !{!"2095"}
!113 = !{!"2096"}
!114 = !{!"2097"}
!115 = !{!"2098"}
!116 = !{!"2099"}
!117 = !{!"2100"}
!118 = !{!"2101"}
!119 = !{!"2102"}
!120 = !{!"2103"}
!121 = !{!"2104"}
!122 = !{!"2105"}
!123 = !{!"2106"}
!124 = !{!"2107"}
!125 = !{!"2108"}
!126 = !{!"2109"}
!127 = !{!"2110"}
!128 = !{!"2111"}
!129 = !{!"2112"}
!130 = !{!"2113"}
!131 = !{!"2114"}
!132 = !{!"2115"}
!133 = !{!"2116"}
!134 = !{!"2117"}
!135 = !{!"2118"}
!136 = !{!"2119"}
!137 = !{!"2120"}
!138 = !{!"2121"}
!139 = !{!"2122"}
!140 = !{!"2123"}
!141 = !{!"2124"}
!142 = !{!"2125"}
!143 = !{!"2126"}
!144 = !{!"2127"}
!145 = !{!"2128"}
!146 = distinct !{!146, !147}
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{!"2129"}
!149 = !{!"2130"}
!150 = !{!"2131"}
!151 = !{!"2132"}
!152 = !{!"2133"}
!153 = !{!"2134"}
!154 = !{!"2135"}
!155 = !{!"2136"}
!156 = !{!"2137"}
!157 = !{!"2138"}
!158 = !{!"2139"}
!159 = !{!"2140"}
!160 = !{!"2141"}
!161 = !{!"2142"}
!162 = !{!"2143"}
!163 = !{!"2144"}
!164 = !{!"2145"}
!165 = !{!"2146"}
!166 = !{!"2147"}
!167 = !{!"2148"}
!168 = !{!"2149"}
!169 = !{!"2150"}
!170 = !{!"2151"}
!171 = !{!"2152"}
!172 = !{!"2153"}
!173 = !{!"2154"}
!174 = !{!"2155"}
!175 = !{!"2156"}
!176 = !{!"2157"}
!177 = !{!"2158"}
!178 = !{!"2159"}
!179 = !{!"2160"}
!180 = !{!"2161"}
!181 = !{!"2162"}
!182 = !{!"2163"}
!183 = !{!"2164"}
!184 = !{!"2165"}
!185 = !{!"2166"}
!186 = !{!"2167"}
!187 = !{!"2168"}
!188 = !{!"2169"}
!189 = !{!"2170"}
!190 = !{!"2171"}
!191 = !{!"2172"}
!192 = !{!"2173"}
!193 = !{!"2174"}
!194 = !{!"2175"}
!195 = !{!"2176"}
!196 = !{!"2177"}
!197 = !{!"2178"}
!198 = !{!"2179"}
!199 = !{!"2180"}
!200 = !{!"2181"}
!201 = !{!"2182"}
!202 = !{!"2183"}
!203 = !{!"2184"}
!204 = !{!"2185"}
!205 = !{!"2186"}
!206 = !{!"2187"}
!207 = !{!"2188"}
!208 = !{!"2189"}
!209 = !{!"2190"}
!210 = !{!"2191"}
!211 = !{!"2192"}
!212 = !{!"2193"}
!213 = !{!"2194"}
!214 = !{!"2195"}
!215 = !{!"2196"}
!216 = !{!"2197"}
!217 = !{!"2198"}
!218 = !{!"2199"}
!219 = !{!"2200"}
!220 = !{!"2201"}
!221 = !{!"2202"}
!222 = !{!"2203"}
!223 = !{!"2204"}
!224 = !{!"2205"}
!225 = !{!"2206"}
!226 = !{!"2207"}
!227 = !{!"2208"}
!228 = !{!"2209"}
!229 = !{!"2210"}
!230 = !{!"2211"}
!231 = !{!"2212"}
!232 = !{!"2213"}
!233 = !{!"2214"}
!234 = !{!"2215"}
!235 = !{!"2216"}
!236 = !{!"2217"}
!237 = !{!"2218"}
!238 = !{!"2219"}
!239 = !{!"2220"}
!240 = !{!"2221"}
!241 = !{!"2222"}
!242 = !{!"2223"}
!243 = !{!"2224"}
!244 = !{!"2225"}
!245 = !{!"2226"}
!246 = !{!"2227"}
!247 = !{!"2228"}
!248 = !{!"2229"}
!249 = !{!"2230"}
!250 = !{!"2231"}
!251 = !{!"2232"}
!252 = !{!"2233"}
!253 = !{!"2234"}
!254 = !{!"2235"}
!255 = !{!"2236"}
!256 = !{!"2237"}
!257 = !{!"2238"}
!258 = !{!"2239"}
!259 = !{!"2240"}
!260 = !{!"2241"}
!261 = !{!"2242"}
!262 = !{!"2243"}
!263 = !{!"2244"}
!264 = !{!"2245"}
!265 = !{!"2246"}
!266 = !{!"2247"}
!267 = !{!"2248"}
!268 = !{!"2249"}
!269 = !{!"2250"}
!270 = !{!"2251"}
!271 = !{!"2252"}
!272 = !{!"2253"}
!273 = !{!"2254"}
!274 = !{!"2255"}
!275 = !{!"2256"}
!276 = !{!"2257"}
!277 = !{!"2258"}
!278 = !{!"2259"}
!279 = !{!"2260"}
!280 = !{!"2261"}
!281 = !{!"2262"}
!282 = !{!"2263"}
!283 = !{!"2264"}
!284 = !{!"2265"}
!285 = !{!"2266"}
!286 = !{!"2267"}
!287 = !{!"2268"}
!288 = !{!"2269"}
!289 = !{!"2270"}
!290 = !{!"2271"}
!291 = !{!"2272"}
!292 = !{!"2273"}
!293 = !{!"2274"}
!294 = !{!"2275"}
!295 = !{!"2276"}
!296 = !{!"2277"}
!297 = !{!"2278"}
!298 = !{!"2279"}
!299 = !{!"2280"}
!300 = !{!"2281"}
!301 = !{!"2282"}
!302 = !{!"2283"}
!303 = !{!"2284"}
!304 = !{!"2285"}
!305 = !{!"2286"}
!306 = !{!"2287"}
!307 = !{!"2288"}
!308 = !{!"2289"}
!309 = !{!"2290"}
!310 = !{!"2291"}
!311 = !{!"2292"}
!312 = !{!"2293"}
!313 = !{!"2294"}
!314 = !{!"2295"}
!315 = !{!"2296"}
!316 = !{!"2297"}
!317 = !{!"2298"}
!318 = !{!"2299"}
!319 = !{!"2300"}
!320 = !{!"2301"}
!321 = !{!"2302"}
!322 = !{!"2303"}
!323 = !{!"2304"}
!324 = !{!"2305"}
!325 = distinct !{!325, !147}
!326 = !{!"2306"}
!327 = !{!"2307"}
!328 = !{!"2308"}
!329 = !{!"2309"}
!330 = !{!"2310"}
!331 = !{!"2311"}
!332 = !{!"2312"}
!333 = !{!"2313"}
!334 = !{!"2314"}
!335 = !{!"2315"}
!336 = !{!"2316"}
!337 = !{!"2317"}
!338 = !{!"2318"}
!339 = !{!"2319"}
!340 = !{!"2320"}
!341 = !{!"2321"}
!342 = !{!"2322"}
!343 = !{!"2323"}
!344 = !{!"2324"}
!345 = !{!"2325"}
!346 = !{!"2326"}
!347 = !{!"2327"}
!348 = !{!"2328"}
!349 = !{!"2329"}
!350 = !{!"2330"}
!351 = !{!"2331"}
!352 = !{!"2332"}
!353 = !{!"2333"}
!354 = !{!"2334"}
!355 = !{!"2335"}
!356 = !{!"2336"}
!357 = !{!"2337"}
!358 = !{!"2338"}
!359 = !{!"2339"}
!360 = !{!"2340"}
!361 = !{!"2341"}
!362 = !{!"2342"}
!363 = !{!"2343"}
!364 = !{!"2344"}
!365 = !{!"2345"}
!366 = !{!"2346"}
!367 = !{!"2347"}
!368 = !{!"2348"}
!369 = !{!"2349"}
!370 = !{!"2350"}
!371 = !{!"2351"}
!372 = !{!"2352"}
!373 = !{!"2353"}
!374 = !{!"2354"}
!375 = !{!"2355"}
!376 = !{!"2356"}
!377 = !{!"2357"}
!378 = !{!"2358"}
!379 = !{!"2359"}
!380 = !{!"2360"}
!381 = !{!"2361"}
!382 = !{!"2362"}
!383 = !{!"2363"}
!384 = !{!"2364"}
!385 = !{!"2365"}
!386 = !{!"2366"}
!387 = !{!"2367"}
!388 = !{!"2368"}
!389 = !{!"2369"}
!390 = !{!"2370"}
!391 = !{!"2371"}
!392 = !{!"2372"}
!393 = !{!"2373"}
!394 = !{!"2374"}
!395 = !{!"2375"}
!396 = !{!"2376"}
!397 = !{!"2377"}
!398 = !{!"2378"}
!399 = !{!"2379"}
!400 = !{!"2380"}
!401 = !{!"2381"}
!402 = !{!"2382"}
!403 = !{!"2383"}
!404 = !{!"2384"}
!405 = !{!"2385"}
!406 = !{!"2386"}
!407 = !{!"2387"}
!408 = !{!"2388"}
!409 = !{!"2389"}
!410 = !{!"2390"}
!411 = !{!"2391"}
!412 = !{!"2392"}
!413 = !{!"2393"}
!414 = distinct !{!414, !147}
!415 = !{!"2394"}
!416 = !{!"2395"}
!417 = !{!"2396"}
!418 = !{!"2397"}
!419 = !{!"2398"}
!420 = !{!"2399"}
!421 = !{!"2400"}
!422 = !{!"2401"}
!423 = !{!"2402"}
!424 = !{!"2403"}
!425 = !{!"2404"}
!426 = !{!"2405"}
!427 = !{!"2406"}
!428 = !{!"2407"}
!429 = !{!"2408"}
!430 = !{!"2409"}
!431 = !{!"2410"}
!432 = !{!"2411"}
!433 = !{!"2412"}
!434 = !{!"2413"}
!435 = !{!"2414"}
!436 = !{!"2415"}
!437 = !{!"2416"}
!438 = !{!"2417"}
!439 = !{!"2418"}
!440 = !{!"2419"}
!441 = !{!"2420"}
!442 = !{!"2421"}
!443 = !{!"2422"}
!444 = !{!"2423"}
!445 = !{!"2424"}
!446 = !{!"2425"}
!447 = !{!"2426"}
!448 = !{!"2427"}
!449 = !{!"2428"}
!450 = !{!"2429"}
!451 = !{!"2430"}
!452 = !{!"2431"}
!453 = !{!"2432"}
!454 = !{!"2433"}
!455 = !{!"2434"}
!456 = !{!"2435"}
!457 = !{!"2436"}
!458 = !{!"2437"}
!459 = !{!"2438"}
!460 = !{!"2439"}
!461 = !{!"2440"}
!462 = !{!"2441"}
!463 = !{!"2442"}
!464 = !{!"2443"}
!465 = !{!"2444"}
!466 = !{!"2445"}
!467 = !{!"2446"}
!468 = !{!"2447"}
!469 = !{!"2448"}
!470 = !{!"2449"}
!471 = !{!"2450"}
!472 = !{!"2451"}
!473 = !{!"2452"}
!474 = !{!"2453"}
!475 = !{!"2454"}
!476 = !{!"2455"}
!477 = !{!"2456"}
!478 = !{!"2457"}
!479 = !{!"2458"}
!480 = !{!"2459"}
!481 = !{!"2460"}
!482 = !{!"2461"}
!483 = !{!"2462"}
!484 = !{!"2463"}
!485 = !{!"2464"}
!486 = !{!"2465"}
!487 = !{!"2466"}
!488 = !{!"2467"}
!489 = !{!"2468"}
!490 = !{!"2469"}
!491 = !{!"2470"}
!492 = !{!"2471"}
!493 = !{!"2472"}
!494 = !{!"2473"}
!495 = !{!"2474"}
!496 = !{!"2475"}
!497 = !{!"2476"}
!498 = !{!"2477"}
!499 = !{!"2478"}
!500 = !{!"2479"}
!501 = !{!"2480"}
!502 = !{!"2481"}
!503 = !{!"2482"}
!504 = !{!"2483"}
!505 = !{!"2484"}
!506 = !{!"2485"}
!507 = !{!"2486"}
!508 = !{!"2487"}
!509 = !{!"2488"}
!510 = !{!"2489"}
!511 = !{!"2490"}
!512 = !{!"2491"}
!513 = !{!"2492"}
!514 = !{!"2493"}
!515 = !{!"2494"}
!516 = !{!"2495"}
!517 = !{!"2496"}
!518 = !{!"2497"}
!519 = !{!"2498"}
!520 = !{!"2499"}
!521 = !{!"2500"}
!522 = !{!"2501"}
!523 = !{!"2502"}
!524 = !{!"2503"}
!525 = !{!"2504"}
!526 = !{!"2505"}
!527 = !{!"2506"}
!528 = !{!"2507"}
!529 = !{!"2508"}
!530 = !{!"2509"}
!531 = !{!"2510"}
!532 = !{!"2511"}
!533 = !{!"2512"}
!534 = !{!"2513"}
!535 = !{!"2514"}
!536 = !{!"2515"}
!537 = !{!"2516"}
!538 = !{!"2517"}
!539 = !{!"2518"}
!540 = !{!"2519"}
!541 = !{!"2520"}
!542 = !{!"2521"}
!543 = !{!"2522"}
!544 = !{!"2523"}
!545 = !{!"2524"}
!546 = !{!"2525"}
!547 = !{!"2526"}
!548 = !{!"2527"}
!549 = !{!"2528"}
!550 = !{!"2529"}
!551 = !{!"2530"}
!552 = !{!"2531"}
!553 = !{!"2532"}
!554 = !{!"2533"}
!555 = !{!"2534"}
!556 = !{!"2535"}
!557 = !{!"2536"}
!558 = !{!"2537"}
!559 = !{!"2538"}
!560 = !{!"2539"}
!561 = !{!"2540"}
!562 = !{!"2541"}
!563 = !{!"2542"}
!564 = !{!"2543"}
!565 = !{!"2544"}
!566 = !{!"2545"}
!567 = !{!"2546"}
!568 = !{!"2547"}
!569 = !{!"2548"}
!570 = !{!"2549"}
!571 = !{!"2550"}
!572 = !{!"2551"}
!573 = !{!"2552"}
!574 = !{!"2553"}
!575 = !{!"2554"}
!576 = !{!"2555"}
!577 = !{!"2556"}
!578 = !{!"2557"}
!579 = !{!"2558"}
!580 = !{!"2559"}
!581 = !{!"2560"}
!582 = !{!"2561"}
!583 = !{!"2562"}
!584 = !{!"2563"}
!585 = !{!"2564"}
!586 = !{!"2565"}
!587 = !{!"2566"}
!588 = !{!"2567"}
!589 = !{!"2568"}
!590 = !{!"2569"}
!591 = !{!"2570"}
!592 = !{!"2571"}
!593 = !{!"2572"}
!594 = !{!"2573"}
!595 = !{!"2574"}
!596 = !{!"2575"}
!597 = !{!"2576"}
!598 = !{!"2577"}
!599 = !{!"2578"}
!600 = !{!"2579"}
!601 = !{!"2580"}
!602 = !{!"2581"}
!603 = !{!"2582"}
!604 = !{!"2583"}
!605 = !{!"2584"}
!606 = !{!"2585"}
!607 = !{!"2586"}
!608 = !{!"2587"}
!609 = !{!"2588"}
!610 = !{!"2589"}
!611 = !{!"2590"}
!612 = !{!"2591"}
!613 = !{!"2592"}
!614 = !{!"2593"}
!615 = !{!"2594"}
!616 = !{!"2595"}
!617 = !{!"2596"}
!618 = !{!"2597"}
!619 = !{!"2598"}
!620 = !{!"2599"}
!621 = !{!"2600"}
!622 = !{!"2601"}
!623 = !{!"2602"}
!624 = !{!"2603"}
!625 = !{!"2604"}
!626 = !{!"2605"}
!627 = !{!"2606"}
!628 = !{!"2607"}
!629 = !{!"2608"}
!630 = !{!"2609"}
!631 = !{!"2610"}
!632 = !{!"2611"}
!633 = !{!"2612"}
!634 = !{!"2613"}
!635 = !{!"2614"}
!636 = !{!"2615"}
!637 = !{!"2616"}
!638 = !{!"2617"}
!639 = !{!"2618"}
!640 = !{!"2619"}
!641 = !{!"2620"}
!642 = !{!"2621"}
!643 = !{!"2622"}
!644 = !{!"2623"}
!645 = !{!"2624"}
!646 = !{!"2625"}
!647 = !{!"2626"}
!648 = !{!"2627"}
!649 = !{!"2628"}
!650 = !{!"2629"}
!651 = !{!"2630"}
!652 = !{!"2631"}
!653 = !{!"2632"}
!654 = !{!"2633"}
!655 = !{!"2634"}
!656 = !{!"2635"}
!657 = !{!"2636"}
!658 = !{!"2637"}
!659 = !{!"2638"}
!660 = !{!"2639"}
!661 = !{!"2640"}
!662 = !{!"2641"}
!663 = !{!"2642"}
!664 = !{!"2643"}
!665 = !{!"2644"}
!666 = !{!"2645"}
!667 = !{!"2646"}
!668 = !{!"2647"}
!669 = !{!"2648"}
!670 = !{!"2649"}
!671 = !{!"2650"}
!672 = !{!"2651"}
!673 = !{!"2652"}
!674 = !{!"2653"}
!675 = !{!"2654"}
!676 = !{!"2655"}
!677 = !{!"2656"}
!678 = !{!"2657"}
!679 = !{!"2658"}
!680 = !{!"2659"}
!681 = !{!"2660"}
!682 = !{!"2661"}
!683 = !{!"2662"}
!684 = !{!"2663"}
!685 = !{!"2664"}
!686 = !{!"2665"}
!687 = !{!"2666"}
!688 = !{!"2667"}
!689 = !{!"2668"}
!690 = !{!"2669"}
!691 = !{!"2670"}
!692 = !{!"2671"}
!693 = !{!"2672"}
!694 = !{!"2673"}
!695 = !{!"2674"}
!696 = !{!"2675"}
!697 = !{!"2676"}
!698 = !{!"2677"}
!699 = !{!"2678"}
!700 = !{!"2679"}
!701 = !{!"2680"}
!702 = !{!"2681"}
!703 = !{!"2682"}
!704 = !{!"2683"}
!705 = !{!"2684"}
!706 = !{!"2685"}
!707 = !{!"2686"}
!708 = !{!"2687"}
!709 = !{!"2688"}
!710 = !{!"2689"}
!711 = !{!"2690"}
!712 = !{!"2691"}
!713 = !{!"2692"}
!714 = !{!"2693"}
!715 = !{!"2694"}
!716 = !{!"2695"}
!717 = !{!"2696"}
!718 = !{!"2697"}
!719 = !{!"2698"}
!720 = !{!"2699"}
!721 = !{!"2700"}
!722 = !{!"2701"}
!723 = !{!"2702"}
!724 = !{!"2703"}
!725 = !{!"2704"}
!726 = !{!"2705"}
!727 = !{!"2706"}
!728 = !{!"2707"}
!729 = !{!"2708"}
!730 = !{!"2709"}
!731 = !{!"2710"}
!732 = !{!"2711"}
!733 = !{!"2712"}
!734 = !{!"2713"}
!735 = !{!"2714"}
!736 = !{!"2715"}
!737 = !{!"2716"}
!738 = !{!"2717"}
!739 = !{!"2718"}
!740 = !{!"2719"}
!741 = !{!"2720"}
!742 = !{!"2721"}
!743 = !{!"2722"}
!744 = !{!"2723"}
!745 = !{!"2724"}
!746 = !{!"2725"}
!747 = !{!"2726"}
!748 = !{!"2727"}
!749 = !{!"2728"}
!750 = !{!"2729"}
!751 = !{!"2730"}
!752 = !{!"2731"}
!753 = !{!"2732"}
!754 = !{!"2733"}
!755 = !{!"2734"}
!756 = !{!"2735"}
!757 = !{!"2736"}
!758 = !{!"2737"}
!759 = !{!"2738"}
!760 = !{!"2739"}
!761 = !{!"2740"}
!762 = !{!"2741"}
!763 = !{!"2742"}
!764 = !{!"2743"}
!765 = !{!"2744"}
!766 = !{!"2745"}
!767 = !{!"2746"}
!768 = !{!"2747"}
!769 = !{!"2748"}
!770 = !{!"2749"}
!771 = !{!"2750"}
!772 = !{!"2751"}
!773 = !{!"2752"}
!774 = !{!"2753"}
!775 = !{!"2754"}
!776 = !{!"2755"}
!777 = !{!"2756"}
!778 = !{!"2757"}
!779 = !{!"2758"}
!780 = !{!"2759"}
!781 = !{!"2760"}
!782 = !{!"2761"}
!783 = !{!"2762"}
!784 = !{!"2763"}
!785 = !{!"2764"}
!786 = !{!"2765"}
!787 = !{!"2766"}
!788 = !{!"2767"}
!789 = !{!"2768"}
!790 = !{!"2769"}
!791 = !{!"2770"}
!792 = !{!"2771"}
!793 = !{!"2772"}
!794 = !{!"2773"}
!795 = !{!"2774"}
!796 = !{!"2775"}
!797 = !{!"2776"}
!798 = !{!"2777"}
!799 = !{!"2778"}
!800 = !{!"2779"}
!801 = !{!"2780"}
!802 = !{!"2781"}
!803 = !{!"2782"}
!804 = !{!"2783"}
!805 = !{!"2784"}
!806 = !{!"2785"}
!807 = !{!"2786"}
!808 = !{!"2787"}
!809 = !{!"2788"}
!810 = !{!"2789"}
!811 = !{!"2790"}
!812 = !{!"2791"}
!813 = distinct !{!813, !147}
!814 = !{!"2792"}
!815 = !{!"2793"}
!816 = !{!"2794"}
!817 = !{!"2795"}
!818 = !{!"2796"}
!819 = !{!"2797"}
!820 = !{!"2798"}
!821 = !{!"2799"}
!822 = !{!"2800"}
!823 = !{!"2801"}
!824 = !{!"2802"}
!825 = !{!"2803"}
!826 = !{!"2804"}
!827 = !{!"2805"}
!828 = !{!"2806"}
!829 = !{!"2807"}
!830 = !{!"2808"}
!831 = !{!"2809"}
!832 = !{!"2810"}
!833 = !{!"2811"}
!834 = !{!"2812"}
!835 = !{!"2813"}
!836 = !{!"2814"}
!837 = !{!"2815"}
!838 = !{!"2816"}
!839 = !{!"2817"}
!840 = !{!"2818"}
!841 = !{!"2819"}
!842 = !{!"2820"}
!843 = !{!"2821"}
!844 = !{!"2822"}
!845 = !{!"2823"}
!846 = !{!"2824"}
!847 = !{!"2825"}
!848 = !{!"2826"}
!849 = !{!"2827"}
!850 = !{!"2828"}
!851 = !{!"2829"}
!852 = !{!"2830"}
!853 = !{!"2831"}
!854 = !{!"2832"}
!855 = !{!"2833"}
!856 = !{!"2834"}
!857 = !{!"2835"}
!858 = !{!"2836"}
!859 = !{!"2837"}
!860 = !{!"2838"}
!861 = !{!"2839"}
!862 = !{!"2840"}
!863 = !{!"2841"}
!864 = !{!"2842"}
!865 = !{!"2843"}
!866 = !{!"2844"}
!867 = !{!"2845"}
!868 = !{!"2846"}
!869 = !{!"2847"}
!870 = !{!"2848"}
!871 = !{!"2849"}
!872 = !{!"2850"}
!873 = !{!"2851"}
!874 = distinct !{!874, !147}
!875 = !{!"2852"}
!876 = !{!"2853"}
!877 = !{!"2854"}
!878 = !{!"2855"}
!879 = !{!"2856"}
!880 = !{!"2857"}
!881 = !{!"2858"}
!882 = !{!"2859"}
!883 = !{!"2860"}
!884 = !{!"2861"}
!885 = !{!"2862"}
!886 = !{!"2863"}
!887 = !{!"2864"}
!888 = !{!"2865"}
!889 = !{!"2866"}
!890 = !{!"2867"}
!891 = !{!"2868"}
!892 = !{!"2869"}
!893 = !{!"2870"}
!894 = !{!"2871"}
!895 = !{!"2872"}
!896 = !{!"2873"}
!897 = !{!"2874"}
!898 = !{!"2875"}
!899 = !{!"2876"}
!900 = !{!"2877"}
!901 = !{!"2878"}
!902 = !{!"2879"}
!903 = !{!"2880"}
!904 = !{!"2881"}
!905 = !{!"2882"}
!906 = !{!"2883"}
!907 = !{!"2884"}
!908 = !{!"2885"}
!909 = !{!"2886"}
!910 = !{!"2887"}
!911 = !{!"2888"}
!912 = !{!"2889"}
!913 = !{!"2890"}
!914 = !{!"2891"}
!915 = !{!"2892"}
!916 = !{!"2893"}
!917 = !{!"2894"}
!918 = !{!"2895"}
!919 = !{!"2896"}
!920 = !{!"2897"}
!921 = !{!"2898"}
!922 = !{!"2899"}
!923 = !{!"2900"}
!924 = !{!"2901"}
!925 = !{!"2902"}
!926 = !{!"2903"}
!927 = !{!"2904"}
!928 = !{!"2905"}
!929 = !{!"2906"}
!930 = !{!"2907"}
!931 = !{!"2908"}
!932 = !{!"2909"}
!933 = !{!"2910"}
!934 = !{!"2911"}
!935 = !{!"2912"}
!936 = !{!"2913"}
!937 = !{!"2914"}
!938 = !{!"2915"}
!939 = !{!"2916"}
!940 = !{!"2917"}
!941 = !{!"2918"}
!942 = !{!"2919"}
!943 = !{!"2920"}
!944 = !{!"2921"}
!945 = !{!"2922"}
!946 = !{!"2923"}
!947 = !{!"2924"}
!948 = !{!"2925"}
!949 = !{!"2926"}
!950 = !{!"2927"}
!951 = !{!"2928"}
!952 = !{!"2929"}
!953 = !{!"2930"}
!954 = !{!"2931"}
!955 = !{!"2932"}
!956 = !{!"2933"}
!957 = !{!"2934"}
!958 = !{!"2935"}
!959 = !{!"2936"}
!960 = !{!"2937"}
!961 = !{!"2938"}
!962 = !{!"2939"}
!963 = !{!"2940"}
!964 = !{!"2941"}
!965 = !{!"2942"}
!966 = !{!"2943"}
!967 = !{!"2944"}
!968 = !{!"2945"}
!969 = !{!"2946"}
!970 = !{!"2947"}
!971 = !{!"2948"}
!972 = !{!"2949"}
!973 = !{!"2950"}
!974 = !{!"2951"}
!975 = !{!"2952"}
!976 = !{!"2953"}
!977 = !{!"2954"}
!978 = !{!"2955"}
!979 = !{!"2956"}
!980 = !{!"2957"}
!981 = !{!"2958"}
!982 = !{!"2959"}
!983 = !{!"2960"}
!984 = !{!"2961"}
!985 = !{!"2962"}
!986 = !{!"2963"}
!987 = !{!"2964"}
!988 = !{!"2965"}
!989 = !{!"2966"}
!990 = !{!"2967"}
!991 = !{!"2968"}
!992 = !{!"2969"}
!993 = !{!"2970"}
!994 = !{!"2971"}
!995 = !{!"2972"}
!996 = !{!"2973"}
!997 = !{!"2974"}
!998 = !{!"2975"}
!999 = !{!"2976"}
!1000 = !{!"2977"}
!1001 = !{!"2978"}
!1002 = !{!"2979"}
!1003 = !{!"2980"}
!1004 = !{!"2981"}
!1005 = !{!"2982"}
!1006 = !{!"2983"}
!1007 = !{!"2984"}
!1008 = !{!"2985"}
!1009 = !{!"2986"}
!1010 = !{!"2987"}
!1011 = !{!"2988"}
!1012 = !{!"2989"}
!1013 = !{!"2990"}
!1014 = !{!"2991"}
!1015 = !{!"2992"}
!1016 = !{!"2993"}
!1017 = !{!"2994"}
!1018 = !{!"2995"}
!1019 = !{!"2996"}
!1020 = !{!"2997"}
!1021 = !{!"2998"}
!1022 = !{!"2999"}
!1023 = !{!"3000"}
!1024 = !{!"3001"}
!1025 = !{!"3002"}
!1026 = !{!"3003"}
!1027 = !{!"3004"}
!1028 = !{!"3005"}
!1029 = !{!"3006"}
!1030 = !{!"3007"}
!1031 = !{!"3008"}
!1032 = !{!"3009"}
!1033 = !{!"3010"}
!1034 = !{!"3011"}
!1035 = !{!"3012"}
!1036 = !{!"3013"}
!1037 = !{!"3014"}
!1038 = !{!"3015"}
!1039 = !{!"3016"}
!1040 = !{!"3017"}
!1041 = !{!"3018"}
!1042 = !{!"3019"}
!1043 = !{!"3020"}
!1044 = !{!"3021"}
!1045 = !{!"3022"}
!1046 = !{!"3023"}
!1047 = !{!"3024"}
!1048 = !{!"3025"}
!1049 = !{!"3026"}
!1050 = !{!"3027"}
!1051 = !{!"3028"}
!1052 = !{!"3029"}
!1053 = !{!"3030"}
!1054 = !{!"3031"}
!1055 = !{!"3032"}
!1056 = !{!"3033"}
!1057 = !{!"3034"}
!1058 = !{!"3035"}
!1059 = !{!"3036"}
!1060 = !{!"3037"}
!1061 = !{!"3038"}
!1062 = !{!"3039"}
!1063 = !{!"3040"}
!1064 = !{!"3041"}
!1065 = !{!"3042"}
!1066 = !{!"3043"}
!1067 = !{!"3044"}
!1068 = !{!"3045"}
!1069 = !{!"3046"}
!1070 = !{!"3047"}
!1071 = !{!"3048"}
!1072 = !{!"3049"}
!1073 = !{!"3050"}
!1074 = !{!"3051"}
!1075 = !{!"3052"}
!1076 = !{!"3053"}
!1077 = !{!"3054"}
!1078 = !{!"3055"}
!1079 = !{!"3056"}
!1080 = !{!"3057"}
!1081 = !{!"3058"}
!1082 = !{!"3059"}
!1083 = !{!"3060"}
!1084 = !{!"3061"}
!1085 = !{!"3062"}
!1086 = !{!"3063"}
!1087 = !{!"3064"}
!1088 = !{!"3065"}
!1089 = !{!"3066"}
!1090 = !{!"3067"}
!1091 = !{!"3068"}
!1092 = !{!"3069"}
!1093 = !{!"3070"}
!1094 = !{!"3071"}
!1095 = !{!"3072"}
!1096 = !{!"3073"}
!1097 = !{!"3074"}
!1098 = !{!"3075"}
!1099 = !{!"3076"}
!1100 = !{!"3077"}
!1101 = !{!"3078"}
!1102 = !{!"3079"}
!1103 = !{!"3080"}
!1104 = !{!"3081"}
!1105 = !{!"3082"}
!1106 = !{!"3083"}
!1107 = !{!"3084"}
!1108 = !{!"3085"}
!1109 = !{!"3086"}
!1110 = !{!"3087"}
!1111 = !{!"3088"}
!1112 = !{!"3089"}
