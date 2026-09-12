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

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlock(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @callFinaliser(ptr noundef %db, i32 noundef %offset) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %aVTrans1 = alloca ptr, align 8
  %pVTab = alloca ptr, align 8
  %p = alloca ptr, align 8
  %x = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %aVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 70
  %1 = load ptr, ptr %aVTrans, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %aVTrans2 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 70
  %3 = load ptr, ptr %aVTrans2, align 8
  store ptr %3, ptr %aVTrans1, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %aVTrans3 = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 70
  store ptr null, ptr %aVTrans3, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %db.addr, align 8
  %nVTrans = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 67
  %7 = load i32, ptr %nVTrans, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %aVTrans1, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  store ptr %10, ptr %pVTab, align 8
  %11 = load ptr, ptr %pVTab, align 8
  %pVtab = getelementptr inbounds nuw %struct.VTable, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pVtab, align 8
  store ptr %12, ptr %p, align 8
  %13 = load ptr, ptr %p, align 8
  %tobool4 = icmp ne ptr %13, null
  br i1 %tobool4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %for.body
  %14 = load ptr, ptr %p, align 8
  %pModule = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pModule, align 8
  %16 = load i32, ptr %offset.addr, align 4
  %idx.ext = sext i32 %16 to i64
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 %idx.ext
  %17 = load ptr, ptr %add.ptr, align 8
  store ptr %17, ptr %x, align 8
  %18 = load ptr, ptr %x, align 8
  %tobool6 = icmp ne ptr %18, null
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then5
  %19 = load ptr, ptr %x, align 8
  %20 = load ptr, ptr %p, align 8
  %call = call i32 %19(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  %21 = load ptr, ptr %pVTab, align 8
  %iSavepoint = getelementptr inbounds nuw %struct.VTable, ptr %21, i32 0, i32 5
  store i32 0, ptr %iSavepoint, align 8
  %22 = load ptr, ptr %pVTab, align 8
  call void @sqlite3VtabUnlock(ptr noundef %22)
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load ptr, ptr %aVTrans1, align 8
  call void @sqlite3DbFree(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %db.addr, align 8
  %nVTrans9 = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 67
  store i32 0, ptr %nVTrans9, align 4
  br label %if.end10

if.end10:                                         ; preds = %for.end, %entry
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
