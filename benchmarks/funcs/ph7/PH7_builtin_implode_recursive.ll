; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.implode_data = type { ptr, i32, ptr, i32, i32, i32 }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_walk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_implode_recursive(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %imp_data = alloca %struct.implode_data, align 8
  %i = alloca i32, align 4
  %zData = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 1, ptr %i, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCtx.addr, align 8
  %pCtx1 = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 0
  store ptr %2, ptr %pCtx1, align 8
  %bRecursive = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 1
  store i32 1, ptr %bRecursive, align 8
  %bFirst = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 4
  store i32 1, ptr %bFirst, align 4
  %nRecCount = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 5
  store i32 0, ptr %nRecCount, align 8
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 @ph7_value_is_array(ptr noundef %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx4, align 8
  %nSeplen = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 3
  %call5 = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %nSeplen)
  %zSep = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 2
  store ptr %call5, ptr %zSep, align 8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %zSep6 = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 2
  store ptr null, ptr %zSep6, align 8
  %nSeplen7 = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 3
  store i32 0, ptr %nSeplen7, align 8
  store i32 0, ptr %i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_string(ptr noundef %7, ptr noundef @.str.4, i32 noundef 0)
  br label %while.cond

while.cond:                                       ; preds = %if.end39, %if.end8
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %nArg.addr, align 4
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %apArg.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %10, i64 %idxprom
  %12 = load ptr, ptr %arrayidx11, align 8
  %call12 = call i32 @ph7_value_is_array(ptr noundef %12)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %while.body
  %13 = load ptr, ptr %apArg.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %13, i64 %idxprom15
  %15 = load ptr, ptr %arrayidx16, align 8
  %call17 = call i32 @ph7_array_walk(ptr noundef %15, ptr noundef @implode_callback, ptr noundef %imp_data)
  br label %if.end39

if.else18:                                        ; preds = %while.body
  %16 = load ptr, ptr %apArg.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %16, i64 %idxprom19
  %18 = load ptr, ptr %arrayidx20, align 8
  %call21 = call ptr @ph7_value_to_string(ptr noundef %18, ptr noundef %nLen)
  store ptr %call21, ptr %zData, align 8
  %19 = load i32, ptr %nLen, align 4
  %cmp22 = icmp sgt i32 %19, 0
  br i1 %cmp22, label %if.then23, label %if.end38

if.then23:                                        ; preds = %if.else18
  %nSeplen24 = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 3
  %20 = load i32, ptr %nSeplen24, align 8
  %cmp25 = icmp sgt i32 %20, 0
  br i1 %cmp25, label %if.then26, label %if.end36

if.then26:                                        ; preds = %if.then23
  %bFirst27 = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 4
  %21 = load i32, ptr %bFirst27, align 4
  %tobool28 = icmp ne i32 %21, 0
  br i1 %tobool28, label %if.else33, label %if.then29

if.then29:                                        ; preds = %if.then26
  %22 = load ptr, ptr %pCtx.addr, align 8
  %zSep30 = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 2
  %23 = load ptr, ptr %zSep30, align 8
  %nSeplen31 = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 3
  %24 = load i32, ptr %nSeplen31, align 8
  %call32 = call i32 @ph7_result_string(ptr noundef %22, ptr noundef %23, i32 noundef %24)
  br label %if.end35

if.else33:                                        ; preds = %if.then26
  %bFirst34 = getelementptr inbounds nuw %struct.implode_data, ptr %imp_data, i32 0, i32 4
  store i32 0, ptr %bFirst34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then29
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then23
  %25 = load ptr, ptr %pCtx.addr, align 8
  %26 = load ptr, ptr %zData, align 8
  %27 = load i32, ptr %nLen, align 4
  %call37 = call i32 @ph7_result_string(ptr noundef %25, ptr noundef %26, i32 noundef %27)
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %if.else18
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then14
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @implode_callback(ptr noundef, ptr noundef, ptr noundef) #0

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
