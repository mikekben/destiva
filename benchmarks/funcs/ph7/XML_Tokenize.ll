; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }

@.str.131 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.566 = external hidden unnamed_addr constant [52 x i8], align 1
@.str.567 = external hidden unnamed_addr constant [60 x i8], align 1
@.str.568 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.569 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.570 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.571 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.572 = external hidden unnamed_addr constant [8 x i8], align 1
@__const.XML_Tokenize.sDelim = external hidden unnamed_addr constant { ptr, i32, [4 x i8] }, align 8
@.str.573 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.574 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.575 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.576 = external hidden unnamed_addr constant [53 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden i32 @XML_Tokenize(ptr noundef %pStream, ptr noundef %pToken, ptr noundef %pUserData, ptr noundef %pUnused2) #1 {
entry:
  %retval = alloca i32, align 4
  %pStream.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pUnused2.addr = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %pStr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %c = alloca i32, align 4
  %sDelim = alloca %struct.SyString, align 8
  %c274 = alloca i32, align 4
  %c394 = alloca i32, align 4
  store ptr %pStream, ptr %pStream.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pUnused2, ptr %pUnused2.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pParse, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %pStream.addr, align 8
  %zText = getelementptr inbounds nuw %struct.SyStream, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %zText, align 8
  %3 = load ptr, ptr %pStream.addr, align 8
  %zEnd = getelementptr inbounds nuw %struct.SyStream, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %2, %4
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %5 = load ptr, ptr %pStream.addr, align 8
  %zText1 = getelementptr inbounds nuw %struct.SyStream, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %zText1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp2 = icmp slt i32 %conv, 192
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #3
  %8 = load ptr, ptr %call, align 8
  %9 = load ptr, ptr %pStream.addr, align 8
  %zText4 = getelementptr inbounds nuw %struct.SyStream, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %zText4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %11 to i32
  %idxprom = sext i32 %conv6 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %12 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %12 to i32
  %and = and i32 %conv8, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load ptr, ptr %pStream.addr, align 8
  %zText9 = getelementptr inbounds nuw %struct.SyStream, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %zText9, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %16 to i32
  %cmp12 = icmp eq i32 %conv11, 10
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %17 = load ptr, ptr %pStream.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyStream, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %nLine, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %nLine, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load ptr, ptr %pStream.addr, align 8
  %zText14 = getelementptr inbounds nuw %struct.SyStream, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %zText14, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr, ptr %zText14, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %21 = load ptr, ptr %pStream.addr, align 8
  %zText15 = getelementptr inbounds nuw %struct.SyStream, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %zText15, align 8
  %23 = load ptr, ptr %pStream.addr, align 8
  %zEnd16 = getelementptr inbounds nuw %struct.SyStream, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %zEnd16, align 8
  %cmp17 = icmp uge ptr %22, %24
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  store ptr null, ptr %pUnused2.addr, align 8
  store i32 -18, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %while.end
  %25 = load ptr, ptr %pStream.addr, align 8
  %nLine21 = getelementptr inbounds nuw %struct.SyStream, ptr %25, i32 0, i32 3
  %26 = load i32, ptr %nLine21, align 8
  %27 = load ptr, ptr %pToken.addr, align 8
  %nLine22 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 2
  store i32 %26, ptr %nLine22, align 4
  %28 = load ptr, ptr %pToken.addr, align 8
  %pUserData23 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 3
  store ptr null, ptr %pUserData23, align 8
  %29 = load ptr, ptr %pToken.addr, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %29, i32 0, i32 0
  store ptr %sData, ptr %pStr, align 8
  %30 = load ptr, ptr %pStream.addr, align 8
  %zText24 = getelementptr inbounds nuw %struct.SyStream, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %zText24, align 8
  %32 = load ptr, ptr %pStr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 0
  store ptr %31, ptr %zString, align 8
  %33 = load ptr, ptr %pStr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %33, i32 0, i32 1
  store i32 0, ptr %nByte, align 8
  %34 = load ptr, ptr %pStream.addr, align 8
  %zText25 = getelementptr inbounds nuw %struct.SyStream, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %zText25, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %36 to i32
  store i32 %conv27, ptr %c, align 4
  %37 = load i32, ptr %c, align 4
  %cmp28 = icmp eq i32 %37, 60
  br i1 %cmp28, label %if.then30, label %if.else676

if.then30:                                        ; preds = %if.end20
  %38 = load ptr, ptr %pStream.addr, align 8
  %zText31 = getelementptr inbounds nuw %struct.SyStream, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %zText31, align 8
  %incdec.ptr32 = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr32, ptr %zText31, align 8
  %40 = load ptr, ptr %pStr, align 8
  %zString33 = getelementptr inbounds nuw %struct.SyString, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %zString33, align 8
  %incdec.ptr34 = getelementptr inbounds nuw i8, ptr %41, i32 1
  store ptr %incdec.ptr34, ptr %zString33, align 8
  %42 = load ptr, ptr %pStream.addr, align 8
  %zText35 = getelementptr inbounds nuw %struct.SyStream, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %zText35, align 8
  %44 = load ptr, ptr %pStream.addr, align 8
  %zEnd36 = getelementptr inbounds nuw %struct.SyStream, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %zEnd36, align 8
  %cmp37 = icmp uge ptr %43, %45
  br i1 %cmp37, label %if.then39, label %if.end50

if.then39:                                        ; preds = %if.then30
  %46 = load ptr, ptr %pParse, align 8
  %xError = getelementptr inbounds nuw %struct.SyXMLParser, ptr %46, i32 0, i32 11
  %47 = load ptr, ptr %xError, align 8
  %tobool40 = icmp ne ptr %47, null
  br i1 %tobool40, label %if.then41, label %if.end49

if.then41:                                        ; preds = %if.then39
  %48 = load ptr, ptr %pParse, align 8
  %xError42 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %48, i32 0, i32 11
  %49 = load ptr, ptr %xError42, align 8
  %50 = load ptr, ptr %pToken.addr, align 8
  %51 = load ptr, ptr %pParse, align 8
  %pUserData43 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %pUserData43, align 8
  %call44 = call i32 %49(ptr noundef @.str.566, i32 noundef 3, ptr noundef %50, ptr noundef %52)
  store i32 %call44, ptr %rc, align 4
  %53 = load i32, ptr %rc, align 4
  %cmp45 = icmp eq i32 %53, -10
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then41
  store i32 -10, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then41
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then39
  store i32 -18, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.then30
  %54 = load ptr, ptr %pStream.addr, align 8
  %zText51 = getelementptr inbounds nuw %struct.SyStream, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %zText51, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %55, i64 0
  %56 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %56 to i32
  store i32 %conv53, ptr %c, align 4
  %57 = load i32, ptr %c, align 4
  %cmp54 = icmp eq i32 %57, 63
  br i1 %cmp54, label %if.then56, label %if.else

if.then56:                                        ; preds = %if.end50
  %58 = load ptr, ptr %pStream.addr, align 8
  %zText57 = getelementptr inbounds nuw %struct.SyStream, ptr %58, i32 0, i32 1
  %59 = load ptr, ptr %zText57, align 8
  %incdec.ptr58 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %incdec.ptr58, ptr %zText57, align 8
  %60 = load ptr, ptr %pStr, align 8
  %zString59 = getelementptr inbounds nuw %struct.SyString, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %zString59, align 8
  %incdec.ptr60 = getelementptr inbounds nuw i8, ptr %61, i32 1
  store ptr %incdec.ptr60, ptr %zString59, align 8
  %62 = load ptr, ptr %pToken.addr, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %62, i32 0, i32 1
  store i32 2, ptr %nType, align 8
  br label %while.cond61

while.cond61:                                     ; preds = %if.end83, %if.then56
  %63 = load ptr, ptr %pStream.addr, align 8
  %zEnd62 = getelementptr inbounds nuw %struct.SyStream, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %zEnd62, align 8
  %65 = load ptr, ptr %pStream.addr, align 8
  %zText63 = getelementptr inbounds nuw %struct.SyStream, ptr %65, i32 0, i32 1
  %66 = load ptr, ptr %zText63, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %64 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %66 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv64 = trunc i64 %sub.ptr.sub to i32
  %conv65 = zext i32 %conv64 to i64
  %cmp66 = icmp uge i64 %conv65, 2
  br i1 %cmp66, label %land.rhs68, label %land.end73

land.rhs68:                                       ; preds = %while.cond61
  %67 = load ptr, ptr %pStream.addr, align 8
  %zText69 = getelementptr inbounds nuw %struct.SyStream, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %zText69, align 8
  %call70 = call i32 @SyMemcmp(ptr noundef %68, ptr noundef @.str.131, i32 noundef 2)
  %cmp71 = icmp ne i32 %call70, 0
  br label %land.end73

land.end73:                                       ; preds = %land.rhs68, %while.cond61
  %69 = phi i1 [ false, %while.cond61 ], [ %cmp71, %land.rhs68 ]
  br i1 %69, label %while.body74, label %while.end86

while.body74:                                     ; preds = %land.end73
  %70 = load ptr, ptr %pStream.addr, align 8
  %zText75 = getelementptr inbounds nuw %struct.SyStream, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %zText75, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %71, i64 0
  %72 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %72 to i32
  %cmp78 = icmp eq i32 %conv77, 10
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %while.body74
  %73 = load ptr, ptr %pStream.addr, align 8
  %nLine81 = getelementptr inbounds nuw %struct.SyStream, ptr %73, i32 0, i32 3
  %74 = load i32, ptr %nLine81, align 8
  %inc82 = add i32 %74, 1
  store i32 %inc82, ptr %nLine81, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %while.body74
  %75 = load ptr, ptr %pStream.addr, align 8
  %zText84 = getelementptr inbounds nuw %struct.SyStream, ptr %75, i32 0, i32 1
  %76 = load ptr, ptr %zText84, align 8
  %incdec.ptr85 = getelementptr inbounds nuw i8, ptr %76, i32 1
  store ptr %incdec.ptr85, ptr %zText84, align 8
  br label %while.cond61, !llvm.loop !8

while.end86:                                      ; preds = %land.end73
  %77 = load ptr, ptr %pStream.addr, align 8
  %zText87 = getelementptr inbounds nuw %struct.SyStream, ptr %77, i32 0, i32 1
  %78 = load ptr, ptr %zText87, align 8
  %79 = load ptr, ptr %pStr, align 8
  %zString88 = getelementptr inbounds nuw %struct.SyString, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %zString88, align 8
  %sub.ptr.lhs.cast89 = ptrtoint ptr %78 to i64
  %sub.ptr.rhs.cast90 = ptrtoint ptr %80 to i64
  %sub.ptr.sub91 = sub i64 %sub.ptr.lhs.cast89, %sub.ptr.rhs.cast90
  %conv92 = trunc i64 %sub.ptr.sub91 to i32
  %81 = load ptr, ptr %pStr, align 8
  %nByte93 = getelementptr inbounds nuw %struct.SyString, ptr %81, i32 0, i32 1
  store i32 %conv92, ptr %nByte93, align 8
  %82 = load ptr, ptr %pStream.addr, align 8
  %zEnd94 = getelementptr inbounds nuw %struct.SyStream, ptr %82, i32 0, i32 2
  %83 = load ptr, ptr %zEnd94, align 8
  %84 = load ptr, ptr %pStream.addr, align 8
  %zText95 = getelementptr inbounds nuw %struct.SyStream, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %zText95, align 8
  %sub.ptr.lhs.cast96 = ptrtoint ptr %83 to i64
  %sub.ptr.rhs.cast97 = ptrtoint ptr %85 to i64
  %sub.ptr.sub98 = sub i64 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast97
  %conv99 = trunc i64 %sub.ptr.sub98 to i32
  %conv100 = zext i32 %conv99 to i64
  %cmp101 = icmp ult i64 %conv100, 2
  br i1 %cmp101, label %if.then103, label %if.end115

if.then103:                                       ; preds = %while.end86
  %86 = load ptr, ptr %pParse, align 8
  %xError104 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %86, i32 0, i32 11
  %87 = load ptr, ptr %xError104, align 8
  %tobool105 = icmp ne ptr %87, null
  br i1 %tobool105, label %if.then106, label %if.end114

if.then106:                                       ; preds = %if.then103
  %88 = load ptr, ptr %pParse, align 8
  %xError107 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %88, i32 0, i32 11
  %89 = load ptr, ptr %xError107, align 8
  %90 = load ptr, ptr %pToken.addr, align 8
  %91 = load ptr, ptr %pParse, align 8
  %pUserData108 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %91, i32 0, i32 1
  %92 = load ptr, ptr %pUserData108, align 8
  %call109 = call i32 %89(ptr noundef @.str.567, i32 noundef 6, ptr noundef %90, ptr noundef %92)
  store i32 %call109, ptr %rc, align 4
  %93 = load i32, ptr %rc, align 4
  %cmp110 = icmp eq i32 %93, -10
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.then106
  store i32 -10, ptr %retval, align 4
  br label %return

if.end113:                                        ; preds = %if.then106
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.then103
  store i32 -18, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %while.end86
  %94 = load ptr, ptr %pStream.addr, align 8
  %zText116 = getelementptr inbounds nuw %struct.SyStream, ptr %94, i32 0, i32 1
  %95 = load ptr, ptr %zText116, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %95, i64 2
  store ptr %add.ptr, ptr %zText116, align 8
  br label %if.end675

if.else:                                          ; preds = %if.end50
  %96 = load i32, ptr %c, align 4
  %cmp117 = icmp eq i32 %96, 33
  br i1 %cmp117, label %if.then119, label %if.else393

if.then119:                                       ; preds = %if.else
  %97 = load ptr, ptr %pStream.addr, align 8
  %zText120 = getelementptr inbounds nuw %struct.SyStream, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %zText120, align 8
  %incdec.ptr121 = getelementptr inbounds nuw i8, ptr %98, i32 1
  store ptr %incdec.ptr121, ptr %zText120, align 8
  %99 = load ptr, ptr %pStream.addr, align 8
  %zEnd122 = getelementptr inbounds nuw %struct.SyStream, ptr %99, i32 0, i32 2
  %100 = load ptr, ptr %zEnd122, align 8
  %101 = load ptr, ptr %pStream.addr, align 8
  %zText123 = getelementptr inbounds nuw %struct.SyStream, ptr %101, i32 0, i32 1
  %102 = load ptr, ptr %zText123, align 8
  %sub.ptr.lhs.cast124 = ptrtoint ptr %100 to i64
  %sub.ptr.rhs.cast125 = ptrtoint ptr %102 to i64
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125
  %conv127 = trunc i64 %sub.ptr.sub126 to i32
  %conv128 = zext i32 %conv127 to i64
  %cmp129 = icmp uge i64 %conv128, 2
  br i1 %cmp129, label %land.lhs.true131, label %if.end177

land.lhs.true131:                                 ; preds = %if.then119
  %103 = load ptr, ptr %pStream.addr, align 8
  %zText132 = getelementptr inbounds nuw %struct.SyStream, ptr %103, i32 0, i32 1
  %104 = load ptr, ptr %zText132, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %104, i64 0
  %105 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %105 to i32
  %cmp135 = icmp eq i32 %conv134, 45
  br i1 %cmp135, label %land.lhs.true137, label %if.end177

land.lhs.true137:                                 ; preds = %land.lhs.true131
  %106 = load ptr, ptr %pStream.addr, align 8
  %zText138 = getelementptr inbounds nuw %struct.SyStream, ptr %106, i32 0, i32 1
  %107 = load ptr, ptr %zText138, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %107, i64 1
  %108 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %108 to i32
  %cmp141 = icmp eq i32 %conv140, 45
  br i1 %cmp141, label %if.then143, label %if.end177

if.then143:                                       ; preds = %land.lhs.true137
  %109 = load ptr, ptr %pStream.addr, align 8
  %zText144 = getelementptr inbounds nuw %struct.SyStream, ptr %109, i32 0, i32 1
  %110 = load ptr, ptr %zText144, align 8
  %add.ptr145 = getelementptr inbounds nuw i8, ptr %110, i64 2
  store ptr %add.ptr145, ptr %zText144, align 8
  br label %while.cond146

while.cond146:                                    ; preds = %if.end171, %if.then143
  %111 = load ptr, ptr %pStream.addr, align 8
  %zEnd147 = getelementptr inbounds nuw %struct.SyStream, ptr %111, i32 0, i32 2
  %112 = load ptr, ptr %zEnd147, align 8
  %113 = load ptr, ptr %pStream.addr, align 8
  %zText148 = getelementptr inbounds nuw %struct.SyStream, ptr %113, i32 0, i32 1
  %114 = load ptr, ptr %zText148, align 8
  %sub.ptr.lhs.cast149 = ptrtoint ptr %112 to i64
  %sub.ptr.rhs.cast150 = ptrtoint ptr %114 to i64
  %sub.ptr.sub151 = sub i64 %sub.ptr.lhs.cast149, %sub.ptr.rhs.cast150
  %conv152 = trunc i64 %sub.ptr.sub151 to i32
  %conv153 = zext i32 %conv152 to i64
  %cmp154 = icmp uge i64 %conv153, 3
  br i1 %cmp154, label %land.rhs156, label %land.end161

land.rhs156:                                      ; preds = %while.cond146
  %115 = load ptr, ptr %pStream.addr, align 8
  %zText157 = getelementptr inbounds nuw %struct.SyStream, ptr %115, i32 0, i32 1
  %116 = load ptr, ptr %zText157, align 8
  %call158 = call i32 @SyMemcmp(ptr noundef %116, ptr noundef @.str.568, i32 noundef 3)
  %cmp159 = icmp ne i32 %call158, 0
  br label %land.end161

land.end161:                                      ; preds = %land.rhs156, %while.cond146
  %117 = phi i1 [ false, %while.cond146 ], [ %cmp159, %land.rhs156 ]
  br i1 %117, label %while.body162, label %while.end174

while.body162:                                    ; preds = %land.end161
  %118 = load ptr, ptr %pStream.addr, align 8
  %zText163 = getelementptr inbounds nuw %struct.SyStream, ptr %118, i32 0, i32 1
  %119 = load ptr, ptr %zText163, align 8
  %arrayidx164 = getelementptr inbounds i8, ptr %119, i64 0
  %120 = load i8, ptr %arrayidx164, align 1
  %conv165 = zext i8 %120 to i32
  %cmp166 = icmp eq i32 %conv165, 10
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %while.body162
  %121 = load ptr, ptr %pStream.addr, align 8
  %nLine169 = getelementptr inbounds nuw %struct.SyStream, ptr %121, i32 0, i32 3
  %122 = load i32, ptr %nLine169, align 8
  %inc170 = add i32 %122, 1
  store i32 %inc170, ptr %nLine169, align 8
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %while.body162
  %123 = load ptr, ptr %pStream.addr, align 8
  %zText172 = getelementptr inbounds nuw %struct.SyStream, ptr %123, i32 0, i32 1
  %124 = load ptr, ptr %zText172, align 8
  %incdec.ptr173 = getelementptr inbounds nuw i8, ptr %124, i32 1
  store ptr %incdec.ptr173, ptr %zText172, align 8
  br label %while.cond146, !llvm.loop !9

while.end174:                                     ; preds = %land.end161
  %125 = load ptr, ptr %pStream.addr, align 8
  %zText175 = getelementptr inbounds nuw %struct.SyStream, ptr %125, i32 0, i32 1
  %126 = load ptr, ptr %zText175, align 8
  %add.ptr176 = getelementptr inbounds nuw i8, ptr %126, i64 3
  store ptr %add.ptr176, ptr %zText175, align 8
  store i32 -25, ptr %retval, align 4
  br label %return

if.end177:                                        ; preds = %land.lhs.true137, %land.lhs.true131, %if.then119
  %127 = load ptr, ptr %pStream.addr, align 8
  %zEnd178 = getelementptr inbounds nuw %struct.SyStream, ptr %127, i32 0, i32 2
  %128 = load ptr, ptr %zEnd178, align 8
  %129 = load ptr, ptr %pStream.addr, align 8
  %zText179 = getelementptr inbounds nuw %struct.SyStream, ptr %129, i32 0, i32 1
  %130 = load ptr, ptr %zText179, align 8
  %sub.ptr.lhs.cast180 = ptrtoint ptr %128 to i64
  %sub.ptr.rhs.cast181 = ptrtoint ptr %130 to i64
  %sub.ptr.sub182 = sub i64 %sub.ptr.lhs.cast180, %sub.ptr.rhs.cast181
  %conv183 = trunc i64 %sub.ptr.sub182 to i32
  %conv184 = zext i32 %conv183 to i64
  %cmp185 = icmp uge i64 %conv184, 7
  br i1 %cmp185, label %land.lhs.true187, label %if.end258

land.lhs.true187:                                 ; preds = %if.end177
  %131 = load ptr, ptr %pStream.addr, align 8
  %zText188 = getelementptr inbounds nuw %struct.SyStream, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %zText188, align 8
  %call189 = call i32 @SyMemcmp(ptr noundef %132, ptr noundef @.str.569, i32 noundef 7)
  %cmp190 = icmp eq i32 %call189, 0
  br i1 %cmp190, label %if.then192, label %if.end258

if.then192:                                       ; preds = %land.lhs.true187
  %133 = load ptr, ptr %pStream.addr, align 8
  %zText193 = getelementptr inbounds nuw %struct.SyStream, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %zText193, align 8
  %add.ptr194 = getelementptr inbounds nuw i8, ptr %134, i64 7
  store ptr %add.ptr194, ptr %zText193, align 8
  %135 = load ptr, ptr %pStream.addr, align 8
  %zText195 = getelementptr inbounds nuw %struct.SyStream, ptr %135, i32 0, i32 1
  %136 = load ptr, ptr %zText195, align 8
  %137 = load ptr, ptr %pStr, align 8
  %zString196 = getelementptr inbounds nuw %struct.SyString, ptr %137, i32 0, i32 0
  store ptr %136, ptr %zString196, align 8
  br label %while.cond197

while.cond197:                                    ; preds = %if.end222, %if.then192
  %138 = load ptr, ptr %pStream.addr, align 8
  %zEnd198 = getelementptr inbounds nuw %struct.SyStream, ptr %138, i32 0, i32 2
  %139 = load ptr, ptr %zEnd198, align 8
  %140 = load ptr, ptr %pStream.addr, align 8
  %zText199 = getelementptr inbounds nuw %struct.SyStream, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %zText199, align 8
  %sub.ptr.lhs.cast200 = ptrtoint ptr %139 to i64
  %sub.ptr.rhs.cast201 = ptrtoint ptr %141 to i64
  %sub.ptr.sub202 = sub i64 %sub.ptr.lhs.cast200, %sub.ptr.rhs.cast201
  %conv203 = trunc i64 %sub.ptr.sub202 to i32
  %conv204 = zext i32 %conv203 to i64
  %cmp205 = icmp uge i64 %conv204, 3
  br i1 %cmp205, label %land.rhs207, label %land.end212

land.rhs207:                                      ; preds = %while.cond197
  %142 = load ptr, ptr %pStream.addr, align 8
  %zText208 = getelementptr inbounds nuw %struct.SyStream, ptr %142, i32 0, i32 1
  %143 = load ptr, ptr %zText208, align 8
  %call209 = call i32 @SyMemcmp(ptr noundef %143, ptr noundef @.str.570, i32 noundef 3)
  %cmp210 = icmp ne i32 %call209, 0
  br label %land.end212

land.end212:                                      ; preds = %land.rhs207, %while.cond197
  %144 = phi i1 [ false, %while.cond197 ], [ %cmp210, %land.rhs207 ]
  br i1 %144, label %while.body213, label %while.end225

while.body213:                                    ; preds = %land.end212
  %145 = load ptr, ptr %pStream.addr, align 8
  %zText214 = getelementptr inbounds nuw %struct.SyStream, ptr %145, i32 0, i32 1
  %146 = load ptr, ptr %zText214, align 8
  %arrayidx215 = getelementptr inbounds i8, ptr %146, i64 0
  %147 = load i8, ptr %arrayidx215, align 1
  %conv216 = zext i8 %147 to i32
  %cmp217 = icmp eq i32 %conv216, 10
  br i1 %cmp217, label %if.then219, label %if.end222

if.then219:                                       ; preds = %while.body213
  %148 = load ptr, ptr %pStream.addr, align 8
  %nLine220 = getelementptr inbounds nuw %struct.SyStream, ptr %148, i32 0, i32 3
  %149 = load i32, ptr %nLine220, align 8
  %inc221 = add i32 %149, 1
  store i32 %inc221, ptr %nLine220, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then219, %while.body213
  %150 = load ptr, ptr %pStream.addr, align 8
  %zText223 = getelementptr inbounds nuw %struct.SyStream, ptr %150, i32 0, i32 1
  %151 = load ptr, ptr %zText223, align 8
  %incdec.ptr224 = getelementptr inbounds nuw i8, ptr %151, i32 1
  store ptr %incdec.ptr224, ptr %zText223, align 8
  br label %while.cond197, !llvm.loop !10

while.end225:                                     ; preds = %land.end212
  %152 = load ptr, ptr %pStream.addr, align 8
  %zText226 = getelementptr inbounds nuw %struct.SyStream, ptr %152, i32 0, i32 1
  %153 = load ptr, ptr %zText226, align 8
  %154 = load ptr, ptr %pStr, align 8
  %zString227 = getelementptr inbounds nuw %struct.SyString, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %zString227, align 8
  %sub.ptr.lhs.cast228 = ptrtoint ptr %153 to i64
  %sub.ptr.rhs.cast229 = ptrtoint ptr %155 to i64
  %sub.ptr.sub230 = sub i64 %sub.ptr.lhs.cast228, %sub.ptr.rhs.cast229
  %conv231 = trunc i64 %sub.ptr.sub230 to i32
  %156 = load ptr, ptr %pStr, align 8
  %nByte232 = getelementptr inbounds nuw %struct.SyString, ptr %156, i32 0, i32 1
  store i32 %conv231, ptr %nByte232, align 8
  %157 = load ptr, ptr %pToken.addr, align 8
  %nType233 = getelementptr inbounds nuw %struct.SyToken, ptr %157, i32 0, i32 1
  store i32 32, ptr %nType233, align 8
  %158 = load ptr, ptr %pStream.addr, align 8
  %zEnd234 = getelementptr inbounds nuw %struct.SyStream, ptr %158, i32 0, i32 2
  %159 = load ptr, ptr %zEnd234, align 8
  %160 = load ptr, ptr %pStream.addr, align 8
  %zText235 = getelementptr inbounds nuw %struct.SyStream, ptr %160, i32 0, i32 1
  %161 = load ptr, ptr %zText235, align 8
  %sub.ptr.lhs.cast236 = ptrtoint ptr %159 to i64
  %sub.ptr.rhs.cast237 = ptrtoint ptr %161 to i64
  %sub.ptr.sub238 = sub i64 %sub.ptr.lhs.cast236, %sub.ptr.rhs.cast237
  %conv239 = trunc i64 %sub.ptr.sub238 to i32
  %conv240 = zext i32 %conv239 to i64
  %cmp241 = icmp ult i64 %conv240, 3
  br i1 %cmp241, label %if.then243, label %if.end255

if.then243:                                       ; preds = %while.end225
  %162 = load ptr, ptr %pParse, align 8
  %xError244 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %162, i32 0, i32 11
  %163 = load ptr, ptr %xError244, align 8
  %tobool245 = icmp ne ptr %163, null
  br i1 %tobool245, label %if.then246, label %if.end254

if.then246:                                       ; preds = %if.then243
  %164 = load ptr, ptr %pParse, align 8
  %xError247 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %164, i32 0, i32 11
  %165 = load ptr, ptr %xError247, align 8
  %166 = load ptr, ptr %pToken.addr, align 8
  %167 = load ptr, ptr %pParse, align 8
  %pUserData248 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %167, i32 0, i32 1
  %168 = load ptr, ptr %pUserData248, align 8
  %call249 = call i32 %165(ptr noundef @.str.571, i32 noundef 6, ptr noundef %166, ptr noundef %168)
  store i32 %call249, ptr %rc, align 4
  %169 = load i32, ptr %rc, align 4
  %cmp250 = icmp eq i32 %169, -10
  br i1 %cmp250, label %if.then252, label %if.end253

if.then252:                                       ; preds = %if.then246
  store i32 -10, ptr %retval, align 4
  br label %return

if.end253:                                        ; preds = %if.then246
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.then243
  store i32 -18, ptr %retval, align 4
  br label %return

if.end255:                                        ; preds = %while.end225
  %170 = load ptr, ptr %pStream.addr, align 8
  %zText256 = getelementptr inbounds nuw %struct.SyStream, ptr %170, i32 0, i32 1
  %171 = load ptr, ptr %zText256, align 8
  %add.ptr257 = getelementptr inbounds nuw i8, ptr %171, i64 3
  store ptr %add.ptr257, ptr %zText256, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end258:                                        ; preds = %land.lhs.true187, %if.end177
  %172 = load ptr, ptr %pStream.addr, align 8
  %zEnd259 = getelementptr inbounds nuw %struct.SyStream, ptr %172, i32 0, i32 2
  %173 = load ptr, ptr %zEnd259, align 8
  %174 = load ptr, ptr %pStream.addr, align 8
  %zText260 = getelementptr inbounds nuw %struct.SyStream, ptr %174, i32 0, i32 1
  %175 = load ptr, ptr %zText260, align 8
  %sub.ptr.lhs.cast261 = ptrtoint ptr %173 to i64
  %sub.ptr.rhs.cast262 = ptrtoint ptr %175 to i64
  %sub.ptr.sub263 = sub i64 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  %conv264 = trunc i64 %sub.ptr.sub263 to i32
  %conv265 = zext i32 %conv264 to i64
  %cmp266 = icmp uge i64 %conv265, 7
  br i1 %cmp266, label %land.lhs.true268, label %if.end392

land.lhs.true268:                                 ; preds = %if.end258
  %176 = load ptr, ptr %pStream.addr, align 8
  %zText269 = getelementptr inbounds nuw %struct.SyStream, ptr %176, i32 0, i32 1
  %177 = load ptr, ptr %zText269, align 8
  %call270 = call i32 @SyMemcmp(ptr noundef %177, ptr noundef @.str.572, i32 noundef 7)
  %cmp271 = icmp eq i32 %call270, 0
  br i1 %cmp271, label %if.then273, label %if.end392

if.then273:                                       ; preds = %land.lhs.true268
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sDelim, ptr align 8 @__const.XML_Tokenize.sDelim, i64 16, i1 false)
  store i32 0, ptr %c274, align 4
  %178 = load ptr, ptr %pStream.addr, align 8
  %zText275 = getelementptr inbounds nuw %struct.SyStream, ptr %178, i32 0, i32 1
  %179 = load ptr, ptr %zText275, align 8
  %add.ptr276 = getelementptr inbounds nuw i8, ptr %179, i64 7
  store ptr %add.ptr276, ptr %zText275, align 8
  %180 = load ptr, ptr %pStream.addr, align 8
  %zText277 = getelementptr inbounds nuw %struct.SyStream, ptr %180, i32 0, i32 1
  %181 = load ptr, ptr %zText277, align 8
  %182 = load ptr, ptr %pStr, align 8
  %zString278 = getelementptr inbounds nuw %struct.SyString, ptr %182, i32 0, i32 0
  store ptr %181, ptr %zString278, align 8
  br label %while.cond279

while.cond279:                                    ; preds = %if.end314, %if.then273
  %183 = load ptr, ptr %pStream.addr, align 8
  %zText280 = getelementptr inbounds nuw %struct.SyStream, ptr %183, i32 0, i32 1
  %184 = load ptr, ptr %zText280, align 8
  %185 = load ptr, ptr %pStream.addr, align 8
  %zEnd281 = getelementptr inbounds nuw %struct.SyStream, ptr %185, i32 0, i32 2
  %186 = load ptr, ptr %zEnd281, align 8
  %cmp282 = icmp ult ptr %184, %186
  br i1 %cmp282, label %land.rhs284, label %land.end290

land.rhs284:                                      ; preds = %while.cond279
  %187 = load ptr, ptr %pStream.addr, align 8
  %zText285 = getelementptr inbounds nuw %struct.SyStream, ptr %187, i32 0, i32 1
  %188 = load ptr, ptr %zText285, align 8
  %arrayidx286 = getelementptr inbounds i8, ptr %188, i64 0
  %189 = load i8, ptr %arrayidx286, align 1
  %conv287 = zext i8 %189 to i32
  %cmp288 = icmp ne i32 %conv287, 10
  br label %land.end290

land.end290:                                      ; preds = %land.rhs284, %while.cond279
  %190 = phi i1 [ false, %while.cond279 ], [ %cmp288, %land.rhs284 ]
  br i1 %190, label %while.body291, label %while.end317

while.body291:                                    ; preds = %land.end290
  %191 = load ptr, ptr %pStream.addr, align 8
  %zText292 = getelementptr inbounds nuw %struct.SyStream, ptr %191, i32 0, i32 1
  %192 = load ptr, ptr %zText292, align 8
  %arrayidx293 = getelementptr inbounds i8, ptr %192, i64 0
  %193 = load i8, ptr %arrayidx293, align 1
  %conv294 = zext i8 %193 to i32
  %cmp295 = icmp sge i32 %conv294, 192
  br i1 %cmp295, label %if.then306, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body291
  %call297 = call ptr @__ctype_b_loc() #3
  %194 = load ptr, ptr %call297, align 8
  %195 = load ptr, ptr %pStream.addr, align 8
  %zText298 = getelementptr inbounds nuw %struct.SyStream, ptr %195, i32 0, i32 1
  %196 = load ptr, ptr %zText298, align 8
  %arrayidx299 = getelementptr inbounds i8, ptr %196, i64 0
  %197 = load i8, ptr %arrayidx299, align 1
  %conv300 = zext i8 %197 to i32
  %idxprom301 = sext i32 %conv300 to i64
  %arrayidx302 = getelementptr inbounds i16, ptr %194, i64 %idxprom301
  %198 = load i16, ptr %arrayidx302, align 2
  %conv303 = zext i16 %198 to i32
  %and304 = and i32 %conv303, 8192
  %tobool305 = icmp ne i32 %and304, 0
  br i1 %tobool305, label %if.end314, label %if.then306

if.then306:                                       ; preds = %lor.lhs.false, %while.body291
  %199 = load ptr, ptr %pStream.addr, align 8
  %zText307 = getelementptr inbounds nuw %struct.SyStream, ptr %199, i32 0, i32 1
  %200 = load ptr, ptr %zText307, align 8
  %arrayidx308 = getelementptr inbounds i8, ptr %200, i64 0
  %201 = load i8, ptr %arrayidx308, align 1
  %conv309 = zext i8 %201 to i32
  store i32 %conv309, ptr %c274, align 4
  %202 = load i32, ptr %c274, align 4
  %cmp310 = icmp eq i32 %202, 62
  br i1 %cmp310, label %if.then312, label %if.end313

if.then312:                                       ; preds = %if.then306
  br label %while.end317

if.end313:                                        ; preds = %if.then306
  br label %if.end314

if.end314:                                        ; preds = %if.end313, %lor.lhs.false
  %203 = load ptr, ptr %pStream.addr, align 8
  %zText315 = getelementptr inbounds nuw %struct.SyStream, ptr %203, i32 0, i32 1
  %204 = load ptr, ptr %zText315, align 8
  %incdec.ptr316 = getelementptr inbounds nuw i8, ptr %204, i32 1
  store ptr %incdec.ptr316, ptr %zText315, align 8
  br label %while.cond279, !llvm.loop !11

while.end317:                                     ; preds = %if.then312, %land.end290
  %205 = load i32, ptr %c274, align 4
  %cmp318 = icmp eq i32 %205, 91
  br i1 %cmp318, label %if.then320, label %if.end323

if.then320:                                       ; preds = %while.end317
  %zString321 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 0
  store ptr @.str.573, ptr %zString321, align 8
  %nByte322 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  store i32 2, ptr %nByte322, align 8
  br label %if.end323

if.end323:                                        ; preds = %if.then320, %while.end317
  %206 = load i32, ptr %c274, align 4
  %cmp324 = icmp ne i32 %206, 62
  br i1 %cmp324, label %if.then326, label %if.end358

if.then326:                                       ; preds = %if.end323
  br label %while.cond327

while.cond327:                                    ; preds = %if.end354, %if.then326
  %207 = load ptr, ptr %pStream.addr, align 8
  %zEnd328 = getelementptr inbounds nuw %struct.SyStream, ptr %207, i32 0, i32 2
  %208 = load ptr, ptr %zEnd328, align 8
  %209 = load ptr, ptr %pStream.addr, align 8
  %zText329 = getelementptr inbounds nuw %struct.SyStream, ptr %209, i32 0, i32 1
  %210 = load ptr, ptr %zText329, align 8
  %sub.ptr.lhs.cast330 = ptrtoint ptr %208 to i64
  %sub.ptr.rhs.cast331 = ptrtoint ptr %210 to i64
  %sub.ptr.sub332 = sub i64 %sub.ptr.lhs.cast330, %sub.ptr.rhs.cast331
  %conv333 = trunc i64 %sub.ptr.sub332 to i32
  %nByte334 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  %211 = load i32, ptr %nByte334, align 8
  %cmp335 = icmp uge i32 %conv333, %211
  br i1 %cmp335, label %land.rhs337, label %land.end344

land.rhs337:                                      ; preds = %while.cond327
  %212 = load ptr, ptr %pStream.addr, align 8
  %zText338 = getelementptr inbounds nuw %struct.SyStream, ptr %212, i32 0, i32 1
  %213 = load ptr, ptr %zText338, align 8
  %zString339 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 0
  %214 = load ptr, ptr %zString339, align 8
  %nByte340 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  %215 = load i32, ptr %nByte340, align 8
  %call341 = call i32 @SyMemcmp(ptr noundef %213, ptr noundef %214, i32 noundef %215)
  %cmp342 = icmp ne i32 %call341, 0
  br label %land.end344

land.end344:                                      ; preds = %land.rhs337, %while.cond327
  %216 = phi i1 [ false, %while.cond327 ], [ %cmp342, %land.rhs337 ]
  br i1 %216, label %while.body345, label %while.end357

while.body345:                                    ; preds = %land.end344
  %217 = load ptr, ptr %pStream.addr, align 8
  %zText346 = getelementptr inbounds nuw %struct.SyStream, ptr %217, i32 0, i32 1
  %218 = load ptr, ptr %zText346, align 8
  %arrayidx347 = getelementptr inbounds i8, ptr %218, i64 0
  %219 = load i8, ptr %arrayidx347, align 1
  %conv348 = zext i8 %219 to i32
  %cmp349 = icmp eq i32 %conv348, 10
  br i1 %cmp349, label %if.then351, label %if.end354

if.then351:                                       ; preds = %while.body345
  %220 = load ptr, ptr %pStream.addr, align 8
  %nLine352 = getelementptr inbounds nuw %struct.SyStream, ptr %220, i32 0, i32 3
  %221 = load i32, ptr %nLine352, align 8
  %inc353 = add i32 %221, 1
  store i32 %inc353, ptr %nLine352, align 8
  br label %if.end354

if.end354:                                        ; preds = %if.then351, %while.body345
  %222 = load ptr, ptr %pStream.addr, align 8
  %zText355 = getelementptr inbounds nuw %struct.SyStream, ptr %222, i32 0, i32 1
  %223 = load ptr, ptr %zText355, align 8
  %incdec.ptr356 = getelementptr inbounds nuw i8, ptr %223, i32 1
  store ptr %incdec.ptr356, ptr %zText355, align 8
  br label %while.cond327, !llvm.loop !12

while.end357:                                     ; preds = %land.end344
  br label %if.end358

if.end358:                                        ; preds = %while.end357, %if.end323
  %224 = load ptr, ptr %pStream.addr, align 8
  %zText359 = getelementptr inbounds nuw %struct.SyStream, ptr %224, i32 0, i32 1
  %225 = load ptr, ptr %zText359, align 8
  %226 = load ptr, ptr %pStr, align 8
  %zString360 = getelementptr inbounds nuw %struct.SyString, ptr %226, i32 0, i32 0
  %227 = load ptr, ptr %zString360, align 8
  %sub.ptr.lhs.cast361 = ptrtoint ptr %225 to i64
  %sub.ptr.rhs.cast362 = ptrtoint ptr %227 to i64
  %sub.ptr.sub363 = sub i64 %sub.ptr.lhs.cast361, %sub.ptr.rhs.cast362
  %conv364 = trunc i64 %sub.ptr.sub363 to i32
  %228 = load ptr, ptr %pStr, align 8
  %nByte365 = getelementptr inbounds nuw %struct.SyString, ptr %228, i32 0, i32 1
  store i32 %conv364, ptr %nByte365, align 8
  %229 = load ptr, ptr %pToken.addr, align 8
  %nType366 = getelementptr inbounds nuw %struct.SyToken, ptr %229, i32 0, i32 1
  store i32 4, ptr %nType366, align 8
  %230 = load ptr, ptr %pStream.addr, align 8
  %zEnd367 = getelementptr inbounds nuw %struct.SyStream, ptr %230, i32 0, i32 2
  %231 = load ptr, ptr %zEnd367, align 8
  %232 = load ptr, ptr %pStream.addr, align 8
  %zText368 = getelementptr inbounds nuw %struct.SyStream, ptr %232, i32 0, i32 1
  %233 = load ptr, ptr %zText368, align 8
  %sub.ptr.lhs.cast369 = ptrtoint ptr %231 to i64
  %sub.ptr.rhs.cast370 = ptrtoint ptr %233 to i64
  %sub.ptr.sub371 = sub i64 %sub.ptr.lhs.cast369, %sub.ptr.rhs.cast370
  %conv372 = trunc i64 %sub.ptr.sub371 to i32
  %nByte373 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  %234 = load i32, ptr %nByte373, align 8
  %cmp374 = icmp ult i32 %conv372, %234
  br i1 %cmp374, label %if.then376, label %if.end388

if.then376:                                       ; preds = %if.end358
  %235 = load ptr, ptr %pParse, align 8
  %xError377 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %235, i32 0, i32 11
  %236 = load ptr, ptr %xError377, align 8
  %tobool378 = icmp ne ptr %236, null
  br i1 %tobool378, label %if.then379, label %if.end387

if.then379:                                       ; preds = %if.then376
  %237 = load ptr, ptr %pParse, align 8
  %xError380 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %237, i32 0, i32 11
  %238 = load ptr, ptr %xError380, align 8
  %239 = load ptr, ptr %pToken.addr, align 8
  %240 = load ptr, ptr %pParse, align 8
  %pUserData381 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %240, i32 0, i32 1
  %241 = load ptr, ptr %pUserData381, align 8
  %call382 = call i32 %238(ptr noundef @.str.574, i32 noundef 6, ptr noundef %239, ptr noundef %241)
  store i32 %call382, ptr %rc, align 4
  %242 = load i32, ptr %rc, align 4
  %cmp383 = icmp eq i32 %242, -10
  br i1 %cmp383, label %if.then385, label %if.end386

if.then385:                                       ; preds = %if.then379
  store i32 -10, ptr %retval, align 4
  br label %return

if.end386:                                        ; preds = %if.then379
  br label %if.end387

if.end387:                                        ; preds = %if.end386, %if.then376
  store i32 -18, ptr %retval, align 4
  br label %return

if.end388:                                        ; preds = %if.end358
  %nByte389 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  %243 = load i32, ptr %nByte389, align 8
  %244 = load ptr, ptr %pStream.addr, align 8
  %zText390 = getelementptr inbounds nuw %struct.SyStream, ptr %244, i32 0, i32 1
  %245 = load ptr, ptr %zText390, align 8
  %idx.ext = zext i32 %243 to i64
  %add.ptr391 = getelementptr inbounds nuw i8, ptr %245, i64 %idx.ext
  store ptr %add.ptr391, ptr %zText390, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end392:                                        ; preds = %land.lhs.true268, %if.end258
  br label %if.end674

if.else393:                                       ; preds = %if.else
  %246 = load ptr, ptr %pStream.addr, align 8
  %zText395 = getelementptr inbounds nuw %struct.SyStream, ptr %246, i32 0, i32 1
  %247 = load ptr, ptr %zText395, align 8
  %arrayidx396 = getelementptr inbounds i8, ptr %247, i64 0
  %248 = load i8, ptr %arrayidx396, align 1
  %conv397 = zext i8 %248 to i32
  store i32 %conv397, ptr %c394, align 4
  store i32 0, ptr %rc, align 4
  %249 = load ptr, ptr %pToken.addr, align 8
  %nType398 = getelementptr inbounds nuw %struct.SyToken, ptr %249, i32 0, i32 1
  store i32 16, ptr %nType398, align 8
  %250 = load i32, ptr %c394, align 4
  %cmp399 = icmp eq i32 %250, 47
  br i1 %cmp399, label %if.then401, label %if.end427

if.then401:                                       ; preds = %if.else393
  %251 = load ptr, ptr %pToken.addr, align 8
  %nType402 = getelementptr inbounds nuw %struct.SyToken, ptr %251, i32 0, i32 1
  store i32 64, ptr %nType402, align 8
  %252 = load ptr, ptr %pStream.addr, align 8
  %zText403 = getelementptr inbounds nuw %struct.SyStream, ptr %252, i32 0, i32 1
  %253 = load ptr, ptr %zText403, align 8
  %incdec.ptr404 = getelementptr inbounds nuw i8, ptr %253, i32 1
  store ptr %incdec.ptr404, ptr %zText403, align 8
  %254 = load ptr, ptr %pStr, align 8
  %zString405 = getelementptr inbounds nuw %struct.SyString, ptr %254, i32 0, i32 0
  %255 = load ptr, ptr %zString405, align 8
  %incdec.ptr406 = getelementptr inbounds nuw i8, ptr %255, i32 1
  store ptr %incdec.ptr406, ptr %zString405, align 8
  %256 = load ptr, ptr %pStream.addr, align 8
  %zText407 = getelementptr inbounds nuw %struct.SyStream, ptr %256, i32 0, i32 1
  %257 = load ptr, ptr %zText407, align 8
  %258 = load ptr, ptr %pStream.addr, align 8
  %zEnd408 = getelementptr inbounds nuw %struct.SyStream, ptr %258, i32 0, i32 2
  %259 = load ptr, ptr %zEnd408, align 8
  %cmp409 = icmp uge ptr %257, %259
  br i1 %cmp409, label %if.then411, label %if.end423

if.then411:                                       ; preds = %if.then401
  %260 = load ptr, ptr %pParse, align 8
  %xError412 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %260, i32 0, i32 11
  %261 = load ptr, ptr %xError412, align 8
  %tobool413 = icmp ne ptr %261, null
  br i1 %tobool413, label %if.then414, label %if.end422

if.then414:                                       ; preds = %if.then411
  %262 = load ptr, ptr %pParse, align 8
  %xError415 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %262, i32 0, i32 11
  %263 = load ptr, ptr %xError415, align 8
  %264 = load ptr, ptr %pToken.addr, align 8
  %265 = load ptr, ptr %pParse, align 8
  %pUserData416 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %265, i32 0, i32 1
  %266 = load ptr, ptr %pUserData416, align 8
  %call417 = call i32 %263(ptr noundef @.str.566, i32 noundef 3, ptr noundef %264, ptr noundef %266)
  store i32 %call417, ptr %rc, align 4
  %267 = load i32, ptr %rc, align 4
  %cmp418 = icmp eq i32 %267, -10
  br i1 %cmp418, label %if.then420, label %if.end421

if.then420:                                       ; preds = %if.then414
  store i32 -10, ptr %retval, align 4
  br label %return

if.end421:                                        ; preds = %if.then414
  br label %if.end422

if.end422:                                        ; preds = %if.end421, %if.then411
  store i32 -18, ptr %retval, align 4
  br label %return

if.end423:                                        ; preds = %if.then401
  %268 = load ptr, ptr %pStream.addr, align 8
  %zText424 = getelementptr inbounds nuw %struct.SyStream, ptr %268, i32 0, i32 1
  %269 = load ptr, ptr %zText424, align 8
  %arrayidx425 = getelementptr inbounds i8, ptr %269, i64 0
  %270 = load i8, ptr %arrayidx425, align 1
  %conv426 = zext i8 %270 to i32
  store i32 %conv426, ptr %c394, align 4
  br label %if.end427

if.end427:                                        ; preds = %if.end423, %if.else393
  %271 = load i32, ptr %c394, align 4
  %cmp428 = icmp eq i32 %271, 62
  br i1 %cmp428, label %if.then430, label %if.end442

if.then430:                                       ; preds = %if.end427
  %272 = load ptr, ptr %pParse, align 8
  %xError431 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %272, i32 0, i32 11
  %273 = load ptr, ptr %xError431, align 8
  %tobool432 = icmp ne ptr %273, null
  br i1 %tobool432, label %if.then433, label %if.end441

if.then433:                                       ; preds = %if.then430
  %274 = load ptr, ptr %pParse, align 8
  %xError434 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %274, i32 0, i32 11
  %275 = load ptr, ptr %xError434, align 8
  %276 = load ptr, ptr %pToken.addr, align 8
  %277 = load ptr, ptr %pParse, align 8
  %pUserData435 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %277, i32 0, i32 1
  %278 = load ptr, ptr %pUserData435, align 8
  %call436 = call i32 %275(ptr noundef @.str.566, i32 noundef 3, ptr noundef %276, ptr noundef %278)
  store i32 %call436, ptr %rc, align 4
  %279 = load i32, ptr %rc, align 4
  %cmp437 = icmp eq i32 %279, -10
  br i1 %cmp437, label %if.then439, label %if.end440

if.then439:                                       ; preds = %if.then433
  store i32 -10, ptr %retval, align 4
  br label %return

if.end440:                                        ; preds = %if.then433
  br label %if.end441

if.end441:                                        ; preds = %if.end440, %if.then430
  store i32 -25, ptr %retval, align 4
  br label %return

if.end442:                                        ; preds = %if.end427
  %280 = load i32, ptr %c394, align 4
  %cmp443 = icmp slt i32 %280, 192
  br i1 %cmp443, label %land.lhs.true445, label %if.end540

land.lhs.true445:                                 ; preds = %if.end442
  %call446 = call ptr @__ctype_b_loc() #3
  %281 = load ptr, ptr %call446, align 8
  %282 = load i32, ptr %c394, align 4
  %idxprom447 = sext i32 %282 to i64
  %arrayidx448 = getelementptr inbounds i16, ptr %281, i64 %idxprom447
  %283 = load i16, ptr %arrayidx448, align 2
  %conv449 = zext i16 %283 to i32
  %and450 = and i32 %conv449, 8192
  %tobool451 = icmp ne i32 %and450, 0
  br i1 %tobool451, label %if.then528, label %lor.lhs.false452

lor.lhs.false452:                                 ; preds = %land.lhs.true445
  %call453 = call ptr @__ctype_b_loc() #3
  %284 = load ptr, ptr %call453, align 8
  %285 = load i32, ptr %c394, align 4
  %idxprom454 = sext i32 %285 to i64
  %arrayidx455 = getelementptr inbounds i16, ptr %284, i64 %idxprom454
  %286 = load i16, ptr %arrayidx455, align 2
  %conv456 = zext i16 %286 to i32
  %and457 = and i32 %conv456, 2048
  %tobool458 = icmp ne i32 %and457, 0
  br i1 %tobool458, label %if.then528, label %lor.lhs.false459

lor.lhs.false459:                                 ; preds = %lor.lhs.false452
  %287 = load i32, ptr %c394, align 4
  %cmp460 = icmp eq i32 %287, 46
  br i1 %cmp460, label %if.then528, label %lor.lhs.false462

lor.lhs.false462:                                 ; preds = %lor.lhs.false459
  %288 = load i32, ptr %c394, align 4
  %cmp463 = icmp eq i32 %288, 45
  br i1 %cmp463, label %if.then528, label %lor.lhs.false465

lor.lhs.false465:                                 ; preds = %lor.lhs.false462
  %289 = load i32, ptr %c394, align 4
  %cmp466 = icmp eq i32 %289, 60
  br i1 %cmp466, label %if.then528, label %lor.lhs.false468

lor.lhs.false468:                                 ; preds = %lor.lhs.false465
  %290 = load i32, ptr %c394, align 4
  %cmp469 = icmp eq i32 %290, 36
  br i1 %cmp469, label %if.then528, label %lor.lhs.false471

lor.lhs.false471:                                 ; preds = %lor.lhs.false468
  %291 = load i32, ptr %c394, align 4
  %cmp472 = icmp eq i32 %291, 34
  br i1 %cmp472, label %if.then528, label %lor.lhs.false474

lor.lhs.false474:                                 ; preds = %lor.lhs.false471
  %292 = load i32, ptr %c394, align 4
  %cmp475 = icmp eq i32 %292, 39
  br i1 %cmp475, label %if.then528, label %lor.lhs.false477

lor.lhs.false477:                                 ; preds = %lor.lhs.false474
  %293 = load i32, ptr %c394, align 4
  %cmp478 = icmp eq i32 %293, 38
  br i1 %cmp478, label %if.then528, label %lor.lhs.false480

lor.lhs.false480:                                 ; preds = %lor.lhs.false477
  %294 = load i32, ptr %c394, align 4
  %cmp481 = icmp eq i32 %294, 40
  br i1 %cmp481, label %if.then528, label %lor.lhs.false483

lor.lhs.false483:                                 ; preds = %lor.lhs.false480
  %295 = load i32, ptr %c394, align 4
  %cmp484 = icmp eq i32 %295, 41
  br i1 %cmp484, label %if.then528, label %lor.lhs.false486

lor.lhs.false486:                                 ; preds = %lor.lhs.false483
  %296 = load i32, ptr %c394, align 4
  %cmp487 = icmp eq i32 %296, 42
  br i1 %cmp487, label %if.then528, label %lor.lhs.false489

lor.lhs.false489:                                 ; preds = %lor.lhs.false486
  %297 = load i32, ptr %c394, align 4
  %cmp490 = icmp eq i32 %297, 37
  br i1 %cmp490, label %if.then528, label %lor.lhs.false492

lor.lhs.false492:                                 ; preds = %lor.lhs.false489
  %298 = load i32, ptr %c394, align 4
  %cmp493 = icmp eq i32 %298, 35
  br i1 %cmp493, label %if.then528, label %lor.lhs.false495

lor.lhs.false495:                                 ; preds = %lor.lhs.false492
  %299 = load i32, ptr %c394, align 4
  %cmp496 = icmp eq i32 %299, 124
  br i1 %cmp496, label %if.then528, label %lor.lhs.false498

lor.lhs.false498:                                 ; preds = %lor.lhs.false495
  %300 = load i32, ptr %c394, align 4
  %cmp499 = icmp eq i32 %300, 47
  br i1 %cmp499, label %if.then528, label %lor.lhs.false501

lor.lhs.false501:                                 ; preds = %lor.lhs.false498
  %301 = load i32, ptr %c394, align 4
  %cmp502 = icmp eq i32 %301, 126
  br i1 %cmp502, label %if.then528, label %lor.lhs.false504

lor.lhs.false504:                                 ; preds = %lor.lhs.false501
  %302 = load i32, ptr %c394, align 4
  %cmp505 = icmp eq i32 %302, 123
  br i1 %cmp505, label %if.then528, label %lor.lhs.false507

lor.lhs.false507:                                 ; preds = %lor.lhs.false504
  %303 = load i32, ptr %c394, align 4
  %cmp508 = icmp eq i32 %303, 125
  br i1 %cmp508, label %if.then528, label %lor.lhs.false510

lor.lhs.false510:                                 ; preds = %lor.lhs.false507
  %304 = load i32, ptr %c394, align 4
  %cmp511 = icmp eq i32 %304, 91
  br i1 %cmp511, label %if.then528, label %lor.lhs.false513

lor.lhs.false513:                                 ; preds = %lor.lhs.false510
  %305 = load i32, ptr %c394, align 4
  %cmp514 = icmp eq i32 %305, 93
  br i1 %cmp514, label %if.then528, label %lor.lhs.false516

lor.lhs.false516:                                 ; preds = %lor.lhs.false513
  %306 = load i32, ptr %c394, align 4
  %cmp517 = icmp eq i32 %306, 92
  br i1 %cmp517, label %if.then528, label %lor.lhs.false519

lor.lhs.false519:                                 ; preds = %lor.lhs.false516
  %307 = load i32, ptr %c394, align 4
  %cmp520 = icmp eq i32 %307, 59
  br i1 %cmp520, label %if.then528, label %lor.lhs.false522

lor.lhs.false522:                                 ; preds = %lor.lhs.false519
  %308 = load i32, ptr %c394, align 4
  %cmp523 = icmp eq i32 %308, 94
  br i1 %cmp523, label %if.then528, label %lor.lhs.false525

lor.lhs.false525:                                 ; preds = %lor.lhs.false522
  %309 = load i32, ptr %c394, align 4
  %cmp526 = icmp eq i32 %309, 96
  br i1 %cmp526, label %if.then528, label %if.end540

if.then528:                                       ; preds = %lor.lhs.false525, %lor.lhs.false522, %lor.lhs.false519, %lor.lhs.false516, %lor.lhs.false513, %lor.lhs.false510, %lor.lhs.false507, %lor.lhs.false504, %lor.lhs.false501, %lor.lhs.false498, %lor.lhs.false495, %lor.lhs.false492, %lor.lhs.false489, %lor.lhs.false486, %lor.lhs.false483, %lor.lhs.false480, %lor.lhs.false477, %lor.lhs.false474, %lor.lhs.false471, %lor.lhs.false468, %lor.lhs.false465, %lor.lhs.false462, %lor.lhs.false459, %lor.lhs.false452, %land.lhs.true445
  %310 = load ptr, ptr %pParse, align 8
  %xError529 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %310, i32 0, i32 11
  %311 = load ptr, ptr %xError529, align 8
  %tobool530 = icmp ne ptr %311, null
  br i1 %tobool530, label %if.then531, label %if.end539

if.then531:                                       ; preds = %if.then528
  %312 = load ptr, ptr %pParse, align 8
  %xError532 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %312, i32 0, i32 11
  %313 = load ptr, ptr %xError532, align 8
  %314 = load ptr, ptr %pToken.addr, align 8
  %315 = load ptr, ptr %pParse, align 8
  %pUserData533 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %315, i32 0, i32 1
  %316 = load ptr, ptr %pUserData533, align 8
  %call534 = call i32 %313(ptr noundef @.str.566, i32 noundef 3, ptr noundef %314, ptr noundef %316)
  store i32 %call534, ptr %rc, align 4
  %317 = load i32, ptr %rc, align 4
  %cmp535 = icmp eq i32 %317, -10
  br i1 %cmp535, label %if.then537, label %if.end538

if.then537:                                       ; preds = %if.then531
  store i32 -10, ptr %retval, align 4
  br label %return

if.end538:                                        ; preds = %if.then531
  br label %if.end539

if.end539:                                        ; preds = %if.end538, %if.then528
  store i32 -9, ptr %rc, align 4
  br label %if.end540

if.end540:                                        ; preds = %if.end539, %lor.lhs.false525, %if.end442
  %318 = load ptr, ptr %pStream.addr, align 8
  %zText541 = getelementptr inbounds nuw %struct.SyStream, ptr %318, i32 0, i32 1
  %319 = load ptr, ptr %zText541, align 8
  %incdec.ptr542 = getelementptr inbounds nuw i8, ptr %319, i32 1
  store ptr %incdec.ptr542, ptr %zText541, align 8
  br label %while.cond543

while.cond543:                                    ; preds = %if.end629, %if.end540
  %320 = load ptr, ptr %pStream.addr, align 8
  %zText544 = getelementptr inbounds nuw %struct.SyStream, ptr %320, i32 0, i32 1
  %321 = load ptr, ptr %zText544, align 8
  %322 = load ptr, ptr %pStream.addr, align 8
  %zEnd545 = getelementptr inbounds nuw %struct.SyStream, ptr %322, i32 0, i32 2
  %323 = load ptr, ptr %zEnd545, align 8
  %cmp546 = icmp ult ptr %321, %323
  br i1 %cmp546, label %land.rhs548, label %land.end554

land.rhs548:                                      ; preds = %while.cond543
  %324 = load ptr, ptr %pStream.addr, align 8
  %zText549 = getelementptr inbounds nuw %struct.SyStream, ptr %324, i32 0, i32 1
  %325 = load ptr, ptr %zText549, align 8
  %arrayidx550 = getelementptr inbounds i8, ptr %325, i64 0
  %326 = load i8, ptr %arrayidx550, align 1
  %conv551 = zext i8 %326 to i32
  %cmp552 = icmp ne i32 %conv551, 62
  br label %land.end554

land.end554:                                      ; preds = %land.rhs548, %while.cond543
  %327 = phi i1 [ false, %while.cond543 ], [ %cmp552, %land.rhs548 ]
  br i1 %327, label %while.body555, label %while.end630

while.body555:                                    ; preds = %land.end554
  %328 = load ptr, ptr %pStream.addr, align 8
  %zText556 = getelementptr inbounds nuw %struct.SyStream, ptr %328, i32 0, i32 1
  %329 = load ptr, ptr %zText556, align 8
  %arrayidx557 = getelementptr inbounds i8, ptr %329, i64 0
  %330 = load i8, ptr %arrayidx557, align 1
  %conv558 = zext i8 %330 to i32
  store i32 %conv558, ptr %c394, align 4
  %331 = load i32, ptr %c394, align 4
  %cmp559 = icmp sge i32 %331, 192
  br i1 %cmp559, label %if.then561, label %if.else581

if.then561:                                       ; preds = %while.body555
  %332 = load ptr, ptr %pStream.addr, align 8
  %zText562 = getelementptr inbounds nuw %struct.SyStream, ptr %332, i32 0, i32 1
  %333 = load ptr, ptr %zText562, align 8
  %incdec.ptr563 = getelementptr inbounds nuw i8, ptr %333, i32 1
  store ptr %incdec.ptr563, ptr %zText562, align 8
  br label %while.cond564

while.cond564:                                    ; preds = %while.body577, %if.then561
  %334 = load ptr, ptr %pStream.addr, align 8
  %zText565 = getelementptr inbounds nuw %struct.SyStream, ptr %334, i32 0, i32 1
  %335 = load ptr, ptr %zText565, align 8
  %336 = load ptr, ptr %pStream.addr, align 8
  %zEnd566 = getelementptr inbounds nuw %struct.SyStream, ptr %336, i32 0, i32 2
  %337 = load ptr, ptr %zEnd566, align 8
  %cmp567 = icmp ult ptr %335, %337
  br i1 %cmp567, label %land.rhs569, label %land.end576

land.rhs569:                                      ; preds = %while.cond564
  %338 = load ptr, ptr %pStream.addr, align 8
  %zText570 = getelementptr inbounds nuw %struct.SyStream, ptr %338, i32 0, i32 1
  %339 = load ptr, ptr %zText570, align 8
  %arrayidx571 = getelementptr inbounds i8, ptr %339, i64 0
  %340 = load i8, ptr %arrayidx571, align 1
  %conv572 = zext i8 %340 to i32
  %and573 = and i32 %conv572, 192
  %cmp574 = icmp eq i32 %and573, 128
  br label %land.end576

land.end576:                                      ; preds = %land.rhs569, %while.cond564
  %341 = phi i1 [ false, %while.cond564 ], [ %cmp574, %land.rhs569 ]
  br i1 %341, label %while.body577, label %while.end580

while.body577:                                    ; preds = %land.end576
  %342 = load ptr, ptr %pStream.addr, align 8
  %zText578 = getelementptr inbounds nuw %struct.SyStream, ptr %342, i32 0, i32 1
  %343 = load ptr, ptr %zText578, align 8
  %incdec.ptr579 = getelementptr inbounds nuw i8, ptr %343, i32 1
  store ptr %incdec.ptr579, ptr %zText578, align 8
  br label %while.cond564, !llvm.loop !13

while.end580:                                     ; preds = %land.end576
  br label %if.end629

if.else581:                                       ; preds = %while.body555
  %344 = load i32, ptr %c394, align 4
  %cmp582 = icmp eq i32 %344, 47
  br i1 %cmp582, label %land.lhs.true584, label %if.end617

land.lhs.true584:                                 ; preds = %if.else581
  %345 = load ptr, ptr %pStream.addr, align 8
  %zText585 = getelementptr inbounds nuw %struct.SyStream, ptr %345, i32 0, i32 1
  %346 = load ptr, ptr %zText585, align 8
  %arrayidx586 = getelementptr inbounds i8, ptr %346, i64 1
  %347 = load ptr, ptr %pStream.addr, align 8
  %zEnd587 = getelementptr inbounds nuw %struct.SyStream, ptr %347, i32 0, i32 2
  %348 = load ptr, ptr %zEnd587, align 8
  %cmp588 = icmp ult ptr %arrayidx586, %348
  br i1 %cmp588, label %land.lhs.true590, label %if.end617

land.lhs.true590:                                 ; preds = %land.lhs.true584
  %349 = load ptr, ptr %pStream.addr, align 8
  %zText591 = getelementptr inbounds nuw %struct.SyStream, ptr %349, i32 0, i32 1
  %350 = load ptr, ptr %zText591, align 8
  %arrayidx592 = getelementptr inbounds i8, ptr %350, i64 1
  %351 = load i8, ptr %arrayidx592, align 1
  %conv593 = zext i8 %351 to i32
  %cmp594 = icmp eq i32 %conv593, 62
  br i1 %cmp594, label %if.then596, label %if.end617

if.then596:                                       ; preds = %land.lhs.true590
  %352 = load ptr, ptr %pStream.addr, align 8
  %zText597 = getelementptr inbounds nuw %struct.SyStream, ptr %352, i32 0, i32 1
  %353 = load ptr, ptr %zText597, align 8
  %incdec.ptr598 = getelementptr inbounds nuw i8, ptr %353, i32 1
  store ptr %incdec.ptr598, ptr %zText597, align 8
  %354 = load ptr, ptr %pToken.addr, align 8
  %nType599 = getelementptr inbounds nuw %struct.SyToken, ptr %354, i32 0, i32 1
  %355 = load i32, ptr %nType599, align 8
  %cmp600 = icmp ne i32 %355, 16
  br i1 %cmp600, label %if.then602, label %if.else614

if.then602:                                       ; preds = %if.then596
  %356 = load ptr, ptr %pParse, align 8
  %xError603 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %356, i32 0, i32 11
  %357 = load ptr, ptr %xError603, align 8
  %tobool604 = icmp ne ptr %357, null
  br i1 %tobool604, label %if.then605, label %if.end613

if.then605:                                       ; preds = %if.then602
  %358 = load ptr, ptr %pParse, align 8
  %xError606 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %358, i32 0, i32 11
  %359 = load ptr, ptr %xError606, align 8
  %360 = load ptr, ptr %pToken.addr, align 8
  %361 = load ptr, ptr %pParse, align 8
  %pUserData607 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %361, i32 0, i32 1
  %362 = load ptr, ptr %pUserData607, align 8
  %call608 = call i32 %359(ptr noundef @.str.575, i32 noundef 3, ptr noundef %360, ptr noundef %362)
  store i32 %call608, ptr %rc, align 4
  %363 = load i32, ptr %rc, align 4
  %cmp609 = icmp eq i32 %363, -10
  br i1 %cmp609, label %if.then611, label %if.end612

if.then611:                                       ; preds = %if.then605
  store i32 -10, ptr %retval, align 4
  br label %return

if.end612:                                        ; preds = %if.then605
  br label %if.end613

if.end613:                                        ; preds = %if.end612, %if.then602
  store i32 -9, ptr %rc, align 4
  br label %if.end616

if.else614:                                       ; preds = %if.then596
  %364 = load ptr, ptr %pToken.addr, align 8
  %nType615 = getelementptr inbounds nuw %struct.SyToken, ptr %364, i32 0, i32 1
  store i32 128, ptr %nType615, align 8
  br label %if.end616

if.end616:                                        ; preds = %if.else614, %if.end613
  br label %while.end630

if.end617:                                        ; preds = %land.lhs.true590, %land.lhs.true584, %if.else581
  %365 = load ptr, ptr %pStream.addr, align 8
  %zText618 = getelementptr inbounds nuw %struct.SyStream, ptr %365, i32 0, i32 1
  %366 = load ptr, ptr %zText618, align 8
  %arrayidx619 = getelementptr inbounds i8, ptr %366, i64 0
  %367 = load i8, ptr %arrayidx619, align 1
  %conv620 = zext i8 %367 to i32
  %cmp621 = icmp eq i32 %conv620, 10
  br i1 %cmp621, label %if.then623, label %if.end626

if.then623:                                       ; preds = %if.end617
  %368 = load ptr, ptr %pStream.addr, align 8
  %nLine624 = getelementptr inbounds nuw %struct.SyStream, ptr %368, i32 0, i32 3
  %369 = load i32, ptr %nLine624, align 8
  %inc625 = add i32 %369, 1
  store i32 %inc625, ptr %nLine624, align 8
  br label %if.end626

if.end626:                                        ; preds = %if.then623, %if.end617
  %370 = load ptr, ptr %pStream.addr, align 8
  %zText627 = getelementptr inbounds nuw %struct.SyStream, ptr %370, i32 0, i32 1
  %371 = load ptr, ptr %zText627, align 8
  %incdec.ptr628 = getelementptr inbounds nuw i8, ptr %371, i32 1
  store ptr %incdec.ptr628, ptr %zText627, align 8
  br label %if.end629

if.end629:                                        ; preds = %if.end626, %while.end580
  br label %while.cond543, !llvm.loop !14

while.end630:                                     ; preds = %if.end616, %land.end554
  %372 = load i32, ptr %rc, align 4
  %cmp631 = icmp ne i32 %372, 0
  br i1 %cmp631, label %if.then633, label %if.end634

if.then633:                                       ; preds = %while.end630
  store i32 -25, ptr %retval, align 4
  br label %return

if.end634:                                        ; preds = %while.end630
  %373 = load ptr, ptr %pStream.addr, align 8
  %zText635 = getelementptr inbounds nuw %struct.SyStream, ptr %373, i32 0, i32 1
  %374 = load ptr, ptr %zText635, align 8
  %375 = load ptr, ptr %pStr, align 8
  %zString636 = getelementptr inbounds nuw %struct.SyString, ptr %375, i32 0, i32 0
  %376 = load ptr, ptr %zString636, align 8
  %sub.ptr.lhs.cast637 = ptrtoint ptr %374 to i64
  %sub.ptr.rhs.cast638 = ptrtoint ptr %376 to i64
  %sub.ptr.sub639 = sub i64 %sub.ptr.lhs.cast637, %sub.ptr.rhs.cast638
  %conv640 = trunc i64 %sub.ptr.sub639 to i32
  %377 = load ptr, ptr %pStr, align 8
  %nByte641 = getelementptr inbounds nuw %struct.SyString, ptr %377, i32 0, i32 1
  store i32 %conv640, ptr %nByte641, align 8
  %378 = load ptr, ptr %pToken.addr, align 8
  %nType642 = getelementptr inbounds nuw %struct.SyToken, ptr %378, i32 0, i32 1
  %379 = load i32, ptr %nType642, align 8
  %cmp643 = icmp eq i32 %379, 128
  br i1 %cmp643, label %land.lhs.true645, label %if.end653

land.lhs.true645:                                 ; preds = %if.end634
  %380 = load ptr, ptr %pStr, align 8
  %nByte646 = getelementptr inbounds nuw %struct.SyString, ptr %380, i32 0, i32 1
  %381 = load i32, ptr %nByte646, align 8
  %cmp647 = icmp ugt i32 %381, 0
  br i1 %cmp647, label %if.then649, label %if.end653

if.then649:                                       ; preds = %land.lhs.true645
  %382 = load ptr, ptr %pStr, align 8
  %nByte650 = getelementptr inbounds nuw %struct.SyString, ptr %382, i32 0, i32 1
  %383 = load i32, ptr %nByte650, align 8
  %conv651 = zext i32 %383 to i64
  %sub = sub i64 %conv651, 1
  %conv652 = trunc i64 %sub to i32
  store i32 %conv652, ptr %nByte650, align 8
  br label %if.end653

if.end653:                                        ; preds = %if.then649, %land.lhs.true645, %if.end634
  %384 = load ptr, ptr %pStream.addr, align 8
  %zText654 = getelementptr inbounds nuw %struct.SyStream, ptr %384, i32 0, i32 1
  %385 = load ptr, ptr %zText654, align 8
  %386 = load ptr, ptr %pStream.addr, align 8
  %zEnd655 = getelementptr inbounds nuw %struct.SyStream, ptr %386, i32 0, i32 2
  %387 = load ptr, ptr %zEnd655, align 8
  %cmp656 = icmp ult ptr %385, %387
  br i1 %cmp656, label %if.then658, label %if.else661

if.then658:                                       ; preds = %if.end653
  %388 = load ptr, ptr %pStream.addr, align 8
  %zText659 = getelementptr inbounds nuw %struct.SyStream, ptr %388, i32 0, i32 1
  %389 = load ptr, ptr %zText659, align 8
  %incdec.ptr660 = getelementptr inbounds nuw i8, ptr %389, i32 1
  store ptr %incdec.ptr660, ptr %zText659, align 8
  br label %if.end673

if.else661:                                       ; preds = %if.end653
  %390 = load ptr, ptr %pParse, align 8
  %xError662 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %390, i32 0, i32 11
  %391 = load ptr, ptr %xError662, align 8
  %tobool663 = icmp ne ptr %391, null
  br i1 %tobool663, label %if.then664, label %if.end672

if.then664:                                       ; preds = %if.else661
  %392 = load ptr, ptr %pParse, align 8
  %xError665 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %392, i32 0, i32 11
  %393 = load ptr, ptr %xError665, align 8
  %394 = load ptr, ptr %pToken.addr, align 8
  %395 = load ptr, ptr %pParse, align 8
  %pUserData666 = getelementptr inbounds nuw %struct.SyXMLParser, ptr %395, i32 0, i32 1
  %396 = load ptr, ptr %pUserData666, align 8
  %call667 = call i32 %393(ptr noundef @.str.576, i32 noundef 6, ptr noundef %394, ptr noundef %396)
  store i32 %call667, ptr %rc, align 4
  %397 = load i32, ptr %rc, align 4
  %cmp668 = icmp eq i32 %397, -10
  br i1 %cmp668, label %if.then670, label %if.end671

if.then670:                                       ; preds = %if.then664
  store i32 -10, ptr %retval, align 4
  br label %return

if.end671:                                        ; preds = %if.then664
  br label %if.end672

if.end672:                                        ; preds = %if.end671, %if.else661
  br label %if.end673

if.end673:                                        ; preds = %if.end672, %if.then658
  br label %if.end674

if.end674:                                        ; preds = %if.end673, %if.end392
  br label %if.end675

if.end675:                                        ; preds = %if.end674, %if.end115
  br label %if.end732

if.else676:                                       ; preds = %if.end20
  br label %while.cond677

while.cond677:                                    ; preds = %if.end722, %if.else676
  %398 = load ptr, ptr %pStream.addr, align 8
  %zText678 = getelementptr inbounds nuw %struct.SyStream, ptr %398, i32 0, i32 1
  %399 = load ptr, ptr %zText678, align 8
  %400 = load ptr, ptr %pStream.addr, align 8
  %zEnd679 = getelementptr inbounds nuw %struct.SyStream, ptr %400, i32 0, i32 2
  %401 = load ptr, ptr %zEnd679, align 8
  %cmp680 = icmp ult ptr %399, %401
  br i1 %cmp680, label %while.body682, label %while.end723

while.body682:                                    ; preds = %while.cond677
  %402 = load ptr, ptr %pStream.addr, align 8
  %zText683 = getelementptr inbounds nuw %struct.SyStream, ptr %402, i32 0, i32 1
  %403 = load ptr, ptr %zText683, align 8
  %arrayidx684 = getelementptr inbounds i8, ptr %403, i64 0
  %404 = load i8, ptr %arrayidx684, align 1
  %conv685 = zext i8 %404 to i32
  store i32 %conv685, ptr %c, align 4
  %405 = load i32, ptr %c, align 4
  %cmp686 = icmp slt i32 %405, 192
  br i1 %cmp686, label %if.then688, label %if.else702

if.then688:                                       ; preds = %while.body682
  %406 = load i32, ptr %c, align 4
  %cmp689 = icmp eq i32 %406, 60
  br i1 %cmp689, label %if.then691, label %if.else692

if.then691:                                       ; preds = %if.then688
  br label %while.end723

if.else692:                                       ; preds = %if.then688
  %407 = load i32, ptr %c, align 4
  %cmp693 = icmp eq i32 %407, 10
  br i1 %cmp693, label %if.then695, label %if.end698

if.then695:                                       ; preds = %if.else692
  %408 = load ptr, ptr %pStream.addr, align 8
  %nLine696 = getelementptr inbounds nuw %struct.SyStream, ptr %408, i32 0, i32 3
  %409 = load i32, ptr %nLine696, align 8
  %inc697 = add i32 %409, 1
  store i32 %inc697, ptr %nLine696, align 8
  br label %if.end698

if.end698:                                        ; preds = %if.then695, %if.else692
  br label %if.end699

if.end699:                                        ; preds = %if.end698
  %410 = load ptr, ptr %pStream.addr, align 8
  %zText700 = getelementptr inbounds nuw %struct.SyStream, ptr %410, i32 0, i32 1
  %411 = load ptr, ptr %zText700, align 8
  %incdec.ptr701 = getelementptr inbounds nuw i8, ptr %411, i32 1
  store ptr %incdec.ptr701, ptr %zText700, align 8
  br label %if.end722

if.else702:                                       ; preds = %while.body682
  %412 = load ptr, ptr %pStream.addr, align 8
  %zText703 = getelementptr inbounds nuw %struct.SyStream, ptr %412, i32 0, i32 1
  %413 = load ptr, ptr %zText703, align 8
  %incdec.ptr704 = getelementptr inbounds nuw i8, ptr %413, i32 1
  store ptr %incdec.ptr704, ptr %zText703, align 8
  br label %while.cond705

while.cond705:                                    ; preds = %while.body718, %if.else702
  %414 = load ptr, ptr %pStream.addr, align 8
  %zText706 = getelementptr inbounds nuw %struct.SyStream, ptr %414, i32 0, i32 1
  %415 = load ptr, ptr %zText706, align 8
  %416 = load ptr, ptr %pStream.addr, align 8
  %zEnd707 = getelementptr inbounds nuw %struct.SyStream, ptr %416, i32 0, i32 2
  %417 = load ptr, ptr %zEnd707, align 8
  %cmp708 = icmp ult ptr %415, %417
  br i1 %cmp708, label %land.rhs710, label %land.end717

land.rhs710:                                      ; preds = %while.cond705
  %418 = load ptr, ptr %pStream.addr, align 8
  %zText711 = getelementptr inbounds nuw %struct.SyStream, ptr %418, i32 0, i32 1
  %419 = load ptr, ptr %zText711, align 8
  %arrayidx712 = getelementptr inbounds i8, ptr %419, i64 0
  %420 = load i8, ptr %arrayidx712, align 1
  %conv713 = zext i8 %420 to i32
  %and714 = and i32 %conv713, 192
  %cmp715 = icmp eq i32 %and714, 128
  br label %land.end717

land.end717:                                      ; preds = %land.rhs710, %while.cond705
  %421 = phi i1 [ false, %while.cond705 ], [ %cmp715, %land.rhs710 ]
  br i1 %421, label %while.body718, label %while.end721

while.body718:                                    ; preds = %land.end717
  %422 = load ptr, ptr %pStream.addr, align 8
  %zText719 = getelementptr inbounds nuw %struct.SyStream, ptr %422, i32 0, i32 1
  %423 = load ptr, ptr %zText719, align 8
  %incdec.ptr720 = getelementptr inbounds nuw i8, ptr %423, i32 1
  store ptr %incdec.ptr720, ptr %zText719, align 8
  br label %while.cond705, !llvm.loop !15

while.end721:                                     ; preds = %land.end717
  br label %if.end722

if.end722:                                        ; preds = %while.end721, %if.end699
  br label %while.cond677, !llvm.loop !16

while.end723:                                     ; preds = %if.then691, %while.cond677
  %424 = load ptr, ptr %pToken.addr, align 8
  %nType724 = getelementptr inbounds nuw %struct.SyToken, ptr %424, i32 0, i32 1
  store i32 8, ptr %nType724, align 8
  %425 = load ptr, ptr %pStream.addr, align 8
  %zText725 = getelementptr inbounds nuw %struct.SyStream, ptr %425, i32 0, i32 1
  %426 = load ptr, ptr %zText725, align 8
  %427 = load ptr, ptr %pStr, align 8
  %zString726 = getelementptr inbounds nuw %struct.SyString, ptr %427, i32 0, i32 0
  %428 = load ptr, ptr %zString726, align 8
  %sub.ptr.lhs.cast727 = ptrtoint ptr %426 to i64
  %sub.ptr.rhs.cast728 = ptrtoint ptr %428 to i64
  %sub.ptr.sub729 = sub i64 %sub.ptr.lhs.cast727, %sub.ptr.rhs.cast728
  %conv730 = trunc i64 %sub.ptr.sub729 to i32
  %429 = load ptr, ptr %pStr, align 8
  %nByte731 = getelementptr inbounds nuw %struct.SyString, ptr %429, i32 0, i32 1
  store i32 %conv730, ptr %nByte731, align 8
  br label %if.end732

if.end732:                                        ; preds = %while.end723, %if.end675
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end732, %if.then670, %if.then633, %if.then611, %if.then537, %if.end441, %if.then439, %if.end422, %if.then420, %if.end388, %if.end387, %if.then385, %if.end255, %if.end254, %if.then252, %while.end174, %if.end114, %if.then112, %if.end49, %if.then47, %if.then19
  %430 = load i32, ptr %retval, align 4
  ret i32 %430
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(none) }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
