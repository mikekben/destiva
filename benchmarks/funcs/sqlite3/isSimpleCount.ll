; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.AggInfo = type { i8, i8, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.AggInfo_func = type { ptr, ptr, i32, i32 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @isSimpleCount(ptr noundef %p, ptr noundef %pAggInfo) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pAggInfo.addr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pExpr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pAggInfo, ptr %pAggInfo.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 9
  %1 = load ptr, ptr %pWhere, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nExpr, align 8
  %cmp = icmp ne i32 %4, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %5 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nSrc, align 8
  %cmp2 = icmp ne i32 %7, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %8 = load ptr, ptr %p.addr, align 8
  %pSrc4 = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %pSrc4, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %9, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 5
  %10 = load ptr, ptr %pSelect, align 8
  %tobool5 = icmp ne ptr %10, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  %11 = load ptr, ptr %p.addr, align 8
  %pSrc6 = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %pSrc6, align 8
  %a7 = getelementptr inbounds nuw %struct.SrcList, ptr %12, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a7, i64 0, i64 0
  %pTab9 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx8, i32 0, i32 4
  %13 = load ptr, ptr %pTab9, align 8
  store ptr %13, ptr %pTab, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %pEList10 = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pEList10, align 8
  %a11 = getelementptr inbounds nuw %struct.ExprList, ptr %15, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a11, i64 0, i64 0
  %pExpr13 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx12, i32 0, i32 0
  %16 = load ptr, ptr %pExpr13, align 8
  store ptr %16, ptr %pExpr, align 8
  %17 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 16
  %18 = load i32, ptr %nModuleArg, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %if.end
  %19 = load ptr, ptr %pExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 0
  %20 = load i8, ptr %op, align 8
  %conv = zext i8 %20 to i32
  %cmp17 = icmp ne i32 %conv, 163
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  store ptr null, ptr %retval, align 8
  br label %return

if.end20:                                         ; preds = %if.end16
  %21 = load ptr, ptr %pAggInfo.addr, align 8
  %nFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %21, i32 0, i32 12
  %22 = load i32, ptr %nFunc, align 8
  %cmp21 = icmp eq i32 %22, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end20
  %23 = load ptr, ptr %pAggInfo.addr, align 8
  %aFunc = getelementptr inbounds nuw %struct.AggInfo, ptr %23, i32 0, i32 11
  %24 = load ptr, ptr %aFunc, align 8
  %arrayidx25 = getelementptr inbounds %struct.AggInfo_func, ptr %24, i64 0
  %pFunc = getelementptr inbounds nuw %struct.AggInfo_func, ptr %arrayidx25, i32 0, i32 1
  %25 = load ptr, ptr %pFunc, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %funcFlags, align 4
  %and = and i32 %26, 256
  %cmp26 = icmp eq i32 %and, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  store ptr null, ptr %retval, align 8
  br label %return

if.end29:                                         ; preds = %if.end24
  %27 = load ptr, ptr %pExpr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 2
  %28 = load i32, ptr %flags, align 4
  %and30 = and i32 %28, 16777218
  %cmp31 = icmp ne i32 %and30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  store ptr null, ptr %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.end29
  %29 = load ptr, ptr %pTab, align 8
  store ptr %29, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then28, %if.then23, %if.then19, %if.then15, %if.then
  %30 = load ptr, ptr %retval, align 8
  ret ptr %30
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
