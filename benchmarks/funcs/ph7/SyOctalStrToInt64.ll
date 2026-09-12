; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyOctalStrToInt64(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %pOutVal, ptr noundef %zRest) #1 {
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
  br label %while.cond20

while.cond20:                                     ; preds = %while.body29, %if.end
  %20 = load ptr, ptr %zSrc.addr, align 8
  %21 = load ptr, ptr %zEnd, align 8
  %cmp21 = icmp ult ptr %20, %21
  br i1 %cmp21, label %land.rhs23, label %land.end28

land.rhs23:                                       ; preds = %while.cond20
  %22 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 48
  br label %land.end28

land.end28:                                       ; preds = %land.rhs23, %while.cond20
  %24 = phi i1 [ false, %while.cond20 ], [ %cmp26, %land.rhs23 ]
  br i1 %24, label %while.body29, label %while.end31

while.body29:                                     ; preds = %land.end28
  %25 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr30 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr30, ptr %zSrc.addr, align 8
  br label %while.cond20, !llvm.loop !8

while.end31:                                      ; preds = %land.end28
  %26 = load ptr, ptr %zSrc.addr, align 8
  store ptr %26, ptr %zIn, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end145, %while.end31
  %27 = load ptr, ptr %zSrc.addr, align 8
  %28 = load ptr, ptr %zEnd, align 8
  %cmp32 = icmp uge ptr %27, %28
  br i1 %cmp32, label %if.then43, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %for.cond
  %call35 = call ptr @__ctype_b_loc() #2
  %29 = load ptr, ptr %call35, align 8
  %30 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %31 to i32
  %idxprom38 = sext i32 %conv37 to i64
  %arrayidx39 = getelementptr inbounds i16, ptr %29, i64 %idxprom38
  %32 = load i16, ptr %arrayidx39, align 2
  %conv40 = zext i16 %32 to i32
  %and41 = and i32 %conv40, 2048
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.end44, label %if.then43

if.then43:                                        ; preds = %lor.lhs.false34, %for.cond
  br label %for.end

if.end44:                                         ; preds = %lor.lhs.false34
  %33 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %34 to i32
  %sub = sub nsw i32 %conv46, 48
  store i32 %sub, ptr %c, align 4
  %cmp47 = icmp sgt i32 %sub, 7
  br i1 %cmp47, label %if.then53, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %if.end44
  %35 = load ptr, ptr %zSrc.addr, align 8
  %36 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %35 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv50 = trunc i64 %sub.ptr.sub to i32
  %cmp51 = icmp sgt i32 %conv50, 20
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %lor.lhs.false49, %if.end44
  br label %for.end

if.end54:                                         ; preds = %lor.lhs.false49
  %37 = load i64, ptr %nVal, align 8
  %mul = mul nsw i64 %37, 8
  %38 = load i32, ptr %c, align 4
  %conv55 = sext i32 %38 to i64
  %add = add nsw i64 %mul, %conv55
  store i64 %add, ptr %nVal, align 8
  %39 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr56 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr56, ptr %zSrc.addr, align 8
  %40 = load ptr, ptr %zSrc.addr, align 8
  %41 = load ptr, ptr %zEnd, align 8
  %cmp57 = icmp uge ptr %40, %41
  br i1 %cmp57, label %if.then68, label %lor.lhs.false59

lor.lhs.false59:                                  ; preds = %if.end54
  %call60 = call ptr @__ctype_b_loc() #2
  %42 = load ptr, ptr %call60, align 8
  %43 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx61, align 1
  %conv62 = sext i8 %44 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %42, i64 %idxprom63
  %45 = load i16, ptr %arrayidx64, align 2
  %conv65 = zext i16 %45 to i32
  %and66 = and i32 %conv65, 2048
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.end69, label %if.then68

if.then68:                                        ; preds = %lor.lhs.false59, %if.end54
  br label %for.end

if.end69:                                         ; preds = %lor.lhs.false59
  %46 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %47 to i32
  %sub72 = sub nsw i32 %conv71, 48
  store i32 %sub72, ptr %c, align 4
  %cmp73 = icmp sgt i32 %sub72, 7
  br i1 %cmp73, label %if.then82, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %if.end69
  %48 = load ptr, ptr %zSrc.addr, align 8
  %49 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast76 = ptrtoint ptr %48 to i64
  %sub.ptr.rhs.cast77 = ptrtoint ptr %49 to i64
  %sub.ptr.sub78 = sub i64 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77
  %conv79 = trunc i64 %sub.ptr.sub78 to i32
  %cmp80 = icmp sgt i32 %conv79, 20
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %lor.lhs.false75, %if.end69
  br label %for.end

if.end83:                                         ; preds = %lor.lhs.false75
  %50 = load i64, ptr %nVal, align 8
  %mul84 = mul nsw i64 %50, 8
  %51 = load i32, ptr %c, align 4
  %conv85 = sext i32 %51 to i64
  %add86 = add nsw i64 %mul84, %conv85
  store i64 %add86, ptr %nVal, align 8
  %52 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr87 = getelementptr inbounds nuw i8, ptr %52, i32 1
  store ptr %incdec.ptr87, ptr %zSrc.addr, align 8
  %53 = load ptr, ptr %zSrc.addr, align 8
  %54 = load ptr, ptr %zEnd, align 8
  %cmp88 = icmp uge ptr %53, %54
  br i1 %cmp88, label %if.then99, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %if.end83
  %call91 = call ptr @__ctype_b_loc() #2
  %55 = load ptr, ptr %call91, align 8
  %56 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %56, i64 0
  %57 = load i8, ptr %arrayidx92, align 1
  %conv93 = sext i8 %57 to i32
  %idxprom94 = sext i32 %conv93 to i64
  %arrayidx95 = getelementptr inbounds i16, ptr %55, i64 %idxprom94
  %58 = load i16, ptr %arrayidx95, align 2
  %conv96 = zext i16 %58 to i32
  %and97 = and i32 %conv96, 2048
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %lor.lhs.false90, %if.end83
  br label %for.end

if.end100:                                        ; preds = %lor.lhs.false90
  %59 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %59, i64 0
  %60 = load i8, ptr %arrayidx101, align 1
  %conv102 = sext i8 %60 to i32
  %sub103 = sub nsw i32 %conv102, 48
  store i32 %sub103, ptr %c, align 4
  %cmp104 = icmp sgt i32 %sub103, 7
  br i1 %cmp104, label %if.then113, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %if.end100
  %61 = load ptr, ptr %zSrc.addr, align 8
  %62 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast107 = ptrtoint ptr %61 to i64
  %sub.ptr.rhs.cast108 = ptrtoint ptr %62 to i64
  %sub.ptr.sub109 = sub i64 %sub.ptr.lhs.cast107, %sub.ptr.rhs.cast108
  %conv110 = trunc i64 %sub.ptr.sub109 to i32
  %cmp111 = icmp sgt i32 %conv110, 20
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %lor.lhs.false106, %if.end100
  br label %for.end

if.end114:                                        ; preds = %lor.lhs.false106
  %63 = load i64, ptr %nVal, align 8
  %mul115 = mul nsw i64 %63, 8
  %64 = load i32, ptr %c, align 4
  %conv116 = sext i32 %64 to i64
  %add117 = add nsw i64 %mul115, %conv116
  store i64 %add117, ptr %nVal, align 8
  %65 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr118 = getelementptr inbounds nuw i8, ptr %65, i32 1
  store ptr %incdec.ptr118, ptr %zSrc.addr, align 8
  %66 = load ptr, ptr %zSrc.addr, align 8
  %67 = load ptr, ptr %zEnd, align 8
  %cmp119 = icmp uge ptr %66, %67
  br i1 %cmp119, label %if.then130, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %if.end114
  %call122 = call ptr @__ctype_b_loc() #2
  %68 = load ptr, ptr %call122, align 8
  %69 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %69, i64 0
  %70 = load i8, ptr %arrayidx123, align 1
  %conv124 = sext i8 %70 to i32
  %idxprom125 = sext i32 %conv124 to i64
  %arrayidx126 = getelementptr inbounds i16, ptr %68, i64 %idxprom125
  %71 = load i16, ptr %arrayidx126, align 2
  %conv127 = zext i16 %71 to i32
  %and128 = and i32 %conv127, 2048
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.end131, label %if.then130

if.then130:                                       ; preds = %lor.lhs.false121, %if.end114
  br label %for.end

if.end131:                                        ; preds = %lor.lhs.false121
  %72 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx132 = getelementptr inbounds i8, ptr %72, i64 0
  %73 = load i8, ptr %arrayidx132, align 1
  %conv133 = sext i8 %73 to i32
  %sub134 = sub nsw i32 %conv133, 48
  store i32 %sub134, ptr %c, align 4
  %cmp135 = icmp sgt i32 %sub134, 7
  br i1 %cmp135, label %if.then144, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.end131
  %74 = load ptr, ptr %zSrc.addr, align 8
  %75 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast138 = ptrtoint ptr %74 to i64
  %sub.ptr.rhs.cast139 = ptrtoint ptr %75 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %conv141 = trunc i64 %sub.ptr.sub140 to i32
  %cmp142 = icmp sgt i32 %conv141, 20
  br i1 %cmp142, label %if.then144, label %if.end145

if.then144:                                       ; preds = %lor.lhs.false137, %if.end131
  br label %for.end

if.end145:                                        ; preds = %lor.lhs.false137
  %76 = load i64, ptr %nVal, align 8
  %mul146 = mul nsw i64 %76, 8
  %77 = load i32, ptr %c, align 4
  %conv147 = sext i32 %77 to i64
  %add148 = add nsw i64 %mul146, %conv147
  store i64 %add148, ptr %nVal, align 8
  %78 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr149 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %incdec.ptr149, ptr %zSrc.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then144, %if.then130, %if.then113, %if.then99, %if.then82, %if.then68, %if.then53, %if.then43
  br label %while.cond150

while.cond150:                                    ; preds = %while.body163, %for.end
  %79 = load ptr, ptr %zSrc.addr, align 8
  %80 = load ptr, ptr %zEnd, align 8
  %cmp151 = icmp ult ptr %79, %80
  br i1 %cmp151, label %land.rhs153, label %land.end162

land.rhs153:                                      ; preds = %while.cond150
  %call154 = call ptr @__ctype_b_loc() #2
  %81 = load ptr, ptr %call154, align 8
  %82 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, ptr %82, i64 0
  %83 = load i8, ptr %arrayidx155, align 1
  %conv156 = sext i8 %83 to i32
  %idxprom157 = sext i32 %conv156 to i64
  %arrayidx158 = getelementptr inbounds i16, ptr %81, i64 %idxprom157
  %84 = load i16, ptr %arrayidx158, align 2
  %conv159 = zext i16 %84 to i32
  %and160 = and i32 %conv159, 8192
  %tobool161 = icmp ne i32 %and160, 0
  br label %land.end162

land.end162:                                      ; preds = %land.rhs153, %while.cond150
  %85 = phi i1 [ false, %while.cond150 ], [ %tobool161, %land.rhs153 ]
  br i1 %85, label %while.body163, label %while.end165

while.body163:                                    ; preds = %land.end162
  %86 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr164 = getelementptr inbounds nuw i8, ptr %86, i32 1
  store ptr %incdec.ptr164, ptr %zSrc.addr, align 8
  br label %while.cond150, !llvm.loop !9

while.end165:                                     ; preds = %land.end162
  %87 = load ptr, ptr %zRest.addr, align 8
  %tobool166 = icmp ne ptr %87, null
  br i1 %tobool166, label %if.then167, label %if.end168

if.then167:                                       ; preds = %while.end165
  %88 = load ptr, ptr %zSrc.addr, align 8
  %89 = load ptr, ptr %zRest.addr, align 8
  store ptr %88, ptr %89, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %while.end165
  %90 = load ptr, ptr %pOutVal.addr, align 8
  %tobool169 = icmp ne ptr %90, null
  br i1 %tobool169, label %if.then170, label %if.end179

if.then170:                                       ; preds = %if.end168
  %91 = load i32, ptr %isNeg, align 4
  %cmp171 = icmp eq i32 %91, 1
  br i1 %cmp171, label %land.lhs.true173, label %if.end178

land.lhs.true173:                                 ; preds = %if.then170
  %92 = load i64, ptr %nVal, align 8
  %cmp174 = icmp ne i64 %92, 0
  br i1 %cmp174, label %if.then176, label %if.end178

if.then176:                                       ; preds = %land.lhs.true173
  %93 = load i64, ptr %nVal, align 8
  %sub177 = sub nsw i64 0, %93
  store i64 %sub177, ptr %nVal, align 8
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %land.lhs.true173, %if.then170
  %94 = load i64, ptr %nVal, align 8
  %95 = load ptr, ptr %pOutVal.addr, align 8
  store i64 %94, ptr %95, align 8
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.end168
  %96 = load ptr, ptr %zSrc.addr, align 8
  %97 = load ptr, ptr %zEnd, align 8
  %cmp180 = icmp uge ptr %96, %97
  %98 = zext i1 %cmp180 to i64
  %cond182 = select i1 %cmp180, i32 0, i32 -12
  ret i32 %cond182
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
