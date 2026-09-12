; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyHexStrToInt64(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %pOutVal, ptr noundef %zRest) #1 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pOutVal.addr = alloca ptr, align 8
  %zRest.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %isNeg = alloca i32, align 4
  %nVal = alloca i64, align 8
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pOutVal, ptr %pOutVal.addr, align 8
  store ptr %zRest, ptr %zRest.addr, align 8
  store i32 0, ptr %isNeg, align 4
  store i64 0, ptr %nVal, align 8
  %0 = load ptr, ptr %zSrc.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %zSrc.addr, align 8
  %3 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call = call ptr @__ctype_b_loc() #2
  %4 = load ptr, ptr %call, align 8
  %5 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  %idxprom2 = sext i32 %conv to i64
  %arrayidx3 = getelementptr inbounds i16, ptr %4, i64 %idxprom2
  %7 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %7 to i32
  %and = and i32 %conv4, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %zSrc.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %10 = load ptr, ptr %zSrc.addr, align 8
  %11 = load ptr, ptr %zEnd, align 8
  %cmp5 = icmp ult ptr %10, %11
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %12 = load ptr, ptr %zSrc.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv7 = sext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 45
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load ptr, ptr %zSrc.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv10 = sext i8 %15 to i32
  %cmp11 = icmp eq i32 %conv10, 43
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %17 to i32
  %cmp15 = icmp eq i32 %conv14, 45
  %18 = zext i1 %cmp15 to i64
  %cond = select i1 %cmp15, i32 1, i32 0
  store i32 %cond, ptr %isNeg, align 4
  %19 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr17, ptr %zSrc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.end
  %20 = load ptr, ptr %zSrc.addr, align 8
  %21 = load ptr, ptr %zEnd, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %21, i64 -2
  %cmp19 = icmp ult ptr %20, %arrayidx18
  br i1 %cmp19, label %land.lhs.true21, label %if.end37

land.lhs.true21:                                  ; preds = %if.end
  %22 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %23 to i32
  %cmp24 = icmp eq i32 %conv23, 48
  br i1 %cmp24, label %land.lhs.true26, label %if.end37

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %24 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %25 to i32
  %cmp29 = icmp eq i32 %conv28, 120
  br i1 %cmp29, label %if.then36, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %land.lhs.true26
  %26 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %27 to i32
  %cmp34 = icmp eq i32 %conv33, 88
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false31, %land.lhs.true26
  %28 = load ptr, ptr %zSrc.addr, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %28, i64 2
  store ptr %add.ptr, ptr %zSrc.addr, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %lor.lhs.false31, %land.lhs.true21, %if.end
  br label %while.cond38

while.cond38:                                     ; preds = %while.body47, %if.end37
  %29 = load ptr, ptr %zSrc.addr, align 8
  %30 = load ptr, ptr %zEnd, align 8
  %cmp39 = icmp ult ptr %29, %30
  br i1 %cmp39, label %land.rhs41, label %land.end46

land.rhs41:                                       ; preds = %while.cond38
  %31 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx42, align 1
  %conv43 = sext i8 %32 to i32
  %cmp44 = icmp eq i32 %conv43, 48
  br label %land.end46

land.end46:                                       ; preds = %land.rhs41, %while.cond38
  %33 = phi i1 [ false, %while.cond38 ], [ %cmp44, %land.rhs41 ]
  br i1 %33, label %while.body47, label %while.end49

while.body47:                                     ; preds = %land.end46
  %34 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr48 = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %incdec.ptr48, ptr %zSrc.addr, align 8
  br label %while.cond38, !llvm.loop !8

while.end49:                                      ; preds = %land.end46
  %35 = load ptr, ptr %zSrc.addr, align 8
  store ptr %35, ptr %zIn, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end145, %while.end49
  %36 = load ptr, ptr %zSrc.addr, align 8
  %37 = load ptr, ptr %zEnd, align 8
  %cmp50 = icmp uge ptr %36, %37
  br i1 %cmp50, label %if.then65, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %for.cond
  %call53 = call ptr @__ctype_b_loc() #2
  %38 = load ptr, ptr %call53, align 8
  %39 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %40 to i32
  %idxprom56 = sext i32 %conv55 to i64
  %arrayidx57 = getelementptr inbounds i16, ptr %38, i64 %idxprom56
  %41 = load i16, ptr %arrayidx57, align 2
  %conv58 = zext i16 %41 to i32
  %and59 = and i32 %conv58, 4096
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %lor.lhs.false61, label %if.then65

lor.lhs.false61:                                  ; preds = %lor.lhs.false52
  %42 = load ptr, ptr %zSrc.addr, align 8
  %43 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %42 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv62 = trunc i64 %sub.ptr.sub to i32
  %cmp63 = icmp sgt i32 %conv62, 15
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %lor.lhs.false61, %lor.lhs.false52, %for.cond
  br label %for.end

if.end66:                                         ; preds = %lor.lhs.false61
  %44 = load i64, ptr %nVal, align 8
  %mul = mul nsw i64 %44, 16
  %45 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx67, align 1
  %conv68 = sext i8 %46 to i32
  %call69 = call i32 @SyHexToint(i32 noundef %conv68)
  %conv70 = sext i32 %call69 to i64
  %add = add nsw i64 %mul, %conv70
  store i64 %add, ptr %nVal, align 8
  %47 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr71 = getelementptr inbounds nuw i8, ptr %47, i32 1
  store ptr %incdec.ptr71, ptr %zSrc.addr, align 8
  %48 = load ptr, ptr %zSrc.addr, align 8
  %49 = load ptr, ptr %zEnd, align 8
  %cmp72 = icmp uge ptr %48, %49
  br i1 %cmp72, label %if.then90, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.end66
  %call75 = call ptr @__ctype_b_loc() #2
  %50 = load ptr, ptr %call75, align 8
  %51 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %51, i64 0
  %52 = load i8, ptr %arrayidx76, align 1
  %conv77 = sext i8 %52 to i32
  %idxprom78 = sext i32 %conv77 to i64
  %arrayidx79 = getelementptr inbounds i16, ptr %50, i64 %idxprom78
  %53 = load i16, ptr %arrayidx79, align 2
  %conv80 = zext i16 %53 to i32
  %and81 = and i32 %conv80, 4096
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %lor.lhs.false83, label %if.then90

lor.lhs.false83:                                  ; preds = %lor.lhs.false74
  %54 = load ptr, ptr %zSrc.addr, align 8
  %55 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast84 = ptrtoint ptr %54 to i64
  %sub.ptr.rhs.cast85 = ptrtoint ptr %55 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %conv87 = trunc i64 %sub.ptr.sub86 to i32
  %cmp88 = icmp sgt i32 %conv87, 15
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %lor.lhs.false83, %lor.lhs.false74, %if.end66
  br label %for.end

if.end91:                                         ; preds = %lor.lhs.false83
  %56 = load i64, ptr %nVal, align 8
  %mul92 = mul nsw i64 %56, 16
  %57 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx93 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx93, align 1
  %conv94 = sext i8 %58 to i32
  %call95 = call i32 @SyHexToint(i32 noundef %conv94)
  %conv96 = sext i32 %call95 to i64
  %add97 = add nsw i64 %mul92, %conv96
  store i64 %add97, ptr %nVal, align 8
  %59 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr98 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %incdec.ptr98, ptr %zSrc.addr, align 8
  %60 = load ptr, ptr %zSrc.addr, align 8
  %61 = load ptr, ptr %zEnd, align 8
  %cmp99 = icmp uge ptr %60, %61
  br i1 %cmp99, label %if.then117, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %if.end91
  %call102 = call ptr @__ctype_b_loc() #2
  %62 = load ptr, ptr %call102, align 8
  %63 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx103 = getelementptr inbounds i8, ptr %63, i64 0
  %64 = load i8, ptr %arrayidx103, align 1
  %conv104 = sext i8 %64 to i32
  %idxprom105 = sext i32 %conv104 to i64
  %arrayidx106 = getelementptr inbounds i16, ptr %62, i64 %idxprom105
  %65 = load i16, ptr %arrayidx106, align 2
  %conv107 = zext i16 %65 to i32
  %and108 = and i32 %conv107, 4096
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %lor.lhs.false110, label %if.then117

lor.lhs.false110:                                 ; preds = %lor.lhs.false101
  %66 = load ptr, ptr %zSrc.addr, align 8
  %67 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast111 = ptrtoint ptr %66 to i64
  %sub.ptr.rhs.cast112 = ptrtoint ptr %67 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  %conv114 = trunc i64 %sub.ptr.sub113 to i32
  %cmp115 = icmp sgt i32 %conv114, 15
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %lor.lhs.false110, %lor.lhs.false101, %if.end91
  br label %for.end

if.end118:                                        ; preds = %lor.lhs.false110
  %68 = load i64, ptr %nVal, align 8
  %mul119 = mul nsw i64 %68, 16
  %69 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, ptr %69, i64 0
  %70 = load i8, ptr %arrayidx120, align 1
  %conv121 = sext i8 %70 to i32
  %call122 = call i32 @SyHexToint(i32 noundef %conv121)
  %conv123 = sext i32 %call122 to i64
  %add124 = add nsw i64 %mul119, %conv123
  store i64 %add124, ptr %nVal, align 8
  %71 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr125 = getelementptr inbounds nuw i8, ptr %71, i32 1
  store ptr %incdec.ptr125, ptr %zSrc.addr, align 8
  %72 = load ptr, ptr %zSrc.addr, align 8
  %73 = load ptr, ptr %zEnd, align 8
  %cmp126 = icmp uge ptr %72, %73
  br i1 %cmp126, label %if.then144, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.end118
  %call129 = call ptr @__ctype_b_loc() #2
  %74 = load ptr, ptr %call129, align 8
  %75 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %75, i64 0
  %76 = load i8, ptr %arrayidx130, align 1
  %conv131 = sext i8 %76 to i32
  %idxprom132 = sext i32 %conv131 to i64
  %arrayidx133 = getelementptr inbounds i16, ptr %74, i64 %idxprom132
  %77 = load i16, ptr %arrayidx133, align 2
  %conv134 = zext i16 %77 to i32
  %and135 = and i32 %conv134, 4096
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %lor.lhs.false137, label %if.then144

lor.lhs.false137:                                 ; preds = %lor.lhs.false128
  %78 = load ptr, ptr %zSrc.addr, align 8
  %79 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast138 = ptrtoint ptr %78 to i64
  %sub.ptr.rhs.cast139 = ptrtoint ptr %79 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %conv141 = trunc i64 %sub.ptr.sub140 to i32
  %cmp142 = icmp sgt i32 %conv141, 15
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %lor.lhs.false137, %lor.lhs.false128, %if.end118
  br label %for.end

if.end145:                                        ; preds = %lor.lhs.false137
  %80 = load i64, ptr %nVal, align 8
  %mul146 = mul nsw i64 %80, 16
  %81 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, ptr %81, i64 0
  %82 = load i8, ptr %arrayidx147, align 1
  %conv148 = sext i8 %82 to i32
  %call149 = call i32 @SyHexToint(i32 noundef %conv148)
  %conv150 = sext i32 %call149 to i64
  %add151 = add nsw i64 %mul146, %conv150
  store i64 %add151, ptr %nVal, align 8
  %83 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr152 = getelementptr inbounds nuw i8, ptr %83, i32 1
  store ptr %incdec.ptr152, ptr %zSrc.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then144, %if.then117, %if.then90, %if.then65
  br label %while.cond153

while.cond153:                                    ; preds = %while.body166, %for.end
  %84 = load ptr, ptr %zSrc.addr, align 8
  %85 = load ptr, ptr %zEnd, align 8
  %cmp154 = icmp ult ptr %84, %85
  br i1 %cmp154, label %land.rhs156, label %land.end165

land.rhs156:                                      ; preds = %while.cond153
  %call157 = call ptr @__ctype_b_loc() #2
  %86 = load ptr, ptr %call157, align 8
  %87 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, ptr %87, i64 0
  %88 = load i8, ptr %arrayidx158, align 1
  %conv159 = sext i8 %88 to i32
  %idxprom160 = sext i32 %conv159 to i64
  %arrayidx161 = getelementptr inbounds i16, ptr %86, i64 %idxprom160
  %89 = load i16, ptr %arrayidx161, align 2
  %conv162 = zext i16 %89 to i32
  %and163 = and i32 %conv162, 8192
  %tobool164 = icmp ne i32 %and163, 0
  br label %land.end165

land.end165:                                      ; preds = %land.rhs156, %while.cond153
  %90 = phi i1 [ false, %while.cond153 ], [ %tobool164, %land.rhs156 ]
  br i1 %90, label %while.body166, label %while.end168

while.body166:                                    ; preds = %land.end165
  %91 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr167 = getelementptr inbounds nuw i8, ptr %91, i32 1
  store ptr %incdec.ptr167, ptr %zSrc.addr, align 8
  br label %while.cond153, !llvm.loop !9

while.end168:                                     ; preds = %land.end165
  %92 = load ptr, ptr %zRest.addr, align 8
  %tobool169 = icmp ne ptr %92, null
  br i1 %tobool169, label %if.then170, label %if.end171

if.then170:                                       ; preds = %while.end168
  %93 = load ptr, ptr %zSrc.addr, align 8
  %94 = load ptr, ptr %zRest.addr, align 8
  store ptr %93, ptr %94, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %while.end168
  %95 = load ptr, ptr %pOutVal.addr, align 8
  %tobool172 = icmp ne ptr %95, null
  br i1 %tobool172, label %if.then173, label %if.end181

if.then173:                                       ; preds = %if.end171
  %96 = load i32, ptr %isNeg, align 4
  %cmp174 = icmp eq i32 %96, 1
  br i1 %cmp174, label %land.lhs.true176, label %if.end180

land.lhs.true176:                                 ; preds = %if.then173
  %97 = load i64, ptr %nVal, align 8
  %cmp177 = icmp ne i64 %97, 0
  br i1 %cmp177, label %if.then179, label %if.end180

if.then179:                                       ; preds = %land.lhs.true176
  %98 = load i64, ptr %nVal, align 8
  %sub = sub nsw i64 0, %98
  store i64 %sub, ptr %nVal, align 8
  br label %if.end180

if.end180:                                        ; preds = %if.then179, %land.lhs.true176, %if.then173
  %99 = load i64, ptr %nVal, align 8
  %100 = load ptr, ptr %pOutVal.addr, align 8
  store i64 %99, ptr %100, align 8
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end171
  %101 = load ptr, ptr %zSrc.addr, align 8
  %102 = load ptr, ptr %zEnd, align 8
  %cmp182 = icmp uge ptr %101, %102
  %103 = zext i1 %cmp182 to i64
  %cond184 = select i1 %cmp182, i32 0, i32 -12
  ret i32 %cond184
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHexToint(i32 noundef) #1

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
