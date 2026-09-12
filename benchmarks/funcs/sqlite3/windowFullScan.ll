; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WindowCodeArg = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg }
%struct.WindowCsrAndReg = type { i32, i32 }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempRange(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoFromExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @windowAggFinal(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @windowFullScan(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %pMWin = alloca ptr, align 8
  %v = alloca ptr, align 8
  %regCRowid = alloca i32, align 4
  %regCPeer = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %regPeer = alloca i32, align 4
  %nPeer = alloca i32, align 4
  %lblNext = alloca i32, align 4
  %lblBrk = alloca i32, align 4
  %addrNext = alloca i32, align 4
  %csr = alloca i32, align 4
  %addr = alloca i32, align 4
  %addrEq = alloca i32, align 4
  %pKeyInfo = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pMWin2 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pMWin2, align 8
  store ptr %3, ptr %pMWin, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pVdbe, align 8
  store ptr %5, ptr %v, align 8
  store i32 0, ptr %regCRowid, align 4
  store i32 0, ptr %regCPeer, align 4
  store i32 0, ptr %regRowid, align 4
  store i32 0, ptr %regPeer, align 4
  %6 = load ptr, ptr %pMWin, align 8
  %csrApp = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 18
  %7 = load i32, ptr %csrApp, align 4
  store i32 %7, ptr %csr, align 4
  %8 = load ptr, ptr %pMWin, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pOrderBy, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load ptr, ptr %pMWin, align 8
  %pOrderBy3 = getelementptr inbounds nuw %struct.Window, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pOrderBy3, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %nPeer, align 4
  %13 = load ptr, ptr %pParse, align 8
  %call = call i32 @sqlite3VdbeMakeLabel(ptr noundef %13)
  store i32 %call, ptr %lblNext, align 4
  %14 = load ptr, ptr %pParse, align 8
  %call4 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %14)
  store i32 %call4, ptr %lblBrk, align 4
  %15 = load ptr, ptr %pParse, align 8
  %call5 = call i32 @sqlite3GetTempReg(ptr noundef %15)
  store i32 %call5, ptr %regCRowid, align 4
  %16 = load ptr, ptr %pParse, align 8
  %call6 = call i32 @sqlite3GetTempReg(ptr noundef %16)
  store i32 %call6, ptr %regRowid, align 4
  %17 = load i32, ptr %nPeer, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %18 = load ptr, ptr %pParse, align 8
  %19 = load i32, ptr %nPeer, align 4
  %call8 = call i32 @sqlite3GetTempRange(ptr noundef %18, i32 noundef %19)
  store i32 %call8, ptr %regCPeer, align 4
  %20 = load ptr, ptr %pParse, align 8
  %21 = load i32, ptr %nPeer, align 4
  %call9 = call i32 @sqlite3GetTempRange(ptr noundef %20, i32 noundef %21)
  store i32 %call9, ptr %regPeer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %22 = load ptr, ptr %v, align 8
  %23 = load ptr, ptr %pMWin, align 8
  %iEphCsr = getelementptr inbounds nuw %struct.Window, ptr %23, i32 0, i32 15
  %24 = load i32, ptr %iEphCsr, align 8
  %25 = load i32, ptr %regCRowid, align 4
  %call10 = call i32 @sqlite3VdbeAddOp2(ptr noundef %22, i32 noundef 128, i32 noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %p.addr, align 8
  %27 = load ptr, ptr %pMWin, align 8
  %iEphCsr11 = getelementptr inbounds nuw %struct.Window, ptr %27, i32 0, i32 15
  %28 = load i32, ptr %iEphCsr11, align 8
  %29 = load i32, ptr %regCPeer, align 4
  call void @windowReadPeerValues(ptr noundef %26, i32 noundef %28, i32 noundef %29)
  %30 = load ptr, ptr %pMWin, align 8
  store ptr %30, ptr %pWin, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load ptr, ptr %pWin, align 8
  %tobool12 = icmp ne ptr %31, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %v, align 8
  %33 = load ptr, ptr %pWin, align 8
  %regAccum = getelementptr inbounds nuw %struct.Window, ptr %33, i32 0, i32 16
  %34 = load i32, ptr %regAccum, align 4
  %call13 = call i32 @sqlite3VdbeAddOp2(ptr noundef %32, i32 noundef 73, i32 noundef 0, i32 noundef %34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pNextWin, align 8
  store ptr %36, ptr %pWin, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %v, align 8
  %38 = load i32, ptr %csr, align 4
  %39 = load i32, ptr %lblBrk, align 4
  %40 = load ptr, ptr %pMWin, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %40, i32 0, i32 25
  %41 = load i32, ptr %regStartRowid, align 4
  %call14 = call i32 @sqlite3VdbeAddOp3(ptr noundef %37, i32 noundef 24, i32 noundef %38, i32 noundef %39, i32 noundef %41)
  %42 = load ptr, ptr %v, align 8
  %call15 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %42)
  store i32 %call15, ptr %addrNext, align 4
  %43 = load ptr, ptr %v, align 8
  %44 = load i32, ptr %csr, align 4
  %45 = load i32, ptr %regRowid, align 4
  %call16 = call i32 @sqlite3VdbeAddOp2(ptr noundef %43, i32 noundef 128, i32 noundef %44, i32 noundef %45)
  %46 = load ptr, ptr %v, align 8
  %47 = load ptr, ptr %pMWin, align 8
  %regEndRowid = getelementptr inbounds nuw %struct.Window, ptr %47, i32 0, i32 26
  %48 = load i32, ptr %regEndRowid, align 8
  %49 = load i32, ptr %lblBrk, align 4
  %50 = load i32, ptr %regRowid, align 4
  %call17 = call i32 @sqlite3VdbeAddOp3(ptr noundef %46, i32 noundef 54, i32 noundef %48, i32 noundef %49, i32 noundef %50)
  %51 = load ptr, ptr %pMWin, align 8
  %eExclude = getelementptr inbounds nuw %struct.Window, ptr %51, i32 0, i32 8
  %52 = load i8, ptr %eExclude, align 4
  %conv = zext i8 %52 to i32
  %cmp = icmp eq i32 %conv, 85
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.end
  %53 = load ptr, ptr %v, align 8
  %54 = load i32, ptr %regCRowid, align 4
  %55 = load i32, ptr %lblNext, align 4
  %56 = load i32, ptr %regRowid, align 4
  %call20 = call i32 @sqlite3VdbeAddOp3(ptr noundef %53, i32 noundef 53, i32 noundef %54, i32 noundef %55, i32 noundef %56)
  br label %if.end51

if.else:                                          ; preds = %for.end
  %57 = load ptr, ptr %pMWin, align 8
  %eExclude21 = getelementptr inbounds nuw %struct.Window, ptr %57, i32 0, i32 8
  %58 = load i8, ptr %eExclude21, align 4
  %conv22 = zext i8 %58 to i32
  %cmp23 = icmp ne i32 %conv22, 66
  br i1 %cmp23, label %if.then25, label %if.end50

if.then25:                                        ; preds = %if.else
  store i32 0, ptr %addrEq, align 4
  store ptr null, ptr %pKeyInfo, align 8
  %59 = load ptr, ptr %pMWin, align 8
  %pOrderBy26 = getelementptr inbounds nuw %struct.Window, ptr %59, i32 0, i32 3
  %60 = load ptr, ptr %pOrderBy26, align 8
  %tobool27 = icmp ne ptr %60, null
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then25
  %61 = load ptr, ptr %pParse, align 8
  %62 = load ptr, ptr %pMWin, align 8
  %pOrderBy29 = getelementptr inbounds nuw %struct.Window, ptr %62, i32 0, i32 3
  %63 = load ptr, ptr %pOrderBy29, align 8
  %call30 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %61, ptr noundef %63, i32 noundef 0, i32 noundef 0)
  store ptr %call30, ptr %pKeyInfo, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then25
  %64 = load ptr, ptr %pMWin, align 8
  %eExclude32 = getelementptr inbounds nuw %struct.Window, ptr %64, i32 0, i32 8
  %65 = load i8, ptr %eExclude32, align 4
  %conv33 = zext i8 %65 to i32
  %cmp34 = icmp eq i32 %conv33, 94
  br i1 %cmp34, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end31
  %66 = load ptr, ptr %v, align 8
  %67 = load i32, ptr %regCRowid, align 4
  %68 = load i32, ptr %regRowid, align 4
  %call37 = call i32 @sqlite3VdbeAddOp3(ptr noundef %66, i32 noundef 53, i32 noundef %67, i32 noundef 0, i32 noundef %68)
  store i32 %call37, ptr %addrEq, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end31
  %69 = load ptr, ptr %pKeyInfo, align 8
  %tobool39 = icmp ne ptr %69, null
  br i1 %tobool39, label %if.then40, label %if.else44

if.then40:                                        ; preds = %if.end38
  %70 = load ptr, ptr %p.addr, align 8
  %71 = load i32, ptr %csr, align 4
  %72 = load i32, ptr %regPeer, align 4
  call void @windowReadPeerValues(ptr noundef %70, i32 noundef %71, i32 noundef %72)
  %73 = load ptr, ptr %v, align 8
  %74 = load i32, ptr %regPeer, align 4
  %75 = load i32, ptr %regCPeer, align 4
  %76 = load i32, ptr %nPeer, align 4
  %call41 = call i32 @sqlite3VdbeAddOp3(ptr noundef %73, i32 noundef 87, i32 noundef %74, i32 noundef %75, i32 noundef %76)
  %77 = load ptr, ptr %v, align 8
  %78 = load ptr, ptr %pKeyInfo, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %77, ptr noundef %78, i32 noundef -9)
  %79 = load ptr, ptr %v, align 8
  %call42 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %79)
  %add = add nsw i32 %call42, 1
  store i32 %add, ptr %addr, align 4
  %80 = load ptr, ptr %v, align 8
  %81 = load i32, ptr %addr, align 4
  %82 = load i32, ptr %lblNext, align 4
  %83 = load i32, ptr %addr, align 4
  %call43 = call i32 @sqlite3VdbeAddOp3(ptr noundef %80, i32 noundef 16, i32 noundef %81, i32 noundef %82, i32 noundef %83)
  br label %if.end46

if.else44:                                        ; preds = %if.end38
  %84 = load ptr, ptr %v, align 8
  %85 = load i32, ptr %lblNext, align 4
  %call45 = call i32 @sqlite3VdbeAddOp2(ptr noundef %84, i32 noundef 11, i32 noundef 0, i32 noundef %85)
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then40
  %86 = load i32, ptr %addrEq, align 4
  %tobool47 = icmp ne i32 %86, 0
  br i1 %tobool47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end46
  %87 = load ptr, ptr %v, align 8
  %88 = load i32, ptr %addrEq, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %87, i32 noundef %88)
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end46
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then19
  %89 = load ptr, ptr %p.addr, align 8
  %90 = load ptr, ptr %pMWin, align 8
  %91 = load i32, ptr %csr, align 4
  %92 = load ptr, ptr %p.addr, align 8
  %regArg = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %92, i32 0, i32 5
  %93 = load i32, ptr %regArg, align 8
  call void @windowAggStep(ptr noundef %89, ptr noundef %90, i32 noundef %91, i32 noundef 0, i32 noundef %93)
  %94 = load ptr, ptr %v, align 8
  %95 = load i32, ptr %lblNext, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %94, i32 noundef %95)
  %96 = load ptr, ptr %v, align 8
  %97 = load i32, ptr %csr, align 4
  %98 = load i32, ptr %addrNext, align 4
  %call52 = call i32 @sqlite3VdbeAddOp2(ptr noundef %96, i32 noundef 5, i32 noundef %97, i32 noundef %98)
  %99 = load ptr, ptr %v, align 8
  %100 = load i32, ptr %addrNext, align 4
  %sub = sub nsw i32 %100, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %99, i32 noundef %sub)
  %101 = load ptr, ptr %v, align 8
  %102 = load i32, ptr %addrNext, align 4
  %add53 = add nsw i32 %102, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %101, i32 noundef %add53)
  %103 = load ptr, ptr %pParse, align 8
  %104 = load i32, ptr %regRowid, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %103, i32 noundef %104)
  %105 = load ptr, ptr %pParse, align 8
  %106 = load i32, ptr %regCRowid, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %105, i32 noundef %106)
  %107 = load i32, ptr %nPeer, align 4
  %tobool54 = icmp ne i32 %107, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end51
  %108 = load ptr, ptr %pParse, align 8
  %109 = load i32, ptr %regPeer, align 4
  %110 = load i32, ptr %nPeer, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %108, i32 noundef %109, i32 noundef %110)
  %111 = load ptr, ptr %pParse, align 8
  %112 = load i32, ptr %regCPeer, align 4
  %113 = load i32, ptr %nPeer, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %111, i32 noundef %112, i32 noundef %113)
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51
  %114 = load ptr, ptr %p.addr, align 8
  call void @windowAggFinal(ptr noundef %114, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @windowReadPeerValues(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @windowAggStep(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
