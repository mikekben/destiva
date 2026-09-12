; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyXMLRawStr = type { ptr, i32, i32 }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyXMLRawStrNS = type { ptr, i32, i32, %struct.SySet }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.589 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.600 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.601 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPop(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashLastEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @XMLProcessNamesSpace(ptr noundef %pParse, ptr noundef %pTag, ptr noundef %pToken, ptr noundef %pAttr) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTag.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %pAttr.addr = alloca ptr, align 8
  %pPrefix = alloca ptr, align 8
  %pUri = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pDup = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTag, ptr %pTag.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pAttr, ptr %pAttr.addr, align 8
  %0 = load ptr, ptr %pAttr.addr, align 8
  %call = call ptr @SySetPeek(ptr noundef %0)
  store ptr %call, ptr %pUri, align 8
  %1 = load ptr, ptr %pAttr.addr, align 8
  %2 = load ptr, ptr %pAttr.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %nUsed, align 8
  %sub = sub i32 %3, 2
  %call1 = call ptr @SySetAt(ptr noundef %1, i32 noundef %sub)
  store ptr %call1, ptr %pPrefix, align 8
  %4 = load ptr, ptr %pPrefix, align 8
  %nByte = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nByte, align 8
  %conv = zext i32 %5 to i64
  %cmp = icmp eq i64 %conv, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pPrefix, align 8
  %nByte3 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %6, i32 0, i32 1
  store i32 0, ptr %nByte3, align 8
  %7 = load ptr, ptr %pPrefix, align 8
  %zString = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %7, i32 0, i32 0
  store ptr @.str.4, ptr %zString, align 8
  br label %if.end31

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %pPrefix, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nByte4, align 8
  %conv5 = zext i32 %9 to i64
  %sub6 = sub i64 %conv5, 5
  %conv7 = trunc i64 %sub6 to i32
  store i32 %conv7, ptr %nByte4, align 8
  %10 = load ptr, ptr %pPrefix, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zString8, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %11, i64 5
  store ptr %add.ptr, ptr %zString8, align 8
  %12 = load ptr, ptr %pPrefix, align 8
  %zString9 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %zString9, align 8
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx, align 1
  %conv10 = sext i8 %14 to i32
  %cmp11 = icmp ne i32 %conv10, 58
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %15 = load ptr, ptr %pPrefix, align 8
  %nByte14 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nByte14, align 8
  %dec = add i32 %16, -1
  store i32 %dec, ptr %nByte14, align 8
  %17 = load ptr, ptr %pPrefix, align 8
  %zString15 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zString15, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %zString15, align 8
  %19 = load ptr, ptr %pPrefix, align 8
  %nByte16 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nByte16, align 8
  %cmp17 = icmp ult i32 %20, 1
  br i1 %cmp17, label %if.then19, label %if.end30

if.then19:                                        ; preds = %if.end
  %21 = load ptr, ptr %pParse.addr, align 8
  %xError = getelementptr inbounds nuw %struct.SyXMLParser, ptr %21, i32 0, i32 11
  %22 = load ptr, ptr %xError, align 8
  %tobool = icmp ne ptr %22, null
  br i1 %tobool, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.then19
  %23 = load ptr, ptr %pParse.addr, align 8
  %xError21 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %23, i32 0, i32 11
  %24 = load ptr, ptr %xError21, align 8
  %25 = load ptr, ptr %pToken.addr, align 8
  %26 = load ptr, ptr %pParse.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyXMLParser, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %pUserData, align 8
  %call22 = call i32 %24(ptr noundef @.str.600, i32 noundef 3, ptr noundef %25, ptr noundef %27)
  store i32 %call22, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  %cmp23 = icmp eq i32 %28, -10
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then20
  store i32 -10, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then19
  %29 = load ptr, ptr %pAttr.addr, align 8
  %call28 = call ptr @SySetPop(ptr noundef %29)
  %30 = load ptr, ptr %pAttr.addr, align 8
  %call29 = call ptr @SySetPop(ptr noundef %30)
  store i32 -12, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  %31 = load ptr, ptr %pParse.addr, align 8
  %xNameSpace = getelementptr inbounds nuw %struct.SyXMLParser, ptr %31, i32 0, i32 14
  %32 = load ptr, ptr %xNameSpace, align 8
  %tobool32 = icmp ne ptr %32, null
  br i1 %tobool32, label %if.then33, label %if.end41

if.then33:                                        ; preds = %if.end31
  %33 = load ptr, ptr %pParse.addr, align 8
  %xNameSpace34 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %33, i32 0, i32 14
  %34 = load ptr, ptr %xNameSpace34, align 8
  %35 = load ptr, ptr %pPrefix, align 8
  %36 = load ptr, ptr %pUri, align 8
  %37 = load ptr, ptr %pParse.addr, align 8
  %pUserData35 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %pUserData35, align 8
  %call36 = call i32 %34(ptr noundef %35, ptr noundef %36, ptr noundef %38)
  store i32 %call36, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %cmp37 = icmp eq i32 %39, -10
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then33
  store i32 -10, ptr %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.then33
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end31
  %40 = load ptr, ptr %pParse.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyXMLParser, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pAllocator, align 8
  %call42 = call ptr @SyMemBackendAlloc(ptr noundef %41, i32 noundef 16)
  store ptr %call42, ptr %pDup, align 8
  %42 = load ptr, ptr %pDup, align 8
  %cmp43 = icmp eq ptr %42, null
  br i1 %cmp43, label %if.then45, label %if.end53

if.then45:                                        ; preds = %if.end41
  %43 = load ptr, ptr %pParse.addr, align 8
  %xError46 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %43, i32 0, i32 11
  %44 = load ptr, ptr %xError46, align 8
  %tobool47 = icmp ne ptr %44, null
  br i1 %tobool47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.then45
  %45 = load ptr, ptr %pParse.addr, align 8
  %xError49 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %45, i32 0, i32 11
  %46 = load ptr, ptr %xError49, align 8
  %47 = load ptr, ptr %pToken.addr, align 8
  %48 = load ptr, ptr %pParse.addr, align 8
  %pUserData50 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %pUserData50, align 8
  %call51 = call i32 %46(ptr noundef @.str.601, i32 noundef 2, ptr noundef %47, ptr noundef %49)
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.then45
  store i32 -10, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end41
  %50 = load ptr, ptr %pDup, align 8
  %51 = load ptr, ptr %pUri, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %50, ptr align 8 %51, i64 16, i1 false)
  %52 = load ptr, ptr %pPrefix, align 8
  %nByte54 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %nByte54, align 8
  %cmp55 = icmp eq i32 %53, 0
  br i1 %cmp55, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end53
  %54 = load ptr, ptr %pPrefix, align 8
  %zString58 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %54, i32 0, i32 0
  store ptr @.str.589, ptr %zString58, align 8
  %55 = load ptr, ptr %pPrefix, align 8
  %nByte59 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %55, i32 0, i32 1
  store i32 7, ptr %nByte59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end53
  %56 = load ptr, ptr %pParse.addr, align 8
  %hns = getelementptr inbounds nuw %struct.SyXMLParser, ptr %56, i32 0, i32 2
  %57 = load ptr, ptr %pPrefix, align 8
  %zString61 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %zString61, align 8
  %59 = load ptr, ptr %pPrefix, align 8
  %nByte62 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %nByte62, align 8
  %61 = load ptr, ptr %pDup, align 8
  %call63 = call i32 @SyHashInsert(ptr noundef %hns, ptr noundef %58, i32 noundef %60, ptr noundef %61)
  %62 = load ptr, ptr %pParse.addr, align 8
  %hns64 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %62, i32 0, i32 2
  %call65 = call ptr @SyHashLastEntry(ptr noundef %hns64)
  store ptr %call65, ptr %pEntry, align 8
  %63 = load ptr, ptr %pTag.addr, align 8
  %sNSset = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %63, i32 0, i32 3
  %call66 = call i32 @SySetPut(ptr noundef %sNSset, ptr noundef %pEntry)
  %64 = load ptr, ptr %pAttr.addr, align 8
  %call67 = call ptr @SySetPop(ptr noundef %64)
  %65 = load ptr, ptr %pAttr.addr, align 8
  %call68 = call ptr @SySetPop(ptr noundef %65)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end60, %if.end52, %if.then39, %if.end27, %if.then25, %if.then13
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
