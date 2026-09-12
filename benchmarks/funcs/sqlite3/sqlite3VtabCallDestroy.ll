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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlock(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VtabCallDestroy(ptr noundef %db, i32 noundef %iDb, ptr noundef %zTab) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %zTab.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %p = alloca ptr, align 8
  %xDestroy = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %zTab, ptr %zTab.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %zTab.addr, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aDb, align 8
  %4 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %3, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %5 = load ptr, ptr %zDbSName, align 8
  %call = call ptr @sqlite3FindTable(ptr noundef %0, ptr noundef %1, ptr noundef %5)
  store ptr %call, ptr %pTab, align 8
  %6 = load ptr, ptr %pTab, align 8
  %cmp = icmp ne ptr %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %pTab, align 8
  %pVTable = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 18
  %8 = load ptr, ptr %pVTable, align 8
  %cmp1 = icmp ne ptr %8, null
  br i1 %cmp1, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %pTab, align 8
  %pVTable2 = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 18
  %10 = load ptr, ptr %pVTable2, align 8
  store ptr %10, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %p, align 8
  %pVtab = getelementptr inbounds nuw %struct.VTable, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pVtab, align 8
  %nRef = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nRef, align 8
  %cmp3 = icmp sgt i32 %14, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  store i32 6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.VTable, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %pNext, align 8
  store ptr %16, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %db.addr, align 8
  %18 = load ptr, ptr %pTab, align 8
  %call5 = call ptr @vtabDisconnectAll(ptr noundef %17, ptr noundef %18)
  store ptr %call5, ptr %p, align 8
  %19 = load ptr, ptr %p, align 8
  %pMod = getelementptr inbounds nuw %struct.VTable, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pMod, align 8
  %pModule = getelementptr inbounds nuw %struct.Module, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pModule, align 8
  %xDestroy6 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %xDestroy6, align 8
  store ptr %22, ptr %xDestroy, align 8
  %23 = load ptr, ptr %pTab, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %23, i32 0, i32 8
  %24 = load i32, ptr %nTabRef, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %nTabRef, align 4
  %25 = load ptr, ptr %xDestroy, align 8
  %26 = load ptr, ptr %p, align 8
  %pVtab7 = getelementptr inbounds nuw %struct.VTable, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pVtab7, align 8
  %call8 = call i32 %25(ptr noundef %27)
  store i32 %call8, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %28, 0
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %for.end
  %29 = load ptr, ptr %p, align 8
  %pVtab11 = getelementptr inbounds nuw %struct.VTable, ptr %29, i32 0, i32 2
  store ptr null, ptr %pVtab11, align 8
  %30 = load ptr, ptr %pTab, align 8
  %pVTable12 = getelementptr inbounds nuw %struct.Table, ptr %30, i32 0, i32 18
  store ptr null, ptr %pVTable12, align 8
  %31 = load ptr, ptr %p, align 8
  call void @sqlite3VtabUnlock(ptr noundef %31)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.end
  %32 = load ptr, ptr %db.addr, align 8
  %33 = load ptr, ptr %pTab, align 8
  call void @sqlite3DeleteTable(ptr noundef %32, ptr noundef %33)
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %land.lhs.true, %entry
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then4
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
declare hidden ptr @vtabDisconnectAll(ptr noundef, ptr noundef) #0

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
