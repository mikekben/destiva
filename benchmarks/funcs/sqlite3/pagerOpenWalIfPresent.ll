; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsAccess(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDelete(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerOpenWal(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pagerOpenWalIfPresent(ptr noundef %pPager) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %isWal = alloca i32, align 4
  %nPage = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 9
  %1 = load i8, ptr %tempFile, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end22, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pVfs, align 8
  %4 = load ptr, ptr %pPager.addr, align 8
  %zWal = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 60
  %5 = load ptr, ptr %zWal, align 8
  %call = call i32 @sqlite3OsAccess(ptr noundef %3, ptr noundef %5, i32 noundef 0, ptr noundef %isWal)
  store i32 %call, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then1, label %if.end21

if.then1:                                         ; preds = %if.then
  %7 = load i32, ptr %isWal, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then3, label %if.else14

if.then3:                                         ; preds = %if.then1
  %8 = load ptr, ptr %pPager.addr, align 8
  %call4 = call i32 @pagerPagecount(ptr noundef %8, ptr noundef %nPage)
  store i32 %call4, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then3
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then3
  %11 = load i32, ptr %nPage, align 4
  %cmp7 = icmp eq i32 %11, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %pPager.addr, align 8
  %pVfs9 = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pVfs9, align 8
  %14 = load ptr, ptr %pPager.addr, align 8
  %zWal10 = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 60
  %15 = load ptr, ptr %zWal10, align 8
  %call11 = call i32 @sqlite3OsDelete(ptr noundef %13, ptr noundef %15, i32 noundef 0)
  store i32 %call11, ptr %rc, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %16 = load ptr, ptr %pPager.addr, align 8
  %call12 = call i32 @sqlite3PagerOpenWal(ptr noundef %16, ptr noundef null)
  store i32 %call12, ptr %rc, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then8
  br label %if.end20

if.else14:                                        ; preds = %if.then1
  %17 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 2
  %18 = load i8, ptr %journalMode, align 1
  %conv = zext i8 %18 to i32
  %cmp15 = icmp eq i32 %conv, 5
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.else14
  %19 = load ptr, ptr %pPager.addr, align 8
  %journalMode18 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 2
  store i8 0, ptr %journalMode18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.else14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end13
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %entry
  %20 = load i32, ptr %rc, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then6
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerPagecount(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
