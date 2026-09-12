; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @pagerUnlockDb(ptr noundef %pPager, i32 noundef %eLock) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %eLock.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %eLock, ptr %eLock.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 30
  %1 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %noLock = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 10
  %4 = load i8, ptr %noLock, align 1
  %conv = zext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load ptr, ptr %pPager.addr, align 8
  %fd1 = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 30
  %6 = load ptr, ptr %fd1, align 8
  %7 = load i32, ptr %eLock.addr, align 4
  %call = call i32 @sqlite3OsUnlock(ptr noundef %6, i32 noundef %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %8 = load ptr, ptr %pPager.addr, align 8
  %eLock2 = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 14
  %9 = load i8, ptr %eLock2, align 1
  %conv3 = zext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv3, 5
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %cond.end
  %10 = load i32, ptr %eLock.addr, align 4
  %conv7 = trunc i32 %10 to i8
  %11 = load ptr, ptr %pPager.addr, align 8
  %eLock8 = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 14
  store i8 %conv7, ptr %eLock8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %cond.end
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %rc, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnlock(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
