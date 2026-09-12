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
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_xml_get_current_column_number(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEngine = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %pToken = alloca ptr, align 8
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
  %call = call i32 @ph7_value_is_resource(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_resource(ptr noundef %5)
  store ptr %call3, ptr %pEngine, align 8
  %6 = load ptr, ptr %pEngine, align 8
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %7 = load ptr, ptr %pEngine, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %7, i32 0, i32 10
  %8 = load i32, ptr %nMagic, align 4
  %cmp6 = icmp ne i32 %8, -2061566894
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call i32 @ph7_result_bool(ptr noundef %9, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5
  %10 = load ptr, ptr %pEngine, align 8
  %sParser = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %10, i32 0, i32 2
  %sToken = getelementptr inbounds nuw %struct.SyXMLParser, ptr %sParser, i32 0, i32 3
  %call10 = call ptr @SySetPeekCurrentEntry(ptr noundef %sToken)
  store ptr %call10, ptr %pToken, align 8
  %11 = load ptr, ptr %pToken, align 8
  %cmp11 = icmp eq ptr %11, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_result_int(ptr noundef %12, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end9
  %13 = load ptr, ptr %pEngine, align 8
  %sParser15 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %13, i32 0, i32 2
  %sLex = getelementptr inbounds nuw %struct.SyXMLParser, ptr %sParser15, i32 0, i32 4
  %sStream = getelementptr inbounds nuw %struct.SyLex, ptr %sLex, i32 0, i32 0
  store ptr %sStream, ptr %pStream, align 8
  %14 = load ptr, ptr %pCtx.addr, align 8
  %15 = load ptr, ptr %pToken, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %15, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sData, i32 0, i32 0
  %16 = load ptr, ptr %zString, align 8
  %17 = load ptr, ptr %pStream, align 8
  %zInput = getelementptr inbounds nuw %struct.SyStream, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zInput, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %div = sdiv i64 %sub.ptr.sub, 80
  %call16 = call i32 @ph7_result_int64(ptr noundef %14, i64 noundef %div)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then7, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeekCurrentEntry(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
