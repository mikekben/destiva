; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_writeclear(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @vorbis_bitrate_clear(ptr noundef %bm) #2 {
entry:
  %bm.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %bm, ptr %bm.addr, align 8
  %0 = load ptr, ptr %bm.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end38

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bm.addr, align 8
  %queue_binned = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %queue_binned, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %bm.addr, align 8
  %queue_binned3 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %queue_binned3, align 8
  call void @free(ptr noundef %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %bm.addr, align 8
  %queue_actual = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %queue_actual, align 8
  %tobool4 = icmp ne ptr %6, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %bm.addr, align 8
  %queue_actual6 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %queue_actual6, align 8
  call void @free(ptr noundef %8) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %9 = load ptr, ptr %bm.addr, align 8
  %avg_binacc = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %avg_binacc, align 8
  %tobool8 = icmp ne ptr %10, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %11 = load ptr, ptr %bm.addr, align 8
  %avg_binacc10 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %avg_binacc10, align 8
  call void @free(ptr noundef %12) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %13 = load ptr, ptr %bm.addr, align 8
  %minmax_binstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %minmax_binstack, align 8
  %tobool12 = icmp ne ptr %14, null
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %15 = load ptr, ptr %bm.addr, align 8
  %minmax_binstack14 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %minmax_binstack14, align 8
  call void @free(ptr noundef %16) #3
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %17 = load ptr, ptr %bm.addr, align 8
  %minmax_posstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %17, i32 0, i32 13
  %18 = load ptr, ptr %minmax_posstack, align 8
  %tobool16 = icmp ne ptr %18, null
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  %19 = load ptr, ptr %bm.addr, align 8
  %minmax_posstack18 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %minmax_posstack18, align 8
  call void @free(ptr noundef %20) #3
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15
  %21 = load ptr, ptr %bm.addr, align 8
  %minmax_limitstack = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %minmax_limitstack, align 8
  %tobool20 = icmp ne ptr %22, null
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %23 = load ptr, ptr %bm.addr, align 8
  %minmax_limitstack22 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %23, i32 0, i32 14
  %24 = load ptr, ptr %minmax_limitstack22, align 8
  call void @free(ptr noundef %24) #3
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  %25 = load ptr, ptr %bm.addr, align 8
  %packetbuffers = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %25, i32 0, i32 23
  %26 = load ptr, ptr %packetbuffers, align 8
  %tobool24 = icmp ne ptr %26, null
  br i1 %tobool24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end23
  %27 = load ptr, ptr %bm.addr, align 8
  %queue_size = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %queue_size, align 8
  %cmp = icmp eq i32 %28, 0
  br i1 %cmp, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then25
  %29 = load ptr, ptr %bm.addr, align 8
  %packetbuffers27 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %29, i32 0, i32 23
  %30 = load ptr, ptr %packetbuffers27, align 8
  call void @oggpack_writeclear(ptr noundef %30)
  br label %if.end31

if.else:                                          ; preds = %if.then25
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %31 = load i32, ptr %i, align 4
  %32 = load ptr, ptr %bm.addr, align 8
  %queue_size28 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %queue_size28, align 8
  %cmp29 = icmp slt i32 %31, %33
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %bm.addr, align 8
  %packetbuffers30 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %34, i32 0, i32 23
  %35 = load ptr, ptr %packetbuffers30, align 8
  %36 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds %struct.oggpack_buffer, ptr %35, i64 %idx.ext
  call void @oggpack_writeclear(ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end31

if.end31:                                         ; preds = %for.end, %if.then26
  %38 = load ptr, ptr %bm.addr, align 8
  %packetbuffers32 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %38, i32 0, i32 23
  %39 = load ptr, ptr %packetbuffers32, align 8
  call void @free(ptr noundef %39) #3
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end23
  %40 = load ptr, ptr %bm.addr, align 8
  %packets = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %40, i32 0, i32 24
  %41 = load ptr, ptr %packets, align 8
  %tobool34 = icmp ne ptr %41, null
  br i1 %tobool34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end33
  %42 = load ptr, ptr %bm.addr, align 8
  %packets36 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %42, i32 0, i32 24
  %43 = load ptr, ptr %packets36, align 8
  call void @free(ptr noundef %43) #3
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end33
  %44 = load ptr, ptr %bm.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %44, i8 0, i64 152, i1 false)
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %entry
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
