; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.968 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.970 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_quotemeta(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
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

for.cond:                                         ; preds = %if.end25, %if.end5
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
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %13 = load ptr, ptr %zIn, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx11, align 1
  %conv = sext i8 %14 to i32
  %call12 = call i32 @cSlashCheckMask(i32 noundef %conv, ptr noundef @.str.970, i32 noundef 11)
  %tobool = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %zIn, align 8
  %18 = load ptr, ptr %zCur, align 8
  %cmp13 = icmp ugt ptr %17, %18
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %while.end
  %19 = load ptr, ptr %pCtx.addr, align 8
  %20 = load ptr, ptr %zCur, align 8
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv16 = trunc i64 %sub.ptr.sub to i32
  %call17 = call i32 @ph7_result_string(ptr noundef %19, ptr noundef %20, i32 noundef %conv16)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %while.end
  %23 = load ptr, ptr %zIn, align 8
  %24 = load ptr, ptr %zEnd, align 8
  %cmp19 = icmp ult ptr %23, %24
  br i1 %cmp19, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end18
  %25 = load ptr, ptr %zIn, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %26 to i32
  store i32 %conv23, ptr %c, align 4
  %27 = load ptr, ptr %pCtx.addr, align 8
  %28 = load i32, ptr %c, align 4
  %call24 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %27, ptr noundef @.str.968, i32 noundef %28)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end18
  %29 = load ptr, ptr %zIn, align 8
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %29, i32 1
  store ptr %incdec.ptr26, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
declare hidden i32 @cSlashCheckMask(i32 noundef, ptr noundef, i32 noundef) #0

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
