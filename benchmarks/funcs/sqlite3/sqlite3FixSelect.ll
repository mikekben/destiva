; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.With = type { i32, ptr, [1 x %struct.Cte] }
%struct.Cte = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixSrcList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FixSelect(ptr noundef %pFix, ptr noundef %pSelect) #0 {
entry:
  %retval = alloca i32, align 4
  %pFix.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pFix, ptr %pFix.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %entry
  %0 = load ptr, ptr %pSelect.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %pFix.addr, align 8
  %2 = load ptr, ptr %pSelect.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pEList, align 8
  %call = call i32 @sqlite3FixExprList(ptr noundef %1, ptr noundef %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %pFix.addr, align 8
  %5 = load ptr, ptr %pSelect.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 8
  %6 = load ptr, ptr %pSrc, align 8
  %call2 = call i32 @sqlite3FixSrcList(ptr noundef %4, ptr noundef %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %pFix.addr, align 8
  %8 = load ptr, ptr %pSelect.addr, align 8
  %pWhere = getelementptr inbounds nuw %struct.Select, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %pWhere, align 8
  %call6 = call i32 @sqlite3FixExpr(ptr noundef %7, ptr noundef %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  store i32 1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %10 = load ptr, ptr %pFix.addr, align 8
  %11 = load ptr, ptr %pSelect.addr, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 10
  %12 = load ptr, ptr %pGroupBy, align 8
  %call10 = call i32 @sqlite3FixExprList(ptr noundef %10, ptr noundef %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %13 = load ptr, ptr %pFix.addr, align 8
  %14 = load ptr, ptr %pSelect.addr, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 11
  %15 = load ptr, ptr %pHaving, align 8
  %call14 = call i32 @sqlite3FixExpr(ptr noundef %13, ptr noundef %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  store i32 1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end13
  %16 = load ptr, ptr %pFix.addr, align 8
  %17 = load ptr, ptr %pSelect.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Select, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pOrderBy, align 8
  %call18 = call i32 @sqlite3FixExprList(ptr noundef %16, ptr noundef %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end17
  %19 = load ptr, ptr %pFix.addr, align 8
  %20 = load ptr, ptr %pSelect.addr, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %20, i32 0, i32 15
  %21 = load ptr, ptr %pLimit, align 8
  %call22 = call i32 @sqlite3FixExpr(ptr noundef %19, ptr noundef %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i32 1, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end21
  %22 = load ptr, ptr %pSelect.addr, align 8
  %pWith = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 16
  %23 = load ptr, ptr %pWith, align 8
  %tobool26 = icmp ne ptr %23, null
  br i1 %tobool26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end25
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then27
  %24 = load i32, ptr %i, align 4
  %25 = load ptr, ptr %pSelect.addr, align 8
  %pWith28 = getelementptr inbounds nuw %struct.Select, ptr %25, i32 0, i32 16
  %26 = load ptr, ptr %pWith28, align 8
  %nCte = getelementptr inbounds nuw %struct.With, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %nCte, align 8
  %cmp = icmp slt i32 %24, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %pFix.addr, align 8
  %29 = load ptr, ptr %pSelect.addr, align 8
  %pWith29 = getelementptr inbounds nuw %struct.Select, ptr %29, i32 0, i32 16
  %30 = load ptr, ptr %pWith29, align 8
  %a = getelementptr inbounds nuw %struct.With, ptr %30, i32 0, i32 2
  %31 = load i32, ptr %i, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.Cte], ptr %a, i64 0, i64 %idxprom
  %pSelect30 = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx, i32 0, i32 2
  %32 = load ptr, ptr %pSelect30, align 8
  %call31 = call i32 @sqlite3FixSelect(ptr noundef %28, ptr noundef %32)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end35

if.end35:                                         ; preds = %for.end, %if.end25
  %34 = load ptr, ptr %pSelect.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %34, i32 0, i32 13
  %35 = load ptr, ptr %pPrior, align 8
  store ptr %35, ptr %pSelect.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then33, %if.then24, %if.then20, %if.then16, %if.then12, %if.then8, %if.then4, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixExprList(ptr noundef, ptr noundef) #0

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
