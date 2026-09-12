; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.327 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteFrom(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3IdListDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @codeTriggerProgram(ptr noundef %pParse, ptr noundef %pStepList, i32 noundef %orconf) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pStepList.addr = alloca ptr, align 8
  %orconf.addr = alloca i32, align 4
  %pStep = alloca ptr, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %sDest = alloca %struct.SelectDest, align 8
  %pSelect26 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pStepList, ptr %pStepList.addr, align 8
  store i32 %orconf, ptr %orconf.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pStepList.addr, align 8
  store ptr %4, ptr %pStep, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %pStep, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %orconf.addr, align 4
  %cmp = icmp eq i32 %6, 11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load ptr, ptr %pStep, align 8
  %orconf2 = getelementptr inbounds nuw %struct.TriggerStep, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %orconf2, align 1
  %conv = zext i8 %8 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i32, ptr %orconf.addr, align 4
  %conv3 = trunc i32 %9 to i8
  %conv4 = zext i8 %conv3 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv4, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  %10 = load ptr, ptr %pParse.addr, align 8
  %eOrconf = getelementptr inbounds nuw %struct.Parse, ptr %10, i32 0, i32 43
  store i8 %conv5, ptr %eOrconf, align 1
  %11 = load ptr, ptr %pStep, align 8
  %zSpan = getelementptr inbounds nuw %struct.TriggerStep, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %zSpan, align 8
  %tobool6 = icmp ne ptr %12, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load ptr, ptr %v, align 8
  %14 = load ptr, ptr %db, align 8
  %15 = load ptr, ptr %pStep, align 8
  %zSpan7 = getelementptr inbounds nuw %struct.TriggerStep, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %zSpan7, align 8
  %call = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %14, ptr noundef @.str.327, ptr noundef %16)
  %call8 = call i32 @sqlite3VdbeAddOp4(ptr noundef %13, i32 noundef 168, i32 noundef 2147483647, i32 noundef 1, i32 noundef 0, ptr noundef %call, i32 noundef -7)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %17 = load ptr, ptr %pStep, align 8
  %op = getelementptr inbounds nuw %struct.TriggerStep, ptr %17, i32 0, i32 0
  %18 = load i8, ptr %op, align 8
  %conv9 = zext i8 %18 to i32
  switch i32 %conv9, label %sw.default [
    i32 125, label %sw.bb
    i32 123, label %sw.bb15
    i32 124, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load ptr, ptr %pStep, align 8
  %call10 = call ptr @targetSrcList(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %db, align 8
  %23 = load ptr, ptr %pStep, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %pExprList, align 8
  %call11 = call ptr @sqlite3ExprListDup(ptr noundef %22, ptr noundef %24, i32 noundef 0)
  %25 = load ptr, ptr %db, align 8
  %26 = load ptr, ptr %pStep, align 8
  %pWhere = getelementptr inbounds nuw %struct.TriggerStep, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pWhere, align 8
  %call12 = call ptr @sqlite3ExprDup(ptr noundef %25, ptr noundef %27, i32 noundef 0)
  %28 = load ptr, ptr %pParse.addr, align 8
  %eOrconf13 = getelementptr inbounds nuw %struct.Parse, ptr %28, i32 0, i32 43
  %29 = load i8, ptr %eOrconf13, align 1
  %conv14 = zext i8 %29 to i32
  call void @sqlite3Update(ptr noundef %19, ptr noundef %call10, ptr noundef %call11, ptr noundef %call12, i32 noundef %conv14, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %pStep, align 8
  %call16 = call ptr @targetSrcList(ptr noundef %31, ptr noundef %32)
  %33 = load ptr, ptr %db, align 8
  %34 = load ptr, ptr %pStep, align 8
  %pSelect = getelementptr inbounds nuw %struct.TriggerStep, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %pSelect, align 8
  %call17 = call ptr @sqlite3SelectDup(ptr noundef %33, ptr noundef %35, i32 noundef 0)
  %36 = load ptr, ptr %db, align 8
  %37 = load ptr, ptr %pStep, align 8
  %pIdList = getelementptr inbounds nuw %struct.TriggerStep, ptr %37, i32 0, i32 7
  %38 = load ptr, ptr %pIdList, align 8
  %call18 = call ptr @sqlite3IdListDup(ptr noundef %36, ptr noundef %38)
  %39 = load ptr, ptr %pParse.addr, align 8
  %eOrconf19 = getelementptr inbounds nuw %struct.Parse, ptr %39, i32 0, i32 43
  %40 = load i8, ptr %eOrconf19, align 1
  %conv20 = zext i8 %40 to i32
  %41 = load ptr, ptr %db, align 8
  %42 = load ptr, ptr %pStep, align 8
  %pUpsert = getelementptr inbounds nuw %struct.TriggerStep, ptr %42, i32 0, i32 8
  %43 = load ptr, ptr %pUpsert, align 8
  %call21 = call ptr @sqlite3UpsertDup(ptr noundef %41, ptr noundef %43)
  call void @sqlite3Insert(ptr noundef %30, ptr noundef %call16, ptr noundef %call17, ptr noundef %call18, i32 noundef %conv20, ptr noundef %call21)
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %44 = load ptr, ptr %pParse.addr, align 8
  %45 = load ptr, ptr %pParse.addr, align 8
  %46 = load ptr, ptr %pStep, align 8
  %call23 = call ptr @targetSrcList(ptr noundef %45, ptr noundef %46)
  %47 = load ptr, ptr %db, align 8
  %48 = load ptr, ptr %pStep, align 8
  %pWhere24 = getelementptr inbounds nuw %struct.TriggerStep, ptr %48, i32 0, i32 5
  %49 = load ptr, ptr %pWhere24, align 8
  %call25 = call ptr @sqlite3ExprDup(ptr noundef %47, ptr noundef %49, i32 noundef 0)
  call void @sqlite3DeleteFrom(ptr noundef %44, ptr noundef %call23, ptr noundef %call25, ptr noundef null, ptr noundef null)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %50 = load ptr, ptr %db, align 8
  %51 = load ptr, ptr %pStep, align 8
  %pSelect27 = getelementptr inbounds nuw %struct.TriggerStep, ptr %51, i32 0, i32 3
  %52 = load ptr, ptr %pSelect27, align 8
  %call28 = call ptr @sqlite3SelectDup(ptr noundef %50, ptr noundef %52, i32 noundef 0)
  store ptr %call28, ptr %pSelect26, align 8
  call void @sqlite3SelectDestInit(ptr noundef %sDest, i32 noundef 4, i32 noundef 0)
  %53 = load ptr, ptr %pParse.addr, align 8
  %54 = load ptr, ptr %pSelect26, align 8
  %call29 = call i32 @sqlite3Select(ptr noundef %53, ptr noundef %54, ptr noundef %sDest)
  %55 = load ptr, ptr %db, align 8
  %56 = load ptr, ptr %pSelect26, align 8
  call void @sqlite3SelectDelete(ptr noundef %55, ptr noundef %56)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb22, %sw.bb15, %sw.bb
  %57 = load ptr, ptr %pStep, align 8
  %op30 = getelementptr inbounds nuw %struct.TriggerStep, ptr %57, i32 0, i32 0
  %58 = load i8, ptr %op30, align 8
  %conv31 = zext i8 %58 to i32
  %cmp32 = icmp ne i32 %conv31, 134
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %sw.epilog
  %59 = load ptr, ptr %v, align 8
  %call35 = call i32 @sqlite3VdbeAddOp0(ptr noundef %59, i32 noundef 124)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %60 = load ptr, ptr %pStep, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerStep, ptr %60, i32 0, i32 10
  %61 = load ptr, ptr %pNext, align 8
  store ptr %61, ptr %pStep, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden ptr @targetSrcList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3UpsertDup(ptr noundef, ptr noundef) #0

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
