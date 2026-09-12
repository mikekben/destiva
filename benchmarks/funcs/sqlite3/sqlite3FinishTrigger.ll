; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DbFixer = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.22 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.873 = external hidden unnamed_addr constant [64 x i8], align 1
@.str.874 = external hidden unnamed_addr constant [29 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTriggerStep(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3FinishTrigger(ptr noundef %pParse, ptr noundef %pStepList, ptr noundef %pAll) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pStepList.addr = alloca ptr, align 8
  %pAll.addr = alloca ptr, align 8
  %pTrig = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %db = alloca ptr, align 8
  %sFix = alloca %struct.DbFixer, align 8
  %iDb = alloca i32, align 4
  %nameToken = alloca %struct.Token, align 8
  %v = alloca ptr, align 8
  %z = alloca ptr, align 8
  %pLink = alloca ptr, align 8
  %pHash = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pStepList, ptr %pStepList.addr, align 8
  store ptr %pAll, ptr %pAll.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 60
  %1 = load ptr, ptr %pNewTrigger, align 8
  store ptr %1, ptr %pTrig, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pParse.addr, align 8
  %pNewTrigger2 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 60
  store ptr null, ptr %pNewTrigger2, align 8
  %5 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 16
  %6 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load ptr, ptr %pTrig, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %triggerfinish_cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %pTrig, align 8
  %zName4 = getelementptr inbounds nuw %struct.Trigger, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %zName4, align 8
  store ptr %9, ptr %zName, align 8
  %10 = load ptr, ptr %pParse.addr, align 8
  %db5 = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %db5, align 8
  %12 = load ptr, ptr %pTrig, align 8
  %pSchema = getelementptr inbounds nuw %struct.Trigger, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %11, ptr noundef %13)
  store i32 %call, ptr %iDb, align 4
  %14 = load ptr, ptr %pStepList.addr, align 8
  %15 = load ptr, ptr %pTrig, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %15, i32 0, i32 8
  store ptr %14, ptr %step_list, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %16 = load ptr, ptr %pStepList.addr, align 8
  %tobool6 = icmp ne ptr %16, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %pTrig, align 8
  %18 = load ptr, ptr %pStepList.addr, align 8
  %pTrig7 = getelementptr inbounds nuw %struct.TriggerStep, ptr %18, i32 0, i32 2
  store ptr %17, ptr %pTrig7, align 8
  %19 = load ptr, ptr %pStepList.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerStep, ptr %19, i32 0, i32 10
  %20 = load ptr, ptr %pNext, align 8
  store ptr %20, ptr %pStepList.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %21 = load ptr, ptr %pTrig, align 8
  %zName8 = getelementptr inbounds nuw %struct.Trigger, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zName8, align 8
  call void @sqlite3TokenInit(ptr noundef %nameToken, ptr noundef %22)
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load i32, ptr %iDb, align 4
  call void @sqlite3FixInit(ptr noundef %sFix, ptr noundef %23, i32 noundef %24, ptr noundef @.str.22, ptr noundef %nameToken)
  %25 = load ptr, ptr %pTrig, align 8
  %step_list9 = getelementptr inbounds nuw %struct.Trigger, ptr %25, i32 0, i32 8
  %26 = load ptr, ptr %step_list9, align 8
  %call10 = call i32 @sqlite3FixTriggerStep(ptr noundef %sFix, ptr noundef %26)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then15, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %while.end
  %27 = load ptr, ptr %pTrig, align 8
  %pWhen = getelementptr inbounds nuw %struct.Trigger, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %pWhen, align 8
  %call13 = call i32 @sqlite3FixExpr(ptr noundef %sFix, ptr noundef %28)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %lor.lhs.false12, %while.end
  br label %triggerfinish_cleanup

if.end16:                                         ; preds = %lor.lhs.false12
  %29 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %29, i32 0, i32 51
  %30 = load i8, ptr %eParseMode, align 4
  %conv = zext i8 %30 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %31 = load ptr, ptr %pTrig, align 8
  %32 = load ptr, ptr %pParse.addr, align 8
  %pNewTrigger19 = getelementptr inbounds nuw %struct.Parse, ptr %32, i32 0, i32 60
  store ptr %31, ptr %pNewTrigger19, align 8
  store ptr null, ptr %pTrig, align 8
  br label %if.end32

if.else:                                          ; preds = %if.end16
  %33 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %34 = load i8, ptr %busy, align 1
  %tobool20 = icmp ne i8 %34, 0
  br i1 %tobool20, label %if.end31, label %if.then21

if.then21:                                        ; preds = %if.else
  %35 = load ptr, ptr %pParse.addr, align 8
  %call22 = call ptr @sqlite3GetVdbe(ptr noundef %35)
  store ptr %call22, ptr %v, align 8
  %36 = load ptr, ptr %v, align 8
  %cmp23 = icmp eq ptr %36, null
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  br label %triggerfinish_cleanup

if.end26:                                         ; preds = %if.then21
  %37 = load ptr, ptr %pParse.addr, align 8
  %38 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %37, i32 noundef 0, i32 noundef %38)
  %39 = load ptr, ptr %db, align 8
  %40 = load ptr, ptr %pAll.addr, align 8
  %z27 = getelementptr inbounds nuw %struct.Token, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %z27, align 8
  %42 = load ptr, ptr %pAll.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %n, align 8
  %conv28 = zext i32 %43 to i64
  %call29 = call ptr @sqlite3DbStrNDup(ptr noundef %39, ptr noundef %41, i64 noundef %conv28)
  store ptr %call29, ptr %z, align 8
  %44 = load ptr, ptr %pParse.addr, align 8
  %45 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %aDb, align 8
  %47 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %47 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %46, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %48 = load ptr, ptr %zDbSName, align 8
  %49 = load ptr, ptr %zName, align 8
  %50 = load ptr, ptr %pTrig, align 8
  %table = getelementptr inbounds nuw %struct.Trigger, ptr %50, i32 0, i32 1
  %51 = load ptr, ptr %table, align 8
  %52 = load ptr, ptr %z, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %44, ptr noundef @.str.873, ptr noundef %48, ptr noundef @.str.320, ptr noundef %49, ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %db, align 8
  %54 = load ptr, ptr %z, align 8
  call void @sqlite3DbFree(ptr noundef %53, ptr noundef %54)
  %55 = load ptr, ptr %pParse.addr, align 8
  %56 = load i32, ptr %iDb, align 4
  call void @sqlite3ChangeCookie(ptr noundef %55, i32 noundef %56)
  %57 = load ptr, ptr %v, align 8
  %58 = load i32, ptr %iDb, align 4
  %59 = load ptr, ptr %db, align 8
  %60 = load ptr, ptr %zName, align 8
  %call30 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %59, ptr noundef @.str.874, ptr noundef %60)
  call void @sqlite3VdbeAddParseSchemaOp(ptr noundef %57, i32 noundef %58, ptr noundef %call30)
  br label %if.end31

if.end31:                                         ; preds = %if.end26, %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then18
  %61 = load ptr, ptr %db, align 8
  %init33 = getelementptr inbounds nuw %struct.sqlite3, ptr %61, i32 0, i32 35
  %busy34 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init33, i32 0, i32 2
  %62 = load i8, ptr %busy34, align 1
  %tobool35 = icmp ne i8 %62, 0
  br i1 %tobool35, label %if.then36, label %if.end56

if.then36:                                        ; preds = %if.end32
  %63 = load ptr, ptr %pTrig, align 8
  store ptr %63, ptr %pLink, align 8
  %64 = load ptr, ptr %db, align 8
  %aDb37 = getelementptr inbounds nuw %struct.sqlite3, ptr %64, i32 0, i32 4
  %65 = load ptr, ptr %aDb37, align 8
  %66 = load i32, ptr %iDb, align 4
  %idxprom38 = sext i32 %66 to i64
  %arrayidx39 = getelementptr inbounds %struct.Db, ptr %65, i64 %idxprom38
  %pSchema40 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx39, i32 0, i32 4
  %67 = load ptr, ptr %pSchema40, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %67, i32 0, i32 4
  store ptr %trigHash, ptr %pHash, align 8
  %68 = load ptr, ptr %pHash, align 8
  %69 = load ptr, ptr %zName, align 8
  %70 = load ptr, ptr %pTrig, align 8
  %call41 = call ptr @sqlite3HashInsert(ptr noundef %68, ptr noundef %69, ptr noundef %70)
  store ptr %call41, ptr %pTrig, align 8
  %71 = load ptr, ptr %pTrig, align 8
  %tobool42 = icmp ne ptr %71, null
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.then36
  %72 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %72)
  br label %if.end55

if.else44:                                        ; preds = %if.then36
  %73 = load ptr, ptr %pLink, align 8
  %pSchema45 = getelementptr inbounds nuw %struct.Trigger, ptr %73, i32 0, i32 6
  %74 = load ptr, ptr %pSchema45, align 8
  %75 = load ptr, ptr %pLink, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %75, i32 0, i32 7
  %76 = load ptr, ptr %pTabSchema, align 8
  %cmp46 = icmp eq ptr %74, %76
  br i1 %cmp46, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.else44
  %77 = load ptr, ptr %pLink, align 8
  %pTabSchema49 = getelementptr inbounds nuw %struct.Trigger, ptr %77, i32 0, i32 7
  %78 = load ptr, ptr %pTabSchema49, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %78, i32 0, i32 2
  %79 = load ptr, ptr %pLink, align 8
  %table50 = getelementptr inbounds nuw %struct.Trigger, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %table50, align 8
  %call51 = call ptr @sqlite3HashFind(ptr noundef %tblHash, ptr noundef %80)
  store ptr %call51, ptr %pTab, align 8
  %81 = load ptr, ptr %pTab, align 8
  %pTrigger = getelementptr inbounds nuw %struct.Table, ptr %81, i32 0, i32 19
  %82 = load ptr, ptr %pTrigger, align 8
  %83 = load ptr, ptr %pLink, align 8
  %pNext52 = getelementptr inbounds nuw %struct.Trigger, ptr %83, i32 0, i32 9
  store ptr %82, ptr %pNext52, align 8
  %84 = load ptr, ptr %pLink, align 8
  %85 = load ptr, ptr %pTab, align 8
  %pTrigger53 = getelementptr inbounds nuw %struct.Table, ptr %85, i32 0, i32 19
  store ptr %84, ptr %pTrigger53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then48, %if.else44
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then43
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end32
  br label %triggerfinish_cleanup

triggerfinish_cleanup:                            ; preds = %if.end56, %if.then25, %if.then15, %if.then
  %86 = load ptr, ptr %db, align 8
  %87 = load ptr, ptr %pTrig, align 8
  call void @sqlite3DeleteTrigger(ptr noundef %86, ptr noundef %87)
  %88 = load ptr, ptr %db, align 8
  %89 = load ptr, ptr %pStepList.addr, align 8
  call void @sqlite3DeleteTriggerStep(ptr noundef %88, ptr noundef %89)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ChangeCookie(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAddParseSchemaOp(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TokenInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FixInit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixTriggerStep(ptr noundef, ptr noundef) #0

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
