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

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIdToTrueFalse(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @exprNodeIsConstant(ptr noundef %pWalker, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pWalker.addr, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %eCode, align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pWalker.addr, align 8
  %eCode4 = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 5
  store i8 0, ptr %eCode4, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 0
  %6 = load i8, ptr %op, align 8
  %conv5 = zext i8 %6 to i32
  switch i32 %conv5, label %sw.default [
    i32 167, label %sw.bb
    i32 59, label %sw.bb16
    i32 162, label %sw.bb19
    i32 163, label %sw.bb19
    i32 164, label %sw.bb19
    i32 174, label %sw.bb40
    i32 171, label %sw.bb40
    i32 151, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load ptr, ptr %pWalker.addr, align 8
  %eCode6 = getelementptr inbounds nuw %struct.Walker, ptr %7, i32 0, i32 5
  %8 = load i8, ptr %eCode6, align 4
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp sge i32 %conv7, 4
  br i1 %cmp8, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load ptr, ptr %pExpr.addr, align 8
  %flags10 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %flags10, align 4
  %and11 = and i32 %10, 524288
  %cmp12 = icmp ne i32 %and11, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %lor.lhs.false, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %pWalker.addr, align 8
  %eCode15 = getelementptr inbounds nuw %struct.Walker, ptr %11, i32 0, i32 5
  store i8 0, ptr %eCode15, align 4
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb16:                                          ; preds = %if.end
  %12 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ExprIdToTrueFalse(ptr noundef %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then17, label %if.end18

if.then17:                                        ; preds = %sw.bb16
  store i32 1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %sw.bb16
  br label %sw.bb19

sw.bb19:                                          ; preds = %if.end18, %if.end, %if.end, %if.end
  %13 = load ptr, ptr %pExpr.addr, align 8
  %flags20 = getelementptr inbounds nuw %struct.Expr, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %flags20, align 4
  %and21 = and i32 %14, 8
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %land.lhs.true24, label %if.end30

land.lhs.true24:                                  ; preds = %sw.bb19
  %15 = load ptr, ptr %pWalker.addr, align 8
  %eCode25 = getelementptr inbounds nuw %struct.Walker, ptr %15, i32 0, i32 5
  %16 = load i8, ptr %eCode25, align 4
  %conv26 = zext i8 %16 to i32
  %cmp27 = icmp ne i32 %conv26, 2
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true24
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %land.lhs.true24, %sw.bb19
  %17 = load ptr, ptr %pWalker.addr, align 8
  %eCode31 = getelementptr inbounds nuw %struct.Walker, ptr %17, i32 0, i32 5
  %18 = load i8, ptr %eCode31, align 4
  %conv32 = zext i8 %18 to i32
  %cmp33 = icmp eq i32 %conv32, 3
  br i1 %cmp33, label %land.lhs.true35, label %if.end39

land.lhs.true35:                                  ; preds = %if.end30
  %19 = load ptr, ptr %pExpr.addr, align 8
  %iTable = getelementptr inbounds nuw %struct.Expr, ptr %19, i32 0, i32 8
  %20 = load i32, ptr %iTable, align 4
  %21 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %u, align 8
  %cmp36 = icmp eq i32 %20, %22
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %land.lhs.true35
  store i32 0, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %land.lhs.true35, %if.end30
  br label %sw.bb40

sw.bb40:                                          ; preds = %if.end39, %if.end, %if.end
  %23 = load ptr, ptr %pWalker.addr, align 8
  %eCode41 = getelementptr inbounds nuw %struct.Walker, ptr %23, i32 0, i32 5
  store i8 0, ptr %eCode41, align 4
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb42:                                          ; preds = %if.end
  %24 = load ptr, ptr %pWalker.addr, align 8
  %eCode43 = getelementptr inbounds nuw %struct.Walker, ptr %24, i32 0, i32 5
  %25 = load i8, ptr %eCode43, align 4
  %conv44 = zext i8 %25 to i32
  %cmp45 = icmp eq i32 %conv44, 5
  br i1 %cmp45, label %if.then47, label %if.else49

if.then47:                                        ; preds = %sw.bb42
  %26 = load ptr, ptr %pExpr.addr, align 8
  %op48 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 0
  store i8 117, ptr %op48, align 8
  br label %if.end57

if.else49:                                        ; preds = %sw.bb42
  %27 = load ptr, ptr %pWalker.addr, align 8
  %eCode50 = getelementptr inbounds nuw %struct.Walker, ptr %27, i32 0, i32 5
  %28 = load i8, ptr %eCode50, align 4
  %conv51 = zext i8 %28 to i32
  %cmp52 = icmp eq i32 %conv51, 4
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.else49
  %29 = load ptr, ptr %pWalker.addr, align 8
  %eCode55 = getelementptr inbounds nuw %struct.Walker, ptr %29, i32 0, i32 5
  store i8 0, ptr %eCode55, align 4
  store i32 2, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.else49
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then47
  br label %sw.default

sw.default:                                       ; preds = %if.end57, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %if.then54, %sw.bb40, %if.then38, %if.then29, %if.then17, %if.else, %if.then14, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
