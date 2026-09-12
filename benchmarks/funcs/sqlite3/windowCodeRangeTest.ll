; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WindowCodeArg = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg }
%struct.WindowCsrAndReg = type { i32, i32 }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1

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
declare hidden void @sqlite3VdbeChangeP2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @windowCodeRangeTest(ptr noundef %p, i32 noundef %op, i32 noundef %csr1, i32 noundef %regVal, i32 noundef %csr2, i32 noundef %lbl) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %csr1.addr = alloca i32, align 4
  %regVal.addr = alloca i32, align 4
  %csr2.addr = alloca i32, align 4
  %lbl.addr = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pOrderBy = alloca ptr, align 8
  %reg1 = alloca i32, align 4
  %reg2 = alloca i32, align 4
  %regString = alloca i32, align 4
  %arith = alloca i32, align 4
  %addrGe = alloca i32, align 4
  %addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %csr1, ptr %csr1.addr, align 4
  store i32 %regVal, ptr %regVal.addr, align 4
  store i32 %csr2, ptr %csr2.addr, align 4
  store i32 %lbl, ptr %lbl.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %pParse, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %2)
  store ptr %call, ptr %v, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %pMWin = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pMWin, align 8
  %pOrderBy2 = getelementptr inbounds nuw %struct.Window, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pOrderBy2, align 8
  store ptr %5, ptr %pOrderBy, align 8
  %6 = load ptr, ptr %pParse, align 8
  %call3 = call i32 @sqlite3GetTempReg(ptr noundef %6)
  store i32 %call3, ptr %reg1, align 4
  %7 = load ptr, ptr %pParse, align 8
  %call4 = call i32 @sqlite3GetTempReg(ptr noundef %7)
  store i32 %call4, ptr %reg2, align 4
  %8 = load ptr, ptr %pParse, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 18
  %9 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %regString, align 4
  store i32 103, ptr %arith, align 4
  %10 = load ptr, ptr %pOrderBy, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 3
  %11 = load i8, ptr %sortFlags, align 8
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load i32, ptr %op.addr, align 4
  switch i32 %12, label %sw.default [
    i32 57, label %sw.bb
    i32 54, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.then
  store i32 55, ptr %op.addr, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  store i32 56, ptr %op.addr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  store i32 57, ptr %op.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  store i32 104, ptr %arith, align 4
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load i32, ptr %csr1.addr, align 4
  %15 = load i32, ptr %reg1, align 4
  call void @windowReadPeerValues(ptr noundef %13, i32 noundef %14, i32 noundef %15)
  %16 = load ptr, ptr %p.addr, align 8
  %17 = load i32, ptr %csr2.addr, align 4
  %18 = load i32, ptr %reg2, align 4
  call void @windowReadPeerValues(ptr noundef %16, i32 noundef %17, i32 noundef %18)
  %19 = load ptr, ptr %v, align 8
  %20 = load i32, ptr %regString, align 4
  %call6 = call i32 @sqlite3VdbeAddOp4(ptr noundef %19, i32 noundef 113, i32 noundef 0, i32 noundef %20, i32 noundef 0, ptr noundef @.str.3, i32 noundef -1)
  %21 = load ptr, ptr %v, align 8
  %22 = load i32, ptr %regString, align 4
  %23 = load i32, ptr %reg1, align 4
  %call7 = call i32 @sqlite3VdbeAddOp3(ptr noundef %21, i32 noundef 57, i32 noundef %22, i32 noundef 0, i32 noundef %23)
  store i32 %call7, ptr %addrGe, align 4
  %24 = load ptr, ptr %v, align 8
  %25 = load i32, ptr %arith, align 4
  %26 = load i32, ptr %regVal.addr, align 4
  %27 = load i32, ptr %reg1, align 4
  %28 = load i32, ptr %reg1, align 4
  %call8 = call i32 @sqlite3VdbeAddOp3(ptr noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %v, align 8
  %30 = load i32, ptr %addrGe, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %29, i32 noundef %30)
  %31 = load ptr, ptr %pOrderBy, align 8
  %a9 = getelementptr inbounds nuw %struct.ExprList, ptr %31, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a9, i64 0, i64 0
  %sortFlags11 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx10, i32 0, i32 3
  %32 = load i8, ptr %sortFlags11, align 8
  %conv12 = zext i8 %32 to i32
  %and13 = and i32 %conv12, 2
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end35

if.then15:                                        ; preds = %if.end
  %33 = load ptr, ptr %v, align 8
  %34 = load i32, ptr %reg1, align 4
  %call16 = call i32 @sqlite3VdbeAddOp1(ptr noundef %33, i32 noundef 51, i32 noundef %34)
  store i32 %call16, ptr %addr, align 4
  %35 = load i32, ptr %op.addr, align 4
  switch i32 %35, label %sw.default23 [
    i32 57, label %sw.bb17
    i32 54, label %sw.bb19
    i32 55, label %sw.bb21
  ]

sw.bb17:                                          ; preds = %if.then15
  %36 = load ptr, ptr %v, align 8
  %37 = load i32, ptr %lbl.addr, align 4
  %call18 = call i32 @sqlite3VdbeAddOp2(ptr noundef %36, i32 noundef 11, i32 noundef 0, i32 noundef %37)
  br label %sw.epilog24

sw.bb19:                                          ; preds = %if.then15
  %38 = load ptr, ptr %v, align 8
  %39 = load i32, ptr %reg2, align 4
  %40 = load i32, ptr %lbl.addr, align 4
  %call20 = call i32 @sqlite3VdbeAddOp2(ptr noundef %38, i32 noundef 51, i32 noundef %39, i32 noundef %40)
  br label %sw.epilog24

sw.bb21:                                          ; preds = %if.then15
  %41 = load ptr, ptr %v, align 8
  %42 = load i32, ptr %reg2, align 4
  %43 = load i32, ptr %lbl.addr, align 4
  %call22 = call i32 @sqlite3VdbeAddOp2(ptr noundef %41, i32 noundef 50, i32 noundef %42, i32 noundef %43)
  br label %sw.epilog24

sw.default23:                                     ; preds = %if.then15
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.default23, %sw.bb21, %sw.bb19, %sw.bb17
  %44 = load ptr, ptr %v, align 8
  %45 = load ptr, ptr %v, align 8
  %call25 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %45)
  %add = add nsw i32 %call25, 3
  %call26 = call i32 @sqlite3VdbeAddOp2(ptr noundef %44, i32 noundef 11, i32 noundef 0, i32 noundef %add)
  %46 = load ptr, ptr %v, align 8
  %47 = load i32, ptr %addr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %46, i32 noundef %47)
  %48 = load ptr, ptr %v, align 8
  %49 = load i32, ptr %reg2, align 4
  %50 = load i32, ptr %lbl.addr, align 4
  %call27 = call i32 @sqlite3VdbeAddOp2(ptr noundef %48, i32 noundef 50, i32 noundef %49, i32 noundef %50)
  %51 = load i32, ptr %op.addr, align 4
  %cmp = icmp eq i32 %51, 54
  br i1 %cmp, label %if.then31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog24
  %52 = load i32, ptr %op.addr, align 4
  %cmp29 = icmp eq i32 %52, 57
  br i1 %cmp29, label %if.then31, label %if.end34

if.then31:                                        ; preds = %lor.lhs.false, %sw.epilog24
  %53 = load ptr, ptr %v, align 8
  %54 = load ptr, ptr %v, align 8
  %call32 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %54)
  %add33 = add nsw i32 %call32, 1
  call void @sqlite3VdbeChangeP2(ptr noundef %53, i32 noundef -1, i32 noundef %add33)
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %lor.lhs.false
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  %55 = load ptr, ptr %v, align 8
  %56 = load i32, ptr %op.addr, align 4
  %57 = load i32, ptr %reg2, align 4
  %58 = load i32, ptr %lbl.addr, align 4
  %59 = load i32, ptr %reg1, align 4
  %call36 = call i32 @sqlite3VdbeAddOp3(ptr noundef %55, i32 noundef %56, i32 noundef %57, i32 noundef %58, i32 noundef %59)
  %60 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %60, i16 noundef zeroext 128)
  %61 = load ptr, ptr %pParse, align 8
  %62 = load i32, ptr %reg1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %61, i32 noundef %62)
  %63 = load ptr, ptr %pParse, align 8
  %64 = load i32, ptr %reg2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %63, i32 noundef %64)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @windowReadPeerValues(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
