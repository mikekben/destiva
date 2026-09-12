; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.968 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.969 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_addcslashes(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zMask = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %nMask = alloca i32, align 4
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
  store ptr %call1, ptr %zIn, align 8
  %4 = load i32, ptr %nLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp3 = icmp slt i32 %5, 2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %7 = load ptr, ptr %zIn, align 8
  %8 = load i32, ptr %nLen, align 4
  %call5 = call i32 @ph7_result_string(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @ph7_value_to_string(ptr noundef %10, ptr noundef %nMask)
  store ptr %call8, ptr %zMask, align 8
  %11 = load ptr, ptr %zIn, align 8
  %12 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  store ptr %arrayidx9, ptr %zEnd, align 8
  store ptr null, ptr %zCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end48, %if.end6
  %13 = load ptr, ptr %zIn, align 8
  %14 = load ptr, ptr %zEnd, align 8
  %cmp10 = icmp uge ptr %13, %14
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.cond
  br label %for.end

if.end12:                                         ; preds = %for.cond
  %15 = load ptr, ptr %zIn, align 8
  store ptr %15, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end12
  %16 = load ptr, ptr %zIn, align 8
  %17 = load ptr, ptr %zEnd, align 8
  %cmp13 = icmp ult ptr %16, %17
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load ptr, ptr %zIn, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx14, align 1
  %conv = sext i8 %19 to i32
  %20 = load ptr, ptr %zMask, align 8
  %21 = load i32, ptr %nMask, align 4
  %call15 = call i32 @cSlashCheckMask(i32 noundef %conv, ptr noundef %20, i32 noundef %21)
  %tobool = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %24 = load ptr, ptr %zIn, align 8
  %25 = load ptr, ptr %zCur, align 8
  %cmp16 = icmp ugt ptr %24, %25
  br i1 %cmp16, label %if.then18, label %if.end21

if.then18:                                        ; preds = %while.end
  %26 = load ptr, ptr %pCtx.addr, align 8
  %27 = load ptr, ptr %zCur, align 8
  %28 = load ptr, ptr %zIn, align 8
  %29 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv19 = trunc i64 %sub.ptr.sub to i32
  %call20 = call i32 @ph7_result_string(ptr noundef %26, ptr noundef %27, i32 noundef %conv19)
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %while.end
  %30 = load ptr, ptr %zIn, align 8
  %31 = load ptr, ptr %zEnd, align 8
  %cmp22 = icmp ult ptr %30, %31
  br i1 %cmp22, label %if.then24, label %if.end48

if.then24:                                        ; preds = %if.end21
  %32 = load ptr, ptr %zIn, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %33 to i32
  store i32 %conv26, ptr %c, align 4
  %34 = load i32, ptr %c, align 4
  %cmp27 = icmp sgt i32 %34, 126
  br i1 %cmp27, label %if.then44, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.then24
  %35 = load i32, ptr %c, align 4
  %cmp30 = icmp slt i32 %35, 32
  br i1 %cmp30, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false29
  %call32 = call ptr @__ctype_b_loc() #2
  %36 = load ptr, ptr %call32, align 8
  %37 = load i32, ptr %c, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds i16, ptr %36, i64 %idxprom33
  %38 = load i16, ptr %arrayidx34, align 2
  %conv35 = zext i16 %38 to i32
  %and = and i32 %conv35, 8
  %tobool36 = icmp ne i32 %and, 0
  br i1 %tobool36, label %if.else, label %land.lhs.true37

land.lhs.true37:                                  ; preds = %land.lhs.true
  %call38 = call ptr @__ctype_b_loc() #2
  %39 = load ptr, ptr %call38, align 8
  %40 = load i32, ptr %c, align 4
  %idxprom39 = sext i32 %40 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %39, i64 %idxprom39
  %41 = load i16, ptr %arrayidx40, align 2
  %conv41 = zext i16 %41 to i32
  %and42 = and i32 %conv41, 8192
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.else, label %if.then44

if.then44:                                        ; preds = %land.lhs.true37, %if.then24
  %42 = load ptr, ptr %pCtx.addr, align 8
  %43 = load i32, ptr %c, align 4
  %call45 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %42, ptr noundef @.str.969, i32 noundef %43)
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true37, %land.lhs.true, %lor.lhs.false29
  %44 = load ptr, ptr %pCtx.addr, align 8
  %45 = load i32, ptr %c, align 4
  %call46 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %44, ptr noundef @.str.968, i32 noundef %45)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then44
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end21
  %46 = load ptr, ptr %zIn, align 8
  %incdec.ptr49 = getelementptr inbounds nuw i8, ptr %46, i32 1
  store ptr %incdec.ptr49, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
declare hidden i32 @cSlashCheckMask(i32 noundef, ptr noundef, i32 noundef) #1

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
