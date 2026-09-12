; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block_internal = type { ptr, float, i32, [15 x i32] }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_block_init(ptr noundef %v, ptr noundef %vb) #1 {
entry:
  %v.addr = alloca ptr, align 8
  %vb.addr = alloca ptr, align 8
  %vbi = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  %0 = load ptr, ptr %vb.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 192, i1 false)
  %1 = load ptr, ptr %v.addr, align 8
  %2 = load ptr, ptr %vb.addr, align 8
  %vd = getelementptr inbounds nuw %struct.vorbis_block, ptr %2, i32 0, i32 10
  store ptr %1, ptr %vd, align 8
  %3 = load ptr, ptr %vb.addr, align 8
  %localalloc = getelementptr inbounds nuw %struct.vorbis_block, ptr %3, i32 0, i32 13
  store i64 0, ptr %localalloc, align 8
  %4 = load ptr, ptr %vb.addr, align 8
  %localstore = getelementptr inbounds nuw %struct.vorbis_block, ptr %4, i32 0, i32 11
  store ptr null, ptr %localstore, align 8
  %5 = load ptr, ptr %v.addr, align 8
  %analysisp = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %analysisp, align 8
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 80) #3
  %7 = load ptr, ptr %vb.addr, align 8
  %internal = getelementptr inbounds nuw %struct.vorbis_block, ptr %7, i32 0, i32 20
  store ptr %call, ptr %internal, align 8
  store ptr %call, ptr %vbi, align 8
  %8 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %8, i32 0, i32 1
  call void @oggpack_writeinit(ptr noundef %opb)
  %9 = load ptr, ptr %vbi, align 8
  %ampmax = getelementptr inbounds nuw %struct.vorbis_block_internal, ptr %9, i32 0, i32 1
  store float -9.999000e+03, ptr %ampmax, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_writeinit(ptr noundef) #1

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
