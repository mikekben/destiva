; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @resolveAlias(ptr noundef %pParse, ptr noundef %pEList, i32 noundef %iCol, ptr noundef %pExpr, ptr noundef %zType, i32 noundef %nSubquery) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  %pExpr.addr = alloca ptr, align 8
  %zType.addr = alloca ptr, align 8
  %nSubquery.addr = alloca i32, align 4
  %pOrig = alloca ptr, align 8
  %pDup = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %zType, ptr %zType.addr, align 8
  store i32 %nSubquery, ptr %nSubquery.addr, align 4
  %0 = load ptr, ptr %pEList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %iCol.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr1 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %2 = load ptr, ptr %pExpr1, align 8
  store ptr %2, ptr %pOrig, align 8
  %3 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db2, align 8
  store ptr %4, ptr %db, align 8
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pOrig, align 8
  %call = call ptr @sqlite3ExprDup(ptr noundef %5, ptr noundef %6, i32 noundef 0)
  store ptr %call, ptr %pDup, align 8
  %7 = load ptr, ptr %pDup, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.then, label %if.end37

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %zType.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx3, align 1
  %conv = sext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv, 71
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %10 = load ptr, ptr %pDup, align 8
  %11 = load i32, ptr %nSubquery.addr, align 4
  call void @incrAggFunctionDepth(ptr noundef %10, i32 noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %12 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 0
  %13 = load i8, ptr %op, align 8
  %conv7 = zext i8 %13 to i32
  %cmp8 = icmp eq i32 %conv7, 109
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %pDup, align 8
  %16 = load ptr, ptr %pExpr.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %u, align 8
  %call11 = call ptr @sqlite3ExprAddCollateString(ptr noundef %14, ptr noundef %15, ptr noundef %17)
  store ptr %call11, ptr %pDup, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end
  %18 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 2
  %19 = load i32, ptr %flags, align 4
  %or = or i32 %19, 134217728
  store i32 %or, ptr %flags, align 4
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %pExpr.addr, align 8
  %23 = load ptr, ptr %pDup, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %23, i64 72, i1 false)
  %24 = load ptr, ptr %pExpr.addr, align 8
  %flags13 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %flags13, align 4
  %and = and i32 %25, 1024
  %cmp14 = icmp ne i32 %and, 0
  br i1 %cmp14, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %26 = load ptr, ptr %pExpr.addr, align 8
  %u16 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %u16, align 8
  %cmp17 = icmp ne ptr %27, null
  br i1 %cmp17, label %if.then19, label %if.end25

if.then19:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %db, align 8
  %29 = load ptr, ptr %pExpr.addr, align 8
  %u20 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %u20, align 8
  %call21 = call ptr @sqlite3DbStrDup(ptr noundef %28, ptr noundef %30)
  %31 = load ptr, ptr %pExpr.addr, align 8
  %u22 = getelementptr inbounds nuw %struct.Expr, ptr %31, i32 0, i32 3
  store ptr %call21, ptr %u22, align 8
  %32 = load ptr, ptr %pExpr.addr, align 8
  %flags23 = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %flags23, align 4
  %or24 = or i32 %33, 65536
  store i32 %or24, ptr %flags23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %land.lhs.true, %if.end12
  %34 = load ptr, ptr %pExpr.addr, align 8
  %flags26 = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %flags26, align 4
  %and27 = and i32 %35, 16777216
  %cmp28 = icmp ne i32 %and27, 0
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.end25
  %36 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %36, i32 0, i32 14
  %37 = load ptr, ptr %y, align 8
  %cmp31 = icmp ne ptr %37, null
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then30
  %38 = load ptr, ptr %pExpr.addr, align 8
  %39 = load ptr, ptr %pExpr.addr, align 8
  %y34 = getelementptr inbounds nuw %struct.Expr, ptr %39, i32 0, i32 14
  %40 = load ptr, ptr %y34, align 8
  %pOwner = getelementptr inbounds nuw %struct.Window, ptr %40, i32 0, i32 21
  store ptr %38, ptr %pOwner, align 8
  br label %if.end35

if.else:                                          ; preds = %if.then30
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then33
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end25
  %41 = load ptr, ptr %db, align 8
  %42 = load ptr, ptr %pDup, align 8
  call void @sqlite3DbFree(ptr noundef %41, ptr noundef %42)
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %entry
  %43 = load ptr, ptr %pExpr.addr, align 8
  %flags38 = getelementptr inbounds nuw %struct.Expr, ptr %43, i32 0, i32 2
  %44 = load i32, ptr %flags38, align 4
  %or39 = or i32 %44, 4194304
  store i32 %or39, ptr %flags38, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @incrAggFunctionDepth(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAddCollateString(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
