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
%struct.att3 = type { [3 x i32], float, float }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }
%struct.vp_adjblock = type { [17 x i32] }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_tonemask_setup(ptr noundef %vi, double noundef %s, i32 noundef %block, ptr noundef %att, ptr noundef %max, ptr noundef %in) #1 {
entry:
  %vi.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %block.addr = alloca i32, align 4
  %att.addr = alloca ptr, align 8
  %max.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %is = alloca i32, align 4
  %ds = alloca double, align 8
  %ci = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store double %s, ptr %s.addr, align 8
  store i32 %block, ptr %block.addr, align 4
  store ptr %att, ptr %att.addr, align 8
  store ptr %max, ptr %max.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  %0 = load double, ptr %s.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, ptr %is, align 4
  %1 = load double, ptr %s.addr, align 8
  %2 = load i32, ptr %is, align 4
  %conv1 = sitofp i32 %2 to double
  %sub = fsub double %1, %conv1
  store double %sub, ptr %ds, align 8
  %3 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %codec_setup, align 8
  store ptr %4, ptr %ci, align 8
  %5 = load ptr, ptr %ci, align 8
  %psy_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %block.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %psy_param, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %p, align 8
  %8 = load ptr, ptr %att.addr, align 8
  %9 = load i32, ptr %is, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds %struct.att3, ptr %8, i64 %idxprom2
  %att4 = getelementptr inbounds nuw %struct.att3, ptr %arrayidx3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x i32], ptr %att4, i64 0, i64 0
  %10 = load i32, ptr %arrayidx5, align 4
  %conv6 = sitofp i32 %10 to double
  %11 = load double, ptr %ds, align 8
  %sub7 = fsub double 1.000000e+00, %11
  %12 = load ptr, ptr %att.addr, align 8
  %13 = load i32, ptr %is, align 4
  %add = add nsw i32 %13, 1
  %idxprom8 = sext i32 %add to i64
  %arrayidx9 = getelementptr inbounds %struct.att3, ptr %12, i64 %idxprom8
  %att10 = getelementptr inbounds nuw %struct.att3, ptr %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr %att10, i64 0, i64 0
  %14 = load i32, ptr %arrayidx11, align 4
  %conv12 = sitofp i32 %14 to double
  %15 = load double, ptr %ds, align 8
  %mul13 = fmul double %conv12, %15
  %16 = call double @llvm.fmuladd.f64(double %conv6, double %sub7, double %mul13)
  %conv14 = fptrunc double %16 to float
  %17 = load ptr, ptr %p, align 8
  %tone_masteratt = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %17, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [3 x float], ptr %tone_masteratt, i64 0, i64 0
  store float %conv14, ptr %arrayidx15, align 4
  %18 = load ptr, ptr %att.addr, align 8
  %19 = load i32, ptr %is, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds %struct.att3, ptr %18, i64 %idxprom16
  %att18 = getelementptr inbounds nuw %struct.att3, ptr %arrayidx17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x i32], ptr %att18, i64 0, i64 1
  %20 = load i32, ptr %arrayidx19, align 4
  %conv20 = sitofp i32 %20 to double
  %21 = load double, ptr %ds, align 8
  %sub21 = fsub double 1.000000e+00, %21
  %22 = load ptr, ptr %att.addr, align 8
  %23 = load i32, ptr %is, align 4
  %add22 = add nsw i32 %23, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds %struct.att3, ptr %22, i64 %idxprom23
  %att25 = getelementptr inbounds nuw %struct.att3, ptr %arrayidx24, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x i32], ptr %att25, i64 0, i64 1
  %24 = load i32, ptr %arrayidx26, align 4
  %conv27 = sitofp i32 %24 to double
  %25 = load double, ptr %ds, align 8
  %mul28 = fmul double %conv27, %25
  %26 = call double @llvm.fmuladd.f64(double %conv20, double %sub21, double %mul28)
  %conv29 = fptrunc double %26 to float
  %27 = load ptr, ptr %p, align 8
  %tone_masteratt30 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %27, i32 0, i32 3
  %arrayidx31 = getelementptr inbounds [3 x float], ptr %tone_masteratt30, i64 0, i64 1
  store float %conv29, ptr %arrayidx31, align 4
  %28 = load ptr, ptr %att.addr, align 8
  %29 = load i32, ptr %is, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds %struct.att3, ptr %28, i64 %idxprom32
  %att34 = getelementptr inbounds nuw %struct.att3, ptr %arrayidx33, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x i32], ptr %att34, i64 0, i64 2
  %30 = load i32, ptr %arrayidx35, align 4
  %conv36 = sitofp i32 %30 to double
  %31 = load double, ptr %ds, align 8
  %sub37 = fsub double 1.000000e+00, %31
  %32 = load ptr, ptr %att.addr, align 8
  %33 = load i32, ptr %is, align 4
  %add38 = add nsw i32 %33, 1
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds %struct.att3, ptr %32, i64 %idxprom39
  %att41 = getelementptr inbounds nuw %struct.att3, ptr %arrayidx40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x i32], ptr %att41, i64 0, i64 2
  %34 = load i32, ptr %arrayidx42, align 4
  %conv43 = sitofp i32 %34 to double
  %35 = load double, ptr %ds, align 8
  %mul44 = fmul double %conv43, %35
  %36 = call double @llvm.fmuladd.f64(double %conv36, double %sub37, double %mul44)
  %conv45 = fptrunc double %36 to float
  %37 = load ptr, ptr %p, align 8
  %tone_masteratt46 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %37, i32 0, i32 3
  %arrayidx47 = getelementptr inbounds [3 x float], ptr %tone_masteratt46, i64 0, i64 2
  store float %conv45, ptr %arrayidx47, align 4
  %38 = load ptr, ptr %att.addr, align 8
  %39 = load i32, ptr %is, align 4
  %idxprom48 = sext i32 %39 to i64
  %arrayidx49 = getelementptr inbounds %struct.att3, ptr %38, i64 %idxprom48
  %boost = getelementptr inbounds nuw %struct.att3, ptr %arrayidx49, i32 0, i32 1
  %40 = load float, ptr %boost, align 4
  %conv50 = fpext float %40 to double
  %41 = load double, ptr %ds, align 8
  %sub51 = fsub double 1.000000e+00, %41
  %42 = load ptr, ptr %att.addr, align 8
  %43 = load i32, ptr %is, align 4
  %add52 = add nsw i32 %43, 1
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds %struct.att3, ptr %42, i64 %idxprom53
  %boost55 = getelementptr inbounds nuw %struct.att3, ptr %arrayidx54, i32 0, i32 1
  %44 = load float, ptr %boost55, align 4
  %conv56 = fpext float %44 to double
  %45 = load double, ptr %ds, align 8
  %mul57 = fmul double %conv56, %45
  %46 = call double @llvm.fmuladd.f64(double %conv50, double %sub51, double %mul57)
  %conv58 = fptrunc double %46 to float
  %47 = load ptr, ptr %p, align 8
  %tone_centerboost = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %47, i32 0, i32 4
  store float %conv58, ptr %tone_centerboost, align 8
  %48 = load ptr, ptr %att.addr, align 8
  %49 = load i32, ptr %is, align 4
  %idxprom59 = sext i32 %49 to i64
  %arrayidx60 = getelementptr inbounds %struct.att3, ptr %48, i64 %idxprom59
  %decay = getelementptr inbounds nuw %struct.att3, ptr %arrayidx60, i32 0, i32 2
  %50 = load float, ptr %decay, align 4
  %conv61 = fpext float %50 to double
  %51 = load double, ptr %ds, align 8
  %sub62 = fsub double 1.000000e+00, %51
  %52 = load ptr, ptr %att.addr, align 8
  %53 = load i32, ptr %is, align 4
  %add63 = add nsw i32 %53, 1
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds %struct.att3, ptr %52, i64 %idxprom64
  %decay66 = getelementptr inbounds nuw %struct.att3, ptr %arrayidx65, i32 0, i32 2
  %54 = load float, ptr %decay66, align 4
  %conv67 = fpext float %54 to double
  %55 = load double, ptr %ds, align 8
  %mul68 = fmul double %conv67, %55
  %56 = call double @llvm.fmuladd.f64(double %conv61, double %sub62, double %mul68)
  %conv69 = fptrunc double %56 to float
  %57 = load ptr, ptr %p, align 8
  %tone_decay = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %57, i32 0, i32 5
  store float %conv69, ptr %tone_decay, align 4
  %58 = load ptr, ptr %max.addr, align 8
  %59 = load i32, ptr %is, align 4
  %idxprom70 = sext i32 %59 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %58, i64 %idxprom70
  %60 = load i32, ptr %arrayidx71, align 4
  %conv72 = sitofp i32 %60 to double
  %61 = load double, ptr %ds, align 8
  %sub73 = fsub double 1.000000e+00, %61
  %62 = load ptr, ptr %max.addr, align 8
  %63 = load i32, ptr %is, align 4
  %add74 = add nsw i32 %63, 1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %62, i64 %idxprom75
  %64 = load i32, ptr %arrayidx76, align 4
  %conv77 = sitofp i32 %64 to double
  %65 = load double, ptr %ds, align 8
  %mul78 = fmul double %conv77, %65
  %66 = call double @llvm.fmuladd.f64(double %conv72, double %sub73, double %mul78)
  %conv79 = fptrunc double %66 to float
  %67 = load ptr, ptr %p, align 8
  %max_curve_dB = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %67, i32 0, i32 17
  store float %conv79, ptr %max_curve_dB, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %68 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %68, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load ptr, ptr %in.addr, align 8
  %70 = load i32, ptr %is, align 4
  %idxprom81 = sext i32 %70 to i64
  %arrayidx82 = getelementptr inbounds %struct.vp_adjblock, ptr %69, i64 %idxprom81
  %block83 = getelementptr inbounds nuw %struct.vp_adjblock, ptr %arrayidx82, i32 0, i32 0
  %71 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %71 to i64
  %arrayidx85 = getelementptr inbounds [17 x i32], ptr %block83, i64 0, i64 %idxprom84
  %72 = load i32, ptr %arrayidx85, align 4
  %conv86 = sitofp i32 %72 to double
  %73 = load double, ptr %ds, align 8
  %sub87 = fsub double 1.000000e+00, %73
  %74 = load ptr, ptr %in.addr, align 8
  %75 = load i32, ptr %is, align 4
  %add88 = add nsw i32 %75, 1
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds %struct.vp_adjblock, ptr %74, i64 %idxprom89
  %block91 = getelementptr inbounds nuw %struct.vp_adjblock, ptr %arrayidx90, i32 0, i32 0
  %76 = load i32, ptr %i, align 4
  %idxprom92 = sext i32 %76 to i64
  %arrayidx93 = getelementptr inbounds [17 x i32], ptr %block91, i64 0, i64 %idxprom92
  %77 = load i32, ptr %arrayidx93, align 4
  %conv94 = sitofp i32 %77 to double
  %78 = load double, ptr %ds, align 8
  %mul95 = fmul double %conv94, %78
  %79 = call double @llvm.fmuladd.f64(double %conv86, double %sub87, double %mul95)
  %conv96 = fptrunc double %79 to float
  %80 = load ptr, ptr %p, align 8
  %toneatt = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %80, i32 0, i32 7
  %81 = load i32, ptr %i, align 4
  %idxprom97 = sext i32 %81 to i64
  %arrayidx98 = getelementptr inbounds [17 x float], ptr %toneatt, i64 0, i64 %idxprom97
  store float %conv96, ptr %arrayidx98, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %82 = load i32, ptr %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
