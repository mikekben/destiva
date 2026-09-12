; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @write32bits(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @addToSavepointBitvecs(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSet(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_cksum(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pagerAddPageToRollbackJournal(ptr noundef %pPg) #0 {
entry:
  %retval = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cksum = alloca i32, align 4
  %pData2 = alloca ptr, align 8
  %iOff = alloca i64, align 8
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  %2 = load ptr, ptr %pPager, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 33
  %3 = load i64, ptr %journalOff, align 8
  store i64 %3, ptr %iOff, align 8
  %4 = load ptr, ptr %pPg.addr, align 8
  %pData = getelementptr inbounds nuw %struct.PgHdr, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pData, align 8
  store ptr %5, ptr %pData2, align 8
  %6 = load ptr, ptr %pPager, align 8
  %7 = load ptr, ptr %pData2, align 8
  %call = call i32 @pager_cksum(ptr noundef %6, ptr noundef %7)
  store i32 %call, ptr %cksum, align 4
  %8 = load ptr, ptr %pPg.addr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %8, i32 0, i32 7
  %9 = load i16, ptr %flags, align 4
  %conv = zext i16 %9 to i32
  %or = or i32 %conv, 8
  %conv2 = trunc i32 %or to i16
  store i16 %conv2, ptr %flags, align 4
  %10 = load ptr, ptr %pPager, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 31
  %11 = load ptr, ptr %jfd, align 8
  %12 = load i64, ptr %iOff, align 8
  %13 = load ptr, ptr %pPg.addr, align 8
  %pgno = getelementptr inbounds nuw %struct.PgHdr, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %pgno, align 8
  %call3 = call i32 @write32bits(ptr noundef %11, i64 noundef %12, i32 noundef %14)
  store i32 %call3, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %pPager, align 8
  %jfd5 = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 31
  %18 = load ptr, ptr %jfd5, align 8
  %19 = load ptr, ptr %pData2, align 8
  %20 = load ptr, ptr %pPager, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 47
  %21 = load i32, ptr %pageSize, align 4
  %22 = load i64, ptr %iOff, align 8
  %add = add nsw i64 %22, 4
  %call6 = call i32 @sqlite3OsWrite(ptr noundef %18, ptr noundef %19, i32 noundef %21, i64 noundef %add)
  store i32 %call6, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp7 = icmp ne i32 %23, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  %24 = load i32, ptr %rc, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %25 = load ptr, ptr %pPager, align 8
  %jfd11 = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 31
  %26 = load ptr, ptr %jfd11, align 8
  %27 = load i64, ptr %iOff, align 8
  %28 = load ptr, ptr %pPager, align 8
  %pageSize12 = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 47
  %29 = load i32, ptr %pageSize12, align 4
  %conv13 = sext i32 %29 to i64
  %add14 = add nsw i64 %27, %conv13
  %add15 = add nsw i64 %add14, 4
  %30 = load i32, ptr %cksum, align 4
  %call16 = call i32 @write32bits(ptr noundef %26, i64 noundef %add15, i32 noundef %30)
  store i32 %call16, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp17 = icmp ne i32 %31, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end10
  %32 = load i32, ptr %rc, align 4
  store i32 %32, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end10
  %33 = load ptr, ptr %pPager, align 8
  %pageSize21 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 47
  %34 = load i32, ptr %pageSize21, align 4
  %add22 = add nsw i32 8, %34
  %conv23 = sext i32 %add22 to i64
  %35 = load ptr, ptr %pPager, align 8
  %journalOff24 = getelementptr inbounds nuw %struct.Pager, ptr %35, i32 0, i32 33
  %36 = load i64, ptr %journalOff24, align 8
  %add25 = add nsw i64 %36, %conv23
  store i64 %add25, ptr %journalOff24, align 8
  %37 = load ptr, ptr %pPager, align 8
  %nRec = getelementptr inbounds nuw %struct.Pager, ptr %37, i32 0, i32 26
  %38 = load i32, ptr %nRec, align 8
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %nRec, align 8
  %39 = load ptr, ptr %pPager, align 8
  %pInJournal = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 29
  %40 = load ptr, ptr %pInJournal, align 8
  %41 = load ptr, ptr %pPg.addr, align 8
  %pgno26 = getelementptr inbounds nuw %struct.PgHdr, ptr %41, i32 0, i32 6
  %42 = load i32, ptr %pgno26, align 8
  %call27 = call i32 @sqlite3BitvecSet(ptr noundef %40, i32 noundef %42)
  store i32 %call27, ptr %rc, align 4
  %43 = load ptr, ptr %pPager, align 8
  %44 = load ptr, ptr %pPg.addr, align 8
  %pgno28 = getelementptr inbounds nuw %struct.PgHdr, ptr %44, i32 0, i32 6
  %45 = load i32, ptr %pgno28, align 8
  %call29 = call i32 @addToSavepointBitvecs(ptr noundef %43, i32 noundef %45)
  %46 = load i32, ptr %rc, align 4
  %or30 = or i32 %46, %call29
  store i32 %or30, ptr %rc, align 4
  %47 = load i32, ptr %rc, align 4
  store i32 %47, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then19, %if.then9, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
