; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_private_data = type { ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_json_encode(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sJson = alloca %struct.json_private_data, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %nRecCount = getelementptr inbounds nuw %struct.json_private_data, ptr %sJson, i32 0, i32 3
  store i32 0, ptr %nRecCount, align 8
  %2 = load ptr, ptr %pCtx.addr, align 8
  %pCtx1 = getelementptr inbounds nuw %struct.json_private_data, ptr %sJson, i32 0, i32 0
  store ptr %2, ptr %pCtx1, align 8
  %isFirst = getelementptr inbounds nuw %struct.json_private_data, ptr %sJson, i32 0, i32 1
  store i32 1, ptr %isFirst, align 8
  %iFlags = getelementptr inbounds nuw %struct.json_private_data, ptr %sJson, i32 0, i32 2
  store i32 0, ptr %iFlags, align 4
  %3 = load i32, ptr %nArg.addr, align 4
  %cmp2 = icmp sgt i32 %3, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx, align 8
  %call3 = call i32 @ph7_value_is_int(ptr noundef %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then4, label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @ph7_value_to_int(ptr noundef %7)
  %iFlags7 = getelementptr inbounds nuw %struct.json_private_data, ptr %sJson, i32 0, i32 2
  store i32 %call6, ptr %iFlags7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @VmJsonEncode(ptr noundef %9, ptr noundef %sJson)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonEncode(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
