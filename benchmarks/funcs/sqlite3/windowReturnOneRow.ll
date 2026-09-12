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

@leadName = external hidden constant [5 x i8], align 1
@lagName = external hidden constant [4 x i8], align 1
@nth_valueName = external hidden constant [10 x i8], align 1
@first_valueName = external hidden constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @windowCheckValue(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @windowReturnOneRow(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pMWin = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %csr = alloca i32, align 4
  %lbl = alloca i32, align 4
  %tmpReg = alloca i32, align 4
  %nArg = alloca i32, align 4
  %csr31 = alloca i32, align 4
  %lbl33 = alloca i32, align 4
  %tmpReg35 = alloca i32, align 4
  %iEph = alloca i32, align 4
  %val = alloca i32, align 4
  %op = alloca i32, align 4
  %tmpReg2 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pMWin1 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pMWin1, align 8
  store ptr %1, ptr %pMWin, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVdbe, align 8
  store ptr %3, ptr %v, align 8
  %4 = load ptr, ptr %pMWin, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %4, i32 0, i32 25
  %5 = load i32, ptr %regStartRowid, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  call void @windowFullScan(ptr noundef %6)
  br label %if.end70

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %p.addr, align 8
  %pParse2 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pParse2, align 8
  store ptr %8, ptr %pParse, align 8
  %9 = load ptr, ptr %pMWin, align 8
  store ptr %9, ptr %pWin, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %10 = load ptr, ptr %pWin, align 8
  %tobool3 = icmp ne ptr %10, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pWin, align 8
  %pFunc4 = getelementptr inbounds nuw %struct.Window, ptr %11, i32 0, i32 14
  %12 = load ptr, ptr %pFunc4, align 8
  store ptr %12, ptr %pFunc, align 8
  %13 = load ptr, ptr %pFunc, align 8
  %zName = getelementptr inbounds nuw %struct.FuncDef, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %zName, align 8
  %cmp = icmp eq ptr %14, @nth_valueName
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load ptr, ptr %pFunc, align 8
  %zName5 = getelementptr inbounds nuw %struct.FuncDef, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %zName5, align 8
  %cmp6 = icmp eq ptr %16, @first_valueName
  br i1 %cmp6, label %if.then7, label %if.else24

if.then7:                                         ; preds = %lor.lhs.false, %for.body
  %17 = load ptr, ptr %pWin, align 8
  %csrApp = getelementptr inbounds nuw %struct.Window, ptr %17, i32 0, i32 18
  %18 = load i32, ptr %csrApp, align 4
  store i32 %18, ptr %csr, align 4
  %19 = load ptr, ptr %pParse, align 8
  %call = call i32 @sqlite3VdbeMakeLabel(ptr noundef %19)
  store i32 %call, ptr %lbl, align 4
  %20 = load ptr, ptr %pParse, align 8
  %call8 = call i32 @sqlite3GetTempReg(ptr noundef %20)
  store i32 %call8, ptr %tmpReg, align 4
  %21 = load ptr, ptr %v, align 8
  %22 = load ptr, ptr %pWin, align 8
  %regResult = getelementptr inbounds nuw %struct.Window, ptr %22, i32 0, i32 17
  %23 = load i32, ptr %regResult, align 8
  %call9 = call i32 @sqlite3VdbeAddOp2(ptr noundef %21, i32 noundef 73, i32 noundef 0, i32 noundef %23)
  %24 = load ptr, ptr %pFunc, align 8
  %zName10 = getelementptr inbounds nuw %struct.FuncDef, ptr %24, i32 0, i32 8
  %25 = load ptr, ptr %zName10, align 8
  %cmp11 = icmp eq ptr %25, @nth_valueName
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.then7
  %26 = load ptr, ptr %v, align 8
  %27 = load ptr, ptr %pMWin, align 8
  %iEphCsr = getelementptr inbounds nuw %struct.Window, ptr %27, i32 0, i32 15
  %28 = load i32, ptr %iEphCsr, align 8
  %29 = load ptr, ptr %pWin, align 8
  %iArgCol = getelementptr inbounds nuw %struct.Window, ptr %29, i32 0, i32 23
  %30 = load i32, ptr %iArgCol, align 4
  %add = add nsw i32 %30, 1
  %31 = load i32, ptr %tmpReg, align 4
  %call13 = call i32 @sqlite3VdbeAddOp3(ptr noundef %26, i32 noundef 90, i32 noundef %28, i32 noundef %add, i32 noundef %31)
  %32 = load ptr, ptr %pParse, align 8
  %33 = load i32, ptr %tmpReg, align 4
  call void @windowCheckValue(ptr noundef %32, i32 noundef %33, i32 noundef 2)
  br label %if.end

if.else14:                                        ; preds = %if.then7
  %34 = load ptr, ptr %v, align 8
  %35 = load i32, ptr %tmpReg, align 4
  %call15 = call i32 @sqlite3VdbeAddOp2(ptr noundef %34, i32 noundef 70, i32 noundef 1, i32 noundef %35)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  %36 = load ptr, ptr %v, align 8
  %37 = load i32, ptr %tmpReg, align 4
  %38 = load ptr, ptr %pWin, align 8
  %regApp = getelementptr inbounds nuw %struct.Window, ptr %38, i32 0, i32 19
  %39 = load i32, ptr %regApp, align 8
  %40 = load i32, ptr %tmpReg, align 4
  %call16 = call i32 @sqlite3VdbeAddOp3(ptr noundef %36, i32 noundef 103, i32 noundef %37, i32 noundef %39, i32 noundef %40)
  %41 = load ptr, ptr %v, align 8
  %42 = load ptr, ptr %pWin, align 8
  %regApp17 = getelementptr inbounds nuw %struct.Window, ptr %42, i32 0, i32 19
  %43 = load i32, ptr %regApp17, align 8
  %add18 = add nsw i32 %43, 1
  %44 = load i32, ptr %lbl, align 4
  %45 = load i32, ptr %tmpReg, align 4
  %call19 = call i32 @sqlite3VdbeAddOp3(ptr noundef %41, i32 noundef 54, i32 noundef %add18, i32 noundef %44, i32 noundef %45)
  %46 = load ptr, ptr %v, align 8
  %47 = load i32, ptr %csr, align 4
  %48 = load i32, ptr %tmpReg, align 4
  %call20 = call i32 @sqlite3VdbeAddOp3(ptr noundef %46, i32 noundef 30, i32 noundef %47, i32 noundef 0, i32 noundef %48)
  %49 = load ptr, ptr %v, align 8
  %50 = load i32, ptr %csr, align 4
  %51 = load ptr, ptr %pWin, align 8
  %iArgCol21 = getelementptr inbounds nuw %struct.Window, ptr %51, i32 0, i32 23
  %52 = load i32, ptr %iArgCol21, align 4
  %53 = load ptr, ptr %pWin, align 8
  %regResult22 = getelementptr inbounds nuw %struct.Window, ptr %53, i32 0, i32 17
  %54 = load i32, ptr %regResult22, align 8
  %call23 = call i32 @sqlite3VdbeAddOp3(ptr noundef %49, i32 noundef 90, i32 noundef %50, i32 noundef %52, i32 noundef %54)
  %55 = load ptr, ptr %v, align 8
  %56 = load i32, ptr %lbl, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %55, i32 noundef %56)
  %57 = load ptr, ptr %pParse, align 8
  %58 = load i32, ptr %tmpReg, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %57, i32 noundef %58)
  br label %if.end69

if.else24:                                        ; preds = %lor.lhs.false
  %59 = load ptr, ptr %pFunc, align 8
  %zName25 = getelementptr inbounds nuw %struct.FuncDef, ptr %59, i32 0, i32 8
  %60 = load ptr, ptr %zName25, align 8
  %cmp26 = icmp eq ptr %60, @leadName
  br i1 %cmp26, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.else24
  %61 = load ptr, ptr %pFunc, align 8
  %zName28 = getelementptr inbounds nuw %struct.FuncDef, ptr %61, i32 0, i32 8
  %62 = load ptr, ptr %zName28, align 8
  %cmp29 = icmp eq ptr %62, @lagName
  br i1 %cmp29, label %if.then30, label %if.end68

if.then30:                                        ; preds = %lor.lhs.false27, %if.else24
  %63 = load ptr, ptr %pWin, align 8
  %pOwner = getelementptr inbounds nuw %struct.Window, ptr %63, i32 0, i32 21
  %64 = load ptr, ptr %pOwner, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %64, i32 0, i32 6
  %65 = load ptr, ptr %x, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %65, i32 0, i32 0
  %66 = load i32, ptr %nExpr, align 8
  store i32 %66, ptr %nArg, align 4
  %67 = load ptr, ptr %pWin, align 8
  %csrApp32 = getelementptr inbounds nuw %struct.Window, ptr %67, i32 0, i32 18
  %68 = load i32, ptr %csrApp32, align 4
  store i32 %68, ptr %csr31, align 4
  %69 = load ptr, ptr %pParse, align 8
  %call34 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %69)
  store i32 %call34, ptr %lbl33, align 4
  %70 = load ptr, ptr %pParse, align 8
  %call36 = call i32 @sqlite3GetTempReg(ptr noundef %70)
  store i32 %call36, ptr %tmpReg35, align 4
  %71 = load ptr, ptr %pMWin, align 8
  %iEphCsr37 = getelementptr inbounds nuw %struct.Window, ptr %71, i32 0, i32 15
  %72 = load i32, ptr %iEphCsr37, align 8
  store i32 %72, ptr %iEph, align 4
  %73 = load i32, ptr %nArg, align 4
  %cmp38 = icmp slt i32 %73, 3
  br i1 %cmp38, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.then30
  %74 = load ptr, ptr %v, align 8
  %75 = load ptr, ptr %pWin, align 8
  %regResult40 = getelementptr inbounds nuw %struct.Window, ptr %75, i32 0, i32 17
  %76 = load i32, ptr %regResult40, align 8
  %call41 = call i32 @sqlite3VdbeAddOp2(ptr noundef %74, i32 noundef 73, i32 noundef 0, i32 noundef %76)
  br label %if.end47

if.else42:                                        ; preds = %if.then30
  %77 = load ptr, ptr %v, align 8
  %78 = load i32, ptr %iEph, align 4
  %79 = load ptr, ptr %pWin, align 8
  %iArgCol43 = getelementptr inbounds nuw %struct.Window, ptr %79, i32 0, i32 23
  %80 = load i32, ptr %iArgCol43, align 4
  %add44 = add nsw i32 %80, 2
  %81 = load ptr, ptr %pWin, align 8
  %regResult45 = getelementptr inbounds nuw %struct.Window, ptr %81, i32 0, i32 17
  %82 = load i32, ptr %regResult45, align 8
  %call46 = call i32 @sqlite3VdbeAddOp3(ptr noundef %77, i32 noundef 90, i32 noundef %78, i32 noundef %add44, i32 noundef %82)
  br label %if.end47

if.end47:                                         ; preds = %if.else42, %if.then39
  %83 = load ptr, ptr %v, align 8
  %84 = load i32, ptr %iEph, align 4
  %85 = load i32, ptr %tmpReg35, align 4
  %call48 = call i32 @sqlite3VdbeAddOp2(ptr noundef %83, i32 noundef 128, i32 noundef %84, i32 noundef %85)
  %86 = load i32, ptr %nArg, align 4
  %cmp49 = icmp slt i32 %86, 2
  br i1 %cmp49, label %if.then50, label %if.else54

if.then50:                                        ; preds = %if.end47
  %87 = load ptr, ptr %pFunc, align 8
  %zName51 = getelementptr inbounds nuw %struct.FuncDef, ptr %87, i32 0, i32 8
  %88 = load ptr, ptr %zName51, align 8
  %cmp52 = icmp eq ptr %88, @leadName
  %89 = zext i1 %cmp52 to i64
  %cond = select i1 %cmp52, i32 1, i32 -1
  store i32 %cond, ptr %val, align 4
  %90 = load ptr, ptr %v, align 8
  %91 = load i32, ptr %tmpReg35, align 4
  %92 = load i32, ptr %val, align 4
  %call53 = call i32 @sqlite3VdbeAddOp2(ptr noundef %90, i32 noundef 83, i32 noundef %91, i32 noundef %92)
  br label %if.end63

if.else54:                                        ; preds = %if.end47
  %93 = load ptr, ptr %pFunc, align 8
  %zName55 = getelementptr inbounds nuw %struct.FuncDef, ptr %93, i32 0, i32 8
  %94 = load ptr, ptr %zName55, align 8
  %cmp56 = icmp eq ptr %94, @leadName
  %95 = zext i1 %cmp56 to i64
  %cond57 = select i1 %cmp56, i32 103, i32 104
  store i32 %cond57, ptr %op, align 4
  %96 = load ptr, ptr %pParse, align 8
  %call58 = call i32 @sqlite3GetTempReg(ptr noundef %96)
  store i32 %call58, ptr %tmpReg2, align 4
  %97 = load ptr, ptr %v, align 8
  %98 = load i32, ptr %iEph, align 4
  %99 = load ptr, ptr %pWin, align 8
  %iArgCol59 = getelementptr inbounds nuw %struct.Window, ptr %99, i32 0, i32 23
  %100 = load i32, ptr %iArgCol59, align 4
  %add60 = add nsw i32 %100, 1
  %101 = load i32, ptr %tmpReg2, align 4
  %call61 = call i32 @sqlite3VdbeAddOp3(ptr noundef %97, i32 noundef 90, i32 noundef %98, i32 noundef %add60, i32 noundef %101)
  %102 = load ptr, ptr %v, align 8
  %103 = load i32, ptr %op, align 4
  %104 = load i32, ptr %tmpReg2, align 4
  %105 = load i32, ptr %tmpReg35, align 4
  %106 = load i32, ptr %tmpReg35, align 4
  %call62 = call i32 @sqlite3VdbeAddOp3(ptr noundef %102, i32 noundef %103, i32 noundef %104, i32 noundef %105, i32 noundef %106)
  %107 = load ptr, ptr %pParse, align 8
  %108 = load i32, ptr %tmpReg2, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %107, i32 noundef %108)
  br label %if.end63

if.end63:                                         ; preds = %if.else54, %if.then50
  %109 = load ptr, ptr %v, align 8
  %110 = load i32, ptr %csr31, align 4
  %111 = load i32, ptr %lbl33, align 4
  %112 = load i32, ptr %tmpReg35, align 4
  %call64 = call i32 @sqlite3VdbeAddOp3(ptr noundef %109, i32 noundef 30, i32 noundef %110, i32 noundef %111, i32 noundef %112)
  %113 = load ptr, ptr %v, align 8
  %114 = load i32, ptr %csr31, align 4
  %115 = load ptr, ptr %pWin, align 8
  %iArgCol65 = getelementptr inbounds nuw %struct.Window, ptr %115, i32 0, i32 23
  %116 = load i32, ptr %iArgCol65, align 4
  %117 = load ptr, ptr %pWin, align 8
  %regResult66 = getelementptr inbounds nuw %struct.Window, ptr %117, i32 0, i32 17
  %118 = load i32, ptr %regResult66, align 8
  %call67 = call i32 @sqlite3VdbeAddOp3(ptr noundef %113, i32 noundef 90, i32 noundef %114, i32 noundef %116, i32 noundef %118)
  %119 = load ptr, ptr %v, align 8
  %120 = load i32, ptr %lbl33, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %119, i32 noundef %120)
  %121 = load ptr, ptr %pParse, align 8
  %122 = load i32, ptr %tmpReg35, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %121, i32 noundef %122)
  br label %if.end68

if.end68:                                         ; preds = %if.end63, %lor.lhs.false27
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %123 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %123, i32 0, i32 12
  %124 = load ptr, ptr %pNextWin, align 8
  store ptr %124, ptr %pWin, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end70

if.end70:                                         ; preds = %for.end, %if.then
  %125 = load ptr, ptr %v, align 8
  %126 = load ptr, ptr %p.addr, align 8
  %regGosub = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %126, i32 0, i32 4
  %127 = load i32, ptr %regGosub, align 4
  %128 = load ptr, ptr %p.addr, align 8
  %addrGosub = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %128, i32 0, i32 3
  %129 = load i32, ptr %addrGosub, align 8
  %call71 = call i32 @sqlite3VdbeAddOp2(ptr noundef %125, i32 noundef 12, i32 noundef %127, i32 noundef %129)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @windowFullScan(ptr noundef) #0

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
