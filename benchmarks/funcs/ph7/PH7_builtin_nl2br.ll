; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.993 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.994 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_nl2br(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %is_xhtml = alloca i32, align 4
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %is_xhtml, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_string(ptr noundef %1, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nLen)
  store ptr %call1, ptr %zIn, align 8
  %4 = load i32, ptr %nLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_null(ptr noundef %5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp6 = icmp sgt i32 %6, 1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @ph7_value_to_bool(ptr noundef %8)
  store i32 %call9, ptr %is_xhtml, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5
  %9 = load ptr, ptr %zIn, align 8
  %10 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 %idxprom
  store ptr %arrayidx11, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end60, %if.end10
  %11 = load ptr, ptr %zIn, align 8
  store ptr %11, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %12 = load ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zEnd, align 8
  %cmp12 = icmp ult ptr %12, %13
  br i1 %cmp12, label %land.rhs, label %land.end21

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %zIn, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx13, align 1
  %conv = sext i8 %15 to i32
  %cmp14 = icmp ne i32 %conv, 10
  br i1 %cmp14, label %land.rhs16, label %land.end

land.rhs16:                                       ; preds = %land.rhs
  %16 = load ptr, ptr %zIn, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %17 to i32
  %cmp19 = icmp ne i32 %conv18, 13
  br label %land.end

land.end:                                         ; preds = %land.rhs16, %land.rhs
  %18 = phi i1 [ false, %land.rhs ], [ %cmp19, %land.rhs16 ]
  br label %land.end21

land.end21:                                       ; preds = %land.end, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %18, %land.end ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end21
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end21
  %21 = load ptr, ptr %zCur, align 8
  %22 = load ptr, ptr %zIn, align 8
  %cmp22 = icmp ult ptr %21, %22
  br i1 %cmp22, label %if.then24, label %if.end27

if.then24:                                        ; preds = %while.end
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load ptr, ptr %zCur, align 8
  %25 = load ptr, ptr %zIn, align 8
  %26 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv25 = trunc i64 %sub.ptr.sub to i32
  %call26 = call i32 @ph7_result_string(ptr noundef %23, ptr noundef %24, i32 noundef %conv25)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %while.end
  %27 = load ptr, ptr %zIn, align 8
  %28 = load ptr, ptr %zEnd, align 8
  %cmp28 = icmp uge ptr %27, %28
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end27
  br label %for.end

if.end31:                                         ; preds = %if.end27
  %29 = load i32, ptr %is_xhtml, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end31
  %30 = load ptr, ptr %pCtx.addr, align 8
  %call33 = call i32 @ph7_result_string(ptr noundef %30, ptr noundef @.str.993, i32 noundef 4)
  br label %if.end35

if.else:                                          ; preds = %if.end31
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call34 = call i32 @ph7_result_string(ptr noundef %31, ptr noundef @.str.994, i32 noundef 5)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then32
  %32 = load ptr, ptr %zIn, align 8
  store ptr %32, ptr %zCur, align 8
  br label %while.cond36

while.cond36:                                     ; preds = %while.body49, %if.end35
  %33 = load ptr, ptr %zIn, align 8
  %34 = load ptr, ptr %zEnd, align 8
  %cmp37 = icmp ult ptr %33, %34
  br i1 %cmp37, label %land.rhs39, label %land.end48

land.rhs39:                                       ; preds = %while.cond36
  %35 = load ptr, ptr %zIn, align 8
  %arrayidx40 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %36 to i32
  %cmp42 = icmp eq i32 %conv41, 10
  br i1 %cmp42, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs39
  %37 = load ptr, ptr %zIn, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %37, i64 0
  %38 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %38 to i32
  %cmp46 = icmp eq i32 %conv45, 13
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs39
  %39 = phi i1 [ true, %land.rhs39 ], [ %cmp46, %lor.rhs ]
  br label %land.end48

land.end48:                                       ; preds = %lor.end, %while.cond36
  %40 = phi i1 [ false, %while.cond36 ], [ %39, %lor.end ]
  br i1 %40, label %while.body49, label %while.end51

while.body49:                                     ; preds = %land.end48
  %41 = load ptr, ptr %zIn, align 8
  %incdec.ptr50 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr50, ptr %zIn, align 8
  br label %while.cond36, !llvm.loop !8

while.end51:                                      ; preds = %land.end48
  %42 = load ptr, ptr %zCur, align 8
  %43 = load ptr, ptr %zIn, align 8
  %cmp52 = icmp ult ptr %42, %43
  br i1 %cmp52, label %if.then54, label %if.end60

if.then54:                                        ; preds = %while.end51
  %44 = load ptr, ptr %pCtx.addr, align 8
  %45 = load ptr, ptr %zCur, align 8
  %46 = load ptr, ptr %zIn, align 8
  %47 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast55 = ptrtoint ptr %46 to i64
  %sub.ptr.rhs.cast56 = ptrtoint ptr %47 to i64
  %sub.ptr.sub57 = sub i64 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56
  %conv58 = trunc i64 %sub.ptr.sub57 to i32
  %call59 = call i32 @ph7_result_string(ptr noundef %44, ptr noundef %45, i32 noundef %conv58)
  br label %if.end60

if.end60:                                         ; preds = %if.then54, %while.end51
  br label %for.cond

for.end:                                          ; preds = %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
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
