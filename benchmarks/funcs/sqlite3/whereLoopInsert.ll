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
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.WhereOrSet = type { i16, [3 x %struct.WhereOrCost] }
%struct.WhereOrCost = type { i64, i16, i16 }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopInit(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @whereLoopInsert(ptr noundef %pBuilder, ptr noundef %pTemplate) #0 {
entry:
  %retval = alloca i32, align 4
  %pBuilder.addr = alloca ptr, align 8
  %pTemplate.addr = alloca ptr, align 8
  %ppPrev = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pWInfo = alloca ptr, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %ppTail = alloca ptr, align 8
  %pToDel = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  store ptr %pBuilder, ptr %pBuilder.addr, align 8
  store ptr %pTemplate, ptr %pTemplate.addr, align 8
  %0 = load ptr, ptr %pBuilder.addr, align 8
  %pWInfo1 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pWInfo1, align 8
  store ptr %1, ptr %pWInfo, align 8
  %2 = load ptr, ptr %pWInfo, align 8
  %pParse = getelementptr inbounds nuw %struct.WhereInfo, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pParse, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db2, align 8
  store ptr %4, ptr %db, align 8
  %5 = load ptr, ptr %pBuilder.addr, align 8
  %iPlanLimit = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %iPlanLimit, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pBuilder.addr, align 8
  %pOrSet = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pOrSet, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %9 = load ptr, ptr %pBuilder.addr, align 8
  %pOrSet4 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pOrSet4, align 8
  %n = getelementptr inbounds nuw %struct.WhereOrSet, ptr %10, i32 0, i32 0
  store i16 0, ptr %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  store i32 101, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %entry
  %11 = load ptr, ptr %pBuilder.addr, align 8
  %iPlanLimit6 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %11, i32 0, i32 6
  %12 = load i32, ptr %iPlanLimit6, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %iPlanLimit6, align 4
  %13 = load ptr, ptr %pBuilder.addr, align 8
  %pOrSet7 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pOrSet7, align 8
  %cmp8 = icmp ne ptr %14, null
  br i1 %cmp8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end5
  %15 = load ptr, ptr %pTemplate.addr, align 8
  %nLTerm = getelementptr inbounds nuw %struct.WhereLoop, ptr %15, i32 0, i32 9
  %16 = load i16, ptr %nLTerm, align 4
  %tobool10 = icmp ne i16 %16, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %17 = load ptr, ptr %pBuilder.addr, align 8
  %pOrSet12 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pOrSet12, align 8
  %19 = load ptr, ptr %pTemplate.addr, align 8
  %prereq = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 0
  %20 = load i64, ptr %prereq, align 8
  %21 = load ptr, ptr %pTemplate.addr, align 8
  %rRun = getelementptr inbounds nuw %struct.WhereLoop, ptr %21, i32 0, i32 5
  %22 = load i16, ptr %rRun, align 4
  %23 = load ptr, ptr %pTemplate.addr, align 8
  %nOut = getelementptr inbounds nuw %struct.WhereLoop, ptr %23, i32 0, i32 6
  %24 = load i16, ptr %nOut, align 2
  %call = call i32 @whereOrInsert(ptr noundef %18, i64 noundef %20, i16 noundef signext %22, i16 noundef signext %24)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end5
  %25 = load ptr, ptr %pWInfo, align 8
  %pLoops = getelementptr inbounds nuw %struct.WhereInfo, ptr %25, i32 0, i32 19
  %26 = load ptr, ptr %pLoops, align 8
  %27 = load ptr, ptr %pTemplate.addr, align 8
  call void @whereLoopAdjustCost(ptr noundef %26, ptr noundef %27)
  %28 = load ptr, ptr %pWInfo, align 8
  %pLoops15 = getelementptr inbounds nuw %struct.WhereInfo, ptr %28, i32 0, i32 19
  %29 = load ptr, ptr %pTemplate.addr, align 8
  %call16 = call ptr @whereLoopFindLesser(ptr noundef %pLoops15, ptr noundef %29)
  store ptr %call16, ptr %ppPrev, align 8
  %30 = load ptr, ptr %ppPrev, align 8
  %cmp17 = icmp eq ptr %30, null
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end14
  %31 = load ptr, ptr %ppPrev, align 8
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %p, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else
  %33 = load ptr, ptr %p, align 8
  %cmp20 = icmp eq ptr %33, null
  br i1 %cmp20, label %if.then21, label %if.else26

if.then21:                                        ; preds = %if.end19
  %34 = load ptr, ptr %db, align 8
  %call22 = call ptr @sqlite3DbMallocRawNN(ptr noundef %34, i64 noundef 96)
  store ptr %call22, ptr %p, align 8
  %35 = load ptr, ptr %ppPrev, align 8
  store ptr %call22, ptr %35, align 8
  %36 = load ptr, ptr %p, align 8
  %cmp23 = icmp eq ptr %36, null
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then21
  store i32 7, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.then21
  %37 = load ptr, ptr %p, align 8
  call void @whereLoopInit(ptr noundef %37)
  %38 = load ptr, ptr %p, align 8
  %pNextLoop = getelementptr inbounds nuw %struct.WhereLoop, ptr %38, i32 0, i32 13
  store ptr null, ptr %pNextLoop, align 8
  br label %if.end37

if.else26:                                        ; preds = %if.end19
  %39 = load ptr, ptr %p, align 8
  %pNextLoop27 = getelementptr inbounds nuw %struct.WhereLoop, ptr %39, i32 0, i32 13
  store ptr %pNextLoop27, ptr %ppTail, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.else26
  %40 = load ptr, ptr %ppTail, align 8
  %41 = load ptr, ptr %40, align 8
  %tobool28 = icmp ne ptr %41, null
  br i1 %tobool28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load ptr, ptr %ppTail, align 8
  %43 = load ptr, ptr %pTemplate.addr, align 8
  %call29 = call ptr @whereLoopFindLesser(ptr noundef %42, ptr noundef %43)
  store ptr %call29, ptr %ppTail, align 8
  %44 = load ptr, ptr %ppTail, align 8
  %cmp30 = icmp eq ptr %44, null
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %while.body
  br label %while.end

if.end32:                                         ; preds = %while.body
  %45 = load ptr, ptr %ppTail, align 8
  %46 = load ptr, ptr %45, align 8
  store ptr %46, ptr %pToDel, align 8
  %47 = load ptr, ptr %pToDel, align 8
  %cmp33 = icmp eq ptr %47, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  br label %while.end

if.end35:                                         ; preds = %if.end32
  %48 = load ptr, ptr %pToDel, align 8
  %pNextLoop36 = getelementptr inbounds nuw %struct.WhereLoop, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %pNextLoop36, align 8
  %50 = load ptr, ptr %ppTail, align 8
  store ptr %49, ptr %50, align 8
  %51 = load ptr, ptr %db, align 8
  %52 = load ptr, ptr %pToDel, align 8
  call void @whereLoopDelete(ptr noundef %51, ptr noundef %52)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then34, %if.then31, %while.cond
  br label %if.end37

if.end37:                                         ; preds = %while.end, %if.end25
  %53 = load ptr, ptr %db, align 8
  %54 = load ptr, ptr %p, align 8
  %55 = load ptr, ptr %pTemplate.addr, align 8
  %call38 = call i32 @whereLoopXfer(ptr noundef %53, ptr noundef %54, ptr noundef %55)
  store i32 %call38, ptr %rc, align 4
  %56 = load ptr, ptr %p, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %56, i32 0, i32 8
  %57 = load i32, ptr %wsFlags, align 8
  %and = and i32 %57, 1024
  %cmp39 = icmp eq i32 %and, 0
  br i1 %cmp39, label %if.then40, label %if.end48

if.then40:                                        ; preds = %if.end37
  %58 = load ptr, ptr %p, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %58, i32 0, i32 7
  %pIndex41 = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 4
  %59 = load ptr, ptr %pIndex41, align 8
  store ptr %59, ptr %pIndex, align 8
  %60 = load ptr, ptr %pIndex, align 8
  %tobool42 = icmp ne ptr %60, null
  br i1 %tobool42, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.then40
  %61 = load ptr, ptr %pIndex, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %61, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp43 = icmp eq i32 %bf.cast, 3
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %land.lhs.true
  %62 = load ptr, ptr %p, align 8
  %u45 = getelementptr inbounds nuw %struct.WhereLoop, ptr %62, i32 0, i32 7
  %pIndex46 = getelementptr inbounds nuw %struct.anon.19, ptr %u45, i32 0, i32 4
  store ptr null, ptr %pIndex46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %land.lhs.true, %if.then40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end37
  %63 = load i32, ptr %rc, align 4
  store i32 %63, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then24, %if.then18, %if.end13, %if.end
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: nounwind uwtable
declare hidden i32 @whereOrInsert(ptr noundef, i64 noundef, i16 noundef signext, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopAdjustCost(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @whereLoopFindLesser(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopXfer(ptr noundef, ptr noundef, ptr noundef) #0

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
