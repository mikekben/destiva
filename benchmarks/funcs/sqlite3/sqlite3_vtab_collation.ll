; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_index_info = type { i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, double, i64, i32, i64 }
%struct.sqlite3_index_constraint = type { i32, i8, i8, i32 }
%struct.HiddenIndexInfo = type { ptr, ptr }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

@sqlite3StrBINARY = external hidden constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_vtab_collation(ptr noundef %pIdxInfo, i32 noundef %iCons) #0 {
entry:
  %pIdxInfo.addr = alloca ptr, align 8
  %iCons.addr = alloca i32, align 4
  %pHidden = alloca ptr, align 8
  %zRet = alloca ptr, align 8
  %pC = alloca ptr, align 8
  %iTerm = alloca i32, align 4
  %pX = alloca ptr, align 8
  store ptr %pIdxInfo, ptr %pIdxInfo.addr, align 8
  store i32 %iCons, ptr %iCons.addr, align 4
  %0 = load ptr, ptr %pIdxInfo.addr, align 8
  %arrayidx = getelementptr inbounds %struct.sqlite3_index_info, ptr %0, i64 1
  store ptr %arrayidx, ptr %pHidden, align 8
  store ptr null, ptr %zRet, align 8
  %1 = load i32, ptr %iCons.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %iCons.addr, align 4
  %3 = load ptr, ptr %pIdxInfo.addr, align 8
  %nConstraint = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %nConstraint, align 8
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %pC, align 8
  %5 = load ptr, ptr %pIdxInfo.addr, align 8
  %aConstraint = getelementptr inbounds nuw %struct.sqlite3_index_info, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %aConstraint, align 8
  %7 = load i32, ptr %iCons.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds %struct.sqlite3_index_constraint, ptr %6, i64 %idxprom
  %iTermOffset = getelementptr inbounds nuw %struct.sqlite3_index_constraint, ptr %arrayidx2, i32 0, i32 3
  %8 = load i32, ptr %iTermOffset, align 4
  store i32 %8, ptr %iTerm, align 4
  %9 = load ptr, ptr %pHidden, align 8
  %pWC = getelementptr inbounds nuw %struct.HiddenIndexInfo, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pWC, align 8
  %a = getelementptr inbounds nuw %struct.WhereClause, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %a, align 8
  %12 = load i32, ptr %iTerm, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds %struct.WhereTerm, ptr %11, i64 %idxprom3
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %arrayidx4, i32 0, i32 0
  %13 = load ptr, ptr %pExpr, align 8
  store ptr %13, ptr %pX, align 8
  %14 = load ptr, ptr %pX, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pLeft, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %16 = load ptr, ptr %pHidden, align 8
  %pParse = getelementptr inbounds nuw %struct.HiddenIndexInfo, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pParse, align 8
  %18 = load ptr, ptr %pX, align 8
  %pLeft6 = getelementptr inbounds nuw %struct.Expr, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %pLeft6, align 8
  %20 = load ptr, ptr %pX, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %pRight, align 8
  %call = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store ptr %call, ptr %pC, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %22 = load ptr, ptr %pC, align 8
  %tobool7 = icmp ne ptr %22, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %23 = load ptr, ptr %pC, align 8
  %zName = getelementptr inbounds nuw %struct.CollSeq, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %24, %cond.true ], [ @sqlite3StrBINARY, %cond.false ]
  store ptr %cond, ptr %zRet, align 8
  br label %if.end8

if.end8:                                          ; preds = %cond.end, %land.lhs.true, %entry
  %25 = load ptr, ptr %zRet, align 8
  ret ptr %25
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
