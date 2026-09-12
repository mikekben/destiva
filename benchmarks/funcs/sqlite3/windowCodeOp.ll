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
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

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
declare hidden void @windowAggFinal(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @windowReturnOneRow(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @windowIfNewPeer(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @windowCodeOp(ptr noundef %p, i32 noundef %op, i32 noundef %regCountdown, i32 noundef %jumpOnEof) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %regCountdown.addr = alloca i32, align 4
  %jumpOnEof.addr = alloca i32, align 4
  %csr = alloca i32, align 4
  %reg = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %pMWin = alloca ptr, align 8
  %ret = alloca i32, align 4
  %v = alloca ptr, align 8
  %addrContinue = alloca i32, align 4
  %bPeer = alloca i32, align 4
  %lblDone = alloca i32, align 4
  %addrNextRange = alloca i32, align 4
  %regRowid1 = alloca i32, align 4
  %regRowid2 = alloca i32, align 4
  %nReg = alloca i32, align 4
  %regTmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %regCountdown, ptr %regCountdown.addr, align 4
  store i32 %jumpOnEof, ptr %jumpOnEof.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pMWin2 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pMWin2, align 8
  store ptr %3, ptr %pMWin, align 8
  store i32 0, ptr %ret, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pVdbe, align 8
  store ptr %5, ptr %v, align 8
  store i32 0, ptr %addrContinue, align 4
  %6 = load ptr, ptr %pMWin, align 8
  %eFrmType = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 4
  %7 = load i8, ptr %eFrmType, align 8
  %conv = zext i8 %7 to i32
  %cmp = icmp ne i32 %conv, 76
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, ptr %bPeer, align 4
  %8 = load ptr, ptr %pParse, align 8
  %call = call i32 @sqlite3VdbeMakeLabel(ptr noundef %8)
  store i32 %call, ptr %lblDone, align 4
  store i32 0, ptr %addrNextRange, align 4
  %9 = load i32, ptr %op.addr, align 4
  %cmp4 = icmp eq i32 %9, 2
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %pMWin, align 8
  %eStart = getelementptr inbounds nuw %struct.Window, ptr %10, i32 0, i32 5
  %11 = load i8, ptr %eStart, align 1
  %conv6 = zext i8 %11 to i32
  %cmp7 = icmp eq i32 %conv6, 90
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load i32, ptr %regCountdown.addr, align 4
  %cmp9 = icmp sgt i32 %12, 0
  br i1 %cmp9, label %if.then11, label %if.end41

if.then11:                                        ; preds = %if.end
  %13 = load ptr, ptr %pMWin, align 8
  %eFrmType12 = getelementptr inbounds nuw %struct.Window, ptr %13, i32 0, i32 4
  %14 = load i8, ptr %eFrmType12, align 8
  %conv13 = zext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 89
  br i1 %cmp14, label %if.then16, label %if.else38

if.then16:                                        ; preds = %if.then11
  %15 = load ptr, ptr %v, align 8
  %call17 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %15)
  store i32 %call17, ptr %addrNextRange, align 4
  %16 = load i32, ptr %op.addr, align 4
  %cmp18 = icmp eq i32 %16, 2
  br i1 %cmp18, label %if.then20, label %if.else33

if.then20:                                        ; preds = %if.then16
  %17 = load ptr, ptr %pMWin, align 8
  %eStart21 = getelementptr inbounds nuw %struct.Window, ptr %17, i32 0, i32 5
  %18 = load i8, ptr %eStart21, align 1
  %conv22 = zext i8 %18 to i32
  %cmp23 = icmp eq i32 %conv22, 86
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then20
  %19 = load ptr, ptr %p.addr, align 8
  %20 = load ptr, ptr %p.addr, align 8
  %current = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %20, i32 0, i32 8
  %csr26 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current, i32 0, i32 0
  %21 = load i32, ptr %csr26, align 8
  %22 = load i32, ptr %regCountdown.addr, align 4
  %23 = load ptr, ptr %p.addr, align 8
  %start = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %23, i32 0, i32 7
  %csr27 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start, i32 0, i32 0
  %24 = load i32, ptr %csr27, align 8
  %25 = load i32, ptr %lblDone, align 4
  call void @windowCodeRangeTest(ptr noundef %19, i32 noundef 55, i32 noundef %21, i32 noundef %22, i32 noundef %24, i32 noundef %25)
  br label %if.end32

if.else:                                          ; preds = %if.then20
  %26 = load ptr, ptr %p.addr, align 8
  %27 = load ptr, ptr %p.addr, align 8
  %start28 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %27, i32 0, i32 7
  %csr29 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start28, i32 0, i32 0
  %28 = load i32, ptr %csr29, align 8
  %29 = load i32, ptr %regCountdown.addr, align 4
  %30 = load ptr, ptr %p.addr, align 8
  %current30 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %30, i32 0, i32 8
  %csr31 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current30, i32 0, i32 0
  %31 = load i32, ptr %csr31, align 8
  %32 = load i32, ptr %lblDone, align 4
  call void @windowCodeRangeTest(ptr noundef %26, i32 noundef 57, i32 noundef %28, i32 noundef %29, i32 noundef %31, i32 noundef %32)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25
  br label %if.end37

if.else33:                                        ; preds = %if.then16
  %33 = load ptr, ptr %p.addr, align 8
  %34 = load ptr, ptr %p.addr, align 8
  %end = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %34, i32 0, i32 9
  %csr34 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end, i32 0, i32 0
  %35 = load i32, ptr %csr34, align 8
  %36 = load i32, ptr %regCountdown.addr, align 4
  %37 = load ptr, ptr %p.addr, align 8
  %current35 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %37, i32 0, i32 8
  %csr36 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current35, i32 0, i32 0
  %38 = load i32, ptr %csr36, align 8
  %39 = load i32, ptr %lblDone, align 4
  call void @windowCodeRangeTest(ptr noundef %33, i32 noundef 54, i32 noundef %35, i32 noundef %36, i32 noundef %38, i32 noundef %39)
  br label %if.end37

if.end37:                                         ; preds = %if.else33, %if.end32
  br label %if.end40

if.else38:                                        ; preds = %if.then11
  %40 = load ptr, ptr %v, align 8
  %41 = load i32, ptr %regCountdown.addr, align 4
  %42 = load i32, ptr %lblDone, align 4
  %call39 = call i32 @sqlite3VdbeAddOp3(ptr noundef %40, i32 noundef 47, i32 noundef %41, i32 noundef %42, i32 noundef 1)
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.end37
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end
  %43 = load i32, ptr %op.addr, align 4
  %cmp42 = icmp eq i32 %43, 1
  br i1 %cmp42, label %land.lhs.true44, label %if.end48

land.lhs.true44:                                  ; preds = %if.end41
  %44 = load ptr, ptr %pMWin, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %44, i32 0, i32 25
  %45 = load i32, ptr %regStartRowid, align 4
  %cmp45 = icmp eq i32 %45, 0
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %land.lhs.true44
  %46 = load ptr, ptr %p.addr, align 8
  call void @windowAggFinal(ptr noundef %46, i32 noundef 0)
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %land.lhs.true44, %if.end41
  %47 = load ptr, ptr %v, align 8
  %call49 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %47)
  store i32 %call49, ptr %addrContinue, align 4
  %48 = load ptr, ptr %pMWin, align 8
  %eStart50 = getelementptr inbounds nuw %struct.Window, ptr %48, i32 0, i32 5
  %49 = load i8, ptr %eStart50, align 1
  %conv51 = zext i8 %49 to i32
  %50 = load ptr, ptr %pMWin, align 8
  %eEnd = getelementptr inbounds nuw %struct.Window, ptr %50, i32 0, i32 6
  %51 = load i8, ptr %eEnd, align 2
  %conv52 = zext i8 %51 to i32
  %cmp53 = icmp eq i32 %conv51, %conv52
  br i1 %cmp53, label %land.lhs.true55, label %if.end74

land.lhs.true55:                                  ; preds = %if.end48
  %52 = load i32, ptr %regCountdown.addr, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %land.lhs.true56, label %if.end74

land.lhs.true56:                                  ; preds = %land.lhs.true55
  %53 = load ptr, ptr %pMWin, align 8
  %eFrmType57 = getelementptr inbounds nuw %struct.Window, ptr %53, i32 0, i32 4
  %54 = load i8, ptr %eFrmType57, align 8
  %conv58 = zext i8 %54 to i32
  %cmp59 = icmp eq i32 %conv58, 89
  br i1 %cmp59, label %land.lhs.true61, label %if.end74

land.lhs.true61:                                  ; preds = %land.lhs.true56
  %55 = load i32, ptr %op.addr, align 4
  %cmp62 = icmp eq i32 %55, 2
  br i1 %cmp62, label %if.then64, label %if.end74

if.then64:                                        ; preds = %land.lhs.true61
  %56 = load ptr, ptr %pParse, align 8
  %call65 = call i32 @sqlite3GetTempReg(ptr noundef %56)
  store i32 %call65, ptr %regRowid1, align 4
  %57 = load ptr, ptr %pParse, align 8
  %call66 = call i32 @sqlite3GetTempReg(ptr noundef %57)
  store i32 %call66, ptr %regRowid2, align 4
  %58 = load ptr, ptr %v, align 8
  %59 = load ptr, ptr %p.addr, align 8
  %start67 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %59, i32 0, i32 7
  %csr68 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start67, i32 0, i32 0
  %60 = load i32, ptr %csr68, align 8
  %61 = load i32, ptr %regRowid1, align 4
  %call69 = call i32 @sqlite3VdbeAddOp2(ptr noundef %58, i32 noundef 128, i32 noundef %60, i32 noundef %61)
  %62 = load ptr, ptr %v, align 8
  %63 = load ptr, ptr %p.addr, align 8
  %end70 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %63, i32 0, i32 9
  %csr71 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end70, i32 0, i32 0
  %64 = load i32, ptr %csr71, align 8
  %65 = load i32, ptr %regRowid2, align 4
  %call72 = call i32 @sqlite3VdbeAddOp2(ptr noundef %62, i32 noundef 128, i32 noundef %64, i32 noundef %65)
  %66 = load ptr, ptr %v, align 8
  %67 = load i32, ptr %regRowid2, align 4
  %68 = load i32, ptr %lblDone, align 4
  %69 = load i32, ptr %regRowid1, align 4
  %call73 = call i32 @sqlite3VdbeAddOp3(ptr noundef %66, i32 noundef 57, i32 noundef %67, i32 noundef %68, i32 noundef %69)
  %70 = load ptr, ptr %pParse, align 8
  %71 = load i32, ptr %regRowid1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %70, i32 noundef %71)
  %72 = load ptr, ptr %pParse, align 8
  %73 = load i32, ptr %regRowid2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %72, i32 noundef %73)
  br label %if.end74

if.end74:                                         ; preds = %if.then64, %land.lhs.true61, %land.lhs.true56, %land.lhs.true55, %if.end48
  %74 = load i32, ptr %op.addr, align 4
  switch i32 %74, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.end74
  %75 = load ptr, ptr %p.addr, align 8
  %current75 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %75, i32 0, i32 8
  %csr76 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current75, i32 0, i32 0
  %76 = load i32, ptr %csr76, align 8
  store i32 %76, ptr %csr, align 4
  %77 = load ptr, ptr %p.addr, align 8
  %current77 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %77, i32 0, i32 8
  %reg78 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %current77, i32 0, i32 1
  %78 = load i32, ptr %reg78, align 4
  store i32 %78, ptr %reg, align 4
  %79 = load ptr, ptr %p.addr, align 8
  call void @windowReturnOneRow(ptr noundef %79)
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end74
  %80 = load ptr, ptr %p.addr, align 8
  %start80 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %80, i32 0, i32 7
  %csr81 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start80, i32 0, i32 0
  %81 = load i32, ptr %csr81, align 8
  store i32 %81, ptr %csr, align 4
  %82 = load ptr, ptr %p.addr, align 8
  %start82 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %82, i32 0, i32 7
  %reg83 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %start82, i32 0, i32 1
  %83 = load i32, ptr %reg83, align 4
  store i32 %83, ptr %reg, align 4
  %84 = load ptr, ptr %pMWin, align 8
  %regStartRowid84 = getelementptr inbounds nuw %struct.Window, ptr %84, i32 0, i32 25
  %85 = load i32, ptr %regStartRowid84, align 4
  %tobool85 = icmp ne i32 %85, 0
  br i1 %tobool85, label %if.then86, label %if.else89

if.then86:                                        ; preds = %sw.bb79
  %86 = load ptr, ptr %v, align 8
  %87 = load ptr, ptr %pMWin, align 8
  %regStartRowid87 = getelementptr inbounds nuw %struct.Window, ptr %87, i32 0, i32 25
  %88 = load i32, ptr %regStartRowid87, align 4
  %call88 = call i32 @sqlite3VdbeAddOp2(ptr noundef %86, i32 noundef 83, i32 noundef %88, i32 noundef 1)
  br label %if.end90

if.else89:                                        ; preds = %sw.bb79
  %89 = load ptr, ptr %p.addr, align 8
  %90 = load ptr, ptr %pMWin, align 8
  %91 = load i32, ptr %csr, align 4
  %92 = load ptr, ptr %p.addr, align 8
  %regArg = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %92, i32 0, i32 5
  %93 = load i32, ptr %regArg, align 8
  call void @windowAggStep(ptr noundef %89, ptr noundef %90, i32 noundef %91, i32 noundef 1, i32 noundef %93)
  br label %if.end90

if.end90:                                         ; preds = %if.else89, %if.then86
  br label %sw.epilog

sw.default:                                       ; preds = %if.end74
  %94 = load ptr, ptr %p.addr, align 8
  %end91 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %94, i32 0, i32 9
  %csr92 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end91, i32 0, i32 0
  %95 = load i32, ptr %csr92, align 8
  store i32 %95, ptr %csr, align 4
  %96 = load ptr, ptr %p.addr, align 8
  %end93 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %96, i32 0, i32 9
  %reg94 = getelementptr inbounds nuw %struct.WindowCsrAndReg, ptr %end93, i32 0, i32 1
  %97 = load i32, ptr %reg94, align 4
  store i32 %97, ptr %reg, align 4
  %98 = load ptr, ptr %pMWin, align 8
  %regStartRowid95 = getelementptr inbounds nuw %struct.Window, ptr %98, i32 0, i32 25
  %99 = load i32, ptr %regStartRowid95, align 4
  %tobool96 = icmp ne i32 %99, 0
  br i1 %tobool96, label %if.then97, label %if.else99

if.then97:                                        ; preds = %sw.default
  %100 = load ptr, ptr %v, align 8
  %101 = load ptr, ptr %pMWin, align 8
  %regEndRowid = getelementptr inbounds nuw %struct.Window, ptr %101, i32 0, i32 26
  %102 = load i32, ptr %regEndRowid, align 8
  %call98 = call i32 @sqlite3VdbeAddOp2(ptr noundef %100, i32 noundef 83, i32 noundef %102, i32 noundef 1)
  br label %if.end101

if.else99:                                        ; preds = %sw.default
  %103 = load ptr, ptr %p.addr, align 8
  %104 = load ptr, ptr %pMWin, align 8
  %105 = load i32, ptr %csr, align 4
  %106 = load ptr, ptr %p.addr, align 8
  %regArg100 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %106, i32 0, i32 5
  %107 = load i32, ptr %regArg100, align 8
  call void @windowAggStep(ptr noundef %103, ptr noundef %104, i32 noundef %105, i32 noundef 0, i32 noundef %107)
  br label %if.end101

if.end101:                                        ; preds = %if.else99, %if.then97
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end101, %if.end90, %sw.bb
  %108 = load i32, ptr %op.addr, align 4
  %109 = load ptr, ptr %p.addr, align 8
  %eDelete = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %109, i32 0, i32 6
  %110 = load i32, ptr %eDelete, align 4
  %cmp102 = icmp eq i32 %108, %110
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %sw.epilog
  %111 = load ptr, ptr %v, align 8
  %112 = load i32, ptr %csr, align 4
  %call105 = call i32 @sqlite3VdbeAddOp1(ptr noundef %111, i32 noundef 123, i32 noundef %112)
  %113 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %113, i16 noundef zeroext 2)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %sw.epilog
  %114 = load i32, ptr %jumpOnEof.addr, align 4
  %tobool107 = icmp ne i32 %114, 0
  br i1 %tobool107, label %if.then108, label %if.else112

if.then108:                                       ; preds = %if.end106
  %115 = load ptr, ptr %v, align 8
  %116 = load i32, ptr %csr, align 4
  %117 = load ptr, ptr %v, align 8
  %call109 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %117)
  %add = add nsw i32 %call109, 2
  %call110 = call i32 @sqlite3VdbeAddOp2(ptr noundef %115, i32 noundef 5, i32 noundef %116, i32 noundef %add)
  %118 = load ptr, ptr %v, align 8
  %call111 = call i32 @sqlite3VdbeAddOp0(ptr noundef %118, i32 noundef 11)
  store i32 %call111, ptr %ret, align 4
  br label %if.end121

if.else112:                                       ; preds = %if.end106
  %119 = load ptr, ptr %v, align 8
  %120 = load i32, ptr %csr, align 4
  %121 = load ptr, ptr %v, align 8
  %call113 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %121)
  %add114 = add nsw i32 %call113, 1
  %122 = load i32, ptr %bPeer, align 4
  %add115 = add nsw i32 %add114, %122
  %call116 = call i32 @sqlite3VdbeAddOp2(ptr noundef %119, i32 noundef 5, i32 noundef %120, i32 noundef %add115)
  %123 = load i32, ptr %bPeer, align 4
  %tobool117 = icmp ne i32 %123, 0
  br i1 %tobool117, label %if.then118, label %if.end120

if.then118:                                       ; preds = %if.else112
  %124 = load ptr, ptr %v, align 8
  %125 = load i32, ptr %lblDone, align 4
  %call119 = call i32 @sqlite3VdbeAddOp2(ptr noundef %124, i32 noundef 11, i32 noundef 0, i32 noundef %125)
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.else112
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then108
  %126 = load i32, ptr %bPeer, align 4
  %tobool122 = icmp ne i32 %126, 0
  br i1 %tobool122, label %if.then123, label %if.end133

if.then123:                                       ; preds = %if.end121
  %127 = load ptr, ptr %pMWin, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %127, i32 0, i32 3
  %128 = load ptr, ptr %pOrderBy, align 8
  %tobool124 = icmp ne ptr %128, null
  br i1 %tobool124, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then123
  %129 = load ptr, ptr %pMWin, align 8
  %pOrderBy125 = getelementptr inbounds nuw %struct.Window, ptr %129, i32 0, i32 3
  %130 = load ptr, ptr %pOrderBy125, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %130, i32 0, i32 0
  %131 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then123
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %131, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %nReg, align 4
  %132 = load i32, ptr %nReg, align 4
  %tobool126 = icmp ne i32 %132, 0
  br i1 %tobool126, label %cond.true127, label %cond.false129

cond.true127:                                     ; preds = %cond.end
  %133 = load ptr, ptr %pParse, align 8
  %134 = load i32, ptr %nReg, align 4
  %call128 = call i32 @sqlite3GetTempRange(ptr noundef %133, i32 noundef %134)
  br label %cond.end130

cond.false129:                                    ; preds = %cond.end
  br label %cond.end130

cond.end130:                                      ; preds = %cond.false129, %cond.true127
  %cond131 = phi i32 [ %call128, %cond.true127 ], [ 0, %cond.false129 ]
  store i32 %cond131, ptr %regTmp, align 4
  %135 = load ptr, ptr %p.addr, align 8
  %136 = load i32, ptr %csr, align 4
  %137 = load i32, ptr %regTmp, align 4
  call void @windowReadPeerValues(ptr noundef %135, i32 noundef %136, i32 noundef %137)
  %138 = load ptr, ptr %pParse, align 8
  %139 = load ptr, ptr %pMWin, align 8
  %pOrderBy132 = getelementptr inbounds nuw %struct.Window, ptr %139, i32 0, i32 3
  %140 = load ptr, ptr %pOrderBy132, align 8
  %141 = load i32, ptr %regTmp, align 4
  %142 = load i32, ptr %reg, align 4
  %143 = load i32, ptr %addrContinue, align 4
  call void @windowIfNewPeer(ptr noundef %138, ptr noundef %140, i32 noundef %141, i32 noundef %142, i32 noundef %143)
  %144 = load ptr, ptr %pParse, align 8
  %145 = load i32, ptr %regTmp, align 4
  %146 = load i32, ptr %nReg, align 4
  call void @sqlite3ReleaseTempRange(ptr noundef %144, i32 noundef %145, i32 noundef %146)
  br label %if.end133

if.end133:                                        ; preds = %cond.end130, %if.end121
  %147 = load i32, ptr %addrNextRange, align 4
  %tobool134 = icmp ne i32 %147, 0
  br i1 %tobool134, label %if.then135, label %if.end137

if.then135:                                       ; preds = %if.end133
  %148 = load ptr, ptr %v, align 8
  %149 = load i32, ptr %addrNextRange, align 4
  %call136 = call i32 @sqlite3VdbeAddOp2(ptr noundef %148, i32 noundef 11, i32 noundef 0, i32 noundef %149)
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.end133
  %150 = load ptr, ptr %v, align 8
  %151 = load i32, ptr %lblDone, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %150, i32 noundef %151)
  %152 = load i32, ptr %ret, align 4
  store i32 %152, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end137, %if.then
  %153 = load i32, ptr %retval, align 4
  ret i32 %153
}

; Function Attrs: nounwind uwtable
declare hidden void @windowCodeRangeTest(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
