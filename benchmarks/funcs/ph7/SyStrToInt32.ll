; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.564 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.565 = external hidden unnamed_addr constant [11 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @SyStrToInt32(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %pOutVal, ptr noundef %zRest) #1 {
entry:
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pOutVal.addr = alloca ptr, align 8
  %zRest.addr = alloca ptr, align 8
  %isNeg = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %nVal = alloca i32, align 4
  %i = alloca i16, align 2
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pOutVal, ptr %pOutVal.addr, align 8
  store ptr %zRest, ptr %zRest.addr, align 8
  store i32 0, ptr %isNeg, align 4
  store i32 0, ptr %nVal, align 4
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
  store i16 10, ptr %i, align 2
  %26 = load ptr, ptr %zEnd, align 8
  %27 = load ptr, ptr %zSrc.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv32 = trunc i64 %sub.ptr.sub to i32
  %cmp33 = icmp uge i32 %conv32, 10
  br i1 %cmp33, label %if.then35, label %if.end44

if.then35:                                        ; preds = %while.end31
  %28 = load ptr, ptr %zSrc.addr, align 8
  %29 = load i32, ptr %isNeg, align 4
  %cmp36 = icmp eq i32 %29, 1
  %30 = zext i1 %cmp36 to i64
  %cond38 = select i1 %cmp36, ptr @.str.564, ptr @.str.565
  %31 = load i32, ptr %nLen.addr, align 4
  %call39 = call i32 @SyMemcmp(ptr noundef %28, ptr noundef %cond38, i32 noundef %31)
  %cmp40 = icmp sle i32 %call39, 0
  %32 = zext i1 %cmp40 to i64
  %cond42 = select i1 %cmp40, i32 10, i32 9
  %conv43 = trunc i32 %cond42 to i16
  store i16 %conv43, ptr %i, align 2
  br label %if.end44

if.end44:                                         ; preds = %if.then35, %while.end31
  br label %for.cond

for.cond:                                         ; preds = %if.end121, %if.end44
  %33 = load ptr, ptr %zSrc.addr, align 8
  %34 = load ptr, ptr %zEnd, align 8
  %cmp45 = icmp uge ptr %33, %34
  br i1 %cmp45, label %if.then58, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %for.cond
  %35 = load i16, ptr %i, align 2
  %tobool48 = icmp ne i16 %35, 0
  br i1 %tobool48, label %lor.lhs.false49, label %if.then58

lor.lhs.false49:                                  ; preds = %lor.lhs.false47
  %call50 = call ptr @__ctype_b_loc() #2
  %36 = load ptr, ptr %call50, align 8
  %37 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %37, i64 0
  %38 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %38 to i32
  %idxprom53 = sext i32 %conv52 to i64
  %arrayidx54 = getelementptr inbounds i16, ptr %36, i64 %idxprom53
  %39 = load i16, ptr %arrayidx54, align 2
  %conv55 = zext i16 %39 to i32
  %and56 = and i32 %conv55, 2048
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %lor.lhs.false49, %lor.lhs.false47, %for.cond
  br label %for.end

if.end59:                                         ; preds = %lor.lhs.false49
  %40 = load i32, ptr %nVal, align 4
  %mul = mul nsw i32 %40, 10
  %41 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %42 to i32
  %sub = sub nsw i32 %conv61, 48
  %add = add nsw i32 %mul, %sub
  store i32 %add, ptr %nVal, align 4
  %43 = load i16, ptr %i, align 2
  %dec = add i16 %43, -1
  store i16 %dec, ptr %i, align 2
  %44 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr62 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr62, ptr %zSrc.addr, align 8
  %45 = load ptr, ptr %zSrc.addr, align 8
  %46 = load ptr, ptr %zEnd, align 8
  %cmp63 = icmp uge ptr %45, %46
  br i1 %cmp63, label %if.then76, label %lor.lhs.false65

lor.lhs.false65:                                  ; preds = %if.end59
  %47 = load i16, ptr %i, align 2
  %tobool66 = icmp ne i16 %47, 0
  br i1 %tobool66, label %lor.lhs.false67, label %if.then76

lor.lhs.false67:                                  ; preds = %lor.lhs.false65
  %call68 = call ptr @__ctype_b_loc() #2
  %48 = load ptr, ptr %call68, align 8
  %49 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, ptr %49, i64 0
  %50 = load i8, ptr %arrayidx69, align 1
  %conv70 = sext i8 %50 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %48, i64 %idxprom71
  %51 = load i16, ptr %arrayidx72, align 2
  %conv73 = zext i16 %51 to i32
  %and74 = and i32 %conv73, 2048
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.end77, label %if.then76

if.then76:                                        ; preds = %lor.lhs.false67, %lor.lhs.false65, %if.end59
  br label %for.end

if.end77:                                         ; preds = %lor.lhs.false67
  %52 = load i32, ptr %nVal, align 4
  %mul78 = mul nsw i32 %52, 10
  %53 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx79, align 1
  %conv80 = sext i8 %54 to i32
  %sub81 = sub nsw i32 %conv80, 48
  %add82 = add nsw i32 %mul78, %sub81
  store i32 %add82, ptr %nVal, align 4
  %55 = load i16, ptr %i, align 2
  %dec83 = add i16 %55, -1
  store i16 %dec83, ptr %i, align 2
  %56 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr84 = getelementptr inbounds nuw i8, ptr %56, i32 1
  store ptr %incdec.ptr84, ptr %zSrc.addr, align 8
  %57 = load ptr, ptr %zSrc.addr, align 8
  %58 = load ptr, ptr %zEnd, align 8
  %cmp85 = icmp uge ptr %57, %58
  br i1 %cmp85, label %if.then98, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %if.end77
  %59 = load i16, ptr %i, align 2
  %tobool88 = icmp ne i16 %59, 0
  br i1 %tobool88, label %lor.lhs.false89, label %if.then98

lor.lhs.false89:                                  ; preds = %lor.lhs.false87
  %call90 = call ptr @__ctype_b_loc() #2
  %60 = load ptr, ptr %call90, align 8
  %61 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, ptr %61, i64 0
  %62 = load i8, ptr %arrayidx91, align 1
  %conv92 = sext i8 %62 to i32
  %idxprom93 = sext i32 %conv92 to i64
  %arrayidx94 = getelementptr inbounds i16, ptr %60, i64 %idxprom93
  %63 = load i16, ptr %arrayidx94, align 2
  %conv95 = zext i16 %63 to i32
  %and96 = and i32 %conv95, 2048
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.end99, label %if.then98

if.then98:                                        ; preds = %lor.lhs.false89, %lor.lhs.false87, %if.end77
  br label %for.end

if.end99:                                         ; preds = %lor.lhs.false89
  %64 = load i32, ptr %nVal, align 4
  %mul100 = mul nsw i32 %64, 10
  %65 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx101, align 1
  %conv102 = sext i8 %66 to i32
  %sub103 = sub nsw i32 %conv102, 48
  %add104 = add nsw i32 %mul100, %sub103
  store i32 %add104, ptr %nVal, align 4
  %67 = load i16, ptr %i, align 2
  %dec105 = add i16 %67, -1
  store i16 %dec105, ptr %i, align 2
  %68 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr106 = getelementptr inbounds nuw i8, ptr %68, i32 1
  store ptr %incdec.ptr106, ptr %zSrc.addr, align 8
  %69 = load ptr, ptr %zSrc.addr, align 8
  %70 = load ptr, ptr %zEnd, align 8
  %cmp107 = icmp uge ptr %69, %70
  br i1 %cmp107, label %if.then120, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %if.end99
  %71 = load i16, ptr %i, align 2
  %tobool110 = icmp ne i16 %71, 0
  br i1 %tobool110, label %lor.lhs.false111, label %if.then120

lor.lhs.false111:                                 ; preds = %lor.lhs.false109
  %call112 = call ptr @__ctype_b_loc() #2
  %72 = load ptr, ptr %call112, align 8
  %73 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %73, i64 0
  %74 = load i8, ptr %arrayidx113, align 1
  %conv114 = sext i8 %74 to i32
  %idxprom115 = sext i32 %conv114 to i64
  %arrayidx116 = getelementptr inbounds i16, ptr %72, i64 %idxprom115
  %75 = load i16, ptr %arrayidx116, align 2
  %conv117 = zext i16 %75 to i32
  %and118 = and i32 %conv117, 2048
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.end121, label %if.then120

if.then120:                                       ; preds = %lor.lhs.false111, %lor.lhs.false109, %if.end99
  br label %for.end

if.end121:                                        ; preds = %lor.lhs.false111
  %76 = load i32, ptr %nVal, align 4
  %mul122 = mul nsw i32 %76, 10
  %77 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %77, i64 0
  %78 = load i8, ptr %arrayidx123, align 1
  %conv124 = sext i8 %78 to i32
  %sub125 = sub nsw i32 %conv124, 48
  %add126 = add nsw i32 %mul122, %sub125
  store i32 %add126, ptr %nVal, align 4
  %79 = load i16, ptr %i, align 2
  %dec127 = add i16 %79, -1
  store i16 %dec127, ptr %i, align 2
  %80 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr128 = getelementptr inbounds nuw i8, ptr %80, i32 1
  store ptr %incdec.ptr128, ptr %zSrc.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then120, %if.then98, %if.then76, %if.then58
  br label %while.cond129

while.cond129:                                    ; preds = %while.body142, %for.end
  %81 = load ptr, ptr %zSrc.addr, align 8
  %82 = load ptr, ptr %zEnd, align 8
  %cmp130 = icmp ult ptr %81, %82
  br i1 %cmp130, label %land.rhs132, label %land.end141

land.rhs132:                                      ; preds = %while.cond129
  %call133 = call ptr @__ctype_b_loc() #2
  %83 = load ptr, ptr %call133, align 8
  %84 = load ptr, ptr %zSrc.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, ptr %84, i64 0
  %85 = load i8, ptr %arrayidx134, align 1
  %conv135 = sext i8 %85 to i32
  %idxprom136 = sext i32 %conv135 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %83, i64 %idxprom136
  %86 = load i16, ptr %arrayidx137, align 2
  %conv138 = zext i16 %86 to i32
  %and139 = and i32 %conv138, 8192
  %tobool140 = icmp ne i32 %and139, 0
  br label %land.end141

land.end141:                                      ; preds = %land.rhs132, %while.cond129
  %87 = phi i1 [ false, %while.cond129 ], [ %tobool140, %land.rhs132 ]
  br i1 %87, label %while.body142, label %while.end144

while.body142:                                    ; preds = %land.end141
  %88 = load ptr, ptr %zSrc.addr, align 8
  %incdec.ptr143 = getelementptr inbounds nuw i8, ptr %88, i32 1
  store ptr %incdec.ptr143, ptr %zSrc.addr, align 8
  br label %while.cond129, !llvm.loop !9

while.end144:                                     ; preds = %land.end141
  %89 = load ptr, ptr %zRest.addr, align 8
  %tobool145 = icmp ne ptr %89, null
  br i1 %tobool145, label %if.then146, label %if.end147

if.then146:                                       ; preds = %while.end144
  %90 = load ptr, ptr %zSrc.addr, align 8
  %91 = load ptr, ptr %zRest.addr, align 8
  store ptr %90, ptr %91, align 8
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %while.end144
  %92 = load ptr, ptr %pOutVal.addr, align 8
  %tobool148 = icmp ne ptr %92, null
  br i1 %tobool148, label %if.then149, label %if.end158

if.then149:                                       ; preds = %if.end147
  %93 = load i32, ptr %isNeg, align 4
  %cmp150 = icmp eq i32 %93, 1
  br i1 %cmp150, label %land.lhs.true152, label %if.end157

land.lhs.true152:                                 ; preds = %if.then149
  %94 = load i32, ptr %nVal, align 4
  %cmp153 = icmp ne i32 %94, 0
  br i1 %cmp153, label %if.then155, label %if.end157

if.then155:                                       ; preds = %land.lhs.true152
  %95 = load i32, ptr %nVal, align 4
  %sub156 = sub nsw i32 0, %95
  store i32 %sub156, ptr %nVal, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then155, %land.lhs.true152, %if.then149
  %96 = load i32, ptr %nVal, align 4
  %97 = load ptr, ptr %pOutVal.addr, align 8
  store i32 %96, ptr %97, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.end147
  %98 = load ptr, ptr %zSrc.addr, align 8
  %99 = load ptr, ptr %zEnd, align 8
  %cmp159 = icmp uge ptr %98, %99
  %100 = zext i1 %cmp159 to i64
  %cond161 = select i1 %cmp159, i32 0, i32 -12
  ret i32 %cond161
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
