; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

; Function Attrs: nounwind uwtable
define hidden void @max_seeds(ptr noundef %p, ptr noundef %seed, ptr noundef %flr) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %seed.addr = alloca ptr, align 8
  %flr.addr = alloca ptr, align 8
  %n = alloca i64, align 8
  %linesper = alloca i32, align 4
  %linpos = alloca i64, align 8
  %pos = alloca i64, align 8
  %minV = alloca float, align 4
  %end = alloca i64, align 8
  %minV54 = alloca float, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %seed, ptr %seed.addr, align 8
  store ptr %flr, ptr %flr.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %total_octave_lines = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 10
  %1 = load i32, ptr %total_octave_lines, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %n, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %eighth_octave_lines = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %eighth_octave_lines, align 8
  store i32 %3, ptr %linesper, align 4
  store i64 0, ptr %linpos, align 8
  %4 = load ptr, ptr %seed.addr, align 8
  %5 = load i32, ptr %linesper, align 4
  %6 = load i64, ptr %n, align 8
  call void @seed_chase(ptr noundef %4, i32 noundef %5, i64 noundef %6)
  %7 = load ptr, ptr %p.addr, align 8
  %octave = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %octave, align 8
  %arrayidx = getelementptr inbounds i64, ptr %8, i64 0
  %9 = load i64, ptr %arrayidx, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %firstoc = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %10, i32 0, i32 7
  %11 = load i64, ptr %firstoc, align 8
  %sub = sub nsw i64 %9, %11
  %12 = load i32, ptr %linesper, align 4
  %shr = ashr i32 %12, 1
  %conv1 = sext i32 %shr to i64
  %sub2 = sub nsw i64 %sub, %conv1
  store i64 %sub2, ptr %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %13 = load i64, ptr %linpos, align 8
  %add = add nsw i64 %13, 1
  %14 = load ptr, ptr %p.addr, align 8
  %n3 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %14, i32 0, i32 0
  %15 = load i32, ptr %n3, align 8
  %conv4 = sext i32 %15 to i64
  %cmp = icmp slt i64 %add, %conv4
  br i1 %cmp, label %while.body, label %while.end53

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %seed.addr, align 8
  %17 = load i64, ptr %pos, align 8
  %arrayidx6 = getelementptr inbounds float, ptr %16, i64 %17
  %18 = load float, ptr %arrayidx6, align 4
  store float %18, ptr %minV, align 4
  %19 = load ptr, ptr %p.addr, align 8
  %octave7 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %octave7, align 8
  %21 = load i64, ptr %linpos, align 8
  %arrayidx8 = getelementptr inbounds i64, ptr %20, i64 %21
  %22 = load i64, ptr %arrayidx8, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %octave9 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %octave9, align 8
  %25 = load i64, ptr %linpos, align 8
  %add10 = add nsw i64 %25, 1
  %arrayidx11 = getelementptr inbounds i64, ptr %24, i64 %add10
  %26 = load i64, ptr %arrayidx11, align 8
  %add12 = add nsw i64 %22, %26
  %shr13 = ashr i64 %add12, 1
  %27 = load ptr, ptr %p.addr, align 8
  %firstoc14 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %27, i32 0, i32 7
  %28 = load i64, ptr %firstoc14, align 8
  %sub15 = sub nsw i64 %shr13, %28
  store i64 %sub15, ptr %end, align 8
  %29 = load float, ptr %minV, align 4
  %30 = load ptr, ptr %p.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %vi, align 8
  %tone_abs_limit = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %31, i32 0, i32 6
  %32 = load float, ptr %tone_abs_limit, align 8
  %cmp16 = fcmp ogt float %29, %32
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %33 = load ptr, ptr %p.addr, align 8
  %vi18 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %vi18, align 8
  %tone_abs_limit19 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %34, i32 0, i32 6
  %35 = load float, ptr %tone_abs_limit19, align 8
  store float %35, ptr %minV, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond20

while.cond20:                                     ; preds = %if.end35, %if.end
  %36 = load i64, ptr %pos, align 8
  %add21 = add nsw i64 %36, 1
  %37 = load i64, ptr %end, align 8
  %cmp22 = icmp sle i64 %add21, %37
  br i1 %cmp22, label %while.body24, label %while.end

while.body24:                                     ; preds = %while.cond20
  %38 = load i64, ptr %pos, align 8
  %inc = add nsw i64 %38, 1
  store i64 %inc, ptr %pos, align 8
  %39 = load ptr, ptr %seed.addr, align 8
  %40 = load i64, ptr %pos, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %39, i64 %40
  %41 = load float, ptr %arrayidx25, align 4
  %cmp26 = fcmp ogt float %41, -9.999000e+03
  br i1 %cmp26, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body24
  %42 = load ptr, ptr %seed.addr, align 8
  %43 = load i64, ptr %pos, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %42, i64 %43
  %44 = load float, ptr %arrayidx28, align 4
  %45 = load float, ptr %minV, align 4
  %cmp29 = fcmp olt float %44, %45
  br i1 %cmp29, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body24
  %46 = load float, ptr %minV, align 4
  %cmp31 = fcmp oeq float %46, -9.999000e+03
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %47 = load ptr, ptr %seed.addr, align 8
  %48 = load i64, ptr %pos, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %47, i64 %48
  %49 = load float, ptr %arrayidx34, align 4
  store float %49, ptr %minV, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %lor.lhs.false
  br label %while.cond20, !llvm.loop !6

while.end:                                        ; preds = %while.cond20
  %50 = load i64, ptr %pos, align 8
  %51 = load ptr, ptr %p.addr, align 8
  %firstoc36 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %51, i32 0, i32 7
  %52 = load i64, ptr %firstoc36, align 8
  %add37 = add nsw i64 %50, %52
  store i64 %add37, ptr %end, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %53 = load i64, ptr %linpos, align 8
  %54 = load ptr, ptr %p.addr, align 8
  %n38 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %n38, align 8
  %conv39 = sext i32 %55 to i64
  %cmp40 = icmp slt i64 %53, %conv39
  br i1 %cmp40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %56 = load ptr, ptr %p.addr, align 8
  %octave42 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %56, i32 0, i32 5
  %57 = load ptr, ptr %octave42, align 8
  %58 = load i64, ptr %linpos, align 8
  %arrayidx43 = getelementptr inbounds i64, ptr %57, i64 %58
  %59 = load i64, ptr %arrayidx43, align 8
  %60 = load i64, ptr %end, align 8
  %cmp44 = icmp sle i64 %59, %60
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %61 = phi i1 [ false, %for.cond ], [ %cmp44, %land.rhs ]
  br i1 %61, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %62 = load ptr, ptr %flr.addr, align 8
  %63 = load i64, ptr %linpos, align 8
  %arrayidx46 = getelementptr inbounds float, ptr %62, i64 %63
  %64 = load float, ptr %arrayidx46, align 4
  %65 = load float, ptr %minV, align 4
  %cmp47 = fcmp olt float %64, %65
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body
  %66 = load float, ptr %minV, align 4
  %67 = load ptr, ptr %flr.addr, align 8
  %68 = load i64, ptr %linpos, align 8
  %arrayidx50 = getelementptr inbounds float, ptr %67, i64 %68
  store float %66, ptr %arrayidx50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end51
  %69 = load i64, ptr %linpos, align 8
  %inc52 = add nsw i64 %69, 1
  store i64 %inc52, ptr %linpos, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.end
  br label %while.cond, !llvm.loop !9

while.end53:                                      ; preds = %while.cond
  %70 = load ptr, ptr %seed.addr, align 8
  %71 = load ptr, ptr %p.addr, align 8
  %total_octave_lines55 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %71, i32 0, i32 10
  %72 = load i32, ptr %total_octave_lines55, align 4
  %sub56 = sub nsw i32 %72, 1
  %idxprom = sext i32 %sub56 to i64
  %arrayidx57 = getelementptr inbounds float, ptr %70, i64 %idxprom
  %73 = load float, ptr %arrayidx57, align 4
  store float %73, ptr %minV54, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc70, %while.end53
  %74 = load i64, ptr %linpos, align 8
  %75 = load ptr, ptr %p.addr, align 8
  %n59 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %75, i32 0, i32 0
  %76 = load i32, ptr %n59, align 8
  %conv60 = sext i32 %76 to i64
  %cmp61 = icmp slt i64 %74, %conv60
  br i1 %cmp61, label %for.body63, label %for.end72

for.body63:                                       ; preds = %for.cond58
  %77 = load ptr, ptr %flr.addr, align 8
  %78 = load i64, ptr %linpos, align 8
  %arrayidx64 = getelementptr inbounds float, ptr %77, i64 %78
  %79 = load float, ptr %arrayidx64, align 4
  %80 = load float, ptr %minV54, align 4
  %cmp65 = fcmp olt float %79, %80
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.body63
  %81 = load float, ptr %minV54, align 4
  %82 = load ptr, ptr %flr.addr, align 8
  %83 = load i64, ptr %linpos, align 8
  %arrayidx68 = getelementptr inbounds float, ptr %82, i64 %83
  store float %81, ptr %arrayidx68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.body63
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %84 = load i64, ptr %linpos, align 8
  %inc71 = add nsw i64 %84, 1
  store i64 %inc71, ptr %linpos, align 8
  br label %for.cond58, !llvm.loop !10

for.end72:                                        ; preds = %for.cond58
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @seed_chase(ptr noundef, i32 noundef, i64 noundef) #0

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
