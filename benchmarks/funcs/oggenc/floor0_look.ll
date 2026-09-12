; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info_floor0 = type { i32, i64, i64, i32, i32, i32, [16 x i32], float, float }
%struct.vorbis_look_floor0 = type { i32, i32, ptr, [2 x i32], ptr, i64, i64 }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @floor0_look(ptr noundef %vd, ptr noundef %i) #1 {
entry:
  %vd.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %look = alloca ptr, align 8
  store ptr %vd, ptr %vd.addr, align 8
  store ptr %i, ptr %i.addr, align 8
  %0 = load ptr, ptr %i.addr, align 8
  store ptr %0, ptr %info, align 8
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 48) #2
  store ptr %call, ptr %look, align 8
  %1 = load ptr, ptr %info, align 8
  %order = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %order, align 8
  %3 = load ptr, ptr %look, align 8
  %m = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %3, i32 0, i32 1
  store i32 %2, ptr %m, align 4
  %4 = load ptr, ptr %info, align 8
  %barkmap = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %barkmap, align 8
  %conv = trunc i64 %5 to i32
  %6 = load ptr, ptr %look, align 8
  %ln = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %6, i32 0, i32 0
  store i32 %conv, ptr %ln, align 8
  %7 = load ptr, ptr %info, align 8
  %8 = load ptr, ptr %look, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %8, i32 0, i32 4
  store ptr %7, ptr %vi, align 8
  %call1 = call noalias ptr @calloc(i64 noundef 2, i64 noundef 8) #2
  %9 = load ptr, ptr %look, align 8
  %linearmap = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %9, i32 0, i32 2
  store ptr %call1, ptr %linearmap, align 8
  %10 = load ptr, ptr %look, align 8
  ret ptr %10
}

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
