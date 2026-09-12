; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @exprCommute(ptr noundef %pParse, ptr noundef %pExpr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %expRight = alloca i16, align 2
  %expLeft = alloca i16, align 2
  %wtFlags = alloca i16, align 2
  %t = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pRight, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 256
  %conv = trunc i32 %and to i16
  store i16 %conv, ptr %expRight, align 2
  %3 = load ptr, ptr %pExpr.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pLeft, align 8
  %flags1 = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %flags1, align 4
  %and2 = and i32 %5, 256
  %conv3 = trunc i32 %and2 to i16
  store i16 %conv3, ptr %expLeft, align 2
  store i16 0, ptr %wtFlags, align 2
  %6 = load i16, ptr %expRight, align 2
  %conv4 = zext i16 %6 to i32
  %7 = load i16, ptr %expLeft, align 2
  %conv5 = zext i16 %7 to i32
  %cmp = icmp eq i32 %conv4, %conv5
  br i1 %cmp, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %8 = load i16, ptr %expRight, align 2
  %tobool = icmp ne i16 %8, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %9 = load ptr, ptr %pExpr.addr, align 8
  %pRight8 = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pRight8, align 8
  %flags9 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %flags9, align 4
  %and10 = and i32 %11, -257
  store i32 %and10, ptr %flags9, align 4
  %12 = load i16, ptr %wtFlags, align 2
  %conv11 = zext i16 %12 to i32
  %or = or i32 %conv11, 8192
  %conv12 = trunc i32 %or to i16
  store i16 %conv12, ptr %wtFlags, align 2
  br label %if.end23

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %pExpr.addr, align 8
  %pLeft13 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pLeft13, align 8
  %call = call ptr @sqlite3ExprCollSeq(ptr noundef %13, ptr noundef %15)
  %cmp14 = icmp ne ptr %call, null
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.else
  %16 = load ptr, ptr %pExpr.addr, align 8
  %pLeft17 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pLeft17, align 8
  %flags18 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %flags18, align 4
  %or19 = or i32 %18, 256
  store i32 %or19, ptr %flags18, align 4
  %19 = load i16, ptr %wtFlags, align 2
  %conv20 = zext i16 %19 to i32
  %or21 = or i32 %conv20, 8192
  %conv22 = trunc i32 %or21 to i16
  store i16 %conv22, ptr %wtFlags, align 2
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then7
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %entry
  %20 = load ptr, ptr %pExpr.addr, align 8
  %pRight25 = getelementptr inbounds nuw %struct.Expr, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %pRight25, align 8
  store ptr %21, ptr %t, align 8
  %22 = load ptr, ptr %pExpr.addr, align 8
  %pLeft26 = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %pLeft26, align 8
  %24 = load ptr, ptr %pExpr.addr, align 8
  %pRight27 = getelementptr inbounds nuw %struct.Expr, ptr %24, i32 0, i32 5
  store ptr %23, ptr %pRight27, align 8
  %25 = load ptr, ptr %t, align 8
  %26 = load ptr, ptr %pExpr.addr, align 8
  %pLeft28 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 4
  store ptr %25, ptr %pLeft28, align 8
  %27 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %27, i32 0, i32 0
  %28 = load i8, ptr %op, align 8
  %conv29 = zext i8 %28 to i32
  %cmp30 = icmp sge i32 %conv29, 54
  br i1 %cmp30, label %if.then32, label %if.end37

if.then32:                                        ; preds = %if.end24
  %29 = load ptr, ptr %pExpr.addr, align 8
  %op33 = getelementptr inbounds nuw %struct.Expr, ptr %29, i32 0, i32 0
  %30 = load i8, ptr %op33, align 8
  %conv34 = zext i8 %30 to i32
  %sub = sub nsw i32 %conv34, 54
  %xor = xor i32 %sub, 2
  %add = add nsw i32 %xor, 54
  %conv35 = trunc i32 %add to i8
  %31 = load ptr, ptr %pExpr.addr, align 8
  %op36 = getelementptr inbounds nuw %struct.Expr, ptr %31, i32 0, i32 0
  store i8 %conv35, ptr %op36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end24
  %32 = load i16, ptr %wtFlags, align 2
  ret i16 %32
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
