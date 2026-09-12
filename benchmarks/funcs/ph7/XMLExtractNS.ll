; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyXMLRawStr = type { ptr, i32, i32 }
%struct.SyXMLRawStrNS = type { ptr, i32, i32, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyHashEntry = type { ptr, i32, ptr }

@.str.589 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.590 = external hidden unnamed_addr constant [69 x i8], align 1
@.str.591 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.592 = external hidden unnamed_addr constant [32 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyByteFind(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @XMLExtractNS(ptr noundef %pParse, ptr noundef %pToken, ptr noundef %pTag, ptr noundef %pnsUri) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %pTag.addr = alloca ptr, align 8
  %pnsUri.addr = alloca ptr, align 8
  %pUri = alloca ptr, align 8
  %sPrefix = alloca %struct.SyXMLRawStr, align 8
  %pEntry = alloca ptr, align 8
  %nOfft = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pTag, ptr %pTag.addr, align 8
  store ptr %pnsUri, ptr %pnsUri.addr, align 8
  %0 = load ptr, ptr %pTag.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %zString, align 8
  %2 = load ptr, ptr %pTag.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nByte, align 8
  %call = call i32 @SyByteFind(ptr noundef %1, i32 noundef %3, i32 noundef 58, ptr noundef %nOfft)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pParse.addr, align 8
  %hns = getelementptr inbounds nuw %struct.SyXMLParser, ptr %5, i32 0, i32 2
  %call1 = call ptr @SyHashGet(ptr noundef %hns, ptr noundef @.str.589, i32 noundef 7)
  store ptr %call1, ptr %pEntry, align 8
  %6 = load ptr, ptr %pEntry, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pUserData, align 8
  store ptr %8, ptr %pUri, align 8
  %9 = load ptr, ptr %pUri, align 8
  %zString3 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zString3, align 8
  %11 = load ptr, ptr %pnsUri.addr, align 8
  %zString4 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %11, i32 0, i32 0
  store ptr %10, ptr %zString4, align 8
  %12 = load ptr, ptr %pUri, align 8
  %nByte5 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nByte5, align 8
  %14 = load ptr, ptr %pnsUri.addr, align 8
  %nByte6 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %14, i32 0, i32 1
  store i32 %13, ptr %nByte6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %entry
  %15 = load i32, ptr %nOfft, align 4
  %cmp8 = icmp ult i32 %15, 1
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end7
  %16 = load ptr, ptr %pParse.addr, align 8
  %xError = getelementptr inbounds nuw %struct.SyXMLParser, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %xError, align 8
  %tobool10 = icmp ne ptr %17, null
  br i1 %tobool10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.then9
  %18 = load ptr, ptr %pParse.addr, align 8
  %xError12 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %18, i32 0, i32 11
  %19 = load ptr, ptr %xError12, align 8
  %20 = load ptr, ptr %pToken.addr, align 8
  %21 = load ptr, ptr %pParse.addr, align 8
  %pUserData13 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pUserData13, align 8
  %call14 = call i32 %19(ptr noundef @.str.590, i32 noundef 3, ptr noundef %20, ptr noundef %22)
  store i32 %call14, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %23, -10
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then11
  store i32 -10, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.then11
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then9
  store i32 -12, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end7
  %24 = load ptr, ptr %pTag.addr, align 8
  %zString20 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zString20, align 8
  %zString21 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sPrefix, i32 0, i32 0
  store ptr %25, ptr %zString21, align 8
  %26 = load i32, ptr %nOfft, align 4
  %nByte22 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sPrefix, i32 0, i32 1
  store i32 %26, ptr %nByte22, align 8
  %27 = load ptr, ptr %pTag.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %nLine, align 4
  %nLine23 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sPrefix, i32 0, i32 2
  store i32 %28, ptr %nLine23, align 4
  %29 = load i32, ptr %nOfft, align 4
  %add = add i32 %29, 1
  %30 = load ptr, ptr %pTag.addr, align 8
  %zString24 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %zString24, align 8
  %idx.ext = zext i32 %add to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %31, i64 %idx.ext
  store ptr %add.ptr, ptr %zString24, align 8
  %32 = load i32, ptr %nOfft, align 4
  %33 = load ptr, ptr %pTag.addr, align 8
  %nByte25 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %nByte25, align 8
  %sub = sub i32 %34, %32
  store i32 %sub, ptr %nByte25, align 8
  %35 = load ptr, ptr %pTag.addr, align 8
  %nByte26 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %nByte26, align 8
  %cmp27 = icmp ult i32 %36, 1
  br i1 %cmp27, label %if.then28, label %if.end39

if.then28:                                        ; preds = %if.end19
  %37 = load ptr, ptr %pParse.addr, align 8
  %xError29 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %37, i32 0, i32 11
  %38 = load ptr, ptr %xError29, align 8
  %tobool30 = icmp ne ptr %38, null
  br i1 %tobool30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.then28
  %39 = load ptr, ptr %pParse.addr, align 8
  %xError32 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %39, i32 0, i32 11
  %40 = load ptr, ptr %xError32, align 8
  %41 = load ptr, ptr %pToken.addr, align 8
  %42 = load ptr, ptr %pParse.addr, align 8
  %pUserData33 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %pUserData33, align 8
  %call34 = call i32 %40(ptr noundef @.str.591, i32 noundef 3, ptr noundef %41, ptr noundef %43)
  store i32 %call34, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp35 = icmp eq i32 %44, -10
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then31
  store i32 -10, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.then31
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then28
  store i32 -12, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end19
  %45 = load ptr, ptr %pParse.addr, align 8
  %hns40 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %45, i32 0, i32 2
  %zString41 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sPrefix, i32 0, i32 0
  %46 = load ptr, ptr %zString41, align 8
  %nByte42 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sPrefix, i32 0, i32 1
  %47 = load i32, ptr %nByte42, align 8
  %call43 = call ptr @SyHashGet(ptr noundef %hns40, ptr noundef %46, i32 noundef %47)
  store ptr %call43, ptr %pEntry, align 8
  %48 = load ptr, ptr %pEntry, align 8
  %cmp44 = icmp eq ptr %48, null
  br i1 %cmp44, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.end39
  %49 = load ptr, ptr %pParse.addr, align 8
  %xError46 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %49, i32 0, i32 11
  %50 = load ptr, ptr %xError46, align 8
  %tobool47 = icmp ne ptr %50, null
  br i1 %tobool47, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.then45
  %51 = load ptr, ptr %pParse.addr, align 8
  %xError49 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %51, i32 0, i32 11
  %52 = load ptr, ptr %xError49, align 8
  %53 = load ptr, ptr %pToken.addr, align 8
  %54 = load ptr, ptr %pParse.addr, align 8
  %pUserData50 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %pUserData50, align 8
  %call51 = call i32 %52(ptr noundef @.str.592, i32 noundef 3, ptr noundef %53, ptr noundef %55)
  store i32 %call51, ptr %rc, align 4
  %56 = load i32, ptr %rc, align 4
  %cmp52 = icmp eq i32 %56, -10
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then48
  store i32 -10, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.then48
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then45
  store i32 -12, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end39
  %57 = load ptr, ptr %pEntry, align 8
  %pUserData57 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %pUserData57, align 8
  store ptr %58, ptr %pUri, align 8
  %59 = load ptr, ptr %pUri, align 8
  %zString58 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %zString58, align 8
  %61 = load ptr, ptr %pnsUri.addr, align 8
  %zString59 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %61, i32 0, i32 0
  store ptr %60, ptr %zString59, align 8
  %62 = load ptr, ptr %pUri, align 8
  %nByte60 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %62, i32 0, i32 1
  %63 = load i32, ptr %nByte60, align 8
  %64 = load ptr, ptr %pnsUri.addr, align 8
  %nByte61 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %64, i32 0, i32 1
  store i32 %63, ptr %nByte61, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.end55, %if.then53, %if.end38, %if.then36, %if.end18, %if.then16, %if.end
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
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
