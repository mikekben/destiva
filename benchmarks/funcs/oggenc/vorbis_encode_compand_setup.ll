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
%struct.compandblock = type { [40 x i32] }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_compand_setup(ptr noundef %vi, double noundef %s, i32 noundef %block, ptr noundef %in, ptr noundef %x) #1 {
entry:
  %vi.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %block.addr = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %is = alloca i32, align 4
  %ds = alloca double, align 8
  %ci = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store double %s, ptr %s.addr, align 8
  store i32 %block, ptr %block.addr, align 4
  store ptr %in, ptr %in.addr, align 8
  store ptr %x, ptr %x.addr, align 8
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
  %8 = load ptr, ptr %x.addr, align 8
  %9 = load i32, ptr %is, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds double, ptr %8, i64 %idxprom2
  %10 = load double, ptr %arrayidx3, align 8
  %11 = load double, ptr %ds, align 8
  %sub4 = fsub double 1.000000e+00, %11
  %12 = load ptr, ptr %x.addr, align 8
  %13 = load i32, ptr %is, align 4
  %add = add nsw i32 %13, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds double, ptr %12, i64 %idxprom5
  %14 = load double, ptr %arrayidx6, align 8
  %15 = load double, ptr %ds, align 8
  %mul7 = fmul double %14, %15
  %16 = call double @llvm.fmuladd.f64(double %10, double %sub4, double %mul7)
  store double %16, ptr %ds, align 8
  %17 = load double, ptr %ds, align 8
  %conv8 = fptosi double %17 to i32
  store i32 %conv8, ptr %is, align 4
  %18 = load i32, ptr %is, align 4
  %conv9 = sitofp i32 %18 to double
  %19 = load double, ptr %ds, align 8
  %sub10 = fsub double %19, %conv9
  store double %sub10, ptr %ds, align 8
  %20 = load double, ptr %ds, align 8
  %cmp = fcmp oeq double %20, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %21 = load i32, ptr %is, align 4
  %cmp12 = icmp sgt i32 %21, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load i32, ptr %is, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %is, align 4
  store double 1.000000e+00, ptr %ds, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %23 = load i32, ptr %i, align 4
  %cmp14 = icmp slt i32 %23, 40
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %in.addr, align 8
  %25 = load i32, ptr %is, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds %struct.compandblock, ptr %24, i64 %idxprom16
  %data = getelementptr inbounds nuw %struct.compandblock, ptr %arrayidx17, i32 0, i32 0
  %26 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [40 x i32], ptr %data, i64 0, i64 %idxprom18
  %27 = load i32, ptr %arrayidx19, align 4
  %conv20 = sitofp i32 %27 to double
  %28 = load double, ptr %ds, align 8
  %sub21 = fsub double 1.000000e+00, %28
  %29 = load ptr, ptr %in.addr, align 8
  %30 = load i32, ptr %is, align 4
  %add22 = add nsw i32 %30, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds %struct.compandblock, ptr %29, i64 %idxprom23
  %data25 = getelementptr inbounds nuw %struct.compandblock, ptr %arrayidx24, i32 0, i32 0
  %31 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds [40 x i32], ptr %data25, i64 0, i64 %idxprom26
  %32 = load i32, ptr %arrayidx27, align 4
  %conv28 = sitofp i32 %32 to double
  %33 = load double, ptr %ds, align 8
  %mul29 = fmul double %conv28, %33
  %34 = call double @llvm.fmuladd.f64(double %conv20, double %sub21, double %mul29)
  %conv30 = fptrunc double %34 to float
  %35 = load ptr, ptr %p, align 8
  %noisecompand = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %35, i32 0, i32 16
  %36 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds [40 x float], ptr %noisecompand, i64 0, i64 %idxprom31
  store float %conv30, ptr %arrayidx32, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
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
