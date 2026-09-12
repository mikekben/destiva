; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FkReferences(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @fkParentIsModified(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3FkActions(ptr noundef %pParse, ptr noundef %pTab, ptr noundef %pChanges, i32 noundef %regOld, ptr noundef %aChange, i32 noundef %bChngRowid) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pChanges.addr = alloca ptr, align 8
  %regOld.addr = alloca i32, align 4
  %aChange.addr = alloca ptr, align 8
  %bChngRowid.addr = alloca i32, align 4
  %pFKey = alloca ptr, align 8
  %pAct = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pChanges, ptr %pChanges.addr, align 8
  store i32 %regOld, ptr %regOld.addr, align 4
  store ptr %aChange, ptr %aChange.addr, align 8
  store i32 %bChngRowid, ptr %bChngRowid.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 7
  %2 = load i64, ptr %flags, align 8
  %and = and i64 %2, 16384
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3FkReferences(ptr noundef %3)
  store ptr %call, ptr %pFKey, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %pFKey, align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %aChange.addr, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load ptr, ptr %pTab.addr, align 8
  %7 = load ptr, ptr %pFKey, align 8
  %8 = load ptr, ptr %aChange.addr, align 8
  %9 = load i32, ptr %bChngRowid.addr, align 4
  %call2 = call i32 @fkParentIsModified(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end8

if.then4:                                         ; preds = %lor.lhs.false, %for.body
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pTab.addr, align 8
  %12 = load ptr, ptr %pFKey, align 8
  %13 = load ptr, ptr %pChanges.addr, align 8
  %call5 = call ptr @fkActionTrigger(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store ptr %call5, ptr %pAct, align 8
  %14 = load ptr, ptr %pAct, align 8
  %tobool6 = icmp ne ptr %14, null
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then4
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load ptr, ptr %pAct, align 8
  %17 = load ptr, ptr %pTab.addr, align 8
  %18 = load i32, ptr %regOld.addr, align 4
  call void @sqlite3CodeRowTriggerDirect(ptr noundef %15, ptr noundef %16, ptr noundef %17, i32 noundef %18, i32 noundef 2, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %19 = load ptr, ptr %pFKey, align 8
  %pNextTo = getelementptr inbounds nuw %struct.FKey, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %pNextTo, align 8
  store ptr %20, ptr %pFKey, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeRowTriggerDirect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @fkActionTrigger(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
