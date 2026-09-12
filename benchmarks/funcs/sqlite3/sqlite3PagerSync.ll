; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerSync(ptr noundef %pPager, ptr noundef %zMaster) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %zMaster.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pArg = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %zMaster, ptr %zMaster.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %zMaster.addr, align 8
  store ptr %0, ptr %pArg, align 8
  %1 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 30
  %2 = load ptr, ptr %fd, align 8
  %3 = load ptr, ptr %pArg, align 8
  %call = call i32 @sqlite3OsFileControl(ptr noundef %2, i32 noundef 21, ptr noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %4, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %rc, align 4
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %pPager.addr, align 8
  %noSync = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 4
  %7 = load i8, ptr %noSync, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.end5, label %if.then2

if.then2:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %pPager.addr, align 8
  %fd3 = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 30
  %9 = load ptr, ptr %fd3, align 8
  %10 = load ptr, ptr %pPager.addr, align 8
  %syncFlags = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 7
  %11 = load i8, ptr %syncFlags, align 2
  %conv = zext i8 %11 to i32
  %call4 = call i32 @sqlite3OsSync(ptr noundef %9, i32 noundef %conv)
  store i32 %call4, ptr %rc, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  %12 = load i32, ptr %rc, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileControl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSync(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
