; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeBeginTrans(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeSetVersion(ptr noundef %pBtree, i32 noundef %iVersion) #0 {
entry:
  %pBtree.addr = alloca ptr, align 8
  %iVersion.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %rc = alloca i32, align 4
  %aData = alloca ptr, align 8
  store ptr %pBtree, ptr %pBtree.addr, align 8
  store i32 %iVersion, ptr %iVersion.addr, align 4
  %0 = load ptr, ptr %pBtree.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 10
  %3 = load i16, ptr %btsFlags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, -33
  %conv2 = trunc i32 %and to i16
  store i16 %conv2, ptr %btsFlags, align 2
  %4 = load i32, ptr %iVersion.addr, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pBt, align 8
  %btsFlags4 = getelementptr inbounds nuw %struct.BtShared, ptr %5, i32 0, i32 10
  %6 = load i16, ptr %btsFlags4, align 2
  %conv5 = zext i16 %6 to i32
  %or = or i32 %conv5, 32
  %conv6 = trunc i32 %or to i16
  store i16 %conv6, ptr %btsFlags4, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %pBtree.addr, align 8
  %call = call i32 @sqlite3BtreeBeginTrans(ptr noundef %7, i32 noundef 0, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.end39

if.then9:                                         ; preds = %if.end
  %9 = load ptr, ptr %pBt, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %pPage1, align 8
  %aData10 = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 19
  %11 = load ptr, ptr %aData10, align 8
  store ptr %11, ptr %aData, align 8
  %12 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %12, i64 18
  %13 = load i8, ptr %arrayidx, align 1
  %conv11 = zext i8 %13 to i32
  %14 = load i32, ptr %iVersion.addr, align 4
  %conv12 = trunc i32 %14 to i8
  %conv13 = zext i8 %conv12 to i32
  %cmp14 = icmp ne i32 %conv11, %conv13
  br i1 %cmp14, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then9
  %15 = load ptr, ptr %aData, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 19
  %16 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %16 to i32
  %17 = load i32, ptr %iVersion.addr, align 4
  %conv18 = trunc i32 %17 to i8
  %conv19 = zext i8 %conv18 to i32
  %cmp20 = icmp ne i32 %conv17, %conv19
  br i1 %cmp20, label %if.then22, label %if.end38

if.then22:                                        ; preds = %lor.lhs.false, %if.then9
  %18 = load ptr, ptr %pBtree.addr, align 8
  %call23 = call i32 @sqlite3BtreeBeginTrans(ptr noundef %18, i32 noundef 2, ptr noundef null)
  store i32 %call23, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp24 = icmp eq i32 %19, 0
  br i1 %cmp24, label %if.then26, label %if.end37

if.then26:                                        ; preds = %if.then22
  %20 = load ptr, ptr %pBt, align 8
  %pPage127 = getelementptr inbounds nuw %struct.BtShared, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %pPage127, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %pDbPage, align 8
  %call28 = call i32 @sqlite3PagerWrite(ptr noundef %22)
  store i32 %call28, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp29 = icmp eq i32 %23, 0
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.then26
  %24 = load i32, ptr %iVersion.addr, align 4
  %conv32 = trunc i32 %24 to i8
  %25 = load ptr, ptr %aData, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %25, i64 18
  store i8 %conv32, ptr %arrayidx33, align 1
  %26 = load i32, ptr %iVersion.addr, align 4
  %conv34 = trunc i32 %26 to i8
  %27 = load ptr, ptr %aData, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %27, i64 19
  store i8 %conv34, ptr %arrayidx35, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.then26
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then22
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %lor.lhs.false
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end
  %28 = load ptr, ptr %pBt, align 8
  %btsFlags40 = getelementptr inbounds nuw %struct.BtShared, ptr %28, i32 0, i32 10
  %29 = load i16, ptr %btsFlags40, align 2
  %conv41 = zext i16 %29 to i32
  %and42 = and i32 %conv41, -33
  %conv43 = trunc i32 %and42 to i16
  store i16 %conv43, ptr %btsFlags40, align 2
  %30 = load i32, ptr %rc, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
