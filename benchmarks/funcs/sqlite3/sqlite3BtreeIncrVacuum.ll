; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @invalidateAllOverflowCache(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @finalDbSize(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveAllCursors(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @incrVacuumStep(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeIncrVacuum(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %nOrig = alloca i32, align 4
  %nFree = alloca i32, align 4
  %nFin = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 5
  %4 = load i8, ptr %autoVacuum, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 101, ptr %rc, align 4
  br label %if.end24

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %pBt, align 8
  %call = call i32 @btreePagecount(ptr noundef %5)
  store i32 %call, ptr %nOrig, align 4
  %6 = load ptr, ptr %pBt, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pPage1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 19
  %8 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 36
  %call2 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call2, ptr %nFree, align 4
  %9 = load ptr, ptr %pBt, align 8
  %10 = load i32, ptr %nOrig, align 4
  %11 = load i32, ptr %nFree, align 4
  %call3 = call i32 @finalDbSize(ptr noundef %9, i32 noundef %10, i32 noundef %11)
  store i32 %call3, ptr %nFin, align 4
  %12 = load i32, ptr %nOrig, align 4
  %13 = load i32, ptr %nFin, align 4
  %cmp = icmp ult i32 %12, %13
  br i1 %cmp, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %call5 = call i32 @sqlite3CorruptError(i32 noundef 67266)
  store i32 %call5, ptr %rc, align 4
  br label %if.end23

if.else6:                                         ; preds = %if.else
  %14 = load i32, ptr %nFree, align 4
  %cmp7 = icmp ugt i32 %14, 0
  br i1 %cmp7, label %if.then8, label %if.else21

if.then8:                                         ; preds = %if.else6
  %15 = load ptr, ptr %pBt, align 8
  %call9 = call i32 @saveAllCursors(ptr noundef %15, i32 noundef 0, ptr noundef null)
  store i32 %call9, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %16, 0
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then8
  %17 = load ptr, ptr %pBt, align 8
  call void @invalidateAllOverflowCache(ptr noundef %17)
  %18 = load ptr, ptr %pBt, align 8
  %19 = load i32, ptr %nFin, align 4
  %20 = load i32, ptr %nOrig, align 4
  %call12 = call i32 @incrVacuumStep(ptr noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef 0)
  store i32 %call12, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then8
  %21 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %21, 0
  br i1 %cmp13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end
  %22 = load ptr, ptr %pBt, align 8
  %pPage115 = getelementptr inbounds nuw %struct.BtShared, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %pPage115, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %23, i32 0, i32 23
  %24 = load ptr, ptr %pDbPage, align 8
  %call16 = call i32 @sqlite3PagerWrite(ptr noundef %24)
  store i32 %call16, ptr %rc, align 4
  %25 = load ptr, ptr %pBt, align 8
  %pPage117 = getelementptr inbounds nuw %struct.BtShared, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %pPage117, align 8
  %aData18 = getelementptr inbounds nuw %struct.MemPage, ptr %26, i32 0, i32 19
  %27 = load ptr, ptr %aData18, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %27, i64 28
  %28 = load ptr, ptr %pBt, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %28, i32 0, i32 18
  %29 = load i32, ptr %nPage, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx19, i32 noundef %29)
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end
  br label %if.end22

if.else21:                                        ; preds = %if.else6
  store i32 101, ptr %rc, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.end20
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then4
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %30 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %30)
  %31 = load i32, ptr %rc, align 4
  ret i32 %31
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
