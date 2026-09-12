; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_basename(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zPath = alloca ptr, align 8
  %zBase = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %iLen = alloca i32, align 4
  %zSuffix = alloca ptr, align 8
  %nSuffix = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_string(ptr noundef %3, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 47, ptr %d, align 4
  store i32 47, ptr %c, align 4
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %iLen)
  store ptr %call3, ptr %zPath, align 8
  %6 = load i32, ptr %iLen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_string(ptr noundef %7, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %zPath, align 8
  %9 = load i32, ptr %iLen, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %idxprom
  store ptr %arrayidx8, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end7
  %10 = load ptr, ptr %zEnd, align 8
  %11 = load ptr, ptr %zPath, align 8
  %cmp9 = icmp ugt ptr %10, %11
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %12 = load ptr, ptr %zEnd, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx10, align 1
  %conv = sext i8 %13 to i32
  %14 = load i32, ptr %c, align 4
  %cmp11 = icmp eq i32 %conv, %14
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %15 = load ptr, ptr %zEnd, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %16 to i32
  %17 = load i32, ptr %d, align 4
  %cmp15 = icmp eq i32 %conv14, %17
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %18 = phi i1 [ true, %land.rhs ], [ %cmp15, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %18, %lor.end ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %zEnd, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %21, i64 1
  %22 = load ptr, ptr %zPath, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx17 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv18 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv18, ptr %iLen, align 4
  br label %while.cond19

while.cond19:                                     ; preds = %while.body34, %while.end
  %23 = load ptr, ptr %zEnd, align 8
  %24 = load ptr, ptr %zPath, align 8
  %cmp20 = icmp ugt ptr %23, %24
  br i1 %cmp20, label %land.rhs22, label %land.end33

land.rhs22:                                       ; preds = %while.cond19
  %25 = load ptr, ptr %zEnd, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %26 to i32
  %27 = load i32, ptr %c, align 4
  %cmp25 = icmp ne i32 %conv24, %27
  br i1 %cmp25, label %land.rhs27, label %land.end32

land.rhs27:                                       ; preds = %land.rhs22
  %28 = load ptr, ptr %zEnd, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx28, align 1
  %conv29 = sext i8 %29 to i32
  %30 = load i32, ptr %d, align 4
  %cmp30 = icmp ne i32 %conv29, %30
  br label %land.end32

land.end32:                                       ; preds = %land.rhs27, %land.rhs22
  %31 = phi i1 [ false, %land.rhs22 ], [ %cmp30, %land.rhs27 ]
  br label %land.end33

land.end33:                                       ; preds = %land.end32, %while.cond19
  %32 = phi i1 [ false, %while.cond19 ], [ %31, %land.end32 ]
  br i1 %32, label %while.body34, label %while.end36

while.body34:                                     ; preds = %land.end33
  %33 = load ptr, ptr %zEnd, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %33, i32 -1
  store ptr %incdec.ptr35, ptr %zEnd, align 8
  br label %while.cond19, !llvm.loop !8

while.end36:                                      ; preds = %land.end33
  %34 = load ptr, ptr %zEnd, align 8
  %35 = load ptr, ptr %zPath, align 8
  %cmp37 = icmp ugt ptr %34, %35
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end36
  %36 = load ptr, ptr %zEnd, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %36, i64 1
  br label %cond.end

cond.false:                                       ; preds = %while.end36
  %37 = load ptr, ptr %zPath, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx39, %cond.true ], [ %37, %cond.false ]
  store ptr %cond, ptr %zBase, align 8
  %38 = load ptr, ptr %zPath, align 8
  %39 = load i32, ptr %iLen, align 4
  %idxprom40 = sext i32 %39 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %38, i64 %idxprom40
  store ptr %arrayidx41, ptr %zEnd, align 8
  %40 = load i32, ptr %nArg.addr, align 4
  %cmp42 = icmp sgt i32 %40, 1
  br i1 %cmp42, label %land.lhs.true, label %if.end64

land.lhs.true:                                    ; preds = %cond.end
  %41 = load ptr, ptr %apArg.addr, align 8
  %arrayidx44 = getelementptr inbounds ptr, ptr %41, i64 1
  %42 = load ptr, ptr %arrayidx44, align 8
  %call45 = call i32 @ph7_value_is_string(ptr noundef %42)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then47, label %if.end64

if.then47:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %apArg.addr, align 8
  %arrayidx48 = getelementptr inbounds ptr, ptr %43, i64 1
  %44 = load ptr, ptr %arrayidx48, align 8
  %call49 = call ptr @ph7_value_to_string(ptr noundef %44, ptr noundef %nSuffix)
  store ptr %call49, ptr %zSuffix, align 8
  %45 = load i32, ptr %nSuffix, align 4
  %cmp50 = icmp sgt i32 %45, 0
  br i1 %cmp50, label %land.lhs.true52, label %if.end63

land.lhs.true52:                                  ; preds = %if.then47
  %46 = load i32, ptr %nSuffix, align 4
  %47 = load i32, ptr %iLen, align 4
  %cmp53 = icmp slt i32 %46, %47
  br i1 %cmp53, label %land.lhs.true55, label %if.end63

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %48 = load ptr, ptr %zEnd, align 8
  %49 = load i32, ptr %nSuffix, align 4
  %sub56 = sub nsw i32 0, %49
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds i8, ptr %48, i64 %idxprom57
  %50 = load ptr, ptr %zSuffix, align 8
  %51 = load i32, ptr %nSuffix, align 4
  %call59 = call i32 @SyMemcmp(ptr noundef %arrayidx58, ptr noundef %50, i32 noundef %51)
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %land.lhs.true55
  %52 = load i32, ptr %nSuffix, align 4
  %53 = load ptr, ptr %zEnd, align 8
  %idx.ext = sext i32 %52 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, ptr %53, i64 %idx.neg
  store ptr %add.ptr, ptr %zEnd, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %land.lhs.true55, %land.lhs.true52, %if.then47
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %land.lhs.true, %cond.end
  %54 = load ptr, ptr %pCtx.addr, align 8
  %55 = load ptr, ptr %zBase, align 8
  %56 = load ptr, ptr %zEnd, align 8
  %57 = load ptr, ptr %zBase, align 8
  %sub.ptr.lhs.cast65 = ptrtoint ptr %56 to i64
  %sub.ptr.rhs.cast66 = ptrtoint ptr %57 to i64
  %sub.ptr.sub67 = sub i64 %sub.ptr.lhs.cast65, %sub.ptr.rhs.cast66
  %conv68 = trunc i64 %sub.ptr.sub67 to i32
  %call69 = call i32 @ph7_result_string(ptr noundef %54, ptr noundef %55, i32 noundef %conv68)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then5, %if.then
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
