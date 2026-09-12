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

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeCloseStatement(ptr noundef %p, i32 noundef %eOp) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %eOp.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %iSavepoint = alloca i32, align 4
  %rc2 = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %eOp, ptr %eOp.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store i32 0, ptr %rc, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %iStatement = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 13
  %3 = load i32, ptr %iStatement, align 8
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr %iSavepoint, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %rc2, align 4
  %7 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %aDb, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %8, i64 %idxprom
  %pBt2 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %10 = load ptr, ptr %pBt2, align 8
  store ptr %10, ptr %pBt, align 8
  %11 = load ptr, ptr %pBt, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body
  %12 = load i32, ptr %eOp.addr, align 4
  %cmp3 = icmp eq i32 %12, 2
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %13 = load ptr, ptr %pBt, align 8
  %14 = load i32, ptr %iSavepoint, align 4
  %call = call i32 @sqlite3BtreeSavepoint(ptr noundef %13, i32 noundef 2, i32 noundef %14)
  store i32 %call, ptr %rc2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %15 = load i32, ptr %rc2, align 4
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %16 = load ptr, ptr %pBt, align 8
  %17 = load i32, ptr %iSavepoint, align 4
  %call7 = call i32 @sqlite3BtreeSavepoint(ptr noundef %16, i32 noundef 1, i32 noundef %17)
  store i32 %call7, ptr %rc2, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  %18 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %18, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  %19 = load i32, ptr %rc2, align 4
  store i32 %19, ptr %rc, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %db, align 8
  %nStatement = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 79
  %22 = load i32, ptr %nStatement, align 8
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %nStatement, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %iStatement13 = getelementptr inbounds nuw %struct.Vdbe, ptr %23, i32 0, i32 13
  store i32 0, ptr %iStatement13, align 8
  %24 = load i32, ptr %rc, align 4
  %cmp14 = icmp eq i32 %24, 0
  br i1 %cmp14, label %if.then15, label %if.end24

if.then15:                                        ; preds = %for.end
  %25 = load i32, ptr %eOp.addr, align 4
  %cmp16 = icmp eq i32 %25, 2
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then15
  %26 = load ptr, ptr %db, align 8
  %27 = load i32, ptr %iSavepoint, align 4
  %call18 = call i32 @sqlite3VtabSavepoint(ptr noundef %26, i32 noundef 2, i32 noundef %27)
  store i32 %call18, ptr %rc, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15
  %28 = load i32, ptr %rc, align 4
  %cmp20 = icmp eq i32 %28, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %29 = load ptr, ptr %db, align 8
  %30 = load i32, ptr %iSavepoint, align 4
  %call22 = call i32 @sqlite3VtabSavepoint(ptr noundef %29, i32 noundef 1, i32 noundef %30)
  store i32 %call22, ptr %rc, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %for.end
  %31 = load i32, ptr %eOp.addr, align 4
  %cmp25 = icmp eq i32 %31, 2
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end24
  %32 = load ptr, ptr %p.addr, align 8
  %nStmtDefCons = getelementptr inbounds nuw %struct.Vdbe, ptr %32, i32 0, i32 17
  %33 = load i64, ptr %nStmtDefCons, align 8
  %34 = load ptr, ptr %db, align 8
  %nDeferredCons = getelementptr inbounds nuw %struct.sqlite3, ptr %34, i32 0, i32 80
  store i64 %33, ptr %nDeferredCons, align 8
  %35 = load ptr, ptr %p.addr, align 8
  %nStmtDefImmCons = getelementptr inbounds nuw %struct.Vdbe, ptr %35, i32 0, i32 18
  %36 = load i64, ptr %nStmtDefImmCons, align 8
  %37 = load ptr, ptr %db, align 8
  %nDeferredImmCons = getelementptr inbounds nuw %struct.sqlite3, ptr %37, i32 0, i32 81
  store i64 %36, ptr %nDeferredImmCons, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24
  %38 = load i32, ptr %rc, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSavepoint(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabSavepoint(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
