; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extract_aux_data = type { ptr, i32, ptr, i32, i32, [1024 x i8] }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapWalk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_extract(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sAux = alloca %struct.extract_aux_data, align 8
  %pMap = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
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
  %call1 = call i32 @ph7_result_int(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %x, align 8
  store ptr %6, ptr %pMap, align 8
  %7 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %nEntry, align 4
  %cmp3 = icmp ult i32 %8, 1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_int(ptr noundef %9, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  call void @SyZero(ptr noundef %sAux, i32 noundef 32)
  %10 = load i32, ptr %nArg.addr, align 4
  %cmp7 = icmp sgt i32 %10, 1
  br i1 %cmp7, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %apArg.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %11, i64 1
  %12 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @ph7_value_to_int(ptr noundef %12)
  %iFlags = getelementptr inbounds nuw %struct.extract_aux_data, ptr %sAux, i32 0, i32 4
  store i32 %call10, ptr %iFlags, align 4
  %13 = load i32, ptr %nArg.addr, align 4
  %cmp11 = icmp sgt i32 %13, 2
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.then8
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 2
  %15 = load ptr, ptr %arrayidx13, align 8
  %Prefixlen = getelementptr inbounds nuw %struct.extract_aux_data, ptr %sAux, i32 0, i32 3
  %call14 = call ptr @ph7_value_to_string(ptr noundef %15, ptr noundef %Prefixlen)
  %zPrefix = getelementptr inbounds nuw %struct.extract_aux_data, ptr %sAux, i32 0, i32 2
  store ptr %call14, ptr %zPrefix, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  %16 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pVm, align 8
  %pVm17 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %sAux, i32 0, i32 0
  store ptr %17, ptr %pVm17, align 8
  %18 = load ptr, ptr %pMap, align 8
  %call18 = call i32 @PH7_HashmapWalk(ptr noundef %18, ptr noundef @VmExtractCallback, ptr noundef %sAux)
  %19 = load ptr, ptr %pCtx.addr, align 8
  %iCount = getelementptr inbounds nuw %struct.extract_aux_data, ptr %sAux, i32 0, i32 1
  %20 = load i32, ptr %iCount, align 8
  %call19 = call i32 @ph7_result_int(ptr noundef %19, i32 noundef %20)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then4, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmExtractCallback(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
