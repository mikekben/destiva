; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @exprToRegister(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprCodeAndCache(ptr noundef %pParse, ptr noundef %pExpr, i32 noundef %target) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pExpr.addr = alloca ptr, align 8
  %target.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %iMem = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i32 %target, ptr %target.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pExpr.addr, align 8
  %4 = load i32, ptr %target.addr, align 4
  call void @sqlite3ExprCode(ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %5 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 18
  %6 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %iMem, align 4
  %7 = load ptr, ptr %v, align 8
  %8 = load i32, ptr %target.addr, align 4
  %9 = load i32, ptr %iMem, align 4
  %call = call i32 @sqlite3VdbeAddOp2(ptr noundef %7, i32 noundef 78, i32 noundef %8, i32 noundef %9)
  %10 = load ptr, ptr %pExpr.addr, align 8
  %11 = load i32, ptr %iMem, align 4
  call void @exprToRegister(ptr noundef %10, i32 noundef %11)
  ret void
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
