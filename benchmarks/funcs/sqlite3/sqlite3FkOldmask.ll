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
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FkReferences(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FkOldmask(ptr noundef %pParse, ptr noundef %pTab) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %mask = alloca i32, align 4
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 0, ptr %mask, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 7
  %2 = load i64, ptr %flags, align 8
  %and = and i64 %2, 16384
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end41

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pTab.addr, align 8
  %pFKey = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pFKey, align 8
  store ptr %4, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %if.then
  %5 = load ptr, ptr %p, align 8
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %p, align 8
  %nCol = getelementptr inbounds nuw %struct.FKey, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %nCol, align 8
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %9 = load ptr, ptr %p, align 8
  %aCol = getelementptr inbounds nuw %struct.FKey, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol, i64 0, i64 %idxprom
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx, i32 0, i32 0
  %11 = load i32, ptr %iFrom, align 8
  %cmp4 = icmp sgt i32 %11, 31
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  %12 = load ptr, ptr %p, align 8
  %aCol5 = getelementptr inbounds nuw %struct.FKey, ptr %12, i32 0, i32 9
  %13 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol5, i64 0, i64 %idxprom6
  %iFrom8 = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx7, i32 0, i32 0
  %14 = load i32, ptr %iFrom8, align 8
  %shl = shl i32 1, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %shl, %cond.false ]
  %15 = load i32, ptr %mask, align 4
  %or = or i32 %15, %cond
  store i32 %or, ptr %mask, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %17 = load ptr, ptr %p, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %pNextFrom, align 8
  store ptr %18, ptr %p, align 8
  br label %for.cond, !llvm.loop !8

for.end10:                                        ; preds = %for.cond
  %19 = load ptr, ptr %pTab.addr, align 8
  %call = call ptr @sqlite3FkReferences(ptr noundef %19)
  store ptr %call, ptr %p, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc39, %for.end10
  %20 = load ptr, ptr %p, align 8
  %tobool12 = icmp ne ptr %20, null
  br i1 %tobool12, label %for.body13, label %for.end40

for.body13:                                       ; preds = %for.cond11
  store ptr null, ptr %pIdx, align 8
  %21 = load ptr, ptr %pParse.addr, align 8
  %22 = load ptr, ptr %pTab.addr, align 8
  %23 = load ptr, ptr %p, align 8
  %call14 = call i32 @sqlite3FkLocateIndex(ptr noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %pIdx, ptr noundef null)
  %24 = load ptr, ptr %pIdx, align 8
  %tobool15 = icmp ne ptr %24, null
  br i1 %tobool15, label %if.then16, label %if.end

if.then16:                                        ; preds = %for.body13
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc36, %if.then16
  %25 = load i32, ptr %i, align 4
  %26 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 13
  %27 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %27 to i32
  %cmp18 = icmp slt i32 %25, %conv
  br i1 %cmp18, label %for.body20, label %for.end38

for.body20:                                       ; preds = %for.cond17
  %28 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %28, i32 0, i32 1
  %29 = load ptr, ptr %aiColumn, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds i16, ptr %29, i64 %idxprom21
  %31 = load i16, ptr %arrayidx22, align 2
  %conv23 = sext i16 %31 to i32
  %cmp24 = icmp sgt i32 %conv23, 31
  br i1 %cmp24, label %cond.true26, label %cond.false27

cond.true26:                                      ; preds = %for.body20
  br label %cond.end33

cond.false27:                                     ; preds = %for.body20
  %32 = load ptr, ptr %pIdx, align 8
  %aiColumn28 = getelementptr inbounds nuw %struct.Index, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %aiColumn28, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds i16, ptr %33, i64 %idxprom29
  %35 = load i16, ptr %arrayidx30, align 2
  %conv31 = sext i16 %35 to i32
  %shl32 = shl i32 1, %conv31
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false27, %cond.true26
  %cond34 = phi i32 [ -1, %cond.true26 ], [ %shl32, %cond.false27 ]
  %36 = load i32, ptr %mask, align 4
  %or35 = or i32 %36, %cond34
  store i32 %or35, ptr %mask, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %cond.end33
  %37 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond17, !llvm.loop !9

for.end38:                                        ; preds = %for.cond17
  br label %if.end

if.end:                                           ; preds = %for.end38, %for.body13
  br label %for.inc39

for.inc39:                                        ; preds = %if.end
  %38 = load ptr, ptr %p, align 8
  %pNextTo = getelementptr inbounds nuw %struct.FKey, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %pNextTo, align 8
  store ptr %39, ptr %p, align 8
  br label %for.cond11, !llvm.loop !10

for.end40:                                        ; preds = %for.cond11
  br label %if.end41

if.end41:                                         ; preds = %for.end40, %entry
  %40 = load i32, ptr %mask, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkLocateIndex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
