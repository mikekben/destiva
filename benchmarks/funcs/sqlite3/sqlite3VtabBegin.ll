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
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VtabBegin(ptr noundef %db, ptr noundef %pVTab) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pVTab.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pModule = alloca ptr, align 8
  %i = alloca i32, align 4
  %iSvpt = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pVTab, ptr %pVTab.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %nVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 67
  %1 = load i32, ptr %nVTrans, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %aVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 70
  %3 = load ptr, ptr %aVTrans, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %pVTab.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pVTab.addr, align 8
  %pVtab = getelementptr inbounds nuw %struct.VTable, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pVtab, align 8
  %pModule4 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pModule4, align 8
  store ptr %7, ptr %pModule, align 8
  %8 = load ptr, ptr %pModule, align 8
  %xBegin = getelementptr inbounds nuw %struct.sqlite3_module, ptr %8, i32 0, i32 14
  %9 = load ptr, ptr %xBegin, align 8
  %tobool5 = icmp ne ptr %9, null
  br i1 %tobool5, label %if.then6, label %if.end30

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %10 = load i32, ptr %i, align 4
  %11 = load ptr, ptr %db.addr, align 8
  %nVTrans7 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 67
  %12 = load i32, ptr %nVTrans7, align 4
  %cmp8 = icmp slt i32 %10, %12
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %db.addr, align 8
  %aVTrans9 = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 70
  %14 = load ptr, ptr %aVTrans9, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %arrayidx, align 8
  %17 = load ptr, ptr %pVTab.addr, align 8
  %cmp10 = icmp eq ptr %16, %17
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %db.addr, align 8
  %call = call i32 @growVTrans(ptr noundef %19)
  store i32 %call, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %20, 0
  br i1 %cmp13, label %if.then14, label %if.end29

if.then14:                                        ; preds = %for.end
  %21 = load ptr, ptr %pModule, align 8
  %xBegin15 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %21, i32 0, i32 14
  %22 = load ptr, ptr %xBegin15, align 8
  %23 = load ptr, ptr %pVTab.addr, align 8
  %pVtab16 = getelementptr inbounds nuw %struct.VTable, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %pVtab16, align 8
  %call17 = call i32 %22(ptr noundef %24)
  store i32 %call17, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 %25, 0
  br i1 %cmp18, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.then14
  %26 = load ptr, ptr %db.addr, align 8
  %nStatement = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 79
  %27 = load i32, ptr %nStatement, align 8
  %28 = load ptr, ptr %db.addr, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.sqlite3, ptr %28, i32 0, i32 78
  %29 = load i32, ptr %nSavepoint, align 4
  %add = add nsw i32 %27, %29
  store i32 %add, ptr %iSvpt, align 4
  %30 = load ptr, ptr %db.addr, align 8
  %31 = load ptr, ptr %pVTab.addr, align 8
  call void @addToVTrans(ptr noundef %30, ptr noundef %31)
  %32 = load i32, ptr %iSvpt, align 4
  %tobool20 = icmp ne i32 %32, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.end27

land.lhs.true21:                                  ; preds = %if.then19
  %33 = load ptr, ptr %pModule, align 8
  %xSavepoint = getelementptr inbounds nuw %struct.sqlite3_module, ptr %33, i32 0, i32 20
  %34 = load ptr, ptr %xSavepoint, align 8
  %tobool22 = icmp ne ptr %34, null
  br i1 %tobool22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %land.lhs.true21
  %35 = load i32, ptr %iSvpt, align 4
  %36 = load ptr, ptr %pVTab.addr, align 8
  %iSavepoint = getelementptr inbounds nuw %struct.VTable, ptr %36, i32 0, i32 5
  store i32 %35, ptr %iSavepoint, align 8
  %37 = load ptr, ptr %pModule, align 8
  %xSavepoint24 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %37, i32 0, i32 20
  %38 = load ptr, ptr %xSavepoint24, align 8
  %39 = load ptr, ptr %pVTab.addr, align 8
  %pVtab25 = getelementptr inbounds nuw %struct.VTable, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %pVtab25, align 8
  %41 = load i32, ptr %iSvpt, align 4
  %sub = sub nsw i32 %41, 1
  %call26 = call i32 %38(ptr noundef %40, i32 noundef %sub)
  store i32 %call26, ptr %rc, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true21, %if.then19
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then14
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %for.end
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end3
  %42 = load i32, ptr %rc, align 4
  store i32 %42, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then11, %if.then2, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

; Function Attrs: nounwind uwtable
declare hidden i32 @growVTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @addToVTrans(ptr noundef, ptr noundef) #0

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
