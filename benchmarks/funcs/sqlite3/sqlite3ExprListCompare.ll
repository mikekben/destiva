; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCompare(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprListCompare(ptr noundef %pA, ptr noundef %pB, i32 noundef %iTab) #0 {
entry:
  %retval = alloca i32, align 4
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pExprA = alloca ptr, align 8
  %pExprB = alloca ptr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  %0 = load ptr, ptr %pA.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pB.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %pA.addr, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %pB.addr, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pA.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nExpr, align 8
  %6 = load ptr, ptr %pB.addr, align 8
  %nExpr6 = getelementptr inbounds nuw %struct.ExprList, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nExpr6, align 8
  %cmp7 = icmp ne i32 %5, %7
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %pA.addr, align 8
  %nExpr10 = getelementptr inbounds nuw %struct.ExprList, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %nExpr10, align 8
  %cmp11 = icmp slt i32 %8, %10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pA.addr, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %13 = load ptr, ptr %pExpr, align 8
  store ptr %13, ptr %pExprA, align 8
  %14 = load ptr, ptr %pB.addr, align 8
  %a12 = getelementptr inbounds nuw %struct.ExprList, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a12, i64 0, i64 %idxprom13
  %pExpr15 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx14, i32 0, i32 0
  %16 = load ptr, ptr %pExpr15, align 8
  store ptr %16, ptr %pExprB, align 8
  %17 = load ptr, ptr %pA.addr, align 8
  %a16 = getelementptr inbounds nuw %struct.ExprList, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a16, i64 0, i64 %idxprom17
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx18, i32 0, i32 3
  %19 = load i8, ptr %sortFlags, align 8
  %conv = zext i8 %19 to i32
  %20 = load ptr, ptr %pB.addr, align 8
  %a19 = getelementptr inbounds nuw %struct.ExprList, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a19, i64 0, i64 %idxprom20
  %sortFlags22 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx21, i32 0, i32 3
  %22 = load i8, ptr %sortFlags22, align 8
  %conv23 = zext i8 %22 to i32
  %cmp24 = icmp ne i32 %conv, %conv23
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %for.body
  %23 = load ptr, ptr %pExprA, align 8
  %24 = load ptr, ptr %pExprB, align 8
  %25 = load i32, ptr %iTab.addr, align 4
  %call = call i32 @sqlite3ExprCompare(ptr noundef null, ptr noundef %23, ptr noundef %24, i32 noundef %25)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end27
  store i32 1, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then28, %if.then26, %if.then8, %if.then4, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
