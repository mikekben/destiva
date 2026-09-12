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
define hidden void @unsetJoinExpr(ptr noundef %p, i32 noundef %iTable) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iTable.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTable, ptr %iTable.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %3 = load i32, ptr %iTable.addr, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load ptr, ptr %p.addr, align 8
  %iRightJoinTable = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 11
  %5 = load i16, ptr %iRightJoinTable, align 4
  %conv = sext i16 %5 to i32
  %6 = load i32, ptr %iTable.addr, align 4
  %cmp2 = icmp eq i32 %conv, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load ptr, ptr %p.addr, align 8
  %flags4 = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %flags4, align 4
  %and5 = and i32 %8, -2
  store i32 %and5, ptr %flags4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %while.body
  %9 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 0
  %10 = load i8, ptr %op, align 8
  %conv6 = zext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv6, 167
  br i1 %cmp7, label %land.lhs.true9, label %if.end16

land.lhs.true9:                                   ; preds = %if.end
  %11 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %x, align 8
  %tobool10 = icmp ne ptr %12, null
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %land.lhs.true9
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then11
  %13 = load i32, ptr %i, align 4
  %14 = load ptr, ptr %p.addr, align 8
  %x12 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %x12, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %nExpr, align 8
  %cmp13 = icmp slt i32 %13, %16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %p.addr, align 8
  %x15 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %x15, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %20 = load ptr, ptr %pExpr, align 8
  %21 = load i32, ptr %iTable.addr, align 4
  call void @unsetJoinExpr(ptr noundef %20, i32 noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end16

if.end16:                                         ; preds = %for.end, %land.lhs.true9, %if.end
  %23 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pLeft, align 8
  %25 = load i32, ptr %iTable.addr, align 4
  call void @unsetJoinExpr(ptr noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %p.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pRight, align 8
  store ptr %27, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
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
!8 = distinct !{!8, !7}
