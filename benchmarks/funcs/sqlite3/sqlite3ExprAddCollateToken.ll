; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ExprAddCollateToken(ptr noundef %pParse, ptr noundef %pExpr, ptr noundef %pCollName, i32 noundef %dequote) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pCollName.addr = alloca ptr, align 8
  %dequote.addr = alloca i32, align 4
  %pNew = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store ptr %pCollName, ptr %pCollName.addr, align 8
  store i32 %dequote, ptr %dequote.addr, align 4
  %0 = load ptr, ptr %pCollName.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %n, align 8
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db, align 8
  %4 = load ptr, ptr %pCollName.addr, align 8
  %5 = load i32, ptr %dequote.addr, align 4
  %call = call ptr @sqlite3ExprAlloc(ptr noundef %3, i32 noundef 109, ptr noundef %4, i32 noundef %5)
  store ptr %call, ptr %pNew, align 8
  %6 = load ptr, ptr %pNew, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %7 = load ptr, ptr %pExpr.addr, align 8
  %8 = load ptr, ptr %pNew, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 4
  store ptr %7, ptr %pLeft, align 8
  %9 = load ptr, ptr %pNew, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, 4352
  store i32 %or, ptr %flags, align 4
  %11 = load ptr, ptr %pNew, align 8
  store ptr %11, ptr %pExpr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %pExpr.addr, align 8
  ret ptr %12
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
