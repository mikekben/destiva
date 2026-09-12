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
define hidden i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef %p, i32 noundef %bCleanup) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %bCleanup.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %bCleanup, ptr %bCleanup.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %inTrans = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %inTrans, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %inTrans2 = getelementptr inbounds nuw %struct.Btree, ptr %3, i32 0, i32 2
  %4 = load i8, ptr %inTrans2, align 8
  %conv3 = zext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 2
  br i1 %cmp4, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %p.addr, align 8
  %pBt7 = getelementptr inbounds nuw %struct.Btree, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pBt7, align 8
  store ptr %6, ptr %pBt, align 8
  %7 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pPager, align 8
  %call = call i32 @sqlite3PagerCommitPhaseTwo(ptr noundef %8)
  store i32 %call, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %9, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i32, ptr %bCleanup.addr, align 4
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %11)
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %land.lhs.true, %if.then6
  %13 = load ptr, ptr %p.addr, align 8
  %iDataVersion = getelementptr inbounds nuw %struct.Btree, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %iDataVersion, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %iDataVersion, align 4
  %15 = load ptr, ptr %pBt, align 8
  %inTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %15, i32 0, i32 8
  store i8 1, ptr %inTransaction, align 4
  %16 = load ptr, ptr %pBt, align 8
  call void @btreeClearHasContent(ptr noundef %16)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end
  %17 = load ptr, ptr %p.addr, align 8
  call void @btreeEndTransaction(ptr noundef %17)
  %18 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %18)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerCommitPhaseTwo(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeClearHasContent(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeEndTransaction(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
