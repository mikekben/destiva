; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wav_fmt = type { i16, i16, i32, i32, i16, i16 }
%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }
%struct.wavfile = type { i16, i16, i64, i64, ptr, i16 }

@stderr = external global ptr, align 8
@.str.73 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.74 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.75 = external hidden unnamed_addr constant [87 x i8], align 1
@.str.76 = external hidden unnamed_addr constant [47 x i8], align 1
@.str.77 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.78 = external hidden unnamed_addr constant [89 x i8], align 1
@.str.79 = external hidden unnamed_addr constant [93 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @wav_open(ptr noundef %in, ptr noundef %opt, ptr noundef %oldbuf, i32 noundef %buflen) #2 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %oldbuf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %buf = alloca [16 x i8], align 16
  %len = alloca i32, align 4
  %samplesize = alloca i32, align 4
  %format = alloca %struct.wav_fmt, align 4
  %wav = alloca ptr, align 8
  %pos = alloca i64, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  store ptr %oldbuf, ptr %oldbuf.addr, align 8
  store i32 %buflen, ptr %buflen.addr, align 4
  %call = call noalias ptr @malloc(i64 noundef 40) #4
  store ptr %call, ptr %wav, align 8
  %0 = load ptr, ptr %in.addr, align 8
  %call1 = call i32 @find_wav_chunk(ptr noundef %0, ptr noundef @.str.73, ptr noundef %len)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %len, align 4
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.74) #5
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %len, align 4
  %cmp5 = icmp ne i32 %3, 16
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %4 = load i32, ptr %len, align 4
  %cmp6 = icmp ne i32 %4, 18
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr @stderr, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.75) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true, %if.end4
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %6 = load ptr, ptr %in.addr, align 8
  %call10 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 16, ptr noundef %6)
  %cmp11 = icmp ult i64 %call10, 16
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %7 = load ptr, ptr @stderr, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.76) #5
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  %8 = load i32, ptr %len, align 4
  %sub = sub i32 %8, 16
  %cmp15 = icmp ugt i32 %sub, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end21

land.lhs.true16:                                  ; preds = %if.end14
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %len, align 4
  %sub17 = sub i32 %10, 16
  %call18 = call i32 @seek_forward(ptr noundef %9, i32 noundef %sub17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end21, label %if.then20

if.then20:                                        ; preds = %land.lhs.true16
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %land.lhs.true16, %if.end14
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 1
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %shl = shl i32 %conv, 8
  %arrayidx22 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %12 = load i8, ptr %arrayidx22, align 16
  %conv23 = zext i8 %12 to i32
  %and = and i32 %conv23, 255
  %or = or i32 %shl, %and
  %conv24 = trunc i32 %or to i16
  %format25 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 0
  store i16 %conv24, ptr %format25, align 4
  %arraydecay26 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay26, i64 2
  %arrayidx27 = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %13 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %13 to i32
  %shl29 = shl i32 %conv28, 8
  %arraydecay30 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr31 = getelementptr inbounds i8, ptr %arraydecay30, i64 2
  %arrayidx32 = getelementptr inbounds i8, ptr %add.ptr31, i64 0
  %14 = load i8, ptr %arrayidx32, align 2
  %conv33 = zext i8 %14 to i32
  %and34 = and i32 %conv33, 255
  %or35 = or i32 %shl29, %and34
  %conv36 = trunc i32 %or35 to i16
  %channels = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 1
  store i16 %conv36, ptr %channels, align 2
  %arraydecay37 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr38 = getelementptr inbounds i8, ptr %arraydecay37, i64 4
  %arrayidx39 = getelementptr inbounds i8, ptr %add.ptr38, i64 3
  %15 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %15 to i32
  %shl41 = shl i32 %conv40, 24
  %arraydecay42 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr43 = getelementptr inbounds i8, ptr %arraydecay42, i64 4
  %arrayidx44 = getelementptr inbounds i8, ptr %add.ptr43, i64 2
  %16 = load i8, ptr %arrayidx44, align 2
  %conv45 = zext i8 %16 to i32
  %shl46 = shl i32 %conv45, 16
  %or47 = or i32 %shl41, %shl46
  %arraydecay48 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr49 = getelementptr inbounds i8, ptr %arraydecay48, i64 4
  %arrayidx50 = getelementptr inbounds i8, ptr %add.ptr49, i64 1
  %17 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %17 to i32
  %shl52 = shl i32 %conv51, 8
  %or53 = or i32 %or47, %shl52
  %arraydecay54 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr55 = getelementptr inbounds i8, ptr %arraydecay54, i64 4
  %arrayidx56 = getelementptr inbounds i8, ptr %add.ptr55, i64 0
  %18 = load i8, ptr %arrayidx56, align 4
  %conv57 = zext i8 %18 to i32
  %and58 = and i32 %conv57, 255
  %or59 = or i32 %or53, %and58
  %samplerate = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 2
  store i32 %or59, ptr %samplerate, align 4
  %arraydecay60 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr61 = getelementptr inbounds i8, ptr %arraydecay60, i64 8
  %arrayidx62 = getelementptr inbounds i8, ptr %add.ptr61, i64 3
  %19 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %19 to i32
  %shl64 = shl i32 %conv63, 24
  %arraydecay65 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr66 = getelementptr inbounds i8, ptr %arraydecay65, i64 8
  %arrayidx67 = getelementptr inbounds i8, ptr %add.ptr66, i64 2
  %20 = load i8, ptr %arrayidx67, align 2
  %conv68 = zext i8 %20 to i32
  %shl69 = shl i32 %conv68, 16
  %or70 = or i32 %shl64, %shl69
  %arraydecay71 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr72 = getelementptr inbounds i8, ptr %arraydecay71, i64 8
  %arrayidx73 = getelementptr inbounds i8, ptr %add.ptr72, i64 1
  %21 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %21 to i32
  %shl75 = shl i32 %conv74, 8
  %or76 = or i32 %or70, %shl75
  %arraydecay77 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr78 = getelementptr inbounds i8, ptr %arraydecay77, i64 8
  %arrayidx79 = getelementptr inbounds i8, ptr %add.ptr78, i64 0
  %22 = load i8, ptr %arrayidx79, align 8
  %conv80 = zext i8 %22 to i32
  %and81 = and i32 %conv80, 255
  %or82 = or i32 %or76, %and81
  %bytespersec = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 3
  store i32 %or82, ptr %bytespersec, align 4
  %arraydecay83 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr84 = getelementptr inbounds i8, ptr %arraydecay83, i64 12
  %arrayidx85 = getelementptr inbounds i8, ptr %add.ptr84, i64 1
  %23 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %23 to i32
  %shl87 = shl i32 %conv86, 8
  %arraydecay88 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr89 = getelementptr inbounds i8, ptr %arraydecay88, i64 12
  %arrayidx90 = getelementptr inbounds i8, ptr %add.ptr89, i64 0
  %24 = load i8, ptr %arrayidx90, align 4
  %conv91 = zext i8 %24 to i32
  %and92 = and i32 %conv91, 255
  %or93 = or i32 %shl87, %and92
  %conv94 = trunc i32 %or93 to i16
  %align = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 4
  store i16 %conv94, ptr %align, align 4
  %arraydecay95 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr96 = getelementptr inbounds i8, ptr %arraydecay95, i64 14
  %arrayidx97 = getelementptr inbounds i8, ptr %add.ptr96, i64 1
  %25 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %25 to i32
  %shl99 = shl i32 %conv98, 8
  %arraydecay100 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %add.ptr101 = getelementptr inbounds i8, ptr %arraydecay100, i64 14
  %arrayidx102 = getelementptr inbounds i8, ptr %add.ptr101, i64 0
  %26 = load i8, ptr %arrayidx102, align 2
  %conv103 = zext i8 %26 to i32
  %and104 = and i32 %conv103, 255
  %or105 = or i32 %shl99, %and104
  %conv106 = trunc i32 %or105 to i16
  %samplesize107 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  store i16 %conv106, ptr %samplesize107, align 2
  %27 = load ptr, ptr %in.addr, align 8
  %call108 = call i32 @find_wav_chunk(ptr noundef %27, ptr noundef @.str.77, ptr noundef %len)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.end111, label %if.then110

if.then110:                                       ; preds = %if.end21
  store i32 0, ptr %retval, align 4
  br label %return

if.end111:                                        ; preds = %if.end21
  %format112 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 0
  %28 = load i16, ptr %format112, align 4
  %conv113 = sext i16 %28 to i32
  %cmp114 = icmp eq i32 %conv113, 1
  br i1 %cmp114, label %if.then116, label %if.else

if.then116:                                       ; preds = %if.end111
  %samplesize117 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  %29 = load i16, ptr %samplesize117, align 2
  %conv118 = sext i16 %29 to i32
  %div = sdiv i32 %conv118, 8
  store i32 %div, ptr %samplesize, align 4
  %30 = load ptr, ptr %opt.addr, align 8
  %read_samples = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %30, i32 0, i32 2
  store ptr @wav_read, ptr %read_samples, align 8
  br label %if.end128

if.else:                                          ; preds = %if.end111
  %format119 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 0
  %31 = load i16, ptr %format119, align 4
  %conv120 = sext i16 %31 to i32
  %cmp121 = icmp eq i32 %conv120, 3
  br i1 %cmp121, label %if.then123, label %if.else125

if.then123:                                       ; preds = %if.else
  store i32 4, ptr %samplesize, align 4
  %32 = load ptr, ptr %opt.addr, align 8
  %read_samples124 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %32, i32 0, i32 2
  store ptr @wav_ieee_read, ptr %read_samples124, align 8
  br label %if.end127

if.else125:                                       ; preds = %if.else
  %33 = load ptr, ptr @stderr, align 8
  %call126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.78) #5
  store i32 0, ptr %retval, align 4
  br label %return

if.end127:                                        ; preds = %if.then123
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.then116
  %align129 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 4
  %34 = load i16, ptr %align129, align 4
  %conv130 = sext i16 %34 to i32
  %channels131 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 1
  %35 = load i16, ptr %channels131, align 2
  %conv132 = sext i16 %35 to i32
  %36 = load i32, ptr %samplesize, align 4
  %mul = mul nsw i32 %conv132, %36
  %cmp133 = icmp eq i32 %conv130, %mul
  br i1 %cmp133, label %land.lhs.true135, label %if.else202

land.lhs.true135:                                 ; preds = %if.end128
  %samplesize136 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  %37 = load i16, ptr %samplesize136, align 2
  %conv137 = sext i16 %37 to i32
  %38 = load i32, ptr %samplesize, align 4
  %mul138 = mul nsw i32 %38, 8
  %cmp139 = icmp eq i32 %conv137, %mul138
  br i1 %cmp139, label %land.lhs.true141, label %if.else202

land.lhs.true141:                                 ; preds = %land.lhs.true135
  %samplesize142 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  %39 = load i16, ptr %samplesize142, align 2
  %conv143 = sext i16 %39 to i32
  %cmp144 = icmp eq i32 %conv143, 24
  br i1 %cmp144, label %if.then165, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true141
  %samplesize146 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  %40 = load i16, ptr %samplesize146, align 2
  %conv147 = sext i16 %40 to i32
  %cmp148 = icmp eq i32 %conv147, 16
  br i1 %cmp148, label %if.then165, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false
  %samplesize151 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  %41 = load i16, ptr %samplesize151, align 2
  %conv152 = sext i16 %41 to i32
  %cmp153 = icmp eq i32 %conv152, 8
  br i1 %cmp153, label %if.then165, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %lor.lhs.false150
  %samplesize156 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  %42 = load i16, ptr %samplesize156, align 2
  %conv157 = sext i16 %42 to i32
  %cmp158 = icmp eq i32 %conv157, 32
  br i1 %cmp158, label %land.lhs.true160, label %if.else202

land.lhs.true160:                                 ; preds = %lor.lhs.false155
  %format161 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 0
  %43 = load i16, ptr %format161, align 4
  %conv162 = sext i16 %43 to i32
  %cmp163 = icmp eq i32 %conv162, 3
  br i1 %cmp163, label %if.then165, label %if.else202

if.then165:                                       ; preds = %land.lhs.true160, %lor.lhs.false150, %lor.lhs.false, %land.lhs.true141
  %samplerate166 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 2
  %44 = load i32, ptr %samplerate166, align 4
  %conv167 = sext i32 %44 to i64
  %45 = load ptr, ptr %opt.addr, align 8
  %rate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %45, i32 0, i32 10
  store i64 %conv167, ptr %rate, align 8
  %channels168 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 1
  %46 = load i16, ptr %channels168, align 2
  %conv169 = sext i16 %46 to i32
  %47 = load ptr, ptr %opt.addr, align 8
  %channels170 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %47, i32 0, i32 9
  store i32 %conv169, ptr %channels170, align 8
  %48 = load ptr, ptr %in.addr, align 8
  %49 = load ptr, ptr %wav, align 8
  %f = getelementptr inbounds nuw %struct.wavfile, ptr %49, i32 0, i32 4
  store ptr %48, ptr %f, align 8
  %50 = load ptr, ptr %wav, align 8
  %samplesread = getelementptr inbounds nuw %struct.wavfile, ptr %50, i32 0, i32 3
  store i64 0, ptr %samplesread, align 8
  %51 = load ptr, ptr %wav, align 8
  %bigendian = getelementptr inbounds nuw %struct.wavfile, ptr %51, i32 0, i32 5
  store i16 0, ptr %bigendian, align 8
  %channels171 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 1
  %52 = load i16, ptr %channels171, align 2
  %53 = load ptr, ptr %wav, align 8
  %channels172 = getelementptr inbounds nuw %struct.wavfile, ptr %53, i32 0, i32 0
  store i16 %52, ptr %channels172, align 8
  %samplesize173 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 5
  %54 = load i16, ptr %samplesize173, align 2
  %55 = load ptr, ptr %wav, align 8
  %samplesize174 = getelementptr inbounds nuw %struct.wavfile, ptr %55, i32 0, i32 1
  store i16 %54, ptr %samplesize174, align 2
  %56 = load i32, ptr %len, align 4
  %tobool175 = icmp ne i32 %56, 0
  br i1 %tobool175, label %if.then176, label %if.else182

if.then176:                                       ; preds = %if.then165
  %57 = load i32, ptr %len, align 4
  %channels177 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 1
  %58 = load i16, ptr %channels177, align 2
  %conv178 = sext i16 %58 to i32
  %59 = load i32, ptr %samplesize, align 4
  %mul179 = mul nsw i32 %conv178, %59
  %div180 = udiv i32 %57, %mul179
  %conv181 = zext i32 %div180 to i64
  %60 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %60, i32 0, i32 8
  store i64 %conv181, ptr %total_samples_per_channel, align 8
  br label %if.end200

if.else182:                                       ; preds = %if.then165
  %61 = load ptr, ptr %in.addr, align 8
  %call183 = call i64 @ftell(ptr noundef %61)
  store i64 %call183, ptr %pos, align 8
  %62 = load ptr, ptr %in.addr, align 8
  %call184 = call i32 @fseek(ptr noundef %62, i64 noundef 0, i32 noundef 2)
  %cmp185 = icmp eq i32 %call184, -1
  br i1 %cmp185, label %if.then187, label %if.else189

if.then187:                                       ; preds = %if.else182
  %63 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel188 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %63, i32 0, i32 8
  store i64 0, ptr %total_samples_per_channel188, align 8
  br label %if.end199

if.else189:                                       ; preds = %if.else182
  %64 = load ptr, ptr %in.addr, align 8
  %call190 = call i64 @ftell(ptr noundef %64)
  %65 = load i64, ptr %pos, align 8
  %sub191 = sub nsw i64 %call190, %65
  %channels192 = getelementptr inbounds nuw %struct.wav_fmt, ptr %format, i32 0, i32 1
  %66 = load i16, ptr %channels192, align 2
  %conv193 = sext i16 %66 to i32
  %67 = load i32, ptr %samplesize, align 4
  %mul194 = mul nsw i32 %conv193, %67
  %conv195 = sext i32 %mul194 to i64
  %div196 = sdiv i64 %sub191, %conv195
  %68 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel197 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %68, i32 0, i32 8
  store i64 %div196, ptr %total_samples_per_channel197, align 8
  %69 = load ptr, ptr %in.addr, align 8
  %70 = load i64, ptr %pos, align 8
  %call198 = call i32 @fseek(ptr noundef %69, i64 noundef %70, i32 noundef 0)
  br label %if.end199

if.end199:                                        ; preds = %if.else189, %if.then187
  br label %if.end200

if.end200:                                        ; preds = %if.end199, %if.then176
  %71 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel201 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %71, i32 0, i32 8
  %72 = load i64, ptr %total_samples_per_channel201, align 8
  %73 = load ptr, ptr %wav, align 8
  %totalsamples = getelementptr inbounds nuw %struct.wavfile, ptr %73, i32 0, i32 2
  store i64 %72, ptr %totalsamples, align 8
  %74 = load ptr, ptr %wav, align 8
  %75 = load ptr, ptr %opt.addr, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %75, i32 0, i32 7
  store ptr %74, ptr %readdata, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.else202:                                       ; preds = %land.lhs.true160, %lor.lhs.false155, %land.lhs.true135, %if.end128
  %76 = load ptr, ptr @stderr, align 8
  %call203 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.79) #5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else202, %if.end200, %if.else125, %if.then110, %if.then20, %if.then12, %if.then2, %if.then
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local i64 @wav_read(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @seek_forward(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @find_wav_chunk(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @wav_ieee_read(ptr noundef, ptr noundef, i32 noundef) #2

declare i64 @ftell(ptr noundef) #3

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
