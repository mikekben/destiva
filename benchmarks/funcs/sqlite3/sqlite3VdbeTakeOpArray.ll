; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
declare hidden void @resolveP2Values(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3VdbeTakeOpArray(ptr noundef %p, ptr noundef %pnOp, ptr noundef %pnMaxArg) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pnOp.addr = alloca ptr, align 8
  %pnMaxArg.addr = alloca ptr, align 8
  %aOp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %pnOp, ptr %pnOp.addr, align 8
  store ptr %pnMaxArg, ptr %pnMaxArg.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %aOp1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 23
  %1 = load ptr, ptr %aOp1, align 8
  store ptr %1, ptr %aOp, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %pnMaxArg.addr, align 8
  call void @resolveP2Values(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %p.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 24
  %5 = load i32, ptr %nOp, align 8
  %6 = load ptr, ptr %pnOp.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %aOp2 = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 23
  store ptr null, ptr %aOp2, align 8
  %8 = load ptr, ptr %aOp, align 8
  ret ptr %8
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
