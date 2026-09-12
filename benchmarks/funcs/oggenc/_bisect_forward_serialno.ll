; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_page = type { ptr, i64, ptr, i64 }
%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_seek_helper(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i64 @_get_next_page(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_page_serialno(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @_bisect_forward_serialno(ptr noundef %vf, i64 noundef %begin, i64 noundef %searched, i64 noundef %end, i64 noundef %currentno, i64 noundef %m) #1 {
entry:
  %retval = alloca i32, align 4
  %vf.addr = alloca ptr, align 8
  %begin.addr = alloca i64, align 8
  %searched.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %currentno.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %endsearched = alloca i64, align 8
  %next = alloca i64, align 8
  %og = alloca %struct.ogg_page, align 8
  %ret = alloca i64, align 8
  %bisect = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  store i64 %begin, ptr %begin.addr, align 8
  store i64 %searched, ptr %searched.addr, align 8
  store i64 %end, ptr %end.addr, align 8
  store i64 %currentno, ptr %currentno.addr, align 8
  store i64 %m, ptr %m.addr, align 8
  %0 = load i64, ptr %end.addr, align 8
  store i64 %0, ptr %endsearched, align 8
  %1 = load i64, ptr %end.addr, align 8
  store i64 %1, ptr %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %2 = load i64, ptr %searched.addr, align 8
  %3 = load i64, ptr %endsearched, align 8
  %cmp = icmp slt i64 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %endsearched, align 8
  %5 = load i64, ptr %searched.addr, align 8
  %sub = sub nsw i64 %4, %5
  %cmp1 = icmp slt i64 %sub, 8500
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load i64, ptr %searched.addr, align 8
  store i64 %6, ptr %bisect, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %7 = load i64, ptr %searched.addr, align 8
  %8 = load i64, ptr %endsearched, align 8
  %add = add nsw i64 %7, %8
  %div = sdiv i64 %add, 2
  store i64 %div, ptr %bisect, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load ptr, ptr %vf.addr, align 8
  %10 = load i64, ptr %bisect, align 8
  call void @_seek_helper(ptr noundef %9, i64 noundef %10)
  %11 = load ptr, ptr %vf.addr, align 8
  %call = call i64 @_get_next_page(ptr noundef %11, ptr noundef %og, i64 noundef -1)
  store i64 %call, ptr %ret, align 8
  %12 = load i64, ptr %ret, align 8
  %cmp2 = icmp eq i64 %12, -128
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -128, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %13 = load i64, ptr %ret, align 8
  %cmp5 = icmp slt i64 %13, 0
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %call6 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv = sext i32 %call6 to i64
  %14 = load i64, ptr %currentno.addr, align 8
  %cmp7 = icmp ne i64 %conv, %14
  br i1 %cmp7, label %if.then9, label %if.else14

if.then9:                                         ; preds = %lor.lhs.false, %if.end4
  %15 = load i64, ptr %bisect, align 8
  store i64 %15, ptr %endsearched, align 8
  %16 = load i64, ptr %ret, align 8
  %cmp10 = icmp sge i64 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  %17 = load i64, ptr %ret, align 8
  store i64 %17, ptr %next, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9
  br label %if.end17

if.else14:                                        ; preds = %lor.lhs.false
  %18 = load i64, ptr %ret, align 8
  %header_len = getelementptr inbounds nuw %struct.ogg_page, ptr %og, i32 0, i32 1
  %19 = load i64, ptr %header_len, align 8
  %add15 = add nsw i64 %18, %19
  %body_len = getelementptr inbounds nuw %struct.ogg_page, ptr %og, i32 0, i32 3
  %20 = load i64, ptr %body_len, align 8
  %add16 = add nsw i64 %add15, %20
  store i64 %add16, ptr %searched.addr, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.end13
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %21 = load ptr, ptr %vf.addr, align 8
  %22 = load i64, ptr %next, align 8
  call void @_seek_helper(ptr noundef %21, i64 noundef %22)
  %23 = load ptr, ptr %vf.addr, align 8
  %call18 = call i64 @_get_next_page(ptr noundef %23, ptr noundef %og, i64 noundef -1)
  store i64 %call18, ptr %ret, align 8
  %24 = load i64, ptr %ret, align 8
  %cmp19 = icmp eq i64 %24, -128
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %while.end
  store i32 -128, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %while.end
  %25 = load i64, ptr %searched.addr, align 8
  %26 = load i64, ptr %end.addr, align 8
  %cmp23 = icmp sge i64 %25, %26
  br i1 %cmp23, label %if.then28, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %if.end22
  %27 = load i64, ptr %ret, align 8
  %cmp26 = icmp slt i64 %27, 0
  br i1 %cmp26, label %if.then28, label %if.else41

if.then28:                                        ; preds = %lor.lhs.false25, %if.end22
  %28 = load i64, ptr %m.addr, align 8
  %add29 = add nsw i64 %28, 1
  %conv30 = trunc i64 %add29 to i32
  %29 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %29, i32 0, i32 5
  store i32 %conv30, ptr %links, align 8
  %30 = load ptr, ptr %vf.addr, align 8
  %links31 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %links31, align 8
  %add32 = add nsw i32 %31, 1
  %conv33 = sext i32 %add32 to i64
  %mul = mul i64 %conv33, 8
  %call34 = call noalias ptr @malloc(i64 noundef %mul) #2
  %32 = load ptr, ptr %vf.addr, align 8
  %offsets = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %32, i32 0, i32 6
  store ptr %call34, ptr %offsets, align 8
  %33 = load ptr, ptr %vf.addr, align 8
  %links35 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %links35, align 8
  %conv36 = sext i32 %34 to i64
  %mul37 = mul i64 %conv36, 8
  %call38 = call noalias ptr @malloc(i64 noundef %mul37) #2
  %35 = load ptr, ptr %vf.addr, align 8
  %serialnos = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %35, i32 0, i32 8
  store ptr %call38, ptr %serialnos, align 8
  %36 = load i64, ptr %searched.addr, align 8
  %37 = load ptr, ptr %vf.addr, align 8
  %offsets39 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %offsets39, align 8
  %39 = load i64, ptr %m.addr, align 8
  %add40 = add nsw i64 %39, 1
  %arrayidx = getelementptr inbounds i64, ptr %38, i64 %add40
  store i64 %36, ptr %arrayidx, align 8
  br label %if.end51

if.else41:                                        ; preds = %lor.lhs.false25
  %40 = load ptr, ptr %vf.addr, align 8
  %41 = load i64, ptr %next, align 8
  %42 = load ptr, ptr %vf.addr, align 8
  %offset = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %42, i32 0, i32 2
  %43 = load i64, ptr %offset, align 8
  %44 = load i64, ptr %end.addr, align 8
  %call42 = call i32 @ogg_page_serialno(ptr noundef %og)
  %conv43 = sext i32 %call42 to i64
  %45 = load i64, ptr %m.addr, align 8
  %add44 = add nsw i64 %45, 1
  %call45 = call i32 @_bisect_forward_serialno(ptr noundef %40, i64 noundef %41, i64 noundef %43, i64 noundef %44, i64 noundef %conv43, i64 noundef %add44)
  %conv46 = sext i32 %call45 to i64
  store i64 %conv46, ptr %ret, align 8
  %46 = load i64, ptr %ret, align 8
  %cmp47 = icmp eq i64 %46, -128
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.else41
  store i32 -128, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.else41
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then28
  %47 = load i64, ptr %begin.addr, align 8
  %48 = load ptr, ptr %vf.addr, align 8
  %offsets52 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %48, i32 0, i32 6
  %49 = load ptr, ptr %offsets52, align 8
  %50 = load i64, ptr %m.addr, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %49, i64 %50
  store i64 %47, ptr %arrayidx53, align 8
  %51 = load i64, ptr %currentno.addr, align 8
  %52 = load ptr, ptr %vf.addr, align 8
  %serialnos54 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %52, i32 0, i32 8
  %53 = load ptr, ptr %serialnos54, align 8
  %54 = load i64, ptr %m.addr, align 8
  %arrayidx55 = getelementptr inbounds i64, ptr %53, i64 %54
  store i64 %51, ptr %arrayidx55, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.then49, %if.then21, %if.then3
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) }

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
