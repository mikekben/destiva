; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_init(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_eos(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_decode_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ov_pcm_total(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ov_raw_seek(ptr noundef %vf, i64 noundef %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %work_os = alloca %struct.ogg_stream_state, align 8
  %og = alloca %struct.ogg_page, align 8
  %op = alloca %struct.ogg_packet, align 8
  %lastblock = alloca i32, align 4
  %accblock = alloca i32, align 4
  %thisblock = alloca i32, align 4
  %eosflag = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %link = alloca i32, align 4
  %granulepos46 = alloca i64, align 8
  %link101 = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store i64 %pos, ptr %pos.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -131, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i32 -138, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %4 = load i64, ptr %pos.addr, align 8
  %cmp3 = icmp slt i64 %4, 0
  br i1 %cmp3, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end2
  %5 = load i64, ptr %pos.addr, align 8
  %6 = load ptr, ptr %vf.addr, align 8
  %end = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %end, align 8
  %cmp4 = icmp sgt i64 %5, %7
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end2
  store i32 -131, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %vf.addr, align 8
  %pcm_offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %8, i32 0, i32 12
  store i64 -1, ptr %pcm_offset, align 8
  %9 = load ptr, ptr %vf.addr, align 8
  %os = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 18
  %10 = load ptr, ptr %vf.addr, align 8
  %current_serialno = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %10, i32 0, i32 14
  %11 = load i64, ptr %current_serialno, align 8
  %conv = trunc i64 %11 to i32
  %call = call i32 @ogg_stream_reset_serialno(ptr noundef %os, i32 noundef %conv)
  %12 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 19
  %call7 = call i32 @vorbis_synthesis_restart(ptr noundef %vd)
  %13 = load ptr, ptr %vf.addr, align 8
  %14 = load i64, ptr %pos.addr, align 8
  call void @_seek_helper(ptr noundef %13, i64 noundef %14)
  store i32 0, ptr %lastblock, align 4
  store i32 0, ptr %accblock, align 4
  %15 = load ptr, ptr %vf.addr, align 8
  %current_serialno8 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %15, i32 0, i32 14
  %16 = load i64, ptr %current_serialno8, align 8
  %conv9 = trunc i64 %16 to i32
  %call10 = call i32 @ogg_stream_init(ptr noundef %work_os, i32 noundef %conv9)
  %call11 = call i32 @ogg_stream_reset(ptr noundef %work_os)
  br label %while.body

while.body:                                       ; preds = %if.end133, %if.end65, %if.end6
  %17 = load ptr, ptr %vf.addr, align 8
  %ready_state12 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 13
  %18 = load i32, ptr %ready_state12, align 8
  %cmp13 = icmp sge i32 %18, 3
  br i1 %cmp13, label %if.then15, label %if.end71

if.then15:                                        ; preds = %while.body
  %call16 = call i32 @ogg_stream_packetout(ptr noundef %work_os, ptr noundef %op)
  store i32 %call16, ptr %result, align 4
  %19 = load i32, ptr %result, align 4
  %cmp17 = icmp sgt i32 %19, 0
  br i1 %cmp17, label %if.then19, label %if.end70

if.then19:                                        ; preds = %if.then15
  %20 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %20, i32 0, i32 10
  %21 = load ptr, ptr %vi, align 8
  %22 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %22, i32 0, i32 15
  %23 = load i32, ptr %current_link, align 8
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds %struct.vorbis_info, ptr %21, i64 %idxprom
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %arrayidx, i32 0, i32 7
  %24 = load ptr, ptr %codec_setup, align 8
  %tobool20 = icmp ne ptr %24, null
  br i1 %tobool20, label %if.then21, label %if.else66

if.then21:                                        ; preds = %if.then19
  %25 = load ptr, ptr %vf.addr, align 8
  %vi22 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %25, i32 0, i32 10
  %26 = load ptr, ptr %vi22, align 8
  %27 = load ptr, ptr %vf.addr, align 8
  %current_link23 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %27, i32 0, i32 15
  %28 = load i32, ptr %current_link23, align 8
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_info, ptr %26, i64 %idx.ext
  %call24 = call i64 @vorbis_packet_blocksize(ptr noundef %add.ptr, ptr noundef %op)
  %conv25 = trunc i64 %call24 to i32
  store i32 %conv25, ptr %thisblock, align 4
  %29 = load i32, ptr %thisblock, align 4
  %cmp26 = icmp slt i32 %29, 0
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then21
  %30 = load ptr, ptr %vf.addr, align 8
  %os29 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %30, i32 0, i32 18
  %call30 = call i32 @ogg_stream_packetout(ptr noundef %os29, ptr noundef null)
  store i32 0, ptr %thisblock, align 4
  br label %if.end41

if.else:                                          ; preds = %if.then21
  %31 = load i32, ptr %eosflag, align 4
  %tobool31 = icmp ne i32 %31, 0
  br i1 %tobool31, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.else
  %32 = load ptr, ptr %vf.addr, align 8
  %os33 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %32, i32 0, i32 18
  %call34 = call i32 @ogg_stream_packetout(ptr noundef %os33, ptr noundef null)
  br label %if.end40

if.else35:                                        ; preds = %if.else
  %33 = load i32, ptr %lastblock, align 4
  %tobool36 = icmp ne i32 %33, 0
  br i1 %tobool36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.else35
  %34 = load i32, ptr %lastblock, align 4
  %35 = load i32, ptr %thisblock, align 4
  %add = add nsw i32 %34, %35
  %shr = ashr i32 %add, 2
  %36 = load i32, ptr %accblock, align 4
  %add38 = add nsw i32 %36, %shr
  store i32 %add38, ptr %accblock, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.else35
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then28
  %granulepos = getelementptr inbounds nuw %struct.ogg_packet, ptr %op, i32 0, i32 4
  %37 = load i64, ptr %granulepos, align 8
  %cmp42 = icmp ne i64 %37, -1
  br i1 %cmp42, label %if.then44, label %if.end65

if.then44:                                        ; preds = %if.end41
  %38 = load ptr, ptr %vf.addr, align 8
  %current_link45 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %38, i32 0, i32 15
  %39 = load i32, ptr %current_link45, align 8
  store i32 %39, ptr %link, align 4
  %granulepos47 = getelementptr inbounds nuw %struct.ogg_packet, ptr %op, i32 0, i32 4
  %40 = load i64, ptr %granulepos47, align 8
  %41 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %41, i32 0, i32 9
  %42 = load ptr, ptr %pcmlengths, align 8
  %43 = load i32, ptr %link, align 4
  %mul = mul nsw i32 %43, 2
  %idxprom48 = sext i32 %mul to i64
  %arrayidx49 = getelementptr inbounds i64, ptr %42, i64 %idxprom48
  %44 = load i64, ptr %arrayidx49, align 8
  %sub = sub nsw i64 %40, %44
  store i64 %sub, ptr %granulepos46, align 8
  %45 = load i64, ptr %granulepos46, align 8
  %cmp50 = icmp slt i64 %45, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then44
  store i64 0, ptr %granulepos46, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then44
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end53
  %46 = load i32, ptr %i, align 4
  %47 = load i32, ptr %link, align 4
  %cmp54 = icmp slt i32 %46, %47
  br i1 %cmp54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load ptr, ptr %vf.addr, align 8
  %pcmlengths56 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %48, i32 0, i32 9
  %49 = load ptr, ptr %pcmlengths56, align 8
  %50 = load i32, ptr %i, align 4
  %mul57 = mul nsw i32 %50, 2
  %add58 = add nsw i32 %mul57, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i64, ptr %49, i64 %idxprom59
  %51 = load i64, ptr %arrayidx60, align 8
  %52 = load i64, ptr %granulepos46, align 8
  %add61 = add nsw i64 %52, %51
  store i64 %add61, ptr %granulepos46, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, ptr %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %54 = load i64, ptr %granulepos46, align 8
  %55 = load i32, ptr %accblock, align 4
  %conv62 = sext i32 %55 to i64
  %sub63 = sub nsw i64 %54, %conv62
  %56 = load ptr, ptr %vf.addr, align 8
  %pcm_offset64 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %56, i32 0, i32 12
  store i64 %sub63, ptr %pcm_offset64, align 8
  br label %while.end

if.end65:                                         ; preds = %if.end41
  %57 = load i32, ptr %thisblock, align 4
  store i32 %57, ptr %lastblock, align 4
  br label %while.body

if.else66:                                        ; preds = %if.then19
  %58 = load ptr, ptr %vf.addr, align 8
  %os67 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %58, i32 0, i32 18
  %call68 = call i32 @ogg_stream_packetout(ptr noundef %os67, ptr noundef null)
  br label %if.end69

if.end69:                                         ; preds = %if.else66
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then15
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %while.body
  %59 = load i32, ptr %lastblock, align 4
  %tobool72 = icmp ne i32 %59, 0
  br i1 %tobool72, label %if.else81, label %if.then73

if.then73:                                        ; preds = %if.end71
  %60 = load ptr, ptr %vf.addr, align 8
  %call74 = call i64 @_get_next_page(ptr noundef %60, ptr noundef %og, i64 noundef -1)
  %cmp75 = icmp slt i64 %call74, 0
  br i1 %cmp75, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.then73
  %61 = load ptr, ptr %vf.addr, align 8
  %call78 = call i64 @ov_pcm_total(ptr noundef %61, i32 noundef -1)
  %62 = load ptr, ptr %vf.addr, align 8
  %pcm_offset79 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %62, i32 0, i32 12
  store i64 %call78, ptr %pcm_offset79, align 8
  br label %while.end

if.end80:                                         ; preds = %if.then73
  br label %if.end83

if.else81:                                        ; preds = %if.end71
  %63 = load ptr, ptr %vf.addr, align 8
  %pcm_offset82 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %63, i32 0, i32 12
  store i64 -1, ptr %pcm_offset82, align 8
  br label %while.end

if.end83:                                         ; preds = %if.end80
  %64 = load ptr, ptr %vf.addr, align 8
  %ready_state84 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %64, i32 0, i32 13
  %65 = load i32, ptr %ready_state84, align 8
  %cmp85 = icmp sge i32 %65, 3
  br i1 %cmp85, label %if.then87, label %if.end96

if.then87:                                        ; preds = %if.end83
  %66 = load ptr, ptr %vf.addr, align 8
  %current_serialno88 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %66, i32 0, i32 14
  %67 = load i64, ptr %current_serialno88, align 8
  %call89 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv90 = sext i32 %call89 to i64
  %cmp91 = icmp ne i64 %67, %conv90
  br i1 %cmp91, label %if.then93, label %if.end95

if.then93:                                        ; preds = %if.then87
  %68 = load ptr, ptr %vf.addr, align 8
  call void @_decode_clear(ptr noundef %68)
  %call94 = call i32 @ogg_stream_clear(ptr noundef %work_os)
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.then87
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end83
  %69 = load ptr, ptr %vf.addr, align 8
  %ready_state97 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %69, i32 0, i32 13
  %70 = load i32, ptr %ready_state97, align 8
  %cmp98 = icmp slt i32 %70, 3
  br i1 %cmp98, label %if.then100, label %if.end133

if.then100:                                       ; preds = %if.end96
  %call102 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv103 = sext i32 %call102 to i64
  %71 = load ptr, ptr %vf.addr, align 8
  %current_serialno104 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %71, i32 0, i32 14
  store i64 %conv103, ptr %current_serialno104, align 8
  store i32 0, ptr %link101, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc116, %if.then100
  %72 = load i32, ptr %link101, align 4
  %73 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %73, i32 0, i32 5
  %74 = load i32, ptr %links, align 8
  %cmp106 = icmp slt i32 %72, %74
  br i1 %cmp106, label %for.body108, label %for.end118

for.body108:                                      ; preds = %for.cond105
  %75 = load ptr, ptr %vf.addr, align 8
  %serialnos = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %75, i32 0, i32 8
  %76 = load ptr, ptr %serialnos, align 8
  %77 = load i32, ptr %link101, align 4
  %idxprom109 = sext i32 %77 to i64
  %arrayidx110 = getelementptr inbounds i64, ptr %76, i64 %idxprom109
  %78 = load i64, ptr %arrayidx110, align 8
  %79 = load ptr, ptr %vf.addr, align 8
  %current_serialno111 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %79, i32 0, i32 14
  %80 = load i64, ptr %current_serialno111, align 8
  %cmp112 = icmp eq i64 %78, %80
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %for.body108
  br label %for.end118

if.end115:                                        ; preds = %for.body108
  br label %for.inc116

for.inc116:                                       ; preds = %if.end115
  %81 = load i32, ptr %link101, align 4
  %inc117 = add nsw i32 %81, 1
  store i32 %inc117, ptr %link101, align 4
  br label %for.cond105, !llvm.loop !8

for.end118:                                       ; preds = %if.then114, %for.cond105
  %82 = load i32, ptr %link101, align 4
  %83 = load ptr, ptr %vf.addr, align 8
  %links119 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %83, i32 0, i32 5
  %84 = load i32, ptr %links119, align 8
  %cmp120 = icmp eq i32 %82, %84
  br i1 %cmp120, label %if.then122, label %if.end123

if.then122:                                       ; preds = %for.end118
  br label %seek_error

if.end123:                                        ; preds = %for.end118
  %85 = load i32, ptr %link101, align 4
  %86 = load ptr, ptr %vf.addr, align 8
  %current_link124 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %86, i32 0, i32 15
  store i32 %85, ptr %current_link124, align 8
  %87 = load ptr, ptr %vf.addr, align 8
  %os125 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %87, i32 0, i32 18
  %88 = load ptr, ptr %vf.addr, align 8
  %current_serialno126 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %88, i32 0, i32 14
  %89 = load i64, ptr %current_serialno126, align 8
  %conv127 = trunc i64 %89 to i32
  %call128 = call i32 @ogg_stream_reset_serialno(ptr noundef %os125, i32 noundef %conv127)
  %90 = load ptr, ptr %vf.addr, align 8
  %current_serialno129 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %90, i32 0, i32 14
  %91 = load i64, ptr %current_serialno129, align 8
  %conv130 = trunc i64 %91 to i32
  %call131 = call i32 @ogg_stream_reset_serialno(ptr noundef %work_os, i32 noundef %conv130)
  %92 = load ptr, ptr %vf.addr, align 8
  %ready_state132 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %92, i32 0, i32 13
  store i32 3, ptr %ready_state132, align 8
  br label %if.end133

if.end133:                                        ; preds = %if.end123, %if.end96
  %93 = load ptr, ptr %vf.addr, align 8
  %os134 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %93, i32 0, i32 18
  %call135 = call i32 @ogg_stream_pagein(ptr noundef %os134, ptr noundef %og)
  %call136 = call i32 @ogg_stream_pagein(ptr noundef %work_os, ptr noundef %og)
  %call137 = call i32 @ogg_page_eos(ptr noundef %og)
  store i32 %call137, ptr %eosflag, align 4
  br label %while.body

while.end:                                        ; preds = %if.else81, %if.then77, %for.end
  %call138 = call i32 @ogg_stream_clear(ptr noundef %work_os)
  %94 = load ptr, ptr %vf.addr, align 8
  %bittrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %94, i32 0, i32 16
  store double 0.000000e+00, ptr %bittrack, align 8
  %95 = load ptr, ptr %vf.addr, align 8
  %samptrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %95, i32 0, i32 17
  store double 0.000000e+00, ptr %samptrack, align 8
  store i32 0, ptr %retval, align 4
  br label %return

seek_error:                                       ; preds = %if.then122
  %96 = load ptr, ptr %vf.addr, align 8
  %pcm_offset139 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %96, i32 0, i32 12
  store i64 -1, ptr %pcm_offset139, align 8
  %call140 = call i32 @ogg_stream_clear(ptr noundef %work_os)
  %97 = load ptr, ptr %vf.addr, align 8
  call void @_decode_clear(ptr noundef %97)
  store i32 -137, ptr %retval, align 4
  br label %return

return:                                           ; preds = %seek_error, %while.end, %if.then5, %if.then1, %if.then
  %98 = load i32, ptr %retval, align 4
  ret i32 %98
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_reset_serialno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_restart(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_seek_helper(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_reset(ptr noundef) #0

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
