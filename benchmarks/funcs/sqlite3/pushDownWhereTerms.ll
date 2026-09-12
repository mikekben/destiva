; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SubstContext = type { ptr, i32, i32, i32, ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unsetJoinExpr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pushDownWhereTerms(ptr noundef %pParse, ptr noundef %pSubq, ptr noundef %pWhere, i32 noundef %iCursor, i32 noundef %isLeftJoin) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pSubq.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %iCursor.addr = alloca i32, align 4
  %isLeftJoin.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %nChng = alloca i32, align 4
  %x = alloca %struct.SubstContext, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSubq, ptr %pSubq.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  store i32 %iCursor, ptr %iCursor.addr, align 4
  store i32 %isLeftJoin, ptr %isLeftJoin.addr, align 4
  store i32 0, ptr %nChng, align 4
  %0 = load ptr, ptr %pWhere.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pSubq.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %selFlags, align 4
  %and = and i32 %2, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %3 = load ptr, ptr %pSubq.addr, align 8
  %pWin = getelementptr inbounds nuw %struct.Select, ptr %3, i32 0, i32 17
  %4 = load ptr, ptr %pWin, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end2
  %5 = load ptr, ptr %pSubq.addr, align 8
  %pLimit = getelementptr inbounds nuw %struct.Select, ptr %5, i32 0, i32 15
  %6 = load ptr, ptr %pLimit, align 8
  %cmp6 = icmp ne ptr %6, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end8
  %7 = load ptr, ptr %pWhere.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %op, align 8
  %conv = zext i8 %8 to i32
  %cmp9 = icmp eq i32 %conv, 44
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load ptr, ptr %pSubq.addr, align 8
  %11 = load ptr, ptr %pWhere.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %pRight, align 8
  %13 = load i32, ptr %iCursor.addr, align 4
  %14 = load i32, ptr %isLeftJoin.addr, align 4
  %call = call i32 @pushDownWhereTerms(ptr noundef %9, ptr noundef %10, ptr noundef %12, i32 noundef %13, i32 noundef %14)
  %15 = load i32, ptr %nChng, align 4
  %add = add nsw i32 %15, %call
  store i32 %add, ptr %nChng, align 4
  %16 = load ptr, ptr %pWhere.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pLeft, align 8
  store ptr %17, ptr %pWhere.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %18 = load i32, ptr %isLeftJoin.addr, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %while.end
  %19 = load ptr, ptr %pWhere.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %flags, align 4
  %and12 = and i32 %20, 1
  %cmp13 = icmp ne i32 %and12, 0
  %conv14 = zext i1 %cmp13 to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load ptr, ptr %pWhere.addr, align 8
  %iRightJoinTable = getelementptr inbounds nuw %struct.Expr, ptr %21, i32 0, i32 11
  %22 = load i16, ptr %iRightJoinTable, align 4
  %conv17 = sext i16 %22 to i32
  %23 = load i32, ptr %iCursor.addr, align 4
  %cmp18 = icmp ne i32 %conv17, %23
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false, %while.end
  %24 = load ptr, ptr %pWhere.addr, align 8
  %flags22 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %flags22, align 4
  %and23 = and i32 %25, 1
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %land.lhs.true26, label %if.end32

land.lhs.true26:                                  ; preds = %if.end21
  %26 = load ptr, ptr %pWhere.addr, align 8
  %iRightJoinTable27 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 11
  %27 = load i16, ptr %iRightJoinTable27, align 4
  %conv28 = sext i16 %27 to i32
  %28 = load i32, ptr %iCursor.addr, align 4
  %cmp29 = icmp ne i32 %conv28, %28
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %land.lhs.true26
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true26, %if.end21
  %29 = load ptr, ptr %pWhere.addr, align 8
  %30 = load i32, ptr %iCursor.addr, align 4
  %call33 = call i32 @sqlite3ExprIsTableConstant(ptr noundef %29, i32 noundef %30)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end55

if.then35:                                        ; preds = %if.end32
  %31 = load i32, ptr %nChng, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %nChng, align 4
  br label %while.cond36

while.cond36:                                     ; preds = %if.end53, %if.then35
  %32 = load ptr, ptr %pSubq.addr, align 8
  %tobool37 = icmp ne ptr %32, null
  br i1 %tobool37, label %while.body38, label %while.end54

while.body38:                                     ; preds = %while.cond36
  %33 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %db, align 8
  %35 = load ptr, ptr %pWhere.addr, align 8
  %call39 = call ptr @sqlite3ExprDup(ptr noundef %34, ptr noundef %35, i32 noundef 0)
  store ptr %call39, ptr %pNew, align 8
  %36 = load ptr, ptr %pNew, align 8
  call void @unsetJoinExpr(ptr noundef %36, i32 noundef -1)
  %37 = load ptr, ptr %pParse.addr, align 8
  %pParse40 = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 0
  store ptr %37, ptr %pParse40, align 8
  %38 = load i32, ptr %iCursor.addr, align 4
  %iTable = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 1
  store i32 %38, ptr %iTable, align 8
  %39 = load i32, ptr %iCursor.addr, align 4
  %iNewTable = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 2
  store i32 %39, ptr %iNewTable, align 4
  %isLeftJoin41 = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 3
  store i32 0, ptr %isLeftJoin41, align 8
  %40 = load ptr, ptr %pSubq.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pEList, align 8
  %pEList42 = getelementptr inbounds nuw %struct.SubstContext, ptr %x, i32 0, i32 4
  store ptr %41, ptr %pEList42, align 8
  %42 = load ptr, ptr %pNew, align 8
  %call43 = call ptr @substExpr(ptr noundef %x, ptr noundef %42)
  store ptr %call43, ptr %pNew, align 8
  %43 = load ptr, ptr %pSubq.addr, align 8
  %selFlags44 = getelementptr inbounds nuw %struct.Select, ptr %43, i32 0, i32 3
  %44 = load i32, ptr %selFlags44, align 4
  %and45 = and i32 %44, 8
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.else

if.then47:                                        ; preds = %while.body38
  %45 = load ptr, ptr %pParse.addr, align 8
  %46 = load ptr, ptr %pSubq.addr, align 8
  %pHaving = getelementptr inbounds nuw %struct.Select, ptr %46, i32 0, i32 11
  %47 = load ptr, ptr %pHaving, align 8
  %48 = load ptr, ptr %pNew, align 8
  %call48 = call ptr @sqlite3ExprAnd(ptr noundef %45, ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %pSubq.addr, align 8
  %pHaving49 = getelementptr inbounds nuw %struct.Select, ptr %49, i32 0, i32 11
  store ptr %call48, ptr %pHaving49, align 8
  br label %if.end53

if.else:                                          ; preds = %while.body38
  %50 = load ptr, ptr %pParse.addr, align 8
  %51 = load ptr, ptr %pSubq.addr, align 8
  %pWhere50 = getelementptr inbounds nuw %struct.Select, ptr %51, i32 0, i32 9
  %52 = load ptr, ptr %pWhere50, align 8
  %53 = load ptr, ptr %pNew, align 8
  %call51 = call ptr @sqlite3ExprAnd(ptr noundef %50, ptr noundef %52, ptr noundef %53)
  %54 = load ptr, ptr %pSubq.addr, align 8
  %pWhere52 = getelementptr inbounds nuw %struct.Select, ptr %54, i32 0, i32 9
  store ptr %call51, ptr %pWhere52, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then47
  %55 = load ptr, ptr %pSubq.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %55, i32 0, i32 13
  %56 = load ptr, ptr %pPrior, align 8
  store ptr %56, ptr %pSubq.addr, align 8
  br label %while.cond36, !llvm.loop !8

while.end54:                                      ; preds = %while.cond36
  br label %if.end55

if.end55:                                         ; preds = %while.end54, %if.end32
  %57 = load i32, ptr %nChng, align 4
  store i32 %57, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.then31, %if.then20, %if.then7, %if.then4, %if.then1, %if.then
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
declare hidden ptr @substExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsTableConstant(ptr noundef, i32 noundef) #0

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
