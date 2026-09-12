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

; Function Attrs: nounwind uwtable
define hidden i32 @exprMightBeIndexed(ptr noundef %pFrom, i64 noundef %mPrereq, ptr noundef %aiCurCol, ptr noundef %pExpr, i32 noundef %op) #0 {
entry:
  %retval = alloca i32, align 4
  %pFrom.addr = alloca ptr, align 8
  %mPrereq.addr = alloca i64, align 8
  %aiCurCol.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  store ptr %pFrom, ptr %pFrom.addr, align 8
  store i64 %mPrereq, ptr %mPrereq.addr, align 8
  store ptr %aiCurCol, ptr %aiCurCol.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op1 = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op1, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 172
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %op.addr, align 4
  %cmp3 = icmp sge i32 %2, 54
  br i1 %cmp3, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %op.addr, align 4
  %cmp6 = icmp sle i32 %3, 57
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true5
  %4 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %x, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %pExpr8 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %6 = load ptr, ptr %pExpr8, align 8
  store ptr %6, ptr %pExpr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true5, %land.lhs.true, %entry
  %7 = load ptr, ptr %pExpr.addr, align 8
  %op9 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %op9, align 8
  %conv10 = zext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv10, 162
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  %9 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 8
  %10 = load i32, ptr %iTable, align 4
  %11 = load ptr, ptr %aiCurCol.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, ptr %11, i64 0
  store i32 %10, ptr %arrayidx14, align 4
  %12 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 9
  %13 = load i16, ptr %iColumn, align 8
  %conv15 = sext i16 %13 to i32
  %14 = load ptr, ptr %aiCurCol.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %14, i64 1
  store i32 %conv15, ptr %arrayidx16, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end
  %15 = load i64, ptr %mPrereq.addr, align 8
  %cmp18 = icmp eq i64 %15, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  %16 = load i64, ptr %mPrereq.addr, align 8
  %17 = load i64, ptr %mPrereq.addr, align 8
  %sub = sub i64 %17, 1
  %and = and i64 %16, %sub
  %cmp22 = icmp ne i64 %and, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  %18 = load ptr, ptr %pFrom.addr, align 8
  %19 = load i64, ptr %mPrereq.addr, align 8
  %20 = load ptr, ptr %aiCurCol.addr, align 8
  %21 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @exprMightBeIndexed2(ptr noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21)
  store i32 %call, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end25, %if.then24, %if.then20, %if.then13
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
declare hidden i32 @exprMightBeIndexed2(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
