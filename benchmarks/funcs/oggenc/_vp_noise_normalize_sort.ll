; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_psy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i64 }
%struct.vorbis_info_psy = type { i32, float, float, [3 x float], float, float, float, [17 x float], i32, float, float, float, i32, i32, i32, [3 x [17 x float]], [40 x float], float, i32, i32, i32, i32, double }

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @apsort(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @_vp_noise_normalize_sort(ptr noundef %p, ptr noundef %magnitudes, ptr noundef %sortedindex) #1 {
entry:
  %p.addr = alloca ptr, align 8
  %magnitudes.addr = alloca ptr, align 8
  %sortedindex.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %vi = alloca ptr, align 8
  %partition = alloca i32, align 4
  %work = alloca ptr, align 8
  %start = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %magnitudes, ptr %magnitudes.addr, align 8
  store ptr %sortedindex, ptr %sortedindex.addr, align 8
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
  %6 = load i32, ptr %partition, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 8, %conv
  %7 = alloca i8, i64 %mul, align 16
  store ptr %7, ptr %work, align 8
  %8 = load ptr, ptr %vi, align 8
  %normal_start = getelementptr inbounds nuw %struct.vorbis_info_psy, ptr %8, i32 0, i32 20
  %9 = load i32, ptr %normal_start, align 4
  store i32 %9, ptr %start, align 4
  %10 = load i32, ptr %start, align 4
  store i32 %10, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %11 = load i32, ptr %j, align 4
  %12 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %j, align 4
  %14 = load i32, ptr %partition, align 4
  %add = add nsw i32 %13, %14
  %15 = load i32, ptr %n, align 4
  %cmp4 = icmp sgt i32 %add, %15
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i32, ptr %n, align 4
  %17 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %16, %17
  store i32 %sub, ptr %partition, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %partition, align 4
  %cmp7 = icmp slt i32 %18, %19
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond6
  %20 = load ptr, ptr %magnitudes.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds float, ptr %20, i64 %idx.ext
  %22 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %22 to i64
  %add.ptr11 = getelementptr inbounds float, ptr %add.ptr, i64 %idx.ext10
  %23 = load ptr, ptr %work, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %23, i64 %idxprom
  store ptr %add.ptr11, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond6, !llvm.loop !6

for.end:                                          ; preds = %for.cond6
  %26 = load ptr, ptr %work, align 8
  %27 = load i32, ptr %partition, align 4
  %conv12 = sext i32 %27 to i64
  call void @qsort(ptr noundef %26, i64 noundef %conv12, i64 noundef 8, ptr noundef @apsort)
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc24, %for.end
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %partition, align 4
  %cmp14 = icmp slt i32 %28, %29
  br i1 %cmp14, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond13
  %30 = load ptr, ptr %work, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %31 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %30, i64 %idxprom17
  %32 = load ptr, ptr %arrayidx18, align 8
  %33 = load ptr, ptr %magnitudes.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv19 = trunc i64 %sub.ptr.div to i32
  %34 = load ptr, ptr %sortedindex.addr, align 8
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %j, align 4
  %add20 = add nsw i32 %35, %36
  %37 = load i32, ptr %start, align 4
  %sub21 = sub nsw i32 %add20, %37
  %idxprom22 = sext i32 %sub21 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %34, i64 %idxprom22
  store i32 %conv19, ptr %arrayidx23, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %38 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %38, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond13, !llvm.loop !8

for.end26:                                        ; preds = %for.cond13
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %39 = load i32, ptr %partition, align 4
  %40 = load i32, ptr %j, align 4
  %add28 = add nsw i32 %40, %39
  store i32 %add28, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end29:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
