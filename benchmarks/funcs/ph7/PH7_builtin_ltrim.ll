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
define hidden i32 @PH7_builtin_ltrim(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
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
  %22 = load ptr, ptr %pCtx.addr, align 8
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %23 = load ptr, ptr %zString28, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %24 = load i32, ptr %nByte29, align 8
  %call30 = call i32 @ph7_result_string(ptr noundef %22, ptr noundef %23, i32 noundef %24)
  br label %if.end74

if.else:                                          ; preds = %if.end5
  %25 = load ptr, ptr %apArg.addr, align 8
  %arrayidx31 = getelementptr inbounds ptr, ptr %25, i64 1
  %26 = load ptr, ptr %arrayidx31, align 8
  %call32 = call ptr @ph7_value_to_string(ptr noundef %26, ptr noundef %nListlen)
  store ptr %call32, ptr %zList, align 8
  %27 = load i32, ptr %nListlen, align 4
  %cmp33 = icmp slt i32 %27, 1
  br i1 %cmp33, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.else
  %28 = load ptr, ptr %pCtx.addr, align 8
  %29 = load ptr, ptr %zString, align 8
  %30 = load i32, ptr %nLen, align 4
  %call36 = call i32 @ph7_result_string(ptr noundef %28, ptr noundef %29, i32 noundef %30)
  br label %if.end73

if.else37:                                        ; preds = %if.else
  %31 = load ptr, ptr %zString, align 8
  %32 = load i32, ptr %nLen, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %31, i64 %idxprom38
  store ptr %arrayidx39, ptr %zEnd, align 8
  %33 = load ptr, ptr %zString, align 8
  store ptr %33, ptr %zCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end63, %if.else37
  %34 = load ptr, ptr %zCur, align 8
  %35 = load ptr, ptr %zEnd, align 8
  %cmp40 = icmp uge ptr %34, %35
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.cond
  br label %for.end64

if.end43:                                         ; preds = %for.cond
  %36 = load ptr, ptr %zCur, align 8
  store ptr %36, ptr %zPtr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc, %if.end43
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %nListlen, align 4
  %cmp45 = icmp slt i32 %37, %38
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond44
  %39 = load ptr, ptr %zCur, align 8
  %40 = load ptr, ptr %zEnd, align 8
  %cmp47 = icmp ult ptr %39, %40
  br i1 %cmp47, label %land.lhs.true49, label %if.end59

land.lhs.true49:                                  ; preds = %for.body
  %41 = load ptr, ptr %zCur, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx50, align 1
  %conv51 = sext i8 %42 to i32
  %43 = load ptr, ptr %zList, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %44 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %43, i64 %idxprom52
  %45 = load i8, ptr %arrayidx53, align 1
  %conv54 = sext i8 %45 to i32
  %cmp55 = icmp eq i32 %conv51, %conv54
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %land.lhs.true49
  %46 = load ptr, ptr %zCur, align 8
  %incdec.ptr58 = getelementptr inbounds nuw i8, ptr %46, i32 1
  store ptr %incdec.ptr58, ptr %zCur, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true49, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end59
  %47 = load i32, ptr %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond44, !llvm.loop !8

for.end:                                          ; preds = %for.cond44
  %48 = load ptr, ptr %zCur, align 8
  %49 = load ptr, ptr %zPtr, align 8
  %cmp60 = icmp eq ptr %48, %49
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %for.end
  br label %for.end64

if.end63:                                         ; preds = %for.end
  br label %for.cond

for.end64:                                        ; preds = %if.then62, %if.then42
  %50 = load ptr, ptr %zCur, align 8
  %51 = load ptr, ptr %zEnd, align 8
  %cmp65 = icmp uge ptr %50, %51
  br i1 %cmp65, label %if.then67, label %if.else69

if.then67:                                        ; preds = %for.end64
  %52 = load ptr, ptr %pCtx.addr, align 8
  %call68 = call i32 @ph7_result_string(ptr noundef %52, ptr noundef @.str.4, i32 noundef 0)
  br label %if.end72

if.else69:                                        ; preds = %for.end64
  %53 = load ptr, ptr %pCtx.addr, align 8
  %54 = load ptr, ptr %zCur, align 8
  %55 = load ptr, ptr %zEnd, align 8
  %56 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %55 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %56 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv70 = trunc i64 %sub.ptr.sub to i32
  %call71 = call i32 @ph7_result_string(ptr noundef %53, ptr noundef %54, i32 noundef %conv70)
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then67
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then35
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end74, %if.then3, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
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
