; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define dso_local void @_vp_noise_normalize(ptr noundef %p, ptr noundef %in, ptr noundef %out, ptr noundef %sortedindex) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %sortedindex.addr = alloca ptr, align 8
  %flag = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %vi = alloca ptr, align 8
  %partition = alloca i32, align 4
  %start = alloca i32, align 4
  %acc = alloca float, align 4
  %k = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %sortedindex, ptr %sortedindex.addr, align 8
  store i32 0, ptr %flag, align 4
  store i32 0, ptr %j, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %vi2 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %vi2, align 8
  store ptr %3, ptr %vi, align 8
  %4 = load ptr, ptr %vi, align 8
  %normal_partition = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %4, i32 0, i32 21
  %5 = load i32, ptr %normal_partition, align 8
  store i32 %5, ptr %partition, align 4
  %6 = load ptr, ptr %vi, align 8
  %normal_start = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %6, i32 0, i32 20
  %7 = load i32, ptr %normal_start, align 4
  store i32 %7, ptr %start, align 4
  %8 = load i32, ptr %start, align 4
  %9 = load i32, ptr %n, align 4
  %cmp = icmp sgt i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %n, align 4
  store i32 %10, ptr %start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %vi, align 8
  %normal_channel_p = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %11, i32 0, i32 18
  %12 = load i32, ptr %normal_channel_p, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then3, label %if.end81

if.then3:                                         ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %13 = load i32, ptr %j, align 4
  %14 = load i32, ptr %start, align 4
  %cmp4 = icmp slt i32 %13, %14
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %in.addr, align 8
  %16 = load i32, ptr %j, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds float, ptr %15, i64 %idxprom
  %17 = load float, ptr %arrayidx, align 4
  %conv = fpext float %17 to double
  %18 = call double @llvm.rint.f64(double %conv)
  %conv5 = fptrunc double %18 to float
  %19 = load ptr, ptr %out.addr, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %20 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %19, i64 %idxprom6
  store float %conv5, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc78, %for.end
  %22 = load i32, ptr %j, align 4
  %23 = load i32, ptr %partition, align 4
  %add = add nsw i32 %22, %23
  %24 = load i32, ptr %n, align 4
  %cmp9 = icmp sle i32 %add, %24
  br i1 %cmp9, label %for.body11, label %for.end80

for.body11:                                       ; preds = %for.cond8
  store float 0.000000e+00, ptr %acc, align 4
  %25 = load i32, ptr %j, align 4
  store i32 %25, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc21, %for.body11
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %j, align 4
  %28 = load i32, ptr %partition, align 4
  %add13 = add nsw i32 %27, %28
  %cmp14 = icmp slt i32 %26, %add13
  br i1 %cmp14, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond12
  %29 = load ptr, ptr %in.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds float, ptr %29, i64 %idxprom17
  %31 = load float, ptr %arrayidx18, align 4
  %32 = load ptr, ptr %in.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds float, ptr %32, i64 %idxprom19
  %34 = load float, ptr %arrayidx20, align 4
  %35 = load float, ptr %acc, align 4
  %36 = call float @llvm.fmuladd.f32(float %31, float %34, float %35)
  store float %36, ptr %acc, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %37 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %37, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond12, !llvm.loop !8

for.end23:                                        ; preds = %for.cond12
  store i32 0, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc62, %for.end23
  %38 = load i32, ptr %i, align 4
  %39 = load i32, ptr %partition, align 4
  %cmp25 = icmp slt i32 %38, %39
  br i1 %cmp25, label %for.body27, label %for.end64

for.body27:                                       ; preds = %for.cond24
  %40 = load ptr, ptr %sortedindex.addr, align 8
  %41 = load i32, ptr %i, align 4
  %42 = load i32, ptr %j, align 4
  %add28 = add nsw i32 %41, %42
  %43 = load i32, ptr %start, align 4
  %sub = sub nsw i32 %add28, %43
  %idxprom29 = sext i32 %sub to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %40, i64 %idxprom29
  %44 = load i32, ptr %arrayidx30, align 4
  store i32 %44, ptr %k, align 4
  %45 = load ptr, ptr %in.addr, align 8
  %46 = load i32, ptr %k, align 4
  %idxprom31 = sext i32 %46 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %45, i64 %idxprom31
  %47 = load float, ptr %arrayidx32, align 4
  %48 = load ptr, ptr %in.addr, align 8
  %49 = load i32, ptr %k, align 4
  %idxprom33 = sext i32 %49 to i64
  %arrayidx34 = getelementptr inbounds float, ptr %48, i64 %idxprom33
  %50 = load float, ptr %arrayidx34, align 4
  %mul = fmul float %47, %50
  %cmp35 = fcmp oge float %mul, 2.500000e-01
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.body27
  %51 = load ptr, ptr %in.addr, align 8
  %52 = load i32, ptr %k, align 4
  %idxprom38 = sext i32 %52 to i64
  %arrayidx39 = getelementptr inbounds float, ptr %51, i64 %idxprom38
  %53 = load float, ptr %arrayidx39, align 4
  %conv40 = fpext float %53 to double
  %54 = call double @llvm.rint.f64(double %conv40)
  %conv41 = fptrunc double %54 to float
  %55 = load ptr, ptr %out.addr, align 8
  %56 = load i32, ptr %k, align 4
  %idxprom42 = sext i32 %56 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %55, i64 %idxprom42
  store float %conv41, ptr %arrayidx43, align 4
  %57 = load ptr, ptr %in.addr, align 8
  %58 = load i32, ptr %k, align 4
  %idxprom44 = sext i32 %58 to i64
  %arrayidx45 = getelementptr inbounds float, ptr %57, i64 %idxprom44
  %59 = load float, ptr %arrayidx45, align 4
  %60 = load ptr, ptr %in.addr, align 8
  %61 = load i32, ptr %k, align 4
  %idxprom46 = sext i32 %61 to i64
  %arrayidx47 = getelementptr inbounds float, ptr %60, i64 %idxprom46
  %62 = load float, ptr %arrayidx47, align 4
  %63 = load float, ptr %acc, align 4
  %neg = fneg float %59
  %64 = call float @llvm.fmuladd.f32(float %neg, float %62, float %63)
  store float %64, ptr %acc, align 4
  store i32 1, ptr %flag, align 4
  br label %if.end61

if.else:                                          ; preds = %for.body27
  %65 = load float, ptr %acc, align 4
  %conv49 = fpext float %65 to double
  %66 = load ptr, ptr %vi, align 8
  %normal_thresh = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %66, i32 0, i32 22
  %67 = load double, ptr %normal_thresh, align 8
  %cmp50 = fcmp olt double %conv49, %67
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.else
  br label %for.end64

if.end53:                                         ; preds = %if.else
  %68 = load ptr, ptr %in.addr, align 8
  %69 = load i32, ptr %k, align 4
  %idxprom54 = sext i32 %69 to i64
  %arrayidx55 = getelementptr inbounds float, ptr %68, i64 %idxprom54
  %70 = load float, ptr %arrayidx55, align 4
  %call = call float @unitnorm(float noundef %70)
  %71 = load ptr, ptr %out.addr, align 8
  %72 = load i32, ptr %k, align 4
  %idxprom56 = sext i32 %72 to i64
  %arrayidx57 = getelementptr inbounds float, ptr %71, i64 %idxprom56
  store float %call, ptr %arrayidx57, align 4
  %73 = load float, ptr %acc, align 4
  %conv58 = fpext float %73 to double
  %sub59 = fsub double %conv58, 1.000000e+00
  %conv60 = fptrunc double %sub59 to float
  store float %conv60, ptr %acc, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end53, %if.then37
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %74 = load i32, ptr %i, align 4
  %inc63 = add nsw i32 %74, 1
  store i32 %inc63, ptr %i, align 4
  br label %for.cond24, !llvm.loop !9

for.end64:                                        ; preds = %if.then52, %for.cond24
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc75, %for.end64
  %75 = load i32, ptr %i, align 4
  %76 = load i32, ptr %partition, align 4
  %cmp66 = icmp slt i32 %75, %76
  br i1 %cmp66, label %for.body68, label %for.end77

for.body68:                                       ; preds = %for.cond65
  %77 = load ptr, ptr %sortedindex.addr, align 8
  %78 = load i32, ptr %i, align 4
  %79 = load i32, ptr %j, align 4
  %add69 = add nsw i32 %78, %79
  %80 = load i32, ptr %start, align 4
  %sub70 = sub nsw i32 %add69, %80
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds i32, ptr %77, i64 %idxprom71
  %81 = load i32, ptr %arrayidx72, align 4
  store i32 %81, ptr %k, align 4
  %82 = load ptr, ptr %out.addr, align 8
  %83 = load i32, ptr %k, align 4
  %idxprom73 = sext i32 %83 to i64
  %arrayidx74 = getelementptr inbounds float, ptr %82, i64 %idxprom73
  store float 0.000000e+00, ptr %arrayidx74, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %for.body68
  %84 = load i32, ptr %i, align 4
  %inc76 = add nsw i32 %84, 1
  store i32 %inc76, ptr %i, align 4
  br label %for.cond65, !llvm.loop !10

for.end77:                                        ; preds = %for.cond65
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %85 = load i32, ptr %partition, align 4
  %86 = load i32, ptr %j, align 4
  %add79 = add nsw i32 %86, %85
  store i32 %add79, ptr %j, align 4
  br label %for.cond8, !llvm.loop !11

for.end80:                                        ; preds = %for.cond8
  br label %if.end81

if.end81:                                         ; preds = %for.end80, %if.end
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc92, %if.end81
  %87 = load i32, ptr %j, align 4
  %88 = load i32, ptr %n, align 4
  %cmp83 = icmp slt i32 %87, %88
  br i1 %cmp83, label %for.body85, label %for.end94

for.body85:                                       ; preds = %for.cond82
  %89 = load ptr, ptr %in.addr, align 8
  %90 = load i32, ptr %j, align 4
  %idxprom86 = sext i32 %90 to i64
  %arrayidx87 = getelementptr inbounds float, ptr %89, i64 %idxprom86
  %91 = load float, ptr %arrayidx87, align 4
  %conv88 = fpext float %91 to double
  %92 = call double @llvm.rint.f64(double %conv88)
  %conv89 = fptrunc double %92 to float
  %93 = load ptr, ptr %out.addr, align 8
  %94 = load i32, ptr %j, align 4
  %idxprom90 = sext i32 %94 to i64
  %arrayidx91 = getelementptr inbounds float, ptr %93, i64 %idxprom90
  store float %conv89, ptr %arrayidx91, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %for.body85
  %95 = load i32, ptr %j, align 4
  %inc93 = add nsw i32 %95, 1
  store i32 %inc93, ptr %j, align 4
  br label %for.cond82, !llvm.loop !12

for.end94:                                        ; preds = %for.cond82
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden float @unitnorm(float noundef) #1

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
