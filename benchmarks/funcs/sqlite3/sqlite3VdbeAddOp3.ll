; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeAddOp3(ptr noundef %p, i32 noundef %op, i32 noundef %p1, i32 noundef %p2, i32 noundef %p3) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %p3.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pOp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %p1, ptr %p1.addr, align 4
  store i32 %p2, ptr %p2.addr, align 4
  store i32 %p3, ptr %p3.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 24
  %1 = load i32, ptr %nOp, align 8
  store i32 %1, ptr %i, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %nOpAlloc = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %nOpAlloc, align 4
  %4 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %6 = load i32, ptr %op.addr, align 4
  %7 = load i32, ptr %p1.addr, align 4
  %8 = load i32, ptr %p2.addr, align 4
  %9 = load i32, ptr %p3.addr, align 4
  %call = call i32 @growOp3(ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %p.addr, align 8
  %nOp1 = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 24
  %11 = load i32, ptr %nOp1, align 8
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nOp1, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %12, i32 0, i32 23
  %13 = load ptr, ptr %aOp, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds %struct.VdbeOp, ptr %13, i64 %idxprom
  store ptr %arrayidx, ptr %pOp, align 8
  %15 = load i32, ptr %op.addr, align 4
  %conv = trunc i32 %15 to i8
  %16 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %16, i32 0, i32 0
  store i8 %conv, ptr %opcode, align 8
  %17 = load ptr, ptr %pOp, align 8
  %p5 = getelementptr inbounds nuw %struct.VdbeOp, ptr %17, i32 0, i32 2
  store i16 0, ptr %p5, align 2
  %18 = load i32, ptr %p1.addr, align 4
  %19 = load ptr, ptr %pOp, align 8
  %p12 = getelementptr inbounds nuw %struct.VdbeOp, ptr %19, i32 0, i32 3
  store i32 %18, ptr %p12, align 4
  %20 = load i32, ptr %p2.addr, align 4
  %21 = load ptr, ptr %pOp, align 8
  %p23 = getelementptr inbounds nuw %struct.VdbeOp, ptr %21, i32 0, i32 4
  store i32 %20, ptr %p23, align 8
  %22 = load i32, ptr %p3.addr, align 4
  %23 = load ptr, ptr %pOp, align 8
  %p34 = getelementptr inbounds nuw %struct.VdbeOp, ptr %23, i32 0, i32 5
  store i32 %22, ptr %p34, align 4
  %24 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %24, i32 0, i32 6
  store ptr null, ptr %p4, align 8
  %25 = load ptr, ptr %pOp, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %25, i32 0, i32 1
  store i8 0, ptr %p4type, align 1
  %26 = load i32, ptr %i, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
declare hidden i32 @growOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
