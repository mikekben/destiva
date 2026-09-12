; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

; Function Attrs: nounwind uwtable
define dso_local void @_vp_offset_and_mix(ptr noundef %p, ptr noundef %noise, ptr noundef %tone, i32 noundef %offset_select, ptr noundef %logmask) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %noise.addr = alloca ptr, align 8
  %tone.addr = alloca ptr, align 8
  %offset_select.addr = alloca i32, align 4
  %logmask.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %toneatt = alloca float, align 4
  %val = alloca float, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %noise, ptr %noise.addr, align 8
  store ptr %tone, ptr %tone.addr, align 8
  store i32 %offset_select, ptr %offset_select.addr, align 4
  store ptr %logmask, ptr %logmask.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %vi, align 8
  %tone_masteratt = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %offset_select.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x float], ptr %tone_masteratt, i64 0, i64 %idxprom
  %5 = load float, ptr %arrayidx, align 4
  store float %5, ptr %toneatt, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %noise.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds float, ptr %8, i64 %idxprom2
  %10 = load float, ptr %arrayidx3, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %noiseoffset = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %noiseoffset, align 8
  %13 = load i32, ptr %offset_select.addr, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds ptr, ptr %12, i64 %idxprom4
  %14 = load ptr, ptr %arrayidx5, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %14, i64 %idxprom6
  %16 = load float, ptr %arrayidx7, align 4
  %add = fadd float %10, %16
  store float %add, ptr %val, align 4
  %17 = load float, ptr %val, align 4
  %18 = load ptr, ptr %p.addr, align 8
  %vi8 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %vi8, align 8
  %noisemaxsupp = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %19, i32 0, i32 9
  %20 = load float, ptr %noisemaxsupp, align 4
  %cmp9 = fcmp ogt float %17, %20
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load ptr, ptr %p.addr, align 8
  %vi10 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %vi10, align 8
  %noisemaxsupp11 = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %22, i32 0, i32 9
  %23 = load float, ptr %noisemaxsupp11, align 4
  store float %23, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %24 = load float, ptr %val, align 4
  %25 = load ptr, ptr %tone.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %26 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %25, i64 %idxprom12
  %27 = load float, ptr %arrayidx13, align 4
  %28 = load float, ptr %toneatt, align 4
  %add14 = fadd float %27, %28
  %cmp15 = fcmp olt float %24, %add14
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %29 = load ptr, ptr %tone.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds float, ptr %29, i64 %idxprom16
  %31 = load float, ptr %arrayidx17, align 4
  %32 = load float, ptr %toneatt, align 4
  %add18 = fadd float %31, %32
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %33 = load float, ptr %val, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %add18, %cond.true ], [ %33, %cond.false ]
  %34 = load ptr, ptr %logmask.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %35 to i64
  %arrayidx20 = getelementptr inbounds float, ptr %34, i64 %idxprom19
  store float %cond, ptr %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %36 = load i32, ptr %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
