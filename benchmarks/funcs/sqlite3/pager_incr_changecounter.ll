; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pager_write_changecounter(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pager_incr_changecounter(ptr noundef %pPager, i32 noundef %isDirectMode) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %isDirectMode.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pPgHdr = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %isDirectMode, ptr %isDirectMode.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr %isDirectMode.addr, align 4
  %1 = load ptr, ptr %pPager.addr, align 8
  %changeCountDone = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 15
  %2 = load i8, ptr %changeCountDone, align 2
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 21
  %4 = load i32, ptr %dbSize, align 4
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @sqlite3PagerGet(ptr noundef %5, i32 noundef 1, ptr noundef %pPgHdr, i32 noundef 0)
  store i32 %call, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %pPgHdr, align 8
  %call3 = call i32 @sqlite3PagerWrite(ptr noundef %7)
  store i32 %call3, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %8 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %pPgHdr, align 8
  call void @pager_write_changecounter(ptr noundef %9)
  %10 = load ptr, ptr %pPager.addr, align 8
  %changeCountDone6 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 15
  store i8 1, ptr %changeCountDone6, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %11 = load ptr, ptr %pPgHdr, align 8
  call void @sqlite3PagerUnref(ptr noundef %11)
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %land.lhs.true, %entry
  %12 = load i32, ptr %rc, align 4
  ret i32 %12
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
