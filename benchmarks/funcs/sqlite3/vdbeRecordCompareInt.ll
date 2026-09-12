; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeRecordCompare(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeRecordCompareInt(i32 noundef %nKey1, ptr noundef %pKey1, ptr noundef %pPKey2) #0 {
entry:
  %retval = alloca i32, align 4
  %nKey1.addr = alloca i32, align 4
  %pKey1.addr = alloca ptr, align 8
  %pPKey2.addr = alloca ptr, align 8
  %aKey = alloca ptr, align 8
  %serial_type = alloca i32, align 4
  %res = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i64, align 8
  %v = alloca i64, align 8
  %lhs = alloca i64, align 8
  store i32 %nKey1, ptr %nKey1.addr, align 4
  store ptr %pKey1, ptr %pKey1.addr, align 8
  store ptr %pPKey2, ptr %pPKey2.addr, align 8
  %0 = load ptr, ptr %pKey1.addr, align 8
  %1 = load ptr, ptr %pKey1.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 63
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %aKey, align 8
  %3 = load ptr, ptr %pKey1.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %4 to i32
  store i32 %conv2, ptr %serial_type, align 4
  %5 = load i32, ptr %serial_type, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb11
    i32 4, label %sw.bb22
    i32 5, label %sw.bb38
    i32 6, label %sw.bb65
    i32 8, label %sw.bb102
    i32 9, label %sw.bb103
    i32 0, label %sw.bb104
    i32 7, label %sw.bb104
  ]

sw.bb:                                            ; preds = %entry
  %6 = load ptr, ptr %aKey, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %7 to i64
  store i64 %conv4, ptr %lhs, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %8 = load ptr, ptr %aKey, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %9 to i32
  %mul = mul nsw i32 256, %conv7
  %10 = load ptr, ptr %aKey, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %10, i64 1
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %or = or i32 %mul, %conv9
  %conv10 = sext i32 %or to i64
  store i64 %conv10, ptr %lhs, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %12 = load ptr, ptr %aKey, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %13 to i32
  %mul14 = mul nsw i32 65536, %conv13
  %14 = load ptr, ptr %aKey, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %shl = shl i32 %conv16, 8
  %or17 = or i32 %mul14, %shl
  %16 = load ptr, ptr %aKey, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  %or20 = or i32 %or17, %conv19
  %conv21 = sext i32 %or20 to i64
  store i64 %conv21, ptr %lhs, align 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  %18 = load ptr, ptr %aKey, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %19 to i32
  %shl25 = shl i32 %conv24, 24
  %20 = load ptr, ptr %aKey, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %21 to i32
  %shl28 = shl i32 %conv27, 16
  %or29 = or i32 %shl25, %shl28
  %22 = load ptr, ptr %aKey, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %23 to i32
  %shl32 = shl i32 %conv31, 8
  %or33 = or i32 %or29, %shl32
  %24 = load ptr, ptr %aKey, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %24, i64 3
  %25 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %25 to i32
  %or36 = or i32 %or33, %conv35
  store i32 %or36, ptr %y, align 4
  %26 = load i32, ptr %y, align 4
  %conv37 = sext i32 %26 to i64
  store i64 %conv37, ptr %lhs, align 8
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %27 = load ptr, ptr %aKey, align 8
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 2
  %arrayidx39 = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %28 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %28 to i32
  %shl41 = shl i32 %conv40, 24
  %29 = load ptr, ptr %aKey, align 8
  %add.ptr42 = getelementptr inbounds i8, ptr %29, i64 2
  %arrayidx43 = getelementptr inbounds i8, ptr %add.ptr42, i64 1
  %30 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %30 to i32
  %shl45 = shl i32 %conv44, 16
  %or46 = or i32 %shl41, %shl45
  %31 = load ptr, ptr %aKey, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %31, i64 2
  %arrayidx48 = getelementptr inbounds i8, ptr %add.ptr47, i64 2
  %32 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %32 to i32
  %shl50 = shl i32 %conv49, 8
  %or51 = or i32 %or46, %shl50
  %33 = load ptr, ptr %aKey, align 8
  %add.ptr52 = getelementptr inbounds i8, ptr %33, i64 2
  %arrayidx53 = getelementptr inbounds i8, ptr %add.ptr52, i64 3
  %34 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %34 to i32
  %or55 = or i32 %or51, %conv54
  %conv56 = zext i32 %or55 to i64
  %35 = load ptr, ptr %aKey, align 8
  %arrayidx57 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx57, align 1
  %conv58 = sext i8 %36 to i32
  %mul59 = mul nsw i32 256, %conv58
  %37 = load ptr, ptr %aKey, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %37, i64 1
  %38 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %38 to i32
  %or62 = or i32 %mul59, %conv61
  %conv63 = sext i32 %or62 to i64
  %mul64 = mul nsw i64 4294967296, %conv63
  %add = add nsw i64 %conv56, %mul64
  store i64 %add, ptr %lhs, align 8
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  %39 = load ptr, ptr %aKey, align 8
  %arrayidx66 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx66, align 1
  %conv67 = zext i8 %40 to i32
  %shl68 = shl i32 %conv67, 24
  %41 = load ptr, ptr %aKey, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %41, i64 1
  %42 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %42 to i32
  %shl71 = shl i32 %conv70, 16
  %or72 = or i32 %shl68, %shl71
  %43 = load ptr, ptr %aKey, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %43, i64 2
  %44 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %44 to i32
  %shl75 = shl i32 %conv74, 8
  %or76 = or i32 %or72, %shl75
  %45 = load ptr, ptr %aKey, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %45, i64 3
  %46 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %46 to i32
  %or79 = or i32 %or76, %conv78
  %conv80 = zext i32 %or79 to i64
  store i64 %conv80, ptr %x, align 8
  %47 = load i64, ptr %x, align 8
  %shl81 = shl i64 %47, 32
  %48 = load ptr, ptr %aKey, align 8
  %add.ptr82 = getelementptr inbounds i8, ptr %48, i64 4
  %arrayidx83 = getelementptr inbounds i8, ptr %add.ptr82, i64 0
  %49 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %49 to i32
  %shl85 = shl i32 %conv84, 24
  %50 = load ptr, ptr %aKey, align 8
  %add.ptr86 = getelementptr inbounds i8, ptr %50, i64 4
  %arrayidx87 = getelementptr inbounds i8, ptr %add.ptr86, i64 1
  %51 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %51 to i32
  %shl89 = shl i32 %conv88, 16
  %or90 = or i32 %shl85, %shl89
  %52 = load ptr, ptr %aKey, align 8
  %add.ptr91 = getelementptr inbounds i8, ptr %52, i64 4
  %arrayidx92 = getelementptr inbounds i8, ptr %add.ptr91, i64 2
  %53 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %53 to i32
  %shl94 = shl i32 %conv93, 8
  %or95 = or i32 %or90, %shl94
  %54 = load ptr, ptr %aKey, align 8
  %add.ptr96 = getelementptr inbounds i8, ptr %54, i64 4
  %arrayidx97 = getelementptr inbounds i8, ptr %add.ptr96, i64 3
  %55 = load i8, ptr %arrayidx97, align 1
  %conv98 = zext i8 %55 to i32
  %or99 = or i32 %or95, %conv98
  %conv100 = zext i32 %or99 to i64
  %or101 = or i64 %shl81, %conv100
  store i64 %or101, ptr %x, align 8
  %56 = load i64, ptr %x, align 8
  store i64 %56, ptr %lhs, align 8
  br label %sw.epilog

sw.bb102:                                         ; preds = %entry
  store i64 0, ptr %lhs, align 8
  br label %sw.epilog

sw.bb103:                                         ; preds = %entry
  store i64 1, ptr %lhs, align 8
  br label %sw.epilog

sw.bb104:                                         ; preds = %entry, %entry
  %57 = load i32, ptr %nKey1.addr, align 4
  %58 = load ptr, ptr %pKey1.addr, align 8
  %59 = load ptr, ptr %pPKey2.addr, align 8
  %call = call i32 @sqlite3VdbeRecordCompare(i32 noundef %57, ptr noundef %58, ptr noundef %59)
  store i32 %call, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  %60 = load i32, ptr %nKey1.addr, align 4
  %61 = load ptr, ptr %pKey1.addr, align 8
  %62 = load ptr, ptr %pPKey2.addr, align 8
  %call105 = call i32 @sqlite3VdbeRecordCompare(i32 noundef %60, ptr noundef %61, ptr noundef %62)
  store i32 %call105, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb103, %sw.bb102, %sw.bb65, %sw.bb38, %sw.bb22, %sw.bb11, %sw.bb5, %sw.bb
  %63 = load ptr, ptr %pPKey2.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %aMem, align 8
  %arrayidx106 = getelementptr inbounds %struct.sqlite3_value, ptr %64, i64 0
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx106, i32 0, i32 0
  %65 = load i64, ptr %u, align 8
  store i64 %65, ptr %v, align 8
  %66 = load i64, ptr %v, align 8
  %67 = load i64, ptr %lhs, align 8
  %cmp = icmp sgt i64 %66, %67
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %68 = load ptr, ptr %pPKey2.addr, align 8
  %r1 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %68, i32 0, i32 5
  %69 = load i8, ptr %r1, align 4
  %conv108 = sext i8 %69 to i32
  store i32 %conv108, ptr %res, align 4
  br label %if.end122

if.else:                                          ; preds = %sw.epilog
  %70 = load i64, ptr %v, align 8
  %71 = load i64, ptr %lhs, align 8
  %cmp109 = icmp slt i64 %70, %71
  br i1 %cmp109, label %if.then111, label %if.else113

if.then111:                                       ; preds = %if.else
  %72 = load ptr, ptr %pPKey2.addr, align 8
  %r2 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %72, i32 0, i32 6
  %73 = load i8, ptr %r2, align 1
  %conv112 = sext i8 %73 to i32
  store i32 %conv112, ptr %res, align 4
  br label %if.end121

if.else113:                                       ; preds = %if.else
  %74 = load ptr, ptr %pPKey2.addr, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %74, i32 0, i32 2
  %75 = load i16, ptr %nField, align 8
  %conv114 = zext i16 %75 to i32
  %cmp115 = icmp sgt i32 %conv114, 1
  br i1 %cmp115, label %if.then117, label %if.else119

if.then117:                                       ; preds = %if.else113
  %76 = load i32, ptr %nKey1.addr, align 4
  %77 = load ptr, ptr %pKey1.addr, align 8
  %78 = load ptr, ptr %pPKey2.addr, align 8
  %call118 = call i32 @sqlite3VdbeRecordCompareWithSkip(i32 noundef %76, ptr noundef %77, ptr noundef %78, i32 noundef 1)
  store i32 %call118, ptr %res, align 4
  br label %if.end

if.else119:                                       ; preds = %if.else113
  %79 = load ptr, ptr %pPKey2.addr, align 8
  %default_rc = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %79, i32 0, i32 3
  %80 = load i8, ptr %default_rc, align 2
  %conv120 = sext i8 %80 to i32
  store i32 %conv120, ptr %res, align 4
  %81 = load ptr, ptr %pPKey2.addr, align 8
  %eqSeen = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %81, i32 0, i32 7
  store i8 1, ptr %eqSeen, align 2
  br label %if.end

if.end:                                           ; preds = %if.else119, %if.then117
  br label %if.end121

if.end121:                                        ; preds = %if.end, %if.then111
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.then
  %82 = load i32, ptr %res, align 4
  store i32 %82, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end122, %sw.default, %sw.bb104
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
}

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
