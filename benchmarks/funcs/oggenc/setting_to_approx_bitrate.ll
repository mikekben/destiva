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
%struct.ve_setup_data_template = type { i32, ptr, ptr, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
define hidden double @setting_to_approx_bitrate(ptr noundef %vi) #1 {
entry:
  %retval = alloca double, align 8
  %vi.addr = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %hi = alloca ptr, align 8
  %setup = alloca ptr, align 8
  %is = alloca i32, align 4
  %ds = alloca double, align 8
  %ch = alloca i32, align 4
  %r = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %ci, align 8
  %hi1 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %2, i32 0, i32 19
  store ptr %hi1, ptr %hi, align 8
  %3 = load ptr, ptr %hi, align 8
  %setup2 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %setup2, align 8
  store ptr %4, ptr %setup, align 8
  %5 = load ptr, ptr %hi, align 8
  %base_setting = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %5, i32 0, i32 2
  %6 = load double, ptr %base_setting, align 8
  %conv = fptosi double %6 to i32
  store i32 %conv, ptr %is, align 4
  %7 = load ptr, ptr %hi, align 8
  %base_setting3 = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %7, i32 0, i32 2
  %8 = load double, ptr %base_setting3, align 8
  %9 = load i32, ptr %is, align 4
  %conv4 = sitofp i32 %9 to double
  %sub = fsub double %8, %conv4
  store double %sub, ptr %ds, align 8
  %10 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %channels, align 4
  store i32 %11, ptr %ch, align 4
  %12 = load ptr, ptr %setup, align 8
  %rate_mapping = getelementptr inbounds nuw %struct.ve_setup_data_template, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %rate_mapping, align 8
  store ptr %13, ptr %r, align 8
  %14 = load ptr, ptr %r, align 8
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double -1.000000e+00, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %r, align 8
  %16 = load i32, ptr %is, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds double, ptr %15, i64 %idxprom
  %17 = load double, ptr %arrayidx, align 8
  %18 = load double, ptr %ds, align 8
  %sub6 = fsub double 1.000000e+00, %18
  %19 = load ptr, ptr %r, align 8
  %20 = load i32, ptr %is, align 4
  %add = add nsw i32 %20, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds double, ptr %19, i64 %idxprom7
  %21 = load double, ptr %arrayidx8, align 8
  %22 = load double, ptr %ds, align 8
  %mul9 = fmul double %21, %22
  %23 = call double @llvm.fmuladd.f64(double %17, double %sub6, double %mul9)
  %24 = load i32, ptr %ch, align 4
  %conv10 = sitofp i32 %24 to double
  %mul = fmul double %23, %conv10
  store double %mul, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %25 = load double, ptr %retval, align 8
  ret double %25
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
