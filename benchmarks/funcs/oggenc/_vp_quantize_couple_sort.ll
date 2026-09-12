; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }
%struct.vorbis_info_mapping0 = type { i32, [256 x i32], [16 x i32], [16 x i32], i32, [256 x i32], [256 x i32] }

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #0

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @_vp_quantize_couple_sort(ptr noundef %vb, ptr noundef %p, ptr noundef %vi, ptr noundef %mags) #0 {
entry:
  %retval = alloca ptr, align 8
  %vb.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %mags.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca ptr, align 8
  %partition = alloca i32, align 4
  %work = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %mags, ptr %mags.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  %normal_point_p = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %1, i32 0, i32 19
  %2 = load i32, ptr %normal_point_p, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %n2 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %n2, align 8
  store i32 %4, ptr %n, align 4
  %5 = load ptr, ptr %vb.addr, align 8
  %6 = load ptr, ptr %vi.addr, align 8
  %coupling_steps = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %coupling_steps, align 4
  %conv = sext i32 %7 to i64
  %mul = mul i64 %conv, 8
  %call = call ptr @_vorbis_block_alloc(ptr noundef %5, i64 noundef %mul)
  store ptr %call, ptr %ret, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %vi3 = getelementptr inbounds nuw %struct.vorbis_look_psy, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %vi3, align 8
  %normal_partition = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %9, i32 0, i32 21
  %10 = load i32, ptr %normal_partition, align 8
  store i32 %10, ptr %partition, align 4
  %11 = load i32, ptr %partition, align 4
  %conv4 = sext i32 %11 to i64
  %mul5 = mul i64 8, %conv4
  %12 = alloca i8, i64 %mul5, align 16
  store ptr %12, ptr %work, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %if.then
  %13 = load i32, ptr %i, align 4
  %14 = load ptr, ptr %vi.addr, align 8
  %coupling_steps6 = getelementptr inbounds nuw %struct.vorbis_info_mapping0, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %coupling_steps6, align 4
  %cmp = icmp slt i32 %13, %15
  br i1 %cmp, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %vb.addr, align 8
  %17 = load i32, ptr %n, align 4
  %conv8 = sext i32 %17 to i64
  %mul9 = mul i64 %conv8, 4
  %call10 = call ptr @_vorbis_block_alloc(ptr noundef %16, i64 noundef %mul9)
  %18 = load ptr, ptr %ret, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  store ptr %call10, ptr %arrayidx, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc42, %for.body
  %20 = load i32, ptr %j, align 4
  %21 = load i32, ptr %n, align 4
  %cmp12 = icmp slt i32 %20, %21
  br i1 %cmp12, label %for.body14, label %for.end44

for.body14:                                       ; preds = %for.cond11
  store i32 0, ptr %k, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body14
  %22 = load i32, ptr %k, align 4
  %23 = load i32, ptr %partition, align 4
  %cmp16 = icmp slt i32 %22, %23
  br i1 %cmp16, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond15
  %24 = load ptr, ptr %mags.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %25 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %24, i64 %idxprom19
  %26 = load ptr, ptr %arrayidx20, align 8
  %27 = load i32, ptr %k, align 4
  %idx.ext = sext i32 %27 to i64
  %add.ptr = getelementptr inbounds float, ptr %26, i64 %idx.ext
  %28 = load i32, ptr %j, align 4
  %idx.ext21 = sext i32 %28 to i64
  %add.ptr22 = getelementptr inbounds float, ptr %add.ptr, i64 %idx.ext21
  %29 = load ptr, ptr %work, align 8
  %30 = load i32, ptr %k, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %29, i64 %idxprom23
  store ptr %add.ptr22, ptr %arrayidx24, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body18
  %31 = load i32, ptr %k, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond15, !llvm.loop !6

for.end:                                          ; preds = %for.cond15
  %32 = load ptr, ptr %work, align 8
  %33 = load i32, ptr %partition, align 4
  %conv25 = sext i32 %33 to i64
  call void @qsort(ptr noundef %32, i64 noundef %conv25, i64 noundef 8, ptr noundef @apsort)
  store i32 0, ptr %k, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc39, %for.end
  %34 = load i32, ptr %k, align 4
  %35 = load i32, ptr %partition, align 4
  %cmp27 = icmp slt i32 %34, %35
  br i1 %cmp27, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond26
  %36 = load ptr, ptr %work, align 8
  %37 = load i32, ptr %k, align 4
  %idxprom30 = sext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %36, i64 %idxprom30
  %38 = load ptr, ptr %arrayidx31, align 8
  %39 = load ptr, ptr %mags.addr, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %40 to i64
  %arrayidx33 = getelementptr inbounds ptr, ptr %39, i64 %idxprom32
  %41 = load ptr, ptr %arrayidx33, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv34 = trunc i64 %sub.ptr.div to i32
  %42 = load ptr, ptr %ret, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds ptr, ptr %42, i64 %idxprom35
  %44 = load ptr, ptr %arrayidx36, align 8
  %45 = load i32, ptr %k, align 4
  %46 = load i32, ptr %j, align 4
  %add = add nsw i32 %45, %46
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %44, i64 %idxprom37
  store i32 %conv34, ptr %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.body29
  %47 = load i32, ptr %k, align 4
  %inc40 = add nsw i32 %47, 1
  store i32 %inc40, ptr %k, align 4
  br label %for.cond26, !llvm.loop !8

for.end41:                                        ; preds = %for.cond26
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %48 = load i32, ptr %partition, align 4
  %49 = load i32, ptr %j, align 4
  %add43 = add nsw i32 %49, %48
  store i32 %add43, ptr %j, align 4
  br label %for.cond11, !llvm.loop !9

for.end44:                                        ; preds = %for.cond11
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %50 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %50, 1
  store i32 %inc46, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end47:                                        ; preds = %for.cond
  %51 = load ptr, ptr %ret, align 8
  store ptr %51, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %for.end47
  %52 = load ptr, ptr %retval, align 8
  ret ptr %52
}

; Function Attrs: nounwind uwtable
declare hidden i32 @apsort(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
