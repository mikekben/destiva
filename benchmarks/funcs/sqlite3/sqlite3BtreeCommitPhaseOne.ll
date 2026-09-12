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
declare hidden i32 @sqlite3PagerCommitPhaseOne(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerTruncateImage(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeCommitPhaseOne(ptr noundef %p, ptr noundef %zMaster) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %zMaster.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %zMaster, ptr %zMaster.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %inTrans = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %inTrans, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pBt2 = getelementptr inbounds nuw %struct.Btree, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pBt2, align 8
  store ptr %3, ptr %pBt, align 8
  %4 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %4)
  %5 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %5, i32 0, i32 5
  %6 = load i8, ptr %autoVacuum, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %pBt, align 8
  %call = call i32 @autoVacuumCommit(ptr noundef %7)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %9 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %9)
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %11 = load ptr, ptr %pBt, align 8
  %bDoTruncate = getelementptr inbounds nuw %struct.BtShared, ptr %11, i32 0, i32 7
  %12 = load i8, ptr %bDoTruncate, align 1
  %tobool8 = icmp ne i8 %12, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %13 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pPager, align 8
  %15 = load ptr, ptr %pBt, align 8
  %nPage = getelementptr inbounds nuw %struct.BtShared, ptr %15, i32 0, i32 18
  %16 = load i32, ptr %nPage, align 4
  call void @sqlite3PagerTruncateImage(ptr noundef %14, i32 noundef %16)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %17 = load ptr, ptr %pBt, align 8
  %pPager11 = getelementptr inbounds nuw %struct.BtShared, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pPager11, align 8
  %19 = load ptr, ptr %zMaster.addr, align 8
  %call12 = call i32 @sqlite3PagerCommitPhaseOne(ptr noundef %18, ptr noundef %19, i32 noundef 0)
  store i32 %call12, ptr %rc, align 4
  %20 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %20)
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %entry
  %21 = load i32, ptr %rc, align 4
  store i32 %21, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then6
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @autoVacuumCommit(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
