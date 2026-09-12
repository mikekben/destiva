; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wavfile = type { i16, i16, i64, i64, ptr, i16 }

@stderr = external global ptr, align 8
@.str.80 = external hidden unnamed_addr constant [66 x i8], align 1
@.str.81 = external hidden unnamed_addr constant [57 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @wav_read(ptr noundef %in, ptr noundef %buffer, i32 noundef %samples) #2 {
entry:
  %retval = alloca i64, align 8
  %in.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %samples.addr = alloca i32, align 4
  %f = alloca ptr, align 8
  %sampbyte = alloca i32, align 4
  %buf = alloca ptr, align 8
  %bytes_read = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %realsamples = alloca i64, align 8
  %bufu = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %samples, ptr %samples.addr, align 4
  %0 = load ptr, ptr %in.addr, align 8
  store ptr %0, ptr %f, align 8
  %1 = load ptr, ptr %f, align 8
  %samplesize = getelementptr inbounds nuw %struct.wavfile, ptr %1, i32 0, i32 1
  %2 = load i16, ptr %samplesize, align 2
  %conv = sext i16 %2 to i32
  %div = sdiv i32 %conv, 8
  store i32 %div, ptr %sampbyte, align 4
  %3 = load i32, ptr %samples.addr, align 4
  %4 = load i32, ptr %sampbyte, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load ptr, ptr %f, align 8
  %channels = getelementptr inbounds nuw %struct.wavfile, ptr %5, i32 0, i32 0
  %6 = load i16, ptr %channels, align 8
  %conv1 = sext i16 %6 to i32
  %mul2 = mul nsw i32 %mul, %conv1
  %conv3 = sext i32 %mul2 to i64
  %7 = alloca i8, i64 %conv3, align 16
  store ptr %7, ptr %buf, align 8
  %8 = load ptr, ptr %buf, align 8
  %9 = load i32, ptr %samples.addr, align 4
  %10 = load i32, ptr %sampbyte, align 4
  %mul4 = mul nsw i32 %9, %10
  %11 = load ptr, ptr %f, align 8
  %channels5 = getelementptr inbounds nuw %struct.wavfile, ptr %11, i32 0, i32 0
  %12 = load i16, ptr %channels5, align 8
  %conv6 = sext i16 %12 to i32
  %mul7 = mul nsw i32 %mul4, %conv6
  %conv8 = sext i32 %mul7 to i64
  %13 = load ptr, ptr %f, align 8
  %f9 = getelementptr inbounds nuw %struct.wavfile, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %f9, align 8
  %call = call i64 @fread(ptr noundef %8, i64 noundef 1, i64 noundef %conv8, ptr noundef %14)
  store i64 %call, ptr %bytes_read, align 8
  %15 = load ptr, ptr %f, align 8
  %totalsamples = getelementptr inbounds nuw %struct.wavfile, ptr %15, i32 0, i32 2
  %16 = load i64, ptr %totalsamples, align 8
  %tobool = icmp ne i64 %16, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = load ptr, ptr %f, align 8
  %samplesread = getelementptr inbounds nuw %struct.wavfile, ptr %17, i32 0, i32 3
  %18 = load i64, ptr %samplesread, align 8
  %19 = load i64, ptr %bytes_read, align 8
  %20 = load i32, ptr %sampbyte, align 4
  %21 = load ptr, ptr %f, align 8
  %channels10 = getelementptr inbounds nuw %struct.wavfile, ptr %21, i32 0, i32 0
  %22 = load i16, ptr %channels10, align 8
  %conv11 = sext i16 %22 to i32
  %mul12 = mul nsw i32 %20, %conv11
  %conv13 = sext i32 %mul12 to i64
  %div14 = sdiv i64 %19, %conv13
  %add = add nsw i64 %18, %div14
  %23 = load ptr, ptr %f, align 8
  %totalsamples15 = getelementptr inbounds nuw %struct.wavfile, ptr %23, i32 0, i32 2
  %24 = load i64, ptr %totalsamples15, align 8
  %cmp = icmp sgt i64 %add, %24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %25 = load i32, ptr %sampbyte, align 4
  %26 = load ptr, ptr %f, align 8
  %channels17 = getelementptr inbounds nuw %struct.wavfile, ptr %26, i32 0, i32 0
  %27 = load i16, ptr %channels17, align 8
  %conv18 = sext i16 %27 to i32
  %mul19 = mul nsw i32 %25, %conv18
  %conv20 = sext i32 %mul19 to i64
  %28 = load ptr, ptr %f, align 8
  %totalsamples21 = getelementptr inbounds nuw %struct.wavfile, ptr %28, i32 0, i32 2
  %29 = load i64, ptr %totalsamples21, align 8
  %30 = load ptr, ptr %f, align 8
  %samplesread22 = getelementptr inbounds nuw %struct.wavfile, ptr %30, i32 0, i32 3
  %31 = load i64, ptr %samplesread22, align 8
  %sub = sub nsw i64 %29, %31
  %mul23 = mul nsw i64 %conv20, %sub
  store i64 %mul23, ptr %bytes_read, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %32 = load i64, ptr %bytes_read, align 8
  %33 = load i32, ptr %sampbyte, align 4
  %34 = load ptr, ptr %f, align 8
  %channels24 = getelementptr inbounds nuw %struct.wavfile, ptr %34, i32 0, i32 0
  %35 = load i16, ptr %channels24, align 8
  %conv25 = sext i16 %35 to i32
  %mul26 = mul nsw i32 %33, %conv25
  %conv27 = sext i32 %mul26 to i64
  %div28 = sdiv i64 %32, %conv27
  store i64 %div28, ptr %realsamples, align 8
  %36 = load i64, ptr %realsamples, align 8
  %37 = load ptr, ptr %f, align 8
  %samplesread29 = getelementptr inbounds nuw %struct.wavfile, ptr %37, i32 0, i32 3
  %38 = load i64, ptr %samplesread29, align 8
  %add30 = add nsw i64 %38, %36
  store i64 %add30, ptr %samplesread29, align 8
  %39 = load ptr, ptr %f, align 8
  %samplesize31 = getelementptr inbounds nuw %struct.wavfile, ptr %39, i32 0, i32 1
  %40 = load i16, ptr %samplesize31, align 2
  %conv32 = sext i16 %40 to i32
  %cmp33 = icmp eq i32 %conv32, 8
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end
  %41 = load ptr, ptr %buf, align 8
  store ptr %41, ptr %bufu, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %if.then35
  %42 = load i32, ptr %i, align 4
  %conv36 = sext i32 %42 to i64
  %43 = load i64, ptr %realsamples, align 8
  %cmp37 = icmp slt i64 %conv36, %43
  br i1 %cmp37, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc, %for.body
  %44 = load i32, ptr %j, align 4
  %45 = load ptr, ptr %f, align 8
  %channels40 = getelementptr inbounds nuw %struct.wavfile, ptr %45, i32 0, i32 0
  %46 = load i16, ptr %channels40, align 8
  %conv41 = sext i16 %46 to i32
  %cmp42 = icmp slt i32 %44, %conv41
  br i1 %cmp42, label %for.body44, label %for.end

for.body44:                                       ; preds = %for.cond39
  %47 = load ptr, ptr %bufu, align 8
  %48 = load i32, ptr %i, align 4
  %49 = load ptr, ptr %f, align 8
  %channels45 = getelementptr inbounds nuw %struct.wavfile, ptr %49, i32 0, i32 0
  %50 = load i16, ptr %channels45, align 8
  %conv46 = sext i16 %50 to i32
  %mul47 = mul nsw i32 %48, %conv46
  %51 = load i32, ptr %j, align 4
  %add48 = add nsw i32 %mul47, %51
  %idxprom = sext i32 %add48 to i64
  %arrayidx = getelementptr inbounds i8, ptr %47, i64 %idxprom
  %52 = load i8, ptr %arrayidx, align 1
  %conv49 = zext i8 %52 to i32
  %sub50 = sub nsw i32 %conv49, 128
  %conv51 = sitofp i32 %sub50 to float
  %div52 = fdiv float %conv51, 1.280000e+02
  %53 = load ptr, ptr %buffer.addr, align 8
  %54 = load i32, ptr %j, align 4
  %idxprom53 = sext i32 %54 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %53, i64 %idxprom53
  %55 = load ptr, ptr %arrayidx54, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom55 = sext i32 %56 to i64
  %arrayidx56 = getelementptr inbounds float, ptr %55, i64 %idxprom55
  store float %div52, ptr %arrayidx56, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body44
  %57 = load i32, ptr %j, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond39, !llvm.loop !6

for.end:                                          ; preds = %for.cond39
  br label %for.inc57

for.inc57:                                        ; preds = %for.end
  %58 = load i32, ptr %i, align 4
  %inc58 = add nsw i32 %58, 1
  store i32 %inc58, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end59:                                        ; preds = %for.cond
  br label %if.end231

if.else:                                          ; preds = %if.end
  %59 = load ptr, ptr %f, align 8
  %samplesize60 = getelementptr inbounds nuw %struct.wavfile, ptr %59, i32 0, i32 1
  %60 = load i16, ptr %samplesize60, align 2
  %conv61 = sext i16 %60 to i32
  %cmp62 = icmp eq i32 %conv61, 16
  br i1 %cmp62, label %if.then64, label %if.else156

if.then64:                                        ; preds = %if.else
  %61 = load ptr, ptr %f, align 8
  %bigendian = getelementptr inbounds nuw %struct.wavfile, ptr %61, i32 0, i32 5
  %62 = load i16, ptr %bigendian, align 8
  %tobool65 = icmp ne i16 %62, 0
  br i1 %tobool65, label %if.else109, label %if.then66

if.then66:                                        ; preds = %if.then64
  store i32 0, ptr %i, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc106, %if.then66
  %63 = load i32, ptr %i, align 4
  %conv68 = sext i32 %63 to i64
  %64 = load i64, ptr %realsamples, align 8
  %cmp69 = icmp slt i64 %conv68, %64
  br i1 %cmp69, label %for.body71, label %for.end108

for.body71:                                       ; preds = %for.cond67
  store i32 0, ptr %j, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc103, %for.body71
  %65 = load i32, ptr %j, align 4
  %66 = load ptr, ptr %f, align 8
  %channels73 = getelementptr inbounds nuw %struct.wavfile, ptr %66, i32 0, i32 0
  %67 = load i16, ptr %channels73, align 8
  %conv74 = sext i16 %67 to i32
  %cmp75 = icmp slt i32 %65, %conv74
  br i1 %cmp75, label %for.body77, label %for.end105

for.body77:                                       ; preds = %for.cond72
  %68 = load ptr, ptr %buf, align 8
  %69 = load i32, ptr %i, align 4
  %mul78 = mul nsw i32 %69, 2
  %70 = load ptr, ptr %f, align 8
  %channels79 = getelementptr inbounds nuw %struct.wavfile, ptr %70, i32 0, i32 0
  %71 = load i16, ptr %channels79, align 8
  %conv80 = sext i16 %71 to i32
  %mul81 = mul nsw i32 %mul78, %conv80
  %72 = load i32, ptr %j, align 4
  %mul82 = mul nsw i32 2, %72
  %add83 = add nsw i32 %mul81, %mul82
  %add84 = add nsw i32 %add83, 1
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %68, i64 %idxprom85
  %73 = load i8, ptr %arrayidx86, align 1
  %conv87 = sext i8 %73 to i32
  %shl = shl i32 %conv87, 8
  %74 = load ptr, ptr %buf, align 8
  %75 = load i32, ptr %i, align 4
  %mul88 = mul nsw i32 %75, 2
  %76 = load ptr, ptr %f, align 8
  %channels89 = getelementptr inbounds nuw %struct.wavfile, ptr %76, i32 0, i32 0
  %77 = load i16, ptr %channels89, align 8
  %conv90 = sext i16 %77 to i32
  %mul91 = mul nsw i32 %mul88, %conv90
  %78 = load i32, ptr %j, align 4
  %mul92 = mul nsw i32 2, %78
  %add93 = add nsw i32 %mul91, %mul92
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds i8, ptr %74, i64 %idxprom94
  %79 = load i8, ptr %arrayidx95, align 1
  %conv96 = sext i8 %79 to i32
  %and = and i32 %conv96, 255
  %or = or i32 %shl, %and
  %conv97 = sitofp i32 %or to float
  %div98 = fdiv float %conv97, 3.276800e+04
  %80 = load ptr, ptr %buffer.addr, align 8
  %81 = load i32, ptr %j, align 4
  %idxprom99 = sext i32 %81 to i64
  %arrayidx100 = getelementptr inbounds ptr, ptr %80, i64 %idxprom99
  %82 = load ptr, ptr %arrayidx100, align 8
  %83 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %83 to i64
  %arrayidx102 = getelementptr inbounds float, ptr %82, i64 %idxprom101
  store float %div98, ptr %arrayidx102, align 4
  br label %for.inc103

for.inc103:                                       ; preds = %for.body77
  %84 = load i32, ptr %j, align 4
  %inc104 = add nsw i32 %84, 1
  store i32 %inc104, ptr %j, align 4
  br label %for.cond72, !llvm.loop !9

for.end105:                                       ; preds = %for.cond72
  br label %for.inc106

for.inc106:                                       ; preds = %for.end105
  %85 = load i32, ptr %i, align 4
  %inc107 = add nsw i32 %85, 1
  store i32 %inc107, ptr %i, align 4
  br label %for.cond67, !llvm.loop !10

for.end108:                                       ; preds = %for.cond67
  br label %if.end155

if.else109:                                       ; preds = %if.then64
  store i32 0, ptr %i, align 4
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc152, %if.else109
  %86 = load i32, ptr %i, align 4
  %conv111 = sext i32 %86 to i64
  %87 = load i64, ptr %realsamples, align 8
  %cmp112 = icmp slt i64 %conv111, %87
  br i1 %cmp112, label %for.body114, label %for.end154

for.body114:                                      ; preds = %for.cond110
  store i32 0, ptr %j, align 4
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc149, %for.body114
  %88 = load i32, ptr %j, align 4
  %89 = load ptr, ptr %f, align 8
  %channels116 = getelementptr inbounds nuw %struct.wavfile, ptr %89, i32 0, i32 0
  %90 = load i16, ptr %channels116, align 8
  %conv117 = sext i16 %90 to i32
  %cmp118 = icmp slt i32 %88, %conv117
  br i1 %cmp118, label %for.body120, label %for.end151

for.body120:                                      ; preds = %for.cond115
  %91 = load ptr, ptr %buf, align 8
  %92 = load i32, ptr %i, align 4
  %mul121 = mul nsw i32 %92, 2
  %93 = load ptr, ptr %f, align 8
  %channels122 = getelementptr inbounds nuw %struct.wavfile, ptr %93, i32 0, i32 0
  %94 = load i16, ptr %channels122, align 8
  %conv123 = sext i16 %94 to i32
  %mul124 = mul nsw i32 %mul121, %conv123
  %95 = load i32, ptr %j, align 4
  %mul125 = mul nsw i32 2, %95
  %add126 = add nsw i32 %mul124, %mul125
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds i8, ptr %91, i64 %idxprom127
  %96 = load i8, ptr %arrayidx128, align 1
  %conv129 = sext i8 %96 to i32
  %shl130 = shl i32 %conv129, 8
  %97 = load ptr, ptr %buf, align 8
  %98 = load i32, ptr %i, align 4
  %mul131 = mul nsw i32 %98, 2
  %99 = load ptr, ptr %f, align 8
  %channels132 = getelementptr inbounds nuw %struct.wavfile, ptr %99, i32 0, i32 0
  %100 = load i16, ptr %channels132, align 8
  %conv133 = sext i16 %100 to i32
  %mul134 = mul nsw i32 %mul131, %conv133
  %101 = load i32, ptr %j, align 4
  %mul135 = mul nsw i32 2, %101
  %add136 = add nsw i32 %mul134, %mul135
  %add137 = add nsw i32 %add136, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds i8, ptr %97, i64 %idxprom138
  %102 = load i8, ptr %arrayidx139, align 1
  %conv140 = sext i8 %102 to i32
  %and141 = and i32 %conv140, 255
  %or142 = or i32 %shl130, %and141
  %conv143 = sitofp i32 %or142 to float
  %div144 = fdiv float %conv143, 3.276800e+04
  %103 = load ptr, ptr %buffer.addr, align 8
  %104 = load i32, ptr %j, align 4
  %idxprom145 = sext i32 %104 to i64
  %arrayidx146 = getelementptr inbounds ptr, ptr %103, i64 %idxprom145
  %105 = load ptr, ptr %arrayidx146, align 8
  %106 = load i32, ptr %i, align 4
  %idxprom147 = sext i32 %106 to i64
  %arrayidx148 = getelementptr inbounds float, ptr %105, i64 %idxprom147
  store float %div144, ptr %arrayidx148, align 4
  br label %for.inc149

for.inc149:                                       ; preds = %for.body120
  %107 = load i32, ptr %j, align 4
  %inc150 = add nsw i32 %107, 1
  store i32 %inc150, ptr %j, align 4
  br label %for.cond115, !llvm.loop !11

for.end151:                                       ; preds = %for.cond115
  br label %for.inc152

for.inc152:                                       ; preds = %for.end151
  %108 = load i32, ptr %i, align 4
  %inc153 = add nsw i32 %108, 1
  store i32 %inc153, ptr %i, align 4
  br label %for.cond110, !llvm.loop !12

for.end154:                                       ; preds = %for.cond110
  br label %if.end155

if.end155:                                        ; preds = %for.end154, %for.end108
  br label %if.end230

if.else156:                                       ; preds = %if.else
  %109 = load ptr, ptr %f, align 8
  %samplesize157 = getelementptr inbounds nuw %struct.wavfile, ptr %109, i32 0, i32 1
  %110 = load i16, ptr %samplesize157, align 2
  %conv158 = sext i16 %110 to i32
  %cmp159 = icmp eq i32 %conv158, 24
  br i1 %cmp159, label %if.then161, label %if.else225

if.then161:                                       ; preds = %if.else156
  %111 = load ptr, ptr %f, align 8
  %bigendian162 = getelementptr inbounds nuw %struct.wavfile, ptr %111, i32 0, i32 5
  %112 = load i16, ptr %bigendian162, align 8
  %tobool163 = icmp ne i16 %112, 0
  br i1 %tobool163, label %if.else222, label %if.then164

if.then164:                                       ; preds = %if.then161
  store i32 0, ptr %i, align 4
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc219, %if.then164
  %113 = load i32, ptr %i, align 4
  %conv166 = sext i32 %113 to i64
  %114 = load i64, ptr %realsamples, align 8
  %cmp167 = icmp slt i64 %conv166, %114
  br i1 %cmp167, label %for.body169, label %for.end221

for.body169:                                      ; preds = %for.cond165
  store i32 0, ptr %j, align 4
  br label %for.cond170

for.cond170:                                      ; preds = %for.inc216, %for.body169
  %115 = load i32, ptr %j, align 4
  %116 = load ptr, ptr %f, align 8
  %channels171 = getelementptr inbounds nuw %struct.wavfile, ptr %116, i32 0, i32 0
  %117 = load i16, ptr %channels171, align 8
  %conv172 = sext i16 %117 to i32
  %cmp173 = icmp slt i32 %115, %conv172
  br i1 %cmp173, label %for.body175, label %for.end218

for.body175:                                      ; preds = %for.cond170
  %118 = load ptr, ptr %buf, align 8
  %119 = load i32, ptr %i, align 4
  %mul176 = mul nsw i32 %119, 3
  %120 = load ptr, ptr %f, align 8
  %channels177 = getelementptr inbounds nuw %struct.wavfile, ptr %120, i32 0, i32 0
  %121 = load i16, ptr %channels177, align 8
  %conv178 = sext i16 %121 to i32
  %mul179 = mul nsw i32 %mul176, %conv178
  %122 = load i32, ptr %j, align 4
  %mul180 = mul nsw i32 3, %122
  %add181 = add nsw i32 %mul179, %mul180
  %add182 = add nsw i32 %add181, 2
  %idxprom183 = sext i32 %add182 to i64
  %arrayidx184 = getelementptr inbounds i8, ptr %118, i64 %idxprom183
  %123 = load i8, ptr %arrayidx184, align 1
  %conv185 = sext i8 %123 to i32
  %shl186 = shl i32 %conv185, 16
  %124 = load ptr, ptr %buf, align 8
  %125 = load i32, ptr %i, align 4
  %mul187 = mul nsw i32 %125, 3
  %126 = load ptr, ptr %f, align 8
  %channels188 = getelementptr inbounds nuw %struct.wavfile, ptr %126, i32 0, i32 0
  %127 = load i16, ptr %channels188, align 8
  %conv189 = sext i16 %127 to i32
  %mul190 = mul nsw i32 %mul187, %conv189
  %128 = load i32, ptr %j, align 4
  %mul191 = mul nsw i32 3, %128
  %add192 = add nsw i32 %mul190, %mul191
  %add193 = add nsw i32 %add192, 1
  %idxprom194 = sext i32 %add193 to i64
  %arrayidx195 = getelementptr inbounds i8, ptr %124, i64 %idxprom194
  %129 = load i8, ptr %arrayidx195, align 1
  %conv196 = zext i8 %129 to i32
  %shl197 = shl i32 %conv196, 8
  %or198 = or i32 %shl186, %shl197
  %130 = load ptr, ptr %buf, align 8
  %131 = load i32, ptr %i, align 4
  %mul199 = mul nsw i32 %131, 3
  %132 = load ptr, ptr %f, align 8
  %channels200 = getelementptr inbounds nuw %struct.wavfile, ptr %132, i32 0, i32 0
  %133 = load i16, ptr %channels200, align 8
  %conv201 = sext i16 %133 to i32
  %mul202 = mul nsw i32 %mul199, %conv201
  %134 = load i32, ptr %j, align 4
  %mul203 = mul nsw i32 3, %134
  %add204 = add nsw i32 %mul202, %mul203
  %idxprom205 = sext i32 %add204 to i64
  %arrayidx206 = getelementptr inbounds i8, ptr %130, i64 %idxprom205
  %135 = load i8, ptr %arrayidx206, align 1
  %conv207 = zext i8 %135 to i32
  %and208 = and i32 %conv207, 255
  %or209 = or i32 %or198, %and208
  %conv210 = sitofp i32 %or209 to float
  %div211 = fdiv float %conv210, 0x4160000000000000
  %136 = load ptr, ptr %buffer.addr, align 8
  %137 = load i32, ptr %j, align 4
  %idxprom212 = sext i32 %137 to i64
  %arrayidx213 = getelementptr inbounds ptr, ptr %136, i64 %idxprom212
  %138 = load ptr, ptr %arrayidx213, align 8
  %139 = load i32, ptr %i, align 4
  %idxprom214 = sext i32 %139 to i64
  %arrayidx215 = getelementptr inbounds float, ptr %138, i64 %idxprom214
  store float %div211, ptr %arrayidx215, align 4
  br label %for.inc216

for.inc216:                                       ; preds = %for.body175
  %140 = load i32, ptr %j, align 4
  %inc217 = add nsw i32 %140, 1
  store i32 %inc217, ptr %j, align 4
  br label %for.cond170, !llvm.loop !13

for.end218:                                       ; preds = %for.cond170
  br label %for.inc219

for.inc219:                                       ; preds = %for.end218
  %141 = load i32, ptr %i, align 4
  %inc220 = add nsw i32 %141, 1
  store i32 %inc220, ptr %i, align 4
  br label %for.cond165, !llvm.loop !14

for.end221:                                       ; preds = %for.cond165
  br label %if.end224

if.else222:                                       ; preds = %if.then161
  %142 = load ptr, ptr @stderr, align 8
  %call223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str.80) #3
  store i64 0, ptr %retval, align 8
  br label %return

if.end224:                                        ; preds = %for.end221
  br label %if.end229

if.else225:                                       ; preds = %if.else156
  %143 = load ptr, ptr @stderr, align 8
  %144 = load ptr, ptr %f, align 8
  %samplesize226 = getelementptr inbounds nuw %struct.wavfile, ptr %144, i32 0, i32 1
  %145 = load i16, ptr %samplesize226, align 2
  %conv227 = sext i16 %145 to i32
  %call228 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef @.str.81, i32 noundef %conv227) #3
  store i64 0, ptr %retval, align 8
  br label %return

if.end229:                                        ; preds = %if.end224
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %if.end155
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %for.end59
  %146 = load i64, ptr %realsamples, align 8
  store i64 %146, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end231, %if.else225, %if.else222
  %147 = load i64, ptr %retval, align 8
  ret i64 %147
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
