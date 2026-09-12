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
define hidden i32 @PH7_builtin_strspn(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
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
  br i1 %cmp4, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, ptr %iMasklen, align 4
  %cmp5 = icmp slt i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call i32 @ph7_result_int(ptr noundef %8, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %9 = load i32, ptr %nArg.addr, align 4
  %cmp9 = icmp sgt i32 %9, 2
  br i1 %cmp9, label %if.then10, label %if.end42

if.then10:                                        ; preds = %if.end8
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %10, i64 2
  %11 = load ptr, ptr %arrayidx11, align 8
  %call12 = call i32 @ph7_value_to_int(ptr noundef %11)
  store i32 %call12, ptr %nOfft, align 4
  %12 = load i32, ptr %nOfft, align 4
  %cmp13 = icmp slt i32 %12, 0
  br i1 %cmp13, label %if.then14, label %if.else22

if.then14:                                        ; preds = %if.then10
  %13 = load ptr, ptr %zString, align 8
  %14 = load i32, ptr %iLen, align 4
  %15 = load i32, ptr %nOfft, align 4
  %add = add nsw i32 %14, %15
  %idxprom = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %13, i64 %idxprom
  store ptr %arrayidx15, ptr %zBase, align 8
  %16 = load ptr, ptr %zBase, align 8
  %17 = load ptr, ptr %zString, align 8
  %cmp16 = icmp ugt ptr %16, %17
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.then14
  %18 = load ptr, ptr %zString, align 8
  %19 = load i32, ptr %iLen, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %18, i64 %idxprom18
  %20 = load ptr, ptr %zBase, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx19 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %iLen, align 4
  %21 = load ptr, ptr %zBase, align 8
  store ptr %21, ptr %zString, align 8
  br label %if.end21

if.else:                                          ; preds = %if.then14
  %22 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_result_int(ptr noundef %22, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then17
  br label %if.end29

if.else22:                                        ; preds = %if.then10
  %23 = load i32, ptr %nOfft, align 4
  %24 = load i32, ptr %iLen, align 4
  %cmp23 = icmp sge i32 %23, %24
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else22
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call26 = call i32 @ph7_result_int(ptr noundef %25, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else27:                                        ; preds = %if.else22
  %26 = load i32, ptr %nOfft, align 4
  %27 = load ptr, ptr %zString, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext
  store ptr %add.ptr, ptr %zString, align 8
  %28 = load i32, ptr %nOfft, align 4
  %29 = load i32, ptr %iLen, align 4
  %sub = sub nsw i32 %29, %28
  store i32 %sub, ptr %iLen, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else27
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end21
  %30 = load i32, ptr %nArg.addr, align 4
  %cmp30 = icmp sgt i32 %30, 3
  br i1 %cmp30, label %if.then32, label %if.end41

if.then32:                                        ; preds = %if.end29
  %31 = load ptr, ptr %apArg.addr, align 8
  %arrayidx33 = getelementptr inbounds ptr, ptr %31, i64 3
  %32 = load ptr, ptr %arrayidx33, align 8
  %call34 = call i32 @ph7_value_to_int(ptr noundef %32)
  store i32 %call34, ptr %iUserlen, align 4
  %33 = load i32, ptr %iUserlen, align 4
  %cmp35 = icmp sgt i32 %33, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %if.then32
  %34 = load i32, ptr %iUserlen, align 4
  %35 = load i32, ptr %iLen, align 4
  %cmp37 = icmp slt i32 %34, %35
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %land.lhs.true
  %36 = load i32, ptr %iUserlen, align 4
  store i32 %36, ptr %iLen, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %land.lhs.true, %if.then32
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end29
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end8
  %37 = load ptr, ptr %zString, align 8
  %38 = load i32, ptr %iLen, align 4
  %idxprom43 = sext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %37, i64 %idxprom43
  store ptr %arrayidx44, ptr %zEnd, align 8
  %39 = load ptr, ptr %zEnd, align 8
  %call45 = call i32 @ExtractNonSpaceToken(ptr noundef %zString, ptr noundef %39, ptr noundef %sToken)
  store i32 %call45, ptr %rc, align 4
  %40 = load i32, ptr %rc, align 4
  %cmp46 = icmp eq i32 %40, 0
  br i1 %cmp46, label %land.lhs.true48, label %if.end55

land.lhs.true48:                                  ; preds = %if.end42
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %41 = load i32, ptr %nByte, align 8
  %cmp49 = icmp ugt i32 %41, 0
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %land.lhs.true48
  %zString52 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %42 = load ptr, ptr %zString52, align 8
  %nByte53 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %43 = load i32, ptr %nByte53, align 8
  %44 = load ptr, ptr %zMask, align 8
  %45 = load i32, ptr %iMasklen, align 4
  %call54 = call i32 @LongestStringMask(ptr noundef %42, i32 noundef %43, ptr noundef %44, i32 noundef %45)
  store i32 %call54, ptr %iCount, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %land.lhs.true48, %if.end42
  %46 = load ptr, ptr %pCtx.addr, align 8
  %47 = load i32, ptr %iCount, align 4
  %call56 = call i32 @ph7_result_int(ptr noundef %46, i32 noundef %47)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.then25, %if.else, %if.then6, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ExtractNonSpaceToken(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @LongestStringMask(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
