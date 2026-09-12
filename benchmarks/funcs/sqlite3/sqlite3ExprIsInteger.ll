; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprIsInteger(ptr noundef %p, ptr noundef %pValue) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %v = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %u, align 8
  %5 = load ptr, ptr %pValue.addr, align 8
  store i32 %4, ptr %5, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %p.addr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %op, align 8
  %conv = zext i8 %7 to i32
  switch i32 %conv, label %sw.default [
    i32 169, label %sw.bb
    i32 168, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end2
  %8 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pLeft, align 8
  %10 = load ptr, ptr %pValue.addr, align 8
  %call = call i32 @sqlite3ExprIsInteger(ptr noundef %9, ptr noundef %10)
  store i32 %call, ptr %rc, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end2
  %11 = load ptr, ptr %p.addr, align 8
  %pLeft4 = getelementptr inbounds nuw %struct.Expr, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pLeft4, align 8
  %call5 = call i32 @sqlite3ExprIsInteger(ptr noundef %12, ptr noundef %v)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %sw.bb3
  %13 = load i32, ptr %v, align 4
  %sub = sub nsw i32 0, %13
  %14 = load ptr, ptr %pValue.addr, align 8
  store i32 %sub, ptr %14, align 4
  store i32 1, ptr %rc, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %sw.bb3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end8, %sw.bb
  %15 = load i32, ptr %rc, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then1, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
