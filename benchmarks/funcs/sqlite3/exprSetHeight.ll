; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @heightOfSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @heightOfExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @heightOfExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @exprSetHeight(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %nHeight = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %nHeight, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pLeft, align 8
  call void @heightOfExpr(ptr noundef %1, ptr noundef %nHeight)
  %2 = load ptr, ptr %p.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %pRight, align 8
  call void @heightOfExpr(ptr noundef %3, ptr noundef %nHeight)
  %4 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2048
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %x, align 8
  call void @heightOfSelect(ptr noundef %7, ptr noundef %nHeight)
  br label %if.end7

if.else:                                          ; preds = %entry
  %8 = load ptr, ptr %p.addr, align 8
  %x1 = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %x1, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %10 = load ptr, ptr %p.addr, align 8
  %x3 = getelementptr inbounds nuw %struct.Expr, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %x3, align 8
  call void @heightOfExprList(ptr noundef %11, ptr noundef %nHeight)
  %12 = load ptr, ptr %p.addr, align 8
  %x4 = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %x4, align 8
  %call = call i32 @sqlite3ExprListFlags(ptr noundef %13)
  %and5 = and i32 2097412, %call
  %14 = load ptr, ptr %p.addr, align 8
  %flags6 = getelementptr inbounds nuw %struct.Expr, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %flags6, align 4
  %or = or i32 %15, %and5
  store i32 %or, ptr %flags6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %16 = load i32, ptr %nHeight, align 4
  %add = add nsw i32 %16, 1
  %17 = load ptr, ptr %p.addr, align 8
  %nHeight8 = getelementptr inbounds nuw %struct.Expr, ptr %17, i32 0, i32 7
  store i32 %add, ptr %nHeight8, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprListFlags(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
