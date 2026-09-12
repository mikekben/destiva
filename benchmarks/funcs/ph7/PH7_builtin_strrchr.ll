; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strrchr(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zBlob = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %c = alloca i32, align 4
  %nOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  %zPattern = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nLen)
  store ptr %call1, ptr %zBlob, align 8
  store i32 0, ptr %c, align 4
  %4 = load i32, ptr %nLen, align 4
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %if.then3, label %if.else26

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @ph7_value_is_string(ptr noundef %6)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @ph7_value_to_string(ptr noundef %8, ptr noundef null)
  store ptr %call8, ptr %zPattern, align 8
  %9 = load ptr, ptr %zPattern, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx9, align 1
  %conv = sext i8 %10 to i32
  store i32 %conv, ptr %c, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then3
  %11 = load ptr, ptr %apArg.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %11, i64 1
  %12 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @ph7_value_to_int(ptr noundef %12)
  store i32 %call11, ptr %c, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then6
  %13 = load ptr, ptr %zBlob, align 8
  %14 = load i32, ptr %nLen, align 4
  %15 = load i32, ptr %c, align 4
  %call13 = call i32 @SyByteFind2(ptr noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %nOfft)
  store i32 %call13, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %16, 0
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call17 = call i32 @ph7_result_bool(ptr noundef %17, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  %18 = load ptr, ptr %pCtx.addr, align 8
  %19 = load ptr, ptr %zBlob, align 8
  %20 = load i32, ptr %nOfft, align 4
  %idxprom = zext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %19, i64 %idxprom
  %21 = load ptr, ptr %zBlob, align 8
  %22 = load i32, ptr %nLen, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %21, i64 %idxprom20
  %23 = load ptr, ptr %zBlob, align 8
  %24 = load i32, ptr %nOfft, align 4
  %idxprom22 = zext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %23, i64 %idxprom22
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx21 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i32
  %call25 = call i32 @ph7_result_string(ptr noundef %18, ptr noundef %arrayidx19, i32 noundef %conv24)
  br label %if.end28

if.else26:                                        ; preds = %if.end
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call27 = call i32 @ph7_result_bool(ptr noundef %25, i32 noundef 0)
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.end18
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then16, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyByteFind2(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
