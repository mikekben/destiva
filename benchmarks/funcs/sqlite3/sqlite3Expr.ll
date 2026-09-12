; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3Expr(ptr noundef %db, i32 noundef %op, ptr noundef %zToken) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %zToken.addr = alloca ptr, align 8
  %x = alloca %struct.Token, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store ptr %zToken, ptr %zToken.addr, align 8
  %0 = load ptr, ptr %zToken.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %x, i32 0, i32 0
  store ptr %0, ptr %z, align 8
  %1 = load ptr, ptr %zToken.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %1)
  %n = getelementptr inbounds nuw %struct.Token, ptr %x, i32 0, i32 1
  store i32 %call, ptr %n, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load i32, ptr %op.addr, align 4
  %call1 = call ptr @sqlite3ExprAlloc(ptr noundef %2, i32 noundef %3, ptr noundef %x, i32 noundef 0)
  ret ptr %call1
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
