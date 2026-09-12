; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #2

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strtolower(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %c = alloca i32, align 4
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
  %6 = load ptr, ptr %zString, align 8
  %7 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store ptr %arrayidx6, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end37, %if.end5
  %8 = load ptr, ptr %zString, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp uge ptr %8, %9
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.cond
  br label %for.end

if.end9:                                          ; preds = %for.cond
  %10 = load ptr, ptr %zString, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx10, align 1
  %conv = zext i8 %11 to i32
  %cmp11 = icmp sge i32 %conv, 192
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %12 = load ptr, ptr %zString, align 8
  store ptr %12, ptr %zCur, align 8
  %13 = load ptr, ptr %zString, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %zString, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then13
  %14 = load ptr, ptr %zString, align 8
  %15 = load ptr, ptr %zEnd, align 8
  %cmp14 = icmp ult ptr %14, %15
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load ptr, ptr %zString, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %17 to i32
  %and = and i32 %conv17, 192
  %cmp18 = icmp eq i32 %and, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %18, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %19 = load ptr, ptr %zString, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr20, ptr %zString, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %20 = load ptr, ptr %pCtx.addr, align 8
  %21 = load ptr, ptr %zCur, align 8
  %22 = load ptr, ptr %zString, align 8
  %23 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv21 = trunc i64 %sub.ptr.sub to i32
  %call22 = call i32 @ph7_result_string(ptr noundef %20, ptr noundef %21, i32 noundef %conv21)
  br label %if.end37

if.else:                                          ; preds = %if.end9
  %24 = load ptr, ptr %zString, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %24, i64 0
  %25 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %25 to i32
  store i32 %conv24, ptr %c, align 4
  %call25 = call ptr @__ctype_b_loc() #3
  %26 = load ptr, ptr %call25, align 8
  %27 = load i32, ptr %c, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds i16, ptr %26, i64 %idxprom26
  %28 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %28 to i32
  %and29 = and i32 %conv28, 256
  %tobool = icmp ne i32 %and29, 0
  br i1 %tobool, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.else
  %29 = load ptr, ptr %zString, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %30 to i32
  %call33 = call i32 @tolower(i32 noundef %conv32) #4
  store i32 %call33, ptr %c, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.else
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call35 = call i32 @ph7_result_string(ptr noundef %31, ptr noundef %c, i32 noundef 1)
  %32 = load ptr, ptr %zString, align 8
  %incdec.ptr36 = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %incdec.ptr36, ptr %zString, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end34, %while.end
  br label %for.cond

for.end:                                          ; preds = %if.then8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

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
