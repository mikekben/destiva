; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_wait_on_lock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerLockDb(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalExclusiveMode(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerBegin(ptr noundef %pPager, i32 noundef %exFlag, i32 noundef %subjInMemory) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %exFlag.addr = alloca i32, align 4
  %subjInMemory.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %exFlag, ptr %exFlag.addr, align 4
  store i32 %subjInMemory, ptr %subjInMemory.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 25
  %1 = load i32, ptr %errCode, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %errCode1 = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %errCode1, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %subjInMemory.addr, align 4
  %conv = trunc i32 %4 to i8
  %5 = load ptr, ptr %pPager.addr, align 8
  %subjInMemory2 = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 18
  store i8 %conv, ptr %subjInMemory2, align 1
  %6 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 13
  %7 = load i8, ptr %eState, align 4
  %conv3 = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv3, 1
  br i1 %cmp, label %if.then5, label %if.end40

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 59
  %9 = load ptr, ptr %pWal, align 8
  %cmp6 = icmp ne ptr %9, null
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %10 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %exclusiveMode, align 8
  %conv9 = zext i8 %11 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.then8
  %12 = load ptr, ptr %pPager.addr, align 8
  %pWal11 = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 59
  %13 = load ptr, ptr %pWal11, align 8
  %call = call i32 @sqlite3WalExclusiveMode(ptr noundef %13, i32 noundef -1)
  %tobool12 = icmp ne i32 %call, 0
  br i1 %tobool12, label %if.then13, label %if.end21

if.then13:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %pPager.addr, align 8
  %call14 = call i32 @pagerLockDb(ptr noundef %14, i32 noundef 4)
  store i32 %call14, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp15 = icmp ne i32 %15, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then13
  %17 = load ptr, ptr %pPager.addr, align 8
  %pWal19 = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 59
  %18 = load ptr, ptr %pWal19, align 8
  %call20 = call i32 @sqlite3WalExclusiveMode(ptr noundef %18, i32 noundef 1)
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %land.lhs.true, %if.then8
  %19 = load ptr, ptr %pPager.addr, align 8
  %pWal22 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 59
  %20 = load ptr, ptr %pWal22, align 8
  %call23 = call i32 @sqlite3WalBeginWriteTransaction(ptr noundef %20)
  store i32 %call23, ptr %rc, align 4
  br label %if.end32

if.else:                                          ; preds = %if.then5
  %21 = load ptr, ptr %pPager.addr, align 8
  %call24 = call i32 @pagerLockDb(ptr noundef %21, i32 noundef 2)
  store i32 %call24, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %22, 0
  br i1 %cmp25, label %land.lhs.true27, label %if.end31

land.lhs.true27:                                  ; preds = %if.else
  %23 = load i32, ptr %exFlag.addr, align 4
  %tobool28 = icmp ne i32 %23, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %land.lhs.true27
  %24 = load ptr, ptr %pPager.addr, align 8
  %call30 = call i32 @pager_wait_on_lock(ptr noundef %24, i32 noundef 4)
  store i32 %call30, ptr %rc, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true27, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end21
  %25 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %25, 0
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end32
  %26 = load ptr, ptr %pPager.addr, align 8
  %eState36 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 13
  store i8 2, ptr %eState36, align 4
  %27 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 21
  %28 = load i32, ptr %dbSize, align 4
  %29 = load ptr, ptr %pPager.addr, align 8
  %dbHintSize = getelementptr inbounds nuw %struct.Pager, ptr %29, i32 0, i32 24
  store i32 %28, ptr %dbHintSize, align 8
  %30 = load ptr, ptr %pPager.addr, align 8
  %dbSize37 = getelementptr inbounds nuw %struct.Pager, ptr %30, i32 0, i32 21
  %31 = load i32, ptr %dbSize37, align 4
  %32 = load ptr, ptr %pPager.addr, align 8
  %dbFileSize = getelementptr inbounds nuw %struct.Pager, ptr %32, i32 0, i32 23
  store i32 %31, ptr %dbFileSize, align 4
  %33 = load ptr, ptr %pPager.addr, align 8
  %dbSize38 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 21
  %34 = load i32, ptr %dbSize38, align 4
  %35 = load ptr, ptr %pPager.addr, align 8
  %dbOrigSize = getelementptr inbounds nuw %struct.Pager, ptr %35, i32 0, i32 22
  store i32 %34, ptr %dbOrigSize, align 8
  %36 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 33
  store i64 0, ptr %journalOff, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end32
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end
  %37 = load i32, ptr %rc, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end40, %if.then17, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalBeginWriteTransaction(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
