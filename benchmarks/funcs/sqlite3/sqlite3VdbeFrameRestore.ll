; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeFrame = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeFrameRestore(ptr noundef %pFrame) #0 {
entry:
  %pFrame.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  store ptr %pFrame, ptr %pFrame.addr, align 8
  %0 = load ptr, ptr %pFrame.addr, align 8
  %v1 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %v1, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %v, align 8
  call void @closeCursorsInFrame(ptr noundef %2)
  %3 = load ptr, ptr %pFrame.addr, align 8
  %aOp = getelementptr inbounds nuw %struct.VdbeFrame, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %aOp, align 8
  %5 = load ptr, ptr %v, align 8
  %aOp2 = getelementptr inbounds nuw %struct.Vdbe, ptr %5, i32 0, i32 23
  store ptr %4, ptr %aOp2, align 8
  %6 = load ptr, ptr %pFrame.addr, align 8
  %nOp = getelementptr inbounds nuw %struct.VdbeFrame, ptr %6, i32 0, i32 12
  %7 = load i32, ptr %nOp, align 8
  %8 = load ptr, ptr %v, align 8
  %nOp3 = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 24
  store i32 %7, ptr %nOp3, align 8
  %9 = load ptr, ptr %pFrame.addr, align 8
  %aMem = getelementptr inbounds nuw %struct.VdbeFrame, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %aMem, align 8
  %11 = load ptr, ptr %v, align 8
  %aMem4 = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 19
  store ptr %10, ptr %aMem4, align 8
  %12 = load ptr, ptr %pFrame.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.VdbeFrame, ptr %12, i32 0, i32 13
  %13 = load i32, ptr %nMem, align 4
  %14 = load ptr, ptr %v, align 8
  %nMem5 = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 7
  store i32 %13, ptr %nMem5, align 8
  %15 = load ptr, ptr %pFrame.addr, align 8
  %apCsr = getelementptr inbounds nuw %struct.VdbeFrame, ptr %15, i32 0, i32 5
  %16 = load ptr, ptr %apCsr, align 8
  %17 = load ptr, ptr %v, align 8
  %apCsr6 = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 21
  store ptr %16, ptr %apCsr6, align 8
  %18 = load ptr, ptr %pFrame.addr, align 8
  %nCursor = getelementptr inbounds nuw %struct.VdbeFrame, ptr %18, i32 0, i32 10
  %19 = load i32, ptr %nCursor, align 8
  %20 = load ptr, ptr %v, align 8
  %nCursor7 = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 8
  store i32 %19, ptr %nCursor7, align 4
  %21 = load ptr, ptr %pFrame.addr, align 8
  %lastRowid = getelementptr inbounds nuw %struct.VdbeFrame, ptr %21, i32 0, i32 8
  %22 = load i64, ptr %lastRowid, align 8
  %23 = load ptr, ptr %v, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %db, align 8
  %lastRowid8 = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 8
  store i64 %22, ptr %lastRowid8, align 8
  %25 = load ptr, ptr %pFrame.addr, align 8
  %nChange = getelementptr inbounds nuw %struct.VdbeFrame, ptr %25, i32 0, i32 16
  %26 = load i32, ptr %nChange, align 8
  %27 = load ptr, ptr %v, align 8
  %nChange9 = getelementptr inbounds nuw %struct.Vdbe, ptr %27, i32 0, i32 12
  store i32 %26, ptr %nChange9, align 4
  %28 = load ptr, ptr %pFrame.addr, align 8
  %nDbChange = getelementptr inbounds nuw %struct.VdbeFrame, ptr %28, i32 0, i32 17
  %29 = load i32, ptr %nDbChange, align 4
  %30 = load ptr, ptr %v, align 8
  %db10 = getelementptr inbounds nuw %struct.Vdbe, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %db10, align 8
  %nChange11 = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 31
  store i32 %29, ptr %nChange11, align 4
  %32 = load ptr, ptr %v, align 8
  %db12 = getelementptr inbounds nuw %struct.Vdbe, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %db12, align 8
  %34 = load ptr, ptr %v, align 8
  %pAuxData = getelementptr inbounds nuw %struct.Vdbe, ptr %34, i32 0, i32 48
  call void @sqlite3VdbeDeleteAuxData(ptr noundef %33, ptr noundef %pAuxData, i32 noundef -1, i32 noundef 0)
  %35 = load ptr, ptr %pFrame.addr, align 8
  %pAuxData13 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %35, i32 0, i32 9
  %36 = load ptr, ptr %pAuxData13, align 8
  %37 = load ptr, ptr %v, align 8
  %pAuxData14 = getelementptr inbounds nuw %struct.Vdbe, ptr %37, i32 0, i32 48
  store ptr %36, ptr %pAuxData14, align 8
  %38 = load ptr, ptr %pFrame.addr, align 8
  %pAuxData15 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %38, i32 0, i32 9
  store ptr null, ptr %pAuxData15, align 8
  %39 = load ptr, ptr %pFrame.addr, align 8
  %pc = getelementptr inbounds nuw %struct.VdbeFrame, ptr %39, i32 0, i32 11
  %40 = load i32, ptr %pc, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
declare hidden void @closeCursorsInFrame(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeDeleteAuxData(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
