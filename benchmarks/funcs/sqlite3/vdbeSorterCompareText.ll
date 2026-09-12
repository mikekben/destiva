; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint32(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterCompareText(ptr noundef %pTask, ptr noundef %pbKey2Cached, ptr noundef %pKey1, i32 noundef %nKey1, ptr noundef %pKey2, i32 noundef %nKey2) #1 {
entry:
  %pTask.addr = alloca ptr, align 8
  %pbKey2Cached.addr = alloca ptr, align 8
  %pKey1.addr = alloca ptr, align 8
  %nKey1.addr = alloca i32, align 4
  %pKey2.addr = alloca ptr, align 8
  %nKey2.addr = alloca i32, align 4
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %v1 = alloca ptr, align 8
  %v2 = alloca ptr, align 8
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  %res = alloca i32, align 4
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
  %3 = load ptr, ptr %p1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %4 to i64
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %2, i64 %idxprom
  store ptr %arrayidx1, ptr %v1, align 8
  %5 = load ptr, ptr %p2, align 8
  %6 = load ptr, ptr %p2, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %idxprom3 = zext i8 %7 to i64
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %5, i64 %idxprom3
  store ptr %arrayidx4, ptr %v2, align 8
  %8 = load ptr, ptr %p1, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load ptr, ptr %p1, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  store i32 %conv8, ptr %n1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load ptr, ptr %p1, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 1
  %call = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx9, ptr noundef %n1)
  %conv10 = zext i8 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv10, %cond.false ]
  %conv11 = trunc i32 %cond to i8
  %13 = load ptr, ptr %p2, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %13, i64 1
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  %cmp14 = icmp slt i32 %conv13, 128
  br i1 %cmp14, label %cond.true16, label %cond.false19

cond.true16:                                      ; preds = %cond.end
  %15 = load ptr, ptr %p2, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %16 to i32
  store i32 %conv18, ptr %n2, align 4
  br label %cond.end23

cond.false19:                                     ; preds = %cond.end
  %17 = load ptr, ptr %p2, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %17, i64 1
  %call21 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx20, ptr noundef %n2)
  %conv22 = zext i8 %call21 to i32
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false19, %cond.true16
  %cond24 = phi i32 [ 1, %cond.true16 ], [ %conv22, %cond.false19 ]
  %conv25 = trunc i32 %cond24 to i8
  %18 = load ptr, ptr %v1, align 8
  %19 = load ptr, ptr %v2, align 8
  %20 = load i32, ptr %n1, align 4
  %21 = load i32, ptr %n2, align 4
  %cmp26 = icmp slt i32 %20, %21
  br i1 %cmp26, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end23
  %22 = load i32, ptr %n1, align 4
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end23
  %23 = load i32, ptr %n2, align 4
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.true28
  %cond31 = phi i32 [ %22, %cond.true28 ], [ %23, %cond.false29 ]
  %sub = sub nsw i32 %cond31, 13
  %div = sdiv i32 %sub, 2
  %conv32 = sext i32 %div to i64
  %call33 = call i32 @memcmp(ptr noundef %18, ptr noundef %19, i64 noundef %conv32) #2
  store i32 %call33, ptr %res, align 4
  %24 = load i32, ptr %res, align 4
  %cmp34 = icmp eq i32 %24, 0
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end30
  %25 = load i32, ptr %n1, align 4
  %26 = load i32, ptr %n2, align 4
  %sub36 = sub nsw i32 %25, %26
  store i32 %sub36, ptr %res, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end30
  %27 = load i32, ptr %res, align 4
  %cmp37 = icmp eq i32 %27, 0
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end
  %28 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %28, i32 0, i32 2
  %29 = load ptr, ptr %pSorter, align 8
  %pKeyInfo = getelementptr inbounds nuw %struct.VdbeSorter, ptr %29, i32 0, i32 7
  %30 = load ptr, ptr %pKeyInfo, align 8
  %nKeyField = getelementptr inbounds nuw %struct.KeyInfo, ptr %30, i32 0, i32 2
  %31 = load i16, ptr %nKeyField, align 2
  %conv40 = zext i16 %31 to i32
  %cmp41 = icmp sgt i32 %conv40, 1
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then39
  %32 = load ptr, ptr %pTask.addr, align 8
  %33 = load ptr, ptr %pbKey2Cached.addr, align 8
  %34 = load ptr, ptr %pKey1.addr, align 8
  %35 = load i32, ptr %nKey1.addr, align 4
  %36 = load ptr, ptr %pKey2.addr, align 8
  %37 = load i32, ptr %nKey2.addr, align 4
  %call44 = call i32 @vdbeSorterCompareTail(ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef %35, ptr noundef %36, i32 noundef %37)
  store i32 %call44, ptr %res, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then39
  br label %if.end51

if.else:                                          ; preds = %if.end
  %38 = load ptr, ptr %pTask.addr, align 8
  %pSorter46 = getelementptr inbounds nuw %struct.SortSubtask, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %pSorter46, align 8
  %pKeyInfo47 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %pKeyInfo47, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %40, i32 0, i32 5
  %41 = load ptr, ptr %aSortFlags, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx48, align 1
  %tobool = icmp ne i8 %42, 0
  br i1 %tobool, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.else
  %43 = load i32, ptr %res, align 4
  %mul = mul nsw i32 %43, -1
  store i32 %mul, ptr %res, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end45
  %44 = load i32, ptr %res, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterCompareTail(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
