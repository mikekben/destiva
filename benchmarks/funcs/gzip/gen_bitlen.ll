; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_desc = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@bl_count = external hidden global [16 x i16], align 16
@opt_len = external hidden global i64, align 8
@static_len = external hidden global i64, align 8
@heap_max = external hidden global i32, align 4
@heap = external hidden global [573 x i32], align 16

; Function Attrs: noinline nounwind uwtable
define hidden void @gen_bitlen(ptr noundef %desc) #0 {
entry:
  %desc.addr = alloca ptr, align 8, !mymd !6
  %tree = alloca ptr, align 8, !mymd !7
  %extra = alloca ptr, align 8, !mymd !8
  %base = alloca i32, align 4, !mymd !9
  %max_code = alloca i32, align 4, !mymd !10
  %max_length = alloca i32, align 4, !mymd !11
  %stree = alloca ptr, align 8, !mymd !12
  %h = alloca i32, align 4, !mymd !13
  %n = alloca i32, align 4, !mymd !14
  %m = alloca i32, align 4, !mymd !15
  %bits = alloca i32, align 4, !mymd !16
  %xbits = alloca i32, align 4, !mymd !17
  %f = alloca i16, align 2, !mymd !18
  %overflow = alloca i32, align 4, !mymd !19
  store ptr %desc, ptr %desc.addr, align 8, !mymd !20
  %0 = load ptr, ptr %desc.addr, align 8, !mymd !21
  %dyn_tree = getelementptr inbounds nuw %struct.tree_desc, ptr %0, i32 0, i32 0, !mymd !22
  %1 = load ptr, ptr %dyn_tree, align 8, !mymd !23
  store ptr %1, ptr %tree, align 8, !mymd !24
  %2 = load ptr, ptr %desc.addr, align 8, !mymd !25
  %extra_bits = getelementptr inbounds nuw %struct.tree_desc, ptr %2, i32 0, i32 2, !mymd !26
  %3 = load ptr, ptr %extra_bits, align 8, !mymd !27
  store ptr %3, ptr %extra, align 8, !mymd !28
  %4 = load ptr, ptr %desc.addr, align 8, !mymd !29
  %extra_base = getelementptr inbounds nuw %struct.tree_desc, ptr %4, i32 0, i32 3, !mymd !30
  %5 = load i32, ptr %extra_base, align 8, !mymd !31
  store i32 %5, ptr %base, align 4, !mymd !32
  %6 = load ptr, ptr %desc.addr, align 8, !mymd !33
  %max_code1 = getelementptr inbounds nuw %struct.tree_desc, ptr %6, i32 0, i32 6, !mymd !34
  %7 = load i32, ptr %max_code1, align 4, !mymd !35
  store i32 %7, ptr %max_code, align 4, !mymd !36
  %8 = load ptr, ptr %desc.addr, align 8, !mymd !37
  %max_length2 = getelementptr inbounds nuw %struct.tree_desc, ptr %8, i32 0, i32 5, !mymd !38
  %9 = load i32, ptr %max_length2, align 8, !mymd !39
  store i32 %9, ptr %max_length, align 4, !mymd !40
  %10 = load ptr, ptr %desc.addr, align 8, !mymd !41
  %static_tree = getelementptr inbounds nuw %struct.tree_desc, ptr %10, i32 0, i32 1, !mymd !42
  %11 = load ptr, ptr %static_tree, align 8, !mymd !43
  store ptr %11, ptr %stree, align 8, !mymd !44
  store i32 0, ptr %overflow, align 4, !mymd !45
  store i32 0, ptr %bits, align 4, !mymd !46
  br label %for.cond, !mymd !47

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, ptr %bits, align 4, !mymd !48
  %cmp = icmp sle i32 %12, 15, !mymd !49
  br i1 %cmp, label %for.body, label %for.end, !mymd !50

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %bits, align 4, !mymd !51
  %idxprom = sext i32 %13 to i64, !mymd !52
  %arrayidx = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %idxprom, !mymd !53
  store i16 0, ptr %arrayidx, align 2, !mymd !54
  br label %for.inc, !mymd !55

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %bits, align 4, !mymd !56
  %inc = add nsw i32 %14, 1, !mymd !57
  store i32 %inc, ptr %bits, align 4, !mymd !58
  br label %for.cond, !llvm.loop !59, !mymd !61

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %tree, align 8, !mymd !62
  %16 = load i32, ptr @heap_max, align 4, !mymd !63
  %idxprom3 = sext i32 %16 to i64, !mymd !64
  %arrayidx4 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom3, !mymd !65
  %17 = load i32, ptr %arrayidx4, align 4, !mymd !66
  %idxprom5 = sext i32 %17 to i64, !mymd !67
  %arrayidx6 = getelementptr inbounds %struct.ct_data, ptr %15, i64 %idxprom5, !mymd !68
  %dl = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx6, i32 0, i32 1, !mymd !69
  store i16 0, ptr %dl, align 2, !mymd !70
  %18 = load i32, ptr @heap_max, align 4, !mymd !71
  %add = add nsw i32 %18, 1, !mymd !72
  store i32 %add, ptr %h, align 4, !mymd !73
  br label %for.cond7, !mymd !74

for.cond7:                                        ; preds = %for.inc56, %for.end
  %19 = load i32, ptr %h, align 4, !mymd !75
  %cmp8 = icmp slt i32 %19, 573, !mymd !76
  br i1 %cmp8, label %for.body9, label %for.end58, !mymd !77

for.body9:                                        ; preds = %for.cond7
  %20 = load i32, ptr %h, align 4, !mymd !78
  %idxprom10 = sext i32 %20 to i64, !mymd !79
  %arrayidx11 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom10, !mymd !80
  %21 = load i32, ptr %arrayidx11, align 4, !mymd !81
  store i32 %21, ptr %n, align 4, !mymd !82
  %22 = load ptr, ptr %tree, align 8, !mymd !83
  %23 = load ptr, ptr %tree, align 8, !mymd !84
  %24 = load i32, ptr %n, align 4, !mymd !85
  %idxprom12 = sext i32 %24 to i64, !mymd !86
  %arrayidx13 = getelementptr inbounds %struct.ct_data, ptr %23, i64 %idxprom12, !mymd !87
  %dl14 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx13, i32 0, i32 1, !mymd !88
  %25 = load i16, ptr %dl14, align 2, !mymd !89
  %idxprom15 = zext i16 %25 to i64, !mymd !90
  %arrayidx16 = getelementptr inbounds nuw %struct.ct_data, ptr %22, i64 %idxprom15, !mymd !91
  %dl17 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx16, i32 0, i32 1, !mymd !92
  %26 = load i16, ptr %dl17, align 2, !mymd !93
  %conv = zext i16 %26 to i32, !mymd !94
  %add18 = add nsw i32 %conv, 1, !mymd !95
  store i32 %add18, ptr %bits, align 4, !mymd !96
  %27 = load i32, ptr %bits, align 4, !mymd !97
  %28 = load i32, ptr %max_length, align 4, !mymd !98
  %cmp19 = icmp sgt i32 %27, %28, !mymd !99
  br i1 %cmp19, label %if.then, label %if.end, !mymd !100

if.then:                                          ; preds = %for.body9
  %29 = load i32, ptr %max_length, align 4, !mymd !101
  store i32 %29, ptr %bits, align 4, !mymd !102
  %30 = load i32, ptr %overflow, align 4, !mymd !103
  %inc21 = add nsw i32 %30, 1, !mymd !104
  store i32 %inc21, ptr %overflow, align 4, !mymd !105
  br label %if.end, !mymd !106

if.end:                                           ; preds = %if.then, %for.body9
  %31 = load i32, ptr %bits, align 4, !mymd !107
  %conv22 = trunc i32 %31 to i16, !mymd !108
  %32 = load ptr, ptr %tree, align 8, !mymd !109
  %33 = load i32, ptr %n, align 4, !mymd !110
  %idxprom23 = sext i32 %33 to i64, !mymd !111
  %arrayidx24 = getelementptr inbounds %struct.ct_data, ptr %32, i64 %idxprom23, !mymd !112
  %dl25 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx24, i32 0, i32 1, !mymd !113
  store i16 %conv22, ptr %dl25, align 2, !mymd !114
  %34 = load i32, ptr %n, align 4, !mymd !115
  %35 = load i32, ptr %max_code, align 4, !mymd !116
  %cmp26 = icmp sgt i32 %34, %35, !mymd !117
  br i1 %cmp26, label %if.then28, label %if.end29, !mymd !118

if.then28:                                        ; preds = %if.end
  br label %for.inc56, !mymd !119

if.end29:                                         ; preds = %if.end
  %36 = load i32, ptr %bits, align 4, !mymd !120
  %idxprom30 = sext i32 %36 to i64, !mymd !121
  %arrayidx31 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %idxprom30, !mymd !122
  %37 = load i16, ptr %arrayidx31, align 2, !mymd !123
  %inc32 = add i16 %37, 1, !mymd !124
  store i16 %inc32, ptr %arrayidx31, align 2, !mymd !125
  store i32 0, ptr %xbits, align 4, !mymd !126
  %38 = load i32, ptr %n, align 4, !mymd !127
  %39 = load i32, ptr %base, align 4, !mymd !128
  %cmp33 = icmp sge i32 %38, %39, !mymd !129
  br i1 %cmp33, label %if.then35, label %if.end38, !mymd !130

if.then35:                                        ; preds = %if.end29
  %40 = load ptr, ptr %extra, align 8, !mymd !131
  %41 = load i32, ptr %n, align 4, !mymd !132
  %42 = load i32, ptr %base, align 4, !mymd !133
  %sub = sub nsw i32 %41, %42, !mymd !134
  %idxprom36 = sext i32 %sub to i64, !mymd !135
  %arrayidx37 = getelementptr inbounds i32, ptr %40, i64 %idxprom36, !mymd !136
  %43 = load i32, ptr %arrayidx37, align 4, !mymd !137
  store i32 %43, ptr %xbits, align 4, !mymd !138
  br label %if.end38, !mymd !139

if.end38:                                         ; preds = %if.then35, %if.end29
  %44 = load ptr, ptr %tree, align 8, !mymd !140
  %45 = load i32, ptr %n, align 4, !mymd !141
  %idxprom39 = sext i32 %45 to i64, !mymd !142
  %arrayidx40 = getelementptr inbounds %struct.ct_data, ptr %44, i64 %idxprom39, !mymd !143
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx40, i32 0, i32 0, !mymd !144
  %46 = load i16, ptr %fc, align 2, !mymd !145
  store i16 %46, ptr %f, align 2, !mymd !146
  %47 = load i16, ptr %f, align 2, !mymd !147
  %conv41 = zext i16 %47 to i64, !mymd !148
  %48 = load i32, ptr %bits, align 4, !mymd !149
  %49 = load i32, ptr %xbits, align 4, !mymd !150
  %add42 = add nsw i32 %48, %49, !mymd !151
  %conv43 = sext i32 %add42 to i64, !mymd !152
  %mul = mul i64 %conv41, %conv43, !mymd !153
  %50 = load i64, ptr @opt_len, align 8, !mymd !154
  %add44 = add i64 %50, %mul, !mymd !155
  store i64 %add44, ptr @opt_len, align 8, !mymd !156
  %51 = load ptr, ptr %stree, align 8, !mymd !157
  %tobool = icmp ne ptr %51, null, !mymd !158
  br i1 %tobool, label %if.then45, label %if.end55, !mymd !159

if.then45:                                        ; preds = %if.end38
  %52 = load i16, ptr %f, align 2, !mymd !160
  %conv46 = zext i16 %52 to i64, !mymd !161
  %53 = load ptr, ptr %stree, align 8, !mymd !162
  %54 = load i32, ptr %n, align 4, !mymd !163
  %idxprom47 = sext i32 %54 to i64, !mymd !164
  %arrayidx48 = getelementptr inbounds %struct.ct_data, ptr %53, i64 %idxprom47, !mymd !165
  %dl49 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx48, i32 0, i32 1, !mymd !166
  %55 = load i16, ptr %dl49, align 2, !mymd !167
  %conv50 = zext i16 %55 to i32, !mymd !168
  %56 = load i32, ptr %xbits, align 4, !mymd !169
  %add51 = add nsw i32 %conv50, %56, !mymd !170
  %conv52 = sext i32 %add51 to i64, !mymd !171
  %mul53 = mul i64 %conv46, %conv52, !mymd !172
  %57 = load i64, ptr @static_len, align 8, !mymd !173
  %add54 = add i64 %57, %mul53, !mymd !174
  store i64 %add54, ptr @static_len, align 8, !mymd !175
  br label %if.end55, !mymd !176

if.end55:                                         ; preds = %if.then45, %if.end38
  br label %for.inc56, !mymd !177

for.inc56:                                        ; preds = %if.end55, %if.then28
  %58 = load i32, ptr %h, align 4, !mymd !178
  %inc57 = add nsw i32 %58, 1, !mymd !179
  store i32 %inc57, ptr %h, align 4, !mymd !180
  br label %for.cond7, !llvm.loop !181, !mymd !182

for.end58:                                        ; preds = %for.cond7
  %59 = load i32, ptr %overflow, align 4, !mymd !183
  %cmp59 = icmp eq i32 %59, 0, !mymd !184
  br i1 %cmp59, label %if.then61, label %if.end62, !mymd !185

if.then61:                                        ; preds = %for.end58
  br label %for.end130, !mymd !186

if.end62:                                         ; preds = %for.end58
  br label %do.body, !mymd !187

do.body:                                          ; preds = %do.cond, %if.end62
  %60 = load i32, ptr %max_length, align 4, !mymd !188
  %sub63 = sub nsw i32 %60, 1, !mymd !189
  store i32 %sub63, ptr %bits, align 4, !mymd !190
  br label %while.cond, !mymd !191

while.cond:                                       ; preds = %while.body, %do.body
  %61 = load i32, ptr %bits, align 4, !mymd !192
  %idxprom64 = sext i32 %61 to i64, !mymd !193
  %arrayidx65 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %idxprom64, !mymd !194
  %62 = load i16, ptr %arrayidx65, align 2, !mymd !195
  %conv66 = zext i16 %62 to i32, !mymd !196
  %cmp67 = icmp eq i32 %conv66, 0, !mymd !197
  br i1 %cmp67, label %while.body, label %while.end, !mymd !198

while.body:                                       ; preds = %while.cond
  %63 = load i32, ptr %bits, align 4, !mymd !199
  %dec = add nsw i32 %63, -1, !mymd !200
  store i32 %dec, ptr %bits, align 4, !mymd !201
  br label %while.cond, !llvm.loop !202, !mymd !203

while.end:                                        ; preds = %while.cond
  %64 = load i32, ptr %bits, align 4, !mymd !204
  %idxprom69 = sext i32 %64 to i64, !mymd !205
  %arrayidx70 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %idxprom69, !mymd !206
  %65 = load i16, ptr %arrayidx70, align 2, !mymd !207
  %dec71 = add i16 %65, -1, !mymd !208
  store i16 %dec71, ptr %arrayidx70, align 2, !mymd !209
  %66 = load i32, ptr %bits, align 4, !mymd !210
  %add72 = add nsw i32 %66, 1, !mymd !211
  %idxprom73 = sext i32 %add72 to i64, !mymd !212
  %arrayidx74 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %idxprom73, !mymd !213
  %67 = load i16, ptr %arrayidx74, align 2, !mymd !214
  %conv75 = zext i16 %67 to i32, !mymd !215
  %add76 = add nsw i32 %conv75, 2, !mymd !216
  %conv77 = trunc i32 %add76 to i16, !mymd !217
  store i16 %conv77, ptr %arrayidx74, align 2, !mymd !218
  %68 = load i32, ptr %max_length, align 4, !mymd !219
  %idxprom78 = sext i32 %68 to i64, !mymd !220
  %arrayidx79 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %idxprom78, !mymd !221
  %69 = load i16, ptr %arrayidx79, align 2, !mymd !222
  %dec80 = add i16 %69, -1, !mymd !223
  store i16 %dec80, ptr %arrayidx79, align 2, !mymd !224
  %70 = load i32, ptr %overflow, align 4, !mymd !225
  %sub81 = sub nsw i32 %70, 2, !mymd !226
  store i32 %sub81, ptr %overflow, align 4, !mymd !227
  br label %do.cond, !mymd !228

do.cond:                                          ; preds = %while.end
  %71 = load i32, ptr %overflow, align 4, !mymd !229
  %cmp82 = icmp sgt i32 %71, 0, !mymd !230
  br i1 %cmp82, label %do.body, label %do.end, !llvm.loop !231, !mymd !232

do.end:                                           ; preds = %do.cond
  %72 = load i32, ptr %max_length, align 4, !mymd !233
  store i32 %72, ptr %bits, align 4, !mymd !234
  br label %for.cond84, !mymd !235

for.cond84:                                       ; preds = %for.inc128, %do.end
  %73 = load i32, ptr %bits, align 4, !mymd !236
  %cmp85 = icmp ne i32 %73, 0, !mymd !237
  br i1 %cmp85, label %for.body87, label %for.end130, !mymd !238

for.body87:                                       ; preds = %for.cond84
  %74 = load i32, ptr %bits, align 4, !mymd !239
  %idxprom88 = sext i32 %74 to i64, !mymd !240
  %arrayidx89 = getelementptr inbounds [16 x i16], ptr @bl_count, i64 0, i64 %idxprom88, !mymd !241
  %75 = load i16, ptr %arrayidx89, align 2, !mymd !242
  %conv90 = zext i16 %75 to i32, !mymd !243
  store i32 %conv90, ptr %n, align 4, !mymd !244
  br label %while.cond91, !mymd !245

while.cond91:                                     ; preds = %if.end125, %if.then100, %for.body87
  %76 = load i32, ptr %n, align 4, !mymd !246
  %cmp92 = icmp ne i32 %76, 0, !mymd !247
  br i1 %cmp92, label %while.body94, label %while.end127, !mymd !248

while.body94:                                     ; preds = %while.cond91
  %77 = load i32, ptr %h, align 4, !mymd !249
  %dec95 = add nsw i32 %77, -1, !mymd !250
  store i32 %dec95, ptr %h, align 4, !mymd !251
  %idxprom96 = sext i32 %dec95 to i64, !mymd !252
  %arrayidx97 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom96, !mymd !253
  %78 = load i32, ptr %arrayidx97, align 4, !mymd !254
  store i32 %78, ptr %m, align 4, !mymd !255
  %79 = load i32, ptr %m, align 4, !mymd !256
  %80 = load i32, ptr %max_code, align 4, !mymd !257
  %cmp98 = icmp sgt i32 %79, %80, !mymd !258
  br i1 %cmp98, label %if.then100, label %if.end101, !mymd !259

if.then100:                                       ; preds = %while.body94
  br label %while.cond91, !llvm.loop !260, !mymd !261

if.end101:                                        ; preds = %while.body94
  %81 = load ptr, ptr %tree, align 8, !mymd !262
  %82 = load i32, ptr %m, align 4, !mymd !263
  %idxprom102 = sext i32 %82 to i64, !mymd !264
  %arrayidx103 = getelementptr inbounds %struct.ct_data, ptr %81, i64 %idxprom102, !mymd !265
  %dl104 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx103, i32 0, i32 1, !mymd !266
  %83 = load i16, ptr %dl104, align 2, !mymd !267
  %conv105 = zext i16 %83 to i32, !mymd !268
  %84 = load i32, ptr %bits, align 4, !mymd !269
  %cmp106 = icmp ne i32 %conv105, %84, !mymd !270
  br i1 %cmp106, label %if.then108, label %if.end125, !mymd !271

if.then108:                                       ; preds = %if.end101
  %85 = load i32, ptr %bits, align 4, !mymd !272
  %conv109 = sext i32 %85 to i64, !mymd !273
  %86 = load ptr, ptr %tree, align 8, !mymd !274
  %87 = load i32, ptr %m, align 4, !mymd !275
  %idxprom110 = sext i32 %87 to i64, !mymd !276
  %arrayidx111 = getelementptr inbounds %struct.ct_data, ptr %86, i64 %idxprom110, !mymd !277
  %dl112 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx111, i32 0, i32 1, !mymd !278
  %88 = load i16, ptr %dl112, align 2, !mymd !279
  %conv113 = zext i16 %88 to i64, !mymd !280
  %sub114 = sub nsw i64 %conv109, %conv113, !mymd !281
  %89 = load ptr, ptr %tree, align 8, !mymd !282
  %90 = load i32, ptr %m, align 4, !mymd !283
  %idxprom115 = sext i32 %90 to i64, !mymd !284
  %arrayidx116 = getelementptr inbounds %struct.ct_data, ptr %89, i64 %idxprom115, !mymd !285
  %fc117 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx116, i32 0, i32 0, !mymd !286
  %91 = load i16, ptr %fc117, align 2, !mymd !287
  %conv118 = zext i16 %91 to i64, !mymd !288
  %mul119 = mul nsw i64 %sub114, %conv118, !mymd !289
  %92 = load i64, ptr @opt_len, align 8, !mymd !290
  %add120 = add i64 %92, %mul119, !mymd !291
  store i64 %add120, ptr @opt_len, align 8, !mymd !292
  %93 = load i32, ptr %bits, align 4, !mymd !293
  %conv121 = trunc i32 %93 to i16, !mymd !294
  %94 = load ptr, ptr %tree, align 8, !mymd !295
  %95 = load i32, ptr %m, align 4, !mymd !296
  %idxprom122 = sext i32 %95 to i64, !mymd !297
  %arrayidx123 = getelementptr inbounds %struct.ct_data, ptr %94, i64 %idxprom122, !mymd !298
  %dl124 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx123, i32 0, i32 1, !mymd !299
  store i16 %conv121, ptr %dl124, align 2, !mymd !300
  br label %if.end125, !mymd !301

if.end125:                                        ; preds = %if.then108, %if.end101
  %96 = load i32, ptr %n, align 4, !mymd !302
  %dec126 = add nsw i32 %96, -1, !mymd !303
  store i32 %dec126, ptr %n, align 4, !mymd !304
  br label %while.cond91, !llvm.loop !260, !mymd !305

while.end127:                                     ; preds = %while.cond91
  br label %for.inc128, !mymd !306

for.inc128:                                       ; preds = %while.end127
  %97 = load i32, ptr %bits, align 4, !mymd !307
  %dec129 = add nsw i32 %97, -1, !mymd !308
  store i32 %dec129, ptr %bits, align 4, !mymd !309
  br label %for.cond84, !llvm.loop !310, !mymd !311

for.end130:                                       ; preds = %for.cond84, %if.then61
  ret void, !mymd !312
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"12628"}
!7 = !{!"12629"}
!8 = !{!"12630"}
!9 = !{!"12631"}
!10 = !{!"12632"}
!11 = !{!"12633"}
!12 = !{!"12634"}
!13 = !{!"12635"}
!14 = !{!"12636"}
!15 = !{!"12637"}
!16 = !{!"12638"}
!17 = !{!"12639"}
!18 = !{!"12640"}
!19 = !{!"12641"}
!20 = !{!"12642"}
!21 = !{!"12643"}
!22 = !{!"12644"}
!23 = !{!"12645"}
!24 = !{!"12646"}
!25 = !{!"12647"}
!26 = !{!"12648"}
!27 = !{!"12649"}
!28 = !{!"12650"}
!29 = !{!"12651"}
!30 = !{!"12652"}
!31 = !{!"12653"}
!32 = !{!"12654"}
!33 = !{!"12655"}
!34 = !{!"12656"}
!35 = !{!"12657"}
!36 = !{!"12658"}
!37 = !{!"12659"}
!38 = !{!"12660"}
!39 = !{!"12661"}
!40 = !{!"12662"}
!41 = !{!"12663"}
!42 = !{!"12664"}
!43 = !{!"12665"}
!44 = !{!"12666"}
!45 = !{!"12667"}
!46 = !{!"12668"}
!47 = !{!"12669"}
!48 = !{!"12670"}
!49 = !{!"12671"}
!50 = !{!"12672"}
!51 = !{!"12673"}
!52 = !{!"12674"}
!53 = !{!"12675"}
!54 = !{!"12676"}
!55 = !{!"12677"}
!56 = !{!"12678"}
!57 = !{!"12679"}
!58 = !{!"12680"}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"12681"}
!62 = !{!"12682"}
!63 = !{!"12683"}
!64 = !{!"12684"}
!65 = !{!"12685"}
!66 = !{!"12686"}
!67 = !{!"12687"}
!68 = !{!"12688"}
!69 = !{!"12689"}
!70 = !{!"12690"}
!71 = !{!"12691"}
!72 = !{!"12692"}
!73 = !{!"12693"}
!74 = !{!"12694"}
!75 = !{!"12695"}
!76 = !{!"12696"}
!77 = !{!"12697"}
!78 = !{!"12698"}
!79 = !{!"12699"}
!80 = !{!"12700"}
!81 = !{!"12701"}
!82 = !{!"12702"}
!83 = !{!"12703"}
!84 = !{!"12704"}
!85 = !{!"12705"}
!86 = !{!"12706"}
!87 = !{!"12707"}
!88 = !{!"12708"}
!89 = !{!"12709"}
!90 = !{!"12710"}
!91 = !{!"12711"}
!92 = !{!"12712"}
!93 = !{!"12713"}
!94 = !{!"12714"}
!95 = !{!"12715"}
!96 = !{!"12716"}
!97 = !{!"12717"}
!98 = !{!"12718"}
!99 = !{!"12719"}
!100 = !{!"12720"}
!101 = !{!"12721"}
!102 = !{!"12722"}
!103 = !{!"12723"}
!104 = !{!"12724"}
!105 = !{!"12725"}
!106 = !{!"12726"}
!107 = !{!"12727"}
!108 = !{!"12728"}
!109 = !{!"12729"}
!110 = !{!"12730"}
!111 = !{!"12731"}
!112 = !{!"12732"}
!113 = !{!"12733"}
!114 = !{!"12734"}
!115 = !{!"12735"}
!116 = !{!"12736"}
!117 = !{!"12737"}
!118 = !{!"12738"}
!119 = !{!"12739"}
!120 = !{!"12740"}
!121 = !{!"12741"}
!122 = !{!"12742"}
!123 = !{!"12743"}
!124 = !{!"12744"}
!125 = !{!"12745"}
!126 = !{!"12746"}
!127 = !{!"12747"}
!128 = !{!"12748"}
!129 = !{!"12749"}
!130 = !{!"12750"}
!131 = !{!"12751"}
!132 = !{!"12752"}
!133 = !{!"12753"}
!134 = !{!"12754"}
!135 = !{!"12755"}
!136 = !{!"12756"}
!137 = !{!"12757"}
!138 = !{!"12758"}
!139 = !{!"12759"}
!140 = !{!"12760"}
!141 = !{!"12761"}
!142 = !{!"12762"}
!143 = !{!"12763"}
!144 = !{!"12764"}
!145 = !{!"12765"}
!146 = !{!"12766"}
!147 = !{!"12767"}
!148 = !{!"12768"}
!149 = !{!"12769"}
!150 = !{!"12770"}
!151 = !{!"12771"}
!152 = !{!"12772"}
!153 = !{!"12773"}
!154 = !{!"12774"}
!155 = !{!"12775"}
!156 = !{!"12776"}
!157 = !{!"12777"}
!158 = !{!"12778"}
!159 = !{!"12779"}
!160 = !{!"12780"}
!161 = !{!"12781"}
!162 = !{!"12782"}
!163 = !{!"12783"}
!164 = !{!"12784"}
!165 = !{!"12785"}
!166 = !{!"12786"}
!167 = !{!"12787"}
!168 = !{!"12788"}
!169 = !{!"12789"}
!170 = !{!"12790"}
!171 = !{!"12791"}
!172 = !{!"12792"}
!173 = !{!"12793"}
!174 = !{!"12794"}
!175 = !{!"12795"}
!176 = !{!"12796"}
!177 = !{!"12797"}
!178 = !{!"12798"}
!179 = !{!"12799"}
!180 = !{!"12800"}
!181 = distinct !{!181, !60}
!182 = !{!"12801"}
!183 = !{!"12802"}
!184 = !{!"12803"}
!185 = !{!"12804"}
!186 = !{!"12805"}
!187 = !{!"12806"}
!188 = !{!"12807"}
!189 = !{!"12808"}
!190 = !{!"12809"}
!191 = !{!"12810"}
!192 = !{!"12811"}
!193 = !{!"12812"}
!194 = !{!"12813"}
!195 = !{!"12814"}
!196 = !{!"12815"}
!197 = !{!"12816"}
!198 = !{!"12817"}
!199 = !{!"12818"}
!200 = !{!"12819"}
!201 = !{!"12820"}
!202 = distinct !{!202, !60}
!203 = !{!"12821"}
!204 = !{!"12822"}
!205 = !{!"12823"}
!206 = !{!"12824"}
!207 = !{!"12825"}
!208 = !{!"12826"}
!209 = !{!"12827"}
!210 = !{!"12828"}
!211 = !{!"12829"}
!212 = !{!"12830"}
!213 = !{!"12831"}
!214 = !{!"12832"}
!215 = !{!"12833"}
!216 = !{!"12834"}
!217 = !{!"12835"}
!218 = !{!"12836"}
!219 = !{!"12837"}
!220 = !{!"12838"}
!221 = !{!"12839"}
!222 = !{!"12840"}
!223 = !{!"12841"}
!224 = !{!"12842"}
!225 = !{!"12843"}
!226 = !{!"12844"}
!227 = !{!"12845"}
!228 = !{!"12846"}
!229 = !{!"12847"}
!230 = !{!"12848"}
!231 = distinct !{!231, !60}
!232 = !{!"12849"}
!233 = !{!"12850"}
!234 = !{!"12851"}
!235 = !{!"12852"}
!236 = !{!"12853"}
!237 = !{!"12854"}
!238 = !{!"12855"}
!239 = !{!"12856"}
!240 = !{!"12857"}
!241 = !{!"12858"}
!242 = !{!"12859"}
!243 = !{!"12860"}
!244 = !{!"12861"}
!245 = !{!"12862"}
!246 = !{!"12863"}
!247 = !{!"12864"}
!248 = !{!"12865"}
!249 = !{!"12866"}
!250 = !{!"12867"}
!251 = !{!"12868"}
!252 = !{!"12869"}
!253 = !{!"12870"}
!254 = !{!"12871"}
!255 = !{!"12872"}
!256 = !{!"12873"}
!257 = !{!"12874"}
!258 = !{!"12875"}
!259 = !{!"12876"}
!260 = distinct !{!260, !60}
!261 = !{!"12877"}
!262 = !{!"12878"}
!263 = !{!"12879"}
!264 = !{!"12880"}
!265 = !{!"12881"}
!266 = !{!"12882"}
!267 = !{!"12883"}
!268 = !{!"12884"}
!269 = !{!"12885"}
!270 = !{!"12886"}
!271 = !{!"12887"}
!272 = !{!"12888"}
!273 = !{!"12889"}
!274 = !{!"12890"}
!275 = !{!"12891"}
!276 = !{!"12892"}
!277 = !{!"12893"}
!278 = !{!"12894"}
!279 = !{!"12895"}
!280 = !{!"12896"}
!281 = !{!"12897"}
!282 = !{!"12898"}
!283 = !{!"12899"}
!284 = !{!"12900"}
!285 = !{!"12901"}
!286 = !{!"12902"}
!287 = !{!"12903"}
!288 = !{!"12904"}
!289 = !{!"12905"}
!290 = !{!"12906"}
!291 = !{!"12907"}
!292 = !{!"12908"}
!293 = !{!"12909"}
!294 = !{!"12910"}
!295 = !{!"12911"}
!296 = !{!"12912"}
!297 = !{!"12913"}
!298 = !{!"12914"}
!299 = !{!"12915"}
!300 = !{!"12916"}
!301 = !{!"12917"}
!302 = !{!"12918"}
!303 = !{!"12919"}
!304 = !{!"12920"}
!305 = !{!"12921"}
!306 = !{!"12922"}
!307 = !{!"12923"}
!308 = !{!"12924"}
!309 = !{!"12925"}
!310 = distinct !{!310, !60}
!311 = !{!"12926"}
!312 = !{!"12927"}
