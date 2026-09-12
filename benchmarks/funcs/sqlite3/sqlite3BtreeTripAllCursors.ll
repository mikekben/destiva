; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @saveCursorPosition(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @btreeReleaseAllCursorPages(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeTripAllCursors(ptr noundef %pBtree, i32 noundef %errCode, i32 noundef %writeOnly) #0 {
entry:
  %pBtree.addr = alloca ptr, align 8
  %errCode.addr = alloca i32, align 4
  %writeOnly.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pBtree, ptr %pBtree.addr, align 8
  store i32 %errCode, ptr %errCode.addr, align 4
  store i32 %writeOnly, ptr %writeOnly.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pBtree.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pBtree.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %1)
  %2 = load ptr, ptr %pBtree.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.Btree, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pBt, align 8
  %pCursor = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pCursor, align 8
  store ptr %4, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load ptr, ptr %p, align 8
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %writeOnly.addr, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %p, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %curFlags, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %conv, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %p, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %eState, align 8
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %11 = load ptr, ptr %p, align 8
  %eState8 = getelementptr inbounds nuw %struct.BtCursor, ptr %11, i32 0, i32 0
  %12 = load i8, ptr %eState8, align 8
  %conv9 = zext i8 %12 to i32
  %cmp10 = icmp eq i32 %conv9, 2
  br i1 %cmp10, label %if.then12, label %if.end17

if.then12:                                        ; preds = %lor.lhs.false, %if.then4
  %13 = load ptr, ptr %p, align 8
  %call = call i32 @saveCursorPosition(ptr noundef %13)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp13 = icmp ne i32 %14, 0
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then12
  %15 = load ptr, ptr %pBtree.addr, align 8
  %16 = load i32, ptr %rc, align 4
  %call16 = call i32 @sqlite3BtreeTripAllCursors(ptr noundef %15, i32 noundef %16, i32 noundef 0)
  br label %for.end

if.end:                                           ; preds = %if.then12
  br label %if.end17

if.end17:                                         ; preds = %if.end, %lor.lhs.false
  br label %if.end19

if.else:                                          ; preds = %land.lhs.true, %for.body
  %17 = load ptr, ptr %p, align 8
  call void @sqlite3BtreeClearCursor(ptr noundef %17)
  %18 = load ptr, ptr %p, align 8
  %eState18 = getelementptr inbounds nuw %struct.BtCursor, ptr %18, i32 0, i32 0
  store i8 4, ptr %eState18, align 8
  %19 = load i32, ptr %errCode.addr, align 4
  %20 = load ptr, ptr %p, align 8
  %skipNext = getelementptr inbounds nuw %struct.BtCursor, ptr %20, i32 0, i32 4
  store i32 %19, ptr %skipNext, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end17
  %21 = load ptr, ptr %p, align 8
  call void @btreeReleaseAllCursorPages(ptr noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %22 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.BtCursor, ptr %22, i32 0, i32 9
  %23 = load ptr, ptr %pNext, align 8
  store ptr %23, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then15, %for.cond
  %24 = load ptr, ptr %pBtree.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %24)
  br label %if.end20

if.end20:                                         ; preds = %for.end, %entry
  %25 = load i32, ptr %rc, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeClearCursor(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
