; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info_residue0 = type { i64, i64, i32, i32, i32, [64 x i32], [256 x i32], [64 x float], [64 x float] }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @res0_free_info(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @icount(i32 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @res0_unpack(ptr noundef %vi, ptr noundef %opb) #1 {
entry:
  %retval = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %acc = alloca i32, align 4
  %info = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %cascade = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  store i32 0, ptr %acc, align 4
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 1824) #2
  store ptr %call, ptr %info, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %0, i32 0, i32 7
  %1 = load ptr, ptr %codec_setup, align 8
  store ptr %1, ptr %ci, align 8
  %2 = load ptr, ptr %opb.addr, align 8
  %call1 = call i64 @oggpack_read(ptr noundef %2, i32 noundef 24)
  %3 = load ptr, ptr %info, align 8
  %begin = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %3, i32 0, i32 0
  store i64 %call1, ptr %begin, align 8
  %4 = load ptr, ptr %opb.addr, align 8
  %call2 = call i64 @oggpack_read(ptr noundef %4, i32 noundef 24)
  %5 = load ptr, ptr %info, align 8
  %end = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %5, i32 0, i32 1
  store i64 %call2, ptr %end, align 8
  %6 = load ptr, ptr %opb.addr, align 8
  %call3 = call i64 @oggpack_read(ptr noundef %6, i32 noundef 24)
  %add = add nsw i64 %call3, 1
  %conv = trunc i64 %add to i32
  %7 = load ptr, ptr %info, align 8
  %grouping = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %7, i32 0, i32 2
  store i32 %conv, ptr %grouping, align 8
  %8 = load ptr, ptr %opb.addr, align 8
  %call4 = call i64 @oggpack_read(ptr noundef %8, i32 noundef 6)
  %add5 = add nsw i64 %call4, 1
  %conv6 = trunc i64 %add5 to i32
  %9 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %9, i32 0, i32 3
  store i32 %conv6, ptr %partitions, align 4
  %10 = load ptr, ptr %opb.addr, align 8
  %call7 = call i64 @oggpack_read(ptr noundef %10, i32 noundef 8)
  %conv8 = trunc i64 %call7 to i32
  %11 = load ptr, ptr %info, align 8
  %groupbook = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %11, i32 0, i32 4
  store i32 %conv8, ptr %groupbook, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, ptr %j, align 4
  %13 = load ptr, ptr %info, align 8
  %partitions9 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %partitions9, align 4
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %opb.addr, align 8
  %call11 = call i64 @oggpack_read(ptr noundef %15, i32 noundef 3)
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, ptr %cascade, align 4
  %16 = load ptr, ptr %opb.addr, align 8
  %call13 = call i64 @oggpack_read(ptr noundef %16, i32 noundef 1)
  %tobool = icmp ne i64 %call13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load ptr, ptr %opb.addr, align 8
  %call14 = call i64 @oggpack_read(ptr noundef %17, i32 noundef 5)
  %shl = shl i64 %call14, 3
  %18 = load i32, ptr %cascade, align 4
  %conv15 = sext i32 %18 to i64
  %or = or i64 %conv15, %shl
  %conv16 = trunc i64 %or to i32
  store i32 %conv16, ptr %cascade, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load i32, ptr %cascade, align 4
  %20 = load ptr, ptr %info, align 8
  %secondstages = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %j, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [64 x i32], ptr %secondstages, i64 0, i64 %idxprom
  store i32 %19, ptr %arrayidx, align 4
  %22 = load i32, ptr %cascade, align 4
  %call17 = call i32 @icount(i32 noundef %22)
  %23 = load i32, ptr %acc, align 4
  %add18 = add nsw i32 %23, %call17
  store i32 %add18, ptr %acc, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, ptr %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc27, %for.end
  %25 = load i32, ptr %j, align 4
  %26 = load i32, ptr %acc, align 4
  %cmp20 = icmp slt i32 %25, %26
  br i1 %cmp20, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond19
  %27 = load ptr, ptr %opb.addr, align 8
  %call23 = call i64 @oggpack_read(ptr noundef %27, i32 noundef 8)
  %conv24 = trunc i64 %call23 to i32
  %28 = load ptr, ptr %info, align 8
  %booklist = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %28, i32 0, i32 6
  %29 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [256 x i32], ptr %booklist, i64 0, i64 %idxprom25
  store i32 %conv24, ptr %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %30 = load i32, ptr %j, align 4
  %inc28 = add nsw i32 %30, 1
  store i32 %inc28, ptr %j, align 4
  br label %for.cond19, !llvm.loop !8

for.end29:                                        ; preds = %for.cond19
  %31 = load ptr, ptr %info, align 8
  %groupbook30 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %31, i32 0, i32 4
  %32 = load i32, ptr %groupbook30, align 8
  %33 = load ptr, ptr %ci, align 8
  %books = getelementptr inbounds nuw %struct.codec_setup_info, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %books, align 8
  %cmp31 = icmp sge i32 %32, %34
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.end29
  br label %errout

if.end34:                                         ; preds = %for.end29
  store i32 0, ptr %j, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc47, %if.end34
  %35 = load i32, ptr %j, align 4
  %36 = load i32, ptr %acc, align 4
  %cmp36 = icmp slt i32 %35, %36
  br i1 %cmp36, label %for.body38, label %for.end49

for.body38:                                       ; preds = %for.cond35
  %37 = load ptr, ptr %info, align 8
  %booklist39 = getelementptr inbounds nuw %struct.vorbis_info_residue0, ptr %37, i32 0, i32 6
  %38 = load i32, ptr %j, align 4
  %idxprom40 = sext i32 %38 to i64
  %arrayidx41 = getelementptr inbounds [256 x i32], ptr %booklist39, i64 0, i64 %idxprom40
  %39 = load i32, ptr %arrayidx41, align 4
  %40 = load ptr, ptr %ci, align 8
  %books42 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %40, i32 0, i32 5
  %41 = load i32, ptr %books42, align 8
  %cmp43 = icmp sge i32 %39, %41
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.body38
  br label %errout

if.end46:                                         ; preds = %for.body38
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %42 = load i32, ptr %j, align 4
  %inc48 = add nsw i32 %42, 1
  store i32 %inc48, ptr %j, align 4
  br label %for.cond35, !llvm.loop !9

for.end49:                                        ; preds = %for.cond35
  %43 = load ptr, ptr %info, align 8
  store ptr %43, ptr %retval, align 8
  br label %return

errout:                                           ; preds = %if.then45, %if.then33
  %44 = load ptr, ptr %info, align 8
  call void @res0_free_info(ptr noundef %44)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %errout, %for.end49
  %45 = load ptr, ptr %retval, align 8
  ret ptr %45
}

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

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
