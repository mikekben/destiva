; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerOpenWal(ptr noundef %pPager, ptr noundef %pbOpen) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %pbOpen.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pbOpen, ptr %pbOpen.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 9
  %1 = load i8, ptr %tempFile, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 59
  %3 = load ptr, ptr %pWal, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @sqlite3PagerWalSupported(ptr noundef %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  store i32 14, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 31
  %6 = load ptr, ptr %jfd, align 8
  call void @sqlite3OsClose(ptr noundef %6)
  %7 = load ptr, ptr %pPager.addr, align 8
  %call4 = call i32 @pagerOpenWal(ptr noundef %7)
  store i32 %call4, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 2
  store i8 5, ptr %journalMode, align 1
  %10 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 13
  store i8 0, ptr %eState, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  br label %if.end7

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %pbOpen.addr, align 8
  store i32 1, ptr %11, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end6
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then3
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWalSupported(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerOpenWal(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
