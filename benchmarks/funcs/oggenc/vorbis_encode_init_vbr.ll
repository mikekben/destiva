; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_setup_vbr(ptr noundef, i64 noundef, i64 noundef, float noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_setup_init(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_encode_init_vbr(ptr noundef %vi, i64 noundef %channels, i64 noundef %rate, float noundef %base_quality) #0 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %channels.addr = alloca i64, align 8
  %rate.addr = alloca i64, align 8
  %base_quality.addr = alloca float, align 4
  %ret = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store i64 %channels, ptr %channels.addr, align 8
  store i64 %rate, ptr %rate.addr, align 8
  store float %base_quality, ptr %base_quality.addr, align 4
  store i32 0, ptr %ret, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %1 = load i64, ptr %channels.addr, align 8
  %2 = load i64, ptr %rate.addr, align 8
  %3 = load float, ptr %base_quality.addr, align 4
  %call = call i32 @vorbis_encode_setup_vbr(ptr noundef %0, i64 noundef %1, i64 noundef %2, float noundef %3)
  store i32 %call, ptr %ret, align 4
  %4 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_clear(ptr noundef %5)
  %6 = load i32, ptr %ret, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %vi.addr, align 8
  %call1 = call i32 @vorbis_encode_setup_init(ptr noundef %7)
  store i32 %call1, ptr %ret, align 4
  %8 = load i32, ptr %ret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_clear(ptr noundef %9)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load i32, ptr %ret, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
