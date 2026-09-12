; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTable(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprListNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectPrep(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ViewGetColumnNames(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @renameResolveTrigger(ptr noundef %pParse, ptr noundef %zDb) #1 {
entry:
  %pParse.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pStep = alloca ptr, align 8
  %sNC = alloca %struct.NameContext, align 8
  %rc = alloca i32, align 4
  %pTarget = alloca ptr, align 8
  %sSrc = alloca %struct.SrcList, align 8
  %pUpsert48 = alloca ptr, align 8
  %pUpsertSet = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 60
  %3 = load ptr, ptr %pNewTrigger, align 8
  store ptr %3, ptr %pNew, align 8
  store i32 0, ptr %rc, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %4 = load ptr, ptr %pParse.addr, align 8
  %pParse2 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %4, ptr %pParse2, align 8
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pNew, align 8
  %table = getelementptr inbounds nuw %struct.Trigger, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %table, align 8
  %8 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %aDb, align 8
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %pNew, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %pTabSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %10, ptr noundef %12)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %9, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %13 = load ptr, ptr %zDbSName, align 8
  %call3 = call ptr @sqlite3FindTable(ptr noundef %5, ptr noundef %7, ptr noundef %13)
  %14 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %14, i32 0, i32 36
  store ptr %call3, ptr %pTriggerTab, align 8
  %15 = load ptr, ptr %pNew, align 8
  %op = getelementptr inbounds nuw %struct.Trigger, ptr %15, i32 0, i32 2
  %16 = load i8, ptr %op, align 8
  %17 = load ptr, ptr %pParse.addr, align 8
  %eTriggerOp = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 42
  store i8 %16, ptr %eTriggerOp, align 8
  %18 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab4 = getelementptr inbounds nuw %struct.Parse, ptr %18, i32 0, i32 36
  %19 = load ptr, ptr %pTriggerTab4, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab5 = getelementptr inbounds nuw %struct.Parse, ptr %21, i32 0, i32 36
  %22 = load ptr, ptr %pTriggerTab5, align 8
  %call6 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %20, ptr noundef %22)
  store i32 %call6, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %23 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %24 = load ptr, ptr %pNew, align 8
  %pWhen = getelementptr inbounds nuw %struct.Trigger, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pWhen, align 8
  %tobool7 = icmp ne ptr %25, null
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  %26 = load ptr, ptr %pNew, align 8
  %pWhen9 = getelementptr inbounds nuw %struct.Trigger, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pWhen9, align 8
  %call10 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %27)
  store i32 %call10, ptr %rc, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true, %if.end
  %28 = load ptr, ptr %pNew, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %28, i32 0, i32 8
  %29 = load ptr, ptr %step_list, align 8
  store ptr %29, ptr %pStep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %30 = load i32, ptr %rc, align 4
  %cmp12 = icmp eq i32 %30, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %31 = load ptr, ptr %pStep, align 8
  %tobool13 = icmp ne ptr %31, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %32 = phi i1 [ false, %for.cond ], [ %tobool13, %land.rhs ]
  br i1 %32, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %33 = load ptr, ptr %pStep, align 8
  %pSelect = getelementptr inbounds nuw %struct.TriggerStep, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %pSelect, align 8
  %tobool14 = icmp ne ptr %34, null
  br i1 %tobool14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %for.body
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %pStep, align 8
  %pSelect16 = getelementptr inbounds nuw %struct.TriggerStep, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %pSelect16, align 8
  call void @sqlite3SelectPrep(ptr noundef %35, ptr noundef %37, ptr noundef %sNC)
  %38 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %38, i32 0, i32 16
  %39 = load i32, ptr %nErr, align 8
  %tobool17 = icmp ne i32 %39, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then15
  %40 = load ptr, ptr %pParse.addr, align 8
  %rc19 = getelementptr inbounds nuw %struct.Parse, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %rc19, align 8
  store i32 %41, ptr %rc, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %for.body
  %42 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %42, 0
  br i1 %cmp22, label %land.lhs.true23, label %if.end69

land.lhs.true23:                                  ; preds = %if.end21
  %43 = load ptr, ptr %pStep, align 8
  %zTarget = getelementptr inbounds nuw %struct.TriggerStep, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %zTarget, align 8
  %tobool24 = icmp ne ptr %44, null
  br i1 %tobool24, label %if.then25, label %if.end69

if.then25:                                        ; preds = %land.lhs.true23
  %45 = load ptr, ptr %pParse.addr, align 8
  %46 = load ptr, ptr %pStep, align 8
  %zTarget26 = getelementptr inbounds nuw %struct.TriggerStep, ptr %46, i32 0, i32 4
  %47 = load ptr, ptr %zTarget26, align 8
  %48 = load ptr, ptr %zDb.addr, align 8
  %call27 = call ptr @sqlite3LocateTable(ptr noundef %45, i32 noundef 0, ptr noundef %47, ptr noundef %48)
  store ptr %call27, ptr %pTarget, align 8
  %49 = load ptr, ptr %pTarget, align 8
  %cmp28 = icmp eq ptr %49, null
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then25
  store i32 1, ptr %rc, align 4
  br label %if.end68

if.else:                                          ; preds = %if.then25
  %50 = load ptr, ptr %pParse.addr, align 8
  %51 = load ptr, ptr %pTarget, align 8
  %call30 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %50, ptr noundef %51)
  store i32 %call30, ptr %rc, align 4
  %cmp31 = icmp eq i32 0, %call30
  br i1 %cmp31, label %if.then32, label %if.end67

if.then32:                                        ; preds = %if.else
  call void @llvm.memset.p0.i64(ptr align 8 %sSrc, i8 0, i64 120, i1 false)
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %sSrc, i32 0, i32 0
  store i32 1, ptr %nSrc, align 8
  %52 = load ptr, ptr %pStep, align 8
  %zTarget33 = getelementptr inbounds nuw %struct.TriggerStep, ptr %52, i32 0, i32 4
  %53 = load ptr, ptr %zTarget33, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %sSrc, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %zName = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx34, i32 0, i32 2
  store ptr %53, ptr %zName, align 8
  %54 = load ptr, ptr %pTarget, align 8
  %a35 = getelementptr inbounds nuw %struct.SrcList, ptr %sSrc, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a35, i64 0, i64 0
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx36, i32 0, i32 4
  store ptr %54, ptr %pTab, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %sSrc, ptr %pSrcList, align 8
  %55 = load ptr, ptr %pStep, align 8
  %pWhere = getelementptr inbounds nuw %struct.TriggerStep, ptr %55, i32 0, i32 5
  %56 = load ptr, ptr %pWhere, align 8
  %tobool37 = icmp ne ptr %56, null
  br i1 %tobool37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.then32
  %57 = load ptr, ptr %pStep, align 8
  %pWhere39 = getelementptr inbounds nuw %struct.TriggerStep, ptr %57, i32 0, i32 5
  %58 = load ptr, ptr %pWhere39, align 8
  %call40 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %58)
  store i32 %call40, ptr %rc, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.then32
  %59 = load i32, ptr %rc, align 4
  %cmp42 = icmp eq i32 %59, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end41
  %60 = load ptr, ptr %pStep, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %60, i32 0, i32 6
  %61 = load ptr, ptr %pExprList, align 8
  %call44 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %61)
  store i32 %call44, ptr %rc, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41
  %62 = load ptr, ptr %pStep, align 8
  %pUpsert = getelementptr inbounds nuw %struct.TriggerStep, ptr %62, i32 0, i32 8
  %63 = load ptr, ptr %pUpsert, align 8
  %tobool46 = icmp ne ptr %63, null
  br i1 %tobool46, label %if.then47, label %if.end65

if.then47:                                        ; preds = %if.end45
  %64 = load ptr, ptr %pStep, align 8
  %pUpsert49 = getelementptr inbounds nuw %struct.TriggerStep, ptr %64, i32 0, i32 8
  %65 = load ptr, ptr %pUpsert49, align 8
  store ptr %65, ptr %pUpsert48, align 8
  %66 = load ptr, ptr %pUpsert48, align 8
  %pUpsertSrc = getelementptr inbounds nuw %struct.Upsert, ptr %66, i32 0, i32 5
  store ptr %sSrc, ptr %pUpsertSrc, align 8
  %67 = load ptr, ptr %pUpsert48, align 8
  %uNC = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 2
  store ptr %67, ptr %uNC, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  store i32 512, ptr %ncFlags, align 8
  %68 = load ptr, ptr %pUpsert48, align 8
  %pUpsertTarget = getelementptr inbounds nuw %struct.Upsert, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %pUpsertTarget, align 8
  %call50 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %69)
  store i32 %call50, ptr %rc, align 4
  %70 = load i32, ptr %rc, align 4
  %cmp51 = icmp eq i32 %70, 0
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.then47
  %71 = load ptr, ptr %pUpsert48, align 8
  %pUpsertSet53 = getelementptr inbounds nuw %struct.Upsert, ptr %71, i32 0, i32 2
  %72 = load ptr, ptr %pUpsertSet53, align 8
  store ptr %72, ptr %pUpsertSet, align 8
  %73 = load ptr, ptr %pUpsertSet, align 8
  %call54 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %73)
  store i32 %call54, ptr %rc, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.then47
  %74 = load i32, ptr %rc, align 4
  %cmp56 = icmp eq i32 %74, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end55
  %75 = load ptr, ptr %pUpsert48, align 8
  %pUpsertWhere = getelementptr inbounds nuw %struct.Upsert, ptr %75, i32 0, i32 3
  %76 = load ptr, ptr %pUpsertWhere, align 8
  %call58 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %76)
  store i32 %call58, ptr %rc, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end55
  %77 = load i32, ptr %rc, align 4
  %cmp60 = icmp eq i32 %77, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end59
  %78 = load ptr, ptr %pUpsert48, align 8
  %pUpsertTargetWhere = getelementptr inbounds nuw %struct.Upsert, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %pUpsertTargetWhere, align 8
  %call62 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %79)
  store i32 %call62, ptr %rc, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end59
  %ncFlags64 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  store i32 0, ptr %ncFlags64, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %if.end45
  %pSrcList66 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr null, ptr %pSrcList66, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.end65, %if.else
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then29
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %land.lhs.true23, %if.end21
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %80 = load ptr, ptr %pStep, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerStep, ptr %80, i32 0, i32 10
  %81 = load ptr, ptr %pNext, align 8
  store ptr %81, ptr %pStep, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %82 = load i32, ptr %rc, align 4
  ret i32 %82
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
