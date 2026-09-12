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
define hidden i32 @VmXMLErrorHandler(ptr noundef %zMessage, i32 noundef %iErrCode, ptr noundef %pToken, ptr noundef %pUserData) #0 {
entry:
  %zMessage.addr = alloca ptr, align 8
  %iErrCode.addr = alloca i32, align 4
  %pToken.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pEngine = alloca ptr, align 8
  store ptr %zMessage, ptr %zMessage.addr, align 8
  store i32 %iErrCode, ptr %iErrCode.addr, align 4
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pEngine, align 8
  %1 = load i32, ptr %iErrCode.addr, align 4
  %2 = load ptr, ptr %pEngine, align 8
  %iErrCode1 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %2, i32 0, i32 7
  store i32 %1, ptr %iErrCode1, align 8
  store ptr null, ptr %zMessage.addr, align 8
  %3 = load ptr, ptr %pToken.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pToken.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %nLine, align 4
  %6 = load ptr, ptr %pEngine, align 8
  %nLine2 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %6, i32 0, i32 9
  store i32 %5, ptr %nLine2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 -10
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
