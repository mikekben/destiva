; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.TriggerPrg = type { ptr, ptr, ptr, i32, [2 x i32] }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.SubProgram = type { ptr, i32, i32, i32, ptr, ptr, ptr }

@.str.801 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ParserReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeDelete(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @codeRowTrigger(ptr noundef %pParse, ptr noundef %pTrigger, ptr noundef %pTab, i32 noundef %orconf) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pTrigger.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %orconf.addr = alloca i32, align 4
  %pTop = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pPrg = alloca ptr, align 8
  %pWhen = alloca ptr, align 8
  %v = alloca ptr, align 8
  %sNC = alloca %struct.NameContext, align 8
  %pProgram = alloca ptr, align 8
  %pSubParse = alloca ptr, align 8
  %iEndTrigger = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTrigger, ptr %pTrigger.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %orconf, ptr %orconf.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pToplevel = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 35
  %1 = load ptr, ptr %pToplevel, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %pParse.addr, align 8
  %pToplevel1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 35
  %3 = load ptr, ptr %pToplevel1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ]
  store ptr %cond, ptr %pTop, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %db2, align 8
  store ptr %6, ptr %db, align 8
  store ptr null, ptr %pWhen, align 8
  store ptr null, ptr %pProgram, align 8
  store i32 0, ptr %iEndTrigger, align 4
  %7 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %7, i64 noundef 40)
  store ptr %call, ptr %pPrg, align 8
  %8 = load ptr, ptr %pPrg, align 8
  %tobool3 = icmp ne ptr %8, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load ptr, ptr %pTop, align 8
  %pTriggerPrg = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 65
  %10 = load ptr, ptr %pTriggerPrg, align 8
  %11 = load ptr, ptr %pPrg, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerPrg, ptr %11, i32 0, i32 1
  store ptr %10, ptr %pNext, align 8
  %12 = load ptr, ptr %pPrg, align 8
  %13 = load ptr, ptr %pTop, align 8
  %pTriggerPrg4 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 65
  store ptr %12, ptr %pTriggerPrg4, align 8
  %14 = load ptr, ptr %db, align 8
  %call5 = call ptr @sqlite3DbMallocZero(ptr noundef %14, i64 noundef 48)
  store ptr %call5, ptr %pProgram, align 8
  %15 = load ptr, ptr %pPrg, align 8
  %pProgram6 = getelementptr inbounds nuw %struct.TriggerPrg, ptr %15, i32 0, i32 2
  store ptr %call5, ptr %pProgram6, align 8
  %16 = load ptr, ptr %pProgram, align 8
  %tobool7 = icmp ne ptr %16, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.end
  %17 = load ptr, ptr %pTop, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pVdbe, align 8
  %19 = load ptr, ptr %pProgram, align 8
  call void @sqlite3VdbeLinkSubProgram(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %pTrigger.addr, align 8
  %21 = load ptr, ptr %pPrg, align 8
  %pTrigger10 = getelementptr inbounds nuw %struct.TriggerPrg, ptr %21, i32 0, i32 0
  store ptr %20, ptr %pTrigger10, align 8
  %22 = load i32, ptr %orconf.addr, align 4
  %23 = load ptr, ptr %pPrg, align 8
  %orconf11 = getelementptr inbounds nuw %struct.TriggerPrg, ptr %23, i32 0, i32 3
  store i32 %22, ptr %orconf11, align 8
  %24 = load ptr, ptr %pPrg, align 8
  %aColmask = getelementptr inbounds nuw %struct.TriggerPrg, ptr %24, i32 0, i32 4
  %arrayidx = getelementptr inbounds [2 x i32], ptr %aColmask, i64 0, i64 0
  store i32 -1, ptr %arrayidx, align 4
  %25 = load ptr, ptr %pPrg, align 8
  %aColmask12 = getelementptr inbounds nuw %struct.TriggerPrg, ptr %25, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [2 x i32], ptr %aColmask12, i64 0, i64 1
  store i32 -1, ptr %arrayidx13, align 4
  %26 = load ptr, ptr %db, align 8
  %call14 = call ptr @sqlite3DbMallocZero(ptr noundef %26, i64 noundef 416)
  store ptr %call14, ptr %pSubParse, align 8
  %27 = load ptr, ptr %pSubParse, align 8
  %tobool15 = icmp ne ptr %27, null
  br i1 %tobool15, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end9
  store ptr null, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.end9
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %28 = load ptr, ptr %pSubParse, align 8
  %pParse18 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %28, ptr %pParse18, align 8
  %29 = load ptr, ptr %db, align 8
  %30 = load ptr, ptr %pSubParse, align 8
  %db19 = getelementptr inbounds nuw %struct.Parse, ptr %30, i32 0, i32 0
  store ptr %29, ptr %db19, align 8
  %31 = load ptr, ptr %pTab.addr, align 8
  %32 = load ptr, ptr %pSubParse, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %32, i32 0, i32 36
  store ptr %31, ptr %pTriggerTab, align 8
  %33 = load ptr, ptr %pTop, align 8
  %34 = load ptr, ptr %pSubParse, align 8
  %pToplevel20 = getelementptr inbounds nuw %struct.Parse, ptr %34, i32 0, i32 35
  store ptr %33, ptr %pToplevel20, align 8
  %35 = load ptr, ptr %pTrigger.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Trigger, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %zName, align 8
  %37 = load ptr, ptr %pSubParse, align 8
  %zAuthContext = getelementptr inbounds nuw %struct.Parse, ptr %37, i32 0, i32 61
  store ptr %36, ptr %zAuthContext, align 8
  %38 = load ptr, ptr %pTrigger.addr, align 8
  %op = getelementptr inbounds nuw %struct.Trigger, ptr %38, i32 0, i32 2
  %39 = load i8, ptr %op, align 8
  %40 = load ptr, ptr %pSubParse, align 8
  %eTriggerOp = getelementptr inbounds nuw %struct.Parse, ptr %40, i32 0, i32 42
  store i8 %39, ptr %eTriggerOp, align 8
  %41 = load ptr, ptr %pParse.addr, align 8
  %nQueryLoop = getelementptr inbounds nuw %struct.Parse, ptr %41, i32 0, i32 39
  %42 = load i32, ptr %nQueryLoop, align 4
  %43 = load ptr, ptr %pSubParse, align 8
  %nQueryLoop21 = getelementptr inbounds nuw %struct.Parse, ptr %43, i32 0, i32 39
  store i32 %42, ptr %nQueryLoop21, align 4
  %44 = load ptr, ptr %pParse.addr, align 8
  %disableVtab = getelementptr inbounds nuw %struct.Parse, ptr %44, i32 0, i32 13
  %45 = load i8, ptr %disableVtab, align 1
  %46 = load ptr, ptr %pSubParse, align 8
  %disableVtab22 = getelementptr inbounds nuw %struct.Parse, ptr %46, i32 0, i32 13
  store i8 %45, ptr %disableVtab22, align 1
  %47 = load ptr, ptr %pSubParse, align 8
  %call23 = call ptr @sqlite3GetVdbe(ptr noundef %47)
  store ptr %call23, ptr %v, align 8
  %48 = load ptr, ptr %v, align 8
  %tobool24 = icmp ne ptr %48, null
  br i1 %tobool24, label %if.then25, label %if.end64

if.then25:                                        ; preds = %if.end17
  %49 = load ptr, ptr %pTrigger.addr, align 8
  %zName26 = getelementptr inbounds nuw %struct.Trigger, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %zName26, align 8
  %tobool27 = icmp ne ptr %50, null
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then25
  %51 = load ptr, ptr %v, align 8
  %52 = load ptr, ptr %db, align 8
  %53 = load ptr, ptr %pTrigger.addr, align 8
  %zName29 = getelementptr inbounds nuw %struct.Trigger, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %zName29, align 8
  %call30 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %52, ptr noundef @.str.801, ptr noundef %54)
  call void @sqlite3VdbeChangeP4(ptr noundef %51, i32 noundef -1, ptr noundef %call30, i32 noundef -7)
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then25
  %55 = load ptr, ptr %pTrigger.addr, align 8
  %pWhen32 = getelementptr inbounds nuw %struct.Trigger, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %pWhen32, align 8
  %tobool33 = icmp ne ptr %56, null
  br i1 %tobool33, label %if.then34, label %if.end43

if.then34:                                        ; preds = %if.end31
  %57 = load ptr, ptr %db, align 8
  %58 = load ptr, ptr %pTrigger.addr, align 8
  %pWhen35 = getelementptr inbounds nuw %struct.Trigger, ptr %58, i32 0, i32 4
  %59 = load ptr, ptr %pWhen35, align 8
  %call36 = call ptr @sqlite3ExprDup(ptr noundef %57, ptr noundef %59, i32 noundef 0)
  store ptr %call36, ptr %pWhen, align 8
  %60 = load ptr, ptr %pWhen, align 8
  %call37 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %60)
  %cmp = icmp eq i32 0, %call37
  br i1 %cmp, label %land.lhs.true, label %if.end42

land.lhs.true:                                    ; preds = %if.then34
  %61 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %61, i32 0, i32 19
  %62 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %62 to i32
  %cmp38 = icmp eq i32 %conv, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %land.lhs.true
  %63 = load ptr, ptr %pSubParse, align 8
  %call41 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %63)
  store i32 %call41, ptr %iEndTrigger, align 4
  %64 = load ptr, ptr %pSubParse, align 8
  %65 = load ptr, ptr %pWhen, align 8
  %66 = load i32, ptr %iEndTrigger, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %64, ptr noundef %65, i32 noundef %66, i32 noundef 16)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %land.lhs.true, %if.then34
  %67 = load ptr, ptr %db, align 8
  %68 = load ptr, ptr %pWhen, align 8
  call void @sqlite3ExprDelete(ptr noundef %67, ptr noundef %68)
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end31
  %69 = load ptr, ptr %pSubParse, align 8
  %70 = load ptr, ptr %pTrigger.addr, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %70, i32 0, i32 8
  %71 = load ptr, ptr %step_list, align 8
  %72 = load i32, ptr %orconf.addr, align 4
  %call44 = call i32 @codeTriggerProgram(ptr noundef %69, ptr noundef %71, i32 noundef %72)
  %73 = load i32, ptr %iEndTrigger, align 4
  %tobool45 = icmp ne i32 %73, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  %74 = load ptr, ptr %v, align 8
  %75 = load i32, ptr %iEndTrigger, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %74, i32 noundef %75)
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43
  %76 = load ptr, ptr %v, align 8
  %call48 = call i32 @sqlite3VdbeAddOp0(ptr noundef %76, i32 noundef 69)
  %77 = load ptr, ptr %pParse.addr, align 8
  %78 = load ptr, ptr %pSubParse, align 8
  call void @transferParseError(ptr noundef %77, ptr noundef %78)
  %79 = load ptr, ptr %db, align 8
  %mallocFailed49 = getelementptr inbounds nuw %struct.sqlite3, ptr %79, i32 0, i32 19
  %80 = load i8, ptr %mallocFailed49, align 1
  %conv50 = zext i8 %80 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %land.lhs.true53, label %if.end58

land.lhs.true53:                                  ; preds = %if.end47
  %81 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %81, i32 0, i32 16
  %82 = load i32, ptr %nErr, align 8
  %cmp54 = icmp eq i32 %82, 0
  br i1 %cmp54, label %if.then56, label %if.end58

if.then56:                                        ; preds = %land.lhs.true53
  %83 = load ptr, ptr %v, align 8
  %84 = load ptr, ptr %pProgram, align 8
  %nOp = getelementptr inbounds nuw %struct.SubProgram, ptr %84, i32 0, i32 1
  %85 = load ptr, ptr %pTop, align 8
  %nMaxArg = getelementptr inbounds nuw %struct.Parse, ptr %85, i32 0, i32 30
  %call57 = call ptr @sqlite3VdbeTakeOpArray(ptr noundef %83, ptr noundef %nOp, ptr noundef %nMaxArg)
  %86 = load ptr, ptr %pProgram, align 8
  %aOp = getelementptr inbounds nuw %struct.SubProgram, ptr %86, i32 0, i32 0
  store ptr %call57, ptr %aOp, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %land.lhs.true53, %if.end47
  %87 = load ptr, ptr %pSubParse, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %87, i32 0, i32 18
  %88 = load i32, ptr %nMem, align 8
  %89 = load ptr, ptr %pProgram, align 8
  %nMem59 = getelementptr inbounds nuw %struct.SubProgram, ptr %89, i32 0, i32 2
  store i32 %88, ptr %nMem59, align 4
  %90 = load ptr, ptr %pSubParse, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %90, i32 0, i32 17
  %91 = load i32, ptr %nTab, align 4
  %92 = load ptr, ptr %pProgram, align 8
  %nCsr = getelementptr inbounds nuw %struct.SubProgram, ptr %92, i32 0, i32 3
  store i32 %91, ptr %nCsr, align 8
  %93 = load ptr, ptr %pTrigger.addr, align 8
  %94 = load ptr, ptr %pProgram, align 8
  %token = getelementptr inbounds nuw %struct.SubProgram, ptr %94, i32 0, i32 5
  store ptr %93, ptr %token, align 8
  %95 = load ptr, ptr %pSubParse, align 8
  %oldmask = getelementptr inbounds nuw %struct.Parse, ptr %95, i32 0, i32 40
  %96 = load i32, ptr %oldmask, align 8
  %97 = load ptr, ptr %pPrg, align 8
  %aColmask60 = getelementptr inbounds nuw %struct.TriggerPrg, ptr %97, i32 0, i32 4
  %arrayidx61 = getelementptr inbounds [2 x i32], ptr %aColmask60, i64 0, i64 0
  store i32 %96, ptr %arrayidx61, align 4
  %98 = load ptr, ptr %pSubParse, align 8
  %newmask = getelementptr inbounds nuw %struct.Parse, ptr %98, i32 0, i32 41
  %99 = load i32, ptr %newmask, align 4
  %100 = load ptr, ptr %pPrg, align 8
  %aColmask62 = getelementptr inbounds nuw %struct.TriggerPrg, ptr %100, i32 0, i32 4
  %arrayidx63 = getelementptr inbounds [2 x i32], ptr %aColmask62, i64 0, i64 1
  store i32 %99, ptr %arrayidx63, align 4
  %101 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeDelete(ptr noundef %101)
  br label %if.end64

if.end64:                                         ; preds = %if.end58, %if.end17
  %102 = load ptr, ptr %pSubParse, align 8
  call void @sqlite3ParserReset(ptr noundef %102)
  %103 = load ptr, ptr %db, align 8
  %104 = load ptr, ptr %pSubParse, align 8
  call void @sqlite3DbFree(ptr noundef %103, ptr noundef %104)
  %105 = load ptr, ptr %pPrg, align 8
  store ptr %105, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end64, %if.then16, %if.then8, %if.then
  %106 = load ptr, ptr %retval, align 8
  ret ptr %106
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeLinkSubProgram(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @codeTriggerProgram(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @transferParseError(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeTakeOpArray(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
