; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @exprTableColumn(ptr noundef %db, ptr noundef %pTab, i32 noundef %iCursor, i16 noundef signext %iCol) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %iCursor.addr = alloca i32, align 4
  %iCol.addr = alloca i16, align 2
  %pExpr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %iCursor, ptr %iCursor.addr, align 4
  store i16 %iCol, ptr %iCol.addr, align 2
  %0 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3Expr(ptr noundef %0, i32 noundef 162, ptr noundef null)
  store ptr %call, ptr %pExpr, align 8
  %1 = load ptr, ptr %pExpr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pTab.addr, align 8
  %3 = load ptr, ptr %pExpr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 14
  store ptr %2, ptr %y, align 8
  %4 = load i32, ptr %iCursor.addr, align 4
  %5 = load ptr, ptr %pExpr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 8
  store i32 %4, ptr %iTable, align 4
  %6 = load i16, ptr %iCol.addr, align 2
  %7 = load ptr, ptr %pExpr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 9
  store i16 %6, ptr %iColumn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %pExpr, align 8
  ret ptr %8
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
