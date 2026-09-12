; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.WhereConst = type { ptr, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @findConstInWhere(ptr noundef %pConst, ptr noundef %pExpr) #0 {
entry:
  %pConst.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pRight = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  store ptr %pConst, ptr %pConst.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end51

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end51

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 0
  %4 = load i8, ptr %op, align 8
  %conv = zext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv, 44
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end3
  %5 = load ptr, ptr %pConst.addr, align 8
  %6 = load ptr, ptr %pExpr.addr, align 8
  %pRight7 = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %pRight7, align 8
  call void @findConstInWhere(ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %pConst.addr, align 8
  %9 = load ptr, ptr %pExpr.addr, align 8
  %pLeft8 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pLeft8, align 8
  call void @findConstInWhere(ptr noundef %8, ptr noundef %10)
  br label %if.end51

if.end9:                                          ; preds = %if.end3
  %11 = load ptr, ptr %pExpr.addr, align 8
  %op10 = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 0
  %12 = load i8, ptr %op10, align 8
  %conv11 = zext i8 %12 to i32
  %cmp12 = icmp ne i32 %conv11, 53
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  br label %if.end51

if.end15:                                         ; preds = %if.end9
  %13 = load ptr, ptr %pExpr.addr, align 8
  %pRight16 = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 5
  %14 = load ptr, ptr %pRight16, align 8
  store ptr %14, ptr %pRight, align 8
  %15 = load ptr, ptr %pExpr.addr, align 8
  %pLeft17 = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %pLeft17, align 8
  store ptr %16, ptr %pLeft, align 8
  %17 = load ptr, ptr %pRight, align 8
  %op18 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 0
  %18 = load i8, ptr %op18, align 8
  %conv19 = zext i8 %18 to i32
  %cmp20 = icmp eq i32 %conv19, 162
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end15
  %19 = load ptr, ptr %pRight, align 8
  %flags22 = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %flags22, align 4
  %and23 = and i32 %20, 8
  %cmp24 = icmp ne i32 %and23, 0
  br i1 %cmp24, label %if.else, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %land.lhs.true
  %21 = load ptr, ptr %pLeft, align 8
  %call = call i32 @sqlite3ExprIsConstant(ptr noundef %21)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %land.lhs.true26
  %22 = load ptr, ptr %pConst.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereConst, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %pParse, align 8
  %24 = load ptr, ptr %pLeft, align 8
  %25 = load ptr, ptr %pRight, align 8
  %call28 = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %23, ptr noundef %24, ptr noundef %25)
  %call29 = call i32 @sqlite3IsBinary(ptr noundef %call28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else

if.then31:                                        ; preds = %land.lhs.true27
  %26 = load ptr, ptr %pConst.addr, align 8
  %27 = load ptr, ptr %pRight, align 8
  %28 = load ptr, ptr %pLeft, align 8
  call void @constInsert(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true27, %land.lhs.true26, %land.lhs.true, %if.end15
  %29 = load ptr, ptr %pLeft, align 8
  %op32 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 0
  %30 = load i8, ptr %op32, align 8
  %conv33 = zext i8 %30 to i32
  %cmp34 = icmp eq i32 %conv33, 162
  br i1 %cmp34, label %land.lhs.true36, label %if.end50

land.lhs.true36:                                  ; preds = %if.else
  %31 = load ptr, ptr %pLeft, align 8
  %flags37 = getelementptr inbounds nuw %struct.Expr, ptr %31, i32 0, i32 2
  %32 = load i32, ptr %flags37, align 4
  %and38 = and i32 %32, 8
  %cmp39 = icmp ne i32 %and38, 0
  br i1 %cmp39, label %if.end50, label %land.lhs.true41

land.lhs.true41:                                  ; preds = %land.lhs.true36
  %33 = load ptr, ptr %pRight, align 8
  %call42 = call i32 @sqlite3ExprIsConstant(ptr noundef %33)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true44, label %if.end50

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %34 = load ptr, ptr %pConst.addr, align 8
  %pParse45 = getelementptr inbounds nuw %struct.WhereConst, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pParse45, align 8
  %36 = load ptr, ptr %pLeft, align 8
  %37 = load ptr, ptr %pRight, align 8
  %call46 = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  %call47 = call i32 @sqlite3IsBinary(ptr noundef %call46)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %land.lhs.true44
  %38 = load ptr, ptr %pConst.addr, align 8
  %39 = load ptr, ptr %pLeft, align 8
  %40 = load ptr, ptr %pRight, align 8
  call void @constInsert(ptr noundef %38, ptr noundef %39, ptr noundef %40)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %land.lhs.true44, %land.lhs.true41, %land.lhs.true36, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then31, %if.then14, %if.then6, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsBinary(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @constInsert(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
