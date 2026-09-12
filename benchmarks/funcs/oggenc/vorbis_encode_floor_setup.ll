; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }
%struct.codec_setup_info = type { [2 x i64], i32, i32, i32, i32, i32, i32, [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [64 x i32], [64 x ptr], [256 x ptr], ptr, [4 x ptr], %struct.vorbis_info_psy_global, %struct.bitrate_manager_info, %struct.highlevel_encode_setup, i32 }
%struct.vorbis_info_psy_global = type { i32, [7 x float], [7 x float], float, float, float, [15 x i32], [2 x [15 x i32]], [15 x i32], [15 x i32], [2 x [15 x i32]] }
%struct.bitrate_manager_info = type { double, double, double, double, double, double, double, double, double }
%struct.highlevel_encode_setup = type { ptr, i32, double, double, double, double, i32, i64, i64, i64, i64, double, double, double, i32, i32, double, double, double, double, double, double, [4 x %struct.highlevel_byblocktype] }
%struct.highlevel_byblocktype = type { double, double, double, double }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @vorbis_encode_floor_setup(ptr noundef %vi, double noundef %s, i32 noundef %block, ptr noundef %books, ptr noundef %in, ptr noundef %x) #2 {
entry:
  %vi.addr = alloca ptr, align 8
  %s.addr = alloca double, align 8
  %block.addr = alloca i32, align 4
  %books.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %is = alloca i32, align 4
  %f = alloca ptr, align 8
  %ci = alloca ptr, align 8
  %partitions = alloca i32, align 4
  %maxclass = alloca i32, align 4
  %maxbook = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store double %s, ptr %s.addr, align 8
  store i32 %block, ptr %block.addr, align 4
  store ptr %books, ptr %books.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load double, ptr %s.addr, align 8
  %conv = fptosi double %0 to i32
  store i32 %conv, ptr %is, align 4
  %call = call noalias ptr @calloc(i64 noundef 1, i64 noundef 1120) #3
  store ptr %call, ptr %f, align 8
  %1 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %codec_setup, align 8
  store ptr %2, ptr %ci, align 8
  %3 = load ptr, ptr %f, align 8
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load ptr, ptr %x.addr, align 8
  %6 = load i32, ptr %is, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.vorbis_info_floor1, ptr %4, i64 %idx.ext
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %add.ptr, i64 1120, i1 false)
  %8 = load ptr, ptr %ci, align 8
  %blocksizes = getelementptr inbounds nuw %struct.codec_setup_info, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %block.addr, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds [2 x i64], ptr %blocksizes, i64 0, i64 %idxprom1
  %10 = load i64, ptr %arrayidx2, align 8
  %shr = ashr i64 %10, 1
  %conv3 = trunc i64 %shr to i32
  %11 = load ptr, ptr %f, align 8
  %n = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %11, i32 0, i32 13
  store i32 %conv3, ptr %n, align 4
  %12 = load ptr, ptr %f, align 8
  %partitions4 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %partitions4, align 4
  store i32 %13, ptr %partitions, align 4
  store i32 -1, ptr %maxclass, align 4
  store i32 -1, ptr %maxbook, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %partitions, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %f, align 8
  %partitionclass = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %arrayidx7 = getelementptr inbounds [31 x i32], ptr %partitionclass, i64 0, i64 %idxprom6
  %18 = load i32, ptr %arrayidx7, align 4
  %19 = load i32, ptr %maxclass, align 4
  %cmp8 = icmp sgt i32 %18, %19
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %20 = load ptr, ptr %f, align 8
  %partitionclass10 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds [31 x i32], ptr %partitionclass10, i64 0, i64 %idxprom11
  %22 = load i32, ptr %arrayidx12, align 4
  store i32 %22, ptr %maxclass, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc68, %for.end
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %maxclass, align 4
  %cmp14 = icmp sle i32 %24, %25
  br i1 %cmp14, label %for.body16, label %for.end70

for.body16:                                       ; preds = %for.cond13
  %26 = load ptr, ptr %f, align 8
  %class_book = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %27 to i64
  %arrayidx18 = getelementptr inbounds [16 x i32], ptr %class_book, i64 0, i64 %idxprom17
  %28 = load i32, ptr %arrayidx18, align 4
  %29 = load i32, ptr %maxbook, align 4
  %cmp19 = icmp sgt i32 %28, %29
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %for.body16
  %30 = load ptr, ptr %f, align 8
  %class_book22 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds [16 x i32], ptr %class_book22, i64 0, i64 %idxprom23
  %32 = load i32, ptr %arrayidx24, align 4
  store i32 %32, ptr %maxbook, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %for.body16
  %33 = load ptr, ptr %ci, align 8
  %books26 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %books26, align 8
  %35 = load ptr, ptr %f, align 8
  %class_book27 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %36 to i64
  %arrayidx29 = getelementptr inbounds [16 x i32], ptr %class_book27, i64 0, i64 %idxprom28
  %37 = load i32, ptr %arrayidx29, align 4
  %add = add nsw i32 %37, %34
  store i32 %add, ptr %arrayidx29, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc65, %if.end25
  %38 = load i32, ptr %k, align 4
  %39 = load ptr, ptr %f, align 8
  %class_subs = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %40 to i64
  %arrayidx32 = getelementptr inbounds [16 x i32], ptr %class_subs, i64 0, i64 %idxprom31
  %41 = load i32, ptr %arrayidx32, align 4
  %shl = shl i32 1, %41
  %cmp33 = icmp slt i32 %38, %shl
  br i1 %cmp33, label %for.body35, label %for.end67

for.body35:                                       ; preds = %for.cond30
  %42 = load ptr, ptr %f, align 8
  %class_subbook = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %42, i32 0, i32 5
  %43 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %43 to i64
  %arrayidx37 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook, i64 0, i64 %idxprom36
  %44 = load i32, ptr %k, align 4
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %45 = load i32, ptr %arrayidx39, align 4
  %46 = load i32, ptr %maxbook, align 4
  %cmp40 = icmp sgt i32 %45, %46
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %for.body35
  %47 = load ptr, ptr %f, align 8
  %class_subbook43 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %48 to i64
  %arrayidx45 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook43, i64 0, i64 %idxprom44
  %49 = load i32, ptr %k, align 4
  %idxprom46 = sext i32 %49 to i64
  %arrayidx47 = getelementptr inbounds [8 x i32], ptr %arrayidx45, i64 0, i64 %idxprom46
  %50 = load i32, ptr %arrayidx47, align 4
  store i32 %50, ptr %maxbook, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %for.body35
  %51 = load ptr, ptr %f, align 8
  %class_subbook49 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %51, i32 0, i32 5
  %52 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %52 to i64
  %arrayidx51 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook49, i64 0, i64 %idxprom50
  %53 = load i32, ptr %k, align 4
  %idxprom52 = sext i32 %53 to i64
  %arrayidx53 = getelementptr inbounds [8 x i32], ptr %arrayidx51, i64 0, i64 %idxprom52
  %54 = load i32, ptr %arrayidx53, align 4
  %cmp54 = icmp sge i32 %54, 0
  br i1 %cmp54, label %if.then56, label %if.end64

if.then56:                                        ; preds = %if.end48
  %55 = load ptr, ptr %ci, align 8
  %books57 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %55, i32 0, i32 5
  %56 = load i32, ptr %books57, align 8
  %57 = load ptr, ptr %f, align 8
  %class_subbook58 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %57, i32 0, i32 5
  %58 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %58 to i64
  %arrayidx60 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook58, i64 0, i64 %idxprom59
  %59 = load i32, ptr %k, align 4
  %idxprom61 = sext i32 %59 to i64
  %arrayidx62 = getelementptr inbounds [8 x i32], ptr %arrayidx60, i64 0, i64 %idxprom61
  %60 = load i32, ptr %arrayidx62, align 4
  %add63 = add nsw i32 %60, %56
  store i32 %add63, ptr %arrayidx62, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then56, %if.end48
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %61 = load i32, ptr %k, align 4
  %inc66 = add nsw i32 %61, 1
  store i32 %inc66, ptr %k, align 4
  br label %for.cond30, !llvm.loop !8

for.end67:                                        ; preds = %for.cond30
  br label %for.inc68

for.inc68:                                        ; preds = %for.end67
  %62 = load i32, ptr %i, align 4
  %inc69 = add nsw i32 %62, 1
  store i32 %inc69, ptr %i, align 4
  br label %for.cond13, !llvm.loop !9

for.end70:                                        ; preds = %for.cond13
  store i32 0, ptr %i, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc85, %for.end70
  %63 = load i32, ptr %i, align 4
  %64 = load i32, ptr %maxbook, align 4
  %cmp72 = icmp sle i32 %63, %64
  br i1 %cmp72, label %for.body74, label %for.end87

for.body74:                                       ; preds = %for.cond71
  %65 = load ptr, ptr %books.addr, align 8
  %66 = load ptr, ptr %x.addr, align 8
  %67 = load i32, ptr %is, align 4
  %idxprom75 = sext i32 %67 to i64
  %arrayidx76 = getelementptr inbounds i32, ptr %66, i64 %idxprom75
  %68 = load i32, ptr %arrayidx76, align 4
  %idxprom77 = sext i32 %68 to i64
  %arrayidx78 = getelementptr inbounds ptr, ptr %65, i64 %idxprom77
  %69 = load ptr, ptr %arrayidx78, align 8
  %70 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %70 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %69, i64 %idxprom79
  %71 = load ptr, ptr %arrayidx80, align 8
  %72 = load ptr, ptr %ci, align 8
  %book_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %72, i32 0, i32 14
  %73 = load ptr, ptr %ci, align 8
  %books81 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %73, i32 0, i32 5
  %74 = load i32, ptr %books81, align 8
  %inc82 = add nsw i32 %74, 1
  store i32 %inc82, ptr %books81, align 8
  %idxprom83 = sext i32 %74 to i64
  %arrayidx84 = getelementptr inbounds [256 x ptr], ptr %book_param, i64 0, i64 %idxprom83
  store ptr %71, ptr %arrayidx84, align 8
  br label %for.inc85

for.inc85:                                        ; preds = %for.body74
  %75 = load i32, ptr %i, align 4
  %inc86 = add nsw i32 %75, 1
  store i32 %inc86, ptr %i, align 4
  br label %for.cond71, !llvm.loop !10

for.end87:                                        ; preds = %for.cond71
  %76 = load ptr, ptr %ci, align 8
  %floor_type = getelementptr inbounds nuw %struct.codec_setup_info, ptr %76, i32 0, i32 10
  %77 = load ptr, ptr %ci, align 8
  %floors = getelementptr inbounds nuw %struct.codec_setup_info, ptr %77, i32 0, i32 3
  %78 = load i32, ptr %floors, align 8
  %idxprom88 = sext i32 %78 to i64
  %arrayidx89 = getelementptr inbounds [64 x i32], ptr %floor_type, i64 0, i64 %idxprom88
  store i32 1, ptr %arrayidx89, align 4
  %79 = load ptr, ptr %f, align 8
  %80 = load ptr, ptr %ci, align 8
  %floor_param = getelementptr inbounds nuw %struct.codec_setup_info, ptr %80, i32 0, i32 11
  %81 = load ptr, ptr %ci, align 8
  %floors90 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %81, i32 0, i32 3
  %82 = load i32, ptr %floors90, align 8
  %idxprom91 = sext i32 %82 to i64
  %arrayidx92 = getelementptr inbounds [64 x ptr], ptr %floor_param, i64 0, i64 %idxprom91
  store ptr %79, ptr %arrayidx92, align 8
  %83 = load ptr, ptr %ci, align 8
  %floors93 = getelementptr inbounds nuw %struct.codec_setup_info, ptr %83, i32 0, i32 3
  %84 = load i32, ptr %floors93, align 8
  %inc94 = add nsw i32 %84, 1
  store i32 %inc94, ptr %floors93, align 8
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) }

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
