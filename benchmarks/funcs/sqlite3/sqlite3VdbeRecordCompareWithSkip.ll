; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint32(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSerialTypeLen(i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSerialGet(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VarintLen(i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IntFloatCompare(i64 noundef, double noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeCompareMemString(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @isAllZero(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeRecordCompareWithSkip(i32 noundef %nKey1, ptr noundef %pKey1, ptr noundef %pPKey2, i32 noundef %bSkip) #1 {
entry:
  %retval = alloca i32, align 4
  %nKey1.addr = alloca i32, align 4
  %pKey1.addr = alloca ptr, align 8
  %pPKey2.addr = alloca ptr, align 8
  %bSkip.addr = alloca i32, align 4
  %d1 = alloca i32, align 4
  %i = alloca i32, align 4
  %szHdr1 = alloca i32, align 4
  %idx1 = alloca i32, align 4
  %rc = alloca i32, align 4
  %pRhs = alloca ptr, align 8
  %pKeyInfo = alloca ptr, align 8
  %aKey1 = alloca ptr, align 8
  %mem1 = alloca %struct.sqlite3_value, align 8
  %s1 = alloca i32, align 4
  %serial_type = alloca i32, align 4
  %lhs = alloca i64, align 8
  %rhs = alloca i64, align 8
  %nCmp = alloca i32, align 4
  %nStr = alloca i32, align 4
  %nCmp252 = alloca i32, align 4
  %sortFlags = alloca i32, align 4
  store i32 %nKey1, ptr %nKey1.addr, align 4
  store ptr %pKey1, ptr %pKey1.addr, align 8
  store ptr %pPKey2, ptr %pPKey2.addr, align 8
  store i32 %bSkip, ptr %bSkip.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPKey2.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aMem, align 8
  store ptr %1, ptr %pRhs, align 8
  %2 = load ptr, ptr %pKey1.addr, align 8
  store ptr %2, ptr %aKey1, align 8
  %3 = load i32, ptr %bSkip.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %aKey1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load ptr, ptr %aKey1, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 1
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  store i32 %conv3, ptr %s1, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %8 = load ptr, ptr %aKey1, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %8, i64 1
  %call = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx4, ptr noundef %s1)
  %conv5 = zext i8 %call to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %conv5, %cond.false ]
  %conv6 = trunc i32 %cond to i8
  %conv7 = zext i8 %conv6 to i32
  %add = add nsw i32 1, %conv7
  store i32 %add, ptr %idx1, align 4
  %9 = load ptr, ptr %aKey1, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  store i32 %conv9, ptr %szHdr1, align 4
  %11 = load i32, ptr %szHdr1, align 4
  %12 = load i32, ptr %s1, align 4
  %call10 = call i32 @sqlite3VdbeSerialTypeLen(i32 noundef %12)
  %add11 = add i32 %11, %call10
  store i32 %add11, ptr %d1, align 4
  store i32 1, ptr %i, align 4
  %13 = load ptr, ptr %pRhs, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %pRhs, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %aKey1, align 8
  %15 = load i8, ptr %14, align 1
  %conv12 = zext i8 %15 to i32
  %cmp13 = icmp slt i32 %conv12, 128
  br i1 %cmp13, label %cond.true15, label %cond.false17

cond.true15:                                      ; preds = %if.else
  %16 = load ptr, ptr %aKey1, align 8
  %17 = load i8, ptr %16, align 1
  %conv16 = zext i8 %17 to i32
  store i32 %conv16, ptr %szHdr1, align 4
  br label %cond.end20

cond.false17:                                     ; preds = %if.else
  %18 = load ptr, ptr %aKey1, align 8
  %call18 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %18, ptr noundef %szHdr1)
  %conv19 = zext i8 %call18 to i32
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false17, %cond.true15
  %cond21 = phi i32 [ 1, %cond.true15 ], [ %conv19, %cond.false17 ]
  %conv22 = trunc i32 %cond21 to i8
  %conv23 = zext i8 %conv22 to i32
  store i32 %conv23, ptr %idx1, align 4
  %19 = load i32, ptr %szHdr1, align 4
  store i32 %19, ptr %d1, align 4
  store i32 0, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end20, %cond.end
  %20 = load i32, ptr %d1, align 4
  %21 = load i32, ptr %nKey1.addr, align 4
  %cmp24 = icmp ugt i32 %20, %21
  br i1 %cmp24, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end
  %call27 = call i32 @sqlite3CorruptError(i32 noundef 80878)
  %conv28 = trunc i32 %call27 to i8
  %22 = load ptr, ptr %pPKey2.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %22, i32 0, i32 4
  store i8 %conv28, ptr %errCode, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end29
  %23 = load ptr, ptr %pRhs, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 1
  %24 = load i16, ptr %flags, align 8
  %conv30 = zext i16 %24 to i32
  %and = and i32 %conv30, 36
  %tobool31 = icmp ne i32 %and, 0
  br i1 %tobool31, label %if.then32, label %if.else68

if.then32:                                        ; preds = %do.body
  %25 = load ptr, ptr %aKey1, align 8
  %26 = load i32, ptr %idx1, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom
  %27 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %27 to i32
  store i32 %conv34, ptr %serial_type, align 4
  %28 = load i32, ptr %serial_type, align 4
  %cmp35 = icmp uge i32 %28, 10
  br i1 %cmp35, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.then32
  store i32 1, ptr %rc, align 4
  br label %if.end67

if.else38:                                        ; preds = %if.then32
  %29 = load i32, ptr %serial_type, align 4
  %cmp39 = icmp eq i32 %29, 0
  br i1 %cmp39, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.else38
  store i32 -1, ptr %rc, align 4
  br label %if.end66

if.else42:                                        ; preds = %if.else38
  %30 = load i32, ptr %serial_type, align 4
  %cmp43 = icmp eq i32 %30, 7
  br i1 %cmp43, label %if.then45, label %if.else51

if.then45:                                        ; preds = %if.else42
  %31 = load ptr, ptr %aKey1, align 8
  %32 = load i32, ptr %d1, align 4
  %idxprom46 = zext i32 %32 to i64
  %arrayidx47 = getelementptr inbounds nuw i8, ptr %31, i64 %idxprom46
  %33 = load i32, ptr %serial_type, align 4
  %call48 = call i32 @sqlite3VdbeSerialGet(ptr noundef %arrayidx47, i32 noundef %33, ptr noundef %mem1)
  %34 = load ptr, ptr %pRhs, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %34, i32 0, i32 0
  %35 = load i64, ptr %u, align 8
  %u49 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 0
  %36 = load double, ptr %u49, align 8
  %call50 = call i32 @sqlite3IntFloatCompare(i64 noundef %35, double noundef %36)
  %sub = sub nsw i32 0, %call50
  store i32 %sub, ptr %rc, align 4
  br label %if.end65

if.else51:                                        ; preds = %if.else42
  %37 = load i32, ptr %serial_type, align 4
  %38 = load ptr, ptr %aKey1, align 8
  %39 = load i32, ptr %d1, align 4
  %idxprom52 = zext i32 %39 to i64
  %arrayidx53 = getelementptr inbounds nuw i8, ptr %38, i64 %idxprom52
  %call54 = call i64 @vdbeRecordDecodeInt(i32 noundef %37, ptr noundef %arrayidx53)
  store i64 %call54, ptr %lhs, align 8
  %40 = load ptr, ptr %pRhs, align 8
  %u55 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %40, i32 0, i32 0
  %41 = load i64, ptr %u55, align 8
  store i64 %41, ptr %rhs, align 8
  %42 = load i64, ptr %lhs, align 8
  %43 = load i64, ptr %rhs, align 8
  %cmp56 = icmp slt i64 %42, %43
  br i1 %cmp56, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.else51
  store i32 -1, ptr %rc, align 4
  br label %if.end64

if.else59:                                        ; preds = %if.else51
  %44 = load i64, ptr %lhs, align 8
  %45 = load i64, ptr %rhs, align 8
  %cmp60 = icmp sgt i64 %44, %45
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.else59
  store i32 1, ptr %rc, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.else59
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then58
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then45
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then41
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then37
  br label %if.end284

if.else68:                                        ; preds = %do.body
  %46 = load ptr, ptr %pRhs, align 8
  %flags69 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %46, i32 0, i32 1
  %47 = load i16, ptr %flags69, align 8
  %conv70 = zext i16 %47 to i32
  %and71 = and i32 %conv70, 8
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then73, label %if.else111

if.then73:                                        ; preds = %if.else68
  %48 = load ptr, ptr %aKey1, align 8
  %49 = load i32, ptr %idx1, align 4
  %idxprom74 = zext i32 %49 to i64
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %48, i64 %idxprom74
  %50 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %50 to i32
  store i32 %conv76, ptr %serial_type, align 4
  %51 = load i32, ptr %serial_type, align 4
  %cmp77 = icmp uge i32 %51, 10
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.then73
  store i32 1, ptr %rc, align 4
  br label %if.end110

if.else80:                                        ; preds = %if.then73
  %52 = load i32, ptr %serial_type, align 4
  %cmp81 = icmp eq i32 %52, 0
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %if.else80
  store i32 -1, ptr %rc, align 4
  br label %if.end109

if.else84:                                        ; preds = %if.else80
  %53 = load ptr, ptr %aKey1, align 8
  %54 = load i32, ptr %d1, align 4
  %idxprom85 = zext i32 %54 to i64
  %arrayidx86 = getelementptr inbounds nuw i8, ptr %53, i64 %idxprom85
  %55 = load i32, ptr %serial_type, align 4
  %call87 = call i32 @sqlite3VdbeSerialGet(ptr noundef %arrayidx86, i32 noundef %55, ptr noundef %mem1)
  %56 = load i32, ptr %serial_type, align 4
  %cmp88 = icmp eq i32 %56, 7
  br i1 %cmp88, label %if.then90, label %if.else104

if.then90:                                        ; preds = %if.else84
  %u91 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 0
  %57 = load double, ptr %u91, align 8
  %58 = load ptr, ptr %pRhs, align 8
  %u92 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %58, i32 0, i32 0
  %59 = load double, ptr %u92, align 8
  %cmp93 = fcmp olt double %57, %59
  br i1 %cmp93, label %if.then95, label %if.else96

if.then95:                                        ; preds = %if.then90
  store i32 -1, ptr %rc, align 4
  br label %if.end103

if.else96:                                        ; preds = %if.then90
  %u97 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 0
  %60 = load double, ptr %u97, align 8
  %61 = load ptr, ptr %pRhs, align 8
  %u98 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %61, i32 0, i32 0
  %62 = load double, ptr %u98, align 8
  %cmp99 = fcmp ogt double %60, %62
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.else96
  store i32 1, ptr %rc, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.else96
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then95
  br label %if.end108

if.else104:                                       ; preds = %if.else84
  %u105 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 0
  %63 = load i64, ptr %u105, align 8
  %64 = load ptr, ptr %pRhs, align 8
  %u106 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %64, i32 0, i32 0
  %65 = load double, ptr %u106, align 8
  %call107 = call i32 @sqlite3IntFloatCompare(i64 noundef %63, double noundef %65)
  store i32 %call107, ptr %rc, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.else104, %if.end103
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.then83
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.then79
  br label %if.end283

if.else111:                                       ; preds = %if.else68
  %66 = load ptr, ptr %pRhs, align 8
  %flags112 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %66, i32 0, i32 1
  %67 = load i16, ptr %flags112, align 8
  %conv113 = zext i16 %67 to i32
  %and114 = and i32 %conv113, 2
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then116, label %if.else197

if.then116:                                       ; preds = %if.else111
  %68 = load ptr, ptr %aKey1, align 8
  %69 = load i32, ptr %idx1, align 4
  %idxprom117 = zext i32 %69 to i64
  %arrayidx118 = getelementptr inbounds nuw i8, ptr %68, i64 %idxprom117
  %70 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %70 to i32
  %cmp120 = icmp slt i32 %conv119, 128
  br i1 %cmp120, label %cond.true122, label %cond.false126

cond.true122:                                     ; preds = %if.then116
  %71 = load ptr, ptr %aKey1, align 8
  %72 = load i32, ptr %idx1, align 4
  %idxprom123 = zext i32 %72 to i64
  %arrayidx124 = getelementptr inbounds nuw i8, ptr %71, i64 %idxprom123
  %73 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %73 to i32
  store i32 %conv125, ptr %serial_type, align 4
  br label %cond.end131

cond.false126:                                    ; preds = %if.then116
  %74 = load ptr, ptr %aKey1, align 8
  %75 = load i32, ptr %idx1, align 4
  %idxprom127 = zext i32 %75 to i64
  %arrayidx128 = getelementptr inbounds nuw i8, ptr %74, i64 %idxprom127
  %call129 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx128, ptr noundef %serial_type)
  %conv130 = zext i8 %call129 to i32
  br label %cond.end131

cond.end131:                                      ; preds = %cond.false126, %cond.true122
  %cond132 = phi i32 [ 1, %cond.true122 ], [ %conv130, %cond.false126 ]
  %conv133 = trunc i32 %cond132 to i8
  %76 = load i32, ptr %serial_type, align 4
  %cmp134 = icmp ult i32 %76, 12
  br i1 %cmp134, label %if.then136, label %if.else137

if.then136:                                       ; preds = %cond.end131
  store i32 -1, ptr %rc, align 4
  br label %if.end196

if.else137:                                       ; preds = %cond.end131
  %77 = load i32, ptr %serial_type, align 4
  %and138 = and i32 %77, 1
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %if.else141, label %if.then140

if.then140:                                       ; preds = %if.else137
  store i32 1, ptr %rc, align 4
  br label %if.end195

if.else141:                                       ; preds = %if.else137
  %78 = load i32, ptr %serial_type, align 4
  %sub142 = sub i32 %78, 12
  %div = udiv i32 %sub142, 2
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 4
  store i32 %div, ptr %n, align 4
  %79 = load i32, ptr %d1, align 4
  %n143 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 4
  %80 = load i32, ptr %n143, align 4
  %add144 = add i32 %79, %80
  %81 = load i32, ptr %nKey1.addr, align 4
  %cmp145 = icmp ugt i32 %add144, %81
  br i1 %cmp145, label %if.then151, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else141
  %82 = load ptr, ptr %pPKey2.addr, align 8
  %pKeyInfo147 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %pKeyInfo147, align 8
  store ptr %83, ptr %pKeyInfo, align 8
  %nAllField = getelementptr inbounds nuw %struct.KeyInfo, ptr %83, i32 0, i32 3
  %84 = load i16, ptr %nAllField, align 8
  %conv148 = zext i16 %84 to i32
  %85 = load i32, ptr %i, align 4
  %cmp149 = icmp sle i32 %conv148, %85
  br i1 %cmp149, label %if.then151, label %if.else155

if.then151:                                       ; preds = %lor.lhs.false, %if.else141
  %call152 = call i32 @sqlite3CorruptError(i32 noundef 80955)
  %conv153 = trunc i32 %call152 to i8
  %86 = load ptr, ptr %pPKey2.addr, align 8
  %errCode154 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %86, i32 0, i32 4
  store i8 %conv153, ptr %errCode154, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.else155:                                       ; preds = %lor.lhs.false
  %87 = load ptr, ptr %pKeyInfo, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %87, i32 0, i32 6
  %88 = load i32, ptr %i, align 4
  %idxprom156 = sext i32 %88 to i64
  %arrayidx157 = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom156
  %89 = load ptr, ptr %arrayidx157, align 8
  %tobool158 = icmp ne ptr %89, null
  br i1 %tobool158, label %if.then159, label %if.else170

if.then159:                                       ; preds = %if.else155
  %90 = load ptr, ptr %pKeyInfo, align 8
  %enc = getelementptr inbounds nuw %struct.KeyInfo, ptr %90, i32 0, i32 1
  %91 = load i8, ptr %enc, align 4
  %enc160 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 2
  store i8 %91, ptr %enc160, align 2
  %92 = load ptr, ptr %pKeyInfo, align 8
  %db = getelementptr inbounds nuw %struct.KeyInfo, ptr %92, i32 0, i32 4
  %93 = load ptr, ptr %db, align 8
  %db161 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 9
  store ptr %93, ptr %db161, align 8
  %flags162 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 1
  store i16 2, ptr %flags162, align 8
  %94 = load ptr, ptr %aKey1, align 8
  %95 = load i32, ptr %d1, align 4
  %idxprom163 = zext i32 %95 to i64
  %arrayidx164 = getelementptr inbounds nuw i8, ptr %94, i64 %idxprom163
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 5
  store ptr %arrayidx164, ptr %z, align 8
  %96 = load ptr, ptr %pRhs, align 8
  %97 = load ptr, ptr %pKeyInfo, align 8
  %aColl165 = getelementptr inbounds nuw %struct.KeyInfo, ptr %97, i32 0, i32 6
  %98 = load i32, ptr %i, align 4
  %idxprom166 = sext i32 %98 to i64
  %arrayidx167 = getelementptr inbounds [1 x ptr], ptr %aColl165, i64 0, i64 %idxprom166
  %99 = load ptr, ptr %arrayidx167, align 8
  %100 = load ptr, ptr %pPKey2.addr, align 8
  %errCode168 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %100, i32 0, i32 4
  %call169 = call i32 @vdbeCompareMemString(ptr noundef %mem1, ptr noundef %96, ptr noundef %99, ptr noundef %errCode168)
  store i32 %call169, ptr %rc, align 4
  br label %if.end193

if.else170:                                       ; preds = %if.else155
  %n171 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 4
  %101 = load i32, ptr %n171, align 4
  %102 = load ptr, ptr %pRhs, align 8
  %n172 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %102, i32 0, i32 4
  %103 = load i32, ptr %n172, align 4
  %cmp173 = icmp slt i32 %101, %103
  br i1 %cmp173, label %cond.true175, label %cond.false177

cond.true175:                                     ; preds = %if.else170
  %n176 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 4
  %104 = load i32, ptr %n176, align 4
  br label %cond.end179

cond.false177:                                    ; preds = %if.else170
  %105 = load ptr, ptr %pRhs, align 8
  %n178 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %105, i32 0, i32 4
  %106 = load i32, ptr %n178, align 4
  br label %cond.end179

cond.end179:                                      ; preds = %cond.false177, %cond.true175
  %cond180 = phi i32 [ %104, %cond.true175 ], [ %106, %cond.false177 ]
  store i32 %cond180, ptr %nCmp, align 4
  %107 = load ptr, ptr %aKey1, align 8
  %108 = load i32, ptr %d1, align 4
  %idxprom181 = zext i32 %108 to i64
  %arrayidx182 = getelementptr inbounds nuw i8, ptr %107, i64 %idxprom181
  %109 = load ptr, ptr %pRhs, align 8
  %z183 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %109, i32 0, i32 5
  %110 = load ptr, ptr %z183, align 8
  %111 = load i32, ptr %nCmp, align 4
  %conv184 = sext i32 %111 to i64
  %call185 = call i32 @memcmp(ptr noundef %arrayidx182, ptr noundef %110, i64 noundef %conv184) #2
  store i32 %call185, ptr %rc, align 4
  %112 = load i32, ptr %rc, align 4
  %cmp186 = icmp eq i32 %112, 0
  br i1 %cmp186, label %if.then188, label %if.end192

if.then188:                                       ; preds = %cond.end179
  %n189 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %mem1, i32 0, i32 4
  %113 = load i32, ptr %n189, align 4
  %114 = load ptr, ptr %pRhs, align 8
  %n190 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %114, i32 0, i32 4
  %115 = load i32, ptr %n190, align 4
  %sub191 = sub nsw i32 %113, %115
  store i32 %sub191, ptr %rc, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then188, %cond.end179
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.then159
  br label %if.end194

if.end194:                                        ; preds = %if.end193
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.then140
  br label %if.end196

if.end196:                                        ; preds = %if.end195, %if.then136
  br label %if.end282

if.else197:                                       ; preds = %if.else111
  %116 = load ptr, ptr %pRhs, align 8
  %flags198 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %116, i32 0, i32 1
  %117 = load i16, ptr %flags198, align 8
  %conv199 = zext i16 %117 to i32
  %and200 = and i32 %conv199, 16
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then202, label %if.else275

if.then202:                                       ; preds = %if.else197
  %118 = load ptr, ptr %aKey1, align 8
  %119 = load i32, ptr %idx1, align 4
  %idxprom203 = zext i32 %119 to i64
  %arrayidx204 = getelementptr inbounds nuw i8, ptr %118, i64 %idxprom203
  %120 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %120 to i32
  %cmp206 = icmp slt i32 %conv205, 128
  br i1 %cmp206, label %cond.true208, label %cond.false212

cond.true208:                                     ; preds = %if.then202
  %121 = load ptr, ptr %aKey1, align 8
  %122 = load i32, ptr %idx1, align 4
  %idxprom209 = zext i32 %122 to i64
  %arrayidx210 = getelementptr inbounds nuw i8, ptr %121, i64 %idxprom209
  %123 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %123 to i32
  store i32 %conv211, ptr %serial_type, align 4
  br label %cond.end217

cond.false212:                                    ; preds = %if.then202
  %124 = load ptr, ptr %aKey1, align 8
  %125 = load i32, ptr %idx1, align 4
  %idxprom213 = zext i32 %125 to i64
  %arrayidx214 = getelementptr inbounds nuw i8, ptr %124, i64 %idxprom213
  %call215 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %arrayidx214, ptr noundef %serial_type)
  %conv216 = zext i8 %call215 to i32
  br label %cond.end217

cond.end217:                                      ; preds = %cond.false212, %cond.true208
  %cond218 = phi i32 [ 1, %cond.true208 ], [ %conv216, %cond.false212 ]
  %conv219 = trunc i32 %cond218 to i8
  %126 = load i32, ptr %serial_type, align 4
  %cmp220 = icmp ult i32 %126, 12
  br i1 %cmp220, label %if.then225, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %cond.end217
  %127 = load i32, ptr %serial_type, align 4
  %and223 = and i32 %127, 1
  %tobool224 = icmp ne i32 %and223, 0
  br i1 %tobool224, label %if.then225, label %if.else226

if.then225:                                       ; preds = %lor.lhs.false222, %cond.end217
  store i32 -1, ptr %rc, align 4
  br label %if.end274

if.else226:                                       ; preds = %lor.lhs.false222
  %128 = load i32, ptr %serial_type, align 4
  %sub227 = sub i32 %128, 12
  %div228 = udiv i32 %sub227, 2
  store i32 %div228, ptr %nStr, align 4
  %129 = load i32, ptr %d1, align 4
  %130 = load i32, ptr %nStr, align 4
  %add229 = add i32 %129, %130
  %131 = load i32, ptr %nKey1.addr, align 4
  %cmp230 = icmp ugt i32 %add229, %131
  br i1 %cmp230, label %if.then232, label %if.else236

if.then232:                                       ; preds = %if.else226
  %call233 = call i32 @sqlite3CorruptError(i32 noundef 80985)
  %conv234 = trunc i32 %call233 to i8
  %132 = load ptr, ptr %pPKey2.addr, align 8
  %errCode235 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %132, i32 0, i32 4
  store i8 %conv234, ptr %errCode235, align 1
  store i32 0, ptr %retval, align 4
  br label %return

if.else236:                                       ; preds = %if.else226
  %133 = load ptr, ptr %pRhs, align 8
  %flags237 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %133, i32 0, i32 1
  %134 = load i16, ptr %flags237, align 8
  %conv238 = zext i16 %134 to i32
  %and239 = and i32 %conv238, 16384
  %tobool240 = icmp ne i32 %and239, 0
  br i1 %tobool240, label %if.then241, label %if.else251

if.then241:                                       ; preds = %if.else236
  %135 = load ptr, ptr %aKey1, align 8
  %136 = load i32, ptr %d1, align 4
  %idxprom242 = zext i32 %136 to i64
  %arrayidx243 = getelementptr inbounds nuw i8, ptr %135, i64 %idxprom242
  %137 = load i32, ptr %nStr, align 4
  %call244 = call i32 @isAllZero(ptr noundef %arrayidx243, i32 noundef %137)
  %tobool245 = icmp ne i32 %call244, 0
  br i1 %tobool245, label %if.else247, label %if.then246

if.then246:                                       ; preds = %if.then241
  store i32 1, ptr %rc, align 4
  br label %if.end250

if.else247:                                       ; preds = %if.then241
  %138 = load i32, ptr %nStr, align 4
  %139 = load ptr, ptr %pRhs, align 8
  %u248 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %139, i32 0, i32 0
  %140 = load i32, ptr %u248, align 8
  %sub249 = sub nsw i32 %138, %140
  store i32 %sub249, ptr %rc, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.else247, %if.then246
  br label %if.end272

if.else251:                                       ; preds = %if.else236
  %141 = load i32, ptr %nStr, align 4
  %142 = load ptr, ptr %pRhs, align 8
  %n253 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %142, i32 0, i32 4
  %143 = load i32, ptr %n253, align 4
  %cmp254 = icmp slt i32 %141, %143
  br i1 %cmp254, label %cond.true256, label %cond.false257

cond.true256:                                     ; preds = %if.else251
  %144 = load i32, ptr %nStr, align 4
  br label %cond.end259

cond.false257:                                    ; preds = %if.else251
  %145 = load ptr, ptr %pRhs, align 8
  %n258 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %145, i32 0, i32 4
  %146 = load i32, ptr %n258, align 4
  br label %cond.end259

cond.end259:                                      ; preds = %cond.false257, %cond.true256
  %cond260 = phi i32 [ %144, %cond.true256 ], [ %146, %cond.false257 ]
  store i32 %cond260, ptr %nCmp252, align 4
  %147 = load ptr, ptr %aKey1, align 8
  %148 = load i32, ptr %d1, align 4
  %idxprom261 = zext i32 %148 to i64
  %arrayidx262 = getelementptr inbounds nuw i8, ptr %147, i64 %idxprom261
  %149 = load ptr, ptr %pRhs, align 8
  %z263 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %149, i32 0, i32 5
  %150 = load ptr, ptr %z263, align 8
  %151 = load i32, ptr %nCmp252, align 4
  %conv264 = sext i32 %151 to i64
  %call265 = call i32 @memcmp(ptr noundef %arrayidx262, ptr noundef %150, i64 noundef %conv264) #2
  store i32 %call265, ptr %rc, align 4
  %152 = load i32, ptr %rc, align 4
  %cmp266 = icmp eq i32 %152, 0
  br i1 %cmp266, label %if.then268, label %if.end271

if.then268:                                       ; preds = %cond.end259
  %153 = load i32, ptr %nStr, align 4
  %154 = load ptr, ptr %pRhs, align 8
  %n269 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %154, i32 0, i32 4
  %155 = load i32, ptr %n269, align 4
  %sub270 = sub nsw i32 %153, %155
  store i32 %sub270, ptr %rc, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.then268, %cond.end259
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %if.end250
  br label %if.end273

if.end273:                                        ; preds = %if.end272
  br label %if.end274

if.end274:                                        ; preds = %if.end273, %if.then225
  br label %if.end281

if.else275:                                       ; preds = %if.else197
  %156 = load ptr, ptr %aKey1, align 8
  %157 = load i32, ptr %idx1, align 4
  %idxprom276 = zext i32 %157 to i64
  %arrayidx277 = getelementptr inbounds nuw i8, ptr %156, i64 %idxprom276
  %158 = load i8, ptr %arrayidx277, align 1
  %conv278 = zext i8 %158 to i32
  store i32 %conv278, ptr %serial_type, align 4
  %159 = load i32, ptr %serial_type, align 4
  %cmp279 = icmp ne i32 %159, 0
  %conv280 = zext i1 %cmp279 to i32
  store i32 %conv280, ptr %rc, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.else275, %if.end274
  br label %if.end282

if.end282:                                        ; preds = %if.end281, %if.end196
  br label %if.end283

if.end283:                                        ; preds = %if.end282, %if.end110
  br label %if.end284

if.end284:                                        ; preds = %if.end283, %if.end67
  %160 = load i32, ptr %rc, align 4
  %cmp285 = icmp ne i32 %160, 0
  br i1 %cmp285, label %if.then287, label %if.end311

if.then287:                                       ; preds = %if.end284
  %161 = load ptr, ptr %pPKey2.addr, align 8
  %pKeyInfo288 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %pKeyInfo288, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %162, i32 0, i32 5
  %163 = load ptr, ptr %aSortFlags, align 8
  %164 = load i32, ptr %i, align 4
  %idxprom289 = sext i32 %164 to i64
  %arrayidx290 = getelementptr inbounds i8, ptr %163, i64 %idxprom289
  %165 = load i8, ptr %arrayidx290, align 1
  %conv291 = zext i8 %165 to i32
  store i32 %conv291, ptr %sortFlags, align 4
  %166 = load i32, ptr %sortFlags, align 4
  %tobool292 = icmp ne i32 %166, 0
  br i1 %tobool292, label %if.then293, label %if.end310

if.then293:                                       ; preds = %if.then287
  %167 = load i32, ptr %sortFlags, align 4
  %and294 = and i32 %167, 2
  %cmp295 = icmp eq i32 %and294, 0
  br i1 %cmp295, label %if.then307, label %lor.lhs.false297

lor.lhs.false297:                                 ; preds = %if.then293
  %168 = load i32, ptr %sortFlags, align 4
  %and298 = and i32 %168, 1
  %169 = load i32, ptr %serial_type, align 4
  %cmp299 = icmp eq i32 %169, 0
  br i1 %cmp299, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false297
  %170 = load ptr, ptr %pRhs, align 8
  %flags301 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %170, i32 0, i32 1
  %171 = load i16, ptr %flags301, align 8
  %conv302 = zext i16 %171 to i32
  %and303 = and i32 %conv302, 1
  %tobool304 = icmp ne i32 %and303, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false297
  %172 = phi i1 [ true, %lor.lhs.false297 ], [ %tobool304, %lor.rhs ]
  %lor.ext = zext i1 %172 to i32
  %cmp305 = icmp ne i32 %and298, %lor.ext
  br i1 %cmp305, label %if.then307, label %if.end309

if.then307:                                       ; preds = %lor.end, %if.then293
  %173 = load i32, ptr %rc, align 4
  %sub308 = sub nsw i32 0, %173
  store i32 %sub308, ptr %rc, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.then307, %lor.end
  br label %if.end310

if.end310:                                        ; preds = %if.end309, %if.then287
  %174 = load i32, ptr %rc, align 4
  store i32 %174, ptr %retval, align 4
  br label %return

if.end311:                                        ; preds = %if.end284
  %175 = load i32, ptr %i, align 4
  %inc = add nsw i32 %175, 1
  store i32 %inc, ptr %i, align 4
  %176 = load i32, ptr %i, align 4
  %177 = load ptr, ptr %pPKey2.addr, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %177, i32 0, i32 2
  %178 = load i16, ptr %nField, align 8
  %conv312 = zext i16 %178 to i32
  %cmp313 = icmp eq i32 %176, %conv312
  br i1 %cmp313, label %if.then315, label %if.end316

if.then315:                                       ; preds = %if.end311
  br label %do.end

if.end316:                                        ; preds = %if.end311
  %179 = load ptr, ptr %pRhs, align 8
  %incdec.ptr317 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %179, i32 1
  store ptr %incdec.ptr317, ptr %pRhs, align 8
  %180 = load i32, ptr %serial_type, align 4
  %call318 = call i32 @sqlite3VdbeSerialTypeLen(i32 noundef %180)
  %181 = load i32, ptr %d1, align 4
  %add319 = add i32 %181, %call318
  store i32 %add319, ptr %d1, align 4
  %182 = load i32, ptr %serial_type, align 4
  %conv320 = zext i32 %182 to i64
  %call321 = call i32 @sqlite3VarintLen(i64 noundef %conv320)
  %183 = load i32, ptr %idx1, align 4
  %add322 = add i32 %183, %call321
  store i32 %add322, ptr %idx1, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end316
  %184 = load i32, ptr %idx1, align 4
  %185 = load i32, ptr %szHdr1, align 4
  %cmp323 = icmp ult i32 %184, %185
  br i1 %cmp323, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %186 = load i32, ptr %d1, align 4
  %187 = load i32, ptr %nKey1.addr, align 4
  %cmp325 = icmp ule i32 %186, %187
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %188 = phi i1 [ false, %do.cond ], [ %cmp325, %land.rhs ]
  br i1 %188, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end, %if.then315
  %189 = load ptr, ptr %pPKey2.addr, align 8
  %eqSeen = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %189, i32 0, i32 7
  store i8 1, ptr %eqSeen, align 2
  %190 = load ptr, ptr %pPKey2.addr, align 8
  %default_rc = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %190, i32 0, i32 3
  %191 = load i8, ptr %default_rc, align 2
  %conv327 = sext i8 %191 to i32
  store i32 %conv327, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.end310, %if.then232, %if.then151, %if.then26
  %192 = load i32, ptr %retval, align 4
  ret i32 %192
}

; Function Attrs: nounwind uwtable
declare hidden i64 @vdbeRecordDecodeInt(i32 noundef, ptr noundef) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
