; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.SubstContext = type { ptr, i32, i32, i32, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

@.str.290 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsVector(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VectorErrorMsg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAddCollateString(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @substSelect(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @substExprList(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @substExpr(ptr noundef %pSubst, ptr noundef %pExpr) #1 {
entry:
  %retval = alloca ptr, align 8
  %pSubst.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pCopy = alloca ptr, align 8
  %ifNullRow = alloca %struct.Expr, align 8
  %db = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  store ptr %pSubst, ptr %pSubst.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %pExpr.addr, align 8
  %iRightJoinTable = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 11
  %4 = load i16, ptr %iRightJoinTable, align 4
  %conv = sext i16 %4 to i32
  %5 = load ptr, ptr %pSubst.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.SubstContext, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %iTable, align 8
  %cmp2 = icmp eq i32 %conv, %6
  br i1 %cmp2, label %if.then4, label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %pSubst.addr, align 8
  %iNewTable = getelementptr inbounds nuw %struct.SubstContext, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iNewTable, align 4
  %conv5 = trunc i32 %8 to i16
  %9 = load ptr, ptr %pExpr.addr, align 8
  %iRightJoinTable6 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 11
  store i16 %conv5, ptr %iRightJoinTable6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %10 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 0
  %11 = load i8, ptr %op, align 8
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 162
  br i1 %cmp9, label %land.lhs.true11, label %if.else82

land.lhs.true11:                                  ; preds = %if.end7
  %12 = load ptr, ptr %pExpr.addr, align 8
  %iTable12 = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 8
  %13 = load i32, ptr %iTable12, align 4
  %14 = load ptr, ptr %pSubst.addr, align 8
  %iTable13 = getelementptr inbounds nuw %struct.SubstContext, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %iTable13, align 8
  %cmp14 = icmp eq i32 %13, %15
  br i1 %cmp14, label %if.then16, label %if.else82

if.then16:                                        ; preds = %land.lhs.true11
  %16 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 9
  %17 = load i16, ptr %iColumn, align 8
  %conv17 = sext i16 %17 to i32
  %cmp18 = icmp slt i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then16
  %18 = load ptr, ptr %pExpr.addr, align 8
  %op21 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 0
  store i8 117, ptr %op21, align 8
  br label %if.end81

if.else:                                          ; preds = %if.then16
  %19 = load ptr, ptr %pSubst.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.SubstContext, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %pExpr.addr, align 8
  %iColumn22 = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 9
  %22 = load i16, ptr %iColumn22, align 8
  %idxprom = sext i16 %22 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr23 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %23 = load ptr, ptr %pExpr23, align 8
  store ptr %23, ptr %pCopy, align 8
  %24 = load ptr, ptr %pCopy, align 8
  %call = call i32 @sqlite3ExprIsVector(ptr noundef %24)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else
  %25 = load ptr, ptr %pSubst.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.SubstContext, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pParse, align 8
  %27 = load ptr, ptr %pCopy, align 8
  call void @sqlite3VectorErrorMsg(ptr noundef %26, ptr noundef %27)
  br label %if.end80

if.else25:                                        ; preds = %if.else
  %28 = load ptr, ptr %pSubst.addr, align 8
  %pParse26 = getelementptr inbounds nuw %struct.SubstContext, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pParse26, align 8
  %db27 = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %db27, align 8
  store ptr %30, ptr %db, align 8
  %31 = load ptr, ptr %pSubst.addr, align 8
  %isLeftJoin = getelementptr inbounds nuw %struct.SubstContext, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %isLeftJoin, align 8
  %tobool28 = icmp ne i32 %32, 0
  br i1 %tobool28, label %land.lhs.true29, label %if.end38

land.lhs.true29:                                  ; preds = %if.else25
  %33 = load ptr, ptr %pCopy, align 8
  %op30 = getelementptr inbounds nuw %struct.Expr, ptr %33, i32 0, i32 0
  %34 = load i8, ptr %op30, align 8
  %conv31 = zext i8 %34 to i32
  %cmp32 = icmp ne i32 %conv31, 162
  br i1 %cmp32, label %if.then34, label %if.end38

if.then34:                                        ; preds = %land.lhs.true29
  call void @llvm.memset.p0.i64(ptr align 8 %ifNullRow, i8 0, i64 72, i1 false)
  %op35 = getelementptr inbounds nuw %struct.Expr, ptr %ifNullRow, i32 0, i32 0
  store i8 -82, ptr %op35, align 8
  %35 = load ptr, ptr %pCopy, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %ifNullRow, i32 0, i32 4
  store ptr %35, ptr %pLeft, align 8
  %36 = load ptr, ptr %pSubst.addr, align 8
  %iNewTable36 = getelementptr inbounds nuw %struct.SubstContext, ptr %36, i32 0, i32 2
  %37 = load i32, ptr %iNewTable36, align 4
  %iTable37 = getelementptr inbounds nuw %struct.Expr, ptr %ifNullRow, i32 0, i32 8
  store i32 %37, ptr %iTable37, align 4
  store ptr %ifNullRow, ptr %pCopy, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true29, %if.else25
  %38 = load ptr, ptr %db, align 8
  %39 = load ptr, ptr %pCopy, align 8
  %call39 = call ptr @sqlite3ExprDup(ptr noundef %38, ptr noundef %39, i32 noundef 0)
  store ptr %call39, ptr %pNew, align 8
  %40 = load ptr, ptr %pNew, align 8
  %tobool40 = icmp ne ptr %40, null
  br i1 %tobool40, label %land.lhs.true41, label %if.end46

land.lhs.true41:                                  ; preds = %if.end38
  %41 = load ptr, ptr %pSubst.addr, align 8
  %isLeftJoin42 = getelementptr inbounds nuw %struct.SubstContext, ptr %41, i32 0, i32 3
  %42 = load i32, ptr %isLeftJoin42, align 8
  %tobool43 = icmp ne i32 %42, 0
  br i1 %tobool43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %land.lhs.true41
  %43 = load ptr, ptr %pNew, align 8
  %flags45 = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %flags45, align 4
  %or = or i32 %44, 1048576
  store i32 %or, ptr %flags45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true41, %if.end38
  %45 = load ptr, ptr %pNew, align 8
  %tobool47 = icmp ne ptr %45, null
  br i1 %tobool47, label %land.lhs.true48, label %if.end58

land.lhs.true48:                                  ; preds = %if.end46
  %46 = load ptr, ptr %pExpr.addr, align 8
  %flags49 = getelementptr inbounds nuw %struct.Expr, ptr %46, i32 0, i32 2
  %47 = load i32, ptr %flags49, align 4
  %and50 = and i32 %47, 1
  %cmp51 = icmp ne i32 %and50, 0
  br i1 %cmp51, label %if.then53, label %if.end58

if.then53:                                        ; preds = %land.lhs.true48
  %48 = load ptr, ptr %pExpr.addr, align 8
  %iRightJoinTable54 = getelementptr inbounds nuw %struct.Expr, ptr %48, i32 0, i32 11
  %49 = load i16, ptr %iRightJoinTable54, align 4
  %50 = load ptr, ptr %pNew, align 8
  %iRightJoinTable55 = getelementptr inbounds nuw %struct.Expr, ptr %50, i32 0, i32 11
  store i16 %49, ptr %iRightJoinTable55, align 4
  %51 = load ptr, ptr %pNew, align 8
  %flags56 = getelementptr inbounds nuw %struct.Expr, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %flags56, align 4
  %or57 = or i32 %52, 1
  store i32 %or57, ptr %flags56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %land.lhs.true48, %if.end46
  %53 = load ptr, ptr %db, align 8
  %54 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %53, ptr noundef %54)
  %55 = load ptr, ptr %pNew, align 8
  store ptr %55, ptr %pExpr.addr, align 8
  %56 = load ptr, ptr %pExpr.addr, align 8
  %tobool59 = icmp ne ptr %56, null
  br i1 %tobool59, label %if.then60, label %if.end79

if.then60:                                        ; preds = %if.end58
  %57 = load ptr, ptr %pExpr.addr, align 8
  %op61 = getelementptr inbounds nuw %struct.Expr, ptr %57, i32 0, i32 0
  %58 = load i8, ptr %op61, align 8
  %conv62 = zext i8 %58 to i32
  %cmp63 = icmp ne i32 %conv62, 162
  br i1 %cmp63, label %land.lhs.true65, label %if.end76

land.lhs.true65:                                  ; preds = %if.then60
  %59 = load ptr, ptr %pExpr.addr, align 8
  %op66 = getelementptr inbounds nuw %struct.Expr, ptr %59, i32 0, i32 0
  %60 = load i8, ptr %op66, align 8
  %conv67 = zext i8 %60 to i32
  %cmp68 = icmp ne i32 %conv67, 109
  br i1 %cmp68, label %if.then70, label %if.end76

if.then70:                                        ; preds = %land.lhs.true65
  %61 = load ptr, ptr %pSubst.addr, align 8
  %pParse71 = getelementptr inbounds nuw %struct.SubstContext, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %pParse71, align 8
  %63 = load ptr, ptr %pExpr.addr, align 8
  %call72 = call ptr @sqlite3ExprCollSeq(ptr noundef %62, ptr noundef %63)
  store ptr %call72, ptr %pColl, align 8
  %64 = load ptr, ptr %pSubst.addr, align 8
  %pParse73 = getelementptr inbounds nuw %struct.SubstContext, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %pParse73, align 8
  %66 = load ptr, ptr %pExpr.addr, align 8
  %67 = load ptr, ptr %pColl, align 8
  %tobool74 = icmp ne ptr %67, null
  br i1 %tobool74, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then70
  %68 = load ptr, ptr %pColl, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then70
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %69, %cond.true ], [ @.str.290, %cond.false ]
  %call75 = call ptr @sqlite3ExprAddCollateString(ptr noundef %65, ptr noundef %66, ptr noundef %cond)
  store ptr %call75, ptr %pExpr.addr, align 8
  br label %if.end76

if.end76:                                         ; preds = %cond.end, %land.lhs.true65, %if.then60
  %70 = load ptr, ptr %pExpr.addr, align 8
  %flags77 = getelementptr inbounds nuw %struct.Expr, ptr %70, i32 0, i32 2
  %71 = load i32, ptr %flags77, align 4
  %and78 = and i32 %71, -257
  store i32 %and78, ptr %flags77, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end76, %if.end58
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then24
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then20
  br label %if.end117

if.else82:                                        ; preds = %land.lhs.true11, %if.end7
  %72 = load ptr, ptr %pExpr.addr, align 8
  %op83 = getelementptr inbounds nuw %struct.Expr, ptr %72, i32 0, i32 0
  %73 = load i8, ptr %op83, align 8
  %conv84 = zext i8 %73 to i32
  %cmp85 = icmp eq i32 %conv84, 174
  br i1 %cmp85, label %land.lhs.true87, label %if.end95

land.lhs.true87:                                  ; preds = %if.else82
  %74 = load ptr, ptr %pExpr.addr, align 8
  %iTable88 = getelementptr inbounds nuw %struct.Expr, ptr %74, i32 0, i32 8
  %75 = load i32, ptr %iTable88, align 4
  %76 = load ptr, ptr %pSubst.addr, align 8
  %iTable89 = getelementptr inbounds nuw %struct.SubstContext, ptr %76, i32 0, i32 1
  %77 = load i32, ptr %iTable89, align 8
  %cmp90 = icmp eq i32 %75, %77
  br i1 %cmp90, label %if.then92, label %if.end95

if.then92:                                        ; preds = %land.lhs.true87
  %78 = load ptr, ptr %pSubst.addr, align 8
  %iNewTable93 = getelementptr inbounds nuw %struct.SubstContext, ptr %78, i32 0, i32 2
  %79 = load i32, ptr %iNewTable93, align 4
  %80 = load ptr, ptr %pExpr.addr, align 8
  %iTable94 = getelementptr inbounds nuw %struct.Expr, ptr %80, i32 0, i32 8
  store i32 %79, ptr %iTable94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then92, %land.lhs.true87, %if.else82
  %81 = load ptr, ptr %pSubst.addr, align 8
  %82 = load ptr, ptr %pExpr.addr, align 8
  %pLeft96 = getelementptr inbounds nuw %struct.Expr, ptr %82, i32 0, i32 4
  %83 = load ptr, ptr %pLeft96, align 8
  %call97 = call ptr @substExpr(ptr noundef %81, ptr noundef %83)
  %84 = load ptr, ptr %pExpr.addr, align 8
  %pLeft98 = getelementptr inbounds nuw %struct.Expr, ptr %84, i32 0, i32 4
  store ptr %call97, ptr %pLeft98, align 8
  %85 = load ptr, ptr %pSubst.addr, align 8
  %86 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %86, i32 0, i32 5
  %87 = load ptr, ptr %pRight, align 8
  %call99 = call ptr @substExpr(ptr noundef %85, ptr noundef %87)
  %88 = load ptr, ptr %pExpr.addr, align 8
  %pRight100 = getelementptr inbounds nuw %struct.Expr, ptr %88, i32 0, i32 5
  store ptr %call99, ptr %pRight100, align 8
  %89 = load ptr, ptr %pExpr.addr, align 8
  %flags101 = getelementptr inbounds nuw %struct.Expr, ptr %89, i32 0, i32 2
  %90 = load i32, ptr %flags101, align 4
  %and102 = and i32 %90, 2048
  %cmp103 = icmp ne i32 %and102, 0
  br i1 %cmp103, label %if.then105, label %if.else106

if.then105:                                       ; preds = %if.end95
  %91 = load ptr, ptr %pSubst.addr, align 8
  %92 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %92, i32 0, i32 6
  %93 = load ptr, ptr %x, align 8
  call void @substSelect(ptr noundef %91, ptr noundef %93, i32 noundef 1)
  br label %if.end108

if.else106:                                       ; preds = %if.end95
  %94 = load ptr, ptr %pSubst.addr, align 8
  %95 = load ptr, ptr %pExpr.addr, align 8
  %x107 = getelementptr inbounds nuw %struct.Expr, ptr %95, i32 0, i32 6
  %96 = load ptr, ptr %x107, align 8
  call void @substExprList(ptr noundef %94, ptr noundef %96)
  br label %if.end108

if.end108:                                        ; preds = %if.else106, %if.then105
  %97 = load ptr, ptr %pExpr.addr, align 8
  %flags109 = getelementptr inbounds nuw %struct.Expr, ptr %97, i32 0, i32 2
  %98 = load i32, ptr %flags109, align 4
  %and110 = and i32 %98, 16777216
  %cmp111 = icmp ne i32 %and110, 0
  br i1 %cmp111, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end108
  %99 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %99, i32 0, i32 14
  %100 = load ptr, ptr %y, align 8
  store ptr %100, ptr %pWin, align 8
  %101 = load ptr, ptr %pSubst.addr, align 8
  %102 = load ptr, ptr %pWin, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %102, i32 0, i32 13
  %103 = load ptr, ptr %pFilter, align 8
  %call114 = call ptr @substExpr(ptr noundef %101, ptr noundef %103)
  %104 = load ptr, ptr %pWin, align 8
  %pFilter115 = getelementptr inbounds nuw %struct.Window, ptr %104, i32 0, i32 13
  store ptr %call114, ptr %pFilter115, align 8
  %105 = load ptr, ptr %pSubst.addr, align 8
  %106 = load ptr, ptr %pWin, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %106, i32 0, i32 2
  %107 = load ptr, ptr %pPartition, align 8
  call void @substExprList(ptr noundef %105, ptr noundef %107)
  %108 = load ptr, ptr %pSubst.addr, align 8
  %109 = load ptr, ptr %pWin, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %109, i32 0, i32 3
  %110 = load ptr, ptr %pOrderBy, align 8
  call void @substExprList(ptr noundef %108, ptr noundef %110)
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end108
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end81
  %111 = load ptr, ptr %pExpr.addr, align 8
  store ptr %111, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end117, %if.then
  %112 = load ptr, ptr %retval, align 8
  ret ptr %112
}

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
