; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.WindowRewrite = type { ptr, ptr, ptr, ptr, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @selectWindowRewriteExprCb(ptr noundef %pWalker, ptr noundef %pExpr) #1 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pParse = alloca ptr, align 8
  %nSrc = alloca i32, align 4
  %i = alloca i32, align 4
  %pWin = alloca ptr, align 8
  %pDup = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %u, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %pWalker.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Walker, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParse1, align 8
  store ptr %3, ptr %pParse, align 8
  %4 = load ptr, ptr %p, align 8
  %pSubSelect = getelementptr inbounds nuw %struct.WindowRewrite, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pSubSelect, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op, align 8
  %conv = zext i8 %7 to i32
  %cmp = icmp ne i32 %conv, 162
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %p, align 8
  %pSrc = getelementptr inbounds nuw %struct.WindowRewrite, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pSrc, align 8
  %nSrc4 = getelementptr inbounds nuw %struct.SrcList, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %nSrc4, align 8
  store i32 %10, ptr %nSrc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nSrc, align 4
  %cmp5 = icmp slt i32 %11, %12
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %iTable, align 4
  %15 = load ptr, ptr %p, align 8
  %pSrc7 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pSrc7, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  %18 = load i32, ptr %iCursor, align 8
  %cmp8 = icmp eq i32 %14, %18
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then10, %for.cond
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %nSrc, align 4
  %cmp11 = icmp eq i32 %20, %21
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %for.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %entry
  %22 = load ptr, ptr %pExpr.addr, align 8
  %op17 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 0
  %23 = load i8, ptr %op17, align 8
  %conv18 = zext i8 %23 to i32
  switch i32 %conv18, label %sw.default [
    i32 167, label %sw.bb
    i32 163, label %sw.bb34
    i32 162, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end16
  %24 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 16777216
  %cmp19 = icmp ne i32 %and, 0
  br i1 %cmp19, label %if.else22, label %if.then21

if.then21:                                        ; preds = %sw.bb
  br label %sw.epilog

if.else22:                                        ; preds = %sw.bb
  %26 = load ptr, ptr %p, align 8
  %pWin23 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pWin23, align 8
  store ptr %27, ptr %pWin, align 8
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc31, %if.else22
  %28 = load ptr, ptr %pWin, align 8
  %tobool25 = icmp ne ptr %28, null
  br i1 %tobool25, label %for.body26, label %for.end32

for.body26:                                       ; preds = %for.cond24
  %29 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 14
  %30 = load ptr, ptr %y, align 8
  %31 = load ptr, ptr %pWin, align 8
  %cmp27 = icmp eq ptr %30, %31
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body26
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %for.body26
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %32 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %pNextWin, align 8
  store ptr %33, ptr %pWin, align 8
  br label %for.cond24, !llvm.loop !8

for.end32:                                        ; preds = %for.cond24
  br label %if.end33

if.end33:                                         ; preds = %for.end32
  br label %sw.bb34

sw.bb34:                                          ; preds = %if.end33, %if.end16, %if.end16
  %34 = load ptr, ptr %pParse, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %db, align 8
  %36 = load ptr, ptr %pExpr.addr, align 8
  %call = call ptr @sqlite3ExprDup(ptr noundef %35, ptr noundef %36, i32 noundef 0)
  store ptr %call, ptr %pDup, align 8
  %37 = load ptr, ptr %pParse, align 8
  %38 = load ptr, ptr %p, align 8
  %pSub = getelementptr inbounds nuw %struct.WindowRewrite, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %pSub, align 8
  %40 = load ptr, ptr %pDup, align 8
  %call35 = call ptr @sqlite3ExprListAppend(ptr noundef %37, ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %p, align 8
  %pSub36 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %41, i32 0, i32 2
  store ptr %call35, ptr %pSub36, align 8
  %42 = load ptr, ptr %p, align 8
  %pSub37 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %pSub37, align 8
  %tobool38 = icmp ne ptr %43, null
  br i1 %tobool38, label %if.then39, label %if.end50

if.then39:                                        ; preds = %sw.bb34
  %44 = load ptr, ptr %pExpr.addr, align 8
  %flags40 = getelementptr inbounds nuw %struct.Expr, ptr %44, i32 0, i32 2
  %45 = load i32, ptr %flags40, align 4
  %or = or i32 %45, 134217728
  store i32 %or, ptr %flags40, align 4
  %46 = load ptr, ptr %pParse, align 8
  %db41 = getelementptr inbounds nuw %struct.Parse, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %db41, align 8
  %48 = load ptr, ptr %pExpr.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %pExpr.addr, align 8
  %flags42 = getelementptr inbounds nuw %struct.Expr, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %flags42, align 4
  %and43 = and i32 %50, -134217729
  store i32 %and43, ptr %flags42, align 4
  %51 = load ptr, ptr %pExpr.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %51, i8 0, i64 72, i1 false)
  %52 = load ptr, ptr %pExpr.addr, align 8
  %op44 = getelementptr inbounds nuw %struct.Expr, ptr %52, i32 0, i32 0
  store i8 -94, ptr %op44, align 8
  %53 = load ptr, ptr %p, align 8
  %pSub45 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %pSub45, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %nExpr, align 8
  %sub = sub nsw i32 %55, 1
  %conv46 = trunc i32 %sub to i16
  %56 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %56, i32 0, i32 9
  store i16 %conv46, ptr %iColumn, align 8
  %57 = load ptr, ptr %p, align 8
  %pWin47 = getelementptr inbounds nuw %struct.WindowRewrite, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %pWin47, align 8
  %iEphCsr = getelementptr inbounds nuw %struct.Window, ptr %58, i32 0, i32 15
  %59 = load i32, ptr %iEphCsr, align 8
  %60 = load ptr, ptr %pExpr.addr, align 8
  %iTable48 = getelementptr inbounds nuw %struct.Expr, ptr %60, i32 0, i32 8
  store i32 %59, ptr %iTable48, align 4
  %61 = load ptr, ptr %p, align 8
  %pTab = getelementptr inbounds nuw %struct.WindowRewrite, ptr %61, i32 0, i32 3
  %62 = load ptr, ptr %pTab, align 8
  %63 = load ptr, ptr %pExpr.addr, align 8
  %y49 = getelementptr inbounds nuw %struct.Expr, ptr %63, i32 0, i32 14
  store ptr %62, ptr %y49, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then39, %sw.bb34
  br label %sw.epilog

sw.default:                                       ; preds = %if.end16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end50, %if.then21
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then29, %if.then13, %if.then3
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
