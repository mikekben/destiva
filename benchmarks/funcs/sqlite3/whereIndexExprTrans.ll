; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.IdxExprTrans = type { ptr, i32, i32, i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @whereIndexExprTrans(ptr noundef %pIdx, i32 noundef %iTabCur, i32 noundef %iIdxCur, ptr noundef %pWInfo) #1 {
entry:
  %pIdx.addr = alloca ptr, align 8
  %iTabCur.addr = alloca i32, align 4
  %iIdxCur.addr = alloca i32, align 4
  %pWInfo.addr = alloca ptr, align 8
  %iIdxCol = alloca i32, align 4
  %aColExpr = alloca ptr, align 8
  %w = alloca %struct.Walker, align 8
  %x = alloca %struct.IdxExprTrans, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %iTabCur, ptr %iTabCur.addr, align 4
  store i32 %iIdxCur, ptr %iIdxCur.addr, align 4
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  %0 = load ptr, ptr %pIdx.addr, align 8
  %aColExpr1 = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %aColExpr1, align 8
  store ptr %1, ptr %aColExpr, align 8
  %2 = load ptr, ptr %aColExpr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %w, i8 0, i64 48, i1 false)
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 1
  store ptr @whereIndexExprTransNode, ptr %xExprCallback, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 6
  store ptr %x, ptr %u, align 8
  %3 = load i32, ptr %iTabCur.addr, align 4
  %iTabCur2 = getelementptr inbounds nuw %struct.IdxExprTrans, ptr %x, i32 0, i32 1
  store i32 %3, ptr %iTabCur2, align 8
  %4 = load i32, ptr %iIdxCur.addr, align 4
  %iIdxCur3 = getelementptr inbounds nuw %struct.IdxExprTrans, ptr %x, i32 0, i32 2
  store i32 %4, ptr %iIdxCur3, align 4
  store i32 0, ptr %iIdxCol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %iIdxCol, align 4
  %6 = load ptr, ptr %aColExpr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nExpr, align 8
  %cmp4 = icmp slt i32 %5, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %aiColumn, align 8
  %10 = load i32, ptr %iIdxCol, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i16, ptr %9, i64 %idxprom
  %11 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %11 to i32
  %cmp5 = icmp ne i32 %conv, -2
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %12 = load i32, ptr %iIdxCol, align 4
  %iIdxCol9 = getelementptr inbounds nuw %struct.IdxExprTrans, ptr %x, i32 0, i32 3
  store i32 %12, ptr %iIdxCol9, align 8
  %13 = load ptr, ptr %aColExpr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %iIdxCol, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom10
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx11, i32 0, i32 0
  %15 = load ptr, ptr %pExpr, align 8
  %pIdxExpr = getelementptr inbounds nuw %struct.IdxExprTrans, ptr %x, i32 0, i32 0
  store ptr %15, ptr %pIdxExpr, align 8
  %16 = load ptr, ptr %pWInfo.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.WhereInfo, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pWhere, align 8
  %call = call i32 @sqlite3WalkExpr(ptr noundef %w, ptr noundef %17)
  %18 = load ptr, ptr %pWInfo.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.WhereInfo, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pOrderBy, align 8
  %call12 = call i32 @sqlite3WalkExprList(ptr noundef %w, ptr noundef %19)
  %20 = load ptr, ptr %pWInfo.addr, align 8
  %pResultSet = getelementptr inbounds nuw %struct.WhereInfo, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %pResultSet, align 8
  %call13 = call i32 @sqlite3WalkExprList(ptr noundef %w, ptr noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.then7
  %22 = load i32, ptr %iIdxCol, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %iIdxCol, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @whereIndexExprTransNode(ptr noundef, ptr noundef) #1

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
