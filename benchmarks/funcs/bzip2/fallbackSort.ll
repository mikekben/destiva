; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str.48 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.49 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.50 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.51 = external hidden unnamed_addr constant [34 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden void @fallbackSort(ptr noundef %fmap, ptr noundef %eclass, ptr noundef %bhtab, i32 noundef %nblock, i32 noundef %verb) #0 {
entry:
  %fmap.addr = alloca ptr, align 8
  %eclass.addr = alloca ptr, align 8
  %bhtab.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %verb.addr = alloca i32, align 4
  %ftab = alloca [257 x i32], align 16
  %ftabCopy = alloca [256 x i32], align 16
  %H = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %cc = alloca i32, align 4
  %cc1 = alloca i32, align 4
  %nNotDone = alloca i32, align 4
  %nBhtab = alloca i32, align 4
  %eclass8 = alloca ptr, align 8
  store ptr %fmap, ptr %fmap.addr, align 8
  store ptr %eclass, ptr %eclass.addr, align 8
  store ptr %bhtab, ptr %bhtab.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store i32 %verb, ptr %verb.addr, align 4
  %0 = load ptr, ptr %eclass.addr, align 8
  store ptr %0, ptr %eclass8, align 8
  %1 = load i32, ptr %verb.addr, align 4
  %cmp = icmp sge i32 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.48) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %3, 257
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %nblock.addr, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end12

for.body4:                                        ; preds = %for.cond2
  %8 = load ptr, ptr %eclass8, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 %idxprom5
  %10 = load i8, ptr %arrayidx6, align 1
  %idxprom7 = zext i8 %10 to i64
  %arrayidx8 = getelementptr inbounds nuw [257 x i32], ptr %ftab, i64 0, i64 %idxprom7
  %11 = load i32, ptr %arrayidx8, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, ptr %arrayidx8, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body4
  %12 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %12, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond2, !llvm.loop !8

for.end12:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end12
  %13 = load i32, ptr %i, align 4
  %cmp14 = icmp slt i32 %13, 256
  br i1 %cmp14, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond13
  %14 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom16
  %15 = load i32, ptr %arrayidx17, align 4
  %16 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [256 x i32], ptr %ftabCopy, i64 0, i64 %idxprom18
  store i32 %15, ptr %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %17 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond13, !llvm.loop !9

for.end22:                                        ; preds = %for.cond13
  store i32 1, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc30, %for.end22
  %18 = load i32, ptr %i, align 4
  %cmp24 = icmp slt i32 %18, 257
  br i1 %cmp24, label %for.body25, label %for.end32

for.body25:                                       ; preds = %for.cond23
  %19 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %19, 1
  %idxprom26 = sext i32 %sub to i64
  %arrayidx27 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom26
  %20 = load i32, ptr %arrayidx27, align 4
  %21 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom28
  %22 = load i32, ptr %arrayidx29, align 4
  %add = add nsw i32 %22, %20
  store i32 %add, ptr %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body25
  %23 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond23, !llvm.loop !10

for.end32:                                        ; preds = %for.cond23
  store i32 0, ptr %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc45, %for.end32
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %nblock.addr, align 4
  %cmp34 = icmp slt i32 %24, %25
  br i1 %cmp34, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond33
  %26 = load ptr, ptr %eclass8, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %26, i64 %idxprom36
  %28 = load i8, ptr %arrayidx37, align 1
  %conv = zext i8 %28 to i32
  store i32 %conv, ptr %j, align 4
  %29 = load i32, ptr %j, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom38
  %30 = load i32, ptr %arrayidx39, align 4
  %sub40 = sub nsw i32 %30, 1
  store i32 %sub40, ptr %k, align 4
  %31 = load i32, ptr %k, align 4
  %32 = load i32, ptr %j, align 4
  %idxprom41 = sext i32 %32 to i64
  %arrayidx42 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom41
  store i32 %31, ptr %arrayidx42, align 4
  %33 = load i32, ptr %i, align 4
  %34 = load ptr, ptr %fmap.addr, align 8
  %35 = load i32, ptr %k, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds i32, ptr %34, i64 %idxprom43
  store i32 %33, ptr %arrayidx44, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %for.body35
  %36 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %36, 1
  store i32 %inc46, ptr %i, align 4
  br label %for.cond33, !llvm.loop !11

for.end47:                                        ; preds = %for.cond33
  %37 = load i32, ptr %nblock.addr, align 4
  %div = sdiv i32 %37, 32
  %add48 = add nsw i32 2, %div
  store i32 %add48, ptr %nBhtab, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc55, %for.end47
  %38 = load i32, ptr %i, align 4
  %39 = load i32, ptr %nBhtab, align 4
  %cmp50 = icmp slt i32 %38, %39
  br i1 %cmp50, label %for.body52, label %for.end57

for.body52:                                       ; preds = %for.cond49
  %40 = load ptr, ptr %bhtab.addr, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %41 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %40, i64 %idxprom53
  store i32 0, ptr %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body52
  %42 = load i32, ptr %i, align 4
  %inc56 = add nsw i32 %42, 1
  store i32 %inc56, ptr %i, align 4
  br label %for.cond49, !llvm.loop !12

for.end57:                                        ; preds = %for.cond49
  store i32 0, ptr %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc68, %for.end57
  %43 = load i32, ptr %i, align 4
  %cmp59 = icmp slt i32 %43, 256
  br i1 %cmp59, label %for.body61, label %for.end70

for.body61:                                       ; preds = %for.cond58
  %44 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %44 to i64
  %arrayidx63 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom62
  %45 = load i32, ptr %arrayidx63, align 4
  %and = and i32 %45, 31
  %shl = shl i32 1, %and
  %46 = load ptr, ptr %bhtab.addr, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %47 to i64
  %arrayidx65 = getelementptr inbounds [257 x i32], ptr %ftab, i64 0, i64 %idxprom64
  %48 = load i32, ptr %arrayidx65, align 4
  %shr = ashr i32 %48, 5
  %idxprom66 = sext i32 %shr to i64
  %arrayidx67 = getelementptr inbounds i32, ptr %46, i64 %idxprom66
  %49 = load i32, ptr %arrayidx67, align 4
  %or = or i32 %49, %shl
  store i32 %or, ptr %arrayidx67, align 4
  br label %for.inc68

for.inc68:                                        ; preds = %for.body61
  %50 = load i32, ptr %i, align 4
  %inc69 = add nsw i32 %50, 1
  store i32 %inc69, ptr %i, align 4
  br label %for.cond58, !llvm.loop !13

for.end70:                                        ; preds = %for.cond58
  store i32 0, ptr %i, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc96, %for.end70
  %51 = load i32, ptr %i, align 4
  %cmp72 = icmp slt i32 %51, 32
  br i1 %cmp72, label %for.body74, label %for.end98

for.body74:                                       ; preds = %for.cond71
  %52 = load i32, ptr %nblock.addr, align 4
  %53 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %53
  %add75 = add nsw i32 %52, %mul
  %and76 = and i32 %add75, 31
  %shl77 = shl i32 1, %and76
  %54 = load ptr, ptr %bhtab.addr, align 8
  %55 = load i32, ptr %nblock.addr, align 4
  %56 = load i32, ptr %i, align 4
  %mul78 = mul nsw i32 2, %56
  %add79 = add nsw i32 %55, %mul78
  %shr80 = ashr i32 %add79, 5
  %idxprom81 = sext i32 %shr80 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %54, i64 %idxprom81
  %57 = load i32, ptr %arrayidx82, align 4
  %or83 = or i32 %57, %shl77
  store i32 %or83, ptr %arrayidx82, align 4
  %58 = load i32, ptr %nblock.addr, align 4
  %59 = load i32, ptr %i, align 4
  %mul84 = mul nsw i32 2, %59
  %add85 = add nsw i32 %58, %mul84
  %add86 = add nsw i32 %add85, 1
  %and87 = and i32 %add86, 31
  %shl88 = shl i32 1, %and87
  %not = xor i32 %shl88, -1
  %60 = load ptr, ptr %bhtab.addr, align 8
  %61 = load i32, ptr %nblock.addr, align 4
  %62 = load i32, ptr %i, align 4
  %mul89 = mul nsw i32 2, %62
  %add90 = add nsw i32 %61, %mul89
  %add91 = add nsw i32 %add90, 1
  %shr92 = ashr i32 %add91, 5
  %idxprom93 = sext i32 %shr92 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %60, i64 %idxprom93
  %63 = load i32, ptr %arrayidx94, align 4
  %and95 = and i32 %63, %not
  store i32 %and95, ptr %arrayidx94, align 4
  br label %for.inc96

for.inc96:                                        ; preds = %for.body74
  %64 = load i32, ptr %i, align 4
  %inc97 = add nsw i32 %64, 1
  store i32 %inc97, ptr %i, align 4
  br label %for.cond71, !llvm.loop !14

for.end98:                                        ; preds = %for.cond71
  store i32 1, ptr %H, align 4
  br label %while.body

while.body:                                       ; preds = %if.end267, %for.end98
  %65 = load i32, ptr %verb.addr, align 4
  %cmp99 = icmp sge i32 %65, 4
  br i1 %cmp99, label %if.then101, label %if.end103

if.then101:                                       ; preds = %while.body
  %66 = load ptr, ptr @stderr, align 8
  %67 = load i32, ptr %H, align 4
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.49, i32 noundef %67) #2
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %while.body
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond104

for.cond104:                                      ; preds = %for.inc126, %if.end103
  %68 = load i32, ptr %i, align 4
  %69 = load i32, ptr %nblock.addr, align 4
  %cmp105 = icmp slt i32 %68, %69
  br i1 %cmp105, label %for.body107, label %for.end128

for.body107:                                      ; preds = %for.cond104
  %70 = load ptr, ptr %bhtab.addr, align 8
  %71 = load i32, ptr %i, align 4
  %shr108 = ashr i32 %71, 5
  %idxprom109 = sext i32 %shr108 to i64
  %arrayidx110 = getelementptr inbounds i32, ptr %70, i64 %idxprom109
  %72 = load i32, ptr %arrayidx110, align 4
  %73 = load i32, ptr %i, align 4
  %and111 = and i32 %73, 31
  %shl112 = shl i32 1, %and111
  %and113 = and i32 %72, %shl112
  %tobool = icmp ne i32 %and113, 0
  br i1 %tobool, label %if.then114, label %if.end115

if.then114:                                       ; preds = %for.body107
  %74 = load i32, ptr %i, align 4
  store i32 %74, ptr %j, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %for.body107
  %75 = load ptr, ptr %fmap.addr, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom116 = sext i32 %76 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %75, i64 %idxprom116
  %77 = load i32, ptr %arrayidx117, align 4
  %78 = load i32, ptr %H, align 4
  %sub118 = sub i32 %77, %78
  store i32 %sub118, ptr %k, align 4
  %79 = load i32, ptr %k, align 4
  %cmp119 = icmp slt i32 %79, 0
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %if.end115
  %80 = load i32, ptr %nblock.addr, align 4
  %81 = load i32, ptr %k, align 4
  %add122 = add nsw i32 %81, %80
  store i32 %add122, ptr %k, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end115
  %82 = load i32, ptr %j, align 4
  %83 = load ptr, ptr %eclass.addr, align 8
  %84 = load i32, ptr %k, align 4
  %idxprom124 = sext i32 %84 to i64
  %arrayidx125 = getelementptr inbounds i32, ptr %83, i64 %idxprom124
  store i32 %82, ptr %arrayidx125, align 4
  br label %for.inc126

for.inc126:                                       ; preds = %if.end123
  %85 = load i32, ptr %i, align 4
  %inc127 = add nsw i32 %85, 1
  store i32 %inc127, ptr %i, align 4
  br label %for.cond104, !llvm.loop !15

for.end128:                                       ; preds = %for.cond104
  store i32 0, ptr %nNotDone, align 4
  store i32 -1, ptr %r, align 4
  br label %while.body130

while.body130:                                    ; preds = %if.end254, %for.end128
  %86 = load i32, ptr %r, align 4
  %add131 = add nsw i32 %86, 1
  store i32 %add131, ptr %k, align 4
  br label %while.cond132

while.cond132:                                    ; preds = %while.body142, %while.body130
  %87 = load ptr, ptr %bhtab.addr, align 8
  %88 = load i32, ptr %k, align 4
  %shr133 = ashr i32 %88, 5
  %idxprom134 = sext i32 %shr133 to i64
  %arrayidx135 = getelementptr inbounds i32, ptr %87, i64 %idxprom134
  %89 = load i32, ptr %arrayidx135, align 4
  %90 = load i32, ptr %k, align 4
  %and136 = and i32 %90, 31
  %shl137 = shl i32 1, %and136
  %and138 = and i32 %89, %shl137
  %tobool139 = icmp ne i32 %and138, 0
  br i1 %tobool139, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond132
  %91 = load i32, ptr %k, align 4
  %and140 = and i32 %91, 31
  %tobool141 = icmp ne i32 %and140, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond132
  %92 = phi i1 [ false, %while.cond132 ], [ %tobool141, %land.rhs ]
  br i1 %92, label %while.body142, label %while.end

while.body142:                                    ; preds = %land.end
  %93 = load i32, ptr %k, align 4
  %inc143 = add nsw i32 %93, 1
  store i32 %inc143, ptr %k, align 4
  br label %while.cond132, !llvm.loop !16

while.end:                                        ; preds = %land.end
  %94 = load ptr, ptr %bhtab.addr, align 8
  %95 = load i32, ptr %k, align 4
  %shr144 = ashr i32 %95, 5
  %idxprom145 = sext i32 %shr144 to i64
  %arrayidx146 = getelementptr inbounds i32, ptr %94, i64 %idxprom145
  %96 = load i32, ptr %arrayidx146, align 4
  %97 = load i32, ptr %k, align 4
  %and147 = and i32 %97, 31
  %shl148 = shl i32 1, %and147
  %and149 = and i32 %96, %shl148
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %if.then151, label %if.end172

if.then151:                                       ; preds = %while.end
  br label %while.cond152

while.cond152:                                    ; preds = %while.body158, %if.then151
  %98 = load ptr, ptr %bhtab.addr, align 8
  %99 = load i32, ptr %k, align 4
  %shr153 = ashr i32 %99, 5
  %idxprom154 = sext i32 %shr153 to i64
  %arrayidx155 = getelementptr inbounds i32, ptr %98, i64 %idxprom154
  %100 = load i32, ptr %arrayidx155, align 4
  %cmp156 = icmp eq i32 %100, -1
  br i1 %cmp156, label %while.body158, label %while.end160

while.body158:                                    ; preds = %while.cond152
  %101 = load i32, ptr %k, align 4
  %add159 = add nsw i32 %101, 32
  store i32 %add159, ptr %k, align 4
  br label %while.cond152, !llvm.loop !17

while.end160:                                     ; preds = %while.cond152
  br label %while.cond161

while.cond161:                                    ; preds = %while.body169, %while.end160
  %102 = load ptr, ptr %bhtab.addr, align 8
  %103 = load i32, ptr %k, align 4
  %shr162 = ashr i32 %103, 5
  %idxprom163 = sext i32 %shr162 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %102, i64 %idxprom163
  %104 = load i32, ptr %arrayidx164, align 4
  %105 = load i32, ptr %k, align 4
  %and165 = and i32 %105, 31
  %shl166 = shl i32 1, %and165
  %and167 = and i32 %104, %shl166
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %while.body169, label %while.end171

while.body169:                                    ; preds = %while.cond161
  %106 = load i32, ptr %k, align 4
  %inc170 = add nsw i32 %106, 1
  store i32 %inc170, ptr %k, align 4
  br label %while.cond161, !llvm.loop !18

while.end171:                                     ; preds = %while.cond161
  br label %if.end172

if.end172:                                        ; preds = %while.end171, %while.end
  %107 = load i32, ptr %k, align 4
  %sub173 = sub nsw i32 %107, 1
  store i32 %sub173, ptr %l, align 4
  %108 = load i32, ptr %l, align 4
  %109 = load i32, ptr %nblock.addr, align 4
  %cmp174 = icmp sge i32 %108, %109
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end172
  br label %while.end255

if.end177:                                        ; preds = %if.end172
  br label %while.cond178

while.cond178:                                    ; preds = %while.body190, %if.end177
  %110 = load ptr, ptr %bhtab.addr, align 8
  %111 = load i32, ptr %k, align 4
  %shr179 = ashr i32 %111, 5
  %idxprom180 = sext i32 %shr179 to i64
  %arrayidx181 = getelementptr inbounds i32, ptr %110, i64 %idxprom180
  %112 = load i32, ptr %arrayidx181, align 4
  %113 = load i32, ptr %k, align 4
  %and182 = and i32 %113, 31
  %shl183 = shl i32 1, %and182
  %and184 = and i32 %112, %shl183
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %land.end189, label %land.rhs186

land.rhs186:                                      ; preds = %while.cond178
  %114 = load i32, ptr %k, align 4
  %and187 = and i32 %114, 31
  %tobool188 = icmp ne i32 %and187, 0
  br label %land.end189

land.end189:                                      ; preds = %land.rhs186, %while.cond178
  %115 = phi i1 [ false, %while.cond178 ], [ %tobool188, %land.rhs186 ]
  br i1 %115, label %while.body190, label %while.end192

while.body190:                                    ; preds = %land.end189
  %116 = load i32, ptr %k, align 4
  %inc191 = add nsw i32 %116, 1
  store i32 %inc191, ptr %k, align 4
  br label %while.cond178, !llvm.loop !19

while.end192:                                     ; preds = %land.end189
  %117 = load ptr, ptr %bhtab.addr, align 8
  %118 = load i32, ptr %k, align 4
  %shr193 = ashr i32 %118, 5
  %idxprom194 = sext i32 %shr193 to i64
  %arrayidx195 = getelementptr inbounds i32, ptr %117, i64 %idxprom194
  %119 = load i32, ptr %arrayidx195, align 4
  %120 = load i32, ptr %k, align 4
  %and196 = and i32 %120, 31
  %shl197 = shl i32 1, %and196
  %and198 = and i32 %119, %shl197
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.end221, label %if.then200

if.then200:                                       ; preds = %while.end192
  br label %while.cond201

while.cond201:                                    ; preds = %while.body207, %if.then200
  %121 = load ptr, ptr %bhtab.addr, align 8
  %122 = load i32, ptr %k, align 4
  %shr202 = ashr i32 %122, 5
  %idxprom203 = sext i32 %shr202 to i64
  %arrayidx204 = getelementptr inbounds i32, ptr %121, i64 %idxprom203
  %123 = load i32, ptr %arrayidx204, align 4
  %cmp205 = icmp eq i32 %123, 0
  br i1 %cmp205, label %while.body207, label %while.end209

while.body207:                                    ; preds = %while.cond201
  %124 = load i32, ptr %k, align 4
  %add208 = add nsw i32 %124, 32
  store i32 %add208, ptr %k, align 4
  br label %while.cond201, !llvm.loop !20

while.end209:                                     ; preds = %while.cond201
  br label %while.cond210

while.cond210:                                    ; preds = %while.body218, %while.end209
  %125 = load ptr, ptr %bhtab.addr, align 8
  %126 = load i32, ptr %k, align 4
  %shr211 = ashr i32 %126, 5
  %idxprom212 = sext i32 %shr211 to i64
  %arrayidx213 = getelementptr inbounds i32, ptr %125, i64 %idxprom212
  %127 = load i32, ptr %arrayidx213, align 4
  %128 = load i32, ptr %k, align 4
  %and214 = and i32 %128, 31
  %shl215 = shl i32 1, %and214
  %and216 = and i32 %127, %shl215
  %tobool217 = icmp ne i32 %and216, 0
  %lnot = xor i1 %tobool217, true
  br i1 %lnot, label %while.body218, label %while.end220

while.body218:                                    ; preds = %while.cond210
  %129 = load i32, ptr %k, align 4
  %inc219 = add nsw i32 %129, 1
  store i32 %inc219, ptr %k, align 4
  br label %while.cond210, !llvm.loop !21

while.end220:                                     ; preds = %while.cond210
  br label %if.end221

if.end221:                                        ; preds = %while.end220, %while.end192
  %130 = load i32, ptr %k, align 4
  %sub222 = sub nsw i32 %130, 1
  store i32 %sub222, ptr %r, align 4
  %131 = load i32, ptr %r, align 4
  %132 = load i32, ptr %nblock.addr, align 4
  %cmp223 = icmp sge i32 %131, %132
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %if.end221
  br label %while.end255

if.end226:                                        ; preds = %if.end221
  %133 = load i32, ptr %r, align 4
  %134 = load i32, ptr %l, align 4
  %cmp227 = icmp sgt i32 %133, %134
  br i1 %cmp227, label %if.then229, label %if.end254

if.then229:                                       ; preds = %if.end226
  %135 = load i32, ptr %r, align 4
  %136 = load i32, ptr %l, align 4
  %sub230 = sub nsw i32 %135, %136
  %add231 = add nsw i32 %sub230, 1
  %137 = load i32, ptr %nNotDone, align 4
  %add232 = add nsw i32 %137, %add231
  store i32 %add232, ptr %nNotDone, align 4
  %138 = load ptr, ptr %fmap.addr, align 8
  %139 = load ptr, ptr %eclass.addr, align 8
  %140 = load i32, ptr %l, align 4
  %141 = load i32, ptr %r, align 4
  call void @fallbackQSort3(ptr noundef %138, ptr noundef %139, i32 noundef %140, i32 noundef %141)
  store i32 -1, ptr %cc, align 4
  %142 = load i32, ptr %l, align 4
  store i32 %142, ptr %i, align 4
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc251, %if.then229
  %143 = load i32, ptr %i, align 4
  %144 = load i32, ptr %r, align 4
  %cmp234 = icmp sle i32 %143, %144
  br i1 %cmp234, label %for.body236, label %for.end253

for.body236:                                      ; preds = %for.cond233
  %145 = load ptr, ptr %eclass.addr, align 8
  %146 = load ptr, ptr %fmap.addr, align 8
  %147 = load i32, ptr %i, align 4
  %idxprom237 = sext i32 %147 to i64
  %arrayidx238 = getelementptr inbounds i32, ptr %146, i64 %idxprom237
  %148 = load i32, ptr %arrayidx238, align 4
  %idxprom239 = zext i32 %148 to i64
  %arrayidx240 = getelementptr inbounds nuw i32, ptr %145, i64 %idxprom239
  %149 = load i32, ptr %arrayidx240, align 4
  store i32 %149, ptr %cc1, align 4
  %150 = load i32, ptr %cc, align 4
  %151 = load i32, ptr %cc1, align 4
  %cmp241 = icmp ne i32 %150, %151
  br i1 %cmp241, label %if.then243, label %if.end250

if.then243:                                       ; preds = %for.body236
  %152 = load i32, ptr %i, align 4
  %and244 = and i32 %152, 31
  %shl245 = shl i32 1, %and244
  %153 = load ptr, ptr %bhtab.addr, align 8
  %154 = load i32, ptr %i, align 4
  %shr246 = ashr i32 %154, 5
  %idxprom247 = sext i32 %shr246 to i64
  %arrayidx248 = getelementptr inbounds i32, ptr %153, i64 %idxprom247
  %155 = load i32, ptr %arrayidx248, align 4
  %or249 = or i32 %155, %shl245
  store i32 %or249, ptr %arrayidx248, align 4
  %156 = load i32, ptr %cc1, align 4
  store i32 %156, ptr %cc, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.then243, %for.body236
  br label %for.inc251

for.inc251:                                       ; preds = %if.end250
  %157 = load i32, ptr %i, align 4
  %inc252 = add nsw i32 %157, 1
  store i32 %inc252, ptr %i, align 4
  br label %for.cond233, !llvm.loop !22

for.end253:                                       ; preds = %for.cond233
  br label %if.end254

if.end254:                                        ; preds = %for.end253, %if.end226
  br label %while.body130

while.end255:                                     ; preds = %if.then225, %if.then176
  %158 = load i32, ptr %verb.addr, align 4
  %cmp256 = icmp sge i32 %158, 4
  br i1 %cmp256, label %if.then258, label %if.end260

if.then258:                                       ; preds = %while.end255
  %159 = load ptr, ptr @stderr, align 8
  %160 = load i32, ptr %nNotDone, align 4
  %call259 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.50, i32 noundef %160) #2
  br label %if.end260

if.end260:                                        ; preds = %if.then258, %while.end255
  %161 = load i32, ptr %H, align 4
  %mul261 = mul nsw i32 %161, 2
  store i32 %mul261, ptr %H, align 4
  %162 = load i32, ptr %H, align 4
  %163 = load i32, ptr %nblock.addr, align 4
  %cmp262 = icmp sgt i32 %162, %163
  br i1 %cmp262, label %if.then266, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end260
  %164 = load i32, ptr %nNotDone, align 4
  %cmp264 = icmp eq i32 %164, 0
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %lor.lhs.false, %if.end260
  br label %while.end268

if.end267:                                        ; preds = %lor.lhs.false
  br label %while.body

while.end268:                                     ; preds = %if.then266
  %165 = load i32, ptr %verb.addr, align 4
  %cmp269 = icmp sge i32 %165, 4
  br i1 %cmp269, label %if.then271, label %if.end273

if.then271:                                       ; preds = %while.end268
  %166 = load ptr, ptr @stderr, align 8
  %call272 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.51) #2
  br label %if.end273

if.end273:                                        ; preds = %if.then271, %while.end268
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc292, %if.end273
  %167 = load i32, ptr %i, align 4
  %168 = load i32, ptr %nblock.addr, align 4
  %cmp275 = icmp slt i32 %167, %168
  br i1 %cmp275, label %for.body277, label %for.end294

for.body277:                                      ; preds = %for.cond274
  br label %while.cond

while.cond:                                       ; preds = %while.body282, %for.body277
  %169 = load i32, ptr %j, align 4
  %idxprom278 = sext i32 %169 to i64
  %arrayidx279 = getelementptr inbounds [256 x i32], ptr %ftabCopy, i64 0, i64 %idxprom278
  %170 = load i32, ptr %arrayidx279, align 4
  %cmp280 = icmp eq i32 %170, 0
  br i1 %cmp280, label %while.body282, label %while.end284

while.body282:                                    ; preds = %while.cond
  %171 = load i32, ptr %j, align 4
  %inc283 = add nsw i32 %171, 1
  store i32 %inc283, ptr %j, align 4
  br label %while.cond, !llvm.loop !23

while.end284:                                     ; preds = %while.cond
  %172 = load i32, ptr %j, align 4
  %idxprom285 = sext i32 %172 to i64
  %arrayidx286 = getelementptr inbounds [256 x i32], ptr %ftabCopy, i64 0, i64 %idxprom285
  %173 = load i32, ptr %arrayidx286, align 4
  %dec = add nsw i32 %173, -1
  store i32 %dec, ptr %arrayidx286, align 4
  %174 = load i32, ptr %j, align 4
  %conv287 = trunc i32 %174 to i8
  %175 = load ptr, ptr %eclass8, align 8
  %176 = load ptr, ptr %fmap.addr, align 8
  %177 = load i32, ptr %i, align 4
  %idxprom288 = sext i32 %177 to i64
  %arrayidx289 = getelementptr inbounds i32, ptr %176, i64 %idxprom288
  %178 = load i32, ptr %arrayidx289, align 4
  %idxprom290 = zext i32 %178 to i64
  %arrayidx291 = getelementptr inbounds nuw i8, ptr %175, i64 %idxprom290
  store i8 %conv287, ptr %arrayidx291, align 1
  br label %for.inc292

for.inc292:                                       ; preds = %while.end284
  %179 = load i32, ptr %i, align 4
  %inc293 = add nsw i32 %179, 1
  store i32 %inc293, ptr %i, align 4
  br label %for.cond274, !llvm.loop !24

for.end294:                                       ; preds = %for.cond274
  %180 = load i32, ptr %j, align 4
  %cmp295 = icmp slt i32 %180, 256
  br i1 %cmp295, label %if.end298, label %if.then297

if.then297:                                       ; preds = %for.end294
  call void @BZ2_bz__AssertH__fail(i32 noundef 1005)
  br label %if.end298

if.end298:                                        ; preds = %if.then297, %for.end294
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bz__AssertH__fail(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @fallbackQSort3(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
