; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PExpr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @addWhereTerm(ptr noundef %pParse, ptr noundef %pSrc, i32 noundef %iLeft, i32 noundef %iColLeft, i32 noundef %iRight, i32 noundef %iColRight, i32 noundef %isOuterJoin, ptr noundef %ppWhere) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %iLeft.addr = alloca i32, align 4
  %iColLeft.addr = alloca i32, align 4
  %iRight.addr = alloca i32, align 4
  %iColRight.addr = alloca i32, align 4
  %isOuterJoin.addr = alloca i32, align 4
  %ppWhere.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pE1 = alloca ptr, align 8
  %pE2 = alloca ptr, align 8
  %pEq = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i32 %iLeft, ptr %iLeft.addr, align 4
  store i32 %iColLeft, ptr %iColLeft.addr, align 4
  store i32 %iRight, ptr %iRight.addr, align 4
  store i32 %iColRight, ptr %iColRight.addr, align 4
  store i32 %isOuterJoin, ptr %isOuterJoin.addr, align 4
  store ptr %ppWhere, ptr %ppWhere.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %3 = load ptr, ptr %pSrc.addr, align 8
  %4 = load i32, ptr %iLeft.addr, align 4
  %5 = load i32, ptr %iColLeft.addr, align 4
  %call = call ptr @sqlite3CreateColumnExpr(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  store ptr %call, ptr %pE1, align 8
  %6 = load ptr, ptr %db, align 8
  %7 = load ptr, ptr %pSrc.addr, align 8
  %8 = load i32, ptr %iRight.addr, align 4
  %9 = load i32, ptr %iColRight.addr, align 4
  %call2 = call ptr @sqlite3CreateColumnExpr(ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9)
  store ptr %call2, ptr %pE2, align 8
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pE1, align 8
  %12 = load ptr, ptr %pE2, align 8
  %call3 = call ptr @sqlite3PExpr(ptr noundef %10, i32 noundef 53, ptr noundef %11, ptr noundef %12)
  store ptr %call3, ptr %pEq, align 8
  %13 = load ptr, ptr %pEq, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load i32, ptr %isOuterJoin.addr, align 4
  %tobool4 = icmp ne i32 %14, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %pEq, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 1
  store i32 %or, ptr %flags, align 4
  %17 = load ptr, ptr %pE2, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %iTable, align 4
  %conv = trunc i32 %18 to i16
  %19 = load ptr, ptr %pEq, align 8
  %iRightJoinTable = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 11
  store i16 %conv, ptr %iRightJoinTable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load ptr, ptr %ppWhere.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %pEq, align 8
  %call5 = call ptr @sqlite3ExprAnd(ptr noundef %20, ptr noundef %22, ptr noundef %23)
  %24 = load ptr, ptr %ppWhere.addr, align 8
  store ptr %call5, ptr %24, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3CreateColumnExpr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
