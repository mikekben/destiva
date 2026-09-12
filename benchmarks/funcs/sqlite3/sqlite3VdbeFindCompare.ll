; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VdbeFindCompare(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %flags = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pKeyInfo = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pKeyInfo, align 8
  %nAllField = getelementptr inbounds nuw %struct.KeyInfo, ptr %1, i32 0, i32 3
  %2 = load i16, ptr %nAllField, align 8
  %conv = zext i16 %2 to i32
  %cmp = icmp sle i32 %conv, 13
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %aMem, align 8
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %4, i64 0
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx, i32 0, i32 1
  %5 = load i16, ptr %flags2, align 8
  %conv3 = zext i16 %5 to i32
  store i32 %conv3, ptr %flags, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %pKeyInfo4 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pKeyInfo4, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %aSortFlags, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx5, align 1
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %10 = load ptr, ptr %p.addr, align 8
  %pKeyInfo7 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pKeyInfo7, align 8
  %aSortFlags8 = getelementptr inbounds nuw %struct.KeyInfo, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %aSortFlags8, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %and = and i32 %conv10, 2
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then6
  store ptr @sqlite3VdbeRecordCompare, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then6
  %14 = load ptr, ptr %p.addr, align 8
  %r1 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %14, i32 0, i32 5
  store i8 1, ptr %r1, align 4
  %15 = load ptr, ptr %p.addr, align 8
  %r2 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %15, i32 0, i32 6
  store i8 -1, ptr %r2, align 1
  br label %if.end15

if.else:                                          ; preds = %if.then
  %16 = load ptr, ptr %p.addr, align 8
  %r113 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %16, i32 0, i32 5
  store i8 -1, ptr %r113, align 4
  %17 = load ptr, ptr %p.addr, align 8
  %r214 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %17, i32 0, i32 6
  store i8 1, ptr %r214, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end
  %18 = load i32, ptr %flags, align 4
  %and16 = and i32 %18, 4
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  store ptr @vdbeRecordCompareInt, ptr %retval, align 8
  br label %return

if.end19:                                         ; preds = %if.end15
  %19 = load i32, ptr %flags, align 4
  %and20 = and i32 %19, 57
  %cmp21 = icmp eq i32 %and20, 0
  br i1 %cmp21, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end19
  %20 = load ptr, ptr %p.addr, align 8
  %pKeyInfo23 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pKeyInfo23, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %21, i32 0, i32 6
  %arrayidx24 = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 0
  %22 = load ptr, ptr %arrayidx24, align 8
  %cmp25 = icmp eq ptr %22, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  store ptr @vdbeRecordCompareString, ptr %retval, align 8
  br label %return

if.end28:                                         ; preds = %land.lhs.true, %if.end19
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %entry
  store ptr @sqlite3VdbeRecordCompare, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end29, %if.then27, %if.then18, %if.then12
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeRecordCompare(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeRecordCompareInt(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeRecordCompareString(i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
