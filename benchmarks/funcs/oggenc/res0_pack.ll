; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info_residue0 = type { i64, i64, i32, i32, i32, [64 x i32], [256 x i32], [64 x float], [64 x float] }

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog(i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @res0_pack(ptr noundef %vr, ptr noundef %opb) #0 {
entry:
  %vr.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %j = alloca i32, align 4
  %acc = alloca i32, align 4
  store ptr %vr, ptr %vr.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %0 = load ptr, ptr %vr.addr, align 8
  store ptr %0, ptr %info, align 8
  store i32 0, ptr %acc, align 4
  %1 = load ptr, ptr %opb.addr, align 8
  %2 = load ptr, ptr %info, align 8
  %begin = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %begin, align 8
  call void @oggpack_write(ptr noundef %1, i64 noundef %3, i32 noundef 24)
  %4 = load ptr, ptr %opb.addr, align 8
  %5 = load ptr, ptr %info, align 8
  %end = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %end, align 8
  call void @oggpack_write(ptr noundef %4, i64 noundef %6, i32 noundef 24)
  %7 = load ptr, ptr %opb.addr, align 8
  %8 = load ptr, ptr %info, align 8
  %grouping = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %grouping, align 8
  %sub = sub nsw i32 %9, 1
  %conv = sext i32 %sub to i64
  call void @oggpack_write(ptr noundef %7, i64 noundef %conv, i32 noundef 24)
  %10 = load ptr, ptr %opb.addr, align 8
  %11 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %partitions, align 4
  %sub1 = sub nsw i32 %12, 1
  %conv2 = sext i32 %sub1 to i64
  call void @oggpack_write(ptr noundef %10, i64 noundef %conv2, i32 noundef 6)
  %13 = load ptr, ptr %opb.addr, align 8
  %14 = load ptr, ptr %info, align 8
  %groupbook = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %groupbook, align 8
  %conv3 = sext i32 %15 to i64
  call void @oggpack_write(ptr noundef %13, i64 noundef %conv3, i32 noundef 8)
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, ptr %j, align 4
  %17 = load ptr, ptr %info, align 8
  %partitions4 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %partitions4, align 4
  %cmp = icmp slt i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %info, align 8
  %secondstages = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %j, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [64 x i32], ptr %secondstages, i64 0, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4
  %call = call i32 @ilog(i32 noundef %21)
  %cmp6 = icmp sgt i32 %call, 3
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %22 = load ptr, ptr %opb.addr, align 8
  %23 = load ptr, ptr %info, align 8
  %secondstages8 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %24 to i64
  %arrayidx10 = getelementptr inbounds [64 x i32], ptr %secondstages8, i64 0, i64 %idxprom9
  %25 = load i32, ptr %arrayidx10, align 4
  %conv11 = sext i32 %25 to i64
  call void @oggpack_write(ptr noundef %22, i64 noundef %conv11, i32 noundef 3)
  %26 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %26, i64 noundef 1, i32 noundef 1)
  %27 = load ptr, ptr %opb.addr, align 8
  %28 = load ptr, ptr %info, align 8
  %secondstages12 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %28, i32 0, i32 5
  %29 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %29 to i64
  %arrayidx14 = getelementptr inbounds [64 x i32], ptr %secondstages12, i64 0, i64 %idxprom13
  %30 = load i32, ptr %arrayidx14, align 4
  %shr = ashr i32 %30, 3
  %conv15 = sext i32 %shr to i64
  call void @oggpack_write(ptr noundef %27, i64 noundef %conv15, i32 noundef 5)
  br label %if.end

if.else:                                          ; preds = %for.body
  %31 = load ptr, ptr %opb.addr, align 8
  %32 = load ptr, ptr %info, align 8
  %secondstages16 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %j, align 4
  %idxprom17 = sext i32 %33 to i64
  %arrayidx18 = getelementptr inbounds [64 x i32], ptr %secondstages16, i64 0, i64 %idxprom17
  %34 = load i32, ptr %arrayidx18, align 4
  %conv19 = sext i32 %34 to i64
  call void @oggpack_write(ptr noundef %31, i64 noundef %conv19, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %35 = load ptr, ptr %info, align 8
  %secondstages20 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %35, i32 0, i32 5
  %36 = load i32, ptr %j, align 4
  %idxprom21 = sext i32 %36 to i64
  %arrayidx22 = getelementptr inbounds [64 x i32], ptr %secondstages20, i64 0, i64 %idxprom21
  %37 = load i32, ptr %arrayidx22, align 4
  %call23 = call i32 @icount(i32 noundef %37)
  %38 = load i32, ptr %acc, align 4
  %add = add nsw i32 %38, %call23
  store i32 %add, ptr %acc, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, ptr %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc31, %for.end
  %40 = load i32, ptr %j, align 4
  %41 = load i32, ptr %acc, align 4
  %cmp25 = icmp slt i32 %40, %41
  br i1 %cmp25, label %for.body27, label %for.end33

for.body27:                                       ; preds = %for.cond24
  %42 = load ptr, ptr %opb.addr, align 8
  %43 = load ptr, ptr %info, align 8
  %booklist = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %43, i32 0, i32 6
  %44 = load i32, ptr %j, align 4
  %idxprom28 = sext i32 %44 to i64
  %arrayidx29 = getelementptr inbounds [256 x i32], ptr %booklist, i64 0, i64 %idxprom28
  %45 = load i32, ptr %arrayidx29, align 4
  %conv30 = sext i32 %45 to i64
  call void @oggpack_write(ptr noundef %42, i64 noundef %conv30, i32 noundef 8)
  br label %for.inc31

for.inc31:                                        ; preds = %for.body27
  %46 = load i32, ptr %j, align 4
  %inc32 = add nsw i32 %46, 1
  store i32 %inc32, ptr %j, align 4
  br label %for.cond24, !llvm.loop !8

for.end33:                                        ; preds = %for.cond24
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @icount(i32 noundef) #0

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
