; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint32(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeRecordCompareString(i32 noundef %nKey1, ptr noundef %pKey1, ptr noundef %pPKey2) #1 {
entry:
  %retval = alloca i32, align 4
  %nKey1.addr = alloca i32, align 4
  %pKey1.addr = alloca ptr, align 8
  %pPKey2.addr = alloca ptr, align 8
  %aKey1 = alloca ptr, align 8
  %serial_type = alloca i32, align 4
  %res = alloca i32, align 4
  %nCmp = alloca i32, align 4
  %nStr = alloca i32, align 4
  %szHdr = alloca i32, align 4
  store i32 %nKey1, ptr %nKey1.addr, align 4
  store ptr %pKey1, ptr %pKey1.addr, align 8
  store ptr %pPKey2, ptr %pPKey2.addr, align 8
  %0 = load ptr, ptr %pKey1.addr, align 8
  store ptr %0, ptr %aKey1, align 8
  %1 = load ptr, ptr %aKey1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 1
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %aKey1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  store i32 %conv3, ptr %serial_type, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load ptr, ptr %aKey1, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 1
  %call = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx4, ptr noundef %serial_type)
  %conv5 = zext i8 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv5, %cond.false ]
  %conv6 = trunc i32 %cond to i8
  %6 = load i32, ptr %serial_type, align 4
  %cmp7 = icmp slt i32 %6, 12
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %7 = load ptr, ptr %pPKey2.addr, align 8
  %r1 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %7, i32 0, i32 5
  %8 = load i8, ptr %r1, align 4
  %conv9 = sext i8 %8 to i32
  store i32 %conv9, ptr %res, align 4
  br label %if.end76

if.else:                                          ; preds = %cond.end
  %9 = load i32, ptr %serial_type, align 4
  %and = and i32 %9, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.else
  %10 = load ptr, ptr %pPKey2.addr, align 8
  %r2 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %10, i32 0, i32 6
  %11 = load i8, ptr %r2, align 1
  %conv11 = sext i8 %11 to i32
  store i32 %conv11, ptr %res, align 4
  br label %if.end75

if.else12:                                        ; preds = %if.else
  %12 = load ptr, ptr %aKey1, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  store i32 %conv14, ptr %szHdr, align 4
  %14 = load i32, ptr %serial_type, align 4
  %sub = sub nsw i32 %14, 12
  %div = sdiv i32 %sub, 2
  store i32 %div, ptr %nStr, align 4
  %15 = load i32, ptr %szHdr, align 4
  %16 = load i32, ptr %nStr, align 4
  %add = add nsw i32 %15, %16
  %17 = load i32, ptr %nKey1.addr, align 4
  %cmp15 = icmp sgt i32 %add, %17
  br i1 %cmp15, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.else12
  %call18 = call i32 @sqlite3CorruptError(i32 noundef 81177)
  %conv19 = trunc i32 %call18 to i8
  %18 = load ptr, ptr %pPKey2.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %18, i32 0, i32 4
  store i8 %conv19, ptr %errCode, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else12
  %19 = load ptr, ptr %pPKey2.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %aMem, align 8
  %arrayidx20 = getelementptr inbounds %struct.sqlite3_value, ptr %20, i64 0
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx20, i32 0, i32 4
  %21 = load i32, ptr %n, align 4
  %22 = load i32, ptr %nStr, align 4
  %cmp21 = icmp slt i32 %21, %22
  br i1 %cmp21, label %cond.true23, label %cond.false27

cond.true23:                                      ; preds = %if.end
  %23 = load ptr, ptr %pPKey2.addr, align 8
  %aMem24 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %aMem24, align 8
  %arrayidx25 = getelementptr inbounds %struct.sqlite3_value, ptr %24, i64 0
  %n26 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx25, i32 0, i32 4
  %25 = load i32, ptr %n26, align 4
  br label %cond.end28

cond.false27:                                     ; preds = %if.end
  %26 = load i32, ptr %nStr, align 4
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.true23
  %cond29 = phi i32 [ %25, %cond.true23 ], [ %26, %cond.false27 ]
  store i32 %cond29, ptr %nCmp, align 4
  %27 = load ptr, ptr %aKey1, align 8
  %28 = load i32, ptr %szHdr, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %27, i64 %idxprom
  %29 = load ptr, ptr %pPKey2.addr, align 8
  %aMem31 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %aMem31, align 8
  %arrayidx32 = getelementptr inbounds %struct.sqlite3_value, ptr %30, i64 0
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx32, i32 0, i32 5
  %31 = load ptr, ptr %z, align 8
  %32 = load i32, ptr %nCmp, align 4
  %conv33 = sext i32 %32 to i64
  %call34 = call i32 @memcmp(ptr noundef %arrayidx30, ptr noundef %31, i64 noundef %conv33) #2
  store i32 %call34, ptr %res, align 4
  %33 = load i32, ptr %res, align 4
  %cmp35 = icmp sgt i32 %33, 0
  br i1 %cmp35, label %if.then37, label %if.else40

if.then37:                                        ; preds = %cond.end28
  %34 = load ptr, ptr %pPKey2.addr, align 8
  %r238 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %34, i32 0, i32 6
  %35 = load i8, ptr %r238, align 1
  %conv39 = sext i8 %35 to i32
  store i32 %conv39, ptr %res, align 4
  br label %if.end74

if.else40:                                        ; preds = %cond.end28
  %36 = load i32, ptr %res, align 4
  %cmp41 = icmp slt i32 %36, 0
  br i1 %cmp41, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.else40
  %37 = load ptr, ptr %pPKey2.addr, align 8
  %r144 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %37, i32 0, i32 5
  %38 = load i8, ptr %r144, align 4
  %conv45 = sext i8 %38 to i32
  store i32 %conv45, ptr %res, align 4
  br label %if.end73

if.else46:                                        ; preds = %if.else40
  %39 = load i32, ptr %nStr, align 4
  %40 = load ptr, ptr %pPKey2.addr, align 8
  %aMem47 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %aMem47, align 8
  %arrayidx48 = getelementptr inbounds %struct.sqlite3_value, ptr %41, i64 0
  %n49 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx48, i32 0, i32 4
  %42 = load i32, ptr %n49, align 4
  %sub50 = sub nsw i32 %39, %42
  store i32 %sub50, ptr %res, align 4
  %43 = load i32, ptr %res, align 4
  %cmp51 = icmp eq i32 %43, 0
  br i1 %cmp51, label %if.then53, label %if.else62

if.then53:                                        ; preds = %if.else46
  %44 = load ptr, ptr %pPKey2.addr, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %44, i32 0, i32 2
  %45 = load i16, ptr %nField, align 8
  %conv54 = zext i16 %45 to i32
  %cmp55 = icmp sgt i32 %conv54, 1
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.then53
  %46 = load i32, ptr %nKey1.addr, align 4
  %47 = load ptr, ptr %pKey1.addr, align 8
  %48 = load ptr, ptr %pPKey2.addr, align 8
  %call58 = call i32 @sqlite3VdbeRecordCompareWithSkip(i32 noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef 1)
  store i32 %call58, ptr %res, align 4
  br label %if.end61

if.else59:                                        ; preds = %if.then53
  %49 = load ptr, ptr %pPKey2.addr, align 8
  %default_rc = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %49, i32 0, i32 3
  %50 = load i8, ptr %default_rc, align 2
  %conv60 = sext i8 %50 to i32
  store i32 %conv60, ptr %res, align 4
  %51 = load ptr, ptr %pPKey2.addr, align 8
  %eqSeen = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %51, i32 0, i32 7
  store i8 1, ptr %eqSeen, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  br label %if.end72

if.else62:                                        ; preds = %if.else46
  %52 = load i32, ptr %res, align 4
  %cmp63 = icmp sgt i32 %52, 0
  br i1 %cmp63, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.else62
  %53 = load ptr, ptr %pPKey2.addr, align 8
  %r266 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %53, i32 0, i32 6
  %54 = load i8, ptr %r266, align 1
  %conv67 = sext i8 %54 to i32
  store i32 %conv67, ptr %res, align 4
  br label %if.end71

if.else68:                                        ; preds = %if.else62
  %55 = load ptr, ptr %pPKey2.addr, align 8
  %r169 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %55, i32 0, i32 5
  %56 = load i8, ptr %r169, align 4
  %conv70 = sext i8 %56 to i32
  store i32 %conv70, ptr %res, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then65
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end61
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then43
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then37
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then10
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then
  %57 = load i32, ptr %res, align 4
  store i32 %57, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then17
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeRecordCompareWithSkip(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
