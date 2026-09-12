; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
define hidden ptr @isCandidateForInOpt(ptr noundef %pX) #0 {
entry:
  %retval = alloca ptr, align 8
  %pX.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pEList = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %i = alloca i32, align 4
  %pRes = alloca ptr, align 8
  store ptr %pX, ptr %pX.addr, align 8
  %0 = load ptr, ptr %pX.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2048
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pX.addr, align 8
  %flags1 = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags1, align 4
  %and2 = and i32 %3, 32
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %pX.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %x, align 8
  store ptr %5, ptr %p, align 8
  %6 = load ptr, ptr %p, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %6, i32 0, i32 13
  %7 = load ptr, ptr %pPrior, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end5
  %8 = load ptr, ptr %p, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %selFlags, align 4
  %and8 = and i32 %9, 9
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  store ptr null, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %p, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %10, i32 0, i32 15
  %11 = load ptr, ptr %pLimit, align 8
  %tobool12 = icmp ne ptr %11, null
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  store ptr null, ptr %retval, align 8
  br label %return

if.end14:                                         ; preds = %if.end11
  %12 = load ptr, ptr %p, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %pWhere, align 8
  %tobool15 = icmp ne ptr %13, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  store ptr null, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end14
  %14 = load ptr, ptr %p, align 8
  %pSrc18 = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %pSrc18, align 8
  store ptr %15, ptr %pSrc, align 8
  %16 = load ptr, ptr %pSrc, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %nSrc, align 8
  %cmp19 = icmp ne i32 %17, 1
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  store ptr null, ptr %retval, align 8
  br label %return

if.end21:                                         ; preds = %if.end17
  %18 = load ptr, ptr %pSrc, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %18, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %pSelect = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 5
  %19 = load ptr, ptr %pSelect, align 8
  %tobool22 = icmp ne ptr %19, null
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end21
  store ptr null, ptr %retval, align 8
  br label %return

if.end24:                                         ; preds = %if.end21
  %20 = load ptr, ptr %pSrc, align 8
  %a25 = getelementptr inbounds nuw %struct.SrcList, ptr %20, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a25, i64 0, i64 0
  %pTab27 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx26, i32 0, i32 4
  %21 = load ptr, ptr %pTab27, align 8
  store ptr %21, ptr %pTab, align 8
  %22 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 16
  %23 = load i32, ptr %nModuleArg, align 4
  %tobool28 = icmp ne i32 %23, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end24
  store ptr null, ptr %retval, align 8
  br label %return

if.end30:                                         ; preds = %if.end24
  %24 = load ptr, ptr %p, align 8
  %pEList31 = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pEList31, align 8
  store ptr %25, ptr %pEList, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %26 = load i32, ptr %i, align 4
  %27 = load ptr, ptr %pEList, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %27, i32 0, i32 0
  %28 = load i32, ptr %nExpr, align 8
  %cmp32 = icmp slt i32 %26, %28
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %pEList, align 8
  %a33 = getelementptr inbounds nuw %struct.ExprList, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %i, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a33, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx34, i32 0, i32 0
  %31 = load ptr, ptr %pExpr, align 8
  store ptr %31, ptr %pRes, align 8
  %32 = load ptr, ptr %pRes, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %32, i32 0, i32 0
  %33 = load i8, ptr %op, align 8
  %conv = zext i8 %33 to i32
  %cmp35 = icmp ne i32 %conv, 162
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body
  store ptr null, ptr %retval, align 8
  br label %return

if.end38:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %p, align 8
  store ptr %35, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then37, %if.then29, %if.then23, %if.then20, %if.then16, %if.then13, %if.then10, %if.then6, %if.then4, %if.then
  %36 = load ptr, ptr %retval, align 8
  ret ptr %36
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
