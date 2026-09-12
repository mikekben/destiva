; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetExtra(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeInitPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @btreePageFromDbPage(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @getAndInitPage(ptr noundef %pBt, i32 noundef %pgno, ptr noundef %ppPage, ptr noundef %pCur, i32 noundef %bReadOnly) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %ppPage.addr = alloca ptr, align 8
  %pCur.addr = alloca ptr, align 8
  %bReadOnly.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pDbPage = alloca ptr, align 8
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %ppPage, ptr %ppPage.addr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %bReadOnly, ptr %bReadOnly.addr, align 4
  %0 = load i32, ptr %pgno.addr, align 4
  %1 = load ptr, ptr %pBt.addr, align 8
  %call = call i32 @btreePagecount(ptr noundef %1)
  %cmp = icmp ugt i32 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @sqlite3CorruptError(i32 noundef 65570)
  store i32 %call1, ptr %rc, align 4
  br label %getAndInitPage_error1

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pBt.addr, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pPager, align 8
  %4 = load i32, ptr %pgno.addr, align 4
  %5 = load i32, ptr %bReadOnly.addr, align 4
  %call2 = call i32 @sqlite3PagerGet(ptr noundef %3, i32 noundef %4, ptr noundef %pDbPage, i32 noundef %5)
  store i32 %call2, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %getAndInitPage_error1

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pDbPage, align 8
  %call5 = call ptr @sqlite3PagerGetExtra(ptr noundef %7)
  %8 = load ptr, ptr %ppPage.addr, align 8
  store ptr %call5, ptr %8, align 8
  %9 = load ptr, ptr %ppPage.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %10, i32 0, i32 0
  %11 = load i8, ptr %isInit, align 8
  %conv = zext i8 %11 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end4
  %12 = load ptr, ptr %pDbPage, align 8
  %13 = load i32, ptr %pgno.addr, align 4
  %14 = load ptr, ptr %pBt.addr, align 8
  %call9 = call ptr @btreePageFromDbPage(ptr noundef %12, i32 noundef %13, ptr noundef %14)
  %15 = load ptr, ptr %ppPage.addr, align 8
  %16 = load ptr, ptr %15, align 8
  %call10 = call i32 @btreeInitPage(ptr noundef %16)
  store i32 %call10, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp11 = icmp ne i32 %17, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then8
  br label %getAndInitPage_error2

if.end14:                                         ; preds = %if.then8
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end4
  %18 = load ptr, ptr %pCur.addr, align 8
  %tobool16 = icmp ne ptr %18, null
  br i1 %tobool16, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end15
  %19 = load ptr, ptr %ppPage.addr, align 8
  %20 = load ptr, ptr %19, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %20, i32 0, i32 14
  %21 = load i16, ptr %nCell, align 8
  %conv17 = zext i16 %21 to i32
  %cmp18 = icmp slt i32 %conv17, 1
  br i1 %cmp18, label %if.then24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load ptr, ptr %ppPage.addr, align 8
  %23 = load ptr, ptr %22, align 8
  %intKey = getelementptr inbounds nuw %struct.MemPage, ptr %23, i32 0, i32 2
  %24 = load i8, ptr %intKey, align 2
  %conv20 = zext i8 %24 to i32
  %25 = load ptr, ptr %pCur.addr, align 8
  %curIntKey = getelementptr inbounds nuw %struct.BtCursor, ptr %25, i32 0, i32 14
  %26 = load i8, ptr %curIntKey, align 1
  %conv21 = zext i8 %26 to i32
  %cmp22 = icmp ne i32 %conv20, %conv21
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %call25 = call i32 @sqlite3CorruptError(i32 noundef 65591)
  store i32 %call25, ptr %rc, align 4
  br label %getAndInitPage_error2

if.end26:                                         ; preds = %lor.lhs.false, %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

getAndInitPage_error2:                            ; preds = %if.then24, %if.then13
  %27 = load ptr, ptr %ppPage.addr, align 8
  %28 = load ptr, ptr %27, align 8
  call void @releasePage(ptr noundef %28)
  br label %getAndInitPage_error1

getAndInitPage_error1:                            ; preds = %getAndInitPage_error2, %if.then3, %if.then
  %29 = load ptr, ptr %pCur.addr, align 8
  %tobool27 = icmp ne ptr %29, null
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %getAndInitPage_error1
  %30 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %30, i32 0, i32 13
  %31 = load i8, ptr %iPage, align 4
  %dec = add i8 %31, -1
  store i8 %dec, ptr %iPage, align 4
  %32 = load ptr, ptr %pCur.addr, align 8
  %apPage = getelementptr inbounds nuw %struct.BtCursor, ptr %32, i32 0, i32 19
  %33 = load ptr, ptr %pCur.addr, align 8
  %iPage29 = getelementptr inbounds nuw %struct.BtCursor, ptr %33, i32 0, i32 13
  %34 = load i8, ptr %iPage29, align 4
  %idxprom = sext i8 %34 to i64
  %arrayidx = getelementptr inbounds [19 x ptr], ptr %apPage, i64 0, i64 %idxprom
  %35 = load ptr, ptr %arrayidx, align 8
  %36 = load ptr, ptr %pCur.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.BtCursor, ptr %36, i32 0, i32 18
  store ptr %35, ptr %pPage, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %getAndInitPage_error1
  %37 = load i32, ptr %rc, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.end26
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
