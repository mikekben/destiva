; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

; Function Attrs: nounwind uwtable
define hidden void @seed_loop(ptr noundef %p, ptr noundef %curves, ptr noundef %f, ptr noundef %flr, ptr noundef %seed, float noundef %specmax) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %curves.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %flr.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %specmax.addr = alloca float, align 4
  %vi = alloca ptr, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %dBoffset = alloca float, align 4
  %max = alloca float, align 4
  %oc = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %curves, ptr %curves.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %flr, ptr %flr.addr, align 8
  store ptr %seed, ptr %seed.addr, align 8
  store float %specmax, ptr %specmax.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %n2 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %n2, align 8
  %conv = sext i32 %3 to i64
  store i64 %conv, ptr %n, align 8
  %4 = load ptr, ptr %vi, align 8
  %max_curve_dB = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %4, i32 0, i32 17
  %5 = load float, ptr %max_curve_dB, align 8
  %6 = load float, ptr %specmax.addr, align 4
  %sub = fsub float %5, %6
  store float %sub, ptr %dBoffset, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8
  %8 = load i64, ptr %n, align 8
  %cmp = icmp slt i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %f.addr, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds float, ptr %9, i64 %10
  %11 = load float, ptr %arrayidx, align 4
  store float %11, ptr %max, align 4
  %12 = load ptr, ptr %p.addr, align 8
  %octave = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %octave, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %13, i64 %14
  %15 = load i64, ptr %arrayidx4, align 8
  store i64 %15, ptr %oc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %16 = load i64, ptr %i, align 8
  %add = add nsw i64 %16, 1
  %17 = load i64, ptr %n, align 8
  %cmp5 = icmp slt i64 %add, %17
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load ptr, ptr %p.addr, align 8
  %octave7 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %octave7, align 8
  %20 = load i64, ptr %i, align 8
  %add8 = add nsw i64 %20, 1
  %arrayidx9 = getelementptr inbounds i64, ptr %19, i64 %add8
  %21 = load i64, ptr %arrayidx9, align 8
  %22 = load i64, ptr %oc, align 8
  %cmp10 = icmp eq i64 %21, %22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp10, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %24 = load i64, ptr %i, align 8
  %inc = add nsw i64 %24, 1
  store i64 %inc, ptr %i, align 8
  %25 = load ptr, ptr %f.addr, align 8
  %26 = load i64, ptr %i, align 8
  %arrayidx12 = getelementptr inbounds float, ptr %25, i64 %26
  %27 = load float, ptr %arrayidx12, align 4
  %28 = load float, ptr %max, align 4
  %cmp13 = fcmp ogt float %27, %28
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %29 = load ptr, ptr %f.addr, align 8
  %30 = load i64, ptr %i, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %29, i64 %30
  %31 = load float, ptr %arrayidx15, align 4
  store float %31, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %32 = load float, ptr %max, align 4
  %add16 = fadd float %32, 6.000000e+00
  %33 = load ptr, ptr %flr.addr, align 8
  %34 = load i64, ptr %i, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %33, i64 %34
  %35 = load float, ptr %arrayidx17, align 4
  %cmp18 = fcmp ogt float %add16, %35
  br i1 %cmp18, label %if.then20, label %if.end34

if.then20:                                        ; preds = %while.end
  %36 = load i64, ptr %oc, align 8
  %37 = load ptr, ptr %p.addr, align 8
  %shiftoc = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %37, i32 0, i32 8
  %38 = load i64, ptr %shiftoc, align 8
  %shr = ashr i64 %36, %38
  store i64 %shr, ptr %oc, align 8
  %39 = load i64, ptr %oc, align 8
  %cmp21 = icmp sge i64 %39, 17
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  store i64 16, ptr %oc, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then20
  %40 = load i64, ptr %oc, align 8
  %cmp25 = icmp slt i64 %40, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  store i64 0, ptr %oc, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24
  %41 = load ptr, ptr %seed.addr, align 8
  %42 = load ptr, ptr %curves.addr, align 8
  %43 = load i64, ptr %oc, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %42, i64 %43
  %44 = load ptr, ptr %arrayidx29, align 8
  %45 = load float, ptr %max, align 4
  %46 = load ptr, ptr %p.addr, align 8
  %octave30 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %46, i32 0, i32 5
  %47 = load ptr, ptr %octave30, align 8
  %48 = load i64, ptr %i, align 8
  %arrayidx31 = getelementptr inbounds i64, ptr %47, i64 %48
  %49 = load i64, ptr %arrayidx31, align 8
  %50 = load ptr, ptr %p.addr, align 8
  %firstoc = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %50, i32 0, i32 7
  %51 = load i64, ptr %firstoc, align 8
  %sub32 = sub nsw i64 %49, %51
  %conv33 = trunc i64 %sub32 to i32
  %52 = load ptr, ptr %p.addr, align 8
  %total_octave_lines = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %52, i32 0, i32 10
  %53 = load i32, ptr %total_octave_lines, align 4
  %54 = load ptr, ptr %p.addr, align 8
  %eighth_octave_lines = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %54, i32 0, i32 9
  %55 = load i32, ptr %eighth_octave_lines, align 8
  %56 = load float, ptr %dBoffset, align 4
  call void @seed_curve(ptr noundef %41, ptr noundef %44, float noundef %45, i32 noundef %conv33, i32 noundef %53, i32 noundef %55, float noundef %56)
  br label %if.end34

if.end34:                                         ; preds = %if.end28, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %57 = load i64, ptr %i, align 8
  %inc35 = add nsw i64 %57, 1
  store i64 %inc35, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @seed_curve(ptr noundef, ptr noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
