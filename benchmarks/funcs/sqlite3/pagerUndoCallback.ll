; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerLookup(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @readDbPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheDrop(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pagerUndoCallback(ptr noundef %pCtx, i32 noundef %iPg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %iPg.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pPager = alloca ptr, align 8
  %pPg = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %iPg, ptr %iPg.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pCtx.addr, align 8
  store ptr %0, ptr %pPager, align 8
  %1 = load ptr, ptr %pPager, align 8
  %2 = load i32, ptr %iPg.addr, align 4
  %call = call ptr @sqlite3PagerLookup(ptr noundef %1, i32 noundef %2)
  store ptr %call, ptr %pPg, align 8
  %3 = load ptr, ptr %pPg, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pPg, align 8
  %call1 = call i32 @sqlite3PcachePageRefcount(ptr noundef %4)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %pPg, align 8
  call void @sqlite3PcacheDrop(ptr noundef %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %pPg, align 8
  %call3 = call i32 @readDbPage(ptr noundef %6)
  store i32 %call3, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr %pPager, align 8
  %xReiniter = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 55
  %9 = load ptr, ptr %xReiniter, align 8
  %10 = load ptr, ptr %pPg, align 8
  call void %9(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %11 = load ptr, ptr %pPg, align 8
  call void @sqlite3PagerUnrefNotNull(ptr noundef %11)
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %12 = load ptr, ptr %pPager, align 8
  %pBackup = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 35
  %13 = load ptr, ptr %pBackup, align 8
  call void @sqlite3BackupRestart(ptr noundef %13)
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcachePageRefcount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnrefNotNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BackupRestart(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
