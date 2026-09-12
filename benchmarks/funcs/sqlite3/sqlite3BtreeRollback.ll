; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeRollback(ptr noundef %p, i32 noundef %tripCode, i32 noundef %writeOnly) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %tripCode.addr = alloca i32, align 4
  %writeOnly.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %pPage1 = alloca ptr, align 8
  %rc2 = alloca i32, align 4
  %rc214 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %tripCode, ptr %tripCode.addr, align 4
  store i32 %writeOnly, ptr %writeOnly.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load i32, ptr %tripCode.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pBt, align 8
  %call = call i32 @saveAllCursors(ptr noundef %4, i32 noundef 0, ptr noundef null)
  store i32 %call, ptr %tripCode.addr, align 4
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %writeOnly.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.else:                                          ; preds = %entry
  store i32 0, ptr %rc, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  %6 = load i32, ptr %tripCode.addr, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %p.addr, align 8
  %8 = load i32, ptr %tripCode.addr, align 4
  %9 = load i32, ptr %writeOnly.addr, align 4
  %call6 = call i32 @sqlite3BtreeTripAllCursors(ptr noundef %7, i32 noundef %8, i32 noundef %9)
  store i32 %call6, ptr %rc2, align 4
  %10 = load i32, ptr %rc2, align 4
  %cmp7 = icmp ne i32 %10, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  %11 = load i32, ptr %rc2, align 4
  store i32 %11, ptr %rc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then5
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end3
  %12 = load ptr, ptr %p.addr, align 8
  %inTrans = getelementptr inbounds nuw %struct.Btree, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %inTrans, align 8
  %conv = zext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv, 2
  br i1 %cmp11, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end10
  %14 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pPager, align 8
  %call15 = call i32 @sqlite3PagerRollback(ptr noundef %15)
  store i32 %call15, ptr %rc214, align 4
  %16 = load i32, ptr %rc214, align 4
  %cmp16 = icmp ne i32 %16, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then13
  %17 = load i32, ptr %rc214, align 4
  store i32 %17, ptr %rc, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then13
  %18 = load ptr, ptr %pBt, align 8
  %call20 = call i32 @btreeGetPage(ptr noundef %18, i32 noundef 1, ptr noundef %pPage1, i32 noundef 0)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  %19 = load ptr, ptr %pBt, align 8
  %20 = load ptr, ptr %pPage1, align 8
  call void @btreeSetNPage(ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %pPage1, align 8
  call void @releasePageOne(ptr noundef %21)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %22 = load ptr, ptr %pBt, align 8
  %inTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %22, i32 0, i32 8
  store i8 1, ptr %inTransaction, align 4
  %23 = load ptr, ptr %pBt, align 8
  call void @btreeClearHasContent(ptr noundef %23)
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end10
  %24 = load ptr, ptr %p.addr, align 8
  call void @btreeEndTransaction(ptr noundef %24)
  %25 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %25)
  %26 = load i32, ptr %rc, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerRollback(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePageOne(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeClearHasContent(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeEndTransaction(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeTripAllCursors(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeSetNPage(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
