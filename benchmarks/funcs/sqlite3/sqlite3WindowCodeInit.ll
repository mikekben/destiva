; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }

@leadName = external hidden constant [5 x i8], align 1
@lagName = external hidden constant [4 x i8], align 1
@nth_valueName = external hidden constant [10 x i8], align 1
@first_valueName = external hidden constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoFromExprList(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WindowCodeInit(ptr noundef %pParse, ptr noundef %pMWin) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pMWin.addr = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  %v = alloca ptr, align 8
  %nExpr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %pKeyInfo = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pMWin, ptr %pMWin.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load ptr, ptr %pMWin.addr, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pPartition, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pMWin.addr, align 8
  %pPartition1 = getelementptr inbounds nuw %struct.Window, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pPartition1, align 8
  %nExpr2 = getelementptr inbounds nuw %struct.ExprList, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nExpr2, align 8
  store i32 %5, ptr %nExpr, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 18
  %7 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %7, 1
  %8 = load ptr, ptr %pMWin.addr, align 8
  %regPart = getelementptr inbounds nuw %struct.Window, ptr %8, i32 0, i32 20
  store i32 %add, ptr %regPart, align 4
  %9 = load i32, ptr %nExpr, align 4
  %10 = load ptr, ptr %pParse.addr, align 8
  %nMem3 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 18
  %11 = load i32, ptr %nMem3, align 8
  %add4 = add nsw i32 %11, %9
  store i32 %add4, ptr %nMem3, align 8
  %12 = load ptr, ptr %v, align 8
  %13 = load ptr, ptr %pMWin.addr, align 8
  %regPart5 = getelementptr inbounds nuw %struct.Window, ptr %13, i32 0, i32 20
  %14 = load i32, ptr %regPart5, align 4
  %15 = load ptr, ptr %pMWin.addr, align 8
  %regPart6 = getelementptr inbounds nuw %struct.Window, ptr %15, i32 0, i32 20
  %16 = load i32, ptr %regPart6, align 4
  %17 = load i32, ptr %nExpr, align 4
  %add7 = add nsw i32 %16, %17
  %sub = sub nsw i32 %add7, 1
  %call8 = call i32 @sqlite3VdbeAddOp3(ptr noundef %12, i32 noundef 73, i32 noundef 0, i32 noundef %14, i32 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load ptr, ptr %pParse.addr, align 8
  %nMem9 = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 18
  %19 = load i32, ptr %nMem9, align 8
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %nMem9, align 8
  %20 = load ptr, ptr %pMWin.addr, align 8
  %regOne = getelementptr inbounds nuw %struct.Window, ptr %20, i32 0, i32 24
  store i32 %inc, ptr %regOne, align 8
  %21 = load ptr, ptr %v, align 8
  %22 = load ptr, ptr %pMWin.addr, align 8
  %regOne10 = getelementptr inbounds nuw %struct.Window, ptr %22, i32 0, i32 24
  %23 = load i32, ptr %regOne10, align 8
  %call11 = call i32 @sqlite3VdbeAddOp2(ptr noundef %21, i32 noundef 70, i32 noundef 1, i32 noundef %23)
  %24 = load ptr, ptr %pMWin.addr, align 8
  %eExclude = getelementptr inbounds nuw %struct.Window, ptr %24, i32 0, i32 8
  %25 = load i8, ptr %eExclude, align 4
  %tobool12 = icmp ne i8 %25, 0
  br i1 %tobool12, label %if.then13, label %if.end25

if.then13:                                        ; preds = %if.end
  %26 = load ptr, ptr %pParse.addr, align 8
  %nMem14 = getelementptr inbounds nuw %struct.Parse, ptr %26, i32 0, i32 18
  %27 = load i32, ptr %nMem14, align 8
  %inc15 = add nsw i32 %27, 1
  store i32 %inc15, ptr %nMem14, align 8
  %28 = load ptr, ptr %pMWin.addr, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %28, i32 0, i32 25
  store i32 %inc15, ptr %regStartRowid, align 4
  %29 = load ptr, ptr %pParse.addr, align 8
  %nMem16 = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 18
  %30 = load i32, ptr %nMem16, align 8
  %inc17 = add nsw i32 %30, 1
  store i32 %inc17, ptr %nMem16, align 8
  %31 = load ptr, ptr %pMWin.addr, align 8
  %regEndRowid = getelementptr inbounds nuw %struct.Window, ptr %31, i32 0, i32 26
  store i32 %inc17, ptr %regEndRowid, align 8
  %32 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %32, i32 0, i32 17
  %33 = load i32, ptr %nTab, align 4
  %inc18 = add nsw i32 %33, 1
  store i32 %inc18, ptr %nTab, align 4
  %34 = load ptr, ptr %pMWin.addr, align 8
  %csrApp = getelementptr inbounds nuw %struct.Window, ptr %34, i32 0, i32 18
  store i32 %33, ptr %csrApp, align 4
  %35 = load ptr, ptr %v, align 8
  %36 = load ptr, ptr %pMWin.addr, align 8
  %regStartRowid19 = getelementptr inbounds nuw %struct.Window, ptr %36, i32 0, i32 25
  %37 = load i32, ptr %regStartRowid19, align 4
  %call20 = call i32 @sqlite3VdbeAddOp2(ptr noundef %35, i32 noundef 70, i32 noundef 1, i32 noundef %37)
  %38 = load ptr, ptr %v, align 8
  %39 = load ptr, ptr %pMWin.addr, align 8
  %regEndRowid21 = getelementptr inbounds nuw %struct.Window, ptr %39, i32 0, i32 26
  %40 = load i32, ptr %regEndRowid21, align 8
  %call22 = call i32 @sqlite3VdbeAddOp2(ptr noundef %38, i32 noundef 70, i32 noundef 0, i32 noundef %40)
  %41 = load ptr, ptr %v, align 8
  %42 = load ptr, ptr %pMWin.addr, align 8
  %csrApp23 = getelementptr inbounds nuw %struct.Window, ptr %42, i32 0, i32 18
  %43 = load i32, ptr %csrApp23, align 4
  %44 = load ptr, ptr %pMWin.addr, align 8
  %iEphCsr = getelementptr inbounds nuw %struct.Window, ptr %44, i32 0, i32 15
  %45 = load i32, ptr %iEphCsr, align 8
  %call24 = call i32 @sqlite3VdbeAddOp2(ptr noundef %41, i32 noundef 109, i32 noundef %43, i32 noundef %45)
  br label %for.end

if.end25:                                         ; preds = %if.end
  %46 = load ptr, ptr %pMWin.addr, align 8
  store ptr %46, ptr %pWin, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %47 = load ptr, ptr %pWin, align 8
  %tobool26 = icmp ne ptr %47, null
  br i1 %tobool26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load ptr, ptr %pWin, align 8
  %pFunc = getelementptr inbounds nuw %struct.Window, ptr %48, i32 0, i32 14
  %49 = load ptr, ptr %pFunc, align 8
  store ptr %49, ptr %p, align 8
  %50 = load ptr, ptr %p, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %funcFlags, align 4
  %and = and i32 %51, 4096
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %52 = load ptr, ptr %pWin, align 8
  %eStart = getelementptr inbounds nuw %struct.Window, ptr %52, i32 0, i32 5
  %53 = load i8, ptr %eStart, align 1
  %conv = zext i8 %53 to i32
  %cmp = icmp ne i32 %conv, 90
  br i1 %cmp, label %if.then29, label %if.else

if.then29:                                        ; preds = %land.lhs.true
  %54 = load ptr, ptr %pWin, align 8
  %pOwner = getelementptr inbounds nuw %struct.Window, ptr %54, i32 0, i32 21
  %55 = load ptr, ptr %pOwner, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %55, i32 0, i32 6
  %56 = load ptr, ptr %x, align 8
  store ptr %56, ptr %pList, align 8
  %57 = load ptr, ptr %pParse.addr, align 8
  %58 = load ptr, ptr %pList, align 8
  %call30 = call ptr @sqlite3KeyInfoFromExprList(ptr noundef %57, ptr noundef %58, i32 noundef 0, i32 noundef 0)
  store ptr %call30, ptr %pKeyInfo, align 8
  %59 = load ptr, ptr %pParse.addr, align 8
  %nTab31 = getelementptr inbounds nuw %struct.Parse, ptr %59, i32 0, i32 17
  %60 = load i32, ptr %nTab31, align 4
  %inc32 = add nsw i32 %60, 1
  store i32 %inc32, ptr %nTab31, align 4
  %61 = load ptr, ptr %pWin, align 8
  %csrApp33 = getelementptr inbounds nuw %struct.Window, ptr %61, i32 0, i32 18
  store i32 %60, ptr %csrApp33, align 4
  %62 = load ptr, ptr %pParse.addr, align 8
  %nMem34 = getelementptr inbounds nuw %struct.Parse, ptr %62, i32 0, i32 18
  %63 = load i32, ptr %nMem34, align 8
  %add35 = add nsw i32 %63, 1
  %64 = load ptr, ptr %pWin, align 8
  %regApp = getelementptr inbounds nuw %struct.Window, ptr %64, i32 0, i32 19
  store i32 %add35, ptr %regApp, align 8
  %65 = load ptr, ptr %pParse.addr, align 8
  %nMem36 = getelementptr inbounds nuw %struct.Parse, ptr %65, i32 0, i32 18
  %66 = load i32, ptr %nMem36, align 8
  %add37 = add nsw i32 %66, 3
  store i32 %add37, ptr %nMem36, align 8
  %67 = load ptr, ptr %pKeyInfo, align 8
  %tobool38 = icmp ne ptr %67, null
  br i1 %tobool38, label %land.lhs.true39, label %if.end46

land.lhs.true39:                                  ; preds = %if.then29
  %68 = load ptr, ptr %pWin, align 8
  %pFunc40 = getelementptr inbounds nuw %struct.Window, ptr %68, i32 0, i32 14
  %69 = load ptr, ptr %pFunc40, align 8
  %zName = getelementptr inbounds nuw %struct.FuncDef, ptr %69, i32 0, i32 8
  %70 = load ptr, ptr %zName, align 8
  %arrayidx = getelementptr inbounds i8, ptr %70, i64 1
  %71 = load i8, ptr %arrayidx, align 1
  %conv41 = sext i8 %71 to i32
  %cmp42 = icmp eq i32 %conv41, 105
  br i1 %cmp42, label %if.then44, label %if.end46

if.then44:                                        ; preds = %land.lhs.true39
  %72 = load ptr, ptr %pKeyInfo, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %72, i32 0, i32 5
  %73 = load ptr, ptr %aSortFlags, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %73, i64 0
  store i8 1, ptr %arrayidx45, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true39, %if.then29
  %74 = load ptr, ptr %v, align 8
  %75 = load ptr, ptr %pWin, align 8
  %csrApp47 = getelementptr inbounds nuw %struct.Window, ptr %75, i32 0, i32 18
  %76 = load i32, ptr %csrApp47, align 4
  %call48 = call i32 @sqlite3VdbeAddOp2(ptr noundef %74, i32 noundef 112, i32 noundef %76, i32 noundef 2)
  %77 = load ptr, ptr %v, align 8
  %78 = load ptr, ptr %pKeyInfo, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %77, ptr noundef %78, i32 noundef -9)
  %79 = load ptr, ptr %v, align 8
  %80 = load ptr, ptr %pWin, align 8
  %regApp49 = getelementptr inbounds nuw %struct.Window, ptr %80, i32 0, i32 19
  %81 = load i32, ptr %regApp49, align 8
  %add50 = add nsw i32 %81, 1
  %call51 = call i32 @sqlite3VdbeAddOp2(ptr noundef %79, i32 noundef 70, i32 noundef 0, i32 noundef %add50)
  br label %if.end87

if.else:                                          ; preds = %land.lhs.true, %for.body
  %82 = load ptr, ptr %p, align 8
  %zName52 = getelementptr inbounds nuw %struct.FuncDef, ptr %82, i32 0, i32 8
  %83 = load ptr, ptr %zName52, align 8
  %cmp53 = icmp eq ptr %83, @nth_valueName
  br i1 %cmp53, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %84 = load ptr, ptr %p, align 8
  %zName55 = getelementptr inbounds nuw %struct.FuncDef, ptr %84, i32 0, i32 8
  %85 = load ptr, ptr %zName55, align 8
  %cmp56 = icmp eq ptr %85, @first_valueName
  br i1 %cmp56, label %if.then58, label %if.else70

if.then58:                                        ; preds = %lor.lhs.false, %if.else
  %86 = load ptr, ptr %pParse.addr, align 8
  %nMem59 = getelementptr inbounds nuw %struct.Parse, ptr %86, i32 0, i32 18
  %87 = load i32, ptr %nMem59, align 8
  %add60 = add nsw i32 %87, 1
  %88 = load ptr, ptr %pWin, align 8
  %regApp61 = getelementptr inbounds nuw %struct.Window, ptr %88, i32 0, i32 19
  store i32 %add60, ptr %regApp61, align 8
  %89 = load ptr, ptr %pParse.addr, align 8
  %nTab62 = getelementptr inbounds nuw %struct.Parse, ptr %89, i32 0, i32 17
  %90 = load i32, ptr %nTab62, align 4
  %inc63 = add nsw i32 %90, 1
  store i32 %inc63, ptr %nTab62, align 4
  %91 = load ptr, ptr %pWin, align 8
  %csrApp64 = getelementptr inbounds nuw %struct.Window, ptr %91, i32 0, i32 18
  store i32 %90, ptr %csrApp64, align 4
  %92 = load ptr, ptr %pParse.addr, align 8
  %nMem65 = getelementptr inbounds nuw %struct.Parse, ptr %92, i32 0, i32 18
  %93 = load i32, ptr %nMem65, align 8
  %add66 = add nsw i32 %93, 2
  store i32 %add66, ptr %nMem65, align 8
  %94 = load ptr, ptr %v, align 8
  %95 = load ptr, ptr %pWin, align 8
  %csrApp67 = getelementptr inbounds nuw %struct.Window, ptr %95, i32 0, i32 18
  %96 = load i32, ptr %csrApp67, align 4
  %97 = load ptr, ptr %pMWin.addr, align 8
  %iEphCsr68 = getelementptr inbounds nuw %struct.Window, ptr %97, i32 0, i32 15
  %98 = load i32, ptr %iEphCsr68, align 8
  %call69 = call i32 @sqlite3VdbeAddOp2(ptr noundef %94, i32 noundef 109, i32 noundef %96, i32 noundef %98)
  br label %if.end86

if.else70:                                        ; preds = %lor.lhs.false
  %99 = load ptr, ptr %p, align 8
  %zName71 = getelementptr inbounds nuw %struct.FuncDef, ptr %99, i32 0, i32 8
  %100 = load ptr, ptr %zName71, align 8
  %cmp72 = icmp eq ptr %100, @leadName
  br i1 %cmp72, label %if.then78, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %if.else70
  %101 = load ptr, ptr %p, align 8
  %zName75 = getelementptr inbounds nuw %struct.FuncDef, ptr %101, i32 0, i32 8
  %102 = load ptr, ptr %zName75, align 8
  %cmp76 = icmp eq ptr %102, @lagName
  br i1 %cmp76, label %if.then78, label %if.end85

if.then78:                                        ; preds = %lor.lhs.false74, %if.else70
  %103 = load ptr, ptr %pParse.addr, align 8
  %nTab79 = getelementptr inbounds nuw %struct.Parse, ptr %103, i32 0, i32 17
  %104 = load i32, ptr %nTab79, align 4
  %inc80 = add nsw i32 %104, 1
  store i32 %inc80, ptr %nTab79, align 4
  %105 = load ptr, ptr %pWin, align 8
  %csrApp81 = getelementptr inbounds nuw %struct.Window, ptr %105, i32 0, i32 18
  store i32 %104, ptr %csrApp81, align 4
  %106 = load ptr, ptr %v, align 8
  %107 = load ptr, ptr %pWin, align 8
  %csrApp82 = getelementptr inbounds nuw %struct.Window, ptr %107, i32 0, i32 18
  %108 = load i32, ptr %csrApp82, align 4
  %109 = load ptr, ptr %pMWin.addr, align 8
  %iEphCsr83 = getelementptr inbounds nuw %struct.Window, ptr %109, i32 0, i32 15
  %110 = load i32, ptr %iEphCsr83, align 8
  %call84 = call i32 @sqlite3VdbeAddOp2(ptr noundef %106, i32 noundef 109, i32 noundef %108, i32 noundef %110)
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %lor.lhs.false74
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then58
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.end46
  br label %for.inc

for.inc:                                          ; preds = %if.end87
  %111 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %111, i32 0, i32 12
  %112 = load ptr, ptr %pNextWin, align 8
  store ptr %112, ptr %pWin, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond, %if.then13
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
