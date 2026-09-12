; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempRange(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoRef(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeMove(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @codeOffset(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @generateOutputSubroutine(ptr noundef %pParse, ptr noundef %p, ptr noundef %pIn, ptr noundef %pDest, i32 noundef %regReturn, i32 noundef %regPrev, ptr noundef %pKeyInfo, i32 noundef %iBreak) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pIn.addr = alloca ptr, align 8
  %pDest.addr = alloca ptr, align 8
  %regReturn.addr = alloca i32, align 4
  %regPrev.addr = alloca i32, align 4
  %pKeyInfo.addr = alloca ptr, align 8
  %iBreak.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %iContinue = alloca i32, align 4
  %addr = alloca i32, align 4
  %addr1 = alloca i32, align 4
  %addr2 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  %r125 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pIn, ptr %pIn.addr, align 8
  store ptr %pDest, ptr %pDest.addr, align 8
  store i32 %regReturn, ptr %regReturn.addr, align 4
  store i32 %regPrev, ptr %regPrev.addr, align 4
  store ptr %pKeyInfo, ptr %pKeyInfo.addr, align 8
  store i32 %iBreak, ptr %iBreak.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %v, align 8
  %call = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %2)
  store i32 %call, ptr %addr, align 4
  %3 = load ptr, ptr %pParse.addr, align 8
  %call1 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %3)
  store i32 %call1, ptr %iContinue, align 4
  %4 = load i32, ptr %regPrev.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %v, align 8
  %6 = load i32, ptr %regPrev.addr, align 4
  %call2 = call i32 @sqlite3VdbeAddOp1(ptr noundef %5, i32 noundef 20, i32 noundef %6)
  store i32 %call2, ptr %addr1, align 4
  %7 = load ptr, ptr %v, align 8
  %8 = load ptr, ptr %pIn.addr, align 8
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iSdst, align 8
  %10 = load i32, ptr %regPrev.addr, align 4
  %add = add nsw i32 %10, 1
  %11 = load ptr, ptr %pIn.addr, align 8
  %nSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %nSdst, align 4
  %13 = load ptr, ptr %pKeyInfo.addr, align 8
  %call3 = call ptr @sqlite3KeyInfoRef(ptr noundef %13)
  %call4 = call i32 @sqlite3VdbeAddOp4(ptr noundef %7, i32 noundef 87, i32 noundef %9, i32 noundef %add, i32 noundef %12, ptr noundef %call3, i32 noundef -9)
  store i32 %call4, ptr %addr2, align 4
  %14 = load ptr, ptr %v, align 8
  %15 = load i32, ptr %addr2, align 4
  %add5 = add nsw i32 %15, 2
  %16 = load i32, ptr %iContinue, align 4
  %17 = load i32, ptr %addr2, align 4
  %add6 = add nsw i32 %17, 2
  %call7 = call i32 @sqlite3VdbeAddOp3(ptr noundef %14, i32 noundef 16, i32 noundef %add5, i32 noundef %16, i32 noundef %add6)
  %18 = load ptr, ptr %v, align 8
  %19 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %18, i32 noundef %19)
  %20 = load ptr, ptr %v, align 8
  %21 = load ptr, ptr %pIn.addr, align 8
  %iSdst8 = getelementptr inbounds nuw %struct.SelectDest, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %iSdst8, align 8
  %23 = load i32, ptr %regPrev.addr, align 4
  %add9 = add nsw i32 %23, 1
  %24 = load ptr, ptr %pIn.addr, align 8
  %nSdst10 = getelementptr inbounds nuw %struct.SelectDest, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %nSdst10, align 4
  %sub = sub nsw i32 %25, 1
  %call11 = call i32 @sqlite3VdbeAddOp3(ptr noundef %20, i32 noundef 78, i32 noundef %22, i32 noundef %add9, i32 noundef %sub)
  %26 = load ptr, ptr %v, align 8
  %27 = load i32, ptr %regPrev.addr, align 4
  %call12 = call i32 @sqlite3VdbeAddOp2(ptr noundef %26, i32 noundef 70, i32 noundef 1, i32 noundef %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 19
  %30 = load i8, ptr %mallocFailed, align 1
  %tobool13 = icmp ne i8 %30, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end
  %31 = load ptr, ptr %v, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %iOffset = getelementptr inbounds nuw %struct.Select, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %iOffset, align 4
  %34 = load i32, ptr %iContinue, align 4
  call void @codeOffset(ptr noundef %31, i32 noundef %33, i32 noundef %34)
  %35 = load ptr, ptr %pDest.addr, align 8
  %eDest = getelementptr inbounds nuw %struct.SelectDest, ptr %35, i32 0, i32 0
  %36 = load i8, ptr %eDest, align 8
  %conv = zext i8 %36 to i32
  switch i32 %conv, label %sw.default [
    i32 12, label %sw.bb
    i32 11, label %sw.bb24
    i32 10, label %sw.bb35
    i32 13, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end15
  %37 = load ptr, ptr %pParse.addr, align 8
  %call16 = call i32 @sqlite3GetTempReg(ptr noundef %37)
  store i32 %call16, ptr %r1, align 4
  %38 = load ptr, ptr %pParse.addr, align 8
  %call17 = call i32 @sqlite3GetTempReg(ptr noundef %38)
  store i32 %call17, ptr %r2, align 4
  %39 = load ptr, ptr %v, align 8
  %40 = load ptr, ptr %pIn.addr, align 8
  %iSdst18 = getelementptr inbounds nuw %struct.SelectDest, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %iSdst18, align 8
  %42 = load ptr, ptr %pIn.addr, align 8
  %nSdst19 = getelementptr inbounds nuw %struct.SelectDest, ptr %42, i32 0, i32 3
  %43 = load i32, ptr %nSdst19, align 4
  %44 = load i32, ptr %r1, align 4
  %call20 = call i32 @sqlite3VdbeAddOp3(ptr noundef %39, i32 noundef 92, i32 noundef %41, i32 noundef %43, i32 noundef %44)
  %45 = load ptr, ptr %v, align 8
  %46 = load ptr, ptr %pDest.addr, align 8
  %iSDParm = getelementptr inbounds nuw %struct.SelectDest, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %iSDParm, align 4
  %48 = load i32, ptr %r2, align 4
  %call21 = call i32 @sqlite3VdbeAddOp2(ptr noundef %45, i32 noundef 121, i32 noundef %47, i32 noundef %48)
  %49 = load ptr, ptr %v, align 8
  %50 = load ptr, ptr %pDest.addr, align 8
  %iSDParm22 = getelementptr inbounds nuw %struct.SelectDest, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %iSDParm22, align 4
  %52 = load i32, ptr %r1, align 4
  %53 = load i32, ptr %r2, align 4
  %call23 = call i32 @sqlite3VdbeAddOp3(ptr noundef %49, i32 noundef 122, i32 noundef %51, i32 noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %54, i16 noundef zeroext 8)
  %55 = load ptr, ptr %pParse.addr, align 8
  %56 = load i32, ptr %r2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %55, i32 noundef %56)
  %57 = load ptr, ptr %pParse.addr, align 8
  %58 = load i32, ptr %r1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %57, i32 noundef %58)
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end15
  %59 = load ptr, ptr %pParse.addr, align 8
  %call26 = call i32 @sqlite3GetTempReg(ptr noundef %59)
  store i32 %call26, ptr %r125, align 4
  %60 = load ptr, ptr %v, align 8
  %61 = load ptr, ptr %pIn.addr, align 8
  %iSdst27 = getelementptr inbounds nuw %struct.SelectDest, ptr %61, i32 0, i32 2
  %62 = load i32, ptr %iSdst27, align 8
  %63 = load ptr, ptr %pIn.addr, align 8
  %nSdst28 = getelementptr inbounds nuw %struct.SelectDest, ptr %63, i32 0, i32 3
  %64 = load i32, ptr %nSdst28, align 4
  %65 = load i32, ptr %r125, align 4
  %66 = load ptr, ptr %pDest.addr, align 8
  %zAffSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %zAffSdst, align 8
  %68 = load ptr, ptr %pIn.addr, align 8
  %nSdst29 = getelementptr inbounds nuw %struct.SelectDest, ptr %68, i32 0, i32 3
  %69 = load i32, ptr %nSdst29, align 4
  %call30 = call i32 @sqlite3VdbeAddOp4(ptr noundef %60, i32 noundef 92, i32 noundef %62, i32 noundef %64, i32 noundef %65, ptr noundef %67, i32 noundef %69)
  %70 = load ptr, ptr %v, align 8
  %71 = load ptr, ptr %pDest.addr, align 8
  %iSDParm31 = getelementptr inbounds nuw %struct.SelectDest, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %iSDParm31, align 4
  %73 = load i32, ptr %r125, align 4
  %74 = load ptr, ptr %pIn.addr, align 8
  %iSdst32 = getelementptr inbounds nuw %struct.SelectDest, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %iSdst32, align 8
  %76 = load ptr, ptr %pIn.addr, align 8
  %nSdst33 = getelementptr inbounds nuw %struct.SelectDest, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %nSdst33, align 4
  %call34 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %70, i32 noundef 132, i32 noundef %72, i32 noundef %73, i32 noundef %75, i32 noundef %77)
  %78 = load ptr, ptr %pParse.addr, align 8
  %79 = load i32, ptr %r125, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %78, i32 noundef %79)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end15
  %80 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %80, i32 0, i32 16
  %81 = load i32, ptr %nErr, align 8
  %cmp = icmp eq i32 %81, 0
  br i1 %cmp, label %if.then37, label %if.end41

if.then37:                                        ; preds = %sw.bb35
  %82 = load ptr, ptr %pParse.addr, align 8
  %83 = load ptr, ptr %pIn.addr, align 8
  %iSdst38 = getelementptr inbounds nuw %struct.SelectDest, ptr %83, i32 0, i32 2
  %84 = load i32, ptr %iSdst38, align 8
  %85 = load ptr, ptr %pDest.addr, align 8
  %iSDParm39 = getelementptr inbounds nuw %struct.SelectDest, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %iSDParm39, align 4
  %87 = load ptr, ptr %pIn.addr, align 8
  %nSdst40 = getelementptr inbounds nuw %struct.SelectDest, ptr %87, i32 0, i32 3
  %88 = load i32, ptr %nSdst40, align 4
  call void @sqlite3ExprCodeMove(ptr noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %sw.bb35
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end15
  %89 = load ptr, ptr %pDest.addr, align 8
  %iSdst43 = getelementptr inbounds nuw %struct.SelectDest, ptr %89, i32 0, i32 2
  %90 = load i32, ptr %iSdst43, align 8
  %cmp44 = icmp eq i32 %90, 0
  br i1 %cmp44, label %if.then46, label %if.end52

if.then46:                                        ; preds = %sw.bb42
  %91 = load ptr, ptr %pParse.addr, align 8
  %92 = load ptr, ptr %pIn.addr, align 8
  %nSdst47 = getelementptr inbounds nuw %struct.SelectDest, ptr %92, i32 0, i32 3
  %93 = load i32, ptr %nSdst47, align 4
  %call48 = call i32 @sqlite3GetTempRange(ptr noundef %91, i32 noundef %93)
  %94 = load ptr, ptr %pDest.addr, align 8
  %iSdst49 = getelementptr inbounds nuw %struct.SelectDest, ptr %94, i32 0, i32 2
  store i32 %call48, ptr %iSdst49, align 8
  %95 = load ptr, ptr %pIn.addr, align 8
  %nSdst50 = getelementptr inbounds nuw %struct.SelectDest, ptr %95, i32 0, i32 3
  %96 = load i32, ptr %nSdst50, align 4
  %97 = load ptr, ptr %pDest.addr, align 8
  %nSdst51 = getelementptr inbounds nuw %struct.SelectDest, ptr %97, i32 0, i32 3
  store i32 %96, ptr %nSdst51, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %sw.bb42
  %98 = load ptr, ptr %pParse.addr, align 8
  %99 = load ptr, ptr %pIn.addr, align 8
  %iSdst53 = getelementptr inbounds nuw %struct.SelectDest, ptr %99, i32 0, i32 2
  %100 = load i32, ptr %iSdst53, align 8
  %101 = load ptr, ptr %pDest.addr, align 8
  %iSdst54 = getelementptr inbounds nuw %struct.SelectDest, ptr %101, i32 0, i32 2
  %102 = load i32, ptr %iSdst54, align 8
  %103 = load ptr, ptr %pIn.addr, align 8
  %nSdst55 = getelementptr inbounds nuw %struct.SelectDest, ptr %103, i32 0, i32 3
  %104 = load i32, ptr %nSdst55, align 4
  call void @sqlite3ExprCodeMove(ptr noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %104)
  %105 = load ptr, ptr %v, align 8
  %106 = load ptr, ptr %pDest.addr, align 8
  %iSDParm56 = getelementptr inbounds nuw %struct.SelectDest, ptr %106, i32 0, i32 1
  %107 = load i32, ptr %iSDParm56, align 4
  %call57 = call i32 @sqlite3VdbeAddOp1(ptr noundef %105, i32 noundef 14, i32 noundef %107)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end15
  %108 = load ptr, ptr %v, align 8
  %109 = load ptr, ptr %pIn.addr, align 8
  %iSdst58 = getelementptr inbounds nuw %struct.SelectDest, ptr %109, i32 0, i32 2
  %110 = load i32, ptr %iSdst58, align 8
  %111 = load ptr, ptr %pIn.addr, align 8
  %nSdst59 = getelementptr inbounds nuw %struct.SelectDest, ptr %111, i32 0, i32 3
  %112 = load i32, ptr %nSdst59, align 4
  %call60 = call i32 @sqlite3VdbeAddOp2(ptr noundef %108, i32 noundef 81, i32 noundef %110, i32 noundef %112)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end52, %if.end41, %sw.bb24, %sw.bb
  %113 = load ptr, ptr %p.addr, align 8
  %iLimit = getelementptr inbounds nuw %struct.Select, ptr %113, i32 0, i32 4
  %114 = load i32, ptr %iLimit, align 8
  %tobool61 = icmp ne i32 %114, 0
  br i1 %tobool61, label %if.then62, label %if.end65

if.then62:                                        ; preds = %sw.epilog
  %115 = load ptr, ptr %v, align 8
  %116 = load ptr, ptr %p.addr, align 8
  %iLimit63 = getelementptr inbounds nuw %struct.Select, ptr %116, i32 0, i32 4
  %117 = load i32, ptr %iLimit63, align 8
  %118 = load i32, ptr %iBreak.addr, align 4
  %call64 = call i32 @sqlite3VdbeAddOp2(ptr noundef %115, i32 noundef 49, i32 noundef %117, i32 noundef %118)
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %sw.epilog
  %119 = load ptr, ptr %v, align 8
  %120 = load i32, ptr %iContinue, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %119, i32 noundef %120)
  %121 = load ptr, ptr %v, align 8
  %122 = load i32, ptr %regReturn.addr, align 4
  %call66 = call i32 @sqlite3VdbeAddOp1(ptr noundef %121, i32 noundef 66, i32 noundef %122)
  %123 = load i32, ptr %addr, align 4
  store i32 %123, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then14
  %124 = load i32, ptr %retval, align 4
  ret i32 %124
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
