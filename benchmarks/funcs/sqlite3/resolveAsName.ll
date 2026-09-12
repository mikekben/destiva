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
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @resolveAsName(ptr noundef %pParse, ptr noundef %pEList, ptr noundef %pE) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pEList.addr = alloca ptr, align 8
  %pE.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %zCol = alloca ptr, align 8
  %zAs = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pEList, ptr %pEList.addr, align 8
  store ptr %pE, ptr %pE.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pE.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %op, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 59
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pE.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %u, align 8
  store ptr %4, ptr %zCol, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %pEList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nExpr, align 8
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pEList.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 1
  %10 = load ptr, ptr %zName, align 8
  store ptr %10, ptr %zAs, align 8
  %11 = load ptr, ptr %zAs, align 8
  %cmp4 = icmp ne ptr %11, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load ptr, ptr %zAs, align 8
  %13 = load ptr, ptr %zCol, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %12, ptr noundef %13)
  %cmp6 = icmp eq i32 %call, 0
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %land.lhs.true
  %14 = load i32, ptr %i, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
