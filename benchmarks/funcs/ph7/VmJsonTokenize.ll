; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

@.str.203 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.204 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.205 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @VmJsonTokenize(ptr noundef %pStream, ptr noundef %pToken, ptr noundef %pUserData, ptr noundef %pCtxData) #1 {
entry:
  %retval = alloca i32, align 4
  %pStream.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pCtxData.addr = alloca ptr, align 8
  %pJsonErr = alloca ptr, align 8
  %pStr = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %pStream, ptr %pStream.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pCtxData, ptr %pCtxData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pJsonErr, align 8
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
  %call = call ptr @__ctype_b_loc() #2
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
  store ptr null, ptr %pCtxData.addr, align 8
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
  %cmp28 = icmp eq i32 %conv27, 123
  br i1 %cmp28, label %if.then59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %37 = load ptr, ptr %pStream.addr, align 8
  %zText30 = getelementptr inbounds nuw %struct.SyStream, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %zText30, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %39 to i32
  %cmp33 = icmp eq i32 %conv32, 91
  br i1 %cmp33, label %if.then59, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %40 = load ptr, ptr %pStream.addr, align 8
  %zText36 = getelementptr inbounds nuw %struct.SyStream, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %zText36, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %42 to i32
  %cmp39 = icmp eq i32 %conv38, 125
  br i1 %cmp39, label %if.then59, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  %43 = load ptr, ptr %pStream.addr, align 8
  %zText42 = getelementptr inbounds nuw %struct.SyStream, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %zText42, align 8
  %arrayidx43 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %45 to i32
  %cmp45 = icmp eq i32 %conv44, 93
  br i1 %cmp45, label %if.then59, label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %lor.lhs.false41
  %46 = load ptr, ptr %pStream.addr, align 8
  %zText48 = getelementptr inbounds nuw %struct.SyStream, ptr %46, i32 0, i32 1
  %47 = load ptr, ptr %zText48, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %47, i64 0
  %48 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %48 to i32
  %cmp51 = icmp eq i32 %conv50, 58
  br i1 %cmp51, label %if.then59, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %lor.lhs.false47
  %49 = load ptr, ptr %pStream.addr, align 8
  %zText54 = getelementptr inbounds nuw %struct.SyStream, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %zText54, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %51 to i32
  %cmp57 = icmp eq i32 %conv56, 44
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %lor.lhs.false53, %lor.lhs.false47, %lor.lhs.false41, %lor.lhs.false35, %lor.lhs.false, %if.end20
  %52 = load ptr, ptr %pStream.addr, align 8
  %zText60 = getelementptr inbounds nuw %struct.SyStream, ptr %52, i32 0, i32 1
  %53 = load ptr, ptr %zText60, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %53, i64 0
  %54 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %54 to i32
  store i32 %conv62, ptr %c, align 4
  %55 = load i32, ptr %c, align 4
  switch i32 %55, label %sw.default [
    i32 91, label %sw.bb
    i32 123, label %sw.bb63
    i32 125, label %sw.bb65
    i32 93, label %sw.bb67
    i32 58, label %sw.bb69
    i32 44, label %sw.bb71
  ]

sw.bb:                                            ; preds = %if.then59
  %56 = load ptr, ptr %pToken.addr, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %56, i32 0, i32 1
  store i32 128, ptr %nType, align 8
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.then59
  %57 = load ptr, ptr %pToken.addr, align 8
  %nType64 = getelementptr inbounds nuw %struct.SyToken, ptr %57, i32 0, i32 1
  store i32 32, ptr %nType64, align 8
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.then59
  %58 = load ptr, ptr %pToken.addr, align 8
  %nType66 = getelementptr inbounds nuw %struct.SyToken, ptr %58, i32 0, i32 1
  store i32 64, ptr %nType66, align 8
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then59
  %59 = load ptr, ptr %pToken.addr, align 8
  %nType68 = getelementptr inbounds nuw %struct.SyToken, ptr %59, i32 0, i32 1
  store i32 256, ptr %nType68, align 8
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.then59
  %60 = load ptr, ptr %pToken.addr, align 8
  %nType70 = getelementptr inbounds nuw %struct.SyToken, ptr %60, i32 0, i32 1
  store i32 512, ptr %nType70, align 8
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.then59
  %61 = load ptr, ptr %pToken.addr, align 8
  %nType72 = getelementptr inbounds nuw %struct.SyToken, ptr %61, i32 0, i32 1
  store i32 1024, ptr %nType72, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then59
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb71, %sw.bb69, %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb
  %62 = load ptr, ptr %pStream.addr, align 8
  %zText73 = getelementptr inbounds nuw %struct.SyStream, ptr %62, i32 0, i32 1
  %63 = load ptr, ptr %zText73, align 8
  %incdec.ptr74 = getelementptr inbounds nuw i8, ptr %63, i32 1
  store ptr %incdec.ptr74, ptr %zText73, align 8
  br label %if.end392

if.else:                                          ; preds = %lor.lhs.false53
  %64 = load ptr, ptr %pStream.addr, align 8
  %zText75 = getelementptr inbounds nuw %struct.SyStream, ptr %64, i32 0, i32 1
  %65 = load ptr, ptr %zText75, align 8
  %arrayidx76 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx76, align 1
  %conv77 = zext i8 %66 to i32
  %cmp78 = icmp eq i32 %conv77, 34
  br i1 %cmp78, label %if.then80, label %if.else127

if.then80:                                        ; preds = %if.else
  %67 = load ptr, ptr %pStream.addr, align 8
  %zText81 = getelementptr inbounds nuw %struct.SyStream, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %zText81, align 8
  %incdec.ptr82 = getelementptr inbounds nuw i8, ptr %68, i32 1
  store ptr %incdec.ptr82, ptr %zText81, align 8
  %69 = load ptr, ptr %pStr, align 8
  %zString83 = getelementptr inbounds nuw %struct.SyString, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %zString83, align 8
  %incdec.ptr84 = getelementptr inbounds nuw i8, ptr %70, i32 1
  store ptr %incdec.ptr84, ptr %zString83, align 8
  br label %while.cond85

while.cond85:                                     ; preds = %if.end112, %if.then80
  %71 = load ptr, ptr %pStream.addr, align 8
  %zText86 = getelementptr inbounds nuw %struct.SyStream, ptr %71, i32 0, i32 1
  %72 = load ptr, ptr %zText86, align 8
  %73 = load ptr, ptr %pStream.addr, align 8
  %zEnd87 = getelementptr inbounds nuw %struct.SyStream, ptr %73, i32 0, i32 2
  %74 = load ptr, ptr %zEnd87, align 8
  %cmp88 = icmp ult ptr %72, %74
  br i1 %cmp88, label %while.body90, label %while.end115

while.body90:                                     ; preds = %while.cond85
  %75 = load ptr, ptr %pStream.addr, align 8
  %zText91 = getelementptr inbounds nuw %struct.SyStream, ptr %75, i32 0, i32 1
  %76 = load ptr, ptr %zText91, align 8
  %arrayidx92 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %77 to i32
  %cmp94 = icmp eq i32 %conv93, 34
  br i1 %cmp94, label %land.lhs.true96, label %if.end103

land.lhs.true96:                                  ; preds = %while.body90
  %78 = load ptr, ptr %pStream.addr, align 8
  %zText97 = getelementptr inbounds nuw %struct.SyStream, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %zText97, align 8
  %arrayidx98 = getelementptr inbounds i8, ptr %79, i64 -1
  %80 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %80 to i32
  %cmp100 = icmp ne i32 %conv99, 92
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %land.lhs.true96
  br label %while.end115

if.end103:                                        ; preds = %land.lhs.true96, %while.body90
  %81 = load ptr, ptr %pStream.addr, align 8
  %zText104 = getelementptr inbounds nuw %struct.SyStream, ptr %81, i32 0, i32 1
  %82 = load ptr, ptr %zText104, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %82, i64 0
  %83 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %83 to i32
  %cmp107 = icmp eq i32 %conv106, 10
  br i1 %cmp107, label %if.then109, label %if.end112

if.then109:                                       ; preds = %if.end103
  %84 = load ptr, ptr %pStream.addr, align 8
  %nLine110 = getelementptr inbounds nuw %struct.SyStream, ptr %84, i32 0, i32 3
  %85 = load i32, ptr %nLine110, align 8
  %inc111 = add i32 %85, 1
  store i32 %inc111, ptr %nLine110, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end103
  %86 = load ptr, ptr %pStream.addr, align 8
  %zText113 = getelementptr inbounds nuw %struct.SyStream, ptr %86, i32 0, i32 1
  %87 = load ptr, ptr %zText113, align 8
  %incdec.ptr114 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %incdec.ptr114, ptr %zText113, align 8
  br label %while.cond85, !llvm.loop !8

while.end115:                                     ; preds = %if.then102, %while.cond85
  %88 = load ptr, ptr %pStream.addr, align 8
  %zText116 = getelementptr inbounds nuw %struct.SyStream, ptr %88, i32 0, i32 1
  %89 = load ptr, ptr %zText116, align 8
  %90 = load ptr, ptr %pStream.addr, align 8
  %zEnd117 = getelementptr inbounds nuw %struct.SyStream, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %zEnd117, align 8
  %cmp118 = icmp uge ptr %89, %91
  br i1 %cmp118, label %if.then120, label %if.else122

if.then120:                                       ; preds = %while.end115
  %92 = load ptr, ptr %pToken.addr, align 8
  %nType121 = getelementptr inbounds nuw %struct.SyToken, ptr %92, i32 0, i32 1
  store i32 2048, ptr %nType121, align 8
  %93 = load ptr, ptr %pJsonErr, align 8
  store i32 4, ptr %93, align 4
  br label %if.end126

if.else122:                                       ; preds = %while.end115
  %94 = load ptr, ptr %pToken.addr, align 8
  %nType123 = getelementptr inbounds nuw %struct.SyToken, ptr %94, i32 0, i32 1
  store i32 4, ptr %nType123, align 8
  %95 = load ptr, ptr %pStream.addr, align 8
  %zText124 = getelementptr inbounds nuw %struct.SyStream, ptr %95, i32 0, i32 1
  %96 = load ptr, ptr %zText124, align 8
  %incdec.ptr125 = getelementptr inbounds nuw i8, ptr %96, i32 1
  store ptr %incdec.ptr125, ptr %zText124, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.else122, %if.then120
  br label %if.end391

if.else127:                                       ; preds = %if.else
  %97 = load ptr, ptr %pStream.addr, align 8
  %zText128 = getelementptr inbounds nuw %struct.SyStream, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %zText128, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %98, i64 0
  %99 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %99 to i32
  %cmp131 = icmp slt i32 %conv130, 192
  br i1 %cmp131, label %land.lhs.true133, label %if.else330

land.lhs.true133:                                 ; preds = %if.else127
  %call134 = call ptr @__ctype_b_loc() #2
  %100 = load ptr, ptr %call134, align 8
  %101 = load ptr, ptr %pStream.addr, align 8
  %zText135 = getelementptr inbounds nuw %struct.SyStream, ptr %101, i32 0, i32 1
  %102 = load ptr, ptr %zText135, align 8
  %arrayidx136 = getelementptr inbounds i8, ptr %102, i64 0
  %103 = load i8, ptr %arrayidx136, align 1
  %conv137 = zext i8 %103 to i32
  %idxprom138 = sext i32 %conv137 to i64
  %arrayidx139 = getelementptr inbounds i16, ptr %100, i64 %idxprom138
  %104 = load i16, ptr %arrayidx139, align 2
  %conv140 = zext i16 %104 to i32
  %and141 = and i32 %conv140, 2048
  %tobool142 = icmp ne i32 %and141, 0
  br i1 %tobool142, label %if.then143, label %if.else330

if.then143:                                       ; preds = %land.lhs.true133
  %105 = load ptr, ptr %pStream.addr, align 8
  %zText144 = getelementptr inbounds nuw %struct.SyStream, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %zText144, align 8
  %incdec.ptr145 = getelementptr inbounds nuw i8, ptr %106, i32 1
  store ptr %incdec.ptr145, ptr %zText144, align 8
  %107 = load ptr, ptr %pToken.addr, align 8
  %nType146 = getelementptr inbounds nuw %struct.SyToken, ptr %107, i32 0, i32 1
  store i32 16, ptr %nType146, align 8
  br label %while.cond147

while.cond147:                                    ; preds = %while.body169, %if.then143
  %108 = load ptr, ptr %pStream.addr, align 8
  %zText148 = getelementptr inbounds nuw %struct.SyStream, ptr %108, i32 0, i32 1
  %109 = load ptr, ptr %zText148, align 8
  %110 = load ptr, ptr %pStream.addr, align 8
  %zEnd149 = getelementptr inbounds nuw %struct.SyStream, ptr %110, i32 0, i32 2
  %111 = load ptr, ptr %zEnd149, align 8
  %cmp150 = icmp ult ptr %109, %111
  br i1 %cmp150, label %land.lhs.true152, label %land.end168

land.lhs.true152:                                 ; preds = %while.cond147
  %112 = load ptr, ptr %pStream.addr, align 8
  %zText153 = getelementptr inbounds nuw %struct.SyStream, ptr %112, i32 0, i32 1
  %113 = load ptr, ptr %zText153, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %113, i64 0
  %114 = load i8, ptr %arrayidx154, align 1
  %conv155 = zext i8 %114 to i32
  %cmp156 = icmp slt i32 %conv155, 192
  br i1 %cmp156, label %land.rhs158, label %land.end168

land.rhs158:                                      ; preds = %land.lhs.true152
  %call159 = call ptr @__ctype_b_loc() #2
  %115 = load ptr, ptr %call159, align 8
  %116 = load ptr, ptr %pStream.addr, align 8
  %zText160 = getelementptr inbounds nuw %struct.SyStream, ptr %116, i32 0, i32 1
  %117 = load ptr, ptr %zText160, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %117, i64 0
  %118 = load i8, ptr %arrayidx161, align 1
  %conv162 = zext i8 %118 to i32
  %idxprom163 = sext i32 %conv162 to i64
  %arrayidx164 = getelementptr inbounds i16, ptr %115, i64 %idxprom163
  %119 = load i16, ptr %arrayidx164, align 2
  %conv165 = zext i16 %119 to i32
  %and166 = and i32 %conv165, 2048
  %tobool167 = icmp ne i32 %and166, 0
  br label %land.end168

land.end168:                                      ; preds = %land.rhs158, %land.lhs.true152, %while.cond147
  %120 = phi i1 [ false, %land.lhs.true152 ], [ false, %while.cond147 ], [ %tobool167, %land.rhs158 ]
  br i1 %120, label %while.body169, label %while.end172

while.body169:                                    ; preds = %land.end168
  %121 = load ptr, ptr %pStream.addr, align 8
  %zText170 = getelementptr inbounds nuw %struct.SyStream, ptr %121, i32 0, i32 1
  %122 = load ptr, ptr %zText170, align 8
  %incdec.ptr171 = getelementptr inbounds nuw i8, ptr %122, i32 1
  store ptr %incdec.ptr171, ptr %zText170, align 8
  br label %while.cond147, !llvm.loop !9

while.end172:                                     ; preds = %land.end168
  %123 = load ptr, ptr %pStream.addr, align 8
  %zText173 = getelementptr inbounds nuw %struct.SyStream, ptr %123, i32 0, i32 1
  %124 = load ptr, ptr %zText173, align 8
  %125 = load ptr, ptr %pStream.addr, align 8
  %zEnd174 = getelementptr inbounds nuw %struct.SyStream, ptr %125, i32 0, i32 2
  %126 = load ptr, ptr %zEnd174, align 8
  %cmp175 = icmp ult ptr %124, %126
  br i1 %cmp175, label %if.then177, label %if.end329

if.then177:                                       ; preds = %while.end172
  %127 = load ptr, ptr %pStream.addr, align 8
  %zText178 = getelementptr inbounds nuw %struct.SyStream, ptr %127, i32 0, i32 1
  %128 = load ptr, ptr %zText178, align 8
  %arrayidx179 = getelementptr inbounds i8, ptr %128, i64 0
  %129 = load i8, ptr %arrayidx179, align 1
  %conv180 = zext i8 %129 to i32
  store i32 %conv180, ptr %c, align 4
  %130 = load i32, ptr %c, align 4
  %cmp181 = icmp eq i32 %130, 46
  br i1 %cmp181, label %if.then183, label %if.else274

if.then183:                                       ; preds = %if.then177
  %131 = load ptr, ptr %pStream.addr, align 8
  %zText184 = getelementptr inbounds nuw %struct.SyStream, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %zText184, align 8
  %incdec.ptr185 = getelementptr inbounds nuw i8, ptr %132, i32 1
  store ptr %incdec.ptr185, ptr %zText184, align 8
  br label %while.cond186

while.cond186:                                    ; preds = %while.body208, %if.then183
  %133 = load ptr, ptr %pStream.addr, align 8
  %zText187 = getelementptr inbounds nuw %struct.SyStream, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %zText187, align 8
  %135 = load ptr, ptr %pStream.addr, align 8
  %zEnd188 = getelementptr inbounds nuw %struct.SyStream, ptr %135, i32 0, i32 2
  %136 = load ptr, ptr %zEnd188, align 8
  %cmp189 = icmp ult ptr %134, %136
  br i1 %cmp189, label %land.lhs.true191, label %land.end207

land.lhs.true191:                                 ; preds = %while.cond186
  %137 = load ptr, ptr %pStream.addr, align 8
  %zText192 = getelementptr inbounds nuw %struct.SyStream, ptr %137, i32 0, i32 1
  %138 = load ptr, ptr %zText192, align 8
  %arrayidx193 = getelementptr inbounds i8, ptr %138, i64 0
  %139 = load i8, ptr %arrayidx193, align 1
  %conv194 = zext i8 %139 to i32
  %cmp195 = icmp slt i32 %conv194, 192
  br i1 %cmp195, label %land.rhs197, label %land.end207

land.rhs197:                                      ; preds = %land.lhs.true191
  %call198 = call ptr @__ctype_b_loc() #2
  %140 = load ptr, ptr %call198, align 8
  %141 = load ptr, ptr %pStream.addr, align 8
  %zText199 = getelementptr inbounds nuw %struct.SyStream, ptr %141, i32 0, i32 1
  %142 = load ptr, ptr %zText199, align 8
  %arrayidx200 = getelementptr inbounds i8, ptr %142, i64 0
  %143 = load i8, ptr %arrayidx200, align 1
  %conv201 = zext i8 %143 to i32
  %idxprom202 = sext i32 %conv201 to i64
  %arrayidx203 = getelementptr inbounds i16, ptr %140, i64 %idxprom202
  %144 = load i16, ptr %arrayidx203, align 2
  %conv204 = zext i16 %144 to i32
  %and205 = and i32 %conv204, 2048
  %tobool206 = icmp ne i32 %and205, 0
  br label %land.end207

land.end207:                                      ; preds = %land.rhs197, %land.lhs.true191, %while.cond186
  %145 = phi i1 [ false, %land.lhs.true191 ], [ false, %while.cond186 ], [ %tobool206, %land.rhs197 ]
  br i1 %145, label %while.body208, label %while.end211

while.body208:                                    ; preds = %land.end207
  %146 = load ptr, ptr %pStream.addr, align 8
  %zText209 = getelementptr inbounds nuw %struct.SyStream, ptr %146, i32 0, i32 1
  %147 = load ptr, ptr %zText209, align 8
  %incdec.ptr210 = getelementptr inbounds nuw i8, ptr %147, i32 1
  store ptr %incdec.ptr210, ptr %zText209, align 8
  br label %while.cond186, !llvm.loop !10

while.end211:                                     ; preds = %land.end207
  %148 = load ptr, ptr %pStream.addr, align 8
  %zText212 = getelementptr inbounds nuw %struct.SyStream, ptr %148, i32 0, i32 1
  %149 = load ptr, ptr %zText212, align 8
  %150 = load ptr, ptr %pStream.addr, align 8
  %zEnd213 = getelementptr inbounds nuw %struct.SyStream, ptr %150, i32 0, i32 2
  %151 = load ptr, ptr %zEnd213, align 8
  %cmp214 = icmp ult ptr %149, %151
  br i1 %cmp214, label %if.then216, label %if.end273

if.then216:                                       ; preds = %while.end211
  %152 = load ptr, ptr %pStream.addr, align 8
  %zText217 = getelementptr inbounds nuw %struct.SyStream, ptr %152, i32 0, i32 1
  %153 = load ptr, ptr %zText217, align 8
  %arrayidx218 = getelementptr inbounds i8, ptr %153, i64 0
  %154 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %154 to i32
  store i32 %conv219, ptr %c, align 4
  %155 = load i32, ptr %c, align 4
  %cmp220 = icmp eq i32 %155, 101
  br i1 %cmp220, label %if.then225, label %lor.lhs.false222

lor.lhs.false222:                                 ; preds = %if.then216
  %156 = load i32, ptr %c, align 4
  %cmp223 = icmp eq i32 %156, 69
  br i1 %cmp223, label %if.then225, label %if.end272

if.then225:                                       ; preds = %lor.lhs.false222, %if.then216
  %157 = load ptr, ptr %pStream.addr, align 8
  %zText226 = getelementptr inbounds nuw %struct.SyStream, ptr %157, i32 0, i32 1
  %158 = load ptr, ptr %zText226, align 8
  %incdec.ptr227 = getelementptr inbounds nuw i8, ptr %158, i32 1
  store ptr %incdec.ptr227, ptr %zText226, align 8
  %159 = load ptr, ptr %pStream.addr, align 8
  %zText228 = getelementptr inbounds nuw %struct.SyStream, ptr %159, i32 0, i32 1
  %160 = load ptr, ptr %zText228, align 8
  %161 = load ptr, ptr %pStream.addr, align 8
  %zEnd229 = getelementptr inbounds nuw %struct.SyStream, ptr %161, i32 0, i32 2
  %162 = load ptr, ptr %zEnd229, align 8
  %cmp230 = icmp ult ptr %160, %162
  br i1 %cmp230, label %if.then232, label %if.end271

if.then232:                                       ; preds = %if.then225
  %163 = load ptr, ptr %pStream.addr, align 8
  %zText233 = getelementptr inbounds nuw %struct.SyStream, ptr %163, i32 0, i32 1
  %164 = load ptr, ptr %zText233, align 8
  %arrayidx234 = getelementptr inbounds i8, ptr %164, i64 0
  %165 = load i8, ptr %arrayidx234, align 1
  %conv235 = zext i8 %165 to i32
  store i32 %conv235, ptr %c, align 4
  %166 = load i32, ptr %c, align 4
  %cmp236 = icmp eq i32 %166, 43
  br i1 %cmp236, label %if.then241, label %lor.lhs.false238

lor.lhs.false238:                                 ; preds = %if.then232
  %167 = load i32, ptr %c, align 4
  %cmp239 = icmp eq i32 %167, 45
  br i1 %cmp239, label %if.then241, label %if.end244

if.then241:                                       ; preds = %lor.lhs.false238, %if.then232
  %168 = load ptr, ptr %pStream.addr, align 8
  %zText242 = getelementptr inbounds nuw %struct.SyStream, ptr %168, i32 0, i32 1
  %169 = load ptr, ptr %zText242, align 8
  %incdec.ptr243 = getelementptr inbounds nuw i8, ptr %169, i32 1
  store ptr %incdec.ptr243, ptr %zText242, align 8
  br label %if.end244

if.end244:                                        ; preds = %if.then241, %lor.lhs.false238
  br label %while.cond245

while.cond245:                                    ; preds = %while.body267, %if.end244
  %170 = load ptr, ptr %pStream.addr, align 8
  %zText246 = getelementptr inbounds nuw %struct.SyStream, ptr %170, i32 0, i32 1
  %171 = load ptr, ptr %zText246, align 8
  %172 = load ptr, ptr %pStream.addr, align 8
  %zEnd247 = getelementptr inbounds nuw %struct.SyStream, ptr %172, i32 0, i32 2
  %173 = load ptr, ptr %zEnd247, align 8
  %cmp248 = icmp ult ptr %171, %173
  br i1 %cmp248, label %land.lhs.true250, label %land.end266

land.lhs.true250:                                 ; preds = %while.cond245
  %174 = load ptr, ptr %pStream.addr, align 8
  %zText251 = getelementptr inbounds nuw %struct.SyStream, ptr %174, i32 0, i32 1
  %175 = load ptr, ptr %zText251, align 8
  %arrayidx252 = getelementptr inbounds i8, ptr %175, i64 0
  %176 = load i8, ptr %arrayidx252, align 1
  %conv253 = zext i8 %176 to i32
  %cmp254 = icmp slt i32 %conv253, 192
  br i1 %cmp254, label %land.rhs256, label %land.end266

land.rhs256:                                      ; preds = %land.lhs.true250
  %call257 = call ptr @__ctype_b_loc() #2
  %177 = load ptr, ptr %call257, align 8
  %178 = load ptr, ptr %pStream.addr, align 8
  %zText258 = getelementptr inbounds nuw %struct.SyStream, ptr %178, i32 0, i32 1
  %179 = load ptr, ptr %zText258, align 8
  %arrayidx259 = getelementptr inbounds i8, ptr %179, i64 0
  %180 = load i8, ptr %arrayidx259, align 1
  %conv260 = zext i8 %180 to i32
  %idxprom261 = sext i32 %conv260 to i64
  %arrayidx262 = getelementptr inbounds i16, ptr %177, i64 %idxprom261
  %181 = load i16, ptr %arrayidx262, align 2
  %conv263 = zext i16 %181 to i32
  %and264 = and i32 %conv263, 2048
  %tobool265 = icmp ne i32 %and264, 0
  br label %land.end266

land.end266:                                      ; preds = %land.rhs256, %land.lhs.true250, %while.cond245
  %182 = phi i1 [ false, %land.lhs.true250 ], [ false, %while.cond245 ], [ %tobool265, %land.rhs256 ]
  br i1 %182, label %while.body267, label %while.end270

while.body267:                                    ; preds = %land.end266
  %183 = load ptr, ptr %pStream.addr, align 8
  %zText268 = getelementptr inbounds nuw %struct.SyStream, ptr %183, i32 0, i32 1
  %184 = load ptr, ptr %zText268, align 8
  %incdec.ptr269 = getelementptr inbounds nuw i8, ptr %184, i32 1
  store ptr %incdec.ptr269, ptr %zText268, align 8
  br label %while.cond245, !llvm.loop !11

while.end270:                                     ; preds = %land.end266
  br label %if.end271

if.end271:                                        ; preds = %while.end270, %if.then225
  br label %if.end272

if.end272:                                        ; preds = %if.end271, %lor.lhs.false222
  br label %if.end273

if.end273:                                        ; preds = %if.end272, %while.end211
  br label %if.end328

if.else274:                                       ; preds = %if.then177
  %185 = load i32, ptr %c, align 4
  %cmp275 = icmp eq i32 %185, 101
  br i1 %cmp275, label %if.then280, label %lor.lhs.false277

lor.lhs.false277:                                 ; preds = %if.else274
  %186 = load i32, ptr %c, align 4
  %cmp278 = icmp eq i32 %186, 69
  br i1 %cmp278, label %if.then280, label %if.end327

if.then280:                                       ; preds = %lor.lhs.false277, %if.else274
  %187 = load ptr, ptr %pStream.addr, align 8
  %zText281 = getelementptr inbounds nuw %struct.SyStream, ptr %187, i32 0, i32 1
  %188 = load ptr, ptr %zText281, align 8
  %incdec.ptr282 = getelementptr inbounds nuw i8, ptr %188, i32 1
  store ptr %incdec.ptr282, ptr %zText281, align 8
  %189 = load ptr, ptr %pStream.addr, align 8
  %zText283 = getelementptr inbounds nuw %struct.SyStream, ptr %189, i32 0, i32 1
  %190 = load ptr, ptr %zText283, align 8
  %191 = load ptr, ptr %pStream.addr, align 8
  %zEnd284 = getelementptr inbounds nuw %struct.SyStream, ptr %191, i32 0, i32 2
  %192 = load ptr, ptr %zEnd284, align 8
  %cmp285 = icmp ult ptr %190, %192
  br i1 %cmp285, label %if.then287, label %if.end326

if.then287:                                       ; preds = %if.then280
  %193 = load ptr, ptr %pStream.addr, align 8
  %zText288 = getelementptr inbounds nuw %struct.SyStream, ptr %193, i32 0, i32 1
  %194 = load ptr, ptr %zText288, align 8
  %arrayidx289 = getelementptr inbounds i8, ptr %194, i64 0
  %195 = load i8, ptr %arrayidx289, align 1
  %conv290 = zext i8 %195 to i32
  store i32 %conv290, ptr %c, align 4
  %196 = load i32, ptr %c, align 4
  %cmp291 = icmp eq i32 %196, 43
  br i1 %cmp291, label %if.then296, label %lor.lhs.false293

lor.lhs.false293:                                 ; preds = %if.then287
  %197 = load i32, ptr %c, align 4
  %cmp294 = icmp eq i32 %197, 45
  br i1 %cmp294, label %if.then296, label %if.end299

if.then296:                                       ; preds = %lor.lhs.false293, %if.then287
  %198 = load ptr, ptr %pStream.addr, align 8
  %zText297 = getelementptr inbounds nuw %struct.SyStream, ptr %198, i32 0, i32 1
  %199 = load ptr, ptr %zText297, align 8
  %incdec.ptr298 = getelementptr inbounds nuw i8, ptr %199, i32 1
  store ptr %incdec.ptr298, ptr %zText297, align 8
  br label %if.end299

if.end299:                                        ; preds = %if.then296, %lor.lhs.false293
  br label %while.cond300

while.cond300:                                    ; preds = %while.body322, %if.end299
  %200 = load ptr, ptr %pStream.addr, align 8
  %zText301 = getelementptr inbounds nuw %struct.SyStream, ptr %200, i32 0, i32 1
  %201 = load ptr, ptr %zText301, align 8
  %202 = load ptr, ptr %pStream.addr, align 8
  %zEnd302 = getelementptr inbounds nuw %struct.SyStream, ptr %202, i32 0, i32 2
  %203 = load ptr, ptr %zEnd302, align 8
  %cmp303 = icmp ult ptr %201, %203
  br i1 %cmp303, label %land.lhs.true305, label %land.end321

land.lhs.true305:                                 ; preds = %while.cond300
  %204 = load ptr, ptr %pStream.addr, align 8
  %zText306 = getelementptr inbounds nuw %struct.SyStream, ptr %204, i32 0, i32 1
  %205 = load ptr, ptr %zText306, align 8
  %arrayidx307 = getelementptr inbounds i8, ptr %205, i64 0
  %206 = load i8, ptr %arrayidx307, align 1
  %conv308 = zext i8 %206 to i32
  %cmp309 = icmp slt i32 %conv308, 192
  br i1 %cmp309, label %land.rhs311, label %land.end321

land.rhs311:                                      ; preds = %land.lhs.true305
  %call312 = call ptr @__ctype_b_loc() #2
  %207 = load ptr, ptr %call312, align 8
  %208 = load ptr, ptr %pStream.addr, align 8
  %zText313 = getelementptr inbounds nuw %struct.SyStream, ptr %208, i32 0, i32 1
  %209 = load ptr, ptr %zText313, align 8
  %arrayidx314 = getelementptr inbounds i8, ptr %209, i64 0
  %210 = load i8, ptr %arrayidx314, align 1
  %conv315 = zext i8 %210 to i32
  %idxprom316 = sext i32 %conv315 to i64
  %arrayidx317 = getelementptr inbounds i16, ptr %207, i64 %idxprom316
  %211 = load i16, ptr %arrayidx317, align 2
  %conv318 = zext i16 %211 to i32
  %and319 = and i32 %conv318, 2048
  %tobool320 = icmp ne i32 %and319, 0
  br label %land.end321

land.end321:                                      ; preds = %land.rhs311, %land.lhs.true305, %while.cond300
  %212 = phi i1 [ false, %land.lhs.true305 ], [ false, %while.cond300 ], [ %tobool320, %land.rhs311 ]
  br i1 %212, label %while.body322, label %while.end325

while.body322:                                    ; preds = %land.end321
  %213 = load ptr, ptr %pStream.addr, align 8
  %zText323 = getelementptr inbounds nuw %struct.SyStream, ptr %213, i32 0, i32 1
  %214 = load ptr, ptr %zText323, align 8
  %incdec.ptr324 = getelementptr inbounds nuw i8, ptr %214, i32 1
  store ptr %incdec.ptr324, ptr %zText323, align 8
  br label %while.cond300, !llvm.loop !12

while.end325:                                     ; preds = %land.end321
  br label %if.end326

if.end326:                                        ; preds = %while.end325, %if.then280
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %lor.lhs.false277
  br label %if.end328

if.end328:                                        ; preds = %if.end327, %if.end273
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %while.end172
  br label %if.end390

if.else330:                                       ; preds = %land.lhs.true133, %if.else127
  %215 = load ptr, ptr %pStream.addr, align 8
  %zEnd331 = getelementptr inbounds nuw %struct.SyStream, ptr %215, i32 0, i32 2
  %216 = load ptr, ptr %zEnd331, align 8
  %217 = load ptr, ptr %pStream.addr, align 8
  %zText332 = getelementptr inbounds nuw %struct.SyStream, ptr %217, i32 0, i32 1
  %218 = load ptr, ptr %zText332, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %216 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %218 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv333 = trunc i64 %sub.ptr.sub to i32
  %conv334 = zext i32 %conv333 to i64
  %cmp335 = icmp uge i64 %conv334, 4
  br i1 %cmp335, label %land.lhs.true337, label %if.else345

land.lhs.true337:                                 ; preds = %if.else330
  %219 = load ptr, ptr %pStream.addr, align 8
  %zText338 = getelementptr inbounds nuw %struct.SyStream, ptr %219, i32 0, i32 1
  %220 = load ptr, ptr %zText338, align 8
  %call339 = call i32 @SyStrnicmp(ptr noundef %220, ptr noundef @.str.204, i32 noundef 4)
  %cmp340 = icmp eq i32 %call339, 0
  br i1 %cmp340, label %if.then342, label %if.else345

if.then342:                                       ; preds = %land.lhs.true337
  %221 = load ptr, ptr %pToken.addr, align 8
  %nType343 = getelementptr inbounds nuw %struct.SyToken, ptr %221, i32 0, i32 1
  store i32 1, ptr %nType343, align 8
  %222 = load ptr, ptr %pStream.addr, align 8
  %zText344 = getelementptr inbounds nuw %struct.SyStream, ptr %222, i32 0, i32 1
  %223 = load ptr, ptr %zText344, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %223, i64 4
  store ptr %add.ptr, ptr %zText344, align 8
  br label %if.end389

if.else345:                                       ; preds = %land.lhs.true337, %if.else330
  %224 = load ptr, ptr %pStream.addr, align 8
  %zEnd346 = getelementptr inbounds nuw %struct.SyStream, ptr %224, i32 0, i32 2
  %225 = load ptr, ptr %zEnd346, align 8
  %226 = load ptr, ptr %pStream.addr, align 8
  %zText347 = getelementptr inbounds nuw %struct.SyStream, ptr %226, i32 0, i32 1
  %227 = load ptr, ptr %zText347, align 8
  %sub.ptr.lhs.cast348 = ptrtoint ptr %225 to i64
  %sub.ptr.rhs.cast349 = ptrtoint ptr %227 to i64
  %sub.ptr.sub350 = sub i64 %sub.ptr.lhs.cast348, %sub.ptr.rhs.cast349
  %conv351 = trunc i64 %sub.ptr.sub350 to i32
  %conv352 = zext i32 %conv351 to i64
  %cmp353 = icmp uge i64 %conv352, 5
  br i1 %cmp353, label %land.lhs.true355, label %if.else364

land.lhs.true355:                                 ; preds = %if.else345
  %228 = load ptr, ptr %pStream.addr, align 8
  %zText356 = getelementptr inbounds nuw %struct.SyStream, ptr %228, i32 0, i32 1
  %229 = load ptr, ptr %zText356, align 8
  %call357 = call i32 @SyStrnicmp(ptr noundef %229, ptr noundef @.str.205, i32 noundef 5)
  %cmp358 = icmp eq i32 %call357, 0
  br i1 %cmp358, label %if.then360, label %if.else364

if.then360:                                       ; preds = %land.lhs.true355
  %230 = load ptr, ptr %pToken.addr, align 8
  %nType361 = getelementptr inbounds nuw %struct.SyToken, ptr %230, i32 0, i32 1
  store i32 2, ptr %nType361, align 8
  %231 = load ptr, ptr %pStream.addr, align 8
  %zText362 = getelementptr inbounds nuw %struct.SyStream, ptr %231, i32 0, i32 1
  %232 = load ptr, ptr %zText362, align 8
  %add.ptr363 = getelementptr inbounds nuw i8, ptr %232, i64 5
  store ptr %add.ptr363, ptr %zText362, align 8
  br label %if.end388

if.else364:                                       ; preds = %land.lhs.true355, %if.else345
  %233 = load ptr, ptr %pStream.addr, align 8
  %zEnd365 = getelementptr inbounds nuw %struct.SyStream, ptr %233, i32 0, i32 2
  %234 = load ptr, ptr %zEnd365, align 8
  %235 = load ptr, ptr %pStream.addr, align 8
  %zText366 = getelementptr inbounds nuw %struct.SyStream, ptr %235, i32 0, i32 1
  %236 = load ptr, ptr %zText366, align 8
  %sub.ptr.lhs.cast367 = ptrtoint ptr %234 to i64
  %sub.ptr.rhs.cast368 = ptrtoint ptr %236 to i64
  %sub.ptr.sub369 = sub i64 %sub.ptr.lhs.cast367, %sub.ptr.rhs.cast368
  %conv370 = trunc i64 %sub.ptr.sub369 to i32
  %conv371 = zext i32 %conv370 to i64
  %cmp372 = icmp uge i64 %conv371, 4
  br i1 %cmp372, label %land.lhs.true374, label %if.else383

land.lhs.true374:                                 ; preds = %if.else364
  %237 = load ptr, ptr %pStream.addr, align 8
  %zText375 = getelementptr inbounds nuw %struct.SyStream, ptr %237, i32 0, i32 1
  %238 = load ptr, ptr %zText375, align 8
  %call376 = call i32 @SyStrnicmp(ptr noundef %238, ptr noundef @.str.203, i32 noundef 4)
  %cmp377 = icmp eq i32 %call376, 0
  br i1 %cmp377, label %if.then379, label %if.else383

if.then379:                                       ; preds = %land.lhs.true374
  %239 = load ptr, ptr %pToken.addr, align 8
  %nType380 = getelementptr inbounds nuw %struct.SyToken, ptr %239, i32 0, i32 1
  store i32 8, ptr %nType380, align 8
  %240 = load ptr, ptr %pStream.addr, align 8
  %zText381 = getelementptr inbounds nuw %struct.SyStream, ptr %240, i32 0, i32 1
  %241 = load ptr, ptr %zText381, align 8
  %add.ptr382 = getelementptr inbounds nuw i8, ptr %241, i64 4
  store ptr %add.ptr382, ptr %zText381, align 8
  br label %if.end387

if.else383:                                       ; preds = %land.lhs.true374, %if.else364
  %242 = load ptr, ptr %pToken.addr, align 8
  %nType384 = getelementptr inbounds nuw %struct.SyToken, ptr %242, i32 0, i32 1
  store i32 2048, ptr %nType384, align 8
  %243 = load ptr, ptr %pStream.addr, align 8
  %zText385 = getelementptr inbounds nuw %struct.SyStream, ptr %243, i32 0, i32 1
  %244 = load ptr, ptr %zText385, align 8
  %incdec.ptr386 = getelementptr inbounds nuw i8, ptr %244, i32 1
  store ptr %incdec.ptr386, ptr %zText385, align 8
  %245 = load ptr, ptr %pJsonErr, align 8
  store i32 4, ptr %245, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end387:                                        ; preds = %if.then379
  br label %if.end388

if.end388:                                        ; preds = %if.end387, %if.then360
  br label %if.end389

if.end389:                                        ; preds = %if.end388, %if.then342
  br label %if.end390

if.end390:                                        ; preds = %if.end389, %if.end329
  br label %if.end391

if.end391:                                        ; preds = %if.end390, %if.end126
  br label %if.end392

if.end392:                                        ; preds = %if.end391, %sw.epilog
  %246 = load ptr, ptr %pStream.addr, align 8
  %zText393 = getelementptr inbounds nuw %struct.SyStream, ptr %246, i32 0, i32 1
  %247 = load ptr, ptr %zText393, align 8
  %248 = load ptr, ptr %pStr, align 8
  %zString394 = getelementptr inbounds nuw %struct.SyString, ptr %248, i32 0, i32 0
  %249 = load ptr, ptr %zString394, align 8
  %sub.ptr.lhs.cast395 = ptrtoint ptr %247 to i64
  %sub.ptr.rhs.cast396 = ptrtoint ptr %249 to i64
  %sub.ptr.sub397 = sub i64 %sub.ptr.lhs.cast395, %sub.ptr.rhs.cast396
  %conv398 = trunc i64 %sub.ptr.sub397 to i32
  %250 = load ptr, ptr %pStr, align 8
  %nByte399 = getelementptr inbounds nuw %struct.SyString, ptr %250, i32 0, i32 1
  store i32 %conv398, ptr %nByte399, align 8
  %251 = load ptr, ptr %pToken.addr, align 8
  %nType400 = getelementptr inbounds nuw %struct.SyToken, ptr %251, i32 0, i32 1
  %252 = load i32, ptr %nType400, align 8
  %cmp401 = icmp eq i32 %252, 4
  br i1 %cmp401, label %if.then403, label %if.end405

if.then403:                                       ; preds = %if.end392
  %253 = load ptr, ptr %pStr, align 8
  %nByte404 = getelementptr inbounds nuw %struct.SyString, ptr %253, i32 0, i32 1
  %254 = load i32, ptr %nByte404, align 8
  %dec = add i32 %254, -1
  store i32 %dec, ptr %nByte404, align 8
  br label %if.end405

if.end405:                                        ; preds = %if.then403, %if.end392
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end405, %if.else383, %if.then19
  %255 = load i32, ptr %retval, align 4
  ret i32 %255
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
