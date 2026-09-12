; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@sqlite3StrBINARY = external hidden constant [7 x i8], align 1
@.str.802 = external hidden unnamed_addr constant [45 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3FkLocateIndex(ptr noundef %pParse, ptr noundef %pParent, ptr noundef %pFKey, ptr noundef %ppIdx, ptr noundef %paiCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pParse.addr = alloca ptr, align 8
  %pParent.addr = alloca ptr, align 8
  %pFKey.addr = alloca ptr, align 8
  %ppIdx.addr = alloca ptr, align 8
  %paiCol.addr = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %aiCol = alloca ptr, align 8
  %nCol = alloca i32, align 4
  %zKey = alloca ptr, align 8
  %i = alloca i32, align 4
  %i53 = alloca i32, align 4
  %j = alloca i32, align 4
  %iCol = alloca i16, align 2
  %zDfltColl = alloca ptr, align 8
  %zIdxCol = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pParent, ptr %pParent.addr, align 8
  store ptr %pFKey, ptr %pFKey.addr, align 8
  store ptr %ppIdx, ptr %ppIdx.addr, align 8
  store ptr %paiCol, ptr %paiCol.addr, align 8
  store ptr null, ptr %pIdx, align 8
  store ptr null, ptr %aiCol, align 8
  %0 = load ptr, ptr %pFKey.addr, align 8
  %nCol1 = getelementptr inbounds nuw %struct.FKey, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nCol1, align 8
  store i32 %1, ptr %nCol, align 4
  %2 = load ptr, ptr %pFKey.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.FKey, ptr %2, i32 0, i32 9
  %arrayidx = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol, i64 0, i64 0
  %zCol = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx, i32 0, i32 1
  %3 = load ptr, ptr %zCol, align 8
  store ptr %3, ptr %zKey, align 8
  %4 = load i32, ptr %nCol, align 4
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pParent.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %5, i32 0, i32 10
  %6 = load i16, ptr %iPKey, align 4
  %conv = sext i16 %6 to i32
  %cmp2 = icmp sge i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %zKey, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then4
  %8 = load ptr, ptr %pParent.addr, align 8
  %aCol6 = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %aCol6, align 8
  %10 = load ptr, ptr %pParent.addr, align 8
  %iPKey7 = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 10
  %11 = load i16, ptr %iPKey7, align 4
  %idxprom = sext i16 %11 to i64
  %arrayidx8 = getelementptr inbounds %struct.Column, ptr %9, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx8, i32 0, i32 0
  %12 = load ptr, ptr %zName, align 8
  %13 = load ptr, ptr %zKey, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %12, ptr noundef %13)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end21

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %paiCol.addr, align 8
  %tobool13 = icmp ne ptr %14, null
  br i1 %tobool13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.else
  %15 = load ptr, ptr %pParse.addr, align 8
  %db = getelementptr inbounds nuw %struct.Parse, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %db, align 8
  %17 = load i32, ptr %nCol, align 4
  %conv15 = sext i32 %17 to i64
  %mul = mul i64 %conv15, 4
  %call16 = call ptr @sqlite3DbMallocRawNN(ptr noundef %16, i64 noundef %mul)
  store ptr %call16, ptr %aiCol, align 8
  %18 = load ptr, ptr %aiCol, align 8
  %tobool17 = icmp ne ptr %18, null
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.then14
  store i32 1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.then14
  %19 = load ptr, ptr %aiCol, align 8
  %20 = load ptr, ptr %paiCol.addr, align 8
  store ptr %19, ptr %20, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end12
  %21 = load ptr, ptr %pParent.addr, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pIndex, align 8
  store ptr %22, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc119, %if.end21
  %23 = load ptr, ptr %pIdx, align 8
  %tobool22 = icmp ne ptr %23, null
  br i1 %tobool22, label %for.body, label %for.end120

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %24, i32 0, i32 13
  %25 = load i16, ptr %nKeyCol, align 2
  %conv23 = zext i16 %25 to i32
  %26 = load i32, ptr %nCol, align 4
  %cmp24 = icmp eq i32 %conv23, %26
  br i1 %cmp24, label %land.lhs.true, label %if.end118

land.lhs.true:                                    ; preds = %for.body
  %27 = load ptr, ptr %pIdx, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %27, i32 0, i32 15
  %28 = load i8, ptr %onError, align 2
  %conv26 = zext i8 %28 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %land.lhs.true29, label %if.end118

land.lhs.true29:                                  ; preds = %land.lhs.true
  %29 = load ptr, ptr %pIdx, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %29, i32 0, i32 9
  %30 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp30 = icmp eq ptr %30, null
  br i1 %cmp30, label %if.then32, label %if.end118

if.then32:                                        ; preds = %land.lhs.true29
  %31 = load ptr, ptr %zKey, align 8
  %cmp33 = icmp eq ptr %31, null
  br i1 %cmp33, label %if.then35, label %if.else52

if.then35:                                        ; preds = %if.then32
  %32 = load ptr, ptr %pIdx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %32, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp36 = icmp eq i32 %bf.cast, 2
  br i1 %cmp36, label %if.then38, label %if.end51

if.then38:                                        ; preds = %if.then35
  %33 = load ptr, ptr %aiCol, align 8
  %tobool39 = icmp ne ptr %33, null
  br i1 %tobool39, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.then38
  store i32 0, ptr %i, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc, %if.then40
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %nCol, align 4
  %cmp42 = icmp slt i32 %34, %35
  br i1 %cmp42, label %for.body44, label %for.end

for.body44:                                       ; preds = %for.cond41
  %36 = load ptr, ptr %pFKey.addr, align 8
  %aCol45 = getelementptr inbounds nuw %struct.FKey, ptr %36, i32 0, i32 9
  %37 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol45, i64 0, i64 %idxprom46
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx47, i32 0, i32 0
  %38 = load i32, ptr %iFrom, align 8
  %39 = load ptr, ptr %aiCol, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom48 = sext i32 %40 to i64
  %arrayidx49 = getelementptr inbounds i32, ptr %39, i64 %idxprom48
  store i32 %38, ptr %arrayidx49, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body44
  %41 = load i32, ptr %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond41, !llvm.loop !6

for.end:                                          ; preds = %for.cond41
  br label %if.end50

if.end50:                                         ; preds = %for.end, %if.then38
  br label %for.end120

if.end51:                                         ; preds = %if.then35
  br label %if.end117

if.else52:                                        ; preds = %if.then32
  store i32 0, ptr %i53, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc110, %if.else52
  %42 = load i32, ptr %i53, align 4
  %43 = load i32, ptr %nCol, align 4
  %cmp55 = icmp slt i32 %42, %43
  br i1 %cmp55, label %for.body57, label %for.end112

for.body57:                                       ; preds = %for.cond54
  %44 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %aiColumn, align 8
  %46 = load i32, ptr %i53, align 4
  %idxprom58 = sext i32 %46 to i64
  %arrayidx59 = getelementptr inbounds i16, ptr %45, i64 %idxprom58
  %47 = load i16, ptr %arrayidx59, align 2
  store i16 %47, ptr %iCol, align 2
  %48 = load i16, ptr %iCol, align 2
  %conv60 = sext i16 %48 to i32
  %cmp61 = icmp slt i32 %conv60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %for.body57
  br label %for.end112

if.end64:                                         ; preds = %for.body57
  %49 = load ptr, ptr %pParent.addr, align 8
  %aCol65 = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %aCol65, align 8
  %51 = load i16, ptr %iCol, align 2
  %idxprom66 = sext i16 %51 to i64
  %arrayidx67 = getelementptr inbounds %struct.Column, ptr %50, i64 %idxprom66
  %zColl = getelementptr inbounds nuw %struct.Column, ptr %arrayidx67, i32 0, i32 2
  %52 = load ptr, ptr %zColl, align 8
  store ptr %52, ptr %zDfltColl, align 8
  %53 = load ptr, ptr %zDfltColl, align 8
  %tobool68 = icmp ne ptr %53, null
  br i1 %tobool68, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.end64
  store ptr @sqlite3StrBINARY, ptr %zDfltColl, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end64
  %54 = load ptr, ptr %pIdx, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %54, i32 0, i32 8
  %55 = load ptr, ptr %azColl, align 8
  %56 = load i32, ptr %i53, align 4
  %idxprom71 = sext i32 %56 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %55, i64 %idxprom71
  %57 = load ptr, ptr %arrayidx72, align 8
  %58 = load ptr, ptr %zDfltColl, align 8
  %call73 = call i32 @sqlite3StrICmp(ptr noundef %57, ptr noundef %58)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end70
  br label %for.end112

if.end76:                                         ; preds = %if.end70
  %59 = load ptr, ptr %pParent.addr, align 8
  %aCol77 = getelementptr inbounds nuw %struct.Table, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %aCol77, align 8
  %61 = load i16, ptr %iCol, align 2
  %idxprom78 = sext i16 %61 to i64
  %arrayidx79 = getelementptr inbounds %struct.Column, ptr %60, i64 %idxprom78
  %zName80 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx79, i32 0, i32 0
  %62 = load ptr, ptr %zName80, align 8
  store ptr %62, ptr %zIdxCol, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc103, %if.end76
  %63 = load i32, ptr %j, align 4
  %64 = load i32, ptr %nCol, align 4
  %cmp82 = icmp slt i32 %63, %64
  br i1 %cmp82, label %for.body84, label %for.end105

for.body84:                                       ; preds = %for.cond81
  %65 = load ptr, ptr %pFKey.addr, align 8
  %aCol85 = getelementptr inbounds nuw %struct.FKey, ptr %65, i32 0, i32 9
  %66 = load i32, ptr %j, align 4
  %idxprom86 = sext i32 %66 to i64
  %arrayidx87 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol85, i64 0, i64 %idxprom86
  %zCol88 = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx87, i32 0, i32 1
  %67 = load ptr, ptr %zCol88, align 8
  %68 = load ptr, ptr %zIdxCol, align 8
  %call89 = call i32 @sqlite3StrICmp(ptr noundef %67, ptr noundef %68)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end102

if.then92:                                        ; preds = %for.body84
  %69 = load ptr, ptr %aiCol, align 8
  %tobool93 = icmp ne ptr %69, null
  br i1 %tobool93, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.then92
  %70 = load ptr, ptr %pFKey.addr, align 8
  %aCol95 = getelementptr inbounds nuw %struct.FKey, ptr %70, i32 0, i32 9
  %71 = load i32, ptr %j, align 4
  %idxprom96 = sext i32 %71 to i64
  %arrayidx97 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol95, i64 0, i64 %idxprom96
  %iFrom98 = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx97, i32 0, i32 0
  %72 = load i32, ptr %iFrom98, align 8
  %73 = load ptr, ptr %aiCol, align 8
  %74 = load i32, ptr %i53, align 4
  %idxprom99 = sext i32 %74 to i64
  %arrayidx100 = getelementptr inbounds i32, ptr %73, i64 %idxprom99
  store i32 %72, ptr %arrayidx100, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then94, %if.then92
  br label %for.end105

if.end102:                                        ; preds = %for.body84
  br label %for.inc103

for.inc103:                                       ; preds = %if.end102
  %75 = load i32, ptr %j, align 4
  %inc104 = add nsw i32 %75, 1
  store i32 %inc104, ptr %j, align 4
  br label %for.cond81, !llvm.loop !8

for.end105:                                       ; preds = %if.end101, %for.cond81
  %76 = load i32, ptr %j, align 4
  %77 = load i32, ptr %nCol, align 4
  %cmp106 = icmp eq i32 %76, %77
  br i1 %cmp106, label %if.then108, label %if.end109

if.then108:                                       ; preds = %for.end105
  br label %for.end112

if.end109:                                        ; preds = %for.end105
  br label %for.inc110

for.inc110:                                       ; preds = %if.end109
  %78 = load i32, ptr %i53, align 4
  %inc111 = add nsw i32 %78, 1
  store i32 %inc111, ptr %i53, align 4
  br label %for.cond54, !llvm.loop !9

for.end112:                                       ; preds = %if.then108, %if.then75, %if.then63, %for.cond54
  %79 = load i32, ptr %i53, align 4
  %80 = load i32, ptr %nCol, align 4
  %cmp113 = icmp eq i32 %79, %80
  br i1 %cmp113, label %if.then115, label %if.end116

if.then115:                                       ; preds = %for.end112
  br label %for.end120

if.end116:                                        ; preds = %for.end112
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.end51
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %land.lhs.true29, %land.lhs.true, %for.body
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118
  %81 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %81, i32 0, i32 5
  %82 = load ptr, ptr %pNext, align 8
  store ptr %82, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !10

for.end120:                                       ; preds = %if.then115, %if.end50, %for.cond
  %83 = load ptr, ptr %pIdx, align 8
  %tobool121 = icmp ne ptr %83, null
  br i1 %tobool121, label %if.end128, label %if.then122

if.then122:                                       ; preds = %for.end120
  %84 = load ptr, ptr %pParse.addr, align 8
  %disableTriggers = getelementptr inbounds nuw %struct.Parse, ptr %84, i32 0, i32 44
  %85 = load i8, ptr %disableTriggers, align 2
  %tobool123 = icmp ne i8 %85, 0
  br i1 %tobool123, label %if.end126, label %if.then124

if.then124:                                       ; preds = %if.then122
  %86 = load ptr, ptr %pParse.addr, align 8
  %87 = load ptr, ptr %pFKey.addr, align 8
  %pFrom = getelementptr inbounds nuw %struct.FKey, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %pFrom, align 8
  %zName125 = getelementptr inbounds nuw %struct.Table, ptr %88, i32 0, i32 0
  %89 = load ptr, ptr %zName125, align 8
  %90 = load ptr, ptr %pFKey.addr, align 8
  %zTo = getelementptr inbounds nuw %struct.FKey, ptr %90, i32 0, i32 2
  %91 = load ptr, ptr %zTo, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %86, ptr noundef @.str.802, ptr noundef %89, ptr noundef %91)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.then122
  %92 = load ptr, ptr %pParse.addr, align 8
  %db127 = getelementptr inbounds nuw %struct.Parse, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %db127, align 8
  %94 = load ptr, ptr %aiCol, align 8
  call void @sqlite3DbFree(ptr noundef %93, ptr noundef %94)
  store i32 1, ptr %retval, align 4
  br label %return

if.end128:                                        ; preds = %for.end120
  %95 = load ptr, ptr %pIdx, align 8
  %96 = load ptr, ptr %ppIdx.addr, align 8
  store ptr %95, ptr %96, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end128, %if.end126, %if.then18, %if.then10, %if.then5
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
