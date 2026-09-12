; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

@vdbeSorterCompareInt.aLen = external hidden constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterCompareInt(ptr noundef %pTask, ptr noundef %pbKey2Cached, ptr noundef %pKey1, i32 noundef %nKey1, ptr noundef %pKey2, i32 noundef %nKey2) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %pbKey2Cached.addr = alloca ptr, align 8
  %pKey1.addr = alloca ptr, align 8
  %nKey1.addr = alloca i32, align 4
  %pKey2.addr = alloca ptr, align 8
  %nKey2.addr = alloca i32, align 4
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %v1 = alloca ptr, align 8
  %v2 = alloca ptr, align 8
  %res = alloca i32, align 4
  %n = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pbKey2Cached, ptr %pbKey2Cached.addr, align 8
  store ptr %pKey1, ptr %pKey1.addr, align 8
  store i32 %nKey1, ptr %nKey1.addr, align 4
  store ptr %pKey2, ptr %pKey2.addr, align 8
  store i32 %nKey2, ptr %nKey2.addr, align 4
  %0 = load ptr, ptr %pKey1.addr, align 8
  store ptr %0, ptr %p1, align 8
  %1 = load ptr, ptr %pKey2.addr, align 8
  store ptr %1, ptr %p2, align 8
  %2 = load ptr, ptr %p1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, ptr %s1, align 4
  %4 = load ptr, ptr %p2, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  store i32 %conv2, ptr %s2, align 4
  %6 = load ptr, ptr %p1, align 8
  %7 = load ptr, ptr %p1, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx3, align 1
  %idxprom = zext i8 %8 to i64
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %6, i64 %idxprom
  store ptr %arrayidx4, ptr %v1, align 8
  %9 = load ptr, ptr %p2, align 8
  %10 = load ptr, ptr %p2, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx5, align 1
  %idxprom6 = zext i8 %11 to i64
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %9, i64 %idxprom6
  store ptr %arrayidx7, ptr %v2, align 8
  %12 = load i32, ptr %s1, align 4
  %13 = load i32, ptr %s2, align 4
  %cmp = icmp eq i32 %12, %13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %14 = load i32, ptr %s1, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [10 x i8], ptr @vdbeSorterCompareInt.aLen, i64 0, i64 %idxprom9
  %15 = load i8, ptr %arrayidx10, align 1
  store i8 %15, ptr %n, align 1
  store i32 0, ptr %res, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i32, ptr %i, align 4
  %17 = load i8, ptr %n, align 1
  %conv11 = zext i8 %17 to i32
  %cmp12 = icmp slt i32 %16, %conv11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %v1, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %18, i64 %idxprom14
  %20 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %20 to i32
  %21 = load ptr, ptr %v2, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %21, i64 %idxprom17
  %23 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %23 to i32
  %sub = sub nsw i32 %conv16, %conv19
  store i32 %sub, ptr %res, align 4
  %cmp20 = icmp ne i32 %sub, 0
  br i1 %cmp20, label %if.then22, label %if.end33

if.then22:                                        ; preds = %for.body
  %24 = load ptr, ptr %v1, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %25 to i32
  %26 = load ptr, ptr %v2, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %27 to i32
  %xor = xor i32 %conv24, %conv26
  %and = and i32 %xor, 128
  %cmp27 = icmp ne i32 %and, 0
  br i1 %cmp27, label %if.then29, label %if.end

if.then29:                                        ; preds = %if.then22
  %28 = load ptr, ptr %v1, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %29 to i32
  %and32 = and i32 %conv31, 128
  %tobool = icmp ne i32 %and32, 0
  %30 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 -1, i32 1
  store i32 %cond, ptr %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then29, %if.then22
  br label %for.end

if.end33:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.end, %for.cond
  br label %if.end68

if.else:                                          ; preds = %entry
  %32 = load i32, ptr %s1, align 4
  %cmp34 = icmp sgt i32 %32, 7
  br i1 %cmp34, label %land.lhs.true, label %if.else40

land.lhs.true:                                    ; preds = %if.else
  %33 = load i32, ptr %s2, align 4
  %cmp36 = icmp sgt i32 %33, 7
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %land.lhs.true
  %34 = load i32, ptr %s1, align 4
  %35 = load i32, ptr %s2, align 4
  %sub39 = sub nsw i32 %34, %35
  store i32 %sub39, ptr %res, align 4
  br label %if.end67

if.else40:                                        ; preds = %land.lhs.true, %if.else
  %36 = load i32, ptr %s2, align 4
  %cmp41 = icmp sgt i32 %36, 7
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else40
  store i32 1, ptr %res, align 4
  br label %if.end51

if.else44:                                        ; preds = %if.else40
  %37 = load i32, ptr %s1, align 4
  %cmp45 = icmp sgt i32 %37, 7
  br i1 %cmp45, label %if.then47, label %if.else48

if.then47:                                        ; preds = %if.else44
  store i32 -1, ptr %res, align 4
  br label %if.end50

if.else48:                                        ; preds = %if.else44
  %38 = load i32, ptr %s1, align 4
  %39 = load i32, ptr %s2, align 4
  %sub49 = sub nsw i32 %38, %39
  store i32 %sub49, ptr %res, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then47
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then43
  %40 = load i32, ptr %res, align 4
  %cmp52 = icmp sgt i32 %40, 0
  br i1 %cmp52, label %if.then54, label %if.else60

if.then54:                                        ; preds = %if.end51
  %41 = load ptr, ptr %v1, align 8
  %42 = load i8, ptr %41, align 1
  %conv55 = zext i8 %42 to i32
  %and56 = and i32 %conv55, 128
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then54
  store i32 -1, ptr %res, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.then54
  br label %if.end66

if.else60:                                        ; preds = %if.end51
  %43 = load ptr, ptr %v2, align 8
  %44 = load i8, ptr %43, align 1
  %conv61 = zext i8 %44 to i32
  %and62 = and i32 %conv61, 128
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.else60
  store i32 1, ptr %res, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.else60
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end59
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then38
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %for.end
  %45 = load i32, ptr %res, align 4
  %cmp69 = icmp eq i32 %45, 0
  br i1 %cmp69, label %if.then71, label %if.else77

if.then71:                                        ; preds = %if.end68
  %46 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %pSorter, align 8
  %pKeyInfo = getelementptr inbounds nuw %struct.VdbeSorter, ptr %47, i32 0, i32 7
  %48 = load ptr, ptr %pKeyInfo, align 8
  %nKeyField = getelementptr inbounds nuw %struct.KeyInfo, ptr %48, i32 0, i32 2
  %49 = load i16, ptr %nKeyField, align 2
  %conv72 = zext i16 %49 to i32
  %cmp73 = icmp sgt i32 %conv72, 1
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then71
  %50 = load ptr, ptr %pTask.addr, align 8
  %51 = load ptr, ptr %pbKey2Cached.addr, align 8
  %52 = load ptr, ptr %pKey1.addr, align 8
  %53 = load i32, ptr %nKey1.addr, align 4
  %54 = load ptr, ptr %pKey2.addr, align 8
  %55 = load i32, ptr %nKey2.addr, align 4
  %call = call i32 @vdbeSorterCompareTail(ptr noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %53, ptr noundef %54, i32 noundef %55)
  store i32 %call, ptr %res, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.then71
  br label %if.end84

if.else77:                                        ; preds = %if.end68
  %56 = load ptr, ptr %pTask.addr, align 8
  %pSorter78 = getelementptr inbounds nuw %struct.SortSubtask, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %pSorter78, align 8
  %pKeyInfo79 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %57, i32 0, i32 7
  %58 = load ptr, ptr %pKeyInfo79, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %aSortFlags, align 8
  %arrayidx80 = getelementptr inbounds i8, ptr %59, i64 0
  %60 = load i8, ptr %arrayidx80, align 1
  %tobool81 = icmp ne i8 %60, 0
  br i1 %tobool81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.else77
  %61 = load i32, ptr %res, align 4
  %mul = mul nsw i32 %61, -1
  store i32 %mul, ptr %res, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.else77
  br label %if.end84

if.end84:                                         ; preds = %if.end83, %if.end76
  %62 = load i32, ptr %res, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterCompareTail(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

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
