; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @SyXMLParserSetEventHandler(ptr noundef %pParser, ptr noundef %pUserData, ptr noundef %xStartTag, ptr noundef %xRaw, ptr noundef %xErr, ptr noundef %xStartDoc, ptr noundef %xEndTag, ptr noundef %xPi, ptr noundef %xEndDoc, ptr noundef %xDoctype, ptr noundef %xNameSpace, ptr noundef %xNameSpaceEnd) #0 {
entry:
  %pParser.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %xStartTag.addr = alloca ptr, align 8
  %xRaw.addr = alloca ptr, align 8
  %xErr.addr = alloca ptr, align 8
  %xStartDoc.addr = alloca ptr, align 8
  %xEndTag.addr = alloca ptr, align 8
  %xPi.addr = alloca ptr, align 8
  %xEndDoc.addr = alloca ptr, align 8
  %xDoctype.addr = alloca ptr, align 8
  %xNameSpace.addr = alloca ptr, align 8
  %xNameSpaceEnd.addr = alloca ptr, align 8
  store ptr %pParser, ptr %pParser.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %xStartTag, ptr %xStartTag.addr, align 8
  store ptr %xRaw, ptr %xRaw.addr, align 8
  store ptr %xErr, ptr %xErr.addr, align 8
  store ptr %xStartDoc, ptr %xStartDoc.addr, align 8
  store ptr %xEndTag, ptr %xEndTag.addr, align 8
  store ptr %xPi, ptr %xPi.addr, align 8
  store ptr %xEndDoc, ptr %xEndDoc.addr, align 8
  store ptr %xDoctype, ptr %xDoctype.addr, align 8
  store ptr %xNameSpace, ptr %xNameSpace.addr, align 8
  store ptr %xNameSpaceEnd, ptr %xNameSpaceEnd.addr, align 8
  %0 = load ptr, ptr %xErr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %xErr.addr, align 8
  %2 = load ptr, ptr %pParser.addr, align 8
  %xError = getelementptr inbounds nuw %struct.SyXMLParser, ptr %2, i32 0, i32 11
  store ptr %1, ptr %xError, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %xStartDoc.addr, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %xStartDoc.addr, align 8
  %5 = load ptr, ptr %pParser.addr, align 8
  %xStartDoc3 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %5, i32 0, i32 12
  store ptr %4, ptr %xStartDoc3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %xStartTag.addr, align 8
  %tobool5 = icmp ne ptr %6, null
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %7 = load ptr, ptr %xStartTag.addr, align 8
  %8 = load ptr, ptr %pParser.addr, align 8
  %xStartTag7 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %8, i32 0, i32 6
  store ptr %7, ptr %xStartTag7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %9 = load ptr, ptr %xRaw.addr, align 8
  %tobool9 = icmp ne ptr %9, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %10 = load ptr, ptr %xRaw.addr, align 8
  %11 = load ptr, ptr %pParser.addr, align 8
  %xRaw11 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %11, i32 0, i32 8
  store ptr %10, ptr %xRaw11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8
  %12 = load ptr, ptr %xEndTag.addr, align 8
  %tobool13 = icmp ne ptr %12, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %13 = load ptr, ptr %xEndTag.addr, align 8
  %14 = load ptr, ptr %pParser.addr, align 8
  %xEndTag15 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %14, i32 0, i32 7
  store ptr %13, ptr %xEndTag15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12
  %15 = load ptr, ptr %xPi.addr, align 8
  %tobool17 = icmp ne ptr %15, null
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %16 = load ptr, ptr %xPi.addr, align 8
  %17 = load ptr, ptr %pParser.addr, align 8
  %xPi19 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %17, i32 0, i32 10
  store ptr %16, ptr %xPi19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %18 = load ptr, ptr %xEndDoc.addr, align 8
  %tobool21 = icmp ne ptr %18, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %19 = load ptr, ptr %xEndDoc.addr, align 8
  %20 = load ptr, ptr %pParser.addr, align 8
  %xEndDoc23 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %20, i32 0, i32 13
  store ptr %19, ptr %xEndDoc23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  %21 = load ptr, ptr %xDoctype.addr, align 8
  %tobool25 = icmp ne ptr %21, null
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end24
  %22 = load ptr, ptr %xDoctype.addr, align 8
  %23 = load ptr, ptr %pParser.addr, align 8
  %xDoctype27 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %23, i32 0, i32 9
  store ptr %22, ptr %xDoctype27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24
  %24 = load ptr, ptr %xNameSpace.addr, align 8
  %tobool29 = icmp ne ptr %24, null
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end28
  %25 = load ptr, ptr %xNameSpace.addr, align 8
  %26 = load ptr, ptr %pParser.addr, align 8
  %xNameSpace31 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %26, i32 0, i32 14
  store ptr %25, ptr %xNameSpace31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28
  %27 = load ptr, ptr %xNameSpaceEnd.addr, align 8
  %tobool33 = icmp ne ptr %27, null
  br i1 %tobool33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  %28 = load ptr, ptr %xNameSpaceEnd.addr, align 8
  %29 = load ptr, ptr %pParser.addr, align 8
  %xNameSpaceEnd35 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %29, i32 0, i32 15
  store ptr %28, ptr %xNameSpaceEnd35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32
  %30 = load ptr, ptr %pUserData.addr, align 8
  %31 = load ptr, ptr %pParser.addr, align 8
  %pUserData37 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %31, i32 0, i32 1
  store ptr %30, ptr %pUserData37, align 8
  ret i32 0
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
