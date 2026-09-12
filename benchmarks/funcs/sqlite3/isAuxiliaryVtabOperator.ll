; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Op2 = type { ptr, i8 }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@isAuxiliaryVtabOperator.aOp = external hidden constant [4 x { ptr, i8, [7 x i8] }], align 16

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @isAuxiliaryVtabOperator(ptr noundef %db, ptr noundef %pExpr, ptr noundef %peOp2, ptr noundef %ppLeft, ptr noundef %ppRight) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %peOp2.addr = alloca ptr, align 8
  %ppLeft.addr = alloca ptr, align 8
  %ppRight.addr = alloca ptr, align 8
  %pList = alloca ptr, align 8
  %pCol = alloca ptr, align 8
  %i = alloca i32, align 4
  %pVtab = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %xNotUsed = alloca ptr, align 8
  %pNotUsed = alloca ptr, align 8
  %res = alloca i32, align 4
  %pLeft = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %t = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %peOp2, ptr %peOp2.addr, align 8
  store ptr %ppLeft, ptr %ppLeft.addr, align 8
  store ptr %ppRight, ptr %ppRight.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 167
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %x, align 8
  store ptr %3, ptr %pList, align 8
  %4 = load ptr, ptr %pList, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load ptr, ptr %pList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr, align 8
  %cmp4 = icmp ne i32 %6, 2
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 1
  %pExpr7 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %8 = load ptr, ptr %pExpr7, align 8
  store ptr %8, ptr %pCol, align 8
  %9 = load ptr, ptr %pCol, align 8
  %op8 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %op8, align 8
  %conv9 = zext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 162
  br i1 %cmp10, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end
  %11 = load ptr, ptr %pCol, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 14
  %12 = load ptr, ptr %y, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 16
  %13 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then12, label %if.end25

if.then12:                                        ; preds = %land.lhs.true
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then12
  %14 = load i32, ptr %i, align 4
  %cmp13 = icmp slt i32 %14, 4
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %u, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [4 x %struct.Op2], ptr @isAuxiliaryVtabOperator.aOp, i64 0, i64 %idxprom
  %zOp = getelementptr inbounds nuw %struct.Op2, ptr %arrayidx15, i32 0, i32 0
  %18 = load ptr, ptr %zOp, align 16
  %call = call i32 @sqlite3StrICmp(ptr noundef %16, ptr noundef %18)
  %cmp16 = icmp eq i32 %call, 0
  br i1 %cmp16, label %if.then18, label %if.end24

if.then18:                                        ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [4 x %struct.Op2], ptr @isAuxiliaryVtabOperator.aOp, i64 0, i64 %idxprom19
  %eOp2 = getelementptr inbounds nuw %struct.Op2, ptr %arrayidx20, i32 0, i32 1
  %20 = load i8, ptr %eOp2, align 8
  %21 = load ptr, ptr %peOp2.addr, align 8
  store i8 %20, ptr %21, align 1
  %22 = load ptr, ptr %pList, align 8
  %a21 = getelementptr inbounds nuw %struct.ExprList, ptr %22, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a21, i64 0, i64 0
  %pExpr23 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx22, i32 0, i32 0
  %23 = load ptr, ptr %pExpr23, align 8
  %24 = load ptr, ptr %ppRight.addr, align 8
  store ptr %23, ptr %24, align 8
  %25 = load ptr, ptr %pCol, align 8
  %26 = load ptr, ptr %ppLeft.addr, align 8
  store ptr %25, ptr %26, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end25

if.end25:                                         ; preds = %for.end, %land.lhs.true, %if.end
  %28 = load ptr, ptr %pList, align 8
  %a26 = getelementptr inbounds nuw %struct.ExprList, ptr %28, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a26, i64 0, i64 0
  %pExpr28 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx27, i32 0, i32 0
  %29 = load ptr, ptr %pExpr28, align 8
  store ptr %29, ptr %pCol, align 8
  %30 = load ptr, ptr %pCol, align 8
  %op29 = getelementptr inbounds nuw %struct.Expr, ptr %30, i32 0, i32 0
  %31 = load i8, ptr %op29, align 8
  %conv30 = zext i8 %31 to i32
  %cmp31 = icmp eq i32 %conv30, 162
  br i1 %cmp31, label %land.lhs.true33, label %if.end56

land.lhs.true33:                                  ; preds = %if.end25
  %32 = load ptr, ptr %pCol, align 8
  %y34 = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 14
  %33 = load ptr, ptr %y34, align 8
  %nModuleArg35 = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 16
  %34 = load i32, ptr %nModuleArg35, align 4
  %tobool36 = icmp ne i32 %34, 0
  br i1 %tobool36, label %if.then37, label %if.end56

if.then37:                                        ; preds = %land.lhs.true33
  %35 = load ptr, ptr %db.addr, align 8
  %36 = load ptr, ptr %pCol, align 8
  %y38 = getelementptr inbounds nuw %struct.Expr, ptr %36, i32 0, i32 14
  %37 = load ptr, ptr %y38, align 8
  %call39 = call ptr @sqlite3GetVTable(ptr noundef %35, ptr noundef %37)
  %pVtab40 = getelementptr inbounds nuw %struct.VTable, ptr %call39, i32 0, i32 2
  %38 = load ptr, ptr %pVtab40, align 8
  store ptr %38, ptr %pVtab, align 8
  %39 = load ptr, ptr %pVtab, align 8
  %pModule = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %pModule, align 8
  store ptr %40, ptr %pMod, align 8
  %41 = load ptr, ptr %pMod, align 8
  %xFindFunction = getelementptr inbounds nuw %struct.sqlite3_module, ptr %41, i32 0, i32 18
  %42 = load ptr, ptr %xFindFunction, align 8
  %cmp41 = icmp ne ptr %42, null
  br i1 %cmp41, label %if.then43, label %if.end55

if.then43:                                        ; preds = %if.then37
  %43 = load ptr, ptr %pMod, align 8
  %xFindFunction44 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %43, i32 0, i32 18
  %44 = load ptr, ptr %xFindFunction44, align 8
  %45 = load ptr, ptr %pVtab, align 8
  %46 = load ptr, ptr %pExpr.addr, align 8
  %u45 = getelementptr inbounds nuw %struct.Expr, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %u45, align 8
  %call46 = call i32 %44(ptr noundef %45, i32 noundef 2, ptr noundef %47, ptr noundef %xNotUsed, ptr noundef %pNotUsed)
  store i32 %call46, ptr %i, align 4
  %48 = load i32, ptr %i, align 4
  %cmp47 = icmp sge i32 %48, 150
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.then43
  %49 = load i32, ptr %i, align 4
  %conv50 = trunc i32 %49 to i8
  %50 = load ptr, ptr %peOp2.addr, align 8
  store i8 %conv50, ptr %50, align 1
  %51 = load ptr, ptr %pList, align 8
  %a51 = getelementptr inbounds nuw %struct.ExprList, ptr %51, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a51, i64 0, i64 1
  %pExpr53 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx52, i32 0, i32 0
  %52 = load ptr, ptr %pExpr53, align 8
  %53 = load ptr, ptr %ppRight.addr, align 8
  store ptr %52, ptr %53, align 8
  %54 = load ptr, ptr %pCol, align 8
  %55 = load ptr, ptr %ppLeft.addr, align 8
  store ptr %54, ptr %55, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.then43
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then37
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %land.lhs.true33, %if.end25
  br label %if.end117

if.else:                                          ; preds = %entry
  %56 = load ptr, ptr %pExpr.addr, align 8
  %op57 = getelementptr inbounds nuw %struct.Expr, ptr %56, i32 0, i32 0
  %57 = load i8, ptr %op57, align 8
  %conv58 = zext i8 %57 to i32
  %cmp59 = icmp eq i32 %conv58, 52
  br i1 %cmp59, label %if.then71, label %lor.lhs.false61

lor.lhs.false61:                                  ; preds = %if.else
  %58 = load ptr, ptr %pExpr.addr, align 8
  %op62 = getelementptr inbounds nuw %struct.Expr, ptr %58, i32 0, i32 0
  %59 = load i8, ptr %op62, align 8
  %conv63 = zext i8 %59 to i32
  %cmp64 = icmp eq i32 %conv63, 166
  br i1 %cmp64, label %if.then71, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %lor.lhs.false61
  %60 = load ptr, ptr %pExpr.addr, align 8
  %op67 = getelementptr inbounds nuw %struct.Expr, ptr %60, i32 0, i32 0
  %61 = load i8, ptr %op67, align 8
  %conv68 = zext i8 %61 to i32
  %cmp69 = icmp eq i32 %conv68, 51
  br i1 %cmp69, label %if.then71, label %if.end116

if.then71:                                        ; preds = %lor.lhs.false66, %lor.lhs.false61, %if.else
  store i32 0, ptr %res, align 4
  %62 = load ptr, ptr %pExpr.addr, align 8
  %pLeft72 = getelementptr inbounds nuw %struct.Expr, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %pLeft72, align 8
  store ptr %63, ptr %pLeft, align 8
  %64 = load ptr, ptr %pExpr.addr, align 8
  %pRight73 = getelementptr inbounds nuw %struct.Expr, ptr %64, i32 0, i32 5
  %65 = load ptr, ptr %pRight73, align 8
  store ptr %65, ptr %pRight, align 8
  %66 = load ptr, ptr %pLeft, align 8
  %op74 = getelementptr inbounds nuw %struct.Expr, ptr %66, i32 0, i32 0
  %67 = load i8, ptr %op74, align 8
  %conv75 = zext i8 %67 to i32
  %cmp76 = icmp eq i32 %conv75, 162
  br i1 %cmp76, label %land.lhs.true78, label %if.end84

land.lhs.true78:                                  ; preds = %if.then71
  %68 = load ptr, ptr %pLeft, align 8
  %y79 = getelementptr inbounds nuw %struct.Expr, ptr %68, i32 0, i32 14
  %69 = load ptr, ptr %y79, align 8
  %nModuleArg80 = getelementptr inbounds nuw %struct.Table, ptr %69, i32 0, i32 16
  %70 = load i32, ptr %nModuleArg80, align 4
  %tobool81 = icmp ne i32 %70, 0
  br i1 %tobool81, label %if.then82, label %if.end84

if.then82:                                        ; preds = %land.lhs.true78
  %71 = load i32, ptr %res, align 4
  %inc83 = add nsw i32 %71, 1
  store i32 %inc83, ptr %res, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %land.lhs.true78, %if.then71
  %72 = load ptr, ptr %pRight, align 8
  %tobool85 = icmp ne ptr %72, null
  br i1 %tobool85, label %land.lhs.true86, label %if.end97

land.lhs.true86:                                  ; preds = %if.end84
  %73 = load ptr, ptr %pRight, align 8
  %op87 = getelementptr inbounds nuw %struct.Expr, ptr %73, i32 0, i32 0
  %74 = load i8, ptr %op87, align 8
  %conv88 = zext i8 %74 to i32
  %cmp89 = icmp eq i32 %conv88, 162
  br i1 %cmp89, label %land.lhs.true91, label %if.end97

land.lhs.true91:                                  ; preds = %land.lhs.true86
  %75 = load ptr, ptr %pRight, align 8
  %y92 = getelementptr inbounds nuw %struct.Expr, ptr %75, i32 0, i32 14
  %76 = load ptr, ptr %y92, align 8
  %nModuleArg93 = getelementptr inbounds nuw %struct.Table, ptr %76, i32 0, i32 16
  %77 = load i32, ptr %nModuleArg93, align 4
  %tobool94 = icmp ne i32 %77, 0
  br i1 %tobool94, label %if.then95, label %if.end97

if.then95:                                        ; preds = %land.lhs.true91
  %78 = load i32, ptr %res, align 4
  %inc96 = add nsw i32 %78, 1
  store i32 %inc96, ptr %res, align 4
  %79 = load ptr, ptr %pLeft, align 8
  store ptr %79, ptr %t, align 8
  %80 = load ptr, ptr %pRight, align 8
  store ptr %80, ptr %pLeft, align 8
  %81 = load ptr, ptr %t, align 8
  store ptr %81, ptr %pRight, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %land.lhs.true91, %land.lhs.true86, %if.end84
  %82 = load ptr, ptr %pLeft, align 8
  %83 = load ptr, ptr %ppLeft.addr, align 8
  store ptr %82, ptr %83, align 8
  %84 = load ptr, ptr %pRight, align 8
  %85 = load ptr, ptr %ppRight.addr, align 8
  store ptr %84, ptr %85, align 8
  %86 = load ptr, ptr %pExpr.addr, align 8
  %op98 = getelementptr inbounds nuw %struct.Expr, ptr %86, i32 0, i32 0
  %87 = load i8, ptr %op98, align 8
  %conv99 = zext i8 %87 to i32
  %cmp100 = icmp eq i32 %conv99, 52
  br i1 %cmp100, label %if.then102, label %if.end103

if.then102:                                       ; preds = %if.end97
  %88 = load ptr, ptr %peOp2.addr, align 8
  store i8 68, ptr %88, align 1
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end97
  %89 = load ptr, ptr %pExpr.addr, align 8
  %op104 = getelementptr inbounds nuw %struct.Expr, ptr %89, i32 0, i32 0
  %90 = load i8, ptr %op104, align 8
  %conv105 = zext i8 %90 to i32
  %cmp106 = icmp eq i32 %conv105, 166
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %if.end103
  %91 = load ptr, ptr %peOp2.addr, align 8
  store i8 69, ptr %91, align 1
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end103
  %92 = load ptr, ptr %pExpr.addr, align 8
  %op110 = getelementptr inbounds nuw %struct.Expr, ptr %92, i32 0, i32 0
  %93 = load i8, ptr %op110, align 8
  %conv111 = zext i8 %93 to i32
  %cmp112 = icmp eq i32 %conv111, 51
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end109
  %94 = load ptr, ptr %peOp2.addr, align 8
  store i8 70, ptr %94, align 1
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end109
  %95 = load i32, ptr %res, align 4
  store i32 %95, ptr %retval, align 4
  br label %return

if.end116:                                        ; preds = %lor.lhs.false66
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end56
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end117, %if.end115, %if.then49, %if.then18, %if.then6
  %96 = load i32, ptr %retval, align 4
  ret i32 %96
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
