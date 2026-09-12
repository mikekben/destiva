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
%struct.TriggerPrg = type { ptr, ptr, ptr, i32, [2 x i32] }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.538 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.539 = external hidden unnamed_addr constant [19 x i8], align 1
@sqlite3Prepare.azColName = external hidden constant [12 x ptr], align 16

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFinalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ParserReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RunParser(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlockList(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Prepare(ptr noundef %db, ptr noundef %zSql, i32 noundef %nBytes, i32 noundef %prepFlags, ptr noundef %pReprepare, ptr noundef %ppStmt, ptr noundef %pzTail) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %nBytes.addr = alloca i32, align 4
  %prepFlags.addr = alloca i32, align 4
  %pReprepare.addr = alloca ptr, align 8
  %ppStmt.addr = alloca ptr, align 8
  %pzTail.addr = alloca ptr, align 8
  %zErrMsg = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %sParse = alloca %struct.Parse, align 8
  %pBt = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zSqlCopy = alloca ptr, align 8
  %mxLen = alloca i32, align 4
  %iFirst = alloca i32, align 4
  %mx = alloca i32, align 4
  %pT = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store i32 %nBytes, ptr %nBytes.addr, align 4
  store i32 %prepFlags, ptr %prepFlags.addr, align 4
  store ptr %pReprepare, ptr %pReprepare.addr, align 8
  store ptr %ppStmt, ptr %ppStmt.addr, align 8
  store ptr %pzTail, ptr %pzTail.addr, align 8
  store ptr null, ptr %zErrMsg, align 8
  store i32 0, ptr %rc, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sParse, i8 0, i64 204, i1 false)
  %add.ptr = getelementptr inbounds nuw i8, ptr %sParse, i64 256
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr, i8 0, i64 160, i1 false)
  %0 = load ptr, ptr %pReprepare.addr, align 8
  %pReprepare1 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 56
  store ptr %0, ptr %pReprepare1, align 8
  %1 = load i32, ptr %prepFlags.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %disableLookaside = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 12
  %2 = load i8, ptr %disableLookaside, align 4
  %inc = add i8 %2, 1
  store i8 %inc, ptr %disableLookaside, align 4
  %3 = load ptr, ptr %db.addr, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 61
  %bDisable = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 0
  %4 = load i32, ptr %bDisable, align 8
  %inc2 = add i32 %4, 1
  store i32 %inc2, ptr %bDisable, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %prepFlags.addr, align 4
  %and3 = and i32 %5, 4
  %cmp = icmp ne i32 %and3, 0
  %conv = zext i1 %cmp to i32
  %conv4 = trunc i32 %conv to i8
  %disableVtab = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 13
  store i8 %conv4, ptr %disableVtab, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %nDb, align 8
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %aDb, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %10, i64 %idxprom
  %pBt7 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %12 = load ptr, ptr %pBt7, align 8
  store ptr %12, ptr %pBt, align 8
  %13 = load ptr, ptr %pBt, align 8
  %tobool8 = icmp ne ptr %13, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %for.body
  %14 = load ptr, ptr %pBt, align 8
  %call = call i32 @sqlite3BtreeSchemaLocked(ptr noundef %14)
  store i32 %call, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %tobool10 = icmp ne i32 %15, 0
  br i1 %tobool10, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.then9
  %16 = load ptr, ptr %db.addr, align 8
  %aDb12 = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %aDb12, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds %struct.Db, ptr %17, i64 %idxprom13
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx14, i32 0, i32 0
  %19 = load ptr, ptr %zDbSName, align 8
  store ptr %19, ptr %zDb, align 8
  %20 = load ptr, ptr %db.addr, align 8
  %21 = load i32, ptr %rc, align 4
  %22 = load ptr, ptr %zDb, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %20, i32 noundef %21, ptr noundef @.str.538, ptr noundef %22)
  br label %end_prepare

if.end15:                                         ; preds = %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %23 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %23, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %db.addr, align 8
  call void @sqlite3VtabUnlockList(ptr noundef %24)
  %25 = load ptr, ptr %db.addr, align 8
  %db18 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 0
  store ptr %25, ptr %db18, align 8
  %26 = load i32, ptr %nBytes.addr, align 4
  %cmp19 = icmp sge i32 %26, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else46

land.lhs.true:                                    ; preds = %for.end
  %27 = load i32, ptr %nBytes.addr, align 4
  %cmp21 = icmp eq i32 %27, 0
  br i1 %cmp21, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %28 = load ptr, ptr %zSql.addr, align 8
  %29 = load i32, ptr %nBytes.addr, align 4
  %sub = sub nsw i32 %29, 1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %28, i64 %idxprom23
  %30 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %30 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %if.then28, label %if.else46

if.then28:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %31 = load ptr, ptr %db.addr, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 33
  %arrayidx29 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 1
  %32 = load i32, ptr %arrayidx29, align 4
  store i32 %32, ptr %mxLen, align 4
  %33 = load i32, ptr %nBytes.addr, align 4
  %34 = load i32, ptr %mxLen, align 4
  %cmp30 = icmp sgt i32 %33, %34
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then28
  %35 = load ptr, ptr %db.addr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %35, i32 noundef 18, ptr noundef @.str.539)
  %36 = load ptr, ptr %db.addr, align 8
  %call33 = call i32 @sqlite3ApiExit(ptr noundef %36, i32 noundef 18)
  store i32 %call33, ptr %rc, align 4
  br label %end_prepare

if.end34:                                         ; preds = %if.then28
  %37 = load ptr, ptr %db.addr, align 8
  %38 = load ptr, ptr %zSql.addr, align 8
  %39 = load i32, ptr %nBytes.addr, align 4
  %conv35 = sext i32 %39 to i64
  %call36 = call ptr @sqlite3DbStrNDup(ptr noundef %37, ptr noundef %38, i64 noundef %conv35)
  store ptr %call36, ptr %zSqlCopy, align 8
  %40 = load ptr, ptr %zSqlCopy, align 8
  %tobool37 = icmp ne ptr %40, null
  br i1 %tobool37, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end34
  %41 = load ptr, ptr %zSqlCopy, align 8
  %call39 = call i32 @sqlite3RunParser(ptr noundef %sParse, ptr noundef %41, ptr noundef %zErrMsg)
  %42 = load ptr, ptr %zSql.addr, align 8
  %zTail = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 57
  %43 = load ptr, ptr %zTail, align 8
  %44 = load ptr, ptr %zSqlCopy, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %43 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx40 = getelementptr inbounds i8, ptr %42, i64 %sub.ptr.sub
  %zTail41 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 57
  store ptr %arrayidx40, ptr %zTail41, align 8
  %45 = load ptr, ptr %db.addr, align 8
  %46 = load ptr, ptr %zSqlCopy, align 8
  call void @sqlite3DbFree(ptr noundef %45, ptr noundef %46)
  br label %if.end45

if.else:                                          ; preds = %if.end34
  %47 = load ptr, ptr %zSql.addr, align 8
  %48 = load i32, ptr %nBytes.addr, align 4
  %idxprom42 = sext i32 %48 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %47, i64 %idxprom42
  %zTail44 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 57
  store ptr %arrayidx43, ptr %zTail44, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then38
  br label %if.end48

if.else46:                                        ; preds = %lor.lhs.false, %for.end
  %49 = load ptr, ptr %zSql.addr, align 8
  %call47 = call i32 @sqlite3RunParser(ptr noundef %sParse, ptr noundef %49, ptr noundef %zErrMsg)
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.end45
  %rc49 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  %50 = load i32, ptr %rc49, align 8
  %cmp50 = icmp eq i32 %50, 101
  br i1 %cmp50, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end48
  %rc53 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  store i32 0, ptr %rc53, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48
  %checkSchema = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 5
  %51 = load i8, ptr %checkSchema, align 1
  %tobool55 = icmp ne i8 %51, 0
  br i1 %tobool55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end54
  call void @schemaIsValid(ptr noundef %sParse)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end54
  %52 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %52, i32 0, i32 19
  %53 = load i8, ptr %mallocFailed, align 1
  %tobool58 = icmp ne i8 %53, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  %rc60 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  store i32 7, ptr %rc60, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57
  %54 = load ptr, ptr %pzTail.addr, align 8
  %tobool62 = icmp ne ptr %54, null
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end61
  %zTail64 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 57
  %55 = load ptr, ptr %zTail64, align 8
  %56 = load ptr, ptr %pzTail.addr, align 8
  store ptr %55, ptr %56, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61
  %rc66 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  %57 = load i32, ptr %rc66, align 8
  store i32 %57, ptr %rc, align 4
  %explain = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 50
  %58 = load i8, ptr %explain, align 1
  %conv67 = zext i8 %58 to i32
  %tobool68 = icmp ne i32 %conv67, 0
  br i1 %tobool68, label %land.lhs.true69, label %if.end96

land.lhs.true69:                                  ; preds = %if.end65
  %59 = load i32, ptr %rc, align 4
  %cmp70 = icmp eq i32 %59, 0
  br i1 %cmp70, label %land.lhs.true72, label %if.end96

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %60 = load ptr, ptr %pVdbe, align 8
  %tobool73 = icmp ne ptr %60, null
  br i1 %tobool73, label %if.then74, label %if.end96

if.then74:                                        ; preds = %land.lhs.true72
  %explain75 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 50
  %61 = load i8, ptr %explain75, align 1
  %conv76 = zext i8 %61 to i32
  %cmp77 = icmp eq i32 %conv76, 2
  br i1 %cmp77, label %if.then79, label %if.else81

if.then79:                                        ; preds = %if.then74
  %pVdbe80 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %62 = load ptr, ptr %pVdbe80, align 8
  call void @sqlite3VdbeSetNumCols(ptr noundef %62, i32 noundef 4)
  store i32 8, ptr %iFirst, align 4
  store i32 12, ptr %mx, align 4
  br label %if.end83

if.else81:                                        ; preds = %if.then74
  %pVdbe82 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %63 = load ptr, ptr %pVdbe82, align 8
  call void @sqlite3VdbeSetNumCols(ptr noundef %63, i32 noundef 8)
  store i32 0, ptr %iFirst, align 4
  store i32 8, ptr %mx, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.else81, %if.then79
  %64 = load i32, ptr %iFirst, align 4
  store i32 %64, ptr %i, align 4
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc93, %if.end83
  %65 = load i32, ptr %i, align 4
  %66 = load i32, ptr %mx, align 4
  %cmp85 = icmp slt i32 %65, %66
  br i1 %cmp85, label %for.body87, label %for.end95

for.body87:                                       ; preds = %for.cond84
  %pVdbe88 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %67 = load ptr, ptr %pVdbe88, align 8
  %68 = load i32, ptr %i, align 4
  %69 = load i32, ptr %iFirst, align 4
  %sub89 = sub nsw i32 %68, %69
  %70 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %70 to i64
  %arrayidx91 = getelementptr inbounds [12 x ptr], ptr @sqlite3Prepare.azColName, i64 0, i64 %idxprom90
  %71 = load ptr, ptr %arrayidx91, align 8
  %call92 = call i32 @sqlite3VdbeSetColName(ptr noundef %67, i32 noundef %sub89, i32 noundef 0, ptr noundef %71, ptr noundef null)
  br label %for.inc93

for.inc93:                                        ; preds = %for.body87
  %72 = load i32, ptr %i, align 4
  %inc94 = add nsw i32 %72, 1
  store i32 %inc94, ptr %i, align 4
  br label %for.cond84, !llvm.loop !8

for.end95:                                        ; preds = %for.cond84
  br label %if.end96

if.end96:                                         ; preds = %for.end95, %land.lhs.true72, %land.lhs.true69, %if.end65
  %73 = load ptr, ptr %db.addr, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %73, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %74 = load i8, ptr %busy, align 1
  %conv97 = zext i8 %74 to i32
  %cmp98 = icmp eq i32 %conv97, 0
  br i1 %cmp98, label %if.then100, label %if.end108

if.then100:                                       ; preds = %if.end96
  %pVdbe101 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %75 = load ptr, ptr %pVdbe101, align 8
  %76 = load ptr, ptr %zSql.addr, align 8
  %zTail102 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 57
  %77 = load ptr, ptr %zTail102, align 8
  %78 = load ptr, ptr %zSql.addr, align 8
  %sub.ptr.lhs.cast103 = ptrtoint ptr %77 to i64
  %sub.ptr.rhs.cast104 = ptrtoint ptr %78 to i64
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %conv106 = trunc i64 %sub.ptr.sub105 to i32
  %79 = load i32, ptr %prepFlags.addr, align 4
  %conv107 = trunc i32 %79 to i8
  call void @sqlite3VdbeSetSql(ptr noundef %75, ptr noundef %76, i32 noundef %conv106, i8 noundef zeroext %conv107)
  br label %if.end108

if.end108:                                        ; preds = %if.then100, %if.end96
  %80 = load i32, ptr %rc, align 4
  %cmp109 = icmp ne i32 %80, 0
  br i1 %cmp109, label %if.then115, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %if.end108
  %81 = load ptr, ptr %db.addr, align 8
  %mallocFailed112 = getelementptr inbounds nuw %struct.sqlite3, ptr %81, i32 0, i32 19
  %82 = load i8, ptr %mallocFailed112, align 1
  %conv113 = zext i8 %82 to i32
  %tobool114 = icmp ne i32 %conv113, 0
  br i1 %tobool114, label %if.then115, label %if.else122

if.then115:                                       ; preds = %lor.lhs.false111, %if.end108
  %pVdbe116 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %83 = load ptr, ptr %pVdbe116, align 8
  %tobool117 = icmp ne ptr %83, null
  br i1 %tobool117, label %if.then118, label %if.end121

if.then118:                                       ; preds = %if.then115
  %pVdbe119 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %84 = load ptr, ptr %pVdbe119, align 8
  %call120 = call i32 @sqlite3VdbeFinalize(ptr noundef %84)
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.then115
  br label %if.end124

if.else122:                                       ; preds = %lor.lhs.false111
  %pVdbe123 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 2
  %85 = load ptr, ptr %pVdbe123, align 8
  %86 = load ptr, ptr %ppStmt.addr, align 8
  store ptr %85, ptr %86, align 8
  br label %if.end124

if.end124:                                        ; preds = %if.else122, %if.end121
  %87 = load ptr, ptr %zErrMsg, align 8
  %tobool125 = icmp ne ptr %87, null
  br i1 %tobool125, label %if.then126, label %if.else127

if.then126:                                       ; preds = %if.end124
  %88 = load ptr, ptr %db.addr, align 8
  %89 = load i32, ptr %rc, align 4
  %90 = load ptr, ptr %zErrMsg, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %88, i32 noundef %89, ptr noundef @.str.20, ptr noundef %90)
  %91 = load ptr, ptr %db.addr, align 8
  %92 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3DbFree(ptr noundef %91, ptr noundef %92)
  br label %if.end128

if.else127:                                       ; preds = %if.end124
  %93 = load ptr, ptr %db.addr, align 8
  %94 = load i32, ptr %rc, align 4
  call void @sqlite3Error(ptr noundef %93, i32 noundef %94)
  br label %if.end128

if.end128:                                        ; preds = %if.else127, %if.then126
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end128
  %pTriggerPrg = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 65
  %95 = load ptr, ptr %pTriggerPrg, align 8
  %tobool129 = icmp ne ptr %95, null
  br i1 %tobool129, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %pTriggerPrg130 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 65
  %96 = load ptr, ptr %pTriggerPrg130, align 8
  store ptr %96, ptr %pT, align 8
  %97 = load ptr, ptr %pT, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerPrg, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %pNext, align 8
  %pTriggerPrg131 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 65
  store ptr %98, ptr %pTriggerPrg131, align 8
  %99 = load ptr, ptr %db.addr, align 8
  %100 = load ptr, ptr %pT, align 8
  call void @sqlite3DbFree(ptr noundef %99, ptr noundef %100)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %end_prepare

end_prepare:                                      ; preds = %while.end, %if.then32, %if.then11
  call void @sqlite3ParserReset(ptr noundef %sParse)
  %101 = load i32, ptr %rc, align 4
  ret i32 %101
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSchemaLocked(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @schemaIsValid(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetNumCols(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSetColName(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetSql(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
