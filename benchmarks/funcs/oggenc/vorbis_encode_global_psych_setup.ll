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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_global_psych_setup(ptr noundef %vi, double noundef %s, ptr noundef %in, ptr noundef %x) #2 {
entry:
  %vi.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %in.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %is = alloca i32, align 4
  %ds = alloca double, align 8
  %ci = alloca ptr, align 8
  %g = alloca ptr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store double %s, ptr %s.addr, align 8
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
  %psy_g_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %5, i32 0, i32 17
  store ptr %psy_g_param, ptr %g, align 8
  %6 = load ptr, ptr %g, align 8
  %7 = load ptr, ptr %in.addr, align 8
  %8 = load ptr, ptr %x.addr, align 8
  %9 = load i32, ptr %is, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds double, ptr %8, i64 %idxprom
  %10 = load double, ptr %arrayidx, align 8
  %conv2 = fptosi double %10 to i32
  %idx.ext = sext i32 %conv2 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_info_psy_global, ptr %7, i64 %idx.ext
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 %add.ptr, i64 492, i1 false)
  %11 = load ptr, ptr %x.addr, align 8
  %12 = load i32, ptr %is, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %11, i64 %idxprom3
  %13 = load double, ptr %arrayidx4, align 8
  %14 = load double, ptr %ds, align 8
  %sub5 = fsub double 1.000000e+00, %14
  %15 = load ptr, ptr %x.addr, align 8
  %16 = load i32, ptr %is, align 4
  %add = add nsw i32 %16, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds double, ptr %15, i64 %idxprom6
  %17 = load double, ptr %arrayidx7, align 8
  %18 = load double, ptr %ds, align 8
  %mul8 = fmul double %17, %18
  %19 = call double @llvm.fmuladd.f64(double %13, double %sub5, double %mul8)
  store double %19, ptr %ds, align 8
  %20 = load double, ptr %ds, align 8
  %conv9 = fptosi double %20 to i32
  store i32 %conv9, ptr %is, align 4
  %21 = load i32, ptr %is, align 4
  %conv10 = sitofp i32 %21 to double
  %22 = load double, ptr %ds, align 8
  %sub11 = fsub double %22, %conv10
  store double %sub11, ptr %ds, align 8
  %23 = load double, ptr %ds, align 8
  %cmp = fcmp oeq double %23, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %24 = load i32, ptr %is, align 4
  %cmp13 = icmp sgt i32 %24, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %25 = load i32, ptr %is, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %is, align 4
  store double 1.000000e+00, ptr %ds, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, ptr %i, align 4
  %cmp15 = icmp slt i32 %26, 4
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load ptr, ptr %in.addr, align 8
  %28 = load i32, ptr %is, align 4
  %idxprom17 = sext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds %struct.vorbis_info_psy_global, ptr %27, i64 %idxprom17
  %preecho_thresh = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %arrayidx18, i32 0, i32 1
  %29 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds [7 x float], ptr %preecho_thresh, i64 0, i64 %idxprom19
  %30 = load float, ptr %arrayidx20, align 4
  %conv21 = fpext float %30 to double
  %31 = load double, ptr %ds, align 8
  %sub22 = fsub double 1.000000e+00, %31
  %32 = load ptr, ptr %in.addr, align 8
  %33 = load i32, ptr %is, align 4
  %add23 = add nsw i32 %33, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds %struct.vorbis_info_psy_global, ptr %32, i64 %idxprom24
  %preecho_thresh26 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %arrayidx25, i32 0, i32 1
  %34 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [7 x float], ptr %preecho_thresh26, i64 0, i64 %idxprom27
  %35 = load float, ptr %arrayidx28, align 4
  %conv29 = fpext float %35 to double
  %36 = load double, ptr %ds, align 8
  %mul30 = fmul double %conv29, %36
  %37 = call double @llvm.fmuladd.f64(double %conv21, double %sub22, double %mul30)
  %conv31 = fptrunc double %37 to float
  %38 = load ptr, ptr %g, align 8
  %preecho_thresh32 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds [7 x float], ptr %preecho_thresh32, i64 0, i64 %idxprom33
  store float %conv31, ptr %arrayidx34, align 4
  %40 = load ptr, ptr %in.addr, align 8
  %41 = load i32, ptr %is, align 4
  %idxprom35 = sext i32 %41 to i64
  %arrayidx36 = getelementptr inbounds %struct.vorbis_info_psy_global, ptr %40, i64 %idxprom35
  %postecho_thresh = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %arrayidx36, i32 0, i32 2
  %42 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds [7 x float], ptr %postecho_thresh, i64 0, i64 %idxprom37
  %43 = load float, ptr %arrayidx38, align 4
  %conv39 = fpext float %43 to double
  %44 = load double, ptr %ds, align 8
  %sub40 = fsub double 1.000000e+00, %44
  %45 = load ptr, ptr %in.addr, align 8
  %46 = load i32, ptr %is, align 4
  %add41 = add nsw i32 %46, 1
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds %struct.vorbis_info_psy_global, ptr %45, i64 %idxprom42
  %postecho_thresh44 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %arrayidx43, i32 0, i32 2
  %47 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %47 to i64
  %arrayidx46 = getelementptr inbounds [7 x float], ptr %postecho_thresh44, i64 0, i64 %idxprom45
  %48 = load float, ptr %arrayidx46, align 4
  %conv47 = fpext float %48 to double
  %49 = load double, ptr %ds, align 8
  %mul48 = fmul double %conv47, %49
  %50 = call double @llvm.fmuladd.f64(double %conv39, double %sub40, double %mul48)
  %conv49 = fptrunc double %50 to float
  %51 = load ptr, ptr %g, align 8
  %postecho_thresh50 = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %52 to i64
  %arrayidx52 = getelementptr inbounds [7 x float], ptr %postecho_thresh50, i64 0, i64 %idxprom51
  store float %conv49, ptr %arrayidx52, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load i32, ptr %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %54 = load ptr, ptr %ci, align 8
  %hi = getelementptr inbounds nuw %struct.codec_setup_info, ptr %54, i32 0, i32 19
  %amplitude_track_dBpersec = getelementptr inbounds nuw %struct.highlevel_encode_setup, ptr %hi, i32 0, i32 20
  %55 = load double, ptr %amplitude_track_dBpersec, align 8
  %conv53 = fptrunc double %55 to float
  %56 = load ptr, ptr %g, align 8
  %ampmax_att_per_sec = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %56, i32 0, i32 5
  store float %conv53, ptr %ampmax_att_per_sec, align 4
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
