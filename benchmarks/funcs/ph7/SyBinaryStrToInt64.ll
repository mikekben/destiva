; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyBinaryStrToInt64(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %pOutVal, ptr noundef %zRest) #1 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pOutVal.addr = alloca ptr, align 8
  %zRest.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %isNeg = alloca i32, align 4
  %nVal = alloca i64, align 8
  %c = alloca i32, align 4
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
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 43
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %17 to i32
  %cmp17 = icmp eq i32 %conv16, 45
  %18 = zext i1 %cmp17 to i64
  %cond = select i1 %cmp17, i32 1, i32 0
  store i32 %cond, ptr %isNeg, align 4
  %19 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr19, ptr %zSrc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.end
  %20 = load ptr, ptr %zSrc.addr, align 8
  %21 = load ptr, ptr %zEnd, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %21, i64 -2
  %cmp21 = icmp ult ptr %20, %arrayidx20
  br i1 %cmp21, label %land.lhs.true23, label %if.end39

land.lhs.true23:                                  ; preds = %if.end
  %22 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 48
  br i1 %cmp26, label %land.lhs.true28, label %if.end39

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %24 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %24, i64 1
  %25 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %25 to i32
  %cmp31 = icmp eq i32 %conv30, 98
  br i1 %cmp31, label %if.then38, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %land.lhs.true28
  %26 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %27 to i32
  %cmp36 = icmp eq i32 %conv35, 66
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %lor.lhs.false33, %land.lhs.true28
  %28 = load ptr, ptr %zSrc.addr, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %28, i64 2
  store ptr %add.ptr, ptr %zSrc.addr, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %lor.lhs.false33, %land.lhs.true23, %if.end
  br label %while.cond40

while.cond40:                                     ; preds = %while.body49, %if.end39
  %29 = load ptr, ptr %zSrc.addr, align 8
  %30 = load ptr, ptr %zEnd, align 8
  %cmp41 = icmp ult ptr %29, %30
  br i1 %cmp41, label %land.rhs43, label %land.end48

land.rhs43:                                       ; preds = %while.cond40
  %31 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %31, i64 0
  %32 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %32 to i32
  %cmp46 = icmp eq i32 %conv45, 48
  br label %land.end48

land.end48:                                       ; preds = %land.rhs43, %while.cond40
  %33 = phi i1 [ false, %while.cond40 ], [ %cmp46, %land.rhs43 ]
  br i1 %33, label %while.body49, label %while.end51

while.body49:                                     ; preds = %land.end48
  %34 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr50 = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %incdec.ptr50, ptr %zSrc.addr, align 8
  br label %while.cond40, !llvm.loop !8

while.end51:                                      ; preds = %land.end48
  %35 = load ptr, ptr %zSrc.addr, align 8
  store ptr %35, ptr %zIn, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end150, %while.end51
  %36 = load ptr, ptr %zSrc.addr, align 8
  %37 = load ptr, ptr %zEnd, align 8
  %cmp52 = icmp uge ptr %36, %37
  br i1 %cmp52, label %if.then68, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %for.cond
  %38 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %39 to i32
  %cmp57 = icmp ne i32 %conv56, 49
  br i1 %cmp57, label %land.lhs.true59, label %lor.lhs.false64

land.lhs.true59:                                  ; preds = %lor.lhs.false54
  %40 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %40, i64 0
  %41 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %41 to i32
  %cmp62 = icmp ne i32 %conv61, 48
  br i1 %cmp62, label %if.then68, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %land.lhs.true59, %lor.lhs.false54
  %42 = load ptr, ptr %zSrc.addr, align 8
  %43 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %42 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %43 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv65 = trunc i64 %sub.ptr.sub to i32
  %cmp66 = icmp sgt i32 %conv65, 62
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false64, %land.lhs.true59, %for.cond
  br label %for.end

if.end69:                                         ; preds = %lor.lhs.false64
  %44 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %45 to i32
  %sub = sub nsw i32 %conv71, 48
  store i32 %sub, ptr %c, align 4
  %46 = load i64, ptr %nVal, align 8
  %shl = shl i64 %46, 1
  %47 = load i32, ptr %c, align 4
  %conv72 = sext i32 %47 to i64
  %add = add nsw i64 %shl, %conv72
  store i64 %add, ptr %nVal, align 8
  %48 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr73 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr73, ptr %zSrc.addr, align 8
  %49 = load ptr, ptr %zSrc.addr, align 8
  %50 = load ptr, ptr %zEnd, align 8
  %cmp74 = icmp uge ptr %49, %50
  br i1 %cmp74, label %if.then93, label %lor.lhs.false76

lor.lhs.false76:                                  ; preds = %if.end69
  %51 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, ptr %51, i64 0
  %52 = load i8, ptr %arrayidx77, align 1
  %conv78 = sext i8 %52 to i32
  %cmp79 = icmp ne i32 %conv78, 49
  br i1 %cmp79, label %land.lhs.true81, label %lor.lhs.false86

land.lhs.true81:                                  ; preds = %lor.lhs.false76
  %53 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx82, align 1
  %conv83 = sext i8 %54 to i32
  %cmp84 = icmp ne i32 %conv83, 48
  br i1 %cmp84, label %if.then93, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %land.lhs.true81, %lor.lhs.false76
  %55 = load ptr, ptr %zSrc.addr, align 8
  %56 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast87 = ptrtoint ptr %55 to i64
  %sub.ptr.rhs.cast88 = ptrtoint ptr %56 to i64
  %sub.ptr.sub89 = sub i64 %sub.ptr.lhs.cast87, %sub.ptr.rhs.cast88
  %conv90 = trunc i64 %sub.ptr.sub89 to i32
  %cmp91 = icmp sgt i32 %conv90, 62
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %lor.lhs.false86, %land.lhs.true81, %if.end69
  br label %for.end

if.end94:                                         ; preds = %lor.lhs.false86
  %57 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx95, align 1
  %conv96 = sext i8 %58 to i32
  %sub97 = sub nsw i32 %conv96, 48
  store i32 %sub97, ptr %c, align 4
  %59 = load i64, ptr %nVal, align 8
  %shl98 = shl i64 %59, 1
  %60 = load i32, ptr %c, align 4
  %conv99 = sext i32 %60 to i64
  %add100 = add nsw i64 %shl98, %conv99
  store i64 %add100, ptr %nVal, align 8
  %61 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr101 = getelementptr inbounds nuw i8, ptr %61, i32 1
  store ptr %incdec.ptr101, ptr %zSrc.addr, align 8
  %62 = load ptr, ptr %zSrc.addr, align 8
  %63 = load ptr, ptr %zEnd, align 8
  %cmp102 = icmp uge ptr %62, %63
  br i1 %cmp102, label %if.then121, label %lor.lhs.false104

lor.lhs.false104:                                 ; preds = %if.end94
  %64 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx105, align 1
  %conv106 = sext i8 %65 to i32
  %cmp107 = icmp ne i32 %conv106, 49
  br i1 %cmp107, label %land.lhs.true109, label %lor.lhs.false114

land.lhs.true109:                                 ; preds = %lor.lhs.false104
  %66 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %66, i64 0
  %67 = load i8, ptr %arrayidx110, align 1
  %conv111 = sext i8 %67 to i32
  %cmp112 = icmp ne i32 %conv111, 48
  br i1 %cmp112, label %if.then121, label %lor.lhs.false114

lor.lhs.false114:                                 ; preds = %land.lhs.true109, %lor.lhs.false104
  %68 = load ptr, ptr %zSrc.addr, align 8
  %69 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast115 = ptrtoint ptr %68 to i64
  %sub.ptr.rhs.cast116 = ptrtoint ptr %69 to i64
  %sub.ptr.sub117 = sub i64 %sub.ptr.lhs.cast115, %sub.ptr.rhs.cast116
  %conv118 = trunc i64 %sub.ptr.sub117 to i32
  %cmp119 = icmp sgt i32 %conv118, 62
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %lor.lhs.false114, %land.lhs.true109, %if.end94
  br label %for.end

if.end122:                                        ; preds = %lor.lhs.false114
  %70 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %70, i64 0
  %71 = load i8, ptr %arrayidx123, align 1
  %conv124 = sext i8 %71 to i32
  %sub125 = sub nsw i32 %conv124, 48
  store i32 %sub125, ptr %c, align 4
  %72 = load i64, ptr %nVal, align 8
  %shl126 = shl i64 %72, 1
  %73 = load i32, ptr %c, align 4
  %conv127 = sext i32 %73 to i64
  %add128 = add nsw i64 %shl126, %conv127
  store i64 %add128, ptr %nVal, align 8
  %74 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr129 = getelementptr inbounds nuw i8, ptr %74, i32 1
  store ptr %incdec.ptr129, ptr %zSrc.addr, align 8
  %75 = load ptr, ptr %zSrc.addr, align 8
  %76 = load ptr, ptr %zEnd, align 8
  %cmp130 = icmp uge ptr %75, %76
  br i1 %cmp130, label %if.then149, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %if.end122
  %77 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %77, i64 0
  %78 = load i8, ptr %arrayidx133, align 1
  %conv134 = sext i8 %78 to i32
  %cmp135 = icmp ne i32 %conv134, 49
  br i1 %cmp135, label %land.lhs.true137, label %lor.lhs.false142

land.lhs.true137:                                 ; preds = %lor.lhs.false132
  %79 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %79, i64 0
  %80 = load i8, ptr %arrayidx138, align 1
  %conv139 = sext i8 %80 to i32
  %cmp140 = icmp ne i32 %conv139, 48
  br i1 %cmp140, label %if.then149, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %land.lhs.true137, %lor.lhs.false132
  %81 = load ptr, ptr %zSrc.addr, align 8
  %82 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast143 = ptrtoint ptr %81 to i64
  %sub.ptr.rhs.cast144 = ptrtoint ptr %82 to i64
  %sub.ptr.sub145 = sub i64 %sub.ptr.lhs.cast143, %sub.ptr.rhs.cast144
  %conv146 = trunc i64 %sub.ptr.sub145 to i32
  %cmp147 = icmp sgt i32 %conv146, 62
  br i1 %cmp147, label %if.then149, label %if.end150

if.then149:                                       ; preds = %lor.lhs.false142, %land.lhs.true137, %if.end122
  br label %for.end

if.end150:                                        ; preds = %lor.lhs.false142
  %83 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %83, i64 0
  %84 = load i8, ptr %arrayidx151, align 1
  %conv152 = sext i8 %84 to i32
  %sub153 = sub nsw i32 %conv152, 48
  store i32 %sub153, ptr %c, align 4
  %85 = load i64, ptr %nVal, align 8
  %shl154 = shl i64 %85, 1
  %86 = load i32, ptr %c, align 4
  %conv155 = sext i32 %86 to i64
  %add156 = add nsw i64 %shl154, %conv155
  store i64 %add156, ptr %nVal, align 8
  %87 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr157 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %incdec.ptr157, ptr %zSrc.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then149, %if.then121, %if.then93, %if.then68
  br label %while.cond158

while.cond158:                                    ; preds = %while.body171, %for.end
  %88 = load ptr, ptr %zSrc.addr, align 8
  %89 = load ptr, ptr %zEnd, align 8
  %cmp159 = icmp ult ptr %88, %89
  br i1 %cmp159, label %land.rhs161, label %land.end170

land.rhs161:                                      ; preds = %while.cond158
  %call162 = call ptr @__ctype_b_loc() #2
  %90 = load ptr, ptr %call162, align 8
  %91 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx163 = getelementptr inbounds i8, ptr %91, i64 0
  %92 = load i8, ptr %arrayidx163, align 1
  %conv164 = sext i8 %92 to i32
  %idxprom165 = sext i32 %conv164 to i64
  %arrayidx166 = getelementptr inbounds i16, ptr %90, i64 %idxprom165
  %93 = load i16, ptr %arrayidx166, align 2
  %conv167 = zext i16 %93 to i32
  %and168 = and i32 %conv167, 8192
  %tobool169 = icmp ne i32 %and168, 0
  br label %land.end170

land.end170:                                      ; preds = %land.rhs161, %while.cond158
  %94 = phi i1 [ false, %while.cond158 ], [ %tobool169, %land.rhs161 ]
  br i1 %94, label %while.body171, label %while.end173

while.body171:                                    ; preds = %land.end170
  %95 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr172 = getelementptr inbounds nuw i8, ptr %95, i32 1
  store ptr %incdec.ptr172, ptr %zSrc.addr, align 8
  br label %while.cond158, !llvm.loop !9

while.end173:                                     ; preds = %land.end170
  %96 = load ptr, ptr %zRest.addr, align 8
  %tobool174 = icmp ne ptr %96, null
  br i1 %tobool174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %while.end173
  %97 = load ptr, ptr %zSrc.addr, align 8
  %98 = load ptr, ptr %zRest.addr, align 8
  store ptr %97, ptr %98, align 8
  br label %if.end176

if.end176:                                        ; preds = %if.then175, %while.end173
  %99 = load ptr, ptr %pOutVal.addr, align 8
  %tobool177 = icmp ne ptr %99, null
  br i1 %tobool177, label %if.then178, label %if.end187

if.then178:                                       ; preds = %if.end176
  %100 = load i32, ptr %isNeg, align 4
  %cmp179 = icmp eq i32 %100, 1
  br i1 %cmp179, label %land.lhs.true181, label %if.end186

land.lhs.true181:                                 ; preds = %if.then178
  %101 = load i64, ptr %nVal, align 8
  %cmp182 = icmp ne i64 %101, 0
  br i1 %cmp182, label %if.then184, label %if.end186

if.then184:                                       ; preds = %land.lhs.true181
  %102 = load i64, ptr %nVal, align 8
  %sub185 = sub nsw i64 0, %102
  store i64 %sub185, ptr %nVal, align 8
  br label %if.end186

if.end186:                                        ; preds = %if.then184, %land.lhs.true181, %if.then178
  %103 = load i64, ptr %nVal, align 8
  %104 = load ptr, ptr %pOutVal.addr, align 8
  store i64 %103, ptr %104, align 8
  br label %if.end187

if.end187:                                        ; preds = %if.end186, %if.end176
  %105 = load ptr, ptr %zSrc.addr, align 8
  %106 = load ptr, ptr %zEnd, align 8
  %cmp188 = icmp uge ptr %105, %106
  %107 = zext i1 %cmp188 to i64
  %cond190 = select i1 %cmp188, i32 0, i32 -12
  ret i32 %cond190
}

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
