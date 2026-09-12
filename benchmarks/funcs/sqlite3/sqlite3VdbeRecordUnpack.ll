; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint32(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSerialGet(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeRecordUnpack(ptr noundef %pKeyInfo, i32 noundef %nKey, ptr noundef %pKey, ptr noundef %p) #0 {
entry:
  %pKeyInfo.addr = alloca ptr, align 8
  %nKey.addr = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %aKey = alloca ptr, align 8
  %d = alloca i32, align 4
  %idx = alloca i32, align 4
  %u = alloca i16, align 2
  %szHdr = alloca i32, align 4
  %pMem = alloca ptr, align 8
  %serial_type = alloca i32, align 4
  store ptr %pKeyInfo, ptr %pKeyInfo.addr, align 8
  store i32 %nKey, ptr %nKey.addr, align 4
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %pKey.addr, align 8
  store ptr %0, ptr %aKey, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %aMem, align 8
  store ptr %2, ptr %pMem, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %default_rc = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %3, i32 0, i32 3
  store i8 0, ptr %default_rc, align 2
  %4 = load ptr, ptr %aKey, align 8
  %5 = load i8, ptr %4, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load ptr, ptr %aKey, align 8
  %7 = load i8, ptr %6, align 1
  %conv2 = zext i8 %7 to i32
  store i32 %conv2, ptr %szHdr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load ptr, ptr %aKey, align 8
  %call = call zeroext i8 @sqlite3GetVarint32(ptr noundef %8, ptr noundef %szHdr)
  %conv3 = zext i8 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv3, %cond.false ]
  %conv4 = trunc i32 %cond to i8
  %conv5 = zext i8 %conv4 to i32
  store i32 %conv5, ptr %idx, align 4
  %9 = load i32, ptr %szHdr, align 4
  store i32 %9, ptr %d, align 4
  store i16 0, ptr %u, align 2
  br label %while.cond

while.cond:                                       ; preds = %if.end, %cond.end
  %10 = load i32, ptr %idx, align 4
  %11 = load i32, ptr %szHdr, align 4
  %cmp6 = icmp ult i32 %10, %11
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load i32, ptr %d, align 4
  %13 = load i32, ptr %nKey.addr, align 4
  %cmp8 = icmp ule i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp8, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load ptr, ptr %aKey, align 8
  %16 = load i32, ptr %idx, align 4
  %idxprom = zext i32 %16 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %15, i64 %idxprom
  %17 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %17 to i32
  %cmp11 = icmp slt i32 %conv10, 128
  br i1 %cmp11, label %cond.true13, label %cond.false17

cond.true13:                                      ; preds = %while.body
  %18 = load ptr, ptr %aKey, align 8
  %19 = load i32, ptr %idx, align 4
  %idxprom14 = zext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %18, i64 %idxprom14
  %20 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %20 to i32
  store i32 %conv16, ptr %serial_type, align 4
  br label %cond.end22

cond.false17:                                     ; preds = %while.body
  %21 = load ptr, ptr %aKey, align 8
  %22 = load i32, ptr %idx, align 4
  %idxprom18 = zext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %21, i64 %idxprom18
  %call20 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx19, ptr noundef %serial_type)
  %conv21 = zext i8 %call20 to i32
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false17, %cond.true13
  %cond23 = phi i32 [ 1, %cond.true13 ], [ %conv21, %cond.false17 ]
  %conv24 = trunc i32 %cond23 to i8
  %conv25 = zext i8 %conv24 to i32
  %23 = load i32, ptr %idx, align 4
  %add = add i32 %23, %conv25
  store i32 %add, ptr %idx, align 4
  %24 = load ptr, ptr %pKeyInfo.addr, align 8
  %enc = getelementptr inbounds nuw %struct.KeyInfo, ptr %24, i32 0, i32 1
  %25 = load i8, ptr %enc, align 4
  %26 = load ptr, ptr %pMem, align 8
  %enc26 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %26, i32 0, i32 2
  store i8 %25, ptr %enc26, align 2
  %27 = load ptr, ptr %pKeyInfo.addr, align 8
  %db = getelementptr inbounds nuw %struct.KeyInfo, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %db, align 8
  %29 = load ptr, ptr %pMem, align 8
  %db27 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %29, i32 0, i32 9
  store ptr %28, ptr %db27, align 8
  %30 = load ptr, ptr %pMem, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %30, i32 0, i32 7
  store i32 0, ptr %szMalloc, align 8
  %31 = load ptr, ptr %pMem, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %31, i32 0, i32 5
  store ptr null, ptr %z, align 8
  %32 = load ptr, ptr %aKey, align 8
  %33 = load i32, ptr %d, align 4
  %idxprom28 = zext i32 %33 to i64
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %32, i64 %idxprom28
  %34 = load i32, ptr %serial_type, align 4
  %35 = load ptr, ptr %pMem, align 8
  %call30 = call i32 @sqlite3VdbeSerialGet(ptr noundef %arrayidx29, i32 noundef %34, ptr noundef %35)
  %36 = load i32, ptr %d, align 4
  %add31 = add i32 %36, %call30
  store i32 %add31, ptr %d, align 4
  %37 = load ptr, ptr %pMem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.sqlite3_value, ptr %37, i32 1
  store ptr %incdec.ptr, ptr %pMem, align 8
  %38 = load i16, ptr %u, align 2
  %inc = add i16 %38, 1
  store i16 %inc, ptr %u, align 2
  %conv32 = zext i16 %inc to i32
  %39 = load ptr, ptr %p.addr, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %39, i32 0, i32 2
  %40 = load i16, ptr %nField, align 8
  %conv33 = zext i16 %40 to i32
  %cmp34 = icmp sge i32 %conv32, %conv33
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end22
  br label %while.end

if.end:                                           ; preds = %cond.end22
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %land.end
  %41 = load i32, ptr %d, align 4
  %42 = load i32, ptr %nKey.addr, align 4
  %cmp36 = icmp ugt i32 %41, %42
  br i1 %cmp36, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %while.end
  %43 = load i16, ptr %u, align 2
  %conv38 = zext i16 %43 to i32
  %tobool = icmp ne i32 %conv38, 0
  br i1 %tobool, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  %44 = load ptr, ptr %pMem, align 8
  %add.ptr = getelementptr inbounds %struct.sqlite3_value, ptr %44, i64 -1
  call void @sqlite3VdbeMemSetNull(ptr noundef %add.ptr)
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true, %while.end
  %45 = load i16, ptr %u, align 2
  %46 = load ptr, ptr %p.addr, align 8
  %nField41 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %46, i32 0, i32 2
  store i16 %45, ptr %nField41, align 8
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
