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
define hidden i32 @PH7_builtin_rtrim(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
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
  %nByte12 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %11 = load i32, ptr %nByte12, align 8
  %sub = sub i32 %11, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %10, i64 %idxprom
  %12 = load i8, ptr %arrayidx13, align 1
  %conv = zext i8 %12 to i32
  %cmp14 = icmp slt i32 %conv, 192
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %zString16 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %13 = load ptr, ptr %zString16, align 8
  %nByte17 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %14 = load i32, ptr %nByte17, align 8
  %sub18 = sub i32 %14, 1
  %idxprom19 = zext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %13, i64 %idxprom19
  %15 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %15 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %call24 = call ptr @__ctype_b_loc() #2
  %16 = load ptr, ptr %call24, align 8
  %zString25 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %17 = load ptr, ptr %zString25, align 8
  %nByte26 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %18 = load i32, ptr %nByte26, align 8
  %sub27 = sub i32 %18, 1
  %idxprom28 = zext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %17, i64 %idxprom28
  %19 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %19 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %16, i64 %idxprom31
  %20 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %20 to i32
  %and = and i32 %conv33, 8192
  %tobool = icmp ne i32 %and, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %21 = phi i1 [ true, %land.rhs ], [ %tobool, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %while.cond
  %22 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %21, %lor.end ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %nByte34 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %23 = load i32, ptr %nByte34, align 8
  %dec = add i32 %23, -1
  store i32 %dec, ptr %nByte34, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %24 = load ptr, ptr %pCtx.addr, align 8
  %zString35 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %25 = load ptr, ptr %zString35, align 8
  %nByte36 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %26 = load i32, ptr %nByte36, align 8
  %call37 = call i32 @ph7_result_string(ptr noundef %24, ptr noundef %25, i32 noundef %26)
  br label %if.end82

if.else:                                          ; preds = %if.end5
  %27 = load ptr, ptr %apArg.addr, align 8
  %arrayidx38 = getelementptr inbounds ptr, ptr %27, i64 1
  %28 = load ptr, ptr %arrayidx38, align 8
  %call39 = call ptr @ph7_value_to_string(ptr noundef %28, ptr noundef %nListlen)
  store ptr %call39, ptr %zList, align 8
  %29 = load i32, ptr %nListlen, align 4
  %cmp40 = icmp slt i32 %29, 1
  br i1 %cmp40, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.else
  %30 = load ptr, ptr %pCtx.addr, align 8
  %31 = load ptr, ptr %zString, align 8
  %32 = load i32, ptr %nLen, align 4
  %call43 = call i32 @ph7_result_string(ptr noundef %30, ptr noundef %31, i32 noundef %32)
  br label %if.end81

if.else44:                                        ; preds = %if.else
  %33 = load ptr, ptr %zString, align 8
  %34 = load i32, ptr %nLen, align 4
  %sub45 = sub nsw i32 %34, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds i8, ptr %33, i64 %idxprom46
  store ptr %arrayidx47, ptr %zEnd, align 8
  %35 = load ptr, ptr %zString, align 8
  store ptr %35, ptr %zCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end70, %if.else44
  %36 = load ptr, ptr %zEnd, align 8
  %37 = load ptr, ptr %zCur, align 8
  %cmp48 = icmp ule ptr %36, %37
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %for.cond
  br label %for.end71

if.end51:                                         ; preds = %for.cond
  %38 = load ptr, ptr %zEnd, align 8
  store ptr %38, ptr %zPtr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc, %if.end51
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %nListlen, align 4
  %cmp53 = icmp slt i32 %39, %40
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond52
  %41 = load ptr, ptr %zEnd, align 8
  %42 = load ptr, ptr %zCur, align 8
  %cmp55 = icmp ugt ptr %41, %42
  br i1 %cmp55, label %land.lhs.true57, label %if.end66

land.lhs.true57:                                  ; preds = %for.body
  %43 = load ptr, ptr %zEnd, align 8
  %arrayidx58 = getelementptr inbounds i8, ptr %43, i64 0
  %44 = load i8, ptr %arrayidx58, align 1
  %conv59 = sext i8 %44 to i32
  %45 = load ptr, ptr %zList, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %46 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %45, i64 %idxprom60
  %47 = load i8, ptr %arrayidx61, align 1
  %conv62 = sext i8 %47 to i32
  %cmp63 = icmp eq i32 %conv59, %conv62
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %land.lhs.true57
  %48 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %48, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %land.lhs.true57, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %49 = load i32, ptr %i, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond52, !llvm.loop !8

for.end:                                          ; preds = %for.cond52
  %50 = load ptr, ptr %zEnd, align 8
  %51 = load ptr, ptr %zPtr, align 8
  %cmp67 = icmp eq ptr %50, %51
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %for.end
  br label %for.end71

if.end70:                                         ; preds = %for.end
  br label %for.cond

for.end71:                                        ; preds = %if.then69, %if.then50
  %52 = load ptr, ptr %zEnd, align 8
  %53 = load ptr, ptr %zCur, align 8
  %cmp72 = icmp ule ptr %52, %53
  br i1 %cmp72, label %if.then74, label %if.else76

if.then74:                                        ; preds = %for.end71
  %54 = load ptr, ptr %pCtx.addr, align 8
  %call75 = call i32 @ph7_result_string(ptr noundef %54, ptr noundef @.str.4, i32 noundef 0)
  br label %if.end80

if.else76:                                        ; preds = %for.end71
  %55 = load ptr, ptr %zEnd, align 8
  %incdec.ptr77 = getelementptr inbounds nuw i8, ptr %55, i32 1
  store ptr %incdec.ptr77, ptr %zEnd, align 8
  %56 = load ptr, ptr %pCtx.addr, align 8
  %57 = load ptr, ptr %zCur, align 8
  %58 = load ptr, ptr %zEnd, align 8
  %59 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %58 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %59 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv78 = trunc i64 %sub.ptr.sub to i32
  %call79 = call i32 @ph7_result_string(ptr noundef %56, ptr noundef %57, i32 noundef %conv78)
  br label %if.end80

if.end80:                                         ; preds = %if.else76, %if.then74
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then42
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end82, %if.then3, %if.then
  %60 = load i32, ptr %retval, align 4
  ret i32 %60
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
