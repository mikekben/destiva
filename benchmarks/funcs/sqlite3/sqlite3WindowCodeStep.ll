; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WindowCodeArg = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg }
%struct.WindowCsrAndReg = type { i32, i32 }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP1(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoFromExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WindowCodeStep(ptr noundef %pParse, ptr noundef %p, ptr noundef %pWInfo, i32 noundef %regGosub, i32 noundef %addrGosub) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pWInfo.addr = alloca ptr, align 8
  %regGosub.addr = alloca i32, align 4
  %addrGosub.addr = alloca i32, align 4
  %pMWin = alloca ptr, align 8
  %pOrderBy = alloca ptr, align 8
  %v = alloca ptr, align 8
  %csrWrite = alloca i32, align 4
  %csrInput = alloca i32, align 4
  %nInput = alloca i32, align 4
  %iInput = alloca i32, align 4
  %addrNe = alloca i32, align 4
  %addrGosubFlush = alloca i32, align 4
  %addrInteger = alloca i32, align 4
  %addrEmpty = alloca i32, align 4
  %regNew = alloca i32, align 4
  %regRecord = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %regNewPeer = alloca i32, align 4
  %regPeer = alloca i32, align 4
  %regFlushPart = alloca i32, align 4
  %s = alloca %struct.WindowCodeArg, align 8
  %lblWhereEnd = alloca i32, align 4
  %regStart = alloca i32, align 4
  %regEnd = alloca i32, align 4
  %nPeer = alloca i32, align 4
  %addr = alloca i32, align 4
  %pPart = alloca ptr, align 8
  %nPart = alloca i32, align 4
  %regNewPart = alloca i32, align 4
  %pKeyInfo = alloca ptr, align 8
  %op = alloca i32, align 4
  %addrGe = alloca i32, align 4
  %lbl = alloca i32, align 4
  %addrNext = alloca i32, align 4
  %bRPS = alloca i32, align 4
  %addr301 = alloca i32, align 4
  %lbl313 = alloca i32, align 4
  %bRPS354 = alloca i32, align 4
  %addrStart = alloca i32, align 4
  %addrBreak1 = alloca i32, align 4
  %addrBreak2 = alloca i32, align 4
  %addrBreak3 = alloca i32, align 4
  %addrBreak = alloca i32, align 4
  %addrStart407 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  store i32 %regGosub, ptr %regGosub.addr, align 4
  store i32 %addrGosub, ptr %addrGosub.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pWin = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %pWin, align 8
  store ptr %1, ptr %pMWin, align 8
  %2 = load ptr, ptr %pMWin, align 8
  %pOrderBy1 = getelementptr inbounds nuw %struct.Window, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pOrderBy1, align 8
  store ptr %3, ptr %pOrderBy, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %4)
  store ptr %call, ptr %v, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  %7 = load i32, ptr %iCursor, align 8
  store i32 %7, ptr %csrInput, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %pSrc2 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %pSrc2, align 8
  %a3 = getelementptr inbounds nuw %struct.SrcList, ptr %9, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a3, i64 0, i64 0
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx4, i32 0, i32 4
  %10 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 11
  %11 = load i16, ptr %nCol, align 2
  %conv = sext i16 %11 to i32
  store i32 %conv, ptr %nInput, align 4
  store i32 0, ptr %addrGosubFlush, align 4
  store i32 0, ptr %addrInteger, align 4
  store i32 0, ptr %regNewPeer, align 4
  store i32 0, ptr %regPeer, align 4
  store i32 0, ptr %regFlushPart, align 4
  store i32 0, ptr %regStart, align 4
  store i32 0, ptr %regEnd, align 4
  %12 = load ptr, ptr %pParse.addr, align 8
  %call5 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %12)
  store i32 %call5, ptr %lblWhereEnd, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %s, i8 0, i64 64, i1 false)
  %13 = load ptr, ptr %pParse.addr, align 8
  %pParse6 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 0
  store ptr %13, ptr %pParse6, align 8
  %14 = load ptr, ptr %pMWin, align 8
  %pMWin7 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 1
  store ptr %14, ptr %pMWin7, align 8
  %15 = load ptr, ptr %v, align 8
  %pVdbe = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 2
  store ptr %15, ptr %pVdbe, align 8
  %16 = load i32, ptr %regGosub.addr, align 4
  %regGosub8 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 4
  store i32 %16, ptr %regGosub8, align 4
  %17 = load i32, ptr %addrGosub.addr, align 4
  %addrGosub9 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 3
  store i32 %17, ptr %addrGosub9, align 8
  %18 = load ptr, ptr %pMWin, align 8
  %iEphCsr = getelementptr inbounds nuw %struct.Window, ptr %18, i32 0, i32 15
  %19 = load i32, ptr %iEphCsr, align 8
  %current = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current, i32 0, i32 0
  store i32 %19, ptr %csr, align 8
  %current10 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr11 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current10, i32 0, i32 0
  %20 = load i32, ptr %csr11, align 8
  %add = add nsw i32 %20, 1
  store i32 %add, ptr %csrWrite, align 4
  %current12 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr13 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current12, i32 0, i32 0
  %21 = load i32, ptr %csr13, align 8
  %add14 = add nsw i32 %21, 2
  %start = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 7
  %csr15 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start, i32 0, i32 0
  store i32 %add14, ptr %csr15, align 8
  %current16 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr17 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current16, i32 0, i32 0
  %22 = load i32, ptr %csr17, align 8
  %add18 = add nsw i32 %22, 3
  %end = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 9
  %csr19 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end, i32 0, i32 0
  store i32 %add18, ptr %csr19, align 8
  %23 = load ptr, ptr %pMWin, align 8
  %eStart = getelementptr inbounds nuw %struct.Window, ptr %23, i32 0, i32 5
  %24 = load i8, ptr %eStart, align 1
  %conv20 = zext i8 %24 to i32
  switch i32 %conv20, label %sw.default [
    i32 86, label %sw.bb
    i32 90, label %sw.bb24
  ]

sw.bb:                                            ; preds = %entry
  %25 = load ptr, ptr %pMWin, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %25, i32 0, i32 4
  %26 = load i8, ptr %eFrmType, align 8
  %conv21 = zext i8 %26 to i32
  %cmp = icmp ne i32 %conv21, 89
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load ptr, ptr %pMWin, align 8
  %pStart = getelementptr inbounds nuw %struct.Window, ptr %28, i32 0, i32 9
  %29 = load ptr, ptr %pStart, align 8
  %call23 = call i32 @windowExprGtZero(ptr noundef %27, ptr noundef %29)
  %tobool = icmp ne i32 %call23, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %eDelete = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 6
  store i32 1, ptr %eDelete, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %30 = load ptr, ptr %pMWin, align 8
  %call25 = call i32 @windowCacheFrame(ptr noundef %30)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end45

if.then28:                                        ; preds = %sw.bb24
  %31 = load ptr, ptr %pMWin, align 8
  %eEnd = getelementptr inbounds nuw %struct.Window, ptr %31, i32 0, i32 6
  %32 = load i8, ptr %eEnd, align 2
  %conv29 = zext i8 %32 to i32
  %cmp30 = icmp eq i32 %conv29, 88
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then28
  %33 = load ptr, ptr %pMWin, align 8
  %eFrmType33 = getelementptr inbounds nuw %struct.Window, ptr %33, i32 0, i32 4
  %34 = load i8, ptr %eFrmType33, align 8
  %conv34 = zext i8 %34 to i32
  %cmp35 = icmp ne i32 %conv34, 89
  br i1 %cmp35, label %land.lhs.true37, label %if.end42

land.lhs.true37:                                  ; preds = %if.then32
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %pMWin, align 8
  %pEnd = getelementptr inbounds nuw %struct.Window, ptr %36, i32 0, i32 10
  %37 = load ptr, ptr %pEnd, align 8
  %call38 = call i32 @windowExprGtZero(ptr noundef %35, ptr noundef %37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %land.lhs.true37
  %eDelete41 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 6
  store i32 3, ptr %eDelete41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true37, %if.then32
  br label %if.end44

if.else:                                          ; preds = %if.then28
  %eDelete43 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 6
  store i32 1, ptr %eDelete43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.end42
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %sw.bb24
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %eDelete46 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 6
  store i32 2, ptr %eDelete46, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end45, %if.end
  %38 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %38, i32 0, i32 18
  %39 = load i32, ptr %nMem, align 8
  %add47 = add nsw i32 %39, 1
  store i32 %add47, ptr %regNew, align 4
  %40 = load i32, ptr %nInput, align 4
  %41 = load ptr, ptr %pParse.addr, align 8
  %nMem48 = getelementptr inbounds nuw %struct.Parse, ptr %41, i32 0, i32 18
  %42 = load i32, ptr %nMem48, align 8
  %add49 = add nsw i32 %42, %40
  store i32 %add49, ptr %nMem48, align 8
  %43 = load ptr, ptr %pParse.addr, align 8
  %nMem50 = getelementptr inbounds nuw %struct.Parse, ptr %43, i32 0, i32 18
  %44 = load i32, ptr %nMem50, align 8
  %inc = add nsw i32 %44, 1
  store i32 %inc, ptr %nMem50, align 8
  store i32 %inc, ptr %regRecord, align 4
  %45 = load ptr, ptr %pParse.addr, align 8
  %nMem51 = getelementptr inbounds nuw %struct.Parse, ptr %45, i32 0, i32 18
  %46 = load i32, ptr %nMem51, align 8
  %inc52 = add nsw i32 %46, 1
  store i32 %inc52, ptr %nMem51, align 8
  store i32 %inc52, ptr %regRowid, align 4
  %47 = load ptr, ptr %pMWin, align 8
  %eStart53 = getelementptr inbounds nuw %struct.Window, ptr %47, i32 0, i32 5
  %48 = load i8, ptr %eStart53, align 1
  %conv54 = zext i8 %48 to i32
  %cmp55 = icmp eq i32 %conv54, 88
  br i1 %cmp55, label %if.then61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %49 = load ptr, ptr %pMWin, align 8
  %eStart57 = getelementptr inbounds nuw %struct.Window, ptr %49, i32 0, i32 5
  %50 = load i8, ptr %eStart57, align 1
  %conv58 = zext i8 %50 to i32
  %cmp59 = icmp eq i32 %conv58, 86
  br i1 %cmp59, label %if.then61, label %if.end64

if.then61:                                        ; preds = %lor.lhs.false, %sw.epilog
  %51 = load ptr, ptr %pParse.addr, align 8
  %nMem62 = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 18
  %52 = load i32, ptr %nMem62, align 8
  %inc63 = add nsw i32 %52, 1
  store i32 %inc63, ptr %nMem62, align 8
  store i32 %inc63, ptr %regStart, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %lor.lhs.false
  %53 = load ptr, ptr %pMWin, align 8
  %eEnd65 = getelementptr inbounds nuw %struct.Window, ptr %53, i32 0, i32 6
  %54 = load i8, ptr %eEnd65, align 2
  %conv66 = zext i8 %54 to i32
  %cmp67 = icmp eq i32 %conv66, 88
  br i1 %cmp67, label %if.then74, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %if.end64
  %55 = load ptr, ptr %pMWin, align 8
  %eEnd70 = getelementptr inbounds nuw %struct.Window, ptr %55, i32 0, i32 6
  %56 = load i8, ptr %eEnd70, align 2
  %conv71 = zext i8 %56 to i32
  %cmp72 = icmp eq i32 %conv71, 86
  br i1 %cmp72, label %if.then74, label %if.end77

if.then74:                                        ; preds = %lor.lhs.false69, %if.end64
  %57 = load ptr, ptr %pParse.addr, align 8
  %nMem75 = getelementptr inbounds nuw %struct.Parse, ptr %57, i32 0, i32 18
  %58 = load i32, ptr %nMem75, align 8
  %inc76 = add nsw i32 %58, 1
  store i32 %inc76, ptr %nMem75, align 8
  store i32 %inc76, ptr %regEnd, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %lor.lhs.false69
  %59 = load ptr, ptr %pMWin, align 8
  %eFrmType78 = getelementptr inbounds nuw %struct.Window, ptr %59, i32 0, i32 4
  %60 = load i8, ptr %eFrmType78, align 8
  %conv79 = zext i8 %60 to i32
  %cmp80 = icmp ne i32 %conv79, 76
  br i1 %cmp80, label %if.then82, label %if.end112

if.then82:                                        ; preds = %if.end77
  %61 = load ptr, ptr %pOrderBy, align 8
  %tobool83 = icmp ne ptr %61, null
  br i1 %tobool83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then82
  %62 = load ptr, ptr %pOrderBy, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %62, i32 0, i32 0
  %63 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then82
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %63, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %nPeer, align 4
  %64 = load i32, ptr %regNew, align 4
  %65 = load ptr, ptr %pMWin, align 8
  %nBufferCol = getelementptr inbounds nuw %struct.Window, ptr %65, i32 0, i32 22
  %66 = load i32, ptr %nBufferCol, align 8
  %add84 = add nsw i32 %64, %66
  store i32 %add84, ptr %regNewPeer, align 4
  %67 = load ptr, ptr %pMWin, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %67, i32 0, i32 2
  %68 = load ptr, ptr %pPartition, align 8
  %tobool85 = icmp ne ptr %68, null
  br i1 %tobool85, label %if.then86, label %if.end90

if.then86:                                        ; preds = %cond.end
  %69 = load ptr, ptr %pMWin, align 8
  %pPartition87 = getelementptr inbounds nuw %struct.Window, ptr %69, i32 0, i32 2
  %70 = load ptr, ptr %pPartition87, align 8
  %nExpr88 = getelementptr inbounds nuw %struct.ExprList, ptr %70, i32 0, i32 0
  %71 = load i32, ptr %nExpr88, align 8
  %72 = load i32, ptr %regNewPeer, align 4
  %add89 = add nsw i32 %72, %71
  store i32 %add89, ptr %regNewPeer, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %cond.end
  %73 = load ptr, ptr %pParse.addr, align 8
  %nMem91 = getelementptr inbounds nuw %struct.Parse, ptr %73, i32 0, i32 18
  %74 = load i32, ptr %nMem91, align 8
  %add92 = add nsw i32 %74, 1
  store i32 %add92, ptr %regPeer, align 4
  %75 = load i32, ptr %nPeer, align 4
  %76 = load ptr, ptr %pParse.addr, align 8
  %nMem93 = getelementptr inbounds nuw %struct.Parse, ptr %76, i32 0, i32 18
  %77 = load i32, ptr %nMem93, align 8
  %add94 = add nsw i32 %77, %75
  store i32 %add94, ptr %nMem93, align 8
  %78 = load ptr, ptr %pParse.addr, align 8
  %nMem95 = getelementptr inbounds nuw %struct.Parse, ptr %78, i32 0, i32 18
  %79 = load i32, ptr %nMem95, align 8
  %add96 = add nsw i32 %79, 1
  %start97 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 7
  %reg = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start97, i32 0, i32 1
  store i32 %add96, ptr %reg, align 4
  %80 = load i32, ptr %nPeer, align 4
  %81 = load ptr, ptr %pParse.addr, align 8
  %nMem98 = getelementptr inbounds nuw %struct.Parse, ptr %81, i32 0, i32 18
  %82 = load i32, ptr %nMem98, align 8
  %add99 = add nsw i32 %82, %80
  store i32 %add99, ptr %nMem98, align 8
  %83 = load ptr, ptr %pParse.addr, align 8
  %nMem100 = getelementptr inbounds nuw %struct.Parse, ptr %83, i32 0, i32 18
  %84 = load i32, ptr %nMem100, align 8
  %add101 = add nsw i32 %84, 1
  %current102 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %reg103 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current102, i32 0, i32 1
  store i32 %add101, ptr %reg103, align 4
  %85 = load i32, ptr %nPeer, align 4
  %86 = load ptr, ptr %pParse.addr, align 8
  %nMem104 = getelementptr inbounds nuw %struct.Parse, ptr %86, i32 0, i32 18
  %87 = load i32, ptr %nMem104, align 8
  %add105 = add nsw i32 %87, %85
  store i32 %add105, ptr %nMem104, align 8
  %88 = load ptr, ptr %pParse.addr, align 8
  %nMem106 = getelementptr inbounds nuw %struct.Parse, ptr %88, i32 0, i32 18
  %89 = load i32, ptr %nMem106, align 8
  %add107 = add nsw i32 %89, 1
  %end108 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 9
  %reg109 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end108, i32 0, i32 1
  store i32 %add107, ptr %reg109, align 4
  %90 = load i32, ptr %nPeer, align 4
  %91 = load ptr, ptr %pParse.addr, align 8
  %nMem110 = getelementptr inbounds nuw %struct.Parse, ptr %91, i32 0, i32 18
  %92 = load i32, ptr %nMem110, align 8
  %add111 = add nsw i32 %92, %90
  store i32 %add111, ptr %nMem110, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.end90, %if.end77
  store i32 0, ptr %iInput, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end112
  %93 = load i32, ptr %iInput, align 4
  %94 = load i32, ptr %nInput, align 4
  %cmp113 = icmp slt i32 %93, %94
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %95 = load ptr, ptr %v, align 8
  %96 = load i32, ptr %csrInput, align 4
  %97 = load i32, ptr %iInput, align 4
  %98 = load i32, ptr %regNew, align 4
  %99 = load i32, ptr %iInput, align 4
  %add115 = add nsw i32 %98, %99
  %call116 = call i32 @sqlite3VdbeAddOp3(ptr noundef %95, i32 noundef 90, i32 noundef %96, i32 noundef %97, i32 noundef %add115)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %100 = load i32, ptr %iInput, align 4
  %inc117 = add nsw i32 %100, 1
  store i32 %inc117, ptr %iInput, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %101 = load ptr, ptr %v, align 8
  %102 = load i32, ptr %regNew, align 4
  %103 = load i32, ptr %nInput, align 4
  %104 = load i32, ptr %regRecord, align 4
  %call118 = call i32 @sqlite3VdbeAddOp3(ptr noundef %101, i32 noundef 92, i32 noundef %102, i32 noundef %103, i32 noundef %104)
  %105 = load ptr, ptr %pMWin, align 8
  %pPartition119 = getelementptr inbounds nuw %struct.Window, ptr %105, i32 0, i32 2
  %106 = load ptr, ptr %pPartition119, align 8
  %tobool120 = icmp ne ptr %106, null
  br i1 %tobool120, label %if.then121, label %if.end137

if.then121:                                       ; preds = %for.end
  %107 = load ptr, ptr %pMWin, align 8
  %pPartition122 = getelementptr inbounds nuw %struct.Window, ptr %107, i32 0, i32 2
  %108 = load ptr, ptr %pPartition122, align 8
  store ptr %108, ptr %pPart, align 8
  %109 = load ptr, ptr %pPart, align 8
  %nExpr123 = getelementptr inbounds nuw %struct.ExprList, ptr %109, i32 0, i32 0
  %110 = load i32, ptr %nExpr123, align 8
  store i32 %110, ptr %nPart, align 4
  %111 = load i32, ptr %regNew, align 4
  %112 = load ptr, ptr %pMWin, align 8
  %nBufferCol124 = getelementptr inbounds nuw %struct.Window, ptr %112, i32 0, i32 22
  %113 = load i32, ptr %nBufferCol124, align 8
  %add125 = add nsw i32 %111, %113
  store i32 %add125, ptr %regNewPart, align 4
  %114 = load ptr, ptr %pParse.addr, align 8
  %115 = load ptr, ptr %pPart, align 8
  %call126 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %114, ptr noundef %115, i32 noundef 0, i32 noundef 0)
  store ptr %call126, ptr %pKeyInfo, align 8
  %116 = load ptr, ptr %pParse.addr, align 8
  %nMem127 = getelementptr inbounds nuw %struct.Parse, ptr %116, i32 0, i32 18
  %117 = load i32, ptr %nMem127, align 8
  %inc128 = add nsw i32 %117, 1
  store i32 %inc128, ptr %nMem127, align 8
  store i32 %inc128, ptr %regFlushPart, align 4
  %118 = load ptr, ptr %v, align 8
  %119 = load i32, ptr %regNewPart, align 4
  %120 = load ptr, ptr %pMWin, align 8
  %regPart = getelementptr inbounds nuw %struct.Window, ptr %120, i32 0, i32 20
  %121 = load i32, ptr %regPart, align 4
  %122 = load i32, ptr %nPart, align 4
  %call129 = call i32 @sqlite3VdbeAddOp3(ptr noundef %118, i32 noundef 87, i32 noundef %119, i32 noundef %121, i32 noundef %122)
  store i32 %call129, ptr %addr, align 4
  %123 = load ptr, ptr %v, align 8
  %124 = load ptr, ptr %pKeyInfo, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %123, ptr noundef %124, i32 noundef -9)
  %125 = load ptr, ptr %v, align 8
  %126 = load i32, ptr %addr, align 4
  %add130 = add nsw i32 %126, 2
  %127 = load i32, ptr %addr, align 4
  %add131 = add nsw i32 %127, 4
  %128 = load i32, ptr %addr, align 4
  %add132 = add nsw i32 %128, 2
  %call133 = call i32 @sqlite3VdbeAddOp3(ptr noundef %125, i32 noundef 16, i32 noundef %add130, i32 noundef %add131, i32 noundef %add132)
  %129 = load ptr, ptr %v, align 8
  %130 = load i32, ptr %regFlushPart, align 4
  %call134 = call i32 @sqlite3VdbeAddOp1(ptr noundef %129, i32 noundef 12, i32 noundef %130)
  store i32 %call134, ptr %addrGosubFlush, align 4
  %131 = load ptr, ptr %v, align 8
  %132 = load i32, ptr %regNewPart, align 4
  %133 = load ptr, ptr %pMWin, align 8
  %regPart135 = getelementptr inbounds nuw %struct.Window, ptr %133, i32 0, i32 20
  %134 = load i32, ptr %regPart135, align 4
  %135 = load i32, ptr %nPart, align 4
  %sub = sub nsw i32 %135, 1
  %call136 = call i32 @sqlite3VdbeAddOp3(ptr noundef %131, i32 noundef 78, i32 noundef %132, i32 noundef %134, i32 noundef %sub)
  br label %if.end137

if.end137:                                        ; preds = %if.then121, %for.end
  %136 = load ptr, ptr %v, align 8
  %137 = load i32, ptr %csrWrite, align 4
  %138 = load i32, ptr %regRowid, align 4
  %call138 = call i32 @sqlite3VdbeAddOp2(ptr noundef %136, i32 noundef 121, i32 noundef %137, i32 noundef %138)
  %139 = load ptr, ptr %v, align 8
  %140 = load i32, ptr %csrWrite, align 4
  %141 = load i32, ptr %regRecord, align 4
  %142 = load i32, ptr %regRowid, align 4
  %call139 = call i32 @sqlite3VdbeAddOp3(ptr noundef %139, i32 noundef 122, i32 noundef %140, i32 noundef %141, i32 noundef %142)
  %143 = load ptr, ptr %v, align 8
  %144 = load ptr, ptr %pMWin, align 8
  %regOne = getelementptr inbounds nuw %struct.Window, ptr %144, i32 0, i32 24
  %145 = load i32, ptr %regOne, align 8
  %146 = load i32, ptr %regRowid, align 4
  %call140 = call i32 @sqlite3VdbeAddOp3(ptr noundef %143, i32 noundef 52, i32 noundef %145, i32 noundef 0, i32 noundef %146)
  store i32 %call140, ptr %addrNe, align 4
  %147 = load ptr, ptr %pParse.addr, align 8
  %148 = load ptr, ptr %pMWin, align 8
  %call141 = call i32 @windowInitAccum(ptr noundef %147, ptr noundef %148)
  %regArg = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 5
  store i32 %call141, ptr %regArg, align 8
  %149 = load i32, ptr %regStart, align 4
  %tobool142 = icmp ne i32 %149, 0
  br i1 %tobool142, label %if.then143, label %if.end151

if.then143:                                       ; preds = %if.end137
  %150 = load ptr, ptr %pParse.addr, align 8
  %151 = load ptr, ptr %pMWin, align 8
  %pStart144 = getelementptr inbounds nuw %struct.Window, ptr %151, i32 0, i32 9
  %152 = load ptr, ptr %pStart144, align 8
  %153 = load i32, ptr %regStart, align 4
  call void @sqlite3ExprCode(ptr noundef %150, ptr noundef %152, i32 noundef %153)
  %154 = load ptr, ptr %pParse.addr, align 8
  %155 = load i32, ptr %regStart, align 4
  %156 = load ptr, ptr %pMWin, align 8
  %eFrmType145 = getelementptr inbounds nuw %struct.Window, ptr %156, i32 0, i32 4
  %157 = load i8, ptr %eFrmType145, align 8
  %conv146 = zext i8 %157 to i32
  %cmp147 = icmp eq i32 %conv146, 89
  %158 = zext i1 %cmp147 to i64
  %cond149 = select i1 %cmp147, i32 3, i32 0
  %add150 = add nsw i32 0, %cond149
  call void @windowCheckValue(ptr noundef %154, i32 noundef %155, i32 noundef %add150)
  br label %if.end151

if.end151:                                        ; preds = %if.then143, %if.end137
  %159 = load i32, ptr %regEnd, align 4
  %tobool152 = icmp ne i32 %159, 0
  br i1 %tobool152, label %if.then153, label %if.end161

if.then153:                                       ; preds = %if.end151
  %160 = load ptr, ptr %pParse.addr, align 8
  %161 = load ptr, ptr %pMWin, align 8
  %pEnd154 = getelementptr inbounds nuw %struct.Window, ptr %161, i32 0, i32 10
  %162 = load ptr, ptr %pEnd154, align 8
  %163 = load i32, ptr %regEnd, align 4
  call void @sqlite3ExprCode(ptr noundef %160, ptr noundef %162, i32 noundef %163)
  %164 = load ptr, ptr %pParse.addr, align 8
  %165 = load i32, ptr %regEnd, align 4
  %166 = load ptr, ptr %pMWin, align 8
  %eFrmType155 = getelementptr inbounds nuw %struct.Window, ptr %166, i32 0, i32 4
  %167 = load i8, ptr %eFrmType155, align 8
  %conv156 = zext i8 %167 to i32
  %cmp157 = icmp eq i32 %conv156, 89
  %168 = zext i1 %cmp157 to i64
  %cond159 = select i1 %cmp157, i32 3, i32 0
  %add160 = add nsw i32 1, %cond159
  call void @windowCheckValue(ptr noundef %164, i32 noundef %165, i32 noundef %add160)
  br label %if.end161

if.end161:                                        ; preds = %if.then153, %if.end151
  %169 = load ptr, ptr %pMWin, align 8
  %eFrmType162 = getelementptr inbounds nuw %struct.Window, ptr %169, i32 0, i32 4
  %170 = load i8, ptr %eFrmType162, align 8
  %conv163 = zext i8 %170 to i32
  %cmp164 = icmp ne i32 %conv163, 89
  br i1 %cmp164, label %land.lhs.true166, label %if.end189

land.lhs.true166:                                 ; preds = %if.end161
  %171 = load ptr, ptr %pMWin, align 8
  %eStart167 = getelementptr inbounds nuw %struct.Window, ptr %171, i32 0, i32 5
  %172 = load i8, ptr %eStart167, align 1
  %conv168 = zext i8 %172 to i32
  %173 = load ptr, ptr %pMWin, align 8
  %eEnd169 = getelementptr inbounds nuw %struct.Window, ptr %173, i32 0, i32 6
  %174 = load i8, ptr %eEnd169, align 2
  %conv170 = zext i8 %174 to i32
  %cmp171 = icmp eq i32 %conv168, %conv170
  br i1 %cmp171, label %land.lhs.true173, label %if.end189

land.lhs.true173:                                 ; preds = %land.lhs.true166
  %175 = load i32, ptr %regStart, align 4
  %tobool174 = icmp ne i32 %175, 0
  br i1 %tobool174, label %if.then175, label %if.end189

if.then175:                                       ; preds = %land.lhs.true173
  %176 = load ptr, ptr %pMWin, align 8
  %eStart176 = getelementptr inbounds nuw %struct.Window, ptr %176, i32 0, i32 5
  %177 = load i8, ptr %eStart176, align 1
  %conv177 = zext i8 %177 to i32
  %cmp178 = icmp eq i32 %conv177, 86
  %178 = zext i1 %cmp178 to i64
  %cond180 = select i1 %cmp178, i32 57, i32 55
  store i32 %cond180, ptr %op, align 4
  %179 = load ptr, ptr %v, align 8
  %180 = load i32, ptr %op, align 4
  %181 = load i32, ptr %regStart, align 4
  %182 = load i32, ptr %regEnd, align 4
  %call181 = call i32 @sqlite3VdbeAddOp3(ptr noundef %179, i32 noundef %180, i32 noundef %181, i32 noundef 0, i32 noundef %182)
  store i32 %call181, ptr %addrGe, align 4
  call void @windowAggFinal(ptr noundef %s, i32 noundef 0)
  %183 = load ptr, ptr %v, align 8
  %current182 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr183 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current182, i32 0, i32 0
  %184 = load i32, ptr %csr183, align 8
  %call184 = call i32 @sqlite3VdbeAddOp2(ptr noundef %183, i32 noundef 36, i32 noundef %184, i32 noundef 1)
  call void @windowReturnOneRow(ptr noundef %s)
  %185 = load ptr, ptr %v, align 8
  %current185 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr186 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current185, i32 0, i32 0
  %186 = load i32, ptr %csr186, align 8
  %call187 = call i32 @sqlite3VdbeAddOp1(ptr noundef %185, i32 noundef 138, i32 noundef %186)
  %187 = load ptr, ptr %v, align 8
  %188 = load i32, ptr %lblWhereEnd, align 4
  %call188 = call i32 @sqlite3VdbeAddOp2(ptr noundef %187, i32 noundef 11, i32 noundef 0, i32 noundef %188)
  %189 = load ptr, ptr %v, align 8
  %190 = load i32, ptr %addrGe, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %189, i32 noundef %190)
  br label %if.end189

if.end189:                                        ; preds = %if.then175, %land.lhs.true173, %land.lhs.true166, %if.end161
  %191 = load ptr, ptr %pMWin, align 8
  %eStart190 = getelementptr inbounds nuw %struct.Window, ptr %191, i32 0, i32 5
  %192 = load i8, ptr %eStart190, align 1
  %conv191 = zext i8 %192 to i32
  %cmp192 = icmp eq i32 %conv191, 86
  br i1 %cmp192, label %land.lhs.true194, label %if.end203

land.lhs.true194:                                 ; preds = %if.end189
  %193 = load ptr, ptr %pMWin, align 8
  %eFrmType195 = getelementptr inbounds nuw %struct.Window, ptr %193, i32 0, i32 4
  %194 = load i8, ptr %eFrmType195, align 8
  %conv196 = zext i8 %194 to i32
  %cmp197 = icmp ne i32 %conv196, 89
  br i1 %cmp197, label %land.lhs.true199, label %if.end203

land.lhs.true199:                                 ; preds = %land.lhs.true194
  %195 = load i32, ptr %regEnd, align 4
  %tobool200 = icmp ne i32 %195, 0
  br i1 %tobool200, label %if.then201, label %if.end203

if.then201:                                       ; preds = %land.lhs.true199
  %196 = load ptr, ptr %v, align 8
  %197 = load i32, ptr %regStart, align 4
  %198 = load i32, ptr %regEnd, align 4
  %199 = load i32, ptr %regStart, align 4
  %call202 = call i32 @sqlite3VdbeAddOp3(ptr noundef %196, i32 noundef 104, i32 noundef %197, i32 noundef %198, i32 noundef %199)
  br label %if.end203

if.end203:                                        ; preds = %if.then201, %land.lhs.true199, %land.lhs.true194, %if.end189
  %200 = load ptr, ptr %pMWin, align 8
  %eStart204 = getelementptr inbounds nuw %struct.Window, ptr %200, i32 0, i32 5
  %201 = load i8, ptr %eStart204, align 1
  %conv205 = zext i8 %201 to i32
  %cmp206 = icmp ne i32 %conv205, 90
  br i1 %cmp206, label %if.then208, label %if.end212

if.then208:                                       ; preds = %if.end203
  %202 = load ptr, ptr %v, align 8
  %start209 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 7
  %csr210 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start209, i32 0, i32 0
  %203 = load i32, ptr %csr210, align 8
  %call211 = call i32 @sqlite3VdbeAddOp2(ptr noundef %202, i32 noundef 36, i32 noundef %203, i32 noundef 1)
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %if.end203
  %204 = load ptr, ptr %v, align 8
  %current213 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr214 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current213, i32 0, i32 0
  %205 = load i32, ptr %csr214, align 8
  %call215 = call i32 @sqlite3VdbeAddOp2(ptr noundef %204, i32 noundef 36, i32 noundef %205, i32 noundef 1)
  %206 = load ptr, ptr %v, align 8
  %end216 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 9
  %csr217 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end216, i32 0, i32 0
  %207 = load i32, ptr %csr217, align 8
  %call218 = call i32 @sqlite3VdbeAddOp2(ptr noundef %206, i32 noundef 36, i32 noundef %207, i32 noundef 1)
  %208 = load i32, ptr %regPeer, align 4
  %tobool219 = icmp ne i32 %208, 0
  br i1 %tobool219, label %land.lhs.true220, label %if.end241

land.lhs.true220:                                 ; preds = %if.end212
  %209 = load ptr, ptr %pOrderBy, align 8
  %tobool221 = icmp ne ptr %209, null
  br i1 %tobool221, label %if.then222, label %if.end241

if.then222:                                       ; preds = %land.lhs.true220
  %210 = load ptr, ptr %v, align 8
  %211 = load i32, ptr %regNewPeer, align 4
  %212 = load i32, ptr %regPeer, align 4
  %213 = load ptr, ptr %pOrderBy, align 8
  %nExpr223 = getelementptr inbounds nuw %struct.ExprList, ptr %213, i32 0, i32 0
  %214 = load i32, ptr %nExpr223, align 8
  %sub224 = sub nsw i32 %214, 1
  %call225 = call i32 @sqlite3VdbeAddOp3(ptr noundef %210, i32 noundef 78, i32 noundef %211, i32 noundef %212, i32 noundef %sub224)
  %215 = load ptr, ptr %v, align 8
  %216 = load i32, ptr %regPeer, align 4
  %start226 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 7
  %reg227 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start226, i32 0, i32 1
  %217 = load i32, ptr %reg227, align 4
  %218 = load ptr, ptr %pOrderBy, align 8
  %nExpr228 = getelementptr inbounds nuw %struct.ExprList, ptr %218, i32 0, i32 0
  %219 = load i32, ptr %nExpr228, align 8
  %sub229 = sub nsw i32 %219, 1
  %call230 = call i32 @sqlite3VdbeAddOp3(ptr noundef %215, i32 noundef 78, i32 noundef %216, i32 noundef %217, i32 noundef %sub229)
  %220 = load ptr, ptr %v, align 8
  %221 = load i32, ptr %regPeer, align 4
  %current231 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %reg232 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current231, i32 0, i32 1
  %222 = load i32, ptr %reg232, align 4
  %223 = load ptr, ptr %pOrderBy, align 8
  %nExpr233 = getelementptr inbounds nuw %struct.ExprList, ptr %223, i32 0, i32 0
  %224 = load i32, ptr %nExpr233, align 8
  %sub234 = sub nsw i32 %224, 1
  %call235 = call i32 @sqlite3VdbeAddOp3(ptr noundef %220, i32 noundef 78, i32 noundef %221, i32 noundef %222, i32 noundef %sub234)
  %225 = load ptr, ptr %v, align 8
  %226 = load i32, ptr %regPeer, align 4
  %end236 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 9
  %reg237 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end236, i32 0, i32 1
  %227 = load i32, ptr %reg237, align 4
  %228 = load ptr, ptr %pOrderBy, align 8
  %nExpr238 = getelementptr inbounds nuw %struct.ExprList, ptr %228, i32 0, i32 0
  %229 = load i32, ptr %nExpr238, align 8
  %sub239 = sub nsw i32 %229, 1
  %call240 = call i32 @sqlite3VdbeAddOp3(ptr noundef %225, i32 noundef 78, i32 noundef %226, i32 noundef %227, i32 noundef %sub239)
  br label %if.end241

if.end241:                                        ; preds = %if.then222, %land.lhs.true220, %if.end212
  %230 = load ptr, ptr %v, align 8
  %231 = load i32, ptr %lblWhereEnd, align 4
  %call242 = call i32 @sqlite3VdbeAddOp2(ptr noundef %230, i32 noundef 11, i32 noundef 0, i32 noundef %231)
  %232 = load ptr, ptr %v, align 8
  %233 = load i32, ptr %addrNe, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %232, i32 noundef %233)
  %234 = load i32, ptr %regPeer, align 4
  %tobool243 = icmp ne i32 %234, 0
  br i1 %tobool243, label %if.then244, label %if.end245

if.then244:                                       ; preds = %if.end241
  %235 = load ptr, ptr %pParse.addr, align 8
  %236 = load ptr, ptr %pOrderBy, align 8
  %237 = load i32, ptr %regNewPeer, align 4
  %238 = load i32, ptr %regPeer, align 4
  %239 = load i32, ptr %lblWhereEnd, align 4
  call void @windowIfNewPeer(ptr noundef %235, ptr noundef %236, i32 noundef %237, i32 noundef %238, i32 noundef %239)
  br label %if.end245

if.end245:                                        ; preds = %if.then244, %if.end241
  %240 = load ptr, ptr %pMWin, align 8
  %eStart246 = getelementptr inbounds nuw %struct.Window, ptr %240, i32 0, i32 5
  %241 = load i8, ptr %eStart246, align 1
  %conv247 = zext i8 %241 to i32
  %cmp248 = icmp eq i32 %conv247, 86
  br i1 %cmp248, label %if.then250, label %if.else276

if.then250:                                       ; preds = %if.end245
  %call251 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 3, i32 noundef 0, i32 noundef 0)
  %242 = load ptr, ptr %pMWin, align 8
  %eEnd252 = getelementptr inbounds nuw %struct.Window, ptr %242, i32 0, i32 6
  %243 = load i8, ptr %eEnd252, align 2
  %conv253 = zext i8 %243 to i32
  %cmp254 = icmp ne i32 %conv253, 90
  br i1 %cmp254, label %if.then256, label %if.end275

if.then256:                                       ; preds = %if.then250
  %244 = load ptr, ptr %pMWin, align 8
  %eFrmType257 = getelementptr inbounds nuw %struct.Window, ptr %244, i32 0, i32 4
  %245 = load i8, ptr %eFrmType257, align 8
  %conv258 = zext i8 %245 to i32
  %cmp259 = icmp eq i32 %conv258, 89
  br i1 %cmp259, label %if.then261, label %if.else271

if.then261:                                       ; preds = %if.then256
  %246 = load ptr, ptr %pParse.addr, align 8
  %call262 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %246)
  store i32 %call262, ptr %lbl, align 4
  %247 = load ptr, ptr %v, align 8
  %call263 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %247)
  store i32 %call263, ptr %addrNext, align 4
  %current264 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr265 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current264, i32 0, i32 0
  %248 = load i32, ptr %csr265, align 8
  %249 = load i32, ptr %regEnd, align 4
  %end266 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 9
  %csr267 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end266, i32 0, i32 0
  %250 = load i32, ptr %csr267, align 8
  %251 = load i32, ptr %lbl, align 4
  call void @windowCodeRangeTest(ptr noundef %s, i32 noundef 57, i32 noundef %248, i32 noundef %249, i32 noundef %250, i32 noundef %251)
  %252 = load i32, ptr %regStart, align 4
  %call268 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %252, i32 noundef 0)
  %call269 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %253 = load ptr, ptr %v, align 8
  %254 = load i32, ptr %addrNext, align 4
  %call270 = call i32 @sqlite3VdbeAddOp2(ptr noundef %253, i32 noundef 11, i32 noundef 0, i32 noundef %254)
  %255 = load ptr, ptr %v, align 8
  %256 = load i32, ptr %lbl, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %255, i32 noundef %256)
  br label %if.end274

if.else271:                                       ; preds = %if.then256
  %257 = load i32, ptr %regEnd, align 4
  %call272 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef %257, i32 noundef 0)
  %258 = load i32, ptr %regStart, align 4
  %call273 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %258, i32 noundef 0)
  br label %if.end274

if.end274:                                        ; preds = %if.else271, %if.then261
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.then250
  br label %if.end342

if.else276:                                       ; preds = %if.end245
  %259 = load ptr, ptr %pMWin, align 8
  %eEnd277 = getelementptr inbounds nuw %struct.Window, ptr %259, i32 0, i32 6
  %260 = load i8, ptr %eEnd277, align 2
  %conv278 = zext i8 %260 to i32
  %cmp279 = icmp eq i32 %conv278, 88
  br i1 %cmp279, label %if.then281, label %if.else300

if.then281:                                       ; preds = %if.else276
  %261 = load ptr, ptr %pMWin, align 8
  %eStart282 = getelementptr inbounds nuw %struct.Window, ptr %261, i32 0, i32 5
  %262 = load i8, ptr %eStart282, align 1
  %conv283 = zext i8 %262 to i32
  %cmp284 = icmp eq i32 %conv283, 88
  br i1 %cmp284, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then281
  %263 = load ptr, ptr %pMWin, align 8
  %eFrmType286 = getelementptr inbounds nuw %struct.Window, ptr %263, i32 0, i32 4
  %264 = load i8, ptr %eFrmType286, align 8
  %conv287 = zext i8 %264 to i32
  %cmp288 = icmp eq i32 %conv287, 89
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then281
  %265 = phi i1 [ false, %if.then281 ], [ %cmp288, %land.rhs ]
  %land.ext = zext i1 %265 to i32
  store i32 %land.ext, ptr %bRPS, align 4
  %266 = load i32, ptr %regEnd, align 4
  %call290 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 3, i32 noundef %266, i32 noundef 0)
  %267 = load i32, ptr %bRPS, align 4
  %tobool291 = icmp ne i32 %267, 0
  br i1 %tobool291, label %if.then292, label %if.end294

if.then292:                                       ; preds = %land.end
  %268 = load i32, ptr %regStart, align 4
  %call293 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %268, i32 noundef 0)
  br label %if.end294

if.end294:                                        ; preds = %if.then292, %land.end
  %call295 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %269 = load i32, ptr %bRPS, align 4
  %tobool296 = icmp ne i32 %269, 0
  br i1 %tobool296, label %if.end299, label %if.then297

if.then297:                                       ; preds = %if.end294
  %270 = load i32, ptr %regStart, align 4
  %call298 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %270, i32 noundef 0)
  br label %if.end299

if.end299:                                        ; preds = %if.then297, %if.end294
  br label %if.end341

if.else300:                                       ; preds = %if.else276
  store i32 0, ptr %addr301, align 4
  %call302 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 3, i32 noundef 0, i32 noundef 0)
  %271 = load ptr, ptr %pMWin, align 8
  %eEnd303 = getelementptr inbounds nuw %struct.Window, ptr %271, i32 0, i32 6
  %272 = load i8, ptr %eEnd303, align 2
  %conv304 = zext i8 %272 to i32
  %cmp305 = icmp ne i32 %conv304, 90
  br i1 %cmp305, label %if.then307, label %if.end340

if.then307:                                       ; preds = %if.else300
  %273 = load ptr, ptr %pMWin, align 8
  %eFrmType308 = getelementptr inbounds nuw %struct.Window, ptr %273, i32 0, i32 4
  %274 = load i8, ptr %eFrmType308, align 8
  %conv309 = zext i8 %274 to i32
  %cmp310 = icmp eq i32 %conv309, 89
  br i1 %cmp310, label %if.then312, label %if.else329

if.then312:                                       ; preds = %if.then307
  store i32 0, ptr %lbl313, align 4
  %275 = load ptr, ptr %v, align 8
  %call314 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %275)
  store i32 %call314, ptr %addr301, align 4
  %276 = load i32, ptr %regEnd, align 4
  %tobool315 = icmp ne i32 %276, 0
  br i1 %tobool315, label %if.then316, label %if.end322

if.then316:                                       ; preds = %if.then312
  %277 = load ptr, ptr %pParse.addr, align 8
  %call317 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %277)
  store i32 %call317, ptr %lbl313, align 4
  %current318 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr319 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current318, i32 0, i32 0
  %278 = load i32, ptr %csr319, align 8
  %279 = load i32, ptr %regEnd, align 4
  %end320 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 9
  %csr321 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end320, i32 0, i32 0
  %280 = load i32, ptr %csr321, align 8
  %281 = load i32, ptr %lbl313, align 4
  call void @windowCodeRangeTest(ptr noundef %s, i32 noundef 57, i32 noundef %278, i32 noundef %279, i32 noundef %280, i32 noundef %281)
  br label %if.end322

if.end322:                                        ; preds = %if.then316, %if.then312
  %call323 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %282 = load i32, ptr %regStart, align 4
  %call324 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %282, i32 noundef 0)
  %283 = load i32, ptr %regEnd, align 4
  %tobool325 = icmp ne i32 %283, 0
  br i1 %tobool325, label %if.then326, label %if.end328

if.then326:                                       ; preds = %if.end322
  %284 = load ptr, ptr %v, align 8
  %285 = load i32, ptr %addr301, align 4
  %call327 = call i32 @sqlite3VdbeAddOp2(ptr noundef %284, i32 noundef 11, i32 noundef 0, i32 noundef %285)
  %286 = load ptr, ptr %v, align 8
  %287 = load i32, ptr %lbl313, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %286, i32 noundef %287)
  br label %if.end328

if.end328:                                        ; preds = %if.then326, %if.end322
  br label %if.end339

if.else329:                                       ; preds = %if.then307
  %288 = load i32, ptr %regEnd, align 4
  %tobool330 = icmp ne i32 %288, 0
  br i1 %tobool330, label %if.then331, label %if.end333

if.then331:                                       ; preds = %if.else329
  %289 = load ptr, ptr %v, align 8
  %290 = load i32, ptr %regEnd, align 4
  %call332 = call i32 @sqlite3VdbeAddOp3(ptr noundef %289, i32 noundef 47, i32 noundef %290, i32 noundef 0, i32 noundef 1)
  store i32 %call332, ptr %addr301, align 4
  br label %if.end333

if.end333:                                        ; preds = %if.then331, %if.else329
  %call334 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %291 = load i32, ptr %regStart, align 4
  %call335 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %291, i32 noundef 0)
  %292 = load i32, ptr %regEnd, align 4
  %tobool336 = icmp ne i32 %292, 0
  br i1 %tobool336, label %if.then337, label %if.end338

if.then337:                                       ; preds = %if.end333
  %293 = load ptr, ptr %v, align 8
  %294 = load i32, ptr %addr301, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %293, i32 noundef %294)
  br label %if.end338

if.end338:                                        ; preds = %if.then337, %if.end333
  br label %if.end339

if.end339:                                        ; preds = %if.end338, %if.end328
  br label %if.end340

if.end340:                                        ; preds = %if.end339, %if.else300
  br label %if.end341

if.end341:                                        ; preds = %if.end340, %if.end299
  br label %if.end342

if.end342:                                        ; preds = %if.end341, %if.end275
  %295 = load ptr, ptr %v, align 8
  %296 = load i32, ptr %lblWhereEnd, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %295, i32 noundef %296)
  %297 = load ptr, ptr %pWInfo.addr, align 8
  call void @sqlite3WhereEnd(ptr noundef %297)
  %298 = load ptr, ptr %pMWin, align 8
  %pPartition343 = getelementptr inbounds nuw %struct.Window, ptr %298, i32 0, i32 2
  %299 = load ptr, ptr %pPartition343, align 8
  %tobool344 = icmp ne ptr %299, null
  br i1 %tobool344, label %if.then345, label %if.end347

if.then345:                                       ; preds = %if.end342
  %300 = load ptr, ptr %v, align 8
  %301 = load i32, ptr %regFlushPart, align 4
  %call346 = call i32 @sqlite3VdbeAddOp2(ptr noundef %300, i32 noundef 70, i32 noundef 0, i32 noundef %301)
  store i32 %call346, ptr %addrInteger, align 4
  %302 = load ptr, ptr %v, align 8
  %303 = load i32, ptr %addrGosubFlush, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %302, i32 noundef %303)
  br label %if.end347

if.end347:                                        ; preds = %if.then345, %if.end342
  %304 = load ptr, ptr %v, align 8
  %305 = load i32, ptr %csrWrite, align 4
  %call348 = call i32 @sqlite3VdbeAddOp1(ptr noundef %304, i32 noundef 36, i32 noundef %305)
  store i32 %call348, ptr %addrEmpty, align 4
  %306 = load ptr, ptr %pMWin, align 8
  %eEnd349 = getelementptr inbounds nuw %struct.Window, ptr %306, i32 0, i32 6
  %307 = load i8, ptr %eEnd349, align 2
  %conv350 = zext i8 %307 to i32
  %cmp351 = icmp eq i32 %conv350, 88
  br i1 %cmp351, label %if.then353, label %if.else372

if.then353:                                       ; preds = %if.end347
  %308 = load ptr, ptr %pMWin, align 8
  %eStart355 = getelementptr inbounds nuw %struct.Window, ptr %308, i32 0, i32 5
  %309 = load i8, ptr %eStart355, align 1
  %conv356 = zext i8 %309 to i32
  %cmp357 = icmp eq i32 %conv356, 88
  br i1 %cmp357, label %land.rhs359, label %land.end364

land.rhs359:                                      ; preds = %if.then353
  %310 = load ptr, ptr %pMWin, align 8
  %eFrmType360 = getelementptr inbounds nuw %struct.Window, ptr %310, i32 0, i32 4
  %311 = load i8, ptr %eFrmType360, align 8
  %conv361 = zext i8 %311 to i32
  %cmp362 = icmp eq i32 %conv361, 89
  br label %land.end364

land.end364:                                      ; preds = %land.rhs359, %if.then353
  %312 = phi i1 [ false, %if.then353 ], [ %cmp362, %land.rhs359 ]
  %land.ext365 = zext i1 %312 to i32
  store i32 %land.ext365, ptr %bRPS354, align 4
  %313 = load i32, ptr %regEnd, align 4
  %call366 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 3, i32 noundef %313, i32 noundef 0)
  %314 = load i32, ptr %bRPS354, align 4
  %tobool367 = icmp ne i32 %314, 0
  br i1 %tobool367, label %if.then368, label %if.end370

if.then368:                                       ; preds = %land.end364
  %315 = load i32, ptr %regStart, align 4
  %call369 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %315, i32 noundef 0)
  br label %if.end370

if.end370:                                        ; preds = %if.then368, %land.end364
  %call371 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  br label %if.end414

if.else372:                                       ; preds = %if.end347
  %316 = load ptr, ptr %pMWin, align 8
  %eStart373 = getelementptr inbounds nuw %struct.Window, ptr %316, i32 0, i32 5
  %317 = load i8, ptr %eStart373, align 1
  %conv374 = zext i8 %317 to i32
  %cmp375 = icmp eq i32 %conv374, 86
  br i1 %cmp375, label %if.then377, label %if.else406

if.then377:                                       ; preds = %if.else372
  %call378 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 3, i32 noundef 0, i32 noundef 0)
  %318 = load ptr, ptr %pMWin, align 8
  %eFrmType379 = getelementptr inbounds nuw %struct.Window, ptr %318, i32 0, i32 4
  %319 = load i8, ptr %eFrmType379, align 8
  %conv380 = zext i8 %319 to i32
  %cmp381 = icmp eq i32 %conv380, 89
  br i1 %cmp381, label %if.then383, label %if.else387

if.then383:                                       ; preds = %if.then377
  %320 = load ptr, ptr %v, align 8
  %call384 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %320)
  store i32 %call384, ptr %addrStart, align 4
  %321 = load i32, ptr %regStart, align 4
  %call385 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %321, i32 noundef 1)
  store i32 %call385, ptr %addrBreak2, align 4
  %call386 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  store i32 %call386, ptr %addrBreak1, align 4
  br label %if.end401

if.else387:                                       ; preds = %if.then377
  %322 = load ptr, ptr %pMWin, align 8
  %eEnd388 = getelementptr inbounds nuw %struct.Window, ptr %322, i32 0, i32 6
  %323 = load i8, ptr %eEnd388, align 2
  %conv389 = zext i8 %323 to i32
  %cmp390 = icmp eq i32 %conv389, 90
  br i1 %cmp390, label %if.then392, label %if.else396

if.then392:                                       ; preds = %if.else387
  %324 = load ptr, ptr %v, align 8
  %call393 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %324)
  store i32 %call393, ptr %addrStart, align 4
  %325 = load i32, ptr %regStart, align 4
  %call394 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef %325, i32 noundef 1)
  store i32 %call394, ptr %addrBreak1, align 4
  %call395 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef 0, i32 noundef 1)
  store i32 %call395, ptr %addrBreak2, align 4
  br label %if.end400

if.else396:                                       ; preds = %if.else387
  %326 = load ptr, ptr %v, align 8
  %call397 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %326)
  store i32 %call397, ptr %addrStart, align 4
  %327 = load i32, ptr %regEnd, align 4
  %call398 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef %327, i32 noundef 1)
  store i32 %call398, ptr %addrBreak1, align 4
  %328 = load i32, ptr %regStart, align 4
  %call399 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %328, i32 noundef 1)
  store i32 %call399, ptr %addrBreak2, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.else396, %if.then392
  br label %if.end401

if.end401:                                        ; preds = %if.end400, %if.then383
  %329 = load ptr, ptr %v, align 8
  %330 = load i32, ptr %addrStart, align 4
  %call402 = call i32 @sqlite3VdbeAddOp2(ptr noundef %329, i32 noundef 11, i32 noundef 0, i32 noundef %330)
  %331 = load ptr, ptr %v, align 8
  %332 = load i32, ptr %addrBreak2, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %331, i32 noundef %332)
  %333 = load ptr, ptr %v, align 8
  %call403 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %333)
  store i32 %call403, ptr %addrStart, align 4
  %call404 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  store i32 %call404, ptr %addrBreak3, align 4
  %334 = load ptr, ptr %v, align 8
  %335 = load i32, ptr %addrStart, align 4
  %call405 = call i32 @sqlite3VdbeAddOp2(ptr noundef %334, i32 noundef 11, i32 noundef 0, i32 noundef %335)
  %336 = load ptr, ptr %v, align 8
  %337 = load i32, ptr %addrBreak1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %336, i32 noundef %337)
  %338 = load ptr, ptr %v, align 8
  %339 = load i32, ptr %addrBreak3, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %338, i32 noundef %339)
  br label %if.end413

if.else406:                                       ; preds = %if.else372
  %call408 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 3, i32 noundef 0, i32 noundef 0)
  %340 = load ptr, ptr %v, align 8
  %call409 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %340)
  store i32 %call409, ptr %addrStart407, align 4
  %call410 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  store i32 %call410, ptr %addrBreak, align 4
  %341 = load i32, ptr %regStart, align 4
  %call411 = call i32 @windowCodeOp(ptr noundef %s, i32 noundef 2, i32 noundef %341, i32 noundef 0)
  %342 = load ptr, ptr %v, align 8
  %343 = load i32, ptr %addrStart407, align 4
  %call412 = call i32 @sqlite3VdbeAddOp2(ptr noundef %342, i32 noundef 11, i32 noundef 0, i32 noundef %343)
  %344 = load ptr, ptr %v, align 8
  %345 = load i32, ptr %addrBreak, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %344, i32 noundef %345)
  br label %if.end413

if.end413:                                        ; preds = %if.else406, %if.end401
  br label %if.end414

if.end414:                                        ; preds = %if.end413, %if.end370
  %346 = load ptr, ptr %v, align 8
  %347 = load i32, ptr %addrEmpty, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %346, i32 noundef %347)
  %348 = load ptr, ptr %v, align 8
  %current415 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %s, i32 0, i32 8
  %csr416 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current415, i32 0, i32 0
  %349 = load i32, ptr %csr416, align 8
  %call417 = call i32 @sqlite3VdbeAddOp1(ptr noundef %348, i32 noundef 138, i32 noundef %349)
  %350 = load ptr, ptr %pMWin, align 8
  %pPartition418 = getelementptr inbounds nuw %struct.Window, ptr %350, i32 0, i32 2
  %351 = load ptr, ptr %pPartition418, align 8
  %tobool419 = icmp ne ptr %351, null
  br i1 %tobool419, label %if.then420, label %if.end429

if.then420:                                       ; preds = %if.end414
  %352 = load ptr, ptr %pMWin, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %352, i32 0, i32 25
  %353 = load i32, ptr %regStartRowid, align 4
  %tobool421 = icmp ne i32 %353, 0
  br i1 %tobool421, label %if.then422, label %if.end426

if.then422:                                       ; preds = %if.then420
  %354 = load ptr, ptr %v, align 8
  %355 = load ptr, ptr %pMWin, align 8
  %regStartRowid423 = getelementptr inbounds nuw %struct.Window, ptr %355, i32 0, i32 25
  %356 = load i32, ptr %regStartRowid423, align 4
  %call424 = call i32 @sqlite3VdbeAddOp2(ptr noundef %354, i32 noundef 70, i32 noundef 1, i32 noundef %356)
  %357 = load ptr, ptr %v, align 8
  %358 = load ptr, ptr %pMWin, align 8
  %regEndRowid = getelementptr inbounds nuw %struct.Window, ptr %358, i32 0, i32 26
  %359 = load i32, ptr %regEndRowid, align 8
  %call425 = call i32 @sqlite3VdbeAddOp2(ptr noundef %357, i32 noundef 70, i32 noundef 0, i32 noundef %359)
  br label %if.end426

if.end426:                                        ; preds = %if.then422, %if.then420
  %360 = load ptr, ptr %v, align 8
  %361 = load i32, ptr %addrInteger, align 4
  %362 = load ptr, ptr %v, align 8
  %call427 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %362)
  call void @sqlite3VdbeChangeP1(ptr noundef %360, i32 noundef %361, i32 noundef %call427)
  %363 = load ptr, ptr %v, align 8
  %364 = load i32, ptr %regFlushPart, align 4
  %call428 = call i32 @sqlite3VdbeAddOp1(ptr noundef %363, i32 noundef 66, i32 noundef %364)
  br label %if.end429

if.end429:                                        ; preds = %if.end426, %if.end414
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereEnd(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @windowExprGtZero(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @windowCacheFrame(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @windowInitAccum(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @windowCheckValue(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @windowAggFinal(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @windowReturnOneRow(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @windowIfNewPeer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @windowCodeOp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @windowCodeRangeTest(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
