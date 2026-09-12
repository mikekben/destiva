; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.130 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.131 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_TokenizeRawText(ptr noundef %zInput, i32 noundef %nLen, ptr noundef %pOut) #1 {
entry:
  %retval = alloca i32, align 4
  %zInput.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zCurEnd = alloca ptr, align 8
  %sCtag = alloca %struct.SyString, align 8
  %sToken = alloca %struct.SyToken, align 8
  %sDoc = alloca %struct.SyString, align 8
  %nLine = alloca i32, align 4
  %iNest = alloca i32, align 4
  %rc = alloca i32, align 4
  %zTmp = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  store ptr %zInput, ptr %zInput.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %zInput.addr, align 8
  %1 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %2 = load ptr, ptr %zInput.addr, align 8
  store ptr %2, ptr %zIn, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sCtag, i8 0, i64 16, i1 false)
  store i32 1, ptr %nLine, align 4
  store ptr null, ptr %zCurEnd, align 8
  store ptr null, ptr %zCur, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 3
  store ptr null, ptr %pUserData, align 8
  store i32 0, ptr %iNest, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  store i32 0, ptr %nByte, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 0
  store ptr @.str.4, ptr %zString, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end516, %entry
  %3 = load ptr, ptr %zIn, align 8
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end517

if.end:                                           ; preds = %for.cond
  %5 = load i32, ptr %nLine, align 4
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 2
  store i32 %5, ptr %nLine1, align 4
  %6 = load ptr, ptr %zIn, align 8
  store ptr %6, ptr %zCur, align 8
  store ptr null, ptr %zCurEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.end
  %7 = load ptr, ptr %zIn, align 8
  %8 = load ptr, ptr %zEnd, align 8
  %cmp2 = icmp ult ptr %7, %8
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %zIn, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx3, align 1
  %conv = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv, 60
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.body
  %11 = load ptr, ptr %zIn, align 8
  store ptr %11, ptr %zTmp, align 8
  %12 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zIn, align 8
  %14 = load ptr, ptr %zEnd, align 8
  %cmp7 = icmp ult ptr %13, %14
  br i1 %cmp7, label %if.then9, label %if.end27

if.then9:                                         ; preds = %if.then6
  %15 = load ptr, ptr %zIn, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %16 to i32
  %cmp12 = icmp eq i32 %conv11, 63
  br i1 %cmp12, label %if.then14, label %if.end26

if.then14:                                        ; preds = %if.then9
  %17 = load ptr, ptr %zIn, align 8
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr15, ptr %zIn, align 8
  %18 = load ptr, ptr %zEnd, align 8
  %19 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv16 = trunc i64 %sub.ptr.sub to i32
  %conv17 = zext i32 %conv16 to i64
  %cmp18 = icmp uge i64 %conv17, 3
  br i1 %cmp18, label %land.lhs.true, label %if.end23

land.lhs.true:                                    ; preds = %if.then14
  %20 = load ptr, ptr %zIn, align 8
  %call = call i32 @SyStrnicmp(ptr noundef %20, ptr noundef @.str.130, i32 noundef 3)
  %cmp20 = icmp eq i32 %call, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %zIn, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %21, i64 3
  store ptr %add.ptr, ptr %zIn, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true, %if.then14
  %zString24 = getelementptr inbounds nuw %struct.SyString, ptr %sCtag, i32 0, i32 0
  store ptr @.str.131, ptr %zString24, align 8
  %nByte25 = getelementptr inbounds nuw %struct.SyString, ptr %sCtag, i32 0, i32 1
  store i32 2, ptr %nByte25, align 8
  %22 = load ptr, ptr %zTmp, align 8
  store ptr %22, ptr %zCurEnd, align 8
  br label %while.end

if.end26:                                         ; preds = %if.then9
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then6
  br label %if.end35

if.else:                                          ; preds = %while.body
  %23 = load ptr, ptr %zIn, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx28, align 1
  %conv29 = sext i8 %24 to i32
  %cmp30 = icmp eq i32 %conv29, 10
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.else
  %25 = load i32, ptr %nLine, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %nLine, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.else
  %26 = load ptr, ptr %zIn, align 8
  %incdec.ptr34 = getelementptr inbounds nuw i8, ptr %26, i32 1
  store ptr %incdec.ptr34, ptr %zIn, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %if.end27
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.end23, %while.cond
  %27 = load ptr, ptr %zCurEnd, align 8
  %cmp36 = icmp eq ptr %27, null
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %while.end
  %28 = load ptr, ptr %zIn, align 8
  store ptr %28, ptr %zCurEnd, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %while.end
  %29 = load ptr, ptr %zCur, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %zString40 = getelementptr inbounds nuw %struct.SyString, ptr %sData, i32 0, i32 0
  store ptr %29, ptr %zString40, align 8
  %30 = load ptr, ptr %zCurEnd, align 8
  %31 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast41 = ptrtoint ptr %30 to i64
  %sub.ptr.rhs.cast42 = ptrtoint ptr %31 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %conv44 = trunc i64 %sub.ptr.sub43 to i32
  %sData45 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %nByte46 = getelementptr inbounds nuw %struct.SyString, ptr %sData45, i32 0, i32 1
  store i32 %conv44, ptr %nByte46, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 1
  store i32 1, ptr %nType, align 8
  %32 = load ptr, ptr %pOut.addr, align 8
  %call47 = call i32 @SySetPut(ptr noundef %32, ptr noundef %sToken)
  store i32 %call47, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp48 = icmp ne i32 %33, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end39
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.end39
  %35 = load ptr, ptr %zIn, align 8
  %36 = load ptr, ptr %zEnd, align 8
  %cmp52 = icmp uge ptr %35, %36
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end51
  br label %for.end517

if.end55:                                         ; preds = %if.end51
  br label %while.cond56

while.cond56:                                     ; preds = %if.end77, %if.end55
  %37 = load ptr, ptr %zIn, align 8
  %38 = load ptr, ptr %zEnd, align 8
  %cmp57 = icmp ult ptr %37, %38
  br i1 %cmp57, label %land.lhs.true59, label %land.end

land.lhs.true59:                                  ; preds = %while.cond56
  %39 = load ptr, ptr %zIn, align 8
  %arrayidx60 = getelementptr inbounds i8, ptr %39, i64 0
  %40 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %40 to i32
  %cmp62 = icmp slt i32 %conv61, 192
  br i1 %cmp62, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true59
  %call64 = call ptr @__ctype_b_loc() #3
  %41 = load ptr, ptr %call64, align 8
  %42 = load ptr, ptr %zIn, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx65, align 1
  %conv66 = sext i8 %43 to i32
  %idxprom67 = sext i32 %conv66 to i64
  %arrayidx68 = getelementptr inbounds i16, ptr %41, i64 %idxprom67
  %44 = load i16, ptr %arrayidx68, align 2
  %conv69 = zext i16 %44 to i32
  %and = and i32 %conv69, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true59, %while.cond56
  %45 = phi i1 [ false, %land.lhs.true59 ], [ false, %while.cond56 ], [ %tobool, %land.rhs ]
  br i1 %45, label %while.body70, label %while.end79

while.body70:                                     ; preds = %land.end
  %46 = load ptr, ptr %zIn, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %46, i64 0
  %47 = load i8, ptr %arrayidx71, align 1
  %conv72 = sext i8 %47 to i32
  %cmp73 = icmp eq i32 %conv72, 10
  br i1 %cmp73, label %if.then75, label %if.end77

if.then75:                                        ; preds = %while.body70
  %48 = load i32, ptr %nLine, align 4
  %inc76 = add i32 %48, 1
  store i32 %inc76, ptr %nLine, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %while.body70
  %49 = load ptr, ptr %zIn, align 8
  %incdec.ptr78 = getelementptr inbounds nuw i8, ptr %49, i32 1
  store ptr %incdec.ptr78, ptr %zIn, align 8
  br label %while.cond56, !llvm.loop !8

while.end79:                                      ; preds = %land.end
  %50 = load i32, ptr %nLine, align 4
  %nLine80 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 2
  store i32 %50, ptr %nLine80, align 4
  %51 = load ptr, ptr %zIn, align 8
  store ptr %51, ptr %zCur, align 8
  br label %while.cond81

while.cond81:                                     ; preds = %if.end444, %if.end442, %if.end264, %while.end79
  %52 = load ptr, ptr %zEnd, align 8
  %53 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast82 = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast83 = ptrtoint ptr %53 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %conv85 = trunc i64 %sub.ptr.sub84 to i32
  %nByte86 = getelementptr inbounds nuw %struct.SyString, ptr %sCtag, i32 0, i32 1
  %54 = load i32, ptr %nByte86, align 8
  %cmp87 = icmp uge i32 %conv85, %54
  br i1 %cmp87, label %while.body89, label %while.end446

while.body89:                                     ; preds = %while.cond81
  %55 = load ptr, ptr %zIn, align 8
  %zString90 = getelementptr inbounds nuw %struct.SyString, ptr %sCtag, i32 0, i32 0
  %56 = load ptr, ptr %zString90, align 8
  %nByte91 = getelementptr inbounds nuw %struct.SyString, ptr %sCtag, i32 0, i32 1
  %57 = load i32, ptr %nByte91, align 8
  %call92 = call i32 @SyMemcmp(ptr noundef %55, ptr noundef %56, i32 noundef %57)
  %cmp93 = icmp eq i32 %call92, 0
  br i1 %cmp93, label %land.lhs.true95, label %if.end99

land.lhs.true95:                                  ; preds = %while.body89
  %58 = load i32, ptr %iNest, align 4
  %cmp96 = icmp slt i32 %58, 1
  br i1 %cmp96, label %if.then98, label %if.end99

if.then98:                                        ; preds = %land.lhs.true95
  br label %while.end446

if.end99:                                         ; preds = %land.lhs.true95, %while.body89
  br label %for.cond100

for.cond100:                                      ; preds = %if.end170, %if.end99
  %59 = load ptr, ptr %zIn, align 8
  %arrayidx101 = getelementptr inbounds i8, ptr %59, i64 0
  %60 = load i8, ptr %arrayidx101, align 1
  %conv102 = sext i8 %60 to i32
  %cmp103 = icmp ne i32 %conv102, 47
  br i1 %cmp103, label %if.then114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond100
  %61 = load ptr, ptr %zIn, align 8
  %arrayidx105 = getelementptr inbounds i8, ptr %61, i64 1
  %62 = load i8, ptr %arrayidx105, align 1
  %conv106 = sext i8 %62 to i32
  %cmp107 = icmp ne i32 %conv106, 42
  br i1 %cmp107, label %land.lhs.true109, label %if.end115

land.lhs.true109:                                 ; preds = %lor.lhs.false
  %63 = load ptr, ptr %zIn, align 8
  %arrayidx110 = getelementptr inbounds i8, ptr %63, i64 1
  %64 = load i8, ptr %arrayidx110, align 1
  %conv111 = sext i8 %64 to i32
  %cmp112 = icmp ne i32 %conv111, 47
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %land.lhs.true109, %for.cond100
  br label %for.end

if.end115:                                        ; preds = %land.lhs.true109, %lor.lhs.false
  %65 = load ptr, ptr %zIn, align 8
  %add.ptr116 = getelementptr inbounds i8, ptr %65, i64 2
  store ptr %add.ptr116, ptr %zIn, align 8
  %66 = load ptr, ptr %zIn, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %66, i64 -1
  %67 = load i8, ptr %arrayidx117, align 1
  %conv118 = sext i8 %67 to i32
  %cmp119 = icmp eq i32 %conv118, 47
  br i1 %cmp119, label %if.then121, label %if.else139

if.then121:                                       ; preds = %if.end115
  br label %while.cond122

while.cond122:                                    ; preds = %while.body131, %if.then121
  %68 = load ptr, ptr %zIn, align 8
  %69 = load ptr, ptr %zEnd, align 8
  %cmp123 = icmp ult ptr %68, %69
  br i1 %cmp123, label %land.rhs125, label %land.end130

land.rhs125:                                      ; preds = %while.cond122
  %70 = load ptr, ptr %zIn, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %70, i64 0
  %71 = load i8, ptr %arrayidx126, align 1
  %conv127 = sext i8 %71 to i32
  %cmp128 = icmp ne i32 %conv127, 10
  br label %land.end130

land.end130:                                      ; preds = %land.rhs125, %while.cond122
  %72 = phi i1 [ false, %while.cond122 ], [ %cmp128, %land.rhs125 ]
  br i1 %72, label %while.body131, label %while.end133

while.body131:                                    ; preds = %land.end130
  %73 = load ptr, ptr %zIn, align 8
  %incdec.ptr132 = getelementptr inbounds nuw i8, ptr %73, i32 1
  store ptr %incdec.ptr132, ptr %zIn, align 8
  br label %while.cond122, !llvm.loop !9

while.end133:                                     ; preds = %land.end130
  %74 = load ptr, ptr %zIn, align 8
  %75 = load ptr, ptr %zEnd, align 8
  %cmp134 = icmp uge ptr %74, %75
  br i1 %cmp134, label %if.then136, label %if.end138

if.then136:                                       ; preds = %while.end133
  %76 = load ptr, ptr %zIn, align 8
  %incdec.ptr137 = getelementptr inbounds i8, ptr %76, i32 -1
  store ptr %incdec.ptr137, ptr %zIn, align 8
  br label %if.end138

if.end138:                                        ; preds = %if.then136, %while.end133
  br label %if.end170

if.else139:                                       ; preds = %if.end115
  br label %while.cond140

while.cond140:                                    ; preds = %if.end167, %if.else139
  %77 = load ptr, ptr %zEnd, align 8
  %78 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast141 = ptrtoint ptr %77 to i64
  %sub.ptr.rhs.cast142 = ptrtoint ptr %78 to i64
  %sub.ptr.sub143 = sub i64 %sub.ptr.lhs.cast141, %sub.ptr.rhs.cast142
  %conv144 = trunc i64 %sub.ptr.sub143 to i32
  %conv145 = zext i32 %conv144 to i64
  %cmp146 = icmp uge i64 %conv145, 2
  br i1 %cmp146, label %while.body148, label %while.end169

while.body148:                                    ; preds = %while.cond140
  %79 = load ptr, ptr %zIn, align 8
  %arrayidx149 = getelementptr inbounds i8, ptr %79, i64 0
  %80 = load i8, ptr %arrayidx149, align 1
  %conv150 = sext i8 %80 to i32
  %cmp151 = icmp eq i32 %conv150, 42
  br i1 %cmp151, label %land.lhs.true153, label %if.end160

land.lhs.true153:                                 ; preds = %while.body148
  %81 = load ptr, ptr %zIn, align 8
  %arrayidx154 = getelementptr inbounds i8, ptr %81, i64 1
  %82 = load i8, ptr %arrayidx154, align 1
  %conv155 = sext i8 %82 to i32
  %cmp156 = icmp eq i32 %conv155, 47
  br i1 %cmp156, label %if.then158, label %if.end160

if.then158:                                       ; preds = %land.lhs.true153
  %83 = load ptr, ptr %zIn, align 8
  %add.ptr159 = getelementptr inbounds i8, ptr %83, i64 2
  store ptr %add.ptr159, ptr %zIn, align 8
  br label %while.end169

if.end160:                                        ; preds = %land.lhs.true153, %while.body148
  %84 = load ptr, ptr %zIn, align 8
  %arrayidx161 = getelementptr inbounds i8, ptr %84, i64 0
  %85 = load i8, ptr %arrayidx161, align 1
  %conv162 = sext i8 %85 to i32
  %cmp163 = icmp eq i32 %conv162, 10
  br i1 %cmp163, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.end160
  %86 = load i32, ptr %nLine, align 4
  %inc166 = add i32 %86, 1
  store i32 %inc166, ptr %nLine, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then165, %if.end160
  %87 = load ptr, ptr %zIn, align 8
  %incdec.ptr168 = getelementptr inbounds nuw i8, ptr %87, i32 1
  store ptr %incdec.ptr168, ptr %zIn, align 8
  br label %while.cond140, !llvm.loop !10

while.end169:                                     ; preds = %if.then158, %while.cond140
  br label %if.end170

if.end170:                                        ; preds = %while.end169, %if.end138
  br label %for.cond100

for.end:                                          ; preds = %if.then114
  %88 = load ptr, ptr %zIn, align 8
  %arrayidx171 = getelementptr inbounds i8, ptr %88, i64 0
  %89 = load i8, ptr %arrayidx171, align 1
  %conv172 = sext i8 %89 to i32
  %cmp173 = icmp eq i32 %conv172, 10
  br i1 %cmp173, label %if.then175, label %if.else266

if.then175:                                       ; preds = %for.end
  %90 = load i32, ptr %nLine, align 4
  %inc176 = add i32 %90, 1
  store i32 %inc176, ptr %nLine, align 4
  %91 = load i32, ptr %iNest, align 4
  %cmp177 = icmp sgt i32 %91, 0
  br i1 %cmp177, label %if.then179, label %if.end265

if.then179:                                       ; preds = %if.then175
  %92 = load ptr, ptr %zIn, align 8
  %incdec.ptr180 = getelementptr inbounds nuw i8, ptr %92, i32 1
  store ptr %incdec.ptr180, ptr %zIn, align 8
  br label %while.cond181

while.cond181:                                    ; preds = %while.body204, %if.then179
  %93 = load ptr, ptr %zIn, align 8
  %94 = load ptr, ptr %zEnd, align 8
  %cmp182 = icmp ult ptr %93, %94
  br i1 %cmp182, label %land.lhs.true184, label %land.end203

land.lhs.true184:                                 ; preds = %while.cond181
  %95 = load ptr, ptr %zIn, align 8
  %arrayidx185 = getelementptr inbounds i8, ptr %95, i64 0
  %96 = load i8, ptr %arrayidx185, align 1
  %conv186 = zext i8 %96 to i32
  %cmp187 = icmp slt i32 %conv186, 192
  br i1 %cmp187, label %land.lhs.true189, label %land.end203

land.lhs.true189:                                 ; preds = %land.lhs.true184
  %call190 = call ptr @__ctype_b_loc() #3
  %97 = load ptr, ptr %call190, align 8
  %98 = load ptr, ptr %zIn, align 8
  %arrayidx191 = getelementptr inbounds i8, ptr %98, i64 0
  %99 = load i8, ptr %arrayidx191, align 1
  %conv192 = sext i8 %99 to i32
  %idxprom193 = sext i32 %conv192 to i64
  %arrayidx194 = getelementptr inbounds i16, ptr %97, i64 %idxprom193
  %100 = load i16, ptr %arrayidx194, align 2
  %conv195 = zext i16 %100 to i32
  %and196 = and i32 %conv195, 8192
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %land.rhs198, label %land.end203

land.rhs198:                                      ; preds = %land.lhs.true189
  %101 = load ptr, ptr %zIn, align 8
  %arrayidx199 = getelementptr inbounds i8, ptr %101, i64 0
  %102 = load i8, ptr %arrayidx199, align 1
  %conv200 = sext i8 %102 to i32
  %cmp201 = icmp ne i32 %conv200, 10
  br label %land.end203

land.end203:                                      ; preds = %land.rhs198, %land.lhs.true189, %land.lhs.true184, %while.cond181
  %103 = phi i1 [ false, %land.lhs.true189 ], [ false, %land.lhs.true184 ], [ false, %while.cond181 ], [ %cmp201, %land.rhs198 ]
  br i1 %103, label %while.body204, label %while.end206

while.body204:                                    ; preds = %land.end203
  %104 = load ptr, ptr %zIn, align 8
  %incdec.ptr205 = getelementptr inbounds nuw i8, ptr %104, i32 1
  store ptr %incdec.ptr205, ptr %zIn, align 8
  br label %while.cond181, !llvm.loop !11

while.end206:                                     ; preds = %land.end203
  %105 = load ptr, ptr %zIn, align 8
  store ptr %105, ptr %zPtr, align 8
  br label %while.cond207

while.cond207:                                    ; preds = %if.end248, %while.end206
  %106 = load ptr, ptr %zIn, align 8
  %107 = load ptr, ptr %zEnd, align 8
  %cmp208 = icmp ult ptr %106, %107
  br i1 %cmp208, label %while.body210, label %while.end249

while.body210:                                    ; preds = %while.cond207
  %108 = load ptr, ptr %zIn, align 8
  %arrayidx211 = getelementptr inbounds i8, ptr %108, i64 0
  %109 = load i8, ptr %arrayidx211, align 1
  %conv212 = zext i8 %109 to i32
  %cmp213 = icmp sge i32 %conv212, 192
  br i1 %cmp213, label %if.then215, label %if.else230

if.then215:                                       ; preds = %while.body210
  %110 = load ptr, ptr %zIn, align 8
  %incdec.ptr216 = getelementptr inbounds nuw i8, ptr %110, i32 1
  store ptr %incdec.ptr216, ptr %zIn, align 8
  br label %while.cond217

while.cond217:                                    ; preds = %while.body227, %if.then215
  %111 = load ptr, ptr %zIn, align 8
  %112 = load ptr, ptr %zEnd, align 8
  %cmp218 = icmp ult ptr %111, %112
  br i1 %cmp218, label %land.rhs220, label %land.end226

land.rhs220:                                      ; preds = %while.cond217
  %113 = load ptr, ptr %zIn, align 8
  %arrayidx221 = getelementptr inbounds i8, ptr %113, i64 0
  %114 = load i8, ptr %arrayidx221, align 1
  %conv222 = zext i8 %114 to i32
  %and223 = and i32 %conv222, 192
  %cmp224 = icmp eq i32 %and223, 128
  br label %land.end226

land.end226:                                      ; preds = %land.rhs220, %while.cond217
  %115 = phi i1 [ false, %while.cond217 ], [ %cmp224, %land.rhs220 ]
  br i1 %115, label %while.body227, label %while.end229

while.body227:                                    ; preds = %land.end226
  %116 = load ptr, ptr %zIn, align 8
  %incdec.ptr228 = getelementptr inbounds nuw i8, ptr %116, i32 1
  store ptr %incdec.ptr228, ptr %zIn, align 8
  br label %while.cond217, !llvm.loop !12

while.end229:                                     ; preds = %land.end226
  br label %if.end248

if.else230:                                       ; preds = %while.body210
  %call231 = call ptr @__ctype_b_loc() #3
  %117 = load ptr, ptr %call231, align 8
  %118 = load ptr, ptr %zIn, align 8
  %arrayidx232 = getelementptr inbounds i8, ptr %118, i64 0
  %119 = load i8, ptr %arrayidx232, align 1
  %conv233 = sext i8 %119 to i32
  %idxprom234 = sext i32 %conv233 to i64
  %arrayidx235 = getelementptr inbounds i16, ptr %117, i64 %idxprom234
  %120 = load i16, ptr %arrayidx235, align 2
  %conv236 = zext i16 %120 to i32
  %and237 = and i32 %conv236, 8
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %if.else245, label %land.lhs.true239

land.lhs.true239:                                 ; preds = %if.else230
  %121 = load ptr, ptr %zIn, align 8
  %arrayidx240 = getelementptr inbounds i8, ptr %121, i64 0
  %122 = load i8, ptr %arrayidx240, align 1
  %conv241 = sext i8 %122 to i32
  %cmp242 = icmp ne i32 %conv241, 95
  br i1 %cmp242, label %if.then244, label %if.else245

if.then244:                                       ; preds = %land.lhs.true239
  br label %while.end249

if.else245:                                       ; preds = %land.lhs.true239, %if.else230
  %123 = load ptr, ptr %zIn, align 8
  %incdec.ptr246 = getelementptr inbounds nuw i8, ptr %123, i32 1
  store ptr %incdec.ptr246, ptr %zIn, align 8
  br label %if.end247

if.end247:                                        ; preds = %if.else245
  br label %if.end248

if.end248:                                        ; preds = %if.end247, %while.end229
  br label %while.cond207, !llvm.loop !13

while.end249:                                     ; preds = %if.then244, %while.cond207
  %124 = load ptr, ptr %zIn, align 8
  %125 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast250 = ptrtoint ptr %124 to i64
  %sub.ptr.rhs.cast251 = ptrtoint ptr %125 to i64
  %sub.ptr.sub252 = sub i64 %sub.ptr.lhs.cast250, %sub.ptr.rhs.cast251
  %conv253 = trunc i64 %sub.ptr.sub252 to i32
  %nByte254 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %126 = load i32, ptr %nByte254, align 8
  %cmp255 = icmp eq i32 %conv253, %126
  br i1 %cmp255, label %land.lhs.true257, label %if.end264

land.lhs.true257:                                 ; preds = %while.end249
  %zString258 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 0
  %127 = load ptr, ptr %zString258, align 8
  %128 = load ptr, ptr %zPtr, align 8
  %nByte259 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %129 = load i32, ptr %nByte259, align 8
  %call260 = call i32 @SyMemcmp(ptr noundef %127, ptr noundef %128, i32 noundef %129)
  %cmp261 = icmp eq i32 %call260, 0
  br i1 %cmp261, label %if.then263, label %if.end264

if.then263:                                       ; preds = %land.lhs.true257
  store i32 0, ptr %iNest, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.then263, %land.lhs.true257, %while.end249
  br label %while.cond81, !llvm.loop !14

if.end265:                                        ; preds = %if.then175
  br label %if.end444

if.else266:                                       ; preds = %for.end
  %130 = load ptr, ptr %zEnd, align 8
  %131 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast267 = ptrtoint ptr %130 to i64
  %sub.ptr.rhs.cast268 = ptrtoint ptr %131 to i64
  %sub.ptr.sub269 = sub i64 %sub.ptr.lhs.cast267, %sub.ptr.rhs.cast268
  %conv270 = trunc i64 %sub.ptr.sub269 to i32
  %conv271 = zext i32 %conv270 to i64
  %cmp272 = icmp uge i64 %conv271, 4
  br i1 %cmp272, label %land.lhs.true274, label %if.end443

land.lhs.true274:                                 ; preds = %if.else266
  %132 = load ptr, ptr %zIn, align 8
  %arrayidx275 = getelementptr inbounds i8, ptr %132, i64 0
  %133 = load i8, ptr %arrayidx275, align 1
  %conv276 = sext i8 %133 to i32
  %cmp277 = icmp eq i32 %conv276, 60
  br i1 %cmp277, label %land.lhs.true279, label %if.end443

land.lhs.true279:                                 ; preds = %land.lhs.true274
  %134 = load ptr, ptr %zIn, align 8
  %arrayidx280 = getelementptr inbounds i8, ptr %134, i64 1
  %135 = load i8, ptr %arrayidx280, align 1
  %conv281 = sext i8 %135 to i32
  %cmp282 = icmp eq i32 %conv281, 60
  br i1 %cmp282, label %land.lhs.true284, label %if.end443

land.lhs.true284:                                 ; preds = %land.lhs.true279
  %136 = load ptr, ptr %zIn, align 8
  %arrayidx285 = getelementptr inbounds i8, ptr %136, i64 2
  %137 = load i8, ptr %arrayidx285, align 1
  %conv286 = sext i8 %137 to i32
  %cmp287 = icmp eq i32 %conv286, 60
  br i1 %cmp287, label %land.lhs.true289, label %if.end443

land.lhs.true289:                                 ; preds = %land.lhs.true284
  %138 = load i32, ptr %iNest, align 4
  %cmp290 = icmp slt i32 %138, 1
  br i1 %cmp290, label %if.then292, label %if.end443

if.then292:                                       ; preds = %land.lhs.true289
  %139 = load ptr, ptr %zIn, align 8
  %add.ptr293 = getelementptr inbounds nuw i8, ptr %139, i64 3
  store ptr %add.ptr293, ptr %zIn, align 8
  br label %while.cond294

while.cond294:                                    ; preds = %while.body317, %if.then292
  %140 = load ptr, ptr %zIn, align 8
  %141 = load ptr, ptr %zEnd, align 8
  %cmp295 = icmp ult ptr %140, %141
  br i1 %cmp295, label %land.lhs.true297, label %land.end316

land.lhs.true297:                                 ; preds = %while.cond294
  %142 = load ptr, ptr %zIn, align 8
  %arrayidx298 = getelementptr inbounds i8, ptr %142, i64 0
  %143 = load i8, ptr %arrayidx298, align 1
  %conv299 = zext i8 %143 to i32
  %cmp300 = icmp slt i32 %conv299, 192
  br i1 %cmp300, label %land.lhs.true302, label %land.end316

land.lhs.true302:                                 ; preds = %land.lhs.true297
  %call303 = call ptr @__ctype_b_loc() #3
  %144 = load ptr, ptr %call303, align 8
  %145 = load ptr, ptr %zIn, align 8
  %arrayidx304 = getelementptr inbounds i8, ptr %145, i64 0
  %146 = load i8, ptr %arrayidx304, align 1
  %conv305 = sext i8 %146 to i32
  %idxprom306 = sext i32 %conv305 to i64
  %arrayidx307 = getelementptr inbounds i16, ptr %144, i64 %idxprom306
  %147 = load i16, ptr %arrayidx307, align 2
  %conv308 = zext i16 %147 to i32
  %and309 = and i32 %conv308, 8192
  %tobool310 = icmp ne i32 %and309, 0
  br i1 %tobool310, label %land.rhs311, label %land.end316

land.rhs311:                                      ; preds = %land.lhs.true302
  %148 = load ptr, ptr %zIn, align 8
  %arrayidx312 = getelementptr inbounds i8, ptr %148, i64 0
  %149 = load i8, ptr %arrayidx312, align 1
  %conv313 = sext i8 %149 to i32
  %cmp314 = icmp ne i32 %conv313, 10
  br label %land.end316

land.end316:                                      ; preds = %land.rhs311, %land.lhs.true302, %land.lhs.true297, %while.cond294
  %150 = phi i1 [ false, %land.lhs.true302 ], [ false, %land.lhs.true297 ], [ false, %while.cond294 ], [ %cmp314, %land.rhs311 ]
  br i1 %150, label %while.body317, label %while.end319

while.body317:                                    ; preds = %land.end316
  %151 = load ptr, ptr %zIn, align 8
  %incdec.ptr318 = getelementptr inbounds nuw i8, ptr %151, i32 1
  store ptr %incdec.ptr318, ptr %zIn, align 8
  br label %while.cond294, !llvm.loop !15

while.end319:                                     ; preds = %land.end316
  %152 = load ptr, ptr %zIn, align 8
  %arrayidx320 = getelementptr inbounds i8, ptr %152, i64 0
  %153 = load i8, ptr %arrayidx320, align 1
  %conv321 = sext i8 %153 to i32
  %cmp322 = icmp eq i32 %conv321, 34
  br i1 %cmp322, label %if.then329, label %lor.lhs.false324

lor.lhs.false324:                                 ; preds = %while.end319
  %154 = load ptr, ptr %zIn, align 8
  %arrayidx325 = getelementptr inbounds i8, ptr %154, i64 0
  %155 = load i8, ptr %arrayidx325, align 1
  %conv326 = sext i8 %155 to i32
  %cmp327 = icmp eq i32 %conv326, 39
  br i1 %cmp327, label %if.then329, label %if.end331

if.then329:                                       ; preds = %lor.lhs.false324, %while.end319
  %156 = load ptr, ptr %zIn, align 8
  %incdec.ptr330 = getelementptr inbounds nuw i8, ptr %156, i32 1
  store ptr %incdec.ptr330, ptr %zIn, align 8
  br label %if.end331

if.end331:                                        ; preds = %if.then329, %lor.lhs.false324
  %157 = load ptr, ptr %zIn, align 8
  store ptr %157, ptr %zPtr, align 8
  br label %while.cond332

while.cond332:                                    ; preds = %if.end373, %if.end331
  %158 = load ptr, ptr %zIn, align 8
  %159 = load ptr, ptr %zEnd, align 8
  %cmp333 = icmp ult ptr %158, %159
  br i1 %cmp333, label %while.body335, label %while.end374

while.body335:                                    ; preds = %while.cond332
  %160 = load ptr, ptr %zIn, align 8
  %arrayidx336 = getelementptr inbounds i8, ptr %160, i64 0
  %161 = load i8, ptr %arrayidx336, align 1
  %conv337 = zext i8 %161 to i32
  %cmp338 = icmp sge i32 %conv337, 192
  br i1 %cmp338, label %if.then340, label %if.else355

if.then340:                                       ; preds = %while.body335
  %162 = load ptr, ptr %zIn, align 8
  %incdec.ptr341 = getelementptr inbounds nuw i8, ptr %162, i32 1
  store ptr %incdec.ptr341, ptr %zIn, align 8
  br label %while.cond342

while.cond342:                                    ; preds = %while.body352, %if.then340
  %163 = load ptr, ptr %zIn, align 8
  %164 = load ptr, ptr %zEnd, align 8
  %cmp343 = icmp ult ptr %163, %164
  br i1 %cmp343, label %land.rhs345, label %land.end351

land.rhs345:                                      ; preds = %while.cond342
  %165 = load ptr, ptr %zIn, align 8
  %arrayidx346 = getelementptr inbounds i8, ptr %165, i64 0
  %166 = load i8, ptr %arrayidx346, align 1
  %conv347 = zext i8 %166 to i32
  %and348 = and i32 %conv347, 192
  %cmp349 = icmp eq i32 %and348, 128
  br label %land.end351

land.end351:                                      ; preds = %land.rhs345, %while.cond342
  %167 = phi i1 [ false, %while.cond342 ], [ %cmp349, %land.rhs345 ]
  br i1 %167, label %while.body352, label %while.end354

while.body352:                                    ; preds = %land.end351
  %168 = load ptr, ptr %zIn, align 8
  %incdec.ptr353 = getelementptr inbounds nuw i8, ptr %168, i32 1
  store ptr %incdec.ptr353, ptr %zIn, align 8
  br label %while.cond342, !llvm.loop !16

while.end354:                                     ; preds = %land.end351
  br label %if.end373

if.else355:                                       ; preds = %while.body335
  %call356 = call ptr @__ctype_b_loc() #3
  %169 = load ptr, ptr %call356, align 8
  %170 = load ptr, ptr %zIn, align 8
  %arrayidx357 = getelementptr inbounds i8, ptr %170, i64 0
  %171 = load i8, ptr %arrayidx357, align 1
  %conv358 = sext i8 %171 to i32
  %idxprom359 = sext i32 %conv358 to i64
  %arrayidx360 = getelementptr inbounds i16, ptr %169, i64 %idxprom359
  %172 = load i16, ptr %arrayidx360, align 2
  %conv361 = zext i16 %172 to i32
  %and362 = and i32 %conv361, 8
  %tobool363 = icmp ne i32 %and362, 0
  br i1 %tobool363, label %if.else370, label %land.lhs.true364

land.lhs.true364:                                 ; preds = %if.else355
  %173 = load ptr, ptr %zIn, align 8
  %arrayidx365 = getelementptr inbounds i8, ptr %173, i64 0
  %174 = load i8, ptr %arrayidx365, align 1
  %conv366 = sext i8 %174 to i32
  %cmp367 = icmp ne i32 %conv366, 95
  br i1 %cmp367, label %if.then369, label %if.else370

if.then369:                                       ; preds = %land.lhs.true364
  br label %while.end374

if.else370:                                       ; preds = %land.lhs.true364, %if.else355
  %175 = load ptr, ptr %zIn, align 8
  %incdec.ptr371 = getelementptr inbounds nuw i8, ptr %175, i32 1
  store ptr %incdec.ptr371, ptr %zIn, align 8
  br label %if.end372

if.end372:                                        ; preds = %if.else370
  br label %if.end373

if.end373:                                        ; preds = %if.end372, %while.end354
  br label %while.cond332, !llvm.loop !17

while.end374:                                     ; preds = %if.then369, %while.cond332
  %176 = load ptr, ptr %zPtr, align 8
  %zString375 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 0
  store ptr %176, ptr %zString375, align 8
  %177 = load ptr, ptr %zIn, align 8
  %178 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast376 = ptrtoint ptr %177 to i64
  %sub.ptr.rhs.cast377 = ptrtoint ptr %178 to i64
  %sub.ptr.sub378 = sub i64 %sub.ptr.lhs.cast376, %sub.ptr.rhs.cast377
  %conv379 = trunc i64 %sub.ptr.sub378 to i32
  %nByte380 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  store i32 %conv379, ptr %nByte380, align 8
  br label %while.cond381

while.cond381:                                    ; preds = %while.body402, %while.end374
  %nByte382 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %179 = load i32, ptr %nByte382, align 8
  %cmp383 = icmp ugt i32 %179, 0
  br i1 %cmp383, label %land.lhs.true385, label %land.end401

land.lhs.true385:                                 ; preds = %while.cond381
  %zString386 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 0
  %180 = load ptr, ptr %zString386, align 8
  %arrayidx387 = getelementptr inbounds i8, ptr %180, i64 0
  %181 = load i8, ptr %arrayidx387, align 1
  %conv388 = zext i8 %181 to i32
  %cmp389 = icmp slt i32 %conv388, 192
  br i1 %cmp389, label %land.rhs391, label %land.end401

land.rhs391:                                      ; preds = %land.lhs.true385
  %call392 = call ptr @__ctype_b_loc() #3
  %182 = load ptr, ptr %call392, align 8
  %zString393 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 0
  %183 = load ptr, ptr %zString393, align 8
  %arrayidx394 = getelementptr inbounds i8, ptr %183, i64 0
  %184 = load i8, ptr %arrayidx394, align 1
  %conv395 = sext i8 %184 to i32
  %idxprom396 = sext i32 %conv395 to i64
  %arrayidx397 = getelementptr inbounds i16, ptr %182, i64 %idxprom396
  %185 = load i16, ptr %arrayidx397, align 2
  %conv398 = zext i16 %185 to i32
  %and399 = and i32 %conv398, 8192
  %tobool400 = icmp ne i32 %and399, 0
  br label %land.end401

land.end401:                                      ; preds = %land.rhs391, %land.lhs.true385, %while.cond381
  %186 = phi i1 [ false, %land.lhs.true385 ], [ false, %while.cond381 ], [ %tobool400, %land.rhs391 ]
  br i1 %186, label %while.body402, label %while.end406

while.body402:                                    ; preds = %land.end401
  %nByte403 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %187 = load i32, ptr %nByte403, align 8
  %dec = add i32 %187, -1
  store i32 %dec, ptr %nByte403, align 8
  %zString404 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 0
  %188 = load ptr, ptr %zString404, align 8
  %incdec.ptr405 = getelementptr inbounds nuw i8, ptr %188, i32 1
  store ptr %incdec.ptr405, ptr %zString404, align 8
  br label %while.cond381, !llvm.loop !18

while.end406:                                     ; preds = %land.end401
  br label %while.cond407

while.cond407:                                    ; preds = %while.body433, %while.end406
  %nByte408 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %189 = load i32, ptr %nByte408, align 8
  %cmp409 = icmp ugt i32 %189, 0
  br i1 %cmp409, label %land.lhs.true411, label %land.end432

land.lhs.true411:                                 ; preds = %while.cond407
  %zString412 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 0
  %190 = load ptr, ptr %zString412, align 8
  %nByte413 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %191 = load i32, ptr %nByte413, align 8
  %sub = sub i32 %191, 1
  %idxprom414 = zext i32 %sub to i64
  %arrayidx415 = getelementptr inbounds nuw i8, ptr %190, i64 %idxprom414
  %192 = load i8, ptr %arrayidx415, align 1
  %conv416 = zext i8 %192 to i32
  %cmp417 = icmp slt i32 %conv416, 192
  br i1 %cmp417, label %land.rhs419, label %land.end432

land.rhs419:                                      ; preds = %land.lhs.true411
  %call420 = call ptr @__ctype_b_loc() #3
  %193 = load ptr, ptr %call420, align 8
  %zString421 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 0
  %194 = load ptr, ptr %zString421, align 8
  %nByte422 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %195 = load i32, ptr %nByte422, align 8
  %sub423 = sub i32 %195, 1
  %idxprom424 = zext i32 %sub423 to i64
  %arrayidx425 = getelementptr inbounds nuw i8, ptr %194, i64 %idxprom424
  %196 = load i8, ptr %arrayidx425, align 1
  %conv426 = sext i8 %196 to i32
  %idxprom427 = sext i32 %conv426 to i64
  %arrayidx428 = getelementptr inbounds i16, ptr %193, i64 %idxprom427
  %197 = load i16, ptr %arrayidx428, align 2
  %conv429 = zext i16 %197 to i32
  %and430 = and i32 %conv429, 8192
  %tobool431 = icmp ne i32 %and430, 0
  br label %land.end432

land.end432:                                      ; preds = %land.rhs419, %land.lhs.true411, %while.cond407
  %198 = phi i1 [ false, %land.lhs.true411 ], [ false, %while.cond407 ], [ %tobool431, %land.rhs419 ]
  br i1 %198, label %while.body433, label %while.end436

while.body433:                                    ; preds = %land.end432
  %nByte434 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %199 = load i32, ptr %nByte434, align 8
  %dec435 = add i32 %199, -1
  store i32 %dec435, ptr %nByte434, align 8
  br label %while.cond407, !llvm.loop !19

while.end436:                                     ; preds = %land.end432
  %nByte437 = getelementptr inbounds nuw %struct.SyString, ptr %sDoc, i32 0, i32 1
  %200 = load i32, ptr %nByte437, align 8
  %cmp438 = icmp ugt i32 %200, 0
  br i1 %cmp438, label %if.then440, label %if.end442

if.then440:                                       ; preds = %while.end436
  %201 = load i32, ptr %iNest, align 4
  %inc441 = add nsw i32 %201, 1
  store i32 %inc441, ptr %iNest, align 4
  br label %if.end442

if.end442:                                        ; preds = %if.then440, %while.end436
  br label %while.cond81, !llvm.loop !14

if.end443:                                        ; preds = %land.lhs.true289, %land.lhs.true284, %land.lhs.true279, %land.lhs.true274, %if.else266
  br label %if.end444

if.end444:                                        ; preds = %if.end443, %if.end265
  %202 = load ptr, ptr %zIn, align 8
  %incdec.ptr445 = getelementptr inbounds nuw i8, ptr %202, i32 1
  store ptr %incdec.ptr445, ptr %zIn, align 8
  br label %while.cond81, !llvm.loop !14

while.end446:                                     ; preds = %if.then98, %while.cond81
  %203 = load ptr, ptr %zEnd, align 8
  %204 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast447 = ptrtoint ptr %203 to i64
  %sub.ptr.rhs.cast448 = ptrtoint ptr %204 to i64
  %sub.ptr.sub449 = sub i64 %sub.ptr.lhs.cast447, %sub.ptr.rhs.cast448
  %conv450 = trunc i64 %sub.ptr.sub449 to i32
  %nByte451 = getelementptr inbounds nuw %struct.SyString, ptr %sCtag, i32 0, i32 1
  %205 = load i32, ptr %nByte451, align 8
  %cmp452 = icmp ult i32 %conv450, %205
  br i1 %cmp452, label %if.then454, label %if.end455

if.then454:                                       ; preds = %while.end446
  %206 = load ptr, ptr %zEnd, align 8
  store ptr %206, ptr %zIn, align 8
  br label %if.end455

if.end455:                                        ; preds = %if.then454, %while.end446
  %207 = load ptr, ptr %zCur, align 8
  %208 = load ptr, ptr %zIn, align 8
  %cmp456 = icmp ult ptr %207, %208
  br i1 %cmp456, label %if.then458, label %if.end510

if.then458:                                       ; preds = %if.end455
  %nType459 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 1
  store i32 2, ptr %nType459, align 8
  %209 = load ptr, ptr %zCur, align 8
  %sData460 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %zString461 = getelementptr inbounds nuw %struct.SyString, ptr %sData460, i32 0, i32 0
  store ptr %209, ptr %zString461, align 8
  %210 = load ptr, ptr %zIn, align 8
  %211 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast462 = ptrtoint ptr %210 to i64
  %sub.ptr.rhs.cast463 = ptrtoint ptr %211 to i64
  %sub.ptr.sub464 = sub i64 %sub.ptr.lhs.cast462, %sub.ptr.rhs.cast463
  %conv465 = trunc i64 %sub.ptr.sub464 to i32
  %sData466 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %nByte467 = getelementptr inbounds nuw %struct.SyString, ptr %sData466, i32 0, i32 1
  store i32 %conv465, ptr %nByte467, align 8
  br label %while.cond468

while.cond468:                                    ; preds = %while.body500, %if.then458
  %sData469 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %nByte470 = getelementptr inbounds nuw %struct.SyString, ptr %sData469, i32 0, i32 1
  %212 = load i32, ptr %nByte470, align 8
  %cmp471 = icmp ugt i32 %212, 0
  br i1 %cmp471, label %land.lhs.true473, label %land.end499

land.lhs.true473:                                 ; preds = %while.cond468
  %sData474 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %zString475 = getelementptr inbounds nuw %struct.SyString, ptr %sData474, i32 0, i32 0
  %213 = load ptr, ptr %zString475, align 8
  %sData476 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %nByte477 = getelementptr inbounds nuw %struct.SyString, ptr %sData476, i32 0, i32 1
  %214 = load i32, ptr %nByte477, align 8
  %sub478 = sub i32 %214, 1
  %idxprom479 = zext i32 %sub478 to i64
  %arrayidx480 = getelementptr inbounds nuw i8, ptr %213, i64 %idxprom479
  %215 = load i8, ptr %arrayidx480, align 1
  %conv481 = zext i8 %215 to i32
  %cmp482 = icmp slt i32 %conv481, 192
  br i1 %cmp482, label %land.rhs484, label %land.end499

land.rhs484:                                      ; preds = %land.lhs.true473
  %call485 = call ptr @__ctype_b_loc() #3
  %216 = load ptr, ptr %call485, align 8
  %sData486 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %zString487 = getelementptr inbounds nuw %struct.SyString, ptr %sData486, i32 0, i32 0
  %217 = load ptr, ptr %zString487, align 8
  %sData488 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %nByte489 = getelementptr inbounds nuw %struct.SyString, ptr %sData488, i32 0, i32 1
  %218 = load i32, ptr %nByte489, align 8
  %sub490 = sub i32 %218, 1
  %idxprom491 = zext i32 %sub490 to i64
  %arrayidx492 = getelementptr inbounds nuw i8, ptr %217, i64 %idxprom491
  %219 = load i8, ptr %arrayidx492, align 1
  %conv493 = sext i8 %219 to i32
  %idxprom494 = sext i32 %conv493 to i64
  %arrayidx495 = getelementptr inbounds i16, ptr %216, i64 %idxprom494
  %220 = load i16, ptr %arrayidx495, align 2
  %conv496 = zext i16 %220 to i32
  %and497 = and i32 %conv496, 8192
  %tobool498 = icmp ne i32 %and497, 0
  br label %land.end499

land.end499:                                      ; preds = %land.rhs484, %land.lhs.true473, %while.cond468
  %221 = phi i1 [ false, %land.lhs.true473 ], [ false, %while.cond468 ], [ %tobool498, %land.rhs484 ]
  br i1 %221, label %while.body500, label %while.end504

while.body500:                                    ; preds = %land.end499
  %sData501 = getelementptr inbounds nuw %struct.SyToken, ptr %sToken, i32 0, i32 0
  %nByte502 = getelementptr inbounds nuw %struct.SyString, ptr %sData501, i32 0, i32 1
  %222 = load i32, ptr %nByte502, align 8
  %dec503 = add i32 %222, -1
  store i32 %dec503, ptr %nByte502, align 8
  br label %while.cond468, !llvm.loop !20

while.end504:                                     ; preds = %land.end499
  %223 = load ptr, ptr %pOut.addr, align 8
  %call505 = call i32 @SySetPut(ptr noundef %223, ptr noundef %sToken)
  store i32 %call505, ptr %rc, align 4
  %224 = load i32, ptr %rc, align 4
  %cmp506 = icmp ne i32 %224, 0
  br i1 %cmp506, label %if.then508, label %if.end509

if.then508:                                       ; preds = %while.end504
  %225 = load i32, ptr %rc, align 4
  store i32 %225, ptr %retval, align 4
  br label %return

if.end509:                                        ; preds = %while.end504
  br label %if.end510

if.end510:                                        ; preds = %if.end509, %if.end455
  %226 = load ptr, ptr %zIn, align 8
  %227 = load ptr, ptr %zEnd, align 8
  %cmp511 = icmp ult ptr %226, %227
  br i1 %cmp511, label %if.then513, label %if.end516

if.then513:                                       ; preds = %if.end510
  %nByte514 = getelementptr inbounds nuw %struct.SyString, ptr %sCtag, i32 0, i32 1
  %228 = load i32, ptr %nByte514, align 8
  %229 = load ptr, ptr %zIn, align 8
  %idx.ext = zext i32 %228 to i64
  %add.ptr515 = getelementptr inbounds nuw i8, ptr %229, i64 %idx.ext
  store ptr %add.ptr515, ptr %zIn, align 8
  br label %if.end516

if.end516:                                        ; preds = %if.then513, %if.end510
  br label %for.cond

for.end517:                                       ; preds = %if.then54, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end517, %if.then508, %if.then50
  %230 = load i32, ptr %retval, align 4
  ret i32 %230
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
