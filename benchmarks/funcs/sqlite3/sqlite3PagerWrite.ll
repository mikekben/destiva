; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerWrite(ptr noundef %pPg) #0 {
entry:
  %retval = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  %2 = load ptr, ptr %pPg.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %2, i32 0, i32 7
  %3 = load i16, ptr %flags, align 4
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pPager, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 21
  %5 = load i32, ptr %dbSize, align 4
  %6 = load ptr, ptr %pPg.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %pgno, align 8
  %cmp3 = icmp uge i32 %5, %7
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %pPager, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 37
  %9 = load i32, ptr %nSavepoint, align 8
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %10 = load ptr, ptr %pPg.addr, align 8
  %call = call i32 @subjournalPageIfRequired(ptr noundef %10)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %pPager, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 25
  %12 = load i32, ptr %errCode, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  %13 = load ptr, ptr %pPager, align 8
  %errCode8 = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 25
  %14 = load i32, ptr %errCode8, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %if.else
  %15 = load ptr, ptr %pPager, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 46
  %16 = load i32, ptr %sectorSize, align 8
  %17 = load ptr, ptr %pPager, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 47
  %18 = load i32, ptr %pageSize, align 4
  %cmp10 = icmp ugt i32 %16, %18
  br i1 %cmp10, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else9
  %19 = load ptr, ptr %pPg.addr, align 8
  %call13 = call i32 @pagerWriteLargeSector(ptr noundef %19)
  store i32 %call13, ptr %retval, align 4
  br label %return

if.else14:                                        ; preds = %if.else9
  %20 = load ptr, ptr %pPg.addr, align 8
  %call15 = call i32 @pager_write(ptr noundef %20)
  store i32 %call15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else14, %if.then12, %if.then7, %if.end, %if.then5
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
declare hidden i32 @subjournalPageIfRequired(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerWriteLargeSector(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_write(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
