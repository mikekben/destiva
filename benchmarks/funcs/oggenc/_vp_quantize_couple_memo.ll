; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_mapping0 = type { i32, [256 x i32], [16 x i32], [16 x i32], i32, [256 x i32], [256 x i32] }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @_vp_quantize_couple_memo(ptr noundef %vb, ptr noundef %g, ptr noundef %p, ptr noundef %vi, ptr noundef %mdct) #0 {
entry:
  %vb.addr = alloca ptr, align 8
  %g.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %mdct.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca ptr, align 8
  %limit = alloca i32, align 4
  %mdctM = alloca ptr, align 8
  %mdctA = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %g, ptr %g.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %mdct, ptr %mdct.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  %2 = load ptr, ptr %vb.addr, align 8
  %3 = load ptr, ptr %vi.addr, align 8
  %coupling_steps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %coupling_steps, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call = call ptr @_vorbis_block_alloc(ptr noundef %2, i64 noundef %mul)
  store ptr %call, ptr %ret, align 8
  %5 = load ptr, ptr %g.addr, align 8
  %coupling_pointlimit = getelementptr inbounds nuw %struct.vorbis_info_psy_global, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %p.addr, align 8
  %vi2 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %vi2, align 8
  %blockflag = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %blockflag, align 8
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [2 x [15 x i32]], ptr %coupling_pointlimit, i64 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [15 x i32], ptr %arrayidx, i64 0, i64 7
  %9 = load i32, ptr %arrayidx3, align 4
  store i32 %9, ptr %limit, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %vi.addr, align 8
  %coupling_steps4 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %coupling_steps4, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %mdct.addr, align 8
  %14 = load ptr, ptr %vi.addr, align 8
  %coupling_mag = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr %coupling_mag, i64 0, i64 %idxprom6
  %16 = load i32, ptr %arrayidx7, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %13, i64 %idxprom8
  %17 = load ptr, ptr %arrayidx9, align 8
  store ptr %17, ptr %mdctM, align 8
  %18 = load ptr, ptr %mdct.addr, align 8
  %19 = load ptr, ptr %vi.addr, align 8
  %coupling_ang = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds [256 x i32], ptr %coupling_ang, i64 0, i64 %idxprom10
  %21 = load i32, ptr %arrayidx11, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %18, i64 %idxprom12
  %22 = load ptr, ptr %arrayidx13, align 8
  store ptr %22, ptr %mdctA, align 8
  %23 = load ptr, ptr %vb.addr, align 8
  %24 = load i32, ptr %n, align 4
  %conv14 = sext i32 %24 to i64
  %mul15 = mul i64 %conv14, 4
  %call16 = call ptr @_vorbis_block_alloc(ptr noundef %23, i64 noundef %mul15)
  %25 = load ptr, ptr %ret, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %25, i64 %idxprom17
  store ptr %call16, ptr %arrayidx18, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %for.body
  %27 = load i32, ptr %j, align 4
  %28 = load i32, ptr %limit, align 4
  %cmp20 = icmp slt i32 %27, %28
  br i1 %cmp20, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.cond19
  %29 = load ptr, ptr %mdctM, align 8
  %30 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %29, i64 %idxprom23
  %31 = load float, ptr %arrayidx24, align 4
  %32 = load ptr, ptr %mdctA, align 8
  %33 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %32, i64 %idxprom25
  %34 = load float, ptr %arrayidx26, align 4
  %call27 = call float @dipole_hypot(float noundef %31, float noundef %34)
  %35 = load ptr, ptr %ret, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %35, i64 %idxprom28
  %37 = load ptr, ptr %arrayidx29, align 8
  %38 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %38 to i64
  %arrayidx31 = getelementptr inbounds float, ptr %37, i64 %idxprom30
  store float %call27, ptr %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %39 = load i32, ptr %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond19, !llvm.loop !6

for.end:                                          ; preds = %for.cond19
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc45, %for.end
  %40 = load i32, ptr %j, align 4
  %41 = load i32, ptr %n, align 4
  %cmp33 = icmp slt i32 %40, %41
  br i1 %cmp33, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond32
  %42 = load ptr, ptr %mdctM, align 8
  %43 = load i32, ptr %j, align 4
  %idxprom36 = sext i32 %43 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %42, i64 %idxprom36
  %44 = load float, ptr %arrayidx37, align 4
  %45 = load ptr, ptr %mdctA, align 8
  %46 = load i32, ptr %j, align 4
  %idxprom38 = sext i32 %46 to i64
  %arrayidx39 = getelementptr inbounds float, ptr %45, i64 %idxprom38
  %47 = load float, ptr %arrayidx39, align 4
  %call40 = call float @round_hypot(float noundef %44, float noundef %47)
  %48 = load ptr, ptr %ret, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %49 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %48, i64 %idxprom41
  %50 = load ptr, ptr %arrayidx42, align 8
  %51 = load i32, ptr %j, align 4
  %idxprom43 = sext i32 %51 to i64
  %arrayidx44 = getelementptr inbounds float, ptr %50, i64 %idxprom43
  store float %call40, ptr %arrayidx44, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %for.body35
  %52 = load i32, ptr %j, align 4
  %inc46 = add nsw i32 %52, 1
  store i32 %inc46, ptr %j, align 4
  br label %for.cond32, !llvm.loop !8

for.end47:                                        ; preds = %for.cond32
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %53 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %53, 1
  store i32 %inc49, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end50:                                        ; preds = %for.cond
  %54 = load ptr, ptr %ret, align 8
  ret ptr %54
}

; Function Attrs: nounwind uwtable
declare hidden float @dipole_hypot(float noundef, float noundef) #0

; Function Attrs: nounwind uwtable
declare hidden float @round_hypot(float noundef, float noundef) #0

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
