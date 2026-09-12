; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
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

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

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
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoOfIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3RefillIndex(ptr noundef %pParse, ptr noundef %pIndex, i32 noundef %memRootPage) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pIndex.addr = alloca ptr, align 8
  %memRootPage.addr = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %iTab = alloca i32, align 4
  %iIdx = alloca i32, align 4
  %iSorter = alloca i32, align 4
  %addr1 = alloca i32, align 4
  %addr2 = alloca i32, align 4
  %tnum = alloca i32, align 4
  %iPartIdxLabel = alloca i32, align 4
  %v = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %regRecord = alloca i32, align 4
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %j2 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pIndex, ptr %pIndex.addr, align 8
  store i32 %memRootPage, ptr %memRootPage.addr, align 4
  %0 = load ptr, ptr %pIndex.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pTable, align 8
  store ptr %1, ptr %pTab, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 17
  %3 = load i32, ptr %nTab, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %nTab, align 4
  store i32 %3, ptr %iTab, align 4
  %4 = load ptr, ptr %pParse.addr, align 8
  %nTab1 = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 17
  %5 = load i32, ptr %nTab1, align 4
  %inc2 = add nsw i32 %5, 1
  store i32 %inc2, ptr %nTab1, align 4
  store i32 %5, ptr %iIdx, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %db3, align 8
  store ptr %7, ptr %db, align 8
  %8 = load ptr, ptr %db, align 8
  %9 = load ptr, ptr %pIndex.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Index, ptr %9, i32 0, i32 6
  %10 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %8, ptr noundef %10)
  store i32 %call, ptr %iDb, align 4
  %11 = load ptr, ptr %pParse.addr, align 8
  %12 = load ptr, ptr %pIndex.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Index, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %zName, align 8
  %14 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %aDb, align 8
  %16 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %15, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %17 = load ptr, ptr %zDbSName, align 8
  %call4 = call i32 @sqlite3AuthCheck(ptr noundef %11, i32 noundef 27, ptr noundef %13, ptr noundef null, ptr noundef %17)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load i32, ptr %iDb, align 4
  %20 = load ptr, ptr %pTab, align 8
  %tnum5 = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 7
  %21 = load i32, ptr %tnum5, align 8
  %22 = load ptr, ptr %pTab, align 8
  %zName6 = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zName6, align 8
  call void @sqlite3TableLock(ptr noundef %18, i32 noundef %19, i32 noundef %21, i8 noundef zeroext 1, ptr noundef %23)
  %24 = load ptr, ptr %pParse.addr, align 8
  %call7 = call ptr @sqlite3GetVdbe(ptr noundef %24)
  store ptr %call7, ptr %v, align 8
  %25 = load ptr, ptr %v, align 8
  %cmp = icmp eq ptr %25, null
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %return

if.end9:                                          ; preds = %if.end
  %26 = load i32, ptr %memRootPage.addr, align 4
  %cmp10 = icmp sge i32 %26, 0
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %27 = load i32, ptr %memRootPage.addr, align 4
  store i32 %27, ptr %tnum, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end9
  %28 = load ptr, ptr %pIndex.addr, align 8
  %tnum12 = getelementptr inbounds nuw %struct.Index, ptr %28, i32 0, i32 11
  %29 = load i32, ptr %tnum12, align 8
  store i32 %29, ptr %tnum, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %30 = load ptr, ptr %pParse.addr, align 8
  %31 = load ptr, ptr %pIndex.addr, align 8
  %call14 = call ptr @sqlite3KeyInfoOfIndex(ptr noundef %30, ptr noundef %31)
  store ptr %call14, ptr %pKey, align 8
  %32 = load ptr, ptr %pParse.addr, align 8
  %nTab15 = getelementptr inbounds nuw %struct.Parse, ptr %32, i32 0, i32 17
  %33 = load i32, ptr %nTab15, align 4
  %inc16 = add nsw i32 %33, 1
  store i32 %inc16, ptr %nTab15, align 4
  store i32 %33, ptr %iSorter, align 4
  %34 = load ptr, ptr %v, align 8
  %35 = load i32, ptr %iSorter, align 4
  %36 = load ptr, ptr %pIndex.addr, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %36, i32 0, i32 13
  %37 = load i16, ptr %nKeyCol, align 2
  %conv = zext i16 %37 to i32
  %38 = load ptr, ptr %pKey, align 8
  %call17 = call ptr @sqlite3KeyInfoRef(ptr noundef %38)
  %call18 = call i32 @sqlite3VdbeAddOp4(ptr noundef %34, i32 noundef 114, i32 noundef %35, i32 noundef 0, i32 noundef %conv, ptr noundef %call17, i32 noundef -9)
  %39 = load ptr, ptr %pParse.addr, align 8
  %40 = load i32, ptr %iTab, align 4
  %41 = load i32, ptr %iDb, align 4
  %42 = load ptr, ptr %pTab, align 8
  call void @sqlite3OpenTable(ptr noundef %39, i32 noundef %40, i32 noundef %41, ptr noundef %42, i32 noundef 97)
  %43 = load ptr, ptr %v, align 8
  %44 = load i32, ptr %iTab, align 4
  %call19 = call i32 @sqlite3VdbeAddOp2(ptr noundef %43, i32 noundef 36, i32 noundef %44, i32 noundef 0)
  store i32 %call19, ptr %addr1, align 4
  %45 = load ptr, ptr %pParse.addr, align 8
  %call20 = call i32 @sqlite3GetTempReg(ptr noundef %45)
  store i32 %call20, ptr %regRecord, align 4
  %46 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MultiWrite(ptr noundef %46)
  %47 = load ptr, ptr %pParse.addr, align 8
  %48 = load ptr, ptr %pIndex.addr, align 8
  %49 = load i32, ptr %iTab, align 4
  %50 = load i32, ptr %regRecord, align 4
  %call21 = call i32 @sqlite3GenerateIndexKey(ptr noundef %47, ptr noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef 0, ptr noundef %iPartIdxLabel, ptr noundef null, i32 noundef 0)
  %51 = load ptr, ptr %v, align 8
  %52 = load i32, ptr %iSorter, align 4
  %53 = load i32, ptr %regRecord, align 4
  %call22 = call i32 @sqlite3VdbeAddOp2(ptr noundef %51, i32 noundef 131, i32 noundef %52, i32 noundef %53)
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load i32, ptr %iPartIdxLabel, align 4
  call void @sqlite3ResolvePartIdxLabel(ptr noundef %54, i32 noundef %55)
  %56 = load ptr, ptr %v, align 8
  %57 = load i32, ptr %iTab, align 4
  %58 = load i32, ptr %addr1, align 4
  %add = add nsw i32 %58, 1
  %call23 = call i32 @sqlite3VdbeAddOp2(ptr noundef %56, i32 noundef 5, i32 noundef %57, i32 noundef %add)
  %59 = load ptr, ptr %v, align 8
  %60 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %59, i32 noundef %60)
  %61 = load i32, ptr %memRootPage.addr, align 4
  %cmp24 = icmp slt i32 %61, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end13
  %62 = load ptr, ptr %v, align 8
  %63 = load i32, ptr %tnum, align 4
  %64 = load i32, ptr %iDb, align 4
  %call27 = call i32 @sqlite3VdbeAddOp2(ptr noundef %62, i32 noundef 137, i32 noundef %63, i32 noundef %64)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end13
  %65 = load ptr, ptr %v, align 8
  %66 = load i32, ptr %iIdx, align 4
  %67 = load i32, ptr %tnum, align 4
  %68 = load i32, ptr %iDb, align 4
  %69 = load ptr, ptr %pKey, align 8
  %call29 = call i32 @sqlite3VdbeAddOp4(ptr noundef %65, i32 noundef 98, i32 noundef %66, i32 noundef %67, i32 noundef %68, ptr noundef %69, i32 noundef -9)
  %70 = load ptr, ptr %v, align 8
  %71 = load i32, ptr %memRootPage.addr, align 4
  %cmp30 = icmp sge i32 %71, 0
  %72 = zext i1 %cmp30 to i64
  %cond = select i1 %cmp30, i32 16, i32 0
  %or = or i32 1, %cond
  %conv32 = trunc i32 %or to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %70, i16 noundef zeroext %conv32)
  %73 = load ptr, ptr %v, align 8
  %74 = load i32, ptr %iSorter, align 4
  %call33 = call i32 @sqlite3VdbeAddOp2(ptr noundef %73, i32 noundef 34, i32 noundef %74, i32 noundef 0)
  store i32 %call33, ptr %addr1, align 4
  %75 = load ptr, ptr %pIndex.addr, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %75, i32 0, i32 15
  %76 = load i8, ptr %onError, align 2
  %conv34 = zext i8 %76 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.then37, label %if.else43

if.then37:                                        ; preds = %if.end28
  %77 = load ptr, ptr %v, align 8
  %call38 = call i32 @sqlite3VdbeGoto(ptr noundef %77, i32 noundef 1)
  store i32 %call38, ptr %j2, align 4
  %78 = load ptr, ptr %v, align 8
  %call39 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %78)
  store i32 %call39, ptr %addr2, align 4
  %79 = load ptr, ptr %v, align 8
  %80 = load i32, ptr %iSorter, align 4
  %81 = load i32, ptr %j2, align 4
  %82 = load i32, ptr %regRecord, align 4
  %83 = load ptr, ptr %pIndex.addr, align 8
  %nKeyCol40 = getelementptr inbounds nuw %struct.Index, ptr %83, i32 0, i32 13
  %84 = load i16, ptr %nKeyCol40, align 2
  %conv41 = zext i16 %84 to i32
  %call42 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %79, i32 noundef 125, i32 noundef %80, i32 noundef %81, i32 noundef %82, i32 noundef %conv41)
  %85 = load ptr, ptr %pParse.addr, align 8
  %86 = load ptr, ptr %pIndex.addr, align 8
  call void @sqlite3UniqueConstraint(ptr noundef %85, i32 noundef 2, ptr noundef %86)
  %87 = load ptr, ptr %v, align 8
  %88 = load i32, ptr %j2, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %87, i32 noundef %88)
  br label %if.end45

if.else43:                                        ; preds = %if.end28
  %89 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %89)
  %90 = load ptr, ptr %v, align 8
  %call44 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %90)
  store i32 %call44, ptr %addr2, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else43, %if.then37
  %91 = load ptr, ptr %v, align 8
  %92 = load i32, ptr %iSorter, align 4
  %93 = load i32, ptr %regRecord, align 4
  %94 = load i32, ptr %iIdx, align 4
  %call46 = call i32 @sqlite3VdbeAddOp3(ptr noundef %91, i32 noundef 126, i32 noundef %92, i32 noundef %93, i32 noundef %94)
  %95 = load ptr, ptr %pIndex.addr, align 8
  %bAscKeyBug = getelementptr inbounds nuw %struct.Index, ptr %95, i32 0, i32 16
  %bf.load = load i16, ptr %bAscKeyBug, align 1
  %bf.lshr = lshr i16 %bf.load, 9
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool47 = icmp ne i32 %bf.cast, 0
  br i1 %tobool47, label %if.end50, label %if.then48

if.then48:                                        ; preds = %if.end45
  %96 = load ptr, ptr %v, align 8
  %97 = load i32, ptr %iIdx, align 4
  %call49 = call i32 @sqlite3VdbeAddOp1(ptr noundef %96, i32 noundef 130, i32 noundef %97)
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end45
  %98 = load ptr, ptr %v, align 8
  %99 = load i32, ptr %iIdx, align 4
  %100 = load i32, ptr %regRecord, align 4
  %call51 = call i32 @sqlite3VdbeAddOp2(ptr noundef %98, i32 noundef 132, i32 noundef %99, i32 noundef %100)
  %101 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %101, i16 noundef zeroext 16)
  %102 = load ptr, ptr %pParse.addr, align 8
  %103 = load i32, ptr %regRecord, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %102, i32 noundef %103)
  %104 = load ptr, ptr %v, align 8
  %105 = load i32, ptr %iSorter, align 4
  %106 = load i32, ptr %addr2, align 4
  %call52 = call i32 @sqlite3VdbeAddOp2(ptr noundef %104, i32 noundef 3, i32 noundef %105, i32 noundef %106)
  %107 = load ptr, ptr %v, align 8
  %108 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %107, i32 noundef %108)
  %109 = load ptr, ptr %v, align 8
  %110 = load i32, ptr %iTab, align 4
  %call53 = call i32 @sqlite3VdbeAddOp1(ptr noundef %109, i32 noundef 117, i32 noundef %110)
  %111 = load ptr, ptr %v, align 8
  %112 = load i32, ptr %iIdx, align 4
  %call54 = call i32 @sqlite3VdbeAddOp1(ptr noundef %111, i32 noundef 117, i32 noundef %112)
  %113 = load ptr, ptr %v, align 8
  %114 = load i32, ptr %iSorter, align 4
  %call55 = call i32 @sqlite3VdbeAddOp1(ptr noundef %113, i32 noundef 117, i32 noundef %114)
  br label %return

return:                                           ; preds = %if.end50, %if.then8, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3KeyInfoRef(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MultiWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GenerateIndexKey(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResolvePartIdxLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3UniqueConstraint(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
