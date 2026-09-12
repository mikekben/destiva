; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlock(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VtabSavepoint(ptr noundef %db, i32 noundef %op, i32 noundef %iSavepoint) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %iSavepoint.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %pVTab = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %xMethod = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %iSavepoint, ptr %iSavepoint.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %aVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 70
  %1 = load ptr, ptr %aVTrans, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %db.addr, align 8
  %nVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 67
  %5 = load i32, ptr %nVTrans, align 4
  %cmp1 = icmp slt i32 %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %db.addr, align 8
  %aVTrans2 = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 70
  %8 = load ptr, ptr %aVTrans2, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  store ptr %10, ptr %pVTab, align 8
  %11 = load ptr, ptr %pVTab, align 8
  %pMod3 = getelementptr inbounds nuw %struct.VTable, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pMod3, align 8
  %pModule = getelementptr inbounds nuw %struct.Module, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pModule, align 8
  store ptr %13, ptr %pMod, align 8
  %14 = load ptr, ptr %pVTab, align 8
  %pVtab = getelementptr inbounds nuw %struct.VTable, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pVtab, align 8
  %tobool4 = icmp ne ptr %15, null
  br i1 %tobool4, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %for.body
  %16 = load ptr, ptr %pMod, align 8
  %iVersion = getelementptr inbounds nuw %struct.sqlite3_module, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %iVersion, align 8
  %cmp5 = icmp sge i32 %17, 2
  br i1 %cmp5, label %if.then6, label %if.end15

if.then6:                                         ; preds = %land.lhs.true
  %18 = load ptr, ptr %pVTab, align 8
  call void @sqlite3VtabLock(ptr noundef %18)
  %19 = load i32, ptr %op.addr, align 4
  switch i32 %19, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.then6
  %20 = load ptr, ptr %pMod, align 8
  %xSavepoint = getelementptr inbounds nuw %struct.sqlite3_module, ptr %20, i32 0, i32 20
  %21 = load ptr, ptr %xSavepoint, align 8
  store ptr %21, ptr %xMethod, align 8
  %22 = load i32, ptr %iSavepoint.addr, align 4
  %add = add nsw i32 %22, 1
  %23 = load ptr, ptr %pVTab, align 8
  %iSavepoint7 = getelementptr inbounds nuw %struct.VTable, ptr %23, i32 0, i32 5
  store i32 %add, ptr %iSavepoint7, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then6
  %24 = load ptr, ptr %pMod, align 8
  %xRollbackTo = getelementptr inbounds nuw %struct.sqlite3_module, ptr %24, i32 0, i32 22
  %25 = load ptr, ptr %xRollbackTo, align 8
  store ptr %25, ptr %xMethod, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then6
  %26 = load ptr, ptr %pMod, align 8
  %xRelease = getelementptr inbounds nuw %struct.sqlite3_module, ptr %26, i32 0, i32 21
  %27 = load ptr, ptr %xRelease, align 8
  store ptr %27, ptr %xMethod, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb
  %28 = load ptr, ptr %xMethod, align 8
  %tobool9 = icmp ne ptr %28, null
  br i1 %tobool9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %sw.epilog
  %29 = load ptr, ptr %pVTab, align 8
  %iSavepoint11 = getelementptr inbounds nuw %struct.VTable, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %iSavepoint11, align 8
  %31 = load i32, ptr %iSavepoint.addr, align 4
  %cmp12 = icmp sgt i32 %30, %31
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %land.lhs.true10
  %32 = load ptr, ptr %xMethod, align 8
  %33 = load ptr, ptr %pVTab, align 8
  %pVtab14 = getelementptr inbounds nuw %struct.VTable, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %pVtab14, align 8
  %35 = load i32, ptr %iSavepoint.addr, align 4
  %call = call i32 %32(ptr noundef %34, i32 noundef %35)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true10, %sw.epilog
  %36 = load ptr, ptr %pVTab, align 8
  call void @sqlite3VtabUnlock(ptr noundef %36)
  br label %if.end15

if.end15:                                         ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  br label %if.end16

if.end16:                                         ; preds = %for.end, %entry
  %38 = load i32, ptr %rc, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabLock(ptr noundef) #0

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
