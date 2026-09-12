; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @pagerLockDb(ptr noundef %pPager, i32 noundef %eLock) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %eLock.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %eLock, ptr %eLock.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %eLock1 = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 14
  %1 = load i8, ptr %eLock1, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr %eLock.addr, align 4
  %cmp = icmp slt i32 %conv, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %eLock3 = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 14
  %4 = load i8, ptr %eLock3, align 1
  %conv4 = zext i8 %4 to i32
  %cmp5 = icmp eq i32 %conv4, 5
  br i1 %cmp5, label %if.then, label %if.end20

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %pPager.addr, align 8
  %noLock = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 10
  %6 = load i8, ptr %noLock, align 1
  %conv7 = zext i8 %6 to i32
  %tobool = icmp ne i32 %conv7, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 30
  %8 = load ptr, ptr %fd, align 8
  %9 = load i32, ptr %eLock.addr, align 4
  %call = call i32 @sqlite3OsLock(ptr noundef %8, i32 noundef %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %11 = load ptr, ptr %pPager.addr, align 8
  %eLock10 = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 14
  %12 = load i8, ptr %eLock10, align 1
  %conv11 = zext i8 %12 to i32
  %cmp12 = icmp ne i32 %conv11, 5
  br i1 %cmp12, label %if.then17, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %land.lhs.true
  %13 = load i32, ptr %eLock.addr, align 4
  %cmp15 = icmp eq i32 %13, 4
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %lor.lhs.false14, %land.lhs.true
  %14 = load i32, ptr %eLock.addr, align 4
  %conv18 = trunc i32 %14 to i8
  %15 = load ptr, ptr %pPager.addr, align 8
  %eLock19 = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 14
  store i8 %conv18, ptr %eLock19, align 1
  br label %if.end

if.end:                                           ; preds = %if.then17, %lor.lhs.false14, %cond.end
  br label %if.end20

if.end20:                                         ; preds = %if.end, %lor.lhs.false
  %16 = load i32, ptr %rc, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsLock(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
