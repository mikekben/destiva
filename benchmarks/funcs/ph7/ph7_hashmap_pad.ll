; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_pad(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %nEntry = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_array(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_context_new_array(ptr noundef %4)
  store ptr %call2, ptr %pArray, align 8
  %5 = load ptr, ptr %pArray, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_null(ptr noundef %6)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx7, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %x, align 8
  store ptr %9, ptr %pMap, align 8
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @ph7_value_to_int(ptr noundef %11)
  store i32 %call9, ptr %nEntry, align 4
  %12 = load i32, ptr %nEntry, align 4
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %if.then11, label %if.else28

if.then11:                                        ; preds = %if.end6
  %13 = load i32, ptr %nEntry, align 4
  %sub = sub nsw i32 0, %13
  store i32 %sub, ptr %nEntry, align 4
  %14 = load i32, ptr %nEntry, align 4
  %cmp12 = icmp sgt i32 %14, 1048576
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  store i32 1048576, ptr %nEntry, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then11
  %15 = load i32, ptr %nEntry, align 4
  %16 = load ptr, ptr %pMap, align 8
  %nEntry15 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %16, i32 0, i32 6
  %17 = load i32, ptr %nEntry15, align 4
  %cmp16 = icmp sgt i32 %15, %17
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %18 = load ptr, ptr %pMap, align 8
  %nEntry18 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %18, i32 0, i32 6
  %19 = load i32, ptr %nEntry18, align 4
  %20 = load i32, ptr %nEntry, align 4
  %sub19 = sub nsw i32 %20, %19
  store i32 %sub19, ptr %nEntry, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then17
  %21 = load i32, ptr %nEntry, align 4
  %cmp20 = icmp sgt i32 %21, 0
  br i1 %cmp20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %pArray, align 8
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %23, i64 2
  %24 = load ptr, ptr %arrayidx21, align 8
  %call22 = call i32 @ph7_array_add_elem(ptr noundef %22, ptr noundef null, ptr noundef %24)
  %25 = load i32, ptr %nEntry, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %nEntry, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %pMap, align 8
  %27 = load ptr, ptr %pArray, align 8
  %x23 = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %x23, align 8
  %call24 = call i32 @HashmapMerge(ptr noundef %26, ptr noundef %28)
  br label %if.end27

if.else:                                          ; preds = %if.end14
  %29 = load ptr, ptr %pMap, align 8
  %30 = load ptr, ptr %pArray, align 8
  %x25 = getelementptr inbounds nuw %struct.ph7_value, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %x25, align 8
  %call26 = call i32 @PH7_HashmapDup(ptr noundef %29, ptr noundef %31)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %while.end
  br label %if.end53

if.else28:                                        ; preds = %if.end6
  %32 = load i32, ptr %nEntry, align 4
  %cmp29 = icmp sgt i32 %32, 0
  br i1 %cmp29, label %if.then30, label %if.end52

if.then30:                                        ; preds = %if.else28
  %33 = load i32, ptr %nEntry, align 4
  %cmp31 = icmp sgt i32 %33, 1048576
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then30
  store i32 1048576, ptr %nEntry, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then30
  %34 = load i32, ptr %nEntry, align 4
  %35 = load ptr, ptr %pMap, align 8
  %nEntry34 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %nEntry34, align 4
  %cmp35 = icmp sgt i32 %34, %36
  br i1 %cmp35, label %if.then36, label %if.else48

if.then36:                                        ; preds = %if.end33
  %37 = load ptr, ptr %pMap, align 8
  %nEntry37 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %37, i32 0, i32 6
  %38 = load i32, ptr %nEntry37, align 4
  %39 = load i32, ptr %nEntry, align 4
  %sub38 = sub nsw i32 %39, %38
  store i32 %sub38, ptr %nEntry, align 4
  %40 = load ptr, ptr %pMap, align 8
  %41 = load ptr, ptr %pArray, align 8
  %x39 = getelementptr inbounds nuw %struct.ph7_value, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %x39, align 8
  %call40 = call i32 @HashmapMerge(ptr noundef %40, ptr noundef %42)
  br label %while.cond41

while.cond41:                                     ; preds = %while.body43, %if.then36
  %43 = load i32, ptr %nEntry, align 4
  %cmp42 = icmp sgt i32 %43, 0
  br i1 %cmp42, label %while.body43, label %while.end47

while.body43:                                     ; preds = %while.cond41
  %44 = load ptr, ptr %pArray, align 8
  %45 = load ptr, ptr %apArg.addr, align 8
  %arrayidx44 = getelementptr inbounds ptr, ptr %45, i64 2
  %46 = load ptr, ptr %arrayidx44, align 8
  %call45 = call i32 @ph7_array_add_elem(ptr noundef %44, ptr noundef null, ptr noundef %46)
  %47 = load i32, ptr %nEntry, align 4
  %dec46 = add nsw i32 %47, -1
  store i32 %dec46, ptr %nEntry, align 4
  br label %while.cond41, !llvm.loop !8

while.end47:                                      ; preds = %while.cond41
  br label %if.end51

if.else48:                                        ; preds = %if.end33
  %48 = load ptr, ptr %pMap, align 8
  %49 = load ptr, ptr %pArray, align 8
  %x49 = getelementptr inbounds nuw %struct.ph7_value, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %x49, align 8
  %call50 = call i32 @PH7_HashmapDup(ptr noundef %48, ptr noundef %50)
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %while.end47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.else28
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end27
  %51 = load ptr, ptr %pCtx.addr, align 8
  %52 = load ptr, ptr %pArray, align 8
  %call54 = call i32 @ph7_result_value(ptr noundef %51, ptr noundef %52)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then4, %if.then
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapMerge(ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
