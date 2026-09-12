; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeInitPage(ptr noundef %pPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %aData, align 8
  %4 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 6
  %5 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %5 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %data, align 8
  %6 = load ptr, ptr %pPage.addr, align 8
  %7 = load ptr, ptr %data, align 8
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %8 to i32
  %call = call i32 @decodeFlags(ptr noundef %6, i32 noundef %conv2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 @sqlite3CorruptError(i32 noundef 65400)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 15
  %10 = load i32, ptr %pageSize, align 8
  %sub = sub i32 %10, 1
  %conv4 = trunc i32 %sub to i16
  %11 = load ptr, ptr %pPage.addr, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %11, i32 0, i32 15
  store i16 %conv4, ptr %maskPage, align 2
  %12 = load ptr, ptr %pPage.addr, align 8
  %nOverflow = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 9
  store i8 0, ptr %nOverflow, align 4
  %13 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset5 = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 6
  %14 = load i8, ptr %hdrOffset5, align 1
  %conv6 = zext i8 %14 to i32
  %add = add nsw i32 %conv6, 8
  %15 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize = getelementptr inbounds nuw %struct.MemPage, ptr %15, i32 0, i32 7
  %16 = load i8, ptr %childPtrSize, align 2
  %conv7 = zext i8 %16 to i32
  %add8 = add nsw i32 %add, %conv7
  %conv9 = trunc i32 %add8 to i16
  %17 = load ptr, ptr %pPage.addr, align 8
  %cellOffset = getelementptr inbounds nuw %struct.MemPage, ptr %17, i32 0, i32 12
  store i16 %conv9, ptr %cellOffset, align 2
  %18 = load ptr, ptr %data, align 8
  %19 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize10 = getelementptr inbounds nuw %struct.MemPage, ptr %19, i32 0, i32 7
  %20 = load i8, ptr %childPtrSize10, align 2
  %conv11 = zext i8 %20 to i32
  %idx.ext12 = sext i32 %conv11 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %18, i64 %idx.ext12
  %add.ptr14 = getelementptr inbounds i8, ptr %add.ptr13, i64 8
  %21 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 21
  store ptr %add.ptr14, ptr %aCellIdx, align 8
  %22 = load ptr, ptr %pPage.addr, align 8
  %aData15 = getelementptr inbounds nuw %struct.MemPage, ptr %22, i32 0, i32 19
  %23 = load ptr, ptr %aData15, align 8
  %24 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %24, i32 0, i32 16
  %25 = load i32, ptr %usableSize, align 4
  %idx.ext16 = zext i32 %25 to i64
  %add.ptr17 = getelementptr inbounds nuw i8, ptr %23, i64 %idx.ext16
  %26 = load ptr, ptr %pPage.addr, align 8
  %aDataEnd = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 20
  store ptr %add.ptr17, ptr %aDataEnd, align 8
  %27 = load ptr, ptr %pPage.addr, align 8
  %aData18 = getelementptr inbounds nuw %struct.MemPage, ptr %27, i32 0, i32 19
  %28 = load ptr, ptr %aData18, align 8
  %29 = load ptr, ptr %pPage.addr, align 8
  %childPtrSize19 = getelementptr inbounds nuw %struct.MemPage, ptr %29, i32 0, i32 7
  %30 = load i8, ptr %childPtrSize19, align 2
  %conv20 = zext i8 %30 to i32
  %idx.ext21 = sext i32 %conv20 to i64
  %add.ptr22 = getelementptr inbounds i8, ptr %28, i64 %idx.ext21
  %31 = load ptr, ptr %pPage.addr, align 8
  %aDataOfst = getelementptr inbounds nuw %struct.MemPage, ptr %31, i32 0, i32 22
  store ptr %add.ptr22, ptr %aDataOfst, align 8
  %32 = load ptr, ptr %data, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %32, i64 3
  %arrayidx24 = getelementptr inbounds i8, ptr %arrayidx23, i64 0
  %33 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %33 to i32
  %shl = shl i32 %conv25, 8
  %34 = load ptr, ptr %data, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %34, i64 3
  %arrayidx27 = getelementptr inbounds i8, ptr %arrayidx26, i64 1
  %35 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %35 to i32
  %or = or i32 %shl, %conv28
  %conv29 = trunc i32 %or to i16
  %36 = load ptr, ptr %pPage.addr, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %36, i32 0, i32 14
  store i16 %conv29, ptr %nCell, align 8
  %37 = load ptr, ptr %pPage.addr, align 8
  %nCell30 = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 14
  %38 = load i16, ptr %nCell30, align 8
  %conv31 = zext i16 %38 to i32
  %39 = load ptr, ptr %pBt, align 8
  %pageSize32 = getelementptr inbounds nuw %struct.BtShared, ptr %39, i32 0, i32 15
  %40 = load i32, ptr %pageSize32, align 8
  %sub33 = sub i32 %40, 8
  %div = udiv i32 %sub33, 6
  %cmp = icmp ugt i32 %conv31, %div
  br i1 %cmp, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end
  %call36 = call i32 @sqlite3CorruptError(i32 noundef 65414)
  store i32 %call36, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end
  %41 = load ptr, ptr %pPage.addr, align 8
  %nFree = getelementptr inbounds nuw %struct.MemPage, ptr %41, i32 0, i32 13
  store i32 -1, ptr %nFree, align 4
  %42 = load ptr, ptr %pPage.addr, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %42, i32 0, i32 0
  store i8 1, ptr %isInit, align 8
  %43 = load ptr, ptr %pBt, align 8
  %db = getelementptr inbounds nuw %struct.BtShared, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %44, i32 0, i32 7
  %45 = load i64, ptr %flags, align 8
  %and = and i64 %45, 2097152
  %tobool38 = icmp ne i64 %and, 0
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end37
  %46 = load ptr, ptr %pPage.addr, align 8
  %call40 = call i32 @btreeCellSizeCheck(ptr noundef %46)
  store i32 %call40, ptr %retval, align 4
  br label %return

if.end41:                                         ; preds = %if.end37
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end41, %if.then39, %if.then35, %if.then
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
declare hidden i32 @decodeFlags(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeCellSizeCheck(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
