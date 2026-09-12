; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

@.str.133 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.134 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.135 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.136 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.137 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.138 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.139 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.140 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @TokenizePHP(ptr noundef %pStream, ptr noundef %pToken, ptr noundef %pUserData, ptr noundef %pCtxData) #0 {
entry:
  %retval = alloca i32, align 4
  %pStream.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pCtxData.addr = alloca ptr, align 8
  %pStr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zIn = alloca ptr, align 8
  %nKeyword = alloca i32, align 4
  %c = alloca i32, align 4
  %pTokSet = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %nID = alloca i32, align 4
  %zTypeCast = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iNest = alloca i32, align 4
  %zPtr794 = alloca ptr, align 8
  %i797 = alloca i32, align 4
  %zCur = alloca ptr, align 8
  %nLine953 = alloca i32, align 4
  %pOp = alloca ptr, align 8
  store ptr %pStream, ptr %pStream.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pCtxData, ptr %pCtxData.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %pStream.addr, align 8
  %zText = getelementptr inbounds nuw %struct.SyStream, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %zText, align 8
  %2 = load ptr, ptr %pStream.addr, align 8
  %zEnd = getelementptr inbounds nuw %struct.SyStream, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %1, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %4 = load ptr, ptr %pStream.addr, align 8
  %zText1 = getelementptr inbounds nuw %struct.SyStream, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %zText1, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp2 = icmp slt i32 %conv, 192
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #2
  %7 = load ptr, ptr %call, align 8
  %8 = load ptr, ptr %pStream.addr, align 8
  %zText4 = getelementptr inbounds nuw %struct.SyStream, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %zText4, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %idxprom = sext i32 %conv6 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %11 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %11 to i32
  %and = and i32 %conv8, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %pStream.addr, align 8
  %zText9 = getelementptr inbounds nuw %struct.SyStream, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %zText9, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %14, i64 0
  %15 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv11, 10
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %16 = load ptr, ptr %pStream.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyStream, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %nLine, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %nLine, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %18 = load ptr, ptr %pStream.addr, align 8
  %zText14 = getelementptr inbounds nuw %struct.SyStream, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %zText14, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %zText14, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %20 = load ptr, ptr %pStream.addr, align 8
  %zText15 = getelementptr inbounds nuw %struct.SyStream, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %zText15, align 8
  %22 = load ptr, ptr %pStream.addr, align 8
  %zEnd16 = getelementptr inbounds nuw %struct.SyStream, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %zEnd16, align 8
  %cmp17 = icmp uge ptr %21, %23
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.end
  store i32 -18, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %while.end
  %24 = load ptr, ptr %pStream.addr, align 8
  %nLine21 = getelementptr inbounds nuw %struct.SyStream, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %nLine21, align 8
  %26 = load ptr, ptr %pToken.addr, align 8
  %nLine22 = getelementptr inbounds nuw %struct.SyToken, ptr %26, i32 0, i32 2
  store i32 %25, ptr %nLine22, align 4
  %27 = load ptr, ptr %pToken.addr, align 8
  %pUserData23 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 3
  store ptr null, ptr %pUserData23, align 8
  %28 = load ptr, ptr %pToken.addr, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 0
  store ptr %sData, ptr %pStr, align 8
  %29 = load ptr, ptr %pStream.addr, align 8
  %zText24 = getelementptr inbounds nuw %struct.SyStream, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %zText24, align 8
  %31 = load ptr, ptr %pStr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %31, i32 0, i32 0
  store ptr %30, ptr %zString, align 8
  %32 = load ptr, ptr %pStr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 1
  store i32 0, ptr %nByte, align 8
  %33 = load ptr, ptr %pStream.addr, align 8
  %zText25 = getelementptr inbounds nuw %struct.SyStream, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %zText25, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %35 to i32
  %cmp28 = icmp sge i32 %conv27, 192
  br i1 %cmp28, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %call30 = call ptr @__ctype_b_loc() #2
  %36 = load ptr, ptr %call30, align 8
  %37 = load ptr, ptr %pStream.addr, align 8
  %zText31 = getelementptr inbounds nuw %struct.SyStream, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %zText31, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %39 to i32
  %idxprom34 = sext i32 %conv33 to i64
  %arrayidx35 = getelementptr inbounds i16, ptr %36, i64 %idxprom34
  %40 = load i16, ptr %arrayidx35, align 2
  %conv36 = zext i16 %40 to i32
  %and37 = and i32 %conv36, 1024
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %if.then45, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %lor.lhs.false
  %41 = load ptr, ptr %pStream.addr, align 8
  %zText40 = getelementptr inbounds nuw %struct.SyStream, ptr %41, i32 0, i32 1
  %42 = load ptr, ptr %zText40, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx41, align 1
  %conv42 = zext i8 %43 to i32
  %cmp43 = icmp eq i32 %conv42, 95
  br i1 %cmp43, label %if.then45, label %if.else131

if.then45:                                        ; preds = %lor.lhs.false39, %lor.lhs.false, %if.end20
  %44 = load ptr, ptr %pStream.addr, align 8
  %zText46 = getelementptr inbounds nuw %struct.SyStream, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %zText46, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %45, i64 0
  %46 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %46 to i32
  %cmp49 = icmp slt i32 %conv48, 192
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then45
  %47 = load ptr, ptr %pStream.addr, align 8
  %zText52 = getelementptr inbounds nuw %struct.SyStream, ptr %47, i32 0, i32 1
  %48 = load ptr, ptr %zText52, align 8
  %incdec.ptr53 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr53, ptr %zText52, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.then45
  br label %for.cond

for.cond:                                         ; preds = %if.end107, %if.end54
  %49 = load ptr, ptr %pStream.addr, align 8
  %zText55 = getelementptr inbounds nuw %struct.SyStream, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %zText55, align 8
  store ptr %50, ptr %zIn, align 8
  %51 = load ptr, ptr %zIn, align 8
  %arrayidx56 = getelementptr inbounds i8, ptr %51, i64 0
  %52 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %52 to i32
  %cmp58 = icmp sge i32 %conv57, 192
  br i1 %cmp58, label %if.then60, label %if.end76

if.then60:                                        ; preds = %for.cond
  %53 = load ptr, ptr %zIn, align 8
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr61, ptr %zIn, align 8
  br label %while.cond62

while.cond62:                                     ; preds = %while.body73, %if.then60
  %54 = load ptr, ptr %zIn, align 8
  %55 = load ptr, ptr %pStream.addr, align 8
  %zEnd63 = getelementptr inbounds nuw %struct.SyStream, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %zEnd63, align 8
  %cmp64 = icmp ult ptr %54, %56
  br i1 %cmp64, label %land.rhs66, label %land.end72

land.rhs66:                                       ; preds = %while.cond62
  %57 = load ptr, ptr %zIn, align 8
  %arrayidx67 = getelementptr inbounds i8, ptr %57, i64 0
  %58 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %58 to i32
  %and69 = and i32 %conv68, 192
  %cmp70 = icmp eq i32 %and69, 128
  br label %land.end72

land.end72:                                       ; preds = %land.rhs66, %while.cond62
  %59 = phi i1 [ false, %while.cond62 ], [ %cmp70, %land.rhs66 ]
  br i1 %59, label %while.body73, label %while.end75

while.body73:                                     ; preds = %land.end72
  %60 = load ptr, ptr %zIn, align 8
  %incdec.ptr74 = getelementptr inbounds nuw i8, ptr %60, i32 1
  store ptr %incdec.ptr74, ptr %zIn, align 8
  br label %while.cond62, !llvm.loop !8

while.end75:                                      ; preds = %land.end72
  br label %if.end76

if.end76:                                         ; preds = %while.end75, %for.cond
  br label %while.cond77

while.cond77:                                     ; preds = %while.body100, %if.end76
  %61 = load ptr, ptr %zIn, align 8
  %62 = load ptr, ptr %pStream.addr, align 8
  %zEnd78 = getelementptr inbounds nuw %struct.SyStream, ptr %62, i32 0, i32 2
  %63 = load ptr, ptr %zEnd78, align 8
  %cmp79 = icmp ult ptr %61, %63
  br i1 %cmp79, label %land.lhs.true81, label %land.end99

land.lhs.true81:                                  ; preds = %while.cond77
  %64 = load ptr, ptr %zIn, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %64, i64 0
  %65 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %65 to i32
  %cmp84 = icmp slt i32 %conv83, 192
  br i1 %cmp84, label %land.rhs86, label %land.end99

land.rhs86:                                       ; preds = %land.lhs.true81
  %call87 = call ptr @__ctype_b_loc() #2
  %66 = load ptr, ptr %call87, align 8
  %67 = load ptr, ptr %zIn, align 8
  %arrayidx88 = getelementptr inbounds i8, ptr %67, i64 0
  %68 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %68 to i32
  %idxprom90 = sext i32 %conv89 to i64
  %arrayidx91 = getelementptr inbounds i16, ptr %66, i64 %idxprom90
  %69 = load i16, ptr %arrayidx91, align 2
  %conv92 = zext i16 %69 to i32
  %and93 = and i32 %conv92, 8
  %tobool94 = icmp ne i32 %and93, 0
  br i1 %tobool94, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs86
  %70 = load ptr, ptr %zIn, align 8
  %arrayidx95 = getelementptr inbounds i8, ptr %70, i64 0
  %71 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %71 to i32
  %cmp97 = icmp eq i32 %conv96, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs86
  %72 = phi i1 [ true, %land.rhs86 ], [ %cmp97, %lor.rhs ]
  br label %land.end99

land.end99:                                       ; preds = %lor.end, %land.lhs.true81, %while.cond77
  %73 = phi i1 [ false, %land.lhs.true81 ], [ false, %while.cond77 ], [ %72, %lor.end ]
  br i1 %73, label %while.body100, label %while.end102

while.body100:                                    ; preds = %land.end99
  %74 = load ptr, ptr %zIn, align 8
  %incdec.ptr101 = getelementptr inbounds nuw i8, ptr %74, i32 1
  store ptr %incdec.ptr101, ptr %zIn, align 8
  br label %while.cond77, !llvm.loop !9

while.end102:                                     ; preds = %land.end99
  %75 = load ptr, ptr %zIn, align 8
  %76 = load ptr, ptr %pStream.addr, align 8
  %zText103 = getelementptr inbounds nuw %struct.SyStream, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %zText103, align 8
  %cmp104 = icmp eq ptr %75, %77
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %while.end102
  br label %for.end

if.end107:                                        ; preds = %while.end102
  %78 = load ptr, ptr %zIn, align 8
  %79 = load ptr, ptr %pStream.addr, align 8
  %zText108 = getelementptr inbounds nuw %struct.SyStream, ptr %79, i32 0, i32 1
  store ptr %78, ptr %zText108, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then106
  %80 = load ptr, ptr %pStream.addr, align 8
  %zText109 = getelementptr inbounds nuw %struct.SyStream, ptr %80, i32 0, i32 1
  %81 = load ptr, ptr %zText109, align 8
  %82 = load ptr, ptr %pStr, align 8
  %zString110 = getelementptr inbounds nuw %struct.SyString, ptr %82, i32 0, i32 0
  %83 = load ptr, ptr %zString110, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %81 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %83 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv111 = trunc i64 %sub.ptr.sub to i32
  %84 = load ptr, ptr %pStr, align 8
  %nByte112 = getelementptr inbounds nuw %struct.SyString, ptr %84, i32 0, i32 1
  store i32 %conv111, ptr %nByte112, align 8
  %85 = load ptr, ptr %pStr, align 8
  %zString113 = getelementptr inbounds nuw %struct.SyString, ptr %85, i32 0, i32 0
  %86 = load ptr, ptr %zString113, align 8
  %87 = load ptr, ptr %pStr, align 8
  %nByte114 = getelementptr inbounds nuw %struct.SyString, ptr %87, i32 0, i32 1
  %88 = load i32, ptr %nByte114, align 8
  %call115 = call i32 @KeywordCode(ptr noundef %86, i32 noundef %88)
  store i32 %call115, ptr %nKeyword, align 4
  %89 = load i32, ptr %nKeyword, align 4
  %cmp116 = icmp ne i32 %89, 8
  br i1 %cmp116, label %if.then118, label %if.else128

if.then118:                                       ; preds = %for.end
  %90 = load i32, ptr %nKeyword, align 4
  %and119 = and i32 %90, 3169664
  %tobool120 = icmp ne i32 %and119, 0
  br i1 %tobool120, label %if.then121, label %if.else

if.then121:                                       ; preds = %if.then118
  %91 = load ptr, ptr %pStr, align 8
  %call122 = call ptr @PH7_ExprExtractOperator(ptr noundef %91, ptr noundef null)
  %92 = load ptr, ptr %pToken.addr, align 8
  %pUserData123 = getelementptr inbounds nuw %struct.SyToken, ptr %92, i32 0, i32 3
  store ptr %call122, ptr %pUserData123, align 8
  %93 = load ptr, ptr %pToken.addr, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %93, i32 0, i32 1
  store i32 40, ptr %nType, align 8
  br label %if.end127

if.else:                                          ; preds = %if.then118
  %94 = load ptr, ptr %pToken.addr, align 8
  %nType124 = getelementptr inbounds nuw %struct.SyToken, ptr %94, i32 0, i32 1
  store i32 4, ptr %nType124, align 8
  %95 = load i32, ptr %nKeyword, align 4
  %conv125 = zext i32 %95 to i64
  %96 = inttoptr i64 %conv125 to ptr
  %97 = load ptr, ptr %pToken.addr, align 8
  %pUserData126 = getelementptr inbounds nuw %struct.SyToken, ptr %97, i32 0, i32 3
  store ptr %96, ptr %pUserData126, align 8
  br label %if.end127

if.end127:                                        ; preds = %if.else, %if.then121
  br label %if.end130

if.else128:                                       ; preds = %for.end
  %98 = load ptr, ptr %pToken.addr, align 8
  %nType129 = getelementptr inbounds nuw %struct.SyToken, ptr %98, i32 0, i32 1
  store i32 8, ptr %nType129, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.else128, %if.end127
  br label %if.end1367

if.else131:                                       ; preds = %lor.lhs.false39
  %99 = load ptr, ptr %pStream.addr, align 8
  %zText132 = getelementptr inbounds nuw %struct.SyStream, ptr %99, i32 0, i32 1
  %100 = load ptr, ptr %zText132, align 8
  %arrayidx133 = getelementptr inbounds i8, ptr %100, i64 0
  %101 = load i8, ptr %arrayidx133, align 1
  %conv134 = zext i8 %101 to i32
  %cmp135 = icmp eq i32 %conv134, 35
  br i1 %cmp135, label %if.then155, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %if.else131
  %102 = load ptr, ptr %pStream.addr, align 8
  %zText138 = getelementptr inbounds nuw %struct.SyStream, ptr %102, i32 0, i32 1
  %103 = load ptr, ptr %zText138, align 8
  %arrayidx139 = getelementptr inbounds i8, ptr %103, i64 0
  %104 = load i8, ptr %arrayidx139, align 1
  %conv140 = zext i8 %104 to i32
  %cmp141 = icmp eq i32 %conv140, 47
  br i1 %cmp141, label %land.lhs.true143, label %if.else174

land.lhs.true143:                                 ; preds = %lor.lhs.false137
  %105 = load ptr, ptr %pStream.addr, align 8
  %zText144 = getelementptr inbounds nuw %struct.SyStream, ptr %105, i32 0, i32 1
  %106 = load ptr, ptr %zText144, align 8
  %arrayidx145 = getelementptr inbounds i8, ptr %106, i64 1
  %107 = load ptr, ptr %pStream.addr, align 8
  %zEnd146 = getelementptr inbounds nuw %struct.SyStream, ptr %107, i32 0, i32 2
  %108 = load ptr, ptr %zEnd146, align 8
  %cmp147 = icmp ult ptr %arrayidx145, %108
  br i1 %cmp147, label %land.lhs.true149, label %if.else174

land.lhs.true149:                                 ; preds = %land.lhs.true143
  %109 = load ptr, ptr %pStream.addr, align 8
  %zText150 = getelementptr inbounds nuw %struct.SyStream, ptr %109, i32 0, i32 1
  %110 = load ptr, ptr %zText150, align 8
  %arrayidx151 = getelementptr inbounds i8, ptr %110, i64 1
  %111 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %111 to i32
  %cmp153 = icmp eq i32 %conv152, 47
  br i1 %cmp153, label %if.then155, label %if.else174

if.then155:                                       ; preds = %land.lhs.true149, %if.else131
  %112 = load ptr, ptr %pStream.addr, align 8
  %zText156 = getelementptr inbounds nuw %struct.SyStream, ptr %112, i32 0, i32 1
  %113 = load ptr, ptr %zText156, align 8
  %incdec.ptr157 = getelementptr inbounds nuw i8, ptr %113, i32 1
  store ptr %incdec.ptr157, ptr %zText156, align 8
  br label %while.cond158

while.cond158:                                    ; preds = %while.body170, %if.then155
  %114 = load ptr, ptr %pStream.addr, align 8
  %zText159 = getelementptr inbounds nuw %struct.SyStream, ptr %114, i32 0, i32 1
  %115 = load ptr, ptr %zText159, align 8
  %116 = load ptr, ptr %pStream.addr, align 8
  %zEnd160 = getelementptr inbounds nuw %struct.SyStream, ptr %116, i32 0, i32 2
  %117 = load ptr, ptr %zEnd160, align 8
  %cmp161 = icmp ult ptr %115, %117
  br i1 %cmp161, label %land.rhs163, label %land.end169

land.rhs163:                                      ; preds = %while.cond158
  %118 = load ptr, ptr %pStream.addr, align 8
  %zText164 = getelementptr inbounds nuw %struct.SyStream, ptr %118, i32 0, i32 1
  %119 = load ptr, ptr %zText164, align 8
  %arrayidx165 = getelementptr inbounds i8, ptr %119, i64 0
  %120 = load i8, ptr %arrayidx165, align 1
  %conv166 = zext i8 %120 to i32
  %cmp167 = icmp ne i32 %conv166, 10
  br label %land.end169

land.end169:                                      ; preds = %land.rhs163, %while.cond158
  %121 = phi i1 [ false, %while.cond158 ], [ %cmp167, %land.rhs163 ]
  br i1 %121, label %while.body170, label %while.end173

while.body170:                                    ; preds = %land.end169
  %122 = load ptr, ptr %pStream.addr, align 8
  %zText171 = getelementptr inbounds nuw %struct.SyStream, ptr %122, i32 0, i32 1
  %123 = load ptr, ptr %zText171, align 8
  %incdec.ptr172 = getelementptr inbounds nuw i8, ptr %123, i32 1
  store ptr %incdec.ptr172, ptr %zText171, align 8
  br label %while.cond158, !llvm.loop !10

while.end173:                                     ; preds = %land.end169
  store i32 -25, ptr %retval, align 4
  br label %return

if.else174:                                       ; preds = %land.lhs.true149, %land.lhs.true143, %lor.lhs.false137
  %124 = load ptr, ptr %pStream.addr, align 8
  %zText175 = getelementptr inbounds nuw %struct.SyStream, ptr %124, i32 0, i32 1
  %125 = load ptr, ptr %zText175, align 8
  %arrayidx176 = getelementptr inbounds i8, ptr %125, i64 0
  %126 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %126 to i32
  %cmp178 = icmp eq i32 %conv177, 47
  br i1 %cmp178, label %land.lhs.true180, label %if.else234

land.lhs.true180:                                 ; preds = %if.else174
  %127 = load ptr, ptr %pStream.addr, align 8
  %zText181 = getelementptr inbounds nuw %struct.SyStream, ptr %127, i32 0, i32 1
  %128 = load ptr, ptr %zText181, align 8
  %arrayidx182 = getelementptr inbounds i8, ptr %128, i64 1
  %129 = load ptr, ptr %pStream.addr, align 8
  %zEnd183 = getelementptr inbounds nuw %struct.SyStream, ptr %129, i32 0, i32 2
  %130 = load ptr, ptr %zEnd183, align 8
  %cmp184 = icmp ult ptr %arrayidx182, %130
  br i1 %cmp184, label %land.lhs.true186, label %if.else234

land.lhs.true186:                                 ; preds = %land.lhs.true180
  %131 = load ptr, ptr %pStream.addr, align 8
  %zText187 = getelementptr inbounds nuw %struct.SyStream, ptr %131, i32 0, i32 1
  %132 = load ptr, ptr %zText187, align 8
  %arrayidx188 = getelementptr inbounds i8, ptr %132, i64 1
  %133 = load i8, ptr %arrayidx188, align 1
  %conv189 = zext i8 %133 to i32
  %cmp190 = icmp eq i32 %conv189, 42
  br i1 %cmp190, label %if.then192, label %if.else234

if.then192:                                       ; preds = %land.lhs.true186
  %134 = load ptr, ptr %pStream.addr, align 8
  %zText193 = getelementptr inbounds nuw %struct.SyStream, ptr %134, i32 0, i32 1
  %135 = load ptr, ptr %zText193, align 8
  %add.ptr = getelementptr inbounds i8, ptr %135, i64 2
  store ptr %add.ptr, ptr %zText193, align 8
  br label %while.cond194

while.cond194:                                    ; preds = %if.end228, %if.then192
  %136 = load ptr, ptr %pStream.addr, align 8
  %zText195 = getelementptr inbounds nuw %struct.SyStream, ptr %136, i32 0, i32 1
  %137 = load ptr, ptr %zText195, align 8
  %138 = load ptr, ptr %pStream.addr, align 8
  %zEnd196 = getelementptr inbounds nuw %struct.SyStream, ptr %138, i32 0, i32 2
  %139 = load ptr, ptr %zEnd196, align 8
  %cmp197 = icmp ult ptr %137, %139
  br i1 %cmp197, label %while.body199, label %while.end231

while.body199:                                    ; preds = %while.cond194
  %140 = load ptr, ptr %pStream.addr, align 8
  %zText200 = getelementptr inbounds nuw %struct.SyStream, ptr %140, i32 0, i32 1
  %141 = load ptr, ptr %zText200, align 8
  %arrayidx201 = getelementptr inbounds i8, ptr %141, i64 0
  %142 = load i8, ptr %arrayidx201, align 1
  %conv202 = zext i8 %142 to i32
  %cmp203 = icmp eq i32 %conv202, 42
  br i1 %cmp203, label %if.then205, label %if.end219

if.then205:                                       ; preds = %while.body199
  %143 = load ptr, ptr %pStream.addr, align 8
  %zText206 = getelementptr inbounds nuw %struct.SyStream, ptr %143, i32 0, i32 1
  %144 = load ptr, ptr %zText206, align 8
  %arrayidx207 = getelementptr inbounds i8, ptr %144, i64 1
  %145 = load ptr, ptr %pStream.addr, align 8
  %zEnd208 = getelementptr inbounds nuw %struct.SyStream, ptr %145, i32 0, i32 2
  %146 = load ptr, ptr %zEnd208, align 8
  %cmp209 = icmp uge ptr %arrayidx207, %146
  br i1 %cmp209, label %if.then217, label %lor.lhs.false211

lor.lhs.false211:                                 ; preds = %if.then205
  %147 = load ptr, ptr %pStream.addr, align 8
  %zText212 = getelementptr inbounds nuw %struct.SyStream, ptr %147, i32 0, i32 1
  %148 = load ptr, ptr %zText212, align 8
  %arrayidx213 = getelementptr inbounds i8, ptr %148, i64 1
  %149 = load i8, ptr %arrayidx213, align 1
  %conv214 = zext i8 %149 to i32
  %cmp215 = icmp eq i32 %conv214, 47
  br i1 %cmp215, label %if.then217, label %if.end218

if.then217:                                       ; preds = %lor.lhs.false211, %if.then205
  br label %while.end231

if.end218:                                        ; preds = %lor.lhs.false211
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %while.body199
  %150 = load ptr, ptr %pStream.addr, align 8
  %zText220 = getelementptr inbounds nuw %struct.SyStream, ptr %150, i32 0, i32 1
  %151 = load ptr, ptr %zText220, align 8
  %arrayidx221 = getelementptr inbounds i8, ptr %151, i64 0
  %152 = load i8, ptr %arrayidx221, align 1
  %conv222 = zext i8 %152 to i32
  %cmp223 = icmp eq i32 %conv222, 10
  br i1 %cmp223, label %if.then225, label %if.end228

if.then225:                                       ; preds = %if.end219
  %153 = load ptr, ptr %pStream.addr, align 8
  %nLine226 = getelementptr inbounds nuw %struct.SyStream, ptr %153, i32 0, i32 3
  %154 = load i32, ptr %nLine226, align 8
  %inc227 = add i32 %154, 1
  store i32 %inc227, ptr %nLine226, align 8
  br label %if.end228

if.end228:                                        ; preds = %if.then225, %if.end219
  %155 = load ptr, ptr %pStream.addr, align 8
  %zText229 = getelementptr inbounds nuw %struct.SyStream, ptr %155, i32 0, i32 1
  %156 = load ptr, ptr %zText229, align 8
  %incdec.ptr230 = getelementptr inbounds nuw i8, ptr %156, i32 1
  store ptr %incdec.ptr230, ptr %zText229, align 8
  br label %while.cond194, !llvm.loop !11

while.end231:                                     ; preds = %if.then217, %while.cond194
  %157 = load ptr, ptr %pStream.addr, align 8
  %zText232 = getelementptr inbounds nuw %struct.SyStream, ptr %157, i32 0, i32 1
  %158 = load ptr, ptr %zText232, align 8
  %add.ptr233 = getelementptr inbounds i8, ptr %158, i64 2
  store ptr %add.ptr233, ptr %zText232, align 8
  store i32 -25, ptr %retval, align 4
  br label %return

if.else234:                                       ; preds = %land.lhs.true186, %land.lhs.true180, %if.else174
  %call235 = call ptr @__ctype_b_loc() #2
  %159 = load ptr, ptr %call235, align 8
  %160 = load ptr, ptr %pStream.addr, align 8
  %zText236 = getelementptr inbounds nuw %struct.SyStream, ptr %160, i32 0, i32 1
  %161 = load ptr, ptr %zText236, align 8
  %arrayidx237 = getelementptr inbounds i8, ptr %161, i64 0
  %162 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %162 to i32
  %idxprom239 = sext i32 %conv238 to i64
  %arrayidx240 = getelementptr inbounds i16, ptr %159, i64 %idxprom239
  %163 = load i16, ptr %arrayidx240, align 2
  %conv241 = zext i16 %163 to i32
  %and242 = and i32 %conv241, 2048
  %tobool243 = icmp ne i32 %and242, 0
  br i1 %tobool243, label %if.then244, label %if.end553

if.then244:                                       ; preds = %if.else234
  %164 = load ptr, ptr %pStream.addr, align 8
  %zText245 = getelementptr inbounds nuw %struct.SyStream, ptr %164, i32 0, i32 1
  %165 = load ptr, ptr %zText245, align 8
  %incdec.ptr246 = getelementptr inbounds nuw i8, ptr %165, i32 1
  store ptr %incdec.ptr246, ptr %zText245, align 8
  br label %while.cond247

while.cond247:                                    ; preds = %while.body269, %if.then244
  %166 = load ptr, ptr %pStream.addr, align 8
  %zText248 = getelementptr inbounds nuw %struct.SyStream, ptr %166, i32 0, i32 1
  %167 = load ptr, ptr %zText248, align 8
  %168 = load ptr, ptr %pStream.addr, align 8
  %zEnd249 = getelementptr inbounds nuw %struct.SyStream, ptr %168, i32 0, i32 2
  %169 = load ptr, ptr %zEnd249, align 8
  %cmp250 = icmp ult ptr %167, %169
  br i1 %cmp250, label %land.lhs.true252, label %land.end268

land.lhs.true252:                                 ; preds = %while.cond247
  %170 = load ptr, ptr %pStream.addr, align 8
  %zText253 = getelementptr inbounds nuw %struct.SyStream, ptr %170, i32 0, i32 1
  %171 = load ptr, ptr %zText253, align 8
  %arrayidx254 = getelementptr inbounds i8, ptr %171, i64 0
  %172 = load i8, ptr %arrayidx254, align 1
  %conv255 = zext i8 %172 to i32
  %cmp256 = icmp slt i32 %conv255, 192
  br i1 %cmp256, label %land.rhs258, label %land.end268

land.rhs258:                                      ; preds = %land.lhs.true252
  %call259 = call ptr @__ctype_b_loc() #2
  %173 = load ptr, ptr %call259, align 8
  %174 = load ptr, ptr %pStream.addr, align 8
  %zText260 = getelementptr inbounds nuw %struct.SyStream, ptr %174, i32 0, i32 1
  %175 = load ptr, ptr %zText260, align 8
  %arrayidx261 = getelementptr inbounds i8, ptr %175, i64 0
  %176 = load i8, ptr %arrayidx261, align 1
  %conv262 = zext i8 %176 to i32
  %idxprom263 = sext i32 %conv262 to i64
  %arrayidx264 = getelementptr inbounds i16, ptr %173, i64 %idxprom263
  %177 = load i16, ptr %arrayidx264, align 2
  %conv265 = zext i16 %177 to i32
  %and266 = and i32 %conv265, 2048
  %tobool267 = icmp ne i32 %and266, 0
  br label %land.end268

land.end268:                                      ; preds = %land.rhs258, %land.lhs.true252, %while.cond247
  %178 = phi i1 [ false, %land.lhs.true252 ], [ false, %while.cond247 ], [ %tobool267, %land.rhs258 ]
  br i1 %178, label %while.body269, label %while.end272

while.body269:                                    ; preds = %land.end268
  %179 = load ptr, ptr %pStream.addr, align 8
  %zText270 = getelementptr inbounds nuw %struct.SyStream, ptr %179, i32 0, i32 1
  %180 = load ptr, ptr %zText270, align 8
  %incdec.ptr271 = getelementptr inbounds nuw i8, ptr %180, i32 1
  store ptr %incdec.ptr271, ptr %zText270, align 8
  br label %while.cond247, !llvm.loop !12

while.end272:                                     ; preds = %land.end268
  %181 = load ptr, ptr %pToken.addr, align 8
  %nType273 = getelementptr inbounds nuw %struct.SyToken, ptr %181, i32 0, i32 1
  store i32 1, ptr %nType273, align 8
  %182 = load ptr, ptr %pStream.addr, align 8
  %zText274 = getelementptr inbounds nuw %struct.SyStream, ptr %182, i32 0, i32 1
  %183 = load ptr, ptr %zText274, align 8
  %184 = load ptr, ptr %pStream.addr, align 8
  %zEnd275 = getelementptr inbounds nuw %struct.SyStream, ptr %184, i32 0, i32 2
  %185 = load ptr, ptr %zEnd275, align 8
  %cmp276 = icmp ult ptr %183, %185
  br i1 %cmp276, label %if.then278, label %if.end545

if.then278:                                       ; preds = %while.end272
  %186 = load ptr, ptr %pStream.addr, align 8
  %zText279 = getelementptr inbounds nuw %struct.SyStream, ptr %186, i32 0, i32 1
  %187 = load ptr, ptr %zText279, align 8
  %arrayidx280 = getelementptr inbounds i8, ptr %187, i64 0
  %188 = load i8, ptr %arrayidx280, align 1
  %conv281 = zext i8 %188 to i32
  store i32 %conv281, ptr %c, align 4
  %189 = load i32, ptr %c, align 4
  %cmp282 = icmp eq i32 %189, 46
  br i1 %cmp282, label %if.then284, label %if.else398

if.then284:                                       ; preds = %if.then278
  %190 = load ptr, ptr %pStream.addr, align 8
  %zText285 = getelementptr inbounds nuw %struct.SyStream, ptr %190, i32 0, i32 1
  %191 = load ptr, ptr %zText285, align 8
  %incdec.ptr286 = getelementptr inbounds nuw i8, ptr %191, i32 1
  store ptr %incdec.ptr286, ptr %zText285, align 8
  br label %while.cond287

while.cond287:                                    ; preds = %while.body309, %if.then284
  %192 = load ptr, ptr %pStream.addr, align 8
  %zText288 = getelementptr inbounds nuw %struct.SyStream, ptr %192, i32 0, i32 1
  %193 = load ptr, ptr %zText288, align 8
  %194 = load ptr, ptr %pStream.addr, align 8
  %zEnd289 = getelementptr inbounds nuw %struct.SyStream, ptr %194, i32 0, i32 2
  %195 = load ptr, ptr %zEnd289, align 8
  %cmp290 = icmp ult ptr %193, %195
  br i1 %cmp290, label %land.lhs.true292, label %land.end308

land.lhs.true292:                                 ; preds = %while.cond287
  %196 = load ptr, ptr %pStream.addr, align 8
  %zText293 = getelementptr inbounds nuw %struct.SyStream, ptr %196, i32 0, i32 1
  %197 = load ptr, ptr %zText293, align 8
  %arrayidx294 = getelementptr inbounds i8, ptr %197, i64 0
  %198 = load i8, ptr %arrayidx294, align 1
  %conv295 = zext i8 %198 to i32
  %cmp296 = icmp slt i32 %conv295, 192
  br i1 %cmp296, label %land.rhs298, label %land.end308

land.rhs298:                                      ; preds = %land.lhs.true292
  %call299 = call ptr @__ctype_b_loc() #2
  %199 = load ptr, ptr %call299, align 8
  %200 = load ptr, ptr %pStream.addr, align 8
  %zText300 = getelementptr inbounds nuw %struct.SyStream, ptr %200, i32 0, i32 1
  %201 = load ptr, ptr %zText300, align 8
  %arrayidx301 = getelementptr inbounds i8, ptr %201, i64 0
  %202 = load i8, ptr %arrayidx301, align 1
  %conv302 = zext i8 %202 to i32
  %idxprom303 = sext i32 %conv302 to i64
  %arrayidx304 = getelementptr inbounds i16, ptr %199, i64 %idxprom303
  %203 = load i16, ptr %arrayidx304, align 2
  %conv305 = zext i16 %203 to i32
  %and306 = and i32 %conv305, 2048
  %tobool307 = icmp ne i32 %and306, 0
  br label %land.end308

land.end308:                                      ; preds = %land.rhs298, %land.lhs.true292, %while.cond287
  %204 = phi i1 [ false, %land.lhs.true292 ], [ false, %while.cond287 ], [ %tobool307, %land.rhs298 ]
  br i1 %204, label %while.body309, label %while.end312

while.body309:                                    ; preds = %land.end308
  %205 = load ptr, ptr %pStream.addr, align 8
  %zText310 = getelementptr inbounds nuw %struct.SyStream, ptr %205, i32 0, i32 1
  %206 = load ptr, ptr %zText310, align 8
  %incdec.ptr311 = getelementptr inbounds nuw i8, ptr %206, i32 1
  store ptr %incdec.ptr311, ptr %zText310, align 8
  br label %while.cond287, !llvm.loop !13

while.end312:                                     ; preds = %land.end308
  %207 = load ptr, ptr %pStream.addr, align 8
  %zText313 = getelementptr inbounds nuw %struct.SyStream, ptr %207, i32 0, i32 1
  %208 = load ptr, ptr %zText313, align 8
  %209 = load ptr, ptr %pStream.addr, align 8
  %zEnd314 = getelementptr inbounds nuw %struct.SyStream, ptr %209, i32 0, i32 2
  %210 = load ptr, ptr %zEnd314, align 8
  %cmp315 = icmp ult ptr %208, %210
  br i1 %cmp315, label %if.then317, label %if.end396

if.then317:                                       ; preds = %while.end312
  %211 = load ptr, ptr %pStream.addr, align 8
  %zText318 = getelementptr inbounds nuw %struct.SyStream, ptr %211, i32 0, i32 1
  %212 = load ptr, ptr %zText318, align 8
  %arrayidx319 = getelementptr inbounds i8, ptr %212, i64 0
  %213 = load i8, ptr %arrayidx319, align 1
  %conv320 = zext i8 %213 to i32
  store i32 %conv320, ptr %c, align 4
  %214 = load i32, ptr %c, align 4
  %cmp321 = icmp eq i32 %214, 101
  br i1 %cmp321, label %if.then326, label %lor.lhs.false323

lor.lhs.false323:                                 ; preds = %if.then317
  %215 = load i32, ptr %c, align 4
  %cmp324 = icmp eq i32 %215, 69
  br i1 %cmp324, label %if.then326, label %if.end395

if.then326:                                       ; preds = %lor.lhs.false323, %if.then317
  %216 = load ptr, ptr %pStream.addr, align 8
  %zText327 = getelementptr inbounds nuw %struct.SyStream, ptr %216, i32 0, i32 1
  %217 = load ptr, ptr %zText327, align 8
  %incdec.ptr328 = getelementptr inbounds nuw i8, ptr %217, i32 1
  store ptr %incdec.ptr328, ptr %zText327, align 8
  %218 = load ptr, ptr %pStream.addr, align 8
  %zText329 = getelementptr inbounds nuw %struct.SyStream, ptr %218, i32 0, i32 1
  %219 = load ptr, ptr %zText329, align 8
  %220 = load ptr, ptr %pStream.addr, align 8
  %zEnd330 = getelementptr inbounds nuw %struct.SyStream, ptr %220, i32 0, i32 2
  %221 = load ptr, ptr %zEnd330, align 8
  %cmp331 = icmp ult ptr %219, %221
  br i1 %cmp331, label %if.then333, label %if.end394

if.then333:                                       ; preds = %if.then326
  %222 = load ptr, ptr %pStream.addr, align 8
  %zText334 = getelementptr inbounds nuw %struct.SyStream, ptr %222, i32 0, i32 1
  %223 = load ptr, ptr %zText334, align 8
  %arrayidx335 = getelementptr inbounds i8, ptr %223, i64 0
  %224 = load i8, ptr %arrayidx335, align 1
  %conv336 = zext i8 %224 to i32
  store i32 %conv336, ptr %c, align 4
  %225 = load i32, ptr %c, align 4
  %cmp337 = icmp eq i32 %225, 43
  br i1 %cmp337, label %land.lhs.true342, label %lor.lhs.false339

lor.lhs.false339:                                 ; preds = %if.then333
  %226 = load i32, ptr %c, align 4
  %cmp340 = icmp eq i32 %226, 45
  br i1 %cmp340, label %land.lhs.true342, label %if.end367

land.lhs.true342:                                 ; preds = %lor.lhs.false339, %if.then333
  %227 = load ptr, ptr %pStream.addr, align 8
  %zText343 = getelementptr inbounds nuw %struct.SyStream, ptr %227, i32 0, i32 1
  %228 = load ptr, ptr %zText343, align 8
  %arrayidx344 = getelementptr inbounds i8, ptr %228, i64 1
  %229 = load ptr, ptr %pStream.addr, align 8
  %zEnd345 = getelementptr inbounds nuw %struct.SyStream, ptr %229, i32 0, i32 2
  %230 = load ptr, ptr %zEnd345, align 8
  %cmp346 = icmp ult ptr %arrayidx344, %230
  br i1 %cmp346, label %land.lhs.true348, label %if.end367

land.lhs.true348:                                 ; preds = %land.lhs.true342
  %231 = load ptr, ptr %pStream.addr, align 8
  %zText349 = getelementptr inbounds nuw %struct.SyStream, ptr %231, i32 0, i32 1
  %232 = load ptr, ptr %zText349, align 8
  %arrayidx350 = getelementptr inbounds i8, ptr %232, i64 1
  %233 = load i8, ptr %arrayidx350, align 1
  %conv351 = zext i8 %233 to i32
  %cmp352 = icmp slt i32 %conv351, 192
  br i1 %cmp352, label %land.lhs.true354, label %if.end367

land.lhs.true354:                                 ; preds = %land.lhs.true348
  %call355 = call ptr @__ctype_b_loc() #2
  %234 = load ptr, ptr %call355, align 8
  %235 = load ptr, ptr %pStream.addr, align 8
  %zText356 = getelementptr inbounds nuw %struct.SyStream, ptr %235, i32 0, i32 1
  %236 = load ptr, ptr %zText356, align 8
  %arrayidx357 = getelementptr inbounds i8, ptr %236, i64 1
  %237 = load i8, ptr %arrayidx357, align 1
  %conv358 = zext i8 %237 to i32
  %idxprom359 = sext i32 %conv358 to i64
  %arrayidx360 = getelementptr inbounds i16, ptr %234, i64 %idxprom359
  %238 = load i16, ptr %arrayidx360, align 2
  %conv361 = zext i16 %238 to i32
  %and362 = and i32 %conv361, 2048
  %tobool363 = icmp ne i32 %and362, 0
  br i1 %tobool363, label %if.then364, label %if.end367

if.then364:                                       ; preds = %land.lhs.true354
  %239 = load ptr, ptr %pStream.addr, align 8
  %zText365 = getelementptr inbounds nuw %struct.SyStream, ptr %239, i32 0, i32 1
  %240 = load ptr, ptr %zText365, align 8
  %incdec.ptr366 = getelementptr inbounds nuw i8, ptr %240, i32 1
  store ptr %incdec.ptr366, ptr %zText365, align 8
  br label %if.end367

if.end367:                                        ; preds = %if.then364, %land.lhs.true354, %land.lhs.true348, %land.lhs.true342, %lor.lhs.false339
  br label %while.cond368

while.cond368:                                    ; preds = %while.body390, %if.end367
  %241 = load ptr, ptr %pStream.addr, align 8
  %zText369 = getelementptr inbounds nuw %struct.SyStream, ptr %241, i32 0, i32 1
  %242 = load ptr, ptr %zText369, align 8
  %243 = load ptr, ptr %pStream.addr, align 8
  %zEnd370 = getelementptr inbounds nuw %struct.SyStream, ptr %243, i32 0, i32 2
  %244 = load ptr, ptr %zEnd370, align 8
  %cmp371 = icmp ult ptr %242, %244
  br i1 %cmp371, label %land.lhs.true373, label %land.end389

land.lhs.true373:                                 ; preds = %while.cond368
  %245 = load ptr, ptr %pStream.addr, align 8
  %zText374 = getelementptr inbounds nuw %struct.SyStream, ptr %245, i32 0, i32 1
  %246 = load ptr, ptr %zText374, align 8
  %arrayidx375 = getelementptr inbounds i8, ptr %246, i64 0
  %247 = load i8, ptr %arrayidx375, align 1
  %conv376 = zext i8 %247 to i32
  %cmp377 = icmp slt i32 %conv376, 192
  br i1 %cmp377, label %land.rhs379, label %land.end389

land.rhs379:                                      ; preds = %land.lhs.true373
  %call380 = call ptr @__ctype_b_loc() #2
  %248 = load ptr, ptr %call380, align 8
  %249 = load ptr, ptr %pStream.addr, align 8
  %zText381 = getelementptr inbounds nuw %struct.SyStream, ptr %249, i32 0, i32 1
  %250 = load ptr, ptr %zText381, align 8
  %arrayidx382 = getelementptr inbounds i8, ptr %250, i64 0
  %251 = load i8, ptr %arrayidx382, align 1
  %conv383 = zext i8 %251 to i32
  %idxprom384 = sext i32 %conv383 to i64
  %arrayidx385 = getelementptr inbounds i16, ptr %248, i64 %idxprom384
  %252 = load i16, ptr %arrayidx385, align 2
  %conv386 = zext i16 %252 to i32
  %and387 = and i32 %conv386, 2048
  %tobool388 = icmp ne i32 %and387, 0
  br label %land.end389

land.end389:                                      ; preds = %land.rhs379, %land.lhs.true373, %while.cond368
  %253 = phi i1 [ false, %land.lhs.true373 ], [ false, %while.cond368 ], [ %tobool388, %land.rhs379 ]
  br i1 %253, label %while.body390, label %while.end393

while.body390:                                    ; preds = %land.end389
  %254 = load ptr, ptr %pStream.addr, align 8
  %zText391 = getelementptr inbounds nuw %struct.SyStream, ptr %254, i32 0, i32 1
  %255 = load ptr, ptr %zText391, align 8
  %incdec.ptr392 = getelementptr inbounds nuw i8, ptr %255, i32 1
  store ptr %incdec.ptr392, ptr %zText391, align 8
  br label %while.cond368, !llvm.loop !14

while.end393:                                     ; preds = %land.end389
  br label %if.end394

if.end394:                                        ; preds = %while.end393, %if.then326
  br label %if.end395

if.end395:                                        ; preds = %if.end394, %lor.lhs.false323
  br label %if.end396

if.end396:                                        ; preds = %if.end395, %while.end312
  %256 = load ptr, ptr %pToken.addr, align 8
  %nType397 = getelementptr inbounds nuw %struct.SyToken, ptr %256, i32 0, i32 1
  store i32 2, ptr %nType397, align 8
  br label %if.end544

if.else398:                                       ; preds = %if.then278
  %257 = load i32, ptr %c, align 4
  %cmp399 = icmp eq i32 %257, 101
  br i1 %cmp399, label %if.then404, label %lor.lhs.false401

lor.lhs.false401:                                 ; preds = %if.else398
  %258 = load i32, ptr %c, align 4
  %cmp402 = icmp eq i32 %258, 69
  br i1 %cmp402, label %if.then404, label %if.else474

if.then404:                                       ; preds = %lor.lhs.false401, %if.else398
  store ptr null, ptr %pUserData.addr, align 8
  store ptr null, ptr %pCtxData.addr, align 8
  %259 = load ptr, ptr %pStream.addr, align 8
  %zText405 = getelementptr inbounds nuw %struct.SyStream, ptr %259, i32 0, i32 1
  %260 = load ptr, ptr %zText405, align 8
  %incdec.ptr406 = getelementptr inbounds nuw i8, ptr %260, i32 1
  store ptr %incdec.ptr406, ptr %zText405, align 8
  %261 = load ptr, ptr %pStream.addr, align 8
  %zText407 = getelementptr inbounds nuw %struct.SyStream, ptr %261, i32 0, i32 1
  %262 = load ptr, ptr %zText407, align 8
  %263 = load ptr, ptr %pStream.addr, align 8
  %zEnd408 = getelementptr inbounds nuw %struct.SyStream, ptr %263, i32 0, i32 2
  %264 = load ptr, ptr %zEnd408, align 8
  %cmp409 = icmp ult ptr %262, %264
  br i1 %cmp409, label %if.then411, label %if.end472

if.then411:                                       ; preds = %if.then404
  %265 = load ptr, ptr %pStream.addr, align 8
  %zText412 = getelementptr inbounds nuw %struct.SyStream, ptr %265, i32 0, i32 1
  %266 = load ptr, ptr %zText412, align 8
  %arrayidx413 = getelementptr inbounds i8, ptr %266, i64 0
  %267 = load i8, ptr %arrayidx413, align 1
  %conv414 = zext i8 %267 to i32
  store i32 %conv414, ptr %c, align 4
  %268 = load i32, ptr %c, align 4
  %cmp415 = icmp eq i32 %268, 43
  br i1 %cmp415, label %land.lhs.true420, label %lor.lhs.false417

lor.lhs.false417:                                 ; preds = %if.then411
  %269 = load i32, ptr %c, align 4
  %cmp418 = icmp eq i32 %269, 45
  br i1 %cmp418, label %land.lhs.true420, label %if.end445

land.lhs.true420:                                 ; preds = %lor.lhs.false417, %if.then411
  %270 = load ptr, ptr %pStream.addr, align 8
  %zText421 = getelementptr inbounds nuw %struct.SyStream, ptr %270, i32 0, i32 1
  %271 = load ptr, ptr %zText421, align 8
  %arrayidx422 = getelementptr inbounds i8, ptr %271, i64 1
  %272 = load ptr, ptr %pStream.addr, align 8
  %zEnd423 = getelementptr inbounds nuw %struct.SyStream, ptr %272, i32 0, i32 2
  %273 = load ptr, ptr %zEnd423, align 8
  %cmp424 = icmp ult ptr %arrayidx422, %273
  br i1 %cmp424, label %land.lhs.true426, label %if.end445

land.lhs.true426:                                 ; preds = %land.lhs.true420
  %274 = load ptr, ptr %pStream.addr, align 8
  %zText427 = getelementptr inbounds nuw %struct.SyStream, ptr %274, i32 0, i32 1
  %275 = load ptr, ptr %zText427, align 8
  %arrayidx428 = getelementptr inbounds i8, ptr %275, i64 1
  %276 = load i8, ptr %arrayidx428, align 1
  %conv429 = zext i8 %276 to i32
  %cmp430 = icmp slt i32 %conv429, 192
  br i1 %cmp430, label %land.lhs.true432, label %if.end445

land.lhs.true432:                                 ; preds = %land.lhs.true426
  %call433 = call ptr @__ctype_b_loc() #2
  %277 = load ptr, ptr %call433, align 8
  %278 = load ptr, ptr %pStream.addr, align 8
  %zText434 = getelementptr inbounds nuw %struct.SyStream, ptr %278, i32 0, i32 1
  %279 = load ptr, ptr %zText434, align 8
  %arrayidx435 = getelementptr inbounds i8, ptr %279, i64 1
  %280 = load i8, ptr %arrayidx435, align 1
  %conv436 = zext i8 %280 to i32
  %idxprom437 = sext i32 %conv436 to i64
  %arrayidx438 = getelementptr inbounds i16, ptr %277, i64 %idxprom437
  %281 = load i16, ptr %arrayidx438, align 2
  %conv439 = zext i16 %281 to i32
  %and440 = and i32 %conv439, 2048
  %tobool441 = icmp ne i32 %and440, 0
  br i1 %tobool441, label %if.then442, label %if.end445

if.then442:                                       ; preds = %land.lhs.true432
  %282 = load ptr, ptr %pStream.addr, align 8
  %zText443 = getelementptr inbounds nuw %struct.SyStream, ptr %282, i32 0, i32 1
  %283 = load ptr, ptr %zText443, align 8
  %incdec.ptr444 = getelementptr inbounds nuw i8, ptr %283, i32 1
  store ptr %incdec.ptr444, ptr %zText443, align 8
  br label %if.end445

if.end445:                                        ; preds = %if.then442, %land.lhs.true432, %land.lhs.true426, %land.lhs.true420, %lor.lhs.false417
  br label %while.cond446

while.cond446:                                    ; preds = %while.body468, %if.end445
  %284 = load ptr, ptr %pStream.addr, align 8
  %zText447 = getelementptr inbounds nuw %struct.SyStream, ptr %284, i32 0, i32 1
  %285 = load ptr, ptr %zText447, align 8
  %286 = load ptr, ptr %pStream.addr, align 8
  %zEnd448 = getelementptr inbounds nuw %struct.SyStream, ptr %286, i32 0, i32 2
  %287 = load ptr, ptr %zEnd448, align 8
  %cmp449 = icmp ult ptr %285, %287
  br i1 %cmp449, label %land.lhs.true451, label %land.end467

land.lhs.true451:                                 ; preds = %while.cond446
  %288 = load ptr, ptr %pStream.addr, align 8
  %zText452 = getelementptr inbounds nuw %struct.SyStream, ptr %288, i32 0, i32 1
  %289 = load ptr, ptr %zText452, align 8
  %arrayidx453 = getelementptr inbounds i8, ptr %289, i64 0
  %290 = load i8, ptr %arrayidx453, align 1
  %conv454 = zext i8 %290 to i32
  %cmp455 = icmp slt i32 %conv454, 192
  br i1 %cmp455, label %land.rhs457, label %land.end467

land.rhs457:                                      ; preds = %land.lhs.true451
  %call458 = call ptr @__ctype_b_loc() #2
  %291 = load ptr, ptr %call458, align 8
  %292 = load ptr, ptr %pStream.addr, align 8
  %zText459 = getelementptr inbounds nuw %struct.SyStream, ptr %292, i32 0, i32 1
  %293 = load ptr, ptr %zText459, align 8
  %arrayidx460 = getelementptr inbounds i8, ptr %293, i64 0
  %294 = load i8, ptr %arrayidx460, align 1
  %conv461 = zext i8 %294 to i32
  %idxprom462 = sext i32 %conv461 to i64
  %arrayidx463 = getelementptr inbounds i16, ptr %291, i64 %idxprom462
  %295 = load i16, ptr %arrayidx463, align 2
  %conv464 = zext i16 %295 to i32
  %and465 = and i32 %conv464, 2048
  %tobool466 = icmp ne i32 %and465, 0
  br label %land.end467

land.end467:                                      ; preds = %land.rhs457, %land.lhs.true451, %while.cond446
  %296 = phi i1 [ false, %land.lhs.true451 ], [ false, %while.cond446 ], [ %tobool466, %land.rhs457 ]
  br i1 %296, label %while.body468, label %while.end471

while.body468:                                    ; preds = %land.end467
  %297 = load ptr, ptr %pStream.addr, align 8
  %zText469 = getelementptr inbounds nuw %struct.SyStream, ptr %297, i32 0, i32 1
  %298 = load ptr, ptr %zText469, align 8
  %incdec.ptr470 = getelementptr inbounds nuw i8, ptr %298, i32 1
  store ptr %incdec.ptr470, ptr %zText469, align 8
  br label %while.cond446, !llvm.loop !15

while.end471:                                     ; preds = %land.end467
  br label %if.end472

if.end472:                                        ; preds = %while.end471, %if.then404
  %299 = load ptr, ptr %pToken.addr, align 8
  %nType473 = getelementptr inbounds nuw %struct.SyToken, ptr %299, i32 0, i32 1
  store i32 2, ptr %nType473, align 8
  br label %if.end543

if.else474:                                       ; preds = %lor.lhs.false401
  %300 = load i32, ptr %c, align 4
  %cmp475 = icmp eq i32 %300, 120
  br i1 %cmp475, label %if.then480, label %lor.lhs.false477

lor.lhs.false477:                                 ; preds = %if.else474
  %301 = load i32, ptr %c, align 4
  %cmp478 = icmp eq i32 %301, 88
  br i1 %cmp478, label %if.then480, label %if.else509

if.then480:                                       ; preds = %lor.lhs.false477, %if.else474
  %302 = load ptr, ptr %pStream.addr, align 8
  %zText481 = getelementptr inbounds nuw %struct.SyStream, ptr %302, i32 0, i32 1
  %303 = load ptr, ptr %zText481, align 8
  %incdec.ptr482 = getelementptr inbounds nuw i8, ptr %303, i32 1
  store ptr %incdec.ptr482, ptr %zText481, align 8
  br label %while.cond483

while.cond483:                                    ; preds = %while.body505, %if.then480
  %304 = load ptr, ptr %pStream.addr, align 8
  %zText484 = getelementptr inbounds nuw %struct.SyStream, ptr %304, i32 0, i32 1
  %305 = load ptr, ptr %zText484, align 8
  %306 = load ptr, ptr %pStream.addr, align 8
  %zEnd485 = getelementptr inbounds nuw %struct.SyStream, ptr %306, i32 0, i32 2
  %307 = load ptr, ptr %zEnd485, align 8
  %cmp486 = icmp ult ptr %305, %307
  br i1 %cmp486, label %land.lhs.true488, label %land.end504

land.lhs.true488:                                 ; preds = %while.cond483
  %308 = load ptr, ptr %pStream.addr, align 8
  %zText489 = getelementptr inbounds nuw %struct.SyStream, ptr %308, i32 0, i32 1
  %309 = load ptr, ptr %zText489, align 8
  %arrayidx490 = getelementptr inbounds i8, ptr %309, i64 0
  %310 = load i8, ptr %arrayidx490, align 1
  %conv491 = zext i8 %310 to i32
  %cmp492 = icmp slt i32 %conv491, 192
  br i1 %cmp492, label %land.rhs494, label %land.end504

land.rhs494:                                      ; preds = %land.lhs.true488
  %call495 = call ptr @__ctype_b_loc() #2
  %311 = load ptr, ptr %call495, align 8
  %312 = load ptr, ptr %pStream.addr, align 8
  %zText496 = getelementptr inbounds nuw %struct.SyStream, ptr %312, i32 0, i32 1
  %313 = load ptr, ptr %zText496, align 8
  %arrayidx497 = getelementptr inbounds i8, ptr %313, i64 0
  %314 = load i8, ptr %arrayidx497, align 1
  %conv498 = zext i8 %314 to i32
  %idxprom499 = sext i32 %conv498 to i64
  %arrayidx500 = getelementptr inbounds i16, ptr %311, i64 %idxprom499
  %315 = load i16, ptr %arrayidx500, align 2
  %conv501 = zext i16 %315 to i32
  %and502 = and i32 %conv501, 4096
  %tobool503 = icmp ne i32 %and502, 0
  br label %land.end504

land.end504:                                      ; preds = %land.rhs494, %land.lhs.true488, %while.cond483
  %316 = phi i1 [ false, %land.lhs.true488 ], [ false, %while.cond483 ], [ %tobool503, %land.rhs494 ]
  br i1 %316, label %while.body505, label %while.end508

while.body505:                                    ; preds = %land.end504
  %317 = load ptr, ptr %pStream.addr, align 8
  %zText506 = getelementptr inbounds nuw %struct.SyStream, ptr %317, i32 0, i32 1
  %318 = load ptr, ptr %zText506, align 8
  %incdec.ptr507 = getelementptr inbounds nuw i8, ptr %318, i32 1
  store ptr %incdec.ptr507, ptr %zText506, align 8
  br label %while.cond483, !llvm.loop !16

while.end508:                                     ; preds = %land.end504
  br label %if.end542

if.else509:                                       ; preds = %lor.lhs.false477
  %319 = load i32, ptr %c, align 4
  %cmp510 = icmp eq i32 %319, 98
  br i1 %cmp510, label %if.then515, label %lor.lhs.false512

lor.lhs.false512:                                 ; preds = %if.else509
  %320 = load i32, ptr %c, align 4
  %cmp513 = icmp eq i32 %320, 66
  br i1 %cmp513, label %if.then515, label %if.end541

if.then515:                                       ; preds = %lor.lhs.false512, %if.else509
  %321 = load ptr, ptr %pStream.addr, align 8
  %zText516 = getelementptr inbounds nuw %struct.SyStream, ptr %321, i32 0, i32 1
  %322 = load ptr, ptr %zText516, align 8
  %incdec.ptr517 = getelementptr inbounds nuw i8, ptr %322, i32 1
  store ptr %incdec.ptr517, ptr %zText516, align 8
  br label %while.cond518

while.cond518:                                    ; preds = %while.body537, %if.then515
  %323 = load ptr, ptr %pStream.addr, align 8
  %zText519 = getelementptr inbounds nuw %struct.SyStream, ptr %323, i32 0, i32 1
  %324 = load ptr, ptr %zText519, align 8
  %325 = load ptr, ptr %pStream.addr, align 8
  %zEnd520 = getelementptr inbounds nuw %struct.SyStream, ptr %325, i32 0, i32 2
  %326 = load ptr, ptr %zEnd520, align 8
  %cmp521 = icmp ult ptr %324, %326
  br i1 %cmp521, label %land.rhs523, label %land.end536

land.rhs523:                                      ; preds = %while.cond518
  %327 = load ptr, ptr %pStream.addr, align 8
  %zText524 = getelementptr inbounds nuw %struct.SyStream, ptr %327, i32 0, i32 1
  %328 = load ptr, ptr %zText524, align 8
  %arrayidx525 = getelementptr inbounds i8, ptr %328, i64 0
  %329 = load i8, ptr %arrayidx525, align 1
  %conv526 = zext i8 %329 to i32
  %cmp527 = icmp eq i32 %conv526, 48
  br i1 %cmp527, label %lor.end535, label %lor.rhs529

lor.rhs529:                                       ; preds = %land.rhs523
  %330 = load ptr, ptr %pStream.addr, align 8
  %zText530 = getelementptr inbounds nuw %struct.SyStream, ptr %330, i32 0, i32 1
  %331 = load ptr, ptr %zText530, align 8
  %arrayidx531 = getelementptr inbounds i8, ptr %331, i64 0
  %332 = load i8, ptr %arrayidx531, align 1
  %conv532 = zext i8 %332 to i32
  %cmp533 = icmp eq i32 %conv532, 49
  br label %lor.end535

lor.end535:                                       ; preds = %lor.rhs529, %land.rhs523
  %333 = phi i1 [ true, %land.rhs523 ], [ %cmp533, %lor.rhs529 ]
  br label %land.end536

land.end536:                                      ; preds = %lor.end535, %while.cond518
  %334 = phi i1 [ false, %while.cond518 ], [ %333, %lor.end535 ]
  br i1 %334, label %while.body537, label %while.end540

while.body537:                                    ; preds = %land.end536
  %335 = load ptr, ptr %pStream.addr, align 8
  %zText538 = getelementptr inbounds nuw %struct.SyStream, ptr %335, i32 0, i32 1
  %336 = load ptr, ptr %zText538, align 8
  %incdec.ptr539 = getelementptr inbounds nuw i8, ptr %336, i32 1
  store ptr %incdec.ptr539, ptr %zText538, align 8
  br label %while.cond518, !llvm.loop !17

while.end540:                                     ; preds = %land.end536
  br label %if.end541

if.end541:                                        ; preds = %while.end540, %lor.lhs.false512
  br label %if.end542

if.end542:                                        ; preds = %if.end541, %while.end508
  br label %if.end543

if.end543:                                        ; preds = %if.end542, %if.end472
  br label %if.end544

if.end544:                                        ; preds = %if.end543, %if.end396
  br label %if.end545

if.end545:                                        ; preds = %if.end544, %while.end272
  %337 = load ptr, ptr %pStream.addr, align 8
  %zText546 = getelementptr inbounds nuw %struct.SyStream, ptr %337, i32 0, i32 1
  %338 = load ptr, ptr %zText546, align 8
  %339 = load ptr, ptr %pStr, align 8
  %zString547 = getelementptr inbounds nuw %struct.SyString, ptr %339, i32 0, i32 0
  %340 = load ptr, ptr %zString547, align 8
  %sub.ptr.lhs.cast548 = ptrtoint ptr %338 to i64
  %sub.ptr.rhs.cast549 = ptrtoint ptr %340 to i64
  %sub.ptr.sub550 = sub i64 %sub.ptr.lhs.cast548, %sub.ptr.rhs.cast549
  %conv551 = trunc i64 %sub.ptr.sub550 to i32
  %341 = load ptr, ptr %pStr, align 8
  %nByte552 = getelementptr inbounds nuw %struct.SyString, ptr %341, i32 0, i32 1
  store i32 %conv551, ptr %nByte552, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end553:                                        ; preds = %if.else234
  br label %if.end554

if.end554:                                        ; preds = %if.end553
  br label %if.end555

if.end555:                                        ; preds = %if.end554
  %342 = load ptr, ptr %pStream.addr, align 8
  %zText556 = getelementptr inbounds nuw %struct.SyStream, ptr %342, i32 0, i32 1
  %343 = load ptr, ptr %zText556, align 8
  %arrayidx557 = getelementptr inbounds i8, ptr %343, i64 0
  %344 = load i8, ptr %arrayidx557, align 1
  %conv558 = zext i8 %344 to i32
  store i32 %conv558, ptr %c, align 4
  %345 = load ptr, ptr %pStream.addr, align 8
  %zText559 = getelementptr inbounds nuw %struct.SyStream, ptr %345, i32 0, i32 1
  %346 = load ptr, ptr %zText559, align 8
  %incdec.ptr560 = getelementptr inbounds nuw i8, ptr %346, i32 1
  store ptr %incdec.ptr560, ptr %zText559, align 8
  %347 = load ptr, ptr %pToken.addr, align 8
  %nType561 = getelementptr inbounds nuw %struct.SyToken, ptr %347, i32 0, i32 1
  store i32 32, ptr %nType561, align 8
  %348 = load i32, ptr %c, align 4
  switch i32 %348, label %sw.default [
    i32 36, label %sw.bb
    i32 123, label %sw.bb563
    i32 125, label %sw.bb565
    i32 40, label %sw.bb567
    i32 91, label %sw.bb569
    i32 93, label %sw.bb571
    i32 41, label %sw.bb573
    i32 39, label %sw.bb638
    i32 34, label %sw.bb704
    i32 96, label %sw.bb841
    i32 92, label %sw.bb885
    i32 58, label %sw.bb887
    i32 44, label %sw.bb904
    i32 59, label %sw.bb907
    i32 61, label %sw.bb909
    i32 33, label %sw.bb1003
    i32 38, label %sw.bb1032
    i32 124, label %sw.bb1064
    i32 43, label %sw.bb1090
    i32 45, label %sw.bb1116
    i32 42, label %sw.bb1152
    i32 47, label %sw.bb1167
    i32 37, label %sw.bb1182
    i32 94, label %sw.bb1197
    i32 46, label %sw.bb1212
    i32 60, label %sw.bb1227
    i32 62, label %sw.bb1293
  ]

sw.bb:                                            ; preds = %if.end555
  %349 = load ptr, ptr %pToken.addr, align 8
  %nType562 = getelementptr inbounds nuw %struct.SyToken, ptr %349, i32 0, i32 1
  store i32 16, ptr %nType562, align 8
  br label %sw.epilog

sw.bb563:                                         ; preds = %if.end555
  %350 = load ptr, ptr %pToken.addr, align 8
  %nType564 = getelementptr inbounds nuw %struct.SyToken, ptr %350, i32 0, i32 1
  store i32 64, ptr %nType564, align 8
  br label %sw.epilog

sw.bb565:                                         ; preds = %if.end555
  %351 = load ptr, ptr %pToken.addr, align 8
  %nType566 = getelementptr inbounds nuw %struct.SyToken, ptr %351, i32 0, i32 1
  store i32 128, ptr %nType566, align 8
  br label %sw.epilog

sw.bb567:                                         ; preds = %if.end555
  %352 = load ptr, ptr %pToken.addr, align 8
  %nType568 = getelementptr inbounds nuw %struct.SyToken, ptr %352, i32 0, i32 1
  store i32 512, ptr %nType568, align 8
  br label %sw.epilog

sw.bb569:                                         ; preds = %if.end555
  %353 = load ptr, ptr %pToken.addr, align 8
  %nType570 = getelementptr inbounds nuw %struct.SyToken, ptr %353, i32 0, i32 1
  %354 = load i32, ptr %nType570, align 8
  %or = or i32 %354, 2048
  store i32 %or, ptr %nType570, align 8
  br label %sw.epilog

sw.bb571:                                         ; preds = %if.end555
  %355 = load ptr, ptr %pToken.addr, align 8
  %nType572 = getelementptr inbounds nuw %struct.SyToken, ptr %355, i32 0, i32 1
  store i32 4096, ptr %nType572, align 8
  br label %sw.epilog

sw.bb573:                                         ; preds = %if.end555
  %356 = load ptr, ptr %pStream.addr, align 8
  %pSet = getelementptr inbounds nuw %struct.SyStream, ptr %356, i32 0, i32 5
  %357 = load ptr, ptr %pSet, align 8
  store ptr %357, ptr %pTokSet, align 8
  %358 = load ptr, ptr %pTokSet, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %358, i32 0, i32 2
  %359 = load i32, ptr %nUsed, align 8
  %cmp574 = icmp uge i32 %359, 2
  br i1 %cmp574, label %if.then576, label %if.end636

if.then576:                                       ; preds = %sw.bb573
  %360 = load ptr, ptr %pTokSet, align 8
  %call577 = call ptr @SySetPeek(ptr noundef %360)
  store ptr %call577, ptr %pTmp, align 8
  %361 = load ptr, ptr %pTmp, align 8
  %nType578 = getelementptr inbounds nuw %struct.SyToken, ptr %361, i32 0, i32 1
  %362 = load i32, ptr %nType578, align 8
  %and579 = and i32 %362, 4
  %tobool580 = icmp ne i32 %and579, 0
  br i1 %tobool580, label %if.then581, label %if.end635

if.then581:                                       ; preds = %if.then576
  %363 = load ptr, ptr %pTmp, align 8
  %pUserData582 = getelementptr inbounds nuw %struct.SyToken, ptr %363, i32 0, i32 3
  %364 = load ptr, ptr %pUserData582, align 8
  %365 = ptrtoint ptr %364 to i64
  %conv583 = trunc i64 %365 to i32
  store i32 %conv583, ptr %nID, align 4
  %366 = load i32, ptr %nID, align 4
  %and584 = and i32 %366, 1024512
  %tobool585 = icmp ne i32 %and584, 0
  br i1 %tobool585, label %if.then586, label %if.end634

if.then586:                                       ; preds = %if.then581
  %367 = load ptr, ptr %pTokSet, align 8
  %368 = load ptr, ptr %pTokSet, align 8
  %nUsed587 = getelementptr inbounds nuw %struct.SySet, ptr %368, i32 0, i32 2
  %369 = load i32, ptr %nUsed587, align 8
  %sub = sub i32 %369, 2
  %call588 = call ptr @SySetAt(ptr noundef %367, i32 noundef %sub)
  store ptr %call588, ptr %pTmp, align 8
  %370 = load ptr, ptr %pTmp, align 8
  %nType589 = getelementptr inbounds nuw %struct.SyToken, ptr %370, i32 0, i32 1
  %371 = load i32, ptr %nType589, align 8
  %and590 = and i32 %371, 512
  %tobool591 = icmp ne i32 %and590, 0
  br i1 %tobool591, label %if.then592, label %if.end633

if.then592:                                       ; preds = %if.then586
  store ptr @.str.133, ptr %zTypeCast, align 8
  %372 = load i32, ptr %nID, align 4
  %and593 = and i32 %372, 131072
  %tobool594 = icmp ne i32 %and593, 0
  br i1 %tobool594, label %if.then595, label %if.else596

if.then595:                                       ; preds = %if.then592
  store ptr @.str.134, ptr %zTypeCast, align 8
  br label %if.end621

if.else596:                                       ; preds = %if.then592
  %373 = load i32, ptr %nID, align 4
  %and597 = and i32 %373, 32768
  %tobool598 = icmp ne i32 %and597, 0
  br i1 %tobool598, label %if.then599, label %if.else600

if.then599:                                       ; preds = %if.else596
  store ptr @.str.135, ptr %zTypeCast, align 8
  br label %if.end620

if.else600:                                       ; preds = %if.else596
  %374 = load i32, ptr %nID, align 4
  %and601 = and i32 %374, 262144
  %tobool602 = icmp ne i32 %and601, 0
  br i1 %tobool602, label %if.then603, label %if.else604

if.then603:                                       ; preds = %if.else600
  store ptr @.str.136, ptr %zTypeCast, align 8
  br label %if.end619

if.else604:                                       ; preds = %if.else600
  %375 = load i32, ptr %nID, align 4
  %and605 = and i32 %375, 512
  %tobool606 = icmp ne i32 %and605, 0
  br i1 %tobool606, label %if.then607, label %if.else608

if.then607:                                       ; preds = %if.else604
  store ptr @.str.137, ptr %zTypeCast, align 8
  br label %if.end618

if.else608:                                       ; preds = %if.else604
  %376 = load i32, ptr %nID, align 4
  %and609 = and i32 %376, 524288
  %tobool610 = icmp ne i32 %and609, 0
  br i1 %tobool610, label %if.then611, label %if.else612

if.then611:                                       ; preds = %if.else608
  store ptr @.str.138, ptr %zTypeCast, align 8
  br label %if.end617

if.else612:                                       ; preds = %if.else608
  %377 = load i32, ptr %nID, align 4
  %and613 = and i32 %377, 8192
  %tobool614 = icmp ne i32 %and613, 0
  br i1 %tobool614, label %if.then615, label %if.end616

if.then615:                                       ; preds = %if.else612
  store ptr @.str.139, ptr %zTypeCast, align 8
  br label %if.end616

if.end616:                                        ; preds = %if.then615, %if.else612
  br label %if.end617

if.end617:                                        ; preds = %if.end616, %if.then611
  br label %if.end618

if.end618:                                        ; preds = %if.end617, %if.then607
  br label %if.end619

if.end619:                                        ; preds = %if.end618, %if.then603
  br label %if.end620

if.end620:                                        ; preds = %if.end619, %if.then599
  br label %if.end621

if.end621:                                        ; preds = %if.end620, %if.then595
  %378 = load ptr, ptr %pToken.addr, align 8
  %nType622 = getelementptr inbounds nuw %struct.SyToken, ptr %378, i32 0, i32 1
  store i32 32, ptr %nType622, align 8
  %379 = load ptr, ptr %zTypeCast, align 8
  %380 = load ptr, ptr %pToken.addr, align 8
  %sData623 = getelementptr inbounds nuw %struct.SyToken, ptr %380, i32 0, i32 0
  %zString624 = getelementptr inbounds nuw %struct.SyString, ptr %sData623, i32 0, i32 0
  store ptr %379, ptr %zString624, align 8
  %381 = load ptr, ptr %zTypeCast, align 8
  %call625 = call i32 @SyStrlen(ptr noundef %381)
  %382 = load ptr, ptr %pToken.addr, align 8
  %sData626 = getelementptr inbounds nuw %struct.SyToken, ptr %382, i32 0, i32 0
  %nByte627 = getelementptr inbounds nuw %struct.SyString, ptr %sData626, i32 0, i32 1
  store i32 %call625, ptr %nByte627, align 8
  %383 = load ptr, ptr %pToken.addr, align 8
  %sData628 = getelementptr inbounds nuw %struct.SyToken, ptr %383, i32 0, i32 0
  %call629 = call ptr @PH7_ExprExtractOperator(ptr noundef %sData628, ptr noundef null)
  %384 = load ptr, ptr %pToken.addr, align 8
  %pUserData630 = getelementptr inbounds nuw %struct.SyToken, ptr %384, i32 0, i32 3
  store ptr %call629, ptr %pUserData630, align 8
  %385 = load ptr, ptr %pTokSet, align 8
  %nUsed631 = getelementptr inbounds nuw %struct.SySet, ptr %385, i32 0, i32 2
  %386 = load i32, ptr %nUsed631, align 8
  %sub632 = sub i32 %386, 2
  store i32 %sub632, ptr %nUsed631, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end633:                                        ; preds = %if.then586
  br label %if.end634

if.end634:                                        ; preds = %if.end633, %if.then581
  br label %if.end635

if.end635:                                        ; preds = %if.end634, %if.then576
  br label %if.end636

if.end636:                                        ; preds = %if.end635, %sw.bb573
  %387 = load ptr, ptr %pToken.addr, align 8
  %nType637 = getelementptr inbounds nuw %struct.SyToken, ptr %387, i32 0, i32 1
  store i32 1024, ptr %nType637, align 8
  br label %sw.epilog

sw.bb638:                                         ; preds = %if.end555
  %388 = load ptr, ptr %pStr, align 8
  %zString639 = getelementptr inbounds nuw %struct.SyString, ptr %388, i32 0, i32 0
  %389 = load ptr, ptr %zString639, align 8
  %incdec.ptr640 = getelementptr inbounds nuw i8, ptr %389, i32 1
  store ptr %incdec.ptr640, ptr %zString639, align 8
  br label %while.cond641

while.cond641:                                    ; preds = %if.end690, %sw.bb638
  %390 = load ptr, ptr %pStream.addr, align 8
  %zText642 = getelementptr inbounds nuw %struct.SyStream, ptr %390, i32 0, i32 1
  %391 = load ptr, ptr %zText642, align 8
  %392 = load ptr, ptr %pStream.addr, align 8
  %zEnd643 = getelementptr inbounds nuw %struct.SyStream, ptr %392, i32 0, i32 2
  %393 = load ptr, ptr %zEnd643, align 8
  %cmp644 = icmp ult ptr %391, %393
  br i1 %cmp644, label %while.body646, label %while.end693

while.body646:                                    ; preds = %while.cond641
  %394 = load ptr, ptr %pStream.addr, align 8
  %zText647 = getelementptr inbounds nuw %struct.SyStream, ptr %394, i32 0, i32 1
  %395 = load ptr, ptr %zText647, align 8
  %arrayidx648 = getelementptr inbounds i8, ptr %395, i64 0
  %396 = load i8, ptr %arrayidx648, align 1
  %conv649 = zext i8 %396 to i32
  %cmp650 = icmp eq i32 %conv649, 39
  br i1 %cmp650, label %if.then652, label %if.end681

if.then652:                                       ; preds = %while.body646
  %397 = load ptr, ptr %pStream.addr, align 8
  %zText653 = getelementptr inbounds nuw %struct.SyStream, ptr %397, i32 0, i32 1
  %398 = load ptr, ptr %zText653, align 8
  %arrayidx654 = getelementptr inbounds i8, ptr %398, i64 -1
  %399 = load i8, ptr %arrayidx654, align 1
  %conv655 = zext i8 %399 to i32
  %cmp656 = icmp ne i32 %conv655, 92
  br i1 %cmp656, label %if.then658, label %if.else659

if.then658:                                       ; preds = %if.then652
  br label %while.end693

if.else659:                                       ; preds = %if.then652
  %400 = load ptr, ptr %pStream.addr, align 8
  %zText660 = getelementptr inbounds nuw %struct.SyStream, ptr %400, i32 0, i32 1
  %401 = load ptr, ptr %zText660, align 8
  %arrayidx661 = getelementptr inbounds i8, ptr %401, i64 -2
  store ptr %arrayidx661, ptr %zPtr, align 8
  store i32 1, ptr %i, align 4
  br label %while.cond662

while.cond662:                                    ; preds = %while.body671, %if.else659
  %402 = load ptr, ptr %zPtr, align 8
  %403 = load ptr, ptr %pStream.addr, align 8
  %zInput = getelementptr inbounds nuw %struct.SyStream, ptr %403, i32 0, i32 0
  %404 = load ptr, ptr %zInput, align 8
  %cmp663 = icmp ugt ptr %402, %404
  br i1 %cmp663, label %land.rhs665, label %land.end670

land.rhs665:                                      ; preds = %while.cond662
  %405 = load ptr, ptr %zPtr, align 8
  %arrayidx666 = getelementptr inbounds i8, ptr %405, i64 0
  %406 = load i8, ptr %arrayidx666, align 1
  %conv667 = zext i8 %406 to i32
  %cmp668 = icmp eq i32 %conv667, 92
  br label %land.end670

land.end670:                                      ; preds = %land.rhs665, %while.cond662
  %407 = phi i1 [ false, %while.cond662 ], [ %cmp668, %land.rhs665 ]
  br i1 %407, label %while.body671, label %while.end674

while.body671:                                    ; preds = %land.end670
  %408 = load ptr, ptr %zPtr, align 8
  %incdec.ptr672 = getelementptr inbounds i8, ptr %408, i32 -1
  store ptr %incdec.ptr672, ptr %zPtr, align 8
  %409 = load i32, ptr %i, align 4
  %inc673 = add nsw i32 %409, 1
  store i32 %inc673, ptr %i, align 4
  br label %while.cond662, !llvm.loop !18

while.end674:                                     ; preds = %land.end670
  %410 = load i32, ptr %i, align 4
  %and675 = and i32 %410, 1
  %cmp676 = icmp eq i32 %and675, 0
  br i1 %cmp676, label %if.then678, label %if.end679

if.then678:                                       ; preds = %while.end674
  br label %while.end693

if.end679:                                        ; preds = %while.end674
  br label %if.end680

if.end680:                                        ; preds = %if.end679
  br label %if.end681

if.end681:                                        ; preds = %if.end680, %while.body646
  %411 = load ptr, ptr %pStream.addr, align 8
  %zText682 = getelementptr inbounds nuw %struct.SyStream, ptr %411, i32 0, i32 1
  %412 = load ptr, ptr %zText682, align 8
  %arrayidx683 = getelementptr inbounds i8, ptr %412, i64 0
  %413 = load i8, ptr %arrayidx683, align 1
  %conv684 = zext i8 %413 to i32
  %cmp685 = icmp eq i32 %conv684, 10
  br i1 %cmp685, label %if.then687, label %if.end690

if.then687:                                       ; preds = %if.end681
  %414 = load ptr, ptr %pStream.addr, align 8
  %nLine688 = getelementptr inbounds nuw %struct.SyStream, ptr %414, i32 0, i32 3
  %415 = load i32, ptr %nLine688, align 8
  %inc689 = add i32 %415, 1
  store i32 %inc689, ptr %nLine688, align 8
  br label %if.end690

if.end690:                                        ; preds = %if.then687, %if.end681
  %416 = load ptr, ptr %pStream.addr, align 8
  %zText691 = getelementptr inbounds nuw %struct.SyStream, ptr %416, i32 0, i32 1
  %417 = load ptr, ptr %zText691, align 8
  %incdec.ptr692 = getelementptr inbounds nuw i8, ptr %417, i32 1
  store ptr %incdec.ptr692, ptr %zText691, align 8
  br label %while.cond641, !llvm.loop !19

while.end693:                                     ; preds = %if.then678, %if.then658, %while.cond641
  %418 = load ptr, ptr %pStream.addr, align 8
  %zText694 = getelementptr inbounds nuw %struct.SyStream, ptr %418, i32 0, i32 1
  %419 = load ptr, ptr %zText694, align 8
  %420 = load ptr, ptr %pStr, align 8
  %zString695 = getelementptr inbounds nuw %struct.SyString, ptr %420, i32 0, i32 0
  %421 = load ptr, ptr %zString695, align 8
  %sub.ptr.lhs.cast696 = ptrtoint ptr %419 to i64
  %sub.ptr.rhs.cast697 = ptrtoint ptr %421 to i64
  %sub.ptr.sub698 = sub i64 %sub.ptr.lhs.cast696, %sub.ptr.rhs.cast697
  %conv699 = trunc i64 %sub.ptr.sub698 to i32
  %422 = load ptr, ptr %pStr, align 8
  %nByte700 = getelementptr inbounds nuw %struct.SyString, ptr %422, i32 0, i32 1
  store i32 %conv699, ptr %nByte700, align 8
  %423 = load ptr, ptr %pToken.addr, align 8
  %nType701 = getelementptr inbounds nuw %struct.SyToken, ptr %423, i32 0, i32 1
  store i32 16384, ptr %nType701, align 8
  %424 = load ptr, ptr %pStream.addr, align 8
  %zText702 = getelementptr inbounds nuw %struct.SyStream, ptr %424, i32 0, i32 1
  %425 = load ptr, ptr %zText702, align 8
  %incdec.ptr703 = getelementptr inbounds nuw i8, ptr %425, i32 1
  store ptr %incdec.ptr703, ptr %zText702, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb704:                                         ; preds = %if.end555
  %426 = load ptr, ptr %pStr, align 8
  %zString705 = getelementptr inbounds nuw %struct.SyString, ptr %426, i32 0, i32 0
  %427 = load ptr, ptr %zString705, align 8
  %incdec.ptr706 = getelementptr inbounds nuw i8, ptr %427, i32 1
  store ptr %incdec.ptr706, ptr %zString705, align 8
  br label %while.cond707

while.cond707:                                    ; preds = %if.end827, %sw.bb704
  %428 = load ptr, ptr %pStream.addr, align 8
  %zText708 = getelementptr inbounds nuw %struct.SyStream, ptr %428, i32 0, i32 1
  %429 = load ptr, ptr %zText708, align 8
  %430 = load ptr, ptr %pStream.addr, align 8
  %zEnd709 = getelementptr inbounds nuw %struct.SyStream, ptr %430, i32 0, i32 2
  %431 = load ptr, ptr %zEnd709, align 8
  %cmp710 = icmp ult ptr %429, %431
  br i1 %cmp710, label %while.body712, label %while.end830

while.body712:                                    ; preds = %while.cond707
  %432 = load ptr, ptr %pStream.addr, align 8
  %zText713 = getelementptr inbounds nuw %struct.SyStream, ptr %432, i32 0, i32 1
  %433 = load ptr, ptr %zText713, align 8
  %arrayidx714 = getelementptr inbounds i8, ptr %433, i64 0
  %434 = load i8, ptr %arrayidx714, align 1
  %conv715 = zext i8 %434 to i32
  %cmp716 = icmp eq i32 %conv715, 123
  br i1 %cmp716, label %land.lhs.true718, label %if.end780

land.lhs.true718:                                 ; preds = %while.body712
  %435 = load ptr, ptr %pStream.addr, align 8
  %zText719 = getelementptr inbounds nuw %struct.SyStream, ptr %435, i32 0, i32 1
  %436 = load ptr, ptr %zText719, align 8
  %arrayidx720 = getelementptr inbounds i8, ptr %436, i64 1
  %437 = load ptr, ptr %pStream.addr, align 8
  %zEnd721 = getelementptr inbounds nuw %struct.SyStream, ptr %437, i32 0, i32 2
  %438 = load ptr, ptr %zEnd721, align 8
  %cmp722 = icmp ult ptr %arrayidx720, %438
  br i1 %cmp722, label %land.lhs.true724, label %if.end780

land.lhs.true724:                                 ; preds = %land.lhs.true718
  %439 = load ptr, ptr %pStream.addr, align 8
  %zText725 = getelementptr inbounds nuw %struct.SyStream, ptr %439, i32 0, i32 1
  %440 = load ptr, ptr %zText725, align 8
  %arrayidx726 = getelementptr inbounds i8, ptr %440, i64 1
  %441 = load i8, ptr %arrayidx726, align 1
  %conv727 = zext i8 %441 to i32
  %cmp728 = icmp eq i32 %conv727, 36
  br i1 %cmp728, label %if.then730, label %if.end780

if.then730:                                       ; preds = %land.lhs.true724
  store i32 1, ptr %iNest, align 4
  %442 = load ptr, ptr %pStream.addr, align 8
  %zText731 = getelementptr inbounds nuw %struct.SyStream, ptr %442, i32 0, i32 1
  %443 = load ptr, ptr %zText731, align 8
  %incdec.ptr732 = getelementptr inbounds nuw i8, ptr %443, i32 1
  store ptr %incdec.ptr732, ptr %zText731, align 8
  br label %while.cond733

while.cond733:                                    ; preds = %if.end770, %if.then730
  %444 = load ptr, ptr %pStream.addr, align 8
  %zText734 = getelementptr inbounds nuw %struct.SyStream, ptr %444, i32 0, i32 1
  %445 = load ptr, ptr %zText734, align 8
  %446 = load ptr, ptr %pStream.addr, align 8
  %zEnd735 = getelementptr inbounds nuw %struct.SyStream, ptr %446, i32 0, i32 2
  %447 = load ptr, ptr %zEnd735, align 8
  %cmp736 = icmp ult ptr %445, %447
  br i1 %cmp736, label %while.body738, label %while.end773

while.body738:                                    ; preds = %while.cond733
  %448 = load ptr, ptr %pStream.addr, align 8
  %zText739 = getelementptr inbounds nuw %struct.SyStream, ptr %448, i32 0, i32 1
  %449 = load ptr, ptr %zText739, align 8
  %arrayidx740 = getelementptr inbounds i8, ptr %449, i64 0
  %450 = load i8, ptr %arrayidx740, align 1
  %conv741 = zext i8 %450 to i32
  %cmp742 = icmp eq i32 %conv741, 123
  br i1 %cmp742, label %if.then744, label %if.else746

if.then744:                                       ; preds = %while.body738
  %451 = load i32, ptr %iNest, align 4
  %inc745 = add nsw i32 %451, 1
  store i32 %inc745, ptr %iNest, align 4
  br label %if.end770

if.else746:                                       ; preds = %while.body738
  %452 = load ptr, ptr %pStream.addr, align 8
  %zText747 = getelementptr inbounds nuw %struct.SyStream, ptr %452, i32 0, i32 1
  %453 = load ptr, ptr %zText747, align 8
  %arrayidx748 = getelementptr inbounds i8, ptr %453, i64 0
  %454 = load i8, ptr %arrayidx748, align 1
  %conv749 = zext i8 %454 to i32
  %cmp750 = icmp eq i32 %conv749, 125
  br i1 %cmp750, label %if.then752, label %if.else759

if.then752:                                       ; preds = %if.else746
  %455 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %455, -1
  store i32 %dec, ptr %iNest, align 4
  %456 = load i32, ptr %iNest, align 4
  %cmp753 = icmp sle i32 %456, 0
  br i1 %cmp753, label %if.then755, label %if.end758

if.then755:                                       ; preds = %if.then752
  %457 = load ptr, ptr %pStream.addr, align 8
  %zText756 = getelementptr inbounds nuw %struct.SyStream, ptr %457, i32 0, i32 1
  %458 = load ptr, ptr %zText756, align 8
  %incdec.ptr757 = getelementptr inbounds nuw i8, ptr %458, i32 1
  store ptr %incdec.ptr757, ptr %zText756, align 8
  br label %while.end773

if.end758:                                        ; preds = %if.then752
  br label %if.end769

if.else759:                                       ; preds = %if.else746
  %459 = load ptr, ptr %pStream.addr, align 8
  %zText760 = getelementptr inbounds nuw %struct.SyStream, ptr %459, i32 0, i32 1
  %460 = load ptr, ptr %zText760, align 8
  %arrayidx761 = getelementptr inbounds i8, ptr %460, i64 0
  %461 = load i8, ptr %arrayidx761, align 1
  %conv762 = zext i8 %461 to i32
  %cmp763 = icmp eq i32 %conv762, 10
  br i1 %cmp763, label %if.then765, label %if.end768

if.then765:                                       ; preds = %if.else759
  %462 = load ptr, ptr %pStream.addr, align 8
  %nLine766 = getelementptr inbounds nuw %struct.SyStream, ptr %462, i32 0, i32 3
  %463 = load i32, ptr %nLine766, align 8
  %inc767 = add i32 %463, 1
  store i32 %inc767, ptr %nLine766, align 8
  br label %if.end768

if.end768:                                        ; preds = %if.then765, %if.else759
  br label %if.end769

if.end769:                                        ; preds = %if.end768, %if.end758
  br label %if.end770

if.end770:                                        ; preds = %if.end769, %if.then744
  %464 = load ptr, ptr %pStream.addr, align 8
  %zText771 = getelementptr inbounds nuw %struct.SyStream, ptr %464, i32 0, i32 1
  %465 = load ptr, ptr %zText771, align 8
  %incdec.ptr772 = getelementptr inbounds nuw i8, ptr %465, i32 1
  store ptr %incdec.ptr772, ptr %zText771, align 8
  br label %while.cond733, !llvm.loop !20

while.end773:                                     ; preds = %if.then755, %while.cond733
  %466 = load ptr, ptr %pStream.addr, align 8
  %zText774 = getelementptr inbounds nuw %struct.SyStream, ptr %466, i32 0, i32 1
  %467 = load ptr, ptr %zText774, align 8
  %468 = load ptr, ptr %pStream.addr, align 8
  %zEnd775 = getelementptr inbounds nuw %struct.SyStream, ptr %468, i32 0, i32 2
  %469 = load ptr, ptr %zEnd775, align 8
  %cmp776 = icmp uge ptr %467, %469
  br i1 %cmp776, label %if.then778, label %if.end779

if.then778:                                       ; preds = %while.end773
  br label %while.end830

if.end779:                                        ; preds = %while.end773
  br label %if.end780

if.end780:                                        ; preds = %if.end779, %land.lhs.true724, %land.lhs.true718, %while.body712
  %470 = load ptr, ptr %pStream.addr, align 8
  %zText781 = getelementptr inbounds nuw %struct.SyStream, ptr %470, i32 0, i32 1
  %471 = load ptr, ptr %zText781, align 8
  %arrayidx782 = getelementptr inbounds i8, ptr %471, i64 0
  %472 = load i8, ptr %arrayidx782, align 1
  %conv783 = zext i8 %472 to i32
  %cmp784 = icmp eq i32 %conv783, 34
  br i1 %cmp784, label %if.then786, label %if.end818

if.then786:                                       ; preds = %if.end780
  %473 = load ptr, ptr %pStream.addr, align 8
  %zText787 = getelementptr inbounds nuw %struct.SyStream, ptr %473, i32 0, i32 1
  %474 = load ptr, ptr %zText787, align 8
  %arrayidx788 = getelementptr inbounds i8, ptr %474, i64 -1
  %475 = load i8, ptr %arrayidx788, align 1
  %conv789 = zext i8 %475 to i32
  %cmp790 = icmp ne i32 %conv789, 92
  br i1 %cmp790, label %if.then792, label %if.else793

if.then792:                                       ; preds = %if.then786
  br label %while.end830

if.else793:                                       ; preds = %if.then786
  %476 = load ptr, ptr %pStream.addr, align 8
  %zText795 = getelementptr inbounds nuw %struct.SyStream, ptr %476, i32 0, i32 1
  %477 = load ptr, ptr %zText795, align 8
  %arrayidx796 = getelementptr inbounds i8, ptr %477, i64 -2
  store ptr %arrayidx796, ptr %zPtr794, align 8
  store i32 1, ptr %i797, align 4
  br label %while.cond798

while.cond798:                                    ; preds = %while.body808, %if.else793
  %478 = load ptr, ptr %zPtr794, align 8
  %479 = load ptr, ptr %pStream.addr, align 8
  %zInput799 = getelementptr inbounds nuw %struct.SyStream, ptr %479, i32 0, i32 0
  %480 = load ptr, ptr %zInput799, align 8
  %cmp800 = icmp ugt ptr %478, %480
  br i1 %cmp800, label %land.rhs802, label %land.end807

land.rhs802:                                      ; preds = %while.cond798
  %481 = load ptr, ptr %zPtr794, align 8
  %arrayidx803 = getelementptr inbounds i8, ptr %481, i64 0
  %482 = load i8, ptr %arrayidx803, align 1
  %conv804 = zext i8 %482 to i32
  %cmp805 = icmp eq i32 %conv804, 92
  br label %land.end807

land.end807:                                      ; preds = %land.rhs802, %while.cond798
  %483 = phi i1 [ false, %while.cond798 ], [ %cmp805, %land.rhs802 ]
  br i1 %483, label %while.body808, label %while.end811

while.body808:                                    ; preds = %land.end807
  %484 = load ptr, ptr %zPtr794, align 8
  %incdec.ptr809 = getelementptr inbounds i8, ptr %484, i32 -1
  store ptr %incdec.ptr809, ptr %zPtr794, align 8
  %485 = load i32, ptr %i797, align 4
  %inc810 = add nsw i32 %485, 1
  store i32 %inc810, ptr %i797, align 4
  br label %while.cond798, !llvm.loop !21

while.end811:                                     ; preds = %land.end807
  %486 = load i32, ptr %i797, align 4
  %and812 = and i32 %486, 1
  %cmp813 = icmp eq i32 %and812, 0
  br i1 %cmp813, label %if.then815, label %if.end816

if.then815:                                       ; preds = %while.end811
  br label %while.end830

if.end816:                                        ; preds = %while.end811
  br label %if.end817

if.end817:                                        ; preds = %if.end816
  br label %if.end818

if.end818:                                        ; preds = %if.end817, %if.end780
  %487 = load ptr, ptr %pStream.addr, align 8
  %zText819 = getelementptr inbounds nuw %struct.SyStream, ptr %487, i32 0, i32 1
  %488 = load ptr, ptr %zText819, align 8
  %arrayidx820 = getelementptr inbounds i8, ptr %488, i64 0
  %489 = load i8, ptr %arrayidx820, align 1
  %conv821 = zext i8 %489 to i32
  %cmp822 = icmp eq i32 %conv821, 10
  br i1 %cmp822, label %if.then824, label %if.end827

if.then824:                                       ; preds = %if.end818
  %490 = load ptr, ptr %pStream.addr, align 8
  %nLine825 = getelementptr inbounds nuw %struct.SyStream, ptr %490, i32 0, i32 3
  %491 = load i32, ptr %nLine825, align 8
  %inc826 = add i32 %491, 1
  store i32 %inc826, ptr %nLine825, align 8
  br label %if.end827

if.end827:                                        ; preds = %if.then824, %if.end818
  %492 = load ptr, ptr %pStream.addr, align 8
  %zText828 = getelementptr inbounds nuw %struct.SyStream, ptr %492, i32 0, i32 1
  %493 = load ptr, ptr %zText828, align 8
  %incdec.ptr829 = getelementptr inbounds nuw i8, ptr %493, i32 1
  store ptr %incdec.ptr829, ptr %zText828, align 8
  br label %while.cond707, !llvm.loop !22

while.end830:                                     ; preds = %if.then815, %if.then792, %if.then778, %while.cond707
  %494 = load ptr, ptr %pStream.addr, align 8
  %zText831 = getelementptr inbounds nuw %struct.SyStream, ptr %494, i32 0, i32 1
  %495 = load ptr, ptr %zText831, align 8
  %496 = load ptr, ptr %pStr, align 8
  %zString832 = getelementptr inbounds nuw %struct.SyString, ptr %496, i32 0, i32 0
  %497 = load ptr, ptr %zString832, align 8
  %sub.ptr.lhs.cast833 = ptrtoint ptr %495 to i64
  %sub.ptr.rhs.cast834 = ptrtoint ptr %497 to i64
  %sub.ptr.sub835 = sub i64 %sub.ptr.lhs.cast833, %sub.ptr.rhs.cast834
  %conv836 = trunc i64 %sub.ptr.sub835 to i32
  %498 = load ptr, ptr %pStr, align 8
  %nByte837 = getelementptr inbounds nuw %struct.SyString, ptr %498, i32 0, i32 1
  store i32 %conv836, ptr %nByte837, align 8
  %499 = load ptr, ptr %pToken.addr, align 8
  %nType838 = getelementptr inbounds nuw %struct.SyToken, ptr %499, i32 0, i32 1
  store i32 8192, ptr %nType838, align 8
  %500 = load ptr, ptr %pStream.addr, align 8
  %zText839 = getelementptr inbounds nuw %struct.SyStream, ptr %500, i32 0, i32 1
  %501 = load ptr, ptr %zText839, align 8
  %incdec.ptr840 = getelementptr inbounds nuw i8, ptr %501, i32 1
  store ptr %incdec.ptr840, ptr %zText839, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb841:                                         ; preds = %if.end555
  %502 = load ptr, ptr %pStr, align 8
  %zString842 = getelementptr inbounds nuw %struct.SyString, ptr %502, i32 0, i32 0
  %503 = load ptr, ptr %zString842, align 8
  %incdec.ptr843 = getelementptr inbounds nuw i8, ptr %503, i32 1
  store ptr %incdec.ptr843, ptr %zString842, align 8
  br label %while.cond844

while.cond844:                                    ; preds = %if.end871, %sw.bb841
  %504 = load ptr, ptr %pStream.addr, align 8
  %zText845 = getelementptr inbounds nuw %struct.SyStream, ptr %504, i32 0, i32 1
  %505 = load ptr, ptr %zText845, align 8
  %506 = load ptr, ptr %pStream.addr, align 8
  %zEnd846 = getelementptr inbounds nuw %struct.SyStream, ptr %506, i32 0, i32 2
  %507 = load ptr, ptr %zEnd846, align 8
  %cmp847 = icmp ult ptr %505, %507
  br i1 %cmp847, label %while.body849, label %while.end874

while.body849:                                    ; preds = %while.cond844
  %508 = load ptr, ptr %pStream.addr, align 8
  %zText850 = getelementptr inbounds nuw %struct.SyStream, ptr %508, i32 0, i32 1
  %509 = load ptr, ptr %zText850, align 8
  %arrayidx851 = getelementptr inbounds i8, ptr %509, i64 0
  %510 = load i8, ptr %arrayidx851, align 1
  %conv852 = zext i8 %510 to i32
  %cmp853 = icmp eq i32 %conv852, 96
  br i1 %cmp853, label %land.lhs.true855, label %if.end862

land.lhs.true855:                                 ; preds = %while.body849
  %511 = load ptr, ptr %pStream.addr, align 8
  %zText856 = getelementptr inbounds nuw %struct.SyStream, ptr %511, i32 0, i32 1
  %512 = load ptr, ptr %zText856, align 8
  %arrayidx857 = getelementptr inbounds i8, ptr %512, i64 -1
  %513 = load i8, ptr %arrayidx857, align 1
  %conv858 = zext i8 %513 to i32
  %cmp859 = icmp ne i32 %conv858, 92
  br i1 %cmp859, label %if.then861, label %if.end862

if.then861:                                       ; preds = %land.lhs.true855
  br label %while.end874

if.end862:                                        ; preds = %land.lhs.true855, %while.body849
  %514 = load ptr, ptr %pStream.addr, align 8
  %zText863 = getelementptr inbounds nuw %struct.SyStream, ptr %514, i32 0, i32 1
  %515 = load ptr, ptr %zText863, align 8
  %arrayidx864 = getelementptr inbounds i8, ptr %515, i64 0
  %516 = load i8, ptr %arrayidx864, align 1
  %conv865 = zext i8 %516 to i32
  %cmp866 = icmp eq i32 %conv865, 10
  br i1 %cmp866, label %if.then868, label %if.end871

if.then868:                                       ; preds = %if.end862
  %517 = load ptr, ptr %pStream.addr, align 8
  %nLine869 = getelementptr inbounds nuw %struct.SyStream, ptr %517, i32 0, i32 3
  %518 = load i32, ptr %nLine869, align 8
  %inc870 = add i32 %518, 1
  store i32 %inc870, ptr %nLine869, align 8
  br label %if.end871

if.end871:                                        ; preds = %if.then868, %if.end862
  %519 = load ptr, ptr %pStream.addr, align 8
  %zText872 = getelementptr inbounds nuw %struct.SyStream, ptr %519, i32 0, i32 1
  %520 = load ptr, ptr %zText872, align 8
  %incdec.ptr873 = getelementptr inbounds nuw i8, ptr %520, i32 1
  store ptr %incdec.ptr873, ptr %zText872, align 8
  br label %while.cond844, !llvm.loop !23

while.end874:                                     ; preds = %if.then861, %while.cond844
  %521 = load ptr, ptr %pStream.addr, align 8
  %zText875 = getelementptr inbounds nuw %struct.SyStream, ptr %521, i32 0, i32 1
  %522 = load ptr, ptr %zText875, align 8
  %523 = load ptr, ptr %pStr, align 8
  %zString876 = getelementptr inbounds nuw %struct.SyString, ptr %523, i32 0, i32 0
  %524 = load ptr, ptr %zString876, align 8
  %sub.ptr.lhs.cast877 = ptrtoint ptr %522 to i64
  %sub.ptr.rhs.cast878 = ptrtoint ptr %524 to i64
  %sub.ptr.sub879 = sub i64 %sub.ptr.lhs.cast877, %sub.ptr.rhs.cast878
  %conv880 = trunc i64 %sub.ptr.sub879 to i32
  %525 = load ptr, ptr %pStr, align 8
  %nByte881 = getelementptr inbounds nuw %struct.SyString, ptr %525, i32 0, i32 1
  store i32 %conv880, ptr %nByte881, align 8
  %526 = load ptr, ptr %pToken.addr, align 8
  %nType882 = getelementptr inbounds nuw %struct.SyToken, ptr %526, i32 0, i32 1
  store i32 524288, ptr %nType882, align 8
  %527 = load ptr, ptr %pStream.addr, align 8
  %zText883 = getelementptr inbounds nuw %struct.SyStream, ptr %527, i32 0, i32 1
  %528 = load ptr, ptr %zText883, align 8
  %incdec.ptr884 = getelementptr inbounds nuw i8, ptr %528, i32 1
  store ptr %incdec.ptr884, ptr %zText883, align 8
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb885:                                         ; preds = %if.end555
  %529 = load ptr, ptr %pToken.addr, align 8
  %nType886 = getelementptr inbounds nuw %struct.SyToken, ptr %529, i32 0, i32 1
  store i32 256, ptr %nType886, align 8
  br label %sw.epilog

sw.bb887:                                         ; preds = %if.end555
  %530 = load ptr, ptr %pStream.addr, align 8
  %zText888 = getelementptr inbounds nuw %struct.SyStream, ptr %530, i32 0, i32 1
  %531 = load ptr, ptr %zText888, align 8
  %532 = load ptr, ptr %pStream.addr, align 8
  %zEnd889 = getelementptr inbounds nuw %struct.SyStream, ptr %532, i32 0, i32 2
  %533 = load ptr, ptr %zEnd889, align 8
  %cmp890 = icmp ult ptr %531, %533
  br i1 %cmp890, label %land.lhs.true892, label %if.else901

land.lhs.true892:                                 ; preds = %sw.bb887
  %534 = load ptr, ptr %pStream.addr, align 8
  %zText893 = getelementptr inbounds nuw %struct.SyStream, ptr %534, i32 0, i32 1
  %535 = load ptr, ptr %zText893, align 8
  %arrayidx894 = getelementptr inbounds i8, ptr %535, i64 0
  %536 = load i8, ptr %arrayidx894, align 1
  %conv895 = zext i8 %536 to i32
  %cmp896 = icmp eq i32 %conv895, 58
  br i1 %cmp896, label %if.then898, label %if.else901

if.then898:                                       ; preds = %land.lhs.true892
  %537 = load ptr, ptr %pStream.addr, align 8
  %zText899 = getelementptr inbounds nuw %struct.SyStream, ptr %537, i32 0, i32 1
  %538 = load ptr, ptr %zText899, align 8
  %incdec.ptr900 = getelementptr inbounds nuw i8, ptr %538, i32 1
  store ptr %incdec.ptr900, ptr %zText899, align 8
  br label %if.end903

if.else901:                                       ; preds = %land.lhs.true892, %sw.bb887
  %539 = load ptr, ptr %pToken.addr, align 8
  %nType902 = getelementptr inbounds nuw %struct.SyToken, ptr %539, i32 0, i32 1
  store i32 1048576, ptr %nType902, align 8
  br label %if.end903

if.end903:                                        ; preds = %if.else901, %if.then898
  br label %sw.epilog

sw.bb904:                                         ; preds = %if.end555
  %540 = load ptr, ptr %pToken.addr, align 8
  %nType905 = getelementptr inbounds nuw %struct.SyToken, ptr %540, i32 0, i32 1
  %541 = load i32, ptr %nType905, align 8
  %or906 = or i32 %541, 131072
  store i32 %or906, ptr %nType905, align 8
  br label %sw.epilog

sw.bb907:                                         ; preds = %if.end555
  %542 = load ptr, ptr %pToken.addr, align 8
  %nType908 = getelementptr inbounds nuw %struct.SyToken, ptr %542, i32 0, i32 1
  store i32 262144, ptr %nType908, align 8
  br label %sw.epilog

sw.bb909:                                         ; preds = %if.end555
  %543 = load ptr, ptr %pToken.addr, align 8
  %nType910 = getelementptr inbounds nuw %struct.SyToken, ptr %543, i32 0, i32 1
  %544 = load i32, ptr %nType910, align 8
  %or911 = or i32 %544, 4194304
  store i32 %or911, ptr %nType910, align 8
  %545 = load ptr, ptr %pStream.addr, align 8
  %zText912 = getelementptr inbounds nuw %struct.SyStream, ptr %545, i32 0, i32 1
  %546 = load ptr, ptr %zText912, align 8
  %547 = load ptr, ptr %pStream.addr, align 8
  %zEnd913 = getelementptr inbounds nuw %struct.SyStream, ptr %547, i32 0, i32 2
  %548 = load ptr, ptr %zEnd913, align 8
  %cmp914 = icmp ult ptr %546, %548
  br i1 %cmp914, label %if.then916, label %if.end1002

if.then916:                                       ; preds = %sw.bb909
  %549 = load ptr, ptr %pStream.addr, align 8
  %zText917 = getelementptr inbounds nuw %struct.SyStream, ptr %549, i32 0, i32 1
  %550 = load ptr, ptr %zText917, align 8
  %arrayidx918 = getelementptr inbounds i8, ptr %550, i64 0
  %551 = load i8, ptr %arrayidx918, align 1
  %conv919 = zext i8 %551 to i32
  %cmp920 = icmp eq i32 %conv919, 61
  br i1 %cmp920, label %if.then922, label %if.else941

if.then922:                                       ; preds = %if.then916
  %552 = load ptr, ptr %pToken.addr, align 8
  %nType923 = getelementptr inbounds nuw %struct.SyToken, ptr %552, i32 0, i32 1
  %553 = load i32, ptr %nType923, align 8
  %and924 = and i32 %553, -4194305
  store i32 %and924, ptr %nType923, align 8
  %554 = load ptr, ptr %pStream.addr, align 8
  %zText925 = getelementptr inbounds nuw %struct.SyStream, ptr %554, i32 0, i32 1
  %555 = load ptr, ptr %zText925, align 8
  %incdec.ptr926 = getelementptr inbounds nuw i8, ptr %555, i32 1
  store ptr %incdec.ptr926, ptr %zText925, align 8
  %556 = load ptr, ptr %pStream.addr, align 8
  %zText927 = getelementptr inbounds nuw %struct.SyStream, ptr %556, i32 0, i32 1
  %557 = load ptr, ptr %zText927, align 8
  %558 = load ptr, ptr %pStream.addr, align 8
  %zEnd928 = getelementptr inbounds nuw %struct.SyStream, ptr %558, i32 0, i32 2
  %559 = load ptr, ptr %zEnd928, align 8
  %cmp929 = icmp ult ptr %557, %559
  br i1 %cmp929, label %land.lhs.true931, label %if.end940

land.lhs.true931:                                 ; preds = %if.then922
  %560 = load ptr, ptr %pStream.addr, align 8
  %zText932 = getelementptr inbounds nuw %struct.SyStream, ptr %560, i32 0, i32 1
  %561 = load ptr, ptr %zText932, align 8
  %arrayidx933 = getelementptr inbounds i8, ptr %561, i64 0
  %562 = load i8, ptr %arrayidx933, align 1
  %conv934 = zext i8 %562 to i32
  %cmp935 = icmp eq i32 %conv934, 61
  br i1 %cmp935, label %if.then937, label %if.end940

if.then937:                                       ; preds = %land.lhs.true931
  %563 = load ptr, ptr %pStream.addr, align 8
  %zText938 = getelementptr inbounds nuw %struct.SyStream, ptr %563, i32 0, i32 1
  %564 = load ptr, ptr %zText938, align 8
  %incdec.ptr939 = getelementptr inbounds nuw i8, ptr %564, i32 1
  store ptr %incdec.ptr939, ptr %zText938, align 8
  br label %if.end940

if.end940:                                        ; preds = %if.then937, %land.lhs.true931, %if.then922
  br label %if.end1001

if.else941:                                       ; preds = %if.then916
  %565 = load ptr, ptr %pStream.addr, align 8
  %zText942 = getelementptr inbounds nuw %struct.SyStream, ptr %565, i32 0, i32 1
  %566 = load ptr, ptr %zText942, align 8
  %arrayidx943 = getelementptr inbounds i8, ptr %566, i64 0
  %567 = load i8, ptr %arrayidx943, align 1
  %conv944 = zext i8 %567 to i32
  %cmp945 = icmp eq i32 %conv944, 62
  br i1 %cmp945, label %if.then947, label %if.else951

if.then947:                                       ; preds = %if.else941
  %568 = load ptr, ptr %pToken.addr, align 8
  %nType948 = getelementptr inbounds nuw %struct.SyToken, ptr %568, i32 0, i32 1
  store i32 8388608, ptr %nType948, align 8
  %569 = load ptr, ptr %pStream.addr, align 8
  %zText949 = getelementptr inbounds nuw %struct.SyStream, ptr %569, i32 0, i32 1
  %570 = load ptr, ptr %zText949, align 8
  %incdec.ptr950 = getelementptr inbounds nuw i8, ptr %570, i32 1
  store ptr %incdec.ptr950, ptr %zText949, align 8
  br label %if.end1000

if.else951:                                       ; preds = %if.else941
  %571 = load ptr, ptr %pStream.addr, align 8
  %zText952 = getelementptr inbounds nuw %struct.SyStream, ptr %571, i32 0, i32 1
  %572 = load ptr, ptr %zText952, align 8
  store ptr %572, ptr %zCur, align 8
  store i32 0, ptr %nLine953, align 4
  br label %while.cond954

while.cond954:                                    ; preds = %if.end980, %if.else951
  %573 = load ptr, ptr %zCur, align 8
  %574 = load ptr, ptr %pStream.addr, align 8
  %zEnd955 = getelementptr inbounds nuw %struct.SyStream, ptr %574, i32 0, i32 2
  %575 = load ptr, ptr %zEnd955, align 8
  %cmp956 = icmp ult ptr %573, %575
  br i1 %cmp956, label %land.lhs.true958, label %land.end972

land.lhs.true958:                                 ; preds = %while.cond954
  %576 = load ptr, ptr %zCur, align 8
  %arrayidx959 = getelementptr inbounds i8, ptr %576, i64 0
  %577 = load i8, ptr %arrayidx959, align 1
  %conv960 = zext i8 %577 to i32
  %cmp961 = icmp slt i32 %conv960, 192
  br i1 %cmp961, label %land.rhs963, label %land.end972

land.rhs963:                                      ; preds = %land.lhs.true958
  %call964 = call ptr @__ctype_b_loc() #2
  %578 = load ptr, ptr %call964, align 8
  %579 = load ptr, ptr %zCur, align 8
  %arrayidx965 = getelementptr inbounds i8, ptr %579, i64 0
  %580 = load i8, ptr %arrayidx965, align 1
  %conv966 = zext i8 %580 to i32
  %idxprom967 = sext i32 %conv966 to i64
  %arrayidx968 = getelementptr inbounds i16, ptr %578, i64 %idxprom967
  %581 = load i16, ptr %arrayidx968, align 2
  %conv969 = zext i16 %581 to i32
  %and970 = and i32 %conv969, 8192
  %tobool971 = icmp ne i32 %and970, 0
  br label %land.end972

land.end972:                                      ; preds = %land.rhs963, %land.lhs.true958, %while.cond954
  %582 = phi i1 [ false, %land.lhs.true958 ], [ false, %while.cond954 ], [ %tobool971, %land.rhs963 ]
  br i1 %582, label %while.body973, label %while.end982

while.body973:                                    ; preds = %land.end972
  %583 = load ptr, ptr %zCur, align 8
  %arrayidx974 = getelementptr inbounds i8, ptr %583, i64 0
  %584 = load i8, ptr %arrayidx974, align 1
  %conv975 = zext i8 %584 to i32
  %cmp976 = icmp eq i32 %conv975, 10
  br i1 %cmp976, label %if.then978, label %if.end980

if.then978:                                       ; preds = %while.body973
  %585 = load i32, ptr %nLine953, align 4
  %inc979 = add i32 %585, 1
  store i32 %inc979, ptr %nLine953, align 4
  br label %if.end980

if.end980:                                        ; preds = %if.then978, %while.body973
  %586 = load ptr, ptr %zCur, align 8
  %incdec.ptr981 = getelementptr inbounds nuw i8, ptr %586, i32 1
  store ptr %incdec.ptr981, ptr %zCur, align 8
  br label %while.cond954, !llvm.loop !24

while.end982:                                     ; preds = %land.end972
  %587 = load ptr, ptr %zCur, align 8
  %588 = load ptr, ptr %pStream.addr, align 8
  %zEnd983 = getelementptr inbounds nuw %struct.SyStream, ptr %588, i32 0, i32 2
  %589 = load ptr, ptr %zEnd983, align 8
  %cmp984 = icmp ult ptr %587, %589
  br i1 %cmp984, label %land.lhs.true986, label %if.end999

land.lhs.true986:                                 ; preds = %while.end982
  %590 = load ptr, ptr %zCur, align 8
  %arrayidx987 = getelementptr inbounds i8, ptr %590, i64 0
  %591 = load i8, ptr %arrayidx987, align 1
  %conv988 = zext i8 %591 to i32
  %cmp989 = icmp eq i32 %conv988, 38
  br i1 %cmp989, label %if.then991, label %if.end999

if.then991:                                       ; preds = %land.lhs.true986
  %592 = load ptr, ptr %pToken.addr, align 8
  %nType992 = getelementptr inbounds nuw %struct.SyToken, ptr %592, i32 0, i32 1
  %593 = load i32, ptr %nType992, align 8
  %and993 = and i32 %593, -4194305
  store i32 %and993, ptr %nType992, align 8
  %594 = load ptr, ptr %pStr, align 8
  %zString994 = getelementptr inbounds nuw %struct.SyString, ptr %594, i32 0, i32 0
  store ptr @.str.140, ptr %zString994, align 8
  %595 = load ptr, ptr %pStr, align 8
  %nByte995 = getelementptr inbounds nuw %struct.SyString, ptr %595, i32 0, i32 1
  store i32 2, ptr %nByte995, align 8
  %596 = load ptr, ptr %zCur, align 8
  %arrayidx996 = getelementptr inbounds i8, ptr %596, i64 1
  %597 = load ptr, ptr %pStream.addr, align 8
  %zText997 = getelementptr inbounds nuw %struct.SyStream, ptr %597, i32 0, i32 1
  store ptr %arrayidx996, ptr %zText997, align 8
  %598 = load i32, ptr %nLine953, align 4
  %599 = load ptr, ptr %pStream.addr, align 8
  %nLine998 = getelementptr inbounds nuw %struct.SyStream, ptr %599, i32 0, i32 3
  %600 = load i32, ptr %nLine998, align 8
  %add = add i32 %600, %598
  store i32 %add, ptr %nLine998, align 8
  br label %if.end999

if.end999:                                        ; preds = %if.then991, %land.lhs.true986, %while.end982
  br label %if.end1000

if.end1000:                                       ; preds = %if.end999, %if.then947
  br label %if.end1001

if.end1001:                                       ; preds = %if.end1000, %if.end940
  br label %if.end1002

if.end1002:                                       ; preds = %if.end1001, %sw.bb909
  br label %sw.epilog

sw.bb1003:                                        ; preds = %if.end555
  %601 = load ptr, ptr %pStream.addr, align 8
  %zText1004 = getelementptr inbounds nuw %struct.SyStream, ptr %601, i32 0, i32 1
  %602 = load ptr, ptr %zText1004, align 8
  %603 = load ptr, ptr %pStream.addr, align 8
  %zEnd1005 = getelementptr inbounds nuw %struct.SyStream, ptr %603, i32 0, i32 2
  %604 = load ptr, ptr %zEnd1005, align 8
  %cmp1006 = icmp ult ptr %602, %604
  br i1 %cmp1006, label %land.lhs.true1008, label %if.end1031

land.lhs.true1008:                                ; preds = %sw.bb1003
  %605 = load ptr, ptr %pStream.addr, align 8
  %zText1009 = getelementptr inbounds nuw %struct.SyStream, ptr %605, i32 0, i32 1
  %606 = load ptr, ptr %zText1009, align 8
  %arrayidx1010 = getelementptr inbounds i8, ptr %606, i64 0
  %607 = load i8, ptr %arrayidx1010, align 1
  %conv1011 = zext i8 %607 to i32
  %cmp1012 = icmp eq i32 %conv1011, 61
  br i1 %cmp1012, label %if.then1014, label %if.end1031

if.then1014:                                      ; preds = %land.lhs.true1008
  %608 = load ptr, ptr %pStream.addr, align 8
  %zText1015 = getelementptr inbounds nuw %struct.SyStream, ptr %608, i32 0, i32 1
  %609 = load ptr, ptr %zText1015, align 8
  %incdec.ptr1016 = getelementptr inbounds nuw i8, ptr %609, i32 1
  store ptr %incdec.ptr1016, ptr %zText1015, align 8
  %610 = load ptr, ptr %pStream.addr, align 8
  %zText1017 = getelementptr inbounds nuw %struct.SyStream, ptr %610, i32 0, i32 1
  %611 = load ptr, ptr %zText1017, align 8
  %612 = load ptr, ptr %pStream.addr, align 8
  %zEnd1018 = getelementptr inbounds nuw %struct.SyStream, ptr %612, i32 0, i32 2
  %613 = load ptr, ptr %zEnd1018, align 8
  %cmp1019 = icmp ult ptr %611, %613
  br i1 %cmp1019, label %land.lhs.true1021, label %if.end1030

land.lhs.true1021:                                ; preds = %if.then1014
  %614 = load ptr, ptr %pStream.addr, align 8
  %zText1022 = getelementptr inbounds nuw %struct.SyStream, ptr %614, i32 0, i32 1
  %615 = load ptr, ptr %zText1022, align 8
  %arrayidx1023 = getelementptr inbounds i8, ptr %615, i64 0
  %616 = load i8, ptr %arrayidx1023, align 1
  %conv1024 = zext i8 %616 to i32
  %cmp1025 = icmp eq i32 %conv1024, 61
  br i1 %cmp1025, label %if.then1027, label %if.end1030

if.then1027:                                      ; preds = %land.lhs.true1021
  %617 = load ptr, ptr %pStream.addr, align 8
  %zText1028 = getelementptr inbounds nuw %struct.SyStream, ptr %617, i32 0, i32 1
  %618 = load ptr, ptr %zText1028, align 8
  %incdec.ptr1029 = getelementptr inbounds nuw i8, ptr %618, i32 1
  store ptr %incdec.ptr1029, ptr %zText1028, align 8
  br label %if.end1030

if.end1030:                                       ; preds = %if.then1027, %land.lhs.true1021, %if.then1014
  br label %if.end1031

if.end1031:                                       ; preds = %if.end1030, %land.lhs.true1008, %sw.bb1003
  br label %sw.epilog

sw.bb1032:                                        ; preds = %if.end555
  %619 = load ptr, ptr %pToken.addr, align 8
  %nType1033 = getelementptr inbounds nuw %struct.SyToken, ptr %619, i32 0, i32 1
  %620 = load i32, ptr %nType1033, align 8
  %or1034 = or i32 %620, 2097152
  store i32 %or1034, ptr %nType1033, align 8
  %621 = load ptr, ptr %pStream.addr, align 8
  %zText1035 = getelementptr inbounds nuw %struct.SyStream, ptr %621, i32 0, i32 1
  %622 = load ptr, ptr %zText1035, align 8
  %623 = load ptr, ptr %pStream.addr, align 8
  %zEnd1036 = getelementptr inbounds nuw %struct.SyStream, ptr %623, i32 0, i32 2
  %624 = load ptr, ptr %zEnd1036, align 8
  %cmp1037 = icmp ult ptr %622, %624
  br i1 %cmp1037, label %if.then1039, label %if.end1063

if.then1039:                                      ; preds = %sw.bb1032
  %625 = load ptr, ptr %pStream.addr, align 8
  %zText1040 = getelementptr inbounds nuw %struct.SyStream, ptr %625, i32 0, i32 1
  %626 = load ptr, ptr %zText1040, align 8
  %arrayidx1041 = getelementptr inbounds i8, ptr %626, i64 0
  %627 = load i8, ptr %arrayidx1041, align 1
  %conv1042 = zext i8 %627 to i32
  %cmp1043 = icmp eq i32 %conv1042, 38
  br i1 %cmp1043, label %if.then1045, label %if.else1050

if.then1045:                                      ; preds = %if.then1039
  %628 = load ptr, ptr %pToken.addr, align 8
  %nType1046 = getelementptr inbounds nuw %struct.SyToken, ptr %628, i32 0, i32 1
  %629 = load i32, ptr %nType1046, align 8
  %and1047 = and i32 %629, -2097153
  store i32 %and1047, ptr %nType1046, align 8
  %630 = load ptr, ptr %pStream.addr, align 8
  %zText1048 = getelementptr inbounds nuw %struct.SyStream, ptr %630, i32 0, i32 1
  %631 = load ptr, ptr %zText1048, align 8
  %incdec.ptr1049 = getelementptr inbounds nuw i8, ptr %631, i32 1
  store ptr %incdec.ptr1049, ptr %zText1048, align 8
  br label %if.end1062

if.else1050:                                      ; preds = %if.then1039
  %632 = load ptr, ptr %pStream.addr, align 8
  %zText1051 = getelementptr inbounds nuw %struct.SyStream, ptr %632, i32 0, i32 1
  %633 = load ptr, ptr %zText1051, align 8
  %arrayidx1052 = getelementptr inbounds i8, ptr %633, i64 0
  %634 = load i8, ptr %arrayidx1052, align 1
  %conv1053 = zext i8 %634 to i32
  %cmp1054 = icmp eq i32 %conv1053, 61
  br i1 %cmp1054, label %if.then1056, label %if.end1061

if.then1056:                                      ; preds = %if.else1050
  %635 = load ptr, ptr %pToken.addr, align 8
  %nType1057 = getelementptr inbounds nuw %struct.SyToken, ptr %635, i32 0, i32 1
  %636 = load i32, ptr %nType1057, align 8
  %and1058 = and i32 %636, -2097153
  store i32 %and1058, ptr %nType1057, align 8
  %637 = load ptr, ptr %pStream.addr, align 8
  %zText1059 = getelementptr inbounds nuw %struct.SyStream, ptr %637, i32 0, i32 1
  %638 = load ptr, ptr %zText1059, align 8
  %incdec.ptr1060 = getelementptr inbounds nuw i8, ptr %638, i32 1
  store ptr %incdec.ptr1060, ptr %zText1059, align 8
  br label %if.end1061

if.end1061:                                       ; preds = %if.then1056, %if.else1050
  br label %if.end1062

if.end1062:                                       ; preds = %if.end1061, %if.then1045
  br label %if.end1063

if.end1063:                                       ; preds = %if.end1062, %sw.bb1032
  br label %sw.epilog

sw.bb1064:                                        ; preds = %if.end555
  %639 = load ptr, ptr %pStream.addr, align 8
  %zText1065 = getelementptr inbounds nuw %struct.SyStream, ptr %639, i32 0, i32 1
  %640 = load ptr, ptr %zText1065, align 8
  %641 = load ptr, ptr %pStream.addr, align 8
  %zEnd1066 = getelementptr inbounds nuw %struct.SyStream, ptr %641, i32 0, i32 2
  %642 = load ptr, ptr %zEnd1066, align 8
  %cmp1067 = icmp ult ptr %640, %642
  br i1 %cmp1067, label %if.then1069, label %if.end1089

if.then1069:                                      ; preds = %sw.bb1064
  %643 = load ptr, ptr %pStream.addr, align 8
  %zText1070 = getelementptr inbounds nuw %struct.SyStream, ptr %643, i32 0, i32 1
  %644 = load ptr, ptr %zText1070, align 8
  %arrayidx1071 = getelementptr inbounds i8, ptr %644, i64 0
  %645 = load i8, ptr %arrayidx1071, align 1
  %conv1072 = zext i8 %645 to i32
  %cmp1073 = icmp eq i32 %conv1072, 124
  br i1 %cmp1073, label %if.then1075, label %if.else1078

if.then1075:                                      ; preds = %if.then1069
  %646 = load ptr, ptr %pStream.addr, align 8
  %zText1076 = getelementptr inbounds nuw %struct.SyStream, ptr %646, i32 0, i32 1
  %647 = load ptr, ptr %zText1076, align 8
  %incdec.ptr1077 = getelementptr inbounds nuw i8, ptr %647, i32 1
  store ptr %incdec.ptr1077, ptr %zText1076, align 8
  br label %if.end1088

if.else1078:                                      ; preds = %if.then1069
  %648 = load ptr, ptr %pStream.addr, align 8
  %zText1079 = getelementptr inbounds nuw %struct.SyStream, ptr %648, i32 0, i32 1
  %649 = load ptr, ptr %zText1079, align 8
  %arrayidx1080 = getelementptr inbounds i8, ptr %649, i64 0
  %650 = load i8, ptr %arrayidx1080, align 1
  %conv1081 = zext i8 %650 to i32
  %cmp1082 = icmp eq i32 %conv1081, 61
  br i1 %cmp1082, label %if.then1084, label %if.end1087

if.then1084:                                      ; preds = %if.else1078
  %651 = load ptr, ptr %pStream.addr, align 8
  %zText1085 = getelementptr inbounds nuw %struct.SyStream, ptr %651, i32 0, i32 1
  %652 = load ptr, ptr %zText1085, align 8
  %incdec.ptr1086 = getelementptr inbounds nuw i8, ptr %652, i32 1
  store ptr %incdec.ptr1086, ptr %zText1085, align 8
  br label %if.end1087

if.end1087:                                       ; preds = %if.then1084, %if.else1078
  br label %if.end1088

if.end1088:                                       ; preds = %if.end1087, %if.then1075
  br label %if.end1089

if.end1089:                                       ; preds = %if.end1088, %sw.bb1064
  br label %sw.epilog

sw.bb1090:                                        ; preds = %if.end555
  %653 = load ptr, ptr %pStream.addr, align 8
  %zText1091 = getelementptr inbounds nuw %struct.SyStream, ptr %653, i32 0, i32 1
  %654 = load ptr, ptr %zText1091, align 8
  %655 = load ptr, ptr %pStream.addr, align 8
  %zEnd1092 = getelementptr inbounds nuw %struct.SyStream, ptr %655, i32 0, i32 2
  %656 = load ptr, ptr %zEnd1092, align 8
  %cmp1093 = icmp ult ptr %654, %656
  br i1 %cmp1093, label %if.then1095, label %if.end1115

if.then1095:                                      ; preds = %sw.bb1090
  %657 = load ptr, ptr %pStream.addr, align 8
  %zText1096 = getelementptr inbounds nuw %struct.SyStream, ptr %657, i32 0, i32 1
  %658 = load ptr, ptr %zText1096, align 8
  %arrayidx1097 = getelementptr inbounds i8, ptr %658, i64 0
  %659 = load i8, ptr %arrayidx1097, align 1
  %conv1098 = zext i8 %659 to i32
  %cmp1099 = icmp eq i32 %conv1098, 43
  br i1 %cmp1099, label %if.then1101, label %if.else1104

if.then1101:                                      ; preds = %if.then1095
  %660 = load ptr, ptr %pStream.addr, align 8
  %zText1102 = getelementptr inbounds nuw %struct.SyStream, ptr %660, i32 0, i32 1
  %661 = load ptr, ptr %zText1102, align 8
  %incdec.ptr1103 = getelementptr inbounds nuw i8, ptr %661, i32 1
  store ptr %incdec.ptr1103, ptr %zText1102, align 8
  br label %if.end1114

if.else1104:                                      ; preds = %if.then1095
  %662 = load ptr, ptr %pStream.addr, align 8
  %zText1105 = getelementptr inbounds nuw %struct.SyStream, ptr %662, i32 0, i32 1
  %663 = load ptr, ptr %zText1105, align 8
  %arrayidx1106 = getelementptr inbounds i8, ptr %663, i64 0
  %664 = load i8, ptr %arrayidx1106, align 1
  %conv1107 = zext i8 %664 to i32
  %cmp1108 = icmp eq i32 %conv1107, 61
  br i1 %cmp1108, label %if.then1110, label %if.end1113

if.then1110:                                      ; preds = %if.else1104
  %665 = load ptr, ptr %pStream.addr, align 8
  %zText1111 = getelementptr inbounds nuw %struct.SyStream, ptr %665, i32 0, i32 1
  %666 = load ptr, ptr %zText1111, align 8
  %incdec.ptr1112 = getelementptr inbounds nuw i8, ptr %666, i32 1
  store ptr %incdec.ptr1112, ptr %zText1111, align 8
  br label %if.end1113

if.end1113:                                       ; preds = %if.then1110, %if.else1104
  br label %if.end1114

if.end1114:                                       ; preds = %if.end1113, %if.then1101
  br label %if.end1115

if.end1115:                                       ; preds = %if.end1114, %sw.bb1090
  br label %sw.epilog

sw.bb1116:                                        ; preds = %if.end555
  %667 = load ptr, ptr %pStream.addr, align 8
  %zText1117 = getelementptr inbounds nuw %struct.SyStream, ptr %667, i32 0, i32 1
  %668 = load ptr, ptr %zText1117, align 8
  %669 = load ptr, ptr %pStream.addr, align 8
  %zEnd1118 = getelementptr inbounds nuw %struct.SyStream, ptr %669, i32 0, i32 2
  %670 = load ptr, ptr %zEnd1118, align 8
  %cmp1119 = icmp ult ptr %668, %670
  br i1 %cmp1119, label %if.then1121, label %if.end1151

if.then1121:                                      ; preds = %sw.bb1116
  %671 = load ptr, ptr %pStream.addr, align 8
  %zText1122 = getelementptr inbounds nuw %struct.SyStream, ptr %671, i32 0, i32 1
  %672 = load ptr, ptr %zText1122, align 8
  %arrayidx1123 = getelementptr inbounds i8, ptr %672, i64 0
  %673 = load i8, ptr %arrayidx1123, align 1
  %conv1124 = zext i8 %673 to i32
  %cmp1125 = icmp eq i32 %conv1124, 45
  br i1 %cmp1125, label %if.then1127, label %if.else1130

if.then1127:                                      ; preds = %if.then1121
  %674 = load ptr, ptr %pStream.addr, align 8
  %zText1128 = getelementptr inbounds nuw %struct.SyStream, ptr %674, i32 0, i32 1
  %675 = load ptr, ptr %zText1128, align 8
  %incdec.ptr1129 = getelementptr inbounds nuw i8, ptr %675, i32 1
  store ptr %incdec.ptr1129, ptr %zText1128, align 8
  br label %if.end1150

if.else1130:                                      ; preds = %if.then1121
  %676 = load ptr, ptr %pStream.addr, align 8
  %zText1131 = getelementptr inbounds nuw %struct.SyStream, ptr %676, i32 0, i32 1
  %677 = load ptr, ptr %zText1131, align 8
  %arrayidx1132 = getelementptr inbounds i8, ptr %677, i64 0
  %678 = load i8, ptr %arrayidx1132, align 1
  %conv1133 = zext i8 %678 to i32
  %cmp1134 = icmp eq i32 %conv1133, 61
  br i1 %cmp1134, label %if.then1136, label %if.else1139

if.then1136:                                      ; preds = %if.else1130
  %679 = load ptr, ptr %pStream.addr, align 8
  %zText1137 = getelementptr inbounds nuw %struct.SyStream, ptr %679, i32 0, i32 1
  %680 = load ptr, ptr %zText1137, align 8
  %incdec.ptr1138 = getelementptr inbounds nuw i8, ptr %680, i32 1
  store ptr %incdec.ptr1138, ptr %zText1137, align 8
  br label %if.end1149

if.else1139:                                      ; preds = %if.else1130
  %681 = load ptr, ptr %pStream.addr, align 8
  %zText1140 = getelementptr inbounds nuw %struct.SyStream, ptr %681, i32 0, i32 1
  %682 = load ptr, ptr %zText1140, align 8
  %arrayidx1141 = getelementptr inbounds i8, ptr %682, i64 0
  %683 = load i8, ptr %arrayidx1141, align 1
  %conv1142 = zext i8 %683 to i32
  %cmp1143 = icmp eq i32 %conv1142, 62
  br i1 %cmp1143, label %if.then1145, label %if.end1148

if.then1145:                                      ; preds = %if.else1139
  %684 = load ptr, ptr %pStream.addr, align 8
  %zText1146 = getelementptr inbounds nuw %struct.SyStream, ptr %684, i32 0, i32 1
  %685 = load ptr, ptr %zText1146, align 8
  %incdec.ptr1147 = getelementptr inbounds nuw i8, ptr %685, i32 1
  store ptr %incdec.ptr1147, ptr %zText1146, align 8
  br label %if.end1148

if.end1148:                                       ; preds = %if.then1145, %if.else1139
  br label %if.end1149

if.end1149:                                       ; preds = %if.end1148, %if.then1136
  br label %if.end1150

if.end1150:                                       ; preds = %if.end1149, %if.then1127
  br label %if.end1151

if.end1151:                                       ; preds = %if.end1150, %sw.bb1116
  br label %sw.epilog

sw.bb1152:                                        ; preds = %if.end555
  %686 = load ptr, ptr %pStream.addr, align 8
  %zText1153 = getelementptr inbounds nuw %struct.SyStream, ptr %686, i32 0, i32 1
  %687 = load ptr, ptr %zText1153, align 8
  %688 = load ptr, ptr %pStream.addr, align 8
  %zEnd1154 = getelementptr inbounds nuw %struct.SyStream, ptr %688, i32 0, i32 2
  %689 = load ptr, ptr %zEnd1154, align 8
  %cmp1155 = icmp ult ptr %687, %689
  br i1 %cmp1155, label %land.lhs.true1157, label %if.end1166

land.lhs.true1157:                                ; preds = %sw.bb1152
  %690 = load ptr, ptr %pStream.addr, align 8
  %zText1158 = getelementptr inbounds nuw %struct.SyStream, ptr %690, i32 0, i32 1
  %691 = load ptr, ptr %zText1158, align 8
  %arrayidx1159 = getelementptr inbounds i8, ptr %691, i64 0
  %692 = load i8, ptr %arrayidx1159, align 1
  %conv1160 = zext i8 %692 to i32
  %cmp1161 = icmp eq i32 %conv1160, 61
  br i1 %cmp1161, label %if.then1163, label %if.end1166

if.then1163:                                      ; preds = %land.lhs.true1157
  %693 = load ptr, ptr %pStream.addr, align 8
  %zText1164 = getelementptr inbounds nuw %struct.SyStream, ptr %693, i32 0, i32 1
  %694 = load ptr, ptr %zText1164, align 8
  %incdec.ptr1165 = getelementptr inbounds nuw i8, ptr %694, i32 1
  store ptr %incdec.ptr1165, ptr %zText1164, align 8
  br label %if.end1166

if.end1166:                                       ; preds = %if.then1163, %land.lhs.true1157, %sw.bb1152
  br label %sw.epilog

sw.bb1167:                                        ; preds = %if.end555
  %695 = load ptr, ptr %pStream.addr, align 8
  %zText1168 = getelementptr inbounds nuw %struct.SyStream, ptr %695, i32 0, i32 1
  %696 = load ptr, ptr %zText1168, align 8
  %697 = load ptr, ptr %pStream.addr, align 8
  %zEnd1169 = getelementptr inbounds nuw %struct.SyStream, ptr %697, i32 0, i32 2
  %698 = load ptr, ptr %zEnd1169, align 8
  %cmp1170 = icmp ult ptr %696, %698
  br i1 %cmp1170, label %land.lhs.true1172, label %if.end1181

land.lhs.true1172:                                ; preds = %sw.bb1167
  %699 = load ptr, ptr %pStream.addr, align 8
  %zText1173 = getelementptr inbounds nuw %struct.SyStream, ptr %699, i32 0, i32 1
  %700 = load ptr, ptr %zText1173, align 8
  %arrayidx1174 = getelementptr inbounds i8, ptr %700, i64 0
  %701 = load i8, ptr %arrayidx1174, align 1
  %conv1175 = zext i8 %701 to i32
  %cmp1176 = icmp eq i32 %conv1175, 61
  br i1 %cmp1176, label %if.then1178, label %if.end1181

if.then1178:                                      ; preds = %land.lhs.true1172
  %702 = load ptr, ptr %pStream.addr, align 8
  %zText1179 = getelementptr inbounds nuw %struct.SyStream, ptr %702, i32 0, i32 1
  %703 = load ptr, ptr %zText1179, align 8
  %incdec.ptr1180 = getelementptr inbounds nuw i8, ptr %703, i32 1
  store ptr %incdec.ptr1180, ptr %zText1179, align 8
  br label %if.end1181

if.end1181:                                       ; preds = %if.then1178, %land.lhs.true1172, %sw.bb1167
  br label %sw.epilog

sw.bb1182:                                        ; preds = %if.end555
  %704 = load ptr, ptr %pStream.addr, align 8
  %zText1183 = getelementptr inbounds nuw %struct.SyStream, ptr %704, i32 0, i32 1
  %705 = load ptr, ptr %zText1183, align 8
  %706 = load ptr, ptr %pStream.addr, align 8
  %zEnd1184 = getelementptr inbounds nuw %struct.SyStream, ptr %706, i32 0, i32 2
  %707 = load ptr, ptr %zEnd1184, align 8
  %cmp1185 = icmp ult ptr %705, %707
  br i1 %cmp1185, label %land.lhs.true1187, label %if.end1196

land.lhs.true1187:                                ; preds = %sw.bb1182
  %708 = load ptr, ptr %pStream.addr, align 8
  %zText1188 = getelementptr inbounds nuw %struct.SyStream, ptr %708, i32 0, i32 1
  %709 = load ptr, ptr %zText1188, align 8
  %arrayidx1189 = getelementptr inbounds i8, ptr %709, i64 0
  %710 = load i8, ptr %arrayidx1189, align 1
  %conv1190 = zext i8 %710 to i32
  %cmp1191 = icmp eq i32 %conv1190, 61
  br i1 %cmp1191, label %if.then1193, label %if.end1196

if.then1193:                                      ; preds = %land.lhs.true1187
  %711 = load ptr, ptr %pStream.addr, align 8
  %zText1194 = getelementptr inbounds nuw %struct.SyStream, ptr %711, i32 0, i32 1
  %712 = load ptr, ptr %zText1194, align 8
  %incdec.ptr1195 = getelementptr inbounds nuw i8, ptr %712, i32 1
  store ptr %incdec.ptr1195, ptr %zText1194, align 8
  br label %if.end1196

if.end1196:                                       ; preds = %if.then1193, %land.lhs.true1187, %sw.bb1182
  br label %sw.epilog

sw.bb1197:                                        ; preds = %if.end555
  %713 = load ptr, ptr %pStream.addr, align 8
  %zText1198 = getelementptr inbounds nuw %struct.SyStream, ptr %713, i32 0, i32 1
  %714 = load ptr, ptr %zText1198, align 8
  %715 = load ptr, ptr %pStream.addr, align 8
  %zEnd1199 = getelementptr inbounds nuw %struct.SyStream, ptr %715, i32 0, i32 2
  %716 = load ptr, ptr %zEnd1199, align 8
  %cmp1200 = icmp ult ptr %714, %716
  br i1 %cmp1200, label %land.lhs.true1202, label %if.end1211

land.lhs.true1202:                                ; preds = %sw.bb1197
  %717 = load ptr, ptr %pStream.addr, align 8
  %zText1203 = getelementptr inbounds nuw %struct.SyStream, ptr %717, i32 0, i32 1
  %718 = load ptr, ptr %zText1203, align 8
  %arrayidx1204 = getelementptr inbounds i8, ptr %718, i64 0
  %719 = load i8, ptr %arrayidx1204, align 1
  %conv1205 = zext i8 %719 to i32
  %cmp1206 = icmp eq i32 %conv1205, 61
  br i1 %cmp1206, label %if.then1208, label %if.end1211

if.then1208:                                      ; preds = %land.lhs.true1202
  %720 = load ptr, ptr %pStream.addr, align 8
  %zText1209 = getelementptr inbounds nuw %struct.SyStream, ptr %720, i32 0, i32 1
  %721 = load ptr, ptr %zText1209, align 8
  %incdec.ptr1210 = getelementptr inbounds nuw i8, ptr %721, i32 1
  store ptr %incdec.ptr1210, ptr %zText1209, align 8
  br label %if.end1211

if.end1211:                                       ; preds = %if.then1208, %land.lhs.true1202, %sw.bb1197
  br label %sw.epilog

sw.bb1212:                                        ; preds = %if.end555
  %722 = load ptr, ptr %pStream.addr, align 8
  %zText1213 = getelementptr inbounds nuw %struct.SyStream, ptr %722, i32 0, i32 1
  %723 = load ptr, ptr %zText1213, align 8
  %724 = load ptr, ptr %pStream.addr, align 8
  %zEnd1214 = getelementptr inbounds nuw %struct.SyStream, ptr %724, i32 0, i32 2
  %725 = load ptr, ptr %zEnd1214, align 8
  %cmp1215 = icmp ult ptr %723, %725
  br i1 %cmp1215, label %land.lhs.true1217, label %if.end1226

land.lhs.true1217:                                ; preds = %sw.bb1212
  %726 = load ptr, ptr %pStream.addr, align 8
  %zText1218 = getelementptr inbounds nuw %struct.SyStream, ptr %726, i32 0, i32 1
  %727 = load ptr, ptr %zText1218, align 8
  %arrayidx1219 = getelementptr inbounds i8, ptr %727, i64 0
  %728 = load i8, ptr %arrayidx1219, align 1
  %conv1220 = zext i8 %728 to i32
  %cmp1221 = icmp eq i32 %conv1220, 61
  br i1 %cmp1221, label %if.then1223, label %if.end1226

if.then1223:                                      ; preds = %land.lhs.true1217
  %729 = load ptr, ptr %pStream.addr, align 8
  %zText1224 = getelementptr inbounds nuw %struct.SyStream, ptr %729, i32 0, i32 1
  %730 = load ptr, ptr %zText1224, align 8
  %incdec.ptr1225 = getelementptr inbounds nuw i8, ptr %730, i32 1
  store ptr %incdec.ptr1225, ptr %zText1224, align 8
  br label %if.end1226

if.end1226:                                       ; preds = %if.then1223, %land.lhs.true1217, %sw.bb1212
  br label %sw.epilog

sw.bb1227:                                        ; preds = %if.end555
  %731 = load ptr, ptr %pStream.addr, align 8
  %zText1228 = getelementptr inbounds nuw %struct.SyStream, ptr %731, i32 0, i32 1
  %732 = load ptr, ptr %zText1228, align 8
  %733 = load ptr, ptr %pStream.addr, align 8
  %zEnd1229 = getelementptr inbounds nuw %struct.SyStream, ptr %733, i32 0, i32 2
  %734 = load ptr, ptr %zEnd1229, align 8
  %cmp1230 = icmp ult ptr %732, %734
  br i1 %cmp1230, label %if.then1232, label %if.end1292

if.then1232:                                      ; preds = %sw.bb1227
  %735 = load ptr, ptr %pStream.addr, align 8
  %zText1233 = getelementptr inbounds nuw %struct.SyStream, ptr %735, i32 0, i32 1
  %736 = load ptr, ptr %zText1233, align 8
  %arrayidx1234 = getelementptr inbounds i8, ptr %736, i64 0
  %737 = load i8, ptr %arrayidx1234, align 1
  %conv1235 = zext i8 %737 to i32
  %cmp1236 = icmp eq i32 %conv1235, 60
  br i1 %cmp1236, label %if.then1238, label %if.else1271

if.then1238:                                      ; preds = %if.then1232
  %738 = load ptr, ptr %pStream.addr, align 8
  %zText1239 = getelementptr inbounds nuw %struct.SyStream, ptr %738, i32 0, i32 1
  %739 = load ptr, ptr %zText1239, align 8
  %incdec.ptr1240 = getelementptr inbounds nuw i8, ptr %739, i32 1
  store ptr %incdec.ptr1240, ptr %zText1239, align 8
  %740 = load ptr, ptr %pStream.addr, align 8
  %zText1241 = getelementptr inbounds nuw %struct.SyStream, ptr %740, i32 0, i32 1
  %741 = load ptr, ptr %zText1241, align 8
  %742 = load ptr, ptr %pStream.addr, align 8
  %zEnd1242 = getelementptr inbounds nuw %struct.SyStream, ptr %742, i32 0, i32 2
  %743 = load ptr, ptr %zEnd1242, align 8
  %cmp1243 = icmp ult ptr %741, %743
  br i1 %cmp1243, label %if.then1245, label %if.end1270

if.then1245:                                      ; preds = %if.then1238
  %744 = load ptr, ptr %pStream.addr, align 8
  %zText1246 = getelementptr inbounds nuw %struct.SyStream, ptr %744, i32 0, i32 1
  %745 = load ptr, ptr %zText1246, align 8
  %arrayidx1247 = getelementptr inbounds i8, ptr %745, i64 0
  %746 = load i8, ptr %arrayidx1247, align 1
  %conv1248 = zext i8 %746 to i32
  %cmp1249 = icmp eq i32 %conv1248, 61
  br i1 %cmp1249, label %if.then1251, label %if.else1254

if.then1251:                                      ; preds = %if.then1245
  %747 = load ptr, ptr %pStream.addr, align 8
  %zText1252 = getelementptr inbounds nuw %struct.SyStream, ptr %747, i32 0, i32 1
  %748 = load ptr, ptr %zText1252, align 8
  %incdec.ptr1253 = getelementptr inbounds nuw i8, ptr %748, i32 1
  store ptr %incdec.ptr1253, ptr %zText1252, align 8
  br label %if.end1269

if.else1254:                                      ; preds = %if.then1245
  %749 = load ptr, ptr %pStream.addr, align 8
  %zText1255 = getelementptr inbounds nuw %struct.SyStream, ptr %749, i32 0, i32 1
  %750 = load ptr, ptr %zText1255, align 8
  %arrayidx1256 = getelementptr inbounds i8, ptr %750, i64 0
  %751 = load i8, ptr %arrayidx1256, align 1
  %conv1257 = zext i8 %751 to i32
  %cmp1258 = icmp eq i32 %conv1257, 60
  br i1 %cmp1258, label %if.then1260, label %if.end1268

if.then1260:                                      ; preds = %if.else1254
  %752 = load ptr, ptr %pStream.addr, align 8
  %zText1261 = getelementptr inbounds nuw %struct.SyStream, ptr %752, i32 0, i32 1
  %753 = load ptr, ptr %zText1261, align 8
  %incdec.ptr1262 = getelementptr inbounds nuw i8, ptr %753, i32 1
  store ptr %incdec.ptr1262, ptr %zText1261, align 8
  %754 = load ptr, ptr %pStream.addr, align 8
  %755 = load ptr, ptr %pToken.addr, align 8
  %call1263 = call i32 @LexExtractHeredoc(ptr noundef %754, ptr noundef %755)
  store i32 %call1263, ptr %rc, align 4
  %756 = load i32, ptr %rc, align 4
  %cmp1264 = icmp eq i32 %756, 0
  br i1 %cmp1264, label %if.then1266, label %if.end1267

if.then1266:                                      ; preds = %if.then1260
  store i32 0, ptr %retval, align 4
  br label %return

if.end1267:                                       ; preds = %if.then1260
  br label %if.end1268

if.end1268:                                       ; preds = %if.end1267, %if.else1254
  br label %if.end1269

if.end1269:                                       ; preds = %if.end1268, %if.then1251
  br label %if.end1270

if.end1270:                                       ; preds = %if.end1269, %if.then1238
  br label %if.end1291

if.else1271:                                      ; preds = %if.then1232
  %757 = load ptr, ptr %pStream.addr, align 8
  %zText1272 = getelementptr inbounds nuw %struct.SyStream, ptr %757, i32 0, i32 1
  %758 = load ptr, ptr %zText1272, align 8
  %arrayidx1273 = getelementptr inbounds i8, ptr %758, i64 0
  %759 = load i8, ptr %arrayidx1273, align 1
  %conv1274 = zext i8 %759 to i32
  %cmp1275 = icmp eq i32 %conv1274, 62
  br i1 %cmp1275, label %if.then1277, label %if.else1280

if.then1277:                                      ; preds = %if.else1271
  %760 = load ptr, ptr %pStream.addr, align 8
  %zText1278 = getelementptr inbounds nuw %struct.SyStream, ptr %760, i32 0, i32 1
  %761 = load ptr, ptr %zText1278, align 8
  %incdec.ptr1279 = getelementptr inbounds nuw i8, ptr %761, i32 1
  store ptr %incdec.ptr1279, ptr %zText1278, align 8
  br label %if.end1290

if.else1280:                                      ; preds = %if.else1271
  %762 = load ptr, ptr %pStream.addr, align 8
  %zText1281 = getelementptr inbounds nuw %struct.SyStream, ptr %762, i32 0, i32 1
  %763 = load ptr, ptr %zText1281, align 8
  %arrayidx1282 = getelementptr inbounds i8, ptr %763, i64 0
  %764 = load i8, ptr %arrayidx1282, align 1
  %conv1283 = zext i8 %764 to i32
  %cmp1284 = icmp eq i32 %conv1283, 61
  br i1 %cmp1284, label %if.then1286, label %if.end1289

if.then1286:                                      ; preds = %if.else1280
  %765 = load ptr, ptr %pStream.addr, align 8
  %zText1287 = getelementptr inbounds nuw %struct.SyStream, ptr %765, i32 0, i32 1
  %766 = load ptr, ptr %zText1287, align 8
  %incdec.ptr1288 = getelementptr inbounds nuw i8, ptr %766, i32 1
  store ptr %incdec.ptr1288, ptr %zText1287, align 8
  br label %if.end1289

if.end1289:                                       ; preds = %if.then1286, %if.else1280
  br label %if.end1290

if.end1290:                                       ; preds = %if.end1289, %if.then1277
  br label %if.end1291

if.end1291:                                       ; preds = %if.end1290, %if.end1270
  br label %if.end1292

if.end1292:                                       ; preds = %if.end1291, %sw.bb1227
  br label %sw.epilog

sw.bb1293:                                        ; preds = %if.end555
  %767 = load ptr, ptr %pStream.addr, align 8
  %zText1294 = getelementptr inbounds nuw %struct.SyStream, ptr %767, i32 0, i32 1
  %768 = load ptr, ptr %zText1294, align 8
  %769 = load ptr, ptr %pStream.addr, align 8
  %zEnd1295 = getelementptr inbounds nuw %struct.SyStream, ptr %769, i32 0, i32 2
  %770 = load ptr, ptr %zEnd1295, align 8
  %cmp1296 = icmp ult ptr %768, %770
  br i1 %cmp1296, label %if.then1298, label %if.end1332

if.then1298:                                      ; preds = %sw.bb1293
  %771 = load ptr, ptr %pStream.addr, align 8
  %zText1299 = getelementptr inbounds nuw %struct.SyStream, ptr %771, i32 0, i32 1
  %772 = load ptr, ptr %zText1299, align 8
  %arrayidx1300 = getelementptr inbounds i8, ptr %772, i64 0
  %773 = load i8, ptr %arrayidx1300, align 1
  %conv1301 = zext i8 %773 to i32
  %cmp1302 = icmp eq i32 %conv1301, 62
  br i1 %cmp1302, label %if.then1304, label %if.else1321

if.then1304:                                      ; preds = %if.then1298
  %774 = load ptr, ptr %pStream.addr, align 8
  %zText1305 = getelementptr inbounds nuw %struct.SyStream, ptr %774, i32 0, i32 1
  %775 = load ptr, ptr %zText1305, align 8
  %incdec.ptr1306 = getelementptr inbounds nuw i8, ptr %775, i32 1
  store ptr %incdec.ptr1306, ptr %zText1305, align 8
  %776 = load ptr, ptr %pStream.addr, align 8
  %zText1307 = getelementptr inbounds nuw %struct.SyStream, ptr %776, i32 0, i32 1
  %777 = load ptr, ptr %zText1307, align 8
  %778 = load ptr, ptr %pStream.addr, align 8
  %zEnd1308 = getelementptr inbounds nuw %struct.SyStream, ptr %778, i32 0, i32 2
  %779 = load ptr, ptr %zEnd1308, align 8
  %cmp1309 = icmp ult ptr %777, %779
  br i1 %cmp1309, label %land.lhs.true1311, label %if.end1320

land.lhs.true1311:                                ; preds = %if.then1304
  %780 = load ptr, ptr %pStream.addr, align 8
  %zText1312 = getelementptr inbounds nuw %struct.SyStream, ptr %780, i32 0, i32 1
  %781 = load ptr, ptr %zText1312, align 8
  %arrayidx1313 = getelementptr inbounds i8, ptr %781, i64 0
  %782 = load i8, ptr %arrayidx1313, align 1
  %conv1314 = zext i8 %782 to i32
  %cmp1315 = icmp eq i32 %conv1314, 61
  br i1 %cmp1315, label %if.then1317, label %if.end1320

if.then1317:                                      ; preds = %land.lhs.true1311
  %783 = load ptr, ptr %pStream.addr, align 8
  %zText1318 = getelementptr inbounds nuw %struct.SyStream, ptr %783, i32 0, i32 1
  %784 = load ptr, ptr %zText1318, align 8
  %incdec.ptr1319 = getelementptr inbounds nuw i8, ptr %784, i32 1
  store ptr %incdec.ptr1319, ptr %zText1318, align 8
  br label %if.end1320

if.end1320:                                       ; preds = %if.then1317, %land.lhs.true1311, %if.then1304
  br label %if.end1331

if.else1321:                                      ; preds = %if.then1298
  %785 = load ptr, ptr %pStream.addr, align 8
  %zText1322 = getelementptr inbounds nuw %struct.SyStream, ptr %785, i32 0, i32 1
  %786 = load ptr, ptr %zText1322, align 8
  %arrayidx1323 = getelementptr inbounds i8, ptr %786, i64 0
  %787 = load i8, ptr %arrayidx1323, align 1
  %conv1324 = zext i8 %787 to i32
  %cmp1325 = icmp eq i32 %conv1324, 61
  br i1 %cmp1325, label %if.then1327, label %if.end1330

if.then1327:                                      ; preds = %if.else1321
  %788 = load ptr, ptr %pStream.addr, align 8
  %zText1328 = getelementptr inbounds nuw %struct.SyStream, ptr %788, i32 0, i32 1
  %789 = load ptr, ptr %zText1328, align 8
  %incdec.ptr1329 = getelementptr inbounds nuw i8, ptr %789, i32 1
  store ptr %incdec.ptr1329, ptr %zText1328, align 8
  br label %if.end1330

if.end1330:                                       ; preds = %if.then1327, %if.else1321
  br label %if.end1331

if.end1331:                                       ; preds = %if.end1330, %if.end1320
  br label %if.end1332

if.end1332:                                       ; preds = %if.end1331, %sw.bb1293
  br label %sw.epilog

sw.default:                                       ; preds = %if.end555
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end1332, %if.end1292, %if.end1226, %if.end1211, %if.end1196, %if.end1181, %if.end1166, %if.end1151, %if.end1115, %if.end1089, %if.end1063, %if.end1031, %if.end1002, %sw.bb907, %sw.bb904, %if.end903, %sw.bb885, %if.end636, %sw.bb571, %sw.bb569, %sw.bb567, %sw.bb565, %sw.bb563, %sw.bb
  %790 = load ptr, ptr %pStr, align 8
  %nByte1333 = getelementptr inbounds nuw %struct.SyString, ptr %790, i32 0, i32 1
  %791 = load i32, ptr %nByte1333, align 8
  %cmp1334 = icmp ule i32 %791, 0
  br i1 %cmp1334, label %if.then1336, label %if.end1344

if.then1336:                                      ; preds = %sw.epilog
  %792 = load ptr, ptr %pStream.addr, align 8
  %zText1337 = getelementptr inbounds nuw %struct.SyStream, ptr %792, i32 0, i32 1
  %793 = load ptr, ptr %zText1337, align 8
  %794 = load ptr, ptr %pStr, align 8
  %zString1338 = getelementptr inbounds nuw %struct.SyString, ptr %794, i32 0, i32 0
  %795 = load ptr, ptr %zString1338, align 8
  %sub.ptr.lhs.cast1339 = ptrtoint ptr %793 to i64
  %sub.ptr.rhs.cast1340 = ptrtoint ptr %795 to i64
  %sub.ptr.sub1341 = sub i64 %sub.ptr.lhs.cast1339, %sub.ptr.rhs.cast1340
  %conv1342 = trunc i64 %sub.ptr.sub1341 to i32
  %796 = load ptr, ptr %pStr, align 8
  %nByte1343 = getelementptr inbounds nuw %struct.SyString, ptr %796, i32 0, i32 1
  store i32 %conv1342, ptr %nByte1343, align 8
  br label %if.end1344

if.end1344:                                       ; preds = %if.then1336, %sw.epilog
  %797 = load ptr, ptr %pToken.addr, align 8
  %nType1345 = getelementptr inbounds nuw %struct.SyToken, ptr %797, i32 0, i32 1
  %798 = load i32, ptr %nType1345, align 8
  %and1346 = and i32 %798, 32
  %tobool1347 = icmp ne i32 %and1346, 0
  br i1 %tobool1347, label %if.then1348, label %if.end1366

if.then1348:                                      ; preds = %if.end1344
  %799 = load ptr, ptr %pStr, align 8
  %800 = load ptr, ptr %pStream.addr, align 8
  %pSet1349 = getelementptr inbounds nuw %struct.SyStream, ptr %800, i32 0, i32 5
  %801 = load ptr, ptr %pSet1349, align 8
  %call1350 = call ptr @SySetPeek(ptr noundef %801)
  %call1351 = call ptr @PH7_ExprExtractOperator(ptr noundef %799, ptr noundef %call1350)
  store ptr %call1351, ptr %pOp, align 8
  %802 = load ptr, ptr %pOp, align 8
  %cmp1352 = icmp eq ptr %802, null
  br i1 %cmp1352, label %if.then1354, label %if.else1363

if.then1354:                                      ; preds = %if.then1348
  %803 = load ptr, ptr %pToken.addr, align 8
  %nType1355 = getelementptr inbounds nuw %struct.SyToken, ptr %803, i32 0, i32 1
  %804 = load i32, ptr %nType1355, align 8
  %and1356 = and i32 %804, -33
  store i32 %and1356, ptr %nType1355, align 8
  %805 = load ptr, ptr %pToken.addr, align 8
  %nType1357 = getelementptr inbounds nuw %struct.SyToken, ptr %805, i32 0, i32 1
  %806 = load i32, ptr %nType1357, align 8
  %cmp1358 = icmp ule i32 %806, 0
  br i1 %cmp1358, label %if.then1360, label %if.end1362

if.then1360:                                      ; preds = %if.then1354
  %807 = load ptr, ptr %pToken.addr, align 8
  %nType1361 = getelementptr inbounds nuw %struct.SyToken, ptr %807, i32 0, i32 1
  store i32 16777216, ptr %nType1361, align 8
  br label %if.end1362

if.end1362:                                       ; preds = %if.then1360, %if.then1354
  br label %if.end1365

if.else1363:                                      ; preds = %if.then1348
  %808 = load ptr, ptr %pOp, align 8
  %809 = load ptr, ptr %pToken.addr, align 8
  %pUserData1364 = getelementptr inbounds nuw %struct.SyToken, ptr %809, i32 0, i32 3
  store ptr %808, ptr %pUserData1364, align 8
  br label %if.end1365

if.end1365:                                       ; preds = %if.else1363, %if.end1362
  br label %if.end1366

if.end1366:                                       ; preds = %if.end1365, %if.end1344
  br label %if.end1367

if.end1367:                                       ; preds = %if.end1366, %if.end130
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end1367, %if.then1266, %while.end874, %while.end830, %while.end693, %if.end621, %if.end545, %while.end231, %while.end173, %if.then19
  %810 = load i32, ptr %retval, align 4
  ret i32 %810
}

; Function Attrs: nounwind uwtable
declare hidden i32 @KeywordCode(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ExprExtractOperator(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @LexExtractHeredoc(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
