; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getopt_long_opt = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @VmExtractOptArgValue(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmProcessLongOpt(ptr noundef %pKey, ptr noundef %pValue, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pOpt = alloca ptr, align 8
  %zArg = alloca ptr, align 8
  %zOpt = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %need_value = alloca i32, align 4
  %nByte = alloca i32, align 4
  %zTerm = alloca ptr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pOpt, align 8
  store i32 0, ptr %need_value, align 4
  %1 = load ptr, ptr %pValue.addr, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pValue.addr, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %2, ptr noundef %nByte)
  store ptr %call1, ptr %zOpt, align 8
  %3 = load i32, ptr %nByte, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %zOpt, align 8
  %5 = load i32, ptr %nByte, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %6 = load ptr, ptr %zEnd, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx4, align 1
  %conv = sext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 58
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  store i32 1, ptr %need_value, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then7
  %8 = load ptr, ptr %zEnd, align 8
  %9 = load ptr, ptr %zOpt, align 8
  %cmp8 = icmp uge ptr %8, %9
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load ptr, ptr %zEnd, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 58
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %zOpt, align 8
  %15 = load ptr, ptr %zEnd, align 8
  %cmp14 = icmp uge ptr %14, %15
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.end
  store ptr null, ptr %pKey.addr, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %while.end
  %16 = load ptr, ptr %zEnd, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr18, ptr %zEnd, align 8
  %17 = load ptr, ptr %zEnd, align 8
  store ptr %17, ptr %zTerm, align 8
  %18 = load ptr, ptr %zTerm, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %18, i64 0
  store i8 0, ptr %arrayidx19, align 1
  br label %if.end22

if.else:                                          ; preds = %if.end3
  %19 = load ptr, ptr %zOpt, align 8
  %20 = load i32, ptr %nByte, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %19, i64 %idxprom20
  store ptr %arrayidx21, ptr %zEnd, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end17
  %21 = load ptr, ptr %zOpt, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %23 = load ptr, ptr %zOpt, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv23 = trunc i64 %sub.ptr.sub to i32
  %24 = load ptr, ptr %pOpt, align 8
  %zArgIn = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zArgIn, align 8
  %26 = load ptr, ptr %pOpt, align 8
  %zArgEnd = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %zArgEnd, align 8
  %call24 = call ptr @VmFindLongOpt(ptr noundef %21, i32 noundef %conv23, ptr noundef %25, ptr noundef %27)
  store ptr %call24, ptr %zArg, align 8
  %28 = load ptr, ptr %zArg, align 8
  %cmp25 = icmp eq ptr %28, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end22
  %29 = load ptr, ptr %pOpt, align 8
  %pArray = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %pArray, align 8
  %31 = load ptr, ptr %pOpt, align 8
  %pWorker = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %pWorker, align 8
  %33 = load ptr, ptr %zArg, align 8
  %34 = load ptr, ptr %pOpt, align 8
  %zArgEnd29 = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %zArgEnd29, align 8
  %36 = load i32, ptr %need_value, align 4
  %37 = load ptr, ptr %pOpt, align 8
  %pCtx = getelementptr inbounds nuw %struct.getopt_long_opt, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %pCtx, align 8
  %39 = load ptr, ptr %zOpt, align 8
  call void @VmExtractOptArgValue(ptr noundef %30, ptr noundef %32, ptr noundef %33, ptr noundef %35, i32 noundef %36, ptr noundef %38, ptr noundef %39)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then16, %if.then2, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
declare hidden ptr @VmFindLongOpt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

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
