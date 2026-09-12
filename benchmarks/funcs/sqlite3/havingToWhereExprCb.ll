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
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@.str.332 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Expr(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAnd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @havingToWhereExprCb(ptr noundef %pWalker, ptr noundef %pExpr) #1 {
entry:
  %retval = alloca i32, align 4
  %pWalker.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %pS = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pWhere = alloca ptr, align 8
  %t = alloca %struct.Expr, align 8
  store ptr %pWalker, ptr %pWalker.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  %0 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 44
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pWalker.addr, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %u, align 8
  store ptr %3, ptr %pS, align 8
  %4 = load ptr, ptr %pWalker.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.Walker, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pParse, align 8
  %6 = load ptr, ptr %pExpr.addr, align 8
  %7 = load ptr, ptr %pS, align 8
  %pGroupBy = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 10
  %8 = load ptr, ptr %pGroupBy, align 8
  %call = call i32 @sqlite3ExprIsConstantOrGroupBy(ptr noundef %5, ptr noundef %6, ptr noundef %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.then
  %9 = load ptr, ptr %pWalker.addr, align 8
  %pParse3 = getelementptr inbounds nuw %struct.Walker, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pParse3, align 8
  %db4 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %db4, align 8
  store ptr %11, ptr %db, align 8
  %12 = load ptr, ptr %db, align 8
  %call5 = call ptr @sqlite3Expr(ptr noundef %12, i32 noundef 150, ptr noundef @.str.332)
  store ptr %call5, ptr %pNew, align 8
  %13 = load ptr, ptr %pNew, align 8
  %tobool6 = icmp ne ptr %13, null
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then2
  %14 = load ptr, ptr %pS, align 8
  %pWhere8 = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %pWhere8, align 8
  store ptr %15, ptr %pWhere, align 8
  %16 = load ptr, ptr %pNew, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %t, ptr align 8 %16, i64 72, i1 false)
  %17 = load ptr, ptr %pNew, align 8
  %18 = load ptr, ptr %pExpr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr align 8 %18, i64 72, i1 false)
  %19 = load ptr, ptr %pExpr.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %t, i64 72, i1 false)
  %20 = load ptr, ptr %pWalker.addr, align 8
  %pParse9 = getelementptr inbounds nuw %struct.Walker, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pParse9, align 8
  %22 = load ptr, ptr %pWhere, align 8
  %23 = load ptr, ptr %pNew, align 8
  %call10 = call ptr @sqlite3ExprAnd(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  store ptr %call10, ptr %pNew, align 8
  %24 = load ptr, ptr %pNew, align 8
  %25 = load ptr, ptr %pS, align 8
  %pWhere11 = getelementptr inbounds nuw %struct.Select, ptr %25, i32 0, i32 9
  store ptr %24, ptr %pWhere11, align 8
  %26 = load ptr, ptr %pWalker.addr, align 8
  %eCode = getelementptr inbounds nuw %struct.Walker, ptr %26, i32 0, i32 5
  store i8 1, ptr %eCode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then2
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.end12
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsConstantOrGroupBy(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
