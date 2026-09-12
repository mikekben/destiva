; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_info_clear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_setup_managed(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_setup_init(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_encode_init(ptr noundef %vi, i64 noundef %channels, i64 noundef %rate, i64 noundef %max_bitrate, i64 noundef %nominal_bitrate, i64 noundef %min_bitrate) #0 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %channels.addr = alloca i64, align 8
  %rate.addr = alloca i64, align 8
  %max_bitrate.addr = alloca i64, align 8
  %nominal_bitrate.addr = alloca i64, align 8
  %min_bitrate.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store i64 %channels, ptr %channels.addr, align 8
  store i64 %rate, ptr %rate.addr, align 8
  store i64 %max_bitrate, ptr %max_bitrate.addr, align 8
  store i64 %nominal_bitrate, ptr %nominal_bitrate.addr, align 8
  store i64 %min_bitrate, ptr %min_bitrate.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %1 = load i64, ptr %channels.addr, align 8
  %2 = load i64, ptr %rate.addr, align 8
  %3 = load i64, ptr %max_bitrate.addr, align 8
  %4 = load i64, ptr %nominal_bitrate.addr, align 8
  %5 = load i64, ptr %min_bitrate.addr, align 8
  %call = call i32 @vorbis_encode_setup_managed(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5)
  store i32 %call, ptr %ret, align 4
  %6 = load i32, ptr %ret, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_clear(ptr noundef %7)
  %8 = load i32, ptr %ret, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %vi.addr, align 8
  %call1 = call i32 @vorbis_encode_setup_init(ptr noundef %9)
  store i32 %call1, ptr %ret, align 4
  %10 = load i32, ptr %ret, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %11 = load ptr, ptr %vi.addr, align 8
  call void @vorbis_info_clear(ptr noundef %11)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %12 = load i32, ptr %ret, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
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
