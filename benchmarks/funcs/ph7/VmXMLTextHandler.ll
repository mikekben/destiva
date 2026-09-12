; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_xml_engine = type { ptr, ptr, %struct.SyXMLParser, [10 x %struct.ph7_value], %struct.ph7_value, i32, %struct.SyBlob, i32, i32, i32, i32 }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local void @ph7_context_release_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmIsCallable(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmXMLTextHandler(ptr noundef %pText, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pText.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pEngine = alloca ptr, align 8
  %pCallback = alloca ptr, align 8
  %pData = alloca ptr, align 8
  store ptr %pText, ptr %pText.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pEngine, align 8
  %1 = load ptr, ptr %pEngine, align 8
  %aCB = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %1, i32 0, i32 3
  %arrayidx = getelementptr inbounds [10 x %struct.ph7_value], ptr %aCB, i64 0, i64 2
  store ptr %arrayidx, ptr %pCallback, align 8
  %2 = load ptr, ptr %pEngine, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pVm, align 8
  %4 = load ptr, ptr %pCallback, align 8
  %call = call i32 @PH7_VmIsCallable(ptr noundef %3, ptr noundef %4, i32 noundef 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pEngine, align 8
  %6 = load ptr, ptr %pText.addr, align 8
  %call1 = call ptr @VmXMLValue(ptr noundef %5, ptr noundef %6, ptr noundef null)
  store ptr %call1, ptr %pData, align 8
  %7 = load ptr, ptr %pData, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load ptr, ptr %pEngine, align 8
  %pVm4 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVm4, align 8
  %10 = load ptr, ptr %pCallback, align 8
  %11 = load ptr, ptr %pEngine, align 8
  %sParserValue = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pData, align 8
  %call5 = call i32 (ptr, ptr, ptr, ...) @PH7_VmCallUserFunctionAp(ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef %sParserValue, ptr noundef %12, i32 noundef 0)
  %13 = load ptr, ptr %pEngine, align 8
  %pCtx = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %pCtx, align 8
  %15 = load ptr, ptr %pData, align 8
  call void @ph7_context_release_value(ptr noundef %14, ptr noundef %15)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden ptr @VmXMLValue(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunctionAp(ptr noundef, ptr noundef, ptr noundef, ...) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
