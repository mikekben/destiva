; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compareInfo = type { i8, i8, i8, i8 }

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16
@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @patternCompare(ptr noundef %zPattern, ptr noundef %zString, ptr noundef %pInfo, i32 noundef %matchOther) #0 {
entry:
  %retval = alloca i32, align 4
  %zPattern.addr = alloca ptr, align 8
  %zString.addr = alloca ptr, align 8
  %pInfo.addr = alloca ptr, align 8
  %matchOther.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %matchOne = alloca i32, align 4
  %matchAll = alloca i32, align 4
  %noCase = alloca i8, align 1
  %zEscaped = alloca ptr, align 8
  %bMatch = alloca i32, align 4
  %zStop = alloca [3 x i8], align 1
  %bMatch79 = alloca i32, align 4
  %bMatch116 = alloca i32, align 4
  %prior_c = alloca i32, align 4
  %seen = alloca i32, align 4
  %invert = alloca i32, align 4
  store ptr %zPattern, ptr %zPattern.addr, align 8
  store ptr %zString, ptr %zString.addr, align 8
  store ptr %pInfo, ptr %pInfo.addr, align 8
  store i32 %matchOther, ptr %matchOther.addr, align 4
  %0 = load ptr, ptr %pInfo.addr, align 8
  %matchOne1 = getelementptr inbounds nuw %struct.compareInfo, ptr %0, i32 0, i32 1
  %1 = load i8, ptr %matchOne1, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, ptr %matchOne, align 4
  %2 = load ptr, ptr %pInfo.addr, align 8
  %matchAll2 = getelementptr inbounds nuw %struct.compareInfo, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %matchAll2, align 1
  %conv3 = zext i8 %3 to i32
  store i32 %conv3, ptr %matchAll, align 4
  %4 = load ptr, ptr %pInfo.addr, align 8
  %noCase4 = getelementptr inbounds nuw %struct.compareInfo, ptr %4, i32 0, i32 3
  %5 = load i8, ptr %noCase4, align 1
  store i8 %5, ptr %noCase, align 1
  store ptr null, ptr %zEscaped, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then267, %if.then257, %if.then236, %if.end220, %entry
  %6 = load ptr, ptr %zPattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %7 to i32
  %cmp = icmp slt i32 %conv5, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %8 = load ptr, ptr %zPattern.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %zPattern.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv7 = zext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %call = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, ptr %c, align 4
  %cmp8 = icmp ne i32 %cond, 0
  br i1 %cmp8, label %while.body, label %while.end269

while.body:                                       ; preds = %cond.end
  %10 = load i32, ptr %c, align 4
  %11 = load i32, ptr %matchAll, align 4
  %cmp10 = icmp eq i32 %10, %11
  br i1 %cmp10, label %if.then, label %if.end143

if.then:                                          ; preds = %while.body
  br label %while.cond12

while.cond12:                                     ; preds = %if.end, %if.then
  %12 = load ptr, ptr %zPattern.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %cmp15 = icmp slt i32 %conv14, 128
  br i1 %cmp15, label %cond.true17, label %cond.false20

cond.true17:                                      ; preds = %while.cond12
  %14 = load ptr, ptr %zPattern.addr, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr18, ptr %zPattern.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv19 = zext i8 %15 to i32
  br label %cond.end22

cond.false20:                                     ; preds = %while.cond12
  %call21 = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  br label %cond.end22

cond.end22:                                       ; preds = %cond.false20, %cond.true17
  %cond23 = phi i32 [ %conv19, %cond.true17 ], [ %call21, %cond.false20 ]
  store i32 %cond23, ptr %c, align 4
  %16 = load i32, ptr %matchAll, align 4
  %cmp24 = icmp eq i32 %cond23, %16
  br i1 %cmp24, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end22
  %17 = load i32, ptr %c, align 4
  %18 = load i32, ptr %matchOne, align 4
  %cmp26 = icmp eq i32 %17, %18
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end22
  %19 = phi i1 [ true, %cond.end22 ], [ %cmp26, %lor.rhs ]
  br i1 %19, label %while.body28, label %while.end

while.body28:                                     ; preds = %lor.end
  %20 = load i32, ptr %c, align 4
  %21 = load i32, ptr %matchOne, align 4
  %cmp29 = icmp eq i32 %20, %21
  br i1 %cmp29, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body28
  %call31 = call i32 @sqlite3Utf8Read(ptr noundef %zString.addr)
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then34, label %if.end

if.then34:                                        ; preds = %land.lhs.true
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body28
  br label %while.cond12, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %22 = load i32, ptr %c, align 4
  %cmp35 = icmp eq i32 %22, 0
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %while.end
  %23 = load i32, ptr %c, align 4
  %24 = load i32, ptr %matchOther.addr, align 4
  %cmp38 = icmp eq i32 %23, %24
  br i1 %cmp38, label %if.then40, label %if.end74

if.then40:                                        ; preds = %if.else
  %25 = load ptr, ptr %pInfo.addr, align 8
  %matchSet = getelementptr inbounds nuw %struct.compareInfo, ptr %25, i32 0, i32 2
  %26 = load i8, ptr %matchSet, align 1
  %conv41 = zext i8 %26 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then44, label %if.else50

if.then44:                                        ; preds = %if.then40
  %call45 = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  store i32 %call45, ptr %c, align 4
  %27 = load i32, ptr %c, align 4
  %cmp46 = icmp eq i32 %27, 0
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then44
  store i32 2, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then44
  br label %if.end73

if.else50:                                        ; preds = %if.then40
  br label %while.cond51

while.cond51:                                     ; preds = %if.end71, %if.else50
  %28 = load ptr, ptr %zString.addr, align 8
  %29 = load i8, ptr %28, align 1
  %tobool = icmp ne i8 %29, 0
  br i1 %tobool, label %while.body52, label %while.end72

while.body52:                                     ; preds = %while.cond51
  %30 = load ptr, ptr %zPattern.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %30, i64 -1
  %31 = load ptr, ptr %zString.addr, align 8
  %32 = load ptr, ptr %pInfo.addr, align 8
  %33 = load i32, ptr %matchOther.addr, align 4
  %call54 = call i32 @patternCompare(ptr noundef %arrayidx53, ptr noundef %31, ptr noundef %32, i32 noundef %33)
  store i32 %call54, ptr %bMatch, align 4
  %34 = load i32, ptr %bMatch, align 4
  %cmp55 = icmp ne i32 %34, 1
  br i1 %cmp55, label %if.then57, label %if.end58

if.then57:                                        ; preds = %while.body52
  %35 = load i32, ptr %bMatch, align 4
  store i32 %35, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %while.body52
  %36 = load ptr, ptr %zString.addr, align 8
  %incdec.ptr59 = getelementptr inbounds nuw i8, ptr %36, i32 1
  store ptr %incdec.ptr59, ptr %zString.addr, align 8
  %37 = load i8, ptr %36, align 1
  %conv60 = zext i8 %37 to i32
  %cmp61 = icmp sge i32 %conv60, 192
  br i1 %cmp61, label %if.then63, label %if.end71

if.then63:                                        ; preds = %if.end58
  br label %while.cond64

while.cond64:                                     ; preds = %while.body68, %if.then63
  %38 = load ptr, ptr %zString.addr, align 8
  %39 = load i8, ptr %38, align 1
  %conv65 = zext i8 %39 to i32
  %and = and i32 %conv65, 192
  %cmp66 = icmp eq i32 %and, 128
  br i1 %cmp66, label %while.body68, label %while.end70

while.body68:                                     ; preds = %while.cond64
  %40 = load ptr, ptr %zString.addr, align 8
  %incdec.ptr69 = getelementptr inbounds nuw i8, ptr %40, i32 1
  store ptr %incdec.ptr69, ptr %zString.addr, align 8
  br label %while.cond64, !llvm.loop !8

while.end70:                                      ; preds = %while.cond64
  br label %if.end71

if.end71:                                         ; preds = %while.end70, %if.end58
  br label %while.cond51, !llvm.loop !9

while.end72:                                      ; preds = %while.cond51
  store i32 2, ptr %retval, align 4
  br label %return

if.end73:                                         ; preds = %if.end49
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.else
  br label %if.end75

if.end75:                                         ; preds = %if.end74
  %41 = load i32, ptr %c, align 4
  %cmp76 = icmp ule i32 %41, 128
  br i1 %cmp76, label %if.then78, label %if.else115

if.then78:                                        ; preds = %if.end75
  %42 = load i8, ptr %noCase, align 1
  %tobool80 = icmp ne i8 %42, 0
  br i1 %tobool80, label %if.then81, label %if.else94

if.then81:                                        ; preds = %if.then78
  %43 = load i32, ptr %c, align 4
  %44 = load i32, ptr %c, align 4
  %conv82 = trunc i32 %44 to i8
  %idxprom = zext i8 %conv82 to i64
  %arrayidx83 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %45 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %45 to i32
  %and85 = and i32 %conv84, 32
  %not = xor i32 %and85, -1
  %and86 = and i32 %43, %not
  %conv87 = trunc i32 %and86 to i8
  %arrayidx88 = getelementptr inbounds [3 x i8], ptr %zStop, i64 0, i64 0
  store i8 %conv87, ptr %arrayidx88, align 1
  %46 = load i32, ptr %c, align 4
  %conv89 = trunc i32 %46 to i8
  %idxprom90 = zext i8 %conv89 to i64
  %arrayidx91 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom90
  %47 = load i8, ptr %arrayidx91, align 1
  %arrayidx92 = getelementptr inbounds [3 x i8], ptr %zStop, i64 0, i64 1
  store i8 %47, ptr %arrayidx92, align 1
  %arrayidx93 = getelementptr inbounds [3 x i8], ptr %zStop, i64 0, i64 2
  store i8 0, ptr %arrayidx93, align 1
  br label %if.end98

if.else94:                                        ; preds = %if.then78
  %48 = load i32, ptr %c, align 4
  %conv95 = trunc i32 %48 to i8
  %arrayidx96 = getelementptr inbounds [3 x i8], ptr %zStop, i64 0, i64 0
  store i8 %conv95, ptr %arrayidx96, align 1
  %arrayidx97 = getelementptr inbounds [3 x i8], ptr %zStop, i64 0, i64 1
  store i8 0, ptr %arrayidx97, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.else94, %if.then81
  br label %while.body100

while.body100:                                    ; preds = %if.end113, %if.end98
  %49 = load ptr, ptr %zString.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8], ptr %zStop, i64 0, i64 0
  %call101 = call i64 @strcspn(ptr noundef %49, ptr noundef %arraydecay) #2
  %50 = load ptr, ptr %zString.addr, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %50, i64 %call101
  store ptr %add.ptr, ptr %zString.addr, align 8
  %51 = load ptr, ptr %zString.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %51, i64 0
  %52 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %52 to i32
  %cmp104 = icmp eq i32 %conv103, 0
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %while.body100
  br label %while.end114

if.end107:                                        ; preds = %while.body100
  %53 = load ptr, ptr %zString.addr, align 8
  %incdec.ptr108 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr108, ptr %zString.addr, align 8
  %54 = load ptr, ptr %zPattern.addr, align 8
  %55 = load ptr, ptr %zString.addr, align 8
  %56 = load ptr, ptr %pInfo.addr, align 8
  %57 = load i32, ptr %matchOther.addr, align 4
  %call109 = call i32 @patternCompare(ptr noundef %54, ptr noundef %55, ptr noundef %56, i32 noundef %57)
  store i32 %call109, ptr %bMatch79, align 4
  %58 = load i32, ptr %bMatch79, align 4
  %cmp110 = icmp ne i32 %58, 1
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.end107
  %59 = load i32, ptr %bMatch79, align 4
  store i32 %59, ptr %retval, align 4
  br label %return

if.end113:                                        ; preds = %if.end107
  br label %while.body100

while.end114:                                     ; preds = %if.then106
  br label %if.end142

if.else115:                                       ; preds = %if.end75
  br label %while.cond117

while.cond117:                                    ; preds = %if.end140, %if.then134, %if.else115
  %60 = load ptr, ptr %zString.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %60, i64 0
  %61 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %61 to i32
  %cmp120 = icmp slt i32 %conv119, 128
  br i1 %cmp120, label %cond.true122, label %cond.false125

cond.true122:                                     ; preds = %while.cond117
  %62 = load ptr, ptr %zString.addr, align 8
  %incdec.ptr123 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %incdec.ptr123, ptr %zString.addr, align 8
  %63 = load i8, ptr %62, align 1
  %conv124 = zext i8 %63 to i32
  br label %cond.end127

cond.false125:                                    ; preds = %while.cond117
  %call126 = call i32 @sqlite3Utf8Read(ptr noundef %zString.addr)
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false125, %cond.true122
  %cond128 = phi i32 [ %conv124, %cond.true122 ], [ %call126, %cond.false125 ]
  store i32 %cond128, ptr %c2, align 4
  %cmp129 = icmp ne i32 %cond128, 0
  br i1 %cmp129, label %while.body131, label %while.end141

while.body131:                                    ; preds = %cond.end127
  %64 = load i32, ptr %c2, align 4
  %65 = load i32, ptr %c, align 4
  %cmp132 = icmp ne i32 %64, %65
  br i1 %cmp132, label %if.then134, label %if.end135

if.then134:                                       ; preds = %while.body131
  br label %while.cond117, !llvm.loop !10

if.end135:                                        ; preds = %while.body131
  %66 = load ptr, ptr %zPattern.addr, align 8
  %67 = load ptr, ptr %zString.addr, align 8
  %68 = load ptr, ptr %pInfo.addr, align 8
  %69 = load i32, ptr %matchOther.addr, align 4
  %call136 = call i32 @patternCompare(ptr noundef %66, ptr noundef %67, ptr noundef %68, i32 noundef %69)
  store i32 %call136, ptr %bMatch116, align 4
  %70 = load i32, ptr %bMatch116, align 4
  %cmp137 = icmp ne i32 %70, 1
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end135
  %71 = load i32, ptr %bMatch116, align 4
  store i32 %71, ptr %retval, align 4
  br label %return

if.end140:                                        ; preds = %if.end135
  br label %while.cond117, !llvm.loop !10

while.end141:                                     ; preds = %cond.end127
  br label %if.end142

if.end142:                                        ; preds = %while.end141, %while.end114
  store i32 2, ptr %retval, align 4
  br label %return

if.end143:                                        ; preds = %while.body
  %72 = load i32, ptr %c, align 4
  %73 = load i32, ptr %matchOther.addr, align 4
  %cmp144 = icmp eq i32 %72, %73
  br i1 %cmp144, label %if.then146, label %if.end222

if.then146:                                       ; preds = %if.end143
  %74 = load ptr, ptr %pInfo.addr, align 8
  %matchSet147 = getelementptr inbounds nuw %struct.compareInfo, ptr %74, i32 0, i32 2
  %75 = load i8, ptr %matchSet147, align 1
  %conv148 = zext i8 %75 to i32
  %cmp149 = icmp eq i32 %conv148, 0
  br i1 %cmp149, label %if.then151, label %if.else157

if.then151:                                       ; preds = %if.then146
  %call152 = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  store i32 %call152, ptr %c, align 4
  %76 = load i32, ptr %c, align 4
  %cmp153 = icmp eq i32 %76, 0
  br i1 %cmp153, label %if.then155, label %if.end156

if.then155:                                       ; preds = %if.then151
  store i32 1, ptr %retval, align 4
  br label %return

if.end156:                                        ; preds = %if.then151
  %77 = load ptr, ptr %zPattern.addr, align 8
  store ptr %77, ptr %zEscaped, align 8
  br label %if.end221

if.else157:                                       ; preds = %if.then146
  store i32 0, ptr %prior_c, align 4
  store i32 0, ptr %seen, align 4
  store i32 0, ptr %invert, align 4
  %call158 = call i32 @sqlite3Utf8Read(ptr noundef %zString.addr)
  store i32 %call158, ptr %c, align 4
  %78 = load i32, ptr %c, align 4
  %cmp159 = icmp eq i32 %78, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %if.else157
  store i32 1, ptr %retval, align 4
  br label %return

if.end162:                                        ; preds = %if.else157
  %call163 = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  store i32 %call163, ptr %c2, align 4
  %79 = load i32, ptr %c2, align 4
  %cmp164 = icmp eq i32 %79, 94
  br i1 %cmp164, label %if.then166, label %if.end168

if.then166:                                       ; preds = %if.end162
  store i32 1, ptr %invert, align 4
  %call167 = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  store i32 %call167, ptr %c2, align 4
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.end162
  %80 = load i32, ptr %c2, align 4
  %cmp169 = icmp eq i32 %80, 93
  br i1 %cmp169, label %if.then171, label %if.end177

if.then171:                                       ; preds = %if.end168
  %81 = load i32, ptr %c, align 4
  %cmp172 = icmp eq i32 %81, 93
  br i1 %cmp172, label %if.then174, label %if.end175

if.then174:                                       ; preds = %if.then171
  store i32 1, ptr %seen, align 4
  br label %if.end175

if.end175:                                        ; preds = %if.then174, %if.then171
  %call176 = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  store i32 %call176, ptr %c2, align 4
  br label %if.end177

if.end177:                                        ; preds = %if.end175, %if.end168
  br label %while.cond178

while.cond178:                                    ; preds = %if.end212, %if.end177
  %82 = load i32, ptr %c2, align 4
  %tobool179 = icmp ne i32 %82, 0
  br i1 %tobool179, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond178
  %83 = load i32, ptr %c2, align 4
  %cmp180 = icmp ne i32 %83, 93
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond178
  %84 = phi i1 [ false, %while.cond178 ], [ %cmp180, %land.rhs ]
  br i1 %84, label %while.body182, label %while.end214

while.body182:                                    ; preds = %land.end
  %85 = load i32, ptr %c2, align 4
  %cmp183 = icmp eq i32 %85, 45
  br i1 %cmp183, label %land.lhs.true185, label %if.else207

land.lhs.true185:                                 ; preds = %while.body182
  %86 = load ptr, ptr %zPattern.addr, align 8
  %arrayidx186 = getelementptr inbounds i8, ptr %86, i64 0
  %87 = load i8, ptr %arrayidx186, align 1
  %conv187 = zext i8 %87 to i32
  %cmp188 = icmp ne i32 %conv187, 93
  br i1 %cmp188, label %land.lhs.true190, label %if.else207

land.lhs.true190:                                 ; preds = %land.lhs.true185
  %88 = load ptr, ptr %zPattern.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, ptr %88, i64 0
  %89 = load i8, ptr %arrayidx191, align 1
  %conv192 = zext i8 %89 to i32
  %cmp193 = icmp ne i32 %conv192, 0
  br i1 %cmp193, label %land.lhs.true195, label %if.else207

land.lhs.true195:                                 ; preds = %land.lhs.true190
  %90 = load i32, ptr %prior_c, align 4
  %cmp196 = icmp ugt i32 %90, 0
  br i1 %cmp196, label %if.then198, label %if.else207

if.then198:                                       ; preds = %land.lhs.true195
  %call199 = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  store i32 %call199, ptr %c2, align 4
  %91 = load i32, ptr %c, align 4
  %92 = load i32, ptr %prior_c, align 4
  %cmp200 = icmp uge i32 %91, %92
  br i1 %cmp200, label %land.lhs.true202, label %if.end206

land.lhs.true202:                                 ; preds = %if.then198
  %93 = load i32, ptr %c, align 4
  %94 = load i32, ptr %c2, align 4
  %cmp203 = icmp ule i32 %93, %94
  br i1 %cmp203, label %if.then205, label %if.end206

if.then205:                                       ; preds = %land.lhs.true202
  store i32 1, ptr %seen, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then205, %land.lhs.true202, %if.then198
  store i32 0, ptr %prior_c, align 4
  br label %if.end212

if.else207:                                       ; preds = %land.lhs.true195, %land.lhs.true190, %land.lhs.true185, %while.body182
  %95 = load i32, ptr %c, align 4
  %96 = load i32, ptr %c2, align 4
  %cmp208 = icmp eq i32 %95, %96
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %if.else207
  store i32 1, ptr %seen, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %if.else207
  %97 = load i32, ptr %c2, align 4
  store i32 %97, ptr %prior_c, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.end206
  %call213 = call i32 @sqlite3Utf8Read(ptr noundef %zPattern.addr)
  store i32 %call213, ptr %c2, align 4
  br label %while.cond178, !llvm.loop !11

while.end214:                                     ; preds = %land.end
  %98 = load i32, ptr %c2, align 4
  %cmp215 = icmp eq i32 %98, 0
  br i1 %cmp215, label %if.then219, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end214
  %99 = load i32, ptr %seen, align 4
  %100 = load i32, ptr %invert, align 4
  %xor = xor i32 %99, %100
  %cmp217 = icmp eq i32 %xor, 0
  br i1 %cmp217, label %if.then219, label %if.end220

if.then219:                                       ; preds = %lor.lhs.false, %while.end214
  store i32 1, ptr %retval, align 4
  br label %return

if.end220:                                        ; preds = %lor.lhs.false
  br label %while.cond, !llvm.loop !12

if.end221:                                        ; preds = %if.end156
  br label %if.end222

if.end222:                                        ; preds = %if.end221, %if.end143
  %101 = load ptr, ptr %zString.addr, align 8
  %arrayidx223 = getelementptr inbounds i8, ptr %101, i64 0
  %102 = load i8, ptr %arrayidx223, align 1
  %conv224 = zext i8 %102 to i32
  %cmp225 = icmp slt i32 %conv224, 128
  br i1 %cmp225, label %cond.true227, label %cond.false230

cond.true227:                                     ; preds = %if.end222
  %103 = load ptr, ptr %zString.addr, align 8
  %incdec.ptr228 = getelementptr inbounds nuw i8, ptr %103, i32 1
  store ptr %incdec.ptr228, ptr %zString.addr, align 8
  %104 = load i8, ptr %103, align 1
  %conv229 = zext i8 %104 to i32
  br label %cond.end232

cond.false230:                                    ; preds = %if.end222
  %call231 = call i32 @sqlite3Utf8Read(ptr noundef %zString.addr)
  br label %cond.end232

cond.end232:                                      ; preds = %cond.false230, %cond.true227
  %cond233 = phi i32 [ %conv229, %cond.true227 ], [ %call231, %cond.false230 ]
  store i32 %cond233, ptr %c2, align 4
  %105 = load i32, ptr %c, align 4
  %106 = load i32, ptr %c2, align 4
  %cmp234 = icmp eq i32 %105, %106
  br i1 %cmp234, label %if.then236, label %if.end237

if.then236:                                       ; preds = %cond.end232
  br label %while.cond, !llvm.loop !12

if.end237:                                        ; preds = %cond.end232
  %107 = load i8, ptr %noCase, align 1
  %conv238 = zext i8 %107 to i32
  %tobool239 = icmp ne i32 %conv238, 0
  br i1 %tobool239, label %land.lhs.true240, label %if.end258

land.lhs.true240:                                 ; preds = %if.end237
  %108 = load i32, ptr %c, align 4
  %conv241 = trunc i32 %108 to i8
  %idxprom242 = zext i8 %conv241 to i64
  %arrayidx243 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom242
  %109 = load i8, ptr %arrayidx243, align 1
  %conv244 = zext i8 %109 to i32
  %110 = load i32, ptr %c2, align 4
  %conv245 = trunc i32 %110 to i8
  %idxprom246 = zext i8 %conv245 to i64
  %arrayidx247 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom246
  %111 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %111 to i32
  %cmp249 = icmp eq i32 %conv244, %conv248
  br i1 %cmp249, label %land.lhs.true251, label %if.end258

land.lhs.true251:                                 ; preds = %land.lhs.true240
  %112 = load i32, ptr %c, align 4
  %cmp252 = icmp ult i32 %112, 128
  br i1 %cmp252, label %land.lhs.true254, label %if.end258

land.lhs.true254:                                 ; preds = %land.lhs.true251
  %113 = load i32, ptr %c2, align 4
  %cmp255 = icmp ult i32 %113, 128
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %land.lhs.true254
  br label %while.cond, !llvm.loop !12

if.end258:                                        ; preds = %land.lhs.true254, %land.lhs.true251, %land.lhs.true240, %if.end237
  %114 = load i32, ptr %c, align 4
  %115 = load i32, ptr %matchOne, align 4
  %cmp259 = icmp eq i32 %114, %115
  br i1 %cmp259, label %land.lhs.true261, label %if.end268

land.lhs.true261:                                 ; preds = %if.end258
  %116 = load ptr, ptr %zPattern.addr, align 8
  %117 = load ptr, ptr %zEscaped, align 8
  %cmp262 = icmp ne ptr %116, %117
  br i1 %cmp262, label %land.lhs.true264, label %if.end268

land.lhs.true264:                                 ; preds = %land.lhs.true261
  %118 = load i32, ptr %c2, align 4
  %cmp265 = icmp ne i32 %118, 0
  br i1 %cmp265, label %if.then267, label %if.end268

if.then267:                                       ; preds = %land.lhs.true264
  br label %while.cond, !llvm.loop !12

if.end268:                                        ; preds = %land.lhs.true264, %land.lhs.true261, %if.end258
  store i32 1, ptr %retval, align 4
  br label %return

while.end269:                                     ; preds = %cond.end
  %119 = load ptr, ptr %zString.addr, align 8
  %120 = load i8, ptr %119, align 1
  %conv270 = zext i8 %120 to i32
  %cmp271 = icmp eq i32 %conv270, 0
  %121 = zext i1 %cmp271 to i64
  %cond273 = select i1 %cmp271, i32 0, i32 1
  store i32 %cond273, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end269, %if.end268, %if.then219, %if.then161, %if.then155, %if.end142, %if.then139, %if.then112, %while.end72, %if.then57, %if.then48, %if.then37, %if.then34
  %122 = load i32, ptr %retval, align 4
  ret i32 %122
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Utf8Read(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strcspn(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
