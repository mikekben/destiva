; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHexStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_hexdec(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %iVal = alloca i64, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_int(ptr noundef %1, i32 noundef -1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, ptr %iVal, align 8
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_is_string(ptr noundef %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.else39

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nLen)
  store ptr %call4, ptr %zString, align 8
  %6 = load ptr, ptr %zString, align 8
  %7 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store ptr %arrayidx5, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.then2
  %8 = load ptr, ptr %zString, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp6 = icmp ult ptr %8, %9
  br i1 %cmp6, label %while.body, label %while.end32

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %zString, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %11 to i32
  %cmp8 = icmp sge i32 %conv, 192
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %12 = load ptr, ptr %zString, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %zString, align 8
  br label %while.cond11

while.cond11:                                     ; preds = %while.body18, %if.then10
  %13 = load ptr, ptr %zString, align 8
  %14 = load ptr, ptr %zEnd, align 8
  %cmp12 = icmp ult ptr %13, %14
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond11
  %15 = load ptr, ptr %zString, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %and = and i32 %conv15, 192
  %cmp16 = icmp eq i32 %and, 128
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond11
  %17 = phi i1 [ false, %while.cond11 ], [ %cmp16, %land.rhs ]
  br i1 %17, label %while.body18, label %while.end

while.body18:                                     ; preds = %land.end
  %18 = load ptr, ptr %zString, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr19, ptr %zString, align 8
  br label %while.cond11, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %if.end31

if.else:                                          ; preds = %while.body
  %call20 = call ptr @__ctype_b_loc() #2
  %19 = load ptr, ptr %call20, align 8
  %20 = load ptr, ptr %zString, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %21 to i32
  %idxprom23 = sext i32 %conv22 to i64
  %arrayidx24 = getelementptr inbounds i16, ptr %19, i64 %idxprom23
  %22 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %22 to i32
  %and26 = and i32 %conv25, 4096
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else
  br label %while.end32

if.end29:                                         ; preds = %if.else
  %23 = load ptr, ptr %zString, align 8
  %incdec.ptr30 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr30, ptr %zString, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %while.end
  br label %while.cond, !llvm.loop !8

while.end32:                                      ; preds = %if.then28, %while.cond
  %24 = load ptr, ptr %zString, align 8
  %25 = load ptr, ptr %zEnd, align 8
  %cmp33 = icmp ult ptr %24, %25
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %while.end32
  %26 = load ptr, ptr %zString, align 8
  %27 = load ptr, ptr %zEnd, align 8
  %28 = load ptr, ptr %zString, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %27 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv36 = trunc i64 %sub.ptr.sub to i32
  %call37 = call i32 @SyHexStrToInt64(ptr noundef %26, i32 noundef %conv36, ptr noundef %iVal, ptr noundef null)
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %while.end32
  br label %if.end42

if.else39:                                        ; preds = %if.end
  %29 = load ptr, ptr %apArg.addr, align 8
  %arrayidx40 = getelementptr inbounds ptr, ptr %29, i64 0
  %30 = load ptr, ptr %arrayidx40, align 8
  %call41 = call i64 @ph7_value_to_int64(ptr noundef %30)
  store i64 %call41, ptr %iVal, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.end38
  %31 = load ptr, ptr %pCtx.addr, align 8
  %32 = load i64, ptr %iVal, align 8
  %call43 = call i32 @ph7_result_int64(ptr noundef %31, i64 noundef %32)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
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
