; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyXMLRawStr = type { ptr, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyXMLRawStrNS = type { ptr, i32, i32, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }

@.str.593 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.594 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.595 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.596 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.597 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.598 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.599 = external hidden unnamed_addr constant [34 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPop(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetReset(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @XMLProcessStartTag(ptr noundef %pParse, ptr noundef %pToken, ptr noundef %pTag, ptr noundef %pAttrSet, ptr noundef %pTagStack) #1 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %pTag.addr = alloca ptr, align 8
  %pAttrSet.addr = alloca ptr, align 8
  %pTagStack.addr = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %sEntry = alloca %struct.SyXMLRawStr, align 8
  %rc = alloca i32, align 4
  %c = alloca i32, align 4
  %is_ns = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pTag, ptr %pTag.addr, align 8
  store ptr %pAttrSet, ptr %pAttrSet.addr, align 8
  store ptr %pTagStack, ptr %pTagStack.addr, align 8
  %0 = load ptr, ptr %pToken.addr, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %0, i32 0, i32 0
  store ptr %sData, ptr %pIn, align 8
  %1 = load ptr, ptr %pAttrSet.addr, align 8
  %call = call i32 @SySetReset(ptr noundef %1)
  %2 = load ptr, ptr %pIn, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  store ptr %3, ptr %zIn, align 8
  %4 = load ptr, ptr %zIn, align 8
  %5 = load ptr, ptr %pIn, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %zIn, align 8
  %8 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %7, %8
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %9 = load ptr, ptr %zIn, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %10 to i32
  %cmp2 = icmp slt i32 %conv, 192
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call4 = call ptr @__ctype_b_loc() #2
  %11 = load ptr, ptr %call4, align 8
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %13 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %11, i64 %idxprom7
  %14 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %14 to i32
  %and = and i32 %conv9, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %pToken.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %nLine, align 4
  %19 = load ptr, ptr %pTag.addr, align 8
  %nLine10 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %19, i32 0, i32 2
  store i32 %18, ptr %nLine10, align 4
  %nLine11 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 2
  store i32 %18, ptr %nLine11, align 4
  %20 = load ptr, ptr %zIn, align 8
  store ptr %20, ptr %zCur, align 8
  br label %while.cond12

while.cond12:                                     ; preds = %if.end159, %while.end
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %cmp13 = icmp ult ptr %21, %22
  br i1 %cmp13, label %while.body15, label %while.end160

while.body15:                                     ; preds = %while.cond12
  %23 = load ptr, ptr %zIn, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %24 to i32
  %cmp18 = icmp sge i32 %conv17, 192
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %while.body15
  %25 = load ptr, ptr %zIn, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr20, ptr %zIn, align 8
  br label %while.cond21

while.cond21:                                     ; preds = %while.body31, %if.then
  %26 = load ptr, ptr %zIn, align 8
  %27 = load ptr, ptr %zEnd, align 8
  %cmp22 = icmp ult ptr %26, %27
  br i1 %cmp22, label %land.rhs24, label %land.end30

land.rhs24:                                       ; preds = %while.cond21
  %28 = load ptr, ptr %zIn, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %29 to i32
  %and27 = and i32 %conv26, 192
  %cmp28 = icmp eq i32 %and27, 128
  br label %land.end30

land.end30:                                       ; preds = %land.rhs24, %while.cond21
  %30 = phi i1 [ false, %while.cond21 ], [ %cmp28, %land.rhs24 ]
  br i1 %30, label %while.body31, label %while.end33

while.body31:                                     ; preds = %land.end30
  %31 = load ptr, ptr %zIn, align 8
  %incdec.ptr32 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr32, ptr %zIn, align 8
  br label %while.cond21, !llvm.loop !8

while.end33:                                      ; preds = %land.end30
  br label %if.end159

if.else:                                          ; preds = %while.body15
  %call34 = call ptr @__ctype_b_loc() #2
  %32 = load ptr, ptr %call34, align 8
  %33 = load ptr, ptr %zIn, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %34 to i32
  %idxprom37 = sext i32 %conv36 to i64
  %arrayidx38 = getelementptr inbounds i16, ptr %32, i64 %idxprom37
  %35 = load i16, ptr %arrayidx38, align 2
  %conv39 = zext i16 %35 to i32
  %and40 = and i32 %conv39, 8192
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.else43

if.then42:                                        ; preds = %if.else
  br label %while.end160

if.else43:                                        ; preds = %if.else
  %36 = load ptr, ptr %zIn, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %37 to i32
  %cmp46 = icmp eq i32 %conv45, 60
  br i1 %cmp46, label %if.then147, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else43
  %38 = load ptr, ptr %zIn, align 8
  %arrayidx48 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %39 to i32
  %cmp50 = icmp eq i32 %conv49, 36
  br i1 %cmp50, label %if.then147, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %40 = load ptr, ptr %zIn, align 8
  %arrayidx53 = getelementptr inbounds i8, ptr %40, i64 0
  %41 = load i8, ptr %arrayidx53, align 1
  %conv54 = sext i8 %41 to i32
  %cmp55 = icmp eq i32 %conv54, 34
  br i1 %cmp55, label %if.then147, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false52
  %42 = load ptr, ptr %zIn, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx58, align 1
  %conv59 = sext i8 %43 to i32
  %cmp60 = icmp eq i32 %conv59, 39
  br i1 %cmp60, label %if.then147, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false57
  %44 = load ptr, ptr %zIn, align 8
  %arrayidx63 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx63, align 1
  %conv64 = sext i8 %45 to i32
  %cmp65 = icmp eq i32 %conv64, 38
  br i1 %cmp65, label %if.then147, label %lor.lhs.false67

lor.lhs.false67:                                  ; preds = %lor.lhs.false62
  %46 = load ptr, ptr %zIn, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx68, align 1
  %conv69 = sext i8 %47 to i32
  %cmp70 = icmp eq i32 %conv69, 40
  br i1 %cmp70, label %if.then147, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false67
  %48 = load ptr, ptr %zIn, align 8
  %arrayidx73 = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx73, align 1
  %conv74 = sext i8 %49 to i32
  %cmp75 = icmp eq i32 %conv74, 41
  br i1 %cmp75, label %if.then147, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false72
  %50 = load ptr, ptr %zIn, align 8
  %arrayidx78 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx78, align 1
  %conv79 = sext i8 %51 to i32
  %cmp80 = icmp eq i32 %conv79, 42
  br i1 %cmp80, label %if.then147, label %lor.lhs.false82

lor.lhs.false82:                                  ; preds = %lor.lhs.false77
  %52 = load ptr, ptr %zIn, align 8
  %arrayidx83 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx83, align 1
  %conv84 = sext i8 %53 to i32
  %cmp85 = icmp eq i32 %conv84, 37
  br i1 %cmp85, label %if.then147, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false82
  %54 = load ptr, ptr %zIn, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx88, align 1
  %conv89 = sext i8 %55 to i32
  %cmp90 = icmp eq i32 %conv89, 35
  br i1 %cmp90, label %if.then147, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false87
  %56 = load ptr, ptr %zIn, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %56, i64 0
  %57 = load i8, ptr %arrayidx93, align 1
  %conv94 = sext i8 %57 to i32
  %cmp95 = icmp eq i32 %conv94, 124
  br i1 %cmp95, label %if.then147, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %lor.lhs.false92
  %58 = load ptr, ptr %zIn, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %58, i64 0
  %59 = load i8, ptr %arrayidx98, align 1
  %conv99 = sext i8 %59 to i32
  %cmp100 = icmp eq i32 %conv99, 47
  br i1 %cmp100, label %if.then147, label %lor.lhs.false102

lor.lhs.false102:                                 ; preds = %lor.lhs.false97
  %60 = load ptr, ptr %zIn, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %60, i64 0
  %61 = load i8, ptr %arrayidx103, align 1
  %conv104 = sext i8 %61 to i32
  %cmp105 = icmp eq i32 %conv104, 126
  br i1 %cmp105, label %if.then147, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %lor.lhs.false102
  %62 = load ptr, ptr %zIn, align 8
  %arrayidx108 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx108, align 1
  %conv109 = sext i8 %63 to i32
  %cmp110 = icmp eq i32 %conv109, 123
  br i1 %cmp110, label %if.then147, label %lor.lhs.false112

lor.lhs.false112:                                 ; preds = %lor.lhs.false107
  %64 = load ptr, ptr %zIn, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx113, align 1
  %conv114 = sext i8 %65 to i32
  %cmp115 = icmp eq i32 %conv114, 125
  br i1 %cmp115, label %if.then147, label %lor.lhs.false117

lor.lhs.false117:                                 ; preds = %lor.lhs.false112
  %66 = load ptr, ptr %zIn, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %66, i64 0
  %67 = load i8, ptr %arrayidx118, align 1
  %conv119 = sext i8 %67 to i32
  %cmp120 = icmp eq i32 %conv119, 91
  br i1 %cmp120, label %if.then147, label %lor.lhs.false122

lor.lhs.false122:                                 ; preds = %lor.lhs.false117
  %68 = load ptr, ptr %zIn, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %68, i64 0
  %69 = load i8, ptr %arrayidx123, align 1
  %conv124 = sext i8 %69 to i32
  %cmp125 = icmp eq i32 %conv124, 93
  br i1 %cmp125, label %if.then147, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false122
  %70 = load ptr, ptr %zIn, align 8
  %arrayidx128 = getelementptr inbounds i8, ptr %70, i64 0
  %71 = load i8, ptr %arrayidx128, align 1
  %conv129 = sext i8 %71 to i32
  %cmp130 = icmp eq i32 %conv129, 92
  br i1 %cmp130, label %if.then147, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %lor.lhs.false127
  %72 = load ptr, ptr %zIn, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %72, i64 0
  %73 = load i8, ptr %arrayidx133, align 1
  %conv134 = sext i8 %73 to i32
  %cmp135 = icmp eq i32 %conv134, 59
  br i1 %cmp135, label %if.then147, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %lor.lhs.false132
  %74 = load ptr, ptr %zIn, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %74, i64 0
  %75 = load i8, ptr %arrayidx138, align 1
  %conv139 = sext i8 %75 to i32
  %cmp140 = icmp eq i32 %conv139, 94
  br i1 %cmp140, label %if.then147, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %lor.lhs.false137
  %76 = load ptr, ptr %zIn, align 8
  %arrayidx143 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx143, align 1
  %conv144 = sext i8 %77 to i32
  %cmp145 = icmp eq i32 %conv144, 96
  br i1 %cmp145, label %if.then147, label %if.end156

if.then147:                                       ; preds = %lor.lhs.false142, %lor.lhs.false137, %lor.lhs.false132, %lor.lhs.false127, %lor.lhs.false122, %lor.lhs.false117, %lor.lhs.false112, %lor.lhs.false107, %lor.lhs.false102, %lor.lhs.false97, %lor.lhs.false92, %lor.lhs.false87, %lor.lhs.false82, %lor.lhs.false77, %lor.lhs.false72, %lor.lhs.false67, %lor.lhs.false62, %lor.lhs.false57, %lor.lhs.false52, %lor.lhs.false, %if.else43
  %78 = load ptr, ptr %pParse.addr, align 8
  %xError = getelementptr inbounds nuw %struct.SyXMLParser, ptr %78, i32 0, i32 11
  %79 = load ptr, ptr %xError, align 8
  %tobool148 = icmp ne ptr %79, null
  br i1 %tobool148, label %if.then149, label %if.end155

if.then149:                                       ; preds = %if.then147
  %80 = load ptr, ptr %pParse.addr, align 8
  %xError150 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %80, i32 0, i32 11
  %81 = load ptr, ptr %xError150, align 8
  %82 = load ptr, ptr %pToken.addr, align 8
  %83 = load ptr, ptr %pParse.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyXMLParser, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %pUserData, align 8
  %call151 = call i32 %81(ptr noundef @.str.593, i32 noundef 3, ptr noundef %82, ptr noundef %84)
  store i32 %call151, ptr %rc, align 4
  %85 = load i32, ptr %rc, align 4
  %cmp152 = icmp eq i32 %85, -10
  br i1 %cmp152, label %if.then154, label %if.end

if.then154:                                       ; preds = %if.then149
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then149
  br label %if.end155

if.end155:                                        ; preds = %if.end, %if.then147
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %lor.lhs.false142
  %86 = load ptr, ptr %zIn, align 8
  %incdec.ptr157 = getelementptr inbounds nuw i8, ptr %86, i32 1
  store ptr %incdec.ptr157, ptr %zIn, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.end156
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %while.end33
  br label %while.cond12, !llvm.loop !9

while.end160:                                     ; preds = %if.then42, %while.cond12
  %87 = load ptr, ptr %zCur, align 8
  %88 = load ptr, ptr %zIn, align 8
  %cmp161 = icmp uge ptr %87, %88
  br i1 %cmp161, label %if.then163, label %if.end175

if.then163:                                       ; preds = %while.end160
  %89 = load ptr, ptr %pParse.addr, align 8
  %xError164 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %89, i32 0, i32 11
  %90 = load ptr, ptr %xError164, align 8
  %tobool165 = icmp ne ptr %90, null
  br i1 %tobool165, label %if.then166, label %if.end174

if.then166:                                       ; preds = %if.then163
  %91 = load ptr, ptr %pParse.addr, align 8
  %xError167 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %91, i32 0, i32 11
  %92 = load ptr, ptr %xError167, align 8
  %93 = load ptr, ptr %pToken.addr, align 8
  %94 = load ptr, ptr %pParse.addr, align 8
  %pUserData168 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %94, i32 0, i32 1
  %95 = load ptr, ptr %pUserData168, align 8
  %call169 = call i32 %92(ptr noundef @.str.594, i32 noundef 3, ptr noundef %93, ptr noundef %95)
  store i32 %call169, ptr %rc, align 4
  %96 = load i32, ptr %rc, align 4
  %cmp170 = icmp eq i32 %96, -10
  br i1 %cmp170, label %if.then172, label %if.end173

if.then172:                                       ; preds = %if.then166
  store i32 -10, ptr %retval, align 4
  br label %return

if.end173:                                        ; preds = %if.then166
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then163
  store i32 -12, ptr %retval, align 4
  br label %return

if.end175:                                        ; preds = %while.end160
  %97 = load ptr, ptr %zCur, align 8
  %98 = load ptr, ptr %pTag.addr, align 8
  %zString176 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %98, i32 0, i32 0
  store ptr %97, ptr %zString176, align 8
  %99 = load ptr, ptr %zIn, align 8
  %100 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %99 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %100 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv177 = trunc i64 %sub.ptr.sub to i32
  %101 = load ptr, ptr %pTag.addr, align 8
  %nByte178 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %101, i32 0, i32 1
  store i32 %conv177, ptr %nByte178, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end478, %if.end175
  store i32 0, ptr %is_ns, align 4
  br label %while.cond179

while.cond179:                                    ; preds = %while.body197, %for.cond
  %102 = load ptr, ptr %zIn, align 8
  %103 = load ptr, ptr %zEnd, align 8
  %cmp180 = icmp ult ptr %102, %103
  br i1 %cmp180, label %land.lhs.true182, label %land.end196

land.lhs.true182:                                 ; preds = %while.cond179
  %104 = load ptr, ptr %zIn, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %104, i64 0
  %105 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %105 to i32
  %cmp185 = icmp slt i32 %conv184, 192
  br i1 %cmp185, label %land.rhs187, label %land.end196

land.rhs187:                                      ; preds = %land.lhs.true182
  %call188 = call ptr @__ctype_b_loc() #2
  %106 = load ptr, ptr %call188, align 8
  %107 = load ptr, ptr %zIn, align 8
  %arrayidx189 = getelementptr inbounds i8, ptr %107, i64 0
  %108 = load i8, ptr %arrayidx189, align 1
  %conv190 = sext i8 %108 to i32
  %idxprom191 = sext i32 %conv190 to i64
  %arrayidx192 = getelementptr inbounds i16, ptr %106, i64 %idxprom191
  %109 = load i16, ptr %arrayidx192, align 2
  %conv193 = zext i16 %109 to i32
  %and194 = and i32 %conv193, 8192
  %tobool195 = icmp ne i32 %and194, 0
  br label %land.end196

land.end196:                                      ; preds = %land.rhs187, %land.lhs.true182, %while.cond179
  %110 = phi i1 [ false, %land.lhs.true182 ], [ false, %while.cond179 ], [ %tobool195, %land.rhs187 ]
  br i1 %110, label %while.body197, label %while.end199

while.body197:                                    ; preds = %land.end196
  %111 = load ptr, ptr %zIn, align 8
  %incdec.ptr198 = getelementptr inbounds nuw i8, ptr %111, i32 1
  store ptr %incdec.ptr198, ptr %zIn, align 8
  br label %while.cond179, !llvm.loop !10

while.end199:                                     ; preds = %land.end196
  %112 = load ptr, ptr %zIn, align 8
  %113 = load ptr, ptr %zEnd, align 8
  %cmp200 = icmp uge ptr %112, %113
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %while.end199
  br label %for.end

if.end203:                                        ; preds = %while.end199
  %114 = load ptr, ptr %zIn, align 8
  store ptr %114, ptr %zCur, align 8
  br label %while.cond204

while.cond204:                                    ; preds = %if.end246, %if.end203
  %115 = load ptr, ptr %zIn, align 8
  %116 = load ptr, ptr %zEnd, align 8
  %cmp205 = icmp ult ptr %115, %116
  br i1 %cmp205, label %land.rhs207, label %land.end212

land.rhs207:                                      ; preds = %while.cond204
  %117 = load ptr, ptr %zIn, align 8
  %arrayidx208 = getelementptr inbounds i8, ptr %117, i64 0
  %118 = load i8, ptr %arrayidx208, align 1
  %conv209 = sext i8 %118 to i32
  %cmp210 = icmp ne i32 %conv209, 61
  br label %land.end212

land.end212:                                      ; preds = %land.rhs207, %while.cond204
  %119 = phi i1 [ false, %while.cond204 ], [ %cmp210, %land.rhs207 ]
  br i1 %119, label %while.body213, label %while.end247

while.body213:                                    ; preds = %land.end212
  %120 = load ptr, ptr %zIn, align 8
  %arrayidx214 = getelementptr inbounds i8, ptr %120, i64 0
  %121 = load i8, ptr %arrayidx214, align 1
  %conv215 = zext i8 %121 to i32
  %cmp216 = icmp sge i32 %conv215, 192
  br i1 %cmp216, label %if.then218, label %if.else233

if.then218:                                       ; preds = %while.body213
  %122 = load ptr, ptr %zIn, align 8
  %incdec.ptr219 = getelementptr inbounds nuw i8, ptr %122, i32 1
  store ptr %incdec.ptr219, ptr %zIn, align 8
  br label %while.cond220

while.cond220:                                    ; preds = %while.body230, %if.then218
  %123 = load ptr, ptr %zIn, align 8
  %124 = load ptr, ptr %zEnd, align 8
  %cmp221 = icmp ult ptr %123, %124
  br i1 %cmp221, label %land.rhs223, label %land.end229

land.rhs223:                                      ; preds = %while.cond220
  %125 = load ptr, ptr %zIn, align 8
  %arrayidx224 = getelementptr inbounds i8, ptr %125, i64 0
  %126 = load i8, ptr %arrayidx224, align 1
  %conv225 = zext i8 %126 to i32
  %and226 = and i32 %conv225, 192
  %cmp227 = icmp eq i32 %and226, 128
  br label %land.end229

land.end229:                                      ; preds = %land.rhs223, %while.cond220
  %127 = phi i1 [ false, %while.cond220 ], [ %cmp227, %land.rhs223 ]
  br i1 %127, label %while.body230, label %while.end232

while.body230:                                    ; preds = %land.end229
  %128 = load ptr, ptr %zIn, align 8
  %incdec.ptr231 = getelementptr inbounds nuw i8, ptr %128, i32 1
  store ptr %incdec.ptr231, ptr %zIn, align 8
  br label %while.cond220, !llvm.loop !11

while.end232:                                     ; preds = %land.end229
  br label %if.end246

if.else233:                                       ; preds = %while.body213
  %call234 = call ptr @__ctype_b_loc() #2
  %129 = load ptr, ptr %call234, align 8
  %130 = load ptr, ptr %zIn, align 8
  %arrayidx235 = getelementptr inbounds i8, ptr %130, i64 0
  %131 = load i8, ptr %arrayidx235, align 1
  %conv236 = sext i8 %131 to i32
  %idxprom237 = sext i32 %conv236 to i64
  %arrayidx238 = getelementptr inbounds i16, ptr %129, i64 %idxprom237
  %132 = load i16, ptr %arrayidx238, align 2
  %conv239 = zext i16 %132 to i32
  %and240 = and i32 %conv239, 8192
  %tobool241 = icmp ne i32 %and240, 0
  br i1 %tobool241, label %if.then242, label %if.else243

if.then242:                                       ; preds = %if.else233
  br label %while.end247

if.else243:                                       ; preds = %if.else233
  %133 = load ptr, ptr %zIn, align 8
  %incdec.ptr244 = getelementptr inbounds nuw i8, ptr %133, i32 1
  store ptr %incdec.ptr244, ptr %zIn, align 8
  br label %if.end245

if.end245:                                        ; preds = %if.else243
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %while.end232
  br label %while.cond204, !llvm.loop !12

while.end247:                                     ; preds = %if.then242, %land.end212
  %134 = load ptr, ptr %zCur, align 8
  %135 = load ptr, ptr %zIn, align 8
  %cmp248 = icmp uge ptr %134, %135
  br i1 %cmp248, label %if.then250, label %if.end262

if.then250:                                       ; preds = %while.end247
  %136 = load ptr, ptr %pParse.addr, align 8
  %xError251 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %136, i32 0, i32 11
  %137 = load ptr, ptr %xError251, align 8
  %tobool252 = icmp ne ptr %137, null
  br i1 %tobool252, label %if.then253, label %if.end261

if.then253:                                       ; preds = %if.then250
  %138 = load ptr, ptr %pParse.addr, align 8
  %xError254 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %138, i32 0, i32 11
  %139 = load ptr, ptr %xError254, align 8
  %140 = load ptr, ptr %pToken.addr, align 8
  %141 = load ptr, ptr %pParse.addr, align 8
  %pUserData255 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %141, i32 0, i32 1
  %142 = load ptr, ptr %pUserData255, align 8
  %call256 = call i32 %139(ptr noundef @.str.595, i32 noundef 3, ptr noundef %140, ptr noundef %142)
  store i32 %call256, ptr %rc, align 4
  %143 = load i32, ptr %rc, align 4
  %cmp257 = icmp eq i32 %143, -10
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %if.then253
  store i32 -10, ptr %retval, align 4
  br label %return

if.end260:                                        ; preds = %if.then253
  br label %if.end261

if.end261:                                        ; preds = %if.end260, %if.then250
  store i32 -12, ptr %retval, align 4
  br label %return

if.end262:                                        ; preds = %while.end247
  %144 = load ptr, ptr %zCur, align 8
  %zString263 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 0
  store ptr %144, ptr %zString263, align 8
  %145 = load ptr, ptr %zIn, align 8
  %146 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast264 = ptrtoint ptr %145 to i64
  %sub.ptr.rhs.cast265 = ptrtoint ptr %146 to i64
  %sub.ptr.sub266 = sub i64 %sub.ptr.lhs.cast264, %sub.ptr.rhs.cast265
  %conv267 = trunc i64 %sub.ptr.sub266 to i32
  %nByte268 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 1
  store i32 %conv267, ptr %nByte268, align 8
  %147 = load ptr, ptr %pParse.addr, align 8
  %nFlags = getelementptr inbounds nuw %struct.SyXMLParser, ptr %147, i32 0, i32 5
  %148 = load i32, ptr %nFlags, align 8
  %and269 = and i32 %148, 1
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %land.lhs.true271, label %if.end282

land.lhs.true271:                                 ; preds = %if.end262
  %nByte272 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 1
  %149 = load i32, ptr %nByte272, align 8
  %conv273 = zext i32 %149 to i64
  %cmp274 = icmp uge i64 %conv273, 5
  br i1 %cmp274, label %land.lhs.true276, label %if.end282

land.lhs.true276:                                 ; preds = %land.lhs.true271
  %zString277 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 0
  %150 = load ptr, ptr %zString277, align 8
  %call278 = call i32 @SyMemcmp(ptr noundef %150, ptr noundef @.str.596, i32 noundef 5)
  %cmp279 = icmp eq i32 %call278, 0
  br i1 %cmp279, label %if.then281, label %if.end282

if.then281:                                       ; preds = %land.lhs.true276
  store i32 1, ptr %is_ns, align 4
  br label %if.end282

if.end282:                                        ; preds = %if.then281, %land.lhs.true276, %land.lhs.true271, %if.end262
  br label %while.cond283

while.cond283:                                    ; preds = %while.body301, %if.end282
  %151 = load ptr, ptr %zIn, align 8
  %152 = load ptr, ptr %zEnd, align 8
  %cmp284 = icmp ult ptr %151, %152
  br i1 %cmp284, label %land.lhs.true286, label %land.end300

land.lhs.true286:                                 ; preds = %while.cond283
  %153 = load ptr, ptr %zIn, align 8
  %arrayidx287 = getelementptr inbounds i8, ptr %153, i64 0
  %154 = load i8, ptr %arrayidx287, align 1
  %conv288 = zext i8 %154 to i32
  %cmp289 = icmp slt i32 %conv288, 192
  br i1 %cmp289, label %land.rhs291, label %land.end300

land.rhs291:                                      ; preds = %land.lhs.true286
  %call292 = call ptr @__ctype_b_loc() #2
  %155 = load ptr, ptr %call292, align 8
  %156 = load ptr, ptr %zIn, align 8
  %arrayidx293 = getelementptr inbounds i8, ptr %156, i64 0
  %157 = load i8, ptr %arrayidx293, align 1
  %conv294 = sext i8 %157 to i32
  %idxprom295 = sext i32 %conv294 to i64
  %arrayidx296 = getelementptr inbounds i16, ptr %155, i64 %idxprom295
  %158 = load i16, ptr %arrayidx296, align 2
  %conv297 = zext i16 %158 to i32
  %and298 = and i32 %conv297, 8192
  %tobool299 = icmp ne i32 %and298, 0
  br label %land.end300

land.end300:                                      ; preds = %land.rhs291, %land.lhs.true286, %while.cond283
  %159 = phi i1 [ false, %land.lhs.true286 ], [ false, %while.cond283 ], [ %tobool299, %land.rhs291 ]
  br i1 %159, label %while.body301, label %while.end303

while.body301:                                    ; preds = %land.end300
  %160 = load ptr, ptr %zIn, align 8
  %incdec.ptr302 = getelementptr inbounds nuw i8, ptr %160, i32 1
  store ptr %incdec.ptr302, ptr %zIn, align 8
  br label %while.cond283, !llvm.loop !13

while.end303:                                     ; preds = %land.end300
  %161 = load ptr, ptr %zIn, align 8
  %162 = load ptr, ptr %zEnd, align 8
  %cmp304 = icmp uge ptr %161, %162
  br i1 %cmp304, label %if.then311, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %while.end303
  %163 = load ptr, ptr %zIn, align 8
  %arrayidx307 = getelementptr inbounds i8, ptr %163, i64 0
  %164 = load i8, ptr %arrayidx307, align 1
  %conv308 = sext i8 %164 to i32
  %cmp309 = icmp ne i32 %conv308, 61
  br i1 %cmp309, label %if.then311, label %if.end323

if.then311:                                       ; preds = %lor.lhs.false306, %while.end303
  %165 = load ptr, ptr %pParse.addr, align 8
  %xError312 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %165, i32 0, i32 11
  %166 = load ptr, ptr %xError312, align 8
  %tobool313 = icmp ne ptr %166, null
  br i1 %tobool313, label %if.then314, label %if.end322

if.then314:                                       ; preds = %if.then311
  %167 = load ptr, ptr %pParse.addr, align 8
  %xError315 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %167, i32 0, i32 11
  %168 = load ptr, ptr %xError315, align 8
  %169 = load ptr, ptr %pToken.addr, align 8
  %170 = load ptr, ptr %pParse.addr, align 8
  %pUserData316 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %170, i32 0, i32 1
  %171 = load ptr, ptr %pUserData316, align 8
  %call317 = call i32 %168(ptr noundef @.str.597, i32 noundef 3, ptr noundef %169, ptr noundef %171)
  store i32 %call317, ptr %rc, align 4
  %172 = load i32, ptr %rc, align 4
  %cmp318 = icmp eq i32 %172, -10
  br i1 %cmp318, label %if.then320, label %if.end321

if.then320:                                       ; preds = %if.then314
  store i32 -10, ptr %retval, align 4
  br label %return

if.end321:                                        ; preds = %if.then314
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %if.then311
  store i32 -12, ptr %retval, align 4
  br label %return

if.end323:                                        ; preds = %lor.lhs.false306
  br label %while.cond324

while.cond324:                                    ; preds = %while.body348, %if.end323
  %nByte325 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 1
  %173 = load i32, ptr %nByte325, align 8
  %cmp326 = icmp ugt i32 %173, 0
  br i1 %cmp326, label %land.lhs.true328, label %land.end347

land.lhs.true328:                                 ; preds = %while.cond324
  %174 = load ptr, ptr %zCur, align 8
  %nByte329 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 1
  %175 = load i32, ptr %nByte329, align 8
  %sub = sub i32 %175, 1
  %idxprom330 = zext i32 %sub to i64
  %arrayidx331 = getelementptr inbounds nuw i8, ptr %174, i64 %idxprom330
  %176 = load i8, ptr %arrayidx331, align 1
  %conv332 = zext i8 %176 to i32
  %cmp333 = icmp slt i32 %conv332, 192
  br i1 %cmp333, label %land.rhs335, label %land.end347

land.rhs335:                                      ; preds = %land.lhs.true328
  %call336 = call ptr @__ctype_b_loc() #2
  %177 = load ptr, ptr %call336, align 8
  %178 = load ptr, ptr %zCur, align 8
  %nByte337 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 1
  %179 = load i32, ptr %nByte337, align 8
  %sub338 = sub i32 %179, 1
  %idxprom339 = zext i32 %sub338 to i64
  %arrayidx340 = getelementptr inbounds nuw i8, ptr %178, i64 %idxprom339
  %180 = load i8, ptr %arrayidx340, align 1
  %conv341 = sext i8 %180 to i32
  %idxprom342 = sext i32 %conv341 to i64
  %arrayidx343 = getelementptr inbounds i16, ptr %177, i64 %idxprom342
  %181 = load i16, ptr %arrayidx343, align 2
  %conv344 = zext i16 %181 to i32
  %and345 = and i32 %conv344, 8192
  %tobool346 = icmp ne i32 %and345, 0
  br label %land.end347

land.end347:                                      ; preds = %land.rhs335, %land.lhs.true328, %while.cond324
  %182 = phi i1 [ false, %land.lhs.true328 ], [ false, %while.cond324 ], [ %tobool346, %land.rhs335 ]
  br i1 %182, label %while.body348, label %while.end350

while.body348:                                    ; preds = %land.end347
  %nByte349 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 1
  %183 = load i32, ptr %nByte349, align 8
  %dec = add i32 %183, -1
  store i32 %dec, ptr %nByte349, align 8
  br label %while.cond324, !llvm.loop !14

while.end350:                                     ; preds = %land.end347
  %184 = load ptr, ptr %pAttrSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %184, i32 0, i32 1
  %185 = load ptr, ptr %pBase, align 8
  %186 = load ptr, ptr %pAttrSet.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %186, i32 0, i32 2
  %187 = load i32, ptr %nUsed, align 8
  %call351 = call i32 @XMLCheckDuplicateAttr(ptr noundef %185, i32 noundef %187, ptr noundef %sEntry)
  %tobool352 = icmp ne i32 %call351, 0
  br i1 %tobool352, label %if.then353, label %if.end365

if.then353:                                       ; preds = %while.end350
  %188 = load ptr, ptr %pParse.addr, align 8
  %xError354 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %188, i32 0, i32 11
  %189 = load ptr, ptr %xError354, align 8
  %tobool355 = icmp ne ptr %189, null
  br i1 %tobool355, label %if.then356, label %if.end364

if.then356:                                       ; preds = %if.then353
  %190 = load ptr, ptr %pParse.addr, align 8
  %xError357 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %190, i32 0, i32 11
  %191 = load ptr, ptr %xError357, align 8
  %192 = load ptr, ptr %pToken.addr, align 8
  %193 = load ptr, ptr %pParse.addr, align 8
  %pUserData358 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %193, i32 0, i32 1
  %194 = load ptr, ptr %pUserData358, align 8
  %call359 = call i32 %191(ptr noundef @.str.598, i32 noundef 9, ptr noundef %192, ptr noundef %194)
  store i32 %call359, ptr %rc, align 4
  %195 = load i32, ptr %rc, align 4
  %cmp360 = icmp eq i32 %195, -10
  br i1 %cmp360, label %if.then362, label %if.end363

if.then362:                                       ; preds = %if.then356
  store i32 -10, ptr %retval, align 4
  br label %return

if.end363:                                        ; preds = %if.then356
  br label %if.end364

if.end364:                                        ; preds = %if.end363, %if.then353
  store i32 -12, ptr %retval, align 4
  br label %return

if.end365:                                        ; preds = %while.end350
  %196 = load ptr, ptr %pAttrSet.addr, align 8
  %call366 = call i32 @SySetPut(ptr noundef %196, ptr noundef %sEntry)
  %cmp367 = icmp ne i32 0, %call366
  br i1 %cmp367, label %if.then369, label %if.end370

if.then369:                                       ; preds = %if.end365
  store i32 -10, ptr %retval, align 4
  br label %return

if.end370:                                        ; preds = %if.end365
  %197 = load ptr, ptr %zIn, align 8
  %incdec.ptr371 = getelementptr inbounds nuw i8, ptr %197, i32 1
  store ptr %incdec.ptr371, ptr %zIn, align 8
  br label %while.cond372

while.cond372:                                    ; preds = %while.body390, %if.end370
  %198 = load ptr, ptr %zIn, align 8
  %199 = load ptr, ptr %zEnd, align 8
  %cmp373 = icmp ult ptr %198, %199
  br i1 %cmp373, label %land.lhs.true375, label %land.end389

land.lhs.true375:                                 ; preds = %while.cond372
  %200 = load ptr, ptr %zIn, align 8
  %arrayidx376 = getelementptr inbounds i8, ptr %200, i64 0
  %201 = load i8, ptr %arrayidx376, align 1
  %conv377 = zext i8 %201 to i32
  %cmp378 = icmp slt i32 %conv377, 192
  br i1 %cmp378, label %land.rhs380, label %land.end389

land.rhs380:                                      ; preds = %land.lhs.true375
  %call381 = call ptr @__ctype_b_loc() #2
  %202 = load ptr, ptr %call381, align 8
  %203 = load ptr, ptr %zIn, align 8
  %arrayidx382 = getelementptr inbounds i8, ptr %203, i64 0
  %204 = load i8, ptr %arrayidx382, align 1
  %conv383 = sext i8 %204 to i32
  %idxprom384 = sext i32 %conv383 to i64
  %arrayidx385 = getelementptr inbounds i16, ptr %202, i64 %idxprom384
  %205 = load i16, ptr %arrayidx385, align 2
  %conv386 = zext i16 %205 to i32
  %and387 = and i32 %conv386, 8192
  %tobool388 = icmp ne i32 %and387, 0
  br label %land.end389

land.end389:                                      ; preds = %land.rhs380, %land.lhs.true375, %while.cond372
  %206 = phi i1 [ false, %land.lhs.true375 ], [ false, %while.cond372 ], [ %tobool388, %land.rhs380 ]
  br i1 %206, label %while.body390, label %while.end392

while.body390:                                    ; preds = %land.end389
  %207 = load ptr, ptr %zIn, align 8
  %incdec.ptr391 = getelementptr inbounds nuw i8, ptr %207, i32 1
  store ptr %incdec.ptr391, ptr %zIn, align 8
  br label %while.cond372, !llvm.loop !15

while.end392:                                     ; preds = %land.end389
  %208 = load ptr, ptr %zIn, align 8
  %209 = load ptr, ptr %zEnd, align 8
  %cmp393 = icmp uge ptr %208, %209
  br i1 %cmp393, label %if.then395, label %if.end408

if.then395:                                       ; preds = %while.end392
  %210 = load ptr, ptr %pParse.addr, align 8
  %xError396 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %210, i32 0, i32 11
  %211 = load ptr, ptr %xError396, align 8
  %tobool397 = icmp ne ptr %211, null
  br i1 %tobool397, label %if.then398, label %if.end406

if.then398:                                       ; preds = %if.then395
  %212 = load ptr, ptr %pParse.addr, align 8
  %xError399 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %212, i32 0, i32 11
  %213 = load ptr, ptr %xError399, align 8
  %214 = load ptr, ptr %pToken.addr, align 8
  %215 = load ptr, ptr %pParse.addr, align 8
  %pUserData400 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %215, i32 0, i32 1
  %216 = load ptr, ptr %pUserData400, align 8
  %call401 = call i32 %213(ptr noundef @.str.597, i32 noundef 3, ptr noundef %214, ptr noundef %216)
  store i32 %call401, ptr %rc, align 4
  %217 = load i32, ptr %rc, align 4
  %cmp402 = icmp eq i32 %217, -10
  br i1 %cmp402, label %if.then404, label %if.end405

if.then404:                                       ; preds = %if.then398
  store i32 -10, ptr %retval, align 4
  br label %return

if.end405:                                        ; preds = %if.then398
  br label %if.end406

if.end406:                                        ; preds = %if.end405, %if.then395
  %218 = load ptr, ptr %pAttrSet.addr, align 8
  %call407 = call ptr @SySetPop(ptr noundef %218)
  store i32 -12, ptr %retval, align 4
  br label %return

if.end408:                                        ; preds = %while.end392
  %219 = load ptr, ptr %zIn, align 8
  %arrayidx409 = getelementptr inbounds i8, ptr %219, i64 0
  %220 = load i8, ptr %arrayidx409, align 1
  %conv410 = sext i8 %220 to i32
  %cmp411 = icmp ne i32 %conv410, 39
  br i1 %cmp411, label %land.lhs.true413, label %if.end431

land.lhs.true413:                                 ; preds = %if.end408
  %221 = load ptr, ptr %zIn, align 8
  %arrayidx414 = getelementptr inbounds i8, ptr %221, i64 0
  %222 = load i8, ptr %arrayidx414, align 1
  %conv415 = sext i8 %222 to i32
  %cmp416 = icmp ne i32 %conv415, 34
  br i1 %cmp416, label %if.then418, label %if.end431

if.then418:                                       ; preds = %land.lhs.true413
  %223 = load ptr, ptr %pParse.addr, align 8
  %xError419 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %223, i32 0, i32 11
  %224 = load ptr, ptr %xError419, align 8
  %tobool420 = icmp ne ptr %224, null
  br i1 %tobool420, label %if.then421, label %if.end429

if.then421:                                       ; preds = %if.then418
  %225 = load ptr, ptr %pParse.addr, align 8
  %xError422 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %225, i32 0, i32 11
  %226 = load ptr, ptr %xError422, align 8
  %227 = load ptr, ptr %pToken.addr, align 8
  %228 = load ptr, ptr %pParse.addr, align 8
  %pUserData423 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %228, i32 0, i32 1
  %229 = load ptr, ptr %pUserData423, align 8
  %call424 = call i32 %226(ptr noundef @.str.599, i32 noundef 3, ptr noundef %227, ptr noundef %229)
  store i32 %call424, ptr %rc, align 4
  %230 = load i32, ptr %rc, align 4
  %cmp425 = icmp eq i32 %230, -10
  br i1 %cmp425, label %if.then427, label %if.end428

if.then427:                                       ; preds = %if.then421
  store i32 -10, ptr %retval, align 4
  br label %return

if.end428:                                        ; preds = %if.then421
  br label %if.end429

if.end429:                                        ; preds = %if.end428, %if.then418
  %231 = load ptr, ptr %pAttrSet.addr, align 8
  %call430 = call ptr @SySetPop(ptr noundef %231)
  store i32 -12, ptr %retval, align 4
  br label %return

if.end431:                                        ; preds = %land.lhs.true413, %if.end408
  %232 = load ptr, ptr %zIn, align 8
  %arrayidx432 = getelementptr inbounds i8, ptr %232, i64 0
  %233 = load i8, ptr %arrayidx432, align 1
  %conv433 = sext i8 %233 to i32
  store i32 %conv433, ptr %c, align 4
  %234 = load ptr, ptr %zIn, align 8
  %incdec.ptr434 = getelementptr inbounds nuw i8, ptr %234, i32 1
  store ptr %incdec.ptr434, ptr %zIn, align 8
  %235 = load ptr, ptr %zIn, align 8
  store ptr %235, ptr %zCur, align 8
  br label %while.cond435

while.cond435:                                    ; preds = %while.body444, %if.end431
  %236 = load ptr, ptr %zIn, align 8
  %237 = load ptr, ptr %zEnd, align 8
  %cmp436 = icmp ult ptr %236, %237
  br i1 %cmp436, label %land.rhs438, label %land.end443

land.rhs438:                                      ; preds = %while.cond435
  %238 = load ptr, ptr %zIn, align 8
  %arrayidx439 = getelementptr inbounds i8, ptr %238, i64 0
  %239 = load i8, ptr %arrayidx439, align 1
  %conv440 = sext i8 %239 to i32
  %240 = load i32, ptr %c, align 4
  %cmp441 = icmp ne i32 %conv440, %240
  br label %land.end443

land.end443:                                      ; preds = %land.rhs438, %while.cond435
  %241 = phi i1 [ false, %while.cond435 ], [ %cmp441, %land.rhs438 ]
  br i1 %241, label %while.body444, label %while.end446

while.body444:                                    ; preds = %land.end443
  %242 = load ptr, ptr %zIn, align 8
  %incdec.ptr445 = getelementptr inbounds nuw i8, ptr %242, i32 1
  store ptr %incdec.ptr445, ptr %zIn, align 8
  br label %while.cond435, !llvm.loop !16

while.end446:                                     ; preds = %land.end443
  %243 = load ptr, ptr %zIn, align 8
  %244 = load ptr, ptr %zEnd, align 8
  %cmp447 = icmp uge ptr %243, %244
  br i1 %cmp447, label %if.then449, label %if.end462

if.then449:                                       ; preds = %while.end446
  %245 = load ptr, ptr %pParse.addr, align 8
  %xError450 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %245, i32 0, i32 11
  %246 = load ptr, ptr %xError450, align 8
  %tobool451 = icmp ne ptr %246, null
  br i1 %tobool451, label %if.then452, label %if.end460

if.then452:                                       ; preds = %if.then449
  %247 = load ptr, ptr %pParse.addr, align 8
  %xError453 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %247, i32 0, i32 11
  %248 = load ptr, ptr %xError453, align 8
  %249 = load ptr, ptr %pToken.addr, align 8
  %250 = load ptr, ptr %pParse.addr, align 8
  %pUserData454 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %250, i32 0, i32 1
  %251 = load ptr, ptr %pUserData454, align 8
  %call455 = call i32 %248(ptr noundef @.str.599, i32 noundef 3, ptr noundef %249, ptr noundef %251)
  store i32 %call455, ptr %rc, align 4
  %252 = load i32, ptr %rc, align 4
  %cmp456 = icmp eq i32 %252, -10
  br i1 %cmp456, label %if.then458, label %if.end459

if.then458:                                       ; preds = %if.then452
  store i32 -10, ptr %retval, align 4
  br label %return

if.end459:                                        ; preds = %if.then452
  br label %if.end460

if.end460:                                        ; preds = %if.end459, %if.then449
  %253 = load ptr, ptr %pAttrSet.addr, align 8
  %call461 = call ptr @SySetPop(ptr noundef %253)
  store i32 -12, ptr %retval, align 4
  br label %return

if.end462:                                        ; preds = %while.end446
  %254 = load ptr, ptr %zCur, align 8
  %zString463 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 0
  store ptr %254, ptr %zString463, align 8
  %255 = load ptr, ptr %zIn, align 8
  %256 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast464 = ptrtoint ptr %255 to i64
  %sub.ptr.rhs.cast465 = ptrtoint ptr %256 to i64
  %sub.ptr.sub466 = sub i64 %sub.ptr.lhs.cast464, %sub.ptr.rhs.cast465
  %conv467 = trunc i64 %sub.ptr.sub466 to i32
  %nByte468 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sEntry, i32 0, i32 1
  store i32 %conv467, ptr %nByte468, align 8
  %257 = load ptr, ptr %pAttrSet.addr, align 8
  %call469 = call i32 @SySetPut(ptr noundef %257, ptr noundef %sEntry)
  %cmp470 = icmp ne i32 0, %call469
  br i1 %cmp470, label %if.then472, label %if.end473

if.then472:                                       ; preds = %if.end462
  store i32 -10, ptr %retval, align 4
  br label %return

if.end473:                                        ; preds = %if.end462
  %258 = load ptr, ptr %zIn, align 8
  %incdec.ptr474 = getelementptr inbounds nuw i8, ptr %258, i32 1
  store ptr %incdec.ptr474, ptr %zIn, align 8
  %259 = load i32, ptr %is_ns, align 4
  %tobool475 = icmp ne i32 %259, 0
  br i1 %tobool475, label %if.then476, label %if.end478

if.then476:                                       ; preds = %if.end473
  %260 = load ptr, ptr %pParse.addr, align 8
  %261 = load ptr, ptr %pTag.addr, align 8
  %262 = load ptr, ptr %pToken.addr, align 8
  %263 = load ptr, ptr %pAttrSet.addr, align 8
  %call477 = call i32 @XMLProcessNamesSpace(ptr noundef %260, ptr noundef %261, ptr noundef %262, ptr noundef %263)
  br label %if.end478

if.end478:                                        ; preds = %if.then476, %if.end473
  br label %for.cond

for.end:                                          ; preds = %if.then202
  %264 = load ptr, ptr %pToken.addr, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %264, i32 0, i32 1
  %265 = load i32, ptr %nType, align 8
  %cmp479 = icmp eq i32 %265, 16
  br i1 %cmp479, label %if.then481, label %if.end483

if.then481:                                       ; preds = %for.end
  %266 = load ptr, ptr %pTagStack.addr, align 8
  %267 = load ptr, ptr %pTag.addr, align 8
  %call482 = call i32 @SySetPut(ptr noundef %266, ptr noundef %267)
  store i32 %call482, ptr %rc, align 4
  br label %if.end483

if.end483:                                        ; preds = %if.then481, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end483, %if.then472, %if.end460, %if.then458, %if.end429, %if.then427, %if.end406, %if.then404, %if.then369, %if.end364, %if.then362, %if.end322, %if.then320, %if.end261, %if.then259, %if.end174, %if.then172, %if.then154
  %268 = load i32, ptr %retval, align 4
  ret i32 %268
}

; Function Attrs: nounwind uwtable
declare hidden i32 @XMLCheckDuplicateAttr(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @XMLProcessNamesSpace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
