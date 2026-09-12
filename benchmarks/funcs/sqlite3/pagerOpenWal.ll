; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @pagerFixMaplimit(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pagerOpenWal(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 1
  %1 = load i8, ptr %exclusiveMode, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @pagerExclusiveLock(ptr noundef %2)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %pPager.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pVfs, align 8
  %6 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 30
  %7 = load ptr, ptr %fd, align 8
  %8 = load ptr, ptr %pPager.addr, align 8
  %zWal = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 60
  %9 = load ptr, ptr %zWal, align 8
  %10 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode2 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 1
  %11 = load i8, ptr %exclusiveMode2, align 8
  %conv = zext i8 %11 to i32
  %12 = load ptr, ptr %pPager.addr, align 8
  %journalSizeLimit = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 49
  %13 = load i64, ptr %journalSizeLimit, align 8
  %14 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 59
  %call3 = call i32 @sqlite3WalOpen(ptr noundef %5, ptr noundef %7, ptr noundef %9, i32 noundef %conv, i64 noundef %13, ptr noundef %pWal)
  store i32 %call3, ptr %rc, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %15 = load ptr, ptr %pPager.addr, align 8
  call void @pagerFixMaplimit(ptr noundef %15)
  %16 = load i32, ptr %rc, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerExclusiveLock(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
