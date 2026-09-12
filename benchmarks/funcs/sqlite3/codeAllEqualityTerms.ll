; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3CompareAffinity(ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCanBeNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3IndexAffinityStr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @codeEqualityTerm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @codeAllEqualityTerms(ptr noundef %pParse, ptr noundef %pLevel, i32 noundef %bRev, i32 noundef %nExtraReg, ptr noundef %pzAff) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pLevel.addr = alloca ptr, align 8
  %bRev.addr = alloca i32, align 4
  %nExtraReg.addr = alloca i32, align 4
  %pzAff.addr = alloca ptr, align 8
  %nEq = alloca i16, align 2
  %nSkip = alloca i16, align 2
  %v = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %pTerm = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %j = alloca i32, align 4
  %regBase = alloca i32, align 4
  %nReg = alloca i32, align 4
  %zAff = alloca ptr, align 8
  %iIdxCur = alloca i32, align 4
  %r1 = alloca i32, align 4
  %pRight = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pLevel, ptr %pLevel.addr, align 8
  store i32 %bRev, ptr %bRev.addr, align 4
  store i32 %nExtraReg, ptr %nExtraReg.addr, align 4
  store ptr %pzAff, ptr %pzAff.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pLevel.addr, align 8
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %2, i32 0, i32 20
  %3 = load ptr, ptr %pWLoop, align 8
  store ptr %3, ptr %pLoop, align 8
  %4 = load ptr, ptr %pLoop, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %4, i32 0, i32 7
  %nEq1 = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 0
  %5 = load i16, ptr %nEq1, align 8
  store i16 %5, ptr %nEq, align 2
  %6 = load ptr, ptr %pLoop, align 8
  %nSkip2 = getelementptr inbounds nuw %struct.WhereLoop, ptr %6, i32 0, i32 10
  %7 = load i16, ptr %nSkip2, align 2
  store i16 %7, ptr %nSkip, align 2
  %8 = load ptr, ptr %pLoop, align 8
  %u3 = getelementptr inbounds nuw %struct.WhereLoop, ptr %8, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u3, i32 0, i32 4
  %9 = load ptr, ptr %pIndex, align 8
  store ptr %9, ptr %pIdx, align 8
  %10 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 18
  %11 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %11, 1
  store i32 %add, ptr %regBase, align 4
  %12 = load ptr, ptr %pLoop, align 8
  %u4 = getelementptr inbounds nuw %struct.WhereLoop, ptr %12, i32 0, i32 7
  %nEq5 = getelementptr inbounds nuw %struct.anon.19, ptr %u4, i32 0, i32 0
  %13 = load i16, ptr %nEq5, align 8
  %conv = zext i16 %13 to i32
  %14 = load i32, ptr %nExtraReg.addr, align 4
  %add6 = add nsw i32 %conv, %14
  store i32 %add6, ptr %nReg, align 4
  %15 = load i32, ptr %nReg, align 4
  %16 = load ptr, ptr %pParse.addr, align 8
  %nMem7 = getelementptr inbounds nuw %struct.Parse, ptr %16, i32 0, i32 18
  %17 = load i32, ptr %nMem7, align 8
  %add8 = add nsw i32 %17, %15
  store i32 %add8, ptr %nMem7, align 8
  %18 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %pParse.addr, align 8
  %db9 = getelementptr inbounds nuw %struct.Parse, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %db9, align 8
  %22 = load ptr, ptr %pIdx, align 8
  %call = call ptr @sqlite3IndexAffinityStr(ptr noundef %21, ptr noundef %22)
  %call10 = call ptr @sqlite3DbStrDup(ptr noundef %19, ptr noundef %call)
  store ptr %call10, ptr %zAff, align 8
  %23 = load i16, ptr %nSkip, align 2
  %tobool = icmp ne i16 %23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load ptr, ptr %pLevel.addr, align 8
  %iIdxCur11 = getelementptr inbounds nuw %struct.WhereLevel, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %iIdxCur11, align 8
  store i32 %25, ptr %iIdxCur, align 4
  %26 = load ptr, ptr %v, align 8
  %27 = load i32, ptr %bRev.addr, align 4
  %tobool12 = icmp ne i32 %27, 0
  %28 = zext i1 %tobool12 to i64
  %cond = select i1 %tobool12, i32 32, i32 36
  %29 = load i32, ptr %iIdxCur, align 4
  %call13 = call i32 @sqlite3VdbeAddOp1(ptr noundef %26, i32 noundef %cond, i32 noundef %29)
  %30 = load ptr, ptr %v, align 8
  %call14 = call i32 @sqlite3VdbeAddOp0(ptr noundef %30, i32 noundef 11)
  store i32 %call14, ptr %j, align 4
  %31 = load ptr, ptr %v, align 8
  %32 = load i32, ptr %bRev.addr, align 4
  %tobool15 = icmp ne i32 %32, 0
  %33 = zext i1 %tobool15 to i64
  %cond16 = select i1 %tobool15, i32 22, i32 25
  %34 = load i32, ptr %iIdxCur, align 4
  %35 = load i32, ptr %regBase, align 4
  %36 = load i16, ptr %nSkip, align 2
  %conv17 = zext i16 %36 to i32
  %call18 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %31, i32 noundef %cond16, i32 noundef %34, i32 noundef 0, i32 noundef %35, i32 noundef %conv17)
  %37 = load ptr, ptr %pLevel.addr, align 8
  %addrSkip = getelementptr inbounds nuw %struct.WhereLevel, ptr %37, i32 0, i32 5
  store i32 %call18, ptr %addrSkip, align 4
  %38 = load ptr, ptr %v, align 8
  %39 = load i32, ptr %j, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %38, i32 noundef %39)
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %40 = load i32, ptr %j, align 4
  %41 = load i16, ptr %nSkip, align 2
  %conv19 = zext i16 %41 to i32
  %cmp = icmp slt i32 %40, %conv19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load ptr, ptr %v, align 8
  %43 = load i32, ptr %iIdxCur, align 4
  %44 = load i32, ptr %j, align 4
  %45 = load i32, ptr %regBase, align 4
  %46 = load i32, ptr %j, align 4
  %add21 = add nsw i32 %45, %46
  %call22 = call i32 @sqlite3VdbeAddOp3(ptr noundef %42, i32 noundef 90, i32 noundef %43, i32 noundef %44, i32 noundef %add21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %j, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %48 = load i16, ptr %nSkip, align 2
  %conv23 = zext i16 %48 to i32
  store i32 %conv23, ptr %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc96, %if.end
  %49 = load i32, ptr %j, align 4
  %50 = load i16, ptr %nEq, align 2
  %conv25 = zext i16 %50 to i32
  %cmp26 = icmp slt i32 %49, %conv25
  br i1 %cmp26, label %for.body28, label %for.end98

for.body28:                                       ; preds = %for.cond24
  %51 = load ptr, ptr %pLoop, align 8
  %aLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %aLTerm, align 8
  %53 = load i32, ptr %j, align 4
  %idxprom = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %52, i64 %idxprom
  %54 = load ptr, ptr %arrayidx, align 8
  store ptr %54, ptr %pTerm, align 8
  %55 = load ptr, ptr %pParse.addr, align 8
  %56 = load ptr, ptr %pTerm, align 8
  %57 = load ptr, ptr %pLevel.addr, align 8
  %58 = load i32, ptr %j, align 4
  %59 = load i32, ptr %bRev.addr, align 4
  %60 = load i32, ptr %regBase, align 4
  %61 = load i32, ptr %j, align 4
  %add29 = add nsw i32 %60, %61
  %call30 = call i32 @codeEqualityTerm(ptr noundef %55, ptr noundef %56, ptr noundef %57, i32 noundef %58, i32 noundef %59, i32 noundef %add29)
  store i32 %call30, ptr %r1, align 4
  %62 = load i32, ptr %r1, align 4
  %63 = load i32, ptr %regBase, align 4
  %64 = load i32, ptr %j, align 4
  %add31 = add nsw i32 %63, %64
  %cmp32 = icmp ne i32 %62, %add31
  br i1 %cmp32, label %if.then34, label %if.end41

if.then34:                                        ; preds = %for.body28
  %65 = load i32, ptr %nReg, align 4
  %cmp35 = icmp eq i32 %65, 1
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then34
  %66 = load ptr, ptr %pParse.addr, align 8
  %67 = load i32, ptr %regBase, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %66, i32 noundef %67)
  %68 = load i32, ptr %r1, align 4
  store i32 %68, ptr %regBase, align 4
  br label %if.end40

if.else:                                          ; preds = %if.then34
  %69 = load ptr, ptr %v, align 8
  %70 = load i32, ptr %r1, align 4
  %71 = load i32, ptr %regBase, align 4
  %72 = load i32, ptr %j, align 4
  %add38 = add nsw i32 %71, %72
  %call39 = call i32 @sqlite3VdbeAddOp2(ptr noundef %69, i32 noundef 79, i32 noundef %70, i32 noundef %add38)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %for.body28
  %73 = load ptr, ptr %pTerm, align 8
  %eOperator = getelementptr inbounds nuw %struct.WhereTerm, ptr %73, i32 0, i32 4
  %74 = load i16, ptr %eOperator, align 4
  %conv42 = zext i16 %74 to i32
  %and = and i32 %conv42, 1
  %tobool43 = icmp ne i32 %and, 0
  br i1 %tobool43, label %if.then44, label %if.else54

if.then44:                                        ; preds = %if.end41
  %75 = load ptr, ptr %pTerm, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %76, i32 0, i32 2
  %77 = load i32, ptr %flags, align 4
  %and45 = and i32 %77, 2048
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end53

if.then47:                                        ; preds = %if.then44
  %78 = load ptr, ptr %zAff, align 8
  %tobool48 = icmp ne ptr %78, null
  br i1 %tobool48, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.then47
  %79 = load ptr, ptr %zAff, align 8
  %80 = load i32, ptr %j, align 4
  %idxprom50 = sext i32 %80 to i64
  %arrayidx51 = getelementptr inbounds i8, ptr %79, i64 %idxprom50
  store i8 65, ptr %arrayidx51, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then47
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then44
  br label %if.end95

if.else54:                                        ; preds = %if.end41
  %81 = load ptr, ptr %pTerm, align 8
  %eOperator55 = getelementptr inbounds nuw %struct.WhereTerm, ptr %81, i32 0, i32 4
  %82 = load i16, ptr %eOperator55, align 4
  %conv56 = zext i16 %82 to i32
  %and57 = and i32 %conv56, 256
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %if.then60, label %if.end94

if.then60:                                        ; preds = %if.else54
  %83 = load ptr, ptr %pTerm, align 8
  %pExpr61 = getelementptr inbounds nuw %struct.WhereTerm, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %pExpr61, align 8
  %pRight62 = getelementptr inbounds nuw %struct.Expr, ptr %84, i32 0, i32 5
  %85 = load ptr, ptr %pRight62, align 8
  store ptr %85, ptr %pRight, align 8
  %86 = load ptr, ptr %pTerm, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %86, i32 0, i32 3
  %87 = load i16, ptr %wtFlags, align 2
  %conv63 = zext i16 %87 to i32
  %and64 = and i32 %conv63, 2048
  %cmp65 = icmp eq i32 %and64, 0
  br i1 %cmp65, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %if.then60
  %88 = load ptr, ptr %pRight, align 8
  %call67 = call i32 @sqlite3ExprCanBeNull(ptr noundef %88)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %land.lhs.true
  %89 = load ptr, ptr %v, align 8
  %90 = load i32, ptr %regBase, align 4
  %91 = load i32, ptr %j, align 4
  %add70 = add nsw i32 %90, %91
  %92 = load ptr, ptr %pLevel.addr, align 8
  %addrBrk = getelementptr inbounds nuw %struct.WhereLevel, ptr %92, i32 0, i32 3
  %93 = load i32, ptr %addrBrk, align 4
  %call71 = call i32 @sqlite3VdbeAddOp2(ptr noundef %89, i32 noundef 50, i32 noundef %add70, i32 noundef %93)
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %land.lhs.true, %if.then60
  %94 = load ptr, ptr %zAff, align 8
  %tobool73 = icmp ne ptr %94, null
  br i1 %tobool73, label %if.then74, label %if.end93

if.then74:                                        ; preds = %if.end72
  %95 = load ptr, ptr %pRight, align 8
  %96 = load ptr, ptr %zAff, align 8
  %97 = load i32, ptr %j, align 4
  %idxprom75 = sext i32 %97 to i64
  %arrayidx76 = getelementptr inbounds i8, ptr %96, i64 %idxprom75
  %98 = load i8, ptr %arrayidx76, align 1
  %call77 = call signext i8 @sqlite3CompareAffinity(ptr noundef %95, i8 noundef signext %98)
  %conv78 = sext i8 %call77 to i32
  %cmp79 = icmp eq i32 %conv78, 65
  br i1 %cmp79, label %if.then81, label %if.end84

if.then81:                                        ; preds = %if.then74
  %99 = load ptr, ptr %zAff, align 8
  %100 = load i32, ptr %j, align 4
  %idxprom82 = sext i32 %100 to i64
  %arrayidx83 = getelementptr inbounds i8, ptr %99, i64 %idxprom82
  store i8 65, ptr %arrayidx83, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.then74
  %101 = load ptr, ptr %pRight, align 8
  %102 = load ptr, ptr %zAff, align 8
  %103 = load i32, ptr %j, align 4
  %idxprom85 = sext i32 %103 to i64
  %arrayidx86 = getelementptr inbounds i8, ptr %102, i64 %idxprom85
  %104 = load i8, ptr %arrayidx86, align 1
  %call87 = call i32 @sqlite3ExprNeedsNoAffinityChange(ptr noundef %101, i8 noundef signext %104)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.end84
  %105 = load ptr, ptr %zAff, align 8
  %106 = load i32, ptr %j, align 4
  %idxprom90 = sext i32 %106 to i64
  %arrayidx91 = getelementptr inbounds i8, ptr %105, i64 %idxprom90
  store i8 65, ptr %arrayidx91, align 1
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end84
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.end72
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.else54
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end53
  br label %for.inc96

for.inc96:                                        ; preds = %if.end95
  %107 = load i32, ptr %j, align 4
  %inc97 = add nsw i32 %107, 1
  store i32 %inc97, ptr %j, align 4
  br label %for.cond24, !llvm.loop !8

for.end98:                                        ; preds = %for.cond24
  %108 = load ptr, ptr %zAff, align 8
  %109 = load ptr, ptr %pzAff.addr, align 8
  store ptr %108, ptr %109, align 8
  %110 = load i32, ptr %regBase, align 4
  ret i32 %110
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprNeedsNoAffinityChange(ptr noundef, i8 noundef signext) #0

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
