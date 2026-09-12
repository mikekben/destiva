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
declare hidden i32 @sqlite3PagerSavepoint(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @newDatabase(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeSetNPage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeSavepoint(ptr noundef %p, i32 noundef %op, i32 noundef %iSavepoint) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %iSavepoint.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %iSavepoint, ptr %iSavepoint.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %inTrans = getelementptr inbounds nuw %struct.Btree, ptr %1, i32 0, i32 2
  %2 = load i8, ptr %inTrans, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end24

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %p.addr, align 8
  %pBt2 = getelementptr inbounds nuw %struct.Btree, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pBt2, align 8
  store ptr %4, ptr %pBt, align 8
  %5 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %5)
  %6 = load i32, ptr %op.addr, align 4
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %7 = load ptr, ptr %pBt, align 8
  %call = call i32 @saveAllCursors(ptr noundef %7, i32 noundef 0, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %8 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %9 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pPager, align 8
  %11 = load i32, ptr %op.addr, align 4
  %12 = load i32, ptr %iSavepoint.addr, align 4
  %call9 = call i32 @sqlite3PagerSavepoint(ptr noundef %10, i32 noundef %11, i32 noundef %12)
  store i32 %call9, ptr %rc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %13 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %13, 0
  br i1 %cmp11, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.end10
  %14 = load i32, ptr %iSavepoint.addr, align 4
  %cmp14 = icmp slt i32 %14, 0
  br i1 %cmp14, label %land.lhs.true16, label %if.end21

land.lhs.true16:                                  ; preds = %if.then13
  %15 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %15, i32 0, i32 10
  %16 = load i16, ptr %btsFlags, align 2
  %conv17 = zext i16 %16 to i32
  %and = and i32 %conv17, 16
  %cmp18 = icmp ne i32 %and, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true16
  %17 = load ptr, ptr %pBt, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %17, i32 0, i32 18
  store i32 0, ptr %nPage, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true16, %if.then13
  %18 = load ptr, ptr %pBt, align 8
  %call22 = call i32 @newDatabase(ptr noundef %18)
  store i32 %call22, ptr %rc, align 4
  %19 = load ptr, ptr %pBt, align 8
  %20 = load ptr, ptr %pBt, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %pPage1, align 8
  call void @btreeSetNPage(ptr noundef %19, ptr noundef %21)
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end10
  %22 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %22)
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %land.lhs.true, %entry
  %23 = load i32, ptr %rc, align 4
  ret i32 %23
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
