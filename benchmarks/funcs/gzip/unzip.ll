; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@stderr = external global ptr, align 8
@to_stdout = external dso_local global i32, align 4
@quiet = external dso_local global i32, align 4
@test = external dso_local global i32, align 4
@method = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@ifd = external dso_local global i32, align 4
@ofd = external dso_local global i32, align 4
@ifname = external dso_local global [1024 x i8], align 16
@bytes_out = external dso_local global i64, align 8
@pkzip = external dso_local global i32, align 4
@ext_header = external dso_local global i32, align 4
@decrypt = external dso_local global i32, align 4
@.str.62 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.63 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.64 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.65 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.66 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.67 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.68 = external hidden unnamed_addr constant [48 x i8], align 1
@.str.69 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.70 = external hidden unnamed_addr constant [45 x i8], align 1
@outbuf = external dso_local global [18432 x i8], align 16
@window = external dso_local global [65536 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local void @error(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @abort_gzip() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fill_inbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @flush_window() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @inflate() #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unzip(i32 noundef %in, i32 noundef %out) #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %in.addr = alloca i32, align 4, !mymd !7
  %out.addr = alloca i32, align 4, !mymd !8
  %orig_crc = alloca i64, align 8, !mymd !9
  %orig_len = alloca i64, align 8, !mymd !10
  %n = alloca i32, align 4, !mymd !11
  %buf = alloca [16 x i8], align 16, !mymd !12
  %err = alloca i32, align 4, !mymd !13
  %res = alloca i32, align 4, !mymd !14
  %n48 = alloca i64, align 8, !mymd !15
  %c = alloca i8, align 1, !mymd !16
  store i32 %in, ptr %in.addr, align 4, !mymd !17
  store i32 %out, ptr %out.addr, align 4, !mymd !18
  store i64 0, ptr %orig_crc, align 8, !mymd !19
  store i64 0, ptr %orig_len, align 8, !mymd !20
  store i32 0, ptr %err, align 4, !mymd !21
  %0 = load i32, ptr %in.addr, align 4, !mymd !22
  store i32 %0, ptr @ifd, align 4, !mymd !23
  %1 = load i32, ptr %out.addr, align 4, !mymd !24
  store i32 %1, ptr @ofd, align 4, !mymd !25
  %call = call i64 @updcrc(ptr noundef null, i32 noundef 0), !mymd !26
  %2 = load i32, ptr @pkzip, align 4, !mymd !27
  %tobool = icmp ne i32 %2, 0, !mymd !28
  br i1 %tobool, label %land.lhs.true, label %if.end, !mymd !29

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr @ext_header, align 4, !mymd !30
  %tobool1 = icmp ne i32 %3, 0, !mymd !31
  br i1 %tobool1, label %if.end, label %if.then, !mymd !32

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 14), align 2, !mymd !33
  %conv = zext i8 %4 to i16, !mymd !34
  %conv2 = zext i16 %conv to i32, !mymd !35
  %5 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 14), i64 1), align 1, !mymd !36
  %conv3 = zext i8 %5 to i16, !mymd !37
  %conv4 = zext i16 %conv3 to i32, !mymd !38
  %shl = shl i32 %conv4, 8, !mymd !39
  %or = or i32 %conv2, %shl, !mymd !40
  %conv5 = sext i32 %or to i64, !mymd !41
  %6 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 14), i64 2), align 2, !mymd !42
  %conv6 = zext i8 %6 to i16, !mymd !43
  %conv7 = zext i16 %conv6 to i32, !mymd !44
  %7 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 14), i64 2), i64 1), align 1, !mymd !45
  %conv8 = zext i8 %7 to i16, !mymd !46
  %conv9 = zext i16 %conv8 to i32, !mymd !47
  %shl10 = shl i32 %conv9, 8, !mymd !48
  %or11 = or i32 %conv7, %shl10, !mymd !49
  %conv12 = sext i32 %or11 to i64, !mymd !50
  %shl13 = shl i64 %conv12, 16, !mymd !51
  %or14 = or i64 %conv5, %shl13, !mymd !52
  store i64 %or14, ptr %orig_crc, align 8, !mymd !53
  %8 = load i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 22), align 2, !mymd !54
  %conv15 = zext i8 %8 to i16, !mymd !55
  %conv16 = zext i16 %conv15 to i32, !mymd !56
  %9 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 22), i64 1), align 1, !mymd !57
  %conv17 = zext i8 %9 to i16, !mymd !58
  %conv18 = zext i16 %conv17 to i32, !mymd !59
  %shl19 = shl i32 %conv18, 8, !mymd !60
  %or20 = or i32 %conv16, %shl19, !mymd !61
  %conv21 = sext i32 %or20 to i64, !mymd !62
  %10 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 22), i64 2), align 2, !mymd !63
  %conv22 = zext i8 %10 to i16, !mymd !64
  %conv23 = zext i16 %conv22 to i32, !mymd !65
  %11 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 22), i64 2), i64 1), align 1, !mymd !66
  %conv24 = zext i8 %11 to i16, !mymd !67
  %conv25 = zext i16 %conv24 to i32, !mymd !68
  %shl26 = shl i32 %conv25, 8, !mymd !69
  %or27 = or i32 %conv23, %shl26, !mymd !70
  %conv28 = sext i32 %or27 to i64, !mymd !71
  %shl29 = shl i64 %conv28, 16, !mymd !72
  %or30 = or i64 %conv21, %shl29, !mymd !73
  store i64 %or30, ptr %orig_len, align 8, !mymd !74
  br label %if.end, !mymd !75

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i32, ptr @method, align 4, !mymd !76
  %cmp = icmp eq i32 %12, 8, !mymd !77
  br i1 %cmp, label %if.then32, label %if.else42, !mymd !78

if.then32:                                        ; preds = %if.end
  %call33 = call i32 @inflate(), !mymd !79
  store i32 %call33, ptr %res, align 4, !mymd !80
  %13 = load i32, ptr %res, align 4, !mymd !81
  %cmp34 = icmp eq i32 %13, 3, !mymd !82
  br i1 %cmp34, label %if.then36, label %if.else, !mymd !83

if.then36:                                        ; preds = %if.then32
  call void @error(ptr noundef @.str.62), !mymd !84
  br label %if.end41, !mymd !85

if.else:                                          ; preds = %if.then32
  %14 = load i32, ptr %res, align 4, !mymd !86
  %cmp37 = icmp ne i32 %14, 0, !mymd !87
  br i1 %cmp37, label %if.then39, label %if.end40, !mymd !88

if.then39:                                        ; preds = %if.else
  call void @error(ptr noundef @.str.63), !mymd !89
  br label %if.end40, !mymd !90

if.end40:                                         ; preds = %if.then39, %if.else
  br label %if.end41, !mymd !91

if.end41:                                         ; preds = %if.end40, %if.then36
  br label %if.end120, !mymd !92

if.else42:                                        ; preds = %if.end
  %15 = load i32, ptr @pkzip, align 4, !mymd !93
  %tobool43 = icmp ne i32 %15, 0, !mymd !94
  br i1 %tobool43, label %land.lhs.true44, label %if.else118, !mymd !95

land.lhs.true44:                                  ; preds = %if.else42
  %16 = load i32, ptr @method, align 4, !mymd !96
  %cmp45 = icmp eq i32 %16, 0, !mymd !97
  br i1 %cmp45, label %if.then47, label %if.else118, !mymd !98

if.then47:                                        ; preds = %land.lhs.true44
  %17 = load i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 22), align 2, !mymd !99
  %conv49 = zext i8 %17 to i16, !mymd !100
  %conv50 = zext i16 %conv49 to i32, !mymd !101
  %18 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 22), i64 1), align 1, !mymd !102
  %conv51 = zext i8 %18 to i16, !mymd !103
  %conv52 = zext i16 %conv51 to i32, !mymd !104
  %shl53 = shl i32 %conv52, 8, !mymd !105
  %or54 = or i32 %conv50, %shl53, !mymd !106
  %conv55 = sext i32 %or54 to i64, !mymd !107
  %19 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 22), i64 2), align 2, !mymd !108
  %conv56 = zext i8 %19 to i16, !mymd !109
  %conv57 = zext i16 %conv56 to i32, !mymd !110
  %20 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 22), i64 2), i64 1), align 1, !mymd !111
  %conv58 = zext i8 %20 to i16, !mymd !112
  %conv59 = zext i16 %conv58 to i32, !mymd !113
  %shl60 = shl i32 %conv59, 8, !mymd !114
  %or61 = or i32 %conv57, %shl60, !mymd !115
  %conv62 = sext i32 %or61 to i64, !mymd !116
  %shl63 = shl i64 %conv62, 16, !mymd !117
  %or64 = or i64 %conv55, %shl63, !mymd !118
  store i64 %or64, ptr %n48, align 8, !mymd !119
  %21 = load i64, ptr %n48, align 8, !mymd !120
  %22 = load i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 18), align 2, !mymd !121
  %conv65 = zext i8 %22 to i16, !mymd !122
  %conv66 = zext i16 %conv65 to i32, !mymd !123
  %23 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 18), i64 1), align 1, !mymd !124
  %conv67 = zext i8 %23 to i16, !mymd !125
  %conv68 = zext i16 %conv67 to i32, !mymd !126
  %shl69 = shl i32 %conv68, 8, !mymd !127
  %or70 = or i32 %conv66, %shl69, !mymd !128
  %conv71 = sext i32 %or70 to i64, !mymd !129
  %24 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 18), i64 2), align 2, !mymd !130
  %conv72 = zext i8 %24 to i16, !mymd !131
  %conv73 = zext i16 %conv72 to i32, !mymd !132
  %25 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 18), i64 2), i64 1), align 1, !mymd !133
  %conv74 = zext i8 %25 to i16, !mymd !134
  %conv75 = zext i16 %conv74 to i32, !mymd !135
  %shl76 = shl i32 %conv75, 8, !mymd !136
  %or77 = or i32 %conv73, %shl76, !mymd !137
  %conv78 = sext i32 %or77 to i64, !mymd !138
  %shl79 = shl i64 %conv78, 16, !mymd !139
  %or80 = or i64 %conv71, %shl79, !mymd !140
  %26 = load i32, ptr @decrypt, align 4, !mymd !141
  %tobool81 = icmp ne i32 %26, 0, !mymd !142
  %27 = zext i1 %tobool81 to i64, !mymd !143
  %cond = select i1 %tobool81, i32 12, i32 0, !mymd !144
  %conv82 = sext i32 %cond to i64, !mymd !145
  %sub = sub i64 %or80, %conv82, !mymd !146
  %cmp83 = icmp ne i64 %21, %sub, !mymd !147
  br i1 %cmp83, label %if.then85, label %if.end103, !mymd !148

if.then85:                                        ; preds = %if.then47
  %28 = load ptr, ptr @stderr, align 8, !mymd !149
  %29 = load i64, ptr %n48, align 8, !mymd !150
  %30 = load i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 18), align 2, !mymd !151
  %conv86 = zext i8 %30 to i16, !mymd !152
  %conv87 = zext i16 %conv86 to i32, !mymd !153
  %31 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 18), i64 1), align 1, !mymd !154
  %conv88 = zext i8 %31 to i16, !mymd !155
  %conv89 = zext i16 %conv88 to i32, !mymd !156
  %shl90 = shl i32 %conv89, 8, !mymd !157
  %or91 = or i32 %conv87, %shl90, !mymd !158
  %conv92 = sext i32 %or91 to i64, !mymd !159
  %32 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 18), i64 2), align 2, !mymd !160
  %conv93 = zext i8 %32 to i16, !mymd !161
  %conv94 = zext i16 %conv93 to i32, !mymd !162
  %33 = load i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (i8, ptr @inbuf, i64 18), i64 2), i64 1), align 1, !mymd !163
  %conv95 = zext i8 %33 to i16, !mymd !164
  %conv96 = zext i16 %conv95 to i32, !mymd !165
  %shl97 = shl i32 %conv96, 8, !mymd !166
  %or98 = or i32 %conv94, %shl97, !mymd !167
  %conv99 = sext i32 %or98 to i64, !mymd !168
  %shl100 = shl i64 %conv99, 16, !mymd !169
  %or101 = or i64 %conv92, %shl100, !mymd !170
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.64, i64 noundef %29, i64 noundef %or101) #2, !mymd !171
  call void @error(ptr noundef @.str.65), !mymd !172
  br label %if.end103, !mymd !173

if.end103:                                        ; preds = %if.then85, %if.then47
  br label %while.cond, !mymd !174

while.cond:                                       ; preds = %if.end117, %if.end103
  %34 = load i64, ptr %n48, align 8, !mymd !175
  %dec = add i64 %34, -1, !mymd !176
  store i64 %dec, ptr %n48, align 8, !mymd !177
  %tobool104 = icmp ne i64 %34, 0, !mymd !178
  br i1 %tobool104, label %while.body, label %while.end, !mymd !179

while.body:                                       ; preds = %while.cond
  %35 = load i32, ptr @inptr, align 4, !mymd !180
  %36 = load i32, ptr @insize, align 4, !mymd !181
  %cmp105 = icmp ult i32 %35, %36, !mymd !182
  br i1 %cmp105, label %cond.true, label %cond.false, !mymd !183

cond.true:                                        ; preds = %while.body
  %37 = load i32, ptr @inptr, align 4, !mymd !184
  %inc = add i32 %37, 1, !mymd !185
  store i32 %inc, ptr @inptr, align 4, !mymd !186
  %idxprom = zext i32 %37 to i64, !mymd !187
  %arrayidx = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom, !mymd !188
  %38 = load i8, ptr %arrayidx, align 1, !mymd !189
  %conv107 = zext i8 %38 to i32, !mymd !190
  br label %cond.end, !mymd !191

cond.false:                                       ; preds = %while.body
  %call108 = call i32 @fill_inbuf(i32 noundef 0), !mymd !192
  br label %cond.end, !mymd !193

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond109 = phi i32 [ %conv107, %cond.true ], [ %call108, %cond.false ], !mymd !194
  %conv110 = trunc i32 %cond109 to i8, !mymd !195
  store i8 %conv110, ptr %c, align 1, !mymd !196
  %39 = load i8, ptr %c, align 1, !mymd !197
  %40 = load i32, ptr @outcnt, align 4, !mymd !198
  %inc111 = add i32 %40, 1, !mymd !199
  store i32 %inc111, ptr @outcnt, align 4, !mymd !200
  %idxprom112 = zext i32 %40 to i64, !mymd !201
  %arrayidx113 = getelementptr inbounds nuw [65536 x i8], ptr @window, i64 0, i64 %idxprom112, !mymd !202
  store i8 %39, ptr %arrayidx113, align 1, !mymd !203
  %41 = load i32, ptr @outcnt, align 4, !mymd !204
  %cmp114 = icmp eq i32 %41, 32768, !mymd !205
  br i1 %cmp114, label %if.then116, label %if.end117, !mymd !206

if.then116:                                       ; preds = %cond.end
  call void @flush_window(), !mymd !207
  br label %if.end117, !mymd !208

if.end117:                                        ; preds = %if.then116, %cond.end
  br label %while.cond, !llvm.loop !209, !mymd !211

while.end:                                        ; preds = %while.cond
  call void @flush_window(), !mymd !212
  br label %if.end119, !mymd !213

if.else118:                                       ; preds = %land.lhs.true44, %if.else42
  call void @error(ptr noundef @.str.66), !mymd !214
  br label %if.end119, !mymd !215

if.end119:                                        ; preds = %if.else118, %while.end
  br label %if.end120, !mymd !216

if.end120:                                        ; preds = %if.end119, %if.end41
  %42 = load i32, ptr @pkzip, align 4, !mymd !217
  %tobool121 = icmp ne i32 %42, 0, !mymd !218
  br i1 %tobool121, label %if.else192, label %if.then122, !mymd !219

if.then122:                                       ; preds = %if.end120
  store i32 0, ptr %n, align 4, !mymd !220
  br label %for.cond, !mymd !221

for.cond:                                         ; preds = %for.inc, %if.then122
  %43 = load i32, ptr %n, align 4, !mymd !222
  %cmp123 = icmp slt i32 %43, 8, !mymd !223
  br i1 %cmp123, label %for.body, label %for.end, !mymd !224

for.body:                                         ; preds = %for.cond
  %44 = load i32, ptr @inptr, align 4, !mymd !225
  %45 = load i32, ptr @insize, align 4, !mymd !226
  %cmp125 = icmp ult i32 %44, %45, !mymd !227
  br i1 %cmp125, label %cond.true127, label %cond.false132, !mymd !228

cond.true127:                                     ; preds = %for.body
  %46 = load i32, ptr @inptr, align 4, !mymd !229
  %inc128 = add i32 %46, 1, !mymd !230
  store i32 %inc128, ptr @inptr, align 4, !mymd !231
  %idxprom129 = zext i32 %46 to i64, !mymd !232
  %arrayidx130 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom129, !mymd !233
  %47 = load i8, ptr %arrayidx130, align 1, !mymd !234
  %conv131 = zext i8 %47 to i32, !mymd !235
  br label %cond.end134, !mymd !236

cond.false132:                                    ; preds = %for.body
  %call133 = call i32 @fill_inbuf(i32 noundef 0), !mymd !237
  br label %cond.end134, !mymd !238

cond.end134:                                      ; preds = %cond.false132, %cond.true127
  %cond135 = phi i32 [ %conv131, %cond.true127 ], [ %call133, %cond.false132 ], !mymd !239
  %conv136 = trunc i32 %cond135 to i8, !mymd !240
  %48 = load i32, ptr %n, align 4, !mymd !241
  %idxprom137 = sext i32 %48 to i64, !mymd !242
  %arrayidx138 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom137, !mymd !243
  store i8 %conv136, ptr %arrayidx138, align 1, !mymd !244
  br label %for.inc, !mymd !245

for.inc:                                          ; preds = %cond.end134
  %49 = load i32, ptr %n, align 4, !mymd !246
  %inc139 = add nsw i32 %49, 1, !mymd !247
  store i32 %inc139, ptr %n, align 4, !mymd !248
  br label %for.cond, !llvm.loop !249, !mymd !250

for.end:                                          ; preds = %for.cond
  %arrayidx140 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !251
  %50 = load i8, ptr %arrayidx140, align 16, !mymd !252
  %conv141 = zext i8 %50 to i16, !mymd !253
  %conv142 = zext i16 %conv141 to i32, !mymd !254
  %arrayidx143 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 1, !mymd !255
  %51 = load i8, ptr %arrayidx143, align 1, !mymd !256
  %conv144 = zext i8 %51 to i16, !mymd !257
  %conv145 = zext i16 %conv144 to i32, !mymd !258
  %shl146 = shl i32 %conv145, 8, !mymd !259
  %or147 = or i32 %conv142, %shl146, !mymd !260
  %conv148 = sext i32 %or147 to i64, !mymd !261
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !262
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 2, !mymd !263
  %arrayidx149 = getelementptr inbounds i8, ptr %add.ptr, i64 0, !mymd !264
  %52 = load i8, ptr %arrayidx149, align 2, !mymd !265
  %conv150 = zext i8 %52 to i16, !mymd !266
  %conv151 = zext i16 %conv150 to i32, !mymd !267
  %arraydecay152 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !268
  %add.ptr153 = getelementptr inbounds i8, ptr %arraydecay152, i64 2, !mymd !269
  %arrayidx154 = getelementptr inbounds i8, ptr %add.ptr153, i64 1, !mymd !270
  %53 = load i8, ptr %arrayidx154, align 1, !mymd !271
  %conv155 = zext i8 %53 to i16, !mymd !272
  %conv156 = zext i16 %conv155 to i32, !mymd !273
  %shl157 = shl i32 %conv156, 8, !mymd !274
  %or158 = or i32 %conv151, %shl157, !mymd !275
  %conv159 = sext i32 %or158 to i64, !mymd !276
  %shl160 = shl i64 %conv159, 16, !mymd !277
  %or161 = or i64 %conv148, %shl160, !mymd !278
  store i64 %or161, ptr %orig_crc, align 8, !mymd !279
  %arraydecay162 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !280
  %add.ptr163 = getelementptr inbounds i8, ptr %arraydecay162, i64 4, !mymd !281
  %arrayidx164 = getelementptr inbounds i8, ptr %add.ptr163, i64 0, !mymd !282
  %54 = load i8, ptr %arrayidx164, align 4, !mymd !283
  %conv165 = zext i8 %54 to i16, !mymd !284
  %conv166 = zext i16 %conv165 to i32, !mymd !285
  %arraydecay167 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !286
  %add.ptr168 = getelementptr inbounds i8, ptr %arraydecay167, i64 4, !mymd !287
  %arrayidx169 = getelementptr inbounds i8, ptr %add.ptr168, i64 1, !mymd !288
  %55 = load i8, ptr %arrayidx169, align 1, !mymd !289
  %conv170 = zext i8 %55 to i16, !mymd !290
  %conv171 = zext i16 %conv170 to i32, !mymd !291
  %shl172 = shl i32 %conv171, 8, !mymd !292
  %or173 = or i32 %conv166, %shl172, !mymd !293
  %conv174 = sext i32 %or173 to i64, !mymd !294
  %arraydecay175 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !295
  %add.ptr176 = getelementptr inbounds i8, ptr %arraydecay175, i64 4, !mymd !296
  %add.ptr177 = getelementptr inbounds i8, ptr %add.ptr176, i64 2, !mymd !297
  %arrayidx178 = getelementptr inbounds i8, ptr %add.ptr177, i64 0, !mymd !298
  %56 = load i8, ptr %arrayidx178, align 2, !mymd !299
  %conv179 = zext i8 %56 to i16, !mymd !300
  %conv180 = zext i16 %conv179 to i32, !mymd !301
  %arraydecay181 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !302
  %add.ptr182 = getelementptr inbounds i8, ptr %arraydecay181, i64 4, !mymd !303
  %add.ptr183 = getelementptr inbounds i8, ptr %add.ptr182, i64 2, !mymd !304
  %arrayidx184 = getelementptr inbounds i8, ptr %add.ptr183, i64 1, !mymd !305
  %57 = load i8, ptr %arrayidx184, align 1, !mymd !306
  %conv185 = zext i8 %57 to i16, !mymd !307
  %conv186 = zext i16 %conv185 to i32, !mymd !308
  %shl187 = shl i32 %conv186, 8, !mymd !309
  %or188 = or i32 %conv180, %shl187, !mymd !310
  %conv189 = sext i32 %or188 to i64, !mymd !311
  %shl190 = shl i64 %conv189, 16, !mymd !312
  %or191 = or i64 %conv174, %shl190, !mymd !313
  store i64 %or191, ptr %orig_len, align 8, !mymd !314
  br label %if.end277, !mymd !315

if.else192:                                       ; preds = %if.end120
  %58 = load i32, ptr @ext_header, align 4, !mymd !316
  %tobool193 = icmp ne i32 %58, 0, !mymd !317
  br i1 %tobool193, label %if.then194, label %if.end276, !mymd !318

if.then194:                                       ; preds = %if.else192
  store i32 0, ptr %n, align 4, !mymd !319
  br label %for.cond195, !mymd !320

for.cond195:                                      ; preds = %for.inc213, %if.then194
  %59 = load i32, ptr %n, align 4, !mymd !321
  %cmp196 = icmp slt i32 %59, 16, !mymd !322
  br i1 %cmp196, label %for.body198, label %for.end215, !mymd !323

for.body198:                                      ; preds = %for.cond195
  %60 = load i32, ptr @inptr, align 4, !mymd !324
  %61 = load i32, ptr @insize, align 4, !mymd !325
  %cmp199 = icmp ult i32 %60, %61, !mymd !326
  br i1 %cmp199, label %cond.true201, label %cond.false206, !mymd !327

cond.true201:                                     ; preds = %for.body198
  %62 = load i32, ptr @inptr, align 4, !mymd !328
  %inc202 = add i32 %62, 1, !mymd !329
  store i32 %inc202, ptr @inptr, align 4, !mymd !330
  %idxprom203 = zext i32 %62 to i64, !mymd !331
  %arrayidx204 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom203, !mymd !332
  %63 = load i8, ptr %arrayidx204, align 1, !mymd !333
  %conv205 = zext i8 %63 to i32, !mymd !334
  br label %cond.end208, !mymd !335

cond.false206:                                    ; preds = %for.body198
  %call207 = call i32 @fill_inbuf(i32 noundef 0), !mymd !336
  br label %cond.end208, !mymd !337

cond.end208:                                      ; preds = %cond.false206, %cond.true201
  %cond209 = phi i32 [ %conv205, %cond.true201 ], [ %call207, %cond.false206 ], !mymd !338
  %conv210 = trunc i32 %cond209 to i8, !mymd !339
  %64 = load i32, ptr %n, align 4, !mymd !340
  %idxprom211 = sext i32 %64 to i64, !mymd !341
  %arrayidx212 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 %idxprom211, !mymd !342
  store i8 %conv210, ptr %arrayidx212, align 1, !mymd !343
  br label %for.inc213, !mymd !344

for.inc213:                                       ; preds = %cond.end208
  %65 = load i32, ptr %n, align 4, !mymd !345
  %inc214 = add nsw i32 %65, 1, !mymd !346
  store i32 %inc214, ptr %n, align 4, !mymd !347
  br label %for.cond195, !llvm.loop !348, !mymd !349

for.end215:                                       ; preds = %for.cond195
  %arraydecay216 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !350
  %add.ptr217 = getelementptr inbounds i8, ptr %arraydecay216, i64 4, !mymd !351
  %arrayidx218 = getelementptr inbounds i8, ptr %add.ptr217, i64 0, !mymd !352
  %66 = load i8, ptr %arrayidx218, align 4, !mymd !353
  %conv219 = zext i8 %66 to i16, !mymd !354
  %conv220 = zext i16 %conv219 to i32, !mymd !355
  %arraydecay221 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !356
  %add.ptr222 = getelementptr inbounds i8, ptr %arraydecay221, i64 4, !mymd !357
  %arrayidx223 = getelementptr inbounds i8, ptr %add.ptr222, i64 1, !mymd !358
  %67 = load i8, ptr %arrayidx223, align 1, !mymd !359
  %conv224 = zext i8 %67 to i16, !mymd !360
  %conv225 = zext i16 %conv224 to i32, !mymd !361
  %shl226 = shl i32 %conv225, 8, !mymd !362
  %or227 = or i32 %conv220, %shl226, !mymd !363
  %conv228 = sext i32 %or227 to i64, !mymd !364
  %arraydecay229 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !365
  %add.ptr230 = getelementptr inbounds i8, ptr %arraydecay229, i64 4, !mymd !366
  %add.ptr231 = getelementptr inbounds i8, ptr %add.ptr230, i64 2, !mymd !367
  %arrayidx232 = getelementptr inbounds i8, ptr %add.ptr231, i64 0, !mymd !368
  %68 = load i8, ptr %arrayidx232, align 2, !mymd !369
  %conv233 = zext i8 %68 to i16, !mymd !370
  %conv234 = zext i16 %conv233 to i32, !mymd !371
  %arraydecay235 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !372
  %add.ptr236 = getelementptr inbounds i8, ptr %arraydecay235, i64 4, !mymd !373
  %add.ptr237 = getelementptr inbounds i8, ptr %add.ptr236, i64 2, !mymd !374
  %arrayidx238 = getelementptr inbounds i8, ptr %add.ptr237, i64 1, !mymd !375
  %69 = load i8, ptr %arrayidx238, align 1, !mymd !376
  %conv239 = zext i8 %69 to i16, !mymd !377
  %conv240 = zext i16 %conv239 to i32, !mymd !378
  %shl241 = shl i32 %conv240, 8, !mymd !379
  %or242 = or i32 %conv234, %shl241, !mymd !380
  %conv243 = sext i32 %or242 to i64, !mymd !381
  %shl244 = shl i64 %conv243, 16, !mymd !382
  %or245 = or i64 %conv228, %shl244, !mymd !383
  store i64 %or245, ptr %orig_crc, align 8, !mymd !384
  %arraydecay246 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !385
  %add.ptr247 = getelementptr inbounds i8, ptr %arraydecay246, i64 12, !mymd !386
  %arrayidx248 = getelementptr inbounds i8, ptr %add.ptr247, i64 0, !mymd !387
  %70 = load i8, ptr %arrayidx248, align 4, !mymd !388
  %conv249 = zext i8 %70 to i16, !mymd !389
  %conv250 = zext i16 %conv249 to i32, !mymd !390
  %arraydecay251 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !391
  %add.ptr252 = getelementptr inbounds i8, ptr %arraydecay251, i64 12, !mymd !392
  %arrayidx253 = getelementptr inbounds i8, ptr %add.ptr252, i64 1, !mymd !393
  %71 = load i8, ptr %arrayidx253, align 1, !mymd !394
  %conv254 = zext i8 %71 to i16, !mymd !395
  %conv255 = zext i16 %conv254 to i32, !mymd !396
  %shl256 = shl i32 %conv255, 8, !mymd !397
  %or257 = or i32 %conv250, %shl256, !mymd !398
  %conv258 = sext i32 %or257 to i64, !mymd !399
  %arraydecay259 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !400
  %add.ptr260 = getelementptr inbounds i8, ptr %arraydecay259, i64 12, !mymd !401
  %add.ptr261 = getelementptr inbounds i8, ptr %add.ptr260, i64 2, !mymd !402
  %arrayidx262 = getelementptr inbounds i8, ptr %add.ptr261, i64 0, !mymd !403
  %72 = load i8, ptr %arrayidx262, align 2, !mymd !404
  %conv263 = zext i8 %72 to i16, !mymd !405
  %conv264 = zext i16 %conv263 to i32, !mymd !406
  %arraydecay265 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !mymd !407
  %add.ptr266 = getelementptr inbounds i8, ptr %arraydecay265, i64 12, !mymd !408
  %add.ptr267 = getelementptr inbounds i8, ptr %add.ptr266, i64 2, !mymd !409
  %arrayidx268 = getelementptr inbounds i8, ptr %add.ptr267, i64 1, !mymd !410
  %73 = load i8, ptr %arrayidx268, align 1, !mymd !411
  %conv269 = zext i8 %73 to i16, !mymd !412
  %conv270 = zext i16 %conv269 to i32, !mymd !413
  %shl271 = shl i32 %conv270, 8, !mymd !414
  %or272 = or i32 %conv264, %shl271, !mymd !415
  %conv273 = sext i32 %or272 to i64, !mymd !416
  %shl274 = shl i64 %conv273, 16, !mymd !417
  %or275 = or i64 %conv258, %shl274, !mymd !418
  store i64 %or275, ptr %orig_len, align 8, !mymd !419
  br label %if.end276, !mymd !420

if.end276:                                        ; preds = %for.end215, %if.else192
  br label %if.end277, !mymd !421

if.end277:                                        ; preds = %if.end276, %for.end
  %74 = load i64, ptr %orig_crc, align 8, !mymd !422
  %call278 = call i64 @updcrc(ptr noundef @outbuf, i32 noundef 0), !mymd !423
  %cmp279 = icmp ne i64 %74, %call278, !mymd !424
  br i1 %cmp279, label %if.then281, label %if.end283, !mymd !425

if.then281:                                       ; preds = %if.end277
  %75 = load ptr, ptr @stderr, align 8, !mymd !426
  %76 = load ptr, ptr @progname, align 8, !mymd !427
  %call282 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.67, ptr noundef %76, ptr noundef @ifname) #2, !mymd !428
  store i32 1, ptr %err, align 4, !mymd !429
  br label %if.end283, !mymd !430

if.end283:                                        ; preds = %if.then281, %if.end277
  %77 = load i64, ptr %orig_len, align 8, !mymd !431
  %78 = load i64, ptr @bytes_out, align 8, !mymd !432
  %and = and i64 %78, 4294967295, !mymd !433
  %cmp284 = icmp ne i64 %77, %and, !mymd !434
  br i1 %cmp284, label %if.then286, label %if.end288, !mymd !435

if.then286:                                       ; preds = %if.end283
  %79 = load ptr, ptr @stderr, align 8, !mymd !436
  %80 = load ptr, ptr @progname, align 8, !mymd !437
  %call287 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef @.str.68, ptr noundef %80, ptr noundef @ifname) #2, !mymd !438
  store i32 1, ptr %err, align 4, !mymd !439
  br label %if.end288, !mymd !440

if.end288:                                        ; preds = %if.then286, %if.end283
  %81 = load i32, ptr @pkzip, align 4, !mymd !441
  %tobool289 = icmp ne i32 %81, 0, !mymd !442
  br i1 %tobool289, label %land.lhs.true290, label %if.end339, !mymd !443

land.lhs.true290:                                 ; preds = %if.end288
  %82 = load i32, ptr @inptr, align 4, !mymd !444
  %add = add i32 %82, 4, !mymd !445
  %83 = load i32, ptr @insize, align 4, !mymd !446
  %cmp291 = icmp ult i32 %add, %83, !mymd !447
  br i1 %cmp291, label %land.lhs.true293, label %if.end339, !mymd !448

land.lhs.true293:                                 ; preds = %land.lhs.true290
  %84 = load i32, ptr @inptr, align 4, !mymd !449
  %idx.ext = zext i32 %84 to i64, !mymd !450
  %add.ptr294 = getelementptr inbounds nuw i8, ptr @inbuf, i64 %idx.ext, !mymd !451
  %arrayidx295 = getelementptr inbounds i8, ptr %add.ptr294, i64 0, !mymd !452
  %85 = load i8, ptr %arrayidx295, align 1, !mymd !453
  %conv296 = zext i8 %85 to i16, !mymd !454
  %conv297 = zext i16 %conv296 to i32, !mymd !455
  %86 = load i32, ptr @inptr, align 4, !mymd !456
  %idx.ext298 = zext i32 %86 to i64, !mymd !457
  %add.ptr299 = getelementptr inbounds nuw i8, ptr @inbuf, i64 %idx.ext298, !mymd !458
  %arrayidx300 = getelementptr inbounds i8, ptr %add.ptr299, i64 1, !mymd !459
  %87 = load i8, ptr %arrayidx300, align 1, !mymd !460
  %conv301 = zext i8 %87 to i16, !mymd !461
  %conv302 = zext i16 %conv301 to i32, !mymd !462
  %shl303 = shl i32 %conv302, 8, !mymd !463
  %or304 = or i32 %conv297, %shl303, !mymd !464
  %conv305 = sext i32 %or304 to i64, !mymd !465
  %88 = load i32, ptr @inptr, align 4, !mymd !466
  %idx.ext306 = zext i32 %88 to i64, !mymd !467
  %add.ptr307 = getelementptr inbounds nuw i8, ptr @inbuf, i64 %idx.ext306, !mymd !468
  %add.ptr308 = getelementptr inbounds i8, ptr %add.ptr307, i64 2, !mymd !469
  %arrayidx309 = getelementptr inbounds i8, ptr %add.ptr308, i64 0, !mymd !470
  %89 = load i8, ptr %arrayidx309, align 1, !mymd !471
  %conv310 = zext i8 %89 to i16, !mymd !472
  %conv311 = zext i16 %conv310 to i32, !mymd !473
  %90 = load i32, ptr @inptr, align 4, !mymd !474
  %idx.ext312 = zext i32 %90 to i64, !mymd !475
  %add.ptr313 = getelementptr inbounds nuw i8, ptr @inbuf, i64 %idx.ext312, !mymd !476
  %add.ptr314 = getelementptr inbounds i8, ptr %add.ptr313, i64 2, !mymd !477
  %arrayidx315 = getelementptr inbounds i8, ptr %add.ptr314, i64 1, !mymd !478
  %91 = load i8, ptr %arrayidx315, align 1, !mymd !479
  %conv316 = zext i8 %91 to i16, !mymd !480
  %conv317 = zext i16 %conv316 to i32, !mymd !481
  %shl318 = shl i32 %conv317, 8, !mymd !482
  %or319 = or i32 %conv311, %shl318, !mymd !483
  %conv320 = sext i32 %or319 to i64, !mymd !484
  %shl321 = shl i64 %conv320, 16, !mymd !485
  %or322 = or i64 %conv305, %shl321, !mymd !486
  %cmp323 = icmp eq i64 %or322, 67324752, !mymd !487
  br i1 %cmp323, label %if.then325, label %if.end339, !mymd !488

if.then325:                                       ; preds = %land.lhs.true293
  %92 = load i32, ptr @to_stdout, align 4, !mymd !489
  %tobool326 = icmp ne i32 %92, 0, !mymd !490
  br i1 %tobool326, label %if.then327, label %if.else336, !mymd !491

if.then327:                                       ; preds = %if.then325
  %93 = load i32, ptr @quiet, align 4, !mymd !492
  %tobool328 = icmp ne i32 %93, 0, !mymd !493
  br i1 %tobool328, label %if.end331, label %if.then329, !mymd !494

if.then329:                                       ; preds = %if.then327
  %94 = load ptr, ptr @stderr, align 8, !mymd !495
  %95 = load ptr, ptr @progname, align 8, !mymd !496
  %call330 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef @.str.69, ptr noundef %95, ptr noundef @ifname) #2, !mymd !497
  br label %if.end331, !mymd !498

if.end331:                                        ; preds = %if.then329, %if.then327
  %96 = load i32, ptr @exit_code, align 4, !mymd !499
  %cmp332 = icmp eq i32 %96, 0, !mymd !500
  br i1 %cmp332, label %if.then334, label %if.end335, !mymd !501

if.then334:                                       ; preds = %if.end331
  store i32 2, ptr @exit_code, align 4, !mymd !502
  br label %if.end335, !mymd !503

if.end335:                                        ; preds = %if.then334, %if.end331
  br label %if.end338, !mymd !504

if.else336:                                       ; preds = %if.then325
  %97 = load ptr, ptr @stderr, align 8, !mymd !505
  %98 = load ptr, ptr @progname, align 8, !mymd !506
  %call337 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.70, ptr noundef %98, ptr noundef @ifname) #2, !mymd !507
  store i32 1, ptr %err, align 4, !mymd !508
  br label %if.end338, !mymd !509

if.end338:                                        ; preds = %if.else336, %if.end335
  br label %if.end339, !mymd !510

if.end339:                                        ; preds = %if.end338, %land.lhs.true293, %land.lhs.true290, %if.end288
  store i32 0, ptr @pkzip, align 4, !mymd !511
  store i32 0, ptr @ext_header, align 4, !mymd !512
  %99 = load i32, ptr %err, align 4, !mymd !513
  %cmp340 = icmp eq i32 %99, 0, !mymd !514
  br i1 %cmp340, label %if.then342, label %if.end343, !mymd !515

if.then342:                                       ; preds = %if.end339
  store i32 0, ptr %retval, align 4, !mymd !516
  br label %return, !mymd !517

if.end343:                                        ; preds = %if.end339
  store i32 1, ptr @exit_code, align 4, !mymd !518
  %100 = load i32, ptr @test, align 4, !mymd !519
  %tobool344 = icmp ne i32 %100, 0, !mymd !520
  br i1 %tobool344, label %if.end346, label %if.then345, !mymd !521

if.then345:                                       ; preds = %if.end343
  call void @abort_gzip(), !mymd !522
  br label %if.end346, !mymd !523

if.end346:                                        ; preds = %if.then345, %if.end343
  %101 = load i32, ptr %err, align 4, !mymd !524
  store i32 %101, ptr %retval, align 4, !mymd !525
  br label %return, !mymd !526

return:                                           ; preds = %if.end346, %if.then342
  %102 = load i32, ptr %retval, align 4, !mymd !527
  ret i32 %102, !mymd !528
}

; Function Attrs: noinline nounwind uwtable
declare dso_local i64 @updcrc(ptr noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"9766"}
!7 = !{!"9767"}
!8 = !{!"9768"}
!9 = !{!"9769"}
!10 = !{!"9770"}
!11 = !{!"9771"}
!12 = !{!"9772"}
!13 = !{!"9773"}
!14 = !{!"9774"}
!15 = !{!"9775"}
!16 = !{!"9776"}
!17 = !{!"9777"}
!18 = !{!"9778"}
!19 = !{!"9779"}
!20 = !{!"9780"}
!21 = !{!"9781"}
!22 = !{!"9782"}
!23 = !{!"9783"}
!24 = !{!"9784"}
!25 = !{!"9785"}
!26 = !{!"9786"}
!27 = !{!"9787"}
!28 = !{!"9788"}
!29 = !{!"9789"}
!30 = !{!"9790"}
!31 = !{!"9791"}
!32 = !{!"9792"}
!33 = !{!"9793"}
!34 = !{!"9794"}
!35 = !{!"9795"}
!36 = !{!"9796"}
!37 = !{!"9797"}
!38 = !{!"9798"}
!39 = !{!"9799"}
!40 = !{!"9800"}
!41 = !{!"9801"}
!42 = !{!"9802"}
!43 = !{!"9803"}
!44 = !{!"9804"}
!45 = !{!"9805"}
!46 = !{!"9806"}
!47 = !{!"9807"}
!48 = !{!"9808"}
!49 = !{!"9809"}
!50 = !{!"9810"}
!51 = !{!"9811"}
!52 = !{!"9812"}
!53 = !{!"9813"}
!54 = !{!"9814"}
!55 = !{!"9815"}
!56 = !{!"9816"}
!57 = !{!"9817"}
!58 = !{!"9818"}
!59 = !{!"9819"}
!60 = !{!"9820"}
!61 = !{!"9821"}
!62 = !{!"9822"}
!63 = !{!"9823"}
!64 = !{!"9824"}
!65 = !{!"9825"}
!66 = !{!"9826"}
!67 = !{!"9827"}
!68 = !{!"9828"}
!69 = !{!"9829"}
!70 = !{!"9830"}
!71 = !{!"9831"}
!72 = !{!"9832"}
!73 = !{!"9833"}
!74 = !{!"9834"}
!75 = !{!"9835"}
!76 = !{!"9836"}
!77 = !{!"9837"}
!78 = !{!"9838"}
!79 = !{!"9839"}
!80 = !{!"9840"}
!81 = !{!"9841"}
!82 = !{!"9842"}
!83 = !{!"9843"}
!84 = !{!"9844"}
!85 = !{!"9845"}
!86 = !{!"9846"}
!87 = !{!"9847"}
!88 = !{!"9848"}
!89 = !{!"9849"}
!90 = !{!"9850"}
!91 = !{!"9851"}
!92 = !{!"9852"}
!93 = !{!"9853"}
!94 = !{!"9854"}
!95 = !{!"9855"}
!96 = !{!"9856"}
!97 = !{!"9857"}
!98 = !{!"9858"}
!99 = !{!"9859"}
!100 = !{!"9860"}
!101 = !{!"9861"}
!102 = !{!"9862"}
!103 = !{!"9863"}
!104 = !{!"9864"}
!105 = !{!"9865"}
!106 = !{!"9866"}
!107 = !{!"9867"}
!108 = !{!"9868"}
!109 = !{!"9869"}
!110 = !{!"9870"}
!111 = !{!"9871"}
!112 = !{!"9872"}
!113 = !{!"9873"}
!114 = !{!"9874"}
!115 = !{!"9875"}
!116 = !{!"9876"}
!117 = !{!"9877"}
!118 = !{!"9878"}
!119 = !{!"9879"}
!120 = !{!"9880"}
!121 = !{!"9881"}
!122 = !{!"9882"}
!123 = !{!"9883"}
!124 = !{!"9884"}
!125 = !{!"9885"}
!126 = !{!"9886"}
!127 = !{!"9887"}
!128 = !{!"9888"}
!129 = !{!"9889"}
!130 = !{!"9890"}
!131 = !{!"9891"}
!132 = !{!"9892"}
!133 = !{!"9893"}
!134 = !{!"9894"}
!135 = !{!"9895"}
!136 = !{!"9896"}
!137 = !{!"9897"}
!138 = !{!"9898"}
!139 = !{!"9899"}
!140 = !{!"9900"}
!141 = !{!"9901"}
!142 = !{!"9902"}
!143 = !{!"9903"}
!144 = !{!"9904"}
!145 = !{!"9905"}
!146 = !{!"9906"}
!147 = !{!"9907"}
!148 = !{!"9908"}
!149 = !{!"9909"}
!150 = !{!"9910"}
!151 = !{!"9911"}
!152 = !{!"9912"}
!153 = !{!"9913"}
!154 = !{!"9914"}
!155 = !{!"9915"}
!156 = !{!"9916"}
!157 = !{!"9917"}
!158 = !{!"9918"}
!159 = !{!"9919"}
!160 = !{!"9920"}
!161 = !{!"9921"}
!162 = !{!"9922"}
!163 = !{!"9923"}
!164 = !{!"9924"}
!165 = !{!"9925"}
!166 = !{!"9926"}
!167 = !{!"9927"}
!168 = !{!"9928"}
!169 = !{!"9929"}
!170 = !{!"9930"}
!171 = !{!"9931"}
!172 = !{!"9932"}
!173 = !{!"9933"}
!174 = !{!"9934"}
!175 = !{!"9935"}
!176 = !{!"9936"}
!177 = !{!"9937"}
!178 = !{!"9938"}
!179 = !{!"9939"}
!180 = !{!"9940"}
!181 = !{!"9941"}
!182 = !{!"9942"}
!183 = !{!"9943"}
!184 = !{!"9944"}
!185 = !{!"9945"}
!186 = !{!"9946"}
!187 = !{!"9947"}
!188 = !{!"9948"}
!189 = !{!"9949"}
!190 = !{!"9950"}
!191 = !{!"9951"}
!192 = !{!"9952"}
!193 = !{!"9953"}
!194 = !{!"9954"}
!195 = !{!"9955"}
!196 = !{!"9956"}
!197 = !{!"9957"}
!198 = !{!"9958"}
!199 = !{!"9959"}
!200 = !{!"9960"}
!201 = !{!"9961"}
!202 = !{!"9962"}
!203 = !{!"9963"}
!204 = !{!"9964"}
!205 = !{!"9965"}
!206 = !{!"9966"}
!207 = !{!"9967"}
!208 = !{!"9968"}
!209 = distinct !{!209, !210}
!210 = !{!"llvm.loop.mustprogress"}
!211 = !{!"9969"}
!212 = !{!"9970"}
!213 = !{!"9971"}
!214 = !{!"9972"}
!215 = !{!"9973"}
!216 = !{!"9974"}
!217 = !{!"9975"}
!218 = !{!"9976"}
!219 = !{!"9977"}
!220 = !{!"9978"}
!221 = !{!"9979"}
!222 = !{!"9980"}
!223 = !{!"9981"}
!224 = !{!"9982"}
!225 = !{!"9983"}
!226 = !{!"9984"}
!227 = !{!"9985"}
!228 = !{!"9986"}
!229 = !{!"9987"}
!230 = !{!"9988"}
!231 = !{!"9989"}
!232 = !{!"9990"}
!233 = !{!"9991"}
!234 = !{!"9992"}
!235 = !{!"9993"}
!236 = !{!"9994"}
!237 = !{!"9995"}
!238 = !{!"9996"}
!239 = !{!"9997"}
!240 = !{!"9998"}
!241 = !{!"9999"}
!242 = !{!"10000"}
!243 = !{!"10001"}
!244 = !{!"10002"}
!245 = !{!"10003"}
!246 = !{!"10004"}
!247 = !{!"10005"}
!248 = !{!"10006"}
!249 = distinct !{!249, !210}
!250 = !{!"10007"}
!251 = !{!"10008"}
!252 = !{!"10009"}
!253 = !{!"10010"}
!254 = !{!"10011"}
!255 = !{!"10012"}
!256 = !{!"10013"}
!257 = !{!"10014"}
!258 = !{!"10015"}
!259 = !{!"10016"}
!260 = !{!"10017"}
!261 = !{!"10018"}
!262 = !{!"10019"}
!263 = !{!"10020"}
!264 = !{!"10021"}
!265 = !{!"10022"}
!266 = !{!"10023"}
!267 = !{!"10024"}
!268 = !{!"10025"}
!269 = !{!"10026"}
!270 = !{!"10027"}
!271 = !{!"10028"}
!272 = !{!"10029"}
!273 = !{!"10030"}
!274 = !{!"10031"}
!275 = !{!"10032"}
!276 = !{!"10033"}
!277 = !{!"10034"}
!278 = !{!"10035"}
!279 = !{!"10036"}
!280 = !{!"10037"}
!281 = !{!"10038"}
!282 = !{!"10039"}
!283 = !{!"10040"}
!284 = !{!"10041"}
!285 = !{!"10042"}
!286 = !{!"10043"}
!287 = !{!"10044"}
!288 = !{!"10045"}
!289 = !{!"10046"}
!290 = !{!"10047"}
!291 = !{!"10048"}
!292 = !{!"10049"}
!293 = !{!"10050"}
!294 = !{!"10051"}
!295 = !{!"10052"}
!296 = !{!"10053"}
!297 = !{!"10054"}
!298 = !{!"10055"}
!299 = !{!"10056"}
!300 = !{!"10057"}
!301 = !{!"10058"}
!302 = !{!"10059"}
!303 = !{!"10060"}
!304 = !{!"10061"}
!305 = !{!"10062"}
!306 = !{!"10063"}
!307 = !{!"10064"}
!308 = !{!"10065"}
!309 = !{!"10066"}
!310 = !{!"10067"}
!311 = !{!"10068"}
!312 = !{!"10069"}
!313 = !{!"10070"}
!314 = !{!"10071"}
!315 = !{!"10072"}
!316 = !{!"10073"}
!317 = !{!"10074"}
!318 = !{!"10075"}
!319 = !{!"10076"}
!320 = !{!"10077"}
!321 = !{!"10078"}
!322 = !{!"10079"}
!323 = !{!"10080"}
!324 = !{!"10081"}
!325 = !{!"10082"}
!326 = !{!"10083"}
!327 = !{!"10084"}
!328 = !{!"10085"}
!329 = !{!"10086"}
!330 = !{!"10087"}
!331 = !{!"10088"}
!332 = !{!"10089"}
!333 = !{!"10090"}
!334 = !{!"10091"}
!335 = !{!"10092"}
!336 = !{!"10093"}
!337 = !{!"10094"}
!338 = !{!"10095"}
!339 = !{!"10096"}
!340 = !{!"10097"}
!341 = !{!"10098"}
!342 = !{!"10099"}
!343 = !{!"10100"}
!344 = !{!"10101"}
!345 = !{!"10102"}
!346 = !{!"10103"}
!347 = !{!"10104"}
!348 = distinct !{!348, !210}
!349 = !{!"10105"}
!350 = !{!"10106"}
!351 = !{!"10107"}
!352 = !{!"10108"}
!353 = !{!"10109"}
!354 = !{!"10110"}
!355 = !{!"10111"}
!356 = !{!"10112"}
!357 = !{!"10113"}
!358 = !{!"10114"}
!359 = !{!"10115"}
!360 = !{!"10116"}
!361 = !{!"10117"}
!362 = !{!"10118"}
!363 = !{!"10119"}
!364 = !{!"10120"}
!365 = !{!"10121"}
!366 = !{!"10122"}
!367 = !{!"10123"}
!368 = !{!"10124"}
!369 = !{!"10125"}
!370 = !{!"10126"}
!371 = !{!"10127"}
!372 = !{!"10128"}
!373 = !{!"10129"}
!374 = !{!"10130"}
!375 = !{!"10131"}
!376 = !{!"10132"}
!377 = !{!"10133"}
!378 = !{!"10134"}
!379 = !{!"10135"}
!380 = !{!"10136"}
!381 = !{!"10137"}
!382 = !{!"10138"}
!383 = !{!"10139"}
!384 = !{!"10140"}
!385 = !{!"10141"}
!386 = !{!"10142"}
!387 = !{!"10143"}
!388 = !{!"10144"}
!389 = !{!"10145"}
!390 = !{!"10146"}
!391 = !{!"10147"}
!392 = !{!"10148"}
!393 = !{!"10149"}
!394 = !{!"10150"}
!395 = !{!"10151"}
!396 = !{!"10152"}
!397 = !{!"10153"}
!398 = !{!"10154"}
!399 = !{!"10155"}
!400 = !{!"10156"}
!401 = !{!"10157"}
!402 = !{!"10158"}
!403 = !{!"10159"}
!404 = !{!"10160"}
!405 = !{!"10161"}
!406 = !{!"10162"}
!407 = !{!"10163"}
!408 = !{!"10164"}
!409 = !{!"10165"}
!410 = !{!"10166"}
!411 = !{!"10167"}
!412 = !{!"10168"}
!413 = !{!"10169"}
!414 = !{!"10170"}
!415 = !{!"10171"}
!416 = !{!"10172"}
!417 = !{!"10173"}
!418 = !{!"10174"}
!419 = !{!"10175"}
!420 = !{!"10176"}
!421 = !{!"10177"}
!422 = !{!"10178"}
!423 = !{!"10179"}
!424 = !{!"10180"}
!425 = !{!"10181"}
!426 = !{!"10182"}
!427 = !{!"10183"}
!428 = !{!"10184"}
!429 = !{!"10185"}
!430 = !{!"10186"}
!431 = !{!"10187"}
!432 = !{!"10188"}
!433 = !{!"10189"}
!434 = !{!"10190"}
!435 = !{!"10191"}
!436 = !{!"10192"}
!437 = !{!"10193"}
!438 = !{!"10194"}
!439 = !{!"10195"}
!440 = !{!"10196"}
!441 = !{!"10197"}
!442 = !{!"10198"}
!443 = !{!"10199"}
!444 = !{!"10200"}
!445 = !{!"10201"}
!446 = !{!"10202"}
!447 = !{!"10203"}
!448 = !{!"10204"}
!449 = !{!"10205"}
!450 = !{!"10206"}
!451 = !{!"10207"}
!452 = !{!"10208"}
!453 = !{!"10209"}
!454 = !{!"10210"}
!455 = !{!"10211"}
!456 = !{!"10212"}
!457 = !{!"10213"}
!458 = !{!"10214"}
!459 = !{!"10215"}
!460 = !{!"10216"}
!461 = !{!"10217"}
!462 = !{!"10218"}
!463 = !{!"10219"}
!464 = !{!"10220"}
!465 = !{!"10221"}
!466 = !{!"10222"}
!467 = !{!"10223"}
!468 = !{!"10224"}
!469 = !{!"10225"}
!470 = !{!"10226"}
!471 = !{!"10227"}
!472 = !{!"10228"}
!473 = !{!"10229"}
!474 = !{!"10230"}
!475 = !{!"10231"}
!476 = !{!"10232"}
!477 = !{!"10233"}
!478 = !{!"10234"}
!479 = !{!"10235"}
!480 = !{!"10236"}
!481 = !{!"10237"}
!482 = !{!"10238"}
!483 = !{!"10239"}
!484 = !{!"10240"}
!485 = !{!"10241"}
!486 = !{!"10242"}
!487 = !{!"10243"}
!488 = !{!"10244"}
!489 = !{!"10245"}
!490 = !{!"10246"}
!491 = !{!"10247"}
!492 = !{!"10248"}
!493 = !{!"10249"}
!494 = !{!"10250"}
!495 = !{!"10251"}
!496 = !{!"10252"}
!497 = !{!"10253"}
!498 = !{!"10254"}
!499 = !{!"10255"}
!500 = !{!"10256"}
!501 = !{!"10257"}
!502 = !{!"10258"}
!503 = !{!"10259"}
!504 = !{!"10260"}
!505 = !{!"10261"}
!506 = !{!"10262"}
!507 = !{!"10263"}
!508 = !{!"10264"}
!509 = !{!"10265"}
!510 = !{!"10266"}
!511 = !{!"10267"}
!512 = !{!"10268"}
!513 = !{!"10269"}
!514 = !{!"10270"}
!515 = !{!"10271"}
!516 = !{!"10272"}
!517 = !{!"10273"}
!518 = !{!"10274"}
!519 = !{!"10275"}
!520 = !{!"10276"}
!521 = !{!"10277"}
!522 = !{!"10278"}
!523 = !{!"10279"}
!524 = !{!"10280"}
!525 = !{!"10281"}
!526 = !{!"10282"}
!527 = !{!"10283"}
!528 = !{!"10284"}
