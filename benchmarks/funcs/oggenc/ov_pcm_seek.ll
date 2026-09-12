; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @_decode_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ov_pcm_total(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_reset_serialno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_packetout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @vorbis_packet_blocksize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_next_page(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_serialno(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_pagein(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ov_pcm_seek_page(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_packetpeek(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_pcm_seek(ptr noundef %vf, i64 noundef %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %thisblock = alloca i32, align 4
  %lastblock = alloca i32, align 4
  %ret = alloca i32, align 4
  %op = alloca %struct.ogg_packet, align 8
  %og = alloca %struct.ogg_page, align 8
  %ret4 = alloca i32, align 4
  %i = alloca i32, align 4
  %link = alloca i32, align 4
  %target = alloca i64, align 8
  %samples = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store i64 %pos, ptr %pos.addr, align 8
  store i32 0, ptr %lastblock, align 4
  %0 = load ptr, ptr %vf.addr, align 8
  %1 = load i64, ptr %pos.addr, align 8
  %call = call i32 @ov_pcm_seek_page(ptr noundef %0, i64 noundef %1)
  store i32 %call, ptr %ret, align 4
  %2 = load i32, ptr %ret, align 4
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %vf.addr, align 8
  %call1 = call i32 @_make_decode_ready(ptr noundef %4)
  store i32 %call1, ptr %ret, align 4
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %ret, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end114, %if.then11, %if.end3
  %6 = load ptr, ptr %vf.addr, align 8
  %os = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 18
  %call5 = call i32 @ogg_stream_packetpeek(ptr noundef %os, ptr noundef %op)
  store i32 %call5, ptr %ret4, align 4
  %7 = load i32, ptr %ret4, align 4
  %cmp6 = icmp sgt i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  %8 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %8, i32 0, i32 10
  %9 = load ptr, ptr %vi, align 8
  %10 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %10, i32 0, i32 15
  %11 = load i32, ptr %current_link, align 8
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_info, ptr %9, i64 %idx.ext
  %call8 = call i64 @vorbis_packet_blocksize(ptr noundef %add.ptr, ptr noundef %op)
  %conv = trunc i64 %call8 to i32
  store i32 %conv, ptr %thisblock, align 4
  %12 = load i32, ptr %thisblock, align 4
  %cmp9 = icmp slt i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then7
  %13 = load ptr, ptr %vf.addr, align 8
  %os12 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %13, i32 0, i32 18
  %call13 = call i32 @ogg_stream_packetout(ptr noundef %os12, ptr noundef null)
  br label %while.body

if.end14:                                         ; preds = %if.then7
  %14 = load i32, ptr %lastblock, align 4
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  %15 = load i32, ptr %lastblock, align 4
  %16 = load i32, ptr %thisblock, align 4
  %add = add nsw i32 %15, %16
  %shr = ashr i32 %add, 2
  %conv17 = sext i32 %shr to i64
  %17 = load ptr, ptr %vf.addr, align 8
  %pcm_offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 12
  %18 = load i64, ptr %pcm_offset, align 8
  %add18 = add nsw i64 %18, %conv17
  store i64 %add18, ptr %pcm_offset, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14
  %19 = load ptr, ptr %vf.addr, align 8
  %pcm_offset20 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %19, i32 0, i32 12
  %20 = load i64, ptr %pcm_offset20, align 8
  %21 = load i32, ptr %thisblock, align 4
  %22 = load ptr, ptr %vf.addr, align 8
  %vi21 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %vi21, align 8
  %call22 = call i32 @vorbis_info_blocksize(ptr noundef %23, i32 noundef 1)
  %add23 = add nsw i32 %21, %call22
  %shr24 = ashr i32 %add23, 2
  %conv25 = sext i32 %shr24 to i64
  %add26 = add nsw i64 %20, %conv25
  %24 = load i64, ptr %pos.addr, align 8
  %cmp27 = icmp sge i64 %add26, %24
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end19
  br label %while.end

if.end30:                                         ; preds = %if.end19
  %25 = load ptr, ptr %vf.addr, align 8
  %os31 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %25, i32 0, i32 18
  %call32 = call i32 @ogg_stream_packetout(ptr noundef %os31, ptr noundef null)
  %26 = load ptr, ptr %vf.addr, align 8
  %vb = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %26, i32 0, i32 20
  %call33 = call i32 @vorbis_synthesis_trackonly(ptr noundef %vb, ptr noundef %op)
  %27 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %27, i32 0, i32 19
  %28 = load ptr, ptr %vf.addr, align 8
  %vb34 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %28, i32 0, i32 20
  %call35 = call i32 @vorbis_synthesis_blockin(ptr noundef %vd, ptr noundef %vb34)
  %granulepos = getelementptr inbounds nuw %struct.ogg_packet, ptr %op, i32 0, i32 4
  %29 = load i64, ptr %granulepos, align 8
  %cmp36 = icmp sgt i64 %29, -1
  br i1 %cmp36, label %if.then38, label %if.end58

if.then38:                                        ; preds = %if.end30
  %granulepos39 = getelementptr inbounds nuw %struct.ogg_packet, ptr %op, i32 0, i32 4
  %30 = load i64, ptr %granulepos39, align 8
  %31 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %31, i32 0, i32 9
  %32 = load ptr, ptr %pcmlengths, align 8
  %33 = load ptr, ptr %vf.addr, align 8
  %current_link40 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %33, i32 0, i32 15
  %34 = load i32, ptr %current_link40, align 8
  %mul = mul nsw i32 %34, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i64, ptr %32, i64 %idxprom
  %35 = load i64, ptr %arrayidx, align 8
  %sub = sub nsw i64 %30, %35
  %36 = load ptr, ptr %vf.addr, align 8
  %pcm_offset41 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %36, i32 0, i32 12
  store i64 %sub, ptr %pcm_offset41, align 8
  %37 = load ptr, ptr %vf.addr, align 8
  %pcm_offset42 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %37, i32 0, i32 12
  %38 = load i64, ptr %pcm_offset42, align 8
  %cmp43 = icmp slt i64 %38, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.then38
  %39 = load ptr, ptr %vf.addr, align 8
  %pcm_offset46 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %39, i32 0, i32 12
  store i64 0, ptr %pcm_offset46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then38
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end47
  %40 = load i32, ptr %i, align 4
  %41 = load ptr, ptr %vf.addr, align 8
  %current_link48 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %41, i32 0, i32 15
  %42 = load i32, ptr %current_link48, align 8
  %cmp49 = icmp slt i32 %40, %42
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load ptr, ptr %vf.addr, align 8
  %pcmlengths51 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %43, i32 0, i32 9
  %44 = load ptr, ptr %pcmlengths51, align 8
  %45 = load i32, ptr %i, align 4
  %mul52 = mul nsw i32 %45, 2
  %add53 = add nsw i32 %mul52, 1
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds i64, ptr %44, i64 %idxprom54
  %46 = load i64, ptr %arrayidx55, align 8
  %47 = load ptr, ptr %vf.addr, align 8
  %pcm_offset56 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %47, i32 0, i32 12
  %48 = load i64, ptr %pcm_offset56, align 8
  %add57 = add nsw i64 %48, %46
  store i64 %add57, ptr %pcm_offset56, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, ptr %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end58

if.end58:                                         ; preds = %for.end, %if.end30
  %50 = load i32, ptr %thisblock, align 4
  store i32 %50, ptr %lastblock, align 4
  br label %if.end114

if.else:                                          ; preds = %while.body
  %51 = load i32, ptr %ret4, align 4
  %cmp59 = icmp slt i32 %51, 0
  br i1 %cmp59, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %if.else
  %52 = load i32, ptr %ret4, align 4
  %cmp61 = icmp ne i32 %52, -3
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %land.lhs.true
  br label %while.end

if.end64:                                         ; preds = %land.lhs.true, %if.else
  %53 = load ptr, ptr %vf.addr, align 8
  %call65 = call i64 @_get_next_page(ptr noundef %53, ptr noundef %og, i64 noundef -1)
  %cmp66 = icmp slt i64 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end64
  br label %while.end

if.end69:                                         ; preds = %if.end64
  %54 = load ptr, ptr %vf.addr, align 8
  %current_serialno = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %54, i32 0, i32 14
  %55 = load i64, ptr %current_serialno, align 8
  %call70 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv71 = sext i32 %call70 to i64
  %cmp72 = icmp ne i64 %55, %conv71
  br i1 %cmp72, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end69
  %56 = load ptr, ptr %vf.addr, align 8
  call void @_decode_clear(ptr noundef %56)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end69
  %57 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %57, i32 0, i32 13
  %58 = load i32, ptr %ready_state, align 8
  %cmp76 = icmp slt i32 %58, 3
  br i1 %cmp76, label %if.then78, label %if.end111

if.then78:                                        ; preds = %if.end75
  %call79 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv80 = sext i32 %call79 to i64
  %59 = load ptr, ptr %vf.addr, align 8
  %current_serialno81 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %59, i32 0, i32 14
  store i64 %conv80, ptr %current_serialno81, align 8
  store i32 0, ptr %link, align 4
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc93, %if.then78
  %60 = load i32, ptr %link, align 4
  %61 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %61, i32 0, i32 5
  %62 = load i32, ptr %links, align 8
  %cmp83 = icmp slt i32 %60, %62
  br i1 %cmp83, label %for.body85, label %for.end95

for.body85:                                       ; preds = %for.cond82
  %63 = load ptr, ptr %vf.addr, align 8
  %serialnos = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %63, i32 0, i32 8
  %64 = load ptr, ptr %serialnos, align 8
  %65 = load i32, ptr %link, align 4
  %idxprom86 = sext i32 %65 to i64
  %arrayidx87 = getelementptr inbounds i64, ptr %64, i64 %idxprom86
  %66 = load i64, ptr %arrayidx87, align 8
  %67 = load ptr, ptr %vf.addr, align 8
  %current_serialno88 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %67, i32 0, i32 14
  %68 = load i64, ptr %current_serialno88, align 8
  %cmp89 = icmp eq i64 %66, %68
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %for.body85
  br label %for.end95

if.end92:                                         ; preds = %for.body85
  br label %for.inc93

for.inc93:                                        ; preds = %if.end92
  %69 = load i32, ptr %link, align 4
  %inc94 = add nsw i32 %69, 1
  store i32 %inc94, ptr %link, align 4
  br label %for.cond82, !llvm.loop !8

for.end95:                                        ; preds = %if.then91, %for.cond82
  %70 = load i32, ptr %link, align 4
  %71 = load ptr, ptr %vf.addr, align 8
  %links96 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %71, i32 0, i32 5
  %72 = load i32, ptr %links96, align 8
  %cmp97 = icmp eq i32 %70, %72
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %for.end95
  store i32 -137, ptr %retval, align 4
  br label %return

if.end100:                                        ; preds = %for.end95
  %73 = load i32, ptr %link, align 4
  %74 = load ptr, ptr %vf.addr, align 8
  %current_link101 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %74, i32 0, i32 15
  store i32 %73, ptr %current_link101, align 8
  %75 = load ptr, ptr %vf.addr, align 8
  %os102 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %75, i32 0, i32 18
  %76 = load ptr, ptr %vf.addr, align 8
  %current_serialno103 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %76, i32 0, i32 14
  %77 = load i64, ptr %current_serialno103, align 8
  %conv104 = trunc i64 %77 to i32
  %call105 = call i32 @ogg_stream_reset_serialno(ptr noundef %os102, i32 noundef %conv104)
  %78 = load ptr, ptr %vf.addr, align 8
  %ready_state106 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %78, i32 0, i32 13
  store i32 3, ptr %ready_state106, align 8
  %79 = load ptr, ptr %vf.addr, align 8
  %call107 = call i32 @_make_decode_ready(ptr noundef %79)
  store i32 %call107, ptr %ret4, align 4
  %80 = load i32, ptr %ret4, align 4
  %tobool108 = icmp ne i32 %80, 0
  br i1 %tobool108, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end100
  %81 = load i32, ptr %ret4, align 4
  store i32 %81, ptr %retval, align 4
  br label %return

if.end110:                                        ; preds = %if.end100
  store i32 0, ptr %lastblock, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end75
  %82 = load ptr, ptr %vf.addr, align 8
  %os112 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %82, i32 0, i32 18
  %call113 = call i32 @ogg_stream_pagein(ptr noundef %os112, ptr noundef %og)
  br label %if.end114

if.end114:                                        ; preds = %if.end111, %if.end58
  br label %while.body

while.end:                                        ; preds = %if.then68, %if.then63, %if.then29
  %83 = load ptr, ptr %vf.addr, align 8
  %bittrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %83, i32 0, i32 16
  store double 0.000000e+00, ptr %bittrack, align 8
  %84 = load ptr, ptr %vf.addr, align 8
  %samptrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %84, i32 0, i32 17
  store double 0.000000e+00, ptr %samptrack, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end143, %while.end
  %85 = load ptr, ptr %vf.addr, align 8
  %pcm_offset115 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %85, i32 0, i32 12
  %86 = load i64, ptr %pcm_offset115, align 8
  %87 = load i64, ptr %pos.addr, align 8
  %cmp116 = icmp slt i64 %86, %87
  br i1 %cmp116, label %while.body118, label %while.end144

while.body118:                                    ; preds = %while.cond
  %88 = load i64, ptr %pos.addr, align 8
  %89 = load ptr, ptr %vf.addr, align 8
  %pcm_offset119 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %89, i32 0, i32 12
  %90 = load i64, ptr %pcm_offset119, align 8
  %sub120 = sub nsw i64 %88, %90
  store i64 %sub120, ptr %target, align 8
  %91 = load ptr, ptr %vf.addr, align 8
  %vd121 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %91, i32 0, i32 19
  %call122 = call i32 @vorbis_synthesis_pcmout(ptr noundef %vd121, ptr noundef null)
  %conv123 = sext i32 %call122 to i64
  store i64 %conv123, ptr %samples, align 8
  %92 = load i64, ptr %samples, align 8
  %93 = load i64, ptr %target, align 8
  %cmp124 = icmp sgt i64 %92, %93
  br i1 %cmp124, label %if.then126, label %if.end127

if.then126:                                       ; preds = %while.body118
  %94 = load i64, ptr %target, align 8
  store i64 %94, ptr %samples, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then126, %while.body118
  %95 = load ptr, ptr %vf.addr, align 8
  %vd128 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %95, i32 0, i32 19
  %96 = load i64, ptr %samples, align 8
  %conv129 = trunc i64 %96 to i32
  %call130 = call i32 @vorbis_synthesis_read(ptr noundef %vd128, i32 noundef %conv129)
  %97 = load i64, ptr %samples, align 8
  %98 = load ptr, ptr %vf.addr, align 8
  %pcm_offset131 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %98, i32 0, i32 12
  %99 = load i64, ptr %pcm_offset131, align 8
  %add132 = add nsw i64 %99, %97
  store i64 %add132, ptr %pcm_offset131, align 8
  %100 = load i64, ptr %samples, align 8
  %101 = load i64, ptr %target, align 8
  %cmp133 = icmp slt i64 %100, %101
  br i1 %cmp133, label %if.then135, label %if.end143

if.then135:                                       ; preds = %if.end127
  %102 = load ptr, ptr %vf.addr, align 8
  %call136 = call i32 @_fetch_and_process_packet(ptr noundef %102, ptr noundef null, i32 noundef 1, i32 noundef 1)
  %cmp137 = icmp sle i32 %call136, 0
  br i1 %cmp137, label %if.then139, label %if.end142

if.then139:                                       ; preds = %if.then135
  %103 = load ptr, ptr %vf.addr, align 8
  %call140 = call i64 @ov_pcm_total(ptr noundef %103, i32 noundef -1)
  %104 = load ptr, ptr %vf.addr, align 8
  %pcm_offset141 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %104, i32 0, i32 12
  store i64 %call140, ptr %pcm_offset141, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.then135
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end127
  br label %while.cond, !llvm.loop !9

while.end144:                                     ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end144, %if.then109, %if.then99, %if.then2, %if.then
  %105 = load i32, ptr %retval, align 4
  ret i32 %105
}

; Function Attrs: nounwind uwtable
declare hidden i32 @_make_decode_ready(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_info_blocksize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_trackonly(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_blockin(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_pcmout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_read(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_fetch_and_process_packet(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

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
