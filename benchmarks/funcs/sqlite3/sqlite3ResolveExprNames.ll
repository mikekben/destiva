; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ResolveExprNames(ptr noundef %pNC, ptr noundef %pExpr) #0 {
entry:
  %retval = alloca i32, align 4
  %pNC.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %savedHasAgg = alloca i32, align 4
  %w = alloca %struct.Walker, align 8
  store ptr %pNC, ptr %pNC.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pNC.addr, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %ncFlags, align 8
  %and = and i32 %2, 36880
  store i32 %and, ptr %savedHasAgg, align 4
  %3 = load ptr, ptr %pNC.addr, align 8
  %ncFlags1 = getelementptr inbounds nuw %struct.NameContext, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %ncFlags1, align 8
  %and2 = and i32 %4, -36881
  store i32 %and2, ptr %ncFlags1, align 8
  %5 = load ptr, ptr %pNC.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.NameContext, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pParse, align 8
  %pParse3 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  store ptr %6, ptr %pParse3, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 1
  store ptr @resolveExprStep, ptr %xExprCallback, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 2
  store ptr @resolveSelectStep, ptr %xSelectCallback, align 8
  %xSelectCallback2 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 3
  store ptr null, ptr %xSelectCallback2, align 8
  %7 = load ptr, ptr %pNC.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 6
  store ptr %7, ptr %u, align 8
  %8 = load ptr, ptr %pExpr.addr, align 8
  %nHeight = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 7
  %9 = load i32, ptr %nHeight, align 8
  %pParse4 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  %10 = load ptr, ptr %pParse4, align 8
  %nHeight5 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 53
  %11 = load i32, ptr %nHeight5, align 4
  %add = add nsw i32 %11, %9
  store i32 %add, ptr %nHeight5, align 4
  %pParse6 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  %12 = load ptr, ptr %pParse6, align 8
  %pParse7 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  %13 = load ptr, ptr %pParse7, align 8
  %nHeight8 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 53
  %14 = load i32, ptr %nHeight8, align 4
  %call = call i32 @sqlite3ExprCheckHeight(ptr noundef %12, i32 noundef %14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %15 = load ptr, ptr %pExpr.addr, align 8
  %call11 = call i32 @sqlite3WalkExpr(ptr noundef %w, ptr noundef %15)
  %16 = load ptr, ptr %pExpr.addr, align 8
  %nHeight12 = getelementptr inbounds nuw %struct.Expr, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %nHeight12, align 8
  %pParse13 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  %18 = load ptr, ptr %pParse13, align 8
  %nHeight14 = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 53
  %19 = load i32, ptr %nHeight14, align 4
  %sub = sub nsw i32 %19, %17
  store i32 %sub, ptr %nHeight14, align 4
  %20 = load ptr, ptr %pNC.addr, align 8
  %ncFlags15 = getelementptr inbounds nuw %struct.NameContext, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %ncFlags15, align 8
  %and16 = and i32 %21, 32784
  %22 = load ptr, ptr %pExpr.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %flags, align 4
  %or = or i32 %23, %and16
  store i32 %or, ptr %flags, align 4
  %24 = load i32, ptr %savedHasAgg, align 4
  %25 = load ptr, ptr %pNC.addr, align 8
  %ncFlags17 = getelementptr inbounds nuw %struct.NameContext, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %ncFlags17, align 8
  %or18 = or i32 %26, %24
  store i32 %or18, ptr %ncFlags17, align 8
  %27 = load ptr, ptr %pNC.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.NameContext, ptr %27, i32 0, i32 5
  %28 = load i32, ptr %nErr, align 4
  %cmp19 = icmp sgt i32 %28, 0
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end10
  %pParse20 = getelementptr inbounds nuw %struct.Walker, ptr %w, i32 0, i32 0
  %29 = load ptr, ptr %pParse20, align 8
  %nErr21 = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 16
  %30 = load i32, ptr %nErr21, align 8
  %cmp22 = icmp sgt i32 %30, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end10
  %31 = phi i1 [ true, %if.end10 ], [ %cmp22, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  store i32 %lor.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %lor.end, %if.then9, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveExprStep(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @resolveSelectStep(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprCheckHeight(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
