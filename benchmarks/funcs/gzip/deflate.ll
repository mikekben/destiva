; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@window_size = external dso_local global i64, align 8
@compr_level = external hidden global i32, align 4
@rsync_chunk_end = external hidden global i64, align 8
@max_lazy_match = external hidden global i32, align 4
@strstart = external dso_local global i32, align 4
@block_start = external dso_local global i64, align 8
@lookahead = external hidden global i32, align 4
@eofile = external hidden global i32, align 4
@ins_h = external hidden global i32, align 4
@prev_length = external dso_local global i32, align 4
@match_start = external dso_local global i32, align 4
@rsync = external dso_local global i32, align 4
@window = external dso_local global [65536 x i8], align 16
@prev = external dso_local global [65536 x i16], align 16

; Function Attrs: noinline nounwind uwtable
declare hidden void @fill_window() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @longest_match(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @deflate() #0 {
entry:
  %retval = alloca i64, align 8, !mymd !6
  %hash_head = alloca i32, align 4, !mymd !7
  %prev_match = alloca i32, align 4, !mymd !8
  %flush = alloca i32, align 4, !mymd !9
  %match_available = alloca i32, align 4, !mymd !10
  %match_length = alloca i32, align 4, !mymd !11
  store i32 0, ptr %match_available, align 4, !mymd !12
  store i32 2, ptr %match_length, align 4, !mymd !13
  %0 = load i32, ptr @compr_level, align 4, !mymd !14
  %cmp = icmp sle i32 %0, 3, !mymd !15
  br i1 %cmp, label %if.then, label %if.end, !mymd !16

if.then:                                          ; preds = %entry
  %call = call i64 @deflate_fast(), !mymd !17
  store i64 %call, ptr %retval, align 8, !mymd !18
  br label %return, !mymd !19

if.end:                                           ; preds = %entry
  br label %while.cond, !mymd !20

while.cond:                                       ; preds = %while.end, %if.end
  %1 = load i32, ptr @lookahead, align 4, !mymd !21
  %cmp1 = icmp ne i32 %1, 0, !mymd !22
  br i1 %cmp1, label %while.body, label %while.end176, !mymd !23

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr @ins_h, align 4, !mymd !24
  %shl = shl i32 %2, 5, !mymd !25
  %3 = load i32, ptr @strstart, align 4, !mymd !26
  %add = add i32 %3, 3, !mymd !27
  %sub = sub i32 %add, 1, !mymd !28
  %idxprom = zext i32 %sub to i64, !mymd !29
  %arrayidx = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom, !mymd !30
  %4 = load i8, ptr %arrayidx, align 1, !mymd !31
  %conv = zext i8 %4 to i32, !mymd !32
  %xor = xor i32 %shl, %conv, !mymd !33
  %and = and i32 %xor, 32767, !mymd !34
  store i32 %and, ptr @ins_h, align 4, !mymd !35
  %5 = load i32, ptr @ins_h, align 4, !mymd !36
  %idxprom2 = zext i32 %5 to i64, !mymd !37
  %arrayidx3 = getelementptr inbounds nuw i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom2, !mymd !38
  %6 = load i16, ptr %arrayidx3, align 2, !mymd !39
  %conv4 = zext i16 %6 to i32, !mymd !40
  store i32 %conv4, ptr %hash_head, align 4, !mymd !41
  %conv5 = trunc i32 %conv4 to i16, !mymd !42
  %7 = load i32, ptr @strstart, align 4, !mymd !43
  %and6 = and i32 %7, 32767, !mymd !44
  %idxprom7 = zext i32 %and6 to i64, !mymd !45
  %arrayidx8 = getelementptr inbounds nuw [0 x i16], ptr @prev, i64 0, i64 %idxprom7, !mymd !46
  store i16 %conv5, ptr %arrayidx8, align 2, !mymd !47
  %8 = load i32, ptr @strstart, align 4, !mymd !48
  %conv9 = trunc i32 %8 to i16, !mymd !49
  %9 = load i32, ptr @ins_h, align 4, !mymd !50
  %idxprom10 = zext i32 %9 to i64, !mymd !51
  %arrayidx11 = getelementptr inbounds nuw i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom10, !mymd !52
  store i16 %conv9, ptr %arrayidx11, align 2, !mymd !53
  %10 = load i32, ptr %match_length, align 4, !mymd !54
  store i32 %10, ptr @prev_length, align 4, !mymd !55
  %11 = load i32, ptr @match_start, align 4, !mymd !56
  store i32 %11, ptr %prev_match, align 4, !mymd !57
  store i32 2, ptr %match_length, align 4, !mymd !58
  %12 = load i32, ptr %hash_head, align 4, !mymd !59
  %cmp12 = icmp ne i32 %12, 0, !mymd !60
  br i1 %cmp12, label %land.lhs.true, label %if.end39, !mymd !61

land.lhs.true:                                    ; preds = %while.body
  %13 = load i32, ptr @prev_length, align 4, !mymd !62
  %14 = load i32, ptr @max_lazy_match, align 4, !mymd !63
  %cmp14 = icmp ult i32 %13, %14, !mymd !64
  br i1 %cmp14, label %land.lhs.true16, label %if.end39, !mymd !65

land.lhs.true16:                                  ; preds = %land.lhs.true
  %15 = load i32, ptr @strstart, align 4, !mymd !66
  %16 = load i32, ptr %hash_head, align 4, !mymd !67
  %sub17 = sub i32 %15, %16, !mymd !68
  %cmp18 = icmp ule i32 %sub17, 32506, !mymd !69
  br i1 %cmp18, label %land.lhs.true20, label %if.end39, !mymd !70

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %17 = load i32, ptr @strstart, align 4, !mymd !71
  %conv21 = zext i32 %17 to i64, !mymd !72
  %18 = load i64, ptr @window_size, align 8, !mymd !73
  %sub22 = sub i64 %18, 262, !mymd !74
  %cmp23 = icmp ule i64 %conv21, %sub22, !mymd !75
  br i1 %cmp23, label %if.then25, label %if.end39, !mymd !76

if.then25:                                        ; preds = %land.lhs.true20
  %19 = load i32, ptr %hash_head, align 4, !mymd !77
  %call26 = call i32 @longest_match(i32 noundef %19), !mymd !78
  store i32 %call26, ptr %match_length, align 4, !mymd !79
  %20 = load i32, ptr %match_length, align 4, !mymd !80
  %21 = load i32, ptr @lookahead, align 4, !mymd !81
  %cmp27 = icmp ugt i32 %20, %21, !mymd !82
  br i1 %cmp27, label %if.then29, label %if.end30, !mymd !83

if.then29:                                        ; preds = %if.then25
  %22 = load i32, ptr @lookahead, align 4, !mymd !84
  store i32 %22, ptr %match_length, align 4, !mymd !85
  br label %if.end30, !mymd !86

if.end30:                                         ; preds = %if.then29, %if.then25
  %23 = load i32, ptr %match_length, align 4, !mymd !87
  %cmp31 = icmp eq i32 %23, 3, !mymd !88
  br i1 %cmp31, label %land.lhs.true33, label %if.end38, !mymd !89

land.lhs.true33:                                  ; preds = %if.end30
  %24 = load i32, ptr @strstart, align 4, !mymd !90
  %25 = load i32, ptr @match_start, align 4, !mymd !91
  %sub34 = sub i32 %24, %25, !mymd !92
  %cmp35 = icmp ugt i32 %sub34, 4096, !mymd !93
  br i1 %cmp35, label %if.then37, label %if.end38, !mymd !94

if.then37:                                        ; preds = %land.lhs.true33
  %26 = load i32, ptr %match_length, align 4, !mymd !95
  %dec = add i32 %26, -1, !mymd !96
  store i32 %dec, ptr %match_length, align 4, !mymd !97
  br label %if.end38, !mymd !98

if.end38:                                         ; preds = %if.then37, %land.lhs.true33, %if.end30
  br label %if.end39, !mymd !99

if.end39:                                         ; preds = %if.end38, %land.lhs.true20, %land.lhs.true16, %land.lhs.true, %while.body
  %27 = load i32, ptr @prev_length, align 4, !mymd !100
  %cmp40 = icmp uge i32 %27, 3, !mymd !101
  br i1 %cmp40, label %land.lhs.true42, label %if.else, !mymd !102

land.lhs.true42:                                  ; preds = %if.end39
  %28 = load i32, ptr %match_length, align 4, !mymd !103
  %29 = load i32, ptr @prev_length, align 4, !mymd !104
  %cmp43 = icmp ule i32 %28, %29, !mymd !105
  br i1 %cmp43, label %if.then45, label %if.else, !mymd !106

if.then45:                                        ; preds = %land.lhs.true42
  %30 = load i32, ptr @strstart, align 4, !mymd !107
  %sub46 = sub i32 %30, 1, !mymd !108
  %31 = load i32, ptr %prev_match, align 4, !mymd !109
  %sub47 = sub i32 %sub46, %31, !mymd !110
  %32 = load i32, ptr @prev_length, align 4, !mymd !111
  %sub48 = sub i32 %32, 3, !mymd !112
  %call49 = call i32 @ct_tally(i32 noundef %sub47, i32 noundef %sub48), !mymd !113
  store i32 %call49, ptr %flush, align 4, !mymd !114
  %33 = load i32, ptr @prev_length, align 4, !mymd !115
  %sub50 = sub i32 %33, 1, !mymd !116
  %34 = load i32, ptr @lookahead, align 4, !mymd !117
  %sub51 = sub i32 %34, %sub50, !mymd !118
  store i32 %sub51, ptr @lookahead, align 4, !mymd !119
  %35 = load i32, ptr @prev_length, align 4, !mymd !120
  %sub52 = sub i32 %35, 2, !mymd !121
  store i32 %sub52, ptr @prev_length, align 4, !mymd !122
  br label %do.body, !mymd !123

do.body:                                          ; preds = %if.then45
  %36 = load i32, ptr @rsync, align 4, !mymd !124
  %tobool = icmp ne i32 %36, 0, !mymd !125
  br i1 %tobool, label %if.then53, label %if.end55, !mymd !126

if.then53:                                        ; preds = %do.body
  %37 = load i32, ptr @strstart, align 4, !mymd !127
  %38 = load i32, ptr @prev_length, align 4, !mymd !128
  %add54 = add i32 %38, 1, !mymd !129
  call void @rsync_roll(i32 noundef %37, i32 noundef %add54), !mymd !130
  br label %if.end55, !mymd !131

if.end55:                                         ; preds = %if.then53, %do.body
  br label %do.end, !mymd !132

do.end:                                           ; preds = %if.end55
  br label %do.body56, !mymd !133

do.body56:                                        ; preds = %do.cond, %do.end
  %39 = load i32, ptr @strstart, align 4, !mymd !134
  %inc = add i32 %39, 1, !mymd !135
  store i32 %inc, ptr @strstart, align 4, !mymd !136
  %40 = load i32, ptr @ins_h, align 4, !mymd !137
  %shl57 = shl i32 %40, 5, !mymd !138
  %41 = load i32, ptr @strstart, align 4, !mymd !139
  %add58 = add i32 %41, 3, !mymd !140
  %sub59 = sub i32 %add58, 1, !mymd !141
  %idxprom60 = zext i32 %sub59 to i64, !mymd !142
  %arrayidx61 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom60, !mymd !143
  %42 = load i8, ptr %arrayidx61, align 1, !mymd !144
  %conv62 = zext i8 %42 to i32, !mymd !145
  %xor63 = xor i32 %shl57, %conv62, !mymd !146
  %and64 = and i32 %xor63, 32767, !mymd !147
  store i32 %and64, ptr @ins_h, align 4, !mymd !148
  %43 = load i32, ptr @ins_h, align 4, !mymd !149
  %idxprom65 = zext i32 %43 to i64, !mymd !150
  %arrayidx66 = getelementptr inbounds nuw i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom65, !mymd !151
  %44 = load i16, ptr %arrayidx66, align 2, !mymd !152
  %conv67 = zext i16 %44 to i32, !mymd !153
  store i32 %conv67, ptr %hash_head, align 4, !mymd !154
  %conv68 = trunc i32 %conv67 to i16, !mymd !155
  %45 = load i32, ptr @strstart, align 4, !mymd !156
  %and69 = and i32 %45, 32767, !mymd !157
  %idxprom70 = zext i32 %and69 to i64, !mymd !158
  %arrayidx71 = getelementptr inbounds nuw [0 x i16], ptr @prev, i64 0, i64 %idxprom70, !mymd !159
  store i16 %conv68, ptr %arrayidx71, align 2, !mymd !160
  %46 = load i32, ptr @strstart, align 4, !mymd !161
  %conv72 = trunc i32 %46 to i16, !mymd !162
  %47 = load i32, ptr @ins_h, align 4, !mymd !163
  %idxprom73 = zext i32 %47 to i64, !mymd !164
  %arrayidx74 = getelementptr inbounds nuw i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom73, !mymd !165
  store i16 %conv72, ptr %arrayidx74, align 2, !mymd !166
  br label %do.cond, !mymd !167

do.cond:                                          ; preds = %do.body56
  %48 = load i32, ptr @prev_length, align 4, !mymd !168
  %dec75 = add i32 %48, -1, !mymd !169
  store i32 %dec75, ptr @prev_length, align 4, !mymd !170
  %cmp76 = icmp ne i32 %dec75, 0, !mymd !171
  br i1 %cmp76, label %do.body56, label %do.end78, !llvm.loop !172, !mymd !174

do.end78:                                         ; preds = %do.cond
  store i32 0, ptr %match_available, align 4, !mymd !175
  store i32 2, ptr %match_length, align 4, !mymd !176
  %49 = load i32, ptr @strstart, align 4, !mymd !177
  %inc79 = add i32 %49, 1, !mymd !178
  store i32 %inc79, ptr @strstart, align 4, !mymd !179
  %50 = load i32, ptr @rsync, align 4, !mymd !180
  %tobool80 = icmp ne i32 %50, 0, !mymd !181
  br i1 %tobool80, label %land.lhs.true81, label %if.end86, !mymd !182

land.lhs.true81:                                  ; preds = %do.end78
  %51 = load i32, ptr @strstart, align 4, !mymd !183
  %conv82 = zext i32 %51 to i64, !mymd !184
  %52 = load i64, ptr @rsync_chunk_end, align 8, !mymd !185
  %cmp83 = icmp ugt i64 %conv82, %52, !mymd !186
  br i1 %cmp83, label %if.then85, label %if.end86, !mymd !187

if.then85:                                        ; preds = %land.lhs.true81
  store i64 4294967295, ptr @rsync_chunk_end, align 8, !mymd !188
  store i32 2, ptr %flush, align 4, !mymd !189
  br label %if.end86, !mymd !190

if.end86:                                         ; preds = %if.then85, %land.lhs.true81, %do.end78
  %53 = load i32, ptr %flush, align 4, !mymd !191
  %tobool87 = icmp ne i32 %53, 0, !mymd !192
  br i1 %tobool87, label %if.then88, label %if.end99, !mymd !193

if.then88:                                        ; preds = %if.end86
  %54 = load i64, ptr @block_start, align 8, !mymd !194
  %cmp89 = icmp sge i64 %54, 0, !mymd !195
  br i1 %cmp89, label %cond.true, label %cond.false, !mymd !196

cond.true:                                        ; preds = %if.then88
  %55 = load i64, ptr @block_start, align 8, !mymd !197
  %conv91 = trunc i64 %55 to i32, !mymd !198
  %idxprom92 = zext i32 %conv91 to i64, !mymd !199
  %arrayidx93 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom92, !mymd !200
  br label %cond.end, !mymd !201

cond.false:                                       ; preds = %if.then88
  br label %cond.end, !mymd !202

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx93, %cond.true ], [ null, %cond.false ], !mymd !203
  %56 = load i32, ptr @strstart, align 4, !mymd !204
  %conv94 = zext i32 %56 to i64, !mymd !205
  %57 = load i64, ptr @block_start, align 8, !mymd !206
  %sub95 = sub nsw i64 %conv94, %57, !mymd !207
  %58 = load i32, ptr %flush, align 4, !mymd !208
  %sub96 = sub nsw i32 %58, 1, !mymd !209
  %call97 = call i64 @flush_block(ptr noundef %cond, i64 noundef %sub95, i32 noundef %sub96, i32 noundef 0), !mymd !210
  %59 = load i32, ptr @strstart, align 4, !mymd !211
  %conv98 = zext i32 %59 to i64, !mymd !212
  store i64 %conv98, ptr @block_start, align 8, !mymd !213
  br label %if.end99, !mymd !214

if.end99:                                         ; preds = %cond.end, %if.end86
  br label %if.end170, !mymd !215

if.else:                                          ; preds = %land.lhs.true42, %if.end39
  %60 = load i32, ptr %match_available, align 4, !mymd !216
  %tobool100 = icmp ne i32 %60, 0, !mymd !217
  br i1 %tobool100, label %if.then101, label %if.else139, !mymd !218

if.then101:                                       ; preds = %if.else
  %61 = load i32, ptr @strstart, align 4, !mymd !219
  %sub102 = sub i32 %61, 1, !mymd !220
  %idxprom103 = zext i32 %sub102 to i64, !mymd !221
  %arrayidx104 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom103, !mymd !222
  %62 = load i8, ptr %arrayidx104, align 1, !mymd !223
  %conv105 = zext i8 %62 to i32, !mymd !224
  %call106 = call i32 @ct_tally(i32 noundef 0, i32 noundef %conv105), !mymd !225
  store i32 %call106, ptr %flush, align 4, !mymd !226
  %63 = load i32, ptr @rsync, align 4, !mymd !227
  %tobool107 = icmp ne i32 %63, 0, !mymd !228
  br i1 %tobool107, label %land.lhs.true108, label %if.end113, !mymd !229

land.lhs.true108:                                 ; preds = %if.then101
  %64 = load i32, ptr @strstart, align 4, !mymd !230
  %conv109 = zext i32 %64 to i64, !mymd !231
  %65 = load i64, ptr @rsync_chunk_end, align 8, !mymd !232
  %cmp110 = icmp ugt i64 %conv109, %65, !mymd !233
  br i1 %cmp110, label %if.then112, label %if.end113, !mymd !234

if.then112:                                       ; preds = %land.lhs.true108
  store i64 4294967295, ptr @rsync_chunk_end, align 8, !mymd !235
  store i32 2, ptr %flush, align 4, !mymd !236
  br label %if.end113, !mymd !237

if.end113:                                        ; preds = %if.then112, %land.lhs.true108, %if.then101
  %66 = load i32, ptr %flush, align 4, !mymd !238
  %tobool114 = icmp ne i32 %66, 0, !mymd !239
  br i1 %tobool114, label %if.then115, label %if.end130, !mymd !240

if.then115:                                       ; preds = %if.end113
  %67 = load i64, ptr @block_start, align 8, !mymd !241
  %cmp116 = icmp sge i64 %67, 0, !mymd !242
  br i1 %cmp116, label %cond.true118, label %cond.false122, !mymd !243

cond.true118:                                     ; preds = %if.then115
  %68 = load i64, ptr @block_start, align 8, !mymd !244
  %conv119 = trunc i64 %68 to i32, !mymd !245
  %idxprom120 = zext i32 %conv119 to i64, !mymd !246
  %arrayidx121 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom120, !mymd !247
  br label %cond.end123, !mymd !248

cond.false122:                                    ; preds = %if.then115
  br label %cond.end123, !mymd !249

cond.end123:                                      ; preds = %cond.false122, %cond.true118
  %cond124 = phi ptr [ %arrayidx121, %cond.true118 ], [ null, %cond.false122 ], !mymd !250
  %69 = load i32, ptr @strstart, align 4, !mymd !251
  %conv125 = zext i32 %69 to i64, !mymd !252
  %70 = load i64, ptr @block_start, align 8, !mymd !253
  %sub126 = sub nsw i64 %conv125, %70, !mymd !254
  %71 = load i32, ptr %flush, align 4, !mymd !255
  %sub127 = sub nsw i32 %71, 1, !mymd !256
  %call128 = call i64 @flush_block(ptr noundef %cond124, i64 noundef %sub126, i32 noundef %sub127, i32 noundef 0), !mymd !257
  %72 = load i32, ptr @strstart, align 4, !mymd !258
  %conv129 = zext i32 %72 to i64, !mymd !259
  store i64 %conv129, ptr @block_start, align 8, !mymd !260
  br label %if.end130, !mymd !261

if.end130:                                        ; preds = %cond.end123, %if.end113
  br label %do.body131, !mymd !262

do.body131:                                       ; preds = %if.end130
  %73 = load i32, ptr @rsync, align 4, !mymd !263
  %tobool132 = icmp ne i32 %73, 0, !mymd !264
  br i1 %tobool132, label %if.then133, label %if.end134, !mymd !265

if.then133:                                       ; preds = %do.body131
  %74 = load i32, ptr @strstart, align 4, !mymd !266
  call void @rsync_roll(i32 noundef %74, i32 noundef 1), !mymd !267
  br label %if.end134, !mymd !268

if.end134:                                        ; preds = %if.then133, %do.body131
  br label %do.end136, !mymd !269

do.end136:                                        ; preds = %if.end134
  %75 = load i32, ptr @strstart, align 4, !mymd !270
  %inc137 = add i32 %75, 1, !mymd !271
  store i32 %inc137, ptr @strstart, align 4, !mymd !272
  %76 = load i32, ptr @lookahead, align 4, !mymd !273
  %dec138 = add i32 %76, -1, !mymd !274
  store i32 %dec138, ptr @lookahead, align 4, !mymd !275
  br label %if.end169, !mymd !276

if.else139:                                       ; preds = %if.else
  %77 = load i32, ptr @rsync, align 4, !mymd !277
  %tobool140 = icmp ne i32 %77, 0, !mymd !278
  br i1 %tobool140, label %land.lhs.true141, label %if.end160, !mymd !279

land.lhs.true141:                                 ; preds = %if.else139
  %78 = load i32, ptr @strstart, align 4, !mymd !280
  %conv142 = zext i32 %78 to i64, !mymd !281
  %79 = load i64, ptr @rsync_chunk_end, align 8, !mymd !282
  %cmp143 = icmp ugt i64 %conv142, %79, !mymd !283
  br i1 %cmp143, label %if.then145, label %if.end160, !mymd !284

if.then145:                                       ; preds = %land.lhs.true141
  store i64 4294967295, ptr @rsync_chunk_end, align 8, !mymd !285
  store i32 2, ptr %flush, align 4, !mymd !286
  %80 = load i64, ptr @block_start, align 8, !mymd !287
  %cmp146 = icmp sge i64 %80, 0, !mymd !288
  br i1 %cmp146, label %cond.true148, label %cond.false152, !mymd !289

cond.true148:                                     ; preds = %if.then145
  %81 = load i64, ptr @block_start, align 8, !mymd !290
  %conv149 = trunc i64 %81 to i32, !mymd !291
  %idxprom150 = zext i32 %conv149 to i64, !mymd !292
  %arrayidx151 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom150, !mymd !293
  br label %cond.end153, !mymd !294

cond.false152:                                    ; preds = %if.then145
  br label %cond.end153, !mymd !295

cond.end153:                                      ; preds = %cond.false152, %cond.true148
  %cond154 = phi ptr [ %arrayidx151, %cond.true148 ], [ null, %cond.false152 ], !mymd !296
  %82 = load i32, ptr @strstart, align 4, !mymd !297
  %conv155 = zext i32 %82 to i64, !mymd !298
  %83 = load i64, ptr @block_start, align 8, !mymd !299
  %sub156 = sub nsw i64 %conv155, %83, !mymd !300
  %84 = load i32, ptr %flush, align 4, !mymd !301
  %sub157 = sub nsw i32 %84, 1, !mymd !302
  %call158 = call i64 @flush_block(ptr noundef %cond154, i64 noundef %sub156, i32 noundef %sub157, i32 noundef 0), !mymd !303
  %85 = load i32, ptr @strstart, align 4, !mymd !304
  %conv159 = zext i32 %85 to i64, !mymd !305
  store i64 %conv159, ptr @block_start, align 8, !mymd !306
  br label %if.end160, !mymd !307

if.end160:                                        ; preds = %cond.end153, %land.lhs.true141, %if.else139
  store i32 1, ptr %match_available, align 4, !mymd !308
  br label %do.body161, !mymd !309

do.body161:                                       ; preds = %if.end160
  %86 = load i32, ptr @rsync, align 4, !mymd !310
  %tobool162 = icmp ne i32 %86, 0, !mymd !311
  br i1 %tobool162, label %if.then163, label %if.end164, !mymd !312

if.then163:                                       ; preds = %do.body161
  %87 = load i32, ptr @strstart, align 4, !mymd !313
  call void @rsync_roll(i32 noundef %87, i32 noundef 1), !mymd !314
  br label %if.end164, !mymd !315

if.end164:                                        ; preds = %if.then163, %do.body161
  br label %do.end166, !mymd !316

do.end166:                                        ; preds = %if.end164
  %88 = load i32, ptr @strstart, align 4, !mymd !317
  %inc167 = add i32 %88, 1, !mymd !318
  store i32 %inc167, ptr @strstart, align 4, !mymd !319
  %89 = load i32, ptr @lookahead, align 4, !mymd !320
  %dec168 = add i32 %89, -1, !mymd !321
  store i32 %dec168, ptr @lookahead, align 4, !mymd !322
  br label %if.end169, !mymd !323

if.end169:                                        ; preds = %do.end166, %do.end136
  br label %if.end170, !mymd !324

if.end170:                                        ; preds = %if.end169, %if.end99
  br label %while.cond171, !mymd !325

while.cond171:                                    ; preds = %while.body175, %if.end170
  %90 = load i32, ptr @lookahead, align 4, !mymd !326
  %cmp172 = icmp ult i32 %90, 262, !mymd !327
  br i1 %cmp172, label %land.rhs, label %land.end, !mymd !328

land.rhs:                                         ; preds = %while.cond171
  %91 = load i32, ptr @eofile, align 4, !mymd !329
  %tobool174 = icmp ne i32 %91, 0, !mymd !330
  %lnot = xor i1 %tobool174, true, !mymd !331
  br label %land.end, !mymd !332

land.end:                                         ; preds = %land.rhs, %while.cond171
  %92 = phi i1 [ false, %while.cond171 ], [ %lnot, %land.rhs ], !mymd !333
  br i1 %92, label %while.body175, label %while.end, !mymd !334

while.body175:                                    ; preds = %land.end
  call void @fill_window(), !mymd !335
  br label %while.cond171, !llvm.loop !336, !mymd !337

while.end:                                        ; preds = %land.end
  br label %while.cond, !llvm.loop !338, !mymd !339

while.end176:                                     ; preds = %while.cond
  %93 = load i32, ptr %match_available, align 4, !mymd !340
  %tobool177 = icmp ne i32 %93, 0, !mymd !341
  br i1 %tobool177, label %if.then178, label %if.end184, !mymd !342

if.then178:                                       ; preds = %while.end176
  %94 = load i32, ptr @strstart, align 4, !mymd !343
  %sub179 = sub i32 %94, 1, !mymd !344
  %idxprom180 = zext i32 %sub179 to i64, !mymd !345
  %arrayidx181 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom180, !mymd !346
  %95 = load i8, ptr %arrayidx181, align 1, !mymd !347
  %conv182 = zext i8 %95 to i32, !mymd !348
  %call183 = call i32 @ct_tally(i32 noundef 0, i32 noundef %conv182), !mymd !349
  br label %if.end184, !mymd !350

if.end184:                                        ; preds = %if.then178, %while.end176
  %96 = load i64, ptr @block_start, align 8, !mymd !351
  %cmp185 = icmp sge i64 %96, 0, !mymd !352
  br i1 %cmp185, label %cond.true187, label %cond.false191, !mymd !353

cond.true187:                                     ; preds = %if.end184
  %97 = load i64, ptr @block_start, align 8, !mymd !354
  %conv188 = trunc i64 %97 to i32, !mymd !355
  %idxprom189 = zext i32 %conv188 to i64, !mymd !356
  %arrayidx190 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom189, !mymd !357
  br label %cond.end192, !mymd !358

cond.false191:                                    ; preds = %if.end184
  br label %cond.end192, !mymd !359

cond.end192:                                      ; preds = %cond.false191, %cond.true187
  %cond193 = phi ptr [ %arrayidx190, %cond.true187 ], [ null, %cond.false191 ], !mymd !360
  %98 = load i32, ptr @strstart, align 4, !mymd !361
  %conv194 = zext i32 %98 to i64, !mymd !362
  %99 = load i64, ptr @block_start, align 8, !mymd !363
  %sub195 = sub nsw i64 %conv194, %99, !mymd !364
  %100 = load i32, ptr %flush, align 4, !mymd !365
  %sub196 = sub nsw i32 %100, 1, !mymd !366
  %call197 = call i64 @flush_block(ptr noundef %cond193, i64 noundef %sub195, i32 noundef %sub196, i32 noundef 1), !mymd !367
  store i64 %call197, ptr %retval, align 8, !mymd !368
  br label %return, !mymd !369

return:                                           ; preds = %cond.end192, %if.then
  %101 = load i64, ptr %retval, align 8, !mymd !370
  ret i64 %101, !mymd !371
}

; Function Attrs: noinline nounwind uwtable
declare hidden i64 @deflate_fast() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @ct_tally(i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @rsync_roll(i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i64 @flush_block(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"956"}
!7 = !{!"957"}
!8 = !{!"958"}
!9 = !{!"959"}
!10 = !{!"960"}
!11 = !{!"961"}
!12 = !{!"962"}
!13 = !{!"963"}
!14 = !{!"964"}
!15 = !{!"965"}
!16 = !{!"966"}
!17 = !{!"967"}
!18 = !{!"968"}
!19 = !{!"969"}
!20 = !{!"970"}
!21 = !{!"971"}
!22 = !{!"972"}
!23 = !{!"973"}
!24 = !{!"974"}
!25 = !{!"975"}
!26 = !{!"976"}
!27 = !{!"977"}
!28 = !{!"978"}
!29 = !{!"979"}
!30 = !{!"980"}
!31 = !{!"981"}
!32 = !{!"982"}
!33 = !{!"983"}
!34 = !{!"984"}
!35 = !{!"985"}
!36 = !{!"986"}
!37 = !{!"987"}
!38 = !{!"988"}
!39 = !{!"989"}
!40 = !{!"990"}
!41 = !{!"991"}
!42 = !{!"992"}
!43 = !{!"993"}
!44 = !{!"994"}
!45 = !{!"995"}
!46 = !{!"996"}
!47 = !{!"997"}
!48 = !{!"998"}
!49 = !{!"999"}
!50 = !{!"1000"}
!51 = !{!"1001"}
!52 = !{!"1002"}
!53 = !{!"1003"}
!54 = !{!"1004"}
!55 = !{!"1005"}
!56 = !{!"1006"}
!57 = !{!"1007"}
!58 = !{!"1008"}
!59 = !{!"1009"}
!60 = !{!"1010"}
!61 = !{!"1011"}
!62 = !{!"1012"}
!63 = !{!"1013"}
!64 = !{!"1014"}
!65 = !{!"1015"}
!66 = !{!"1016"}
!67 = !{!"1017"}
!68 = !{!"1018"}
!69 = !{!"1019"}
!70 = !{!"1020"}
!71 = !{!"1021"}
!72 = !{!"1022"}
!73 = !{!"1023"}
!74 = !{!"1024"}
!75 = !{!"1025"}
!76 = !{!"1026"}
!77 = !{!"1027"}
!78 = !{!"1028"}
!79 = !{!"1029"}
!80 = !{!"1030"}
!81 = !{!"1031"}
!82 = !{!"1032"}
!83 = !{!"1033"}
!84 = !{!"1034"}
!85 = !{!"1035"}
!86 = !{!"1036"}
!87 = !{!"1037"}
!88 = !{!"1038"}
!89 = !{!"1039"}
!90 = !{!"1040"}
!91 = !{!"1041"}
!92 = !{!"1042"}
!93 = !{!"1043"}
!94 = !{!"1044"}
!95 = !{!"1045"}
!96 = !{!"1046"}
!97 = !{!"1047"}
!98 = !{!"1048"}
!99 = !{!"1049"}
!100 = !{!"1050"}
!101 = !{!"1051"}
!102 = !{!"1052"}
!103 = !{!"1053"}
!104 = !{!"1054"}
!105 = !{!"1055"}
!106 = !{!"1056"}
!107 = !{!"1057"}
!108 = !{!"1058"}
!109 = !{!"1059"}
!110 = !{!"1060"}
!111 = !{!"1061"}
!112 = !{!"1062"}
!113 = !{!"1063"}
!114 = !{!"1064"}
!115 = !{!"1065"}
!116 = !{!"1066"}
!117 = !{!"1067"}
!118 = !{!"1068"}
!119 = !{!"1069"}
!120 = !{!"1070"}
!121 = !{!"1071"}
!122 = !{!"1072"}
!123 = !{!"1073"}
!124 = !{!"1074"}
!125 = !{!"1075"}
!126 = !{!"1076"}
!127 = !{!"1077"}
!128 = !{!"1078"}
!129 = !{!"1079"}
!130 = !{!"1080"}
!131 = !{!"1081"}
!132 = !{!"1082"}
!133 = !{!"1083"}
!134 = !{!"1084"}
!135 = !{!"1085"}
!136 = !{!"1086"}
!137 = !{!"1087"}
!138 = !{!"1088"}
!139 = !{!"1089"}
!140 = !{!"1090"}
!141 = !{!"1091"}
!142 = !{!"1092"}
!143 = !{!"1093"}
!144 = !{!"1094"}
!145 = !{!"1095"}
!146 = !{!"1096"}
!147 = !{!"1097"}
!148 = !{!"1098"}
!149 = !{!"1099"}
!150 = !{!"1100"}
!151 = !{!"1101"}
!152 = !{!"1102"}
!153 = !{!"1103"}
!154 = !{!"1104"}
!155 = !{!"1105"}
!156 = !{!"1106"}
!157 = !{!"1107"}
!158 = !{!"1108"}
!159 = !{!"1109"}
!160 = !{!"1110"}
!161 = !{!"1111"}
!162 = !{!"1112"}
!163 = !{!"1113"}
!164 = !{!"1114"}
!165 = !{!"1115"}
!166 = !{!"1116"}
!167 = !{!"1117"}
!168 = !{!"1118"}
!169 = !{!"1119"}
!170 = !{!"1120"}
!171 = !{!"1121"}
!172 = distinct !{!172, !173}
!173 = !{!"llvm.loop.mustprogress"}
!174 = !{!"1122"}
!175 = !{!"1123"}
!176 = !{!"1124"}
!177 = !{!"1125"}
!178 = !{!"1126"}
!179 = !{!"1127"}
!180 = !{!"1128"}
!181 = !{!"1129"}
!182 = !{!"1130"}
!183 = !{!"1131"}
!184 = !{!"1132"}
!185 = !{!"1133"}
!186 = !{!"1134"}
!187 = !{!"1135"}
!188 = !{!"1136"}
!189 = !{!"1137"}
!190 = !{!"1138"}
!191 = !{!"1139"}
!192 = !{!"1140"}
!193 = !{!"1141"}
!194 = !{!"1142"}
!195 = !{!"1143"}
!196 = !{!"1144"}
!197 = !{!"1145"}
!198 = !{!"1146"}
!199 = !{!"1147"}
!200 = !{!"1148"}
!201 = !{!"1149"}
!202 = !{!"1150"}
!203 = !{!"1151"}
!204 = !{!"1152"}
!205 = !{!"1153"}
!206 = !{!"1154"}
!207 = !{!"1155"}
!208 = !{!"1156"}
!209 = !{!"1157"}
!210 = !{!"1158"}
!211 = !{!"1159"}
!212 = !{!"1160"}
!213 = !{!"1161"}
!214 = !{!"1162"}
!215 = !{!"1163"}
!216 = !{!"1164"}
!217 = !{!"1165"}
!218 = !{!"1166"}
!219 = !{!"1167"}
!220 = !{!"1168"}
!221 = !{!"1169"}
!222 = !{!"1170"}
!223 = !{!"1171"}
!224 = !{!"1172"}
!225 = !{!"1173"}
!226 = !{!"1174"}
!227 = !{!"1175"}
!228 = !{!"1176"}
!229 = !{!"1177"}
!230 = !{!"1178"}
!231 = !{!"1179"}
!232 = !{!"1180"}
!233 = !{!"1181"}
!234 = !{!"1182"}
!235 = !{!"1183"}
!236 = !{!"1184"}
!237 = !{!"1185"}
!238 = !{!"1186"}
!239 = !{!"1187"}
!240 = !{!"1188"}
!241 = !{!"1189"}
!242 = !{!"1190"}
!243 = !{!"1191"}
!244 = !{!"1192"}
!245 = !{!"1193"}
!246 = !{!"1194"}
!247 = !{!"1195"}
!248 = !{!"1196"}
!249 = !{!"1197"}
!250 = !{!"1198"}
!251 = !{!"1199"}
!252 = !{!"1200"}
!253 = !{!"1201"}
!254 = !{!"1202"}
!255 = !{!"1203"}
!256 = !{!"1204"}
!257 = !{!"1205"}
!258 = !{!"1206"}
!259 = !{!"1207"}
!260 = !{!"1208"}
!261 = !{!"1209"}
!262 = !{!"1210"}
!263 = !{!"1211"}
!264 = !{!"1212"}
!265 = !{!"1213"}
!266 = !{!"1214"}
!267 = !{!"1215"}
!268 = !{!"1216"}
!269 = !{!"1217"}
!270 = !{!"1218"}
!271 = !{!"1219"}
!272 = !{!"1220"}
!273 = !{!"1221"}
!274 = !{!"1222"}
!275 = !{!"1223"}
!276 = !{!"1224"}
!277 = !{!"1225"}
!278 = !{!"1226"}
!279 = !{!"1227"}
!280 = !{!"1228"}
!281 = !{!"1229"}
!282 = !{!"1230"}
!283 = !{!"1231"}
!284 = !{!"1232"}
!285 = !{!"1233"}
!286 = !{!"1234"}
!287 = !{!"1235"}
!288 = !{!"1236"}
!289 = !{!"1237"}
!290 = !{!"1238"}
!291 = !{!"1239"}
!292 = !{!"1240"}
!293 = !{!"1241"}
!294 = !{!"1242"}
!295 = !{!"1243"}
!296 = !{!"1244"}
!297 = !{!"1245"}
!298 = !{!"1246"}
!299 = !{!"1247"}
!300 = !{!"1248"}
!301 = !{!"1249"}
!302 = !{!"1250"}
!303 = !{!"1251"}
!304 = !{!"1252"}
!305 = !{!"1253"}
!306 = !{!"1254"}
!307 = !{!"1255"}
!308 = !{!"1256"}
!309 = !{!"1257"}
!310 = !{!"1258"}
!311 = !{!"1259"}
!312 = !{!"1260"}
!313 = !{!"1261"}
!314 = !{!"1262"}
!315 = !{!"1263"}
!316 = !{!"1264"}
!317 = !{!"1265"}
!318 = !{!"1266"}
!319 = !{!"1267"}
!320 = !{!"1268"}
!321 = !{!"1269"}
!322 = !{!"1270"}
!323 = !{!"1271"}
!324 = !{!"1272"}
!325 = !{!"1273"}
!326 = !{!"1274"}
!327 = !{!"1275"}
!328 = !{!"1276"}
!329 = !{!"1277"}
!330 = !{!"1278"}
!331 = !{!"1279"}
!332 = !{!"1280"}
!333 = !{!"1281"}
!334 = !{!"1282"}
!335 = !{!"1283"}
!336 = distinct !{!336, !173}
!337 = !{!"1284"}
!338 = distinct !{!338, !173}
!339 = !{!"1285"}
!340 = !{!"1286"}
!341 = !{!"1287"}
!342 = !{!"1288"}
!343 = !{!"1289"}
!344 = !{!"1290"}
!345 = !{!"1291"}
!346 = !{!"1292"}
!347 = !{!"1293"}
!348 = !{!"1294"}
!349 = !{!"1295"}
!350 = !{!"1296"}
!351 = !{!"1297"}
!352 = !{!"1298"}
!353 = !{!"1299"}
!354 = !{!"1300"}
!355 = !{!"1301"}
!356 = !{!"1302"}
!357 = !{!"1303"}
!358 = !{!"1304"}
!359 = !{!"1305"}
!360 = !{!"1306"}
!361 = !{!"1307"}
!362 = !{!"1308"}
!363 = !{!"1309"}
!364 = !{!"1310"}
!365 = !{!"1311"}
!366 = !{!"1312"}
!367 = !{!"1313"}
!368 = !{!"1314"}
!369 = !{!"1315"}
!370 = !{!"1316"}
!371 = !{!"1317"}
