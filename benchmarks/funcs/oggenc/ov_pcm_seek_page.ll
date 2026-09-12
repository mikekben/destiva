; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @_decode_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ov_pcm_total(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_raw_seek(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_reset_serialno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_restart(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_seek_helper(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_packetout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_next_page(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_serialno(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_pagein(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_pcm_seek_page(ptr noundef %vf, i64 noundef %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %link = alloca i32, align 4
  %result = alloca i64, align 8
  %total = alloca i64, align 8
  %end = alloca i64, align 8
  %begin = alloca i64, align 8
  %begintime = alloca i64, align 8
  %endtime = alloca i64, align 8
  %target = alloca i64, align 8
  %best = alloca i64, align 8
  %og = alloca %struct.ogg_page, align 8
  %bisect = alloca i64, align 8
  %granulepos = alloca i64, align 8
  %og99 = alloca %struct.ogg_page, align 8
  %op = alloca %struct.ogg_packet, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store i64 %pos, ptr %pos.addr, align 8
  store i32 -1, ptr %link, align 4
  store i64 0, ptr %result, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %call = call i64 @ov_pcm_total(ptr noundef %0, i32 noundef -1)
  store i64 %call, ptr %total, align 8
  %1 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %1, i32 0, i32 13
  %2 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 -138, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %5 = load i64, ptr %pos.addr, align 8
  %cmp3 = icmp slt i64 %5, 0
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %6 = load i64, ptr %pos.addr, align 8
  %7 = load i64, ptr %total, align 8
  %cmp4 = icmp sgt i64 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end2
  store i32 -131, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %links, align 8
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %link, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load i32, ptr %link, align 4
  %cmp7 = icmp sge i32 %10, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %pcmlengths, align 8
  %13 = load i32, ptr %link, align 4
  %mul = mul nsw i32 %13, 2
  %add = add nsw i32 %mul, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i64, ptr %12, i64 %idxprom
  %14 = load i64, ptr %arrayidx, align 8
  %15 = load i64, ptr %total, align 8
  %sub8 = sub nsw i64 %15, %14
  store i64 %sub8, ptr %total, align 8
  %16 = load i64, ptr %pos.addr, align 8
  %17 = load i64, ptr %total, align 8
  %cmp9 = icmp sge i64 %16, %17
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  br label %for.end

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %18 = load i32, ptr %link, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %link, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then10, %for.cond
  %19 = load ptr, ptr %vf.addr, align 8
  %offsets = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %offsets, align 8
  %21 = load i32, ptr %link, align 4
  %add12 = add nsw i32 %21, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i64, ptr %20, i64 %idxprom13
  %22 = load i64, ptr %arrayidx14, align 8
  store i64 %22, ptr %end, align 8
  %23 = load ptr, ptr %vf.addr, align 8
  %offsets15 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %offsets15, align 8
  %25 = load i32, ptr %link, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i64, ptr %24, i64 %idxprom16
  %26 = load i64, ptr %arrayidx17, align 8
  store i64 %26, ptr %begin, align 8
  %27 = load ptr, ptr %vf.addr, align 8
  %pcmlengths18 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %27, i32 0, i32 9
  %28 = load ptr, ptr %pcmlengths18, align 8
  %29 = load i32, ptr %link, align 4
  %mul19 = mul nsw i32 %29, 2
  %idxprom20 = sext i32 %mul19 to i64
  %arrayidx21 = getelementptr inbounds i64, ptr %28, i64 %idxprom20
  %30 = load i64, ptr %arrayidx21, align 8
  store i64 %30, ptr %begintime, align 8
  %31 = load ptr, ptr %vf.addr, align 8
  %pcmlengths22 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %pcmlengths22, align 8
  %33 = load i32, ptr %link, align 4
  %mul23 = mul nsw i32 %33, 2
  %add24 = add nsw i32 %mul23, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i64, ptr %32, i64 %idxprom25
  %34 = load i64, ptr %arrayidx26, align 8
  %35 = load i64, ptr %begintime, align 8
  %add27 = add nsw i64 %34, %35
  store i64 %add27, ptr %endtime, align 8
  %36 = load i64, ptr %pos.addr, align 8
  %37 = load i64, ptr %total, align 8
  %sub28 = sub nsw i64 %36, %37
  %38 = load i64, ptr %begintime, align 8
  %add29 = add nsw i64 %sub28, %38
  store i64 %add29, ptr %target, align 8
  %39 = load i64, ptr %begin, align 8
  store i64 %39, ptr %best, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %for.end
  %40 = load i64, ptr %begin, align 8
  %41 = load i64, ptr %end, align 8
  %cmp30 = icmp slt i64 %40, %41
  br i1 %cmp30, label %while.body, label %while.end98

while.body:                                       ; preds = %while.cond
  %42 = load i64, ptr %end, align 8
  %43 = load i64, ptr %begin, align 8
  %sub31 = sub nsw i64 %42, %43
  %cmp32 = icmp slt i64 %sub31, 8500
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %while.body
  %44 = load i64, ptr %begin, align 8
  store i64 %44, ptr %bisect, align 8
  br label %if.end44

if.else:                                          ; preds = %while.body
  %45 = load i64, ptr %begin, align 8
  %46 = load i64, ptr %target, align 8
  %47 = load i64, ptr %begintime, align 8
  %sub34 = sub nsw i64 %46, %47
  %48 = load i64, ptr %end, align 8
  %49 = load i64, ptr %begin, align 8
  %sub35 = sub nsw i64 %48, %49
  %mul36 = mul nsw i64 %sub34, %sub35
  %50 = load i64, ptr %endtime, align 8
  %51 = load i64, ptr %begintime, align 8
  %sub37 = sub nsw i64 %50, %51
  %div = sdiv i64 %mul36, %sub37
  %add38 = add nsw i64 %45, %div
  %sub39 = sub nsw i64 %add38, 8500
  store i64 %sub39, ptr %bisect, align 8
  %52 = load i64, ptr %bisect, align 8
  %53 = load i64, ptr %begin, align 8
  %cmp40 = icmp sle i64 %52, %53
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.else
  %54 = load i64, ptr %begin, align 8
  %add42 = add nsw i64 %54, 1
  store i64 %add42, ptr %bisect, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.else
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then33
  %55 = load ptr, ptr %vf.addr, align 8
  %56 = load i64, ptr %bisect, align 8
  call void @_seek_helper(ptr noundef %55, i64 noundef %56)
  br label %while.cond45

while.cond45:                                     ; preds = %if.end97, %if.then71, %if.end44
  %57 = load i64, ptr %begin, align 8
  %58 = load i64, ptr %end, align 8
  %cmp46 = icmp slt i64 %57, %58
  br i1 %cmp46, label %while.body47, label %while.end

while.body47:                                     ; preds = %while.cond45
  %59 = load ptr, ptr %vf.addr, align 8
  %60 = load i64, ptr %end, align 8
  %61 = load ptr, ptr %vf.addr, align 8
  %offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %61, i32 0, i32 2
  %62 = load i64, ptr %offset, align 8
  %sub48 = sub nsw i64 %60, %62
  %call49 = call i64 @_get_next_page(ptr noundef %59, ptr noundef %og, i64 noundef %sub48)
  store i64 %call49, ptr %result, align 8
  %63 = load i64, ptr %result, align 8
  %cmp50 = icmp eq i64 %63, -128
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %while.body47
  br label %seek_error

if.end52:                                         ; preds = %while.body47
  %64 = load i64, ptr %result, align 8
  %cmp53 = icmp slt i64 %64, 0
  br i1 %cmp53, label %if.then54, label %if.else68

if.then54:                                        ; preds = %if.end52
  %65 = load i64, ptr %bisect, align 8
  %66 = load i64, ptr %begin, align 8
  %add55 = add nsw i64 %66, 1
  %cmp56 = icmp sle i64 %65, %add55
  br i1 %cmp56, label %if.then57, label %if.else58

if.then57:                                        ; preds = %if.then54
  %67 = load i64, ptr %begin, align 8
  store i64 %67, ptr %end, align 8
  br label %if.end67

if.else58:                                        ; preds = %if.then54
  %68 = load i64, ptr %bisect, align 8
  %cmp59 = icmp eq i64 %68, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.else58
  br label %seek_error

if.end61:                                         ; preds = %if.else58
  %69 = load i64, ptr %bisect, align 8
  %sub62 = sub nsw i64 %69, 8500
  store i64 %sub62, ptr %bisect, align 8
  %70 = load i64, ptr %bisect, align 8
  %71 = load i64, ptr %begin, align 8
  %cmp63 = icmp sle i64 %70, %71
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end61
  %72 = load i64, ptr %begin, align 8
  %add65 = add nsw i64 %72, 1
  store i64 %add65, ptr %bisect, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end61
  %73 = load ptr, ptr %vf.addr, align 8
  %74 = load i64, ptr %bisect, align 8
  call void @_seek_helper(ptr noundef %73, i64 noundef %74)
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then57
  br label %if.end97

if.else68:                                        ; preds = %if.end52
  %call69 = call i64 @ogg_page_granulepos(ptr noundef %og)
  store i64 %call69, ptr %granulepos, align 8
  %75 = load i64, ptr %granulepos, align 8
  %cmp70 = icmp eq i64 %75, -1
  br i1 %cmp70, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.else68
  br label %while.cond45, !llvm.loop !8

if.end72:                                         ; preds = %if.else68
  %76 = load i64, ptr %granulepos, align 8
  %77 = load i64, ptr %target, align 8
  %cmp73 = icmp slt i64 %76, %77
  br i1 %cmp73, label %if.then74, label %if.else80

if.then74:                                        ; preds = %if.end72
  %78 = load i64, ptr %result, align 8
  store i64 %78, ptr %best, align 8
  %79 = load ptr, ptr %vf.addr, align 8
  %offset75 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %79, i32 0, i32 2
  %80 = load i64, ptr %offset75, align 8
  store i64 %80, ptr %begin, align 8
  %81 = load i64, ptr %granulepos, align 8
  store i64 %81, ptr %begintime, align 8
  %82 = load i64, ptr %target, align 8
  %83 = load i64, ptr %begintime, align 8
  %sub76 = sub nsw i64 %82, %83
  %cmp77 = icmp sgt i64 %sub76, 44100
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then74
  br label %while.end

if.end79:                                         ; preds = %if.then74
  %84 = load i64, ptr %begin, align 8
  store i64 %84, ptr %bisect, align 8
  br label %if.end96

if.else80:                                        ; preds = %if.end72
  %85 = load i64, ptr %bisect, align 8
  %86 = load i64, ptr %begin, align 8
  %add81 = add nsw i64 %86, 1
  %cmp82 = icmp sle i64 %85, %add81
  br i1 %cmp82, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else80
  %87 = load i64, ptr %begin, align 8
  store i64 %87, ptr %end, align 8
  br label %if.end95

if.else84:                                        ; preds = %if.else80
  %88 = load i64, ptr %end, align 8
  %89 = load ptr, ptr %vf.addr, align 8
  %offset85 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %89, i32 0, i32 2
  %90 = load i64, ptr %offset85, align 8
  %cmp86 = icmp eq i64 %88, %90
  br i1 %cmp86, label %if.then87, label %if.else93

if.then87:                                        ; preds = %if.else84
  %91 = load i64, ptr %result, align 8
  store i64 %91, ptr %end, align 8
  %92 = load i64, ptr %bisect, align 8
  %sub88 = sub nsw i64 %92, 8500
  store i64 %sub88, ptr %bisect, align 8
  %93 = load i64, ptr %bisect, align 8
  %94 = load i64, ptr %begin, align 8
  %cmp89 = icmp sle i64 %93, %94
  br i1 %cmp89, label %if.then90, label %if.end92

if.then90:                                        ; preds = %if.then87
  %95 = load i64, ptr %begin, align 8
  %add91 = add nsw i64 %95, 1
  store i64 %add91, ptr %bisect, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.then87
  %96 = load ptr, ptr %vf.addr, align 8
  %97 = load i64, ptr %bisect, align 8
  call void @_seek_helper(ptr noundef %96, i64 noundef %97)
  br label %if.end94

if.else93:                                        ; preds = %if.else84
  %98 = load i64, ptr %result, align 8
  store i64 %98, ptr %end, align 8
  %99 = load i64, ptr %granulepos, align 8
  store i64 %99, ptr %endtime, align 8
  br label %while.end

if.end94:                                         ; preds = %if.end92
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then83
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end79
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end67
  br label %while.cond45, !llvm.loop !8

while.end:                                        ; preds = %if.else93, %if.then78, %while.cond45
  br label %while.cond, !llvm.loop !9

while.end98:                                      ; preds = %while.cond
  %100 = load ptr, ptr %vf.addr, align 8
  %101 = load i64, ptr %best, align 8
  call void @_seek_helper(ptr noundef %100, i64 noundef %101)
  %102 = load ptr, ptr %vf.addr, align 8
  %pcm_offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %102, i32 0, i32 12
  store i64 -1, ptr %pcm_offset, align 8
  %103 = load ptr, ptr %vf.addr, align 8
  %call100 = call i64 @_get_next_page(ptr noundef %103, ptr noundef %og99, i64 noundef -1)
  %cmp101 = icmp slt i64 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.end103

if.then102:                                       ; preds = %while.end98
  store i32 -2, ptr %retval, align 4
  br label %return

if.end103:                                        ; preds = %while.end98
  %104 = load i32, ptr %link, align 4
  %105 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %105, i32 0, i32 15
  %106 = load i32, ptr %current_link, align 8
  %cmp104 = icmp ne i32 %104, %106
  br i1 %cmp104, label %if.then105, label %if.else109

if.then105:                                       ; preds = %if.end103
  %107 = load ptr, ptr %vf.addr, align 8
  call void @_decode_clear(ptr noundef %107)
  %108 = load i32, ptr %link, align 4
  %109 = load ptr, ptr %vf.addr, align 8
  %current_link106 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %109, i32 0, i32 15
  store i32 %108, ptr %current_link106, align 8
  %call107 = call i32 @ogg_page_serialno(ptr noundef %og99)
  %conv = sext i32 %call107 to i64
  %110 = load ptr, ptr %vf.addr, align 8
  %current_serialno = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %110, i32 0, i32 14
  store i64 %conv, ptr %current_serialno, align 8
  %111 = load ptr, ptr %vf.addr, align 8
  %ready_state108 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %111, i32 0, i32 13
  store i32 3, ptr %ready_state108, align 8
  br label %if.end111

if.else109:                                       ; preds = %if.end103
  %112 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %112, i32 0, i32 19
  %call110 = call i32 @vorbis_synthesis_restart(ptr noundef %vd)
  br label %if.end111

if.end111:                                        ; preds = %if.else109, %if.then105
  %113 = load ptr, ptr %vf.addr, align 8
  %os = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %113, i32 0, i32 18
  %114 = load ptr, ptr %vf.addr, align 8
  %current_serialno112 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %114, i32 0, i32 14
  %115 = load i64, ptr %current_serialno112, align 8
  %conv113 = trunc i64 %115 to i32
  %call114 = call i32 @ogg_stream_reset_serialno(ptr noundef %os, i32 noundef %conv113)
  %116 = load ptr, ptr %vf.addr, align 8
  %os115 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %116, i32 0, i32 18
  %call116 = call i32 @ogg_stream_pagein(ptr noundef %os115, ptr noundef %og99)
  br label %while.body118

while.body118:                                    ; preds = %if.end171, %if.end111
  %117 = load ptr, ptr %vf.addr, align 8
  %os119 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %117, i32 0, i32 18
  %call120 = call i32 @ogg_stream_packetpeek(ptr noundef %os119, ptr noundef %op)
  %conv121 = sext i32 %call120 to i64
  store i64 %conv121, ptr %result, align 8
  %118 = load i64, ptr %result, align 8
  %cmp122 = icmp eq i64 %118, 0
  br i1 %cmp122, label %if.then124, label %if.end142

if.then124:                                       ; preds = %while.body118
  %119 = load ptr, ptr %vf.addr, align 8
  %120 = load i64, ptr %best, align 8
  call void @_seek_helper(ptr noundef %119, i64 noundef %120)
  br label %while.body126

while.body126:                                    ; preds = %if.end140, %if.then124
  %121 = load ptr, ptr %vf.addr, align 8
  %call127 = call i64 @_get_prev_page(ptr noundef %121, ptr noundef %og99)
  store i64 %call127, ptr %result, align 8
  %122 = load i64, ptr %result, align 8
  %cmp128 = icmp slt i64 %122, 0
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %while.body126
  br label %seek_error

if.end131:                                        ; preds = %while.body126
  %call132 = call i64 @ogg_page_granulepos(ptr noundef %og99)
  %cmp133 = icmp sgt i64 %call132, -1
  br i1 %cmp133, label %if.then138, label %lor.lhs.false135

lor.lhs.false135:                                 ; preds = %if.end131
  %call136 = call i32 @ogg_page_continued(ptr noundef %og99)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.end140, label %if.then138

if.then138:                                       ; preds = %lor.lhs.false135, %if.end131
  %123 = load ptr, ptr %vf.addr, align 8
  %124 = load i64, ptr %result, align 8
  %call139 = call i32 @ov_raw_seek(ptr noundef %123, i64 noundef %124)
  store i32 %call139, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %lor.lhs.false135
  %125 = load i64, ptr %result, align 8
  %126 = load ptr, ptr %vf.addr, align 8
  %offset141 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %126, i32 0, i32 2
  store i64 %125, ptr %offset141, align 8
  br label %while.body126

if.end142:                                        ; preds = %while.body118
  %127 = load i64, ptr %result, align 8
  %cmp143 = icmp slt i64 %127, 0
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.end142
  store i64 -136, ptr %result, align 8
  br label %seek_error

if.end146:                                        ; preds = %if.end142
  %granulepos147 = getelementptr inbounds nuw %struct.ogg_packet, ptr %op, i32 0, i32 4
  %128 = load i64, ptr %granulepos147, align 8
  %cmp148 = icmp ne i64 %128, -1
  br i1 %cmp148, label %if.then150, label %if.else167

if.then150:                                       ; preds = %if.end146
  %granulepos151 = getelementptr inbounds nuw %struct.ogg_packet, ptr %op, i32 0, i32 4
  %129 = load i64, ptr %granulepos151, align 8
  %130 = load ptr, ptr %vf.addr, align 8
  %pcmlengths152 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %130, i32 0, i32 9
  %131 = load ptr, ptr %pcmlengths152, align 8
  %132 = load ptr, ptr %vf.addr, align 8
  %current_link153 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %132, i32 0, i32 15
  %133 = load i32, ptr %current_link153, align 8
  %mul154 = mul nsw i32 %133, 2
  %idxprom155 = sext i32 %mul154 to i64
  %arrayidx156 = getelementptr inbounds i64, ptr %131, i64 %idxprom155
  %134 = load i64, ptr %arrayidx156, align 8
  %sub157 = sub nsw i64 %129, %134
  %135 = load ptr, ptr %vf.addr, align 8
  %pcm_offset158 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %135, i32 0, i32 12
  store i64 %sub157, ptr %pcm_offset158, align 8
  %136 = load ptr, ptr %vf.addr, align 8
  %pcm_offset159 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %136, i32 0, i32 12
  %137 = load i64, ptr %pcm_offset159, align 8
  %cmp160 = icmp slt i64 %137, 0
  br i1 %cmp160, label %if.then162, label %if.end164

if.then162:                                       ; preds = %if.then150
  %138 = load ptr, ptr %vf.addr, align 8
  %pcm_offset163 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %138, i32 0, i32 12
  store i64 0, ptr %pcm_offset163, align 8
  br label %if.end164

if.end164:                                        ; preds = %if.then162, %if.then150
  %139 = load i64, ptr %total, align 8
  %140 = load ptr, ptr %vf.addr, align 8
  %pcm_offset165 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %140, i32 0, i32 12
  %141 = load i64, ptr %pcm_offset165, align 8
  %add166 = add nsw i64 %141, %139
  store i64 %add166, ptr %pcm_offset165, align 8
  br label %while.end172

if.else167:                                       ; preds = %if.end146
  %142 = load ptr, ptr %vf.addr, align 8
  %os168 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %142, i32 0, i32 18
  %call169 = call i32 @ogg_stream_packetout(ptr noundef %os168, ptr noundef null)
  %conv170 = sext i32 %call169 to i64
  store i64 %conv170, ptr %result, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.else167
  br label %while.body118

while.end172:                                     ; preds = %if.end164
  %143 = load ptr, ptr %vf.addr, align 8
  %pcm_offset173 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %143, i32 0, i32 12
  %144 = load i64, ptr %pcm_offset173, align 8
  %145 = load i64, ptr %pos.addr, align 8
  %cmp174 = icmp sgt i64 %144, %145
  br i1 %cmp174, label %if.then180, label %lor.lhs.false176

lor.lhs.false176:                                 ; preds = %while.end172
  %146 = load i64, ptr %pos.addr, align 8
  %147 = load ptr, ptr %vf.addr, align 8
  %call177 = call i64 @ov_pcm_total(ptr noundef %147, i32 noundef -1)
  %cmp178 = icmp sgt i64 %146, %call177
  br i1 %cmp178, label %if.then180, label %if.end181

if.then180:                                       ; preds = %lor.lhs.false176, %while.end172
  store i64 -129, ptr %result, align 8
  br label %seek_error

if.end181:                                        ; preds = %lor.lhs.false176
  %148 = load ptr, ptr %vf.addr, align 8
  %bittrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %148, i32 0, i32 16
  store double 0.000000e+00, ptr %bittrack, align 8
  %149 = load ptr, ptr %vf.addr, align 8
  %samptrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %149, i32 0, i32 17
  store double 0.000000e+00, ptr %samptrack, align 8
  store i32 0, ptr %retval, align 4
  br label %return

seek_error:                                       ; preds = %if.then180, %if.then145, %if.then130, %if.then60, %if.then51
  %150 = load ptr, ptr %vf.addr, align 8
  %pcm_offset182 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %150, i32 0, i32 12
  store i64 -1, ptr %pcm_offset182, align 8
  %151 = load ptr, ptr %vf.addr, align 8
  call void @_decode_clear(ptr noundef %151)
  %152 = load i64, ptr %result, align 8
  %conv183 = trunc i64 %152 to i32
  store i32 %conv183, ptr %retval, align 4
  br label %return

return:                                           ; preds = %seek_error, %if.end181, %if.then138, %if.then102, %if.then5, %if.then1, %if.then
  %153 = load i32, ptr %retval, align 4
  ret i32 %153
}

; Function Attrs: nounwind uwtable
declare dso_local i64 @ogg_page_granulepos(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_packetpeek(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_prev_page(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_continued(ptr noundef) #0

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
