; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pagerPagecount(ptr noundef %pPager, ptr noundef %pnPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %pnPage.addr = alloca ptr, align 8
  %nPage = alloca i32, align 4
  %n = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %pnPage, ptr %pnPage.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %pWal, align 8
  %call = call i32 @sqlite3WalDbsize(ptr noundef %1)
  store i32 %call, ptr %nPage, align 4
  %2 = load i32, ptr %nPage, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 30
  %4 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pMethods, align 8
  %cmp1 = icmp ne ptr %5, null
  br i1 %cmp1, label %if.then, label %if.end9

if.then:                                          ; preds = %land.lhs.true
  store i64 0, ptr %n, align 8
  %6 = load ptr, ptr %pPager.addr, align 8
  %fd2 = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 30
  %7 = load ptr, ptr %fd2, align 8
  %call3 = call i32 @sqlite3OsFileSize(ptr noundef %7, ptr noundef %n)
  store i32 %call3, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp4 = icmp ne i32 %8, 0
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %9 = load i32, ptr %rc, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i64, ptr %n, align 8
  %11 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 47
  %12 = load i32, ptr %pageSize, align 4
  %conv = sext i32 %12 to i64
  %add = add nsw i64 %10, %conv
  %sub = sub nsw i64 %add, 1
  %13 = load ptr, ptr %pPager.addr, align 8
  %pageSize6 = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 47
  %14 = load i32, ptr %pageSize6, align 4
  %conv7 = sext i32 %14 to i64
  %div = sdiv i64 %sub, %conv7
  %conv8 = trunc i64 %div to i32
  store i32 %conv8, ptr %nPage, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.lhs.true, %entry
  %15 = load i32, ptr %nPage, align 4
  %16 = load ptr, ptr %pPager.addr, align 8
  %mxPgno = getelementptr inbounds nuw %struct.Pager, ptr %16, i32 0, i32 48
  %17 = load i32, ptr %mxPgno, align 8
  %cmp10 = icmp ugt i32 %15, %17
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %18 = load i32, ptr %nPage, align 4
  %19 = load ptr, ptr %pPager.addr, align 8
  %mxPgno13 = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 48
  store i32 %18, ptr %mxPgno13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9
  %20 = load i32, ptr %nPage, align 4
  %21 = load ptr, ptr %pnPage.addr, align 8
  store i32 %20, ptr %21, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then5
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalDbsize(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
