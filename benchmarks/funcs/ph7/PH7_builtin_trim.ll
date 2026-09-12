; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_trim(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %sStr = alloca %struct.SyString, align 8
  %zList = alloca ptr, align 8
  %nListlen = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nLen)
  store ptr %call1, ptr %zString, align 8
  %4 = load i32, ptr %nLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_string(ptr noundef %5, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp6 = icmp slt i32 %6, 2
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr %zString, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  store ptr %7, ptr %zString8, align 8
  %8 = load i32, ptr %nLen, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  store i32 %8, ptr %nByte, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then7
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %9 = load i32, ptr %nByte9, align 8
  %cmp10 = icmp ugt i32 %9, 0
  br i1 %cmp10, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %zString11 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %10 = load ptr, ptr %zString11, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx12, align 1
  %conv = zext i8 %11 to i32
  %cmp13 = icmp slt i32 %conv, 192
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %zString15 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %12 = load ptr, ptr %zString15, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %13 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %call20 = call ptr @__ctype_b_loc() #2
  %14 = load ptr, ptr %call20, align 8
  %zString21 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %15 = load ptr, ptr %zString21, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %16 to i32
  %idxprom = sext i32 %conv23 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %14, i64 %idxprom
  %17 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %17 to i32
  %and = and i32 %conv25, 8192
  %tobool = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %18 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %while.cond
  %19 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %18, %lor.end ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %nByte26 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %20 = load i32, ptr %nByte26, align 8
  %dec = add i32 %20, -1
  store i32 %dec, ptr %nByte26, align 8
  %zString27 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %21 = load ptr, ptr %zString27, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %zString27, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond28

while.cond28:                                     ; preds = %while.body64, %while.end
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %22 = load i32, ptr %nByte29, align 8
  %cmp30 = icmp ugt i32 %22, 0
  br i1 %cmp30, label %land.lhs.true32, label %land.end63

land.lhs.true32:                                  ; preds = %while.cond28
  %zString33 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %23 = load ptr, ptr %zString33, align 8
  %nByte34 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %24 = load i32, ptr %nByte34, align 8
  %sub = sub i32 %24, 1
  %idxprom35 = zext i32 %sub to i64
  %arrayidx36 = getelementptr inbounds nuw i8, ptr %23, i64 %idxprom35
  %25 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %25 to i32
  %cmp38 = icmp slt i32 %conv37, 192
  br i1 %cmp38, label %land.rhs40, label %land.end63

land.rhs40:                                       ; preds = %land.lhs.true32
  %zString41 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %26 = load ptr, ptr %zString41, align 8
  %nByte42 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %27 = load i32, ptr %nByte42, align 8
  %sub43 = sub i32 %27, 1
  %idxprom44 = zext i32 %sub43 to i64
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %26, i64 %idxprom44
  %28 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %28 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %lor.end62, label %lor.rhs49

lor.rhs49:                                        ; preds = %land.rhs40
  %call50 = call ptr @__ctype_b_loc() #2
  %29 = load ptr, ptr %call50, align 8
  %zString51 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %30 = load ptr, ptr %zString51, align 8
  %nByte52 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %31 = load i32, ptr %nByte52, align 8
  %sub53 = sub i32 %31, 1
  %idxprom54 = zext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %30, i64 %idxprom54
  %32 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %32 to i32
  %idxprom57 = sext i32 %conv56 to i64
  %arrayidx58 = getelementptr inbounds i16, ptr %29, i64 %idxprom57
  %33 = load i16, ptr %arrayidx58, align 2
  %conv59 = zext i16 %33 to i32
  %and60 = and i32 %conv59, 8192
  %tobool61 = icmp ne i32 %and60, 0
  br label %lor.end62

lor.end62:                                        ; preds = %lor.rhs49, %land.rhs40
  %34 = phi i1 [ true, %land.rhs40 ], [ %tobool61, %lor.rhs49 ]
  br label %land.end63

land.end63:                                       ; preds = %lor.end62, %land.lhs.true32, %while.cond28
  %35 = phi i1 [ false, %land.lhs.true32 ], [ false, %while.cond28 ], [ %34, %lor.end62 ]
  br i1 %35, label %while.body64, label %while.end67

while.body64:                                     ; preds = %land.end63
  %nByte65 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %36 = load i32, ptr %nByte65, align 8
  %dec66 = add i32 %36, -1
  store i32 %dec66, ptr %nByte65, align 8
  br label %while.cond28, !llvm.loop !8

while.end67:                                      ; preds = %land.end63
  %37 = load ptr, ptr %pCtx.addr, align 8
  %zString68 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %38 = load ptr, ptr %zString68, align 8
  %nByte69 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %39 = load i32, ptr %nByte69, align 8
  %call70 = call i32 @ph7_result_string(ptr noundef %37, ptr noundef %38, i32 noundef %39)
  br label %if.end146

if.else:                                          ; preds = %if.end5
  %40 = load ptr, ptr %apArg.addr, align 8
  %arrayidx71 = getelementptr inbounds ptr, ptr %40, i64 1
  %41 = load ptr, ptr %arrayidx71, align 8
  %call72 = call ptr @ph7_value_to_string(ptr noundef %41, ptr noundef %nListlen)
  store ptr %call72, ptr %zList, align 8
  %42 = load i32, ptr %nListlen, align 4
  %cmp73 = icmp slt i32 %42, 1
  br i1 %cmp73, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.else
  %43 = load ptr, ptr %pCtx.addr, align 8
  %44 = load ptr, ptr %zString, align 8
  %45 = load i32, ptr %nLen, align 4
  %call76 = call i32 @ph7_result_string(ptr noundef %43, ptr noundef %44, i32 noundef %45)
  br label %if.end145

if.else77:                                        ; preds = %if.else
  %46 = load ptr, ptr %zString, align 8
  %47 = load i32, ptr %nLen, align 4
  %idxprom78 = sext i32 %47 to i64
  %arrayidx79 = getelementptr inbounds i8, ptr %46, i64 %idxprom78
  store ptr %arrayidx79, ptr %zEnd, align 8
  %48 = load ptr, ptr %zString, align 8
  store ptr %48, ptr %zCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end103, %if.else77
  %49 = load ptr, ptr %zCur, align 8
  %50 = load ptr, ptr %zEnd, align 8
  %cmp80 = icmp uge ptr %49, %50
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %for.cond
  br label %for.end104

if.end83:                                         ; preds = %for.cond
  %51 = load ptr, ptr %zCur, align 8
  store ptr %51, ptr %zPtr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc, %if.end83
  %52 = load i32, ptr %i, align 4
  %53 = load i32, ptr %nListlen, align 4
  %cmp85 = icmp slt i32 %52, %53
  br i1 %cmp85, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond84
  %54 = load ptr, ptr %zCur, align 8
  %55 = load ptr, ptr %zEnd, align 8
  %cmp87 = icmp ult ptr %54, %55
  br i1 %cmp87, label %land.lhs.true89, label %if.end99

land.lhs.true89:                                  ; preds = %for.body
  %56 = load ptr, ptr %zCur, align 8
  %arrayidx90 = getelementptr inbounds i8, ptr %56, i64 0
  %57 = load i8, ptr %arrayidx90, align 1
  %conv91 = sext i8 %57 to i32
  %58 = load ptr, ptr %zList, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom92 = sext i32 %59 to i64
  %arrayidx93 = getelementptr inbounds i8, ptr %58, i64 %idxprom92
  %60 = load i8, ptr %arrayidx93, align 1
  %conv94 = sext i8 %60 to i32
  %cmp95 = icmp eq i32 %conv91, %conv94
  br i1 %cmp95, label %if.then97, label %if.end99

if.then97:                                        ; preds = %land.lhs.true89
  %61 = load ptr, ptr %zCur, align 8
  %incdec.ptr98 = getelementptr inbounds nuw i8, ptr %61, i32 1
  store ptr %incdec.ptr98, ptr %zCur, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %land.lhs.true89, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end99
  %62 = load i32, ptr %i, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond84, !llvm.loop !9

for.end:                                          ; preds = %for.cond84
  %63 = load ptr, ptr %zCur, align 8
  %64 = load ptr, ptr %zPtr, align 8
  %cmp100 = icmp eq ptr %63, %64
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %for.end
  br label %for.end104

if.end103:                                        ; preds = %for.end
  br label %for.cond

for.end104:                                       ; preds = %if.then102, %if.then82
  %65 = load ptr, ptr %zEnd, align 8
  %incdec.ptr105 = getelementptr inbounds i8, ptr %65, i32 -1
  store ptr %incdec.ptr105, ptr %zEnd, align 8
  br label %for.cond106

for.cond106:                                      ; preds = %if.end134, %for.end104
  %66 = load ptr, ptr %zEnd, align 8
  %67 = load ptr, ptr %zCur, align 8
  %cmp107 = icmp ule ptr %66, %67
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %for.cond106
  br label %for.end135

if.end110:                                        ; preds = %for.cond106
  %68 = load ptr, ptr %zEnd, align 8
  store ptr %68, ptr %zPtr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc128, %if.end110
  %69 = load i32, ptr %i, align 4
  %70 = load i32, ptr %nListlen, align 4
  %cmp112 = icmp slt i32 %69, %70
  br i1 %cmp112, label %for.body114, label %for.end130

for.body114:                                      ; preds = %for.cond111
  %71 = load ptr, ptr %zEnd, align 8
  %72 = load ptr, ptr %zCur, align 8
  %cmp115 = icmp ugt ptr %71, %72
  br i1 %cmp115, label %land.lhs.true117, label %if.end127

land.lhs.true117:                                 ; preds = %for.body114
  %73 = load ptr, ptr %zEnd, align 8
  %arrayidx118 = getelementptr inbounds i8, ptr %73, i64 0
  %74 = load i8, ptr %arrayidx118, align 1
  %conv119 = sext i8 %74 to i32
  %75 = load ptr, ptr %zList, align 8
  %76 = load i32, ptr %i, align 4
  %idxprom120 = sext i32 %76 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %75, i64 %idxprom120
  %77 = load i8, ptr %arrayidx121, align 1
  %conv122 = sext i8 %77 to i32
  %cmp123 = icmp eq i32 %conv119, %conv122
  br i1 %cmp123, label %if.then125, label %if.end127

if.then125:                                       ; preds = %land.lhs.true117
  %78 = load ptr, ptr %zEnd, align 8
  %incdec.ptr126 = getelementptr inbounds i8, ptr %78, i32 -1
  store ptr %incdec.ptr126, ptr %zEnd, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %land.lhs.true117, %for.body114
  br label %for.inc128

for.inc128:                                       ; preds = %if.end127
  %79 = load i32, ptr %i, align 4
  %inc129 = add nsw i32 %79, 1
  store i32 %inc129, ptr %i, align 4
  br label %for.cond111, !llvm.loop !10

for.end130:                                       ; preds = %for.cond111
  %80 = load ptr, ptr %zEnd, align 8
  %81 = load ptr, ptr %zPtr, align 8
  %cmp131 = icmp eq ptr %80, %81
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %for.end130
  br label %for.end135

if.end134:                                        ; preds = %for.end130
  br label %for.cond106

for.end135:                                       ; preds = %if.then133, %if.then109
  %82 = load ptr, ptr %zCur, align 8
  %83 = load ptr, ptr %zEnd, align 8
  %cmp136 = icmp uge ptr %82, %83
  br i1 %cmp136, label %if.then138, label %if.else140

if.then138:                                       ; preds = %for.end135
  %84 = load ptr, ptr %pCtx.addr, align 8
  %call139 = call i32 @ph7_result_string(ptr noundef %84, ptr noundef @.str.4, i32 noundef 0)
  br label %if.end144

if.else140:                                       ; preds = %for.end135
  %85 = load ptr, ptr %zEnd, align 8
  %incdec.ptr141 = getelementptr inbounds nuw i8, ptr %85, i32 1
  store ptr %incdec.ptr141, ptr %zEnd, align 8
  %86 = load ptr, ptr %pCtx.addr, align 8
  %87 = load ptr, ptr %zCur, align 8
  %88 = load ptr, ptr %zEnd, align 8
  %89 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %88 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %89 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv142 = trunc i64 %sub.ptr.sub to i32
  %call143 = call i32 @ph7_result_string(ptr noundef %86, ptr noundef %87, i32 noundef %conv142)
  br label %if.end144

if.end144:                                        ; preds = %if.else140, %if.then138
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.then75
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %while.end67
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end146, %if.then3, %if.then
  %90 = load i32, ptr %retval, align 4
  ret i32 %90
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
!10 = distinct !{!10, !7}
