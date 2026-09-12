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
declare dso_local void @vorbis_comment_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_decode_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_reset_serialno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_packetout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_next_page(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_serialno(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_pagein(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_make_decode_ready(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_blockin(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis_pcmout(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @_fetch_and_process_packet(ptr noundef %vf, ptr noundef %op_in, i32 noundef %readp, i32 noundef %spanp) #0 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %op_in.addr = alloca ptr, align 8
  %readp.addr = alloca i32, align 4
  %spanp.addr = alloca i32, align 4
  %og = alloca %struct.ogg_page, align 8
  %op = alloca %struct.ogg_packet, align 8
  %op_ptr = alloca ptr, align 8
  %result = alloca i32, align 4
  %granulepos = alloca i64, align 8
  %oldsamples = alloca i32, align 4
  %link = alloca i32, align 4
  %i = alloca i32, align 4
  %samples = alloca i32, align 4
  %ret = alloca i32, align 4
  %link100 = alloca i32, align 4
  %ret137 = alloca i32, align 4
  %ret149 = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store ptr %op_in, ptr %op_in.addr, align 8
  store i32 %readp, ptr %readp.addr, align 4
  store i32 %spanp, ptr %spanp.addr, align 4
  br label %while.body

while.body:                                       ; preds = %if.end155, %entry
  %0 = load ptr, ptr %vf.addr, align 8
  %ready_state = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %ready_state, align 8
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end59

if.then:                                          ; preds = %while.body
  br label %while.body2

while.body2:                                      ; preds = %if.end58, %if.then
  %2 = load ptr, ptr %op_in.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body2
  %3 = load ptr, ptr %op_in.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.body2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %op, %cond.false ]
  store ptr %cond, ptr %op_ptr, align 8
  %4 = load ptr, ptr %vf.addr, align 8
  %os = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 18
  %5 = load ptr, ptr %op_ptr, align 8
  %call = call i32 @ogg_stream_packetout(ptr noundef %os, ptr noundef %5)
  store i32 %call, ptr %result, align 4
  store ptr null, ptr %op_in.addr, align 8
  %6 = load i32, ptr %result, align 4
  %cmp3 = icmp eq i32 %6, -1
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %cond.end
  store i32 -3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %7 = load i32, ptr %result, align 4
  %cmp5 = icmp sgt i32 %7, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %op_ptr, align 8
  %granulepos7 = getelementptr inbounds nuw %struct.ogg_packet, ptr %8, i32 0, i32 4
  %9 = load i64, ptr %granulepos7, align 8
  store i64 %9, ptr %granulepos, align 8
  %10 = load ptr, ptr %vf.addr, align 8
  %vb = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %10, i32 0, i32 20
  %11 = load ptr, ptr %op_ptr, align 8
  %call8 = call i32 @vorbis_synthesis(ptr noundef %vb, ptr noundef %11)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end57, label %if.then10

if.then10:                                        ; preds = %if.then6
  %12 = load ptr, ptr %vf.addr, align 8
  %vd = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 19
  %call11 = call i32 @vorbis_synthesis_pcmout(ptr noundef %vd, ptr noundef null)
  store i32 %call11, ptr %oldsamples, align 4
  %13 = load i32, ptr %oldsamples, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  store i32 -129, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then10
  %14 = load ptr, ptr %vf.addr, align 8
  %vd15 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %vf.addr, align 8
  %vb16 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %15, i32 0, i32 20
  %call17 = call i32 @vorbis_synthesis_blockin(ptr noundef %vd15, ptr noundef %vb16)
  %16 = load ptr, ptr %vf.addr, align 8
  %vd18 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %16, i32 0, i32 19
  %call19 = call i32 @vorbis_synthesis_pcmout(ptr noundef %vd18, ptr noundef null)
  %17 = load i32, ptr %oldsamples, align 4
  %sub = sub nsw i32 %call19, %17
  %conv = sitofp i32 %sub to double
  %18 = load ptr, ptr %vf.addr, align 8
  %samptrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %18, i32 0, i32 17
  %19 = load double, ptr %samptrack, align 8
  %add = fadd double %19, %conv
  store double %add, ptr %samptrack, align 8
  %20 = load ptr, ptr %op_ptr, align 8
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %bytes, align 8
  %mul = mul nsw i64 %21, 8
  %conv20 = sitofp i64 %mul to double
  %22 = load ptr, ptr %vf.addr, align 8
  %bittrack = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %22, i32 0, i32 16
  %23 = load double, ptr %bittrack, align 8
  %add21 = fadd double %23, %conv20
  store double %add21, ptr %bittrack, align 8
  %24 = load i64, ptr %granulepos, align 8
  %cmp22 = icmp ne i64 %24, -1
  br i1 %cmp22, label %land.lhs.true, label %if.end56

land.lhs.true:                                    ; preds = %if.end14
  %25 = load ptr, ptr %op_ptr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %25, i32 0, i32 3
  %26 = load i64, ptr %e_o_s, align 8
  %tobool24 = icmp ne i64 %26, 0
  br i1 %tobool24, label %if.end56, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %seekable, align 8
  %tobool26 = icmp ne i32 %28, 0
  br i1 %tobool26, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %if.then25
  %29 = load ptr, ptr %vf.addr, align 8
  %current_link = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %29, i32 0, i32 15
  %30 = load i32, ptr %current_link, align 8
  br label %cond.end29

cond.false28:                                     ; preds = %if.then25
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %cond.true27
  %cond30 = phi i32 [ %30, %cond.true27 ], [ 0, %cond.false28 ]
  store i32 %cond30, ptr %link, align 4
  %31 = load ptr, ptr %vf.addr, align 8
  %seekable31 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %seekable31, align 8
  %tobool32 = icmp ne i32 %32, 0
  br i1 %tobool32, label %land.lhs.true33, label %if.end39

land.lhs.true33:                                  ; preds = %cond.end29
  %33 = load i32, ptr %link, align 4
  %cmp34 = icmp sgt i32 %33, 0
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %land.lhs.true33
  %34 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %34, i32 0, i32 9
  %35 = load ptr, ptr %pcmlengths, align 8
  %36 = load i32, ptr %link, align 4
  %mul37 = mul nsw i32 %36, 2
  %idxprom = sext i32 %mul37 to i64
  %arrayidx = getelementptr inbounds i64, ptr %35, i64 %idxprom
  %37 = load i64, ptr %arrayidx, align 8
  %38 = load i64, ptr %granulepos, align 8
  %sub38 = sub nsw i64 %38, %37
  store i64 %sub38, ptr %granulepos, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %land.lhs.true33, %cond.end29
  %39 = load i64, ptr %granulepos, align 8
  %cmp40 = icmp slt i64 %39, 0
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  store i64 0, ptr %granulepos, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end39
  %40 = load ptr, ptr %vf.addr, align 8
  %vd44 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %40, i32 0, i32 19
  %call45 = call i32 @vorbis_synthesis_pcmout(ptr noundef %vd44, ptr noundef null)
  store i32 %call45, ptr %samples, align 4
  %41 = load i32, ptr %samples, align 4
  %conv46 = sext i32 %41 to i64
  %42 = load i64, ptr %granulepos, align 8
  %sub47 = sub nsw i64 %42, %conv46
  store i64 %sub47, ptr %granulepos, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end43
  %43 = load i32, ptr %i, align 4
  %44 = load i32, ptr %link, align 4
  %cmp48 = icmp slt i32 %43, %44
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load ptr, ptr %vf.addr, align 8
  %pcmlengths50 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %45, i32 0, i32 9
  %46 = load ptr, ptr %pcmlengths50, align 8
  %47 = load i32, ptr %i, align 4
  %mul51 = mul nsw i32 %47, 2
  %add52 = add nsw i32 %mul51, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds i64, ptr %46, i64 %idxprom53
  %48 = load i64, ptr %arrayidx54, align 8
  %49 = load i64, ptr %granulepos, align 8
  %add55 = add nsw i64 %49, %48
  store i64 %add55, ptr %granulepos, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, ptr %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %51 = load i64, ptr %granulepos, align 8
  %52 = load ptr, ptr %vf.addr, align 8
  %pcm_offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %52, i32 0, i32 12
  store i64 %51, ptr %pcm_offset, align 8
  br label %if.end56

if.end56:                                         ; preds = %for.end, %land.lhs.true, %if.end14
  store i32 1, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.then6
  br label %if.end58

if.else:                                          ; preds = %if.end
  br label %while.end

if.end58:                                         ; preds = %if.end57
  br label %while.body2

while.end:                                        ; preds = %if.else
  br label %if.end59

if.end59:                                         ; preds = %while.end, %while.body
  %53 = load ptr, ptr %vf.addr, align 8
  %ready_state60 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %53, i32 0, i32 13
  %54 = load i32, ptr %ready_state60, align 8
  %cmp61 = icmp sge i32 %54, 2
  br i1 %cmp61, label %if.then63, label %if.end95

if.then63:                                        ; preds = %if.end59
  %55 = load i32, ptr %readp.addr, align 4
  %tobool64 = icmp ne i32 %55, 0
  br i1 %tobool64, label %if.end66, label %if.then65

if.then65:                                        ; preds = %if.then63
  store i32 0, ptr %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.then63
  %56 = load ptr, ptr %vf.addr, align 8
  %call67 = call i64 @_get_next_page(ptr noundef %56, ptr noundef %og, i64 noundef -1)
  %conv68 = trunc i64 %call67 to i32
  store i32 %conv68, ptr %ret, align 4
  %cmp69 = icmp slt i32 %conv68, 0
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %if.end66
  store i32 -2, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end66
  %header_len = getelementptr inbounds nuw %struct.ogg_page, ptr %og, i32 0, i32 1
  %57 = load i64, ptr %header_len, align 8
  %mul73 = mul nsw i64 %57, 8
  %conv74 = sitofp i64 %mul73 to double
  %58 = load ptr, ptr %vf.addr, align 8
  %bittrack75 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %58, i32 0, i32 16
  %59 = load double, ptr %bittrack75, align 8
  %add76 = fadd double %59, %conv74
  store double %add76, ptr %bittrack75, align 8
  %60 = load ptr, ptr %vf.addr, align 8
  %ready_state77 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %60, i32 0, i32 13
  %61 = load i32, ptr %ready_state77, align 8
  %cmp78 = icmp eq i32 %61, 4
  br i1 %cmp78, label %if.then80, label %if.end94

if.then80:                                        ; preds = %if.end72
  %62 = load ptr, ptr %vf.addr, align 8
  %current_serialno = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %62, i32 0, i32 14
  %63 = load i64, ptr %current_serialno, align 8
  %call81 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv82 = sext i32 %call81 to i64
  %cmp83 = icmp ne i64 %63, %conv82
  br i1 %cmp83, label %if.then85, label %if.end93

if.then85:                                        ; preds = %if.then80
  %64 = load i32, ptr %spanp.addr, align 4
  %tobool86 = icmp ne i32 %64, 0
  br i1 %tobool86, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.then85
  store i32 -2, ptr %retval, align 4
  br label %return

if.end88:                                         ; preds = %if.then85
  %65 = load ptr, ptr %vf.addr, align 8
  call void @_decode_clear(ptr noundef %65)
  %66 = load ptr, ptr %vf.addr, align 8
  %seekable89 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %seekable89, align 8
  %tobool90 = icmp ne i32 %67, 0
  br i1 %tobool90, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.end88
  %68 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %68, i32 0, i32 10
  %69 = load ptr, ptr %vi, align 8
  call void @vorbis_info_clear(ptr noundef %69)
  %70 = load ptr, ptr %vf.addr, align 8
  %vc = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %70, i32 0, i32 11
  %71 = load ptr, ptr %vc, align 8
  call void @vorbis_comment_clear(ptr noundef %71)
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end88
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then80
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.end72
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end59
  %72 = load ptr, ptr %vf.addr, align 8
  %ready_state96 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %72, i32 0, i32 13
  %73 = load i32, ptr %ready_state96, align 8
  %cmp97 = icmp ne i32 %73, 4
  br i1 %cmp97, label %if.then99, label %if.end155

if.then99:                                        ; preds = %if.end95
  %74 = load ptr, ptr %vf.addr, align 8
  %ready_state101 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %74, i32 0, i32 13
  %75 = load i32, ptr %ready_state101, align 8
  %cmp102 = icmp slt i32 %75, 3
  br i1 %cmp102, label %if.then104, label %if.end148

if.then104:                                       ; preds = %if.then99
  %76 = load ptr, ptr %vf.addr, align 8
  %seekable105 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %76, i32 0, i32 1
  %77 = load i32, ptr %seekable105, align 8
  %tobool106 = icmp ne i32 %77, 0
  br i1 %tobool106, label %if.then107, label %if.else136

if.then107:                                       ; preds = %if.then104
  %call108 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv109 = sext i32 %call108 to i64
  %78 = load ptr, ptr %vf.addr, align 8
  %current_serialno110 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %78, i32 0, i32 14
  store i64 %conv109, ptr %current_serialno110, align 8
  store i32 0, ptr %link100, align 4
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc122, %if.then107
  %79 = load i32, ptr %link100, align 4
  %80 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %80, i32 0, i32 5
  %81 = load i32, ptr %links, align 8
  %cmp112 = icmp slt i32 %79, %81
  br i1 %cmp112, label %for.body114, label %for.end124

for.body114:                                      ; preds = %for.cond111
  %82 = load ptr, ptr %vf.addr, align 8
  %serialnos = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %82, i32 0, i32 8
  %83 = load ptr, ptr %serialnos, align 8
  %84 = load i32, ptr %link100, align 4
  %idxprom115 = sext i32 %84 to i64
  %arrayidx116 = getelementptr inbounds i64, ptr %83, i64 %idxprom115
  %85 = load i64, ptr %arrayidx116, align 8
  %86 = load ptr, ptr %vf.addr, align 8
  %current_serialno117 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %86, i32 0, i32 14
  %87 = load i64, ptr %current_serialno117, align 8
  %cmp118 = icmp eq i64 %85, %87
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %for.body114
  br label %for.end124

if.end121:                                        ; preds = %for.body114
  br label %for.inc122

for.inc122:                                       ; preds = %if.end121
  %88 = load i32, ptr %link100, align 4
  %inc123 = add nsw i32 %88, 1
  store i32 %inc123, ptr %link100, align 4
  br label %for.cond111, !llvm.loop !8

for.end124:                                       ; preds = %if.then120, %for.cond111
  %89 = load i32, ptr %link100, align 4
  %90 = load ptr, ptr %vf.addr, align 8
  %links125 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %90, i32 0, i32 5
  %91 = load i32, ptr %links125, align 8
  %cmp126 = icmp eq i32 %89, %91
  br i1 %cmp126, label %if.then128, label %if.end129

if.then128:                                       ; preds = %for.end124
  store i32 -137, ptr %retval, align 4
  br label %return

if.end129:                                        ; preds = %for.end124
  %92 = load i32, ptr %link100, align 4
  %93 = load ptr, ptr %vf.addr, align 8
  %current_link130 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %93, i32 0, i32 15
  store i32 %92, ptr %current_link130, align 8
  %94 = load ptr, ptr %vf.addr, align 8
  %os131 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %94, i32 0, i32 18
  %95 = load ptr, ptr %vf.addr, align 8
  %current_serialno132 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %95, i32 0, i32 14
  %96 = load i64, ptr %current_serialno132, align 8
  %conv133 = trunc i64 %96 to i32
  %call134 = call i32 @ogg_stream_reset_serialno(ptr noundef %os131, i32 noundef %conv133)
  %97 = load ptr, ptr %vf.addr, align 8
  %ready_state135 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %97, i32 0, i32 13
  store i32 3, ptr %ready_state135, align 8
  br label %if.end147

if.else136:                                       ; preds = %if.then104
  %98 = load ptr, ptr %vf.addr, align 8
  %99 = load ptr, ptr %vf.addr, align 8
  %vi138 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %99, i32 0, i32 10
  %100 = load ptr, ptr %vi138, align 8
  %101 = load ptr, ptr %vf.addr, align 8
  %vc139 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %101, i32 0, i32 11
  %102 = load ptr, ptr %vc139, align 8
  %103 = load ptr, ptr %vf.addr, align 8
  %current_serialno140 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %103, i32 0, i32 14
  %call141 = call i32 @_fetch_headers(ptr noundef %98, ptr noundef %100, ptr noundef %102, ptr noundef %current_serialno140, ptr noundef %og)
  store i32 %call141, ptr %ret137, align 4
  %104 = load i32, ptr %ret137, align 4
  %tobool142 = icmp ne i32 %104, 0
  br i1 %tobool142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %if.else136
  %105 = load i32, ptr %ret137, align 4
  store i32 %105, ptr %retval, align 4
  br label %return

if.end144:                                        ; preds = %if.else136
  %106 = load ptr, ptr %vf.addr, align 8
  %current_link145 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %106, i32 0, i32 15
  %107 = load i32, ptr %current_link145, align 8
  %inc146 = add nsw i32 %107, 1
  store i32 %inc146, ptr %current_link145, align 8
  store i32 0, ptr %link100, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.end144, %if.end129
  br label %if.end148

if.end148:                                        ; preds = %if.end147, %if.then99
  %108 = load ptr, ptr %vf.addr, align 8
  %call150 = call i32 @_make_decode_ready(ptr noundef %108)
  store i32 %call150, ptr %ret149, align 4
  %109 = load i32, ptr %ret149, align 4
  %cmp151 = icmp slt i32 %109, 0
  br i1 %cmp151, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.end148
  %110 = load i32, ptr %ret149, align 4
  store i32 %110, ptr %retval, align 4
  br label %return

if.end154:                                        ; preds = %if.end148
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end95
  %111 = load ptr, ptr %vf.addr, align 8
  %os156 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %111, i32 0, i32 18
  %call157 = call i32 @ogg_stream_pagein(ptr noundef %os156, ptr noundef %og)
  br label %while.body

return:                                           ; preds = %if.then153, %if.then143, %if.then128, %if.then87, %if.then71, %if.then65, %if.end56, %if.then13, %if.then4
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_synthesis(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_fetch_headers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
