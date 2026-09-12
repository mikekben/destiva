; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
define hidden void @pagerUnlockAndRollback(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 13
  %1 = load i8, ptr %eState, align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 6
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %eState2 = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 13
  %3 = load i8, ptr %eState2, align 4
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pPager.addr, align 8
  %eState6 = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 13
  %5 = load i8, ptr %eState6, align 4
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp sge i32 %conv7, 2
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  call void @sqlite3BeginBenignMalloc()
  %6 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @sqlite3PagerRollback(ptr noundef %6)
  call void @sqlite3EndBenignMalloc()
  br label %if.end13

if.else:                                          ; preds = %if.then
  %7 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %exclusiveMode, align 8
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end, label %if.then11

if.then11:                                        ; preds = %if.else
  %9 = load ptr, ptr %pPager.addr, align 8
  %call12 = call i32 @pager_end_transaction(ptr noundef %9, i32 noundef 0, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %entry
  %10 = load ptr, ptr %pPager.addr, align 8
  call void @pager_unlock(ptr noundef %10)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerRollback(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_end_transaction(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pager_unlock(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
