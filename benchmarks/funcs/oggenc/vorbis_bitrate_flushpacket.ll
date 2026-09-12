; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_bitrate_flushpacket(ptr noundef %vd, ptr noundef %op) #1 {
entry:
  %retval = alloca i32, align 4
  %vd.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %bm = alloca ptr, align 8
  %bin = alloca i64, align 8
  %i = alloca i64, align 8
  %bins = alloca i64, align 8
  %markers = alloca ptr, align 8
  %bytes = alloca i64, align 8
  store ptr %vd, ptr %vd.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  %0 = load ptr, ptr %vd.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %backend_state, align 8
  store ptr %1, ptr %b, align 8
  %2 = load ptr, ptr %b, align 8
  %bms = getelementptr inbounds nuw %struct.private_state, ptr %2, i32 0, i32 12
  store ptr %bms, ptr %bm, align 8
  %3 = load ptr, ptr %bm, align 8
  %queue_size = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %queue_size, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %bm, align 8
  %queue_head = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %queue_head, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %op.addr, align 8
  %8 = load ptr, ptr %bm, align 8
  %packets = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %8, i32 0, i32 24
  %9 = load ptr, ptr %packets, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 48, i1 false)
  %10 = load ptr, ptr %bm, align 8
  %queue_head3 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %10, i32 0, i32 3
  store i32 0, ptr %queue_head3, align 4
  br label %if.end31

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %bm, align 8
  %next_to_flush = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %11, i32 0, i32 20
  %12 = load i32, ptr %next_to_flush, align 4
  %13 = load ptr, ptr %bm, align 8
  %last_to_flush = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %13, i32 0, i32 21
  %14 = load i32, ptr %last_to_flush, align 8
  %cmp4 = icmp eq i32 %12, %14
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.else
  %15 = load ptr, ptr %bm, align 8
  %queue_actual = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %queue_actual, align 8
  %17 = load ptr, ptr %bm, align 8
  %next_to_flush7 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %17, i32 0, i32 20
  %18 = load i32, ptr %next_to_flush7, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i32, ptr %16, i64 %idxprom
  %19 = load i32, ptr %arrayidx, align 4
  %and = and i32 %19, 2147483647
  %conv = zext i32 %and to i64
  store i64 %conv, ptr %bin, align 8
  %20 = load ptr, ptr %bm, align 8
  %queue_bins = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %queue_bins, align 8
  %conv8 = sext i32 %21 to i64
  store i64 %conv8, ptr %bins, align 8
  %22 = load ptr, ptr %bm, align 8
  %queue_binned = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %queue_binned, align 8
  %24 = load i64, ptr %bins, align 8
  %25 = load ptr, ptr %bm, align 8
  %next_to_flush9 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %25, i32 0, i32 20
  %26 = load i32, ptr %next_to_flush9, align 4
  %conv10 = sext i32 %26 to i64
  %mul = mul nsw i64 %24, %conv10
  %add.ptr = getelementptr inbounds i32, ptr %23, i64 %mul
  store ptr %add.ptr, ptr %markers, align 8
  %27 = load ptr, ptr %markers, align 8
  %28 = load i64, ptr %bin, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %27, i64 %28
  %29 = load i32, ptr %arrayidx11, align 4
  %conv12 = zext i32 %29 to i64
  store i64 %conv12, ptr %bytes, align 8
  %30 = load ptr, ptr %op.addr, align 8
  %31 = load ptr, ptr %bm, align 8
  %packets13 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %31, i32 0, i32 24
  %32 = load ptr, ptr %packets13, align 8
  %33 = load ptr, ptr %bm, align 8
  %next_to_flush14 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %33, i32 0, i32 20
  %34 = load i32, ptr %next_to_flush14, align 4
  %idx.ext = sext i32 %34 to i64
  %add.ptr15 = getelementptr inbounds %struct.ogg_packet, ptr %32, i64 %idx.ext
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %30, ptr align 8 %add.ptr15, i64 48, i1 false)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %35 = load i64, ptr %i, align 8
  %36 = load i64, ptr %bin, align 8
  %cmp16 = icmp slt i64 %35, %36
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load ptr, ptr %markers, align 8
  %38 = load i64, ptr %i, align 8
  %arrayidx18 = getelementptr inbounds i32, ptr %37, i64 %38
  %39 = load i32, ptr %arrayidx18, align 4
  %40 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %packet, align 8
  %idx.ext19 = zext i32 %39 to i64
  %add.ptr20 = getelementptr inbounds nuw i8, ptr %41, i64 %idx.ext19
  store ptr %add.ptr20, ptr %packet, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i64, ptr %i, align 8
  %inc = add nsw i64 %42, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %43 = load i64, ptr %bytes, align 8
  %44 = load ptr, ptr %op.addr, align 8
  %bytes21 = getelementptr inbounds nuw %struct.ogg_packet, ptr %44, i32 0, i32 1
  store i64 %43, ptr %bytes21, align 8
  %45 = load ptr, ptr %bm, align 8
  %next_to_flush22 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %45, i32 0, i32 20
  %46 = load i32, ptr %next_to_flush22, align 4
  %inc23 = add nsw i32 %46, 1
  store i32 %inc23, ptr %next_to_flush22, align 4
  %47 = load ptr, ptr %bm, align 8
  %next_to_flush24 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %47, i32 0, i32 20
  %48 = load i32, ptr %next_to_flush24, align 4
  %49 = load ptr, ptr %bm, align 8
  %queue_size25 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %queue_size25, align 8
  %cmp26 = icmp sge i32 %48, %50
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %for.end
  %51 = load ptr, ptr %bm, align 8
  %next_to_flush29 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %51, i32 0, i32 20
  store i32 0, ptr %next_to_flush29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.end
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then5, %if.then2
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
