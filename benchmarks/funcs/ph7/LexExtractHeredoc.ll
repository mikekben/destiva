; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @LexExtractHeredoc(ptr noundef %pStream, ptr noundef %pToken) #1 {
entry:
  %retval = alloca i32, align 4
  %pStream.addr = alloca ptr, align 8
  %pToken.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %bNowDoc = alloca i8, align 1
  %sDelim = alloca %struct.SyString, align 8
  %sStr = alloca %struct.SyString, align 8
  %zCur = alloca ptr, align 8
  store ptr %pStream, ptr %pStream.addr, align 8
  store ptr %pToken, ptr %pToken.addr, align 8
  %0 = load ptr, ptr %pStream.addr, align 8
  %zText = getelementptr inbounds nuw %struct.SyStream, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %zText, align 8
  store ptr %1, ptr %zIn, align 8
  %2 = load ptr, ptr %pStream.addr, align 8
  %zEnd1 = getelementptr inbounds nuw %struct.SyStream, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %zEnd1, align 8
  store ptr %3, ptr %zEnd, align 8
  store i8 0, ptr %bNowDoc, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %zIn, align 8
  %5 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %4, %5
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load ptr, ptr %zIn, align 8
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp2 = icmp slt i32 %conv, 192
  br i1 %cmp2, label %land.lhs.true4, label %land.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #2
  %8 = load ptr, ptr %call, align 8
  %9 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %10 to i32
  %idxprom = sext i32 %conv6 to i64
  %arrayidx7 = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %11 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %11 to i32
  %and = and i32 %conv8, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true4
  %12 = load ptr, ptr %zIn, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %13 to i32
  %cmp11 = icmp ne i32 %conv10, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true4, %land.lhs.true, %while.cond
  %14 = phi i1 [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %16 = load ptr, ptr %zIn, align 8
  %17 = load ptr, ptr %zEnd, align 8
  %cmp13 = icmp uge ptr %16, %17
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -25, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %18 = load ptr, ptr %zIn, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %19 to i32
  %cmp17 = icmp eq i32 %conv16, 39
  br i1 %cmp17, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %20 = load ptr, ptr %zIn, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %21 to i32
  %cmp21 = icmp eq i32 %conv20, 34
  br i1 %cmp21, label %if.then23, label %if.end30

if.then23:                                        ; preds = %lor.lhs.false, %if.end
  %22 = load ptr, ptr %zIn, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 39
  %24 = zext i1 %cmp26 to i64
  %cond = select i1 %cmp26, i32 1, i32 0
  %conv28 = trunc i32 %cond to i8
  store i8 %conv28, ptr %bNowDoc, align 1
  %25 = load ptr, ptr %zIn, align 8
  %incdec.ptr29 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr29, ptr %zIn, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %lor.lhs.false
  %26 = load ptr, ptr %zIn, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %27 to i32
  %cmp33 = icmp slt i32 %conv32, 192
  br i1 %cmp33, label %land.lhs.true35, label %if.end50

land.lhs.true35:                                  ; preds = %if.end30
  %call36 = call ptr @__ctype_b_loc() #2
  %28 = load ptr, ptr %call36, align 8
  %29 = load ptr, ptr %zIn, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %29, i64 0
  %30 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %30 to i32
  %idxprom39 = sext i32 %conv38 to i64
  %arrayidx40 = getelementptr inbounds i16, ptr %28, i64 %idxprom39
  %31 = load i16, ptr %arrayidx40, align 2
  %conv41 = zext i16 %31 to i32
  %and42 = and i32 %conv41, 8
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.end50, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true35
  %32 = load ptr, ptr %zIn, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx45, align 1
  %conv46 = zext i8 %33 to i32
  %cmp47 = icmp ne i32 %conv46, 95
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true44
  store i32 -25, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %land.lhs.true44, %land.lhs.true35, %if.end30
  %34 = load ptr, ptr %zIn, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 0
  store ptr %34, ptr %zString, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end102, %if.end50
  %35 = load ptr, ptr %zIn, align 8
  store ptr %35, ptr %zPtr, align 8
  br label %while.cond51

while.cond51:                                     ; preds = %while.body73, %for.cond
  %36 = load ptr, ptr %zPtr, align 8
  %37 = load ptr, ptr %zEnd, align 8
  %cmp52 = icmp ult ptr %36, %37
  br i1 %cmp52, label %land.lhs.true54, label %land.end72

land.lhs.true54:                                  ; preds = %while.cond51
  %38 = load ptr, ptr %zPtr, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %38, i64 0
  %39 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %39 to i32
  %cmp57 = icmp slt i32 %conv56, 192
  br i1 %cmp57, label %land.rhs59, label %land.end72

land.rhs59:                                       ; preds = %land.lhs.true54
  %call60 = call ptr @__ctype_b_loc() #2
  %40 = load ptr, ptr %call60, align 8
  %41 = load ptr, ptr %zPtr, align 8
  %arrayidx61 = getelementptr inbounds i8, ptr %41, i64 0
  %42 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %42 to i32
  %idxprom63 = sext i32 %conv62 to i64
  %arrayidx64 = getelementptr inbounds i16, ptr %40, i64 %idxprom63
  %43 = load i16, ptr %arrayidx64, align 2
  %conv65 = zext i16 %43 to i32
  %and66 = and i32 %conv65, 8
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs59
  %44 = load ptr, ptr %zPtr, align 8
  %arrayidx68 = getelementptr inbounds i8, ptr %44, i64 0
  %45 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %45 to i32
  %cmp70 = icmp eq i32 %conv69, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs59
  %46 = phi i1 [ true, %land.rhs59 ], [ %cmp70, %lor.rhs ]
  br label %land.end72

land.end72:                                       ; preds = %lor.end, %land.lhs.true54, %while.cond51
  %47 = phi i1 [ false, %land.lhs.true54 ], [ false, %while.cond51 ], [ %46, %lor.end ]
  br i1 %47, label %while.body73, label %while.end75

while.body73:                                     ; preds = %land.end72
  %48 = load ptr, ptr %zPtr, align 8
  %incdec.ptr74 = getelementptr inbounds nuw i8, ptr %48, i32 1
  store ptr %incdec.ptr74, ptr %zPtr, align 8
  br label %while.cond51, !llvm.loop !8

while.end75:                                      ; preds = %land.end72
  %49 = load ptr, ptr %zPtr, align 8
  %50 = load ptr, ptr %zEnd, align 8
  %cmp76 = icmp ult ptr %49, %50
  br i1 %cmp76, label %land.lhs.true78, label %if.end98

land.lhs.true78:                                  ; preds = %while.end75
  %51 = load ptr, ptr %zPtr, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %51, i64 0
  %52 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %52 to i32
  %cmp81 = icmp sge i32 %conv80, 192
  br i1 %cmp81, label %if.then83, label %if.end98

if.then83:                                        ; preds = %land.lhs.true78
  %53 = load ptr, ptr %zPtr, align 8
  %incdec.ptr84 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr84, ptr %zPtr, align 8
  br label %while.cond85

while.cond85:                                     ; preds = %while.body95, %if.then83
  %54 = load ptr, ptr %zPtr, align 8
  %55 = load ptr, ptr %zEnd, align 8
  %cmp86 = icmp ult ptr %54, %55
  br i1 %cmp86, label %land.rhs88, label %land.end94

land.rhs88:                                       ; preds = %while.cond85
  %56 = load ptr, ptr %zPtr, align 8
  %arrayidx89 = getelementptr inbounds i8, ptr %56, i64 0
  %57 = load i8, ptr %arrayidx89, align 1
  %conv90 = zext i8 %57 to i32
  %and91 = and i32 %conv90, 192
  %cmp92 = icmp eq i32 %and91, 128
  br label %land.end94

land.end94:                                       ; preds = %land.rhs88, %while.cond85
  %58 = phi i1 [ false, %while.cond85 ], [ %cmp92, %land.rhs88 ]
  br i1 %58, label %while.body95, label %while.end97

while.body95:                                     ; preds = %land.end94
  %59 = load ptr, ptr %zPtr, align 8
  %incdec.ptr96 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %incdec.ptr96, ptr %zPtr, align 8
  br label %while.cond85, !llvm.loop !9

while.end97:                                      ; preds = %land.end94
  br label %if.end98

if.end98:                                         ; preds = %while.end97, %land.lhs.true78, %while.end75
  %60 = load ptr, ptr %zPtr, align 8
  %61 = load ptr, ptr %zIn, align 8
  %cmp99 = icmp eq ptr %60, %61
  br i1 %cmp99, label %if.then101, label %if.end102

if.then101:                                       ; preds = %if.end98
  br label %for.end

if.end102:                                        ; preds = %if.end98
  %62 = load ptr, ptr %zPtr, align 8
  store ptr %62, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then101
  %63 = load ptr, ptr %zIn, align 8
  %zString103 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 0
  %64 = load ptr, ptr %zString103, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %63 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %64 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv104 = trunc i64 %sub.ptr.sub to i32
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  store i32 %conv104, ptr %nByte, align 8
  %65 = load ptr, ptr %zIn, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx105, align 1
  %conv106 = zext i8 %66 to i32
  %cmp107 = icmp eq i32 %conv106, 34
  br i1 %cmp107, label %if.then117, label %lor.lhs.false109

lor.lhs.false109:                                 ; preds = %for.end
  %67 = load i8, ptr %bNowDoc, align 1
  %conv110 = zext i8 %67 to i32
  %tobool111 = icmp ne i32 %conv110, 0
  br i1 %tobool111, label %land.lhs.true112, label %if.end119

land.lhs.true112:                                 ; preds = %lor.lhs.false109
  %68 = load ptr, ptr %zIn, align 8
  %arrayidx113 = getelementptr inbounds i8, ptr %68, i64 0
  %69 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %69 to i32
  %cmp115 = icmp eq i32 %conv114, 39
  br i1 %cmp115, label %if.then117, label %if.end119

if.then117:                                       ; preds = %land.lhs.true112, %for.end
  %70 = load ptr, ptr %zIn, align 8
  %incdec.ptr118 = getelementptr inbounds nuw i8, ptr %70, i32 1
  store ptr %incdec.ptr118, ptr %zIn, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %land.lhs.true112, %lor.lhs.false109
  br label %while.cond120

while.cond120:                                    ; preds = %while.body143, %if.end119
  %71 = load ptr, ptr %zIn, align 8
  %72 = load ptr, ptr %zEnd, align 8
  %cmp121 = icmp ult ptr %71, %72
  br i1 %cmp121, label %land.lhs.true123, label %land.end142

land.lhs.true123:                                 ; preds = %while.cond120
  %73 = load ptr, ptr %zIn, align 8
  %arrayidx124 = getelementptr inbounds i8, ptr %73, i64 0
  %74 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %74 to i32
  %cmp126 = icmp slt i32 %conv125, 192
  br i1 %cmp126, label %land.lhs.true128, label %land.end142

land.lhs.true128:                                 ; preds = %land.lhs.true123
  %call129 = call ptr @__ctype_b_loc() #2
  %75 = load ptr, ptr %call129, align 8
  %76 = load ptr, ptr %zIn, align 8
  %arrayidx130 = getelementptr inbounds i8, ptr %76, i64 0
  %77 = load i8, ptr %arrayidx130, align 1
  %conv131 = zext i8 %77 to i32
  %idxprom132 = sext i32 %conv131 to i64
  %arrayidx133 = getelementptr inbounds i16, ptr %75, i64 %idxprom132
  %78 = load i16, ptr %arrayidx133, align 2
  %conv134 = zext i16 %78 to i32
  %and135 = and i32 %conv134, 8192
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %land.rhs137, label %land.end142

land.rhs137:                                      ; preds = %land.lhs.true128
  %79 = load ptr, ptr %zIn, align 8
  %arrayidx138 = getelementptr inbounds i8, ptr %79, i64 0
  %80 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %80 to i32
  %cmp140 = icmp ne i32 %conv139, 10
  br label %land.end142

land.end142:                                      ; preds = %land.rhs137, %land.lhs.true128, %land.lhs.true123, %while.cond120
  %81 = phi i1 [ false, %land.lhs.true128 ], [ false, %land.lhs.true123 ], [ false, %while.cond120 ], [ %cmp140, %land.rhs137 ]
  br i1 %81, label %while.body143, label %while.end145

while.body143:                                    ; preds = %land.end142
  %82 = load ptr, ptr %zIn, align 8
  %incdec.ptr144 = getelementptr inbounds nuw i8, ptr %82, i32 1
  store ptr %incdec.ptr144, ptr %zIn, align 8
  br label %while.cond120, !llvm.loop !10

while.end145:                                     ; preds = %land.end142
  %nByte146 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  %83 = load i32, ptr %nByte146, align 8
  %cmp147 = icmp ule i32 %83, 0
  br i1 %cmp147, label %if.then157, label %lor.lhs.false149

lor.lhs.false149:                                 ; preds = %while.end145
  %84 = load ptr, ptr %zIn, align 8
  %85 = load ptr, ptr %zEnd, align 8
  %cmp150 = icmp uge ptr %84, %85
  br i1 %cmp150, label %if.then157, label %lor.lhs.false152

lor.lhs.false152:                                 ; preds = %lor.lhs.false149
  %86 = load ptr, ptr %zIn, align 8
  %arrayidx153 = getelementptr inbounds i8, ptr %86, i64 0
  %87 = load i8, ptr %arrayidx153, align 1
  %conv154 = zext i8 %87 to i32
  %cmp155 = icmp ne i32 %conv154, 10
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %lor.lhs.false152, %lor.lhs.false149, %while.end145
  store i32 -25, ptr %retval, align 4
  br label %return

if.end158:                                        ; preds = %lor.lhs.false152
  %88 = load ptr, ptr %pStream.addr, align 8
  %nLine = getelementptr inbounds nuw %struct.SyStream, ptr %88, i32 0, i32 3
  %89 = load i32, ptr %nLine, align 8
  %inc = add i32 %89, 1
  store i32 %inc, ptr %nLine, align 8
  %90 = load ptr, ptr %zIn, align 8
  %incdec.ptr159 = getelementptr inbounds nuw i8, ptr %90, i32 1
  store ptr %incdec.ptr159, ptr %zIn, align 8
  %91 = load ptr, ptr %zIn, align 8
  %zString160 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  store ptr %91, ptr %zString160, align 8
  br label %for.cond161

for.cond161:                                      ; preds = %if.end281, %if.end158
  br label %while.cond162

while.cond162:                                    ; preds = %while.body171, %for.cond161
  %92 = load ptr, ptr %zIn, align 8
  %93 = load ptr, ptr %zEnd, align 8
  %cmp163 = icmp ult ptr %92, %93
  br i1 %cmp163, label %land.rhs165, label %land.end170

land.rhs165:                                      ; preds = %while.cond162
  %94 = load ptr, ptr %zIn, align 8
  %arrayidx166 = getelementptr inbounds i8, ptr %94, i64 0
  %95 = load i8, ptr %arrayidx166, align 1
  %conv167 = zext i8 %95 to i32
  %cmp168 = icmp ne i32 %conv167, 10
  br label %land.end170

land.end170:                                      ; preds = %land.rhs165, %while.cond162
  %96 = phi i1 [ false, %while.cond162 ], [ %cmp168, %land.rhs165 ]
  br i1 %96, label %while.body171, label %while.end173

while.body171:                                    ; preds = %land.end170
  %97 = load ptr, ptr %zIn, align 8
  %incdec.ptr172 = getelementptr inbounds nuw i8, ptr %97, i32 1
  store ptr %incdec.ptr172, ptr %zIn, align 8
  br label %while.cond162, !llvm.loop !11

while.end173:                                     ; preds = %land.end170
  %98 = load ptr, ptr %zIn, align 8
  %99 = load ptr, ptr %zEnd, align 8
  %cmp174 = icmp uge ptr %98, %99
  br i1 %cmp174, label %if.then176, label %if.end179

if.then176:                                       ; preds = %while.end173
  %100 = load ptr, ptr %pStream.addr, align 8
  %zEnd177 = getelementptr inbounds nuw %struct.SyStream, ptr %100, i32 0, i32 2
  %101 = load ptr, ptr %zEnd177, align 8
  %102 = load ptr, ptr %pStream.addr, align 8
  %zText178 = getelementptr inbounds nuw %struct.SyStream, ptr %102, i32 0, i32 1
  store ptr %101, ptr %zText178, align 8
  br label %for.end282

if.end179:                                        ; preds = %while.end173
  %103 = load ptr, ptr %pStream.addr, align 8
  %nLine180 = getelementptr inbounds nuw %struct.SyStream, ptr %103, i32 0, i32 3
  %104 = load i32, ptr %nLine180, align 8
  %inc181 = add i32 %104, 1
  store i32 %inc181, ptr %nLine180, align 8
  %105 = load ptr, ptr %zIn, align 8
  %incdec.ptr182 = getelementptr inbounds nuw i8, ptr %105, i32 1
  store ptr %incdec.ptr182, ptr %zIn, align 8
  %106 = load ptr, ptr %zEnd, align 8
  %107 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast183 = ptrtoint ptr %106 to i64
  %sub.ptr.rhs.cast184 = ptrtoint ptr %107 to i64
  %sub.ptr.sub185 = sub i64 %sub.ptr.lhs.cast183, %sub.ptr.rhs.cast184
  %conv186 = trunc i64 %sub.ptr.sub185 to i32
  %nByte187 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  %108 = load i32, ptr %nByte187, align 8
  %cmp188 = icmp uge i32 %conv186, %108
  br i1 %cmp188, label %land.lhs.true190, label %if.end281

land.lhs.true190:                                 ; preds = %if.end179
  %zString191 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 0
  %109 = load ptr, ptr %zString191, align 8
  %110 = load ptr, ptr %zIn, align 8
  %nByte192 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  %111 = load i32, ptr %nByte192, align 8
  %call193 = call i32 @SyMemcmp(ptr noundef %109, ptr noundef %110, i32 noundef %111)
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then196, label %if.end281

if.then196:                                       ; preds = %land.lhs.true190
  %112 = load ptr, ptr %zIn, align 8
  %nByte197 = getelementptr inbounds nuw %struct.SyString, ptr %sDelim, i32 0, i32 1
  %113 = load i32, ptr %nByte197, align 8
  %idxprom198 = zext i32 %113 to i64
  %arrayidx199 = getelementptr inbounds nuw i8, ptr %112, i64 %idxprom198
  store ptr %arrayidx199, ptr %zPtr, align 8
  br label %while.cond200

while.cond200:                                    ; preds = %while.body223, %if.then196
  %114 = load ptr, ptr %zPtr, align 8
  %115 = load ptr, ptr %zEnd, align 8
  %cmp201 = icmp ult ptr %114, %115
  br i1 %cmp201, label %land.lhs.true203, label %land.end222

land.lhs.true203:                                 ; preds = %while.cond200
  %116 = load ptr, ptr %zPtr, align 8
  %arrayidx204 = getelementptr inbounds i8, ptr %116, i64 0
  %117 = load i8, ptr %arrayidx204, align 1
  %conv205 = zext i8 %117 to i32
  %cmp206 = icmp slt i32 %conv205, 192
  br i1 %cmp206, label %land.lhs.true208, label %land.end222

land.lhs.true208:                                 ; preds = %land.lhs.true203
  %call209 = call ptr @__ctype_b_loc() #2
  %118 = load ptr, ptr %call209, align 8
  %119 = load ptr, ptr %zPtr, align 8
  %arrayidx210 = getelementptr inbounds i8, ptr %119, i64 0
  %120 = load i8, ptr %arrayidx210, align 1
  %conv211 = zext i8 %120 to i32
  %idxprom212 = sext i32 %conv211 to i64
  %arrayidx213 = getelementptr inbounds i16, ptr %118, i64 %idxprom212
  %121 = load i16, ptr %arrayidx213, align 2
  %conv214 = zext i16 %121 to i32
  %and215 = and i32 %conv214, 8192
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %land.rhs217, label %land.end222

land.rhs217:                                      ; preds = %land.lhs.true208
  %122 = load ptr, ptr %zPtr, align 8
  %arrayidx218 = getelementptr inbounds i8, ptr %122, i64 0
  %123 = load i8, ptr %arrayidx218, align 1
  %conv219 = zext i8 %123 to i32
  %cmp220 = icmp ne i32 %conv219, 10
  br label %land.end222

land.end222:                                      ; preds = %land.rhs217, %land.lhs.true208, %land.lhs.true203, %while.cond200
  %124 = phi i1 [ false, %land.lhs.true208 ], [ false, %land.lhs.true203 ], [ false, %while.cond200 ], [ %cmp220, %land.rhs217 ]
  br i1 %124, label %while.body223, label %while.end225

while.body223:                                    ; preds = %land.end222
  %125 = load ptr, ptr %zPtr, align 8
  %incdec.ptr224 = getelementptr inbounds nuw i8, ptr %125, i32 1
  store ptr %incdec.ptr224, ptr %zPtr, align 8
  br label %while.cond200, !llvm.loop !12

while.end225:                                     ; preds = %land.end222
  %126 = load ptr, ptr %zPtr, align 8
  %127 = load ptr, ptr %zEnd, align 8
  %cmp226 = icmp uge ptr %126, %127
  br i1 %cmp226, label %if.then228, label %if.end230

if.then228:                                       ; preds = %while.end225
  %128 = load ptr, ptr %zPtr, align 8
  %129 = load ptr, ptr %pStream.addr, align 8
  %zText229 = getelementptr inbounds nuw %struct.SyStream, ptr %129, i32 0, i32 1
  store ptr %128, ptr %zText229, align 8
  br label %for.end282

if.end230:                                        ; preds = %while.end225
  %130 = load ptr, ptr %zPtr, align 8
  %arrayidx231 = getelementptr inbounds i8, ptr %130, i64 0
  %131 = load i8, ptr %arrayidx231, align 1
  %conv232 = zext i8 %131 to i32
  %cmp233 = icmp eq i32 %conv232, 59
  br i1 %cmp233, label %if.then235, label %if.else

if.then235:                                       ; preds = %if.end230
  %132 = load ptr, ptr %zPtr, align 8
  store ptr %132, ptr %zCur, align 8
  %133 = load ptr, ptr %zPtr, align 8
  %incdec.ptr236 = getelementptr inbounds nuw i8, ptr %133, i32 1
  store ptr %incdec.ptr236, ptr %zPtr, align 8
  br label %while.cond237

while.cond237:                                    ; preds = %while.body260, %if.then235
  %134 = load ptr, ptr %zPtr, align 8
  %135 = load ptr, ptr %zEnd, align 8
  %cmp238 = icmp ult ptr %134, %135
  br i1 %cmp238, label %land.lhs.true240, label %land.end259

land.lhs.true240:                                 ; preds = %while.cond237
  %136 = load ptr, ptr %zPtr, align 8
  %arrayidx241 = getelementptr inbounds i8, ptr %136, i64 0
  %137 = load i8, ptr %arrayidx241, align 1
  %conv242 = zext i8 %137 to i32
  %cmp243 = icmp slt i32 %conv242, 192
  br i1 %cmp243, label %land.lhs.true245, label %land.end259

land.lhs.true245:                                 ; preds = %land.lhs.true240
  %call246 = call ptr @__ctype_b_loc() #2
  %138 = load ptr, ptr %call246, align 8
  %139 = load ptr, ptr %zPtr, align 8
  %arrayidx247 = getelementptr inbounds i8, ptr %139, i64 0
  %140 = load i8, ptr %arrayidx247, align 1
  %conv248 = zext i8 %140 to i32
  %idxprom249 = sext i32 %conv248 to i64
  %arrayidx250 = getelementptr inbounds i16, ptr %138, i64 %idxprom249
  %141 = load i16, ptr %arrayidx250, align 2
  %conv251 = zext i16 %141 to i32
  %and252 = and i32 %conv251, 8192
  %tobool253 = icmp ne i32 %and252, 0
  br i1 %tobool253, label %land.rhs254, label %land.end259

land.rhs254:                                      ; preds = %land.lhs.true245
  %142 = load ptr, ptr %zPtr, align 8
  %arrayidx255 = getelementptr inbounds i8, ptr %142, i64 0
  %143 = load i8, ptr %arrayidx255, align 1
  %conv256 = zext i8 %143 to i32
  %cmp257 = icmp ne i32 %conv256, 10
  br label %land.end259

land.end259:                                      ; preds = %land.rhs254, %land.lhs.true245, %land.lhs.true240, %while.cond237
  %144 = phi i1 [ false, %land.lhs.true245 ], [ false, %land.lhs.true240 ], [ false, %while.cond237 ], [ %cmp257, %land.rhs254 ]
  br i1 %144, label %while.body260, label %while.end262

while.body260:                                    ; preds = %land.end259
  %145 = load ptr, ptr %zPtr, align 8
  %incdec.ptr261 = getelementptr inbounds nuw i8, ptr %145, i32 1
  store ptr %incdec.ptr261, ptr %zPtr, align 8
  br label %while.cond237, !llvm.loop !13

while.end262:                                     ; preds = %land.end259
  %146 = load ptr, ptr %zPtr, align 8
  %147 = load ptr, ptr %zEnd, align 8
  %cmp263 = icmp uge ptr %146, %147
  br i1 %cmp263, label %if.then270, label %lor.lhs.false265

lor.lhs.false265:                                 ; preds = %while.end262
  %148 = load ptr, ptr %zPtr, align 8
  %arrayidx266 = getelementptr inbounds i8, ptr %148, i64 0
  %149 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %149 to i32
  %cmp268 = icmp eq i32 %conv267, 10
  br i1 %cmp268, label %if.then270, label %if.end272

if.then270:                                       ; preds = %lor.lhs.false265, %while.end262
  %150 = load ptr, ptr %zCur, align 8
  %151 = load ptr, ptr %pStream.addr, align 8
  %zText271 = getelementptr inbounds nuw %struct.SyStream, ptr %151, i32 0, i32 1
  store ptr %150, ptr %zText271, align 8
  br label %for.end282

if.end272:                                        ; preds = %lor.lhs.false265
  br label %if.end280

if.else:                                          ; preds = %if.end230
  %152 = load ptr, ptr %zPtr, align 8
  %arrayidx273 = getelementptr inbounds i8, ptr %152, i64 0
  %153 = load i8, ptr %arrayidx273, align 1
  %conv274 = zext i8 %153 to i32
  %cmp275 = icmp eq i32 %conv274, 10
  br i1 %cmp275, label %if.then277, label %if.end279

if.then277:                                       ; preds = %if.else
  %154 = load ptr, ptr %zPtr, align 8
  %155 = load ptr, ptr %pStream.addr, align 8
  %zText278 = getelementptr inbounds nuw %struct.SyStream, ptr %155, i32 0, i32 1
  store ptr %154, ptr %zText278, align 8
  br label %for.end282

if.end279:                                        ; preds = %if.else
  br label %if.end280

if.end280:                                        ; preds = %if.end279, %if.end272
  %156 = load ptr, ptr %zPtr, align 8
  store ptr %156, ptr %zIn, align 8
  br label %if.end281

if.end281:                                        ; preds = %if.end280, %land.lhs.true190, %if.end179
  br label %for.cond161

for.end282:                                       ; preds = %if.then277, %if.then270, %if.then228, %if.then176
  %157 = load ptr, ptr %zIn, align 8
  %zString283 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %158 = load ptr, ptr %zString283, align 8
  %sub.ptr.lhs.cast284 = ptrtoint ptr %157 to i64
  %sub.ptr.rhs.cast285 = ptrtoint ptr %158 to i64
  %sub.ptr.sub286 = sub i64 %sub.ptr.lhs.cast284, %sub.ptr.rhs.cast285
  %conv287 = trunc i64 %sub.ptr.sub286 to i32
  %nByte288 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  store i32 %conv287, ptr %nByte288, align 8
  %159 = load i8, ptr %bNowDoc, align 1
  %conv289 = zext i8 %159 to i32
  %tobool290 = icmp ne i32 %conv289, 0
  %160 = zext i1 %tobool290 to i64
  %cond291 = select i1 %tobool290, i32 65536, i32 32768
  %161 = load ptr, ptr %pToken.addr, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %161, i32 0, i32 1
  store i32 %cond291, ptr %nType, align 8
  %zString292 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %162 = load ptr, ptr %zString292, align 8
  %163 = load ptr, ptr %pToken.addr, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %163, i32 0, i32 0
  %zString293 = getelementptr inbounds nuw %struct.SyString, ptr %sData, i32 0, i32 0
  store ptr %162, ptr %zString293, align 8
  %nByte294 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %164 = load i32, ptr %nByte294, align 8
  %165 = load ptr, ptr %pToken.addr, align 8
  %sData295 = getelementptr inbounds nuw %struct.SyToken, ptr %165, i32 0, i32 0
  %nByte296 = getelementptr inbounds nuw %struct.SyString, ptr %sData295, i32 0, i32 1
  store i32 %164, ptr %nByte296, align 8
  br label %while.cond297

while.cond297:                                    ; preds = %while.body328, %for.end282
  %166 = load ptr, ptr %pToken.addr, align 8
  %sData298 = getelementptr inbounds nuw %struct.SyToken, ptr %166, i32 0, i32 0
  %nByte299 = getelementptr inbounds nuw %struct.SyString, ptr %sData298, i32 0, i32 1
  %167 = load i32, ptr %nByte299, align 8
  %cmp300 = icmp ugt i32 %167, 0
  br i1 %cmp300, label %land.lhs.true302, label %land.end327

land.lhs.true302:                                 ; preds = %while.cond297
  %168 = load ptr, ptr %pToken.addr, align 8
  %sData303 = getelementptr inbounds nuw %struct.SyToken, ptr %168, i32 0, i32 0
  %zString304 = getelementptr inbounds nuw %struct.SyString, ptr %sData303, i32 0, i32 0
  %169 = load ptr, ptr %zString304, align 8
  %170 = load ptr, ptr %pToken.addr, align 8
  %sData305 = getelementptr inbounds nuw %struct.SyToken, ptr %170, i32 0, i32 0
  %nByte306 = getelementptr inbounds nuw %struct.SyString, ptr %sData305, i32 0, i32 1
  %171 = load i32, ptr %nByte306, align 8
  %sub = sub i32 %171, 1
  %idxprom307 = zext i32 %sub to i64
  %arrayidx308 = getelementptr inbounds nuw i8, ptr %169, i64 %idxprom307
  %172 = load i8, ptr %arrayidx308, align 1
  %conv309 = zext i8 %172 to i32
  %cmp310 = icmp slt i32 %conv309, 192
  br i1 %cmp310, label %land.rhs312, label %land.end327

land.rhs312:                                      ; preds = %land.lhs.true302
  %call313 = call ptr @__ctype_b_loc() #2
  %173 = load ptr, ptr %call313, align 8
  %174 = load ptr, ptr %pToken.addr, align 8
  %sData314 = getelementptr inbounds nuw %struct.SyToken, ptr %174, i32 0, i32 0
  %zString315 = getelementptr inbounds nuw %struct.SyString, ptr %sData314, i32 0, i32 0
  %175 = load ptr, ptr %zString315, align 8
  %176 = load ptr, ptr %pToken.addr, align 8
  %sData316 = getelementptr inbounds nuw %struct.SyToken, ptr %176, i32 0, i32 0
  %nByte317 = getelementptr inbounds nuw %struct.SyString, ptr %sData316, i32 0, i32 1
  %177 = load i32, ptr %nByte317, align 8
  %sub318 = sub i32 %177, 1
  %idxprom319 = zext i32 %sub318 to i64
  %arrayidx320 = getelementptr inbounds nuw i8, ptr %175, i64 %idxprom319
  %178 = load i8, ptr %arrayidx320, align 1
  %conv321 = sext i8 %178 to i32
  %idxprom322 = sext i32 %conv321 to i64
  %arrayidx323 = getelementptr inbounds i16, ptr %173, i64 %idxprom322
  %179 = load i16, ptr %arrayidx323, align 2
  %conv324 = zext i16 %179 to i32
  %and325 = and i32 %conv324, 8192
  %tobool326 = icmp ne i32 %and325, 0
  br label %land.end327

land.end327:                                      ; preds = %land.rhs312, %land.lhs.true302, %while.cond297
  %180 = phi i1 [ false, %land.lhs.true302 ], [ false, %while.cond297 ], [ %tobool326, %land.rhs312 ]
  br i1 %180, label %while.body328, label %while.end331

while.body328:                                    ; preds = %land.end327
  %181 = load ptr, ptr %pToken.addr, align 8
  %sData329 = getelementptr inbounds nuw %struct.SyToken, ptr %181, i32 0, i32 0
  %nByte330 = getelementptr inbounds nuw %struct.SyString, ptr %sData329, i32 0, i32 1
  %182 = load i32, ptr %nByte330, align 8
  %dec = add i32 %182, -1
  store i32 %dec, ptr %nByte330, align 8
  br label %while.cond297, !llvm.loop !14

while.end331:                                     ; preds = %land.end327
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end331, %if.then157, %if.then49, %if.then
  %183 = load i32, ptr %retval, align 4
  ret i32 %183
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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
