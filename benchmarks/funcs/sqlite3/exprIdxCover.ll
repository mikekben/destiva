; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.IdxCover = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3ColumnOfIndex(ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @exprIdxCover(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 162
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 8
  %3 = load i32, ptr %iTable, align 4
  %4 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %u, align 8
  %iCur = getelementptr inbounds nuw %struct.IdxCover, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %iCur, align 8
  %cmp2 = icmp eq i32 %3, %6
  br i1 %cmp2, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %pWalker.addr, align 8
  %u5 = getelementptr inbounds nuw %struct.Walker, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %u5, align 8
  %pIdx = getelementptr inbounds nuw %struct.IdxCover, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pIdx, align 8
  %10 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 9
  %11 = load i16, ptr %iColumn, align 8
  %call = call signext i16 @sqlite3ColumnOfIndex(ptr noundef %9, i16 noundef signext %11)
  %conv6 = sext i16 %call to i32
  %cmp7 = icmp slt i32 %conv6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %12 = load ptr, ptr %pWalker.addr, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %12, i32 0, i32 5
  store i8 1, ptr %eCode, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
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
