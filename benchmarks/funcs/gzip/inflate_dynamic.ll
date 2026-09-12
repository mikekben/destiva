; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huft = type { i8, i8, %union.anon }
%union.anon = type { ptr }

@outcnt = external dso_local global i32, align 4
@stderr = external global ptr, align 8
@mask_bits = external dso_local global [17 x i16], align 16
@lbits = external dso_local global i32, align 4
@dbits = external dso_local global i32, align 4
@bb = external dso_local global i64, align 8
@bk = external dso_local global i32, align 4
@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@cplens = external hidden global [31 x i16], align 16
@cplext = external hidden global [31 x i16], align 16
@cpdist = external hidden global [30 x i16], align 16
@cpdext = external hidden global [30 x i16], align 16
@border = external hidden global [19 x i32], align 16
@.str.50 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.51 = external hidden unnamed_addr constant [27 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @huft_build(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @huft_free(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @inflate_codes(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fill_inbuf(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @inflate_dynamic() #1 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %i = alloca i32, align 4, !mymd !7
  %j = alloca i32, align 4, !mymd !8
  %l = alloca i32, align 4, !mymd !9
  %m = alloca i32, align 4, !mymd !10
  %n = alloca i32, align 4, !mymd !11
  %w = alloca i32, align 4, !mymd !12
  %tl = alloca ptr, align 8, !mymd !13
  %td = alloca ptr, align 8, !mymd !14
  %bl = alloca i32, align 4, !mymd !15
  %bd = alloca i32, align 4, !mymd !16
  %nb = alloca i32, align 4, !mymd !17
  %nl = alloca i32, align 4, !mymd !18
  %nd = alloca i32, align 4, !mymd !19
  %ll = alloca [316 x i32], align 16, !mymd !20
  %b = alloca i64, align 8, !mymd !21
  %k = alloca i32, align 4, !mymd !22
  %0 = load i64, ptr @bb, align 8, !mymd !23
  store i64 %0, ptr %b, align 8, !mymd !24
  %1 = load i32, ptr @bk, align 4, !mymd !25
  store i32 %1, ptr %k, align 4, !mymd !26
  %2 = load i32, ptr @outcnt, align 4, !mymd !27
  store i32 %2, ptr %w, align 4, !mymd !28
  br label %while.cond, !mymd !29

while.cond:                                       ; preds = %cond.end, %entry
  %3 = load i32, ptr %k, align 4, !mymd !30
  %cmp = icmp ult i32 %3, 5, !mymd !31
  br i1 %cmp, label %while.body, label %while.end, !mymd !32

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr @inptr, align 4, !mymd !33
  %5 = load i32, ptr @insize, align 4, !mymd !34
  %cmp1 = icmp ult i32 %4, %5, !mymd !35
  br i1 %cmp1, label %cond.true, label %cond.false, !mymd !36

cond.true:                                        ; preds = %while.body
  %6 = load i32, ptr @inptr, align 4, !mymd !37
  %inc = add i32 %6, 1, !mymd !38
  store i32 %inc, ptr @inptr, align 4, !mymd !39
  %idxprom = zext i32 %6 to i64, !mymd !40
  %arrayidx = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom, !mymd !41
  %7 = load i8, ptr %arrayidx, align 1, !mymd !42
  %conv = zext i8 %7 to i32, !mymd !43
  br label %cond.end, !mymd !44

cond.false:                                       ; preds = %while.body
  %8 = load i32, ptr %w, align 4, !mymd !45
  store i32 %8, ptr @outcnt, align 4, !mymd !46
  %call = call i32 @fill_inbuf(i32 noundef 0), !mymd !47
  br label %cond.end, !mymd !48

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ], !mymd !49
  %conv2 = trunc i32 %cond to i8, !mymd !50
  %conv3 = zext i8 %conv2 to i64, !mymd !51
  %9 = load i32, ptr %k, align 4, !mymd !52
  %sh_prom = zext i32 %9 to i64, !mymd !53
  %shl = shl i64 %conv3, %sh_prom, !mymd !54
  %10 = load i64, ptr %b, align 8, !mymd !55
  %or = or i64 %10, %shl, !mymd !56
  store i64 %or, ptr %b, align 8, !mymd !57
  %11 = load i32, ptr %k, align 4, !mymd !58
  %add = add i32 %11, 8, !mymd !59
  store i32 %add, ptr %k, align 4, !mymd !60
  br label %while.cond, !llvm.loop !61, !mymd !63

while.end:                                        ; preds = %while.cond
  %12 = load i64, ptr %b, align 8, !mymd !64
  %conv4 = trunc i64 %12 to i32, !mymd !65
  %and = and i32 %conv4, 31, !mymd !66
  %add5 = add i32 257, %and, !mymd !67
  store i32 %add5, ptr %nl, align 4, !mymd !68
  %13 = load i64, ptr %b, align 8, !mymd !69
  %shr = lshr i64 %13, 5, !mymd !70
  store i64 %shr, ptr %b, align 8, !mymd !71
  %14 = load i32, ptr %k, align 4, !mymd !72
  %sub = sub i32 %14, 5, !mymd !73
  store i32 %sub, ptr %k, align 4, !mymd !74
  br label %while.cond6, !mymd !75

while.cond6:                                      ; preds = %cond.end19, %while.end
  %15 = load i32, ptr %k, align 4, !mymd !76
  %cmp7 = icmp ult i32 %15, 5, !mymd !77
  br i1 %cmp7, label %while.body9, label %while.end27, !mymd !78

while.body9:                                      ; preds = %while.cond6
  %16 = load i32, ptr @inptr, align 4, !mymd !79
  %17 = load i32, ptr @insize, align 4, !mymd !80
  %cmp10 = icmp ult i32 %16, %17, !mymd !81
  br i1 %cmp10, label %cond.true12, label %cond.false17, !mymd !82

cond.true12:                                      ; preds = %while.body9
  %18 = load i32, ptr @inptr, align 4, !mymd !83
  %inc13 = add i32 %18, 1, !mymd !84
  store i32 %inc13, ptr @inptr, align 4, !mymd !85
  %idxprom14 = zext i32 %18 to i64, !mymd !86
  %arrayidx15 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom14, !mymd !87
  %19 = load i8, ptr %arrayidx15, align 1, !mymd !88
  %conv16 = zext i8 %19 to i32, !mymd !89
  br label %cond.end19, !mymd !90

cond.false17:                                     ; preds = %while.body9
  %20 = load i32, ptr %w, align 4, !mymd !91
  store i32 %20, ptr @outcnt, align 4, !mymd !92
  %call18 = call i32 @fill_inbuf(i32 noundef 0), !mymd !93
  br label %cond.end19, !mymd !94

cond.end19:                                       ; preds = %cond.false17, %cond.true12
  %cond20 = phi i32 [ %conv16, %cond.true12 ], [ %call18, %cond.false17 ], !mymd !95
  %conv21 = trunc i32 %cond20 to i8, !mymd !96
  %conv22 = zext i8 %conv21 to i64, !mymd !97
  %21 = load i32, ptr %k, align 4, !mymd !98
  %sh_prom23 = zext i32 %21 to i64, !mymd !99
  %shl24 = shl i64 %conv22, %sh_prom23, !mymd !100
  %22 = load i64, ptr %b, align 8, !mymd !101
  %or25 = or i64 %22, %shl24, !mymd !102
  store i64 %or25, ptr %b, align 8, !mymd !103
  %23 = load i32, ptr %k, align 4, !mymd !104
  %add26 = add i32 %23, 8, !mymd !105
  store i32 %add26, ptr %k, align 4, !mymd !106
  br label %while.cond6, !llvm.loop !107, !mymd !108

while.end27:                                      ; preds = %while.cond6
  %24 = load i64, ptr %b, align 8, !mymd !109
  %conv28 = trunc i64 %24 to i32, !mymd !110
  %and29 = and i32 %conv28, 31, !mymd !111
  %add30 = add i32 1, %and29, !mymd !112
  store i32 %add30, ptr %nd, align 4, !mymd !113
  %25 = load i64, ptr %b, align 8, !mymd !114
  %shr31 = lshr i64 %25, 5, !mymd !115
  store i64 %shr31, ptr %b, align 8, !mymd !116
  %26 = load i32, ptr %k, align 4, !mymd !117
  %sub32 = sub i32 %26, 5, !mymd !118
  store i32 %sub32, ptr %k, align 4, !mymd !119
  br label %while.cond33, !mymd !120

while.cond33:                                     ; preds = %cond.end46, %while.end27
  %27 = load i32, ptr %k, align 4, !mymd !121
  %cmp34 = icmp ult i32 %27, 4, !mymd !122
  br i1 %cmp34, label %while.body36, label %while.end54, !mymd !123

while.body36:                                     ; preds = %while.cond33
  %28 = load i32, ptr @inptr, align 4, !mymd !124
  %29 = load i32, ptr @insize, align 4, !mymd !125
  %cmp37 = icmp ult i32 %28, %29, !mymd !126
  br i1 %cmp37, label %cond.true39, label %cond.false44, !mymd !127

cond.true39:                                      ; preds = %while.body36
  %30 = load i32, ptr @inptr, align 4, !mymd !128
  %inc40 = add i32 %30, 1, !mymd !129
  store i32 %inc40, ptr @inptr, align 4, !mymd !130
  %idxprom41 = zext i32 %30 to i64, !mymd !131
  %arrayidx42 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom41, !mymd !132
  %31 = load i8, ptr %arrayidx42, align 1, !mymd !133
  %conv43 = zext i8 %31 to i32, !mymd !134
  br label %cond.end46, !mymd !135

cond.false44:                                     ; preds = %while.body36
  %32 = load i32, ptr %w, align 4, !mymd !136
  store i32 %32, ptr @outcnt, align 4, !mymd !137
  %call45 = call i32 @fill_inbuf(i32 noundef 0), !mymd !138
  br label %cond.end46, !mymd !139

cond.end46:                                       ; preds = %cond.false44, %cond.true39
  %cond47 = phi i32 [ %conv43, %cond.true39 ], [ %call45, %cond.false44 ], !mymd !140
  %conv48 = trunc i32 %cond47 to i8, !mymd !141
  %conv49 = zext i8 %conv48 to i64, !mymd !142
  %33 = load i32, ptr %k, align 4, !mymd !143
  %sh_prom50 = zext i32 %33 to i64, !mymd !144
  %shl51 = shl i64 %conv49, %sh_prom50, !mymd !145
  %34 = load i64, ptr %b, align 8, !mymd !146
  %or52 = or i64 %34, %shl51, !mymd !147
  store i64 %or52, ptr %b, align 8, !mymd !148
  %35 = load i32, ptr %k, align 4, !mymd !149
  %add53 = add i32 %35, 8, !mymd !150
  store i32 %add53, ptr %k, align 4, !mymd !151
  br label %while.cond33, !llvm.loop !152, !mymd !153

while.end54:                                      ; preds = %while.cond33
  %36 = load i64, ptr %b, align 8, !mymd !154
  %conv55 = trunc i64 %36 to i32, !mymd !155
  %and56 = and i32 %conv55, 15, !mymd !156
  %add57 = add i32 4, %and56, !mymd !157
  store i32 %add57, ptr %nb, align 4, !mymd !158
  %37 = load i64, ptr %b, align 8, !mymd !159
  %shr58 = lshr i64 %37, 4, !mymd !160
  store i64 %shr58, ptr %b, align 8, !mymd !161
  %38 = load i32, ptr %k, align 4, !mymd !162
  %sub59 = sub i32 %38, 4, !mymd !163
  store i32 %sub59, ptr %k, align 4, !mymd !164
  %39 = load i32, ptr %nl, align 4, !mymd !165
  %cmp60 = icmp ugt i32 %39, 286, !mymd !166
  br i1 %cmp60, label %if.then, label %lor.lhs.false, !mymd !167

lor.lhs.false:                                    ; preds = %while.end54
  %40 = load i32, ptr %nd, align 4, !mymd !168
  %cmp62 = icmp ugt i32 %40, 30, !mymd !169
  br i1 %cmp62, label %if.then, label %if.end, !mymd !170

if.then:                                          ; preds = %lor.lhs.false, %while.end54
  store i32 1, ptr %retval, align 4, !mymd !171
  br label %return, !mymd !172

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %j, align 4, !mymd !173
  br label %for.cond, !mymd !174

for.cond:                                         ; preds = %for.inc, %if.end
  %41 = load i32, ptr %j, align 4, !mymd !175
  %42 = load i32, ptr %nb, align 4, !mymd !176
  %cmp64 = icmp ult i32 %41, %42, !mymd !177
  br i1 %cmp64, label %for.body, label %for.end, !mymd !178

for.body:                                         ; preds = %for.cond
  br label %while.cond66, !mymd !179

while.cond66:                                     ; preds = %cond.end79, %for.body
  %43 = load i32, ptr %k, align 4, !mymd !180
  %cmp67 = icmp ult i32 %43, 3, !mymd !181
  br i1 %cmp67, label %while.body69, label %while.end87, !mymd !182

while.body69:                                     ; preds = %while.cond66
  %44 = load i32, ptr @inptr, align 4, !mymd !183
  %45 = load i32, ptr @insize, align 4, !mymd !184
  %cmp70 = icmp ult i32 %44, %45, !mymd !185
  br i1 %cmp70, label %cond.true72, label %cond.false77, !mymd !186

cond.true72:                                      ; preds = %while.body69
  %46 = load i32, ptr @inptr, align 4, !mymd !187
  %inc73 = add i32 %46, 1, !mymd !188
  store i32 %inc73, ptr @inptr, align 4, !mymd !189
  %idxprom74 = zext i32 %46 to i64, !mymd !190
  %arrayidx75 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom74, !mymd !191
  %47 = load i8, ptr %arrayidx75, align 1, !mymd !192
  %conv76 = zext i8 %47 to i32, !mymd !193
  br label %cond.end79, !mymd !194

cond.false77:                                     ; preds = %while.body69
  %48 = load i32, ptr %w, align 4, !mymd !195
  store i32 %48, ptr @outcnt, align 4, !mymd !196
  %call78 = call i32 @fill_inbuf(i32 noundef 0), !mymd !197
  br label %cond.end79, !mymd !198

cond.end79:                                       ; preds = %cond.false77, %cond.true72
  %cond80 = phi i32 [ %conv76, %cond.true72 ], [ %call78, %cond.false77 ], !mymd !199
  %conv81 = trunc i32 %cond80 to i8, !mymd !200
  %conv82 = zext i8 %conv81 to i64, !mymd !201
  %49 = load i32, ptr %k, align 4, !mymd !202
  %sh_prom83 = zext i32 %49 to i64, !mymd !203
  %shl84 = shl i64 %conv82, %sh_prom83, !mymd !204
  %50 = load i64, ptr %b, align 8, !mymd !205
  %or85 = or i64 %50, %shl84, !mymd !206
  store i64 %or85, ptr %b, align 8, !mymd !207
  %51 = load i32, ptr %k, align 4, !mymd !208
  %add86 = add i32 %51, 8, !mymd !209
  store i32 %add86, ptr %k, align 4, !mymd !210
  br label %while.cond66, !llvm.loop !211, !mymd !212

while.end87:                                      ; preds = %while.cond66
  %52 = load i64, ptr %b, align 8, !mymd !213
  %conv88 = trunc i64 %52 to i32, !mymd !214
  %and89 = and i32 %conv88, 7, !mymd !215
  %53 = load i32, ptr %j, align 4, !mymd !216
  %idxprom90 = zext i32 %53 to i64, !mymd !217
  %arrayidx91 = getelementptr inbounds nuw [19 x i32], ptr @border, i64 0, i64 %idxprom90, !mymd !218
  %54 = load i32, ptr %arrayidx91, align 4, !mymd !219
  %idxprom92 = zext i32 %54 to i64, !mymd !220
  %arrayidx93 = getelementptr inbounds nuw [316 x i32], ptr %ll, i64 0, i64 %idxprom92, !mymd !221
  store i32 %and89, ptr %arrayidx93, align 4, !mymd !222
  %55 = load i64, ptr %b, align 8, !mymd !223
  %shr94 = lshr i64 %55, 3, !mymd !224
  store i64 %shr94, ptr %b, align 8, !mymd !225
  %56 = load i32, ptr %k, align 4, !mymd !226
  %sub95 = sub i32 %56, 3, !mymd !227
  store i32 %sub95, ptr %k, align 4, !mymd !228
  br label %for.inc, !mymd !229

for.inc:                                          ; preds = %while.end87
  %57 = load i32, ptr %j, align 4, !mymd !230
  %inc96 = add i32 %57, 1, !mymd !231
  store i32 %inc96, ptr %j, align 4, !mymd !232
  br label %for.cond, !llvm.loop !233, !mymd !234

for.end:                                          ; preds = %for.cond
  br label %for.cond97, !mymd !235

for.cond97:                                       ; preds = %for.inc105, %for.end
  %58 = load i32, ptr %j, align 4, !mymd !236
  %cmp98 = icmp ult i32 %58, 19, !mymd !237
  br i1 %cmp98, label %for.body100, label %for.end107, !mymd !238

for.body100:                                      ; preds = %for.cond97
  %59 = load i32, ptr %j, align 4, !mymd !239
  %idxprom101 = zext i32 %59 to i64, !mymd !240
  %arrayidx102 = getelementptr inbounds nuw [19 x i32], ptr @border, i64 0, i64 %idxprom101, !mymd !241
  %60 = load i32, ptr %arrayidx102, align 4, !mymd !242
  %idxprom103 = zext i32 %60 to i64, !mymd !243
  %arrayidx104 = getelementptr inbounds nuw [316 x i32], ptr %ll, i64 0, i64 %idxprom103, !mymd !244
  store i32 0, ptr %arrayidx104, align 4, !mymd !245
  br label %for.inc105, !mymd !246

for.inc105:                                       ; preds = %for.body100
  %61 = load i32, ptr %j, align 4, !mymd !247
  %inc106 = add i32 %61, 1, !mymd !248
  store i32 %inc106, ptr %j, align 4, !mymd !249
  br label %for.cond97, !llvm.loop !250, !mymd !251

for.end107:                                       ; preds = %for.cond97
  store i32 7, ptr %bl, align 4, !mymd !252
  %arraydecay = getelementptr inbounds [316 x i32], ptr %ll, i64 0, i64 0, !mymd !253
  %call108 = call i32 @huft_build(ptr noundef %arraydecay, i32 noundef 19, i32 noundef 19, ptr noundef null, ptr noundef null, ptr noundef %tl, ptr noundef %bl), !mymd !254
  store i32 %call108, ptr %i, align 4, !mymd !255
  %cmp109 = icmp ne i32 %call108, 0, !mymd !256
  br i1 %cmp109, label %if.then111, label %if.end117, !mymd !257

if.then111:                                       ; preds = %for.end107
  %62 = load i32, ptr %i, align 4, !mymd !258
  %cmp112 = icmp eq i32 %62, 1, !mymd !259
  br i1 %cmp112, label %if.then114, label %if.end116, !mymd !260

if.then114:                                       ; preds = %if.then111
  %63 = load ptr, ptr %tl, align 8, !mymd !261
  %call115 = call i32 @huft_free(ptr noundef %63), !mymd !262
  br label %if.end116, !mymd !263

if.end116:                                        ; preds = %if.then114, %if.then111
  %64 = load i32, ptr %i, align 4, !mymd !264
  store i32 %64, ptr %retval, align 4, !mymd !265
  br label %return, !mymd !266

if.end117:                                        ; preds = %for.end107
  %65 = load ptr, ptr %tl, align 8, !mymd !267
  %cmp118 = icmp eq ptr %65, null, !mymd !268
  br i1 %cmp118, label %if.then120, label %if.end121, !mymd !269

if.then120:                                       ; preds = %if.end117
  store i32 2, ptr %retval, align 4, !mymd !270
  br label %return, !mymd !271

if.end121:                                        ; preds = %if.end117
  %66 = load i32, ptr %nl, align 4, !mymd !272
  %67 = load i32, ptr %nd, align 4, !mymd !273
  %add122 = add i32 %66, %67, !mymd !274
  store i32 %add122, ptr %n, align 4, !mymd !275
  %68 = load i32, ptr %bl, align 4, !mymd !276
  %idxprom123 = sext i32 %68 to i64, !mymd !277
  %arrayidx124 = getelementptr inbounds [17 x i16], ptr @mask_bits, i64 0, i64 %idxprom123, !mymd !278
  %69 = load i16, ptr %arrayidx124, align 2, !mymd !279
  %conv125 = zext i16 %69 to i32, !mymd !280
  store i32 %conv125, ptr %m, align 4, !mymd !281
  store i32 0, ptr %l, align 4, !mymd !282
  store i32 0, ptr %i, align 4, !mymd !283
  br label %while.cond126, !mymd !284

while.cond126:                                    ; preds = %if.end294, %if.end121
  %70 = load i32, ptr %i, align 4, !mymd !285
  %71 = load i32, ptr %n, align 4, !mymd !286
  %cmp127 = icmp ult i32 %70, %71, !mymd !287
  br i1 %cmp127, label %while.body129, label %while.end295, !mymd !288

while.body129:                                    ; preds = %while.cond126
  br label %while.cond130, !mymd !289

while.cond130:                                    ; preds = %cond.end143, %while.body129
  %72 = load i32, ptr %k, align 4, !mymd !290
  %73 = load i32, ptr %bl, align 4, !mymd !291
  %cmp131 = icmp ult i32 %72, %73, !mymd !292
  br i1 %cmp131, label %while.body133, label %while.end151, !mymd !293

while.body133:                                    ; preds = %while.cond130
  %74 = load i32, ptr @inptr, align 4, !mymd !294
  %75 = load i32, ptr @insize, align 4, !mymd !295
  %cmp134 = icmp ult i32 %74, %75, !mymd !296
  br i1 %cmp134, label %cond.true136, label %cond.false141, !mymd !297

cond.true136:                                     ; preds = %while.body133
  %76 = load i32, ptr @inptr, align 4, !mymd !298
  %inc137 = add i32 %76, 1, !mymd !299
  store i32 %inc137, ptr @inptr, align 4, !mymd !300
  %idxprom138 = zext i32 %76 to i64, !mymd !301
  %arrayidx139 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom138, !mymd !302
  %77 = load i8, ptr %arrayidx139, align 1, !mymd !303
  %conv140 = zext i8 %77 to i32, !mymd !304
  br label %cond.end143, !mymd !305

cond.false141:                                    ; preds = %while.body133
  %78 = load i32, ptr %w, align 4, !mymd !306
  store i32 %78, ptr @outcnt, align 4, !mymd !307
  %call142 = call i32 @fill_inbuf(i32 noundef 0), !mymd !308
  br label %cond.end143, !mymd !309

cond.end143:                                      ; preds = %cond.false141, %cond.true136
  %cond144 = phi i32 [ %conv140, %cond.true136 ], [ %call142, %cond.false141 ], !mymd !310
  %conv145 = trunc i32 %cond144 to i8, !mymd !311
  %conv146 = zext i8 %conv145 to i64, !mymd !312
  %79 = load i32, ptr %k, align 4, !mymd !313
  %sh_prom147 = zext i32 %79 to i64, !mymd !314
  %shl148 = shl i64 %conv146, %sh_prom147, !mymd !315
  %80 = load i64, ptr %b, align 8, !mymd !316
  %or149 = or i64 %80, %shl148, !mymd !317
  store i64 %or149, ptr %b, align 8, !mymd !318
  %81 = load i32, ptr %k, align 4, !mymd !319
  %add150 = add i32 %81, 8, !mymd !320
  store i32 %add150, ptr %k, align 4, !mymd !321
  br label %while.cond130, !llvm.loop !322, !mymd !323

while.end151:                                     ; preds = %while.cond130
  %82 = load ptr, ptr %tl, align 8, !mymd !324
  %83 = load i64, ptr %b, align 8, !mymd !325
  %conv152 = trunc i64 %83 to i32, !mymd !326
  %84 = load i32, ptr %m, align 4, !mymd !327
  %and153 = and i32 %conv152, %84, !mymd !328
  %idx.ext = zext i32 %and153 to i64, !mymd !329
  %add.ptr = getelementptr inbounds nuw %struct.huft, ptr %82, i64 %idx.ext, !mymd !330
  store ptr %add.ptr, ptr %td, align 8, !mymd !331
  %b154 = getelementptr inbounds nuw %struct.huft, ptr %add.ptr, i32 0, i32 1, !mymd !332
  %85 = load i8, ptr %b154, align 1, !mymd !333
  %conv155 = zext i8 %85 to i32, !mymd !334
  store i32 %conv155, ptr %j, align 4, !mymd !335
  %86 = load i32, ptr %j, align 4, !mymd !336
  %87 = load i64, ptr %b, align 8, !mymd !337
  %sh_prom156 = zext i32 %86 to i64, !mymd !338
  %shr157 = lshr i64 %87, %sh_prom156, !mymd !339
  store i64 %shr157, ptr %b, align 8, !mymd !340
  %88 = load i32, ptr %j, align 4, !mymd !341
  %89 = load i32, ptr %k, align 4, !mymd !342
  %sub158 = sub i32 %89, %88, !mymd !343
  store i32 %sub158, ptr %k, align 4, !mymd !344
  %90 = load ptr, ptr %td, align 8, !mymd !345
  %v = getelementptr inbounds nuw %struct.huft, ptr %90, i32 0, i32 2, !mymd !346
  %91 = load i16, ptr %v, align 8, !mymd !347
  %conv159 = zext i16 %91 to i32, !mymd !348
  store i32 %conv159, ptr %j, align 4, !mymd !349
  %92 = load i32, ptr %j, align 4, !mymd !350
  %cmp160 = icmp ult i32 %92, 16, !mymd !351
  br i1 %cmp160, label %if.then162, label %if.else, !mymd !352

if.then162:                                       ; preds = %while.end151
  %93 = load i32, ptr %j, align 4, !mymd !353
  store i32 %93, ptr %l, align 4, !mymd !354
  %94 = load i32, ptr %i, align 4, !mymd !355
  %inc163 = add nsw i32 %94, 1, !mymd !356
  store i32 %inc163, ptr %i, align 4, !mymd !357
  %idxprom164 = sext i32 %94 to i64, !mymd !358
  %arrayidx165 = getelementptr inbounds [316 x i32], ptr %ll, i64 0, i64 %idxprom164, !mymd !359
  store i32 %93, ptr %arrayidx165, align 4, !mymd !360
  br label %if.end294, !mymd !361

if.else:                                          ; preds = %while.end151
  %95 = load i32, ptr %j, align 4, !mymd !362
  %cmp166 = icmp eq i32 %95, 16, !mymd !363
  br i1 %cmp166, label %if.then168, label %if.else207, !mymd !364

if.then168:                                       ; preds = %if.else
  br label %while.cond169, !mymd !365

while.cond169:                                    ; preds = %cond.end182, %if.then168
  %96 = load i32, ptr %k, align 4, !mymd !366
  %cmp170 = icmp ult i32 %96, 2, !mymd !367
  br i1 %cmp170, label %while.body172, label %while.end190, !mymd !368

while.body172:                                    ; preds = %while.cond169
  %97 = load i32, ptr @inptr, align 4, !mymd !369
  %98 = load i32, ptr @insize, align 4, !mymd !370
  %cmp173 = icmp ult i32 %97, %98, !mymd !371
  br i1 %cmp173, label %cond.true175, label %cond.false180, !mymd !372

cond.true175:                                     ; preds = %while.body172
  %99 = load i32, ptr @inptr, align 4, !mymd !373
  %inc176 = add i32 %99, 1, !mymd !374
  store i32 %inc176, ptr @inptr, align 4, !mymd !375
  %idxprom177 = zext i32 %99 to i64, !mymd !376
  %arrayidx178 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom177, !mymd !377
  %100 = load i8, ptr %arrayidx178, align 1, !mymd !378
  %conv179 = zext i8 %100 to i32, !mymd !379
  br label %cond.end182, !mymd !380

cond.false180:                                    ; preds = %while.body172
  %101 = load i32, ptr %w, align 4, !mymd !381
  store i32 %101, ptr @outcnt, align 4, !mymd !382
  %call181 = call i32 @fill_inbuf(i32 noundef 0), !mymd !383
  br label %cond.end182, !mymd !384

cond.end182:                                      ; preds = %cond.false180, %cond.true175
  %cond183 = phi i32 [ %conv179, %cond.true175 ], [ %call181, %cond.false180 ], !mymd !385
  %conv184 = trunc i32 %cond183 to i8, !mymd !386
  %conv185 = zext i8 %conv184 to i64, !mymd !387
  %102 = load i32, ptr %k, align 4, !mymd !388
  %sh_prom186 = zext i32 %102 to i64, !mymd !389
  %shl187 = shl i64 %conv185, %sh_prom186, !mymd !390
  %103 = load i64, ptr %b, align 8, !mymd !391
  %or188 = or i64 %103, %shl187, !mymd !392
  store i64 %or188, ptr %b, align 8, !mymd !393
  %104 = load i32, ptr %k, align 4, !mymd !394
  %add189 = add i32 %104, 8, !mymd !395
  store i32 %add189, ptr %k, align 4, !mymd !396
  br label %while.cond169, !llvm.loop !397, !mymd !398

while.end190:                                     ; preds = %while.cond169
  %105 = load i64, ptr %b, align 8, !mymd !399
  %conv191 = trunc i64 %105 to i32, !mymd !400
  %and192 = and i32 %conv191, 3, !mymd !401
  %add193 = add i32 3, %and192, !mymd !402
  store i32 %add193, ptr %j, align 4, !mymd !403
  %106 = load i64, ptr %b, align 8, !mymd !404
  %shr194 = lshr i64 %106, 2, !mymd !405
  store i64 %shr194, ptr %b, align 8, !mymd !406
  %107 = load i32, ptr %k, align 4, !mymd !407
  %sub195 = sub i32 %107, 2, !mymd !408
  store i32 %sub195, ptr %k, align 4, !mymd !409
  %108 = load i32, ptr %i, align 4, !mymd !410
  %109 = load i32, ptr %j, align 4, !mymd !411
  %add196 = add i32 %108, %109, !mymd !412
  %110 = load i32, ptr %n, align 4, !mymd !413
  %cmp197 = icmp ugt i32 %add196, %110, !mymd !414
  br i1 %cmp197, label %if.then199, label %if.end200, !mymd !415

if.then199:                                       ; preds = %while.end190
  store i32 1, ptr %retval, align 4, !mymd !416
  br label %return, !mymd !417

if.end200:                                        ; preds = %while.end190
  br label %while.cond201, !mymd !418

while.cond201:                                    ; preds = %while.body202, %if.end200
  %111 = load i32, ptr %j, align 4, !mymd !419
  %dec = add i32 %111, -1, !mymd !420
  store i32 %dec, ptr %j, align 4, !mymd !421
  %tobool = icmp ne i32 %111, 0, !mymd !422
  br i1 %tobool, label %while.body202, label %while.end206, !mymd !423

while.body202:                                    ; preds = %while.cond201
  %112 = load i32, ptr %l, align 4, !mymd !424
  %113 = load i32, ptr %i, align 4, !mymd !425
  %inc203 = add nsw i32 %113, 1, !mymd !426
  store i32 %inc203, ptr %i, align 4, !mymd !427
  %idxprom204 = sext i32 %113 to i64, !mymd !428
  %arrayidx205 = getelementptr inbounds [316 x i32], ptr %ll, i64 0, i64 %idxprom204, !mymd !429
  store i32 %112, ptr %arrayidx205, align 4, !mymd !430
  br label %while.cond201, !llvm.loop !431, !mymd !432

while.end206:                                     ; preds = %while.cond201
  br label %if.end293, !mymd !433

if.else207:                                       ; preds = %if.else
  %114 = load i32, ptr %j, align 4, !mymd !434
  %cmp208 = icmp eq i32 %114, 17, !mymd !435
  br i1 %cmp208, label %if.then210, label %if.else251, !mymd !436

if.then210:                                       ; preds = %if.else207
  br label %while.cond211, !mymd !437

while.cond211:                                    ; preds = %cond.end224, %if.then210
  %115 = load i32, ptr %k, align 4, !mymd !438
  %cmp212 = icmp ult i32 %115, 3, !mymd !439
  br i1 %cmp212, label %while.body214, label %while.end232, !mymd !440

while.body214:                                    ; preds = %while.cond211
  %116 = load i32, ptr @inptr, align 4, !mymd !441
  %117 = load i32, ptr @insize, align 4, !mymd !442
  %cmp215 = icmp ult i32 %116, %117, !mymd !443
  br i1 %cmp215, label %cond.true217, label %cond.false222, !mymd !444

cond.true217:                                     ; preds = %while.body214
  %118 = load i32, ptr @inptr, align 4, !mymd !445
  %inc218 = add i32 %118, 1, !mymd !446
  store i32 %inc218, ptr @inptr, align 4, !mymd !447
  %idxprom219 = zext i32 %118 to i64, !mymd !448
  %arrayidx220 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom219, !mymd !449
  %119 = load i8, ptr %arrayidx220, align 1, !mymd !450
  %conv221 = zext i8 %119 to i32, !mymd !451
  br label %cond.end224, !mymd !452

cond.false222:                                    ; preds = %while.body214
  %120 = load i32, ptr %w, align 4, !mymd !453
  store i32 %120, ptr @outcnt, align 4, !mymd !454
  %call223 = call i32 @fill_inbuf(i32 noundef 0), !mymd !455
  br label %cond.end224, !mymd !456

cond.end224:                                      ; preds = %cond.false222, %cond.true217
  %cond225 = phi i32 [ %conv221, %cond.true217 ], [ %call223, %cond.false222 ], !mymd !457
  %conv226 = trunc i32 %cond225 to i8, !mymd !458
  %conv227 = zext i8 %conv226 to i64, !mymd !459
  %121 = load i32, ptr %k, align 4, !mymd !460
  %sh_prom228 = zext i32 %121 to i64, !mymd !461
  %shl229 = shl i64 %conv227, %sh_prom228, !mymd !462
  %122 = load i64, ptr %b, align 8, !mymd !463
  %or230 = or i64 %122, %shl229, !mymd !464
  store i64 %or230, ptr %b, align 8, !mymd !465
  %123 = load i32, ptr %k, align 4, !mymd !466
  %add231 = add i32 %123, 8, !mymd !467
  store i32 %add231, ptr %k, align 4, !mymd !468
  br label %while.cond211, !llvm.loop !469, !mymd !470

while.end232:                                     ; preds = %while.cond211
  %124 = load i64, ptr %b, align 8, !mymd !471
  %conv233 = trunc i64 %124 to i32, !mymd !472
  %and234 = and i32 %conv233, 7, !mymd !473
  %add235 = add i32 3, %and234, !mymd !474
  store i32 %add235, ptr %j, align 4, !mymd !475
  %125 = load i64, ptr %b, align 8, !mymd !476
  %shr236 = lshr i64 %125, 3, !mymd !477
  store i64 %shr236, ptr %b, align 8, !mymd !478
  %126 = load i32, ptr %k, align 4, !mymd !479
  %sub237 = sub i32 %126, 3, !mymd !480
  store i32 %sub237, ptr %k, align 4, !mymd !481
  %127 = load i32, ptr %i, align 4, !mymd !482
  %128 = load i32, ptr %j, align 4, !mymd !483
  %add238 = add i32 %127, %128, !mymd !484
  %129 = load i32, ptr %n, align 4, !mymd !485
  %cmp239 = icmp ugt i32 %add238, %129, !mymd !486
  br i1 %cmp239, label %if.then241, label %if.end242, !mymd !487

if.then241:                                       ; preds = %while.end232
  store i32 1, ptr %retval, align 4, !mymd !488
  br label %return, !mymd !489

if.end242:                                        ; preds = %while.end232
  br label %while.cond243, !mymd !490

while.cond243:                                    ; preds = %while.body246, %if.end242
  %130 = load i32, ptr %j, align 4, !mymd !491
  %dec244 = add i32 %130, -1, !mymd !492
  store i32 %dec244, ptr %j, align 4, !mymd !493
  %tobool245 = icmp ne i32 %130, 0, !mymd !494
  br i1 %tobool245, label %while.body246, label %while.end250, !mymd !495

while.body246:                                    ; preds = %while.cond243
  %131 = load i32, ptr %i, align 4, !mymd !496
  %inc247 = add nsw i32 %131, 1, !mymd !497
  store i32 %inc247, ptr %i, align 4, !mymd !498
  %idxprom248 = sext i32 %131 to i64, !mymd !499
  %arrayidx249 = getelementptr inbounds [316 x i32], ptr %ll, i64 0, i64 %idxprom248, !mymd !500
  store i32 0, ptr %arrayidx249, align 4, !mymd !501
  br label %while.cond243, !llvm.loop !502, !mymd !503

while.end250:                                     ; preds = %while.cond243
  store i32 0, ptr %l, align 4, !mymd !504
  br label %if.end292, !mymd !505

if.else251:                                       ; preds = %if.else207
  br label %while.cond252, !mymd !506

while.cond252:                                    ; preds = %cond.end265, %if.else251
  %132 = load i32, ptr %k, align 4, !mymd !507
  %cmp253 = icmp ult i32 %132, 7, !mymd !508
  br i1 %cmp253, label %while.body255, label %while.end273, !mymd !509

while.body255:                                    ; preds = %while.cond252
  %133 = load i32, ptr @inptr, align 4, !mymd !510
  %134 = load i32, ptr @insize, align 4, !mymd !511
  %cmp256 = icmp ult i32 %133, %134, !mymd !512
  br i1 %cmp256, label %cond.true258, label %cond.false263, !mymd !513

cond.true258:                                     ; preds = %while.body255
  %135 = load i32, ptr @inptr, align 4, !mymd !514
  %inc259 = add i32 %135, 1, !mymd !515
  store i32 %inc259, ptr @inptr, align 4, !mymd !516
  %idxprom260 = zext i32 %135 to i64, !mymd !517
  %arrayidx261 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom260, !mymd !518
  %136 = load i8, ptr %arrayidx261, align 1, !mymd !519
  %conv262 = zext i8 %136 to i32, !mymd !520
  br label %cond.end265, !mymd !521

cond.false263:                                    ; preds = %while.body255
  %137 = load i32, ptr %w, align 4, !mymd !522
  store i32 %137, ptr @outcnt, align 4, !mymd !523
  %call264 = call i32 @fill_inbuf(i32 noundef 0), !mymd !524
  br label %cond.end265, !mymd !525

cond.end265:                                      ; preds = %cond.false263, %cond.true258
  %cond266 = phi i32 [ %conv262, %cond.true258 ], [ %call264, %cond.false263 ], !mymd !526
  %conv267 = trunc i32 %cond266 to i8, !mymd !527
  %conv268 = zext i8 %conv267 to i64, !mymd !528
  %138 = load i32, ptr %k, align 4, !mymd !529
  %sh_prom269 = zext i32 %138 to i64, !mymd !530
  %shl270 = shl i64 %conv268, %sh_prom269, !mymd !531
  %139 = load i64, ptr %b, align 8, !mymd !532
  %or271 = or i64 %139, %shl270, !mymd !533
  store i64 %or271, ptr %b, align 8, !mymd !534
  %140 = load i32, ptr %k, align 4, !mymd !535
  %add272 = add i32 %140, 8, !mymd !536
  store i32 %add272, ptr %k, align 4, !mymd !537
  br label %while.cond252, !llvm.loop !538, !mymd !539

while.end273:                                     ; preds = %while.cond252
  %141 = load i64, ptr %b, align 8, !mymd !540
  %conv274 = trunc i64 %141 to i32, !mymd !541
  %and275 = and i32 %conv274, 127, !mymd !542
  %add276 = add i32 11, %and275, !mymd !543
  store i32 %add276, ptr %j, align 4, !mymd !544
  %142 = load i64, ptr %b, align 8, !mymd !545
  %shr277 = lshr i64 %142, 7, !mymd !546
  store i64 %shr277, ptr %b, align 8, !mymd !547
  %143 = load i32, ptr %k, align 4, !mymd !548
  %sub278 = sub i32 %143, 7, !mymd !549
  store i32 %sub278, ptr %k, align 4, !mymd !550
  %144 = load i32, ptr %i, align 4, !mymd !551
  %145 = load i32, ptr %j, align 4, !mymd !552
  %add279 = add i32 %144, %145, !mymd !553
  %146 = load i32, ptr %n, align 4, !mymd !554
  %cmp280 = icmp ugt i32 %add279, %146, !mymd !555
  br i1 %cmp280, label %if.then282, label %if.end283, !mymd !556

if.then282:                                       ; preds = %while.end273
  store i32 1, ptr %retval, align 4, !mymd !557
  br label %return, !mymd !558

if.end283:                                        ; preds = %while.end273
  br label %while.cond284, !mymd !559

while.cond284:                                    ; preds = %while.body287, %if.end283
  %147 = load i32, ptr %j, align 4, !mymd !560
  %dec285 = add i32 %147, -1, !mymd !561
  store i32 %dec285, ptr %j, align 4, !mymd !562
  %tobool286 = icmp ne i32 %147, 0, !mymd !563
  br i1 %tobool286, label %while.body287, label %while.end291, !mymd !564

while.body287:                                    ; preds = %while.cond284
  %148 = load i32, ptr %i, align 4, !mymd !565
  %inc288 = add nsw i32 %148, 1, !mymd !566
  store i32 %inc288, ptr %i, align 4, !mymd !567
  %idxprom289 = sext i32 %148 to i64, !mymd !568
  %arrayidx290 = getelementptr inbounds [316 x i32], ptr %ll, i64 0, i64 %idxprom289, !mymd !569
  store i32 0, ptr %arrayidx290, align 4, !mymd !570
  br label %while.cond284, !llvm.loop !571, !mymd !572

while.end291:                                     ; preds = %while.cond284
  store i32 0, ptr %l, align 4, !mymd !573
  br label %if.end292, !mymd !574

if.end292:                                        ; preds = %while.end291, %while.end250
  br label %if.end293, !mymd !575

if.end293:                                        ; preds = %if.end292, %while.end206
  br label %if.end294, !mymd !576

if.end294:                                        ; preds = %if.end293, %if.then162
  br label %while.cond126, !llvm.loop !577, !mymd !578

while.end295:                                     ; preds = %while.cond126
  %149 = load ptr, ptr %tl, align 8, !mymd !579
  %call296 = call i32 @huft_free(ptr noundef %149), !mymd !580
  %150 = load i64, ptr %b, align 8, !mymd !581
  store i64 %150, ptr @bb, align 8, !mymd !582
  %151 = load i32, ptr %k, align 4, !mymd !583
  store i32 %151, ptr @bk, align 4, !mymd !584
  %152 = load i32, ptr @lbits, align 4, !mymd !585
  store i32 %152, ptr %bl, align 4, !mymd !586
  %arraydecay297 = getelementptr inbounds [316 x i32], ptr %ll, i64 0, i64 0, !mymd !587
  %153 = load i32, ptr %nl, align 4, !mymd !588
  %call298 = call i32 @huft_build(ptr noundef %arraydecay297, i32 noundef %153, i32 noundef 257, ptr noundef @cplens, ptr noundef @cplext, ptr noundef %tl, ptr noundef %bl), !mymd !589
  store i32 %call298, ptr %i, align 4, !mymd !590
  %cmp299 = icmp ne i32 %call298, 0, !mymd !591
  br i1 %cmp299, label %if.then301, label %if.end308, !mymd !592

if.then301:                                       ; preds = %while.end295
  %154 = load i32, ptr %i, align 4, !mymd !593
  %cmp302 = icmp eq i32 %154, 1, !mymd !594
  br i1 %cmp302, label %if.then304, label %if.end307, !mymd !595

if.then304:                                       ; preds = %if.then301
  %155 = load ptr, ptr @stderr, align 8, !mymd !596
  %call305 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.50) #2, !mymd !597
  %156 = load ptr, ptr %tl, align 8, !mymd !598
  %call306 = call i32 @huft_free(ptr noundef %156), !mymd !599
  br label %if.end307, !mymd !600

if.end307:                                        ; preds = %if.then304, %if.then301
  %157 = load i32, ptr %i, align 4, !mymd !601
  store i32 %157, ptr %retval, align 4, !mymd !602
  br label %return, !mymd !603

if.end308:                                        ; preds = %while.end295
  %158 = load i32, ptr @dbits, align 4, !mymd !604
  store i32 %158, ptr %bd, align 4, !mymd !605
  %arraydecay309 = getelementptr inbounds [316 x i32], ptr %ll, i64 0, i64 0, !mymd !606
  %159 = load i32, ptr %nl, align 4, !mymd !607
  %idx.ext310 = zext i32 %159 to i64, !mymd !608
  %add.ptr311 = getelementptr inbounds nuw i32, ptr %arraydecay309, i64 %idx.ext310, !mymd !609
  %160 = load i32, ptr %nd, align 4, !mymd !610
  %call312 = call i32 @huft_build(ptr noundef %add.ptr311, i32 noundef %160, i32 noundef 0, ptr noundef @cpdist, ptr noundef @cpdext, ptr noundef %td, ptr noundef %bd), !mymd !611
  store i32 %call312, ptr %i, align 4, !mymd !612
  %cmp313 = icmp ne i32 %call312, 0, !mymd !613
  br i1 %cmp313, label %if.then315, label %if.end323, !mymd !614

if.then315:                                       ; preds = %if.end308
  %161 = load i32, ptr %i, align 4, !mymd !615
  %cmp316 = icmp eq i32 %161, 1, !mymd !616
  br i1 %cmp316, label %if.then318, label %if.end321, !mymd !617

if.then318:                                       ; preds = %if.then315
  %162 = load ptr, ptr @stderr, align 8, !mymd !618
  %call319 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef @.str.51) #2, !mymd !619
  %163 = load ptr, ptr %td, align 8, !mymd !620
  %call320 = call i32 @huft_free(ptr noundef %163), !mymd !621
  br label %if.end321, !mymd !622

if.end321:                                        ; preds = %if.then318, %if.then315
  %164 = load ptr, ptr %tl, align 8, !mymd !623
  %call322 = call i32 @huft_free(ptr noundef %164), !mymd !624
  %165 = load i32, ptr %i, align 4, !mymd !625
  store i32 %165, ptr %retval, align 4, !mymd !626
  br label %return, !mymd !627

if.end323:                                        ; preds = %if.end308
  %166 = load ptr, ptr %tl, align 8, !mymd !628
  %167 = load ptr, ptr %td, align 8, !mymd !629
  %168 = load i32, ptr %bl, align 4, !mymd !630
  %169 = load i32, ptr %bd, align 4, !mymd !631
  %call324 = call i32 @inflate_codes(ptr noundef %166, ptr noundef %167, i32 noundef %168, i32 noundef %169), !mymd !632
  %tobool325 = icmp ne i32 %call324, 0, !mymd !633
  br i1 %tobool325, label %if.then326, label %if.end327, !mymd !634

if.then326:                                       ; preds = %if.end323
  store i32 1, ptr %retval, align 4, !mymd !635
  br label %return, !mymd !636

if.end327:                                        ; preds = %if.end323
  %170 = load ptr, ptr %tl, align 8, !mymd !637
  %call328 = call i32 @huft_free(ptr noundef %170), !mymd !638
  %171 = load ptr, ptr %td, align 8, !mymd !639
  %call329 = call i32 @huft_free(ptr noundef %171), !mymd !640
  store i32 0, ptr %retval, align 4, !mymd !641
  br label %return, !mymd !642

return:                                           ; preds = %if.end327, %if.then326, %if.end321, %if.end307, %if.then282, %if.then241, %if.then199, %if.then120, %if.end116, %if.then
  %172 = load i32, ptr %retval, align 4, !mymd !643
  ret i32 %172, !mymd !644
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"6699"}
!7 = !{!"6700"}
!8 = !{!"6701"}
!9 = !{!"6702"}
!10 = !{!"6703"}
!11 = !{!"6704"}
!12 = !{!"6705"}
!13 = !{!"6706"}
!14 = !{!"6707"}
!15 = !{!"6708"}
!16 = !{!"6709"}
!17 = !{!"6710"}
!18 = !{!"6711"}
!19 = !{!"6712"}
!20 = !{!"6713"}
!21 = !{!"6714"}
!22 = !{!"6715"}
!23 = !{!"6716"}
!24 = !{!"6717"}
!25 = !{!"6718"}
!26 = !{!"6719"}
!27 = !{!"6720"}
!28 = !{!"6721"}
!29 = !{!"6722"}
!30 = !{!"6723"}
!31 = !{!"6724"}
!32 = !{!"6725"}
!33 = !{!"6726"}
!34 = !{!"6727"}
!35 = !{!"6728"}
!36 = !{!"6729"}
!37 = !{!"6730"}
!38 = !{!"6731"}
!39 = !{!"6732"}
!40 = !{!"6733"}
!41 = !{!"6734"}
!42 = !{!"6735"}
!43 = !{!"6736"}
!44 = !{!"6737"}
!45 = !{!"6738"}
!46 = !{!"6739"}
!47 = !{!"6740"}
!48 = !{!"6741"}
!49 = !{!"6742"}
!50 = !{!"6743"}
!51 = !{!"6744"}
!52 = !{!"6745"}
!53 = !{!"6746"}
!54 = !{!"6747"}
!55 = !{!"6748"}
!56 = !{!"6749"}
!57 = !{!"6750"}
!58 = !{!"6751"}
!59 = !{!"6752"}
!60 = !{!"6753"}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"6754"}
!64 = !{!"6755"}
!65 = !{!"6756"}
!66 = !{!"6757"}
!67 = !{!"6758"}
!68 = !{!"6759"}
!69 = !{!"6760"}
!70 = !{!"6761"}
!71 = !{!"6762"}
!72 = !{!"6763"}
!73 = !{!"6764"}
!74 = !{!"6765"}
!75 = !{!"6766"}
!76 = !{!"6767"}
!77 = !{!"6768"}
!78 = !{!"6769"}
!79 = !{!"6770"}
!80 = !{!"6771"}
!81 = !{!"6772"}
!82 = !{!"6773"}
!83 = !{!"6774"}
!84 = !{!"6775"}
!85 = !{!"6776"}
!86 = !{!"6777"}
!87 = !{!"6778"}
!88 = !{!"6779"}
!89 = !{!"6780"}
!90 = !{!"6781"}
!91 = !{!"6782"}
!92 = !{!"6783"}
!93 = !{!"6784"}
!94 = !{!"6785"}
!95 = !{!"6786"}
!96 = !{!"6787"}
!97 = !{!"6788"}
!98 = !{!"6789"}
!99 = !{!"6790"}
!100 = !{!"6791"}
!101 = !{!"6792"}
!102 = !{!"6793"}
!103 = !{!"6794"}
!104 = !{!"6795"}
!105 = !{!"6796"}
!106 = !{!"6797"}
!107 = distinct !{!107, !62}
!108 = !{!"6798"}
!109 = !{!"6799"}
!110 = !{!"6800"}
!111 = !{!"6801"}
!112 = !{!"6802"}
!113 = !{!"6803"}
!114 = !{!"6804"}
!115 = !{!"6805"}
!116 = !{!"6806"}
!117 = !{!"6807"}
!118 = !{!"6808"}
!119 = !{!"6809"}
!120 = !{!"6810"}
!121 = !{!"6811"}
!122 = !{!"6812"}
!123 = !{!"6813"}
!124 = !{!"6814"}
!125 = !{!"6815"}
!126 = !{!"6816"}
!127 = !{!"6817"}
!128 = !{!"6818"}
!129 = !{!"6819"}
!130 = !{!"6820"}
!131 = !{!"6821"}
!132 = !{!"6822"}
!133 = !{!"6823"}
!134 = !{!"6824"}
!135 = !{!"6825"}
!136 = !{!"6826"}
!137 = !{!"6827"}
!138 = !{!"6828"}
!139 = !{!"6829"}
!140 = !{!"6830"}
!141 = !{!"6831"}
!142 = !{!"6832"}
!143 = !{!"6833"}
!144 = !{!"6834"}
!145 = !{!"6835"}
!146 = !{!"6836"}
!147 = !{!"6837"}
!148 = !{!"6838"}
!149 = !{!"6839"}
!150 = !{!"6840"}
!151 = !{!"6841"}
!152 = distinct !{!152, !62}
!153 = !{!"6842"}
!154 = !{!"6843"}
!155 = !{!"6844"}
!156 = !{!"6845"}
!157 = !{!"6846"}
!158 = !{!"6847"}
!159 = !{!"6848"}
!160 = !{!"6849"}
!161 = !{!"6850"}
!162 = !{!"6851"}
!163 = !{!"6852"}
!164 = !{!"6853"}
!165 = !{!"6854"}
!166 = !{!"6855"}
!167 = !{!"6856"}
!168 = !{!"6857"}
!169 = !{!"6858"}
!170 = !{!"6859"}
!171 = !{!"6860"}
!172 = !{!"6861"}
!173 = !{!"6862"}
!174 = !{!"6863"}
!175 = !{!"6864"}
!176 = !{!"6865"}
!177 = !{!"6866"}
!178 = !{!"6867"}
!179 = !{!"6868"}
!180 = !{!"6869"}
!181 = !{!"6870"}
!182 = !{!"6871"}
!183 = !{!"6872"}
!184 = !{!"6873"}
!185 = !{!"6874"}
!186 = !{!"6875"}
!187 = !{!"6876"}
!188 = !{!"6877"}
!189 = !{!"6878"}
!190 = !{!"6879"}
!191 = !{!"6880"}
!192 = !{!"6881"}
!193 = !{!"6882"}
!194 = !{!"6883"}
!195 = !{!"6884"}
!196 = !{!"6885"}
!197 = !{!"6886"}
!198 = !{!"6887"}
!199 = !{!"6888"}
!200 = !{!"6889"}
!201 = !{!"6890"}
!202 = !{!"6891"}
!203 = !{!"6892"}
!204 = !{!"6893"}
!205 = !{!"6894"}
!206 = !{!"6895"}
!207 = !{!"6896"}
!208 = !{!"6897"}
!209 = !{!"6898"}
!210 = !{!"6899"}
!211 = distinct !{!211, !62}
!212 = !{!"6900"}
!213 = !{!"6901"}
!214 = !{!"6902"}
!215 = !{!"6903"}
!216 = !{!"6904"}
!217 = !{!"6905"}
!218 = !{!"6906"}
!219 = !{!"6907"}
!220 = !{!"6908"}
!221 = !{!"6909"}
!222 = !{!"6910"}
!223 = !{!"6911"}
!224 = !{!"6912"}
!225 = !{!"6913"}
!226 = !{!"6914"}
!227 = !{!"6915"}
!228 = !{!"6916"}
!229 = !{!"6917"}
!230 = !{!"6918"}
!231 = !{!"6919"}
!232 = !{!"6920"}
!233 = distinct !{!233, !62}
!234 = !{!"6921"}
!235 = !{!"6922"}
!236 = !{!"6923"}
!237 = !{!"6924"}
!238 = !{!"6925"}
!239 = !{!"6926"}
!240 = !{!"6927"}
!241 = !{!"6928"}
!242 = !{!"6929"}
!243 = !{!"6930"}
!244 = !{!"6931"}
!245 = !{!"6932"}
!246 = !{!"6933"}
!247 = !{!"6934"}
!248 = !{!"6935"}
!249 = !{!"6936"}
!250 = distinct !{!250, !62}
!251 = !{!"6937"}
!252 = !{!"6938"}
!253 = !{!"6939"}
!254 = !{!"6940"}
!255 = !{!"6941"}
!256 = !{!"6942"}
!257 = !{!"6943"}
!258 = !{!"6944"}
!259 = !{!"6945"}
!260 = !{!"6946"}
!261 = !{!"6947"}
!262 = !{!"6948"}
!263 = !{!"6949"}
!264 = !{!"6950"}
!265 = !{!"6951"}
!266 = !{!"6952"}
!267 = !{!"6953"}
!268 = !{!"6954"}
!269 = !{!"6955"}
!270 = !{!"6956"}
!271 = !{!"6957"}
!272 = !{!"6958"}
!273 = !{!"6959"}
!274 = !{!"6960"}
!275 = !{!"6961"}
!276 = !{!"6962"}
!277 = !{!"6963"}
!278 = !{!"6964"}
!279 = !{!"6965"}
!280 = !{!"6966"}
!281 = !{!"6967"}
!282 = !{!"6968"}
!283 = !{!"6969"}
!284 = !{!"6970"}
!285 = !{!"6971"}
!286 = !{!"6972"}
!287 = !{!"6973"}
!288 = !{!"6974"}
!289 = !{!"6975"}
!290 = !{!"6976"}
!291 = !{!"6977"}
!292 = !{!"6978"}
!293 = !{!"6979"}
!294 = !{!"6980"}
!295 = !{!"6981"}
!296 = !{!"6982"}
!297 = !{!"6983"}
!298 = !{!"6984"}
!299 = !{!"6985"}
!300 = !{!"6986"}
!301 = !{!"6987"}
!302 = !{!"6988"}
!303 = !{!"6989"}
!304 = !{!"6990"}
!305 = !{!"6991"}
!306 = !{!"6992"}
!307 = !{!"6993"}
!308 = !{!"6994"}
!309 = !{!"6995"}
!310 = !{!"6996"}
!311 = !{!"6997"}
!312 = !{!"6998"}
!313 = !{!"6999"}
!314 = !{!"7000"}
!315 = !{!"7001"}
!316 = !{!"7002"}
!317 = !{!"7003"}
!318 = !{!"7004"}
!319 = !{!"7005"}
!320 = !{!"7006"}
!321 = !{!"7007"}
!322 = distinct !{!322, !62}
!323 = !{!"7008"}
!324 = !{!"7009"}
!325 = !{!"7010"}
!326 = !{!"7011"}
!327 = !{!"7012"}
!328 = !{!"7013"}
!329 = !{!"7014"}
!330 = !{!"7015"}
!331 = !{!"7016"}
!332 = !{!"7017"}
!333 = !{!"7018"}
!334 = !{!"7019"}
!335 = !{!"7020"}
!336 = !{!"7021"}
!337 = !{!"7022"}
!338 = !{!"7023"}
!339 = !{!"7024"}
!340 = !{!"7025"}
!341 = !{!"7026"}
!342 = !{!"7027"}
!343 = !{!"7028"}
!344 = !{!"7029"}
!345 = !{!"7030"}
!346 = !{!"7031"}
!347 = !{!"7032"}
!348 = !{!"7033"}
!349 = !{!"7034"}
!350 = !{!"7035"}
!351 = !{!"7036"}
!352 = !{!"7037"}
!353 = !{!"7038"}
!354 = !{!"7039"}
!355 = !{!"7040"}
!356 = !{!"7041"}
!357 = !{!"7042"}
!358 = !{!"7043"}
!359 = !{!"7044"}
!360 = !{!"7045"}
!361 = !{!"7046"}
!362 = !{!"7047"}
!363 = !{!"7048"}
!364 = !{!"7049"}
!365 = !{!"7050"}
!366 = !{!"7051"}
!367 = !{!"7052"}
!368 = !{!"7053"}
!369 = !{!"7054"}
!370 = !{!"7055"}
!371 = !{!"7056"}
!372 = !{!"7057"}
!373 = !{!"7058"}
!374 = !{!"7059"}
!375 = !{!"7060"}
!376 = !{!"7061"}
!377 = !{!"7062"}
!378 = !{!"7063"}
!379 = !{!"7064"}
!380 = !{!"7065"}
!381 = !{!"7066"}
!382 = !{!"7067"}
!383 = !{!"7068"}
!384 = !{!"7069"}
!385 = !{!"7070"}
!386 = !{!"7071"}
!387 = !{!"7072"}
!388 = !{!"7073"}
!389 = !{!"7074"}
!390 = !{!"7075"}
!391 = !{!"7076"}
!392 = !{!"7077"}
!393 = !{!"7078"}
!394 = !{!"7079"}
!395 = !{!"7080"}
!396 = !{!"7081"}
!397 = distinct !{!397, !62}
!398 = !{!"7082"}
!399 = !{!"7083"}
!400 = !{!"7084"}
!401 = !{!"7085"}
!402 = !{!"7086"}
!403 = !{!"7087"}
!404 = !{!"7088"}
!405 = !{!"7089"}
!406 = !{!"7090"}
!407 = !{!"7091"}
!408 = !{!"7092"}
!409 = !{!"7093"}
!410 = !{!"7094"}
!411 = !{!"7095"}
!412 = !{!"7096"}
!413 = !{!"7097"}
!414 = !{!"7098"}
!415 = !{!"7099"}
!416 = !{!"7100"}
!417 = !{!"7101"}
!418 = !{!"7102"}
!419 = !{!"7103"}
!420 = !{!"7104"}
!421 = !{!"7105"}
!422 = !{!"7106"}
!423 = !{!"7107"}
!424 = !{!"7108"}
!425 = !{!"7109"}
!426 = !{!"7110"}
!427 = !{!"7111"}
!428 = !{!"7112"}
!429 = !{!"7113"}
!430 = !{!"7114"}
!431 = distinct !{!431, !62}
!432 = !{!"7115"}
!433 = !{!"7116"}
!434 = !{!"7117"}
!435 = !{!"7118"}
!436 = !{!"7119"}
!437 = !{!"7120"}
!438 = !{!"7121"}
!439 = !{!"7122"}
!440 = !{!"7123"}
!441 = !{!"7124"}
!442 = !{!"7125"}
!443 = !{!"7126"}
!444 = !{!"7127"}
!445 = !{!"7128"}
!446 = !{!"7129"}
!447 = !{!"7130"}
!448 = !{!"7131"}
!449 = !{!"7132"}
!450 = !{!"7133"}
!451 = !{!"7134"}
!452 = !{!"7135"}
!453 = !{!"7136"}
!454 = !{!"7137"}
!455 = !{!"7138"}
!456 = !{!"7139"}
!457 = !{!"7140"}
!458 = !{!"7141"}
!459 = !{!"7142"}
!460 = !{!"7143"}
!461 = !{!"7144"}
!462 = !{!"7145"}
!463 = !{!"7146"}
!464 = !{!"7147"}
!465 = !{!"7148"}
!466 = !{!"7149"}
!467 = !{!"7150"}
!468 = !{!"7151"}
!469 = distinct !{!469, !62}
!470 = !{!"7152"}
!471 = !{!"7153"}
!472 = !{!"7154"}
!473 = !{!"7155"}
!474 = !{!"7156"}
!475 = !{!"7157"}
!476 = !{!"7158"}
!477 = !{!"7159"}
!478 = !{!"7160"}
!479 = !{!"7161"}
!480 = !{!"7162"}
!481 = !{!"7163"}
!482 = !{!"7164"}
!483 = !{!"7165"}
!484 = !{!"7166"}
!485 = !{!"7167"}
!486 = !{!"7168"}
!487 = !{!"7169"}
!488 = !{!"7170"}
!489 = !{!"7171"}
!490 = !{!"7172"}
!491 = !{!"7173"}
!492 = !{!"7174"}
!493 = !{!"7175"}
!494 = !{!"7176"}
!495 = !{!"7177"}
!496 = !{!"7178"}
!497 = !{!"7179"}
!498 = !{!"7180"}
!499 = !{!"7181"}
!500 = !{!"7182"}
!501 = !{!"7183"}
!502 = distinct !{!502, !62}
!503 = !{!"7184"}
!504 = !{!"7185"}
!505 = !{!"7186"}
!506 = !{!"7187"}
!507 = !{!"7188"}
!508 = !{!"7189"}
!509 = !{!"7190"}
!510 = !{!"7191"}
!511 = !{!"7192"}
!512 = !{!"7193"}
!513 = !{!"7194"}
!514 = !{!"7195"}
!515 = !{!"7196"}
!516 = !{!"7197"}
!517 = !{!"7198"}
!518 = !{!"7199"}
!519 = !{!"7200"}
!520 = !{!"7201"}
!521 = !{!"7202"}
!522 = !{!"7203"}
!523 = !{!"7204"}
!524 = !{!"7205"}
!525 = !{!"7206"}
!526 = !{!"7207"}
!527 = !{!"7208"}
!528 = !{!"7209"}
!529 = !{!"7210"}
!530 = !{!"7211"}
!531 = !{!"7212"}
!532 = !{!"7213"}
!533 = !{!"7214"}
!534 = !{!"7215"}
!535 = !{!"7216"}
!536 = !{!"7217"}
!537 = !{!"7218"}
!538 = distinct !{!538, !62}
!539 = !{!"7219"}
!540 = !{!"7220"}
!541 = !{!"7221"}
!542 = !{!"7222"}
!543 = !{!"7223"}
!544 = !{!"7224"}
!545 = !{!"7225"}
!546 = !{!"7226"}
!547 = !{!"7227"}
!548 = !{!"7228"}
!549 = !{!"7229"}
!550 = !{!"7230"}
!551 = !{!"7231"}
!552 = !{!"7232"}
!553 = !{!"7233"}
!554 = !{!"7234"}
!555 = !{!"7235"}
!556 = !{!"7236"}
!557 = !{!"7237"}
!558 = !{!"7238"}
!559 = !{!"7239"}
!560 = !{!"7240"}
!561 = !{!"7241"}
!562 = !{!"7242"}
!563 = !{!"7243"}
!564 = !{!"7244"}
!565 = !{!"7245"}
!566 = !{!"7246"}
!567 = !{!"7247"}
!568 = !{!"7248"}
!569 = !{!"7249"}
!570 = !{!"7250"}
!571 = distinct !{!571, !62}
!572 = !{!"7251"}
!573 = !{!"7252"}
!574 = !{!"7253"}
!575 = !{!"7254"}
!576 = !{!"7255"}
!577 = distinct !{!577, !62}
!578 = !{!"7256"}
!579 = !{!"7257"}
!580 = !{!"7258"}
!581 = !{!"7259"}
!582 = !{!"7260"}
!583 = !{!"7261"}
!584 = !{!"7262"}
!585 = !{!"7263"}
!586 = !{!"7264"}
!587 = !{!"7265"}
!588 = !{!"7266"}
!589 = !{!"7267"}
!590 = !{!"7268"}
!591 = !{!"7269"}
!592 = !{!"7270"}
!593 = !{!"7271"}
!594 = !{!"7272"}
!595 = !{!"7273"}
!596 = !{!"7274"}
!597 = !{!"7275"}
!598 = !{!"7276"}
!599 = !{!"7277"}
!600 = !{!"7278"}
!601 = !{!"7279"}
!602 = !{!"7280"}
!603 = !{!"7281"}
!604 = !{!"7282"}
!605 = !{!"7283"}
!606 = !{!"7284"}
!607 = !{!"7285"}
!608 = !{!"7286"}
!609 = !{!"7287"}
!610 = !{!"7288"}
!611 = !{!"7289"}
!612 = !{!"7290"}
!613 = !{!"7291"}
!614 = !{!"7292"}
!615 = !{!"7293"}
!616 = !{!"7294"}
!617 = !{!"7295"}
!618 = !{!"7296"}
!619 = !{!"7297"}
!620 = !{!"7298"}
!621 = !{!"7299"}
!622 = !{!"7300"}
!623 = !{!"7301"}
!624 = !{!"7302"}
!625 = !{!"7303"}
!626 = !{!"7304"}
!627 = !{!"7305"}
!628 = !{!"7306"}
!629 = !{!"7307"}
!630 = !{!"7308"}
!631 = !{!"7309"}
!632 = !{!"7310"}
!633 = !{!"7311"}
!634 = !{!"7312"}
!635 = !{!"7313"}
!636 = !{!"7314"}
!637 = !{!"7315"}
!638 = !{!"7316"}
!639 = !{!"7317"}
!640 = !{!"7318"}
!641 = !{!"7319"}
!642 = !{!"7320"}
!643 = !{!"7321"}
!644 = !{!"7322"}
