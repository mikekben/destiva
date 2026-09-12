; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.968 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_addslashes(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zIn = alloca ptr, align 8
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
  store ptr %call1, ptr %zIn, align 8
  %4 = load i32, ptr %nLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_result_string(ptr noundef %5, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %zIn, align 8
  %7 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store ptr %arrayidx6, ptr %zEnd, align 8
  store ptr null, ptr %zCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %if.end5
  %8 = load ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp uge ptr %8, %9
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.cond
  br label %for.end

if.end9:                                          ; preds = %for.cond
  %10 = load ptr, ptr %zIn, align 8
  store ptr %10, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end9
  %11 = load ptr, ptr %zIn, align 8
  %12 = load ptr, ptr %zEnd, align 8
  %cmp10 = icmp ult ptr %11, %12
  br i1 %cmp10, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %13 = load ptr, ptr %zIn, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx11, align 1
  %conv = sext i8 %14 to i32
  %cmp12 = icmp ne i32 %conv, 39
  br i1 %cmp12, label %land.lhs.true14, label %land.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %15 = load ptr, ptr %zIn, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %16 to i32
  %cmp17 = icmp ne i32 %conv16, 34
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true14
  %17 = load ptr, ptr %zIn, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %cmp21 = icmp ne i32 %conv20, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true14, %land.lhs.true, %while.cond
  %19 = phi i1 [ false, %land.lhs.true14 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp21, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zCur, align 8
  %cmp23 = icmp ugt ptr %21, %22
  br i1 %cmp23, label %if.then25, label %if.end28

if.then25:                                        ; preds = %while.end
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load ptr, ptr %zCur, align 8
  %25 = load ptr, ptr %zIn, align 8
  %26 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i64 %sub.ptr.sub to i32
  %call27 = call i32 @ph7_result_string(ptr noundef %23, ptr noundef %24, i32 noundef %conv26)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %while.end
  %27 = load ptr, ptr %zIn, align 8
  %28 = load ptr, ptr %zEnd, align 8
  %cmp29 = icmp ult ptr %27, %28
  br i1 %cmp29, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end28
  %29 = load ptr, ptr %zIn, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %30 to i32
  store i32 %conv33, ptr %c, align 4
  %31 = load ptr, ptr %pCtx.addr, align 8
  %32 = load i32, ptr %c, align 4
  %call34 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %31, ptr noundef @.str.968, i32 noundef %32)
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end28
  %33 = load ptr, ptr %zIn, align 8
  %incdec.ptr36 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr36, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
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
