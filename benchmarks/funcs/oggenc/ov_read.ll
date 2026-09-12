; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_pcmout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_read(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_fetch_and_process_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ov_info(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @ov_read(ptr noundef %vf, ptr noundef %buffer, i32 noundef %length, i32 noundef %bigendianp, i32 noundef %word, i32 noundef %sgned, ptr noundef %bitstream) #0 {
entry:
  %retval = alloca i64, align 8
  %vf.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %bigendianp.addr = alloca i32, align 4
  %word.addr = alloca i32, align 4
  %sgned.addr = alloca i32, align 4
  %bitstream.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %host_endian = alloca i32, align 4
  %pcm = alloca ptr, align 8
  %samples = alloca i64, align 8
  %ret = alloca i32, align 4
  %channels = alloca i64, align 8
  %bytespersample = alloca i64, align 8
  %fpu = alloca i32, align 4
  %val = alloca i32, align 4
  %off = alloca i32, align 4
  %off66 = alloca i32, align 4
  %src = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %src114 = alloca ptr, align 8
  %dest117 = alloca ptr, align 8
  %val190 = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 %bigendianp, ptr %bigendianp.addr, align 4
  store i32 %word, ptr %word.addr, align 4
  store i32 %sgned, ptr %sgned.addr, align 4
  store ptr %bitstream, ptr %bitstream.addr, align 8
  %call = call i32 @host_is_big_endian()
  store i32 %call, ptr %host_endian, align 4
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -131, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end17, %if.end
  %2 = load ptr, ptr %vf.addr, align 8
  %ready_state1 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %ready_state1, align 8
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %while.body
  %4 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 19
  %call4 = call i32 @vorbis_synthesis_pcmout(ptr noundef %vd, ptr noundef %pcm)
  %conv = sext i32 %call4 to i64
  store i64 %conv, ptr %samples, align 8
  %5 = load i64, ptr %samples, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  br label %while.end

if.end6:                                          ; preds = %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %while.body
  %6 = load ptr, ptr %vf.addr, align 8
  %call8 = call i32 @_fetch_and_process_packet(ptr noundef %6, ptr noundef null, i32 noundef 1, i32 noundef 1)
  store i32 %call8, ptr %ret, align 4
  %7 = load i32, ptr %ret, align 4
  %cmp9 = icmp eq i32 %7, -2
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  store i64 0, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end7
  %8 = load i32, ptr %ret, align 4
  %cmp13 = icmp sle i32 %8, 0
  br i1 %cmp13, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %9 = load i32, ptr %ret, align 4
  %conv16 = sext i32 %9 to i64
  store i64 %conv16, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end12
  br label %while.body

while.end:                                        ; preds = %if.then5
  %10 = load i64, ptr %samples, align 8
  %cmp18 = icmp sgt i64 %10, 0
  br i1 %cmp18, label %if.then20, label %if.else241

if.then20:                                        ; preds = %while.end
  %11 = load ptr, ptr %vf.addr, align 8
  %call21 = call ptr @ov_info(ptr noundef %11, i32 noundef -1)
  %channels22 = getelementptr inbounds nuw %struct.vorbis_info, ptr %call21, i32 0, i32 1
  %12 = load i32, ptr %channels22, align 4
  %conv23 = sext i32 %12 to i64
  store i64 %conv23, ptr %channels, align 8
  %13 = load i32, ptr %word.addr, align 4
  %conv24 = sext i32 %13 to i64
  %14 = load i64, ptr %channels, align 8
  %mul = mul nsw i64 %conv24, %14
  store i64 %mul, ptr %bytespersample, align 8
  %15 = load i64, ptr %samples, align 8
  %16 = load i32, ptr %length.addr, align 4
  %conv25 = sext i32 %16 to i64
  %17 = load i64, ptr %bytespersample, align 8
  %div = sdiv i64 %conv25, %17
  %cmp26 = icmp sgt i64 %15, %div
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then20
  %18 = load i32, ptr %length.addr, align 4
  %conv29 = sext i32 %18 to i64
  %19 = load i64, ptr %bytespersample, align 8
  %div30 = sdiv i64 %conv29, %19
  store i64 %div30, ptr %samples, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then20
  %20 = load i64, ptr %samples, align 8
  %cmp32 = icmp sle i64 %20, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  store i64 -131, ptr %retval, align 8
  br label %return

if.end35:                                         ; preds = %if.end31
  %21 = load i32, ptr %word.addr, align 4
  %cmp36 = icmp eq i32 %21, 1
  br i1 %cmp36, label %if.then38, label %if.else65

if.then38:                                        ; preds = %if.end35
  %22 = load i32, ptr %sgned.addr, align 4
  %tobool39 = icmp ne i32 %22, 0
  %23 = zext i1 %tobool39 to i64
  %cond = select i1 %tobool39, i32 0, i32 128
  store i32 %cond, ptr %off, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc62, %if.then38
  %24 = load i32, ptr %j, align 4
  %conv40 = sext i32 %24 to i64
  %25 = load i64, ptr %samples, align 8
  %cmp41 = icmp slt i64 %conv40, %25
  br i1 %cmp41, label %for.body, label %for.end64

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc, %for.body
  %26 = load i32, ptr %i, align 4
  %conv44 = sext i32 %26 to i64
  %27 = load i64, ptr %channels, align 8
  %cmp45 = icmp slt i64 %conv44, %27
  br i1 %cmp45, label %for.body47, label %for.end

for.body47:                                       ; preds = %for.cond43
  %28 = load ptr, ptr %pcm, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %28, i64 %idxprom
  %30 = load ptr, ptr %arrayidx, align 8
  %31 = load i32, ptr %j, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds float, ptr %30, i64 %idxprom48
  %32 = load float, ptr %arrayidx49, align 4
  %mul50 = fmul float %32, 1.280000e+02
  %conv51 = fpext float %mul50 to double
  %call52 = call i32 @vorbis_ftoi(double noundef %conv51)
  store i32 %call52, ptr %val, align 4
  %33 = load i32, ptr %val, align 4
  %cmp53 = icmp sgt i32 %33, 127
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.body47
  store i32 127, ptr %val, align 4
  br label %if.end60

if.else:                                          ; preds = %for.body47
  %34 = load i32, ptr %val, align 4
  %cmp56 = icmp slt i32 %34, -128
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.else
  store i32 -128, ptr %val, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then55
  %35 = load i32, ptr %val, align 4
  %36 = load i32, ptr %off, align 4
  %add = add nsw i32 %35, %36
  %conv61 = trunc i32 %add to i8
  %37 = load ptr, ptr %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %buffer.addr, align 8
  store i8 %conv61, ptr %37, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end60
  %38 = load i32, ptr %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond43, !llvm.loop !6

for.end:                                          ; preds = %for.cond43
  br label %for.inc62

for.inc62:                                        ; preds = %for.end
  %39 = load i32, ptr %j, align 4
  %inc63 = add nsw i32 %39, 1
  store i32 %inc63, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end64:                                        ; preds = %for.cond
  br label %if.end232

if.else65:                                        ; preds = %if.end35
  %40 = load i32, ptr %sgned.addr, align 4
  %tobool67 = icmp ne i32 %40, 0
  %41 = zext i1 %tobool67 to i64
  %cond68 = select i1 %tobool67, i32 0, i32 32768
  store i32 %cond68, ptr %off66, align 4
  %42 = load i32, ptr %host_endian, align 4
  %43 = load i32, ptr %bigendianp.addr, align 4
  %cmp69 = icmp eq i32 %42, %43
  br i1 %cmp69, label %if.then71, label %if.else149

if.then71:                                        ; preds = %if.else65
  %44 = load i32, ptr %sgned.addr, align 4
  %tobool72 = icmp ne i32 %44, 0
  br i1 %tobool72, label %if.then73, label %if.else108

if.then73:                                        ; preds = %if.then71
  store i32 0, ptr %i, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc105, %if.then73
  %45 = load i32, ptr %i, align 4
  %conv75 = sext i32 %45 to i64
  %46 = load i64, ptr %channels, align 8
  %cmp76 = icmp slt i64 %conv75, %46
  br i1 %cmp76, label %for.body78, label %for.end107

for.body78:                                       ; preds = %for.cond74
  %47 = load ptr, ptr %pcm, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %48 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %47, i64 %idxprom79
  %49 = load ptr, ptr %arrayidx80, align 8
  store ptr %49, ptr %src, align 8
  %50 = load ptr, ptr %buffer.addr, align 8
  %51 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %51 to i64
  %add.ptr = getelementptr inbounds i16, ptr %50, i64 %idx.ext
  store ptr %add.ptr, ptr %dest, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc102, %for.body78
  %52 = load i32, ptr %j, align 4
  %conv82 = sext i32 %52 to i64
  %53 = load i64, ptr %samples, align 8
  %cmp83 = icmp slt i64 %conv82, %53
  br i1 %cmp83, label %for.body85, label %for.end104

for.body85:                                       ; preds = %for.cond81
  %54 = load ptr, ptr %src, align 8
  %55 = load i32, ptr %j, align 4
  %idxprom86 = sext i32 %55 to i64
  %arrayidx87 = getelementptr inbounds float, ptr %54, i64 %idxprom86
  %56 = load float, ptr %arrayidx87, align 4
  %mul88 = fmul float %56, 3.276800e+04
  %conv89 = fpext float %mul88 to double
  %call90 = call i32 @vorbis_ftoi(double noundef %conv89)
  store i32 %call90, ptr %val, align 4
  %57 = load i32, ptr %val, align 4
  %cmp91 = icmp sgt i32 %57, 32767
  br i1 %cmp91, label %if.then93, label %if.else94

if.then93:                                        ; preds = %for.body85
  store i32 32767, ptr %val, align 4
  br label %if.end99

if.else94:                                        ; preds = %for.body85
  %58 = load i32, ptr %val, align 4
  %cmp95 = icmp slt i32 %58, -32768
  br i1 %cmp95, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.else94
  store i32 -32768, ptr %val, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.else94
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then93
  %59 = load i32, ptr %val, align 4
  %conv100 = trunc i32 %59 to i16
  %60 = load ptr, ptr %dest, align 8
  store i16 %conv100, ptr %60, align 2
  %61 = load i64, ptr %channels, align 8
  %62 = load ptr, ptr %dest, align 8
  %add.ptr101 = getelementptr inbounds i16, ptr %62, i64 %61
  store ptr %add.ptr101, ptr %dest, align 8
  br label %for.inc102

for.inc102:                                       ; preds = %if.end99
  %63 = load i32, ptr %j, align 4
  %inc103 = add nsw i32 %63, 1
  store i32 %inc103, ptr %j, align 4
  br label %for.cond81, !llvm.loop !9

for.end104:                                       ; preds = %for.cond81
  br label %for.inc105

for.inc105:                                       ; preds = %for.end104
  %64 = load i32, ptr %i, align 4
  %inc106 = add nsw i32 %64, 1
  store i32 %inc106, ptr %i, align 4
  br label %for.cond74, !llvm.loop !10

for.end107:                                       ; preds = %for.cond74
  br label %if.end148

if.else108:                                       ; preds = %if.then71
  store i32 0, ptr %i, align 4
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc145, %if.else108
  %65 = load i32, ptr %i, align 4
  %conv110 = sext i32 %65 to i64
  %66 = load i64, ptr %channels, align 8
  %cmp111 = icmp slt i64 %conv110, %66
  br i1 %cmp111, label %for.body113, label %for.end147

for.body113:                                      ; preds = %for.cond109
  %67 = load ptr, ptr %pcm, align 8
  %68 = load i32, ptr %i, align 4
  %idxprom115 = sext i32 %68 to i64
  %arrayidx116 = getelementptr inbounds ptr, ptr %67, i64 %idxprom115
  %69 = load ptr, ptr %arrayidx116, align 8
  store ptr %69, ptr %src114, align 8
  %70 = load ptr, ptr %buffer.addr, align 8
  %71 = load i32, ptr %i, align 4
  %idx.ext118 = sext i32 %71 to i64
  %add.ptr119 = getelementptr inbounds i16, ptr %70, i64 %idx.ext118
  store ptr %add.ptr119, ptr %dest117, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc142, %for.body113
  %72 = load i32, ptr %j, align 4
  %conv121 = sext i32 %72 to i64
  %73 = load i64, ptr %samples, align 8
  %cmp122 = icmp slt i64 %conv121, %73
  br i1 %cmp122, label %for.body124, label %for.end144

for.body124:                                      ; preds = %for.cond120
  %74 = load ptr, ptr %src114, align 8
  %75 = load i32, ptr %j, align 4
  %idxprom125 = sext i32 %75 to i64
  %arrayidx126 = getelementptr inbounds float, ptr %74, i64 %idxprom125
  %76 = load float, ptr %arrayidx126, align 4
  %mul127 = fmul float %76, 3.276800e+04
  %conv128 = fpext float %mul127 to double
  %call129 = call i32 @vorbis_ftoi(double noundef %conv128)
  store i32 %call129, ptr %val, align 4
  %77 = load i32, ptr %val, align 4
  %cmp130 = icmp sgt i32 %77, 32767
  br i1 %cmp130, label %if.then132, label %if.else133

if.then132:                                       ; preds = %for.body124
  store i32 32767, ptr %val, align 4
  br label %if.end138

if.else133:                                       ; preds = %for.body124
  %78 = load i32, ptr %val, align 4
  %cmp134 = icmp slt i32 %78, -32768
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.else133
  store i32 -32768, ptr %val, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then136, %if.else133
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.then132
  %79 = load i32, ptr %val, align 4
  %80 = load i32, ptr %off66, align 4
  %add139 = add nsw i32 %79, %80
  %conv140 = trunc i32 %add139 to i16
  %81 = load ptr, ptr %dest117, align 8
  store i16 %conv140, ptr %81, align 2
  %82 = load i64, ptr %channels, align 8
  %83 = load ptr, ptr %dest117, align 8
  %add.ptr141 = getelementptr inbounds i16, ptr %83, i64 %82
  store ptr %add.ptr141, ptr %dest117, align 8
  br label %for.inc142

for.inc142:                                       ; preds = %if.end138
  %84 = load i32, ptr %j, align 4
  %inc143 = add nsw i32 %84, 1
  store i32 %inc143, ptr %j, align 4
  br label %for.cond120, !llvm.loop !11

for.end144:                                       ; preds = %for.cond120
  br label %for.inc145

for.inc145:                                       ; preds = %for.end144
  %85 = load i32, ptr %i, align 4
  %inc146 = add nsw i32 %85, 1
  store i32 %inc146, ptr %i, align 4
  br label %for.cond109, !llvm.loop !12

for.end147:                                       ; preds = %for.cond109
  br label %if.end148

if.end148:                                        ; preds = %for.end147, %for.end107
  br label %if.end231

if.else149:                                       ; preds = %if.else65
  %86 = load i32, ptr %bigendianp.addr, align 4
  %tobool150 = icmp ne i32 %86, 0
  br i1 %tobool150, label %if.then151, label %if.else189

if.then151:                                       ; preds = %if.else149
  store i32 0, ptr %j, align 4
  br label %for.cond152

for.cond152:                                      ; preds = %for.inc186, %if.then151
  %87 = load i32, ptr %j, align 4
  %conv153 = sext i32 %87 to i64
  %88 = load i64, ptr %samples, align 8
  %cmp154 = icmp slt i64 %conv153, %88
  br i1 %cmp154, label %for.body156, label %for.end188

for.body156:                                      ; preds = %for.cond152
  store i32 0, ptr %i, align 4
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc183, %for.body156
  %89 = load i32, ptr %i, align 4
  %conv158 = sext i32 %89 to i64
  %90 = load i64, ptr %channels, align 8
  %cmp159 = icmp slt i64 %conv158, %90
  br i1 %cmp159, label %for.body161, label %for.end185

for.body161:                                      ; preds = %for.cond157
  %91 = load ptr, ptr %pcm, align 8
  %92 = load i32, ptr %i, align 4
  %idxprom162 = sext i32 %92 to i64
  %arrayidx163 = getelementptr inbounds ptr, ptr %91, i64 %idxprom162
  %93 = load ptr, ptr %arrayidx163, align 8
  %94 = load i32, ptr %j, align 4
  %idxprom164 = sext i32 %94 to i64
  %arrayidx165 = getelementptr inbounds float, ptr %93, i64 %idxprom164
  %95 = load float, ptr %arrayidx165, align 4
  %mul166 = fmul float %95, 3.276800e+04
  %conv167 = fpext float %mul166 to double
  %call168 = call i32 @vorbis_ftoi(double noundef %conv167)
  store i32 %call168, ptr %val, align 4
  %96 = load i32, ptr %val, align 4
  %cmp169 = icmp sgt i32 %96, 32767
  br i1 %cmp169, label %if.then171, label %if.else172

if.then171:                                       ; preds = %for.body161
  store i32 32767, ptr %val, align 4
  br label %if.end177

if.else172:                                       ; preds = %for.body161
  %97 = load i32, ptr %val, align 4
  %cmp173 = icmp slt i32 %97, -32768
  br i1 %cmp173, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.else172
  store i32 -32768, ptr %val, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %if.else172
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.then171
  %98 = load i32, ptr %off66, align 4
  %99 = load i32, ptr %val, align 4
  %add178 = add nsw i32 %99, %98
  store i32 %add178, ptr %val, align 4
  %100 = load i32, ptr %val, align 4
  %shr = ashr i32 %100, 8
  %conv179 = trunc i32 %shr to i8
  %101 = load ptr, ptr %buffer.addr, align 8
  %incdec.ptr180 = getelementptr inbounds nuw i8, ptr %101, i32 1
  store ptr %incdec.ptr180, ptr %buffer.addr, align 8
  store i8 %conv179, ptr %101, align 1
  %102 = load i32, ptr %val, align 4
  %and = and i32 %102, 255
  %conv181 = trunc i32 %and to i8
  %103 = load ptr, ptr %buffer.addr, align 8
  %incdec.ptr182 = getelementptr inbounds nuw i8, ptr %103, i32 1
  store ptr %incdec.ptr182, ptr %buffer.addr, align 8
  store i8 %conv181, ptr %103, align 1
  br label %for.inc183

for.inc183:                                       ; preds = %if.end177
  %104 = load i32, ptr %i, align 4
  %inc184 = add nsw i32 %104, 1
  store i32 %inc184, ptr %i, align 4
  br label %for.cond157, !llvm.loop !13

for.end185:                                       ; preds = %for.cond157
  br label %for.inc186

for.inc186:                                       ; preds = %for.end185
  %105 = load i32, ptr %j, align 4
  %inc187 = add nsw i32 %105, 1
  store i32 %inc187, ptr %j, align 4
  br label %for.cond152, !llvm.loop !14

for.end188:                                       ; preds = %for.cond152
  br label %if.end230

if.else189:                                       ; preds = %if.else149
  store i32 0, ptr %j, align 4
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc227, %if.else189
  %106 = load i32, ptr %j, align 4
  %conv192 = sext i32 %106 to i64
  %107 = load i64, ptr %samples, align 8
  %cmp193 = icmp slt i64 %conv192, %107
  br i1 %cmp193, label %for.body195, label %for.end229

for.body195:                                      ; preds = %for.cond191
  store i32 0, ptr %i, align 4
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc224, %for.body195
  %108 = load i32, ptr %i, align 4
  %conv197 = sext i32 %108 to i64
  %109 = load i64, ptr %channels, align 8
  %cmp198 = icmp slt i64 %conv197, %109
  br i1 %cmp198, label %for.body200, label %for.end226

for.body200:                                      ; preds = %for.cond196
  %110 = load ptr, ptr %pcm, align 8
  %111 = load i32, ptr %i, align 4
  %idxprom201 = sext i32 %111 to i64
  %arrayidx202 = getelementptr inbounds ptr, ptr %110, i64 %idxprom201
  %112 = load ptr, ptr %arrayidx202, align 8
  %113 = load i32, ptr %j, align 4
  %idxprom203 = sext i32 %113 to i64
  %arrayidx204 = getelementptr inbounds float, ptr %112, i64 %idxprom203
  %114 = load float, ptr %arrayidx204, align 4
  %mul205 = fmul float %114, 3.276800e+04
  %conv206 = fpext float %mul205 to double
  %call207 = call i32 @vorbis_ftoi(double noundef %conv206)
  store i32 %call207, ptr %val190, align 4
  %115 = load i32, ptr %val190, align 4
  %cmp208 = icmp sgt i32 %115, 32767
  br i1 %cmp208, label %if.then210, label %if.else211

if.then210:                                       ; preds = %for.body200
  store i32 32767, ptr %val190, align 4
  br label %if.end216

if.else211:                                       ; preds = %for.body200
  %116 = load i32, ptr %val190, align 4
  %cmp212 = icmp slt i32 %116, -32768
  br i1 %cmp212, label %if.then214, label %if.end215

if.then214:                                       ; preds = %if.else211
  store i32 -32768, ptr %val190, align 4
  br label %if.end215

if.end215:                                        ; preds = %if.then214, %if.else211
  br label %if.end216

if.end216:                                        ; preds = %if.end215, %if.then210
  %117 = load i32, ptr %off66, align 4
  %118 = load i32, ptr %val190, align 4
  %add217 = add nsw i32 %118, %117
  store i32 %add217, ptr %val190, align 4
  %119 = load i32, ptr %val190, align 4
  %and218 = and i32 %119, 255
  %conv219 = trunc i32 %and218 to i8
  %120 = load ptr, ptr %buffer.addr, align 8
  %incdec.ptr220 = getelementptr inbounds nuw i8, ptr %120, i32 1
  store ptr %incdec.ptr220, ptr %buffer.addr, align 8
  store i8 %conv219, ptr %120, align 1
  %121 = load i32, ptr %val190, align 4
  %shr221 = ashr i32 %121, 8
  %conv222 = trunc i32 %shr221 to i8
  %122 = load ptr, ptr %buffer.addr, align 8
  %incdec.ptr223 = getelementptr inbounds nuw i8, ptr %122, i32 1
  store ptr %incdec.ptr223, ptr %buffer.addr, align 8
  store i8 %conv222, ptr %122, align 1
  br label %for.inc224

for.inc224:                                       ; preds = %if.end216
  %123 = load i32, ptr %i, align 4
  %inc225 = add nsw i32 %123, 1
  store i32 %inc225, ptr %i, align 4
  br label %for.cond196, !llvm.loop !15

for.end226:                                       ; preds = %for.cond196
  br label %for.inc227

for.inc227:                                       ; preds = %for.end226
  %124 = load i32, ptr %j, align 4
  %inc228 = add nsw i32 %124, 1
  store i32 %inc228, ptr %j, align 4
  br label %for.cond191, !llvm.loop !16

for.end229:                                       ; preds = %for.cond191
  br label %if.end230

if.end230:                                        ; preds = %for.end229, %for.end188
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %if.end148
  br label %if.end232

if.end232:                                        ; preds = %if.end231, %for.end64
  %125 = load ptr, ptr %vf.addr, align 8
  %vd233 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %125, i32 0, i32 19
  %126 = load i64, ptr %samples, align 8
  %conv234 = trunc i64 %126 to i32
  %call235 = call i32 @vorbis_synthesis_read(ptr noundef %vd233, i32 noundef %conv234)
  %127 = load i64, ptr %samples, align 8
  %128 = load ptr, ptr %vf.addr, align 8
  %pcm_offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %128, i32 0, i32 12
  %129 = load i64, ptr %pcm_offset, align 8
  %add236 = add nsw i64 %129, %127
  store i64 %add236, ptr %pcm_offset, align 8
  %130 = load ptr, ptr %bitstream.addr, align 8
  %tobool237 = icmp ne ptr %130, null
  br i1 %tobool237, label %if.then238, label %if.end239

if.then238:                                       ; preds = %if.end232
  %131 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %131, i32 0, i32 15
  %132 = load i32, ptr %current_link, align 8
  %133 = load ptr, ptr %bitstream.addr, align 8
  store i32 %132, ptr %133, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %if.end232
  %134 = load i64, ptr %samples, align 8
  %135 = load i64, ptr %bytespersample, align 8
  %mul240 = mul nsw i64 %134, %135
  store i64 %mul240, ptr %retval, align 8
  br label %return

if.else241:                                       ; preds = %while.end
  %136 = load i64, ptr %samples, align 8
  store i64 %136, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else241, %if.end239, %if.then34, %if.then15, %if.then11, %if.then
  %137 = load i64, ptr %retval, align 8
  ret i64 %137
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vorbis_ftoi(double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @host_is_big_endian() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
