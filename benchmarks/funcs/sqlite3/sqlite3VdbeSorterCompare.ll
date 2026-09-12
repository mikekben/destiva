; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeRecordUnpack(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSorterCompare(ptr noundef %pCsr, ptr noundef %pVal, i32 noundef %nKeyCol, ptr noundef %pRes) #0 {
entry:
  %retval = alloca i32, align 4
  %pCsr.addr = alloca ptr, align 8
  %pVal.addr = alloca ptr, align 8
  %nKeyCol.addr = alloca i32, align 4
  %pRes.addr = alloca ptr, align 8
  %pSorter = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %pKeyInfo = alloca ptr, align 8
  %i = alloca i32, align 4
  %pKey = alloca ptr, align 8
  %nKey = alloca i32, align 4
  store ptr %pCsr, ptr %pCsr.addr, align 8
  store ptr %pVal, ptr %pVal.addr, align 8
  store i32 %nKeyCol, ptr %nKeyCol.addr, align 4
  store ptr %pRes, ptr %pRes.addr, align 8
  %0 = load ptr, ptr %pCsr.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %uc, align 8
  store ptr %1, ptr %pSorter, align 8
  %2 = load ptr, ptr %pSorter, align 8
  %pUnpacked = getelementptr inbounds nuw %struct.VdbeSorter, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %pUnpacked, align 8
  store ptr %3, ptr %r2, align 8
  %4 = load ptr, ptr %pCsr.addr, align 8
  %pKeyInfo1 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %4, i32 0, i32 13
  %5 = load ptr, ptr %pKeyInfo1, align 8
  store ptr %5, ptr %pKeyInfo, align 8
  %6 = load ptr, ptr %r2, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pKeyInfo, align 8
  %call = call ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef %7)
  %8 = load ptr, ptr %pSorter, align 8
  %pUnpacked2 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %8, i32 0, i32 8
  store ptr %call, ptr %pUnpacked2, align 8
  store ptr %call, ptr %r2, align 8
  %9 = load ptr, ptr %r2, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i32, ptr %nKeyCol.addr, align 4
  %conv = trunc i32 %10 to i16
  %11 = load ptr, ptr %r2, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %11, i32 0, i32 2
  store i16 %conv, ptr %nField, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %pSorter, align 8
  %call6 = call ptr @vdbeSorterRowkey(ptr noundef %12, ptr noundef %nKey)
  store ptr %call6, ptr %pKey, align 8
  %13 = load ptr, ptr %pKeyInfo, align 8
  %14 = load i32, ptr %nKey, align 4
  %15 = load ptr, ptr %pKey, align 8
  %16 = load ptr, ptr %r2, align 8
  call void @sqlite3VdbeRecordUnpack(ptr noundef %13, i32 noundef %14, ptr noundef %15, ptr noundef %16)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %nKeyCol.addr, align 4
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %r2, align 8
  %aMem = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %aMem, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %20, i64 %idxprom
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx, i32 0, i32 1
  %22 = load i16, ptr %flags, align 8
  %conv9 = zext i16 %22 to i32
  %and = and i32 %conv9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.body
  %23 = load ptr, ptr %pRes.addr, align 8
  store i32 -1, ptr %23, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %pVal.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %n, align 4
  %27 = load ptr, ptr %pVal.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %27, i32 0, i32 5
  %28 = load ptr, ptr %z, align 8
  %29 = load ptr, ptr %r2, align 8
  %call12 = call i32 @sqlite3VdbeRecordCompare(i32 noundef %26, ptr noundef %28, ptr noundef %29)
  %30 = load ptr, ptr %pRes.addr, align 8
  store i32 %call12, ptr %30, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then4
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeRecordCompare(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeSorterRowkey(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
