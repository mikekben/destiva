; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

@sqlite3Utf8Trans1 = external hidden constant [64 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemMakeWriteable(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeMemTranslate(ptr noundef %pMem, i8 noundef zeroext %desiredEnc) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %desiredEnc.addr = alloca i8, align 1
  %len = alloca i64, align 8
  %zOut = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zTerm = alloca ptr, align 8
  %z = alloca ptr, align 8
  %c = alloca i32, align 4
  %temp = alloca i8, align 1
  %rc = alloca i32, align 4
  %c2 = alloca i32, align 4
  %c2335 = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  store i8 %desiredEnc, ptr %desiredEnc.addr, align 1
  %0 = load ptr, ptr %pMem.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 2
  %1 = load i8, ptr %enc, align 2
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 1
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr %desiredEnc.addr, align 1
  %conv2 = zext i8 %2 to i32
  %cmp3 = icmp ne i32 %conv2, 1
  br i1 %cmp3, label %if.then, label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pMem.addr, align 8
  %call = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp5 = icmp ne i32 %4, 0
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %pMem.addr, align 8
  %z8 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 5
  %6 = load ptr, ptr %z8, align 8
  store ptr %6, ptr %zIn, align 8
  %7 = load ptr, ptr %zIn, align 8
  %8 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %n, align 4
  %and = and i32 %9, -2
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %zTerm, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load ptr, ptr %zIn, align 8
  %11 = load ptr, ptr %zTerm, align 8
  %cmp9 = icmp ult ptr %10, %11
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %zIn, align 8
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr %temp, align 1
  %14 = load ptr, ptr %zIn, align 8
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %add.ptr, align 1
  %16 = load ptr, ptr %zIn, align 8
  store i8 %15, ptr %16, align 1
  %17 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %18 = load i8, ptr %temp, align 1
  %19 = load ptr, ptr %zIn, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr11, ptr %zIn, align 8
  store i8 %18, ptr %19, align 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %20 = load i8, ptr %desiredEnc.addr, align 1
  %21 = load ptr, ptr %pMem.addr, align 8
  %enc12 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %21, i32 0, i32 2
  store i8 %20, ptr %enc12, align 2
  br label %translate_out

if.end13:                                         ; preds = %land.lhs.true, %entry
  %22 = load i8, ptr %desiredEnc.addr, align 1
  %conv14 = zext i8 %22 to i32
  %cmp15 = icmp eq i32 %conv14, 1
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %23 = load ptr, ptr %pMem.addr, align 8
  %n18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 4
  %24 = load i32, ptr %n18, align 4
  %and19 = and i32 %24, -2
  store i32 %and19, ptr %n18, align 4
  %25 = load ptr, ptr %pMem.addr, align 8
  %n20 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %25, i32 0, i32 4
  %26 = load i32, ptr %n20, align 4
  %conv21 = sext i32 %26 to i64
  %mul = mul nsw i64 2, %conv21
  %add = add nsw i64 %mul, 1
  store i64 %add, ptr %len, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end13
  %27 = load ptr, ptr %pMem.addr, align 8
  %n22 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %27, i32 0, i32 4
  %28 = load i32, ptr %n22, align 4
  %conv23 = sext i32 %28 to i64
  %mul24 = mul nsw i64 2, %conv23
  %add25 = add nsw i64 %mul24, 2
  store i64 %add25, ptr %len, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then17
  %29 = load ptr, ptr %pMem.addr, align 8
  %z27 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %z27, align 8
  store ptr %30, ptr %zIn, align 8
  %31 = load ptr, ptr %zIn, align 8
  %32 = load ptr, ptr %pMem.addr, align 8
  %n28 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %32, i32 0, i32 4
  %33 = load i32, ptr %n28, align 4
  %idxprom29 = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %31, i64 %idxprom29
  store ptr %arrayidx30, ptr %zTerm, align 8
  %34 = load ptr, ptr %pMem.addr, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %34, i32 0, i32 9
  %35 = load ptr, ptr %db, align 8
  %36 = load i64, ptr %len, align 8
  %call31 = call ptr @sqlite3DbMallocRaw(ptr noundef %35, i64 noundef %36)
  store ptr %call31, ptr %zOut, align 8
  %37 = load ptr, ptr %zOut, align 8
  %tobool = icmp ne ptr %37, null
  br i1 %tobool, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end26
  store i32 7, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end26
  %38 = load ptr, ptr %zOut, align 8
  store ptr %38, ptr %z, align 8
  %39 = load ptr, ptr %pMem.addr, align 8
  %enc34 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %39, i32 0, i32 2
  %40 = load i8, ptr %enc34, align 2
  %conv35 = zext i8 %40 to i32
  %cmp36 = icmp eq i32 %conv35, 1
  br i1 %cmp36, label %if.then38, label %if.else196

if.then38:                                        ; preds = %if.end33
  %41 = load i8, ptr %desiredEnc.addr, align 1
  %conv39 = zext i8 %41 to i32
  %cmp40 = icmp eq i32 %conv39, 2
  br i1 %cmp40, label %if.then42, label %if.else114

if.then42:                                        ; preds = %if.then38
  br label %while.cond43

while.cond43:                                     ; preds = %if.end112, %if.then42
  %42 = load ptr, ptr %zIn, align 8
  %43 = load ptr, ptr %zTerm, align 8
  %cmp44 = icmp ult ptr %42, %43
  br i1 %cmp44, label %while.body46, label %while.end113

while.body46:                                     ; preds = %while.cond43
  %44 = load ptr, ptr %zIn, align 8
  %incdec.ptr47 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr47, ptr %zIn, align 8
  %45 = load i8, ptr %44, align 1
  %conv48 = zext i8 %45 to i32
  store i32 %conv48, ptr %c, align 4
  %46 = load i32, ptr %c, align 4
  %cmp49 = icmp uge i32 %46, 192
  br i1 %cmp49, label %if.then51, label %if.end79

if.then51:                                        ; preds = %while.body46
  %47 = load i32, ptr %c, align 4
  %sub = sub i32 %47, 192
  %idxprom52 = zext i32 %sub to i64
  %arrayidx53 = getelementptr inbounds nuw [64 x i8], ptr @sqlite3Utf8Trans1, i64 0, i64 %idxprom52
  %48 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %48 to i32
  store i32 %conv54, ptr %c, align 4
  br label %while.cond55

while.cond55:                                     ; preds = %while.body62, %if.then51
  %49 = load ptr, ptr %zIn, align 8
  %50 = load ptr, ptr %zTerm, align 8
  %cmp56 = icmp ne ptr %49, %50
  br i1 %cmp56, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond55
  %51 = load ptr, ptr %zIn, align 8
  %52 = load i8, ptr %51, align 1
  %conv58 = zext i8 %52 to i32
  %and59 = and i32 %conv58, 192
  %cmp60 = icmp eq i32 %and59, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond55
  %53 = phi i1 [ false, %while.cond55 ], [ %cmp60, %land.rhs ]
  br i1 %53, label %while.body62, label %while.end67

while.body62:                                     ; preds = %land.end
  %54 = load i32, ptr %c, align 4
  %shl = shl i32 %54, 6
  %55 = load ptr, ptr %zIn, align 8
  %incdec.ptr63 = getelementptr inbounds nuw i8, ptr %55, i32 1
  store ptr %incdec.ptr63, ptr %zIn, align 8
  %56 = load i8, ptr %55, align 1
  %conv64 = zext i8 %56 to i32
  %and65 = and i32 63, %conv64
  %add66 = add i32 %shl, %and65
  store i32 %add66, ptr %c, align 4
  br label %while.cond55, !llvm.loop !8

while.end67:                                      ; preds = %land.end
  %57 = load i32, ptr %c, align 4
  %cmp68 = icmp ult i32 %57, 128
  br i1 %cmp68, label %if.then77, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end67
  %58 = load i32, ptr %c, align 4
  %and70 = and i32 %58, -2048
  %cmp71 = icmp eq i32 %and70, 55296
  br i1 %cmp71, label %if.then77, label %lor.lhs.false73

lor.lhs.false73:                                  ; preds = %lor.lhs.false
  %59 = load i32, ptr %c, align 4
  %and74 = and i32 %59, -2
  %cmp75 = icmp eq i32 %and74, 65534
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %lor.lhs.false73, %lor.lhs.false, %while.end67
  store i32 65533, ptr %c, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %lor.lhs.false73
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %while.body46
  %60 = load i32, ptr %c, align 4
  %cmp80 = icmp ule i32 %60, 65535
  br i1 %cmp80, label %if.then82, label %if.else89

if.then82:                                        ; preds = %if.end79
  %61 = load i32, ptr %c, align 4
  %and83 = and i32 %61, 255
  %conv84 = trunc i32 %and83 to i8
  %62 = load ptr, ptr %z, align 8
  %incdec.ptr85 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr85, ptr %z, align 8
  store i8 %conv84, ptr %62, align 1
  %63 = load i32, ptr %c, align 4
  %shr = lshr i32 %63, 8
  %and86 = and i32 %shr, 255
  %conv87 = trunc i32 %and86 to i8
  %64 = load ptr, ptr %z, align 8
  %incdec.ptr88 = getelementptr inbounds nuw i8, ptr %64, i32 1
  store ptr %incdec.ptr88, ptr %z, align 8
  store i8 %conv87, ptr %64, align 1
  br label %if.end112

if.else89:                                        ; preds = %if.end79
  %65 = load i32, ptr %c, align 4
  %shr90 = lshr i32 %65, 10
  %and91 = and i32 %shr90, 63
  %66 = load i32, ptr %c, align 4
  %sub92 = sub i32 %66, 65536
  %shr93 = lshr i32 %sub92, 10
  %and94 = and i32 %shr93, 192
  %add95 = add i32 %and91, %and94
  %conv96 = trunc i32 %add95 to i8
  %67 = load ptr, ptr %z, align 8
  %incdec.ptr97 = getelementptr inbounds nuw i8, ptr %67, i32 1
  store ptr %incdec.ptr97, ptr %z, align 8
  store i8 %conv96, ptr %67, align 1
  %68 = load i32, ptr %c, align 4
  %sub98 = sub i32 %68, 65536
  %shr99 = lshr i32 %sub98, 18
  %and100 = and i32 %shr99, 3
  %add101 = add i32 216, %and100
  %conv102 = trunc i32 %add101 to i8
  %69 = load ptr, ptr %z, align 8
  %incdec.ptr103 = getelementptr inbounds nuw i8, ptr %69, i32 1
  store ptr %incdec.ptr103, ptr %z, align 8
  store i8 %conv102, ptr %69, align 1
  %70 = load i32, ptr %c, align 4
  %and104 = and i32 %70, 255
  %conv105 = trunc i32 %and104 to i8
  %71 = load ptr, ptr %z, align 8
  %incdec.ptr106 = getelementptr inbounds nuw i8, ptr %71, i32 1
  store ptr %incdec.ptr106, ptr %z, align 8
  store i8 %conv105, ptr %71, align 1
  %72 = load i32, ptr %c, align 4
  %shr107 = lshr i32 %72, 8
  %and108 = and i32 %shr107, 3
  %add109 = add i32 220, %and108
  %conv110 = trunc i32 %add109 to i8
  %73 = load ptr, ptr %z, align 8
  %incdec.ptr111 = getelementptr inbounds nuw i8, ptr %73, i32 1
  store ptr %incdec.ptr111, ptr %z, align 8
  store i8 %conv110, ptr %73, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.else89, %if.then82
  br label %while.cond43, !llvm.loop !9

while.end113:                                     ; preds = %while.cond43
  br label %if.end192

if.else114:                                       ; preds = %if.then38
  br label %while.cond115

while.cond115:                                    ; preds = %if.end190, %if.else114
  %74 = load ptr, ptr %zIn, align 8
  %75 = load ptr, ptr %zTerm, align 8
  %cmp116 = icmp ult ptr %74, %75
  br i1 %cmp116, label %while.body118, label %while.end191

while.body118:                                    ; preds = %while.cond115
  %76 = load ptr, ptr %zIn, align 8
  %incdec.ptr119 = getelementptr inbounds nuw i8, ptr %76, i32 1
  store ptr %incdec.ptr119, ptr %zIn, align 8
  %77 = load i8, ptr %76, align 1
  %conv120 = zext i8 %77 to i32
  store i32 %conv120, ptr %c, align 4
  %78 = load i32, ptr %c, align 4
  %cmp121 = icmp uge i32 %78, 192
  br i1 %cmp121, label %if.then123, label %if.end156

if.then123:                                       ; preds = %while.body118
  %79 = load i32, ptr %c, align 4
  %sub124 = sub i32 %79, 192
  %idxprom125 = zext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds nuw [64 x i8], ptr @sqlite3Utf8Trans1, i64 0, i64 %idxprom125
  %80 = load i8, ptr %arrayidx126, align 1
  %conv127 = zext i8 %80 to i32
  store i32 %conv127, ptr %c, align 4
  br label %while.cond128

while.cond128:                                    ; preds = %while.body137, %if.then123
  %81 = load ptr, ptr %zIn, align 8
  %82 = load ptr, ptr %zTerm, align 8
  %cmp129 = icmp ne ptr %81, %82
  br i1 %cmp129, label %land.rhs131, label %land.end136

land.rhs131:                                      ; preds = %while.cond128
  %83 = load ptr, ptr %zIn, align 8
  %84 = load i8, ptr %83, align 1
  %conv132 = zext i8 %84 to i32
  %and133 = and i32 %conv132, 192
  %cmp134 = icmp eq i32 %and133, 128
  br label %land.end136

land.end136:                                      ; preds = %land.rhs131, %while.cond128
  %85 = phi i1 [ false, %while.cond128 ], [ %cmp134, %land.rhs131 ]
  br i1 %85, label %while.body137, label %while.end143

while.body137:                                    ; preds = %land.end136
  %86 = load i32, ptr %c, align 4
  %shl138 = shl i32 %86, 6
  %87 = load ptr, ptr %zIn, align 8
  %incdec.ptr139 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %incdec.ptr139, ptr %zIn, align 8
  %88 = load i8, ptr %87, align 1
  %conv140 = zext i8 %88 to i32
  %and141 = and i32 63, %conv140
  %add142 = add i32 %shl138, %and141
  store i32 %add142, ptr %c, align 4
  br label %while.cond128, !llvm.loop !10

while.end143:                                     ; preds = %land.end136
  %89 = load i32, ptr %c, align 4
  %cmp144 = icmp ult i32 %89, 128
  br i1 %cmp144, label %if.then154, label %lor.lhs.false146

lor.lhs.false146:                                 ; preds = %while.end143
  %90 = load i32, ptr %c, align 4
  %and147 = and i32 %90, -2048
  %cmp148 = icmp eq i32 %and147, 55296
  br i1 %cmp148, label %if.then154, label %lor.lhs.false150

lor.lhs.false150:                                 ; preds = %lor.lhs.false146
  %91 = load i32, ptr %c, align 4
  %and151 = and i32 %91, -2
  %cmp152 = icmp eq i32 %and151, 65534
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %lor.lhs.false150, %lor.lhs.false146, %while.end143
  store i32 65533, ptr %c, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %lor.lhs.false150
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %while.body118
  %92 = load i32, ptr %c, align 4
  %cmp157 = icmp ule i32 %92, 65535
  br i1 %cmp157, label %if.then159, label %if.else167

if.then159:                                       ; preds = %if.end156
  %93 = load i32, ptr %c, align 4
  %shr160 = lshr i32 %93, 8
  %and161 = and i32 %shr160, 255
  %conv162 = trunc i32 %and161 to i8
  %94 = load ptr, ptr %z, align 8
  %incdec.ptr163 = getelementptr inbounds nuw i8, ptr %94, i32 1
  store ptr %incdec.ptr163, ptr %z, align 8
  store i8 %conv162, ptr %94, align 1
  %95 = load i32, ptr %c, align 4
  %and164 = and i32 %95, 255
  %conv165 = trunc i32 %and164 to i8
  %96 = load ptr, ptr %z, align 8
  %incdec.ptr166 = getelementptr inbounds nuw i8, ptr %96, i32 1
  store ptr %incdec.ptr166, ptr %z, align 8
  store i8 %conv165, ptr %96, align 1
  br label %if.end190

if.else167:                                       ; preds = %if.end156
  %97 = load i32, ptr %c, align 4
  %sub168 = sub i32 %97, 65536
  %shr169 = lshr i32 %sub168, 18
  %and170 = and i32 %shr169, 3
  %add171 = add i32 216, %and170
  %conv172 = trunc i32 %add171 to i8
  %98 = load ptr, ptr %z, align 8
  %incdec.ptr173 = getelementptr inbounds nuw i8, ptr %98, i32 1
  store ptr %incdec.ptr173, ptr %z, align 8
  store i8 %conv172, ptr %98, align 1
  %99 = load i32, ptr %c, align 4
  %shr174 = lshr i32 %99, 10
  %and175 = and i32 %shr174, 63
  %100 = load i32, ptr %c, align 4
  %sub176 = sub i32 %100, 65536
  %shr177 = lshr i32 %sub176, 10
  %and178 = and i32 %shr177, 192
  %add179 = add i32 %and175, %and178
  %conv180 = trunc i32 %add179 to i8
  %101 = load ptr, ptr %z, align 8
  %incdec.ptr181 = getelementptr inbounds nuw i8, ptr %101, i32 1
  store ptr %incdec.ptr181, ptr %z, align 8
  store i8 %conv180, ptr %101, align 1
  %102 = load i32, ptr %c, align 4
  %shr182 = lshr i32 %102, 8
  %and183 = and i32 %shr182, 3
  %add184 = add i32 220, %and183
  %conv185 = trunc i32 %add184 to i8
  %103 = load ptr, ptr %z, align 8
  %incdec.ptr186 = getelementptr inbounds nuw i8, ptr %103, i32 1
  store ptr %incdec.ptr186, ptr %z, align 8
  store i8 %conv185, ptr %103, align 1
  %104 = load i32, ptr %c, align 4
  %and187 = and i32 %104, 255
  %conv188 = trunc i32 %and187 to i8
  %105 = load ptr, ptr %z, align 8
  %incdec.ptr189 = getelementptr inbounds nuw i8, ptr %105, i32 1
  store ptr %incdec.ptr189, ptr %z, align 8
  store i8 %conv188, ptr %105, align 1
  br label %if.end190

if.end190:                                        ; preds = %if.else167, %if.then159
  br label %while.cond115, !llvm.loop !11

while.end191:                                     ; preds = %while.cond115
  br label %if.end192

if.end192:                                        ; preds = %while.end191, %while.end113
  %106 = load ptr, ptr %z, align 8
  %107 = load ptr, ptr %zOut, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %106 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %107 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv193 = trunc i64 %sub.ptr.sub to i32
  %108 = load ptr, ptr %pMem.addr, align 8
  %n194 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %108, i32 0, i32 4
  store i32 %conv193, ptr %n194, align 4
  %109 = load ptr, ptr %z, align 8
  %incdec.ptr195 = getelementptr inbounds nuw i8, ptr %109, i32 1
  store ptr %incdec.ptr195, ptr %z, align 8
  store i8 0, ptr %109, align 1
  br label %if.end436

if.else196:                                       ; preds = %if.end33
  %110 = load ptr, ptr %pMem.addr, align 8
  %enc197 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %110, i32 0, i32 2
  %111 = load i8, ptr %enc197, align 2
  %conv198 = zext i8 %111 to i32
  %cmp199 = icmp eq i32 %conv198, 2
  br i1 %cmp199, label %if.then201, label %if.else315

if.then201:                                       ; preds = %if.else196
  br label %while.cond202

while.cond202:                                    ; preds = %if.end313, %if.then201
  %112 = load ptr, ptr %zIn, align 8
  %113 = load ptr, ptr %zTerm, align 8
  %cmp203 = icmp ult ptr %112, %113
  br i1 %cmp203, label %while.body205, label %while.end314

while.body205:                                    ; preds = %while.cond202
  %114 = load ptr, ptr %zIn, align 8
  %incdec.ptr206 = getelementptr inbounds nuw i8, ptr %114, i32 1
  store ptr %incdec.ptr206, ptr %zIn, align 8
  %115 = load i8, ptr %114, align 1
  %conv207 = zext i8 %115 to i32
  store i32 %conv207, ptr %c, align 4
  %116 = load ptr, ptr %zIn, align 8
  %incdec.ptr208 = getelementptr inbounds nuw i8, ptr %116, i32 1
  store ptr %incdec.ptr208, ptr %zIn, align 8
  %117 = load i8, ptr %116, align 1
  %conv209 = zext i8 %117 to i32
  %shl210 = shl i32 %conv209, 8
  %118 = load i32, ptr %c, align 4
  %add211 = add i32 %118, %shl210
  store i32 %add211, ptr %c, align 4
  %119 = load i32, ptr %c, align 4
  %cmp212 = icmp uge i32 %119, 55296
  br i1 %cmp212, label %land.lhs.true214, label %if.end235

land.lhs.true214:                                 ; preds = %while.body205
  %120 = load i32, ptr %c, align 4
  %cmp215 = icmp ult i32 %120, 57344
  br i1 %cmp215, label %land.lhs.true217, label %if.end235

land.lhs.true217:                                 ; preds = %land.lhs.true214
  %121 = load ptr, ptr %zIn, align 8
  %122 = load ptr, ptr %zTerm, align 8
  %cmp218 = icmp ult ptr %121, %122
  br i1 %cmp218, label %if.then220, label %if.end235

if.then220:                                       ; preds = %land.lhs.true217
  %123 = load ptr, ptr %zIn, align 8
  %incdec.ptr221 = getelementptr inbounds nuw i8, ptr %123, i32 1
  store ptr %incdec.ptr221, ptr %zIn, align 8
  %124 = load i8, ptr %123, align 1
  %conv222 = zext i8 %124 to i32
  store i32 %conv222, ptr %c2, align 4
  %125 = load ptr, ptr %zIn, align 8
  %incdec.ptr223 = getelementptr inbounds nuw i8, ptr %125, i32 1
  store ptr %incdec.ptr223, ptr %zIn, align 8
  %126 = load i8, ptr %125, align 1
  %conv224 = zext i8 %126 to i32
  %shl225 = shl i32 %conv224, 8
  %127 = load i32, ptr %c2, align 4
  %add226 = add nsw i32 %127, %shl225
  store i32 %add226, ptr %c2, align 4
  %128 = load i32, ptr %c2, align 4
  %and227 = and i32 %128, 1023
  %129 = load i32, ptr %c, align 4
  %and228 = and i32 %129, 63
  %shl229 = shl i32 %and228, 10
  %add230 = add i32 %and227, %shl229
  %130 = load i32, ptr %c, align 4
  %and231 = and i32 %130, 960
  %add232 = add i32 %and231, 64
  %shl233 = shl i32 %add232, 10
  %add234 = add i32 %add230, %shl233
  store i32 %add234, ptr %c, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then220, %land.lhs.true217, %land.lhs.true214, %while.body205
  %131 = load i32, ptr %c, align 4
  %cmp236 = icmp ult i32 %131, 128
  br i1 %cmp236, label %if.then238, label %if.else242

if.then238:                                       ; preds = %if.end235
  %132 = load i32, ptr %c, align 4
  %and239 = and i32 %132, 255
  %conv240 = trunc i32 %and239 to i8
  %133 = load ptr, ptr %z, align 8
  %incdec.ptr241 = getelementptr inbounds nuw i8, ptr %133, i32 1
  store ptr %incdec.ptr241, ptr %z, align 8
  store i8 %conv240, ptr %133, align 1
  br label %if.end313

if.else242:                                       ; preds = %if.end235
  %134 = load i32, ptr %c, align 4
  %cmp243 = icmp ult i32 %134, 2048
  br i1 %cmp243, label %if.then245, label %if.else259

if.then245:                                       ; preds = %if.else242
  %135 = load i32, ptr %c, align 4
  %shr246 = lshr i32 %135, 6
  %and247 = and i32 %shr246, 31
  %conv248 = trunc i32 %and247 to i8
  %conv249 = zext i8 %conv248 to i32
  %add250 = add nsw i32 192, %conv249
  %conv251 = trunc i32 %add250 to i8
  %136 = load ptr, ptr %z, align 8
  %incdec.ptr252 = getelementptr inbounds nuw i8, ptr %136, i32 1
  store ptr %incdec.ptr252, ptr %z, align 8
  store i8 %conv251, ptr %136, align 1
  %137 = load i32, ptr %c, align 4
  %and253 = and i32 %137, 63
  %conv254 = trunc i32 %and253 to i8
  %conv255 = zext i8 %conv254 to i32
  %add256 = add nsw i32 128, %conv255
  %conv257 = trunc i32 %add256 to i8
  %138 = load ptr, ptr %z, align 8
  %incdec.ptr258 = getelementptr inbounds nuw i8, ptr %138, i32 1
  store ptr %incdec.ptr258, ptr %z, align 8
  store i8 %conv257, ptr %138, align 1
  br label %if.end312

if.else259:                                       ; preds = %if.else242
  %139 = load i32, ptr %c, align 4
  %cmp260 = icmp ult i32 %139, 65536
  br i1 %cmp260, label %if.then262, label %if.else283

if.then262:                                       ; preds = %if.else259
  %140 = load i32, ptr %c, align 4
  %shr263 = lshr i32 %140, 12
  %and264 = and i32 %shr263, 15
  %conv265 = trunc i32 %and264 to i8
  %conv266 = zext i8 %conv265 to i32
  %add267 = add nsw i32 224, %conv266
  %conv268 = trunc i32 %add267 to i8
  %141 = load ptr, ptr %z, align 8
  %incdec.ptr269 = getelementptr inbounds nuw i8, ptr %141, i32 1
  store ptr %incdec.ptr269, ptr %z, align 8
  store i8 %conv268, ptr %141, align 1
  %142 = load i32, ptr %c, align 4
  %shr270 = lshr i32 %142, 6
  %and271 = and i32 %shr270, 63
  %conv272 = trunc i32 %and271 to i8
  %conv273 = zext i8 %conv272 to i32
  %add274 = add nsw i32 128, %conv273
  %conv275 = trunc i32 %add274 to i8
  %143 = load ptr, ptr %z, align 8
  %incdec.ptr276 = getelementptr inbounds nuw i8, ptr %143, i32 1
  store ptr %incdec.ptr276, ptr %z, align 8
  store i8 %conv275, ptr %143, align 1
  %144 = load i32, ptr %c, align 4
  %and277 = and i32 %144, 63
  %conv278 = trunc i32 %and277 to i8
  %conv279 = zext i8 %conv278 to i32
  %add280 = add nsw i32 128, %conv279
  %conv281 = trunc i32 %add280 to i8
  %145 = load ptr, ptr %z, align 8
  %incdec.ptr282 = getelementptr inbounds nuw i8, ptr %145, i32 1
  store ptr %incdec.ptr282, ptr %z, align 8
  store i8 %conv281, ptr %145, align 1
  br label %if.end311

if.else283:                                       ; preds = %if.else259
  %146 = load i32, ptr %c, align 4
  %shr284 = lshr i32 %146, 18
  %and285 = and i32 %shr284, 7
  %conv286 = trunc i32 %and285 to i8
  %conv287 = zext i8 %conv286 to i32
  %add288 = add nsw i32 240, %conv287
  %conv289 = trunc i32 %add288 to i8
  %147 = load ptr, ptr %z, align 8
  %incdec.ptr290 = getelementptr inbounds nuw i8, ptr %147, i32 1
  store ptr %incdec.ptr290, ptr %z, align 8
  store i8 %conv289, ptr %147, align 1
  %148 = load i32, ptr %c, align 4
  %shr291 = lshr i32 %148, 12
  %and292 = and i32 %shr291, 63
  %conv293 = trunc i32 %and292 to i8
  %conv294 = zext i8 %conv293 to i32
  %add295 = add nsw i32 128, %conv294
  %conv296 = trunc i32 %add295 to i8
  %149 = load ptr, ptr %z, align 8
  %incdec.ptr297 = getelementptr inbounds nuw i8, ptr %149, i32 1
  store ptr %incdec.ptr297, ptr %z, align 8
  store i8 %conv296, ptr %149, align 1
  %150 = load i32, ptr %c, align 4
  %shr298 = lshr i32 %150, 6
  %and299 = and i32 %shr298, 63
  %conv300 = trunc i32 %and299 to i8
  %conv301 = zext i8 %conv300 to i32
  %add302 = add nsw i32 128, %conv301
  %conv303 = trunc i32 %add302 to i8
  %151 = load ptr, ptr %z, align 8
  %incdec.ptr304 = getelementptr inbounds nuw i8, ptr %151, i32 1
  store ptr %incdec.ptr304, ptr %z, align 8
  store i8 %conv303, ptr %151, align 1
  %152 = load i32, ptr %c, align 4
  %and305 = and i32 %152, 63
  %conv306 = trunc i32 %and305 to i8
  %conv307 = zext i8 %conv306 to i32
  %add308 = add nsw i32 128, %conv307
  %conv309 = trunc i32 %add308 to i8
  %153 = load ptr, ptr %z, align 8
  %incdec.ptr310 = getelementptr inbounds nuw i8, ptr %153, i32 1
  store ptr %incdec.ptr310, ptr %z, align 8
  store i8 %conv309, ptr %153, align 1
  br label %if.end311

if.end311:                                        ; preds = %if.else283, %if.then262
  br label %if.end312

if.end312:                                        ; preds = %if.end311, %if.then245
  br label %if.end313

if.end313:                                        ; preds = %if.end312, %if.then238
  br label %while.cond202, !llvm.loop !12

while.end314:                                     ; preds = %while.cond202
  br label %if.end430

if.else315:                                       ; preds = %if.else196
  br label %while.cond316

while.cond316:                                    ; preds = %if.end428, %if.else315
  %154 = load ptr, ptr %zIn, align 8
  %155 = load ptr, ptr %zTerm, align 8
  %cmp317 = icmp ult ptr %154, %155
  br i1 %cmp317, label %while.body319, label %while.end429

while.body319:                                    ; preds = %while.cond316
  %156 = load ptr, ptr %zIn, align 8
  %incdec.ptr320 = getelementptr inbounds nuw i8, ptr %156, i32 1
  store ptr %incdec.ptr320, ptr %zIn, align 8
  %157 = load i8, ptr %156, align 1
  %conv321 = zext i8 %157 to i32
  %shl322 = shl i32 %conv321, 8
  store i32 %shl322, ptr %c, align 4
  %158 = load ptr, ptr %zIn, align 8
  %incdec.ptr323 = getelementptr inbounds nuw i8, ptr %158, i32 1
  store ptr %incdec.ptr323, ptr %zIn, align 8
  %159 = load i8, ptr %158, align 1
  %conv324 = zext i8 %159 to i32
  %160 = load i32, ptr %c, align 4
  %add325 = add i32 %160, %conv324
  store i32 %add325, ptr %c, align 4
  %161 = load i32, ptr %c, align 4
  %cmp326 = icmp uge i32 %161, 55296
  br i1 %cmp326, label %land.lhs.true328, label %if.end350

land.lhs.true328:                                 ; preds = %while.body319
  %162 = load i32, ptr %c, align 4
  %cmp329 = icmp ult i32 %162, 57344
  br i1 %cmp329, label %land.lhs.true331, label %if.end350

land.lhs.true331:                                 ; preds = %land.lhs.true328
  %163 = load ptr, ptr %zIn, align 8
  %164 = load ptr, ptr %zTerm, align 8
  %cmp332 = icmp ult ptr %163, %164
  br i1 %cmp332, label %if.then334, label %if.end350

if.then334:                                       ; preds = %land.lhs.true331
  %165 = load ptr, ptr %zIn, align 8
  %incdec.ptr336 = getelementptr inbounds nuw i8, ptr %165, i32 1
  store ptr %incdec.ptr336, ptr %zIn, align 8
  %166 = load i8, ptr %165, align 1
  %conv337 = zext i8 %166 to i32
  %shl338 = shl i32 %conv337, 8
  store i32 %shl338, ptr %c2335, align 4
  %167 = load ptr, ptr %zIn, align 8
  %incdec.ptr339 = getelementptr inbounds nuw i8, ptr %167, i32 1
  store ptr %incdec.ptr339, ptr %zIn, align 8
  %168 = load i8, ptr %167, align 1
  %conv340 = zext i8 %168 to i32
  %169 = load i32, ptr %c2335, align 4
  %add341 = add nsw i32 %169, %conv340
  store i32 %add341, ptr %c2335, align 4
  %170 = load i32, ptr %c2335, align 4
  %and342 = and i32 %170, 1023
  %171 = load i32, ptr %c, align 4
  %and343 = and i32 %171, 63
  %shl344 = shl i32 %and343, 10
  %add345 = add i32 %and342, %shl344
  %172 = load i32, ptr %c, align 4
  %and346 = and i32 %172, 960
  %add347 = add i32 %and346, 64
  %shl348 = shl i32 %add347, 10
  %add349 = add i32 %add345, %shl348
  store i32 %add349, ptr %c, align 4
  br label %if.end350

if.end350:                                        ; preds = %if.then334, %land.lhs.true331, %land.lhs.true328, %while.body319
  %173 = load i32, ptr %c, align 4
  %cmp351 = icmp ult i32 %173, 128
  br i1 %cmp351, label %if.then353, label %if.else357

if.then353:                                       ; preds = %if.end350
  %174 = load i32, ptr %c, align 4
  %and354 = and i32 %174, 255
  %conv355 = trunc i32 %and354 to i8
  %175 = load ptr, ptr %z, align 8
  %incdec.ptr356 = getelementptr inbounds nuw i8, ptr %175, i32 1
  store ptr %incdec.ptr356, ptr %z, align 8
  store i8 %conv355, ptr %175, align 1
  br label %if.end428

if.else357:                                       ; preds = %if.end350
  %176 = load i32, ptr %c, align 4
  %cmp358 = icmp ult i32 %176, 2048
  br i1 %cmp358, label %if.then360, label %if.else374

if.then360:                                       ; preds = %if.else357
  %177 = load i32, ptr %c, align 4
  %shr361 = lshr i32 %177, 6
  %and362 = and i32 %shr361, 31
  %conv363 = trunc i32 %and362 to i8
  %conv364 = zext i8 %conv363 to i32
  %add365 = add nsw i32 192, %conv364
  %conv366 = trunc i32 %add365 to i8
  %178 = load ptr, ptr %z, align 8
  %incdec.ptr367 = getelementptr inbounds nuw i8, ptr %178, i32 1
  store ptr %incdec.ptr367, ptr %z, align 8
  store i8 %conv366, ptr %178, align 1
  %179 = load i32, ptr %c, align 4
  %and368 = and i32 %179, 63
  %conv369 = trunc i32 %and368 to i8
  %conv370 = zext i8 %conv369 to i32
  %add371 = add nsw i32 128, %conv370
  %conv372 = trunc i32 %add371 to i8
  %180 = load ptr, ptr %z, align 8
  %incdec.ptr373 = getelementptr inbounds nuw i8, ptr %180, i32 1
  store ptr %incdec.ptr373, ptr %z, align 8
  store i8 %conv372, ptr %180, align 1
  br label %if.end427

if.else374:                                       ; preds = %if.else357
  %181 = load i32, ptr %c, align 4
  %cmp375 = icmp ult i32 %181, 65536
  br i1 %cmp375, label %if.then377, label %if.else398

if.then377:                                       ; preds = %if.else374
  %182 = load i32, ptr %c, align 4
  %shr378 = lshr i32 %182, 12
  %and379 = and i32 %shr378, 15
  %conv380 = trunc i32 %and379 to i8
  %conv381 = zext i8 %conv380 to i32
  %add382 = add nsw i32 224, %conv381
  %conv383 = trunc i32 %add382 to i8
  %183 = load ptr, ptr %z, align 8
  %incdec.ptr384 = getelementptr inbounds nuw i8, ptr %183, i32 1
  store ptr %incdec.ptr384, ptr %z, align 8
  store i8 %conv383, ptr %183, align 1
  %184 = load i32, ptr %c, align 4
  %shr385 = lshr i32 %184, 6
  %and386 = and i32 %shr385, 63
  %conv387 = trunc i32 %and386 to i8
  %conv388 = zext i8 %conv387 to i32
  %add389 = add nsw i32 128, %conv388
  %conv390 = trunc i32 %add389 to i8
  %185 = load ptr, ptr %z, align 8
  %incdec.ptr391 = getelementptr inbounds nuw i8, ptr %185, i32 1
  store ptr %incdec.ptr391, ptr %z, align 8
  store i8 %conv390, ptr %185, align 1
  %186 = load i32, ptr %c, align 4
  %and392 = and i32 %186, 63
  %conv393 = trunc i32 %and392 to i8
  %conv394 = zext i8 %conv393 to i32
  %add395 = add nsw i32 128, %conv394
  %conv396 = trunc i32 %add395 to i8
  %187 = load ptr, ptr %z, align 8
  %incdec.ptr397 = getelementptr inbounds nuw i8, ptr %187, i32 1
  store ptr %incdec.ptr397, ptr %z, align 8
  store i8 %conv396, ptr %187, align 1
  br label %if.end426

if.else398:                                       ; preds = %if.else374
  %188 = load i32, ptr %c, align 4
  %shr399 = lshr i32 %188, 18
  %and400 = and i32 %shr399, 7
  %conv401 = trunc i32 %and400 to i8
  %conv402 = zext i8 %conv401 to i32
  %add403 = add nsw i32 240, %conv402
  %conv404 = trunc i32 %add403 to i8
  %189 = load ptr, ptr %z, align 8
  %incdec.ptr405 = getelementptr inbounds nuw i8, ptr %189, i32 1
  store ptr %incdec.ptr405, ptr %z, align 8
  store i8 %conv404, ptr %189, align 1
  %190 = load i32, ptr %c, align 4
  %shr406 = lshr i32 %190, 12
  %and407 = and i32 %shr406, 63
  %conv408 = trunc i32 %and407 to i8
  %conv409 = zext i8 %conv408 to i32
  %add410 = add nsw i32 128, %conv409
  %conv411 = trunc i32 %add410 to i8
  %191 = load ptr, ptr %z, align 8
  %incdec.ptr412 = getelementptr inbounds nuw i8, ptr %191, i32 1
  store ptr %incdec.ptr412, ptr %z, align 8
  store i8 %conv411, ptr %191, align 1
  %192 = load i32, ptr %c, align 4
  %shr413 = lshr i32 %192, 6
  %and414 = and i32 %shr413, 63
  %conv415 = trunc i32 %and414 to i8
  %conv416 = zext i8 %conv415 to i32
  %add417 = add nsw i32 128, %conv416
  %conv418 = trunc i32 %add417 to i8
  %193 = load ptr, ptr %z, align 8
  %incdec.ptr419 = getelementptr inbounds nuw i8, ptr %193, i32 1
  store ptr %incdec.ptr419, ptr %z, align 8
  store i8 %conv418, ptr %193, align 1
  %194 = load i32, ptr %c, align 4
  %and420 = and i32 %194, 63
  %conv421 = trunc i32 %and420 to i8
  %conv422 = zext i8 %conv421 to i32
  %add423 = add nsw i32 128, %conv422
  %conv424 = trunc i32 %add423 to i8
  %195 = load ptr, ptr %z, align 8
  %incdec.ptr425 = getelementptr inbounds nuw i8, ptr %195, i32 1
  store ptr %incdec.ptr425, ptr %z, align 8
  store i8 %conv424, ptr %195, align 1
  br label %if.end426

if.end426:                                        ; preds = %if.else398, %if.then377
  br label %if.end427

if.end427:                                        ; preds = %if.end426, %if.then360
  br label %if.end428

if.end428:                                        ; preds = %if.end427, %if.then353
  br label %while.cond316, !llvm.loop !13

while.end429:                                     ; preds = %while.cond316
  br label %if.end430

if.end430:                                        ; preds = %while.end429, %while.end314
  %196 = load ptr, ptr %z, align 8
  %197 = load ptr, ptr %zOut, align 8
  %sub.ptr.lhs.cast431 = ptrtoint ptr %196 to i64
  %sub.ptr.rhs.cast432 = ptrtoint ptr %197 to i64
  %sub.ptr.sub433 = sub i64 %sub.ptr.lhs.cast431, %sub.ptr.rhs.cast432
  %conv434 = trunc i64 %sub.ptr.sub433 to i32
  %198 = load ptr, ptr %pMem.addr, align 8
  %n435 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %198, i32 0, i32 4
  store i32 %conv434, ptr %n435, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.end430, %if.end192
  %199 = load ptr, ptr %z, align 8
  store i8 0, ptr %199, align 1
  %200 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %200, i32 0, i32 1
  %201 = load i16, ptr %flags, align 8
  %conv437 = zext i16 %201 to i32
  store i32 %conv437, ptr %c, align 4
  %202 = load ptr, ptr %pMem.addr, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %202)
  %203 = load i32, ptr %c, align 4
  %and438 = and i32 %203, 32831
  %or = or i32 514, %and438
  %conv439 = trunc i32 %or to i16
  %204 = load ptr, ptr %pMem.addr, align 8
  %flags440 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %204, i32 0, i32 1
  store i16 %conv439, ptr %flags440, align 8
  %205 = load i8, ptr %desiredEnc.addr, align 1
  %206 = load ptr, ptr %pMem.addr, align 8
  %enc441 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %206, i32 0, i32 2
  store i8 %205, ptr %enc441, align 2
  %207 = load ptr, ptr %zOut, align 8
  %208 = load ptr, ptr %pMem.addr, align 8
  %z442 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %208, i32 0, i32 5
  store ptr %207, ptr %z442, align 8
  %209 = load ptr, ptr %pMem.addr, align 8
  %z443 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %209, i32 0, i32 5
  %210 = load ptr, ptr %z443, align 8
  %211 = load ptr, ptr %pMem.addr, align 8
  %zMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %211, i32 0, i32 6
  store ptr %210, ptr %zMalloc, align 8
  %212 = load ptr, ptr %pMem.addr, align 8
  %db444 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %212, i32 0, i32 9
  %213 = load ptr, ptr %db444, align 8
  %214 = load ptr, ptr %pMem.addr, align 8
  %z445 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %214, i32 0, i32 5
  %215 = load ptr, ptr %z445, align 8
  %call446 = call i32 @sqlite3DbMallocSize(ptr noundef %213, ptr noundef %215)
  %216 = load ptr, ptr %pMem.addr, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %216, i32 0, i32 7
  store i32 %call446, ptr %szMalloc, align 8
  br label %translate_out

translate_out:                                    ; preds = %if.end436, %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %translate_out, %if.then32, %if.then7
  %217 = load i32, ptr %retval, align 4
  ret i32 %217
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
