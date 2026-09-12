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
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3LeaveMutexAndCloseZombie(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %j = alloca i32, align 4
  %pDb = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %magic = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 30
  %1 = load i32, ptr %magic, align 8
  %cmp = icmp ne i32 %1, 1691352191
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %call = call i32 @connectionIsBusy(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %4)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %db.addr, align 8
  call void @sqlite3RollbackAll(ptr noundef %5, i32 noundef 0)
  %6 = load ptr, ptr %db.addr, align 8
  call void @sqlite3CloseSavepoints(ptr noundef %6)
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %j, align 4
  %8 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %nDb, align 8
  %cmp1 = icmp slt i32 %7, %9
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %aDb, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %11, i64 %idxprom
  store ptr %arrayidx, ptr %pDb, align 8
  %13 = load ptr, ptr %pDb, align 8
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %pBt, align 8
  %tobool2 = icmp ne ptr %14, null
  br i1 %tobool2, label %if.then3, label %if.end10

if.then3:                                         ; preds = %for.body
  %15 = load ptr, ptr %pDb, align 8
  %pBt4 = getelementptr inbounds nuw %struct.Db, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pBt4, align 8
  %call5 = call i32 @sqlite3BtreeClose(ptr noundef %16)
  %17 = load ptr, ptr %pDb, align 8
  %pBt6 = getelementptr inbounds nuw %struct.Db, ptr %17, i32 0, i32 1
  store ptr null, ptr %pBt6, align 8
  %18 = load i32, ptr %j, align 4
  %cmp7 = icmp ne i32 %18, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then3
  %19 = load ptr, ptr %pDb, align 8
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %19, i32 0, i32 4
  store ptr null, ptr %pSchema, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then3
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %db.addr, align 8
  %aDb11 = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %aDb11, align 8
  %arrayidx12 = getelementptr inbounds %struct.Db, ptr %22, i64 1
  %pSchema13 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx12, i32 0, i32 4
  %23 = load ptr, ptr %pSchema13, align 8
  %tobool14 = icmp ne ptr %23, null
  br i1 %tobool14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %for.end
  %24 = load ptr, ptr %db.addr, align 8
  %aDb16 = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %aDb16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Db, ptr %25, i64 1
  %pSchema18 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx17, i32 0, i32 4
  %26 = load ptr, ptr %pSchema18, align 8
  call void @sqlite3SchemaClear(ptr noundef %26)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %for.end
  %27 = load ptr, ptr %db.addr, align 8
  call void @sqlite3VtabUnlockList(ptr noundef %27)
  %28 = load ptr, ptr %db.addr, align 8
  call void @sqlite3CollapseDatabaseArray(ptr noundef %28)
  %29 = load ptr, ptr %db.addr, align 8
  %aFunc = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 72
  %first = getelementptr inbounds nuw %struct.Hash, ptr %aFunc, i32 0, i32 2
  %30 = load ptr, ptr %first, align 8
  store ptr %30, ptr %i, align 8
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %if.end19
  %31 = load ptr, ptr %i, align 8
  %tobool21 = icmp ne ptr %31, null
  br i1 %tobool21, label %for.body22, label %for.end26

for.body22:                                       ; preds = %for.cond20
  %32 = load ptr, ptr %i, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %data, align 8
  store ptr %33, ptr %p, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body22
  %34 = load ptr, ptr %db.addr, align 8
  %35 = load ptr, ptr %p, align 8
  call void @functionDestroy(ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %p, align 8
  %pNext23 = getelementptr inbounds nuw %struct.FuncDef, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %pNext23, align 8
  store ptr %37, ptr %pNext, align 8
  %38 = load ptr, ptr %db.addr, align 8
  %39 = load ptr, ptr %p, align 8
  call void @sqlite3DbFree(ptr noundef %38, ptr noundef %39)
  %40 = load ptr, ptr %pNext, align 8
  store ptr %40, ptr %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %41 = load ptr, ptr %p, align 8
  %tobool24 = icmp ne ptr %41, null
  br i1 %tobool24, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %for.inc25

for.inc25:                                        ; preds = %do.end
  %42 = load ptr, ptr %i, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %next, align 8
  store ptr %43, ptr %i, align 8
  br label %for.cond20, !llvm.loop !9

for.end26:                                        ; preds = %for.cond20
  %44 = load ptr, ptr %db.addr, align 8
  %aFunc27 = getelementptr inbounds nuw %struct.sqlite3, ptr %44, i32 0, i32 72
  call void @sqlite3HashClear(ptr noundef %aFunc27)
  %45 = load ptr, ptr %db.addr, align 8
  %aCollSeq = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 73
  %first28 = getelementptr inbounds nuw %struct.Hash, ptr %aCollSeq, i32 0, i32 2
  %46 = load ptr, ptr %first28, align 8
  store ptr %46, ptr %i, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc49, %for.end26
  %47 = load ptr, ptr %i, align 8
  %tobool30 = icmp ne ptr %47, null
  br i1 %tobool30, label %for.body31, label %for.end51

for.body31:                                       ; preds = %for.cond29
  %48 = load ptr, ptr %i, align 8
  %data32 = getelementptr inbounds nuw %struct.HashElem, ptr %48, i32 0, i32 2
  %49 = load ptr, ptr %data32, align 8
  store ptr %49, ptr %pColl, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc46, %for.body31
  %50 = load i32, ptr %j, align 4
  %cmp34 = icmp slt i32 %50, 3
  br i1 %cmp34, label %for.body35, label %for.end48

for.body35:                                       ; preds = %for.cond33
  %51 = load ptr, ptr %pColl, align 8
  %52 = load i32, ptr %j, align 4
  %idxprom36 = sext i32 %52 to i64
  %arrayidx37 = getelementptr inbounds %struct.CollSeq, ptr %51, i64 %idxprom36
  %xDel = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx37, i32 0, i32 4
  %53 = load ptr, ptr %xDel, align 8
  %tobool38 = icmp ne ptr %53, null
  br i1 %tobool38, label %if.then39, label %if.end45

if.then39:                                        ; preds = %for.body35
  %54 = load ptr, ptr %pColl, align 8
  %55 = load i32, ptr %j, align 4
  %idxprom40 = sext i32 %55 to i64
  %arrayidx41 = getelementptr inbounds %struct.CollSeq, ptr %54, i64 %idxprom40
  %xDel42 = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx41, i32 0, i32 4
  %56 = load ptr, ptr %xDel42, align 8
  %57 = load ptr, ptr %pColl, align 8
  %58 = load i32, ptr %j, align 4
  %idxprom43 = sext i32 %58 to i64
  %arrayidx44 = getelementptr inbounds %struct.CollSeq, ptr %57, i64 %idxprom43
  %pUser = getelementptr inbounds nuw %struct.CollSeq, ptr %arrayidx44, i32 0, i32 2
  %59 = load ptr, ptr %pUser, align 8
  call void %56(ptr noundef %59)
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %for.body35
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %60 = load i32, ptr %j, align 4
  %inc47 = add nsw i32 %60, 1
  store i32 %inc47, ptr %j, align 4
  br label %for.cond33, !llvm.loop !10

for.end48:                                        ; preds = %for.cond33
  %61 = load ptr, ptr %db.addr, align 8
  %62 = load ptr, ptr %pColl, align 8
  call void @sqlite3DbFree(ptr noundef %61, ptr noundef %62)
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %63 = load ptr, ptr %i, align 8
  %next50 = getelementptr inbounds nuw %struct.HashElem, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %next50, align 8
  store ptr %64, ptr %i, align 8
  br label %for.cond29, !llvm.loop !11

for.end51:                                        ; preds = %for.cond29
  %65 = load ptr, ptr %db.addr, align 8
  %aCollSeq52 = getelementptr inbounds nuw %struct.sqlite3, ptr %65, i32 0, i32 73
  call void @sqlite3HashClear(ptr noundef %aCollSeq52)
  %66 = load ptr, ptr %db.addr, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %66, i32 0, i32 68
  %first53 = getelementptr inbounds nuw %struct.Hash, ptr %aModule, i32 0, i32 2
  %67 = load ptr, ptr %first53, align 8
  store ptr %67, ptr %i, align 8
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc58, %for.end51
  %68 = load ptr, ptr %i, align 8
  %tobool55 = icmp ne ptr %68, null
  br i1 %tobool55, label %for.body56, label %for.end60

for.body56:                                       ; preds = %for.cond54
  %69 = load ptr, ptr %i, align 8
  %data57 = getelementptr inbounds nuw %struct.HashElem, ptr %69, i32 0, i32 2
  %70 = load ptr, ptr %data57, align 8
  store ptr %70, ptr %pMod, align 8
  %71 = load ptr, ptr %db.addr, align 8
  %72 = load ptr, ptr %pMod, align 8
  call void @sqlite3VtabEponymousTableClear(ptr noundef %71, ptr noundef %72)
  %73 = load ptr, ptr %db.addr, align 8
  %74 = load ptr, ptr %pMod, align 8
  call void @sqlite3VtabModuleUnref(ptr noundef %73, ptr noundef %74)
  br label %for.inc58

for.inc58:                                        ; preds = %for.body56
  %75 = load ptr, ptr %i, align 8
  %next59 = getelementptr inbounds nuw %struct.HashElem, ptr %75, i32 0, i32 0
  %76 = load ptr, ptr %next59, align 8
  store ptr %76, ptr %i, align 8
  br label %for.cond54, !llvm.loop !12

for.end60:                                        ; preds = %for.cond54
  %77 = load ptr, ptr %db.addr, align 8
  %aModule61 = getelementptr inbounds nuw %struct.sqlite3, ptr %77, i32 0, i32 68
  call void @sqlite3HashClear(ptr noundef %aModule61)
  %78 = load ptr, ptr %db.addr, align 8
  call void @sqlite3Error(ptr noundef %78, i32 noundef 0)
  %79 = load ptr, ptr %db.addr, align 8
  %pErr = getelementptr inbounds nuw %struct.sqlite3, ptr %79, i32 0, i32 59
  %80 = load ptr, ptr %pErr, align 8
  call void @sqlite3ValueFree(ptr noundef %80)
  %81 = load ptr, ptr %db.addr, align 8
  call void @sqlite3CloseExtensions(ptr noundef %81)
  %82 = load ptr, ptr %db.addr, align 8
  %magic62 = getelementptr inbounds nuw %struct.sqlite3, ptr %82, i32 0, i32 30
  store i32 -1254786768, ptr %magic62, align 8
  %83 = load ptr, ptr %db.addr, align 8
  %84 = load ptr, ptr %db.addr, align 8
  %aDb63 = getelementptr inbounds nuw %struct.sqlite3, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %aDb63, align 8
  %arrayidx64 = getelementptr inbounds %struct.Db, ptr %85, i64 1
  %pSchema65 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx64, i32 0, i32 4
  %86 = load ptr, ptr %pSchema65, align 8
  call void @sqlite3DbFree(ptr noundef %83, ptr noundef %86)
  %87 = load ptr, ptr %db.addr, align 8
  %mutex66 = getelementptr inbounds nuw %struct.sqlite3, ptr %87, i32 0, i32 3
  %88 = load ptr, ptr %mutex66, align 8
  call void @sqlite3_mutex_leave(ptr noundef %88)
  %89 = load ptr, ptr %db.addr, align 8
  %magic67 = getelementptr inbounds nuw %struct.sqlite3, ptr %89, i32 0, i32 30
  store i32 -1623446221, ptr %magic67, align 8
  %90 = load ptr, ptr %db.addr, align 8
  %mutex68 = getelementptr inbounds nuw %struct.sqlite3, ptr %90, i32 0, i32 3
  %91 = load ptr, ptr %mutex68, align 8
  call void @sqlite3_mutex_free(ptr noundef %91)
  %92 = load ptr, ptr %db.addr, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %92, i32 0, i32 61
  %bMalloced = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 2
  %93 = load i8, ptr %bMalloced, align 2
  %tobool69 = icmp ne i8 %93, 0
  br i1 %tobool69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %for.end60
  %94 = load ptr, ptr %db.addr, align 8
  %lookaside71 = getelementptr inbounds nuw %struct.sqlite3, ptr %94, i32 0, i32 61
  %pStart = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside71, i32 0, i32 7
  %95 = load ptr, ptr %pStart, align 8
  call void @sqlite3_free(ptr noundef %95)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %for.end60
  %96 = load ptr, ptr %db.addr, align 8
  call void @sqlite3_free(ptr noundef %96)
  br label %return

return:                                           ; preds = %if.end72, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabModuleUnref(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RollbackAll(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CloseSavepoints(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SchemaClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HashClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabEponymousTableClear(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlockList(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CollapseDatabaseArray(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @connectionIsBusy(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @functionDestroy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CloseExtensions(ptr noundef) #0

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
