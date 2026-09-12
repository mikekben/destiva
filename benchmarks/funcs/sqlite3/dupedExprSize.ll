; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @dupedExprSize(ptr noundef %p, i32 noundef %flags) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %nByte = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 0, ptr %nByte, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load i32, ptr %flags.addr, align 4
  %call = call i32 @dupedExprNodeSize(ptr noundef %1, i32 noundef %2)
  store i32 %call, ptr %nByte, align 4
  %3 = load i32, ptr %flags.addr, align 4
  %and = and i32 %3, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %p.addr, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pLeft, align 8
  %6 = load i32, ptr %flags.addr, align 4
  %call3 = call i32 @dupedExprSize(ptr noundef %5, i32 noundef %6)
  %7 = load ptr, ptr %p.addr, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %7, i32 0, i32 5
  %8 = load ptr, ptr %pRight, align 8
  %9 = load i32, ptr %flags.addr, align 4
  %call4 = call i32 @dupedExprSize(ptr noundef %8, i32 noundef %9)
  %add = add nsw i32 %call3, %call4
  %10 = load i32, ptr %nByte, align 4
  %add5 = add nsw i32 %10, %add
  store i32 %add5, ptr %nByte, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %11 = load i32, ptr %nByte, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
declare hidden i32 @dupedExprNodeSize(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
