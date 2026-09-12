; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef %p, i32 noundef %op, i32 noundef %p1, i32 noundef %p2, i32 noundef %p3, i32 noundef %p4) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %p3.addr = alloca i32, align 4
  %p4.addr = alloca i32, align 4
  %addr = alloca i32, align 4
  %pOp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %p1, ptr %p1.addr, align 4
  store i32 %p2, ptr %p2.addr, align 4
  store i32 %p3, ptr %p3.addr, align 4
  store i32 %p4, ptr %p4.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %op.addr, align 4
  %2 = load i32, ptr %p1.addr, align 4
  %3 = load i32, ptr %p2.addr, align 4
  %4 = load i32, ptr %p3.addr, align 4
  %call = call i32 @sqlite3VdbeAddOp3(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %addr, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 19
  %7 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %p.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 23
  %9 = load ptr, ptr %aOp, align 8
  %10 = load i32, ptr %addr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.VdbeOp, ptr %9, i64 %idxprom
  store ptr %arrayidx, ptr %pOp, align 8
  %11 = load ptr, ptr %pOp, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %11, i32 0, i32 1
  store i8 -3, ptr %p4type, align 1
  %12 = load i32, ptr %p4.addr, align 4
  %13 = load ptr, ptr %pOp, align 8
  %p42 = getelementptr inbounds nuw %struct.VdbeOp, ptr %13, i32 0, i32 6
  store i32 %12, ptr %p42, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, ptr %addr, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
