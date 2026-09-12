; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @resolveAttachExpr(ptr noundef %pName, ptr noundef %pExpr) #0 {
entry:
  %pName.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pExpr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pExpr.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %op, align 8
  %conv = zext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 59
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %pName.addr, align 8
  %4 = load ptr, ptr %pExpr.addr, align 8
  %call = call i32 @sqlite3ResolveExprNames(ptr noundef %3, ptr noundef %4)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %pExpr.addr, align 8
  %op3 = getelementptr inbounds nuw %struct.Expr, ptr %5, i32 0, i32 0
  store i8 113, ptr %op3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load i32, ptr %rc, align 4
  ret i32 %6
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
