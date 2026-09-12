; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VtabCtx = type { ptr, ptr, ptr, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.394 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.395 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.396 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.397 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ColumnType(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlock(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vtabCallConstructor(ptr noundef %db, ptr noundef %pTab, ptr noundef %pMod, ptr noundef %xConstruct, ptr noundef %pzErr) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pMod.addr = alloca ptr, align 8
  %xConstruct.addr = alloca ptr, align 8
  %pzErr.addr = alloca ptr, align 8
  %sCtx = alloca %struct.VtabCtx, align 8
  %pVTable = alloca ptr, align 8
  %rc = alloca i32, align 4
  %azArg = alloca ptr, align 8
  %nArg = alloca i32, align 4
  %zErr = alloca ptr, align 8
  %zModuleName = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %pCtx = alloca ptr, align 8
  %zFormat = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %oooHidden = alloca i8, align 1
  %zType = alloca ptr, align 8
  %nType = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nDel = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store ptr %pMod, ptr %pMod.addr, align 8
  store ptr %xConstruct, ptr %xConstruct.addr, align 8
  store ptr %pzErr, ptr %pzErr.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %azModuleArg = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 17
  %1 = load ptr, ptr %azModuleArg, align 8
  store ptr %1, ptr %azArg, align 8
  %2 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %nModuleArg, align 4
  store i32 %3, ptr %nArg, align 4
  store ptr null, ptr %zErr, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %pVtabCtx = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 69
  %5 = load ptr, ptr %pVtabCtx, align 8
  store ptr %5, ptr %pCtx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %pCtx, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pCtx, align 8
  %pTab1 = getelementptr inbounds nuw %struct.VtabCtx, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pTab1, align 8
  %9 = load ptr, ptr %pTab.addr, align 8
  %cmp = icmp eq ptr %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %db.addr, align 8
  %11 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %zName, align 8
  %call = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %10, ptr noundef @.str.394, ptr noundef %12)
  %13 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call, ptr %13, align 8
  store i32 6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %pCtx, align 8
  %pPrior = getelementptr inbounds nuw %struct.VtabCtx, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pPrior, align 8
  store ptr %15, ptr %pCtx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %db.addr, align 8
  %17 = load ptr, ptr %pTab.addr, align 8
  %zName2 = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zName2, align 8
  %call3 = call ptr @sqlite3DbStrDup(ptr noundef %16, ptr noundef %18)
  store ptr %call3, ptr %zModuleName, align 8
  %19 = load ptr, ptr %zModuleName, align 8
  %tobool4 = icmp ne ptr %19, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %for.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %for.end
  %call7 = call ptr @sqlite3MallocZero(i64 noundef 48)
  store ptr %call7, ptr %pVTable, align 8
  %20 = load ptr, ptr %pVTable, align 8
  %tobool8 = icmp ne ptr %20, null
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  %21 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %21)
  %22 = load ptr, ptr %db.addr, align 8
  %23 = load ptr, ptr %zModuleName, align 8
  call void @sqlite3DbFree(ptr noundef %22, ptr noundef %23)
  store i32 7, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end6
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load ptr, ptr %pVTable, align 8
  %db11 = getelementptr inbounds nuw %struct.VTable, ptr %25, i32 0, i32 0
  store ptr %24, ptr %db11, align 8
  %26 = load ptr, ptr %pMod.addr, align 8
  %27 = load ptr, ptr %pVTable, align 8
  %pMod12 = getelementptr inbounds nuw %struct.VTable, ptr %27, i32 0, i32 1
  store ptr %26, ptr %pMod12, align 8
  %28 = load ptr, ptr %db.addr, align 8
  %29 = load ptr, ptr %pTab.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 20
  %30 = load ptr, ptr %pSchema, align 8
  %call13 = call i32 @sqlite3SchemaToIndex(ptr noundef %28, ptr noundef %30)
  store i32 %call13, ptr %iDb, align 4
  %31 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %aDb, align 8
  %33 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %32, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %34 = load ptr, ptr %zDbSName, align 8
  %35 = load ptr, ptr %pTab.addr, align 8
  %azModuleArg14 = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 17
  %36 = load ptr, ptr %azModuleArg14, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %36, i64 1
  store ptr %34, ptr %arrayidx15, align 8
  %37 = load ptr, ptr %pTab.addr, align 8
  %pTab16 = getelementptr inbounds nuw %struct.VtabCtx, ptr %sCtx, i32 0, i32 1
  store ptr %37, ptr %pTab16, align 8
  %38 = load ptr, ptr %pVTable, align 8
  %pVTable17 = getelementptr inbounds nuw %struct.VtabCtx, ptr %sCtx, i32 0, i32 0
  store ptr %38, ptr %pVTable17, align 8
  %39 = load ptr, ptr %db.addr, align 8
  %pVtabCtx18 = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 69
  %40 = load ptr, ptr %pVtabCtx18, align 8
  %pPrior19 = getelementptr inbounds nuw %struct.VtabCtx, ptr %sCtx, i32 0, i32 2
  store ptr %40, ptr %pPrior19, align 8
  %bDeclared = getelementptr inbounds nuw %struct.VtabCtx, ptr %sCtx, i32 0, i32 3
  store i32 0, ptr %bDeclared, align 8
  %41 = load ptr, ptr %db.addr, align 8
  %pVtabCtx20 = getelementptr inbounds nuw %struct.sqlite3, ptr %41, i32 0, i32 69
  store ptr %sCtx, ptr %pVtabCtx20, align 8
  %42 = load ptr, ptr %xConstruct.addr, align 8
  %43 = load ptr, ptr %db.addr, align 8
  %44 = load ptr, ptr %pMod.addr, align 8
  %pAux = getelementptr inbounds nuw %struct.Module, ptr %44, i32 0, i32 3
  %45 = load ptr, ptr %pAux, align 8
  %46 = load i32, ptr %nArg, align 4
  %47 = load ptr, ptr %azArg, align 8
  %48 = load ptr, ptr %pVTable, align 8
  %pVtab = getelementptr inbounds nuw %struct.VTable, ptr %48, i32 0, i32 2
  %call21 = call i32 %42(ptr noundef %43, ptr noundef %45, i32 noundef %46, ptr noundef %47, ptr noundef %pVtab, ptr noundef %zErr)
  store i32 %call21, ptr %rc, align 4
  %pPrior22 = getelementptr inbounds nuw %struct.VtabCtx, ptr %sCtx, i32 0, i32 2
  %49 = load ptr, ptr %pPrior22, align 8
  %50 = load ptr, ptr %db.addr, align 8
  %pVtabCtx23 = getelementptr inbounds nuw %struct.sqlite3, ptr %50, i32 0, i32 69
  store ptr %49, ptr %pVtabCtx23, align 8
  %51 = load i32, ptr %rc, align 4
  %cmp24 = icmp eq i32 %51, 7
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end10
  %52 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %52)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end10
  %53 = load i32, ptr %rc, align 4
  %cmp27 = icmp ne i32 0, %53
  br i1 %cmp27, label %if.then28, label %if.else34

if.then28:                                        ; preds = %if.end26
  %54 = load ptr, ptr %zErr, align 8
  %cmp29 = icmp eq ptr %54, null
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then28
  %55 = load ptr, ptr %db.addr, align 8
  %56 = load ptr, ptr %zModuleName, align 8
  %call31 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %55, ptr noundef @.str.395, ptr noundef %56)
  %57 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call31, ptr %57, align 8
  br label %if.end33

if.else:                                          ; preds = %if.then28
  %58 = load ptr, ptr %db.addr, align 8
  %59 = load ptr, ptr %zErr, align 8
  %call32 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %58, ptr noundef @.str.20, ptr noundef %59)
  %60 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call32, ptr %60, align 8
  %61 = load ptr, ptr %zErr, align 8
  call void @sqlite3_free(ptr noundef %61)
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %62 = load ptr, ptr %db.addr, align 8
  %63 = load ptr, ptr %pVTable, align 8
  call void @sqlite3DbFree(ptr noundef %62, ptr noundef %63)
  br label %if.end140

if.else34:                                        ; preds = %if.end26
  %64 = load ptr, ptr %pVTable, align 8
  %pVtab35 = getelementptr inbounds nuw %struct.VTable, ptr %64, i32 0, i32 2
  %65 = load ptr, ptr %pVtab35, align 8
  %tobool36 = icmp ne ptr %65, null
  br i1 %tobool36, label %if.then37, label %if.end139

if.then37:                                        ; preds = %if.else34
  %66 = load ptr, ptr %pVTable, align 8
  %pVtab38 = getelementptr inbounds nuw %struct.VTable, ptr %66, i32 0, i32 2
  %67 = load ptr, ptr %pVtab38, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %67, i8 0, i64 24, i1 false)
  %68 = load ptr, ptr %pMod.addr, align 8
  %pModule = getelementptr inbounds nuw %struct.Module, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %pModule, align 8
  %70 = load ptr, ptr %pVTable, align 8
  %pVtab39 = getelementptr inbounds nuw %struct.VTable, ptr %70, i32 0, i32 2
  %71 = load ptr, ptr %pVtab39, align 8
  %pModule40 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %71, i32 0, i32 0
  store ptr %69, ptr %pModule40, align 8
  %72 = load ptr, ptr %pMod.addr, align 8
  %nRefModule = getelementptr inbounds nuw %struct.Module, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %nRefModule, align 8
  %inc = add nsw i32 %73, 1
  store i32 %inc, ptr %nRefModule, align 8
  %74 = load ptr, ptr %pVTable, align 8
  %nRef = getelementptr inbounds nuw %struct.VTable, ptr %74, i32 0, i32 3
  store i32 1, ptr %nRef, align 8
  %bDeclared41 = getelementptr inbounds nuw %struct.VtabCtx, ptr %sCtx, i32 0, i32 3
  %75 = load i32, ptr %bDeclared41, align 8
  %cmp42 = icmp eq i32 %75, 0
  br i1 %cmp42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.then37
  store ptr @.str.396, ptr %zFormat, align 8
  %76 = load ptr, ptr %db.addr, align 8
  %77 = load ptr, ptr %zFormat, align 8
  %78 = load ptr, ptr %pTab.addr, align 8
  %zName44 = getelementptr inbounds nuw %struct.Table, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %zName44, align 8
  %call45 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %76, ptr noundef %77, ptr noundef %79)
  %80 = load ptr, ptr %pzErr.addr, align 8
  store ptr %call45, ptr %80, align 8
  %81 = load ptr, ptr %pVTable, align 8
  call void @sqlite3VtabUnlock(ptr noundef %81)
  store i32 1, ptr %rc, align 4
  br label %if.end138

if.else46:                                        ; preds = %if.then37
  store i8 0, ptr %oooHidden, align 1
  %82 = load ptr, ptr %pTab.addr, align 8
  %pVTable47 = getelementptr inbounds nuw %struct.Table, ptr %82, i32 0, i32 18
  %83 = load ptr, ptr %pVTable47, align 8
  %84 = load ptr, ptr %pVTable, align 8
  %pNext = getelementptr inbounds nuw %struct.VTable, ptr %84, i32 0, i32 6
  store ptr %83, ptr %pNext, align 8
  %85 = load ptr, ptr %pVTable, align 8
  %86 = load ptr, ptr %pTab.addr, align 8
  %pVTable48 = getelementptr inbounds nuw %struct.Table, ptr %86, i32 0, i32 18
  store ptr %85, ptr %pVTable48, align 8
  store i32 0, ptr %iCol, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc135, %if.else46
  %87 = load i32, ptr %iCol, align 4
  %88 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %88, i32 0, i32 11
  %89 = load i16, ptr %nCol, align 2
  %conv = sext i16 %89 to i32
  %cmp50 = icmp slt i32 %87, %conv
  br i1 %cmp50, label %for.body52, label %for.end137

for.body52:                                       ; preds = %for.cond49
  %90 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %90, i32 0, i32 1
  %91 = load ptr, ptr %aCol, align 8
  %92 = load i32, ptr %iCol, align 4
  %idxprom53 = sext i32 %92 to i64
  %arrayidx54 = getelementptr inbounds %struct.Column, ptr %91, i64 %idxprom53
  %call55 = call ptr @sqlite3ColumnType(ptr noundef %arrayidx54, ptr noundef @.str.3)
  store ptr %call55, ptr %zType, align 8
  store i32 0, ptr %i, align 4
  %93 = load ptr, ptr %zType, align 8
  %call56 = call i32 @sqlite3Strlen30(ptr noundef %93)
  store i32 %call56, ptr %nType, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc88, %for.body52
  %94 = load i32, ptr %i, align 4
  %95 = load i32, ptr %nType, align 4
  %cmp58 = icmp slt i32 %94, %95
  br i1 %cmp58, label %for.body60, label %for.end90

for.body60:                                       ; preds = %for.cond57
  %96 = load ptr, ptr %zType, align 8
  %97 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %97 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %96, i64 %idxprom61
  %call63 = call i32 @sqlite3_strnicmp(ptr noundef @.str.397, ptr noundef %arrayidx62, i32 noundef 6)
  %cmp64 = icmp eq i32 0, %call63
  br i1 %cmp64, label %land.lhs.true, label %if.end87

land.lhs.true:                                    ; preds = %for.body60
  %98 = load i32, ptr %i, align 4
  %cmp66 = icmp eq i32 %98, 0
  br i1 %cmp66, label %land.lhs.true73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %99 = load ptr, ptr %zType, align 8
  %100 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %100, 1
  %idxprom68 = sext i32 %sub to i64
  %arrayidx69 = getelementptr inbounds i8, ptr %99, i64 %idxprom68
  %101 = load i8, ptr %arrayidx69, align 1
  %conv70 = sext i8 %101 to i32
  %cmp71 = icmp eq i32 %conv70, 32
  br i1 %cmp71, label %land.lhs.true73, label %if.end87

land.lhs.true73:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %102 = load ptr, ptr %zType, align 8
  %103 = load i32, ptr %i, align 4
  %add = add nsw i32 %103, 6
  %idxprom74 = sext i32 %add to i64
  %arrayidx75 = getelementptr inbounds i8, ptr %102, i64 %idxprom74
  %104 = load i8, ptr %arrayidx75, align 1
  %conv76 = sext i8 %104 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then86, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %land.lhs.true73
  %105 = load ptr, ptr %zType, align 8
  %106 = load i32, ptr %i, align 4
  %add80 = add nsw i32 %106, 6
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds i8, ptr %105, i64 %idxprom81
  %107 = load i8, ptr %arrayidx82, align 1
  %conv83 = sext i8 %107 to i32
  %cmp84 = icmp eq i32 %conv83, 32
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %lor.lhs.false79, %land.lhs.true73
  br label %for.end90

if.end87:                                         ; preds = %lor.lhs.false79, %lor.lhs.false, %for.body60
  br label %for.inc88

for.inc88:                                        ; preds = %if.end87
  %108 = load i32, ptr %i, align 4
  %inc89 = add nsw i32 %108, 1
  store i32 %inc89, ptr %i, align 4
  br label %for.cond57, !llvm.loop !8

for.end90:                                        ; preds = %if.then86, %for.cond57
  %109 = load i32, ptr %i, align 4
  %110 = load i32, ptr %nType, align 4
  %cmp91 = icmp slt i32 %109, %110
  br i1 %cmp91, label %if.then93, label %if.else131

if.then93:                                        ; preds = %for.end90
  %111 = load ptr, ptr %zType, align 8
  %112 = load i32, ptr %i, align 4
  %add94 = add nsw i32 %112, 6
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds i8, ptr %111, i64 %idxprom95
  %113 = load i8, ptr %arrayidx96, align 1
  %conv97 = sext i8 %113 to i32
  %tobool98 = icmp ne i32 %conv97, 0
  %114 = zext i1 %tobool98 to i64
  %cond = select i1 %tobool98, i32 1, i32 0
  %add99 = add nsw i32 6, %cond
  store i32 %add99, ptr %nDel, align 4
  %115 = load i32, ptr %i, align 4
  store i32 %115, ptr %j, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc110, %if.then93
  %116 = load i32, ptr %j, align 4
  %117 = load i32, ptr %nDel, align 4
  %add101 = add nsw i32 %116, %117
  %118 = load i32, ptr %nType, align 4
  %cmp102 = icmp sle i32 %add101, %118
  br i1 %cmp102, label %for.body104, label %for.end112

for.body104:                                      ; preds = %for.cond100
  %119 = load ptr, ptr %zType, align 8
  %120 = load i32, ptr %j, align 4
  %121 = load i32, ptr %nDel, align 4
  %add105 = add nsw i32 %120, %121
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds i8, ptr %119, i64 %idxprom106
  %122 = load i8, ptr %arrayidx107, align 1
  %123 = load ptr, ptr %zType, align 8
  %124 = load i32, ptr %j, align 4
  %idxprom108 = sext i32 %124 to i64
  %arrayidx109 = getelementptr inbounds i8, ptr %123, i64 %idxprom108
  store i8 %122, ptr %arrayidx109, align 1
  br label %for.inc110

for.inc110:                                       ; preds = %for.body104
  %125 = load i32, ptr %j, align 4
  %inc111 = add nsw i32 %125, 1
  store i32 %inc111, ptr %j, align 4
  br label %for.cond100, !llvm.loop !9

for.end112:                                       ; preds = %for.cond100
  %126 = load ptr, ptr %zType, align 8
  %127 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %127 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %126, i64 %idxprom113
  %128 = load i8, ptr %arrayidx114, align 1
  %conv115 = sext i8 %128 to i32
  %cmp116 = icmp eq i32 %conv115, 0
  br i1 %cmp116, label %land.lhs.true118, label %if.end125

land.lhs.true118:                                 ; preds = %for.end112
  %129 = load i32, ptr %i, align 4
  %cmp119 = icmp sgt i32 %129, 0
  br i1 %cmp119, label %if.then121, label %if.end125

if.then121:                                       ; preds = %land.lhs.true118
  %130 = load ptr, ptr %zType, align 8
  %131 = load i32, ptr %i, align 4
  %sub122 = sub nsw i32 %131, 1
  %idxprom123 = sext i32 %sub122 to i64
  %arrayidx124 = getelementptr inbounds i8, ptr %130, i64 %idxprom123
  store i8 0, ptr %arrayidx124, align 1
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %land.lhs.true118, %for.end112
  %132 = load ptr, ptr %pTab.addr, align 8
  %aCol126 = getelementptr inbounds nuw %struct.Table, ptr %132, i32 0, i32 1
  %133 = load ptr, ptr %aCol126, align 8
  %134 = load i32, ptr %iCol, align 4
  %idxprom127 = sext i32 %134 to i64
  %arrayidx128 = getelementptr inbounds %struct.Column, ptr %133, i64 %idxprom127
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %arrayidx128, i32 0, i32 6
  %135 = load i8, ptr %colFlags, align 1
  %conv129 = zext i8 %135 to i32
  %or = or i32 %conv129, 2
  %conv130 = trunc i32 %or to i8
  store i8 %conv130, ptr %colFlags, align 1
  store i8 -128, ptr %oooHidden, align 1
  br label %if.end134

if.else131:                                       ; preds = %for.end90
  %136 = load i8, ptr %oooHidden, align 1
  %conv132 = zext i8 %136 to i32
  %137 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %137, i32 0, i32 9
  %138 = load i32, ptr %tabFlags, align 8
  %or133 = or i32 %138, %conv132
  store i32 %or133, ptr %tabFlags, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.else131, %if.end125
  br label %for.inc135

for.inc135:                                       ; preds = %if.end134
  %139 = load i32, ptr %iCol, align 4
  %inc136 = add nsw i32 %139, 1
  store i32 %inc136, ptr %iCol, align 4
  br label %for.cond49, !llvm.loop !10

for.end137:                                       ; preds = %for.cond49
  br label %if.end138

if.end138:                                        ; preds = %for.end137, %if.then43
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.else34
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end33
  %140 = load ptr, ptr %db.addr, align 8
  %141 = load ptr, ptr %zModuleName, align 8
  call void @sqlite3DbFree(ptr noundef %140, ptr noundef %141)
  %142 = load i32, ptr %rc, align 4
  store i32 %142, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end140, %if.then9, %if.then5, %if.then
  %143 = load i32, ptr %retval, align 4
  ret i32 %143
}

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
!10 = distinct !{!10, !7}
