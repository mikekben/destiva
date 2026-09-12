; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePayloadSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemFromBtree(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeIdxKeyCompare(ptr noundef %db, ptr noundef %pC, ptr noundef %pUnpacked, ptr noundef %res) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pC.addr = alloca ptr, align 8
  %pUnpacked.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %nCellKey = alloca i64, align 8
  %rc = alloca i32, align 4
  %pCur = alloca ptr, align 8
  %m = alloca %struct.sqlite3_value, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pC, ptr %pC.addr, align 8
  store ptr %pUnpacked, ptr %pUnpacked.addr, align 8
  store ptr %res, ptr %res.addr, align 8
  store i64 0, ptr %nCellKey, align 8
  %0 = load ptr, ptr %pC.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %uc, align 8
  store ptr %1, ptr %pCur, align 8
  %2 = load ptr, ptr %pCur, align 8
  %call = call i32 @sqlite3BtreePayloadSize(ptr noundef %2)
  %conv = zext i32 %call to i64
  store i64 %conv, ptr %nCellKey, align 8
  %3 = load i64, ptr %nCellKey, align 8
  %cmp = icmp sle i64 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr %nCellKey, align 8
  %cmp2 = icmp sgt i64 %4, 2147483647
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %res.addr, align 8
  store i32 0, ptr %5, align 4
  %call4 = call i32 @sqlite3CorruptError(i32 noundef 81365)
  store i32 %call4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %db.addr, align 8
  call void @sqlite3VdbeMemInit(ptr noundef %m, ptr noundef %6, i16 noundef zeroext 0)
  %7 = load ptr, ptr %pCur, align 8
  %8 = load i64, ptr %nCellKey, align 8
  %conv5 = trunc i64 %8 to i32
  %call6 = call i32 @sqlite3VdbeMemFromBtree(ptr noundef %7, i32 noundef 0, i32 noundef %conv5, ptr noundef %m)
  store i32 %call6, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %10 = load i32, ptr %rc, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 4
  %11 = load i32, ptr %n, align 4
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %m, i32 0, i32 5
  %12 = load ptr, ptr %z, align 8
  %13 = load ptr, ptr %pUnpacked.addr, align 8
  %call9 = call i32 @sqlite3VdbeRecordCompareWithSkip(i32 noundef %11, ptr noundef %12, ptr noundef %13, i32 noundef 0)
  %14 = load ptr, ptr %res.addr, align 8
  store i32 %call9, ptr %14, align 4
  call void @sqlite3VdbeMemRelease(ptr noundef %m)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemInit(ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeRecordCompareWithSkip(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
