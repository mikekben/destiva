; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.111 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.112 = external hidden unnamed_addr constant [20 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @SyStrToInt64(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %pOutVal, ptr noundef %zRest) #1 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pOutVal.addr = alloca ptr, align 8
  %zRest.addr = alloca ptr, align 8
  %isNeg = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %nVal = alloca i64, align 8
  %i = alloca i16, align 2
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pOutVal, ptr %pOutVal.addr, align 8
  store ptr %zRest, ptr %zRest.addr, align 8
  store i32 0, ptr %isNeg, align 4
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
  store i16 19, ptr %i, align 2
  %26 = load ptr, ptr %zEnd, align 8
  %27 = load ptr, ptr %zSrc.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv32 = trunc i64 %sub.ptr.sub to i32
  %cmp33 = icmp uge i32 %conv32, 19
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %while.end31
  %28 = load ptr, ptr %zSrc.addr, align 8
  %29 = load i32, ptr %isNeg, align 4
  %tobool36 = icmp ne i32 %29, 0
  %30 = zext i1 %tobool36 to i64
  %cond37 = select i1 %tobool36, ptr @.str.111, ptr @.str.112
  %call38 = call i32 @SyMemcmp(ptr noundef %28, ptr noundef %cond37, i32 noundef 19)
  %cmp39 = icmp sle i32 %call38, 0
  %31 = zext i1 %cmp39 to i64
  %cond41 = select i1 %cmp39, i32 19, i32 18
  %conv42 = trunc i32 %cond41 to i16
  store i16 %conv42, ptr %i, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %while.end31
  store i64 0, ptr %nVal, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end123, %if.end43
  %32 = load ptr, ptr %zSrc.addr, align 8
  %33 = load ptr, ptr %zEnd, align 8
  %cmp44 = icmp uge ptr %32, %33
  br i1 %cmp44, label %if.then57, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %for.cond
  %34 = load i16, ptr %i, align 2
  %tobool47 = icmp ne i16 %34, 0
  br i1 %tobool47, label %lor.lhs.false48, label %if.then57

lor.lhs.false48:                                  ; preds = %lor.lhs.false46
  %call49 = call ptr @__ctype_b_loc() #2
  %35 = load ptr, ptr %call49, align 8
  %36 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %37 to i32
  %idxprom52 = sext i32 %conv51 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %35, i64 %idxprom52
  %38 = load i16, ptr %arrayidx53, align 2
  %conv54 = zext i16 %38 to i32
  %and55 = and i32 %conv54, 2048
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.end58, label %if.then57

if.then57:                                        ; preds = %lor.lhs.false48, %lor.lhs.false46, %for.cond
  br label %for.end

if.end58:                                         ; preds = %lor.lhs.false48
  %39 = load i64, ptr %nVal, align 8
  %mul = mul nsw i64 %39, 10
  %40 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %40, i64 0
  %41 = load i8, ptr %arrayidx59, align 1
  %conv60 = sext i8 %41 to i32
  %sub = sub nsw i32 %conv60, 48
  %conv61 = sext i32 %sub to i64
  %add = add nsw i64 %mul, %conv61
  store i64 %add, ptr %nVal, align 8
  %42 = load i16, ptr %i, align 2
  %dec = add i16 %42, -1
  store i16 %dec, ptr %i, align 2
  %43 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr62 = getelementptr inbounds nuw i8, ptr %43, i32 1
  store ptr %incdec.ptr62, ptr %zSrc.addr, align 8
  %44 = load ptr, ptr %zSrc.addr, align 8
  %45 = load ptr, ptr %zEnd, align 8
  %cmp63 = icmp uge ptr %44, %45
  br i1 %cmp63, label %if.then76, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end58
  %46 = load i16, ptr %i, align 2
  %tobool66 = icmp ne i16 %46, 0
  br i1 %tobool66, label %lor.lhs.false67, label %if.then76

lor.lhs.false67:                                  ; preds = %lor.lhs.false65
  %call68 = call ptr @__ctype_b_loc() #2
  %47 = load ptr, ptr %call68, align 8
  %48 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx69, align 1
  %conv70 = sext i8 %49 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %47, i64 %idxprom71
  %50 = load i16, ptr %arrayidx72, align 2
  %conv73 = zext i16 %50 to i32
  %and74 = and i32 %conv73, 2048
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %lor.lhs.false67, %lor.lhs.false65, %if.end58
  br label %for.end

if.end77:                                         ; preds = %lor.lhs.false67
  %51 = load i64, ptr %nVal, align 8
  %mul78 = mul nsw i64 %51, 10
  %52 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %52, i64 0
  %53 = load i8, ptr %arrayidx79, align 1
  %conv80 = sext i8 %53 to i32
  %sub81 = sub nsw i32 %conv80, 48
  %conv82 = sext i32 %sub81 to i64
  %add83 = add nsw i64 %mul78, %conv82
  store i64 %add83, ptr %nVal, align 8
  %54 = load i16, ptr %i, align 2
  %dec84 = add i16 %54, -1
  store i16 %dec84, ptr %i, align 2
  %55 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr85 = getelementptr inbounds nuw i8, ptr %55, i32 1
  store ptr %incdec.ptr85, ptr %zSrc.addr, align 8
  %56 = load ptr, ptr %zSrc.addr, align 8
  %57 = load ptr, ptr %zEnd, align 8
  %cmp86 = icmp uge ptr %56, %57
  br i1 %cmp86, label %if.then99, label %lor.lhs.false88

lor.lhs.false88:                                  ; preds = %if.end77
  %58 = load i16, ptr %i, align 2
  %tobool89 = icmp ne i16 %58, 0
  br i1 %tobool89, label %lor.lhs.false90, label %if.then99

lor.lhs.false90:                                  ; preds = %lor.lhs.false88
  %call91 = call ptr @__ctype_b_loc() #2
  %59 = load ptr, ptr %call91, align 8
  %60 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %60, i64 0
  %61 = load i8, ptr %arrayidx92, align 1
  %conv93 = sext i8 %61 to i32
  %idxprom94 = sext i32 %conv93 to i64
  %arrayidx95 = getelementptr inbounds i16, ptr %59, i64 %idxprom94
  %62 = load i16, ptr %arrayidx95, align 2
  %conv96 = zext i16 %62 to i32
  %and97 = and i32 %conv96, 2048
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.end100, label %if.then99

if.then99:                                        ; preds = %lor.lhs.false90, %lor.lhs.false88, %if.end77
  br label %for.end

if.end100:                                        ; preds = %lor.lhs.false90
  %63 = load i64, ptr %nVal, align 8
  %mul101 = mul nsw i64 %63, 10
  %64 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx102, align 1
  %conv103 = sext i8 %65 to i32
  %sub104 = sub nsw i32 %conv103, 48
  %conv105 = sext i32 %sub104 to i64
  %add106 = add nsw i64 %mul101, %conv105
  store i64 %add106, ptr %nVal, align 8
  %66 = load i16, ptr %i, align 2
  %dec107 = add i16 %66, -1
  store i16 %dec107, ptr %i, align 2
  %67 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr108 = getelementptr inbounds nuw i8, ptr %67, i32 1
  store ptr %incdec.ptr108, ptr %zSrc.addr, align 8
  %68 = load ptr, ptr %zSrc.addr, align 8
  %69 = load ptr, ptr %zEnd, align 8
  %cmp109 = icmp uge ptr %68, %69
  br i1 %cmp109, label %if.then122, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %if.end100
  %70 = load i16, ptr %i, align 2
  %tobool112 = icmp ne i16 %70, 0
  br i1 %tobool112, label %lor.lhs.false113, label %if.then122

lor.lhs.false113:                                 ; preds = %lor.lhs.false111
  %call114 = call ptr @__ctype_b_loc() #2
  %71 = load ptr, ptr %call114, align 8
  %72 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx115 = getelementptr inbounds i8, ptr %72, i64 0
  %73 = load i8, ptr %arrayidx115, align 1
  %conv116 = sext i8 %73 to i32
  %idxprom117 = sext i32 %conv116 to i64
  %arrayidx118 = getelementptr inbounds i16, ptr %71, i64 %idxprom117
  %74 = load i16, ptr %arrayidx118, align 2
  %conv119 = zext i16 %74 to i32
  %and120 = and i32 %conv119, 2048
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.end123, label %if.then122

if.then122:                                       ; preds = %lor.lhs.false113, %lor.lhs.false111, %if.end100
  br label %for.end

if.end123:                                        ; preds = %lor.lhs.false113
  %75 = load i64, ptr %nVal, align 8
  %mul124 = mul nsw i64 %75, 10
  %76 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx125, align 1
  %conv126 = sext i8 %77 to i32
  %sub127 = sub nsw i32 %conv126, 48
  %conv128 = sext i32 %sub127 to i64
  %add129 = add nsw i64 %mul124, %conv128
  store i64 %add129, ptr %nVal, align 8
  %78 = load i16, ptr %i, align 2
  %dec130 = add i16 %78, -1
  store i16 %dec130, ptr %i, align 2
  %79 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr131 = getelementptr inbounds nuw i8, ptr %79, i32 1
  store ptr %incdec.ptr131, ptr %zSrc.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then122, %if.then99, %if.then76, %if.then57
  br label %while.cond132

while.cond132:                                    ; preds = %while.body145, %for.end
  %80 = load ptr, ptr %zSrc.addr, align 8
  %81 = load ptr, ptr %zEnd, align 8
  %cmp133 = icmp ult ptr %80, %81
  br i1 %cmp133, label %land.rhs135, label %land.end144

land.rhs135:                                      ; preds = %while.cond132
  %call136 = call ptr @__ctype_b_loc() #2
  %82 = load ptr, ptr %call136, align 8
  %83 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %83, i64 0
  %84 = load i8, ptr %arrayidx137, align 1
  %conv138 = sext i8 %84 to i32
  %idxprom139 = sext i32 %conv138 to i64
  %arrayidx140 = getelementptr inbounds i16, ptr %82, i64 %idxprom139
  %85 = load i16, ptr %arrayidx140, align 2
  %conv141 = zext i16 %85 to i32
  %and142 = and i32 %conv141, 8192
  %tobool143 = icmp ne i32 %and142, 0
  br label %land.end144

land.end144:                                      ; preds = %land.rhs135, %while.cond132
  %86 = phi i1 [ false, %while.cond132 ], [ %tobool143, %land.rhs135 ]
  br i1 %86, label %while.body145, label %while.end147

while.body145:                                    ; preds = %land.end144
  %87 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr146 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %incdec.ptr146, ptr %zSrc.addr, align 8
  br label %while.cond132, !llvm.loop !9

while.end147:                                     ; preds = %land.end144
  %88 = load ptr, ptr %zRest.addr, align 8
  %tobool148 = icmp ne ptr %88, null
  br i1 %tobool148, label %if.then149, label %if.end150

if.then149:                                       ; preds = %while.end147
  %89 = load ptr, ptr %zSrc.addr, align 8
  %90 = load ptr, ptr %zRest.addr, align 8
  store ptr %89, ptr %90, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %while.end147
  %91 = load ptr, ptr %pOutVal.addr, align 8
  %tobool151 = icmp ne ptr %91, null
  br i1 %tobool151, label %if.then152, label %if.end161

if.then152:                                       ; preds = %if.end150
  %92 = load i32, ptr %isNeg, align 4
  %cmp153 = icmp eq i32 %92, 1
  br i1 %cmp153, label %land.lhs.true155, label %if.end160

land.lhs.true155:                                 ; preds = %if.then152
  %93 = load i64, ptr %nVal, align 8
  %cmp156 = icmp ne i64 %93, 0
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %land.lhs.true155
  %94 = load i64, ptr %nVal, align 8
  %sub159 = sub nsw i64 0, %94
  store i64 %sub159, ptr %nVal, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %land.lhs.true155, %if.then152
  %95 = load i64, ptr %nVal, align 8
  %96 = load ptr, ptr %pOutVal.addr, align 8
  store i64 %95, ptr %96, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end150
  %97 = load ptr, ptr %zSrc.addr, align 8
  %98 = load ptr, ptr %zEnd, align 8
  %cmp162 = icmp uge ptr %97, %98
  %99 = zext i1 %cmp162 to i64
  %cond164 = select i1 %cmp162, i32 0, i32 -12
  ret i32 %cond164
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
