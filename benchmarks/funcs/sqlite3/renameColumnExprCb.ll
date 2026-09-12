; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.RenameCtx = type { ptr, i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @renameColumnExprCb(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %u, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 0
  %3 = load i8, ptr %op, align 8
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 77
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %pExpr.addr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %iColumn, align 8
  %conv2 = sext i16 %5 to i32
  %6 = load ptr, ptr %p, align 8
  %iCol = getelementptr inbounds nuw %struct.RenameCtx, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %iCol, align 4
  %cmp3 = icmp eq i32 %conv2, %7
  br i1 %cmp3, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %pWalker.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.Walker, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pParse, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 36
  %10 = load ptr, ptr %pTriggerTab, align 8
  %11 = load ptr, ptr %p, align 8
  %pTab = getelementptr inbounds nuw %struct.RenameCtx, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pTab, align 8
  %cmp6 = icmp eq ptr %10, %12
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true5
  %13 = load ptr, ptr %pWalker.addr, align 8
  %pParse8 = getelementptr inbounds nuw %struct.Walker, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pParse8, align 8
  %15 = load ptr, ptr %p, align 8
  %16 = load ptr, ptr %pExpr.addr, align 8
  call void @renameTokenFind(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  br label %if.end25

if.else:                                          ; preds = %land.lhs.true5, %land.lhs.true, %entry
  %17 = load ptr, ptr %pExpr.addr, align 8
  %op9 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 0
  %18 = load i8, ptr %op9, align 8
  %conv10 = zext i8 %18 to i32
  %cmp11 = icmp eq i32 %conv10, 162
  br i1 %cmp11, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %if.else
  %19 = load ptr, ptr %pExpr.addr, align 8
  %iColumn14 = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 9
  %20 = load i16, ptr %iColumn14, align 8
  %conv15 = sext i16 %20 to i32
  %21 = load ptr, ptr %p, align 8
  %iCol16 = getelementptr inbounds nuw %struct.RenameCtx, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %iCol16, align 4
  %cmp17 = icmp eq i32 %conv15, %22
  br i1 %cmp17, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true13
  %23 = load ptr, ptr %p, align 8
  %pTab20 = getelementptr inbounds nuw %struct.RenameCtx, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %pTab20, align 8
  %25 = load ptr, ptr %pExpr.addr, align 8
  %y = getelementptr inbounds nuw %struct.Expr, ptr %25, i32 0, i32 14
  %26 = load ptr, ptr %y, align 8
  %cmp21 = icmp eq ptr %24, %26
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %land.lhs.true19
  %27 = load ptr, ptr %pWalker.addr, align 8
  %pParse24 = getelementptr inbounds nuw %struct.Walker, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pParse24, align 8
  %29 = load ptr, ptr %p, align 8
  %30 = load ptr, ptr %pExpr.addr, align 8
  call void @renameTokenFind(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  br label %if.end

if.end:                                           ; preds = %if.then23, %land.lhs.true19, %land.lhs.true13, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden void @renameTokenFind(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
