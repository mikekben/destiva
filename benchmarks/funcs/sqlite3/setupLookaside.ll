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
%struct.LookasideSlot = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3LookasideUsed(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MallocSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @setupLookaside(ptr noundef %db, ptr noundef %pBuf, i32 noundef %sz, i32 noundef %cnt) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pBuf.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  %cnt.addr = alloca i32, align 4
  %pStart = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %sz, ptr %sz.addr, align 4
  store i32 %cnt, ptr %cnt.addr, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3LookasideUsed(ptr noundef %0, ptr noundef null)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 61
  %bMalloced = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 2
  %2 = load i8, ptr %bMalloced, align 2
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then1, label %if.end4

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %db.addr, align 8
  %lookaside2 = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 61
  %pStart3 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside2, i32 0, i32 7
  %4 = load ptr, ptr %pStart3, align 8
  call void @sqlite3_free(ptr noundef %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end
  %5 = load i32, ptr %sz.addr, align 4
  %and = and i32 %5, -8
  store i32 %and, ptr %sz.addr, align 4
  %6 = load i32, ptr %sz.addr, align 4
  %cmp5 = icmp sle i32 %6, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 0, ptr %sz.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %7 = load i32, ptr %cnt.addr, align 4
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr %cnt.addr, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7
  %8 = load i32, ptr %sz.addr, align 4
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %9 = load i32, ptr %cnt.addr, align 4
  %cmp12 = icmp eq i32 %9, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %lor.lhs.false, %if.end10
  store i32 0, ptr %sz.addr, align 4
  store ptr null, ptr %pStart, align 8
  br label %if.end24

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %pBuf.addr, align 8
  %cmp14 = icmp eq ptr %10, null
  br i1 %cmp14, label %if.then15, label %if.else22

if.then15:                                        ; preds = %if.else
  call void @sqlite3BeginBenignMalloc()
  %11 = load i32, ptr %sz.addr, align 4
  %conv = sext i32 %11 to i64
  %12 = load i32, ptr %cnt.addr, align 4
  %conv16 = sext i32 %12 to i64
  %mul = mul nsw i64 %conv, %conv16
  %call17 = call ptr @sqlite3Malloc(i64 noundef %mul)
  store ptr %call17, ptr %pStart, align 8
  call void @sqlite3EndBenignMalloc()
  %13 = load ptr, ptr %pStart, align 8
  %tobool18 = icmp ne ptr %13, null
  br i1 %tobool18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then15
  %14 = load ptr, ptr %pStart, align 8
  %call20 = call i32 @sqlite3MallocSize(ptr noundef %14)
  %15 = load i32, ptr %sz.addr, align 4
  %div = sdiv i32 %call20, %15
  store i32 %div, ptr %cnt.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then15
  br label %if.end23

if.else22:                                        ; preds = %if.else
  %16 = load ptr, ptr %pBuf.addr, align 8
  store ptr %16, ptr %pStart, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.end21
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then13
  %17 = load ptr, ptr %pStart, align 8
  %18 = load ptr, ptr %db.addr, align 8
  %lookaside25 = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 61
  %pStart26 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside25, i32 0, i32 7
  store ptr %17, ptr %pStart26, align 8
  %19 = load ptr, ptr %db.addr, align 8
  %lookaside27 = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 61
  %pInit = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside27, i32 0, i32 5
  store ptr null, ptr %pInit, align 8
  %20 = load ptr, ptr %db.addr, align 8
  %lookaside28 = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 61
  %pFree = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside28, i32 0, i32 6
  store ptr null, ptr %pFree, align 8
  %21 = load i32, ptr %sz.addr, align 4
  %conv29 = trunc i32 %21 to i16
  %22 = load ptr, ptr %db.addr, align 8
  %lookaside30 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 61
  %sz31 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside30, i32 0, i32 1
  store i16 %conv29, ptr %sz31, align 4
  %23 = load ptr, ptr %pStart, align 8
  %tobool32 = icmp ne ptr %23, null
  br i1 %tobool32, label %if.then33, label %if.else48

if.then33:                                        ; preds = %if.end24
  %24 = load i32, ptr %cnt.addr, align 4
  %25 = load ptr, ptr %db.addr, align 8
  %lookaside34 = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 61
  %nSlot = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside34, i32 0, i32 3
  store i32 %24, ptr %nSlot, align 8
  %26 = load ptr, ptr %pStart, align 8
  store ptr %26, ptr %p, align 8
  %27 = load i32, ptr %cnt.addr, align 4
  %sub = sub nsw i32 %27, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then33
  %28 = load i32, ptr %i, align 4
  %cmp35 = icmp sge i32 %28, 0
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %db.addr, align 8
  %lookaside37 = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 61
  %pInit38 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside37, i32 0, i32 5
  %30 = load ptr, ptr %pInit38, align 8
  %31 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.LookasideSlot, ptr %31, i32 0, i32 0
  store ptr %30, ptr %pNext, align 8
  %32 = load ptr, ptr %p, align 8
  %33 = load ptr, ptr %db.addr, align 8
  %lookaside39 = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 61
  %pInit40 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside39, i32 0, i32 5
  store ptr %32, ptr %pInit40, align 8
  %34 = load ptr, ptr %p, align 8
  %35 = load i32, ptr %sz.addr, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx = getelementptr inbounds i8, ptr %34, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, ptr %i, align 4
  %dec = add nsw i32 %36, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %p, align 8
  %38 = load ptr, ptr %db.addr, align 8
  %lookaside41 = getelementptr inbounds nuw %struct.sqlite3, ptr %38, i32 0, i32 61
  %pEnd = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside41, i32 0, i32 8
  store ptr %37, ptr %pEnd, align 8
  %39 = load ptr, ptr %db.addr, align 8
  %lookaside42 = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 61
  %bDisable = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside42, i32 0, i32 0
  store i32 0, ptr %bDisable, align 8
  %40 = load ptr, ptr %pBuf.addr, align 8
  %cmp43 = icmp eq ptr %40, null
  %41 = zext i1 %cmp43 to i64
  %cond = select i1 %cmp43, i32 1, i32 0
  %conv45 = trunc i32 %cond to i8
  %42 = load ptr, ptr %db.addr, align 8
  %lookaside46 = getelementptr inbounds nuw %struct.sqlite3, ptr %42, i32 0, i32 61
  %bMalloced47 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside46, i32 0, i32 2
  store i8 %conv45, ptr %bMalloced47, align 2
  br label %if.end59

if.else48:                                        ; preds = %if.end24
  %43 = load ptr, ptr %db.addr, align 8
  %44 = load ptr, ptr %db.addr, align 8
  %lookaside49 = getelementptr inbounds nuw %struct.sqlite3, ptr %44, i32 0, i32 61
  %pStart50 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside49, i32 0, i32 7
  store ptr %43, ptr %pStart50, align 8
  %45 = load ptr, ptr %db.addr, align 8
  %46 = load ptr, ptr %db.addr, align 8
  %lookaside51 = getelementptr inbounds nuw %struct.sqlite3, ptr %46, i32 0, i32 61
  %pEnd52 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside51, i32 0, i32 8
  store ptr %45, ptr %pEnd52, align 8
  %47 = load ptr, ptr %db.addr, align 8
  %lookaside53 = getelementptr inbounds nuw %struct.sqlite3, ptr %47, i32 0, i32 61
  %bDisable54 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside53, i32 0, i32 0
  store i32 1, ptr %bDisable54, align 8
  %48 = load ptr, ptr %db.addr, align 8
  %lookaside55 = getelementptr inbounds nuw %struct.sqlite3, ptr %48, i32 0, i32 61
  %bMalloced56 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside55, i32 0, i32 2
  store i8 0, ptr %bMalloced56, align 2
  %49 = load ptr, ptr %db.addr, align 8
  %lookaside57 = getelementptr inbounds nuw %struct.sqlite3, ptr %49, i32 0, i32 61
  %nSlot58 = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside57, i32 0, i32 3
  store i32 0, ptr %nSlot58, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else48, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

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
