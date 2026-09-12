; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info_floor1 = type { i32, [31 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x [8 x i32]], i32, [65 x i32], float, float, float, float, float, i32 }

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @floor1_pack(ptr noundef %i, ptr noundef %opb) #0 {
entry:
  %i.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %count = alloca i32, align 4
  %rangebits = alloca i32, align 4
  %maxposit = alloca i32, align 4
  %maxclass = alloca i32, align 4
  store ptr %i, ptr %i.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  %0 = load ptr, ptr %i.addr, align 8
  store ptr %0, ptr %info, align 8
  store i32 0, ptr %count, align 4
  %1 = load ptr, ptr %info, align 8
  %postlist = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %1, i32 0, i32 7
  %arrayidx = getelementptr inbounds [65 x i32], ptr %postlist, i64 0, i64 1
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %maxposit, align 4
  store i32 -1, ptr %maxclass, align 4
  %3 = load ptr, ptr %opb.addr, align 8
  %4 = load ptr, ptr %info, align 8
  %partitions = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %partitions, align 4
  %conv = sext i32 %5 to i64
  call void @oggpack_write(ptr noundef %3, i64 noundef %conv, i32 noundef 5)
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %j, align 4
  %7 = load ptr, ptr %info, align 8
  %partitions1 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %partitions1, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %opb.addr, align 8
  %10 = load ptr, ptr %info, align 8
  %partitionclass = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %j, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds [31 x i32], ptr %partitionclass, i64 0, i64 %idxprom
  %12 = load i32, ptr %arrayidx3, align 4
  %conv4 = sext i32 %12 to i64
  call void @oggpack_write(ptr noundef %9, i64 noundef %conv4, i32 noundef 4)
  %13 = load i32, ptr %maxclass, align 4
  %14 = load ptr, ptr %info, align 8
  %partitionclass5 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [31 x i32], ptr %partitionclass5, i64 0, i64 %idxprom6
  %16 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp slt i32 %13, %16
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load ptr, ptr %info, align 8
  %partitionclass10 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [31 x i32], ptr %partitionclass10, i64 0, i64 %idxprom11
  %19 = load i32, ptr %arrayidx12, align 4
  store i32 %19, ptr %maxclass, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc47, %for.end
  %21 = load i32, ptr %j, align 4
  %22 = load i32, ptr %maxclass, align 4
  %add = add nsw i32 %22, 1
  %cmp14 = icmp slt i32 %21, %add
  br i1 %cmp14, label %for.body16, label %for.end49

for.body16:                                       ; preds = %for.cond13
  %23 = load ptr, ptr %opb.addr, align 8
  %24 = load ptr, ptr %info, align 8
  %class_dim = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %j, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [16 x i32], ptr %class_dim, i64 0, i64 %idxprom17
  %26 = load i32, ptr %arrayidx18, align 4
  %sub = sub nsw i32 %26, 1
  %conv19 = sext i32 %sub to i64
  call void @oggpack_write(ptr noundef %23, i64 noundef %conv19, i32 noundef 3)
  %27 = load ptr, ptr %opb.addr, align 8
  %28 = load ptr, ptr %info, align 8
  %class_subs = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %29 to i64
  %arrayidx21 = getelementptr inbounds [16 x i32], ptr %class_subs, i64 0, i64 %idxprom20
  %30 = load i32, ptr %arrayidx21, align 4
  %conv22 = sext i32 %30 to i64
  call void @oggpack_write(ptr noundef %27, i64 noundef %conv22, i32 noundef 2)
  %31 = load ptr, ptr %info, align 8
  %class_subs23 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %j, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds [16 x i32], ptr %class_subs23, i64 0, i64 %idxprom24
  %33 = load i32, ptr %arrayidx25, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then26, label %if.end30

if.then26:                                        ; preds = %for.body16
  %34 = load ptr, ptr %opb.addr, align 8
  %35 = load ptr, ptr %info, align 8
  %class_book = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %35, i32 0, i32 4
  %36 = load i32, ptr %j, align 4
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds [16 x i32], ptr %class_book, i64 0, i64 %idxprom27
  %37 = load i32, ptr %arrayidx28, align 4
  %conv29 = sext i32 %37 to i64
  call void @oggpack_write(ptr noundef %34, i64 noundef %conv29, i32 noundef 8)
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %for.body16
  store i32 0, ptr %k, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc44, %if.end30
  %38 = load i32, ptr %k, align 4
  %39 = load ptr, ptr %info, align 8
  %class_subs32 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds [16 x i32], ptr %class_subs32, i64 0, i64 %idxprom33
  %41 = load i32, ptr %arrayidx34, align 4
  %shl = shl i32 1, %41
  %cmp35 = icmp slt i32 %38, %shl
  br i1 %cmp35, label %for.body37, label %for.end46

for.body37:                                       ; preds = %for.cond31
  %42 = load ptr, ptr %opb.addr, align 8
  %43 = load ptr, ptr %info, align 8
  %class_subbook = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %j, align 4
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds [16 x [8 x i32]], ptr %class_subbook, i64 0, i64 %idxprom38
  %45 = load i32, ptr %k, align 4
  %idxprom40 = sext i32 %45 to i64
  %arrayidx41 = getelementptr inbounds [8 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %46 = load i32, ptr %arrayidx41, align 4
  %add42 = add nsw i32 %46, 1
  %conv43 = sext i32 %add42 to i64
  call void @oggpack_write(ptr noundef %42, i64 noundef %conv43, i32 noundef 8)
  br label %for.inc44

for.inc44:                                        ; preds = %for.body37
  %47 = load i32, ptr %k, align 4
  %inc45 = add nsw i32 %47, 1
  store i32 %inc45, ptr %k, align 4
  br label %for.cond31, !llvm.loop !8

for.end46:                                        ; preds = %for.cond31
  br label %for.inc47

for.inc47:                                        ; preds = %for.end46
  %48 = load i32, ptr %j, align 4
  %inc48 = add nsw i32 %48, 1
  store i32 %inc48, ptr %j, align 4
  br label %for.cond13, !llvm.loop !9

for.end49:                                        ; preds = %for.cond13
  %49 = load ptr, ptr %opb.addr, align 8
  %50 = load ptr, ptr %info, align 8
  %mult = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %50, i32 0, i32 6
  %51 = load i32, ptr %mult, align 4
  %sub50 = sub nsw i32 %51, 1
  %conv51 = sext i32 %sub50 to i64
  call void @oggpack_write(ptr noundef %49, i64 noundef %conv51, i32 noundef 2)
  %52 = load ptr, ptr %opb.addr, align 8
  %53 = load i32, ptr %maxposit, align 4
  %call = call i32 @ilog2(i32 noundef %53)
  %conv52 = sext i32 %call to i64
  call void @oggpack_write(ptr noundef %52, i64 noundef %conv52, i32 noundef 4)
  %54 = load i32, ptr %maxposit, align 4
  %call53 = call i32 @ilog2(i32 noundef %54)
  store i32 %call53, ptr %rangebits, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc78, %for.end49
  %55 = load i32, ptr %j, align 4
  %56 = load ptr, ptr %info, align 8
  %partitions55 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %56, i32 0, i32 0
  %57 = load i32, ptr %partitions55, align 4
  %cmp56 = icmp slt i32 %55, %57
  br i1 %cmp56, label %for.body58, label %for.end80

for.body58:                                       ; preds = %for.cond54
  %58 = load ptr, ptr %info, align 8
  %class_dim59 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %58, i32 0, i32 2
  %59 = load ptr, ptr %info, align 8
  %partitionclass60 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %j, align 4
  %idxprom61 = sext i32 %60 to i64
  %arrayidx62 = getelementptr inbounds [31 x i32], ptr %partitionclass60, i64 0, i64 %idxprom61
  %61 = load i32, ptr %arrayidx62, align 4
  %idxprom63 = sext i32 %61 to i64
  %arrayidx64 = getelementptr inbounds [16 x i32], ptr %class_dim59, i64 0, i64 %idxprom63
  %62 = load i32, ptr %arrayidx64, align 4
  %63 = load i32, ptr %count, align 4
  %add65 = add nsw i32 %63, %62
  store i32 %add65, ptr %count, align 4
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc75, %for.body58
  %64 = load i32, ptr %k, align 4
  %65 = load i32, ptr %count, align 4
  %cmp67 = icmp slt i32 %64, %65
  br i1 %cmp67, label %for.body69, label %for.end77

for.body69:                                       ; preds = %for.cond66
  %66 = load ptr, ptr %opb.addr, align 8
  %67 = load ptr, ptr %info, align 8
  %postlist70 = getelementptr inbounds nuw %struct.vorbis_info_floor1, ptr %67, i32 0, i32 7
  %68 = load i32, ptr %k, align 4
  %add71 = add nsw i32 %68, 2
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds [65 x i32], ptr %postlist70, i64 0, i64 %idxprom72
  %69 = load i32, ptr %arrayidx73, align 4
  %conv74 = sext i32 %69 to i64
  %70 = load i32, ptr %rangebits, align 4
  call void @oggpack_write(ptr noundef %66, i64 noundef %conv74, i32 noundef %70)
  br label %for.inc75

for.inc75:                                        ; preds = %for.body69
  %71 = load i32, ptr %k, align 4
  %inc76 = add nsw i32 %71, 1
  store i32 %inc76, ptr %k, align 4
  br label %for.cond66, !llvm.loop !10

for.end77:                                        ; preds = %for.cond66
  br label %for.inc78

for.inc78:                                        ; preds = %for.end77
  %72 = load i32, ptr %j, align 4
  %inc79 = add nsw i32 %72, 1
  store i32 %inc79, ptr %j, align 4
  br label %for.cond54, !llvm.loop !11

for.end80:                                        ; preds = %for.cond54
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ilog2(i32 noundef) #0

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
!11 = distinct !{!11, !7}
