; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_Utf8Read(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @patternCompare(ptr noundef %zPattern, ptr noundef %zString, i32 noundef %esc, i32 noundef %noCase) #0 {
entry:
  %retval = alloca i32, align 4
  %zPattern.addr = alloca ptr, align 8
  %zString.addr = alloca ptr, align 8
  %esc.addr = alloca i32, align 4
  %noCase.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %c2 = alloca i32, align 4
  %invert = alloca i32, align 4
  %seen = alloca i32, align 4
  %matchOne = alloca i8, align 1
  %matchAll = alloca i8, align 1
  %matchSet = alloca i8, align 1
  %prevEscape = alloca i32, align 4
  %prior_c = alloca i32, align 4
  store ptr %zPattern, ptr %zPattern.addr, align 8
  store ptr %zString, ptr %zString.addr, align 8
  store i32 %esc, ptr %esc.addr, align 4
  store i32 %noCase, ptr %noCase.addr, align 4
  store i8 63, ptr %matchOne, align 1
  store i8 42, ptr %matchAll, align 1
  store i8 91, ptr %matchSet, align 1
  store i32 0, ptr %prevEscape, align 4
  %0 = load ptr, ptr %zPattern.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %zString.addr, align 8
  %tobool1 = icmp ne ptr %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end251, %if.end
  %2 = load ptr, ptr %zPattern.addr, align 8
  %call = call i32 @PH7_Utf8Read(ptr noundef %2, ptr noundef null, ptr noundef %zPattern.addr)
  store i32 %call, ptr %c, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end252

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %prevEscape, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.else132, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, ptr %c, align 4
  %5 = load i8, ptr %matchAll, align 1
  %conv = zext i8 %5 to i32
  %cmp3 = icmp eq i32 %4, %conv
  br i1 %cmp3, label %if.then5, label %if.else132

if.then5:                                         ; preds = %land.lhs.true
  br label %while.cond6

while.cond6:                                      ; preds = %if.end23, %if.then5
  %6 = load ptr, ptr %zPattern.addr, align 8
  %call7 = call i32 @PH7_Utf8Read(ptr noundef %6, ptr noundef null, ptr noundef %zPattern.addr)
  store i32 %call7, ptr %c, align 4
  %7 = load i8, ptr %matchAll, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp eq i32 %call7, %conv8
  br i1 %cmp9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond6
  %8 = load i32, ptr %c, align 4
  %9 = load i8, ptr %matchOne, align 1
  %conv11 = zext i8 %9 to i32
  %cmp12 = icmp eq i32 %8, %conv11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond6
  %10 = phi i1 [ true, %while.cond6 ], [ %cmp12, %lor.rhs ]
  br i1 %10, label %while.body14, label %while.end

while.body14:                                     ; preds = %lor.end
  %11 = load i32, ptr %c, align 4
  %12 = load i8, ptr %matchOne, align 1
  %conv15 = zext i8 %12 to i32
  %cmp16 = icmp eq i32 %11, %conv15
  br i1 %cmp16, label %land.lhs.true18, label %if.end23

land.lhs.true18:                                  ; preds = %while.body14
  %13 = load ptr, ptr %zString.addr, align 8
  %call19 = call i32 @PH7_Utf8Read(ptr noundef %13, ptr noundef null, ptr noundef %zString.addr)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true18
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %land.lhs.true18, %while.body14
  br label %while.cond6, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %14 = load i32, ptr %c, align 4
  %cmp24 = icmp eq i32 %14, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %while.end
  %15 = load i32, ptr %c, align 4
  %16 = load i32, ptr %esc.addr, align 4
  %cmp27 = icmp eq i32 %15, %16
  br i1 %cmp27, label %if.then29, label %if.else35

if.then29:                                        ; preds = %if.else
  %17 = load ptr, ptr %zPattern.addr, align 8
  %call30 = call i32 @PH7_Utf8Read(ptr noundef %17, ptr noundef null, ptr noundef %zPattern.addr)
  store i32 %call30, ptr %c, align 4
  %18 = load i32, ptr %c, align 4
  %cmp31 = icmp eq i32 %18, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then29
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then29
  br label %if.end72

if.else35:                                        ; preds = %if.else
  %19 = load i32, ptr %c, align 4
  %20 = load i8, ptr %matchSet, align 1
  %conv36 = zext i8 %20 to i32
  %cmp37 = icmp eq i32 %19, %conv36
  br i1 %cmp37, label %if.then39, label %if.end71

if.then39:                                        ; preds = %if.else35
  %21 = load i32, ptr %esc.addr, align 4
  %cmp40 = icmp eq i32 %21, 0
  br i1 %cmp40, label %if.then46, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %if.then39
  %22 = load i8, ptr %matchSet, align 1
  %conv43 = zext i8 %22 to i32
  %cmp44 = icmp slt i32 %conv43, 128
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %lor.lhs.false42, %if.then39
  store i32 0, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %lor.lhs.false42
  br label %while.cond48

while.cond48:                                     ; preds = %if.end66, %if.end47
  %23 = load ptr, ptr %zString.addr, align 8
  %24 = load i8, ptr %23, align 1
  %conv49 = zext i8 %24 to i32
  %tobool50 = icmp ne i32 %conv49, 0
  br i1 %tobool50, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond48
  %25 = load ptr, ptr %zPattern.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %25, i64 -1
  %26 = load ptr, ptr %zString.addr, align 8
  %27 = load i32, ptr %esc.addr, align 4
  %28 = load i32, ptr %noCase.addr, align 4
  %call51 = call i32 @patternCompare(ptr noundef %arrayidx, ptr noundef %26, i32 noundef %27, i32 noundef %28)
  %cmp52 = icmp eq i32 %call51, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond48
  %29 = phi i1 [ false, %while.cond48 ], [ %cmp52, %land.rhs ]
  br i1 %29, label %while.body54, label %while.end67

while.body54:                                     ; preds = %land.end
  %30 = load ptr, ptr %zString.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr, ptr %zString.addr, align 8
  %31 = load i8, ptr %30, align 1
  %conv55 = zext i8 %31 to i32
  %cmp56 = icmp sge i32 %conv55, 192
  br i1 %cmp56, label %if.then58, label %if.end66

if.then58:                                        ; preds = %while.body54
  br label %while.cond59

while.cond59:                                     ; preds = %while.body63, %if.then58
  %32 = load ptr, ptr %zString.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv60 = zext i8 %33 to i32
  %and = and i32 %conv60, 192
  %cmp61 = icmp eq i32 %and, 128
  br i1 %cmp61, label %while.body63, label %while.end65

while.body63:                                     ; preds = %while.cond59
  %34 = load ptr, ptr %zString.addr, align 8
  %incdec.ptr64 = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %incdec.ptr64, ptr %zString.addr, align 8
  br label %while.cond59, !llvm.loop !8

while.end65:                                      ; preds = %while.cond59
  br label %if.end66

if.end66:                                         ; preds = %while.end65, %while.body54
  br label %while.cond48, !llvm.loop !9

while.end67:                                      ; preds = %land.end
  %35 = load ptr, ptr %zString.addr, align 8
  %36 = load i8, ptr %35, align 1
  %conv68 = zext i8 %36 to i32
  %cmp69 = icmp ne i32 %conv68, 0
  %conv70 = zext i1 %cmp69 to i32
  store i32 %conv70, ptr %retval, align 4
  br label %return

if.end71:                                         ; preds = %if.else35
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end34
  br label %if.end73

if.end73:                                         ; preds = %if.end72
  br label %while.cond74

while.cond74:                                     ; preds = %if.end130, %if.end73
  %37 = load ptr, ptr %zString.addr, align 8
  %call75 = call i32 @PH7_Utf8Read(ptr noundef %37, ptr noundef null, ptr noundef %zString.addr)
  store i32 %call75, ptr %c2, align 4
  %cmp76 = icmp ne i32 %call75, 0
  br i1 %cmp76, label %while.body78, label %while.end131

while.body78:                                     ; preds = %while.cond74
  %38 = load i32, ptr %noCase.addr, align 4
  %tobool79 = icmp ne i32 %38, 0
  br i1 %tobool79, label %if.then80, label %if.else111

if.then80:                                        ; preds = %while.body78
  %39 = load i32, ptr %c2, align 4
  %cmp81 = icmp slt i32 %39, 128
  br i1 %cmp81, label %if.then83, label %if.end86

if.then83:                                        ; preds = %if.then80
  %40 = load i32, ptr %c2, align 4
  %idxprom = sext i32 %40 to i64
  %arrayidx84 = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom
  %41 = load i8, ptr %arrayidx84, align 1
  %conv85 = zext i8 %41 to i32
  store i32 %conv85, ptr %c2, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.then80
  %42 = load i32, ptr %c, align 4
  %cmp87 = icmp slt i32 %42, 128
  br i1 %cmp87, label %if.then89, label %if.end93

if.then89:                                        ; preds = %if.end86
  %43 = load i32, ptr %c, align 4
  %idxprom90 = sext i32 %43 to i64
  %arrayidx91 = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom90
  %44 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %44 to i32
  store i32 %conv92, ptr %c, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then89, %if.end86
  br label %while.cond94

while.cond94:                                     ; preds = %if.end109, %if.end93
  %45 = load i32, ptr %c2, align 4
  %cmp95 = icmp ne i32 %45, 0
  br i1 %cmp95, label %land.rhs97, label %land.end100

land.rhs97:                                       ; preds = %while.cond94
  %46 = load i32, ptr %c2, align 4
  %47 = load i32, ptr %c, align 4
  %cmp98 = icmp ne i32 %46, %47
  br label %land.end100

land.end100:                                      ; preds = %land.rhs97, %while.cond94
  %48 = phi i1 [ false, %while.cond94 ], [ %cmp98, %land.rhs97 ]
  br i1 %48, label %while.body101, label %while.end110

while.body101:                                    ; preds = %land.end100
  %49 = load ptr, ptr %zString.addr, align 8
  %call102 = call i32 @PH7_Utf8Read(ptr noundef %49, ptr noundef null, ptr noundef %zString.addr)
  store i32 %call102, ptr %c2, align 4
  %50 = load i32, ptr %c2, align 4
  %cmp103 = icmp slt i32 %50, 128
  br i1 %cmp103, label %if.then105, label %if.end109

if.then105:                                       ; preds = %while.body101
  %51 = load i32, ptr %c2, align 4
  %idxprom106 = sext i32 %51 to i64
  %arrayidx107 = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom106
  %52 = load i8, ptr %arrayidx107, align 1
  %conv108 = zext i8 %52 to i32
  store i32 %conv108, ptr %c2, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %while.body101
  br label %while.cond94, !llvm.loop !10

while.end110:                                     ; preds = %land.end100
  br label %if.end122

if.else111:                                       ; preds = %while.body78
  br label %while.cond112

while.cond112:                                    ; preds = %while.body119, %if.else111
  %53 = load i32, ptr %c2, align 4
  %cmp113 = icmp ne i32 %53, 0
  br i1 %cmp113, label %land.rhs115, label %land.end118

land.rhs115:                                      ; preds = %while.cond112
  %54 = load i32, ptr %c2, align 4
  %55 = load i32, ptr %c, align 4
  %cmp116 = icmp ne i32 %54, %55
  br label %land.end118

land.end118:                                      ; preds = %land.rhs115, %while.cond112
  %56 = phi i1 [ false, %while.cond112 ], [ %cmp116, %land.rhs115 ]
  br i1 %56, label %while.body119, label %while.end121

while.body119:                                    ; preds = %land.end118
  %57 = load ptr, ptr %zString.addr, align 8
  %call120 = call i32 @PH7_Utf8Read(ptr noundef %57, ptr noundef null, ptr noundef %zString.addr)
  store i32 %call120, ptr %c2, align 4
  br label %while.cond112, !llvm.loop !11

while.end121:                                     ; preds = %land.end118
  br label %if.end122

if.end122:                                        ; preds = %while.end121, %while.end110
  %58 = load i32, ptr %c2, align 4
  %cmp123 = icmp eq i32 %58, 0
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end122
  store i32 0, ptr %retval, align 4
  br label %return

if.end126:                                        ; preds = %if.end122
  %59 = load ptr, ptr %zPattern.addr, align 8
  %60 = load ptr, ptr %zString.addr, align 8
  %61 = load i32, ptr %esc.addr, align 4
  %62 = load i32, ptr %noCase.addr, align 4
  %call127 = call i32 @patternCompare(ptr noundef %59, ptr noundef %60, i32 noundef %61, i32 noundef %62)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end126
  store i32 1, ptr %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.end126
  br label %while.cond74, !llvm.loop !12

while.end131:                                     ; preds = %while.cond74
  store i32 0, ptr %retval, align 4
  br label %return

if.else132:                                       ; preds = %land.lhs.true, %while.body
  %63 = load i32, ptr %prevEscape, align 4
  %tobool133 = icmp ne i32 %63, 0
  br i1 %tobool133, label %if.else144, label %land.lhs.true134

land.lhs.true134:                                 ; preds = %if.else132
  %64 = load i32, ptr %c, align 4
  %65 = load i8, ptr %matchOne, align 1
  %conv135 = zext i8 %65 to i32
  %cmp136 = icmp eq i32 %64, %conv135
  br i1 %cmp136, label %if.then138, label %if.else144

if.then138:                                       ; preds = %land.lhs.true134
  %66 = load ptr, ptr %zString.addr, align 8
  %call139 = call i32 @PH7_Utf8Read(ptr noundef %66, ptr noundef null, ptr noundef %zString.addr)
  %cmp140 = icmp eq i32 %call139, 0
  br i1 %cmp140, label %if.then142, label %if.end143

if.then142:                                       ; preds = %if.then138
  store i32 0, ptr %retval, align 4
  br label %return

if.end143:                                        ; preds = %if.then138
  br label %if.end250

if.else144:                                       ; preds = %land.lhs.true134, %if.else132
  %67 = load i32, ptr %c, align 4
  %68 = load i8, ptr %matchSet, align 1
  %conv145 = zext i8 %68 to i32
  %cmp146 = icmp eq i32 %67, %conv145
  br i1 %cmp146, label %if.then148, label %if.else219

if.then148:                                       ; preds = %if.else144
  store i32 0, ptr %prior_c, align 4
  %69 = load i32, ptr %esc.addr, align 4
  %cmp149 = icmp eq i32 %69, 0
  br i1 %cmp149, label %if.then151, label %if.end152

if.then151:                                       ; preds = %if.then148
  store i32 0, ptr %retval, align 4
  br label %return

if.end152:                                        ; preds = %if.then148
  store i32 0, ptr %seen, align 4
  store i32 0, ptr %invert, align 4
  %70 = load ptr, ptr %zString.addr, align 8
  %call153 = call i32 @PH7_Utf8Read(ptr noundef %70, ptr noundef null, ptr noundef %zString.addr)
  store i32 %call153, ptr %c, align 4
  %71 = load i32, ptr %c, align 4
  %cmp154 = icmp eq i32 %71, 0
  br i1 %cmp154, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.end152
  store i32 0, ptr %retval, align 4
  br label %return

if.end157:                                        ; preds = %if.end152
  %72 = load ptr, ptr %zPattern.addr, align 8
  %call158 = call i32 @PH7_Utf8Read(ptr noundef %72, ptr noundef null, ptr noundef %zPattern.addr)
  store i32 %call158, ptr %c2, align 4
  %73 = load i32, ptr %c2, align 4
  %cmp159 = icmp eq i32 %73, 94
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %if.end157
  store i32 1, ptr %invert, align 4
  %74 = load ptr, ptr %zPattern.addr, align 8
  %call162 = call i32 @PH7_Utf8Read(ptr noundef %74, ptr noundef null, ptr noundef %zPattern.addr)
  store i32 %call162, ptr %c2, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %if.end157
  %75 = load i32, ptr %c2, align 4
  %cmp164 = icmp eq i32 %75, 93
  br i1 %cmp164, label %if.then166, label %if.end172

if.then166:                                       ; preds = %if.end163
  %76 = load i32, ptr %c, align 4
  %cmp167 = icmp eq i32 %76, 93
  br i1 %cmp167, label %if.then169, label %if.end170

if.then169:                                       ; preds = %if.then166
  store i32 1, ptr %seen, align 4
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %if.then166
  %77 = load ptr, ptr %zPattern.addr, align 8
  %call171 = call i32 @PH7_Utf8Read(ptr noundef %77, ptr noundef null, ptr noundef %zPattern.addr)
  store i32 %call171, ptr %c2, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.end170, %if.end163
  br label %while.cond173

while.cond173:                                    ; preds = %if.end209, %if.end172
  %78 = load i32, ptr %c2, align 4
  %tobool174 = icmp ne i32 %78, 0
  br i1 %tobool174, label %land.rhs175, label %land.end178

land.rhs175:                                      ; preds = %while.cond173
  %79 = load i32, ptr %c2, align 4
  %cmp176 = icmp ne i32 %79, 93
  br label %land.end178

land.end178:                                      ; preds = %land.rhs175, %while.cond173
  %80 = phi i1 [ false, %while.cond173 ], [ %cmp176, %land.rhs175 ]
  br i1 %80, label %while.body179, label %while.end211

while.body179:                                    ; preds = %land.end178
  %81 = load i32, ptr %c2, align 4
  %cmp180 = icmp eq i32 %81, 45
  br i1 %cmp180, label %land.lhs.true182, label %if.else204

land.lhs.true182:                                 ; preds = %while.body179
  %82 = load ptr, ptr %zPattern.addr, align 8
  %arrayidx183 = getelementptr inbounds i8, ptr %82, i64 0
  %83 = load i8, ptr %arrayidx183, align 1
  %conv184 = zext i8 %83 to i32
  %cmp185 = icmp ne i32 %conv184, 93
  br i1 %cmp185, label %land.lhs.true187, label %if.else204

land.lhs.true187:                                 ; preds = %land.lhs.true182
  %84 = load ptr, ptr %zPattern.addr, align 8
  %arrayidx188 = getelementptr inbounds i8, ptr %84, i64 0
  %85 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %85 to i32
  %cmp190 = icmp ne i32 %conv189, 0
  br i1 %cmp190, label %land.lhs.true192, label %if.else204

land.lhs.true192:                                 ; preds = %land.lhs.true187
  %86 = load i32, ptr %prior_c, align 4
  %cmp193 = icmp sgt i32 %86, 0
  br i1 %cmp193, label %if.then195, label %if.else204

if.then195:                                       ; preds = %land.lhs.true192
  %87 = load ptr, ptr %zPattern.addr, align 8
  %call196 = call i32 @PH7_Utf8Read(ptr noundef %87, ptr noundef null, ptr noundef %zPattern.addr)
  store i32 %call196, ptr %c2, align 4
  %88 = load i32, ptr %c, align 4
  %89 = load i32, ptr %prior_c, align 4
  %cmp197 = icmp sge i32 %88, %89
  br i1 %cmp197, label %land.lhs.true199, label %if.end203

land.lhs.true199:                                 ; preds = %if.then195
  %90 = load i32, ptr %c, align 4
  %91 = load i32, ptr %c2, align 4
  %cmp200 = icmp sle i32 %90, %91
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %land.lhs.true199
  store i32 1, ptr %seen, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %land.lhs.true199, %if.then195
  store i32 0, ptr %prior_c, align 4
  br label %if.end209

if.else204:                                       ; preds = %land.lhs.true192, %land.lhs.true187, %land.lhs.true182, %while.body179
  %92 = load i32, ptr %c, align 4
  %93 = load i32, ptr %c2, align 4
  %cmp205 = icmp eq i32 %92, %93
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.else204
  store i32 1, ptr %seen, align 4
  br label %if.end208

if.end208:                                        ; preds = %if.then207, %if.else204
  %94 = load i32, ptr %c2, align 4
  store i32 %94, ptr %prior_c, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.end208, %if.end203
  %95 = load ptr, ptr %zPattern.addr, align 8
  %call210 = call i32 @PH7_Utf8Read(ptr noundef %95, ptr noundef null, ptr noundef %zPattern.addr)
  store i32 %call210, ptr %c2, align 4
  br label %while.cond173, !llvm.loop !13

while.end211:                                     ; preds = %land.end178
  %96 = load i32, ptr %c2, align 4
  %cmp212 = icmp eq i32 %96, 0
  br i1 %cmp212, label %if.then217, label %lor.lhs.false214

lor.lhs.false214:                                 ; preds = %while.end211
  %97 = load i32, ptr %seen, align 4
  %98 = load i32, ptr %invert, align 4
  %xor = xor i32 %97, %98
  %cmp215 = icmp eq i32 %xor, 0
  br i1 %cmp215, label %if.then217, label %if.end218

if.then217:                                       ; preds = %lor.lhs.false214, %while.end211
  store i32 0, ptr %retval, align 4
  br label %return

if.end218:                                        ; preds = %lor.lhs.false214
  br label %if.end249

if.else219:                                       ; preds = %if.else144
  %99 = load i32, ptr %esc.addr, align 4
  %100 = load i32, ptr %c, align 4
  %cmp220 = icmp eq i32 %99, %100
  br i1 %cmp220, label %land.lhs.true222, label %if.else225

land.lhs.true222:                                 ; preds = %if.else219
  %101 = load i32, ptr %prevEscape, align 4
  %tobool223 = icmp ne i32 %101, 0
  br i1 %tobool223, label %if.else225, label %if.then224

if.then224:                                       ; preds = %land.lhs.true222
  store i32 1, ptr %prevEscape, align 4
  br label %if.end248

if.else225:                                       ; preds = %land.lhs.true222, %if.else219
  %102 = load ptr, ptr %zString.addr, align 8
  %call226 = call i32 @PH7_Utf8Read(ptr noundef %102, ptr noundef null, ptr noundef %zString.addr)
  store i32 %call226, ptr %c2, align 4
  %103 = load i32, ptr %noCase.addr, align 4
  %tobool227 = icmp ne i32 %103, 0
  br i1 %tobool227, label %if.then228, label %if.end243

if.then228:                                       ; preds = %if.else225
  %104 = load i32, ptr %c, align 4
  %cmp229 = icmp slt i32 %104, 128
  br i1 %cmp229, label %if.then231, label %if.end235

if.then231:                                       ; preds = %if.then228
  %105 = load i32, ptr %c, align 4
  %idxprom232 = sext i32 %105 to i64
  %arrayidx233 = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom232
  %106 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %106 to i32
  store i32 %conv234, ptr %c, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then231, %if.then228
  %107 = load i32, ptr %c2, align 4
  %cmp236 = icmp slt i32 %107, 128
  br i1 %cmp236, label %if.then238, label %if.end242

if.then238:                                       ; preds = %if.end235
  %108 = load i32, ptr %c2, align 4
  %idxprom239 = sext i32 %108 to i64
  %arrayidx240 = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom239
  %109 = load i8, ptr %arrayidx240, align 1
  %conv241 = zext i8 %109 to i32
  store i32 %conv241, ptr %c2, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then238, %if.end235
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.else225
  %110 = load i32, ptr %c, align 4
  %111 = load i32, ptr %c2, align 4
  %cmp244 = icmp ne i32 %110, %111
  br i1 %cmp244, label %if.then246, label %if.end247

if.then246:                                       ; preds = %if.end243
  store i32 0, ptr %retval, align 4
  br label %return

if.end247:                                        ; preds = %if.end243
  store i32 0, ptr %prevEscape, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %if.then224
  br label %if.end249

if.end249:                                        ; preds = %if.end248, %if.end218
  br label %if.end250

if.end250:                                        ; preds = %if.end249, %if.end143
  br label %if.end251

if.end251:                                        ; preds = %if.end250
  br label %while.cond, !llvm.loop !14

while.end252:                                     ; preds = %while.cond
  %112 = load ptr, ptr %zString.addr, align 8
  %113 = load i8, ptr %112, align 1
  %conv253 = zext i8 %113 to i32
  %cmp254 = icmp eq i32 %conv253, 0
  %conv255 = zext i1 %cmp254 to i32
  store i32 %conv255, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end252, %if.then246, %if.then217, %if.then156, %if.then151, %if.then142, %while.end131, %if.then129, %if.then125, %while.end67, %if.then46, %if.then33, %if.then26, %if.then22, %if.then
  %114 = load i32, ptr %retval, align 4
  ret i32 %114
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
!14 = distinct !{!14, !7}
