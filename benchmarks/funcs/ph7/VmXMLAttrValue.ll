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

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @ph7_context_release_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @VmXMLAttrValue(ptr noundef %pEngine, ptr noundef %aAttr, i32 noundef %nAttr) #0 {
entry:
  %retval = alloca ptr, align 8
  %pEngine.addr = alloca ptr, align 8
  %aAttr.addr = alloca ptr, align 8
  %nAttr.addr = alloca i32, align 4
  %pArray = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pEngine, ptr %pEngine.addr, align 8
  store ptr %aAttr, ptr %aAttr.addr, align 8
  store i32 %nAttr, ptr %nAttr.addr, align 4
  %0 = load ptr, ptr %pEngine.addr, align 8
  %pCtx = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pCtx, align 8
  %call = call ptr @ph7_context_new_array(ptr noundef %1)
  store ptr %call, ptr %pArray, align 8
  %2 = load ptr, ptr %pArray, align 8
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
  %5 = load i32, ptr %nAttr.addr, align 4
  %cmp3 = icmp ugt i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end33

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %pEngine.addr, align 8
  %pCtx5 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pCtx5, align 8
  %call6 = call ptr @ph7_context_new_scalar(ptr noundef %7)
  store ptr %call6, ptr %pKey, align 8
  %8 = load ptr, ptr %pEngine.addr, align 8
  %pCtx7 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pCtx7, align 8
  %call8 = call ptr @ph7_context_new_scalar(ptr noundef %9)
  store ptr %call8, ptr %pValue, align 8
  %10 = load ptr, ptr %pKey, align 8
  %cmp9 = icmp eq ptr %10, null
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %11 = load ptr, ptr %pValue, align 8
  %cmp10 = icmp eq ptr %11, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %lor.lhs.false, %if.then4
  %12 = load ptr, ptr %pEngine.addr, align 8
  %pCtx12 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %pCtx12, align 8
  %call13 = call i32 @ph7_context_throw_error(ptr noundef %13, i32 noundef 1, ptr noundef @.str.536)
  store ptr null, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %14 = load i32, ptr %n, align 4
  %15 = load i32, ptr %nAttr.addr, align 4
  %cmp15 = icmp ult i32 %14, %15
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pKey, align 8
  %call16 = call i32 @ph7_value_reset_string_cursor(ptr noundef %16)
  %17 = load ptr, ptr %pValue, align 8
  %call17 = call i32 @ph7_value_reset_string_cursor(ptr noundef %17)
  %18 = load ptr, ptr %pKey, align 8
  %19 = load ptr, ptr %aAttr.addr, align 8
  %20 = load i32, ptr %n, align 4
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %19, i64 %idxprom
  %zString = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %arrayidx, i32 0, i32 0
  %21 = load ptr, ptr %zString, align 8
  %22 = load ptr, ptr %aAttr.addr, align 8
  %23 = load i32, ptr %n, align 4
  %idxprom18 = zext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %22, i64 %idxprom18
  %nByte = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %arrayidx19, i32 0, i32 1
  %24 = load i32, ptr %nByte, align 8
  %call20 = call i32 @ph7_value_string(ptr noundef %18, ptr noundef %21, i32 noundef %24)
  %25 = load ptr, ptr %pValue, align 8
  %26 = load ptr, ptr %aAttr.addr, align 8
  %27 = load i32, ptr %n, align 4
  %add = add i32 %27, 1
  %idxprom21 = zext i32 %add to i64
  %arrayidx22 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %26, i64 %idxprom21
  %zString23 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %arrayidx22, i32 0, i32 0
  %28 = load ptr, ptr %zString23, align 8
  %29 = load ptr, ptr %aAttr.addr, align 8
  %30 = load i32, ptr %n, align 4
  %add24 = add i32 %30, 1
  %idxprom25 = zext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %29, i64 %idxprom25
  %nByte27 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %arrayidx26, i32 0, i32 1
  %31 = load i32, ptr %nByte27, align 8
  %call28 = call i32 @ph7_value_string(ptr noundef %25, ptr noundef %28, i32 noundef %31)
  %32 = load ptr, ptr %pArray, align 8
  %33 = load ptr, ptr %pKey, align 8
  %34 = load ptr, ptr %pValue, align 8
  %call29 = call i32 @ph7_array_add_elem(ptr noundef %32, ptr noundef %33, ptr noundef %34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, ptr %n, align 4
  %add30 = add i32 %35, 2
  store i32 %add30, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %pEngine.addr, align 8
  %pCtx31 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %pCtx31, align 8
  %38 = load ptr, ptr %pKey, align 8
  call void @ph7_context_release_value(ptr noundef %37, ptr noundef %38)
  %39 = load ptr, ptr %pEngine.addr, align 8
  %pCtx32 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %39, i32 0, i32 1
  %40 = load ptr, ptr %pCtx32, align 8
  %41 = load ptr, ptr %pValue, align 8
  call void @ph7_context_release_value(ptr noundef %40, ptr noundef %41)
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.end
  %42 = load ptr, ptr %pArray, align 8
  store ptr %42, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end33, %if.then11, %if.then
  %43 = load ptr, ptr %retval, align 8
  ret ptr %43
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
