; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3ExprAffinity(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i8 @sqlite3CompareAffinity(ptr noundef, i8 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden signext i8 @comparisonAffinity(ptr noundef %pExpr) #0 {
entry:
  %pExpr.addr = alloca ptr, align 8
  %aff = alloca i8, align 1
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pLeft, align 8
  %call = call signext i8 @sqlite3ExprAffinity(ptr noundef %1)
  store i8 %call, ptr %aff, align 1
  %2 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %pRight, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pExpr.addr, align 8
  %pRight1 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %pRight1, align 8
  %6 = load i8, ptr %aff, align 1
  %call2 = call signext i8 @sqlite3CompareAffinity(ptr noundef %5, i8 noundef signext %6)
  store i8 %call2, ptr %aff, align 1
  br label %if.end11

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2048
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.else
  %9 = load ptr, ptr %pExpr.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %x, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pEList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 0
  %pExpr4 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %12 = load ptr, ptr %pExpr4, align 8
  %13 = load i8, ptr %aff, align 1
  %call5 = call signext i8 @sqlite3CompareAffinity(ptr noundef %12, i8 noundef signext %13)
  store i8 %call5, ptr %aff, align 1
  br label %if.end10

if.else6:                                         ; preds = %if.else
  %14 = load i8, ptr %aff, align 1
  %conv = sext i8 %14 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else6
  store i8 65, ptr %aff, align 1
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then3
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.then
  %15 = load i8, ptr %aff, align 1
  ret i8 %15
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
