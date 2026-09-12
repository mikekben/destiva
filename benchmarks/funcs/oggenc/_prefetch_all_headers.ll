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
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_comment_clear(ptr noundef) #1

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_reset_serialno(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @_seek_helper(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_packetout(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @vorbis_packet_blocksize(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_next_page(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_serialno(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_pagein(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i64 @ogg_page_granulepos(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_prev_page(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @_fetch_headers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @_prefetch_all_headers(ptr noundef %vf, i64 noundef %dataoffset) #1 {
entry:
  %vf.addr = alloca ptr, align 8
  %dataoffset.addr = alloca i64, align 8
  %og = alloca %struct.ogg_page, align 8
  %i = alloca i32, align 4
  %ret = alloca i64, align 8
  %accumulated = alloca i64, align 8
  %lastblock = alloca i64, align 8
  %result = alloca i32, align 4
  %op = alloca %struct.ogg_packet, align 8
  %thisblock = alloca i64, align 8
  %end = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store i64 %dataoffset, ptr %dataoffset.addr, align 8
  %0 = load ptr, ptr %vf.addr, align 8
  %vi = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %vi, align 8
  %2 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %links, align 8
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 56
  %call = call ptr @realloc(ptr noundef %1, i64 noundef %mul) #3
  %4 = load ptr, ptr %vf.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 10
  store ptr %call, ptr %vi1, align 8
  %5 = load ptr, ptr %vf.addr, align 8
  %vc = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %5, i32 0, i32 11
  %6 = load ptr, ptr %vc, align 8
  %7 = load ptr, ptr %vf.addr, align 8
  %links2 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %links2, align 8
  %conv3 = sext i32 %8 to i64
  %mul4 = mul i64 %conv3, 32
  %call5 = call ptr @realloc(ptr noundef %6, i64 noundef %mul4) #3
  %9 = load ptr, ptr %vf.addr, align 8
  %vc6 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 11
  store ptr %call5, ptr %vc6, align 8
  %10 = load ptr, ptr %vf.addr, align 8
  %links7 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %links7, align 8
  %conv8 = sext i32 %11 to i64
  %mul9 = mul i64 %conv8, 8
  %call10 = call noalias ptr @malloc(i64 noundef %mul9) #4
  %12 = load ptr, ptr %vf.addr, align 8
  %dataoffsets = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %12, i32 0, i32 7
  store ptr %call10, ptr %dataoffsets, align 8
  %13 = load ptr, ptr %vf.addr, align 8
  %links11 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %links11, align 8
  %mul12 = mul nsw i32 %14, 2
  %conv13 = sext i32 %mul12 to i64
  %mul14 = mul i64 %conv13, 8
  %call15 = call noalias ptr @malloc(i64 noundef %mul14) #4
  %15 = load ptr, ptr %vf.addr, align 8
  %pcmlengths = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %15, i32 0, i32 9
  store ptr %call15, ptr %pcmlengths, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, ptr %i, align 4
  %17 = load ptr, ptr %vf.addr, align 8
  %links16 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %17, i32 0, i32 5
  %18 = load i32, ptr %links16, align 8
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, ptr %i, align 4
  %cmp18 = icmp eq i32 %19, 0
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load i64, ptr %dataoffset.addr, align 8
  %21 = load ptr, ptr %vf.addr, align 8
  %dataoffsets20 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %21, i32 0, i32 7
  %22 = load ptr, ptr %dataoffsets20, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds i64, ptr %22, i64 %idxprom
  store i64 %20, ptr %arrayidx, align 8
  %24 = load ptr, ptr %vf.addr, align 8
  %25 = load i64, ptr %dataoffset.addr, align 8
  call void @_seek_helper(ptr noundef %24, i64 noundef %25)
  br label %if.end38

if.else:                                          ; preds = %for.body
  %26 = load ptr, ptr %vf.addr, align 8
  %27 = load ptr, ptr %vf.addr, align 8
  %offsets = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %27, i32 0, i32 6
  %28 = load ptr, ptr %offsets, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds i64, ptr %28, i64 %idxprom21
  %30 = load i64, ptr %arrayidx22, align 8
  call void @_seek_helper(ptr noundef %26, i64 noundef %30)
  %31 = load ptr, ptr %vf.addr, align 8
  %32 = load ptr, ptr %vf.addr, align 8
  %vi23 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %32, i32 0, i32 10
  %33 = load ptr, ptr %vi23, align 8
  %34 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_info, ptr %33, i64 %idx.ext
  %35 = load ptr, ptr %vf.addr, align 8
  %vc24 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %35, i32 0, i32 11
  %36 = load ptr, ptr %vc24, align 8
  %37 = load i32, ptr %i, align 4
  %idx.ext25 = sext i32 %37 to i64
  %add.ptr26 = getelementptr inbounds %struct.vorbis_comment, ptr %36, i64 %idx.ext25
  %call27 = call i32 @_fetch_headers(ptr noundef %31, ptr noundef %add.ptr, ptr noundef %add.ptr26, ptr noundef null, ptr noundef null)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.else34

if.then30:                                        ; preds = %if.else
  %38 = load ptr, ptr %vf.addr, align 8
  %dataoffsets31 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %38, i32 0, i32 7
  %39 = load ptr, ptr %dataoffsets31, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %40 to i64
  %arrayidx33 = getelementptr inbounds i64, ptr %39, i64 %idxprom32
  store i64 -1, ptr %arrayidx33, align 8
  br label %if.end

if.else34:                                        ; preds = %if.else
  %41 = load ptr, ptr %vf.addr, align 8
  %offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %41, i32 0, i32 2
  %42 = load i64, ptr %offset, align 8
  %43 = load ptr, ptr %vf.addr, align 8
  %dataoffsets35 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %43, i32 0, i32 7
  %44 = load ptr, ptr %dataoffsets35, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %45 to i64
  %arrayidx37 = getelementptr inbounds i64, ptr %44, i64 %idxprom36
  store i64 %42, ptr %arrayidx37, align 8
  br label %if.end

if.end:                                           ; preds = %if.else34, %if.then30
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then
  %46 = load ptr, ptr %vf.addr, align 8
  %dataoffsets39 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %46, i32 0, i32 7
  %47 = load ptr, ptr %dataoffsets39, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds i64, ptr %47, i64 %idxprom40
  %49 = load i64, ptr %arrayidx41, align 8
  %cmp42 = icmp ne i64 %49, -1
  br i1 %cmp42, label %if.then44, label %if.end97

if.then44:                                        ; preds = %if.end38
  store i64 0, ptr %accumulated, align 8
  store i64 -1, ptr %lastblock, align 8
  %50 = load ptr, ptr %vf.addr, align 8
  %os = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %50, i32 0, i32 18
  %51 = load ptr, ptr %vf.addr, align 8
  %serialnos = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %51, i32 0, i32 8
  %52 = load ptr, ptr %serialnos, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %53 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %52, i64 %idxprom45
  %54 = load i64, ptr %arrayidx46, align 8
  %conv47 = trunc i64 %54 to i32
  %call48 = call i32 @ogg_stream_reset_serialno(ptr noundef %os, i32 noundef %conv47)
  br label %while.body

while.body:                                       ; preds = %if.end87, %if.then44
  %55 = load ptr, ptr %vf.addr, align 8
  %call49 = call i64 @_get_next_page(ptr noundef %55, ptr noundef %og, i64 noundef -1)
  store i64 %call49, ptr %ret, align 8
  %56 = load i64, ptr %ret, align 8
  %cmp50 = icmp slt i64 %56, 0
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %while.body
  br label %while.end88

if.end53:                                         ; preds = %while.body
  %call54 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv55 = sext i32 %call54 to i64
  %57 = load ptr, ptr %vf.addr, align 8
  %serialnos56 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %57, i32 0, i32 8
  %58 = load ptr, ptr %serialnos56, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %59 to i64
  %arrayidx58 = getelementptr inbounds i64, ptr %58, i64 %idxprom57
  %60 = load i64, ptr %arrayidx58, align 8
  %cmp59 = icmp ne i64 %conv55, %60
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end53
  br label %while.end88

if.end62:                                         ; preds = %if.end53
  %61 = load ptr, ptr %vf.addr, align 8
  %os63 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %61, i32 0, i32 18
  %call64 = call i32 @ogg_stream_pagein(ptr noundef %os63, ptr noundef %og)
  br label %while.cond65

while.cond65:                                     ; preds = %if.end81, %if.end62
  %62 = load ptr, ptr %vf.addr, align 8
  %os66 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %62, i32 0, i32 18
  %call67 = call i32 @ogg_stream_packetout(ptr noundef %os66, ptr noundef %op)
  store i32 %call67, ptr %result, align 4
  %tobool = icmp ne i32 %call67, 0
  br i1 %tobool, label %while.body68, label %while.end

while.body68:                                     ; preds = %while.cond65
  %63 = load i32, ptr %result, align 4
  %cmp69 = icmp sgt i32 %63, 0
  br i1 %cmp69, label %if.then71, label %if.end81

if.then71:                                        ; preds = %while.body68
  %64 = load ptr, ptr %vf.addr, align 8
  %vi72 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %64, i32 0, i32 10
  %65 = load ptr, ptr %vi72, align 8
  %66 = load i32, ptr %i, align 4
  %idx.ext73 = sext i32 %66 to i64
  %add.ptr74 = getelementptr inbounds %struct.vorbis_info, ptr %65, i64 %idx.ext73
  %call75 = call i64 @vorbis_packet_blocksize(ptr noundef %add.ptr74, ptr noundef %op)
  store i64 %call75, ptr %thisblock, align 8
  %67 = load i64, ptr %lastblock, align 8
  %cmp76 = icmp ne i64 %67, -1
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.then71
  %68 = load i64, ptr %lastblock, align 8
  %69 = load i64, ptr %thisblock, align 8
  %add = add nsw i64 %68, %69
  %shr = ashr i64 %add, 2
  %70 = load i64, ptr %accumulated, align 8
  %add79 = add nsw i64 %70, %shr
  store i64 %add79, ptr %accumulated, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then71
  %71 = load i64, ptr %thisblock, align 8
  store i64 %71, ptr %lastblock, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %while.body68
  br label %while.cond65, !llvm.loop !6

while.end:                                        ; preds = %while.cond65
  %call82 = call i64 @ogg_page_granulepos(ptr noundef %og)
  %cmp83 = icmp ne i64 %call82, -1
  br i1 %cmp83, label %if.then85, label %if.end87

if.then85:                                        ; preds = %while.end
  %call86 = call i64 @ogg_page_granulepos(ptr noundef %og)
  %72 = load i64, ptr %accumulated, align 8
  %sub = sub nsw i64 %call86, %72
  store i64 %sub, ptr %accumulated, align 8
  br label %while.end88

if.end87:                                         ; preds = %while.end
  br label %while.body

while.end88:                                      ; preds = %if.then85, %if.then61, %if.then52
  %73 = load i64, ptr %accumulated, align 8
  %cmp89 = icmp slt i64 %73, 0
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %while.end88
  store i64 0, ptr %accumulated, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %while.end88
  %74 = load i64, ptr %accumulated, align 8
  %75 = load ptr, ptr %vf.addr, align 8
  %pcmlengths93 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %75, i32 0, i32 9
  %76 = load ptr, ptr %pcmlengths93, align 8
  %77 = load i32, ptr %i, align 4
  %mul94 = mul nsw i32 %77, 2
  %idxprom95 = sext i32 %mul94 to i64
  %arrayidx96 = getelementptr inbounds i64, ptr %76, i64 %idxprom95
  store i64 %74, ptr %arrayidx96, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.end92, %if.end38
  %78 = load ptr, ptr %vf.addr, align 8
  %offsets98 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %78, i32 0, i32 6
  %79 = load ptr, ptr %offsets98, align 8
  %80 = load i32, ptr %i, align 4
  %add99 = add nsw i32 %80, 1
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds i64, ptr %79, i64 %idxprom100
  %81 = load i64, ptr %arrayidx101, align 8
  store i64 %81, ptr %end, align 8
  %82 = load ptr, ptr %vf.addr, align 8
  %83 = load i64, ptr %end, align 8
  call void @_seek_helper(ptr noundef %82, i64 noundef %83)
  br label %while.body102

while.body102:                                    ; preds = %if.end129, %if.end97
  %84 = load ptr, ptr %vf.addr, align 8
  %call103 = call i64 @_get_prev_page(ptr noundef %84, ptr noundef %og)
  store i64 %call103, ptr %ret, align 8
  %85 = load i64, ptr %ret, align 8
  %cmp104 = icmp slt i64 %85, 0
  br i1 %cmp104, label %if.then106, label %if.end113

if.then106:                                       ; preds = %while.body102
  %86 = load ptr, ptr %vf.addr, align 8
  %vi107 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %86, i32 0, i32 10
  %87 = load ptr, ptr %vi107, align 8
  %88 = load i32, ptr %i, align 4
  %idx.ext108 = sext i32 %88 to i64
  %add.ptr109 = getelementptr inbounds %struct.vorbis_info, ptr %87, i64 %idx.ext108
  call void @vorbis_info_clear(ptr noundef %add.ptr109)
  %89 = load ptr, ptr %vf.addr, align 8
  %vc110 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %89, i32 0, i32 11
  %90 = load ptr, ptr %vc110, align 8
  %91 = load i32, ptr %i, align 4
  %idx.ext111 = sext i32 %91 to i64
  %add.ptr112 = getelementptr inbounds %struct.vorbis_comment, ptr %90, i64 %idx.ext111
  call void @vorbis_comment_clear(ptr noundef %add.ptr112)
  br label %while.end131

if.end113:                                        ; preds = %while.body102
  %call114 = call i64 @ogg_page_granulepos(ptr noundef %og)
  %cmp115 = icmp ne i64 %call114, -1
  br i1 %cmp115, label %if.then117, label %if.end129

if.then117:                                       ; preds = %if.end113
  %call118 = call i64 @ogg_page_granulepos(ptr noundef %og)
  %92 = load ptr, ptr %vf.addr, align 8
  %pcmlengths119 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %92, i32 0, i32 9
  %93 = load ptr, ptr %pcmlengths119, align 8
  %94 = load i32, ptr %i, align 4
  %mul120 = mul nsw i32 %94, 2
  %idxprom121 = sext i32 %mul120 to i64
  %arrayidx122 = getelementptr inbounds i64, ptr %93, i64 %idxprom121
  %95 = load i64, ptr %arrayidx122, align 8
  %sub123 = sub nsw i64 %call118, %95
  %96 = load ptr, ptr %vf.addr, align 8
  %pcmlengths124 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %96, i32 0, i32 9
  %97 = load ptr, ptr %pcmlengths124, align 8
  %98 = load i32, ptr %i, align 4
  %mul125 = mul nsw i32 %98, 2
  %add126 = add nsw i32 %mul125, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds i64, ptr %97, i64 %idxprom127
  store i64 %sub123, ptr %arrayidx128, align 8
  br label %while.end131

if.end129:                                        ; preds = %if.end113
  %99 = load i64, ptr %ret, align 8
  %100 = load ptr, ptr %vf.addr, align 8
  %offset130 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %100, i32 0, i32 2
  store i64 %99, ptr %offset130, align 8
  br label %while.body102

while.end131:                                     ; preds = %if.then117, %if.then106
  br label %for.inc

for.inc:                                          ; preds = %while.end131
  %101 = load i32, ptr %i, align 4
  %inc = add nsw i32 %101, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(1) }
attributes #4 = { nounwind allocsize(0) }

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
