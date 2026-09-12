; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WindowCodeArg = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg }
%struct.WindowCsrAndReg = type { i32, i32 }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

@nth_valueName = external hidden constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeGetOp(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCodeExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprNNCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @windowArgCount(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @windowAggStep(ptr noundef %p, ptr noundef %pMWin, i32 noundef %csr, i32 noundef %bInverse, i32 noundef %reg) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pMWin.addr = alloca ptr, align 8
  %csr.addr = alloca i32, align 4
  %bInverse.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %regArg = alloca i32, align 4
  %nArg = alloca i32, align 4
  %i = alloca i32, align 4
  %addrIsNull = alloca i32, align 4
  %addrIf = alloca i32, align 4
  %regTmp = alloca i32, align 4
  %iStart = alloca i32, align 4
  %pOp = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pMWin, ptr %pMWin.addr, align 8
  store i32 %csr, ptr %csr.addr, align 4
  store i32 %bInverse, ptr %bInverse.addr, align 4
  store i32 %reg, ptr %reg.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %pParse, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %2)
  store ptr %call, ptr %v, align 8
  %3 = load ptr, ptr %pMWin.addr, align 8
  store ptr %3, ptr %pWin, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc119, %entry
  %4 = load ptr, ptr %pWin, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %for.body, label %for.end120

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pWin, align 8
  %pFunc2 = getelementptr inbounds nuw %struct.Window, ptr %5, i32 0, i32 14
  %6 = load ptr, ptr %pFunc2, align 8
  store ptr %6, ptr %pFunc, align 8
  %7 = load ptr, ptr %pWin, align 8
  %bExprArgs = getelementptr inbounds nuw %struct.Window, ptr %7, i32 0, i32 27
  %8 = load i8, ptr %bExprArgs, align 4
  %conv = zext i8 %8 to i32
  %tobool3 = icmp ne i32 %conv, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load ptr, ptr %pWin, align 8
  %call4 = call i32 @windowArgCount(ptr noundef %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call4, %cond.false ]
  store i32 %cond, ptr %nArg, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %cond.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %nArg, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %12 = load i32, ptr %i, align 4
  %cmp8 = icmp ne i32 %12, 1
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body7
  %13 = load ptr, ptr %pFunc, align 8
  %zName = getelementptr inbounds nuw %struct.FuncDef, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %zName, align 8
  %cmp10 = icmp ne ptr %14, @nth_valueName
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body7
  %15 = load ptr, ptr %v, align 8
  %16 = load i32, ptr %csr.addr, align 4
  %17 = load ptr, ptr %pWin, align 8
  %iArgCol = getelementptr inbounds nuw %struct.Window, ptr %17, i32 0, i32 23
  %18 = load i32, ptr %iArgCol, align 4
  %19 = load i32, ptr %i, align 4
  %add = add nsw i32 %18, %19
  %20 = load i32, ptr %reg.addr, align 4
  %21 = load i32, ptr %i, align 4
  %add12 = add nsw i32 %20, %21
  %call13 = call i32 @sqlite3VdbeAddOp3(ptr noundef %15, i32 noundef 90, i32 noundef %16, i32 noundef %add, i32 noundef %add12)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %22 = load ptr, ptr %v, align 8
  %23 = load ptr, ptr %pMWin.addr, align 8
  %iEphCsr = getelementptr inbounds nuw %struct.Window, ptr %23, i32 0, i32 15
  %24 = load i32, ptr %iEphCsr, align 8
  %25 = load ptr, ptr %pWin, align 8
  %iArgCol14 = getelementptr inbounds nuw %struct.Window, ptr %25, i32 0, i32 23
  %26 = load i32, ptr %iArgCol14, align 4
  %27 = load i32, ptr %i, align 4
  %add15 = add nsw i32 %26, %27
  %28 = load i32, ptr %reg.addr, align 4
  %29 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %28, %29
  %call17 = call i32 @sqlite3VdbeAddOp3(ptr noundef %22, i32 noundef 90, i32 noundef %24, i32 noundef %add15, i32 noundef %add16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond5, !llvm.loop !6

for.end:                                          ; preds = %for.cond5
  %31 = load i32, ptr %reg.addr, align 4
  store i32 %31, ptr %regArg, align 4
  %32 = load ptr, ptr %pMWin.addr, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %32, i32 0, i32 25
  %33 = load i32, ptr %regStartRowid, align 4
  %cmp18 = icmp eq i32 %33, 0
  br i1 %cmp18, label %land.lhs.true, label %if.else48

land.lhs.true:                                    ; preds = %for.end
  %34 = load ptr, ptr %pFunc, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %funcFlags, align 4
  %and = and i32 %35, 4096
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.else48

land.lhs.true21:                                  ; preds = %land.lhs.true
  %36 = load ptr, ptr %pWin, align 8
  %eStart = getelementptr inbounds nuw %struct.Window, ptr %36, i32 0, i32 5
  %37 = load i8, ptr %eStart, align 1
  %conv22 = zext i8 %37 to i32
  %cmp23 = icmp ne i32 %conv22, 90
  br i1 %cmp23, label %if.then25, label %if.else48

if.then25:                                        ; preds = %land.lhs.true21
  %38 = load ptr, ptr %v, align 8
  %39 = load i32, ptr %regArg, align 4
  %call26 = call i32 @sqlite3VdbeAddOp1(ptr noundef %38, i32 noundef 50, i32 noundef %39)
  store i32 %call26, ptr %addrIsNull, align 4
  %40 = load i32, ptr %bInverse.addr, align 4
  %cmp27 = icmp eq i32 %40, 0
  br i1 %cmp27, label %if.then29, label %if.else41

if.then29:                                        ; preds = %if.then25
  %41 = load ptr, ptr %v, align 8
  %42 = load ptr, ptr %pWin, align 8
  %regApp = getelementptr inbounds nuw %struct.Window, ptr %42, i32 0, i32 19
  %43 = load i32, ptr %regApp, align 8
  %add30 = add nsw i32 %43, 1
  %call31 = call i32 @sqlite3VdbeAddOp2(ptr noundef %41, i32 noundef 83, i32 noundef %add30, i32 noundef 1)
  %44 = load ptr, ptr %v, align 8
  %45 = load i32, ptr %regArg, align 4
  %46 = load ptr, ptr %pWin, align 8
  %regApp32 = getelementptr inbounds nuw %struct.Window, ptr %46, i32 0, i32 19
  %47 = load i32, ptr %regApp32, align 8
  %call33 = call i32 @sqlite3VdbeAddOp2(ptr noundef %44, i32 noundef 79, i32 noundef %45, i32 noundef %47)
  %48 = load ptr, ptr %v, align 8
  %49 = load ptr, ptr %pWin, align 8
  %regApp34 = getelementptr inbounds nuw %struct.Window, ptr %49, i32 0, i32 19
  %50 = load i32, ptr %regApp34, align 8
  %51 = load ptr, ptr %pWin, align 8
  %regApp35 = getelementptr inbounds nuw %struct.Window, ptr %51, i32 0, i32 19
  %52 = load i32, ptr %regApp35, align 8
  %add36 = add nsw i32 %52, 2
  %call37 = call i32 @sqlite3VdbeAddOp3(ptr noundef %48, i32 noundef 92, i32 noundef %50, i32 noundef 2, i32 noundef %add36)
  %53 = load ptr, ptr %v, align 8
  %54 = load ptr, ptr %pWin, align 8
  %csrApp = getelementptr inbounds nuw %struct.Window, ptr %54, i32 0, i32 18
  %55 = load i32, ptr %csrApp, align 4
  %56 = load ptr, ptr %pWin, align 8
  %regApp38 = getelementptr inbounds nuw %struct.Window, ptr %56, i32 0, i32 19
  %57 = load i32, ptr %regApp38, align 8
  %add39 = add nsw i32 %57, 2
  %call40 = call i32 @sqlite3VdbeAddOp2(ptr noundef %53, i32 noundef 132, i32 noundef %55, i32 noundef %add39)
  br label %if.end47

if.else41:                                        ; preds = %if.then25
  %58 = load ptr, ptr %v, align 8
  %59 = load ptr, ptr %pWin, align 8
  %csrApp42 = getelementptr inbounds nuw %struct.Window, ptr %59, i32 0, i32 18
  %60 = load i32, ptr %csrApp42, align 4
  %61 = load i32, ptr %regArg, align 4
  %call43 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %58, i32 noundef 24, i32 noundef %60, i32 noundef 0, i32 noundef %61, i32 noundef 1)
  %62 = load ptr, ptr %v, align 8
  %63 = load ptr, ptr %pWin, align 8
  %csrApp44 = getelementptr inbounds nuw %struct.Window, ptr %63, i32 0, i32 18
  %64 = load i32, ptr %csrApp44, align 4
  %call45 = call i32 @sqlite3VdbeAddOp1(ptr noundef %62, i32 noundef 123, i32 noundef %64)
  %65 = load ptr, ptr %v, align 8
  %66 = load ptr, ptr %v, align 8
  %call46 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %66)
  %sub = sub nsw i32 %call46, 2
  call void @sqlite3VdbeJumpHere(ptr noundef %65, i32 noundef %sub)
  br label %if.end47

if.end47:                                         ; preds = %if.else41, %if.then29
  %67 = load ptr, ptr %v, align 8
  %68 = load i32, ptr %addrIsNull, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %67, i32 noundef %68)
  br label %if.end118

if.else48:                                        ; preds = %land.lhs.true21, %land.lhs.true, %for.end
  %69 = load ptr, ptr %pWin, align 8
  %regApp49 = getelementptr inbounds nuw %struct.Window, ptr %69, i32 0, i32 19
  %70 = load i32, ptr %regApp49, align 8
  %tobool50 = icmp ne i32 %70, 0
  br i1 %tobool50, label %if.then51, label %if.else56

if.then51:                                        ; preds = %if.else48
  %71 = load ptr, ptr %v, align 8
  %72 = load ptr, ptr %pWin, align 8
  %regApp52 = getelementptr inbounds nuw %struct.Window, ptr %72, i32 0, i32 19
  %73 = load i32, ptr %regApp52, align 8
  %add53 = add nsw i32 %73, 1
  %74 = load i32, ptr %bInverse.addr, align 4
  %sub54 = sub nsw i32 %add53, %74
  %call55 = call i32 @sqlite3VdbeAddOp2(ptr noundef %71, i32 noundef 83, i32 noundef %sub54, i32 noundef 1)
  br label %if.end117

if.else56:                                        ; preds = %if.else48
  %75 = load ptr, ptr %pFunc, align 8
  %xSFunc = getelementptr inbounds nuw %struct.FuncDef, ptr %75, i32 0, i32 4
  %76 = load ptr, ptr %xSFunc, align 8
  %cmp57 = icmp ne ptr %76, @noopStepFunc
  br i1 %cmp57, label %if.then59, label %if.end116

if.then59:                                        ; preds = %if.else56
  store i32 0, ptr %addrIf, align 4
  %77 = load ptr, ptr %pWin, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %77, i32 0, i32 13
  %78 = load ptr, ptr %pFilter, align 8
  %tobool60 = icmp ne ptr %78, null
  br i1 %tobool60, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.then59
  %79 = load ptr, ptr %pParse, align 8
  %call62 = call i32 @sqlite3GetTempReg(ptr noundef %79)
  store i32 %call62, ptr %regTmp, align 4
  %80 = load ptr, ptr %v, align 8
  %81 = load i32, ptr %csr.addr, align 4
  %82 = load ptr, ptr %pWin, align 8
  %iArgCol63 = getelementptr inbounds nuw %struct.Window, ptr %82, i32 0, i32 23
  %83 = load i32, ptr %iArgCol63, align 4
  %84 = load i32, ptr %nArg, align 4
  %add64 = add nsw i32 %83, %84
  %85 = load i32, ptr %regTmp, align 4
  %call65 = call i32 @sqlite3VdbeAddOp3(ptr noundef %80, i32 noundef 90, i32 noundef %81, i32 noundef %add64, i32 noundef %85)
  %86 = load ptr, ptr %v, align 8
  %87 = load i32, ptr %regTmp, align 4
  %call66 = call i32 @sqlite3VdbeAddOp3(ptr noundef %86, i32 noundef 20, i32 noundef %87, i32 noundef 0, i32 noundef 1)
  store i32 %call66, ptr %addrIf, align 4
  %88 = load ptr, ptr %pParse, align 8
  %89 = load i32, ptr %regTmp, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %88, i32 noundef %89)
  br label %if.end67

if.end67:                                         ; preds = %if.then61, %if.then59
  %90 = load ptr, ptr %pWin, align 8
  %bExprArgs68 = getelementptr inbounds nuw %struct.Window, ptr %90, i32 0, i32 27
  %91 = load i8, ptr %bExprArgs68, align 4
  %tobool69 = icmp ne i8 %91, 0
  br i1 %tobool69, label %if.then70, label %if.end94

if.then70:                                        ; preds = %if.end67
  %92 = load ptr, ptr %v, align 8
  %call71 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %92)
  store i32 %call71, ptr %iStart, align 4
  %93 = load ptr, ptr %pWin, align 8
  %pOwner = getelementptr inbounds nuw %struct.Window, ptr %93, i32 0, i32 21
  %94 = load ptr, ptr %pOwner, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %94, i32 0, i32 6
  %95 = load ptr, ptr %x, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %95, i32 0, i32 0
  %96 = load i32, ptr %nExpr, align 8
  store i32 %96, ptr %nArg, align 4
  %97 = load ptr, ptr %pParse, align 8
  %98 = load i32, ptr %nArg, align 4
  %call72 = call i32 @sqlite3GetTempRange(ptr noundef %97, i32 noundef %98)
  store i32 %call72, ptr %regArg, align 4
  %99 = load ptr, ptr %pParse, align 8
  %100 = load ptr, ptr %pWin, align 8
  %pOwner73 = getelementptr inbounds nuw %struct.Window, ptr %100, i32 0, i32 21
  %101 = load ptr, ptr %pOwner73, align 8
  %x74 = getelementptr inbounds nuw %struct.Expr, ptr %101, i32 0, i32 6
  %102 = load ptr, ptr %x74, align 8
  %103 = load i32, ptr %regArg, align 4
  %call75 = call i32 @sqlite3ExprCodeExprList(ptr noundef %99, ptr noundef %102, i32 noundef %103, i32 noundef 0, i8 noundef zeroext 0)
  %104 = load ptr, ptr %v, align 8
  %call76 = call ptr @sqlite3VdbeGetOp(ptr noundef %104, i32 noundef -1)
  store ptr %call76, ptr %pEnd, align 8
  %105 = load ptr, ptr %v, align 8
  %106 = load i32, ptr %iStart, align 4
  %call77 = call ptr @sqlite3VdbeGetOp(ptr noundef %105, i32 noundef %106)
  store ptr %call77, ptr %pOp, align 8
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc92, %if.then70
  %107 = load ptr, ptr %pOp, align 8
  %108 = load ptr, ptr %pEnd, align 8
  %cmp79 = icmp ule ptr %107, %108
  br i1 %cmp79, label %for.body81, label %for.end93

for.body81:                                       ; preds = %for.cond78
  %109 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %109, i32 0, i32 0
  %110 = load i8, ptr %opcode, align 8
  %conv82 = zext i8 %110 to i32
  %cmp83 = icmp eq i32 %conv82, 90
  br i1 %cmp83, label %land.lhs.true85, label %if.end91

land.lhs.true85:                                  ; preds = %for.body81
  %111 = load ptr, ptr %pOp, align 8
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %111, i32 0, i32 3
  %112 = load i32, ptr %p1, align 4
  %113 = load ptr, ptr %pWin, align 8
  %iEphCsr86 = getelementptr inbounds nuw %struct.Window, ptr %113, i32 0, i32 15
  %114 = load i32, ptr %iEphCsr86, align 8
  %cmp87 = icmp eq i32 %112, %114
  br i1 %cmp87, label %if.then89, label %if.end91

if.then89:                                        ; preds = %land.lhs.true85
  %115 = load i32, ptr %csr.addr, align 4
  %116 = load ptr, ptr %pOp, align 8
  %p190 = getelementptr inbounds nuw %struct.VdbeOp, ptr %116, i32 0, i32 3
  store i32 %115, ptr %p190, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %land.lhs.true85, %for.body81
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %117 = load ptr, ptr %pOp, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.VdbeOp, ptr %117, i32 1
  store ptr %incdec.ptr, ptr %pOp, align 8
  br label %for.cond78, !llvm.loop !8

for.end93:                                        ; preds = %for.cond78
  br label %if.end94

if.end94:                                         ; preds = %for.end93, %if.end67
  %118 = load ptr, ptr %pFunc, align 8
  %funcFlags95 = getelementptr inbounds nuw %struct.FuncDef, ptr %118, i32 0, i32 1
  %119 = load i32, ptr %funcFlags95, align 4
  %and96 = and i32 %119, 32
  %tobool97 = icmp ne i32 %and96, 0
  br i1 %tobool97, label %if.then98, label %if.end103

if.then98:                                        ; preds = %if.end94
  %120 = load ptr, ptr %pParse, align 8
  %121 = load ptr, ptr %pWin, align 8
  %pOwner99 = getelementptr inbounds nuw %struct.Window, ptr %121, i32 0, i32 21
  %122 = load ptr, ptr %pOwner99, align 8
  %x100 = getelementptr inbounds nuw %struct.Expr, ptr %122, i32 0, i32 6
  %123 = load ptr, ptr %x100, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %123, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %124 = load ptr, ptr %pExpr, align 8
  %call101 = call ptr @sqlite3ExprNNCollSeq(ptr noundef %120, ptr noundef %124)
  store ptr %call101, ptr %pColl, align 8
  %125 = load ptr, ptr %v, align 8
  %126 = load ptr, ptr %pColl, align 8
  %call102 = call i32 @sqlite3VdbeAddOp4(ptr noundef %125, i32 noundef 82, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %126, i32 noundef -2)
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.end94
  %127 = load ptr, ptr %v, align 8
  %128 = load i32, ptr %bInverse.addr, align 4
  %tobool104 = icmp ne i32 %128, 0
  %129 = zext i1 %tobool104 to i64
  %cond105 = select i1 %tobool104, i32 153, i32 154
  %130 = load i32, ptr %bInverse.addr, align 4
  %131 = load i32, ptr %regArg, align 4
  %132 = load ptr, ptr %pWin, align 8
  %regAccum = getelementptr inbounds nuw %struct.Window, ptr %132, i32 0, i32 16
  %133 = load i32, ptr %regAccum, align 4
  %call106 = call i32 @sqlite3VdbeAddOp3(ptr noundef %127, i32 noundef %cond105, i32 noundef %130, i32 noundef %131, i32 noundef %133)
  %134 = load ptr, ptr %v, align 8
  %135 = load ptr, ptr %pFunc, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %134, ptr noundef %135, i32 noundef -8)
  %136 = load ptr, ptr %v, align 8
  %137 = load i32, ptr %nArg, align 4
  %conv107 = trunc i32 %137 to i8
  %conv108 = zext i8 %conv107 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %136, i16 noundef zeroext %conv108)
  %138 = load ptr, ptr %pWin, align 8
  %bExprArgs109 = getelementptr inbounds nuw %struct.Window, ptr %138, i32 0, i32 27
  %139 = load i8, ptr %bExprArgs109, align 4
  %tobool110 = icmp ne i8 %139, 0
  br i1 %tobool110, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end103
  %140 = load ptr, ptr %pParse, align 8
  %141 = load i32, ptr %regArg, align 4
  %142 = load i32, ptr %nArg, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %140, i32 noundef %141, i32 noundef %142)
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end103
  %143 = load i32, ptr %addrIf, align 4
  %tobool113 = icmp ne i32 %143, 0
  br i1 %tobool113, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end112
  %144 = load ptr, ptr %v, align 8
  %145 = load i32, ptr %addrIf, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %144, i32 noundef %145)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end112
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %if.else56
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then51
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end47
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118
  %146 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %146, i32 0, i32 12
  %147 = load ptr, ptr %pNextWin, align 8
  store ptr %147, ptr %pWin, align 8
  br label %for.cond, !llvm.loop !9

for.end120:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @noopStepFunc(ptr noundef, i32 noundef, ptr noundef) #0

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
