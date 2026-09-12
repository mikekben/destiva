; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_expr_node = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.SySet, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_expr_op = type { %struct.SyString, i32, i32, i32, i32 }

@.str.229 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.253 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.254 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.255 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.256 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.257 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.258 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.259 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.260 = external hidden unnamed_addr constant [77 x i8], align 1
@.str.261 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.262 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.263 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.264 = external hidden unnamed_addr constant [47 x i8], align 1
@.str.265 = external hidden unnamed_addr constant [90 x i8], align 1
@.str.266 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.267 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.268 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.269 = external hidden unnamed_addr constant [48 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ExprMakeTree(ptr noundef %pGen, ptr noundef %apNode, i32 noundef %nToken) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %apNode.addr = alloca ptr, align 8
  %nToken.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %iLeft = alloca i32, align 4
  %iRight = alloca i32, align 4
  %pNode = alloca ptr, align 8
  %iCur = alloca i32, align 4
  %rc = alloca i32, align 4
  %iNest = alloca i32, align 4
  %iNest59 = alloca i32, align 4
  %iPtr = alloca i32, align 4
  %nFuncTok = alloca i32, align 4
  %iArrTok = alloca i32, align 4
  %iNest247 = alloca i32, align 4
  %pToken = alloca ptr, align 8
  %xCons = alloca ptr, align 8
  %iTmp = alloca i32, align 4
  %iNest939 = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %apNode, ptr %apNode.addr, align 8
  store i32 %nToken, ptr %nToken.addr, align 4
  %0 = load i32, ptr %nToken.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %nToken.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load ptr, ptr %apNode.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %xCode = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %xCode, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, ptr %iCur, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %iCur, align 4
  %6 = load i32, ptr %nToken.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %apNode.addr, align 8
  %8 = load i32, ptr %iCur, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx3, align 8
  %cmp4 = icmp eq ptr %9, null
  br i1 %cmp4, label %if.then9, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %for.body
  %10 = load ptr, ptr %apNode.addr, align 8
  %11 = load i32, ptr %iCur, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %10, i64 %idxprom6
  %12 = load ptr, ptr %arrayidx7, align 8
  %pStart = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pStart, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nType, align 8
  %cmp8 = icmp ne i32 %14, 512
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %lor.lhs.false5, %for.body
  br label %for.inc

if.end10:                                         ; preds = %lor.lhs.false5
  store i32 1, ptr %iNest, align 4
  %15 = load i32, ptr %iCur, align 4
  store i32 %15, ptr %iLeft, align 4
  %16 = load i32, ptr %iCur, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %iCur, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.end10
  %17 = load i32, ptr %iCur, align 4
  %18 = load i32, ptr %nToken.addr, align 4
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %apNode.addr, align 8
  %20 = load i32, ptr %iCur, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %19, i64 %idxprom12
  %21 = load ptr, ptr %arrayidx13, align 8
  %tobool14 = icmp ne ptr %21, null
  br i1 %tobool14, label %if.then15, label %if.end35

if.then15:                                        ; preds = %while.body
  %22 = load ptr, ptr %apNode.addr, align 8
  %23 = load i32, ptr %iCur, align 4
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %22, i64 %idxprom16
  %24 = load ptr, ptr %arrayidx17, align 8
  %pStart18 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %pStart18, align 8
  %nType19 = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %nType19, align 8
  %and = and i32 %26, 1024
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then15
  %27 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %iNest, align 4
  %28 = load i32, ptr %iNest, align 4
  %cmp22 = icmp sle i32 %28, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then21
  br label %while.end

if.end24:                                         ; preds = %if.then21
  br label %if.end34

if.else:                                          ; preds = %if.then15
  %29 = load ptr, ptr %apNode.addr, align 8
  %30 = load i32, ptr %iCur, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds ptr, ptr %29, i64 %idxprom25
  %31 = load ptr, ptr %arrayidx26, align 8
  %pStart27 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %pStart27, align 8
  %nType28 = getelementptr inbounds nuw %struct.SyToken, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %nType28, align 8
  %and29 = and i32 %33, 512
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.else
  %34 = load i32, ptr %iNest, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, ptr %iNest, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.else
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end24
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %while.body
  %35 = load i32, ptr %iCur, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, ptr %iCur, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then23, %while.cond
  %36 = load i32, ptr %iCur, align 4
  %37 = load i32, ptr %iLeft, align 4
  %sub = sub nsw i32 %36, %37
  %cmp37 = icmp sgt i32 %sub, 1
  br i1 %cmp37, label %if.then38, label %if.end46

if.then38:                                        ; preds = %while.end
  %38 = load ptr, ptr %pGen.addr, align 8
  %39 = load ptr, ptr %apNode.addr, align 8
  %40 = load i32, ptr %iLeft, align 4
  %add = add nsw i32 %40, 1
  %idxprom39 = sext i32 %add to i64
  %arrayidx40 = getelementptr inbounds ptr, ptr %39, i64 %idxprom39
  %41 = load i32, ptr %iCur, align 4
  %42 = load i32, ptr %iLeft, align 4
  %sub41 = sub nsw i32 %41, %42
  %sub42 = sub nsw i32 %sub41, 1
  %call = call i32 @ExprMakeTree(ptr noundef %38, ptr noundef %arrayidx40, i32 noundef %sub42)
  store i32 %call, ptr %rc, align 4
  %43 = load i32, ptr %rc, align 4
  %cmp43 = icmp ne i32 %43, 0
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.then38
  %44 = load i32, ptr %rc, align 4
  store i32 %44, ptr %retval, align 4
  br label %return

if.end45:                                         ; preds = %if.then38
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %while.end
  %45 = load ptr, ptr %pGen.addr, align 8
  %46 = load ptr, ptr %apNode.addr, align 8
  %47 = load i32, ptr %iLeft, align 4
  %idxprom47 = sext i32 %47 to i64
  %arrayidx48 = getelementptr inbounds ptr, ptr %46, i64 %idxprom47
  %48 = load ptr, ptr %arrayidx48, align 8
  call void @ExprFreeTree(ptr noundef %45, ptr noundef %48)
  %49 = load ptr, ptr %pGen.addr, align 8
  %50 = load ptr, ptr %apNode.addr, align 8
  %51 = load i32, ptr %iCur, align 4
  %idxprom49 = sext i32 %51 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %50, i64 %idxprom49
  %52 = load ptr, ptr %arrayidx50, align 8
  call void @ExprFreeTree(ptr noundef %49, ptr noundef %52)
  %53 = load ptr, ptr %apNode.addr, align 8
  %54 = load i32, ptr %iLeft, align 4
  %idxprom51 = sext i32 %54 to i64
  %arrayidx52 = getelementptr inbounds ptr, ptr %53, i64 %idxprom51
  store ptr null, ptr %arrayidx52, align 8
  %55 = load ptr, ptr %apNode.addr, align 8
  %56 = load i32, ptr %iCur, align 4
  %idxprom53 = sext i32 %56 to i64
  %arrayidx54 = getelementptr inbounds ptr, ptr %55, i64 %idxprom53
  store ptr null, ptr %arrayidx54, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %if.then9
  %57 = load i32, ptr %iCur, align 4
  %inc55 = add nsw i32 %57, 1
  store i32 %inc55, ptr %iCur, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %iCur, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc125, %for.end
  %58 = load i32, ptr %iCur, align 4
  %59 = load i32, ptr %nToken.addr, align 4
  %cmp57 = icmp slt i32 %58, %59
  br i1 %cmp57, label %for.body58, label %for.end127

for.body58:                                       ; preds = %for.cond56
  %60 = load ptr, ptr %apNode.addr, align 8
  %61 = load i32, ptr %iCur, align 4
  %idxprom60 = sext i32 %61 to i64
  %arrayidx61 = getelementptr inbounds ptr, ptr %60, i64 %idxprom60
  %62 = load ptr, ptr %arrayidx61, align 8
  %cmp62 = icmp eq ptr %62, null
  br i1 %cmp62, label %if.then69, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %for.body58
  %63 = load ptr, ptr %apNode.addr, align 8
  %64 = load i32, ptr %iCur, align 4
  %idxprom64 = sext i32 %64 to i64
  %arrayidx65 = getelementptr inbounds ptr, ptr %63, i64 %idxprom64
  %65 = load ptr, ptr %arrayidx65, align 8
  %pStart66 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %65, i32 0, i32 3
  %66 = load ptr, ptr %pStart66, align 8
  %nType67 = getelementptr inbounds nuw %struct.SyToken, ptr %66, i32 0, i32 1
  %67 = load i32, ptr %nType67, align 8
  %cmp68 = icmp ne i32 %67, 64
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %lor.lhs.false63, %for.body58
  br label %for.inc125

if.end70:                                         ; preds = %lor.lhs.false63
  store i32 1, ptr %iNest59, align 4
  %68 = load i32, ptr %iCur, align 4
  store i32 %68, ptr %iLeft, align 4
  %69 = load i32, ptr %iCur, align 4
  %inc71 = add nsw i32 %69, 1
  store i32 %inc71, ptr %iCur, align 4
  br label %while.cond72

while.cond72:                                     ; preds = %if.end101, %if.end70
  %70 = load i32, ptr %iCur, align 4
  %71 = load i32, ptr %nToken.addr, align 4
  %cmp73 = icmp slt i32 %70, %71
  br i1 %cmp73, label %while.body74, label %while.end103

while.body74:                                     ; preds = %while.cond72
  %72 = load ptr, ptr %apNode.addr, align 8
  %73 = load i32, ptr %iCur, align 4
  %idxprom75 = sext i32 %73 to i64
  %arrayidx76 = getelementptr inbounds ptr, ptr %72, i64 %idxprom75
  %74 = load ptr, ptr %arrayidx76, align 8
  %tobool77 = icmp ne ptr %74, null
  br i1 %tobool77, label %if.then78, label %if.end101

if.then78:                                        ; preds = %while.body74
  %75 = load ptr, ptr %apNode.addr, align 8
  %76 = load i32, ptr %iCur, align 4
  %idxprom79 = sext i32 %76 to i64
  %arrayidx80 = getelementptr inbounds ptr, ptr %75, i64 %idxprom79
  %77 = load ptr, ptr %arrayidx80, align 8
  %pStart81 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %77, i32 0, i32 3
  %78 = load ptr, ptr %pStart81, align 8
  %nType82 = getelementptr inbounds nuw %struct.SyToken, ptr %78, i32 0, i32 1
  %79 = load i32, ptr %nType82, align 8
  %and83 = and i32 %79, 128
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.else90

if.then85:                                        ; preds = %if.then78
  %80 = load i32, ptr %iNest59, align 4
  %dec86 = add nsw i32 %80, -1
  store i32 %dec86, ptr %iNest59, align 4
  %81 = load i32, ptr %iNest59, align 4
  %cmp87 = icmp sle i32 %81, 0
  br i1 %cmp87, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.then85
  br label %while.end103

if.end89:                                         ; preds = %if.then85
  br label %if.end100

if.else90:                                        ; preds = %if.then78
  %82 = load ptr, ptr %apNode.addr, align 8
  %83 = load i32, ptr %iCur, align 4
  %idxprom91 = sext i32 %83 to i64
  %arrayidx92 = getelementptr inbounds ptr, ptr %82, i64 %idxprom91
  %84 = load ptr, ptr %arrayidx92, align 8
  %pStart93 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %84, i32 0, i32 3
  %85 = load ptr, ptr %pStart93, align 8
  %nType94 = getelementptr inbounds nuw %struct.SyToken, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %nType94, align 8
  %and95 = and i32 %86, 64
  %tobool96 = icmp ne i32 %and95, 0
  br i1 %tobool96, label %if.then97, label %if.end99

if.then97:                                        ; preds = %if.else90
  %87 = load i32, ptr %iNest59, align 4
  %inc98 = add nsw i32 %87, 1
  store i32 %inc98, ptr %iNest59, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.else90
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end89
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %while.body74
  %88 = load i32, ptr %iCur, align 4
  %inc102 = add nsw i32 %88, 1
  store i32 %inc102, ptr %iCur, align 4
  br label %while.cond72, !llvm.loop !9

while.end103:                                     ; preds = %if.then88, %while.cond72
  %89 = load i32, ptr %iCur, align 4
  %90 = load i32, ptr %iLeft, align 4
  %sub104 = sub nsw i32 %89, %90
  %cmp105 = icmp sgt i32 %sub104, 1
  br i1 %cmp105, label %if.then106, label %if.end116

if.then106:                                       ; preds = %while.end103
  %91 = load ptr, ptr %pGen.addr, align 8
  %92 = load ptr, ptr %apNode.addr, align 8
  %93 = load i32, ptr %iLeft, align 4
  %add107 = add nsw i32 %93, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds ptr, ptr %92, i64 %idxprom108
  %94 = load i32, ptr %iCur, align 4
  %95 = load i32, ptr %iLeft, align 4
  %sub110 = sub nsw i32 %94, %95
  %sub111 = sub nsw i32 %sub110, 1
  %call112 = call i32 @ExprMakeTree(ptr noundef %91, ptr noundef %arrayidx109, i32 noundef %sub111)
  store i32 %call112, ptr %rc, align 4
  %96 = load i32, ptr %rc, align 4
  %cmp113 = icmp ne i32 %96, 0
  br i1 %cmp113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.then106
  %97 = load i32, ptr %rc, align 4
  store i32 %97, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %if.then106
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %while.end103
  %98 = load ptr, ptr %pGen.addr, align 8
  %99 = load ptr, ptr %apNode.addr, align 8
  %100 = load i32, ptr %iLeft, align 4
  %idxprom117 = sext i32 %100 to i64
  %arrayidx118 = getelementptr inbounds ptr, ptr %99, i64 %idxprom117
  %101 = load ptr, ptr %arrayidx118, align 8
  call void @ExprFreeTree(ptr noundef %98, ptr noundef %101)
  %102 = load ptr, ptr %pGen.addr, align 8
  %103 = load ptr, ptr %apNode.addr, align 8
  %104 = load i32, ptr %iCur, align 4
  %idxprom119 = sext i32 %104 to i64
  %arrayidx120 = getelementptr inbounds ptr, ptr %103, i64 %idxprom119
  %105 = load ptr, ptr %arrayidx120, align 8
  call void @ExprFreeTree(ptr noundef %102, ptr noundef %105)
  %106 = load ptr, ptr %apNode.addr, align 8
  %107 = load i32, ptr %iLeft, align 4
  %idxprom121 = sext i32 %107 to i64
  %arrayidx122 = getelementptr inbounds ptr, ptr %106, i64 %idxprom121
  store ptr null, ptr %arrayidx122, align 8
  %108 = load ptr, ptr %apNode.addr, align 8
  %109 = load i32, ptr %iCur, align 4
  %idxprom123 = sext i32 %109 to i64
  %arrayidx124 = getelementptr inbounds ptr, ptr %108, i64 %idxprom123
  store ptr null, ptr %arrayidx124, align 8
  br label %for.inc125

for.inc125:                                       ; preds = %if.end116, %if.then69
  %110 = load i32, ptr %iCur, align 4
  %inc126 = add nsw i32 %110, 1
  store i32 %inc126, ptr %iCur, align 4
  br label %for.cond56, !llvm.loop !10

for.end127:                                       ; preds = %for.cond56
  store i32 -1, ptr %iLeft, align 4
  store i32 0, ptr %iCur, align 4
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc448, %for.end127
  %111 = load i32, ptr %iCur, align 4
  %112 = load i32, ptr %nToken.addr, align 4
  %cmp129 = icmp slt i32 %111, %112
  br i1 %cmp129, label %for.body130, label %for.end450

for.body130:                                      ; preds = %for.cond128
  %113 = load ptr, ptr %apNode.addr, align 8
  %114 = load i32, ptr %iCur, align 4
  %idxprom131 = sext i32 %114 to i64
  %arrayidx132 = getelementptr inbounds ptr, ptr %113, i64 %idxprom131
  %115 = load ptr, ptr %arrayidx132, align 8
  %cmp133 = icmp eq ptr %115, null
  br i1 %cmp133, label %if.then134, label %if.end135

if.then134:                                       ; preds = %for.body130
  br label %for.inc448

if.end135:                                        ; preds = %for.body130
  %116 = load ptr, ptr %apNode.addr, align 8
  %117 = load i32, ptr %iCur, align 4
  %idxprom136 = sext i32 %117 to i64
  %arrayidx137 = getelementptr inbounds ptr, ptr %116, i64 %idxprom136
  %118 = load ptr, ptr %arrayidx137, align 8
  store ptr %118, ptr %pNode, align 8
  %119 = load ptr, ptr %pNode, align 8
  %pOp = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %pOp, align 8
  %tobool138 = icmp ne ptr %120, null
  br i1 %tobool138, label %land.lhs.true139, label %if.end447

land.lhs.true139:                                 ; preds = %if.end135
  %121 = load ptr, ptr %pNode, align 8
  %pOp140 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %pOp140, align 8
  %iPrec = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %122, i32 0, i32 2
  %123 = load i32, ptr %iPrec, align 4
  %cmp141 = icmp eq i32 %123, 2
  br i1 %cmp141, label %land.lhs.true142, label %if.end447

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %124 = load ptr, ptr %pNode, align 8
  %pLeft = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %124, i32 0, i32 1
  %125 = load ptr, ptr %pLeft, align 8
  %cmp143 = icmp eq ptr %125, null
  br i1 %cmp143, label %if.then144, label %if.end447

if.then144:                                       ; preds = %land.lhs.true142
  %126 = load ptr, ptr %pNode, align 8
  %pOp145 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %126, i32 0, i32 0
  %127 = load ptr, ptr %pOp145, align 8
  %iOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %127, i32 0, i32 1
  %128 = load i32, ptr %iOp, align 8
  %cmp146 = icmp eq i32 %128, 6
  br i1 %cmp146, label %if.then147, label %if.else241

if.then147:                                       ; preds = %if.then144
  store i32 0, ptr %iPtr, align 4
  store i32 0, ptr %nFuncTok, align 4
  br label %while.cond148

while.cond148:                                    ; preds = %if.end181, %if.then147
  %129 = load i32, ptr %nFuncTok, align 4
  %130 = load i32, ptr %iCur, align 4
  %add149 = add nsw i32 %129, %130
  %131 = load i32, ptr %nToken.addr, align 4
  %cmp150 = icmp slt i32 %add149, %131
  br i1 %cmp150, label %while.body151, label %while.end183

while.body151:                                    ; preds = %while.cond148
  %132 = load ptr, ptr %apNode.addr, align 8
  %133 = load i32, ptr %nFuncTok, align 4
  %134 = load i32, ptr %iCur, align 4
  %add152 = add nsw i32 %133, %134
  %idxprom153 = sext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds ptr, ptr %132, i64 %idxprom153
  %135 = load ptr, ptr %arrayidx154, align 8
  %tobool155 = icmp ne ptr %135, null
  br i1 %tobool155, label %if.then156, label %if.end181

if.then156:                                       ; preds = %while.body151
  %136 = load ptr, ptr %apNode.addr, align 8
  %137 = load i32, ptr %nFuncTok, align 4
  %138 = load i32, ptr %iCur, align 4
  %add157 = add nsw i32 %137, %138
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds ptr, ptr %136, i64 %idxprom158
  %139 = load ptr, ptr %arrayidx159, align 8
  %pStart160 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %139, i32 0, i32 3
  %140 = load ptr, ptr %pStart160, align 8
  %nType161 = getelementptr inbounds nuw %struct.SyToken, ptr %140, i32 0, i32 1
  %141 = load i32, ptr %nType161, align 8
  %and162 = and i32 %141, 512
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.then164, label %if.else166

if.then164:                                       ; preds = %if.then156
  %142 = load i32, ptr %iPtr, align 4
  %inc165 = add nsw i32 %142, 1
  store i32 %inc165, ptr %iPtr, align 4
  br label %if.end180

if.else166:                                       ; preds = %if.then156
  %143 = load ptr, ptr %apNode.addr, align 8
  %144 = load i32, ptr %nFuncTok, align 4
  %145 = load i32, ptr %iCur, align 4
  %add167 = add nsw i32 %144, %145
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds ptr, ptr %143, i64 %idxprom168
  %146 = load ptr, ptr %arrayidx169, align 8
  %pStart170 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %146, i32 0, i32 3
  %147 = load ptr, ptr %pStart170, align 8
  %nType171 = getelementptr inbounds nuw %struct.SyToken, ptr %147, i32 0, i32 1
  %148 = load i32, ptr %nType171, align 8
  %and172 = and i32 %148, 1024
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then174, label %if.end179

if.then174:                                       ; preds = %if.else166
  %149 = load i32, ptr %iPtr, align 4
  %dec175 = add nsw i32 %149, -1
  store i32 %dec175, ptr %iPtr, align 4
  %150 = load i32, ptr %iPtr, align 4
  %cmp176 = icmp sle i32 %150, 0
  br i1 %cmp176, label %if.then177, label %if.end178

if.then177:                                       ; preds = %if.then174
  br label %while.end183

if.end178:                                        ; preds = %if.then174
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.else166
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then164
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %while.body151
  %151 = load i32, ptr %nFuncTok, align 4
  %inc182 = add nsw i32 %151, 1
  store i32 %inc182, ptr %nFuncTok, align 4
  br label %while.cond148, !llvm.loop !11

while.end183:                                     ; preds = %if.then177, %while.cond148
  %152 = load i32, ptr %nFuncTok, align 4
  %153 = load i32, ptr %iCur, align 4
  %add184 = add nsw i32 %152, %153
  %154 = load i32, ptr %nToken.addr, align 4
  %cmp185 = icmp sge i32 %add184, %154
  br i1 %cmp185, label %if.then186, label %if.end192

if.then186:                                       ; preds = %while.end183
  %155 = load ptr, ptr %pGen.addr, align 8
  %156 = load ptr, ptr %pNode, align 8
  %pStart187 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %156, i32 0, i32 3
  %157 = load ptr, ptr %pStart187, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %157, i32 0, i32 2
  %158 = load i32, ptr %nLine, align 4
  %call188 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %155, i32 noundef 1, i32 noundef %158, ptr noundef @.str.253)
  store i32 %call188, ptr %rc, align 4
  %159 = load i32, ptr %rc, align 4
  %cmp189 = icmp ne i32 %159, -10
  br i1 %cmp189, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.then186
  store i32 -12, ptr %rc, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.then186
  %160 = load i32, ptr %rc, align 4
  store i32 %160, ptr %retval, align 4
  br label %return

if.end192:                                        ; preds = %while.end183
  %161 = load i32, ptr %iLeft, align 4
  %cmp193 = icmp slt i32 %161, 0
  br i1 %cmp193, label %if.then208, label %lor.lhs.false194

lor.lhs.false194:                                 ; preds = %if.end192
  %162 = load ptr, ptr %apNode.addr, align 8
  %163 = load i32, ptr %iLeft, align 4
  %idxprom195 = sext i32 %163 to i64
  %arrayidx196 = getelementptr inbounds ptr, ptr %162, i64 %idxprom195
  %164 = load ptr, ptr %arrayidx196, align 8
  %tobool197 = icmp ne ptr %164, null
  br i1 %tobool197, label %land.lhs.true198, label %if.then208

land.lhs.true198:                                 ; preds = %lor.lhs.false194
  %165 = load ptr, ptr %apNode.addr, align 8
  %166 = load i32, ptr %iLeft, align 4
  %idxprom199 = sext i32 %166 to i64
  %arrayidx200 = getelementptr inbounds ptr, ptr %165, i64 %idxprom199
  %167 = load ptr, ptr %arrayidx200, align 8
  %pOp201 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %167, i32 0, i32 0
  %168 = load ptr, ptr %pOp201, align 8
  %tobool202 = icmp ne ptr %168, null
  br i1 %tobool202, label %lor.lhs.false203, label %if.end215

lor.lhs.false203:                                 ; preds = %land.lhs.true198
  %169 = load ptr, ptr %apNode.addr, align 8
  %170 = load i32, ptr %iLeft, align 4
  %idxprom204 = sext i32 %170 to i64
  %arrayidx205 = getelementptr inbounds ptr, ptr %169, i64 %idxprom204
  %171 = load ptr, ptr %arrayidx205, align 8
  %pLeft206 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %171, i32 0, i32 1
  %172 = load ptr, ptr %pLeft206, align 8
  %tobool207 = icmp ne ptr %172, null
  br i1 %tobool207, label %if.end215, label %if.then208

if.then208:                                       ; preds = %lor.lhs.false203, %lor.lhs.false194, %if.end192
  %173 = load ptr, ptr %pGen.addr, align 8
  %174 = load ptr, ptr %pNode, align 8
  %pStart209 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %174, i32 0, i32 3
  %175 = load ptr, ptr %pStart209, align 8
  %nLine210 = getelementptr inbounds nuw %struct.SyToken, ptr %175, i32 0, i32 2
  %176 = load i32, ptr %nLine210, align 4
  %call211 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %173, i32 noundef 1, i32 noundef %176, ptr noundef @.str.254)
  store i32 %call211, ptr %rc, align 4
  %177 = load i32, ptr %rc, align 4
  %cmp212 = icmp ne i32 %177, -10
  br i1 %cmp212, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.then208
  store i32 -12, ptr %rc, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then213, %if.then208
  %178 = load i32, ptr %rc, align 4
  store i32 %178, ptr %retval, align 4
  br label %return

if.end215:                                        ; preds = %lor.lhs.false203, %land.lhs.true198
  %179 = load i32, ptr %nFuncTok, align 4
  %cmp216 = icmp sgt i32 %179, 1
  br i1 %cmp216, label %if.then217, label %if.end226

if.then217:                                       ; preds = %if.end215
  %180 = load ptr, ptr %pGen.addr, align 8
  %181 = load ptr, ptr %pNode, align 8
  %182 = load ptr, ptr %apNode.addr, align 8
  %183 = load i32, ptr %iCur, align 4
  %add218 = add nsw i32 %183, 1
  %idxprom219 = sext i32 %add218 to i64
  %arrayidx220 = getelementptr inbounds ptr, ptr %182, i64 %idxprom219
  %184 = load i32, ptr %nFuncTok, align 4
  %sub221 = sub nsw i32 %184, 1
  %call222 = call i32 @ExprProcessFuncArguments(ptr noundef %180, ptr noundef %181, ptr noundef %arrayidx220, i32 noundef %sub221)
  store i32 %call222, ptr %rc, align 4
  %185 = load i32, ptr %rc, align 4
  %cmp223 = icmp ne i32 %185, 0
  br i1 %cmp223, label %if.then224, label %if.end225

if.then224:                                       ; preds = %if.then217
  %186 = load i32, ptr %rc, align 4
  store i32 %186, ptr %retval, align 4
  br label %return

if.end225:                                        ; preds = %if.then217
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.end215
  %187 = load ptr, ptr %apNode.addr, align 8
  %188 = load i32, ptr %iLeft, align 4
  %idxprom227 = sext i32 %188 to i64
  %arrayidx228 = getelementptr inbounds ptr, ptr %187, i64 %idxprom227
  %189 = load ptr, ptr %arrayidx228, align 8
  %190 = load ptr, ptr %pNode, align 8
  %pLeft229 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %190, i32 0, i32 1
  store ptr %189, ptr %pLeft229, align 8
  %191 = load ptr, ptr %apNode.addr, align 8
  %192 = load i32, ptr %iLeft, align 4
  %idxprom230 = sext i32 %192 to i64
  %arrayidx231 = getelementptr inbounds ptr, ptr %191, i64 %idxprom230
  store ptr null, ptr %arrayidx231, align 8
  store i32 1, ptr %iPtr, align 4
  br label %for.cond232

for.cond232:                                      ; preds = %for.inc238, %if.end226
  %193 = load i32, ptr %iPtr, align 4
  %194 = load i32, ptr %nFuncTok, align 4
  %cmp233 = icmp sle i32 %193, %194
  br i1 %cmp233, label %for.body234, label %for.end240

for.body234:                                      ; preds = %for.cond232
  %195 = load ptr, ptr %apNode.addr, align 8
  %196 = load i32, ptr %iCur, align 4
  %197 = load i32, ptr %iPtr, align 4
  %add235 = add nsw i32 %196, %197
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds ptr, ptr %195, i64 %idxprom236
  store ptr null, ptr %arrayidx237, align 8
  br label %for.inc238

for.inc238:                                       ; preds = %for.body234
  %198 = load i32, ptr %iPtr, align 4
  %inc239 = add nsw i32 %198, 1
  store i32 %inc239, ptr %iPtr, align 4
  br label %for.cond232, !llvm.loop !12

for.end240:                                       ; preds = %for.cond232
  br label %if.end446

if.else241:                                       ; preds = %if.then144
  %199 = load ptr, ptr %pNode, align 8
  %pOp242 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %199, i32 0, i32 0
  %200 = load ptr, ptr %pOp242, align 8
  %iOp243 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %200, i32 0, i32 1
  %201 = load i32, ptr %iOp243, align 8
  %cmp244 = icmp eq i32 %201, 5
  br i1 %cmp244, label %if.then245, label %if.else364

if.then245:                                       ; preds = %if.else241
  %202 = load i32, ptr %iCur, align 4
  %add246 = add nsw i32 %202, 1
  store i32 %add246, ptr %iArrTok, align 4
  store i32 1, ptr %iNest247, align 4
  %203 = load i32, ptr %iLeft, align 4
  %cmp248 = icmp slt i32 %203, 0
  br i1 %cmp248, label %if.then284, label %lor.lhs.false249

lor.lhs.false249:                                 ; preds = %if.then245
  %204 = load ptr, ptr %apNode.addr, align 8
  %205 = load i32, ptr %iLeft, align 4
  %idxprom250 = sext i32 %205 to i64
  %arrayidx251 = getelementptr inbounds ptr, ptr %204, i64 %idxprom250
  %206 = load ptr, ptr %arrayidx251, align 8
  %cmp252 = icmp eq ptr %206, null
  br i1 %cmp252, label %if.then284, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %lor.lhs.false249
  %207 = load ptr, ptr %apNode.addr, align 8
  %208 = load i32, ptr %iLeft, align 4
  %idxprom254 = sext i32 %208 to i64
  %arrayidx255 = getelementptr inbounds ptr, ptr %207, i64 %idxprom254
  %209 = load ptr, ptr %arrayidx255, align 8
  %pOp256 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %209, i32 0, i32 0
  %210 = load ptr, ptr %pOp256, align 8
  %cmp257 = icmp eq ptr %210, null
  br i1 %cmp257, label %land.lhs.true258, label %lor.lhs.false273

land.lhs.true258:                                 ; preds = %lor.lhs.false253
  %211 = load ptr, ptr %apNode.addr, align 8
  %212 = load i32, ptr %iLeft, align 4
  %idxprom259 = sext i32 %212 to i64
  %arrayidx260 = getelementptr inbounds ptr, ptr %211, i64 %idxprom259
  %213 = load ptr, ptr %arrayidx260, align 8
  %xCode261 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %213, i32 0, i32 6
  %214 = load ptr, ptr %xCode261, align 8
  %cmp262 = icmp ne ptr %214, @PH7_CompileVariable
  br i1 %cmp262, label %land.lhs.true263, label %lor.lhs.false273

land.lhs.true263:                                 ; preds = %land.lhs.true258
  %215 = load ptr, ptr %apNode.addr, align 8
  %216 = load i32, ptr %iLeft, align 4
  %idxprom264 = sext i32 %216 to i64
  %arrayidx265 = getelementptr inbounds ptr, ptr %215, i64 %idxprom264
  %217 = load ptr, ptr %arrayidx265, align 8
  %xCode266 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %217, i32 0, i32 6
  %218 = load ptr, ptr %xCode266, align 8
  %cmp267 = icmp ne ptr %218, @PH7_CompileSimpleString
  br i1 %cmp267, label %land.lhs.true268, label %lor.lhs.false273

land.lhs.true268:                                 ; preds = %land.lhs.true263
  %219 = load ptr, ptr %apNode.addr, align 8
  %220 = load i32, ptr %iLeft, align 4
  %idxprom269 = sext i32 %220 to i64
  %arrayidx270 = getelementptr inbounds ptr, ptr %219, i64 %idxprom269
  %221 = load ptr, ptr %arrayidx270, align 8
  %xCode271 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %221, i32 0, i32 6
  %222 = load ptr, ptr %xCode271, align 8
  %cmp272 = icmp ne ptr %222, @PH7_CompileString
  br i1 %cmp272, label %if.then284, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %land.lhs.true268, %land.lhs.true263, %land.lhs.true258, %lor.lhs.false253
  %223 = load ptr, ptr %apNode.addr, align 8
  %224 = load i32, ptr %iLeft, align 4
  %idxprom274 = sext i32 %224 to i64
  %arrayidx275 = getelementptr inbounds ptr, ptr %223, i64 %idxprom274
  %225 = load ptr, ptr %arrayidx275, align 8
  %pOp276 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %225, i32 0, i32 0
  %226 = load ptr, ptr %pOp276, align 8
  %tobool277 = icmp ne ptr %226, null
  br i1 %tobool277, label %land.lhs.true278, label %if.end291

land.lhs.true278:                                 ; preds = %lor.lhs.false273
  %227 = load ptr, ptr %apNode.addr, align 8
  %228 = load i32, ptr %iLeft, align 4
  %idxprom279 = sext i32 %228 to i64
  %arrayidx280 = getelementptr inbounds ptr, ptr %227, i64 %idxprom279
  %229 = load ptr, ptr %arrayidx280, align 8
  %pOp281 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %229, i32 0, i32 0
  %230 = load ptr, ptr %pOp281, align 8
  %iPrec282 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %230, i32 0, i32 2
  %231 = load i32, ptr %iPrec282, align 4
  %cmp283 = icmp ne i32 %231, 2
  br i1 %cmp283, label %if.then284, label %if.end291

if.then284:                                       ; preds = %land.lhs.true278, %land.lhs.true268, %lor.lhs.false249, %if.then245
  %232 = load ptr, ptr %pGen.addr, align 8
  %233 = load ptr, ptr %pNode, align 8
  %pStart285 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %233, i32 0, i32 3
  %234 = load ptr, ptr %pStart285, align 8
  %nLine286 = getelementptr inbounds nuw %struct.SyToken, ptr %234, i32 0, i32 2
  %235 = load i32, ptr %nLine286, align 4
  %call287 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %232, i32 noundef 1, i32 noundef %235, ptr noundef @.str.255)
  store i32 %call287, ptr %rc, align 4
  %236 = load i32, ptr %rc, align 4
  %cmp288 = icmp ne i32 %236, -10
  br i1 %cmp288, label %if.then289, label %if.end290

if.then289:                                       ; preds = %if.then284
  store i32 -12, ptr %rc, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.then289, %if.then284
  %237 = load i32, ptr %rc, align 4
  store i32 %237, ptr %retval, align 4
  br label %return

if.end291:                                        ; preds = %land.lhs.true278, %lor.lhs.false273
  br label %while.cond292

while.cond292:                                    ; preds = %if.end330, %if.end291
  %238 = load i32, ptr %iArrTok, align 4
  %239 = load i32, ptr %nToken.addr, align 4
  %cmp293 = icmp slt i32 %238, %239
  br i1 %cmp293, label %while.body294, label %while.end332

while.body294:                                    ; preds = %while.cond292
  %240 = load ptr, ptr %apNode.addr, align 8
  %241 = load i32, ptr %iArrTok, align 4
  %idxprom295 = sext i32 %241 to i64
  %arrayidx296 = getelementptr inbounds ptr, ptr %240, i64 %idxprom295
  %242 = load ptr, ptr %arrayidx296, align 8
  %tobool297 = icmp ne ptr %242, null
  br i1 %tobool297, label %if.then298, label %if.end330

if.then298:                                       ; preds = %while.body294
  %243 = load ptr, ptr %apNode.addr, align 8
  %244 = load i32, ptr %iArrTok, align 4
  %idxprom299 = sext i32 %244 to i64
  %arrayidx300 = getelementptr inbounds ptr, ptr %243, i64 %idxprom299
  %245 = load ptr, ptr %arrayidx300, align 8
  %pOp301 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %245, i32 0, i32 0
  %246 = load ptr, ptr %pOp301, align 8
  %tobool302 = icmp ne ptr %246, null
  br i1 %tobool302, label %land.lhs.true303, label %if.else316

land.lhs.true303:                                 ; preds = %if.then298
  %247 = load ptr, ptr %apNode.addr, align 8
  %248 = load i32, ptr %iArrTok, align 4
  %idxprom304 = sext i32 %248 to i64
  %arrayidx305 = getelementptr inbounds ptr, ptr %247, i64 %idxprom304
  %249 = load ptr, ptr %arrayidx305, align 8
  %pOp306 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %249, i32 0, i32 0
  %250 = load ptr, ptr %pOp306, align 8
  %iOp307 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %250, i32 0, i32 1
  %251 = load i32, ptr %iOp307, align 8
  %cmp308 = icmp eq i32 %251, 5
  br i1 %cmp308, label %land.lhs.true309, label %if.else316

land.lhs.true309:                                 ; preds = %land.lhs.true303
  %252 = load ptr, ptr %apNode.addr, align 8
  %253 = load i32, ptr %iArrTok, align 4
  %idxprom310 = sext i32 %253 to i64
  %arrayidx311 = getelementptr inbounds ptr, ptr %252, i64 %idxprom310
  %254 = load ptr, ptr %arrayidx311, align 8
  %pLeft312 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %254, i32 0, i32 1
  %255 = load ptr, ptr %pLeft312, align 8
  %cmp313 = icmp eq ptr %255, null
  br i1 %cmp313, label %if.then314, label %if.else316

if.then314:                                       ; preds = %land.lhs.true309
  %256 = load i32, ptr %iNest247, align 4
  %inc315 = add nsw i32 %256, 1
  store i32 %inc315, ptr %iNest247, align 4
  br label %if.end329

if.else316:                                       ; preds = %land.lhs.true309, %land.lhs.true303, %if.then298
  %257 = load ptr, ptr %apNode.addr, align 8
  %258 = load i32, ptr %iArrTok, align 4
  %idxprom317 = sext i32 %258 to i64
  %arrayidx318 = getelementptr inbounds ptr, ptr %257, i64 %idxprom317
  %259 = load ptr, ptr %arrayidx318, align 8
  %pStart319 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %259, i32 0, i32 3
  %260 = load ptr, ptr %pStart319, align 8
  %nType320 = getelementptr inbounds nuw %struct.SyToken, ptr %260, i32 0, i32 1
  %261 = load i32, ptr %nType320, align 8
  %and321 = and i32 %261, 4096
  %tobool322 = icmp ne i32 %and321, 0
  br i1 %tobool322, label %if.then323, label %if.end328

if.then323:                                       ; preds = %if.else316
  %262 = load i32, ptr %iNest247, align 4
  %dec324 = add nsw i32 %262, -1
  store i32 %dec324, ptr %iNest247, align 4
  %263 = load i32, ptr %iNest247, align 4
  %cmp325 = icmp sle i32 %263, 0
  br i1 %cmp325, label %if.then326, label %if.end327

if.then326:                                       ; preds = %if.then323
  br label %while.end332

if.end327:                                        ; preds = %if.then323
  br label %if.end328

if.end328:                                        ; preds = %if.end327, %if.else316
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.then314
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %while.body294
  %264 = load i32, ptr %iArrTok, align 4
  %inc331 = add nsw i32 %264, 1
  store i32 %inc331, ptr %iArrTok, align 4
  br label %while.cond292, !llvm.loop !13

while.end332:                                     ; preds = %if.then326, %while.cond292
  %265 = load i32, ptr %iArrTok, align 4
  %266 = load i32, ptr %iCur, align 4
  %add333 = add nsw i32 %266, 1
  %cmp334 = icmp sgt i32 %265, %add333
  br i1 %cmp334, label %if.then335, label %if.end349

if.then335:                                       ; preds = %while.end332
  %267 = load ptr, ptr %pGen.addr, align 8
  %268 = load ptr, ptr %apNode.addr, align 8
  %269 = load i32, ptr %iCur, align 4
  %add336 = add nsw i32 %269, 1
  %idxprom337 = sext i32 %add336 to i64
  %arrayidx338 = getelementptr inbounds ptr, ptr %268, i64 %idxprom337
  %270 = load i32, ptr %iArrTok, align 4
  %271 = load i32, ptr %iCur, align 4
  %sub339 = sub nsw i32 %270, %271
  %sub340 = sub nsw i32 %sub339, 1
  %call341 = call i32 @ExprMakeTree(ptr noundef %267, ptr noundef %arrayidx338, i32 noundef %sub340)
  store i32 %call341, ptr %rc, align 4
  %272 = load i32, ptr %rc, align 4
  %cmp342 = icmp ne i32 %272, 0
  br i1 %cmp342, label %if.then343, label %if.end344

if.then343:                                       ; preds = %if.then335
  %273 = load i32, ptr %rc, align 4
  store i32 %273, ptr %retval, align 4
  br label %return

if.end344:                                        ; preds = %if.then335
  %274 = load ptr, ptr %pNode, align 8
  %aNodeArgs = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %274, i32 0, i32 7
  %275 = load ptr, ptr %apNode.addr, align 8
  %276 = load i32, ptr %iCur, align 4
  %add345 = add nsw i32 %276, 1
  %idxprom346 = sext i32 %add345 to i64
  %arrayidx347 = getelementptr inbounds ptr, ptr %275, i64 %idxprom346
  %call348 = call i32 @SySetPut(ptr noundef %aNodeArgs, ptr noundef %arrayidx347)
  br label %if.end349

if.end349:                                        ; preds = %if.end344, %while.end332
  %277 = load ptr, ptr %apNode.addr, align 8
  %278 = load i32, ptr %iLeft, align 4
  %idxprom350 = sext i32 %278 to i64
  %arrayidx351 = getelementptr inbounds ptr, ptr %277, i64 %idxprom350
  %279 = load ptr, ptr %arrayidx351, align 8
  %280 = load ptr, ptr %pNode, align 8
  %pLeft352 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %280, i32 0, i32 1
  store ptr %279, ptr %pLeft352, align 8
  %281 = load ptr, ptr %pNode, align 8
  %pRight = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %281, i32 0, i32 2
  store ptr null, ptr %pRight, align 8
  %282 = load ptr, ptr %apNode.addr, align 8
  %283 = load i32, ptr %iLeft, align 4
  %idxprom353 = sext i32 %283 to i64
  %arrayidx354 = getelementptr inbounds ptr, ptr %282, i64 %idxprom353
  store ptr null, ptr %arrayidx354, align 8
  %284 = load i32, ptr %iCur, align 4
  %add355 = add nsw i32 %284, 1
  store i32 %add355, ptr %iNest247, align 4
  br label %for.cond356

for.cond356:                                      ; preds = %for.inc361, %if.end349
  %285 = load i32, ptr %iNest247, align 4
  %286 = load i32, ptr %iArrTok, align 4
  %cmp357 = icmp sle i32 %285, %286
  br i1 %cmp357, label %for.body358, label %for.end363

for.body358:                                      ; preds = %for.cond356
  %287 = load ptr, ptr %apNode.addr, align 8
  %288 = load i32, ptr %iNest247, align 4
  %idxprom359 = sext i32 %288 to i64
  %arrayidx360 = getelementptr inbounds ptr, ptr %287, i64 %idxprom359
  store ptr null, ptr %arrayidx360, align 8
  br label %for.inc361

for.inc361:                                       ; preds = %for.body358
  %289 = load i32, ptr %iNest247, align 4
  %inc362 = add nsw i32 %289, 1
  store i32 %inc362, ptr %iNest247, align 4
  br label %for.cond356, !llvm.loop !14

for.end363:                                       ; preds = %for.cond356
  br label %if.end445

if.else364:                                       ; preds = %if.else241
  %290 = load i32, ptr %iCur, align 4
  %add365 = add nsw i32 %290, 1
  store i32 %add365, ptr %iRight, align 4
  br label %while.cond366

while.cond366:                                    ; preds = %while.body371, %if.else364
  %291 = load i32, ptr %iRight, align 4
  %292 = load i32, ptr %nToken.addr, align 4
  %cmp367 = icmp slt i32 %291, %292
  br i1 %cmp367, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond366
  %293 = load ptr, ptr %apNode.addr, align 8
  %294 = load i32, ptr %iRight, align 4
  %idxprom368 = sext i32 %294 to i64
  %arrayidx369 = getelementptr inbounds ptr, ptr %293, i64 %idxprom368
  %295 = load ptr, ptr %arrayidx369, align 8
  %cmp370 = icmp eq ptr %295, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond366
  %296 = phi i1 [ false, %while.cond366 ], [ %cmp370, %land.rhs ]
  br i1 %296, label %while.body371, label %while.end373

while.body371:                                    ; preds = %land.end
  %297 = load i32, ptr %iRight, align 4
  %inc372 = add nsw i32 %297, 1
  store i32 %inc372, ptr %iRight, align 4
  br label %while.cond366, !llvm.loop !15

while.end373:                                     ; preds = %land.end
  %298 = load i32, ptr %iRight, align 4
  %299 = load i32, ptr %nToken.addr, align 4
  %cmp374 = icmp sge i32 %298, %299
  br i1 %cmp374, label %if.then405, label %lor.lhs.false375

lor.lhs.false375:                                 ; preds = %while.end373
  %300 = load i32, ptr %iLeft, align 4
  %cmp376 = icmp slt i32 %300, 0
  br i1 %cmp376, label %if.then405, label %lor.lhs.false377

lor.lhs.false377:                                 ; preds = %lor.lhs.false375
  %301 = load ptr, ptr %apNode.addr, align 8
  %302 = load i32, ptr %iRight, align 4
  %idxprom378 = sext i32 %302 to i64
  %arrayidx379 = getelementptr inbounds ptr, ptr %301, i64 %idxprom378
  %303 = load ptr, ptr %arrayidx379, align 8
  %tobool380 = icmp ne ptr %303, null
  br i1 %tobool380, label %land.lhs.true381, label %if.then405

land.lhs.true381:                                 ; preds = %lor.lhs.false377
  %304 = load ptr, ptr %apNode.addr, align 8
  %305 = load i32, ptr %iRight, align 4
  %idxprom382 = sext i32 %305 to i64
  %arrayidx383 = getelementptr inbounds ptr, ptr %304, i64 %idxprom382
  %306 = load ptr, ptr %arrayidx383, align 8
  %pOp384 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %306, i32 0, i32 0
  %307 = load ptr, ptr %pOp384, align 8
  %tobool385 = icmp ne ptr %307, null
  br i1 %tobool385, label %lor.lhs.false386, label %lor.lhs.false391

lor.lhs.false386:                                 ; preds = %land.lhs.true381
  %308 = load ptr, ptr %apNode.addr, align 8
  %309 = load i32, ptr %iRight, align 4
  %idxprom387 = sext i32 %309 to i64
  %arrayidx388 = getelementptr inbounds ptr, ptr %308, i64 %idxprom387
  %310 = load ptr, ptr %arrayidx388, align 8
  %pLeft389 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %310, i32 0, i32 1
  %311 = load ptr, ptr %pLeft389, align 8
  %tobool390 = icmp ne ptr %311, null
  br i1 %tobool390, label %lor.lhs.false391, label %if.then405

lor.lhs.false391:                                 ; preds = %lor.lhs.false386, %land.lhs.true381
  %312 = load ptr, ptr %apNode.addr, align 8
  %313 = load i32, ptr %iLeft, align 4
  %idxprom392 = sext i32 %313 to i64
  %arrayidx393 = getelementptr inbounds ptr, ptr %312, i64 %idxprom392
  %314 = load ptr, ptr %arrayidx393, align 8
  %tobool394 = icmp ne ptr %314, null
  br i1 %tobool394, label %land.lhs.true395, label %if.then405

land.lhs.true395:                                 ; preds = %lor.lhs.false391
  %315 = load ptr, ptr %apNode.addr, align 8
  %316 = load i32, ptr %iLeft, align 4
  %idxprom396 = sext i32 %316 to i64
  %arrayidx397 = getelementptr inbounds ptr, ptr %315, i64 %idxprom396
  %317 = load ptr, ptr %arrayidx397, align 8
  %pOp398 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %317, i32 0, i32 0
  %318 = load ptr, ptr %pOp398, align 8
  %tobool399 = icmp ne ptr %318, null
  br i1 %tobool399, label %lor.lhs.false400, label %if.end413

lor.lhs.false400:                                 ; preds = %land.lhs.true395
  %319 = load ptr, ptr %apNode.addr, align 8
  %320 = load i32, ptr %iLeft, align 4
  %idxprom401 = sext i32 %320 to i64
  %arrayidx402 = getelementptr inbounds ptr, ptr %319, i64 %idxprom401
  %321 = load ptr, ptr %arrayidx402, align 8
  %pLeft403 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %321, i32 0, i32 1
  %322 = load ptr, ptr %pLeft403, align 8
  %tobool404 = icmp ne ptr %322, null
  br i1 %tobool404, label %if.end413, label %if.then405

if.then405:                                       ; preds = %lor.lhs.false400, %lor.lhs.false391, %lor.lhs.false386, %lor.lhs.false377, %lor.lhs.false375, %while.end373
  %323 = load ptr, ptr %pGen.addr, align 8
  %324 = load ptr, ptr %pNode, align 8
  %pStart406 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %324, i32 0, i32 3
  %325 = load ptr, ptr %pStart406, align 8
  %nLine407 = getelementptr inbounds nuw %struct.SyToken, ptr %325, i32 0, i32 2
  %326 = load i32, ptr %nLine407, align 4
  %327 = load ptr, ptr %pNode, align 8
  %pOp408 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %327, i32 0, i32 0
  %328 = load ptr, ptr %pOp408, align 8
  %sOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %328, i32 0, i32 0
  %call409 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %323, i32 noundef 1, i32 noundef %326, ptr noundef @.str.256, ptr noundef %sOp)
  store i32 %call409, ptr %rc, align 4
  %329 = load i32, ptr %rc, align 4
  %cmp410 = icmp ne i32 %329, -10
  br i1 %cmp410, label %if.then411, label %if.end412

if.then411:                                       ; preds = %if.then405
  store i32 -12, ptr %rc, align 4
  br label %if.end412

if.end412:                                        ; preds = %if.then411, %if.then405
  %330 = load i32, ptr %rc, align 4
  store i32 %330, ptr %retval, align 4
  br label %return

if.end413:                                        ; preds = %lor.lhs.false400, %land.lhs.true395
  %331 = load ptr, ptr %apNode.addr, align 8
  %332 = load i32, ptr %iLeft, align 4
  %idxprom414 = sext i32 %332 to i64
  %arrayidx415 = getelementptr inbounds ptr, ptr %331, i64 %idxprom414
  %333 = load ptr, ptr %arrayidx415, align 8
  %334 = load ptr, ptr %pNode, align 8
  %pLeft416 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %334, i32 0, i32 1
  store ptr %333, ptr %pLeft416, align 8
  %335 = load ptr, ptr %pNode, align 8
  %pOp417 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %335, i32 0, i32 0
  %336 = load ptr, ptr %pOp417, align 8
  %iOp418 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %336, i32 0, i32 1
  %337 = load i32, ptr %iOp418, align 8
  %cmp419 = icmp eq i32 %337, 3
  br i1 %cmp419, label %land.lhs.true420, label %if.end437

land.lhs.true420:                                 ; preds = %if.end413
  %338 = load ptr, ptr %pNode, align 8
  %pLeft421 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %338, i32 0, i32 1
  %339 = load ptr, ptr %pLeft421, align 8
  %pOp422 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %339, i32 0, i32 0
  %340 = load ptr, ptr %pOp422, align 8
  %cmp423 = icmp eq ptr %340, null
  br i1 %cmp423, label %land.lhs.true424, label %if.end437

land.lhs.true424:                                 ; preds = %land.lhs.true420
  %341 = load ptr, ptr %pNode, align 8
  %pLeft425 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %341, i32 0, i32 1
  %342 = load ptr, ptr %pLeft425, align 8
  %xCode426 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %342, i32 0, i32 6
  %343 = load ptr, ptr %xCode426, align 8
  %cmp427 = icmp ne ptr %343, @PH7_CompileVariable
  br i1 %cmp427, label %if.then428, label %if.end437

if.then428:                                       ; preds = %land.lhs.true424
  %344 = load ptr, ptr %pGen.addr, align 8
  %345 = load ptr, ptr %pNode, align 8
  %pStart429 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %345, i32 0, i32 3
  %346 = load ptr, ptr %pStart429, align 8
  %nLine430 = getelementptr inbounds nuw %struct.SyToken, ptr %346, i32 0, i32 2
  %347 = load i32, ptr %nLine430, align 4
  %348 = load ptr, ptr %pNode, align 8
  %pOp431 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %348, i32 0, i32 0
  %349 = load ptr, ptr %pOp431, align 8
  %sOp432 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %349, i32 0, i32 0
  %call433 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %344, i32 noundef 1, i32 noundef %347, ptr noundef @.str.257, ptr noundef %sOp432)
  store i32 %call433, ptr %rc, align 4
  %350 = load i32, ptr %rc, align 4
  %cmp434 = icmp ne i32 %350, -10
  br i1 %cmp434, label %if.then435, label %if.end436

if.then435:                                       ; preds = %if.then428
  store i32 -12, ptr %rc, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.then435, %if.then428
  %351 = load i32, ptr %rc, align 4
  store i32 %351, ptr %retval, align 4
  br label %return

if.end437:                                        ; preds = %land.lhs.true424, %land.lhs.true420, %if.end413
  %352 = load ptr, ptr %apNode.addr, align 8
  %353 = load i32, ptr %iRight, align 4
  %idxprom438 = sext i32 %353 to i64
  %arrayidx439 = getelementptr inbounds ptr, ptr %352, i64 %idxprom438
  %354 = load ptr, ptr %arrayidx439, align 8
  %355 = load ptr, ptr %pNode, align 8
  %pRight440 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %355, i32 0, i32 2
  store ptr %354, ptr %pRight440, align 8
  %356 = load ptr, ptr %apNode.addr, align 8
  %357 = load i32, ptr %iRight, align 4
  %idxprom441 = sext i32 %357 to i64
  %arrayidx442 = getelementptr inbounds ptr, ptr %356, i64 %idxprom441
  store ptr null, ptr %arrayidx442, align 8
  %358 = load ptr, ptr %apNode.addr, align 8
  %359 = load i32, ptr %iLeft, align 4
  %idxprom443 = sext i32 %359 to i64
  %arrayidx444 = getelementptr inbounds ptr, ptr %358, i64 %idxprom443
  store ptr null, ptr %arrayidx444, align 8
  br label %if.end445

if.end445:                                        ; preds = %if.end437, %for.end363
  br label %if.end446

if.end446:                                        ; preds = %if.end445, %for.end240
  br label %if.end447

if.end447:                                        ; preds = %if.end446, %land.lhs.true142, %land.lhs.true139, %if.end135
  %360 = load i32, ptr %iCur, align 4
  store i32 %360, ptr %iLeft, align 4
  br label %for.inc448

for.inc448:                                       ; preds = %if.end447, %if.then134
  %361 = load i32, ptr %iCur, align 4
  %inc449 = add nsw i32 %361, 1
  store i32 %inc449, ptr %iCur, align 4
  br label %for.cond128, !llvm.loop !16

for.end450:                                       ; preds = %for.cond128
  store i32 0, ptr %iCur, align 4
  br label %for.cond451

for.cond451:                                      ; preds = %for.inc571, %for.end450
  %362 = load i32, ptr %iCur, align 4
  %363 = load i32, ptr %nToken.addr, align 4
  %cmp452 = icmp slt i32 %362, %363
  br i1 %cmp452, label %for.body453, label %for.end573

for.body453:                                      ; preds = %for.cond451
  %364 = load ptr, ptr %apNode.addr, align 8
  %365 = load i32, ptr %iCur, align 4
  %idxprom454 = sext i32 %365 to i64
  %arrayidx455 = getelementptr inbounds ptr, ptr %364, i64 %idxprom454
  %366 = load ptr, ptr %arrayidx455, align 8
  %cmp456 = icmp eq ptr %366, null
  br i1 %cmp456, label %if.then457, label %if.end458

if.then457:                                       ; preds = %for.body453
  br label %for.inc571

if.end458:                                        ; preds = %for.body453
  %367 = load ptr, ptr %apNode.addr, align 8
  %368 = load i32, ptr %iCur, align 4
  %idxprom459 = sext i32 %368 to i64
  %arrayidx460 = getelementptr inbounds ptr, ptr %367, i64 %idxprom459
  %369 = load ptr, ptr %arrayidx460, align 8
  store ptr %369, ptr %pNode, align 8
  %370 = load ptr, ptr %pNode, align 8
  %pOp461 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %370, i32 0, i32 0
  %371 = load ptr, ptr %pOp461, align 8
  %tobool462 = icmp ne ptr %371, null
  br i1 %tobool462, label %land.lhs.true463, label %if.end570

land.lhs.true463:                                 ; preds = %if.end458
  %372 = load ptr, ptr %pNode, align 8
  %pOp464 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %372, i32 0, i32 0
  %373 = load ptr, ptr %pOp464, align 8
  %iPrec465 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %373, i32 0, i32 2
  %374 = load i32, ptr %iPrec465, align 4
  %cmp466 = icmp eq i32 %374, 1
  br i1 %cmp466, label %land.lhs.true467, label %if.end570

land.lhs.true467:                                 ; preds = %land.lhs.true463
  %375 = load ptr, ptr %pNode, align 8
  %pLeft468 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %375, i32 0, i32 1
  %376 = load ptr, ptr %pLeft468, align 8
  %cmp469 = icmp eq ptr %376, null
  br i1 %cmp469, label %if.then470, label %if.end570

if.then470:                                       ; preds = %land.lhs.true467
  %377 = load i32, ptr %iCur, align 4
  %add471 = add nsw i32 %377, 1
  store i32 %add471, ptr %iLeft, align 4
  br label %while.cond472

while.cond472:                                    ; preds = %while.body479, %if.then470
  %378 = load i32, ptr %iLeft, align 4
  %379 = load i32, ptr %nToken.addr, align 4
  %cmp473 = icmp slt i32 %378, %379
  br i1 %cmp473, label %land.rhs474, label %land.end478

land.rhs474:                                      ; preds = %while.cond472
  %380 = load ptr, ptr %apNode.addr, align 8
  %381 = load i32, ptr %iLeft, align 4
  %idxprom475 = sext i32 %381 to i64
  %arrayidx476 = getelementptr inbounds ptr, ptr %380, i64 %idxprom475
  %382 = load ptr, ptr %arrayidx476, align 8
  %cmp477 = icmp eq ptr %382, null
  br label %land.end478

land.end478:                                      ; preds = %land.rhs474, %while.cond472
  %383 = phi i1 [ false, %while.cond472 ], [ %cmp477, %land.rhs474 ]
  br i1 %383, label %while.body479, label %while.end481

while.body479:                                    ; preds = %land.end478
  %384 = load i32, ptr %iLeft, align 4
  %inc480 = add nsw i32 %384, 1
  store i32 %inc480, ptr %iLeft, align 4
  br label %while.cond472, !llvm.loop !17

while.end481:                                     ; preds = %land.end478
  %385 = load i32, ptr %iLeft, align 4
  %386 = load i32, ptr %nToken.addr, align 4
  %cmp482 = icmp sge i32 %385, %386
  br i1 %cmp482, label %if.then497, label %lor.lhs.false483

lor.lhs.false483:                                 ; preds = %while.end481
  %387 = load ptr, ptr %apNode.addr, align 8
  %388 = load i32, ptr %iLeft, align 4
  %idxprom484 = sext i32 %388 to i64
  %arrayidx485 = getelementptr inbounds ptr, ptr %387, i64 %idxprom484
  %389 = load ptr, ptr %arrayidx485, align 8
  %tobool486 = icmp ne ptr %389, null
  br i1 %tobool486, label %land.lhs.true487, label %if.then497

land.lhs.true487:                                 ; preds = %lor.lhs.false483
  %390 = load ptr, ptr %apNode.addr, align 8
  %391 = load i32, ptr %iLeft, align 4
  %idxprom488 = sext i32 %391 to i64
  %arrayidx489 = getelementptr inbounds ptr, ptr %390, i64 %idxprom488
  %392 = load ptr, ptr %arrayidx489, align 8
  %pOp490 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %392, i32 0, i32 0
  %393 = load ptr, ptr %pOp490, align 8
  %tobool491 = icmp ne ptr %393, null
  br i1 %tobool491, label %lor.lhs.false492, label %if.end506

lor.lhs.false492:                                 ; preds = %land.lhs.true487
  %394 = load ptr, ptr %apNode.addr, align 8
  %395 = load i32, ptr %iLeft, align 4
  %idxprom493 = sext i32 %395 to i64
  %arrayidx494 = getelementptr inbounds ptr, ptr %394, i64 %idxprom493
  %396 = load ptr, ptr %arrayidx494, align 8
  %pLeft495 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %396, i32 0, i32 1
  %397 = load ptr, ptr %pLeft495, align 8
  %tobool496 = icmp ne ptr %397, null
  br i1 %tobool496, label %if.end506, label %if.then497

if.then497:                                       ; preds = %lor.lhs.false492, %lor.lhs.false483, %while.end481
  %398 = load ptr, ptr %pGen.addr, align 8
  %399 = load ptr, ptr %pNode, align 8
  %pStart498 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %399, i32 0, i32 3
  %400 = load ptr, ptr %pStart498, align 8
  %nLine499 = getelementptr inbounds nuw %struct.SyToken, ptr %400, i32 0, i32 2
  %401 = load i32, ptr %nLine499, align 4
  %402 = load ptr, ptr %pNode, align 8
  %pOp500 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %402, i32 0, i32 0
  %403 = load ptr, ptr %pOp500, align 8
  %sOp501 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %403, i32 0, i32 0
  %call502 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %398, i32 noundef 1, i32 noundef %401, ptr noundef @.str.258, ptr noundef %sOp501)
  store i32 %call502, ptr %rc, align 4
  %404 = load i32, ptr %rc, align 4
  %cmp503 = icmp ne i32 %404, -10
  br i1 %cmp503, label %if.then504, label %if.end505

if.then504:                                       ; preds = %if.then497
  store i32 -12, ptr %rc, align 4
  br label %if.end505

if.end505:                                        ; preds = %if.then504, %if.then497
  %405 = load i32, ptr %rc, align 4
  store i32 %405, ptr %retval, align 4
  br label %return

if.end506:                                        ; preds = %lor.lhs.false492, %land.lhs.true487
  %406 = load ptr, ptr %pNode, align 8
  %pOp507 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %406, i32 0, i32 0
  %407 = load ptr, ptr %pOp507, align 8
  %iOp508 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %407, i32 0, i32 1
  %408 = load i32, ptr %iOp508, align 8
  %cmp509 = icmp eq i32 %408, 2
  br i1 %cmp509, label %if.then510, label %if.else534

if.then510:                                       ; preds = %if.end506
  %409 = load ptr, ptr %apNode.addr, align 8
  %410 = load i32, ptr %iLeft, align 4
  %idxprom511 = sext i32 %410 to i64
  %arrayidx512 = getelementptr inbounds ptr, ptr %409, i64 %idxprom511
  %411 = load ptr, ptr %arrayidx512, align 8
  %pOp513 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %411, i32 0, i32 0
  %412 = load ptr, ptr %pOp513, align 8
  %cmp514 = icmp eq ptr %412, null
  br i1 %cmp514, label %if.then515, label %if.end533

if.then515:                                       ; preds = %if.then510
  %413 = load ptr, ptr %apNode.addr, align 8
  %414 = load i32, ptr %iLeft, align 4
  %idxprom516 = sext i32 %414 to i64
  %arrayidx517 = getelementptr inbounds ptr, ptr %413, i64 %idxprom516
  %415 = load ptr, ptr %arrayidx517, align 8
  %xCode518 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %415, i32 0, i32 6
  %416 = load ptr, ptr %xCode518, align 8
  %cmp519 = icmp ne ptr %416, @PH7_CompileVariable
  br i1 %cmp519, label %if.then520, label %if.end532

if.then520:                                       ; preds = %if.then515
  %417 = load ptr, ptr %apNode.addr, align 8
  %418 = load i32, ptr %iLeft, align 4
  %idxprom521 = sext i32 %418 to i64
  %arrayidx522 = getelementptr inbounds ptr, ptr %417, i64 %idxprom521
  %419 = load ptr, ptr %arrayidx522, align 8
  %pStart523 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %419, i32 0, i32 3
  %420 = load ptr, ptr %pStart523, align 8
  store ptr %420, ptr %pToken, align 8
  %421 = load ptr, ptr %pGen.addr, align 8
  %422 = load ptr, ptr %pNode, align 8
  %pStart524 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %422, i32 0, i32 3
  %423 = load ptr, ptr %pStart524, align 8
  %nLine525 = getelementptr inbounds nuw %struct.SyToken, ptr %423, i32 0, i32 2
  %424 = load i32, ptr %nLine525, align 4
  %425 = load ptr, ptr %pNode, align 8
  %pOp526 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %425, i32 0, i32 0
  %426 = load ptr, ptr %pOp526, align 8
  %sOp527 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %426, i32 0, i32 0
  %427 = load ptr, ptr %pToken, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %427, i32 0, i32 0
  %call528 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %421, i32 noundef 1, i32 noundef %424, ptr noundef @.str.259, ptr noundef %sOp527, ptr noundef %sData)
  store i32 %call528, ptr %rc, align 4
  %428 = load i32, ptr %rc, align 4
  %cmp529 = icmp ne i32 %428, -10
  br i1 %cmp529, label %if.then530, label %if.end531

if.then530:                                       ; preds = %if.then520
  store i32 -12, ptr %rc, align 4
  br label %if.end531

if.end531:                                        ; preds = %if.then530, %if.then520
  %429 = load i32, ptr %rc, align 4
  store i32 %429, ptr %retval, align 4
  br label %return

if.end532:                                        ; preds = %if.then515
  br label %if.end533

if.end533:                                        ; preds = %if.end532, %if.then510
  br label %if.end563

if.else534:                                       ; preds = %if.end506
  %430 = load ptr, ptr %apNode.addr, align 8
  %431 = load i32, ptr %iLeft, align 4
  %idxprom535 = sext i32 %431 to i64
  %arrayidx536 = getelementptr inbounds ptr, ptr %430, i64 %idxprom535
  %432 = load ptr, ptr %arrayidx536, align 8
  %pOp537 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %432, i32 0, i32 0
  %433 = load ptr, ptr %pOp537, align 8
  %cmp538 = icmp eq ptr %433, null
  br i1 %cmp538, label %if.then539, label %if.end562

if.then539:                                       ; preds = %if.else534
  %434 = load ptr, ptr %apNode.addr, align 8
  %435 = load i32, ptr %iLeft, align 4
  %idxprom540 = sext i32 %435 to i64
  %arrayidx541 = getelementptr inbounds ptr, ptr %434, i64 %idxprom540
  %436 = load ptr, ptr %arrayidx541, align 8
  %xCode542 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %436, i32 0, i32 6
  %437 = load ptr, ptr %xCode542, align 8
  store ptr %437, ptr %xCons, align 8
  %438 = load ptr, ptr %xCons, align 8
  %cmp543 = icmp ne ptr %438, @PH7_CompileVariable
  br i1 %cmp543, label %land.lhs.true544, label %if.end561

land.lhs.true544:                                 ; preds = %if.then539
  %439 = load ptr, ptr %xCons, align 8
  %cmp545 = icmp ne ptr %439, @PH7_CompileLiteral
  br i1 %cmp545, label %land.lhs.true546, label %if.end561

land.lhs.true546:                                 ; preds = %land.lhs.true544
  %440 = load ptr, ptr %xCons, align 8
  %cmp547 = icmp ne ptr %440, @PH7_CompileSimpleString
  br i1 %cmp547, label %if.then548, label %if.end561

if.then548:                                       ; preds = %land.lhs.true546
  %441 = load ptr, ptr %apNode.addr, align 8
  %442 = load i32, ptr %iLeft, align 4
  %idxprom549 = sext i32 %442 to i64
  %arrayidx550 = getelementptr inbounds ptr, ptr %441, i64 %idxprom549
  %443 = load ptr, ptr %arrayidx550, align 8
  %pStart551 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %443, i32 0, i32 3
  %444 = load ptr, ptr %pStart551, align 8
  store ptr %444, ptr %pToken, align 8
  %445 = load ptr, ptr %pGen.addr, align 8
  %446 = load ptr, ptr %pNode, align 8
  %pStart552 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %446, i32 0, i32 3
  %447 = load ptr, ptr %pStart552, align 8
  %nLine553 = getelementptr inbounds nuw %struct.SyToken, ptr %447, i32 0, i32 2
  %448 = load i32, ptr %nLine553, align 4
  %449 = load ptr, ptr %pNode, align 8
  %pOp554 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %449, i32 0, i32 0
  %450 = load ptr, ptr %pOp554, align 8
  %sOp555 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %450, i32 0, i32 0
  %451 = load ptr, ptr %pToken, align 8
  %sData556 = getelementptr inbounds nuw %struct.SyToken, ptr %451, i32 0, i32 0
  %call557 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %445, i32 noundef 1, i32 noundef %448, ptr noundef @.str.260, ptr noundef %sOp555, ptr noundef %sData556)
  store i32 %call557, ptr %rc, align 4
  %452 = load i32, ptr %rc, align 4
  %cmp558 = icmp ne i32 %452, -10
  br i1 %cmp558, label %if.then559, label %if.end560

if.then559:                                       ; preds = %if.then548
  store i32 -12, ptr %rc, align 4
  br label %if.end560

if.end560:                                        ; preds = %if.then559, %if.then548
  %453 = load i32, ptr %rc, align 4
  store i32 %453, ptr %retval, align 4
  br label %return

if.end561:                                        ; preds = %land.lhs.true546, %land.lhs.true544, %if.then539
  br label %if.end562

if.end562:                                        ; preds = %if.end561, %if.else534
  br label %if.end563

if.end563:                                        ; preds = %if.end562, %if.end533
  %454 = load ptr, ptr %apNode.addr, align 8
  %455 = load i32, ptr %iLeft, align 4
  %idxprom564 = sext i32 %455 to i64
  %arrayidx565 = getelementptr inbounds ptr, ptr %454, i64 %idxprom564
  %456 = load ptr, ptr %arrayidx565, align 8
  %457 = load ptr, ptr %pNode, align 8
  %pLeft566 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %457, i32 0, i32 1
  store ptr %456, ptr %pLeft566, align 8
  %458 = load ptr, ptr %apNode.addr, align 8
  %459 = load i32, ptr %iLeft, align 4
  %idxprom567 = sext i32 %459 to i64
  %arrayidx568 = getelementptr inbounds ptr, ptr %458, i64 %idxprom567
  store ptr null, ptr %arrayidx568, align 8
  %460 = load ptr, ptr %pNode, align 8
  %pRight569 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %460, i32 0, i32 2
  store ptr null, ptr %pRight569, align 8
  br label %if.end570

if.end570:                                        ; preds = %if.end563, %land.lhs.true467, %land.lhs.true463, %if.end458
  br label %for.inc571

for.inc571:                                       ; preds = %if.end570, %if.then457
  %461 = load i32, ptr %iCur, align 4
  %inc572 = add nsw i32 %461, 1
  store i32 %inc572, ptr %iCur, align 4
  br label %for.cond451, !llvm.loop !18

for.end573:                                       ; preds = %for.cond451
  store i32 -1, ptr %iLeft, align 4
  store i32 0, ptr %iCur, align 4
  br label %for.cond574

for.cond574:                                      ; preds = %for.inc619, %for.end573
  %462 = load i32, ptr %iCur, align 4
  %463 = load i32, ptr %nToken.addr, align 4
  %cmp575 = icmp slt i32 %462, %463
  br i1 %cmp575, label %for.body576, label %for.end621

for.body576:                                      ; preds = %for.cond574
  %464 = load ptr, ptr %apNode.addr, align 8
  %465 = load i32, ptr %iCur, align 4
  %idxprom577 = sext i32 %465 to i64
  %arrayidx578 = getelementptr inbounds ptr, ptr %464, i64 %idxprom577
  %466 = load ptr, ptr %arrayidx578, align 8
  %cmp579 = icmp eq ptr %466, null
  br i1 %cmp579, label %if.then580, label %if.end581

if.then580:                                       ; preds = %for.body576
  br label %for.inc619

if.end581:                                        ; preds = %for.body576
  %467 = load ptr, ptr %apNode.addr, align 8
  %468 = load i32, ptr %iCur, align 4
  %idxprom582 = sext i32 %468 to i64
  %arrayidx583 = getelementptr inbounds ptr, ptr %467, i64 %idxprom582
  %469 = load ptr, ptr %arrayidx583, align 8
  store ptr %469, ptr %pNode, align 8
  %470 = load ptr, ptr %pNode, align 8
  %pOp584 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %470, i32 0, i32 0
  %471 = load ptr, ptr %pOp584, align 8
  %tobool585 = icmp ne ptr %471, null
  br i1 %tobool585, label %land.lhs.true586, label %if.end618

land.lhs.true586:                                 ; preds = %if.end581
  %472 = load ptr, ptr %pNode, align 8
  %pOp587 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %472, i32 0, i32 0
  %473 = load ptr, ptr %pOp587, align 8
  %iPrec588 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %473, i32 0, i32 2
  %474 = load i32, ptr %iPrec588, align 4
  %cmp589 = icmp eq i32 %474, 3
  br i1 %cmp589, label %land.lhs.true590, label %if.end618

land.lhs.true590:                                 ; preds = %land.lhs.true586
  %475 = load ptr, ptr %pNode, align 8
  %pLeft591 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %475, i32 0, i32 1
  %476 = load ptr, ptr %pLeft591, align 8
  %cmp592 = icmp eq ptr %476, null
  br i1 %cmp592, label %if.then593, label %if.end618

if.then593:                                       ; preds = %land.lhs.true590
  %477 = load i32, ptr %iLeft, align 4
  %cmp594 = icmp sge i32 %477, 0
  br i1 %cmp594, label %land.lhs.true595, label %if.end617

land.lhs.true595:                                 ; preds = %if.then593
  %478 = load ptr, ptr %apNode.addr, align 8
  %479 = load i32, ptr %iLeft, align 4
  %idxprom596 = sext i32 %479 to i64
  %arrayidx597 = getelementptr inbounds ptr, ptr %478, i64 %idxprom596
  %480 = load ptr, ptr %arrayidx597, align 8
  %pOp598 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %480, i32 0, i32 0
  %481 = load ptr, ptr %pOp598, align 8
  %tobool599 = icmp ne ptr %481, null
  br i1 %tobool599, label %land.lhs.true600, label %lor.lhs.false606

land.lhs.true600:                                 ; preds = %land.lhs.true595
  %482 = load ptr, ptr %apNode.addr, align 8
  %483 = load i32, ptr %iLeft, align 4
  %idxprom601 = sext i32 %483 to i64
  %arrayidx602 = getelementptr inbounds ptr, ptr %482, i64 %idxprom601
  %484 = load ptr, ptr %arrayidx602, align 8
  %pOp603 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %484, i32 0, i32 0
  %485 = load ptr, ptr %pOp603, align 8
  %iPrec604 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %485, i32 0, i32 2
  %486 = load i32, ptr %iPrec604, align 4
  %cmp605 = icmp eq i32 %486, 2
  br i1 %cmp605, label %if.then611, label %lor.lhs.false606

lor.lhs.false606:                                 ; preds = %land.lhs.true600, %land.lhs.true595
  %487 = load ptr, ptr %apNode.addr, align 8
  %488 = load i32, ptr %iLeft, align 4
  %idxprom607 = sext i32 %488 to i64
  %arrayidx608 = getelementptr inbounds ptr, ptr %487, i64 %idxprom607
  %489 = load ptr, ptr %arrayidx608, align 8
  %xCode609 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %489, i32 0, i32 6
  %490 = load ptr, ptr %xCode609, align 8
  %cmp610 = icmp eq ptr %490, @PH7_CompileVariable
  br i1 %cmp610, label %if.then611, label %if.end617

if.then611:                                       ; preds = %lor.lhs.false606, %land.lhs.true600
  %491 = load ptr, ptr %apNode.addr, align 8
  %492 = load i32, ptr %iLeft, align 4
  %idxprom612 = sext i32 %492 to i64
  %arrayidx613 = getelementptr inbounds ptr, ptr %491, i64 %idxprom612
  %493 = load ptr, ptr %arrayidx613, align 8
  %494 = load ptr, ptr %pNode, align 8
  %pLeft614 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %494, i32 0, i32 1
  store ptr %493, ptr %pLeft614, align 8
  %495 = load ptr, ptr %apNode.addr, align 8
  %496 = load i32, ptr %iLeft, align 4
  %idxprom615 = sext i32 %496 to i64
  %arrayidx616 = getelementptr inbounds ptr, ptr %495, i64 %idxprom615
  store ptr null, ptr %arrayidx616, align 8
  br label %if.end617

if.end617:                                        ; preds = %if.then611, %lor.lhs.false606, %if.then593
  br label %if.end618

if.end618:                                        ; preds = %if.end617, %land.lhs.true590, %land.lhs.true586, %if.end581
  %497 = load i32, ptr %iCur, align 4
  store i32 %497, ptr %iLeft, align 4
  br label %for.inc619

for.inc619:                                       ; preds = %if.end618, %if.then580
  %498 = load i32, ptr %iCur, align 4
  %inc620 = add nsw i32 %498, 1
  store i32 %inc620, ptr %iCur, align 4
  br label %for.cond574, !llvm.loop !19

for.end621:                                       ; preds = %for.cond574
  store i32 -1, ptr %iLeft, align 4
  %499 = load i32, ptr %nToken.addr, align 4
  %sub622 = sub nsw i32 %499, 1
  store i32 %sub622, ptr %iCur, align 4
  br label %for.cond623

for.cond623:                                      ; preds = %for.inc681, %for.end621
  %500 = load i32, ptr %iCur, align 4
  %cmp624 = icmp sge i32 %500, 0
  br i1 %cmp624, label %for.body625, label %for.end683

for.body625:                                      ; preds = %for.cond623
  %501 = load ptr, ptr %apNode.addr, align 8
  %502 = load i32, ptr %iCur, align 4
  %idxprom626 = sext i32 %502 to i64
  %arrayidx627 = getelementptr inbounds ptr, ptr %501, i64 %idxprom626
  %503 = load ptr, ptr %arrayidx627, align 8
  %cmp628 = icmp eq ptr %503, null
  br i1 %cmp628, label %if.then629, label %if.end630

if.then629:                                       ; preds = %for.body625
  br label %for.inc681

if.end630:                                        ; preds = %for.body625
  %504 = load ptr, ptr %apNode.addr, align 8
  %505 = load i32, ptr %iCur, align 4
  %idxprom631 = sext i32 %505 to i64
  %arrayidx632 = getelementptr inbounds ptr, ptr %504, i64 %idxprom631
  %506 = load ptr, ptr %arrayidx632, align 8
  store ptr %506, ptr %pNode, align 8
  %507 = load ptr, ptr %pNode, align 8
  %pOp633 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %507, i32 0, i32 0
  %508 = load ptr, ptr %pOp633, align 8
  %tobool634 = icmp ne ptr %508, null
  br i1 %tobool634, label %land.lhs.true635, label %if.end680

land.lhs.true635:                                 ; preds = %if.end630
  %509 = load ptr, ptr %pNode, align 8
  %pOp636 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %509, i32 0, i32 0
  %510 = load ptr, ptr %pOp636, align 8
  %iPrec637 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %510, i32 0, i32 2
  %511 = load i32, ptr %iPrec637, align 4
  %cmp638 = icmp eq i32 %511, 3
  br i1 %cmp638, label %land.lhs.true639, label %if.end680

land.lhs.true639:                                 ; preds = %land.lhs.true635
  %512 = load ptr, ptr %pNode, align 8
  %pLeft640 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %512, i32 0, i32 1
  %513 = load ptr, ptr %pLeft640, align 8
  %cmp641 = icmp eq ptr %513, null
  br i1 %cmp641, label %if.then642, label %if.end680

if.then642:                                       ; preds = %land.lhs.true639
  %514 = load i32, ptr %iLeft, align 4
  %cmp643 = icmp slt i32 %514, 0
  br i1 %cmp643, label %if.then665, label %lor.lhs.false644

lor.lhs.false644:                                 ; preds = %if.then642
  %515 = load ptr, ptr %apNode.addr, align 8
  %516 = load i32, ptr %iLeft, align 4
  %idxprom645 = sext i32 %516 to i64
  %arrayidx646 = getelementptr inbounds ptr, ptr %515, i64 %idxprom645
  %517 = load ptr, ptr %arrayidx646, align 8
  %pOp647 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %517, i32 0, i32 0
  %518 = load ptr, ptr %pOp647, align 8
  %cmp648 = icmp eq ptr %518, null
  br i1 %cmp648, label %land.lhs.true649, label %lor.lhs.false654

land.lhs.true649:                                 ; preds = %lor.lhs.false644
  %519 = load ptr, ptr %apNode.addr, align 8
  %520 = load i32, ptr %iLeft, align 4
  %idxprom650 = sext i32 %520 to i64
  %arrayidx651 = getelementptr inbounds ptr, ptr %519, i64 %idxprom650
  %521 = load ptr, ptr %arrayidx651, align 8
  %xCode652 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %521, i32 0, i32 6
  %522 = load ptr, ptr %xCode652, align 8
  %cmp653 = icmp ne ptr %522, @PH7_CompileVariable
  br i1 %cmp653, label %if.then665, label %lor.lhs.false654

lor.lhs.false654:                                 ; preds = %land.lhs.true649, %lor.lhs.false644
  %523 = load ptr, ptr %apNode.addr, align 8
  %524 = load i32, ptr %iLeft, align 4
  %idxprom655 = sext i32 %524 to i64
  %arrayidx656 = getelementptr inbounds ptr, ptr %523, i64 %idxprom655
  %525 = load ptr, ptr %arrayidx656, align 8
  %pOp657 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %525, i32 0, i32 0
  %526 = load ptr, ptr %pOp657, align 8
  %tobool658 = icmp ne ptr %526, null
  br i1 %tobool658, label %land.lhs.true659, label %if.end674

land.lhs.true659:                                 ; preds = %lor.lhs.false654
  %527 = load ptr, ptr %apNode.addr, align 8
  %528 = load i32, ptr %iLeft, align 4
  %idxprom660 = sext i32 %528 to i64
  %arrayidx661 = getelementptr inbounds ptr, ptr %527, i64 %idxprom660
  %529 = load ptr, ptr %arrayidx661, align 8
  %pOp662 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %529, i32 0, i32 0
  %530 = load ptr, ptr %pOp662, align 8
  %iPrec663 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %530, i32 0, i32 2
  %531 = load i32, ptr %iPrec663, align 4
  %cmp664 = icmp ne i32 %531, 2
  br i1 %cmp664, label %if.then665, label %if.end674

if.then665:                                       ; preds = %land.lhs.true659, %land.lhs.true649, %if.then642
  %532 = load ptr, ptr %pGen.addr, align 8
  %533 = load ptr, ptr %pNode, align 8
  %pStart666 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %533, i32 0, i32 3
  %534 = load ptr, ptr %pStart666, align 8
  %nLine667 = getelementptr inbounds nuw %struct.SyToken, ptr %534, i32 0, i32 2
  %535 = load i32, ptr %nLine667, align 4
  %536 = load ptr, ptr %pNode, align 8
  %pOp668 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %536, i32 0, i32 0
  %537 = load ptr, ptr %pOp668, align 8
  %sOp669 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %537, i32 0, i32 0
  %call670 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %532, i32 noundef 1, i32 noundef %535, ptr noundef @.str.261, ptr noundef %sOp669)
  store i32 %call670, ptr %rc, align 4
  %538 = load i32, ptr %rc, align 4
  %cmp671 = icmp ne i32 %538, -10
  br i1 %cmp671, label %if.then672, label %if.end673

if.then672:                                       ; preds = %if.then665
  store i32 -12, ptr %rc, align 4
  br label %if.end673

if.end673:                                        ; preds = %if.then672, %if.then665
  %539 = load i32, ptr %rc, align 4
  store i32 %539, ptr %retval, align 4
  br label %return

if.end674:                                        ; preds = %land.lhs.true659, %lor.lhs.false654
  %540 = load ptr, ptr %apNode.addr, align 8
  %541 = load i32, ptr %iLeft, align 4
  %idxprom675 = sext i32 %541 to i64
  %arrayidx676 = getelementptr inbounds ptr, ptr %540, i64 %idxprom675
  %542 = load ptr, ptr %arrayidx676, align 8
  %543 = load ptr, ptr %pNode, align 8
  %pLeft677 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %543, i32 0, i32 1
  store ptr %542, ptr %pLeft677, align 8
  %544 = load ptr, ptr %apNode.addr, align 8
  %545 = load i32, ptr %iLeft, align 4
  %idxprom678 = sext i32 %545 to i64
  %arrayidx679 = getelementptr inbounds ptr, ptr %544, i64 %idxprom678
  store ptr null, ptr %arrayidx679, align 8
  %546 = load ptr, ptr %pNode, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %546, i32 0, i32 5
  %547 = load i32, ptr %iFlags, align 8
  %or = or i32 %547, 1
  store i32 %or, ptr %iFlags, align 8
  br label %if.end680

if.end680:                                        ; preds = %if.end674, %land.lhs.true639, %land.lhs.true635, %if.end630
  %548 = load i32, ptr %iCur, align 4
  store i32 %548, ptr %iLeft, align 4
  br label %for.inc681

for.inc681:                                       ; preds = %if.end680, %if.then629
  %549 = load i32, ptr %iCur, align 4
  %dec682 = add nsw i32 %549, -1
  store i32 %dec682, ptr %iCur, align 4
  br label %for.cond623, !llvm.loop !20

for.end683:                                       ; preds = %for.cond623
  store i32 0, ptr %iLeft, align 4
  %550 = load i32, ptr %nToken.addr, align 4
  %sub684 = sub nsw i32 %550, 1
  store i32 %sub684, ptr %iCur, align 4
  br label %for.cond685

for.cond685:                                      ; preds = %for.inc755, %for.end683
  %551 = load i32, ptr %iCur, align 4
  %cmp686 = icmp sge i32 %551, 0
  br i1 %cmp686, label %for.body687, label %for.end757

for.body687:                                      ; preds = %for.cond685
  %552 = load ptr, ptr %apNode.addr, align 8
  %553 = load i32, ptr %iCur, align 4
  %idxprom688 = sext i32 %553 to i64
  %arrayidx689 = getelementptr inbounds ptr, ptr %552, i64 %idxprom688
  %554 = load ptr, ptr %arrayidx689, align 8
  %tobool690 = icmp ne ptr %554, null
  br i1 %tobool690, label %if.then691, label %if.end754

if.then691:                                       ; preds = %for.body687
  %555 = load ptr, ptr %apNode.addr, align 8
  %556 = load i32, ptr %iCur, align 4
  %idxprom692 = sext i32 %556 to i64
  %arrayidx693 = getelementptr inbounds ptr, ptr %555, i64 %idxprom692
  %557 = load ptr, ptr %arrayidx693, align 8
  store ptr %557, ptr %pNode, align 8
  %558 = load ptr, ptr %pNode, align 8
  %pOp694 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %558, i32 0, i32 0
  %559 = load ptr, ptr %pOp694, align 8
  %tobool695 = icmp ne ptr %559, null
  br i1 %tobool695, label %land.lhs.true696, label %if.end753

land.lhs.true696:                                 ; preds = %if.then691
  %560 = load ptr, ptr %pNode, align 8
  %pOp697 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %560, i32 0, i32 0
  %561 = load ptr, ptr %pOp697, align 8
  %iPrec698 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %561, i32 0, i32 2
  %562 = load i32, ptr %iPrec698, align 4
  %cmp699 = icmp eq i32 %562, 4
  br i1 %cmp699, label %land.lhs.true700, label %if.end753

land.lhs.true700:                                 ; preds = %land.lhs.true696
  %563 = load ptr, ptr %pNode, align 8
  %pLeft701 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %563, i32 0, i32 1
  %564 = load ptr, ptr %pLeft701, align 8
  %cmp702 = icmp eq ptr %564, null
  br i1 %cmp702, label %if.then703, label %if.end753

if.then703:                                       ; preds = %land.lhs.true700
  %565 = load i32, ptr %iLeft, align 4
  %cmp704 = icmp sgt i32 %565, 0
  br i1 %cmp704, label %if.then705, label %if.else743

if.then705:                                       ; preds = %if.then703
  %566 = load ptr, ptr %apNode.addr, align 8
  %567 = load i32, ptr %iLeft, align 4
  %idxprom706 = sext i32 %567 to i64
  %arrayidx707 = getelementptr inbounds ptr, ptr %566, i64 %idxprom706
  %568 = load ptr, ptr %arrayidx707, align 8
  %569 = load ptr, ptr %pNode, align 8
  %pLeft708 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %569, i32 0, i32 1
  store ptr %568, ptr %pLeft708, align 8
  %570 = load ptr, ptr %apNode.addr, align 8
  %571 = load i32, ptr %iLeft, align 4
  %idxprom709 = sext i32 %571 to i64
  %arrayidx710 = getelementptr inbounds ptr, ptr %570, i64 %idxprom709
  store ptr null, ptr %arrayidx710, align 8
  %572 = load ptr, ptr %pNode, align 8
  %pLeft711 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %572, i32 0, i32 1
  %573 = load ptr, ptr %pLeft711, align 8
  %tobool712 = icmp ne ptr %573, null
  br i1 %tobool712, label %land.lhs.true713, label %if.end742

land.lhs.true713:                                 ; preds = %if.then705
  %574 = load ptr, ptr %pNode, align 8
  %pLeft714 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %574, i32 0, i32 1
  %575 = load ptr, ptr %pLeft714, align 8
  %pOp715 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %575, i32 0, i32 0
  %576 = load ptr, ptr %pOp715, align 8
  %tobool716 = icmp ne ptr %576, null
  br i1 %tobool716, label %land.lhs.true717, label %if.end742

land.lhs.true717:                                 ; preds = %land.lhs.true713
  %577 = load ptr, ptr %pNode, align 8
  %pLeft718 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %577, i32 0, i32 1
  %578 = load ptr, ptr %pLeft718, align 8
  %pOp719 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %578, i32 0, i32 0
  %579 = load ptr, ptr %pOp719, align 8
  %iPrec720 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %579, i32 0, i32 2
  %580 = load i32, ptr %iPrec720, align 4
  %cmp721 = icmp sgt i32 %580, 4
  br i1 %cmp721, label %if.then722, label %if.end742

if.then722:                                       ; preds = %land.lhs.true717
  %581 = load ptr, ptr %pNode, align 8
  %pLeft723 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %581, i32 0, i32 1
  %582 = load ptr, ptr %pLeft723, align 8
  %pLeft724 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %582, i32 0, i32 1
  %583 = load ptr, ptr %pLeft724, align 8
  %cmp725 = icmp eq ptr %583, null
  br i1 %cmp725, label %if.then730, label %lor.lhs.false726

lor.lhs.false726:                                 ; preds = %if.then722
  %584 = load ptr, ptr %pNode, align 8
  %pLeft727 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %584, i32 0, i32 1
  %585 = load ptr, ptr %pLeft727, align 8
  %pRight728 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %585, i32 0, i32 2
  %586 = load ptr, ptr %pRight728, align 8
  %cmp729 = icmp eq ptr %586, null
  br i1 %cmp729, label %if.then730, label %if.end741

if.then730:                                       ; preds = %lor.lhs.false726, %if.then722
  %587 = load ptr, ptr %pGen.addr, align 8
  %588 = load ptr, ptr %pNode, align 8
  %pLeft731 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %588, i32 0, i32 1
  %589 = load ptr, ptr %pLeft731, align 8
  %pStart732 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %589, i32 0, i32 3
  %590 = load ptr, ptr %pStart732, align 8
  %nLine733 = getelementptr inbounds nuw %struct.SyToken, ptr %590, i32 0, i32 2
  %591 = load i32, ptr %nLine733, align 4
  %592 = load ptr, ptr %pNode, align 8
  %pLeft734 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %592, i32 0, i32 1
  %593 = load ptr, ptr %pLeft734, align 8
  %pOp735 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %593, i32 0, i32 0
  %594 = load ptr, ptr %pOp735, align 8
  %sOp736 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %594, i32 0, i32 0
  %call737 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %587, i32 noundef 1, i32 noundef %591, ptr noundef @.str.262, ptr noundef %sOp736)
  store i32 %call737, ptr %rc, align 4
  %595 = load i32, ptr %rc, align 4
  %cmp738 = icmp ne i32 %595, -10
  br i1 %cmp738, label %if.then739, label %if.end740

if.then739:                                       ; preds = %if.then730
  store i32 -12, ptr %rc, align 4
  br label %if.end740

if.end740:                                        ; preds = %if.then739, %if.then730
  %596 = load i32, ptr %rc, align 4
  store i32 %596, ptr %retval, align 4
  br label %return

if.end741:                                        ; preds = %lor.lhs.false726
  br label %if.end742

if.end742:                                        ; preds = %if.end741, %land.lhs.true717, %land.lhs.true713, %if.then705
  br label %if.end752

if.else743:                                       ; preds = %if.then703
  %597 = load ptr, ptr %pGen.addr, align 8
  %598 = load ptr, ptr %pNode, align 8
  %pStart744 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %598, i32 0, i32 3
  %599 = load ptr, ptr %pStart744, align 8
  %nLine745 = getelementptr inbounds nuw %struct.SyToken, ptr %599, i32 0, i32 2
  %600 = load i32, ptr %nLine745, align 4
  %601 = load ptr, ptr %pNode, align 8
  %pOp746 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %601, i32 0, i32 0
  %602 = load ptr, ptr %pOp746, align 8
  %sOp747 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %602, i32 0, i32 0
  %call748 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %597, i32 noundef 1, i32 noundef %600, ptr noundef @.str.262, ptr noundef %sOp747)
  store i32 %call748, ptr %rc, align 4
  %603 = load i32, ptr %rc, align 4
  %cmp749 = icmp ne i32 %603, -10
  br i1 %cmp749, label %if.then750, label %if.end751

if.then750:                                       ; preds = %if.else743
  store i32 -12, ptr %rc, align 4
  br label %if.end751

if.end751:                                        ; preds = %if.then750, %if.else743
  %604 = load i32, ptr %rc, align 4
  store i32 %604, ptr %retval, align 4
  br label %return

if.end752:                                        ; preds = %if.end742
  br label %if.end753

if.end753:                                        ; preds = %if.end752, %land.lhs.true700, %land.lhs.true696, %if.then691
  %605 = load i32, ptr %iCur, align 4
  store i32 %605, ptr %iLeft, align 4
  br label %if.end754

if.end754:                                        ; preds = %if.end753, %for.body687
  br label %for.inc755

for.inc755:                                       ; preds = %if.end754
  %606 = load i32, ptr %iCur, align 4
  %dec756 = add nsw i32 %606, -1
  store i32 %dec756, ptr %iCur, align 4
  br label %for.cond685, !llvm.loop !21

for.end757:                                       ; preds = %for.cond685
  store i32 7, ptr %i, align 4
  br label %for.cond758

for.cond758:                                      ; preds = %for.inc916, %for.end757
  %607 = load i32, ptr %i, align 4
  %cmp759 = icmp slt i32 %607, 17
  br i1 %cmp759, label %for.body760, label %for.end918

for.body760:                                      ; preds = %for.cond758
  store i32 -1, ptr %iLeft, align 4
  store i32 0, ptr %iCur, align 4
  br label %for.cond761

for.cond761:                                      ; preds = %for.inc913, %for.body760
  %608 = load i32, ptr %iCur, align 4
  %609 = load i32, ptr %nToken.addr, align 4
  %cmp762 = icmp slt i32 %608, %609
  br i1 %cmp762, label %for.body763, label %for.end915

for.body763:                                      ; preds = %for.cond761
  %610 = load ptr, ptr %apNode.addr, align 8
  %611 = load i32, ptr %iCur, align 4
  %idxprom764 = sext i32 %611 to i64
  %arrayidx765 = getelementptr inbounds ptr, ptr %610, i64 %idxprom764
  %612 = load ptr, ptr %arrayidx765, align 8
  %cmp766 = icmp eq ptr %612, null
  br i1 %cmp766, label %if.then767, label %if.end768

if.then767:                                       ; preds = %for.body763
  br label %for.inc913

if.end768:                                        ; preds = %for.body763
  %613 = load ptr, ptr %apNode.addr, align 8
  %614 = load i32, ptr %iCur, align 4
  %idxprom769 = sext i32 %614 to i64
  %arrayidx770 = getelementptr inbounds ptr, ptr %613, i64 %idxprom769
  %615 = load ptr, ptr %arrayidx770, align 8
  store ptr %615, ptr %pNode, align 8
  %616 = load ptr, ptr %pNode, align 8
  %pOp771 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %616, i32 0, i32 0
  %617 = load ptr, ptr %pOp771, align 8
  %tobool772 = icmp ne ptr %617, null
  br i1 %tobool772, label %land.lhs.true773, label %if.end912

land.lhs.true773:                                 ; preds = %if.end768
  %618 = load ptr, ptr %pNode, align 8
  %pOp774 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %618, i32 0, i32 0
  %619 = load ptr, ptr %pOp774, align 8
  %iPrec775 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %619, i32 0, i32 2
  %620 = load i32, ptr %iPrec775, align 4
  %621 = load i32, ptr %i, align 4
  %cmp776 = icmp eq i32 %620, %621
  br i1 %cmp776, label %land.lhs.true777, label %if.end912

land.lhs.true777:                                 ; preds = %land.lhs.true773
  %622 = load ptr, ptr %pNode, align 8
  %pLeft778 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %622, i32 0, i32 1
  %623 = load ptr, ptr %pLeft778, align 8
  %cmp779 = icmp eq ptr %623, null
  br i1 %cmp779, label %if.then780, label %if.end912

if.then780:                                       ; preds = %land.lhs.true777
  %624 = load i32, ptr %iCur, align 4
  %add781 = add nsw i32 %624, 1
  store i32 %add781, ptr %iRight, align 4
  br label %while.cond782

while.cond782:                                    ; preds = %while.body789, %if.then780
  %625 = load i32, ptr %iRight, align 4
  %626 = load i32, ptr %nToken.addr, align 4
  %cmp783 = icmp slt i32 %625, %626
  br i1 %cmp783, label %land.rhs784, label %land.end788

land.rhs784:                                      ; preds = %while.cond782
  %627 = load ptr, ptr %apNode.addr, align 8
  %628 = load i32, ptr %iRight, align 4
  %idxprom785 = sext i32 %628 to i64
  %arrayidx786 = getelementptr inbounds ptr, ptr %627, i64 %idxprom785
  %629 = load ptr, ptr %arrayidx786, align 8
  %cmp787 = icmp eq ptr %629, null
  br label %land.end788

land.end788:                                      ; preds = %land.rhs784, %while.cond782
  %630 = phi i1 [ false, %while.cond782 ], [ %cmp787, %land.rhs784 ]
  br i1 %630, label %while.body789, label %while.end791

while.body789:                                    ; preds = %land.end788
  %631 = load i32, ptr %iRight, align 4
  %inc790 = add nsw i32 %631, 1
  store i32 %inc790, ptr %iRight, align 4
  br label %while.cond782, !llvm.loop !22

while.end791:                                     ; preds = %land.end788
  %632 = load i32, ptr %iRight, align 4
  %633 = load i32, ptr %nToken.addr, align 4
  %cmp792 = icmp sge i32 %632, %633
  br i1 %cmp792, label %if.then823, label %lor.lhs.false793

lor.lhs.false793:                                 ; preds = %while.end791
  %634 = load i32, ptr %iLeft, align 4
  %cmp794 = icmp slt i32 %634, 0
  br i1 %cmp794, label %if.then823, label %lor.lhs.false795

lor.lhs.false795:                                 ; preds = %lor.lhs.false793
  %635 = load ptr, ptr %apNode.addr, align 8
  %636 = load i32, ptr %iRight, align 4
  %idxprom796 = sext i32 %636 to i64
  %arrayidx797 = getelementptr inbounds ptr, ptr %635, i64 %idxprom796
  %637 = load ptr, ptr %arrayidx797, align 8
  %tobool798 = icmp ne ptr %637, null
  br i1 %tobool798, label %land.lhs.true799, label %if.then823

land.lhs.true799:                                 ; preds = %lor.lhs.false795
  %638 = load ptr, ptr %apNode.addr, align 8
  %639 = load i32, ptr %iRight, align 4
  %idxprom800 = sext i32 %639 to i64
  %arrayidx801 = getelementptr inbounds ptr, ptr %638, i64 %idxprom800
  %640 = load ptr, ptr %arrayidx801, align 8
  %pOp802 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %640, i32 0, i32 0
  %641 = load ptr, ptr %pOp802, align 8
  %tobool803 = icmp ne ptr %641, null
  br i1 %tobool803, label %lor.lhs.false804, label %lor.lhs.false809

lor.lhs.false804:                                 ; preds = %land.lhs.true799
  %642 = load ptr, ptr %apNode.addr, align 8
  %643 = load i32, ptr %iRight, align 4
  %idxprom805 = sext i32 %643 to i64
  %arrayidx806 = getelementptr inbounds ptr, ptr %642, i64 %idxprom805
  %644 = load ptr, ptr %arrayidx806, align 8
  %pLeft807 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %644, i32 0, i32 1
  %645 = load ptr, ptr %pLeft807, align 8
  %tobool808 = icmp ne ptr %645, null
  br i1 %tobool808, label %lor.lhs.false809, label %if.then823

lor.lhs.false809:                                 ; preds = %lor.lhs.false804, %land.lhs.true799
  %646 = load ptr, ptr %apNode.addr, align 8
  %647 = load i32, ptr %iLeft, align 4
  %idxprom810 = sext i32 %647 to i64
  %arrayidx811 = getelementptr inbounds ptr, ptr %646, i64 %idxprom810
  %648 = load ptr, ptr %arrayidx811, align 8
  %tobool812 = icmp ne ptr %648, null
  br i1 %tobool812, label %land.lhs.true813, label %if.then823

land.lhs.true813:                                 ; preds = %lor.lhs.false809
  %649 = load ptr, ptr %apNode.addr, align 8
  %650 = load i32, ptr %iLeft, align 4
  %idxprom814 = sext i32 %650 to i64
  %arrayidx815 = getelementptr inbounds ptr, ptr %649, i64 %idxprom814
  %651 = load ptr, ptr %arrayidx815, align 8
  %pOp816 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %651, i32 0, i32 0
  %652 = load ptr, ptr %pOp816, align 8
  %tobool817 = icmp ne ptr %652, null
  br i1 %tobool817, label %lor.lhs.false818, label %if.end832

lor.lhs.false818:                                 ; preds = %land.lhs.true813
  %653 = load ptr, ptr %apNode.addr, align 8
  %654 = load i32, ptr %iLeft, align 4
  %idxprom819 = sext i32 %654 to i64
  %arrayidx820 = getelementptr inbounds ptr, ptr %653, i64 %idxprom819
  %655 = load ptr, ptr %arrayidx820, align 8
  %pLeft821 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %655, i32 0, i32 1
  %656 = load ptr, ptr %pLeft821, align 8
  %tobool822 = icmp ne ptr %656, null
  br i1 %tobool822, label %if.end832, label %if.then823

if.then823:                                       ; preds = %lor.lhs.false818, %lor.lhs.false809, %lor.lhs.false804, %lor.lhs.false795, %lor.lhs.false793, %while.end791
  %657 = load ptr, ptr %pGen.addr, align 8
  %658 = load ptr, ptr %pNode, align 8
  %pStart824 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %658, i32 0, i32 3
  %659 = load ptr, ptr %pStart824, align 8
  %nLine825 = getelementptr inbounds nuw %struct.SyToken, ptr %659, i32 0, i32 2
  %660 = load i32, ptr %nLine825, align 4
  %661 = load ptr, ptr %pNode, align 8
  %pOp826 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %661, i32 0, i32 0
  %662 = load ptr, ptr %pOp826, align 8
  %sOp827 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %662, i32 0, i32 0
  %call828 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %657, i32 noundef 1, i32 noundef %660, ptr noundef @.str.263, ptr noundef %sOp827)
  store i32 %call828, ptr %rc, align 4
  %663 = load i32, ptr %rc, align 4
  %cmp829 = icmp ne i32 %663, -10
  br i1 %cmp829, label %if.then830, label %if.end831

if.then830:                                       ; preds = %if.then823
  store i32 -12, ptr %rc, align 4
  br label %if.end831

if.end831:                                        ; preds = %if.then830, %if.then823
  %664 = load i32, ptr %rc, align 4
  store i32 %664, ptr %retval, align 4
  br label %return

if.end832:                                        ; preds = %lor.lhs.false818, %land.lhs.true813
  %665 = load ptr, ptr %pNode, align 8
  %pOp833 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %665, i32 0, i32 0
  %666 = load ptr, ptr %pOp833, align 8
  %iOp834 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %666, i32 0, i32 1
  %667 = load i32, ptr %iOp834, align 8
  %cmp835 = icmp eq i32 %667, 35
  br i1 %cmp835, label %if.then836, label %if.end901

if.then836:                                       ; preds = %if.end832
  %668 = load ptr, ptr %apNode.addr, align 8
  %669 = load i32, ptr %iLeft, align 4
  %idxprom837 = sext i32 %669 to i64
  %arrayidx838 = getelementptr inbounds ptr, ptr %668, i64 %idxprom837
  %670 = load ptr, ptr %arrayidx838, align 8
  %call839 = call i32 @ExprIsModifiableValue(ptr noundef %670, i8 noundef zeroext 0)
  %cmp840 = icmp eq i32 %call839, 0
  br i1 %cmp840, label %if.then851, label %lor.lhs.false841

lor.lhs.false841:                                 ; preds = %if.then836
  %671 = load ptr, ptr %apNode.addr, align 8
  %672 = load i32, ptr %iLeft, align 4
  %idxprom842 = sext i32 %672 to i64
  %arrayidx843 = getelementptr inbounds ptr, ptr %671, i64 %idxprom842
  %673 = load ptr, ptr %arrayidx843, align 8
  %pOp844 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %673, i32 0, i32 0
  %674 = load ptr, ptr %pOp844, align 8
  %tobool845 = icmp ne ptr %674, null
  br i1 %tobool845, label %land.lhs.true846, label %if.end858

land.lhs.true846:                                 ; preds = %lor.lhs.false841
  %675 = load ptr, ptr %apNode.addr, align 8
  %676 = load i32, ptr %iLeft, align 4
  %idxprom847 = sext i32 %676 to i64
  %arrayidx848 = getelementptr inbounds ptr, ptr %675, i64 %idxprom847
  %677 = load ptr, ptr %arrayidx848, align 8
  %pOp849 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %677, i32 0, i32 0
  %678 = load ptr, ptr %pOp849, align 8
  %iVmOp = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %678, i32 0, i32 4
  %679 = load i32, ptr %iVmOp, align 4
  %cmp850 = icmp eq i32 %679, 72
  br i1 %cmp850, label %if.then851, label %if.end858

if.then851:                                       ; preds = %land.lhs.true846, %if.then836
  %680 = load ptr, ptr %pGen.addr, align 8
  %681 = load ptr, ptr %pNode, align 8
  %pStart852 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %681, i32 0, i32 3
  %682 = load ptr, ptr %pStart852, align 8
  %nLine853 = getelementptr inbounds nuw %struct.SyToken, ptr %682, i32 0, i32 2
  %683 = load i32, ptr %nLine853, align 4
  %call854 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %680, i32 noundef 1, i32 noundef %683, ptr noundef @.str.264)
  store i32 %call854, ptr %rc, align 4
  %684 = load i32, ptr %rc, align 4
  %cmp855 = icmp ne i32 %684, -10
  br i1 %cmp855, label %if.then856, label %if.end857

if.then856:                                       ; preds = %if.then851
  store i32 -12, ptr %rc, align 4
  br label %if.end857

if.end857:                                        ; preds = %if.then856, %if.then851
  %685 = load i32, ptr %rc, align 4
  store i32 %685, ptr %retval, align 4
  br label %return

if.end858:                                        ; preds = %land.lhs.true846, %lor.lhs.false841
  %686 = load ptr, ptr %apNode.addr, align 8
  %687 = load i32, ptr %iLeft, align 4
  %idxprom859 = sext i32 %687 to i64
  %arrayidx860 = getelementptr inbounds ptr, ptr %686, i64 %idxprom859
  %688 = load ptr, ptr %arrayidx860, align 8
  %pOp861 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %688, i32 0, i32 0
  %689 = load ptr, ptr %pOp861, align 8
  %cmp862 = icmp eq ptr %689, null
  br i1 %cmp862, label %if.then869, label %lor.lhs.false863

lor.lhs.false863:                                 ; preds = %if.end858
  %690 = load ptr, ptr %apNode.addr, align 8
  %691 = load i32, ptr %iLeft, align 4
  %idxprom864 = sext i32 %691 to i64
  %arrayidx865 = getelementptr inbounds ptr, ptr %690, i64 %idxprom864
  %692 = load ptr, ptr %arrayidx865, align 8
  %pOp866 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %692, i32 0, i32 0
  %693 = load ptr, ptr %pOp866, align 8
  %iOp867 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %693, i32 0, i32 1
  %694 = load i32, ptr %iOp867, align 8
  %cmp868 = icmp ne i32 %694, 5
  br i1 %cmp868, label %if.then869, label %if.end900

if.then869:                                       ; preds = %lor.lhs.false863, %if.end858
  %695 = load ptr, ptr %apNode.addr, align 8
  %696 = load i32, ptr %iRight, align 4
  %idxprom870 = sext i32 %696 to i64
  %arrayidx871 = getelementptr inbounds ptr, ptr %695, i64 %idxprom870
  %697 = load ptr, ptr %arrayidx871, align 8
  %call872 = call i32 @ExprIsModifiableValue(ptr noundef %697, i8 noundef zeroext 1)
  %cmp873 = icmp eq i32 %call872, 0
  br i1 %cmp873, label %if.then874, label %if.end899

if.then874:                                       ; preds = %if.then869
  %698 = load ptr, ptr %apNode.addr, align 8
  %699 = load i32, ptr %iRight, align 4
  %idxprom875 = sext i32 %699 to i64
  %arrayidx876 = getelementptr inbounds ptr, ptr %698, i64 %idxprom875
  %700 = load ptr, ptr %arrayidx876, align 8
  %pOp877 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %700, i32 0, i32 0
  %701 = load ptr, ptr %pOp877, align 8
  %cmp878 = icmp eq ptr %701, null
  br i1 %cmp878, label %if.then891, label %lor.lhs.false879

lor.lhs.false879:                                 ; preds = %if.then874
  %702 = load ptr, ptr %apNode.addr, align 8
  %703 = load i32, ptr %iRight, align 4
  %idxprom880 = sext i32 %703 to i64
  %arrayidx881 = getelementptr inbounds ptr, ptr %702, i64 %idxprom880
  %704 = load ptr, ptr %arrayidx881, align 8
  %pOp882 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %704, i32 0, i32 0
  %705 = load ptr, ptr %pOp882, align 8
  %iOp883 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %705, i32 0, i32 1
  %706 = load i32, ptr %iOp883, align 8
  %cmp884 = icmp ne i32 %706, 1
  br i1 %cmp884, label %land.lhs.true885, label %if.end898

land.lhs.true885:                                 ; preds = %lor.lhs.false879
  %707 = load ptr, ptr %apNode.addr, align 8
  %708 = load i32, ptr %iRight, align 4
  %idxprom886 = sext i32 %708 to i64
  %arrayidx887 = getelementptr inbounds ptr, ptr %707, i64 %idxprom886
  %709 = load ptr, ptr %arrayidx887, align 8
  %pOp888 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %709, i32 0, i32 0
  %710 = load ptr, ptr %pOp888, align 8
  %iOp889 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %710, i32 0, i32 1
  %711 = load i32, ptr %iOp889, align 8
  %cmp890 = icmp ne i32 %711, 2
  br i1 %cmp890, label %if.then891, label %if.end898

if.then891:                                       ; preds = %land.lhs.true885, %if.then874
  %712 = load ptr, ptr %pGen.addr, align 8
  %713 = load ptr, ptr %pNode, align 8
  %pStart892 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %713, i32 0, i32 3
  %714 = load ptr, ptr %pStart892, align 8
  %nLine893 = getelementptr inbounds nuw %struct.SyToken, ptr %714, i32 0, i32 2
  %715 = load i32, ptr %nLine893, align 4
  %call894 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %712, i32 noundef 1, i32 noundef %715, ptr noundef @.str.265)
  store i32 %call894, ptr %rc, align 4
  %716 = load i32, ptr %rc, align 4
  %cmp895 = icmp ne i32 %716, -10
  br i1 %cmp895, label %if.then896, label %if.end897

if.then896:                                       ; preds = %if.then891
  store i32 -12, ptr %rc, align 4
  br label %if.end897

if.end897:                                        ; preds = %if.then896, %if.then891
  %717 = load i32, ptr %rc, align 4
  store i32 %717, ptr %retval, align 4
  br label %return

if.end898:                                        ; preds = %land.lhs.true885, %lor.lhs.false879
  br label %if.end899

if.end899:                                        ; preds = %if.end898, %if.then869
  br label %if.end900

if.end900:                                        ; preds = %if.end899, %lor.lhs.false863
  %718 = load i32, ptr %iRight, align 4
  store i32 %718, ptr %iTmp, align 4
  %719 = load i32, ptr %iLeft, align 4
  store i32 %719, ptr %iRight, align 4
  %720 = load i32, ptr %iTmp, align 4
  store i32 %720, ptr %iLeft, align 4
  br label %if.end901

if.end901:                                        ; preds = %if.end900, %if.end832
  %721 = load ptr, ptr %apNode.addr, align 8
  %722 = load i32, ptr %iLeft, align 4
  %idxprom902 = sext i32 %722 to i64
  %arrayidx903 = getelementptr inbounds ptr, ptr %721, i64 %idxprom902
  %723 = load ptr, ptr %arrayidx903, align 8
  %724 = load ptr, ptr %pNode, align 8
  %pLeft904 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %724, i32 0, i32 1
  store ptr %723, ptr %pLeft904, align 8
  %725 = load ptr, ptr %apNode.addr, align 8
  %726 = load i32, ptr %iRight, align 4
  %idxprom905 = sext i32 %726 to i64
  %arrayidx906 = getelementptr inbounds ptr, ptr %725, i64 %idxprom905
  %727 = load ptr, ptr %arrayidx906, align 8
  %728 = load ptr, ptr %pNode, align 8
  %pRight907 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %728, i32 0, i32 2
  store ptr %727, ptr %pRight907, align 8
  %729 = load ptr, ptr %apNode.addr, align 8
  %730 = load i32, ptr %iRight, align 4
  %idxprom908 = sext i32 %730 to i64
  %arrayidx909 = getelementptr inbounds ptr, ptr %729, i64 %idxprom908
  store ptr null, ptr %arrayidx909, align 8
  %731 = load ptr, ptr %apNode.addr, align 8
  %732 = load i32, ptr %iLeft, align 4
  %idxprom910 = sext i32 %732 to i64
  %arrayidx911 = getelementptr inbounds ptr, ptr %731, i64 %idxprom910
  store ptr null, ptr %arrayidx911, align 8
  br label %if.end912

if.end912:                                        ; preds = %if.end901, %land.lhs.true777, %land.lhs.true773, %if.end768
  %733 = load i32, ptr %iCur, align 4
  store i32 %733, ptr %iLeft, align 4
  br label %for.inc913

for.inc913:                                       ; preds = %if.end912, %if.then767
  %734 = load i32, ptr %iCur, align 4
  %inc914 = add nsw i32 %734, 1
  store i32 %inc914, ptr %iCur, align 4
  br label %for.cond761, !llvm.loop !23

for.end915:                                       ; preds = %for.cond761
  br label %for.inc916

for.inc916:                                       ; preds = %for.end915
  %735 = load i32, ptr %i, align 4
  %inc917 = add nsw i32 %735, 1
  store i32 %inc917, ptr %i, align 4
  br label %for.cond758, !llvm.loop !24

for.end918:                                       ; preds = %for.cond758
  store i32 -1, ptr %iLeft, align 4
  store i32 0, ptr %iCur, align 4
  br label %for.cond919

for.cond919:                                      ; preds = %for.inc1072, %for.end918
  %736 = load i32, ptr %iCur, align 4
  %737 = load i32, ptr %nToken.addr, align 4
  %cmp920 = icmp slt i32 %736, %737
  br i1 %cmp920, label %for.body921, label %for.end1074

for.body921:                                      ; preds = %for.cond919
  %738 = load ptr, ptr %apNode.addr, align 8
  %739 = load i32, ptr %iCur, align 4
  %idxprom922 = sext i32 %739 to i64
  %arrayidx923 = getelementptr inbounds ptr, ptr %738, i64 %idxprom922
  %740 = load ptr, ptr %arrayidx923, align 8
  %cmp924 = icmp eq ptr %740, null
  br i1 %cmp924, label %if.then925, label %if.end926

if.then925:                                       ; preds = %for.body921
  br label %for.inc1072

if.end926:                                        ; preds = %for.body921
  %741 = load ptr, ptr %apNode.addr, align 8
  %742 = load i32, ptr %iCur, align 4
  %idxprom927 = sext i32 %742 to i64
  %arrayidx928 = getelementptr inbounds ptr, ptr %741, i64 %idxprom927
  %743 = load ptr, ptr %arrayidx928, align 8
  store ptr %743, ptr %pNode, align 8
  %744 = load ptr, ptr %pNode, align 8
  %pOp929 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %744, i32 0, i32 0
  %745 = load ptr, ptr %pOp929, align 8
  %tobool930 = icmp ne ptr %745, null
  br i1 %tobool930, label %land.lhs.true931, label %if.end1071

land.lhs.true931:                                 ; preds = %if.end926
  %746 = load ptr, ptr %pNode, align 8
  %pOp932 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %746, i32 0, i32 0
  %747 = load ptr, ptr %pOp932, align 8
  %iOp933 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %747, i32 0, i32 1
  %748 = load i32, ptr %iOp933, align 8
  %cmp934 = icmp eq i32 %748, 41
  br i1 %cmp934, label %land.lhs.true935, label %if.end1071

land.lhs.true935:                                 ; preds = %land.lhs.true931
  %749 = load ptr, ptr %pNode, align 8
  %pLeft936 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %749, i32 0, i32 1
  %750 = load ptr, ptr %pLeft936, align 8
  %cmp937 = icmp eq ptr %750, null
  br i1 %cmp937, label %if.then938, label %if.end1071

if.then938:                                       ; preds = %land.lhs.true935
  store i32 1, ptr %iNest939, align 4
  %751 = load i32, ptr %iLeft, align 4
  %cmp940 = icmp slt i32 %751, 0
  br i1 %cmp940, label %if.then955, label %lor.lhs.false941

lor.lhs.false941:                                 ; preds = %if.then938
  %752 = load ptr, ptr %apNode.addr, align 8
  %753 = load i32, ptr %iLeft, align 4
  %idxprom942 = sext i32 %753 to i64
  %arrayidx943 = getelementptr inbounds ptr, ptr %752, i64 %idxprom942
  %754 = load ptr, ptr %arrayidx943, align 8
  %tobool944 = icmp ne ptr %754, null
  br i1 %tobool944, label %land.lhs.true945, label %if.then955

land.lhs.true945:                                 ; preds = %lor.lhs.false941
  %755 = load ptr, ptr %apNode.addr, align 8
  %756 = load i32, ptr %iLeft, align 4
  %idxprom946 = sext i32 %756 to i64
  %arrayidx947 = getelementptr inbounds ptr, ptr %755, i64 %idxprom946
  %757 = load ptr, ptr %arrayidx947, align 8
  %pOp948 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %757, i32 0, i32 0
  %758 = load ptr, ptr %pOp948, align 8
  %tobool949 = icmp ne ptr %758, null
  br i1 %tobool949, label %lor.lhs.false950, label %if.end964

lor.lhs.false950:                                 ; preds = %land.lhs.true945
  %759 = load ptr, ptr %apNode.addr, align 8
  %760 = load i32, ptr %iLeft, align 4
  %idxprom951 = sext i32 %760 to i64
  %arrayidx952 = getelementptr inbounds ptr, ptr %759, i64 %idxprom951
  %761 = load ptr, ptr %arrayidx952, align 8
  %pLeft953 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %761, i32 0, i32 1
  %762 = load ptr, ptr %pLeft953, align 8
  %tobool954 = icmp ne ptr %762, null
  br i1 %tobool954, label %if.end964, label %if.then955

if.then955:                                       ; preds = %lor.lhs.false950, %lor.lhs.false941, %if.then938
  %763 = load ptr, ptr %pGen.addr, align 8
  %764 = load ptr, ptr %pNode, align 8
  %pStart956 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %764, i32 0, i32 3
  %765 = load ptr, ptr %pStart956, align 8
  %nLine957 = getelementptr inbounds nuw %struct.SyToken, ptr %765, i32 0, i32 2
  %766 = load i32, ptr %nLine957, align 4
  %767 = load ptr, ptr %pNode, align 8
  %pOp958 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %767, i32 0, i32 0
  %768 = load ptr, ptr %pOp958, align 8
  %sOp959 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %768, i32 0, i32 0
  %call960 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %763, i32 noundef 1, i32 noundef %766, ptr noundef @.str.266, ptr noundef %sOp959)
  store i32 %call960, ptr %rc, align 4
  %769 = load i32, ptr %rc, align 4
  %cmp961 = icmp ne i32 %769, -10
  br i1 %cmp961, label %if.then962, label %if.end963

if.then962:                                       ; preds = %if.then955
  store i32 -12, ptr %rc, align 4
  br label %if.end963

if.end963:                                        ; preds = %if.then962, %if.then955
  %770 = load i32, ptr %rc, align 4
  store i32 %770, ptr %retval, align 4
  br label %return

if.end964:                                        ; preds = %lor.lhs.false950, %land.lhs.true945
  %771 = load i32, ptr %iCur, align 4
  %add965 = add nsw i32 %771, 1
  store i32 %add965, ptr %iRight, align 4
  br label %while.cond966

while.cond966:                                    ; preds = %if.end1003, %if.end964
  %772 = load i32, ptr %iRight, align 4
  %773 = load i32, ptr %nToken.addr, align 4
  %cmp967 = icmp slt i32 %772, %773
  br i1 %cmp967, label %while.body968, label %while.end1005

while.body968:                                    ; preds = %while.cond966
  %774 = load ptr, ptr %apNode.addr, align 8
  %775 = load i32, ptr %iRight, align 4
  %idxprom969 = sext i32 %775 to i64
  %arrayidx970 = getelementptr inbounds ptr, ptr %774, i64 %idxprom969
  %776 = load ptr, ptr %arrayidx970, align 8
  %tobool971 = icmp ne ptr %776, null
  br i1 %tobool971, label %if.then972, label %if.end1003

if.then972:                                       ; preds = %while.body968
  %777 = load ptr, ptr %apNode.addr, align 8
  %778 = load i32, ptr %iRight, align 4
  %idxprom973 = sext i32 %778 to i64
  %arrayidx974 = getelementptr inbounds ptr, ptr %777, i64 %idxprom973
  %779 = load ptr, ptr %arrayidx974, align 8
  %pOp975 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %779, i32 0, i32 0
  %780 = load ptr, ptr %pOp975, align 8
  %tobool976 = icmp ne ptr %780, null
  br i1 %tobool976, label %land.lhs.true977, label %if.else989

land.lhs.true977:                                 ; preds = %if.then972
  %781 = load ptr, ptr %apNode.addr, align 8
  %782 = load i32, ptr %iRight, align 4
  %idxprom978 = sext i32 %782 to i64
  %arrayidx979 = getelementptr inbounds ptr, ptr %781, i64 %idxprom978
  %783 = load ptr, ptr %arrayidx979, align 8
  %pOp980 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %783, i32 0, i32 0
  %784 = load ptr, ptr %pOp980, align 8
  %iOp981 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %784, i32 0, i32 1
  %785 = load i32, ptr %iOp981, align 8
  %cmp982 = icmp eq i32 %785, 41
  br i1 %cmp982, label %land.lhs.true983, label %if.else989

land.lhs.true983:                                 ; preds = %land.lhs.true977
  %786 = load ptr, ptr %apNode.addr, align 8
  %787 = load i32, ptr %iRight, align 4
  %idxprom984 = sext i32 %787 to i64
  %arrayidx985 = getelementptr inbounds ptr, ptr %786, i64 %idxprom984
  %788 = load ptr, ptr %arrayidx985, align 8
  %pCond = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %788, i32 0, i32 8
  %789 = load ptr, ptr %pCond, align 8
  %cmp986 = icmp eq ptr %789, null
  br i1 %cmp986, label %if.then987, label %if.else989

if.then987:                                       ; preds = %land.lhs.true983
  %790 = load i32, ptr %iNest939, align 4
  %inc988 = add nsw i32 %790, 1
  store i32 %inc988, ptr %iNest939, align 4
  br label %if.end1002

if.else989:                                       ; preds = %land.lhs.true983, %land.lhs.true977, %if.then972
  %791 = load ptr, ptr %apNode.addr, align 8
  %792 = load i32, ptr %iRight, align 4
  %idxprom990 = sext i32 %792 to i64
  %arrayidx991 = getelementptr inbounds ptr, ptr %791, i64 %idxprom990
  %793 = load ptr, ptr %arrayidx991, align 8
  %pStart992 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %793, i32 0, i32 3
  %794 = load ptr, ptr %pStart992, align 8
  %nType993 = getelementptr inbounds nuw %struct.SyToken, ptr %794, i32 0, i32 1
  %795 = load i32, ptr %nType993, align 8
  %and994 = and i32 %795, 1048576
  %tobool995 = icmp ne i32 %and994, 0
  br i1 %tobool995, label %if.then996, label %if.end1001

if.then996:                                       ; preds = %if.else989
  %796 = load i32, ptr %iNest939, align 4
  %dec997 = add nsw i32 %796, -1
  store i32 %dec997, ptr %iNest939, align 4
  %797 = load i32, ptr %iNest939, align 4
  %cmp998 = icmp sle i32 %797, 0
  br i1 %cmp998, label %if.then999, label %if.end1000

if.then999:                                       ; preds = %if.then996
  br label %while.end1005

if.end1000:                                       ; preds = %if.then996
  br label %if.end1001

if.end1001:                                       ; preds = %if.end1000, %if.else989
  br label %if.end1002

if.end1002:                                       ; preds = %if.end1001, %if.then987
  br label %if.end1003

if.end1003:                                       ; preds = %if.end1002, %while.body968
  %798 = load i32, ptr %iRight, align 4
  %inc1004 = add nsw i32 %798, 1
  store i32 %inc1004, ptr %iRight, align 4
  br label %while.cond966, !llvm.loop !25

while.end1005:                                    ; preds = %if.then999, %while.cond966
  %799 = load i32, ptr %iRight, align 4
  %800 = load i32, ptr %iCur, align 4
  %add1006 = add nsw i32 %800, 1
  %cmp1007 = icmp sgt i32 %799, %add1006
  br i1 %cmp1007, label %if.then1008, label %if.else1022

if.then1008:                                      ; preds = %while.end1005
  %801 = load ptr, ptr %pGen.addr, align 8
  %802 = load ptr, ptr %apNode.addr, align 8
  %803 = load i32, ptr %iCur, align 4
  %add1009 = add nsw i32 %803, 1
  %idxprom1010 = sext i32 %add1009 to i64
  %arrayidx1011 = getelementptr inbounds ptr, ptr %802, i64 %idxprom1010
  %804 = load i32, ptr %iRight, align 4
  %805 = load i32, ptr %iCur, align 4
  %sub1012 = sub nsw i32 %804, %805
  %sub1013 = sub nsw i32 %sub1012, 1
  %call1014 = call i32 @ExprMakeTree(ptr noundef %801, ptr noundef %arrayidx1011, i32 noundef %sub1013)
  store i32 %call1014, ptr %rc, align 4
  %806 = load i32, ptr %rc, align 4
  %cmp1015 = icmp ne i32 %806, 0
  br i1 %cmp1015, label %if.then1016, label %if.end1017

if.then1016:                                      ; preds = %if.then1008
  %807 = load i32, ptr %rc, align 4
  store i32 %807, ptr %retval, align 4
  br label %return

if.end1017:                                       ; preds = %if.then1008
  %808 = load ptr, ptr %apNode.addr, align 8
  %809 = load i32, ptr %iCur, align 4
  %add1018 = add nsw i32 %809, 1
  %idxprom1019 = sext i32 %add1018 to i64
  %arrayidx1020 = getelementptr inbounds ptr, ptr %808, i64 %idxprom1019
  %810 = load ptr, ptr %arrayidx1020, align 8
  %811 = load ptr, ptr %pNode, align 8
  %pLeft1021 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %811, i32 0, i32 1
  store ptr %810, ptr %pLeft1021, align 8
  br label %if.end1031

if.else1022:                                      ; preds = %while.end1005
  %812 = load ptr, ptr %pGen.addr, align 8
  %813 = load ptr, ptr %pNode, align 8
  %pStart1023 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %813, i32 0, i32 3
  %814 = load ptr, ptr %pStart1023, align 8
  %nLine1024 = getelementptr inbounds nuw %struct.SyToken, ptr %814, i32 0, i32 2
  %815 = load i32, ptr %nLine1024, align 4
  %816 = load ptr, ptr %pNode, align 8
  %pOp1025 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %816, i32 0, i32 0
  %817 = load ptr, ptr %pOp1025, align 8
  %sOp1026 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %817, i32 0, i32 0
  %call1027 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %812, i32 noundef 1, i32 noundef %815, ptr noundef @.str.267, ptr noundef %sOp1026)
  store i32 %call1027, ptr %rc, align 4
  %818 = load i32, ptr %rc, align 4
  %cmp1028 = icmp ne i32 %818, -10
  br i1 %cmp1028, label %if.then1029, label %if.end1030

if.then1029:                                      ; preds = %if.else1022
  store i32 -12, ptr %rc, align 4
  br label %if.end1030

if.end1030:                                       ; preds = %if.then1029, %if.else1022
  %819 = load i32, ptr %rc, align 4
  store i32 %819, ptr %retval, align 4
  br label %return

if.end1031:                                       ; preds = %if.end1017
  %820 = load ptr, ptr %apNode.addr, align 8
  %821 = load i32, ptr %iCur, align 4
  %add1032 = add nsw i32 %821, 1
  %idxprom1033 = sext i32 %add1032 to i64
  %arrayidx1034 = getelementptr inbounds ptr, ptr %820, i64 %idxprom1033
  store ptr null, ptr %arrayidx1034, align 8
  %822 = load i32, ptr %iRight, align 4
  %add1035 = add nsw i32 %822, 1
  %823 = load i32, ptr %nToken.addr, align 4
  %cmp1036 = icmp slt i32 %add1035, %823
  br i1 %cmp1036, label %if.then1037, label %if.else1056

if.then1037:                                      ; preds = %if.end1031
  %824 = load ptr, ptr %pGen.addr, align 8
  %825 = load ptr, ptr %apNode.addr, align 8
  %826 = load i32, ptr %iRight, align 4
  %add1038 = add nsw i32 %826, 1
  %idxprom1039 = sext i32 %add1038 to i64
  %arrayidx1040 = getelementptr inbounds ptr, ptr %825, i64 %idxprom1039
  %827 = load i32, ptr %nToken.addr, align 4
  %828 = load i32, ptr %iRight, align 4
  %sub1041 = sub nsw i32 %827, %828
  %sub1042 = sub nsw i32 %sub1041, 1
  %call1043 = call i32 @ExprMakeTree(ptr noundef %824, ptr noundef %arrayidx1040, i32 noundef %sub1042)
  store i32 %call1043, ptr %rc, align 4
  %829 = load i32, ptr %rc, align 4
  %cmp1044 = icmp ne i32 %829, 0
  br i1 %cmp1044, label %if.then1045, label %if.end1046

if.then1045:                                      ; preds = %if.then1037
  %830 = load i32, ptr %rc, align 4
  store i32 %830, ptr %retval, align 4
  br label %return

if.end1046:                                       ; preds = %if.then1037
  %831 = load ptr, ptr %apNode.addr, align 8
  %832 = load i32, ptr %iRight, align 4
  %add1047 = add nsw i32 %832, 1
  %idxprom1048 = sext i32 %add1047 to i64
  %arrayidx1049 = getelementptr inbounds ptr, ptr %831, i64 %idxprom1048
  %833 = load ptr, ptr %arrayidx1049, align 8
  %834 = load ptr, ptr %pNode, align 8
  %pRight1050 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %834, i32 0, i32 2
  store ptr %833, ptr %pRight1050, align 8
  %835 = load ptr, ptr %apNode.addr, align 8
  %836 = load i32, ptr %iRight, align 4
  %idxprom1051 = sext i32 %836 to i64
  %arrayidx1052 = getelementptr inbounds ptr, ptr %835, i64 %idxprom1051
  store ptr null, ptr %arrayidx1052, align 8
  %837 = load ptr, ptr %apNode.addr, align 8
  %838 = load i32, ptr %iRight, align 4
  %add1053 = add nsw i32 %838, 1
  %idxprom1054 = sext i32 %add1053 to i64
  %arrayidx1055 = getelementptr inbounds ptr, ptr %837, i64 %idxprom1054
  store ptr null, ptr %arrayidx1055, align 8
  br label %if.end1065

if.else1056:                                      ; preds = %if.end1031
  %839 = load ptr, ptr %pGen.addr, align 8
  %840 = load ptr, ptr %pNode, align 8
  %pStart1057 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %840, i32 0, i32 3
  %841 = load ptr, ptr %pStart1057, align 8
  %nLine1058 = getelementptr inbounds nuw %struct.SyToken, ptr %841, i32 0, i32 2
  %842 = load i32, ptr %nLine1058, align 4
  %843 = load ptr, ptr %pNode, align 8
  %pOp1059 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %843, i32 0, i32 0
  %844 = load ptr, ptr %pOp1059, align 8
  %sOp1060 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %844, i32 0, i32 0
  %call1061 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %839, i32 noundef 1, i32 noundef %842, ptr noundef @.str.268, ptr noundef %sOp1060)
  store i32 %call1061, ptr %rc, align 4
  %845 = load i32, ptr %rc, align 4
  %cmp1062 = icmp ne i32 %845, -10
  br i1 %cmp1062, label %if.then1063, label %if.end1064

if.then1063:                                      ; preds = %if.else1056
  store i32 -12, ptr %rc, align 4
  br label %if.end1064

if.end1064:                                       ; preds = %if.then1063, %if.else1056
  %846 = load i32, ptr %rc, align 4
  store i32 %846, ptr %retval, align 4
  br label %return

if.end1065:                                       ; preds = %if.end1046
  %847 = load ptr, ptr %apNode.addr, align 8
  %848 = load i32, ptr %iLeft, align 4
  %idxprom1066 = sext i32 %848 to i64
  %arrayidx1067 = getelementptr inbounds ptr, ptr %847, i64 %idxprom1066
  %849 = load ptr, ptr %arrayidx1067, align 8
  %850 = load ptr, ptr %pNode, align 8
  %pCond1068 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %850, i32 0, i32 8
  store ptr %849, ptr %pCond1068, align 8
  %851 = load ptr, ptr %apNode.addr, align 8
  %852 = load i32, ptr %iLeft, align 4
  %idxprom1069 = sext i32 %852 to i64
  %arrayidx1070 = getelementptr inbounds ptr, ptr %851, i64 %idxprom1069
  store ptr null, ptr %arrayidx1070, align 8
  br label %for.end1074

if.end1071:                                       ; preds = %land.lhs.true935, %land.lhs.true931, %if.end926
  %853 = load i32, ptr %iCur, align 4
  store i32 %853, ptr %iLeft, align 4
  br label %for.inc1072

for.inc1072:                                      ; preds = %if.end1071, %if.then925
  %854 = load i32, ptr %iCur, align 4
  %inc1073 = add nsw i32 %854, 1
  store i32 %inc1073, ptr %iCur, align 4
  br label %for.cond919, !llvm.loop !26

for.end1074:                                      ; preds = %if.end1065, %for.cond919
  store i32 -1, ptr %iRight, align 4
  %855 = load i32, ptr %nToken.addr, align 4
  %sub1075 = sub nsw i32 %855, 1
  store i32 %sub1075, ptr %iCur, align 4
  br label %for.cond1076

for.cond1076:                                     ; preds = %for.inc1183, %for.end1074
  %856 = load i32, ptr %iCur, align 4
  %cmp1077 = icmp sge i32 %856, 0
  br i1 %cmp1077, label %for.body1078, label %for.end1185

for.body1078:                                     ; preds = %for.cond1076
  %857 = load ptr, ptr %apNode.addr, align 8
  %858 = load i32, ptr %iCur, align 4
  %idxprom1079 = sext i32 %858 to i64
  %arrayidx1080 = getelementptr inbounds ptr, ptr %857, i64 %idxprom1079
  %859 = load ptr, ptr %arrayidx1080, align 8
  %cmp1081 = icmp eq ptr %859, null
  br i1 %cmp1081, label %if.then1082, label %if.end1083

if.then1082:                                      ; preds = %for.body1078
  br label %for.inc1183

if.end1083:                                       ; preds = %for.body1078
  %860 = load ptr, ptr %apNode.addr, align 8
  %861 = load i32, ptr %iCur, align 4
  %idxprom1084 = sext i32 %861 to i64
  %arrayidx1085 = getelementptr inbounds ptr, ptr %860, i64 %idxprom1084
  %862 = load ptr, ptr %arrayidx1085, align 8
  store ptr %862, ptr %pNode, align 8
  %863 = load ptr, ptr %pNode, align 8
  %pOp1086 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %863, i32 0, i32 0
  %864 = load ptr, ptr %pOp1086, align 8
  %tobool1087 = icmp ne ptr %864, null
  br i1 %tobool1087, label %land.lhs.true1088, label %if.end1182

land.lhs.true1088:                                ; preds = %if.end1083
  %865 = load ptr, ptr %pNode, align 8
  %pOp1089 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %865, i32 0, i32 0
  %866 = load ptr, ptr %pOp1089, align 8
  %iPrec1090 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %866, i32 0, i32 2
  %867 = load i32, ptr %iPrec1090, align 4
  %cmp1091 = icmp eq i32 %867, 18
  br i1 %cmp1091, label %land.lhs.true1092, label %if.end1182

land.lhs.true1092:                                ; preds = %land.lhs.true1088
  %868 = load ptr, ptr %pNode, align 8
  %pLeft1093 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %868, i32 0, i32 1
  %869 = load ptr, ptr %pLeft1093, align 8
  %cmp1094 = icmp eq ptr %869, null
  br i1 %cmp1094, label %if.then1095, label %if.end1182

if.then1095:                                      ; preds = %land.lhs.true1092
  %870 = load i32, ptr %iCur, align 4
  %sub1096 = sub nsw i32 %870, 1
  store i32 %sub1096, ptr %iLeft, align 4
  br label %while.cond1097

while.cond1097:                                   ; preds = %while.body1104, %if.then1095
  %871 = load i32, ptr %iLeft, align 4
  %cmp1098 = icmp sge i32 %871, 0
  br i1 %cmp1098, label %land.rhs1099, label %land.end1103

land.rhs1099:                                     ; preds = %while.cond1097
  %872 = load ptr, ptr %apNode.addr, align 8
  %873 = load i32, ptr %iLeft, align 4
  %idxprom1100 = sext i32 %873 to i64
  %arrayidx1101 = getelementptr inbounds ptr, ptr %872, i64 %idxprom1100
  %874 = load ptr, ptr %arrayidx1101, align 8
  %cmp1102 = icmp eq ptr %874, null
  br label %land.end1103

land.end1103:                                     ; preds = %land.rhs1099, %while.cond1097
  %875 = phi i1 [ false, %while.cond1097 ], [ %cmp1102, %land.rhs1099 ]
  br i1 %875, label %while.body1104, label %while.end1106

while.body1104:                                   ; preds = %land.end1103
  %876 = load i32, ptr %iLeft, align 4
  %dec1105 = add nsw i32 %876, -1
  store i32 %dec1105, ptr %iLeft, align 4
  br label %while.cond1097, !llvm.loop !27

while.end1106:                                    ; preds = %land.end1103
  %877 = load i32, ptr %iLeft, align 4
  %cmp1107 = icmp slt i32 %877, 0
  br i1 %cmp1107, label %if.then1138, label %lor.lhs.false1108

lor.lhs.false1108:                                ; preds = %while.end1106
  %878 = load i32, ptr %iRight, align 4
  %cmp1109 = icmp slt i32 %878, 0
  br i1 %cmp1109, label %if.then1138, label %lor.lhs.false1110

lor.lhs.false1110:                                ; preds = %lor.lhs.false1108
  %879 = load ptr, ptr %apNode.addr, align 8
  %880 = load i32, ptr %iRight, align 4
  %idxprom1111 = sext i32 %880 to i64
  %arrayidx1112 = getelementptr inbounds ptr, ptr %879, i64 %idxprom1111
  %881 = load ptr, ptr %arrayidx1112, align 8
  %tobool1113 = icmp ne ptr %881, null
  br i1 %tobool1113, label %land.lhs.true1114, label %if.then1138

land.lhs.true1114:                                ; preds = %lor.lhs.false1110
  %882 = load ptr, ptr %apNode.addr, align 8
  %883 = load i32, ptr %iRight, align 4
  %idxprom1115 = sext i32 %883 to i64
  %arrayidx1116 = getelementptr inbounds ptr, ptr %882, i64 %idxprom1115
  %884 = load ptr, ptr %arrayidx1116, align 8
  %pOp1117 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %884, i32 0, i32 0
  %885 = load ptr, ptr %pOp1117, align 8
  %tobool1118 = icmp ne ptr %885, null
  br i1 %tobool1118, label %lor.lhs.false1119, label %lor.lhs.false1124

lor.lhs.false1119:                                ; preds = %land.lhs.true1114
  %886 = load ptr, ptr %apNode.addr, align 8
  %887 = load i32, ptr %iRight, align 4
  %idxprom1120 = sext i32 %887 to i64
  %arrayidx1121 = getelementptr inbounds ptr, ptr %886, i64 %idxprom1120
  %888 = load ptr, ptr %arrayidx1121, align 8
  %pLeft1122 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %888, i32 0, i32 1
  %889 = load ptr, ptr %pLeft1122, align 8
  %tobool1123 = icmp ne ptr %889, null
  br i1 %tobool1123, label %lor.lhs.false1124, label %if.then1138

lor.lhs.false1124:                                ; preds = %lor.lhs.false1119, %land.lhs.true1114
  %890 = load ptr, ptr %apNode.addr, align 8
  %891 = load i32, ptr %iLeft, align 4
  %idxprom1125 = sext i32 %891 to i64
  %arrayidx1126 = getelementptr inbounds ptr, ptr %890, i64 %idxprom1125
  %892 = load ptr, ptr %arrayidx1126, align 8
  %tobool1127 = icmp ne ptr %892, null
  br i1 %tobool1127, label %land.lhs.true1128, label %if.then1138

land.lhs.true1128:                                ; preds = %lor.lhs.false1124
  %893 = load ptr, ptr %apNode.addr, align 8
  %894 = load i32, ptr %iLeft, align 4
  %idxprom1129 = sext i32 %894 to i64
  %arrayidx1130 = getelementptr inbounds ptr, ptr %893, i64 %idxprom1129
  %895 = load ptr, ptr %arrayidx1130, align 8
  %pOp1131 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %895, i32 0, i32 0
  %896 = load ptr, ptr %pOp1131, align 8
  %tobool1132 = icmp ne ptr %896, null
  br i1 %tobool1132, label %lor.lhs.false1133, label %if.end1147

lor.lhs.false1133:                                ; preds = %land.lhs.true1128
  %897 = load ptr, ptr %apNode.addr, align 8
  %898 = load i32, ptr %iLeft, align 4
  %idxprom1134 = sext i32 %898 to i64
  %arrayidx1135 = getelementptr inbounds ptr, ptr %897, i64 %idxprom1134
  %899 = load ptr, ptr %arrayidx1135, align 8
  %pLeft1136 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %899, i32 0, i32 1
  %900 = load ptr, ptr %pLeft1136, align 8
  %tobool1137 = icmp ne ptr %900, null
  br i1 %tobool1137, label %if.end1147, label %if.then1138

if.then1138:                                      ; preds = %lor.lhs.false1133, %lor.lhs.false1124, %lor.lhs.false1119, %lor.lhs.false1110, %lor.lhs.false1108, %while.end1106
  %901 = load ptr, ptr %pGen.addr, align 8
  %902 = load ptr, ptr %pNode, align 8
  %pStart1139 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %902, i32 0, i32 3
  %903 = load ptr, ptr %pStart1139, align 8
  %nLine1140 = getelementptr inbounds nuw %struct.SyToken, ptr %903, i32 0, i32 2
  %904 = load i32, ptr %nLine1140, align 4
  %905 = load ptr, ptr %pNode, align 8
  %pOp1141 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %905, i32 0, i32 0
  %906 = load ptr, ptr %pOp1141, align 8
  %sOp1142 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %906, i32 0, i32 0
  %call1143 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %901, i32 noundef 1, i32 noundef %904, ptr noundef @.str.263, ptr noundef %sOp1142)
  store i32 %call1143, ptr %rc, align 4
  %907 = load i32, ptr %rc, align 4
  %cmp1144 = icmp ne i32 %907, -10
  br i1 %cmp1144, label %if.then1145, label %if.end1146

if.then1145:                                      ; preds = %if.then1138
  store i32 -12, ptr %rc, align 4
  br label %if.end1146

if.end1146:                                       ; preds = %if.then1145, %if.then1138
  %908 = load i32, ptr %rc, align 4
  store i32 %908, ptr %retval, align 4
  br label %return

if.end1147:                                       ; preds = %lor.lhs.false1133, %land.lhs.true1128
  %909 = load ptr, ptr %apNode.addr, align 8
  %910 = load i32, ptr %iLeft, align 4
  %idxprom1148 = sext i32 %910 to i64
  %arrayidx1149 = getelementptr inbounds ptr, ptr %909, i64 %idxprom1148
  %911 = load ptr, ptr %arrayidx1149, align 8
  %call1150 = call i32 @ExprIsModifiableValue(ptr noundef %911, i8 noundef zeroext 0)
  %cmp1151 = icmp eq i32 %call1150, 0
  br i1 %cmp1151, label %if.then1152, label %if.end1171

if.then1152:                                      ; preds = %if.end1147
  %912 = load ptr, ptr %pNode, align 8
  %pOp1153 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %912, i32 0, i32 0
  %913 = load ptr, ptr %pOp1153, align 8
  %iVmOp1154 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %913, i32 0, i32 4
  %914 = load i32, ptr %iVmOp1154, align 4
  %cmp1155 = icmp ne i32 %914, 44
  br i1 %cmp1155, label %if.then1161, label %lor.lhs.false1156

lor.lhs.false1156:                                ; preds = %if.then1152
  %915 = load ptr, ptr %apNode.addr, align 8
  %916 = load i32, ptr %iLeft, align 4
  %idxprom1157 = sext i32 %916 to i64
  %arrayidx1158 = getelementptr inbounds ptr, ptr %915, i64 %idxprom1157
  %917 = load ptr, ptr %arrayidx1158, align 8
  %xCode1159 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %917, i32 0, i32 6
  %918 = load ptr, ptr %xCode1159, align 8
  %cmp1160 = icmp ne ptr %918, @PH7_CompileList
  br i1 %cmp1160, label %if.then1161, label %if.end1170

if.then1161:                                      ; preds = %lor.lhs.false1156, %if.then1152
  %919 = load ptr, ptr %pGen.addr, align 8
  %920 = load ptr, ptr %pNode, align 8
  %pStart1162 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %920, i32 0, i32 3
  %921 = load ptr, ptr %pStart1162, align 8
  %nLine1163 = getelementptr inbounds nuw %struct.SyToken, ptr %921, i32 0, i32 2
  %922 = load i32, ptr %nLine1163, align 4
  %923 = load ptr, ptr %pNode, align 8
  %pOp1164 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %923, i32 0, i32 0
  %924 = load ptr, ptr %pOp1164, align 8
  %sOp1165 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %924, i32 0, i32 0
  %call1166 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %919, i32 noundef 1, i32 noundef %922, ptr noundef @.str.269, ptr noundef %sOp1165)
  store i32 %call1166, ptr %rc, align 4
  %925 = load i32, ptr %rc, align 4
  %cmp1167 = icmp ne i32 %925, -10
  br i1 %cmp1167, label %if.then1168, label %if.end1169

if.then1168:                                      ; preds = %if.then1161
  store i32 -12, ptr %rc, align 4
  br label %if.end1169

if.end1169:                                       ; preds = %if.then1168, %if.then1161
  %926 = load i32, ptr %rc, align 4
  store i32 %926, ptr %retval, align 4
  br label %return

if.end1170:                                       ; preds = %lor.lhs.false1156
  br label %if.end1171

if.end1171:                                       ; preds = %if.end1170, %if.end1147
  %927 = load ptr, ptr %apNode.addr, align 8
  %928 = load i32, ptr %iRight, align 4
  %idxprom1172 = sext i32 %928 to i64
  %arrayidx1173 = getelementptr inbounds ptr, ptr %927, i64 %idxprom1172
  %929 = load ptr, ptr %arrayidx1173, align 8
  %930 = load ptr, ptr %pNode, align 8
  %pLeft1174 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %930, i32 0, i32 1
  store ptr %929, ptr %pLeft1174, align 8
  %931 = load ptr, ptr %apNode.addr, align 8
  %932 = load i32, ptr %iLeft, align 4
  %idxprom1175 = sext i32 %932 to i64
  %arrayidx1176 = getelementptr inbounds ptr, ptr %931, i64 %idxprom1175
  %933 = load ptr, ptr %arrayidx1176, align 8
  %934 = load ptr, ptr %pNode, align 8
  %pRight1177 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %934, i32 0, i32 2
  store ptr %933, ptr %pRight1177, align 8
  %935 = load ptr, ptr %apNode.addr, align 8
  %936 = load i32, ptr %iRight, align 4
  %idxprom1178 = sext i32 %936 to i64
  %arrayidx1179 = getelementptr inbounds ptr, ptr %935, i64 %idxprom1178
  store ptr null, ptr %arrayidx1179, align 8
  %937 = load ptr, ptr %apNode.addr, align 8
  %938 = load i32, ptr %iLeft, align 4
  %idxprom1180 = sext i32 %938 to i64
  %arrayidx1181 = getelementptr inbounds ptr, ptr %937, i64 %idxprom1180
  store ptr null, ptr %arrayidx1181, align 8
  br label %if.end1182

if.end1182:                                       ; preds = %if.end1171, %land.lhs.true1092, %land.lhs.true1088, %if.end1083
  %939 = load i32, ptr %iCur, align 4
  store i32 %939, ptr %iRight, align 4
  br label %for.inc1183

for.inc1183:                                      ; preds = %if.end1182, %if.then1082
  %940 = load i32, ptr %iCur, align 4
  %dec1184 = add nsw i32 %940, -1
  store i32 %dec1184, ptr %iCur, align 4
  br label %for.cond1076, !llvm.loop !28

for.end1185:                                      ; preds = %for.cond1076
  store i32 19, ptr %i, align 4
  br label %for.cond1186

for.cond1186:                                     ; preds = %for.inc1275, %for.end1185
  %941 = load i32, ptr %i, align 4
  %cmp1187 = icmp slt i32 %941, 23
  br i1 %cmp1187, label %for.body1188, label %for.end1277

for.body1188:                                     ; preds = %for.cond1186
  store i32 -1, ptr %iLeft, align 4
  store i32 0, ptr %iCur, align 4
  br label %for.cond1189

for.cond1189:                                     ; preds = %for.inc1272, %for.body1188
  %942 = load i32, ptr %iCur, align 4
  %943 = load i32, ptr %nToken.addr, align 4
  %cmp1190 = icmp slt i32 %942, %943
  br i1 %cmp1190, label %for.body1191, label %for.end1274

for.body1191:                                     ; preds = %for.cond1189
  %944 = load ptr, ptr %apNode.addr, align 8
  %945 = load i32, ptr %iCur, align 4
  %idxprom1192 = sext i32 %945 to i64
  %arrayidx1193 = getelementptr inbounds ptr, ptr %944, i64 %idxprom1192
  %946 = load ptr, ptr %arrayidx1193, align 8
  %cmp1194 = icmp eq ptr %946, null
  br i1 %cmp1194, label %if.then1195, label %if.end1196

if.then1195:                                      ; preds = %for.body1191
  br label %for.inc1272

if.end1196:                                       ; preds = %for.body1191
  %947 = load ptr, ptr %apNode.addr, align 8
  %948 = load i32, ptr %iCur, align 4
  %idxprom1197 = sext i32 %948 to i64
  %arrayidx1198 = getelementptr inbounds ptr, ptr %947, i64 %idxprom1197
  %949 = load ptr, ptr %arrayidx1198, align 8
  store ptr %949, ptr %pNode, align 8
  %950 = load ptr, ptr %pNode, align 8
  %pOp1199 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %950, i32 0, i32 0
  %951 = load ptr, ptr %pOp1199, align 8
  %tobool1200 = icmp ne ptr %951, null
  br i1 %tobool1200, label %land.lhs.true1201, label %if.end1271

land.lhs.true1201:                                ; preds = %if.end1196
  %952 = load ptr, ptr %pNode, align 8
  %pOp1202 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %952, i32 0, i32 0
  %953 = load ptr, ptr %pOp1202, align 8
  %iPrec1203 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %953, i32 0, i32 2
  %954 = load i32, ptr %iPrec1203, align 4
  %955 = load i32, ptr %i, align 4
  %cmp1204 = icmp eq i32 %954, %955
  br i1 %cmp1204, label %land.lhs.true1205, label %if.end1271

land.lhs.true1205:                                ; preds = %land.lhs.true1201
  %956 = load ptr, ptr %pNode, align 8
  %pLeft1206 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %956, i32 0, i32 1
  %957 = load ptr, ptr %pLeft1206, align 8
  %cmp1207 = icmp eq ptr %957, null
  br i1 %cmp1207, label %if.then1208, label %if.end1271

if.then1208:                                      ; preds = %land.lhs.true1205
  %958 = load i32, ptr %iCur, align 4
  %add1209 = add nsw i32 %958, 1
  store i32 %add1209, ptr %iRight, align 4
  br label %while.cond1210

while.cond1210:                                   ; preds = %while.body1217, %if.then1208
  %959 = load i32, ptr %iRight, align 4
  %960 = load i32, ptr %nToken.addr, align 4
  %cmp1211 = icmp slt i32 %959, %960
  br i1 %cmp1211, label %land.rhs1212, label %land.end1216

land.rhs1212:                                     ; preds = %while.cond1210
  %961 = load ptr, ptr %apNode.addr, align 8
  %962 = load i32, ptr %iRight, align 4
  %idxprom1213 = sext i32 %962 to i64
  %arrayidx1214 = getelementptr inbounds ptr, ptr %961, i64 %idxprom1213
  %963 = load ptr, ptr %arrayidx1214, align 8
  %cmp1215 = icmp eq ptr %963, null
  br label %land.end1216

land.end1216:                                     ; preds = %land.rhs1212, %while.cond1210
  %964 = phi i1 [ false, %while.cond1210 ], [ %cmp1215, %land.rhs1212 ]
  br i1 %964, label %while.body1217, label %while.end1219

while.body1217:                                   ; preds = %land.end1216
  %965 = load i32, ptr %iRight, align 4
  %inc1218 = add nsw i32 %965, 1
  store i32 %inc1218, ptr %iRight, align 4
  br label %while.cond1210, !llvm.loop !29

while.end1219:                                    ; preds = %land.end1216
  %966 = load i32, ptr %iRight, align 4
  %967 = load i32, ptr %nToken.addr, align 4
  %cmp1220 = icmp sge i32 %966, %967
  br i1 %cmp1220, label %if.then1251, label %lor.lhs.false1221

lor.lhs.false1221:                                ; preds = %while.end1219
  %968 = load i32, ptr %iLeft, align 4
  %cmp1222 = icmp slt i32 %968, 0
  br i1 %cmp1222, label %if.then1251, label %lor.lhs.false1223

lor.lhs.false1223:                                ; preds = %lor.lhs.false1221
  %969 = load ptr, ptr %apNode.addr, align 8
  %970 = load i32, ptr %iRight, align 4
  %idxprom1224 = sext i32 %970 to i64
  %arrayidx1225 = getelementptr inbounds ptr, ptr %969, i64 %idxprom1224
  %971 = load ptr, ptr %arrayidx1225, align 8
  %tobool1226 = icmp ne ptr %971, null
  br i1 %tobool1226, label %land.lhs.true1227, label %if.then1251

land.lhs.true1227:                                ; preds = %lor.lhs.false1223
  %972 = load ptr, ptr %apNode.addr, align 8
  %973 = load i32, ptr %iRight, align 4
  %idxprom1228 = sext i32 %973 to i64
  %arrayidx1229 = getelementptr inbounds ptr, ptr %972, i64 %idxprom1228
  %974 = load ptr, ptr %arrayidx1229, align 8
  %pOp1230 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %974, i32 0, i32 0
  %975 = load ptr, ptr %pOp1230, align 8
  %tobool1231 = icmp ne ptr %975, null
  br i1 %tobool1231, label %lor.lhs.false1232, label %lor.lhs.false1237

lor.lhs.false1232:                                ; preds = %land.lhs.true1227
  %976 = load ptr, ptr %apNode.addr, align 8
  %977 = load i32, ptr %iRight, align 4
  %idxprom1233 = sext i32 %977 to i64
  %arrayidx1234 = getelementptr inbounds ptr, ptr %976, i64 %idxprom1233
  %978 = load ptr, ptr %arrayidx1234, align 8
  %pLeft1235 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %978, i32 0, i32 1
  %979 = load ptr, ptr %pLeft1235, align 8
  %tobool1236 = icmp ne ptr %979, null
  br i1 %tobool1236, label %lor.lhs.false1237, label %if.then1251

lor.lhs.false1237:                                ; preds = %lor.lhs.false1232, %land.lhs.true1227
  %980 = load ptr, ptr %apNode.addr, align 8
  %981 = load i32, ptr %iLeft, align 4
  %idxprom1238 = sext i32 %981 to i64
  %arrayidx1239 = getelementptr inbounds ptr, ptr %980, i64 %idxprom1238
  %982 = load ptr, ptr %arrayidx1239, align 8
  %tobool1240 = icmp ne ptr %982, null
  br i1 %tobool1240, label %land.lhs.true1241, label %if.then1251

land.lhs.true1241:                                ; preds = %lor.lhs.false1237
  %983 = load ptr, ptr %apNode.addr, align 8
  %984 = load i32, ptr %iLeft, align 4
  %idxprom1242 = sext i32 %984 to i64
  %arrayidx1243 = getelementptr inbounds ptr, ptr %983, i64 %idxprom1242
  %985 = load ptr, ptr %arrayidx1243, align 8
  %pOp1244 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %985, i32 0, i32 0
  %986 = load ptr, ptr %pOp1244, align 8
  %tobool1245 = icmp ne ptr %986, null
  br i1 %tobool1245, label %lor.lhs.false1246, label %if.end1260

lor.lhs.false1246:                                ; preds = %land.lhs.true1241
  %987 = load ptr, ptr %apNode.addr, align 8
  %988 = load i32, ptr %iLeft, align 4
  %idxprom1247 = sext i32 %988 to i64
  %arrayidx1248 = getelementptr inbounds ptr, ptr %987, i64 %idxprom1247
  %989 = load ptr, ptr %arrayidx1248, align 8
  %pLeft1249 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %989, i32 0, i32 1
  %990 = load ptr, ptr %pLeft1249, align 8
  %tobool1250 = icmp ne ptr %990, null
  br i1 %tobool1250, label %if.end1260, label %if.then1251

if.then1251:                                      ; preds = %lor.lhs.false1246, %lor.lhs.false1237, %lor.lhs.false1232, %lor.lhs.false1223, %lor.lhs.false1221, %while.end1219
  %991 = load ptr, ptr %pGen.addr, align 8
  %992 = load ptr, ptr %pNode, align 8
  %pStart1252 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %992, i32 0, i32 3
  %993 = load ptr, ptr %pStart1252, align 8
  %nLine1253 = getelementptr inbounds nuw %struct.SyToken, ptr %993, i32 0, i32 2
  %994 = load i32, ptr %nLine1253, align 4
  %995 = load ptr, ptr %pNode, align 8
  %pOp1254 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %995, i32 0, i32 0
  %996 = load ptr, ptr %pOp1254, align 8
  %sOp1255 = getelementptr inbounds nuw %struct.ph7_expr_op, ptr %996, i32 0, i32 0
  %call1256 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %991, i32 noundef 1, i32 noundef %994, ptr noundef @.str.263, ptr noundef %sOp1255)
  store i32 %call1256, ptr %rc, align 4
  %997 = load i32, ptr %rc, align 4
  %cmp1257 = icmp ne i32 %997, -10
  br i1 %cmp1257, label %if.then1258, label %if.end1259

if.then1258:                                      ; preds = %if.then1251
  store i32 -12, ptr %rc, align 4
  br label %if.end1259

if.end1259:                                       ; preds = %if.then1258, %if.then1251
  %998 = load i32, ptr %rc, align 4
  store i32 %998, ptr %retval, align 4
  br label %return

if.end1260:                                       ; preds = %lor.lhs.false1246, %land.lhs.true1241
  %999 = load ptr, ptr %apNode.addr, align 8
  %1000 = load i32, ptr %iLeft, align 4
  %idxprom1261 = sext i32 %1000 to i64
  %arrayidx1262 = getelementptr inbounds ptr, ptr %999, i64 %idxprom1261
  %1001 = load ptr, ptr %arrayidx1262, align 8
  %1002 = load ptr, ptr %pNode, align 8
  %pLeft1263 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %1002, i32 0, i32 1
  store ptr %1001, ptr %pLeft1263, align 8
  %1003 = load ptr, ptr %apNode.addr, align 8
  %1004 = load i32, ptr %iRight, align 4
  %idxprom1264 = sext i32 %1004 to i64
  %arrayidx1265 = getelementptr inbounds ptr, ptr %1003, i64 %idxprom1264
  %1005 = load ptr, ptr %arrayidx1265, align 8
  %1006 = load ptr, ptr %pNode, align 8
  %pRight1266 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %1006, i32 0, i32 2
  store ptr %1005, ptr %pRight1266, align 8
  %1007 = load ptr, ptr %apNode.addr, align 8
  %1008 = load i32, ptr %iRight, align 4
  %idxprom1267 = sext i32 %1008 to i64
  %arrayidx1268 = getelementptr inbounds ptr, ptr %1007, i64 %idxprom1267
  store ptr null, ptr %arrayidx1268, align 8
  %1009 = load ptr, ptr %apNode.addr, align 8
  %1010 = load i32, ptr %iLeft, align 4
  %idxprom1269 = sext i32 %1010 to i64
  %arrayidx1270 = getelementptr inbounds ptr, ptr %1009, i64 %idxprom1269
  store ptr null, ptr %arrayidx1270, align 8
  br label %if.end1271

if.end1271:                                       ; preds = %if.end1260, %land.lhs.true1205, %land.lhs.true1201, %if.end1196
  %1011 = load i32, ptr %iCur, align 4
  store i32 %1011, ptr %iLeft, align 4
  br label %for.inc1272

for.inc1272:                                      ; preds = %if.end1271, %if.then1195
  %1012 = load i32, ptr %iCur, align 4
  %inc1273 = add nsw i32 %1012, 1
  store i32 %inc1273, ptr %iCur, align 4
  br label %for.cond1189, !llvm.loop !30

for.end1274:                                      ; preds = %for.cond1189
  br label %for.inc1275

for.inc1275:                                      ; preds = %for.end1274
  %1013 = load i32, ptr %i, align 4
  %inc1276 = add nsw i32 %1013, 1
  store i32 %inc1276, ptr %i, align 4
  br label %for.cond1186, !llvm.loop !31

for.end1277:                                      ; preds = %for.cond1186
  store i32 1, ptr %iCur, align 4
  br label %for.cond1278

for.cond1278:                                     ; preds = %for.inc1317, %for.end1277
  %1014 = load i32, ptr %iCur, align 4
  %1015 = load i32, ptr %nToken.addr, align 4
  %cmp1279 = icmp slt i32 %1014, %1015
  br i1 %cmp1279, label %for.body1280, label %for.end1319

for.body1280:                                     ; preds = %for.cond1278
  %1016 = load ptr, ptr %apNode.addr, align 8
  %1017 = load i32, ptr %iCur, align 4
  %idxprom1281 = sext i32 %1017 to i64
  %arrayidx1282 = getelementptr inbounds ptr, ptr %1016, i64 %idxprom1281
  %1018 = load ptr, ptr %arrayidx1282, align 8
  %tobool1283 = icmp ne ptr %1018, null
  br i1 %tobool1283, label %if.then1284, label %if.end1316

if.then1284:                                      ; preds = %for.body1280
  %1019 = load ptr, ptr %apNode.addr, align 8
  %1020 = load i32, ptr %iCur, align 4
  %idxprom1285 = sext i32 %1020 to i64
  %arrayidx1286 = getelementptr inbounds ptr, ptr %1019, i64 %idxprom1285
  %1021 = load ptr, ptr %arrayidx1286, align 8
  %pOp1287 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %1021, i32 0, i32 0
  %1022 = load ptr, ptr %pOp1287, align 8
  %tobool1288 = icmp ne ptr %1022, null
  br i1 %tobool1288, label %land.lhs.true1294, label %lor.lhs.false1289

lor.lhs.false1289:                                ; preds = %if.then1284
  %1023 = load ptr, ptr %apNode.addr, align 8
  %1024 = load i32, ptr %iCur, align 4
  %idxprom1290 = sext i32 %1024 to i64
  %arrayidx1291 = getelementptr inbounds ptr, ptr %1023, i64 %idxprom1290
  %1025 = load ptr, ptr %arrayidx1291, align 8
  %xCode1292 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %1025, i32 0, i32 6
  %1026 = load ptr, ptr %xCode1292, align 8
  %tobool1293 = icmp ne ptr %1026, null
  br i1 %tobool1293, label %land.lhs.true1294, label %if.end1310

land.lhs.true1294:                                ; preds = %lor.lhs.false1289, %if.then1284
  %1027 = load ptr, ptr %apNode.addr, align 8
  %arrayidx1295 = getelementptr inbounds ptr, ptr %1027, i64 0
  %1028 = load ptr, ptr %arrayidx1295, align 8
  %cmp1296 = icmp ne ptr %1028, null
  br i1 %cmp1296, label %if.then1297, label %if.end1310

if.then1297:                                      ; preds = %land.lhs.true1294
  %1029 = load ptr, ptr %pGen.addr, align 8
  %1030 = load ptr, ptr %apNode.addr, align 8
  %1031 = load i32, ptr %iCur, align 4
  %idxprom1298 = sext i32 %1031 to i64
  %arrayidx1299 = getelementptr inbounds ptr, ptr %1030, i64 %idxprom1298
  %1032 = load ptr, ptr %arrayidx1299, align 8
  %pStart1300 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %1032, i32 0, i32 3
  %1033 = load ptr, ptr %pStart1300, align 8
  %nLine1301 = getelementptr inbounds nuw %struct.SyToken, ptr %1033, i32 0, i32 2
  %1034 = load i32, ptr %nLine1301, align 4
  %1035 = load ptr, ptr %apNode.addr, align 8
  %1036 = load i32, ptr %iCur, align 4
  %idxprom1302 = sext i32 %1036 to i64
  %arrayidx1303 = getelementptr inbounds ptr, ptr %1035, i64 %idxprom1302
  %1037 = load ptr, ptr %arrayidx1303, align 8
  %pStart1304 = getelementptr inbounds nuw %struct.ph7_expr_node, ptr %1037, i32 0, i32 3
  %1038 = load ptr, ptr %pStart1304, align 8
  %sData1305 = getelementptr inbounds nuw %struct.SyToken, ptr %1038, i32 0, i32 0
  %call1306 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %1029, i32 noundef 1, i32 noundef %1034, ptr noundef @.str.229, ptr noundef %sData1305)
  store i32 %call1306, ptr %rc, align 4
  %1039 = load i32, ptr %rc, align 4
  %cmp1307 = icmp ne i32 %1039, -10
  br i1 %cmp1307, label %if.then1308, label %if.end1309

if.then1308:                                      ; preds = %if.then1297
  store i32 -12, ptr %rc, align 4
  br label %if.end1309

if.end1309:                                       ; preds = %if.then1308, %if.then1297
  %1040 = load i32, ptr %rc, align 4
  store i32 %1040, ptr %retval, align 4
  br label %return

if.end1310:                                       ; preds = %land.lhs.true1294, %lor.lhs.false1289
  %1041 = load ptr, ptr %apNode.addr, align 8
  %1042 = load i32, ptr %iCur, align 4
  %idxprom1311 = sext i32 %1042 to i64
  %arrayidx1312 = getelementptr inbounds ptr, ptr %1041, i64 %idxprom1311
  %1043 = load ptr, ptr %arrayidx1312, align 8
  %1044 = load ptr, ptr %apNode.addr, align 8
  %arrayidx1313 = getelementptr inbounds ptr, ptr %1044, i64 0
  store ptr %1043, ptr %arrayidx1313, align 8
  %1045 = load ptr, ptr %apNode.addr, align 8
  %1046 = load i32, ptr %iCur, align 4
  %idxprom1314 = sext i32 %1046 to i64
  %arrayidx1315 = getelementptr inbounds ptr, ptr %1045, i64 %idxprom1314
  store ptr null, ptr %arrayidx1315, align 8
  br label %if.end1316

if.end1316:                                       ; preds = %if.end1310, %for.body1280
  br label %for.inc1317

for.inc1317:                                      ; preds = %if.end1316
  %1047 = load i32, ptr %iCur, align 4
  %inc1318 = add nsw i32 %1047, 1
  store i32 %inc1318, ptr %iCur, align 4
  br label %for.cond1278, !llvm.loop !32

for.end1319:                                      ; preds = %for.cond1278
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end1319, %if.end1309, %if.end1259, %if.end1169, %if.end1146, %if.end1064, %if.then1045, %if.end1030, %if.then1016, %if.end963, %if.end897, %if.end857, %if.end831, %if.end751, %if.end740, %if.end673, %if.end560, %if.end531, %if.end505, %if.end436, %if.end412, %if.then343, %if.end290, %if.then224, %if.end214, %if.end191, %if.then114, %if.then44, %if.then
  %1048 = load i32, ptr %retval, align 4
  ret i32 %1048
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileVariable(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileLiteral(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileList(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileString(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileSimpleString(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ExprFreeTree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ExprProcessFuncArguments(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ExprIsModifiableValue(ptr noundef, i8 noundef zeroext) #0

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
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
