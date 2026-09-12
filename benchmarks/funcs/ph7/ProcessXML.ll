; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyXMLRawStrNS = type { ptr, i32, i32, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyXMLRawStr = type { ptr, i32, i32 }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

@.str.580 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.581 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.582 = external hidden unnamed_addr constant [87 x i8], align 1
@.str.583 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.584 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.585 = external hidden unnamed_addr constant [67 x i8], align 1
@.str.586 = external hidden unnamed_addr constant [20 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ProcessXML(ptr noundef %pParse, ptr noundef %pTagStack, ptr noundef %pWorker) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pTagStack.addr = alloca ptr, align 8
  %pWorker.addr = alloca ptr, align 8
  %pTokenSet = alloca ptr, align 8
  %sEntry = alloca %struct.SyXMLRawStrNS, align 8
  %sNs = alloca %struct.SyXMLRawStr, align 8
  %pToken = alloca ptr, align 8
  %bGotTag = alloca i32, align 4
  %rc = alloca i32, align 4
  %sTarget = alloca %struct.SyXMLRawStr, align 8
  %sData = alloca %struct.SyXMLRawStr, align 8
  %isXML = alloca i32, align 4
  %pLast = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTagStack, ptr %pTagStack.addr, align 8
  store ptr %pWorker, ptr %pWorker.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %sToken = getelementptr inbounds nuw %struct.SyXMLParser, ptr %0, i32 0, i32 3
  store ptr %sToken, ptr %pTokenSet, align 8
  store i32 0, ptr %bGotTag, align 4
  %1 = load ptr, ptr %pParse.addr, align 8
  %xStartDoc = getelementptr inbounds nuw %struct.SyXMLParser, ptr %1, i32 0, i32 12
  %2 = load ptr, ptr %xStartDoc, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pParse.addr, align 8
  %xStartDoc1 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %xStartDoc1, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyXMLParser, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pUserData, align 8
  %call = call i32 %4(ptr noundef %6)
  %cmp = icmp eq i32 -10, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %pTokenSet, align 8
  %call2 = call i32 @SySetResetCursor(ptr noundef %7)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %8 = load ptr, ptr %pTokenSet, align 8
  %call3 = call i32 @SySetGetNextEntry(ptr noundef %8, ptr noundef %pToken)
  %cmp4 = icmp eq i32 0, %call3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @SyZero(ptr noundef %sEntry, i32 noundef 56)
  call void @SyZero(ptr noundef %sNs, i32 noundef 16)
  %sNSset = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %sEntry, i32 0, i32 3
  %9 = load ptr, ptr %pParse.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyXMLParser, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pAllocator, align 8
  %call5 = call i32 @SySetInit(ptr noundef %sNSset, ptr noundef %10, i32 noundef 8)
  %11 = load ptr, ptr %pToken, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nLine, align 4
  %nLine6 = getelementptr inbounds nuw %struct.SyXMLRawStr, ptr %sNs, i32 0, i32 2
  store i32 %12, ptr %nLine6, align 4
  %nLine7 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %sEntry, i32 0, i32 2
  store i32 %12, ptr %nLine7, align 4
  %13 = load ptr, ptr %pToken, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nType, align 8
  switch i32 %14, label %sw.default [
    i32 4, label %sw.bb
    i32 32, label %sw.bb30
    i32 2, label %sw.bb54
    i32 8, label %sw.bb79
    i32 64, label %sw.bb104
    i32 16, label %sw.bb177
    i32 128, label %sw.bb177
  ]

sw.bb:                                            ; preds = %while.body
  %15 = load ptr, ptr %pTagStack.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %nUsed, align 8
  %cmp8 = icmp ugt i32 %16, 1
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %17 = load i32, ptr %bGotTag, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then10, label %if.end20

if.then10:                                        ; preds = %lor.lhs.false, %sw.bb
  %18 = load ptr, ptr %pParse.addr, align 8
  %xError = getelementptr inbounds nuw %struct.SyXMLParser, ptr %18, i32 0, i32 11
  %19 = load ptr, ptr %xError, align 8
  %tobool11 = icmp ne ptr %19, null
  br i1 %tobool11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.then10
  %20 = load ptr, ptr %pParse.addr, align 8
  %xError13 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %20, i32 0, i32 11
  %21 = load ptr, ptr %xError13, align 8
  %22 = load ptr, ptr %pToken, align 8
  %23 = load ptr, ptr %pParse.addr, align 8
  %pUserData14 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pUserData14, align 8
  %call15 = call i32 %21(ptr noundef @.str.580, i32 noundef 18, ptr noundef %22, ptr noundef %24)
  store i32 %call15, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %25, -10
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then12
  store i32 -10, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then10
  br label %sw.epilog

if.end20:                                         ; preds = %lor.lhs.false
  %26 = load ptr, ptr %pParse.addr, align 8
  %xDoctype = getelementptr inbounds nuw %struct.SyXMLParser, ptr %26, i32 0, i32 9
  %27 = load ptr, ptr %xDoctype, align 8
  %tobool21 = icmp ne ptr %27, null
  br i1 %tobool21, label %if.then22, label %if.end29

if.then22:                                        ; preds = %if.end20
  %28 = load ptr, ptr %pToken, align 8
  call void @TokenToXMLString(ptr noundef %28, ptr noundef %sEntry)
  %29 = load ptr, ptr %pParse.addr, align 8
  %xDoctype23 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %xDoctype23, align 8
  %31 = load ptr, ptr %pParse.addr, align 8
  %pUserData24 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %pUserData24, align 8
  %call25 = call i32 %30(ptr noundef %sEntry, ptr noundef %32)
  store i32 %call25, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %33, -10
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then22
  store i32 -10, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then22
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end20
  br label %sw.epilog

sw.bb30:                                          ; preds = %while.body
  %34 = load ptr, ptr %pTagStack.addr, align 8
  %nUsed31 = getelementptr inbounds nuw %struct.SySet, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %nUsed31, align 8
  %cmp32 = icmp ult i32 %35, 1
  br i1 %cmp32, label %if.then33, label %if.end44

if.then33:                                        ; preds = %sw.bb30
  %36 = load ptr, ptr %pParse.addr, align 8
  %xError34 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %36, i32 0, i32 11
  %37 = load ptr, ptr %xError34, align 8
  %tobool35 = icmp ne ptr %37, null
  br i1 %tobool35, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.then33
  %38 = load ptr, ptr %pParse.addr, align 8
  %xError37 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %38, i32 0, i32 11
  %39 = load ptr, ptr %xError37, align 8
  %40 = load ptr, ptr %pToken, align 8
  %41 = load ptr, ptr %pParse.addr, align 8
  %pUserData38 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %pUserData38, align 8
  %call39 = call i32 %39(ptr noundef @.str.581, i32 noundef 8, ptr noundef %40, ptr noundef %42)
  store i32 %call39, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %cmp40 = icmp eq i32 %43, -10
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.then36
  store i32 -10, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.then36
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then33
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %sw.bb30
  %44 = load ptr, ptr %pParse.addr, align 8
  %xRaw = getelementptr inbounds nuw %struct.SyXMLParser, ptr %44, i32 0, i32 8
  %45 = load ptr, ptr %xRaw, align 8
  %tobool45 = icmp ne ptr %45, null
  br i1 %tobool45, label %if.then46, label %if.end53

if.then46:                                        ; preds = %if.end44
  %46 = load ptr, ptr %pToken, align 8
  call void @TokenToXMLString(ptr noundef %46, ptr noundef %sEntry)
  %47 = load ptr, ptr %pParse.addr, align 8
  %xRaw47 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %47, i32 0, i32 8
  %48 = load ptr, ptr %xRaw47, align 8
  %49 = load ptr, ptr %pParse.addr, align 8
  %pUserData48 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %pUserData48, align 8
  %call49 = call i32 %48(ptr noundef %sEntry, ptr noundef %50)
  store i32 %call49, ptr %rc, align 4
  %51 = load i32, ptr %rc, align 4
  %cmp50 = icmp eq i32 %51, -10
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then46
  store i32 -10, ptr %retval, align 4
  br label %return

if.end52:                                         ; preds = %if.then46
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end44
  br label %sw.epilog

sw.bb54:                                          ; preds = %while.body
  store i32 0, ptr %isXML, align 4
  %52 = load ptr, ptr %pToken, align 8
  call void @XMLExtactPI(ptr noundef %52, ptr noundef %sTarget, ptr noundef %sData, ptr noundef %isXML)
  %53 = load i32, ptr %isXML, align 4
  %tobool55 = icmp ne i32 %53, 0
  br i1 %tobool55, label %land.lhs.true56, label %if.else

land.lhs.true56:                                  ; preds = %sw.bb54
  %54 = load ptr, ptr %pTokenSet, align 8
  %nCursor = getelementptr inbounds nuw %struct.SySet, ptr %54, i32 0, i32 5
  %55 = load i32, ptr %nCursor, align 4
  %sub = sub i32 %55, 1
  %cmp57 = icmp ugt i32 %sub, 0
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %land.lhs.true56
  %56 = load ptr, ptr %pParse.addr, align 8
  %xError59 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %56, i32 0, i32 11
  %57 = load ptr, ptr %xError59, align 8
  %tobool60 = icmp ne ptr %57, null
  br i1 %tobool60, label %if.then61, label %if.end68

if.then61:                                        ; preds = %if.then58
  %58 = load ptr, ptr %pParse.addr, align 8
  %xError62 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %58, i32 0, i32 11
  %59 = load ptr, ptr %xError62, align 8
  %60 = load ptr, ptr %pToken, align 8
  %61 = load ptr, ptr %pParse.addr, align 8
  %pUserData63 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %pUserData63, align 8
  %call64 = call i32 %59(ptr noundef @.str.582, i32 noundef 18, ptr noundef %60, ptr noundef %62)
  store i32 %call64, ptr %rc, align 4
  %63 = load i32, ptr %rc, align 4
  %cmp65 = icmp eq i32 %63, -10
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then61
  store i32 -10, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.then61
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then58
  br label %if.end78

if.else:                                          ; preds = %land.lhs.true56, %sw.bb54
  %64 = load ptr, ptr %pParse.addr, align 8
  %xPi = getelementptr inbounds nuw %struct.SyXMLParser, ptr %64, i32 0, i32 10
  %65 = load ptr, ptr %xPi, align 8
  %tobool69 = icmp ne ptr %65, null
  br i1 %tobool69, label %if.then70, label %if.end77

if.then70:                                        ; preds = %if.else
  %66 = load ptr, ptr %pParse.addr, align 8
  %xPi71 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %66, i32 0, i32 10
  %67 = load ptr, ptr %xPi71, align 8
  %68 = load ptr, ptr %pParse.addr, align 8
  %pUserData72 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %pUserData72, align 8
  %call73 = call i32 %67(ptr noundef %sTarget, ptr noundef %sData, ptr noundef %69)
  store i32 %call73, ptr %rc, align 4
  %70 = load i32, ptr %rc, align 4
  %cmp74 = icmp eq i32 %70, -10
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then70
  store i32 -10, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.then70
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.else
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end68
  br label %sw.epilog

sw.bb79:                                          ; preds = %while.body
  %71 = load ptr, ptr %pTagStack.addr, align 8
  %nUsed80 = getelementptr inbounds nuw %struct.SySet, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %nUsed80, align 8
  %cmp81 = icmp ult i32 %72, 1
  br i1 %cmp81, label %if.then82, label %if.end93

if.then82:                                        ; preds = %sw.bb79
  %73 = load ptr, ptr %pParse.addr, align 8
  %xError83 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %73, i32 0, i32 11
  %74 = load ptr, ptr %xError83, align 8
  %tobool84 = icmp ne ptr %74, null
  br i1 %tobool84, label %if.then85, label %if.end92

if.then85:                                        ; preds = %if.then82
  %75 = load ptr, ptr %pParse.addr, align 8
  %xError86 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %75, i32 0, i32 11
  %76 = load ptr, ptr %xError86, align 8
  %77 = load ptr, ptr %pToken, align 8
  %78 = load ptr, ptr %pParse.addr, align 8
  %pUserData87 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %pUserData87, align 8
  %call88 = call i32 %76(ptr noundef @.str.583, i32 noundef 8, ptr noundef %77, ptr noundef %79)
  store i32 %call88, ptr %rc, align 4
  %80 = load i32, ptr %rc, align 4
  %cmp89 = icmp eq i32 %80, -10
  br i1 %cmp89, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then85
  store i32 -10, ptr %retval, align 4
  br label %return

if.end91:                                         ; preds = %if.then85
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then82
  br label %sw.epilog

if.end93:                                         ; preds = %sw.bb79
  %81 = load ptr, ptr %pParse.addr, align 8
  %xRaw94 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %81, i32 0, i32 8
  %82 = load ptr, ptr %xRaw94, align 8
  %tobool95 = icmp ne ptr %82, null
  br i1 %tobool95, label %if.then96, label %if.end103

if.then96:                                        ; preds = %if.end93
  %83 = load ptr, ptr %pToken, align 8
  call void @TokenToXMLString(ptr noundef %83, ptr noundef %sEntry)
  %84 = load ptr, ptr %pParse.addr, align 8
  %xRaw97 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %84, i32 0, i32 8
  %85 = load ptr, ptr %xRaw97, align 8
  %86 = load ptr, ptr %pParse.addr, align 8
  %pUserData98 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %86, i32 0, i32 1
  %87 = load ptr, ptr %pUserData98, align 8
  %call99 = call i32 %85(ptr noundef %sEntry, ptr noundef %87)
  store i32 %call99, ptr %rc, align 4
  %88 = load i32, ptr %rc, align 4
  %cmp100 = icmp eq i32 %88, -10
  br i1 %cmp100, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.then96
  store i32 -10, ptr %retval, align 4
  br label %return

if.end102:                                        ; preds = %if.then96
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end93
  br label %sw.epilog

sw.bb104:                                         ; preds = %while.body
  store ptr null, ptr %pLast, align 8
  %89 = load ptr, ptr %pTagStack.addr, align 8
  %nUsed105 = getelementptr inbounds nuw %struct.SySet, ptr %89, i32 0, i32 2
  %90 = load i32, ptr %nUsed105, align 8
  %cmp106 = icmp ult i32 %90, 1
  br i1 %cmp106, label %if.then107, label %if.end118

if.then107:                                       ; preds = %sw.bb104
  %91 = load ptr, ptr %pParse.addr, align 8
  %xError108 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %91, i32 0, i32 11
  %92 = load ptr, ptr %xError108, align 8
  %tobool109 = icmp ne ptr %92, null
  br i1 %tobool109, label %if.then110, label %if.end117

if.then110:                                       ; preds = %if.then107
  %93 = load ptr, ptr %pParse.addr, align 8
  %xError111 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %93, i32 0, i32 11
  %94 = load ptr, ptr %xError111, align 8
  %95 = load ptr, ptr %pToken, align 8
  %96 = load ptr, ptr %pParse.addr, align 8
  %pUserData112 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %96, i32 0, i32 1
  %97 = load ptr, ptr %pUserData112, align 8
  %call113 = call i32 %94(ptr noundef @.str.584, i32 noundef 8, ptr noundef %95, ptr noundef %97)
  store i32 %call113, ptr %rc, align 4
  %98 = load i32, ptr %rc, align 4
  %cmp114 = icmp eq i32 %98, -10
  br i1 %cmp114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %if.then110
  store i32 -10, ptr %retval, align 4
  br label %return

if.end116:                                        ; preds = %if.then110
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then107
  br label %sw.epilog

if.end118:                                        ; preds = %sw.bb104
  %99 = load ptr, ptr %pParse.addr, align 8
  %100 = load ptr, ptr %pToken, align 8
  %call119 = call i32 @XMLExtractEndTag(ptr noundef %99, ptr noundef %100, ptr noundef %sEntry)
  store i32 %call119, ptr %rc, align 4
  %101 = load i32, ptr %rc, align 4
  %cmp120 = icmp eq i32 %101, 0
  br i1 %cmp120, label %if.then121, label %if.else164

if.then121:                                       ; preds = %if.end118
  %102 = load ptr, ptr %pTagStack.addr, align 8
  %call122 = call ptr @SySetPeek(ptr noundef %102)
  store ptr %call122, ptr %pLast, align 8
  %103 = load ptr, ptr %pLast, align 8
  %cmp123 = icmp eq ptr %103, null
  br i1 %cmp123, label %if.then132, label %lor.lhs.false124

lor.lhs.false124:                                 ; preds = %if.then121
  %104 = load ptr, ptr %pLast, align 8
  %nByte = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %104, i32 0, i32 1
  %105 = load i32, ptr %nByte, align 8
  %nByte125 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %sEntry, i32 0, i32 1
  %106 = load i32, ptr %nByte125, align 8
  %cmp126 = icmp ne i32 %105, %106
  br i1 %cmp126, label %if.then132, label %lor.lhs.false127

lor.lhs.false127:                                 ; preds = %lor.lhs.false124
  %107 = load ptr, ptr %pLast, align 8
  %zString = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %107, i32 0, i32 0
  %108 = load ptr, ptr %zString, align 8
  %zString128 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %sEntry, i32 0, i32 0
  %109 = load ptr, ptr %zString128, align 8
  %nByte129 = getelementptr inbounds nuw %struct.SyXMLRawStrNS, ptr %sEntry, i32 0, i32 1
  %110 = load i32, ptr %nByte129, align 8
  %call130 = call i32 @SyMemcmp(ptr noundef %108, ptr noundef %109, i32 noundef %110)
  %cmp131 = icmp ne i32 %call130, 0
  br i1 %cmp131, label %if.then132, label %if.else143

if.then132:                                       ; preds = %lor.lhs.false127, %lor.lhs.false124, %if.then121
  %111 = load ptr, ptr %pParse.addr, align 8
  %xError133 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %111, i32 0, i32 11
  %112 = load ptr, ptr %xError133, align 8
  %tobool134 = icmp ne ptr %112, null
  br i1 %tobool134, label %if.then135, label %if.end142

if.then135:                                       ; preds = %if.then132
  %113 = load ptr, ptr %pParse.addr, align 8
  %xError136 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %113, i32 0, i32 11
  %114 = load ptr, ptr %xError136, align 8
  %115 = load ptr, ptr %pToken, align 8
  %116 = load ptr, ptr %pParse.addr, align 8
  %pUserData137 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %116, i32 0, i32 1
  %117 = load ptr, ptr %pUserData137, align 8
  %call138 = call i32 %114(ptr noundef @.str.584, i32 noundef 8, ptr noundef %115, ptr noundef %117)
  store i32 %call138, ptr %rc, align 4
  %118 = load i32, ptr %rc, align 4
  %cmp139 = icmp eq i32 %118, -10
  br i1 %cmp139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.then135
  store i32 -10, ptr %retval, align 4
  br label %return

if.end141:                                        ; preds = %if.then135
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then132
  br label %if.end163

if.else143:                                       ; preds = %lor.lhs.false127
  %119 = load ptr, ptr %pParse.addr, align 8
  %xEndTag = getelementptr inbounds nuw %struct.SyXMLParser, ptr %119, i32 0, i32 7
  %120 = load ptr, ptr %xEndTag, align 8
  %tobool144 = icmp ne ptr %120, null
  br i1 %tobool144, label %if.then145, label %if.end162

if.then145:                                       ; preds = %if.else143
  store i32 0, ptr %rc, align 4
  %121 = load ptr, ptr %pParse.addr, align 8
  %nFlags = getelementptr inbounds nuw %struct.SyXMLParser, ptr %121, i32 0, i32 5
  %122 = load i32, ptr %nFlags, align 8
  %and = and i32 %122, 1
  %tobool146 = icmp ne i32 %and, 0
  br i1 %tobool146, label %if.then147, label %if.end152

if.then147:                                       ; preds = %if.then145
  %123 = load ptr, ptr %pParse.addr, align 8
  %124 = load ptr, ptr %pToken, align 8
  %call148 = call i32 @XMLExtractNS(ptr noundef %123, ptr noundef %124, ptr noundef %sEntry, ptr noundef %sNs)
  store i32 %call148, ptr %rc, align 4
  %125 = load i32, ptr %rc, align 4
  %cmp149 = icmp eq i32 %125, -10
  br i1 %cmp149, label %if.then150, label %if.end151

if.then150:                                       ; preds = %if.then147
  store i32 -10, ptr %retval, align 4
  br label %return

if.end151:                                        ; preds = %if.then147
  br label %if.end152

if.end152:                                        ; preds = %if.end151, %if.then145
  %126 = load i32, ptr %rc, align 4
  %cmp153 = icmp eq i32 %126, 0
  br i1 %cmp153, label %if.then154, label %if.end161

if.then154:                                       ; preds = %if.end152
  %127 = load ptr, ptr %pParse.addr, align 8
  %xEndTag155 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %127, i32 0, i32 7
  %128 = load ptr, ptr %xEndTag155, align 8
  %129 = load ptr, ptr %pParse.addr, align 8
  %pUserData156 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %129, i32 0, i32 1
  %130 = load ptr, ptr %pUserData156, align 8
  %call157 = call i32 %128(ptr noundef %sEntry, ptr noundef %sNs, ptr noundef %130)
  store i32 %call157, ptr %rc, align 4
  %131 = load i32, ptr %rc, align 4
  %cmp158 = icmp eq i32 %131, -10
  br i1 %cmp158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.then154
  store i32 -10, ptr %retval, align 4
  br label %return

if.end160:                                        ; preds = %if.then154
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.end152
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.else143
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end142
  br label %if.end168

if.else164:                                       ; preds = %if.end118
  %132 = load i32, ptr %rc, align 4
  %cmp165 = icmp eq i32 %132, -10
  br i1 %cmp165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.else164
  store i32 -10, ptr %retval, align 4
  br label %return

if.end167:                                        ; preds = %if.else164
  br label %if.end168

if.end168:                                        ; preds = %if.end167, %if.end163
  %133 = load ptr, ptr %pLast, align 8
  %tobool169 = icmp ne ptr %133, null
  br i1 %tobool169, label %if.then170, label %if.end176

if.then170:                                       ; preds = %if.end168
  %134 = load ptr, ptr %pParse.addr, align 8
  %135 = load ptr, ptr %pLast, align 8
  %136 = load ptr, ptr %pToken, align 8
  %call171 = call i32 @XMLnsUnlink(ptr noundef %134, ptr noundef %135, ptr noundef %136)
  store i32 %call171, ptr %rc, align 4
  %137 = load ptr, ptr %pTagStack.addr, align 8
  %call172 = call ptr @SySetPop(ptr noundef %137)
  %138 = load i32, ptr %rc, align 4
  %cmp173 = icmp eq i32 %138, -10
  br i1 %cmp173, label %if.then174, label %if.end175

if.then174:                                       ; preds = %if.then170
  store i32 -10, ptr %retval, align 4
  br label %return

if.end175:                                        ; preds = %if.then170
  br label %if.end176

if.end176:                                        ; preds = %if.end175, %if.end168
  br label %sw.epilog

sw.bb177:                                         ; preds = %while.body, %while.body
  %139 = load ptr, ptr %pTagStack.addr, align 8
  %nUsed178 = getelementptr inbounds nuw %struct.SySet, ptr %139, i32 0, i32 2
  %140 = load i32, ptr %nUsed178, align 8
  %cmp179 = icmp ult i32 %140, 1
  br i1 %cmp179, label %land.lhs.true180, label %if.end193

land.lhs.true180:                                 ; preds = %sw.bb177
  %141 = load i32, ptr %bGotTag, align 4
  %tobool181 = icmp ne i32 %141, 0
  br i1 %tobool181, label %if.then182, label %if.end193

if.then182:                                       ; preds = %land.lhs.true180
  %142 = load ptr, ptr %pParse.addr, align 8
  %xError183 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %142, i32 0, i32 11
  %143 = load ptr, ptr %xError183, align 8
  %tobool184 = icmp ne ptr %143, null
  br i1 %tobool184, label %if.then185, label %if.end192

if.then185:                                       ; preds = %if.then182
  %144 = load ptr, ptr %pParse.addr, align 8
  %xError186 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %144, i32 0, i32 11
  %145 = load ptr, ptr %xError186, align 8
  %146 = load ptr, ptr %pToken, align 8
  %147 = load ptr, ptr %pParse.addr, align 8
  %pUserData187 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %147, i32 0, i32 1
  %148 = load ptr, ptr %pUserData187, align 8
  %call188 = call i32 %145(ptr noundef @.str.585, i32 noundef 3, ptr noundef %146, ptr noundef %148)
  store i32 %call188, ptr %rc, align 4
  %149 = load i32, ptr %rc, align 4
  %cmp189 = icmp eq i32 %149, -10
  br i1 %cmp189, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.then185
  store i32 -10, ptr %retval, align 4
  br label %return

if.end191:                                        ; preds = %if.then185
  br label %if.end192

if.end192:                                        ; preds = %if.end191, %if.then182
  br label %sw.epilog

if.end193:                                        ; preds = %land.lhs.true180, %sw.bb177
  store i32 1, ptr %bGotTag, align 4
  %150 = load ptr, ptr %pParse.addr, align 8
  %151 = load ptr, ptr %pToken, align 8
  %152 = load ptr, ptr %pWorker.addr, align 8
  %153 = load ptr, ptr %pTagStack.addr, align 8
  %call194 = call i32 @XMLProcessStartTag(ptr noundef %150, ptr noundef %151, ptr noundef %sEntry, ptr noundef %152, ptr noundef %153)
  store i32 %call194, ptr %rc, align 4
  %154 = load i32, ptr %rc, align 4
  %cmp195 = icmp eq i32 %154, 0
  br i1 %cmp195, label %if.then196, label %if.end203

if.then196:                                       ; preds = %if.end193
  %155 = load ptr, ptr %pParse.addr, align 8
  %nFlags197 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %155, i32 0, i32 5
  %156 = load i32, ptr %nFlags197, align 8
  %and198 = and i32 %156, 1
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.then196
  %157 = load ptr, ptr %pParse.addr, align 8
  %158 = load ptr, ptr %pToken, align 8
  %call201 = call i32 @XMLExtractNS(ptr noundef %157, ptr noundef %158, ptr noundef %sEntry, ptr noundef %sNs)
  store i32 %call201, ptr %rc, align 4
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.then196
  br label %if.end203

if.end203:                                        ; preds = %if.end202, %if.end193
  %159 = load i32, ptr %rc, align 4
  %cmp204 = icmp eq i32 %159, 0
  br i1 %cmp204, label %if.then205, label %if.else234

if.then205:                                       ; preds = %if.end203
  %160 = load ptr, ptr %pParse.addr, align 8
  %xStartTag = getelementptr inbounds nuw %struct.SyXMLParser, ptr %160, i32 0, i32 6
  %161 = load ptr, ptr %xStartTag, align 8
  %tobool206 = icmp ne ptr %161, null
  br i1 %tobool206, label %if.then207, label %if.end215

if.then207:                                       ; preds = %if.then205
  %162 = load ptr, ptr %pParse.addr, align 8
  %xStartTag208 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %162, i32 0, i32 6
  %163 = load ptr, ptr %xStartTag208, align 8
  %164 = load ptr, ptr %pWorker.addr, align 8
  %nUsed209 = getelementptr inbounds nuw %struct.SySet, ptr %164, i32 0, i32 2
  %165 = load i32, ptr %nUsed209, align 8
  %166 = load ptr, ptr %pWorker.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %166, i32 0, i32 1
  %167 = load ptr, ptr %pBase, align 8
  %168 = load ptr, ptr %pParse.addr, align 8
  %pUserData210 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %168, i32 0, i32 1
  %169 = load ptr, ptr %pUserData210, align 8
  %call211 = call i32 %163(ptr noundef %sEntry, ptr noundef %sNs, i32 noundef %165, ptr noundef %167, ptr noundef %169)
  store i32 %call211, ptr %rc, align 4
  %170 = load i32, ptr %rc, align 4
  %cmp212 = icmp eq i32 %170, -10
  br i1 %cmp212, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.then207
  store i32 -10, ptr %retval, align 4
  br label %return

if.end214:                                        ; preds = %if.then207
  br label %if.end215

if.end215:                                        ; preds = %if.end214, %if.then205
  %171 = load ptr, ptr %pToken, align 8
  %nType216 = getelementptr inbounds nuw %struct.SyToken, ptr %171, i32 0, i32 1
  %172 = load i32, ptr %nType216, align 8
  %cmp217 = icmp eq i32 %172, 128
  br i1 %cmp217, label %if.then218, label %if.end233

if.then218:                                       ; preds = %if.end215
  %173 = load ptr, ptr %pParse.addr, align 8
  %xEndTag219 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %173, i32 0, i32 7
  %174 = load ptr, ptr %xEndTag219, align 8
  %tobool220 = icmp ne ptr %174, null
  br i1 %tobool220, label %if.then221, label %if.end228

if.then221:                                       ; preds = %if.then218
  %175 = load ptr, ptr %pParse.addr, align 8
  %xEndTag222 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %175, i32 0, i32 7
  %176 = load ptr, ptr %xEndTag222, align 8
  %177 = load ptr, ptr %pParse.addr, align 8
  %pUserData223 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %177, i32 0, i32 1
  %178 = load ptr, ptr %pUserData223, align 8
  %call224 = call i32 %176(ptr noundef %sEntry, ptr noundef %sNs, ptr noundef %178)
  store i32 %call224, ptr %rc, align 4
  %179 = load i32, ptr %rc, align 4
  %cmp225 = icmp eq i32 %179, -10
  br i1 %cmp225, label %if.then226, label %if.end227

if.then226:                                       ; preds = %if.then221
  store i32 -10, ptr %retval, align 4
  br label %return

if.end227:                                        ; preds = %if.then221
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %if.then218
  %180 = load ptr, ptr %pParse.addr, align 8
  %181 = load ptr, ptr %pToken, align 8
  %call229 = call i32 @XMLnsUnlink(ptr noundef %180, ptr noundef %sEntry, ptr noundef %181)
  store i32 %call229, ptr %rc, align 4
  %182 = load i32, ptr %rc, align 4
  %cmp230 = icmp eq i32 %182, -10
  br i1 %cmp230, label %if.then231, label %if.end232

if.then231:                                       ; preds = %if.end228
  store i32 -10, ptr %retval, align 4
  br label %return

if.end232:                                        ; preds = %if.end228
  br label %if.end233

if.end233:                                        ; preds = %if.end232, %if.end215
  br label %if.end238

if.else234:                                       ; preds = %if.end203
  %183 = load i32, ptr %rc, align 4
  %cmp235 = icmp eq i32 %183, -10
  br i1 %cmp235, label %if.then236, label %if.end237

if.then236:                                       ; preds = %if.else234
  store i32 -10, ptr %retval, align 4
  br label %return

if.end237:                                        ; preds = %if.else234
  br label %if.end238

if.end238:                                        ; preds = %if.end237, %if.end233
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end238, %if.end192, %if.end176, %if.end117, %if.end103, %if.end92, %if.end78, %if.end53, %if.end29, %if.end19
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %184 = load ptr, ptr %pTagStack.addr, align 8
  %nUsed239 = getelementptr inbounds nuw %struct.SySet, ptr %184, i32 0, i32 2
  %185 = load i32, ptr %nUsed239, align 8
  %cmp240 = icmp ugt i32 %185, 0
  br i1 %cmp240, label %land.lhs.true241, label %if.end250

land.lhs.true241:                                 ; preds = %while.end
  %186 = load ptr, ptr %pParse.addr, align 8
  %xError242 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %186, i32 0, i32 11
  %187 = load ptr, ptr %xError242, align 8
  %tobool243 = icmp ne ptr %187, null
  br i1 %tobool243, label %if.then244, label %if.end250

if.then244:                                       ; preds = %land.lhs.true241
  %188 = load ptr, ptr %pParse.addr, align 8
  %xError245 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %188, i32 0, i32 11
  %189 = load ptr, ptr %xError245, align 8
  %190 = load ptr, ptr %pParse.addr, align 8
  %sToken246 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %190, i32 0, i32 3
  %call247 = call ptr @SySetPeek(ptr noundef %sToken246)
  %191 = load ptr, ptr %pParse.addr, align 8
  %pUserData248 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %191, i32 0, i32 1
  %192 = load ptr, ptr %pUserData248, align 8
  %call249 = call i32 %189(ptr noundef @.str.586, i32 noundef 3, ptr noundef %call247, ptr noundef %192)
  br label %if.end250

if.end250:                                        ; preds = %if.then244, %land.lhs.true241, %while.end
  %193 = load ptr, ptr %pParse.addr, align 8
  %xEndDoc = getelementptr inbounds nuw %struct.SyXMLParser, ptr %193, i32 0, i32 13
  %194 = load ptr, ptr %xEndDoc, align 8
  %tobool251 = icmp ne ptr %194, null
  br i1 %tobool251, label %if.then252, label %if.end256

if.then252:                                       ; preds = %if.end250
  %195 = load ptr, ptr %pParse.addr, align 8
  %xEndDoc253 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %195, i32 0, i32 13
  %196 = load ptr, ptr %xEndDoc253, align 8
  %197 = load ptr, ptr %pParse.addr, align 8
  %pUserData254 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %197, i32 0, i32 1
  %198 = load ptr, ptr %pUserData254, align 8
  %call255 = call i32 %196(ptr noundef %198)
  br label %if.end256

if.end256:                                        ; preds = %if.then252, %if.end250
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end256, %if.then236, %if.then231, %if.then226, %if.then213, %if.then190, %if.then174, %if.then166, %if.then159, %if.then150, %if.then140, %if.then115, %if.then101, %if.then90, %if.then75, %if.then66, %if.then51, %if.then41, %if.then27, %if.then17, %if.then
  %199 = load i32, ptr %retval, align 4
  ret i32 %199
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetResetCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetGetNextEntry(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @TokenToXMLString(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @XMLExtactPI(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @XMLExtractEndTag(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @XMLExtractNS(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @XMLnsUnlink(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @XMLProcessStartTag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
