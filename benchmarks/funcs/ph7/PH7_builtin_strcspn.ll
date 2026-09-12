; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strcspn(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %zMask = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %iMasklen = alloca i32, align 4
  %iLen = alloca i32, align 4
  %sToken = alloca %struct.SyString, align 8
  %iCount = alloca i32, align 4
  %rc = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %zBase = alloca ptr, align 8
  %iUserlen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %iCount, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_int(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %iLen)
  store ptr %call1, ptr %zString, align 8
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %iMasklen)
  store ptr %call3, ptr %zMask, align 8
  %6 = load i32, ptr %iLen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_int(ptr noundef %7, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load i32, ptr %iMasklen, align 4
  %cmp8 = icmp slt i32 %8, 1
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %pCtx.addr, align 8
  %10 = load i32, ptr %iLen, align 4
  %call10 = call i32 @ph7_result_int(ptr noundef %9, i32 noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end7
  %11 = load i32, ptr %nArg.addr, align 4
  %cmp12 = icmp sgt i32 %11, 2
  br i1 %cmp12, label %if.then13, label %if.end45

if.then13:                                        ; preds = %if.end11
  %12 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %12, i64 2
  %13 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i32 @ph7_value_to_int(ptr noundef %13)
  store i32 %call15, ptr %nOfft, align 4
  %14 = load i32, ptr %nOfft, align 4
  %cmp16 = icmp slt i32 %14, 0
  br i1 %cmp16, label %if.then17, label %if.else25

if.then17:                                        ; preds = %if.then13
  %15 = load ptr, ptr %zString, align 8
  %16 = load i32, ptr %iLen, align 4
  %17 = load i32, ptr %nOfft, align 4
  %add = add nsw i32 %16, %17
  %idxprom = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %15, i64 %idxprom
  store ptr %arrayidx18, ptr %zBase, align 8
  %18 = load ptr, ptr %zBase, align 8
  %19 = load ptr, ptr %zString, align 8
  %cmp19 = icmp ugt ptr %18, %19
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then17
  %20 = load ptr, ptr %zString, align 8
  %21 = load i32, ptr %iLen, align 4
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %20, i64 %idxprom21
  %22 = load ptr, ptr %zBase, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx22 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %iLen, align 4
  %23 = load ptr, ptr %zBase, align 8
  store ptr %23, ptr %zString, align 8
  br label %if.end24

if.else:                                          ; preds = %if.then17
  %24 = load ptr, ptr %pCtx.addr, align 8
  %call23 = call i32 @ph7_result_int(ptr noundef %24, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then20
  br label %if.end32

if.else25:                                        ; preds = %if.then13
  %25 = load i32, ptr %nOfft, align 4
  %26 = load i32, ptr %iLen, align 4
  %cmp26 = icmp sge i32 %25, %26
  br i1 %cmp26, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else25
  %27 = load ptr, ptr %pCtx.addr, align 8
  %call29 = call i32 @ph7_result_int(ptr noundef %27, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else30:                                        ; preds = %if.else25
  %28 = load i32, ptr %nOfft, align 4
  %29 = load ptr, ptr %zString, align 8
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 %idx.ext
  store ptr %add.ptr, ptr %zString, align 8
  %30 = load i32, ptr %nOfft, align 4
  %31 = load i32, ptr %iLen, align 4
  %sub = sub nsw i32 %31, %30
  store i32 %sub, ptr %iLen, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else30
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end24
  %32 = load i32, ptr %nArg.addr, align 4
  %cmp33 = icmp sgt i32 %32, 3
  br i1 %cmp33, label %if.then35, label %if.end44

if.then35:                                        ; preds = %if.end32
  %33 = load ptr, ptr %apArg.addr, align 8
  %arrayidx36 = getelementptr inbounds ptr, ptr %33, i64 3
  %34 = load ptr, ptr %arrayidx36, align 8
  %call37 = call i32 @ph7_value_to_int(ptr noundef %34)
  store i32 %call37, ptr %iUserlen, align 4
  %35 = load i32, ptr %iUserlen, align 4
  %cmp38 = icmp sgt i32 %35, 0
  br i1 %cmp38, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.then35
  %36 = load i32, ptr %iUserlen, align 4
  %37 = load i32, ptr %iLen, align 4
  %cmp40 = icmp slt i32 %36, %37
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true
  %38 = load i32, ptr %iUserlen, align 4
  store i32 %38, ptr %iLen, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %land.lhs.true, %if.then35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end32
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end11
  %39 = load ptr, ptr %zString, align 8
  %40 = load i32, ptr %iLen, align 4
  %idxprom46 = sext i32 %40 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %39, i64 %idxprom46
  store ptr %arrayidx47, ptr %zEnd, align 8
  %41 = load ptr, ptr %zEnd, align 8
  %call48 = call i32 @ExtractNonSpaceToken(ptr noundef %zString, ptr noundef %41, ptr noundef %sToken)
  store i32 %call48, ptr %rc, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %42, 0
  br i1 %cmp49, label %land.lhs.true51, label %if.end58

land.lhs.true51:                                  ; preds = %if.end45
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %43 = load i32, ptr %nByte, align 8
  %cmp52 = icmp ugt i32 %43, 0
  br i1 %cmp52, label %if.then54, label %if.end58

if.then54:                                        ; preds = %land.lhs.true51
  %zString55 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %44 = load ptr, ptr %zString55, align 8
  %nByte56 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %45 = load i32, ptr %nByte56, align 8
  %46 = load ptr, ptr %zMask, align 8
  %47 = load i32, ptr %iMasklen, align 4
  %call57 = call i32 @LongestStringMask2(ptr noundef %44, i32 noundef %45, ptr noundef %46, i32 noundef %47)
  store i32 %call57, ptr %iCount, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %land.lhs.true51, %if.end45
  %48 = load ptr, ptr %pCtx.addr, align 8
  %49 = load i32, ptr %iCount, align 4
  %call59 = call i32 @ph7_result_int(ptr noundef %48, i32 noundef %49)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then28, %if.else, %if.then9, %if.then5, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ExtractNonSpaceToken(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @LongestStringMask2(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
