; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.589 = external hidden unnamed_addr constant [17 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3ColumnOfIndex(ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3UpsertDoUpdate(ptr noundef %pParse, ptr noundef %pUpsert, ptr noundef %pTab, ptr noundef %pIdx, i32 noundef %iCur) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pUpsert.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %iCur.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %iDataCur = alloca i32, align 4
  %i = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %pPk = alloca ptr, align 8
  %nPk = alloca i32, align 4
  %iPk = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pUpsert, ptr %pUpsert.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %iCur, ptr %iCur.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pUpsert.addr, align 8
  %iDataCur2 = getelementptr inbounds nuw %struct.Upsert, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %iDataCur2, align 4
  store i32 %5, ptr %iDataCur, align 4
  %6 = load ptr, ptr %pIdx.addr, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, ptr %iCur.addr, align 4
  %8 = load i32, ptr %iDataCur, align 4
  %cmp = icmp ne i32 %7, %8
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %tabFlags, align 8
  %and = and i32 %10, 32
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %11 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3GetTempReg(ptr noundef %11)
  store i32 %call, ptr %regRowid, align 4
  %12 = load ptr, ptr %v, align 8
  %13 = load i32, ptr %iCur.addr, align 4
  %14 = load i32, ptr %regRowid, align 4
  %call5 = call i32 @sqlite3VdbeAddOp2(ptr noundef %12, i32 noundef 135, i32 noundef %13, i32 noundef %14)
  %15 = load ptr, ptr %v, align 8
  %16 = load i32, ptr %iDataCur, align 4
  %17 = load i32, ptr %regRowid, align 4
  %call6 = call i32 @sqlite3VdbeAddOp3(ptr noundef %15, i32 noundef 30, i32 noundef %16, i32 noundef 0, i32 noundef %17)
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load i32, ptr %regRowid, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %18, i32 noundef %19)
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load ptr, ptr %pTab.addr, align 8
  %call7 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %20)
  store ptr %call7, ptr %pPk, align 8
  %21 = load ptr, ptr %pPk, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %21, i32 0, i32 13
  %22 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %22 to i32
  store i32 %conv, ptr %nPk, align 4
  %23 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 18
  %24 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %24, 1
  store i32 %add, ptr %iPk, align 4
  %25 = load i32, ptr %nPk, align 4
  %26 = load ptr, ptr %pParse.addr, align 8
  %nMem8 = getelementptr inbounds nuw %struct.Parse, ptr %26, i32 0, i32 18
  %27 = load i32, ptr %nMem8, align 8
  %add9 = add nsw i32 %27, %25
  store i32 %add9, ptr %nMem8, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %nPk, align 4
  %cmp10 = icmp slt i32 %28, %29
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %pIdx.addr, align 8
  %31 = load ptr, ptr %pPk, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %aiColumn, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds i16, ptr %32, i64 %idxprom
  %34 = load i16, ptr %arrayidx, align 2
  %call12 = call signext i16 @sqlite3ColumnOfIndex(ptr noundef %30, i16 noundef signext %34)
  %conv13 = sext i16 %call12 to i32
  store i32 %conv13, ptr %k, align 4
  %35 = load ptr, ptr %v, align 8
  %36 = load i32, ptr %iCur.addr, align 4
  %37 = load i32, ptr %k, align 4
  %38 = load i32, ptr %iPk, align 4
  %39 = load i32, ptr %i, align 4
  %add14 = add nsw i32 %38, %39
  %call15 = call i32 @sqlite3VdbeAddOp3(ptr noundef %35, i32 noundef 90, i32 noundef %36, i32 noundef %37, i32 noundef %add14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, ptr %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %v, align 8
  %42 = load i32, ptr %iDataCur, align 4
  %43 = load i32, ptr %iPk, align 4
  %44 = load i32, ptr %nPk, align 4
  %call16 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %41, i32 noundef 29, i32 noundef %42, i32 noundef 0, i32 noundef %43, i32 noundef %44)
  store i32 %call16, ptr %i, align 4
  %45 = load ptr, ptr %v, align 8
  %call17 = call i32 @sqlite3VdbeAddOp4(ptr noundef %45, i32 noundef 69, i32 noundef 11, i32 noundef 2, i32 noundef 0, ptr noundef @.str.589, i32 noundef -1)
  %46 = load ptr, ptr %v, align 8
  %47 = load i32, ptr %i, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %46, i32 noundef %47)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then4
  br label %if.end18

if.end18:                                         ; preds = %if.end, %land.lhs.true, %entry
  %48 = load ptr, ptr %db, align 8
  %49 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertSrc = getelementptr inbounds nuw %struct.Upsert, ptr %49, i32 0, i32 5
  %50 = load ptr, ptr %pUpsertSrc, align 8
  %call19 = call ptr @sqlite3SrcListDup(ptr noundef %48, ptr noundef %50, i32 noundef 0)
  store ptr %call19, ptr %pSrc, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc34, %if.end18
  %51 = load i32, ptr %i, align 4
  %52 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %52, i32 0, i32 11
  %53 = load i16, ptr %nCol, align 2
  %conv21 = sext i16 %53 to i32
  %cmp22 = icmp slt i32 %51, %conv21
  br i1 %cmp22, label %for.body24, label %for.end36

for.body24:                                       ; preds = %for.cond20
  %54 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %54, i32 0, i32 1
  %55 = load ptr, ptr %aCol, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %56 to i64
  %arrayidx26 = getelementptr inbounds %struct.Column, ptr %55, i64 %idxprom25
  %affinity = getelementptr inbounds nuw %struct.Column, ptr %arrayidx26, i32 0, i32 4
  %57 = load i8, ptr %affinity, align 1
  %conv27 = sext i8 %57 to i32
  %cmp28 = icmp eq i32 %conv27, 69
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %for.body24
  %58 = load ptr, ptr %v, align 8
  %59 = load ptr, ptr %pUpsert.addr, align 8
  %regData = getelementptr inbounds nuw %struct.Upsert, ptr %59, i32 0, i32 6
  %60 = load i32, ptr %regData, align 8
  %61 = load i32, ptr %i, align 4
  %add31 = add nsw i32 %60, %61
  %call32 = call i32 @sqlite3VdbeAddOp1(ptr noundef %58, i32 noundef 84, i32 noundef %add31)
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %for.body24
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %62 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %62, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond20, !llvm.loop !8

for.end36:                                        ; preds = %for.cond20
  %63 = load ptr, ptr %pParse.addr, align 8
  %64 = load ptr, ptr %pSrc, align 8
  %65 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertSet = getelementptr inbounds nuw %struct.Upsert, ptr %65, i32 0, i32 2
  %66 = load ptr, ptr %pUpsertSet, align 8
  %67 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertWhere = getelementptr inbounds nuw %struct.Upsert, ptr %67, i32 0, i32 3
  %68 = load ptr, ptr %pUpsertWhere, align 8
  %69 = load ptr, ptr %pUpsert.addr, align 8
  call void @sqlite3Update(ptr noundef %63, ptr noundef %64, ptr noundef %66, ptr noundef %68, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %69)
  %70 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertSet37 = getelementptr inbounds nuw %struct.Upsert, ptr %70, i32 0, i32 2
  store ptr null, ptr %pUpsertSet37, align 8
  %71 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertWhere38 = getelementptr inbounds nuw %struct.Upsert, ptr %71, i32 0, i32 3
  store ptr null, ptr %pUpsertWhere38, align 8
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
!8 = distinct !{!8, !7}
