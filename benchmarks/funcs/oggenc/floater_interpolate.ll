; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #0

; Function Attrs: nounwind uwtable
define hidden i32 @floater_interpolate(ptr noundef %bm, ptr noundef %vi, double noundef %desired_rate) #1 {
entry:
  %bm.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %desired_rate.addr = alloca double, align 8
  %bin = alloca i32, align 4
  %lobitrate = alloca double, align 8
  %hibitrate = alloca double, align 8
  store ptr %bm, ptr %bm.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store double %desired_rate, ptr %desired_rate.addr, align 8
  %0 = load ptr, ptr %bm.addr, align 8
  %avgfloat = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %0, i32 0, i32 22
  %1 = load double, ptr %avgfloat, align 8
  %2 = call double @llvm.rint.f64(double %1)
  %conv = fptosi double %2 to i32
  store i32 %conv, ptr %bin, align 4
  %3 = load ptr, ptr %bm.addr, align 8
  %avg_binacc = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %avg_binacc, align 8
  %5 = load i32, ptr %bin, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i64, ptr %4, i64 %idxprom
  %6 = load i64, ptr %arrayidx, align 8
  %mul = mul nsw i64 %6, 8
  %conv1 = sitofp i64 %mul to double
  %7 = load ptr, ptr %bm.addr, align 8
  %avg_sampleacc = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %7, i32 0, i32 9
  %8 = load i32, ptr %avg_sampleacc, align 4
  %conv2 = uitofp i32 %8 to double
  %div = fdiv double %conv1, %conv2
  %9 = load ptr, ptr %vi.addr, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %9, i32 0, i32 2
  %10 = load i64, ptr %rate, align 8
  %conv3 = sitofp i64 %10 to double
  %mul4 = fmul double %div, %conv3
  store double %mul4, ptr %lobitrate, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %11 = load double, ptr %lobitrate, align 8
  %12 = load double, ptr %desired_rate.addr, align 8
  %cmp = fcmp ogt double %11, %12
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load i32, ptr %bin, align 4
  %cmp6 = icmp sgt i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32, ptr %bin, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %bin, align 4
  %16 = load ptr, ptr %bm.addr, align 8
  %avg_binacc8 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %16, i32 0, i32 5
  %17 = load ptr, ptr %avg_binacc8, align 8
  %18 = load i32, ptr %bin, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i64, ptr %17, i64 %idxprom9
  %19 = load i64, ptr %arrayidx10, align 8
  %mul11 = mul nsw i64 %19, 8
  %conv12 = sitofp i64 %mul11 to double
  %20 = load ptr, ptr %bm.addr, align 8
  %avg_sampleacc13 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %20, i32 0, i32 9
  %21 = load i32, ptr %avg_sampleacc13, align 4
  %conv14 = uitofp i32 %21 to double
  %div15 = fdiv double %conv12, %conv14
  %22 = load ptr, ptr %vi.addr, align 8
  %rate16 = getelementptr inbounds nuw %struct.vorbis_info, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %rate16, align 8
  %conv17 = sitofp i64 %23 to double
  %mul18 = fmul double %div15, %conv17
  store double %mul18, ptr %lobitrate, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %24 = load i32, ptr %bin, align 4
  %add = add nsw i32 %24, 1
  %25 = load ptr, ptr %bm.addr, align 8
  %queue_bins = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %queue_bins, align 8
  %cmp19 = icmp slt i32 %add, %26
  br i1 %cmp19, label %if.then, label %if.end37

if.then:                                          ; preds = %while.end
  %27 = load ptr, ptr %bm.addr, align 8
  %avg_binacc21 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %avg_binacc21, align 8
  %29 = load i32, ptr %bin, align 4
  %add22 = add nsw i32 %29, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i64, ptr %28, i64 %idxprom23
  %30 = load i64, ptr %arrayidx24, align 8
  %mul25 = mul nsw i64 %30, 8
  %conv26 = sitofp i64 %mul25 to double
  %31 = load ptr, ptr %bm.addr, align 8
  %avg_sampleacc27 = getelementptr inbounds nuw %struct.bitrate_manager_state, ptr %31, i32 0, i32 9
  %32 = load i32, ptr %avg_sampleacc27, align 4
  %conv28 = uitofp i32 %32 to double
  %div29 = fdiv double %conv26, %conv28
  %33 = load ptr, ptr %vi.addr, align 8
  %rate30 = getelementptr inbounds nuw %struct.vorbis_info, ptr %33, i32 0, i32 2
  %34 = load i64, ptr %rate30, align 8
  %conv31 = sitofp i64 %34 to double
  %mul32 = fmul double %div29, %conv31
  store double %mul32, ptr %hibitrate, align 8
  %35 = load double, ptr %hibitrate, align 8
  %36 = load double, ptr %desired_rate.addr, align 8
  %sub = fsub double %35, %36
  %37 = call double @llvm.fabs.f64(double %sub)
  %38 = load double, ptr %lobitrate, align 8
  %39 = load double, ptr %desired_rate.addr, align 8
  %sub33 = fsub double %38, %39
  %40 = call double @llvm.fabs.f64(double %sub33)
  %cmp34 = fcmp olt double %37, %40
  br i1 %cmp34, label %if.then36, label %if.end

if.then36:                                        ; preds = %if.then
  %41 = load i32, ptr %bin, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %bin, align 4
  br label %if.end

if.end:                                           ; preds = %if.then36, %if.then
  br label %if.end37

if.end37:                                         ; preds = %if.end, %while.end
  %42 = load i32, ptr %bin, align 4
  ret i32 %42
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #0

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
