; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_block_clear(ptr noundef %vb) #1 {
entry:
  %vb.addr = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  %0 = load ptr, ptr %vb.addr, align 8
  %vd = getelementptr inbounds nuw %struct.vorbis_block, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %vd, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vb.addr, align 8
  %vd1 = getelementptr inbounds nuw %struct.vorbis_block, ptr %2, i32 0, i32 10
  %3 = load ptr, ptr %vd1, align 8
  %analysisp = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %analysisp, align 8
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %5, i32 0, i32 1
  call void @oggpack_writeclear(ptr noundef %opb)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %vb.addr, align 8
  call void @_vorbis_block_ripcord(ptr noundef %6)
  %7 = load ptr, ptr %vb.addr, align 8
  %localstore = getelementptr inbounds nuw %struct.vorbis_block, ptr %7, i32 0, i32 11
  %8 = load ptr, ptr %localstore, align 8
  %tobool5 = icmp ne ptr %8, null
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %9 = load ptr, ptr %vb.addr, align 8
  %localstore7 = getelementptr inbounds nuw %struct.vorbis_block, ptr %9, i32 0, i32 11
  %10 = load ptr, ptr %localstore7, align 8
  call void @free(ptr noundef %10) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %11 = load ptr, ptr %vb.addr, align 8
  %internal = getelementptr inbounds nuw %struct.vorbis_block, ptr %11, i32 0, i32 20
  %12 = load ptr, ptr %internal, align 8
  %tobool9 = icmp ne ptr %12, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %13 = load ptr, ptr %vb.addr, align 8
  %internal11 = getelementptr inbounds nuw %struct.vorbis_block, ptr %13, i32 0, i32 20
  %14 = load ptr, ptr %internal11, align 8
  call void @free(ptr noundef %14) #3
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %15 = load ptr, ptr %vb.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 192, i1 false)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_writeclear(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_vorbis_block_ripcord(ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
