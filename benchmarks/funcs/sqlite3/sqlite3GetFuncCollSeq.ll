; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3GetFuncCollSeq(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %pOp = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.sqlite3_context, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pVdbe, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 23
  %2 = load ptr, ptr %aOp, align 8
  %3 = load ptr, ptr %context.addr, align 8
  %iOp = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %iOp, align 8
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds %struct.VdbeOp, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %pOp, align 8
  %5 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %p4, align 8
  ret ptr %6
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
