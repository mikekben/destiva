; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }

@.str.148 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @_vorbis_pack_info(ptr noundef %opb, ptr noundef %vi) #0 {
entry:
  %retval = alloca i32, align 4
  %opb.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -129, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %3, i64 noundef 1, i32 noundef 8)
  %4 = load ptr, ptr %opb.addr, align 8
  call void @_v_writestring(ptr noundef %4, ptr noundef @.str.148, i32 noundef 6)
  %5 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %5, i64 noundef 0, i32 noundef 32)
  %6 = load ptr, ptr %opb.addr, align 8
  %7 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %channels, align 4
  %conv = sext i32 %8 to i64
  call void @oggpack_write(ptr noundef %6, i64 noundef %conv, i32 noundef 8)
  %9 = load ptr, ptr %opb.addr, align 8
  %10 = load ptr, ptr %vi.addr, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %10, i32 0, i32 2
  %11 = load i64, ptr %rate, align 8
  call void @oggpack_write(ptr noundef %9, i64 noundef %11, i32 noundef 32)
  %12 = load ptr, ptr %opb.addr, align 8
  %13 = load ptr, ptr %vi.addr, align 8
  %bitrate_upper = getelementptr inbounds nuw %struct.vorbis_info, ptr %13, i32 0, i32 3
  %14 = load i64, ptr %bitrate_upper, align 8
  call void @oggpack_write(ptr noundef %12, i64 noundef %14, i32 noundef 32)
  %15 = load ptr, ptr %opb.addr, align 8
  %16 = load ptr, ptr %vi.addr, align 8
  %bitrate_nominal = getelementptr inbounds nuw %struct.vorbis_info, ptr %16, i32 0, i32 4
  %17 = load i64, ptr %bitrate_nominal, align 8
  call void @oggpack_write(ptr noundef %15, i64 noundef %17, i32 noundef 32)
  %18 = load ptr, ptr %opb.addr, align 8
  %19 = load ptr, ptr %vi.addr, align 8
  %bitrate_lower = getelementptr inbounds nuw %struct.vorbis_info, ptr %19, i32 0, i32 5
  %20 = load i64, ptr %bitrate_lower, align 8
  call void @oggpack_write(ptr noundef %18, i64 noundef %20, i32 noundef 32)
  %21 = load ptr, ptr %opb.addr, align 8
  %22 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %22, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 0
  %23 = load i64, ptr %arrayidx, align 8
  %conv1 = trunc i64 %23 to i32
  %call = call i32 @ilog2(i32 noundef %conv1)
  %conv2 = sext i32 %call to i64
  call void @oggpack_write(ptr noundef %21, i64 noundef %conv2, i32 noundef 4)
  %24 = load ptr, ptr %opb.addr, align 8
  %25 = load ptr, ptr %ci, align 8
  %blocksizes3 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %25, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [2 x i64], ptr %blocksizes3, i64 0, i64 1
  %26 = load i64, ptr %arrayidx4, align 8
  %conv5 = trunc i64 %26 to i32
  %call6 = call i32 @ilog2(i32 noundef %conv5)
  %conv7 = sext i32 %call6 to i64
  call void @oggpack_write(ptr noundef %24, i64 noundef %conv7, i32 noundef 4)
  %27 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %27, i64 noundef 1, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @_v_writestring(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog2(i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
