; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strrpos(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zStart = alloca ptr, align 8
  %zBlob = alloca ptr, align 8
  %zPattern = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %xPatternMatch = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %nPatLen = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  %nStart = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr @SyBlobSearch, ptr %xPatternMatch, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nLen)
  store ptr %call1, ptr %zBlob, align 8
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nPatLen)
  store ptr %call3, ptr %zPattern, align 8
  %6 = load ptr, ptr %zBlob, align 8
  %7 = load i32, ptr %nLen, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store ptr %arrayidx4, ptr %zPtr, align 8
  %8 = load ptr, ptr %zBlob, align 8
  %9 = load i32, ptr %nLen, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 %idxprom5
  store ptr %arrayidx6, ptr %zEnd, align 8
  %10 = load ptr, ptr %zBlob, align 8
  store ptr %10, ptr %zStart, align 8
  store i32 0, ptr %nOfft, align 4
  %11 = load i32, ptr %nArg.addr, align 4
  %cmp7 = icmp sgt i32 %11, 2
  br i1 %cmp7, label %if.then8, label %if.end32

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %apArg.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %12, i64 2
  %13 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @ph7_value_to_int(ptr noundef %13)
  store i32 %call10, ptr %nStart, align 4
  %14 = load i32, ptr %nStart, align 4
  %cmp11 = icmp slt i32 %14, 0
  br i1 %cmp11, label %if.then12, label %if.else24

if.then12:                                        ; preds = %if.then8
  %15 = load i32, ptr %nStart, align 4
  %sub13 = sub nsw i32 0, %15
  store i32 %sub13, ptr %nStart, align 4
  %16 = load i32, ptr %nStart, align 4
  %17 = load i32, ptr %nLen, align 4
  %cmp14 = icmp sge i32 %16, %17
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then12
  %18 = load ptr, ptr %pCtx.addr, align 8
  %call16 = call i32 @ph7_result_bool(ptr noundef %18, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then12
  %19 = load i32, ptr %nStart, align 4
  %20 = load i32, ptr %nLen, align 4
  %sub17 = sub nsw i32 %20, %19
  store i32 %sub17, ptr %nLen, align 4
  %21 = load ptr, ptr %zBlob, align 8
  %22 = load i32, ptr %nLen, align 4
  %sub18 = sub nsw i32 %22, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %21, i64 %idxprom19
  store ptr %arrayidx20, ptr %zPtr, align 8
  %23 = load ptr, ptr %zBlob, align 8
  %24 = load i32, ptr %nLen, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %23, i64 %idxprom21
  store ptr %arrayidx22, ptr %zEnd, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else
  br label %if.end31

if.else24:                                        ; preds = %if.then8
  %25 = load i32, ptr %nStart, align 4
  %26 = load i32, ptr %nLen, align 4
  %cmp25 = icmp sge i32 %25, %26
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %if.else24
  %27 = load ptr, ptr %pCtx.addr, align 8
  %call27 = call i32 @ph7_result_bool(ptr noundef %27, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.else24
  %28 = load i32, ptr %nStart, align 4
  %29 = load ptr, ptr %zBlob, align 8
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, ptr %29, i64 %idx.ext
  store ptr %add.ptr, ptr %zBlob, align 8
  %30 = load i32, ptr %nStart, align 4
  %31 = load i32, ptr %nLen, align 4
  %sub29 = sub nsw i32 %31, %30
  store i32 %sub29, ptr %nLen, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else28
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end23
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end
  %32 = load i32, ptr %nLen, align 4
  %cmp33 = icmp sgt i32 %32, 0
  br i1 %cmp33, label %land.lhs.true, label %if.else51

land.lhs.true:                                    ; preds = %if.end32
  %33 = load i32, ptr %nPatLen, align 4
  %cmp34 = icmp sgt i32 %33, 0
  br i1 %cmp34, label %if.then35, label %if.else51

if.then35:                                        ; preds = %land.lhs.true
  br label %for.cond

for.cond:                                         ; preds = %if.end49, %if.then35
  %34 = load ptr, ptr %zBlob, align 8
  %35 = load ptr, ptr %zPtr, align 8
  %cmp36 = icmp uge ptr %34, %35
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.cond
  br label %for.end

if.end38:                                         ; preds = %for.cond
  %36 = load ptr, ptr %xPatternMatch, align 8
  %37 = load ptr, ptr %zPtr, align 8
  %38 = load ptr, ptr %zEnd, align 8
  %39 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %39 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %40 = load ptr, ptr %zPattern, align 8
  %41 = load i32, ptr %nPatLen, align 4
  %call39 = call i32 %36(ptr noundef %37, i32 noundef %conv, ptr noundef %40, i32 noundef %41, ptr noundef %nOfft)
  store i32 %call39, ptr %rc, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp40 = icmp eq i32 %42, 0
  br i1 %cmp40, label %if.then42, label %if.end49

if.then42:                                        ; preds = %if.end38
  %43 = load ptr, ptr %pCtx.addr, align 8
  %44 = load ptr, ptr %zPtr, align 8
  %45 = load i32, ptr %nOfft, align 4
  %idxprom43 = zext i32 %45 to i64
  %arrayidx44 = getelementptr inbounds nuw i8, ptr %44, i64 %idxprom43
  %46 = load ptr, ptr %zStart, align 8
  %sub.ptr.lhs.cast45 = ptrtoint ptr %arrayidx44 to i64
  %sub.ptr.rhs.cast46 = ptrtoint ptr %46 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %call48 = call i32 @ph7_result_int64(ptr noundef %43, i64 noundef %sub.ptr.sub47)
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end38
  %47 = load ptr, ptr %zPtr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %47, i32 -1
  store ptr %incdec.ptr, ptr %zPtr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then37
  %48 = load ptr, ptr %pCtx.addr, align 8
  %call50 = call i32 @ph7_result_bool(ptr noundef %48, i32 noundef 0)
  br label %if.end53

if.else51:                                        ; preds = %land.lhs.true, %if.end32
  %49 = load ptr, ptr %pCtx.addr, align 8
  %call52 = call i32 @ph7_result_bool(ptr noundef %49, i32 noundef 0)
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then42, %if.then26, %if.then15, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobSearch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
