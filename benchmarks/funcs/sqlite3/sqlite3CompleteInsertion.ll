; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CompleteInsertion(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %iDataCur, i32 noundef %iIdxCur, i32 noundef %regNewData, ptr noundef %aRegIdx, i32 noundef %update_flags, i32 noundef %appendBias, i32 noundef %useSeekResult) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %iDataCur.addr = alloca i32, align 4
  %iIdxCur.addr = alloca i32, align 4
  %regNewData.addr = alloca i32, align 4
  %aRegIdx.addr = alloca ptr, align 8
  %update_flags.addr = alloca i32, align 4
  %appendBias.addr = alloca i32, align 4
  %useSeekResult.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %pik_flags = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %iDataCur, ptr %iDataCur.addr, align 4
  store i32 %iIdxCur, ptr %iIdxCur.addr, align 4
  store i32 %regNewData, ptr %regNewData.addr, align 4
  store ptr %aRegIdx, ptr %aRegIdx.addr, align 8
  store i32 %update_flags, ptr %update_flags.addr, align 4
  store i32 %appendBias, ptr %appendBias.addr, align 4
  store i32 %useSeekResult, ptr %useSeekResult.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  store i32 0, ptr %i, align 4
  %1 = load ptr, ptr %pTab.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pIndex, align 8
  store ptr %2, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pIdx, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %aRegIdx.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %pPartIdxWhere, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %v, align 8
  %10 = load ptr, ptr %aRegIdx.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 %idxprom3
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %v, align 8
  %call5 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %13)
  %add = add nsw i32 %call5, 2
  %call6 = call i32 @sqlite3VdbeAddOp2(ptr noundef %9, i32 noundef 50, i32 noundef %12, i32 noundef %add)
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end
  %14 = load i32, ptr %useSeekResult.addr, align 4
  %tobool8 = icmp ne i32 %14, 0
  %15 = zext i1 %tobool8 to i64
  %cond = select i1 %tobool8, i32 16, i32 0
  %conv = trunc i32 %cond to i8
  store i8 %conv, ptr %pik_flags, align 1
  %16 = load ptr, ptr %pIdx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %16, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp9 = icmp eq i32 %bf.cast, 2
  br i1 %cmp9, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end7
  %17 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 9
  %18 = load i32, ptr %tabFlags, align 8
  %and = and i32 %18, 32
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.end20, label %if.then13

if.then13:                                        ; preds = %land.lhs.true
  %19 = load i8, ptr %pik_flags, align 1
  %conv14 = zext i8 %19 to i32
  %or = or i32 %conv14, 1
  %conv15 = trunc i32 %or to i8
  store i8 %conv15, ptr %pik_flags, align 1
  %20 = load i32, ptr %update_flags.addr, align 4
  %and16 = and i32 %20, 2
  %21 = load i8, ptr %pik_flags, align 1
  %conv17 = zext i8 %21 to i32
  %or18 = or i32 %conv17, %and16
  %conv19 = trunc i32 %or18 to i8
  store i8 %conv19, ptr %pik_flags, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %land.lhs.true, %if.end7
  %22 = load ptr, ptr %v, align 8
  %23 = load i32, ptr %iIdxCur.addr, align 4
  %24 = load i32, ptr %i, align 4
  %add21 = add nsw i32 %23, %24
  %25 = load ptr, ptr %aRegIdx.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %25, i64 %idxprom22
  %27 = load i32, ptr %arrayidx23, align 4
  %28 = load ptr, ptr %aRegIdx.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %28, i64 %idxprom24
  %30 = load i32, ptr %arrayidx25, align 4
  %add26 = add nsw i32 %30, 1
  %31 = load ptr, ptr %pIdx, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 16
  %bf.load27 = load i16, ptr %uniqNotNull, align 1
  %bf.lshr = lshr i16 %bf.load27, 3
  %bf.clear28 = and i16 %bf.lshr, 1
  %bf.cast29 = zext i16 %bf.clear28 to i32
  %tobool30 = icmp ne i32 %bf.cast29, 0
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end20
  %32 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %32, i32 0, i32 13
  %33 = load i16, ptr %nKeyCol, align 2
  %conv31 = zext i16 %33 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end20
  %34 = load ptr, ptr %pIdx, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %34, i32 0, i32 14
  %35 = load i16, ptr %nColumn, align 8
  %conv32 = zext i16 %35 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond33 = phi i32 [ %conv31, %cond.true ], [ %conv32, %cond.false ]
  %call34 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %22, i32 noundef 132, i32 noundef %add21, i32 noundef %27, i32 noundef %add26, i32 noundef %cond33)
  %36 = load ptr, ptr %v, align 8
  %37 = load i8, ptr %pik_flags, align 1
  %conv35 = zext i8 %37 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %36, i16 noundef zeroext %conv35)
  br label %for.inc

for.inc:                                          ; preds = %cond.end, %if.then
  %38 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %pNext, align 8
  store ptr %39, ptr %pIdx, align 8
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %pTab.addr, align 8
  %tabFlags36 = getelementptr inbounds nuw %struct.Table, ptr %41, i32 0, i32 9
  %42 = load i32, ptr %tabFlags36, align 8
  %and37 = and i32 %42, 32
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.end41, label %if.then40

if.then40:                                        ; preds = %for.end
  br label %return

if.end41:                                         ; preds = %for.end
  %43 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %43, i32 0, i32 6
  %44 = load i8, ptr %nested, align 2
  %tobool42 = icmp ne i8 %44, 0
  br i1 %tobool42, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end41
  store i8 0, ptr %pik_flags, align 1
  br label %if.end52

if.else:                                          ; preds = %if.end41
  store i8 1, ptr %pik_flags, align 1
  %45 = load i32, ptr %update_flags.addr, align 4
  %tobool44 = icmp ne i32 %45, 0
  br i1 %tobool44, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %if.else
  %46 = load i32, ptr %update_flags.addr, align 4
  br label %cond.end47

cond.false46:                                     ; preds = %if.else
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.true45
  %cond48 = phi i32 [ %46, %cond.true45 ], [ 32, %cond.false46 ]
  %47 = load i8, ptr %pik_flags, align 1
  %conv49 = zext i8 %47 to i32
  %or50 = or i32 %conv49, %cond48
  %conv51 = trunc i32 %or50 to i8
  store i8 %conv51, ptr %pik_flags, align 1
  br label %if.end52

if.end52:                                         ; preds = %cond.end47, %if.then43
  %48 = load i32, ptr %appendBias.addr, align 4
  %tobool53 = icmp ne i32 %48, 0
  br i1 %tobool53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end52
  %49 = load i8, ptr %pik_flags, align 1
  %conv55 = zext i8 %49 to i32
  %or56 = or i32 %conv55, 8
  %conv57 = trunc i32 %or56 to i8
  store i8 %conv57, ptr %pik_flags, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end52
  %50 = load i32, ptr %useSeekResult.addr, align 4
  %tobool59 = icmp ne i32 %50, 0
  br i1 %tobool59, label %if.then60, label %if.end64

if.then60:                                        ; preds = %if.end58
  %51 = load i8, ptr %pik_flags, align 1
  %conv61 = zext i8 %51 to i32
  %or62 = or i32 %conv61, 16
  %conv63 = trunc i32 %or62 to i8
  store i8 %conv63, ptr %pik_flags, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end58
  %52 = load ptr, ptr %v, align 8
  %53 = load i32, ptr %iDataCur.addr, align 4
  %54 = load ptr, ptr %aRegIdx.addr, align 8
  %55 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %55 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %54, i64 %idxprom65
  %56 = load i32, ptr %arrayidx66, align 4
  %57 = load i32, ptr %regNewData.addr, align 4
  %call67 = call i32 @sqlite3VdbeAddOp3(ptr noundef %52, i32 noundef 122, i32 noundef %53, i32 noundef %56, i32 noundef %57)
  %58 = load ptr, ptr %pParse.addr, align 8
  %nested68 = getelementptr inbounds nuw %struct.Parse, ptr %58, i32 0, i32 6
  %59 = load i8, ptr %nested68, align 2
  %tobool69 = icmp ne i8 %59, 0
  br i1 %tobool69, label %if.end71, label %if.then70

if.then70:                                        ; preds = %if.end64
  %60 = load ptr, ptr %v, align 8
  %61 = load ptr, ptr %pTab.addr, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %60, ptr noundef %61, i32 noundef -6)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end64
  %62 = load ptr, ptr %v, align 8
  %63 = load i8, ptr %pik_flags, align 1
  %conv72 = zext i8 %63 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %62, i16 noundef zeroext %conv72)
  br label %return

return:                                           ; preds = %if.end71, %if.then40
  ret void
}

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
