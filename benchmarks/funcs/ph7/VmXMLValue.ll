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
%struct.SyXMLRawStr = type { ptr, i32, i32 }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.579 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden ptr @VmXMLValue(ptr noundef %pEngine, ptr noundef %pXML, ptr noundef %pNsUri) #0 {
entry:
  %retval = alloca ptr, align 8
  %pEngine.addr = alloca ptr, align 8
  %pXML.addr = alloca ptr, align 8
  %pNsUri.addr = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  store ptr %pEngine, ptr %pEngine.addr, align 8
  store ptr %pXML, ptr %pXML.addr, align 8
  store ptr %pNsUri, ptr %pNsUri.addr, align 8
  %0 = load ptr, ptr %pEngine.addr, align 8
  %pCtx = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pCtx, align 8
  %call = call ptr @ph7_context_new_scalar(ptr noundef %1)
  store ptr %call, ptr %pValue, align 8
  %2 = load ptr, ptr %pValue, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pEngine.addr, align 8
  %pCtx1 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pCtx1, align 8
  %call2 = call i32 @ph7_context_throw_error(ptr noundef %4, i32 noundef 1, ptr noundef @.str.536)
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pNsUri.addr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %pNsUri.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nByte, align 8
  %cmp3 = icmp ugt i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %pValue, align 8
  %9 = load ptr, ptr %pNsUri.addr, align 8
  %nByte5 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %nByte5, align 8
  %11 = load ptr, ptr %pNsUri.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %zString, align 8
  %13 = load ptr, ptr %pEngine.addr, align 8
  %ns_sep = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %ns_sep, align 8
  %call6 = call i32 (ptr, ptr, ...) @ph7_value_string_format(ptr noundef %8, ptr noundef @.str.579, i32 noundef %10, ptr noundef %12, i32 noundef %14)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %15 = load ptr, ptr %pValue, align 8
  %16 = load ptr, ptr %pXML.addr, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %zString8, align 8
  %18 = load ptr, ptr %pXML.addr, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nByte9, align 8
  %call10 = call i32 @ph7_value_string(ptr noundef %15, ptr noundef %17, i32 noundef %19)
  %20 = load ptr, ptr %pValue, align 8
  store ptr %20, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %21 = load ptr, ptr %retval, align 8
  ret ptr %21
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
