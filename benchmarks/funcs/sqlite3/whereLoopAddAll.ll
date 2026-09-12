; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoopBuilder = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@.str.750 = external hidden unnamed_addr constant [35 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopInit(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopAddAll(ptr noundef %pBuilder) #0 {
entry:
  %pBuilder.addr = alloca ptr, align 8
  %pWInfo = alloca ptr, align 8
  %mPrereq = alloca i64, align 8
  %mPrior = alloca i64, align 8
  %iTab = alloca i32, align 4
  %pTabList = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %priorJointype = alloca i8, align 1
  %mUnusable = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  %0 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo1, align 8
  store ptr %1, ptr %pWInfo, align 8
  store i64 0, ptr %mPrereq, align 8
  store i64 0, ptr %mPrior, align 8
  %2 = load ptr, ptr %pWInfo, align 8
  %pTabList2 = getelementptr inbounds nuw %struct.WhereInfo, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pTabList2, align 8
  store ptr %3, ptr %pTabList, align 8
  %4 = load ptr, ptr %pTabList, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pWInfo, align 8
  %nLevel = getelementptr inbounds nuw %struct.WhereInfo, ptr %5, i32 0, i32 11
  %6 = load i8, ptr %nLevel, align 2
  %idxprom = zext i8 %6 to i64
  %arrayidx = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pEnd, align 8
  %7 = load ptr, ptr %pWInfo, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereInfo, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pParse, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db3, align 8
  store ptr %9, ptr %db, align 8
  store i32 0, ptr %rc, align 4
  store i8 0, ptr %priorJointype, align 1
  %10 = load ptr, ptr %pBuilder.addr, align 8
  %pNew4 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pNew4, align 8
  store ptr %11, ptr %pNew, align 8
  %12 = load ptr, ptr %pNew, align 8
  call void @whereLoopInit(ptr noundef %12)
  %13 = load ptr, ptr %pBuilder.addr, align 8
  %iPlanLimit = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %13, i32 0, i32 6
  store i32 20000, ptr %iPlanLimit, align 4
  store i32 0, ptr %iTab, align 4
  %14 = load ptr, ptr %pTabList, align 8
  %a5 = getelementptr inbounds nuw %struct.SrcList, ptr %14, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a5, i64 0, i64 0
  store ptr %arraydecay, ptr %pItem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %15 = load ptr, ptr %pItem, align 8
  %16 = load ptr, ptr %pEnd, align 8
  %cmp = icmp ult ptr %15, %16
  br i1 %cmp, label %for.body, label %for.end57

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %mUnusable, align 8
  %17 = load i32, ptr %iTab, align 4
  %conv = trunc i32 %17 to i8
  %18 = load ptr, ptr %pNew, align 8
  %iTab6 = getelementptr inbounds nuw %struct.WhereLoop, ptr %18, i32 0, i32 2
  store i8 %conv, ptr %iTab6, align 8
  %19 = load ptr, ptr %pBuilder.addr, align 8
  %iPlanLimit7 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %iPlanLimit7, align 4
  %add = add i32 %20, 1000
  store i32 %add, ptr %iPlanLimit7, align 4
  %21 = load ptr, ptr %pWInfo, align 8
  %sMaskSet = getelementptr inbounds nuw %struct.WhereInfo, ptr %21, i32 0, i32 23
  %22 = load ptr, ptr %pItem, align 8
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %22, i32 0, i32 10
  %23 = load i32, ptr %iCursor, align 8
  %call = call i64 @sqlite3WhereGetMask(ptr noundef %sMaskSet, i32 noundef %23)
  %24 = load ptr, ptr %pNew, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %24, i32 0, i32 1
  store i64 %call, ptr %maskSelf, align 8
  %25 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %25, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %26 = load i8, ptr %jointype, align 4
  %conv8 = zext i8 %26 to i32
  %27 = load i8, ptr %priorJointype, align 1
  %conv9 = zext i8 %27 to i32
  %or = or i32 %conv8, %conv9
  %and = and i32 %or, 10
  %cmp10 = icmp ne i32 %and, 0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %28 = load i64, ptr %mPrior, align 8
  store i64 %28, ptr %mPrereq, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %29 = load ptr, ptr %pItem, align 8
  %fg12 = getelementptr inbounds nuw %struct.SrcList_item, ptr %29, i32 0, i32 9
  %jointype13 = getelementptr inbounds nuw %struct.anon, ptr %fg12, i32 0, i32 0
  %30 = load i8, ptr %jointype13, align 4
  store i8 %30, ptr %priorJointype, align 1
  %31 = load ptr, ptr %pItem, align 8
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %32, i32 0, i32 16
  %33 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  %34 = load ptr, ptr %pItem, align 8
  %arrayidx15 = getelementptr inbounds %struct.SrcList_item, ptr %34, i64 1
  store ptr %arrayidx15, ptr %p, align 8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %if.then14
  %35 = load ptr, ptr %p, align 8
  %36 = load ptr, ptr %pEnd, align 8
  %cmp17 = icmp ult ptr %35, %36
  br i1 %cmp17, label %for.body19, label %for.end

for.body19:                                       ; preds = %for.cond16
  %37 = load i64, ptr %mUnusable, align 8
  %tobool20 = icmp ne i64 %37, 0
  br i1 %tobool20, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body19
  %38 = load ptr, ptr %p, align 8
  %fg21 = getelementptr inbounds nuw %struct.SrcList_item, ptr %38, i32 0, i32 9
  %jointype22 = getelementptr inbounds nuw %struct.anon, ptr %fg21, i32 0, i32 0
  %39 = load i8, ptr %jointype22, align 4
  %conv23 = zext i8 %39 to i32
  %and24 = and i32 %conv23, 10
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %lor.lhs.false, %for.body19
  %40 = load ptr, ptr %pWInfo, align 8
  %sMaskSet27 = getelementptr inbounds nuw %struct.WhereInfo, ptr %40, i32 0, i32 23
  %41 = load ptr, ptr %p, align 8
  %iCursor28 = getelementptr inbounds nuw %struct.SrcList_item, ptr %41, i32 0, i32 10
  %42 = load i32, ptr %iCursor28, align 8
  %call29 = call i64 @sqlite3WhereGetMask(ptr noundef %sMaskSet27, i32 noundef %42)
  %43 = load i64, ptr %mUnusable, align 8
  %or30 = or i64 %43, %call29
  store i64 %or30, ptr %mUnusable, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %44 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SrcList_item, ptr %44, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %for.cond16, !llvm.loop !6

for.end:                                          ; preds = %for.cond16
  %45 = load ptr, ptr %pBuilder.addr, align 8
  %46 = load i64, ptr %mPrereq, align 8
  %47 = load i64, ptr %mUnusable, align 8
  %call32 = call i32 @whereLoopAddVirtual(ptr noundef %45, i64 noundef %46, i64 noundef %47)
  store i32 %call32, ptr %rc, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end
  %48 = load ptr, ptr %pBuilder.addr, align 8
  %49 = load i64, ptr %mPrereq, align 8
  %call33 = call i32 @whereLoopAddBtree(ptr noundef %48, i64 noundef %49)
  store i32 %call33, ptr %rc, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %for.end
  %50 = load i32, ptr %rc, align 4
  %cmp35 = icmp eq i32 %50, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.end34
  %51 = load ptr, ptr %pBuilder.addr, align 8
  %pWC = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %pWC, align 8
  %hasOr = getelementptr inbounds nuw %struct.WhereClause, ptr %52, i32 0, i32 3
  %53 = load i8, ptr %hasOr, align 1
  %conv37 = zext i8 %53 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  br i1 %tobool38, label %if.then39, label %if.end41

if.then39:                                        ; preds = %land.lhs.true
  %54 = load ptr, ptr %pBuilder.addr, align 8
  %55 = load i64, ptr %mPrereq, align 8
  %56 = load i64, ptr %mUnusable, align 8
  %call40 = call i32 @whereLoopAddOr(ptr noundef %54, i64 noundef %55, i64 noundef %56)
  store i32 %call40, ptr %rc, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %land.lhs.true, %if.end34
  %57 = load ptr, ptr %pNew, align 8
  %maskSelf42 = getelementptr inbounds nuw %struct.WhereLoop, ptr %57, i32 0, i32 1
  %58 = load i64, ptr %maskSelf42, align 8
  %59 = load i64, ptr %mPrior, align 8
  %or43 = or i64 %59, %58
  store i64 %or43, ptr %mPrior, align 8
  %60 = load i32, ptr %rc, align 4
  %tobool44 = icmp ne i32 %60, 0
  br i1 %tobool44, label %if.then48, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %if.end41
  %61 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %61, i32 0, i32 19
  %62 = load i8, ptr %mallocFailed, align 1
  %conv46 = zext i8 %62 to i32
  %tobool47 = icmp ne i32 %conv46, 0
  br i1 %tobool47, label %if.then48, label %if.end54

if.then48:                                        ; preds = %lor.lhs.false45, %if.end41
  %63 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %63, 101
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %if.then48
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef @.str.750)
  store i32 0, ptr %rc, align 4
  br label %if.end53

if.else52:                                        ; preds = %if.then48
  br label %for.end57

if.end53:                                         ; preds = %if.then51
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %lor.lhs.false45
  br label %for.inc55

for.inc55:                                        ; preds = %if.end54
  %64 = load i32, ptr %iTab, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %iTab, align 4
  %65 = load ptr, ptr %pItem, align 8
  %incdec.ptr56 = getelementptr inbounds nuw %struct.SrcList_item, ptr %65, i32 1
  store ptr %incdec.ptr56, ptr %pItem, align 8
  br label %for.cond, !llvm.loop !8

for.end57:                                        ; preds = %if.else52, %for.cond
  %66 = load ptr, ptr %db, align 8
  %67 = load ptr, ptr %pNew, align 8
  call void @whereLoopClear(ptr noundef %66, ptr noundef %67)
  %68 = load i32, ptr %rc, align 4
  ret i32 %68
}

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereGetMask(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopAddVirtual(ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopAddBtree(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopAddOr(ptr noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopClear(ptr noundef, ptr noundef) #0

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
