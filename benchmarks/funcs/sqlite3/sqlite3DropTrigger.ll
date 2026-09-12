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
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.883 = external hidden unnamed_addr constant [20 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DropTrigger(ptr noundef %pParse, ptr noundef %pName, i32 noundef %noErr) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %noErr.addr = alloca i32, align 4
  %pTrigger = alloca ptr, align 8
  %i = alloca i32, align 4
  %zDb = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %db = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store i32 %noErr, ptr %noErr.addr, align 4
  store ptr null, ptr %pTrigger, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 19
  %3 = load i8, ptr %mallocFailed, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %drop_trigger_cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3ReadSchema(ptr noundef %4)
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %drop_trigger_cleanup

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pName.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %zDatabase = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 1
  %6 = load ptr, ptr %zDatabase, align 8
  store ptr %6, ptr %zDb, align 8
  %7 = load ptr, ptr %pName.addr, align 8
  %a4 = getelementptr inbounds nuw %struct.SrcList, ptr %7, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a4, i64 0, i64 0
  %zName6 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx5, i32 0, i32 2
  %8 = load ptr, ptr %zName6, align 8
  store ptr %8, ptr %zName, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end3
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %nDb, align 8
  %cmp7 = icmp slt i32 %9, %11
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %12, 2
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %xor = xor i32 %13, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, ptr %j, align 4
  %15 = load ptr, ptr %zDb, align 8
  %tobool9 = icmp ne ptr %15, null
  br i1 %tobool9, label %land.lhs.true, label %if.end14

land.lhs.true:                                    ; preds = %cond.end
  %16 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %aDb, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds %struct.Db, ptr %17, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx10, i32 0, i32 0
  %19 = load ptr, ptr %zDbSName, align 8
  %20 = load ptr, ptr %zDb, align 8
  %call11 = call i32 @sqlite3StrICmp(ptr noundef %19, ptr noundef %20)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true
  br label %for.inc

if.end14:                                         ; preds = %land.lhs.true, %cond.end
  %21 = load ptr, ptr %db, align 8
  %aDb15 = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %aDb15, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds %struct.Db, ptr %22, i64 %idxprom16
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx17, i32 0, i32 4
  %24 = load ptr, ptr %pSchema, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %zName, align 8
  %call18 = call ptr @sqlite3HashFind(ptr noundef %trigHash, ptr noundef %25)
  store ptr %call18, ptr %pTrigger, align 8
  %26 = load ptr, ptr %pTrigger, align 8
  %tobool19 = icmp ne ptr %26, null
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end14
  br label %for.end

if.end21:                                         ; preds = %if.end14
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %if.then13
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then20, %for.cond
  %28 = load ptr, ptr %pTrigger, align 8
  %tobool22 = icmp ne ptr %28, null
  br i1 %tobool22, label %if.end27, label %if.then23

if.then23:                                        ; preds = %for.end
  %29 = load i32, ptr %noErr.addr, align 4
  %tobool24 = icmp ne i32 %29, 0
  br i1 %tobool24, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.then23
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %pName.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %30, ptr noundef @.str.883, ptr noundef %31, i32 noundef 0)
  br label %if.end26

if.else:                                          ; preds = %if.then23
  %32 = load ptr, ptr %pParse.addr, align 8
  %33 = load ptr, ptr %zDb, align 8
  call void @sqlite3CodeVerifyNamedSchema(ptr noundef %32, ptr noundef %33)
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  %34 = load ptr, ptr %pParse.addr, align 8
  %checkSchema = getelementptr inbounds nuw %struct.Parse, ptr %34, i32 0, i32 5
  store i8 1, ptr %checkSchema, align 1
  br label %drop_trigger_cleanup

if.end27:                                         ; preds = %for.end
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %pTrigger, align 8
  call void @sqlite3DropTriggerPtr(ptr noundef %35, ptr noundef %36)
  br label %drop_trigger_cleanup

drop_trigger_cleanup:                             ; preds = %if.end27, %if.end26, %if.then2, %if.then
  %37 = load ptr, ptr %db, align 8
  %38 = load ptr, ptr %pName.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %37, ptr noundef %38)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifyNamedSchema(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DropTriggerPtr(ptr noundef, ptr noundef) #0

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
