; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose = external dso_local global i32, align 4
@quiet = external dso_local global i32, align 4
@bytes_in = external dso_local global i64, align 8
@bytes_out = external dso_local global i64, align 8
@ofname = external dso_local global [1024 x i8], align 16
@time_stamp = external dso_local global i64, align 8
@header_bytes = external dso_local global i64, align 8
@last_member = external dso_local global i32, align 4
@ifile_size = external dso_local global i64, align 8
@total_in = external dso_local global i64, align 8
@total_out = external dso_local global i64, align 8
@stdout = external global ptr, align 8
@do_list.first_time = external hidden global i32, align 4
@do_list.methods = external hidden global [9 x ptr], align 16
@.str.187 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.188 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.189 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.190 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.191 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.192 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.193 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.194 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.195 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: noinline nounwind uwtable
define hidden void @do_list(i32 noundef %ifd, i32 noundef %method) #0 {
entry:
  %ifd.addr = alloca i32, align 4, !mymd !6
  %method.addr = alloca i32, align 4, !mymd !7
  %crc = alloca i64, align 8, !mymd !8
  %date = alloca ptr, align 8, !mymd !9
  %positive_off_t_width = alloca i32, align 4, !mymd !10
  %o = alloca i64, align 8, !mymd !11
  %buf = alloca [8 x i8], align 1, !mymd !12
  store i32 %ifd, ptr %ifd.addr, align 4, !mymd !13
  store i32 %method, ptr %method.addr, align 4, !mymd !14
  store i32 1, ptr %positive_off_t_width, align 4, !mymd !15
  store i64 9223372036854775807, ptr %o, align 8, !mymd !16
  br label %for.cond, !mymd !17

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %o, align 8, !mymd !18
  %cmp = icmp slt i64 9, %0, !mymd !19
  br i1 %cmp, label %for.body, label %for.end, !mymd !20

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %positive_off_t_width, align 4, !mymd !21
  %inc = add nsw i32 %1, 1, !mymd !22
  store i32 %inc, ptr %positive_off_t_width, align 4, !mymd !23
  br label %for.inc, !mymd !24

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %o, align 8, !mymd !25
  %div = sdiv i64 %2, 10, !mymd !26
  store i64 %div, ptr %o, align 8, !mymd !27
  br label %for.cond, !llvm.loop !28, !mymd !30

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr @do_list.first_time, align 4, !mymd !31
  %tobool = icmp ne i32 %3, 0, !mymd !32
  br i1 %tobool, label %land.lhs.true, label %if.else, !mymd !33

land.lhs.true:                                    ; preds = %for.end
  %4 = load i32, ptr %method.addr, align 4, !mymd !34
  %cmp1 = icmp sge i32 %4, 0, !mymd !35
  br i1 %cmp1, label %if.then, label %if.else, !mymd !36

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr @do_list.first_time, align 4, !mymd !37
  %5 = load i32, ptr @verbose, align 4, !mymd !38
  %tobool2 = icmp ne i32 %5, 0, !mymd !39
  br i1 %tobool2, label %if.then3, label %if.end, !mymd !40

if.then3:                                         ; preds = %if.then
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.187), !mymd !41
  br label %if.end, !mymd !42

if.end:                                           ; preds = %if.then3, %if.then
  %6 = load i32, ptr @quiet, align 4, !mymd !43
  %tobool4 = icmp ne i32 %6, 0, !mymd !44
  br i1 %tobool4, label %if.end7, label %if.then5, !mymd !45

if.then5:                                         ; preds = %if.end
  %7 = load i32, ptr %positive_off_t_width, align 4, !mymd !46
  %8 = load i32, ptr %positive_off_t_width, align 4, !mymd !47
  %9 = load i32, ptr %positive_off_t_width, align 4, !mymd !48
  %10 = load i32, ptr %positive_off_t_width, align 4, !mymd !49
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.188, i32 noundef %7, i32 noundef %8, ptr noundef @.str.189, i32 noundef %9, i32 noundef %10, ptr noundef @.str.190), !mymd !50
  br label %if.end7, !mymd !51

if.end7:                                          ; preds = %if.then5, %if.end
  br label %if.end28, !mymd !52

if.else:                                          ; preds = %land.lhs.true, %for.end
  %11 = load i32, ptr %method.addr, align 4, !mymd !53
  %cmp8 = icmp slt i32 %11, 0, !mymd !54
  br i1 %cmp8, label %if.then9, label %if.end27, !mymd !55

if.then9:                                         ; preds = %if.else
  %12 = load i64, ptr @total_in, align 8, !mymd !56
  %cmp10 = icmp sle i64 %12, 0, !mymd !57
  br i1 %cmp10, label %if.then12, label %lor.lhs.false, !mymd !58

lor.lhs.false:                                    ; preds = %if.then9
  %13 = load i64, ptr @total_out, align 8, !mymd !59
  %cmp11 = icmp sle i64 %13, 0, !mymd !60
  br i1 %cmp11, label %if.then12, label %if.end13, !mymd !61

if.then12:                                        ; preds = %lor.lhs.false, %if.then9
  br label %return, !mymd !62

if.end13:                                         ; preds = %lor.lhs.false
  %14 = load i32, ptr @verbose, align 4, !mymd !63
  %tobool14 = icmp ne i32 %14, 0, !mymd !64
  br i1 %tobool14, label %if.then15, label %if.end17, !mymd !65

if.then15:                                        ; preds = %if.end13
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.191), !mymd !66
  br label %if.end17, !mymd !67

if.end17:                                         ; preds = %if.then15, %if.end13
  %15 = load i32, ptr @verbose, align 4, !mymd !68
  %tobool18 = icmp ne i32 %15, 0, !mymd !69
  br i1 %tobool18, label %if.then21, label %lor.lhs.false19, !mymd !70

lor.lhs.false19:                                  ; preds = %if.end17
  %16 = load i32, ptr @quiet, align 4, !mymd !71
  %tobool20 = icmp ne i32 %16, 0, !mymd !72
  br i1 %tobool20, label %if.end24, label %if.then21, !mymd !73

if.then21:                                        ; preds = %lor.lhs.false19, %if.end17
  %17 = load ptr, ptr @stdout, align 8, !mymd !74
  %18 = load i64, ptr @total_in, align 8, !mymd !75
  %19 = load i32, ptr %positive_off_t_width, align 4, !mymd !76
  call void @fprint_off(ptr noundef %17, i64 noundef %18, i32 noundef %19), !mymd !77
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.192), !mymd !78
  %20 = load ptr, ptr @stdout, align 8, !mymd !79
  %21 = load i64, ptr @total_out, align 8, !mymd !80
  %22 = load i32, ptr %positive_off_t_width, align 4, !mymd !81
  call void @fprint_off(ptr noundef %20, i64 noundef %21, i32 noundef %22), !mymd !82
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.192), !mymd !83
  br label %if.end24, !mymd !84

if.end24:                                         ; preds = %if.then21, %lor.lhs.false19
  %23 = load i64, ptr @total_out, align 8, !mymd !85
  %24 = load i64, ptr @total_in, align 8, !mymd !86
  %25 = load i64, ptr @header_bytes, align 8, !mymd !87
  %sub = sub nsw i64 %24, %25, !mymd !88
  %sub25 = sub nsw i64 %23, %sub, !mymd !89
  %26 = load i64, ptr @total_out, align 8, !mymd !90
  %27 = load ptr, ptr @stdout, align 8, !mymd !91
  call void @display_ratio(i64 noundef %sub25, i64 noundef %26, ptr noundef %27), !mymd !92
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.193), !mymd !93
  br label %return, !mymd !94

if.end27:                                         ; preds = %if.else
  br label %if.end28, !mymd !95

if.end28:                                         ; preds = %if.end27, %if.end7
  store i64 -1, ptr %crc, align 8, !mymd !96
  store i64 -1, ptr @bytes_out, align 8, !mymd !97
  %28 = load i64, ptr @ifile_size, align 8, !mymd !98
  store i64 %28, ptr @bytes_in, align 8, !mymd !99
  %29 = load i32, ptr %method.addr, align 4, !mymd !100
  %cmp29 = icmp eq i32 %29, 8, !mymd !101
  br i1 %cmp29, label %land.lhs.true30, label %if.end90, !mymd !102

land.lhs.true30:                                  ; preds = %if.end28
  %30 = load i32, ptr @last_member, align 4, !mymd !103
  %tobool31 = icmp ne i32 %30, 0, !mymd !104
  br i1 %tobool31, label %if.end90, label %if.then32, !mymd !105

if.then32:                                        ; preds = %land.lhs.true30
  %31 = load i32, ptr %ifd.addr, align 4, !mymd !106
  %call33 = call i64 @lseek(i32 noundef %31, i64 noundef -8, i32 noundef 2) #3, !mymd !107
  store i64 %call33, ptr @bytes_in, align 8, !mymd !108
  %32 = load i64, ptr @bytes_in, align 8, !mymd !109
  %cmp34 = icmp ne i64 %32, -1, !mymd !110
  br i1 %cmp34, label %if.then35, label %if.end89, !mymd !111

if.then35:                                        ; preds = %if.then32
  %33 = load i64, ptr @bytes_in, align 8, !mymd !112
  %add = add nsw i64 %33, 8, !mymd !113
  store i64 %add, ptr @bytes_in, align 8, !mymd !114
  %34 = load i32, ptr %ifd.addr, align 4, !mymd !115
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !mymd !116
  %call36 = call i64 @read(i32 noundef %34, ptr noundef %arraydecay, i64 noundef 8), !mymd !117
  %cmp37 = icmp ne i64 %call36, 8, !mymd !118
  br i1 %cmp37, label %if.then38, label %if.end39, !mymd !119

if.then38:                                        ; preds = %if.then35
  call void @read_error(), !mymd !120
  br label %if.end39, !mymd !121

if.end39:                                         ; preds = %if.then38, %if.then35
  %arrayidx = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !mymd !122
  %35 = load i8, ptr %arrayidx, align 1, !mymd !123
  %conv = zext i8 %35 to i16, !mymd !124
  %conv40 = zext i16 %conv to i32, !mymd !125
  %arrayidx41 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 1, !mymd !126
  %36 = load i8, ptr %arrayidx41, align 1, !mymd !127
  %conv42 = zext i8 %36 to i16, !mymd !128
  %conv43 = zext i16 %conv42 to i32, !mymd !129
  %shl = shl i32 %conv43, 8, !mymd !130
  %or = or i32 %conv40, %shl, !mymd !131
  %conv44 = sext i32 %or to i64, !mymd !132
  %arraydecay45 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !mymd !133
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay45, i64 2, !mymd !134
  %arrayidx46 = getelementptr inbounds i8, ptr %add.ptr, i64 0, !mymd !135
  %37 = load i8, ptr %arrayidx46, align 1, !mymd !136
  %conv47 = zext i8 %37 to i16, !mymd !137
  %conv48 = zext i16 %conv47 to i32, !mymd !138
  %arraydecay49 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !mymd !139
  %add.ptr50 = getelementptr inbounds i8, ptr %arraydecay49, i64 2, !mymd !140
  %arrayidx51 = getelementptr inbounds i8, ptr %add.ptr50, i64 1, !mymd !141
  %38 = load i8, ptr %arrayidx51, align 1, !mymd !142
  %conv52 = zext i8 %38 to i16, !mymd !143
  %conv53 = zext i16 %conv52 to i32, !mymd !144
  %shl54 = shl i32 %conv53, 8, !mymd !145
  %or55 = or i32 %conv48, %shl54, !mymd !146
  %conv56 = sext i32 %or55 to i64, !mymd !147
  %shl57 = shl i64 %conv56, 16, !mymd !148
  %or58 = or i64 %conv44, %shl57, !mymd !149
  store i64 %or58, ptr %crc, align 8, !mymd !150
  %arraydecay59 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !mymd !151
  %add.ptr60 = getelementptr inbounds i8, ptr %arraydecay59, i64 4, !mymd !152
  %arrayidx61 = getelementptr inbounds i8, ptr %add.ptr60, i64 0, !mymd !153
  %39 = load i8, ptr %arrayidx61, align 1, !mymd !154
  %conv62 = zext i8 %39 to i16, !mymd !155
  %conv63 = zext i16 %conv62 to i32, !mymd !156
  %arraydecay64 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !mymd !157
  %add.ptr65 = getelementptr inbounds i8, ptr %arraydecay64, i64 4, !mymd !158
  %arrayidx66 = getelementptr inbounds i8, ptr %add.ptr65, i64 1, !mymd !159
  %40 = load i8, ptr %arrayidx66, align 1, !mymd !160
  %conv67 = zext i8 %40 to i16, !mymd !161
  %conv68 = zext i16 %conv67 to i32, !mymd !162
  %shl69 = shl i32 %conv68, 8, !mymd !163
  %or70 = or i32 %conv63, %shl69, !mymd !164
  %conv71 = sext i32 %or70 to i64, !mymd !165
  %arraydecay72 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !mymd !166
  %add.ptr73 = getelementptr inbounds i8, ptr %arraydecay72, i64 4, !mymd !167
  %add.ptr74 = getelementptr inbounds i8, ptr %add.ptr73, i64 2, !mymd !168
  %arrayidx75 = getelementptr inbounds i8, ptr %add.ptr74, i64 0, !mymd !169
  %41 = load i8, ptr %arrayidx75, align 1, !mymd !170
  %conv76 = zext i8 %41 to i16, !mymd !171
  %conv77 = zext i16 %conv76 to i32, !mymd !172
  %arraydecay78 = getelementptr inbounds [8 x i8], ptr %buf, i64 0, i64 0, !mymd !173
  %add.ptr79 = getelementptr inbounds i8, ptr %arraydecay78, i64 4, !mymd !174
  %add.ptr80 = getelementptr inbounds i8, ptr %add.ptr79, i64 2, !mymd !175
  %arrayidx81 = getelementptr inbounds i8, ptr %add.ptr80, i64 1, !mymd !176
  %42 = load i8, ptr %arrayidx81, align 1, !mymd !177
  %conv82 = zext i8 %42 to i16, !mymd !178
  %conv83 = zext i16 %conv82 to i32, !mymd !179
  %shl84 = shl i32 %conv83, 8, !mymd !180
  %or85 = or i32 %conv77, %shl84, !mymd !181
  %conv86 = sext i32 %or85 to i64, !mymd !182
  %shl87 = shl i64 %conv86, 16, !mymd !183
  %or88 = or i64 %conv71, %shl87, !mymd !184
  store i64 %or88, ptr @bytes_out, align 8, !mymd !185
  br label %if.end89, !mymd !186

if.end89:                                         ; preds = %if.end39, %if.then32
  br label %if.end90, !mymd !187

if.end90:                                         ; preds = %if.end89, %land.lhs.true30, %if.end28
  %call91 = call ptr @ctime(ptr noundef @time_stamp) #3, !mymd !188
  %add.ptr92 = getelementptr inbounds i8, ptr %call91, i64 4, !mymd !189
  store ptr %add.ptr92, ptr %date, align 8, !mymd !190
  %43 = load ptr, ptr %date, align 8, !mymd !191
  %arrayidx93 = getelementptr inbounds i8, ptr %43, i64 12, !mymd !192
  store i8 0, ptr %arrayidx93, align 1, !mymd !193
  %44 = load i32, ptr @verbose, align 4, !mymd !194
  %tobool94 = icmp ne i32 %44, 0, !mymd !195
  br i1 %tobool94, label %if.then95, label %if.end98, !mymd !196

if.then95:                                        ; preds = %if.end90
  %45 = load i32, ptr %method.addr, align 4, !mymd !197
  %idxprom = sext i32 %45 to i64, !mymd !198
  %arrayidx96 = getelementptr inbounds [9 x ptr], ptr @do_list.methods, i64 0, i64 %idxprom, !mymd !199
  %46 = load ptr, ptr %arrayidx96, align 8, !mymd !200
  %47 = load i64, ptr %crc, align 8, !mymd !201
  %48 = load ptr, ptr %date, align 8, !mymd !202
  %call97 = call i32 (ptr, ...) @printf(ptr noundef @.str.194, ptr noundef %46, i64 noundef %47, ptr noundef %48), !mymd !203
  br label %if.end98, !mymd !204

if.end98:                                         ; preds = %if.then95, %if.end90
  %49 = load ptr, ptr @stdout, align 8, !mymd !205
  %50 = load i64, ptr @bytes_in, align 8, !mymd !206
  %51 = load i32, ptr %positive_off_t_width, align 4, !mymd !207
  call void @fprint_off(ptr noundef %49, i64 noundef %50, i32 noundef %51), !mymd !208
  %call99 = call i32 (ptr, ...) @printf(ptr noundef @.str.192), !mymd !209
  %52 = load ptr, ptr @stdout, align 8, !mymd !210
  %53 = load i64, ptr @bytes_out, align 8, !mymd !211
  %54 = load i32, ptr %positive_off_t_width, align 4, !mymd !212
  call void @fprint_off(ptr noundef %52, i64 noundef %53, i32 noundef %54), !mymd !213
  %call100 = call i32 (ptr, ...) @printf(ptr noundef @.str.192), !mymd !214
  %55 = load i64, ptr @bytes_in, align 8, !mymd !215
  %cmp101 = icmp eq i64 %55, -1, !mymd !216
  br i1 %cmp101, label %if.then103, label %if.else104, !mymd !217

if.then103:                                       ; preds = %if.end98
  store i64 -1, ptr @total_in, align 8, !mymd !218
  store i64 0, ptr @header_bytes, align 8, !mymd !219
  store i64 0, ptr @bytes_out, align 8, !mymd !220
  store i64 0, ptr @bytes_in, align 8, !mymd !221
  br label %if.end110, !mymd !222

if.else104:                                       ; preds = %if.end98
  %56 = load i64, ptr @total_in, align 8, !mymd !223
  %cmp105 = icmp sge i64 %56, 0, !mymd !224
  br i1 %cmp105, label %if.then107, label %if.end109, !mymd !225

if.then107:                                       ; preds = %if.else104
  %57 = load i64, ptr @bytes_in, align 8, !mymd !226
  %58 = load i64, ptr @total_in, align 8, !mymd !227
  %add108 = add nsw i64 %58, %57, !mymd !228
  store i64 %add108, ptr @total_in, align 8, !mymd !229
  br label %if.end109, !mymd !230

if.end109:                                        ; preds = %if.then107, %if.else104
  br label %if.end110, !mymd !231

if.end110:                                        ; preds = %if.end109, %if.then103
  %59 = load i64, ptr @bytes_out, align 8, !mymd !232
  %cmp111 = icmp eq i64 %59, -1, !mymd !233
  br i1 %cmp111, label %if.then113, label %if.else114, !mymd !234

if.then113:                                       ; preds = %if.end110
  store i64 -1, ptr @total_out, align 8, !mymd !235
  store i64 0, ptr @header_bytes, align 8, !mymd !236
  store i64 0, ptr @bytes_out, align 8, !mymd !237
  store i64 0, ptr @bytes_in, align 8, !mymd !238
  br label %if.end120, !mymd !239

if.else114:                                       ; preds = %if.end110
  %60 = load i64, ptr @total_out, align 8, !mymd !240
  %cmp115 = icmp sge i64 %60, 0, !mymd !241
  br i1 %cmp115, label %if.then117, label %if.end119, !mymd !242

if.then117:                                       ; preds = %if.else114
  %61 = load i64, ptr @bytes_out, align 8, !mymd !243
  %62 = load i64, ptr @total_out, align 8, !mymd !244
  %add118 = add nsw i64 %62, %61, !mymd !245
  store i64 %add118, ptr @total_out, align 8, !mymd !246
  br label %if.end119, !mymd !247

if.end119:                                        ; preds = %if.then117, %if.else114
  br label %if.end120, !mymd !248

if.end120:                                        ; preds = %if.end119, %if.then113
  %63 = load i64, ptr @bytes_out, align 8, !mymd !249
  %64 = load i64, ptr @bytes_in, align 8, !mymd !250
  %65 = load i64, ptr @header_bytes, align 8, !mymd !251
  %sub121 = sub nsw i64 %64, %65, !mymd !252
  %sub122 = sub nsw i64 %63, %sub121, !mymd !253
  %66 = load i64, ptr @bytes_out, align 8, !mymd !254
  %67 = load ptr, ptr @stdout, align 8, !mymd !255
  call void @display_ratio(i64 noundef %sub122, i64 noundef %66, ptr noundef %67), !mymd !256
  %call123 = call i32 (ptr, ...) @printf(ptr noundef @.str.195, ptr noundef @ofname), !mymd !257
  br label %return, !mymd !258

return:                                           ; preds = %if.end120, %if.end24, %if.then12
  ret void, !mymd !259
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @read_error() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @display_ratio(i64 noundef, i64 noundef, ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @fprint_off(ptr noundef, i64 noundef, i32 noundef) #0

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare ptr @ctime(ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"4924"}
!7 = !{!"4925"}
!8 = !{!"4926"}
!9 = !{!"4927"}
!10 = !{!"4928"}
!11 = !{!"4929"}
!12 = !{!"4930"}
!13 = !{!"4931"}
!14 = !{!"4932"}
!15 = !{!"4933"}
!16 = !{!"4934"}
!17 = !{!"4935"}
!18 = !{!"4936"}
!19 = !{!"4937"}
!20 = !{!"4938"}
!21 = !{!"4939"}
!22 = !{!"4940"}
!23 = !{!"4941"}
!24 = !{!"4942"}
!25 = !{!"4943"}
!26 = !{!"4944"}
!27 = !{!"4945"}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"4946"}
!31 = !{!"4947"}
!32 = !{!"4948"}
!33 = !{!"4949"}
!34 = !{!"4950"}
!35 = !{!"4951"}
!36 = !{!"4952"}
!37 = !{!"4953"}
!38 = !{!"4954"}
!39 = !{!"4955"}
!40 = !{!"4956"}
!41 = !{!"4957"}
!42 = !{!"4958"}
!43 = !{!"4959"}
!44 = !{!"4960"}
!45 = !{!"4961"}
!46 = !{!"4962"}
!47 = !{!"4963"}
!48 = !{!"4964"}
!49 = !{!"4965"}
!50 = !{!"4966"}
!51 = !{!"4967"}
!52 = !{!"4968"}
!53 = !{!"4969"}
!54 = !{!"4970"}
!55 = !{!"4971"}
!56 = !{!"4972"}
!57 = !{!"4973"}
!58 = !{!"4974"}
!59 = !{!"4975"}
!60 = !{!"4976"}
!61 = !{!"4977"}
!62 = !{!"4978"}
!63 = !{!"4979"}
!64 = !{!"4980"}
!65 = !{!"4981"}
!66 = !{!"4982"}
!67 = !{!"4983"}
!68 = !{!"4984"}
!69 = !{!"4985"}
!70 = !{!"4986"}
!71 = !{!"4987"}
!72 = !{!"4988"}
!73 = !{!"4989"}
!74 = !{!"4990"}
!75 = !{!"4991"}
!76 = !{!"4992"}
!77 = !{!"4993"}
!78 = !{!"4994"}
!79 = !{!"4995"}
!80 = !{!"4996"}
!81 = !{!"4997"}
!82 = !{!"4998"}
!83 = !{!"4999"}
!84 = !{!"5000"}
!85 = !{!"5001"}
!86 = !{!"5002"}
!87 = !{!"5003"}
!88 = !{!"5004"}
!89 = !{!"5005"}
!90 = !{!"5006"}
!91 = !{!"5007"}
!92 = !{!"5008"}
!93 = !{!"5009"}
!94 = !{!"5010"}
!95 = !{!"5011"}
!96 = !{!"5012"}
!97 = !{!"5013"}
!98 = !{!"5014"}
!99 = !{!"5015"}
!100 = !{!"5016"}
!101 = !{!"5017"}
!102 = !{!"5018"}
!103 = !{!"5019"}
!104 = !{!"5020"}
!105 = !{!"5021"}
!106 = !{!"5022"}
!107 = !{!"5023"}
!108 = !{!"5024"}
!109 = !{!"5025"}
!110 = !{!"5026"}
!111 = !{!"5027"}
!112 = !{!"5028"}
!113 = !{!"5029"}
!114 = !{!"5030"}
!115 = !{!"5031"}
!116 = !{!"5032"}
!117 = !{!"5033"}
!118 = !{!"5034"}
!119 = !{!"5035"}
!120 = !{!"5036"}
!121 = !{!"5037"}
!122 = !{!"5038"}
!123 = !{!"5039"}
!124 = !{!"5040"}
!125 = !{!"5041"}
!126 = !{!"5042"}
!127 = !{!"5043"}
!128 = !{!"5044"}
!129 = !{!"5045"}
!130 = !{!"5046"}
!131 = !{!"5047"}
!132 = !{!"5048"}
!133 = !{!"5049"}
!134 = !{!"5050"}
!135 = !{!"5051"}
!136 = !{!"5052"}
!137 = !{!"5053"}
!138 = !{!"5054"}
!139 = !{!"5055"}
!140 = !{!"5056"}
!141 = !{!"5057"}
!142 = !{!"5058"}
!143 = !{!"5059"}
!144 = !{!"5060"}
!145 = !{!"5061"}
!146 = !{!"5062"}
!147 = !{!"5063"}
!148 = !{!"5064"}
!149 = !{!"5065"}
!150 = !{!"5066"}
!151 = !{!"5067"}
!152 = !{!"5068"}
!153 = !{!"5069"}
!154 = !{!"5070"}
!155 = !{!"5071"}
!156 = !{!"5072"}
!157 = !{!"5073"}
!158 = !{!"5074"}
!159 = !{!"5075"}
!160 = !{!"5076"}
!161 = !{!"5077"}
!162 = !{!"5078"}
!163 = !{!"5079"}
!164 = !{!"5080"}
!165 = !{!"5081"}
!166 = !{!"5082"}
!167 = !{!"5083"}
!168 = !{!"5084"}
!169 = !{!"5085"}
!170 = !{!"5086"}
!171 = !{!"5087"}
!172 = !{!"5088"}
!173 = !{!"5089"}
!174 = !{!"5090"}
!175 = !{!"5091"}
!176 = !{!"5092"}
!177 = !{!"5093"}
!178 = !{!"5094"}
!179 = !{!"5095"}
!180 = !{!"5096"}
!181 = !{!"5097"}
!182 = !{!"5098"}
!183 = !{!"5099"}
!184 = !{!"5100"}
!185 = !{!"5101"}
!186 = !{!"5102"}
!187 = !{!"5103"}
!188 = !{!"5104"}
!189 = !{!"5105"}
!190 = !{!"5106"}
!191 = !{!"5107"}
!192 = !{!"5108"}
!193 = !{!"5109"}
!194 = !{!"5110"}
!195 = !{!"5111"}
!196 = !{!"5112"}
!197 = !{!"5113"}
!198 = !{!"5114"}
!199 = !{!"5115"}
!200 = !{!"5116"}
!201 = !{!"5117"}
!202 = !{!"5118"}
!203 = !{!"5119"}
!204 = !{!"5120"}
!205 = !{!"5121"}
!206 = !{!"5122"}
!207 = !{!"5123"}
!208 = !{!"5124"}
!209 = !{!"5125"}
!210 = !{!"5126"}
!211 = !{!"5127"}
!212 = !{!"5128"}
!213 = !{!"5129"}
!214 = !{!"5130"}
!215 = !{!"5131"}
!216 = !{!"5132"}
!217 = !{!"5133"}
!218 = !{!"5134"}
!219 = !{!"5135"}
!220 = !{!"5136"}
!221 = !{!"5137"}
!222 = !{!"5138"}
!223 = !{!"5139"}
!224 = !{!"5140"}
!225 = !{!"5141"}
!226 = !{!"5142"}
!227 = !{!"5143"}
!228 = !{!"5144"}
!229 = !{!"5145"}
!230 = !{!"5146"}
!231 = !{!"5147"}
!232 = !{!"5148"}
!233 = !{!"5149"}
!234 = !{!"5150"}
!235 = !{!"5151"}
!236 = !{!"5152"}
!237 = !{!"5153"}
!238 = !{!"5154"}
!239 = !{!"5155"}
!240 = !{!"5156"}
!241 = !{!"5157"}
!242 = !{!"5158"}
!243 = !{!"5159"}
!244 = !{!"5160"}
!245 = !{!"5161"}
!246 = !{!"5162"}
!247 = !{!"5163"}
!248 = !{!"5164"}
!249 = !{!"5165"}
!250 = !{!"5166"}
!251 = !{!"5167"}
!252 = !{!"5168"}
!253 = !{!"5169"}
!254 = !{!"5170"}
!255 = !{!"5171"}
!256 = !{!"5172"}
!257 = !{!"5173"}
!258 = !{!"5174"}
!259 = !{!"5175"}
