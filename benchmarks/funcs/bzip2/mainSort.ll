; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@.str.48 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.52 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.53 = external hidden unnamed_addr constant [48 x i8], align 1
@.str.54 = external hidden unnamed_addr constant [44 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden void @mainSort(ptr noundef %ptr, ptr noundef %block, ptr noundef %quadrant, ptr noundef %ftab, i32 noundef %nblock, i32 noundef %verb, ptr noundef %budget) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  %quadrant.addr = alloca ptr, align 8
  %ftab.addr = alloca ptr, align 8
  %nblock.addr = alloca i32, align 4
  %verb.addr = alloca i32, align 4
  %budget.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ss = alloca i32, align 4
  %sb = alloca i32, align 4
  %runningOrder = alloca [256 x i32], align 16
  %bigDone = alloca [256 x i8], align 16
  %copyStart = alloca [256 x i32], align 16
  %copyEnd = alloca [256 x i32], align 16
  %c1 = alloca i8, align 1
  %numQSorted = alloca i32, align 4
  %s = alloca i16, align 2
  %vv = alloca i32, align 4
  %h = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %bbStart = alloca i32, align 4
  %bbSize = alloca i32, align 4
  %shifts = alloca i32, align 4
  %a2update = alloca i32, align 4
  %qVal = alloca i16, align 2
  store ptr %ptr, ptr %ptr.addr, align 8
  store ptr %block, ptr %block.addr, align 8
  store ptr %quadrant, ptr %quadrant.addr, align 8
  store ptr %ftab, ptr %ftab.addr, align 8
  store i32 %nblock, ptr %nblock.addr, align 4
  store i32 %verb, ptr %verb.addr, align 4
  store ptr %budget, ptr %budget.addr, align 8
  %0 = load i32, ptr %verb.addr, align 4
  %cmp = icmp sge i32 %0, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.52) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 65536, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp sge i32 %2, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ftab.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %block.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %7 to i32
  %shl = shl i32 %conv, 8
  store i32 %shl, ptr %j, align 4
  %8 = load i32, ptr %nblock.addr, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc58, %for.end
  %9 = load i32, ptr %i, align 4
  %cmp4 = icmp sge i32 %9, 3
  br i1 %cmp4, label %for.body6, label %for.end60

for.body6:                                        ; preds = %for.cond3
  %10 = load ptr, ptr %quadrant.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %10, i64 %idxprom7
  store i16 0, ptr %arrayidx8, align 2
  %12 = load i32, ptr %j, align 4
  %shr = ashr i32 %12, 8
  %13 = load ptr, ptr %block.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 %idxprom9
  %15 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %15 to i16
  %conv12 = zext i16 %conv11 to i32
  %shl13 = shl i32 %conv12, 8
  %or = or i32 %shr, %shl13
  store i32 %or, ptr %j, align 4
  %16 = load ptr, ptr %ftab.addr, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %16, i64 %idxprom14
  %18 = load i32, ptr %arrayidx15, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %arrayidx15, align 4
  %19 = load ptr, ptr %quadrant.addr, align 8
  %20 = load i32, ptr %i, align 4
  %sub16 = sub nsw i32 %20, 1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %19, i64 %idxprom17
  store i16 0, ptr %arrayidx18, align 2
  %21 = load i32, ptr %j, align 4
  %shr19 = ashr i32 %21, 8
  %22 = load ptr, ptr %block.addr, align 8
  %23 = load i32, ptr %i, align 4
  %sub20 = sub nsw i32 %23, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 %idxprom21
  %24 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %24 to i16
  %conv24 = zext i16 %conv23 to i32
  %shl25 = shl i32 %conv24, 8
  %or26 = or i32 %shr19, %shl25
  store i32 %or26, ptr %j, align 4
  %25 = load ptr, ptr %ftab.addr, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %25, i64 %idxprom27
  %27 = load i32, ptr %arrayidx28, align 4
  %inc29 = add i32 %27, 1
  store i32 %inc29, ptr %arrayidx28, align 4
  %28 = load ptr, ptr %quadrant.addr, align 8
  %29 = load i32, ptr %i, align 4
  %sub30 = sub nsw i32 %29, 2
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %28, i64 %idxprom31
  store i16 0, ptr %arrayidx32, align 2
  %30 = load i32, ptr %j, align 4
  %shr33 = ashr i32 %30, 8
  %31 = load ptr, ptr %block.addr, align 8
  %32 = load i32, ptr %i, align 4
  %sub34 = sub nsw i32 %32, 2
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %31, i64 %idxprom35
  %33 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %33 to i16
  %conv38 = zext i16 %conv37 to i32
  %shl39 = shl i32 %conv38, 8
  %or40 = or i32 %shr33, %shl39
  store i32 %or40, ptr %j, align 4
  %34 = load ptr, ptr %ftab.addr, align 8
  %35 = load i32, ptr %j, align 4
  %idxprom41 = sext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %34, i64 %idxprom41
  %36 = load i32, ptr %arrayidx42, align 4
  %inc43 = add i32 %36, 1
  store i32 %inc43, ptr %arrayidx42, align 4
  %37 = load ptr, ptr %quadrant.addr, align 8
  %38 = load i32, ptr %i, align 4
  %sub44 = sub nsw i32 %38, 3
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds i16, ptr %37, i64 %idxprom45
  store i16 0, ptr %arrayidx46, align 2
  %39 = load i32, ptr %j, align 4
  %shr47 = ashr i32 %39, 8
  %40 = load ptr, ptr %block.addr, align 8
  %41 = load i32, ptr %i, align 4
  %sub48 = sub nsw i32 %41, 3
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds i8, ptr %40, i64 %idxprom49
  %42 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %42 to i16
  %conv52 = zext i16 %conv51 to i32
  %shl53 = shl i32 %conv52, 8
  %or54 = or i32 %shr47, %shl53
  store i32 %or54, ptr %j, align 4
  %43 = load ptr, ptr %ftab.addr, align 8
  %44 = load i32, ptr %j, align 4
  %idxprom55 = sext i32 %44 to i64
  %arrayidx56 = getelementptr inbounds i32, ptr %43, i64 %idxprom55
  %45 = load i32, ptr %arrayidx56, align 4
  %inc57 = add i32 %45, 1
  store i32 %inc57, ptr %arrayidx56, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body6
  %46 = load i32, ptr %i, align 4
  %sub59 = sub nsw i32 %46, 4
  store i32 %sub59, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end60:                                        ; preds = %for.cond3
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc77, %for.end60
  %47 = load i32, ptr %i, align 4
  %cmp62 = icmp sge i32 %47, 0
  br i1 %cmp62, label %for.body64, label %for.end79

for.body64:                                       ; preds = %for.cond61
  %48 = load ptr, ptr %quadrant.addr, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %49 to i64
  %arrayidx66 = getelementptr inbounds i16, ptr %48, i64 %idxprom65
  store i16 0, ptr %arrayidx66, align 2
  %50 = load i32, ptr %j, align 4
  %shr67 = ashr i32 %50, 8
  %51 = load ptr, ptr %block.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom68 = sext i32 %52 to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %51, i64 %idxprom68
  %53 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %53 to i16
  %conv71 = zext i16 %conv70 to i32
  %shl72 = shl i32 %conv71, 8
  %or73 = or i32 %shr67, %shl72
  store i32 %or73, ptr %j, align 4
  %54 = load ptr, ptr %ftab.addr, align 8
  %55 = load i32, ptr %j, align 4
  %idxprom74 = sext i32 %55 to i64
  %arrayidx75 = getelementptr inbounds i32, ptr %54, i64 %idxprom74
  %56 = load i32, ptr %arrayidx75, align 4
  %inc76 = add i32 %56, 1
  store i32 %inc76, ptr %arrayidx75, align 4
  br label %for.inc77

for.inc77:                                        ; preds = %for.body64
  %57 = load i32, ptr %i, align 4
  %dec78 = add nsw i32 %57, -1
  store i32 %dec78, ptr %i, align 4
  br label %for.cond61, !llvm.loop !9

for.end79:                                        ; preds = %for.cond61
  store i32 0, ptr %i, align 4
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc91, %for.end79
  %58 = load i32, ptr %i, align 4
  %cmp81 = icmp slt i32 %58, 34
  br i1 %cmp81, label %for.body83, label %for.end93

for.body83:                                       ; preds = %for.cond80
  %59 = load ptr, ptr %block.addr, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %60 to i64
  %arrayidx85 = getelementptr inbounds i8, ptr %59, i64 %idxprom84
  %61 = load i8, ptr %arrayidx85, align 1
  %62 = load ptr, ptr %block.addr, align 8
  %63 = load i32, ptr %nblock.addr, align 4
  %64 = load i32, ptr %i, align 4
  %add = add nsw i32 %63, %64
  %idxprom86 = sext i32 %add to i64
  %arrayidx87 = getelementptr inbounds i8, ptr %62, i64 %idxprom86
  store i8 %61, ptr %arrayidx87, align 1
  %65 = load ptr, ptr %quadrant.addr, align 8
  %66 = load i32, ptr %nblock.addr, align 4
  %67 = load i32, ptr %i, align 4
  %add88 = add nsw i32 %66, %67
  %idxprom89 = sext i32 %add88 to i64
  %arrayidx90 = getelementptr inbounds i16, ptr %65, i64 %idxprom89
  store i16 0, ptr %arrayidx90, align 2
  br label %for.inc91

for.inc91:                                        ; preds = %for.body83
  %68 = load i32, ptr %i, align 4
  %inc92 = add nsw i32 %68, 1
  store i32 %inc92, ptr %i, align 4
  br label %for.cond80, !llvm.loop !10

for.end93:                                        ; preds = %for.cond80
  %69 = load i32, ptr %verb.addr, align 4
  %cmp94 = icmp sge i32 %69, 4
  br i1 %cmp94, label %if.then96, label %if.end98

if.then96:                                        ; preds = %for.end93
  %70 = load ptr, ptr @stderr, align 8
  %call97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.48) #2
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %for.end93
  store i32 1, ptr %i, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc109, %if.end98
  %71 = load i32, ptr %i, align 4
  %cmp100 = icmp sle i32 %71, 65536
  br i1 %cmp100, label %for.body102, label %for.end111

for.body102:                                      ; preds = %for.cond99
  %72 = load ptr, ptr %ftab.addr, align 8
  %73 = load i32, ptr %i, align 4
  %sub103 = sub nsw i32 %73, 1
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds i32, ptr %72, i64 %idxprom104
  %74 = load i32, ptr %arrayidx105, align 4
  %75 = load ptr, ptr %ftab.addr, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom106 = sext i32 %76 to i64
  %arrayidx107 = getelementptr inbounds i32, ptr %75, i64 %idxprom106
  %77 = load i32, ptr %arrayidx107, align 4
  %add108 = add i32 %77, %74
  store i32 %add108, ptr %arrayidx107, align 4
  br label %for.inc109

for.inc109:                                       ; preds = %for.body102
  %78 = load i32, ptr %i, align 4
  %inc110 = add nsw i32 %78, 1
  store i32 %inc110, ptr %i, align 4
  br label %for.cond99, !llvm.loop !11

for.end111:                                       ; preds = %for.cond99
  %79 = load ptr, ptr %block.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, ptr %79, i64 0
  %80 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %80 to i32
  %shl114 = shl i32 %conv113, 8
  %conv115 = trunc i32 %shl114 to i16
  store i16 %conv115, ptr %s, align 2
  %81 = load i32, ptr %nblock.addr, align 4
  %sub116 = sub nsw i32 %81, 1
  store i32 %sub116, ptr %i, align 4
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc187, %for.end111
  %82 = load i32, ptr %i, align 4
  %cmp118 = icmp sge i32 %82, 3
  br i1 %cmp118, label %for.body120, label %for.end189

for.body120:                                      ; preds = %for.cond117
  %83 = load i16, ptr %s, align 2
  %conv121 = zext i16 %83 to i32
  %shr122 = ashr i32 %conv121, 8
  %84 = load ptr, ptr %block.addr, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom123 = sext i32 %85 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %84, i64 %idxprom123
  %86 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %86 to i32
  %shl126 = shl i32 %conv125, 8
  %or127 = or i32 %shr122, %shl126
  %conv128 = trunc i32 %or127 to i16
  store i16 %conv128, ptr %s, align 2
  %87 = load ptr, ptr %ftab.addr, align 8
  %88 = load i16, ptr %s, align 2
  %idxprom129 = zext i16 %88 to i64
  %arrayidx130 = getelementptr inbounds nuw i32, ptr %87, i64 %idxprom129
  %89 = load i32, ptr %arrayidx130, align 4
  %sub131 = sub i32 %89, 1
  store i32 %sub131, ptr %j, align 4
  %90 = load i32, ptr %j, align 4
  %91 = load ptr, ptr %ftab.addr, align 8
  %92 = load i16, ptr %s, align 2
  %idxprom132 = zext i16 %92 to i64
  %arrayidx133 = getelementptr inbounds nuw i32, ptr %91, i64 %idxprom132
  store i32 %90, ptr %arrayidx133, align 4
  %93 = load i32, ptr %i, align 4
  %94 = load ptr, ptr %ptr.addr, align 8
  %95 = load i32, ptr %j, align 4
  %idxprom134 = sext i32 %95 to i64
  %arrayidx135 = getelementptr inbounds i32, ptr %94, i64 %idxprom134
  store i32 %93, ptr %arrayidx135, align 4
  %96 = load i16, ptr %s, align 2
  %conv136 = zext i16 %96 to i32
  %shr137 = ashr i32 %conv136, 8
  %97 = load ptr, ptr %block.addr, align 8
  %98 = load i32, ptr %i, align 4
  %sub138 = sub nsw i32 %98, 1
  %idxprom139 = sext i32 %sub138 to i64
  %arrayidx140 = getelementptr inbounds i8, ptr %97, i64 %idxprom139
  %99 = load i8, ptr %arrayidx140, align 1
  %conv141 = zext i8 %99 to i32
  %shl142 = shl i32 %conv141, 8
  %or143 = or i32 %shr137, %shl142
  %conv144 = trunc i32 %or143 to i16
  store i16 %conv144, ptr %s, align 2
  %100 = load ptr, ptr %ftab.addr, align 8
  %101 = load i16, ptr %s, align 2
  %idxprom145 = zext i16 %101 to i64
  %arrayidx146 = getelementptr inbounds nuw i32, ptr %100, i64 %idxprom145
  %102 = load i32, ptr %arrayidx146, align 4
  %sub147 = sub i32 %102, 1
  store i32 %sub147, ptr %j, align 4
  %103 = load i32, ptr %j, align 4
  %104 = load ptr, ptr %ftab.addr, align 8
  %105 = load i16, ptr %s, align 2
  %idxprom148 = zext i16 %105 to i64
  %arrayidx149 = getelementptr inbounds nuw i32, ptr %104, i64 %idxprom148
  store i32 %103, ptr %arrayidx149, align 4
  %106 = load i32, ptr %i, align 4
  %sub150 = sub nsw i32 %106, 1
  %107 = load ptr, ptr %ptr.addr, align 8
  %108 = load i32, ptr %j, align 4
  %idxprom151 = sext i32 %108 to i64
  %arrayidx152 = getelementptr inbounds i32, ptr %107, i64 %idxprom151
  store i32 %sub150, ptr %arrayidx152, align 4
  %109 = load i16, ptr %s, align 2
  %conv153 = zext i16 %109 to i32
  %shr154 = ashr i32 %conv153, 8
  %110 = load ptr, ptr %block.addr, align 8
  %111 = load i32, ptr %i, align 4
  %sub155 = sub nsw i32 %111, 2
  %idxprom156 = sext i32 %sub155 to i64
  %arrayidx157 = getelementptr inbounds i8, ptr %110, i64 %idxprom156
  %112 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %112 to i32
  %shl159 = shl i32 %conv158, 8
  %or160 = or i32 %shr154, %shl159
  %conv161 = trunc i32 %or160 to i16
  store i16 %conv161, ptr %s, align 2
  %113 = load ptr, ptr %ftab.addr, align 8
  %114 = load i16, ptr %s, align 2
  %idxprom162 = zext i16 %114 to i64
  %arrayidx163 = getelementptr inbounds nuw i32, ptr %113, i64 %idxprom162
  %115 = load i32, ptr %arrayidx163, align 4
  %sub164 = sub i32 %115, 1
  store i32 %sub164, ptr %j, align 4
  %116 = load i32, ptr %j, align 4
  %117 = load ptr, ptr %ftab.addr, align 8
  %118 = load i16, ptr %s, align 2
  %idxprom165 = zext i16 %118 to i64
  %arrayidx166 = getelementptr inbounds nuw i32, ptr %117, i64 %idxprom165
  store i32 %116, ptr %arrayidx166, align 4
  %119 = load i32, ptr %i, align 4
  %sub167 = sub nsw i32 %119, 2
  %120 = load ptr, ptr %ptr.addr, align 8
  %121 = load i32, ptr %j, align 4
  %idxprom168 = sext i32 %121 to i64
  %arrayidx169 = getelementptr inbounds i32, ptr %120, i64 %idxprom168
  store i32 %sub167, ptr %arrayidx169, align 4
  %122 = load i16, ptr %s, align 2
  %conv170 = zext i16 %122 to i32
  %shr171 = ashr i32 %conv170, 8
  %123 = load ptr, ptr %block.addr, align 8
  %124 = load i32, ptr %i, align 4
  %sub172 = sub nsw i32 %124, 3
  %idxprom173 = sext i32 %sub172 to i64
  %arrayidx174 = getelementptr inbounds i8, ptr %123, i64 %idxprom173
  %125 = load i8, ptr %arrayidx174, align 1
  %conv175 = zext i8 %125 to i32
  %shl176 = shl i32 %conv175, 8
  %or177 = or i32 %shr171, %shl176
  %conv178 = trunc i32 %or177 to i16
  store i16 %conv178, ptr %s, align 2
  %126 = load ptr, ptr %ftab.addr, align 8
  %127 = load i16, ptr %s, align 2
  %idxprom179 = zext i16 %127 to i64
  %arrayidx180 = getelementptr inbounds nuw i32, ptr %126, i64 %idxprom179
  %128 = load i32, ptr %arrayidx180, align 4
  %sub181 = sub i32 %128, 1
  store i32 %sub181, ptr %j, align 4
  %129 = load i32, ptr %j, align 4
  %130 = load ptr, ptr %ftab.addr, align 8
  %131 = load i16, ptr %s, align 2
  %idxprom182 = zext i16 %131 to i64
  %arrayidx183 = getelementptr inbounds nuw i32, ptr %130, i64 %idxprom182
  store i32 %129, ptr %arrayidx183, align 4
  %132 = load i32, ptr %i, align 4
  %sub184 = sub nsw i32 %132, 3
  %133 = load ptr, ptr %ptr.addr, align 8
  %134 = load i32, ptr %j, align 4
  %idxprom185 = sext i32 %134 to i64
  %arrayidx186 = getelementptr inbounds i32, ptr %133, i64 %idxprom185
  store i32 %sub184, ptr %arrayidx186, align 4
  br label %for.inc187

for.inc187:                                       ; preds = %for.body120
  %135 = load i32, ptr %i, align 4
  %sub188 = sub nsw i32 %135, 4
  store i32 %sub188, ptr %i, align 4
  br label %for.cond117, !llvm.loop !12

for.end189:                                       ; preds = %for.cond117
  br label %for.cond190

for.cond190:                                      ; preds = %for.inc209, %for.end189
  %136 = load i32, ptr %i, align 4
  %cmp191 = icmp sge i32 %136, 0
  br i1 %cmp191, label %for.body193, label %for.end211

for.body193:                                      ; preds = %for.cond190
  %137 = load i16, ptr %s, align 2
  %conv194 = zext i16 %137 to i32
  %shr195 = ashr i32 %conv194, 8
  %138 = load ptr, ptr %block.addr, align 8
  %139 = load i32, ptr %i, align 4
  %idxprom196 = sext i32 %139 to i64
  %arrayidx197 = getelementptr inbounds i8, ptr %138, i64 %idxprom196
  %140 = load i8, ptr %arrayidx197, align 1
  %conv198 = zext i8 %140 to i32
  %shl199 = shl i32 %conv198, 8
  %or200 = or i32 %shr195, %shl199
  %conv201 = trunc i32 %or200 to i16
  store i16 %conv201, ptr %s, align 2
  %141 = load ptr, ptr %ftab.addr, align 8
  %142 = load i16, ptr %s, align 2
  %idxprom202 = zext i16 %142 to i64
  %arrayidx203 = getelementptr inbounds nuw i32, ptr %141, i64 %idxprom202
  %143 = load i32, ptr %arrayidx203, align 4
  %sub204 = sub i32 %143, 1
  store i32 %sub204, ptr %j, align 4
  %144 = load i32, ptr %j, align 4
  %145 = load ptr, ptr %ftab.addr, align 8
  %146 = load i16, ptr %s, align 2
  %idxprom205 = zext i16 %146 to i64
  %arrayidx206 = getelementptr inbounds nuw i32, ptr %145, i64 %idxprom205
  store i32 %144, ptr %arrayidx206, align 4
  %147 = load i32, ptr %i, align 4
  %148 = load ptr, ptr %ptr.addr, align 8
  %149 = load i32, ptr %j, align 4
  %idxprom207 = sext i32 %149 to i64
  %arrayidx208 = getelementptr inbounds i32, ptr %148, i64 %idxprom207
  store i32 %147, ptr %arrayidx208, align 4
  br label %for.inc209

for.inc209:                                       ; preds = %for.body193
  %150 = load i32, ptr %i, align 4
  %dec210 = add nsw i32 %150, -1
  store i32 %dec210, ptr %i, align 4
  br label %for.cond190, !llvm.loop !13

for.end211:                                       ; preds = %for.cond190
  store i32 0, ptr %i, align 4
  br label %for.cond212

for.cond212:                                      ; preds = %for.inc220, %for.end211
  %151 = load i32, ptr %i, align 4
  %cmp213 = icmp sle i32 %151, 255
  br i1 %cmp213, label %for.body215, label %for.end222

for.body215:                                      ; preds = %for.cond212
  %152 = load i32, ptr %i, align 4
  %idxprom216 = sext i32 %152 to i64
  %arrayidx217 = getelementptr inbounds [256 x i8], ptr %bigDone, i64 0, i64 %idxprom216
  store i8 0, ptr %arrayidx217, align 1
  %153 = load i32, ptr %i, align 4
  %154 = load i32, ptr %i, align 4
  %idxprom218 = sext i32 %154 to i64
  %arrayidx219 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom218
  store i32 %153, ptr %arrayidx219, align 4
  br label %for.inc220

for.inc220:                                       ; preds = %for.body215
  %155 = load i32, ptr %i, align 4
  %inc221 = add nsw i32 %155, 1
  store i32 %inc221, ptr %i, align 4
  br label %for.cond212, !llvm.loop !14

for.end222:                                       ; preds = %for.cond212
  store i32 1, ptr %h, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end222
  %156 = load i32, ptr %h, align 4
  %mul = mul nsw i32 3, %156
  %add223 = add nsw i32 %mul, 1
  store i32 %add223, ptr %h, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %157 = load i32, ptr %h, align 4
  %cmp224 = icmp sle i32 %157, 256
  br i1 %cmp224, label %do.body, label %do.end, !llvm.loop !15

do.end:                                           ; preds = %do.cond
  br label %do.body226

do.body226:                                       ; preds = %do.cond273, %do.end
  %158 = load i32, ptr %h, align 4
  %div = sdiv i32 %158, 3
  store i32 %div, ptr %h, align 4
  %159 = load i32, ptr %h, align 4
  store i32 %159, ptr %i, align 4
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc270, %do.body226
  %160 = load i32, ptr %i, align 4
  %cmp228 = icmp sle i32 %160, 255
  br i1 %cmp228, label %for.body230, label %for.end272

for.body230:                                      ; preds = %for.cond227
  %161 = load i32, ptr %i, align 4
  %idxprom231 = sext i32 %161 to i64
  %arrayidx232 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom231
  %162 = load i32, ptr %arrayidx232, align 4
  store i32 %162, ptr %vv, align 4
  %163 = load i32, ptr %i, align 4
  store i32 %163, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end267, %for.body230
  %164 = load ptr, ptr %ftab.addr, align 8
  %165 = load i32, ptr %j, align 4
  %166 = load i32, ptr %h, align 4
  %sub233 = sub nsw i32 %165, %166
  %idxprom234 = sext i32 %sub233 to i64
  %arrayidx235 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom234
  %167 = load i32, ptr %arrayidx235, align 4
  %add236 = add nsw i32 %167, 1
  %shl237 = shl i32 %add236, 8
  %idxprom238 = sext i32 %shl237 to i64
  %arrayidx239 = getelementptr inbounds i32, ptr %164, i64 %idxprom238
  %168 = load i32, ptr %arrayidx239, align 4
  %169 = load ptr, ptr %ftab.addr, align 8
  %170 = load i32, ptr %j, align 4
  %171 = load i32, ptr %h, align 4
  %sub240 = sub nsw i32 %170, %171
  %idxprom241 = sext i32 %sub240 to i64
  %arrayidx242 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom241
  %172 = load i32, ptr %arrayidx242, align 4
  %shl243 = shl i32 %172, 8
  %idxprom244 = sext i32 %shl243 to i64
  %arrayidx245 = getelementptr inbounds i32, ptr %169, i64 %idxprom244
  %173 = load i32, ptr %arrayidx245, align 4
  %sub246 = sub i32 %168, %173
  %174 = load ptr, ptr %ftab.addr, align 8
  %175 = load i32, ptr %vv, align 4
  %add247 = add nsw i32 %175, 1
  %shl248 = shl i32 %add247, 8
  %idxprom249 = sext i32 %shl248 to i64
  %arrayidx250 = getelementptr inbounds i32, ptr %174, i64 %idxprom249
  %176 = load i32, ptr %arrayidx250, align 4
  %177 = load ptr, ptr %ftab.addr, align 8
  %178 = load i32, ptr %vv, align 4
  %shl251 = shl i32 %178, 8
  %idxprom252 = sext i32 %shl251 to i64
  %arrayidx253 = getelementptr inbounds i32, ptr %177, i64 %idxprom252
  %179 = load i32, ptr %arrayidx253, align 4
  %sub254 = sub i32 %176, %179
  %cmp255 = icmp ugt i32 %sub246, %sub254
  br i1 %cmp255, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %180 = load i32, ptr %j, align 4
  %181 = load i32, ptr %h, align 4
  %sub257 = sub nsw i32 %180, %181
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom258
  %182 = load i32, ptr %arrayidx259, align 4
  %183 = load i32, ptr %j, align 4
  %idxprom260 = sext i32 %183 to i64
  %arrayidx261 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom260
  store i32 %182, ptr %arrayidx261, align 4
  %184 = load i32, ptr %j, align 4
  %185 = load i32, ptr %h, align 4
  %sub262 = sub nsw i32 %184, %185
  store i32 %sub262, ptr %j, align 4
  %186 = load i32, ptr %j, align 4
  %187 = load i32, ptr %h, align 4
  %sub263 = sub nsw i32 %187, 1
  %cmp264 = icmp sle i32 %186, %sub263
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %while.body
  br label %zero

if.end267:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  br label %zero

zero:                                             ; preds = %while.end, %if.then266
  %188 = load i32, ptr %vv, align 4
  %189 = load i32, ptr %j, align 4
  %idxprom268 = sext i32 %189 to i64
  %arrayidx269 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom268
  store i32 %188, ptr %arrayidx269, align 4
  br label %for.inc270

for.inc270:                                       ; preds = %zero
  %190 = load i32, ptr %i, align 4
  %inc271 = add nsw i32 %190, 1
  store i32 %inc271, ptr %i, align 4
  br label %for.cond227, !llvm.loop !17

for.end272:                                       ; preds = %for.cond227
  br label %do.cond273

do.cond273:                                       ; preds = %for.end272
  %191 = load i32, ptr %h, align 4
  %cmp274 = icmp ne i32 %191, 1
  br i1 %cmp274, label %do.body226, label %do.end276, !llvm.loop !18

do.end276:                                        ; preds = %do.cond273
  store i32 0, ptr %numQSorted, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond277

for.cond277:                                      ; preds = %for.inc506, %do.end276
  %192 = load i32, ptr %i, align 4
  %cmp278 = icmp sle i32 %192, 255
  br i1 %cmp278, label %for.body280, label %for.end508

for.body280:                                      ; preds = %for.cond277
  %193 = load i32, ptr %i, align 4
  %idxprom281 = sext i32 %193 to i64
  %arrayidx282 = getelementptr inbounds [256 x i32], ptr %runningOrder, i64 0, i64 %idxprom281
  %194 = load i32, ptr %arrayidx282, align 4
  store i32 %194, ptr %ss, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc326, %for.body280
  %195 = load i32, ptr %j, align 4
  %cmp284 = icmp sle i32 %195, 255
  br i1 %cmp284, label %for.body286, label %for.end328

for.body286:                                      ; preds = %for.cond283
  %196 = load i32, ptr %j, align 4
  %197 = load i32, ptr %ss, align 4
  %cmp287 = icmp ne i32 %196, %197
  br i1 %cmp287, label %if.then289, label %if.end325

if.then289:                                       ; preds = %for.body286
  %198 = load i32, ptr %ss, align 4
  %shl290 = shl i32 %198, 8
  %199 = load i32, ptr %j, align 4
  %add291 = add nsw i32 %shl290, %199
  store i32 %add291, ptr %sb, align 4
  %200 = load ptr, ptr %ftab.addr, align 8
  %201 = load i32, ptr %sb, align 4
  %idxprom292 = sext i32 %201 to i64
  %arrayidx293 = getelementptr inbounds i32, ptr %200, i64 %idxprom292
  %202 = load i32, ptr %arrayidx293, align 4
  %and = and i32 %202, 2097152
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end321, label %if.then294

if.then294:                                       ; preds = %if.then289
  %203 = load ptr, ptr %ftab.addr, align 8
  %204 = load i32, ptr %sb, align 4
  %idxprom295 = sext i32 %204 to i64
  %arrayidx296 = getelementptr inbounds i32, ptr %203, i64 %idxprom295
  %205 = load i32, ptr %arrayidx296, align 4
  %and297 = and i32 %205, -2097153
  store i32 %and297, ptr %lo, align 4
  %206 = load ptr, ptr %ftab.addr, align 8
  %207 = load i32, ptr %sb, align 4
  %add298 = add nsw i32 %207, 1
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds i32, ptr %206, i64 %idxprom299
  %208 = load i32, ptr %arrayidx300, align 4
  %and301 = and i32 %208, -2097153
  %sub302 = sub i32 %and301, 1
  store i32 %sub302, ptr %hi, align 4
  %209 = load i32, ptr %hi, align 4
  %210 = load i32, ptr %lo, align 4
  %cmp303 = icmp sgt i32 %209, %210
  br i1 %cmp303, label %if.then305, label %if.end320

if.then305:                                       ; preds = %if.then294
  %211 = load i32, ptr %verb.addr, align 4
  %cmp306 = icmp sge i32 %211, 4
  br i1 %cmp306, label %if.then308, label %if.end312

if.then308:                                       ; preds = %if.then305
  %212 = load ptr, ptr @stderr, align 8
  %213 = load i32, ptr %ss, align 4
  %214 = load i32, ptr %j, align 4
  %215 = load i32, ptr %numQSorted, align 4
  %216 = load i32, ptr %hi, align 4
  %217 = load i32, ptr %lo, align 4
  %sub309 = sub nsw i32 %216, %217
  %add310 = add nsw i32 %sub309, 1
  %call311 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.53, i32 noundef %213, i32 noundef %214, i32 noundef %215, i32 noundef %add310) #2
  br label %if.end312

if.end312:                                        ; preds = %if.then308, %if.then305
  %218 = load ptr, ptr %ptr.addr, align 8
  %219 = load ptr, ptr %block.addr, align 8
  %220 = load ptr, ptr %quadrant.addr, align 8
  %221 = load i32, ptr %nblock.addr, align 4
  %222 = load i32, ptr %lo, align 4
  %223 = load i32, ptr %hi, align 4
  %224 = load ptr, ptr %budget.addr, align 8
  call void @mainQSort3(ptr noundef %218, ptr noundef %219, ptr noundef %220, i32 noundef %221, i32 noundef %222, i32 noundef %223, i32 noundef 2, ptr noundef %224)
  %225 = load i32, ptr %hi, align 4
  %226 = load i32, ptr %lo, align 4
  %sub313 = sub nsw i32 %225, %226
  %add314 = add nsw i32 %sub313, 1
  %227 = load i32, ptr %numQSorted, align 4
  %add315 = add nsw i32 %227, %add314
  store i32 %add315, ptr %numQSorted, align 4
  %228 = load ptr, ptr %budget.addr, align 8
  %229 = load i32, ptr %228, align 4
  %cmp316 = icmp slt i32 %229, 0
  br i1 %cmp316, label %if.then318, label %if.end319

if.then318:                                       ; preds = %if.end312
  br label %if.end514

if.end319:                                        ; preds = %if.end312
  br label %if.end320

if.end320:                                        ; preds = %if.end319, %if.then294
  br label %if.end321

if.end321:                                        ; preds = %if.end320, %if.then289
  %230 = load ptr, ptr %ftab.addr, align 8
  %231 = load i32, ptr %sb, align 4
  %idxprom322 = sext i32 %231 to i64
  %arrayidx323 = getelementptr inbounds i32, ptr %230, i64 %idxprom322
  %232 = load i32, ptr %arrayidx323, align 4
  %or324 = or i32 %232, 2097152
  store i32 %or324, ptr %arrayidx323, align 4
  br label %if.end325

if.end325:                                        ; preds = %if.end321, %for.body286
  br label %for.inc326

for.inc326:                                       ; preds = %if.end325
  %233 = load i32, ptr %j, align 4
  %inc327 = add nsw i32 %233, 1
  store i32 %inc327, ptr %j, align 4
  br label %for.cond283, !llvm.loop !19

for.end328:                                       ; preds = %for.cond283
  %234 = load i32, ptr %ss, align 4
  %idxprom329 = sext i32 %234 to i64
  %arrayidx330 = getelementptr inbounds [256 x i8], ptr %bigDone, i64 0, i64 %idxprom329
  %235 = load i8, ptr %arrayidx330, align 1
  %tobool331 = icmp ne i8 %235, 0
  br i1 %tobool331, label %if.then332, label %if.end333

if.then332:                                       ; preds = %for.end328
  call void @BZ2_bz__AssertH__fail(i32 noundef 1006)
  br label %if.end333

if.end333:                                        ; preds = %if.then332, %for.end328
  store i32 0, ptr %j, align 4
  br label %for.cond334

for.cond334:                                      ; preds = %for.inc354, %if.end333
  %236 = load i32, ptr %j, align 4
  %cmp335 = icmp sle i32 %236, 255
  br i1 %cmp335, label %for.body337, label %for.end356

for.body337:                                      ; preds = %for.cond334
  %237 = load ptr, ptr %ftab.addr, align 8
  %238 = load i32, ptr %j, align 4
  %shl338 = shl i32 %238, 8
  %239 = load i32, ptr %ss, align 4
  %add339 = add nsw i32 %shl338, %239
  %idxprom340 = sext i32 %add339 to i64
  %arrayidx341 = getelementptr inbounds i32, ptr %237, i64 %idxprom340
  %240 = load i32, ptr %arrayidx341, align 4
  %and342 = and i32 %240, -2097153
  %241 = load i32, ptr %j, align 4
  %idxprom343 = sext i32 %241 to i64
  %arrayidx344 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom343
  store i32 %and342, ptr %arrayidx344, align 4
  %242 = load ptr, ptr %ftab.addr, align 8
  %243 = load i32, ptr %j, align 4
  %shl345 = shl i32 %243, 8
  %244 = load i32, ptr %ss, align 4
  %add346 = add nsw i32 %shl345, %244
  %add347 = add nsw i32 %add346, 1
  %idxprom348 = sext i32 %add347 to i64
  %arrayidx349 = getelementptr inbounds i32, ptr %242, i64 %idxprom348
  %245 = load i32, ptr %arrayidx349, align 4
  %and350 = and i32 %245, -2097153
  %sub351 = sub i32 %and350, 1
  %246 = load i32, ptr %j, align 4
  %idxprom352 = sext i32 %246 to i64
  %arrayidx353 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom352
  store i32 %sub351, ptr %arrayidx353, align 4
  br label %for.inc354

for.inc354:                                       ; preds = %for.body337
  %247 = load i32, ptr %j, align 4
  %inc355 = add nsw i32 %247, 1
  store i32 %inc355, ptr %j, align 4
  br label %for.cond334, !llvm.loop !20

for.end356:                                       ; preds = %for.cond334
  %248 = load ptr, ptr %ftab.addr, align 8
  %249 = load i32, ptr %ss, align 4
  %shl357 = shl i32 %249, 8
  %idxprom358 = sext i32 %shl357 to i64
  %arrayidx359 = getelementptr inbounds i32, ptr %248, i64 %idxprom358
  %250 = load i32, ptr %arrayidx359, align 4
  %and360 = and i32 %250, -2097153
  store i32 %and360, ptr %j, align 4
  br label %for.cond361

for.cond361:                                      ; preds = %for.inc387, %for.end356
  %251 = load i32, ptr %j, align 4
  %252 = load i32, ptr %ss, align 4
  %idxprom362 = sext i32 %252 to i64
  %arrayidx363 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom362
  %253 = load i32, ptr %arrayidx363, align 4
  %cmp364 = icmp slt i32 %251, %253
  br i1 %cmp364, label %for.body366, label %for.end389

for.body366:                                      ; preds = %for.cond361
  %254 = load ptr, ptr %ptr.addr, align 8
  %255 = load i32, ptr %j, align 4
  %idxprom367 = sext i32 %255 to i64
  %arrayidx368 = getelementptr inbounds i32, ptr %254, i64 %idxprom367
  %256 = load i32, ptr %arrayidx368, align 4
  %sub369 = sub i32 %256, 1
  store i32 %sub369, ptr %k, align 4
  %257 = load i32, ptr %k, align 4
  %cmp370 = icmp slt i32 %257, 0
  br i1 %cmp370, label %if.then372, label %if.end374

if.then372:                                       ; preds = %for.body366
  %258 = load i32, ptr %nblock.addr, align 4
  %259 = load i32, ptr %k, align 4
  %add373 = add nsw i32 %259, %258
  store i32 %add373, ptr %k, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.then372, %for.body366
  %260 = load ptr, ptr %block.addr, align 8
  %261 = load i32, ptr %k, align 4
  %idxprom375 = sext i32 %261 to i64
  %arrayidx376 = getelementptr inbounds i8, ptr %260, i64 %idxprom375
  %262 = load i8, ptr %arrayidx376, align 1
  store i8 %262, ptr %c1, align 1
  %263 = load i8, ptr %c1, align 1
  %idxprom377 = zext i8 %263 to i64
  %arrayidx378 = getelementptr inbounds nuw [256 x i8], ptr %bigDone, i64 0, i64 %idxprom377
  %264 = load i8, ptr %arrayidx378, align 1
  %tobool379 = icmp ne i8 %264, 0
  br i1 %tobool379, label %if.end386, label %if.then380

if.then380:                                       ; preds = %if.end374
  %265 = load i32, ptr %k, align 4
  %266 = load ptr, ptr %ptr.addr, align 8
  %267 = load i8, ptr %c1, align 1
  %idxprom381 = zext i8 %267 to i64
  %arrayidx382 = getelementptr inbounds nuw [256 x i32], ptr %copyStart, i64 0, i64 %idxprom381
  %268 = load i32, ptr %arrayidx382, align 4
  %inc383 = add nsw i32 %268, 1
  store i32 %inc383, ptr %arrayidx382, align 4
  %idxprom384 = sext i32 %268 to i64
  %arrayidx385 = getelementptr inbounds i32, ptr %266, i64 %idxprom384
  store i32 %265, ptr %arrayidx385, align 4
  br label %if.end386

if.end386:                                        ; preds = %if.then380, %if.end374
  br label %for.inc387

for.inc387:                                       ; preds = %if.end386
  %269 = load i32, ptr %j, align 4
  %inc388 = add nsw i32 %269, 1
  store i32 %inc388, ptr %j, align 4
  br label %for.cond361, !llvm.loop !21

for.end389:                                       ; preds = %for.cond361
  %270 = load ptr, ptr %ftab.addr, align 8
  %271 = load i32, ptr %ss, align 4
  %add390 = add nsw i32 %271, 1
  %shl391 = shl i32 %add390, 8
  %idxprom392 = sext i32 %shl391 to i64
  %arrayidx393 = getelementptr inbounds i32, ptr %270, i64 %idxprom392
  %272 = load i32, ptr %arrayidx393, align 4
  %and394 = and i32 %272, -2097153
  %sub395 = sub i32 %and394, 1
  store i32 %sub395, ptr %j, align 4
  br label %for.cond396

for.cond396:                                      ; preds = %for.inc422, %for.end389
  %273 = load i32, ptr %j, align 4
  %274 = load i32, ptr %ss, align 4
  %idxprom397 = sext i32 %274 to i64
  %arrayidx398 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom397
  %275 = load i32, ptr %arrayidx398, align 4
  %cmp399 = icmp sgt i32 %273, %275
  br i1 %cmp399, label %for.body401, label %for.end424

for.body401:                                      ; preds = %for.cond396
  %276 = load ptr, ptr %ptr.addr, align 8
  %277 = load i32, ptr %j, align 4
  %idxprom402 = sext i32 %277 to i64
  %arrayidx403 = getelementptr inbounds i32, ptr %276, i64 %idxprom402
  %278 = load i32, ptr %arrayidx403, align 4
  %sub404 = sub i32 %278, 1
  store i32 %sub404, ptr %k, align 4
  %279 = load i32, ptr %k, align 4
  %cmp405 = icmp slt i32 %279, 0
  br i1 %cmp405, label %if.then407, label %if.end409

if.then407:                                       ; preds = %for.body401
  %280 = load i32, ptr %nblock.addr, align 4
  %281 = load i32, ptr %k, align 4
  %add408 = add nsw i32 %281, %280
  store i32 %add408, ptr %k, align 4
  br label %if.end409

if.end409:                                        ; preds = %if.then407, %for.body401
  %282 = load ptr, ptr %block.addr, align 8
  %283 = load i32, ptr %k, align 4
  %idxprom410 = sext i32 %283 to i64
  %arrayidx411 = getelementptr inbounds i8, ptr %282, i64 %idxprom410
  %284 = load i8, ptr %arrayidx411, align 1
  store i8 %284, ptr %c1, align 1
  %285 = load i8, ptr %c1, align 1
  %idxprom412 = zext i8 %285 to i64
  %arrayidx413 = getelementptr inbounds nuw [256 x i8], ptr %bigDone, i64 0, i64 %idxprom412
  %286 = load i8, ptr %arrayidx413, align 1
  %tobool414 = icmp ne i8 %286, 0
  br i1 %tobool414, label %if.end421, label %if.then415

if.then415:                                       ; preds = %if.end409
  %287 = load i32, ptr %k, align 4
  %288 = load ptr, ptr %ptr.addr, align 8
  %289 = load i8, ptr %c1, align 1
  %idxprom416 = zext i8 %289 to i64
  %arrayidx417 = getelementptr inbounds nuw [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom416
  %290 = load i32, ptr %arrayidx417, align 4
  %dec418 = add nsw i32 %290, -1
  store i32 %dec418, ptr %arrayidx417, align 4
  %idxprom419 = sext i32 %290 to i64
  %arrayidx420 = getelementptr inbounds i32, ptr %288, i64 %idxprom419
  store i32 %287, ptr %arrayidx420, align 4
  br label %if.end421

if.end421:                                        ; preds = %if.then415, %if.end409
  br label %for.inc422

for.inc422:                                       ; preds = %if.end421
  %291 = load i32, ptr %j, align 4
  %dec423 = add nsw i32 %291, -1
  store i32 %dec423, ptr %j, align 4
  br label %for.cond396, !llvm.loop !22

for.end424:                                       ; preds = %for.cond396
  %292 = load i32, ptr %ss, align 4
  %idxprom425 = sext i32 %292 to i64
  %arrayidx426 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom425
  %293 = load i32, ptr %arrayidx426, align 4
  %sub427 = sub nsw i32 %293, 1
  %294 = load i32, ptr %ss, align 4
  %idxprom428 = sext i32 %294 to i64
  %arrayidx429 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom428
  %295 = load i32, ptr %arrayidx429, align 4
  %cmp430 = icmp eq i32 %sub427, %295
  br i1 %cmp430, label %if.end442, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end424
  %296 = load i32, ptr %ss, align 4
  %idxprom432 = sext i32 %296 to i64
  %arrayidx433 = getelementptr inbounds [256 x i32], ptr %copyStart, i64 0, i64 %idxprom432
  %297 = load i32, ptr %arrayidx433, align 4
  %cmp434 = icmp eq i32 %297, 0
  br i1 %cmp434, label %land.lhs.true, label %if.then441

land.lhs.true:                                    ; preds = %lor.lhs.false
  %298 = load i32, ptr %ss, align 4
  %idxprom436 = sext i32 %298 to i64
  %arrayidx437 = getelementptr inbounds [256 x i32], ptr %copyEnd, i64 0, i64 %idxprom436
  %299 = load i32, ptr %arrayidx437, align 4
  %300 = load i32, ptr %nblock.addr, align 4
  %sub438 = sub nsw i32 %300, 1
  %cmp439 = icmp eq i32 %299, %sub438
  br i1 %cmp439, label %if.end442, label %if.then441

if.then441:                                       ; preds = %land.lhs.true, %lor.lhs.false
  call void @BZ2_bz__AssertH__fail(i32 noundef 1007)
  br label %if.end442

if.end442:                                        ; preds = %if.then441, %land.lhs.true, %for.end424
  store i32 0, ptr %j, align 4
  br label %for.cond443

for.cond443:                                      ; preds = %for.inc452, %if.end442
  %301 = load i32, ptr %j, align 4
  %cmp444 = icmp sle i32 %301, 255
  br i1 %cmp444, label %for.body446, label %for.end454

for.body446:                                      ; preds = %for.cond443
  %302 = load ptr, ptr %ftab.addr, align 8
  %303 = load i32, ptr %j, align 4
  %shl447 = shl i32 %303, 8
  %304 = load i32, ptr %ss, align 4
  %add448 = add nsw i32 %shl447, %304
  %idxprom449 = sext i32 %add448 to i64
  %arrayidx450 = getelementptr inbounds i32, ptr %302, i64 %idxprom449
  %305 = load i32, ptr %arrayidx450, align 4
  %or451 = or i32 %305, 2097152
  store i32 %or451, ptr %arrayidx450, align 4
  br label %for.inc452

for.inc452:                                       ; preds = %for.body446
  %306 = load i32, ptr %j, align 4
  %inc453 = add nsw i32 %306, 1
  store i32 %inc453, ptr %j, align 4
  br label %for.cond443, !llvm.loop !23

for.end454:                                       ; preds = %for.cond443
  %307 = load i32, ptr %ss, align 4
  %idxprom455 = sext i32 %307 to i64
  %arrayidx456 = getelementptr inbounds [256 x i8], ptr %bigDone, i64 0, i64 %idxprom455
  store i8 1, ptr %arrayidx456, align 1
  %308 = load i32, ptr %i, align 4
  %cmp457 = icmp slt i32 %308, 255
  br i1 %cmp457, label %if.then459, label %if.end505

if.then459:                                       ; preds = %for.end454
  %309 = load ptr, ptr %ftab.addr, align 8
  %310 = load i32, ptr %ss, align 4
  %shl460 = shl i32 %310, 8
  %idxprom461 = sext i32 %shl460 to i64
  %arrayidx462 = getelementptr inbounds i32, ptr %309, i64 %idxprom461
  %311 = load i32, ptr %arrayidx462, align 4
  %and463 = and i32 %311, -2097153
  store i32 %and463, ptr %bbStart, align 4
  %312 = load ptr, ptr %ftab.addr, align 8
  %313 = load i32, ptr %ss, align 4
  %add464 = add nsw i32 %313, 1
  %shl465 = shl i32 %add464, 8
  %idxprom466 = sext i32 %shl465 to i64
  %arrayidx467 = getelementptr inbounds i32, ptr %312, i64 %idxprom466
  %314 = load i32, ptr %arrayidx467, align 4
  %and468 = and i32 %314, -2097153
  %315 = load i32, ptr %bbStart, align 4
  %sub469 = sub i32 %and468, %315
  store i32 %sub469, ptr %bbSize, align 4
  store i32 0, ptr %shifts, align 4
  br label %while.cond470

while.cond470:                                    ; preds = %while.body474, %if.then459
  %316 = load i32, ptr %bbSize, align 4
  %317 = load i32, ptr %shifts, align 4
  %shr471 = ashr i32 %316, %317
  %cmp472 = icmp sgt i32 %shr471, 65534
  br i1 %cmp472, label %while.body474, label %while.end476

while.body474:                                    ; preds = %while.cond470
  %318 = load i32, ptr %shifts, align 4
  %inc475 = add nsw i32 %318, 1
  store i32 %inc475, ptr %shifts, align 4
  br label %while.cond470, !llvm.loop !24

while.end476:                                     ; preds = %while.cond470
  %319 = load i32, ptr %bbSize, align 4
  %sub477 = sub nsw i32 %319, 1
  store i32 %sub477, ptr %j, align 4
  br label %for.cond478

for.cond478:                                      ; preds = %for.inc496, %while.end476
  %320 = load i32, ptr %j, align 4
  %cmp479 = icmp sge i32 %320, 0
  br i1 %cmp479, label %for.body481, label %for.end498

for.body481:                                      ; preds = %for.cond478
  %321 = load ptr, ptr %ptr.addr, align 8
  %322 = load i32, ptr %bbStart, align 4
  %323 = load i32, ptr %j, align 4
  %add482 = add nsw i32 %322, %323
  %idxprom483 = sext i32 %add482 to i64
  %arrayidx484 = getelementptr inbounds i32, ptr %321, i64 %idxprom483
  %324 = load i32, ptr %arrayidx484, align 4
  store i32 %324, ptr %a2update, align 4
  %325 = load i32, ptr %j, align 4
  %326 = load i32, ptr %shifts, align 4
  %shr485 = ashr i32 %325, %326
  %conv486 = trunc i32 %shr485 to i16
  store i16 %conv486, ptr %qVal, align 2
  %327 = load i16, ptr %qVal, align 2
  %328 = load ptr, ptr %quadrant.addr, align 8
  %329 = load i32, ptr %a2update, align 4
  %idxprom487 = sext i32 %329 to i64
  %arrayidx488 = getelementptr inbounds i16, ptr %328, i64 %idxprom487
  store i16 %327, ptr %arrayidx488, align 2
  %330 = load i32, ptr %a2update, align 4
  %cmp489 = icmp slt i32 %330, 34
  br i1 %cmp489, label %if.then491, label %if.end495

if.then491:                                       ; preds = %for.body481
  %331 = load i16, ptr %qVal, align 2
  %332 = load ptr, ptr %quadrant.addr, align 8
  %333 = load i32, ptr %a2update, align 4
  %334 = load i32, ptr %nblock.addr, align 4
  %add492 = add nsw i32 %333, %334
  %idxprom493 = sext i32 %add492 to i64
  %arrayidx494 = getelementptr inbounds i16, ptr %332, i64 %idxprom493
  store i16 %331, ptr %arrayidx494, align 2
  br label %if.end495

if.end495:                                        ; preds = %if.then491, %for.body481
  br label %for.inc496

for.inc496:                                       ; preds = %if.end495
  %335 = load i32, ptr %j, align 4
  %dec497 = add nsw i32 %335, -1
  store i32 %dec497, ptr %j, align 4
  br label %for.cond478, !llvm.loop !25

for.end498:                                       ; preds = %for.cond478
  %336 = load i32, ptr %bbSize, align 4
  %sub499 = sub nsw i32 %336, 1
  %337 = load i32, ptr %shifts, align 4
  %shr500 = ashr i32 %sub499, %337
  %cmp501 = icmp sle i32 %shr500, 65535
  br i1 %cmp501, label %if.end504, label %if.then503

if.then503:                                       ; preds = %for.end498
  call void @BZ2_bz__AssertH__fail(i32 noundef 1002)
  br label %if.end504

if.end504:                                        ; preds = %if.then503, %for.end498
  br label %if.end505

if.end505:                                        ; preds = %if.end504, %for.end454
  br label %for.inc506

for.inc506:                                       ; preds = %if.end505
  %338 = load i32, ptr %i, align 4
  %inc507 = add nsw i32 %338, 1
  store i32 %inc507, ptr %i, align 4
  br label %for.cond277, !llvm.loop !26

for.end508:                                       ; preds = %for.cond277
  %339 = load i32, ptr %verb.addr, align 4
  %cmp509 = icmp sge i32 %339, 4
  br i1 %cmp509, label %if.then511, label %if.end514

if.then511:                                       ; preds = %for.end508
  %340 = load ptr, ptr @stderr, align 8
  %341 = load i32, ptr %nblock.addr, align 4
  %342 = load i32, ptr %numQSorted, align 4
  %343 = load i32, ptr %nblock.addr, align 4
  %344 = load i32, ptr %numQSorted, align 4
  %sub512 = sub nsw i32 %343, %344
  %call513 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %340, ptr noundef @.str.54, i32 noundef %341, i32 noundef %342, i32 noundef %sub512) #2
  br label %if.end514

if.end514:                                        ; preds = %if.then511, %for.end508, %if.then318
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare dso_local void @BZ2_bz__AssertH__fail(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @mainQSort3(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

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
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
