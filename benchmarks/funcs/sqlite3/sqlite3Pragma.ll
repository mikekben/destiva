; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncDefHash = type { [23 x ptr] }
%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VdbeOpList = type { i8, i8, i8, i8 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.PragmaName = type { ptr, i8, i8, i8, i8, i64 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.CollSeq = type { ptr, i8, ptr, ptr, ptr }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.Module = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.EncName = type { ptr, i8 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@sqlite3UpperToLower = external hidden constant [256 x i8], align 16
@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@sqlite3_temp_directory = external dso_local global ptr, align 8
@sqlite3BuiltinFunctions = external hidden global %struct.FuncDefHash, align 8
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@.str.378 = external hidden unnamed_addr constant [9 x i8], align 1
@aPragmaName = external hidden constant [63 x { ptr, i8, i8, i8, i8, [4 x i8], i64 }], align 16
@.str.821 = external hidden unnamed_addr constant [4 x i8], align 1
@sqlite3Pragma.getCacheSize = external hidden constant [9 x %struct.VdbeOpList], align 16
@.str.822 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.823 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.824 = external hidden unnamed_addr constant [10 x i8], align 1
@sqlite3Pragma.setMeta6 = external hidden constant [5 x %struct.VdbeOpList], align 16
@.str.826 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.827 = external hidden unnamed_addr constant [53 x i8], align 1
@.str.828 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.829 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.830 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.831 = external hidden unnamed_addr constant [5 x i8], align 1
@__const.sqlite3Pragma.azOrigin = external hidden unnamed_addr constant [3 x ptr], align 16
@.str.834 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.835 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.836 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.837 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.838 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.839 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.840 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.841 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.842 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.843 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.844 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.845 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.846 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.847 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.848 = external hidden unnamed_addr constant [29 x i8], align 1
@sqlite3Pragma.endCode = external hidden constant [7 x %struct.VdbeOpList], align 16
@.str.850 = external hidden unnamed_addr constant [3 x i8], align 1
@sqlite3Pragma.encnames = external hidden constant [9 x { ptr, i8, [7 x i8] }], align 16
@.str.859 = external hidden unnamed_addr constant [25 x i8], align 1
@sqlite3Pragma.setCookie = external hidden constant [2 x %struct.VdbeOpList], align 1
@sqlite3Pragma.readCookie = external hidden constant [3 x %struct.VdbeOpList], align 1
@.str.860 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.861 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.862 = external hidden unnamed_addr constant [18 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @sqlite3_soft_heap_limit64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetPageSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTable(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeAddOpList(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeUsesBtree(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_db_release_memory(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_busy_timeout(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_wal_autocheckpoint(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalDefaultHook(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_limit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ColumnType(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_file_control(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetPageSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetBoolean(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DecOrHexToI64(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreeGetFilename(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_compileoption_get(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OpenTempDatabase(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsAccess(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AbsInt32(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3JournalModename(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetCacheSize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetInt32(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetSpillSize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetAutoVacuum(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetAutoVacuum(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @pragmaLocate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetNumCols(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSetColName(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Pragma(ptr noundef %pParse, ptr noundef %pId1, ptr noundef %pId2, ptr noundef %pValue, i32 noundef %minusFlag) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pId1.addr = alloca ptr, align 8
  %pId2.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %minusFlag.addr = alloca i32, align 4
  %zLeft = alloca ptr, align 8
  %zRight = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %pId = alloca ptr, align 8
  %aFcntl = alloca [4 x ptr], align 16
  %iDb = alloca i32, align 4
  %rc = alloca i32, align 4
  %db = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pPragma = alloca ptr, align 8
  %aOp = alloca ptr, align 8
  %size = alloca i32, align 4
  %pBt92 = alloca ptr, align 8
  %size96 = alloca i32, align 4
  %pBt114 = alloca ptr, align 8
  %b = alloca i32, align 4
  %ii = alloca i32, align 4
  %iReg = alloca i32, align 4
  %zRet = alloca ptr, align 8
  %eMode = alloca i32, align 4
  %pPager = alloca ptr, align 8
  %ii177 = alloca i32, align 4
  %eMode204 = alloca i32, align 4
  %ii205 = alloca i32, align 4
  %zMode = alloca ptr, align 8
  %n210 = alloca i32, align 4
  %pPager270 = alloca ptr, align 8
  %iLimit = alloca i64, align 8
  %pBt283 = alloca ptr, align 8
  %eAuto = alloca i32, align 4
  %aOp302 = alloca ptr, align 8
  %iAddr = alloca i32, align 4
  %iLimit318 = alloca i32, align 4
  %addr = alloca i32, align 4
  %size341 = alloca i32, align 4
  %size365 = alloca i32, align 4
  %sz = alloca i64, align 8
  %ii387 = alloca i32, align 4
  %res = alloca i32, align 4
  %iLevel = alloca i32, align 4
  %mask = alloca i64, align 8
  %pTab = alloca ptr, align 8
  %iTabDb = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %nHidden = alloca i32, align 4
  %pCol = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  %isHidden = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %pTab614 = alloca ptr, align 8
  %iIdxDb = alloca i32, align 4
  %i633 = alloca i32, align 4
  %mx = alloca i32, align 4
  %cnum = alloca i16, align 2
  %pIdx685 = alloca ptr, align 8
  %pTab686 = alloca ptr, align 8
  %i687 = alloca i32, align 4
  %iTabDb691 = alloca i32, align 4
  %azOrigin = alloca [3 x ptr], align 16
  %i712 = alloca i32, align 4
  %i740 = alloca i32, align 4
  %p = alloca ptr, align 8
  %pColl = alloca ptr, align 8
  %i750 = alloca i32, align 4
  %j = alloca ptr, align 8
  %p751 = alloca ptr, align 8
  %j783 = alloca ptr, align 8
  %pMod = alloca ptr, align 8
  %i795 = alloca i32, align 4
  %pFK = alloca ptr, align 8
  %pTab809 = alloca ptr, align 8
  %iTabDb815 = alloca i32, align 4
  %i818 = alloca i32, align 4
  %j821 = alloca i32, align 4
  %pFK850 = alloca ptr, align 8
  %pTab851 = alloca ptr, align 8
  %pParent = alloca ptr, align 8
  %pIdx852 = alloca ptr, align 8
  %i853 = alloca i32, align 4
  %j854 = alloca i32, align 4
  %k855 = alloca ptr, align 8
  %x = alloca i32, align 4
  %regResult = alloca i32, align 4
  %regKey = alloca i32, align 4
  %regRow = alloca i32, align 4
  %addrTop = alloca i32, align 4
  %addrOk = alloca i32, align 4
  %aiCols = alloca ptr, align 8
  %iTabDb872 = alloca i32, align 4
  %iCol = alloca i32, align 4
  %jmp = alloca i32, align 4
  %i1021 = alloca i32, align 4
  %j1022 = alloca i32, align 4
  %addr1023 = alloca i32, align 4
  %mxErr = alloca i32, align 4
  %isQuick = alloca i32, align 4
  %x1050 = alloca ptr, align 8
  %pTbls = alloca ptr, align 8
  %aRoot = alloca ptr, align 8
  %cnt = alloca i32, align 4
  %mxIdx = alloca i32, align 4
  %pTab1067 = alloca ptr, align 8
  %pIdx1069 = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  %pTab1104 = alloca ptr, align 8
  %pIdx1106 = alloca ptr, align 8
  %pTab1159 = alloca ptr, align 8
  %pIdx1161 = alloca ptr, align 8
  %pPk1162 = alloca ptr, align 8
  %pPrior = alloca ptr, align 8
  %loopTop = alloca i32, align 4
  %iDataCur = alloca i32, align 4
  %iIdxCur = alloca i32, align 4
  %r1 = alloca i32, align 4
  %zErr = alloca ptr, align 8
  %jmp2 = alloca i32, align 4
  %pCheck1237 = alloca ptr, align 8
  %addrCkFault = alloca i32, align 4
  %addrCkOk = alloca i32, align 4
  %zErr1246 = alloca ptr, align 8
  %k1247 = alloca i32, align 4
  %jmp21275 = alloca i32, align 4
  %jmp3 = alloca i32, align 4
  %jmp4 = alloca i32, align 4
  %jmp5 = alloca i32, align 4
  %ckUniq = alloca i32, align 4
  %uniqOk = alloca i32, align 4
  %jmp6 = alloca i32, align 4
  %kk = alloca i32, align 4
  %iCol1308 = alloca i32, align 4
  %aOp1376 = alloca ptr, align 8
  %pEnc = alloca ptr, align 8
  %iCookie = alloca i32, align 4
  %aOp1467 = alloca ptr, align 8
  %aOp1479 = alloca ptr, align 8
  %i1489 = alloca i32, align 4
  %zOpt = alloca ptr, align 8
  %iBt = alloca i32, align 4
  %eMode1507 = alloca i32, align 4
  %iDbLast = alloca i32, align 4
  %iTabCur = alloca i32, align 4
  %k1548 = alloca ptr, align 8
  %pSchema1549 = alloca ptr, align 8
  %pTab1550 = alloca ptr, align 8
  %pIdx1551 = alloca ptr, align 8
  %szThreshold = alloca i16, align 2
  %zSubSql = alloca ptr, align 8
  %opMask = alloca i32, align 4
  %r11629 = alloca i32, align 4
  %N = alloca i64, align 8
  %N1660 = alloca i64, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pId1, ptr %pId1.addr, align 8
  store ptr %pId2, ptr %pId2.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store i32 %minusFlag, ptr %minusFlag.addr, align 4
  store ptr null, ptr %zLeft, align 8
  store ptr null, ptr %zRight, align 8
  store ptr null, ptr %zDb, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %2)
  store ptr %call, ptr %v, align 8
  %3 = load ptr, ptr %v, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeRunOnlyOnce(ptr noundef %4)
  %5 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 18
  store i32 2, ptr %nMem, align 8
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load ptr, ptr %pId1.addr, align 8
  %8 = load ptr, ptr %pId2.addr, align 8
  %call2 = call i32 @sqlite3TwoPartName(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %pId)
  store i32 %call2, ptr %iDb, align 4
  %9 = load i32, ptr %iDb, align 4
  %cmp3 = icmp slt i32 %9, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %return

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %aDb, align 8
  %12 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %11, i64 %idxprom
  store ptr %arrayidx, ptr %pDb, align 8
  %13 = load i32, ptr %iDb, align 4
  %cmp6 = icmp eq i32 %13, 1
  br i1 %cmp6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %14 = load ptr, ptr %pParse.addr, align 8
  %call7 = call i32 @sqlite3OpenTempDatabase(ptr noundef %14)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  br label %return

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %15 = load ptr, ptr %db, align 8
  %16 = load ptr, ptr %pId, align 8
  %call10 = call ptr @sqlite3NameFromToken(ptr noundef %15, ptr noundef %16)
  store ptr %call10, ptr %zLeft, align 8
  %17 = load ptr, ptr %zLeft, align 8
  %tobool11 = icmp ne ptr %17, null
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end9
  br label %return

if.end13:                                         ; preds = %if.end9
  %18 = load i32, ptr %minusFlag.addr, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %pValue.addr, align 8
  %call16 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %19, ptr noundef @.str.821, ptr noundef %20)
  store ptr %call16, ptr %zRight, align 8
  br label %if.end18

if.else:                                          ; preds = %if.end13
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %pValue.addr, align 8
  %call17 = call ptr @sqlite3NameFromToken(ptr noundef %21, ptr noundef %22)
  store ptr %call17, ptr %zRight, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %23 = load ptr, ptr %pId2.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %n, align 8
  %cmp19 = icmp ugt i32 %24, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  %25 = load ptr, ptr %pDb, align 8
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %zDbSName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %26, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %zDb, align 8
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load ptr, ptr %zLeft, align 8
  %29 = load ptr, ptr %zRight, align 8
  %30 = load ptr, ptr %zDb, align 8
  %call20 = call i32 @sqlite3AuthCheck(ptr noundef %27, i32 noundef 19, ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %cond.end
  br label %pragma_out

if.end23:                                         ; preds = %cond.end
  %arrayidx24 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 0
  store ptr null, ptr %arrayidx24, align 16
  %31 = load ptr, ptr %zLeft, align 8
  %arrayidx25 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 1
  store ptr %31, ptr %arrayidx25, align 8
  %32 = load ptr, ptr %zRight, align 8
  %arrayidx26 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 2
  store ptr %32, ptr %arrayidx26, align 16
  %arrayidx27 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 3
  store ptr null, ptr %arrayidx27, align 8
  %33 = load ptr, ptr %db, align 8
  %busyHandler = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 74
  %nBusy = getelementptr inbounds nuw %struct.BusyHandler, ptr %busyHandler, i32 0, i32 2
  store i32 0, ptr %nBusy, align 8
  %34 = load ptr, ptr %db, align 8
  %35 = load ptr, ptr %zDb, align 8
  %arraydecay = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 0
  %call28 = call i32 @sqlite3_file_control(ptr noundef %34, ptr noundef %35, i32 noundef 14, ptr noundef %arraydecay)
  store i32 %call28, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp29 = icmp eq i32 %36, 0
  br i1 %cmp29, label %if.then30, label %if.end35

if.then30:                                        ; preds = %if.end23
  %37 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeSetNumCols(ptr noundef %37, i32 noundef 1)
  %38 = load ptr, ptr %v, align 8
  %arrayidx31 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 0
  %39 = load ptr, ptr %arrayidx31, align 16
  %call32 = call i32 @sqlite3VdbeSetColName(ptr noundef %38, i32 noundef 0, i32 noundef 0, ptr noundef %39, ptr noundef inttoptr (i64 -1 to ptr))
  %40 = load ptr, ptr %v, align 8
  %arrayidx33 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 0
  %41 = load ptr, ptr %arrayidx33, align 16
  call void @returnSingleText(ptr noundef %40, ptr noundef %41)
  %arrayidx34 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 0
  %42 = load ptr, ptr %arrayidx34, align 16
  call void @sqlite3_free(ptr noundef %42)
  br label %pragma_out

if.end35:                                         ; preds = %if.end23
  %43 = load i32, ptr %rc, align 4
  %cmp36 = icmp ne i32 %43, 12
  br i1 %cmp36, label %if.then37, label %if.end45

if.then37:                                        ; preds = %if.end35
  %arrayidx38 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 0
  %44 = load ptr, ptr %arrayidx38, align 16
  %tobool39 = icmp ne ptr %44, null
  br i1 %tobool39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then37
  %45 = load ptr, ptr %pParse.addr, align 8
  %arrayidx41 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 0
  %46 = load ptr, ptr %arrayidx41, align 16
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %45, ptr noundef @.str.20, ptr noundef %46)
  %arrayidx42 = getelementptr inbounds [4 x ptr], ptr %aFcntl, i64 0, i64 0
  %47 = load ptr, ptr %arrayidx42, align 16
  call void @sqlite3_free(ptr noundef %47)
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then37
  %48 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %48, i32 0, i32 16
  %49 = load i32, ptr %nErr, align 8
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %nErr, align 8
  %50 = load i32, ptr %rc, align 4
  %51 = load ptr, ptr %pParse.addr, align 8
  %rc44 = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 3
  store i32 %50, ptr %rc44, align 8
  br label %pragma_out

if.end45:                                         ; preds = %if.end35
  %52 = load ptr, ptr %zLeft, align 8
  %call46 = call ptr @pragmaLocate(ptr noundef %52)
  store ptr %call46, ptr %pPragma, align 8
  %53 = load ptr, ptr %pPragma, align 8
  %cmp47 = icmp eq ptr %53, null
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end45
  br label %pragma_out

if.end49:                                         ; preds = %if.end45
  %54 = load ptr, ptr %pPragma, align 8
  %mPragFlg = getelementptr inbounds nuw %struct.PragmaName, ptr %54, i32 0, i32 2
  %55 = load i8, ptr %mPragFlg, align 1
  %conv = zext i8 %55 to i32
  %and = and i32 %conv, 1
  %cmp50 = icmp ne i32 %and, 0
  br i1 %cmp50, label %if.then52, label %if.end57

if.then52:                                        ; preds = %if.end49
  %56 = load ptr, ptr %pParse.addr, align 8
  %call53 = call i32 @sqlite3ReadSchema(ptr noundef %56)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then52
  br label %pragma_out

if.end56:                                         ; preds = %if.then52
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end49
  %57 = load ptr, ptr %pPragma, align 8
  %mPragFlg58 = getelementptr inbounds nuw %struct.PragmaName, ptr %57, i32 0, i32 2
  %58 = load i8, ptr %mPragFlg58, align 1
  %conv59 = zext i8 %58 to i32
  %and60 = and i32 %conv59, 2
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %land.lhs.true63, label %if.end72

land.lhs.true63:                                  ; preds = %if.end57
  %59 = load ptr, ptr %pPragma, align 8
  %mPragFlg64 = getelementptr inbounds nuw %struct.PragmaName, ptr %59, i32 0, i32 2
  %60 = load i8, ptr %mPragFlg64, align 1
  %conv65 = zext i8 %60 to i32
  %and66 = and i32 %conv65, 4
  %cmp67 = icmp eq i32 %and66, 0
  br i1 %cmp67, label %if.then71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true63
  %61 = load ptr, ptr %zRight, align 8
  %cmp69 = icmp eq ptr %61, null
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %lor.lhs.false, %land.lhs.true63
  %62 = load ptr, ptr %v, align 8
  %63 = load ptr, ptr %pPragma, align 8
  call void @setPragmaResultColumnNames(ptr noundef %62, ptr noundef %63)
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %lor.lhs.false, %if.end57
  %64 = load ptr, ptr %pPragma, align 8
  %ePragTyp = getelementptr inbounds nuw %struct.PragmaName, ptr %64, i32 0, i32 1
  %65 = load i8, ptr %ePragTyp, align 8
  %conv73 = zext i8 %65 to i32
  switch i32 %conv73, label %sw.default [
    i32 11, label %sw.bb
    i32 28, label %sw.bb91
    i32 30, label %sw.bb113
    i32 24, label %sw.bb145
    i32 23, label %sw.bb162
    i32 20, label %sw.bb203
    i32 21, label %sw.bb269
    i32 1, label %sw.bb282
    i32 16, label %sw.bb317
    i32 4, label %sw.bb334
    i32 5, label %sw.bb350
    i32 25, label %sw.bb384
    i32 35, label %sw.bb440
    i32 36, label %sw.bb447
    i32 33, label %sw.bb477
    i32 2, label %sw.bb503
    i32 34, label %sw.bb536
    i32 17, label %sw.bb611
    i32 18, label %sw.bb682
    i32 10, label %sw.bb711
    i32 7, label %sw.bb739
    i32 15, label %sw.bb749
    i32 26, label %sw.bb782
    i32 29, label %sw.bb794
    i32 14, label %sw.bb806
    i32 13, label %sw.bb849
    i32 6, label %sw.bb1014
    i32 19, label %sw.bb1020
    i32 12, label %sw.bb1393
    i32 0, label %sw.bb1456
    i32 8, label %sw.bb1488
    i32 39, label %sw.bb1500
    i32 38, label %sw.bb1531
    i32 31, label %sw.bb1545
    i32 27, label %sw.bb1547
    i32 32, label %sw.bb1649
    i32 37, label %sw.bb1659
  ]

sw.bb:                                            ; preds = %if.end72
  %66 = load ptr, ptr %v, align 8
  %67 = load i32, ptr %iDb, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %66, i32 noundef %67)
  %68 = load ptr, ptr %zRight, align 8
  %tobool74 = icmp ne ptr %68, null
  br i1 %tobool74, label %if.else83, label %if.then75

if.then75:                                        ; preds = %sw.bb
  %69 = load ptr, ptr %pParse.addr, align 8
  %nMem76 = getelementptr inbounds nuw %struct.Parse, ptr %69, i32 0, i32 18
  %70 = load i32, ptr %nMem76, align 8
  %add = add nsw i32 %70, 2
  store i32 %add, ptr %nMem76, align 8
  %71 = load ptr, ptr %v, align 8
  %call77 = call ptr @sqlite3VdbeAddOpList(ptr noundef %71, i32 noundef 9, ptr noundef @sqlite3Pragma.getCacheSize, i32 noundef 0)
  store ptr %call77, ptr %aOp, align 8
  %72 = load i32, ptr %iDb, align 4
  %73 = load ptr, ptr %aOp, align 8
  %arrayidx78 = getelementptr inbounds %struct.VdbeOp, ptr %73, i64 0
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx78, i32 0, i32 3
  store i32 %72, ptr %p1, align 4
  %74 = load i32, ptr %iDb, align 4
  %75 = load ptr, ptr %aOp, align 8
  %arrayidx79 = getelementptr inbounds %struct.VdbeOp, ptr %75, i64 1
  %p180 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx79, i32 0, i32 3
  store i32 %74, ptr %p180, align 4
  %76 = load ptr, ptr %aOp, align 8
  %arrayidx81 = getelementptr inbounds %struct.VdbeOp, ptr %76, i64 6
  %p182 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx81, i32 0, i32 3
  store i32 -2000, ptr %p182, align 4
  br label %if.end90

if.else83:                                        ; preds = %sw.bb
  %77 = load ptr, ptr %zRight, align 8
  %call84 = call i32 @sqlite3Atoi(ptr noundef %77)
  %call85 = call i32 @sqlite3AbsInt32(i32 noundef %call84)
  store i32 %call85, ptr %size, align 4
  %78 = load ptr, ptr %pParse.addr, align 8
  %79 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %78, i32 noundef 0, i32 noundef %79)
  %80 = load ptr, ptr %v, align 8
  %81 = load i32, ptr %iDb, align 4
  %82 = load i32, ptr %size, align 4
  %call86 = call i32 @sqlite3VdbeAddOp3(ptr noundef %80, i32 noundef 95, i32 noundef %81, i32 noundef 3, i32 noundef %82)
  %83 = load i32, ptr %size, align 4
  %84 = load ptr, ptr %pDb, align 8
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %pSchema, align 8
  %cache_size = getelementptr inbounds nuw %struct.Schema, ptr %85, i32 0, i32 10
  store i32 %83, ptr %cache_size, align 4
  %86 = load ptr, ptr %pDb, align 8
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %86, i32 0, i32 1
  %87 = load ptr, ptr %pBt, align 8
  %88 = load ptr, ptr %pDb, align 8
  %pSchema87 = getelementptr inbounds nuw %struct.Db, ptr %88, i32 0, i32 4
  %89 = load ptr, ptr %pSchema87, align 8
  %cache_size88 = getelementptr inbounds nuw %struct.Schema, ptr %89, i32 0, i32 10
  %90 = load i32, ptr %cache_size88, align 4
  %call89 = call i32 @sqlite3BtreeSetCacheSize(ptr noundef %87, i32 noundef %90)
  br label %if.end90

if.end90:                                         ; preds = %if.else83, %if.then75
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end72
  %91 = load ptr, ptr %pDb, align 8
  %pBt93 = getelementptr inbounds nuw %struct.Db, ptr %91, i32 0, i32 1
  %92 = load ptr, ptr %pBt93, align 8
  store ptr %92, ptr %pBt92, align 8
  %93 = load ptr, ptr %zRight, align 8
  %tobool94 = icmp ne ptr %93, null
  br i1 %tobool94, label %if.else104, label %if.then95

if.then95:                                        ; preds = %sw.bb91
  %94 = load ptr, ptr %pBt92, align 8
  %tobool97 = icmp ne ptr %94, null
  br i1 %tobool97, label %cond.true98, label %cond.false100

cond.true98:                                      ; preds = %if.then95
  %95 = load ptr, ptr %pBt92, align 8
  %call99 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %95)
  br label %cond.end101

cond.false100:                                    ; preds = %if.then95
  br label %cond.end101

cond.end101:                                      ; preds = %cond.false100, %cond.true98
  %cond102 = phi i32 [ %call99, %cond.true98 ], [ 0, %cond.false100 ]
  store i32 %cond102, ptr %size96, align 4
  %96 = load ptr, ptr %v, align 8
  %97 = load i32, ptr %size96, align 4
  %conv103 = sext i32 %97 to i64
  call void @returnSingleInt(ptr noundef %96, i64 noundef %conv103)
  br label %if.end112

if.else104:                                       ; preds = %sw.bb91
  %98 = load ptr, ptr %zRight, align 8
  %call105 = call i32 @sqlite3Atoi(ptr noundef %98)
  %99 = load ptr, ptr %db, align 8
  %nextPagesize = getelementptr inbounds nuw %struct.sqlite3, ptr %99, i32 0, i32 29
  store i32 %call105, ptr %nextPagesize, align 4
  %100 = load ptr, ptr %pBt92, align 8
  %101 = load ptr, ptr %db, align 8
  %nextPagesize106 = getelementptr inbounds nuw %struct.sqlite3, ptr %101, i32 0, i32 29
  %102 = load i32, ptr %nextPagesize106, align 4
  %call107 = call i32 @sqlite3BtreeSetPageSize(ptr noundef %100, i32 noundef %102, i32 noundef -1, i32 noundef 0)
  %cmp108 = icmp eq i32 7, %call107
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.else104
  %103 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %103)
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %if.else104
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %cond.end101
  br label %sw.epilog

sw.bb113:                                         ; preds = %if.end72
  %104 = load ptr, ptr %pDb, align 8
  %pBt115 = getelementptr inbounds nuw %struct.Db, ptr %104, i32 0, i32 1
  %105 = load ptr, ptr %pBt115, align 8
  store ptr %105, ptr %pBt114, align 8
  store i32 -1, ptr %b, align 4
  %106 = load ptr, ptr %zRight, align 8
  %tobool116 = icmp ne ptr %106, null
  br i1 %tobool116, label %if.then117, label %if.end126

if.then117:                                       ; preds = %sw.bb113
  %107 = load ptr, ptr %zRight, align 8
  %call118 = call i32 @sqlite3_stricmp(ptr noundef %107, ptr noundef @.str.822)
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.then117
  store i32 2, ptr %b, align 4
  br label %if.end125

if.else122:                                       ; preds = %if.then117
  %108 = load ptr, ptr %zRight, align 8
  %call123 = call zeroext i8 @sqlite3GetBoolean(ptr noundef %108, i8 noundef zeroext 0)
  %conv124 = zext i8 %call123 to i32
  store i32 %conv124, ptr %b, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.else122, %if.then121
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %sw.bb113
  %109 = load ptr, ptr %pId2.addr, align 8
  %n127 = getelementptr inbounds nuw %struct.Token, ptr %109, i32 0, i32 1
  %110 = load i32, ptr %n127, align 8
  %cmp128 = icmp eq i32 %110, 0
  br i1 %cmp128, label %land.lhs.true130, label %if.end142

land.lhs.true130:                                 ; preds = %if.end126
  %111 = load i32, ptr %b, align 4
  %cmp131 = icmp sge i32 %111, 0
  br i1 %cmp131, label %if.then133, label %if.end142

if.then133:                                       ; preds = %land.lhs.true130
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then133
  %112 = load i32, ptr %ii, align 4
  %113 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %113, i32 0, i32 5
  %114 = load i32, ptr %nDb, align 8
  %cmp134 = icmp slt i32 %112, %114
  br i1 %cmp134, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %115 = load ptr, ptr %db, align 8
  %aDb136 = getelementptr inbounds nuw %struct.sqlite3, ptr %115, i32 0, i32 4
  %116 = load ptr, ptr %aDb136, align 8
  %117 = load i32, ptr %ii, align 4
  %idxprom137 = sext i32 %117 to i64
  %arrayidx138 = getelementptr inbounds %struct.Db, ptr %116, i64 %idxprom137
  %pBt139 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx138, i32 0, i32 1
  %118 = load ptr, ptr %pBt139, align 8
  %119 = load i32, ptr %b, align 4
  %call140 = call i32 @sqlite3BtreeSecureDelete(ptr noundef %118, i32 noundef %119)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %120 = load i32, ptr %ii, align 4
  %inc141 = add nsw i32 %120, 1
  store i32 %inc141, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end142

if.end142:                                        ; preds = %for.end, %land.lhs.true130, %if.end126
  %121 = load ptr, ptr %pBt114, align 8
  %122 = load i32, ptr %b, align 4
  %call143 = call i32 @sqlite3BtreeSecureDelete(ptr noundef %121, i32 noundef %122)
  store i32 %call143, ptr %b, align 4
  %123 = load ptr, ptr %v, align 8
  %124 = load i32, ptr %b, align 4
  %conv144 = sext i32 %124 to i64
  call void @returnSingleInt(ptr noundef %123, i64 noundef %conv144)
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end72
  %125 = load ptr, ptr %pParse.addr, align 8
  %126 = load i32, ptr %iDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %125, i32 noundef %126)
  %127 = load ptr, ptr %pParse.addr, align 8
  %nMem146 = getelementptr inbounds nuw %struct.Parse, ptr %127, i32 0, i32 18
  %128 = load i32, ptr %nMem146, align 8
  %inc147 = add nsw i32 %128, 1
  store i32 %inc147, ptr %nMem146, align 8
  store i32 %inc147, ptr %iReg, align 4
  %129 = load ptr, ptr %zLeft, align 8
  %arrayidx148 = getelementptr inbounds i8, ptr %129, i64 0
  %130 = load i8, ptr %arrayidx148, align 1
  %idxprom149 = zext i8 %130 to i64
  %arrayidx150 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom149
  %131 = load i8, ptr %arrayidx150, align 1
  %conv151 = zext i8 %131 to i32
  %cmp152 = icmp eq i32 %conv151, 112
  br i1 %cmp152, label %if.then154, label %if.else156

if.then154:                                       ; preds = %sw.bb145
  %132 = load ptr, ptr %v, align 8
  %133 = load i32, ptr %iDb, align 4
  %134 = load i32, ptr %iReg, align 4
  %call155 = call i32 @sqlite3VdbeAddOp2(ptr noundef %132, i32 noundef 166, i32 noundef %133, i32 noundef %134)
  br label %if.end160

if.else156:                                       ; preds = %sw.bb145
  %135 = load ptr, ptr %v, align 8
  %136 = load i32, ptr %iDb, align 4
  %137 = load i32, ptr %iReg, align 4
  %138 = load ptr, ptr %zRight, align 8
  %call157 = call i32 @sqlite3Atoi(ptr noundef %138)
  %call158 = call i32 @sqlite3AbsInt32(i32 noundef %call157)
  %call159 = call i32 @sqlite3VdbeAddOp3(ptr noundef %135, i32 noundef 167, i32 noundef %136, i32 noundef %137, i32 noundef %call158)
  br label %if.end160

if.end160:                                        ; preds = %if.else156, %if.then154
  %139 = load ptr, ptr %v, align 8
  %140 = load i32, ptr %iReg, align 4
  %call161 = call i32 @sqlite3VdbeAddOp2(ptr noundef %139, i32 noundef 81, i32 noundef %140, i32 noundef 1)
  br label %sw.epilog

sw.bb162:                                         ; preds = %if.end72
  store ptr @.str.823, ptr %zRet, align 8
  %141 = load ptr, ptr %zRight, align 8
  %call163 = call i32 @getLockingMode(ptr noundef %141)
  store i32 %call163, ptr %eMode, align 4
  %142 = load ptr, ptr %pId2.addr, align 8
  %n164 = getelementptr inbounds nuw %struct.Token, ptr %142, i32 0, i32 1
  %143 = load i32, ptr %n164, align 8
  %cmp165 = icmp eq i32 %143, 0
  br i1 %cmp165, label %land.lhs.true167, label %if.else172

land.lhs.true167:                                 ; preds = %sw.bb162
  %144 = load i32, ptr %eMode, align 4
  %cmp168 = icmp eq i32 %144, -1
  br i1 %cmp168, label %if.then170, label %if.else172

if.then170:                                       ; preds = %land.lhs.true167
  %145 = load ptr, ptr %db, align 8
  %dfltLockMode = getelementptr inbounds nuw %struct.sqlite3, ptr %145, i32 0, i32 21
  %146 = load i8, ptr %dfltLockMode, align 1
  %conv171 = zext i8 %146 to i32
  store i32 %conv171, ptr %eMode, align 4
  br label %if.end198

if.else172:                                       ; preds = %land.lhs.true167, %sw.bb162
  %147 = load ptr, ptr %pId2.addr, align 8
  %n173 = getelementptr inbounds nuw %struct.Token, ptr %147, i32 0, i32 1
  %148 = load i32, ptr %n173, align 8
  %cmp174 = icmp eq i32 %148, 0
  br i1 %cmp174, label %if.then176, label %if.end194

if.then176:                                       ; preds = %if.else172
  store i32 2, ptr %ii177, align 4
  br label %for.cond178

for.cond178:                                      ; preds = %for.inc189, %if.then176
  %149 = load i32, ptr %ii177, align 4
  %150 = load ptr, ptr %db, align 8
  %nDb179 = getelementptr inbounds nuw %struct.sqlite3, ptr %150, i32 0, i32 5
  %151 = load i32, ptr %nDb179, align 8
  %cmp180 = icmp slt i32 %149, %151
  br i1 %cmp180, label %for.body182, label %for.end191

for.body182:                                      ; preds = %for.cond178
  %152 = load ptr, ptr %db, align 8
  %aDb183 = getelementptr inbounds nuw %struct.sqlite3, ptr %152, i32 0, i32 4
  %153 = load ptr, ptr %aDb183, align 8
  %154 = load i32, ptr %ii177, align 4
  %idxprom184 = sext i32 %154 to i64
  %arrayidx185 = getelementptr inbounds %struct.Db, ptr %153, i64 %idxprom184
  %pBt186 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx185, i32 0, i32 1
  %155 = load ptr, ptr %pBt186, align 8
  %call187 = call ptr @sqlite3BtreePager(ptr noundef %155)
  store ptr %call187, ptr %pPager, align 8
  %156 = load ptr, ptr %pPager, align 8
  %157 = load i32, ptr %eMode, align 4
  %call188 = call i32 @sqlite3PagerLockingMode(ptr noundef %156, i32 noundef %157)
  br label %for.inc189

for.inc189:                                       ; preds = %for.body182
  %158 = load i32, ptr %ii177, align 4
  %inc190 = add nsw i32 %158, 1
  store i32 %inc190, ptr %ii177, align 4
  br label %for.cond178, !llvm.loop !8

for.end191:                                       ; preds = %for.cond178
  %159 = load i32, ptr %eMode, align 4
  %conv192 = trunc i32 %159 to i8
  %160 = load ptr, ptr %db, align 8
  %dfltLockMode193 = getelementptr inbounds nuw %struct.sqlite3, ptr %160, i32 0, i32 21
  store i8 %conv192, ptr %dfltLockMode193, align 1
  br label %if.end194

if.end194:                                        ; preds = %for.end191, %if.else172
  %161 = load ptr, ptr %pDb, align 8
  %pBt195 = getelementptr inbounds nuw %struct.Db, ptr %161, i32 0, i32 1
  %162 = load ptr, ptr %pBt195, align 8
  %call196 = call ptr @sqlite3BtreePager(ptr noundef %162)
  store ptr %call196, ptr %pPager, align 8
  %163 = load ptr, ptr %pPager, align 8
  %164 = load i32, ptr %eMode, align 4
  %call197 = call i32 @sqlite3PagerLockingMode(ptr noundef %163, i32 noundef %164)
  store i32 %call197, ptr %eMode, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.end194, %if.then170
  %165 = load i32, ptr %eMode, align 4
  %cmp199 = icmp eq i32 %165, 1
  br i1 %cmp199, label %if.then201, label %if.end202

if.then201:                                       ; preds = %if.end198
  store ptr @.str.824, ptr %zRet, align 8
  br label %if.end202

if.end202:                                        ; preds = %if.then201, %if.end198
  %166 = load ptr, ptr %v, align 8
  %167 = load ptr, ptr %zRet, align 8
  call void @returnSingleText(ptr noundef %166, ptr noundef %167)
  br label %sw.epilog

sw.bb203:                                         ; preds = %if.end72
  %168 = load ptr, ptr %zRight, align 8
  %cmp206 = icmp eq ptr %168, null
  br i1 %cmp206, label %if.then208, label %if.else209

if.then208:                                       ; preds = %sw.bb203
  store i32 -1, ptr %eMode204, align 4
  br label %if.end236

if.else209:                                       ; preds = %sw.bb203
  %169 = load ptr, ptr %zRight, align 8
  %call211 = call i32 @sqlite3Strlen30(ptr noundef %169)
  store i32 %call211, ptr %n210, align 4
  store i32 0, ptr %eMode204, align 4
  br label %for.cond212

for.cond212:                                      ; preds = %for.inc222, %if.else209
  %170 = load i32, ptr %eMode204, align 4
  %call213 = call ptr @sqlite3JournalModename(i32 noundef %170)
  store ptr %call213, ptr %zMode, align 8
  %cmp214 = icmp ne ptr %call213, null
  br i1 %cmp214, label %for.body216, label %for.end224

for.body216:                                      ; preds = %for.cond212
  %171 = load ptr, ptr %zRight, align 8
  %172 = load ptr, ptr %zMode, align 8
  %173 = load i32, ptr %n210, align 4
  %call217 = call i32 @sqlite3_strnicmp(ptr noundef %171, ptr noundef %172, i32 noundef %173)
  %cmp218 = icmp eq i32 %call217, 0
  br i1 %cmp218, label %if.then220, label %if.end221

if.then220:                                       ; preds = %for.body216
  br label %for.end224

if.end221:                                        ; preds = %for.body216
  br label %for.inc222

for.inc222:                                       ; preds = %if.end221
  %174 = load i32, ptr %eMode204, align 4
  %inc223 = add nsw i32 %174, 1
  store i32 %inc223, ptr %eMode204, align 4
  br label %for.cond212, !llvm.loop !9

for.end224:                                       ; preds = %if.then220, %for.cond212
  %175 = load ptr, ptr %zMode, align 8
  %tobool225 = icmp ne ptr %175, null
  br i1 %tobool225, label %if.end227, label %if.then226

if.then226:                                       ; preds = %for.end224
  store i32 -1, ptr %eMode204, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.then226, %for.end224
  %176 = load i32, ptr %eMode204, align 4
  %cmp228 = icmp eq i32 %176, 2
  br i1 %cmp228, label %land.lhs.true230, label %if.end235

land.lhs.true230:                                 ; preds = %if.end227
  %177 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %177, i32 0, i32 7
  %178 = load i64, ptr %flags, align 8
  %and231 = and i64 %178, 268435456
  %cmp232 = icmp ne i64 %and231, 0
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %land.lhs.true230
  store i32 -1, ptr %eMode204, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %land.lhs.true230, %if.end227
  br label %if.end236

if.end236:                                        ; preds = %if.end235, %if.then208
  %179 = load i32, ptr %eMode204, align 4
  %cmp237 = icmp eq i32 %179, -1
  br i1 %cmp237, label %land.lhs.true239, label %if.end245

land.lhs.true239:                                 ; preds = %if.end236
  %180 = load ptr, ptr %pId2.addr, align 8
  %n240 = getelementptr inbounds nuw %struct.Token, ptr %180, i32 0, i32 1
  %181 = load i32, ptr %n240, align 8
  %cmp241 = icmp eq i32 %181, 0
  br i1 %cmp241, label %if.then243, label %if.end245

if.then243:                                       ; preds = %land.lhs.true239
  store i32 0, ptr %iDb, align 4
  %182 = load ptr, ptr %pId2.addr, align 8
  %n244 = getelementptr inbounds nuw %struct.Token, ptr %182, i32 0, i32 1
  store i32 1, ptr %n244, align 8
  br label %if.end245

if.end245:                                        ; preds = %if.then243, %land.lhs.true239, %if.end236
  %183 = load ptr, ptr %db, align 8
  %nDb246 = getelementptr inbounds nuw %struct.sqlite3, ptr %183, i32 0, i32 5
  %184 = load i32, ptr %nDb246, align 8
  %sub = sub nsw i32 %184, 1
  store i32 %sub, ptr %ii205, align 4
  br label %for.cond247

for.cond247:                                      ; preds = %for.inc266, %if.end245
  %185 = load i32, ptr %ii205, align 4
  %cmp248 = icmp sge i32 %185, 0
  br i1 %cmp248, label %for.body250, label %for.end267

for.body250:                                      ; preds = %for.cond247
  %186 = load ptr, ptr %db, align 8
  %aDb251 = getelementptr inbounds nuw %struct.sqlite3, ptr %186, i32 0, i32 4
  %187 = load ptr, ptr %aDb251, align 8
  %188 = load i32, ptr %ii205, align 4
  %idxprom252 = sext i32 %188 to i64
  %arrayidx253 = getelementptr inbounds %struct.Db, ptr %187, i64 %idxprom252
  %pBt254 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx253, i32 0, i32 1
  %189 = load ptr, ptr %pBt254, align 8
  %tobool255 = icmp ne ptr %189, null
  br i1 %tobool255, label %land.lhs.true256, label %if.end265

land.lhs.true256:                                 ; preds = %for.body250
  %190 = load i32, ptr %ii205, align 4
  %191 = load i32, ptr %iDb, align 4
  %cmp257 = icmp eq i32 %190, %191
  br i1 %cmp257, label %if.then263, label %lor.lhs.false259

lor.lhs.false259:                                 ; preds = %land.lhs.true256
  %192 = load ptr, ptr %pId2.addr, align 8
  %n260 = getelementptr inbounds nuw %struct.Token, ptr %192, i32 0, i32 1
  %193 = load i32, ptr %n260, align 8
  %cmp261 = icmp eq i32 %193, 0
  br i1 %cmp261, label %if.then263, label %if.end265

if.then263:                                       ; preds = %lor.lhs.false259, %land.lhs.true256
  %194 = load ptr, ptr %v, align 8
  %195 = load i32, ptr %ii205, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %194, i32 noundef %195)
  %196 = load ptr, ptr %v, align 8
  %197 = load i32, ptr %ii205, align 4
  %198 = load i32, ptr %eMode204, align 4
  %call264 = call i32 @sqlite3VdbeAddOp3(ptr noundef %196, i32 noundef 7, i32 noundef %197, i32 noundef 1, i32 noundef %198)
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %lor.lhs.false259, %for.body250
  br label %for.inc266

for.inc266:                                       ; preds = %if.end265
  %199 = load i32, ptr %ii205, align 4
  %dec = add nsw i32 %199, -1
  store i32 %dec, ptr %ii205, align 4
  br label %for.cond247, !llvm.loop !10

for.end267:                                       ; preds = %for.cond247
  %200 = load ptr, ptr %v, align 8
  %call268 = call i32 @sqlite3VdbeAddOp2(ptr noundef %200, i32 noundef 81, i32 noundef 1, i32 noundef 1)
  br label %sw.epilog

sw.bb269:                                         ; preds = %if.end72
  %201 = load ptr, ptr %pDb, align 8
  %pBt271 = getelementptr inbounds nuw %struct.Db, ptr %201, i32 0, i32 1
  %202 = load ptr, ptr %pBt271, align 8
  %call272 = call ptr @sqlite3BtreePager(ptr noundef %202)
  store ptr %call272, ptr %pPager270, align 8
  store i64 -2, ptr %iLimit, align 8
  %203 = load ptr, ptr %zRight, align 8
  %tobool273 = icmp ne ptr %203, null
  br i1 %tobool273, label %if.then274, label %if.end280

if.then274:                                       ; preds = %sw.bb269
  %204 = load ptr, ptr %zRight, align 8
  %call275 = call i32 @sqlite3DecOrHexToI64(ptr noundef %204, ptr noundef %iLimit)
  %205 = load i64, ptr %iLimit, align 8
  %cmp276 = icmp slt i64 %205, -1
  br i1 %cmp276, label %if.then278, label %if.end279

if.then278:                                       ; preds = %if.then274
  store i64 -1, ptr %iLimit, align 8
  br label %if.end279

if.end279:                                        ; preds = %if.then278, %if.then274
  br label %if.end280

if.end280:                                        ; preds = %if.end279, %sw.bb269
  %206 = load ptr, ptr %pPager270, align 8
  %207 = load i64, ptr %iLimit, align 8
  %call281 = call i64 @sqlite3PagerJournalSizeLimit(ptr noundef %206, i64 noundef %207)
  store i64 %call281, ptr %iLimit, align 8
  %208 = load ptr, ptr %v, align 8
  %209 = load i64, ptr %iLimit, align 8
  call void @returnSingleInt(ptr noundef %208, i64 noundef %209)
  br label %sw.epilog

sw.bb282:                                         ; preds = %if.end72
  %210 = load ptr, ptr %pDb, align 8
  %pBt284 = getelementptr inbounds nuw %struct.Db, ptr %210, i32 0, i32 1
  %211 = load ptr, ptr %pBt284, align 8
  store ptr %211, ptr %pBt283, align 8
  %212 = load ptr, ptr %zRight, align 8
  %tobool285 = icmp ne ptr %212, null
  br i1 %tobool285, label %if.else289, label %if.then286

if.then286:                                       ; preds = %sw.bb282
  %213 = load ptr, ptr %v, align 8
  %214 = load ptr, ptr %pBt283, align 8
  %call287 = call i32 @sqlite3BtreeGetAutoVacuum(ptr noundef %214)
  %conv288 = sext i32 %call287 to i64
  call void @returnSingleInt(ptr noundef %213, i64 noundef %conv288)
  br label %if.end316

if.else289:                                       ; preds = %sw.bb282
  %215 = load ptr, ptr %zRight, align 8
  %call290 = call i32 @getAutoVacuum(ptr noundef %215)
  store i32 %call290, ptr %eAuto, align 4
  %216 = load i32, ptr %eAuto, align 4
  %conv291 = trunc i32 %216 to i8
  %217 = load ptr, ptr %db, align 8
  %nextAutovac = getelementptr inbounds nuw %struct.sqlite3, ptr %217, i32 0, i32 22
  store i8 %conv291, ptr %nextAutovac, align 4
  %218 = load ptr, ptr %pBt283, align 8
  %219 = load i32, ptr %eAuto, align 4
  %call292 = call i32 @sqlite3BtreeSetAutoVacuum(ptr noundef %218, i32 noundef %219)
  store i32 %call292, ptr %rc, align 4
  %220 = load i32, ptr %rc, align 4
  %cmp293 = icmp eq i32 %220, 0
  br i1 %cmp293, label %land.lhs.true295, label %if.end315

land.lhs.true295:                                 ; preds = %if.else289
  %221 = load i32, ptr %eAuto, align 4
  %cmp296 = icmp eq i32 %221, 1
  br i1 %cmp296, label %if.then301, label %lor.lhs.false298

lor.lhs.false298:                                 ; preds = %land.lhs.true295
  %222 = load i32, ptr %eAuto, align 4
  %cmp299 = icmp eq i32 %222, 2
  br i1 %cmp299, label %if.then301, label %if.end315

if.then301:                                       ; preds = %lor.lhs.false298, %land.lhs.true295
  %223 = load ptr, ptr %v, align 8
  %call303 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %223)
  store i32 %call303, ptr %iAddr, align 4
  %224 = load ptr, ptr %v, align 8
  %call304 = call ptr @sqlite3VdbeAddOpList(ptr noundef %224, i32 noundef 5, ptr noundef @sqlite3Pragma.setMeta6, i32 noundef 0)
  store ptr %call304, ptr %aOp302, align 8
  %225 = load i32, ptr %iDb, align 4
  %226 = load ptr, ptr %aOp302, align 8
  %arrayidx305 = getelementptr inbounds %struct.VdbeOp, ptr %226, i64 0
  %p1306 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx305, i32 0, i32 3
  store i32 %225, ptr %p1306, align 4
  %227 = load i32, ptr %iDb, align 4
  %228 = load ptr, ptr %aOp302, align 8
  %arrayidx307 = getelementptr inbounds %struct.VdbeOp, ptr %228, i64 1
  %p1308 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx307, i32 0, i32 3
  store i32 %227, ptr %p1308, align 4
  %229 = load i32, ptr %iAddr, align 4
  %add309 = add nsw i32 %229, 4
  %230 = load ptr, ptr %aOp302, align 8
  %arrayidx310 = getelementptr inbounds %struct.VdbeOp, ptr %230, i64 2
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx310, i32 0, i32 4
  store i32 %add309, ptr %p2, align 8
  %231 = load i32, ptr %iDb, align 4
  %232 = load ptr, ptr %aOp302, align 8
  %arrayidx311 = getelementptr inbounds %struct.VdbeOp, ptr %232, i64 4
  %p1312 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx311, i32 0, i32 3
  store i32 %231, ptr %p1312, align 4
  %233 = load i32, ptr %eAuto, align 4
  %sub313 = sub nsw i32 %233, 1
  %234 = load ptr, ptr %aOp302, align 8
  %arrayidx314 = getelementptr inbounds %struct.VdbeOp, ptr %234, i64 4
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx314, i32 0, i32 5
  store i32 %sub313, ptr %p3, align 4
  %235 = load ptr, ptr %v, align 8
  %236 = load i32, ptr %iDb, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %235, i32 noundef %236)
  br label %if.end315

if.end315:                                        ; preds = %if.then301, %lor.lhs.false298, %if.else289
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.then286
  br label %sw.epilog

sw.bb317:                                         ; preds = %if.end72
  %237 = load ptr, ptr %zRight, align 8
  %cmp319 = icmp eq ptr %237, null
  br i1 %cmp319, label %if.then327, label %lor.lhs.false321

lor.lhs.false321:                                 ; preds = %sw.bb317
  %238 = load ptr, ptr %zRight, align 8
  %call322 = call i32 @sqlite3GetInt32(ptr noundef %238, ptr noundef %iLimit318)
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %lor.lhs.false324, label %if.then327

lor.lhs.false324:                                 ; preds = %lor.lhs.false321
  %239 = load i32, ptr %iLimit318, align 4
  %cmp325 = icmp sle i32 %239, 0
  br i1 %cmp325, label %if.then327, label %if.end328

if.then327:                                       ; preds = %lor.lhs.false324, %lor.lhs.false321, %sw.bb317
  store i32 2147483647, ptr %iLimit318, align 4
  br label %if.end328

if.end328:                                        ; preds = %if.then327, %lor.lhs.false324
  %240 = load ptr, ptr %pParse.addr, align 8
  %241 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %240, i32 noundef 0, i32 noundef %241)
  %242 = load ptr, ptr %v, align 8
  %243 = load i32, ptr %iLimit318, align 4
  %call329 = call i32 @sqlite3VdbeAddOp2(ptr noundef %242, i32 noundef 70, i32 noundef %243, i32 noundef 1)
  %244 = load ptr, ptr %v, align 8
  %245 = load i32, ptr %iDb, align 4
  %call330 = call i32 @sqlite3VdbeAddOp1(ptr noundef %244, i32 noundef 59, i32 noundef %245)
  store i32 %call330, ptr %addr, align 4
  %246 = load ptr, ptr %v, align 8
  %call331 = call i32 @sqlite3VdbeAddOp1(ptr noundef %246, i32 noundef 81, i32 noundef 1)
  %247 = load ptr, ptr %v, align 8
  %call332 = call i32 @sqlite3VdbeAddOp2(ptr noundef %247, i32 noundef 83, i32 noundef 1, i32 noundef -1)
  %248 = load ptr, ptr %v, align 8
  %249 = load i32, ptr %addr, align 4
  %call333 = call i32 @sqlite3VdbeAddOp2(ptr noundef %248, i32 noundef 47, i32 noundef 1, i32 noundef %249)
  %250 = load ptr, ptr %v, align 8
  %251 = load i32, ptr %addr, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %250, i32 noundef %251)
  br label %sw.epilog

sw.bb334:                                         ; preds = %if.end72
  %252 = load ptr, ptr %zRight, align 8
  %tobool335 = icmp ne ptr %252, null
  br i1 %tobool335, label %if.else340, label %if.then336

if.then336:                                       ; preds = %sw.bb334
  %253 = load ptr, ptr %v, align 8
  %254 = load ptr, ptr %pDb, align 8
  %pSchema337 = getelementptr inbounds nuw %struct.Db, ptr %254, i32 0, i32 4
  %255 = load ptr, ptr %pSchema337, align 8
  %cache_size338 = getelementptr inbounds nuw %struct.Schema, ptr %255, i32 0, i32 10
  %256 = load i32, ptr %cache_size338, align 4
  %conv339 = sext i32 %256 to i64
  call void @returnSingleInt(ptr noundef %253, i64 noundef %conv339)
  br label %if.end349

if.else340:                                       ; preds = %sw.bb334
  %257 = load ptr, ptr %zRight, align 8
  %call342 = call i32 @sqlite3Atoi(ptr noundef %257)
  store i32 %call342, ptr %size341, align 4
  %258 = load i32, ptr %size341, align 4
  %259 = load ptr, ptr %pDb, align 8
  %pSchema343 = getelementptr inbounds nuw %struct.Db, ptr %259, i32 0, i32 4
  %260 = load ptr, ptr %pSchema343, align 8
  %cache_size344 = getelementptr inbounds nuw %struct.Schema, ptr %260, i32 0, i32 10
  store i32 %258, ptr %cache_size344, align 4
  %261 = load ptr, ptr %pDb, align 8
  %pBt345 = getelementptr inbounds nuw %struct.Db, ptr %261, i32 0, i32 1
  %262 = load ptr, ptr %pBt345, align 8
  %263 = load ptr, ptr %pDb, align 8
  %pSchema346 = getelementptr inbounds nuw %struct.Db, ptr %263, i32 0, i32 4
  %264 = load ptr, ptr %pSchema346, align 8
  %cache_size347 = getelementptr inbounds nuw %struct.Schema, ptr %264, i32 0, i32 10
  %265 = load i32, ptr %cache_size347, align 4
  %call348 = call i32 @sqlite3BtreeSetCacheSize(ptr noundef %262, i32 noundef %265)
  br label %if.end349

if.end349:                                        ; preds = %if.else340, %if.then336
  br label %sw.epilog

sw.bb350:                                         ; preds = %if.end72
  %266 = load ptr, ptr %zRight, align 8
  %tobool351 = icmp ne ptr %266, null
  br i1 %tobool351, label %if.else364, label %if.then352

if.then352:                                       ; preds = %sw.bb350
  %267 = load ptr, ptr %v, align 8
  %268 = load ptr, ptr %db, align 8
  %flags353 = getelementptr inbounds nuw %struct.sqlite3, ptr %268, i32 0, i32 7
  %269 = load i64, ptr %flags353, align 8
  %and354 = and i64 %269, 32
  %cmp355 = icmp eq i64 %and354, 0
  br i1 %cmp355, label %cond.true357, label %cond.false358

cond.true357:                                     ; preds = %if.then352
  br label %cond.end361

cond.false358:                                    ; preds = %if.then352
  %270 = load ptr, ptr %pDb, align 8
  %pBt359 = getelementptr inbounds nuw %struct.Db, ptr %270, i32 0, i32 1
  %271 = load ptr, ptr %pBt359, align 8
  %call360 = call i32 @sqlite3BtreeSetSpillSize(ptr noundef %271, i32 noundef 0)
  br label %cond.end361

cond.end361:                                      ; preds = %cond.false358, %cond.true357
  %cond362 = phi i32 [ 0, %cond.true357 ], [ %call360, %cond.false358 ]
  %conv363 = sext i32 %cond362 to i64
  call void @returnSingleInt(ptr noundef %267, i64 noundef %conv363)
  br label %if.end383

if.else364:                                       ; preds = %sw.bb350
  store i32 1, ptr %size365, align 4
  %272 = load ptr, ptr %zRight, align 8
  %call366 = call i32 @sqlite3GetInt32(ptr noundef %272, ptr noundef %size365)
  %tobool367 = icmp ne i32 %call366, 0
  br i1 %tobool367, label %if.then368, label %if.end371

if.then368:                                       ; preds = %if.else364
  %273 = load ptr, ptr %pDb, align 8
  %pBt369 = getelementptr inbounds nuw %struct.Db, ptr %273, i32 0, i32 1
  %274 = load ptr, ptr %pBt369, align 8
  %275 = load i32, ptr %size365, align 4
  %call370 = call i32 @sqlite3BtreeSetSpillSize(ptr noundef %274, i32 noundef %275)
  br label %if.end371

if.end371:                                        ; preds = %if.then368, %if.else364
  %276 = load ptr, ptr %zRight, align 8
  %277 = load i32, ptr %size365, align 4
  %cmp372 = icmp ne i32 %277, 0
  %conv373 = zext i1 %cmp372 to i32
  %conv374 = trunc i32 %conv373 to i8
  %call375 = call zeroext i8 @sqlite3GetBoolean(ptr noundef %276, i8 noundef zeroext %conv374)
  %tobool376 = icmp ne i8 %call375, 0
  br i1 %tobool376, label %if.then377, label %if.else379

if.then377:                                       ; preds = %if.end371
  %278 = load ptr, ptr %db, align 8
  %flags378 = getelementptr inbounds nuw %struct.sqlite3, ptr %278, i32 0, i32 7
  %279 = load i64, ptr %flags378, align 8
  %or = or i64 %279, 32
  store i64 %or, ptr %flags378, align 8
  br label %if.end382

if.else379:                                       ; preds = %if.end371
  %280 = load ptr, ptr %db, align 8
  %flags380 = getelementptr inbounds nuw %struct.sqlite3, ptr %280, i32 0, i32 7
  %281 = load i64, ptr %flags380, align 8
  %and381 = and i64 %281, -33
  store i64 %and381, ptr %flags380, align 8
  br label %if.end382

if.end382:                                        ; preds = %if.else379, %if.then377
  %282 = load ptr, ptr %db, align 8
  call void @setAllPagerFlags(ptr noundef %282)
  br label %if.end383

if.end383:                                        ; preds = %if.end382, %cond.end361
  br label %sw.epilog

sw.bb384:                                         ; preds = %if.end72
  %283 = load ptr, ptr %zRight, align 8
  %tobool385 = icmp ne ptr %283, null
  br i1 %tobool385, label %if.then386, label %if.end426

if.then386:                                       ; preds = %sw.bb384
  %284 = load ptr, ptr %zRight, align 8
  %call388 = call i32 @sqlite3DecOrHexToI64(ptr noundef %284, ptr noundef %sz)
  %285 = load i64, ptr %sz, align 8
  %cmp389 = icmp slt i64 %285, 0
  br i1 %cmp389, label %if.then391, label %if.end392

if.then391:                                       ; preds = %if.then386
  %286 = load i64, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 19), align 8
  store i64 %286, ptr %sz, align 8
  br label %if.end392

if.end392:                                        ; preds = %if.then391, %if.then386
  %287 = load ptr, ptr %pId2.addr, align 8
  %n393 = getelementptr inbounds nuw %struct.Token, ptr %287, i32 0, i32 1
  %288 = load i32, ptr %n393, align 8
  %cmp394 = icmp eq i32 %288, 0
  br i1 %cmp394, label %if.then396, label %if.end397

if.then396:                                       ; preds = %if.end392
  %289 = load i64, ptr %sz, align 8
  %290 = load ptr, ptr %db, align 8
  %szMmap = getelementptr inbounds nuw %struct.sqlite3, ptr %290, i32 0, i32 9
  store i64 %289, ptr %szMmap, align 8
  br label %if.end397

if.end397:                                        ; preds = %if.then396, %if.end392
  %291 = load ptr, ptr %db, align 8
  %nDb398 = getelementptr inbounds nuw %struct.sqlite3, ptr %291, i32 0, i32 5
  %292 = load i32, ptr %nDb398, align 8
  %sub399 = sub nsw i32 %292, 1
  store i32 %sub399, ptr %ii387, align 4
  br label %for.cond400

for.cond400:                                      ; preds = %for.inc423, %if.end397
  %293 = load i32, ptr %ii387, align 4
  %cmp401 = icmp sge i32 %293, 0
  br i1 %cmp401, label %for.body403, label %for.end425

for.body403:                                      ; preds = %for.cond400
  %294 = load ptr, ptr %db, align 8
  %aDb404 = getelementptr inbounds nuw %struct.sqlite3, ptr %294, i32 0, i32 4
  %295 = load ptr, ptr %aDb404, align 8
  %296 = load i32, ptr %ii387, align 4
  %idxprom405 = sext i32 %296 to i64
  %arrayidx406 = getelementptr inbounds %struct.Db, ptr %295, i64 %idxprom405
  %pBt407 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx406, i32 0, i32 1
  %297 = load ptr, ptr %pBt407, align 8
  %tobool408 = icmp ne ptr %297, null
  br i1 %tobool408, label %land.lhs.true409, label %if.end422

land.lhs.true409:                                 ; preds = %for.body403
  %298 = load i32, ptr %ii387, align 4
  %299 = load i32, ptr %iDb, align 4
  %cmp410 = icmp eq i32 %298, %299
  br i1 %cmp410, label %if.then416, label %lor.lhs.false412

lor.lhs.false412:                                 ; preds = %land.lhs.true409
  %300 = load ptr, ptr %pId2.addr, align 8
  %n413 = getelementptr inbounds nuw %struct.Token, ptr %300, i32 0, i32 1
  %301 = load i32, ptr %n413, align 8
  %cmp414 = icmp eq i32 %301, 0
  br i1 %cmp414, label %if.then416, label %if.end422

if.then416:                                       ; preds = %lor.lhs.false412, %land.lhs.true409
  %302 = load ptr, ptr %db, align 8
  %aDb417 = getelementptr inbounds nuw %struct.sqlite3, ptr %302, i32 0, i32 4
  %303 = load ptr, ptr %aDb417, align 8
  %304 = load i32, ptr %ii387, align 4
  %idxprom418 = sext i32 %304 to i64
  %arrayidx419 = getelementptr inbounds %struct.Db, ptr %303, i64 %idxprom418
  %pBt420 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx419, i32 0, i32 1
  %305 = load ptr, ptr %pBt420, align 8
  %306 = load i64, ptr %sz, align 8
  %call421 = call i32 @sqlite3BtreeSetMmapLimit(ptr noundef %305, i64 noundef %306)
  br label %if.end422

if.end422:                                        ; preds = %if.then416, %lor.lhs.false412, %for.body403
  br label %for.inc423

for.inc423:                                       ; preds = %if.end422
  %307 = load i32, ptr %ii387, align 4
  %dec424 = add nsw i32 %307, -1
  store i32 %dec424, ptr %ii387, align 4
  br label %for.cond400, !llvm.loop !11

for.end425:                                       ; preds = %for.cond400
  br label %if.end426

if.end426:                                        ; preds = %for.end425, %sw.bb384
  store i64 -1, ptr %sz, align 8
  %308 = load ptr, ptr %db, align 8
  %309 = load ptr, ptr %zDb, align 8
  %call427 = call i32 @sqlite3_file_control(ptr noundef %308, ptr noundef %309, i32 noundef 18, ptr noundef %sz)
  store i32 %call427, ptr %rc, align 4
  %310 = load i32, ptr %rc, align 4
  %cmp428 = icmp eq i32 %310, 0
  br i1 %cmp428, label %if.then430, label %if.else431

if.then430:                                       ; preds = %if.end426
  %311 = load ptr, ptr %v, align 8
  %312 = load i64, ptr %sz, align 8
  call void @returnSingleInt(ptr noundef %311, i64 noundef %312)
  br label %if.end439

if.else431:                                       ; preds = %if.end426
  %313 = load i32, ptr %rc, align 4
  %cmp432 = icmp ne i32 %313, 12
  br i1 %cmp432, label %if.then434, label %if.end438

if.then434:                                       ; preds = %if.else431
  %314 = load ptr, ptr %pParse.addr, align 8
  %nErr435 = getelementptr inbounds nuw %struct.Parse, ptr %314, i32 0, i32 16
  %315 = load i32, ptr %nErr435, align 8
  %inc436 = add nsw i32 %315, 1
  store i32 %inc436, ptr %nErr435, align 8
  %316 = load i32, ptr %rc, align 4
  %317 = load ptr, ptr %pParse.addr, align 8
  %rc437 = getelementptr inbounds nuw %struct.Parse, ptr %317, i32 0, i32 3
  store i32 %316, ptr %rc437, align 8
  br label %if.end438

if.end438:                                        ; preds = %if.then434, %if.else431
  br label %if.end439

if.end439:                                        ; preds = %if.end438, %if.then430
  br label %sw.epilog

sw.bb440:                                         ; preds = %if.end72
  %318 = load ptr, ptr %zRight, align 8
  %tobool441 = icmp ne ptr %318, null
  br i1 %tobool441, label %if.else444, label %if.then442

if.then442:                                       ; preds = %sw.bb440
  %319 = load ptr, ptr %v, align 8
  %320 = load ptr, ptr %db, align 8
  %temp_store = getelementptr inbounds nuw %struct.sqlite3, ptr %320, i32 0, i32 18
  %321 = load i8, ptr %temp_store, align 8
  %conv443 = zext i8 %321 to i64
  call void @returnSingleInt(ptr noundef %319, i64 noundef %conv443)
  br label %if.end446

if.else444:                                       ; preds = %sw.bb440
  %322 = load ptr, ptr %pParse.addr, align 8
  %323 = load ptr, ptr %zRight, align 8
  %call445 = call i32 @changeTempStorage(ptr noundef %322, ptr noundef %323)
  br label %if.end446

if.end446:                                        ; preds = %if.else444, %if.then442
  br label %sw.epilog

sw.bb447:                                         ; preds = %if.end72
  %324 = load ptr, ptr %zRight, align 8
  %tobool448 = icmp ne ptr %324, null
  br i1 %tobool448, label %if.else450, label %if.then449

if.then449:                                       ; preds = %sw.bb447
  %325 = load ptr, ptr %v, align 8
  %326 = load ptr, ptr @sqlite3_temp_directory, align 8
  call void @returnSingleText(ptr noundef %325, ptr noundef %326)
  br label %if.end476

if.else450:                                       ; preds = %sw.bb447
  %327 = load ptr, ptr %zRight, align 8
  %arrayidx451 = getelementptr inbounds i8, ptr %327, i64 0
  %328 = load i8, ptr %arrayidx451, align 1
  %tobool452 = icmp ne i8 %328, 0
  br i1 %tobool452, label %if.then453, label %if.end462

if.then453:                                       ; preds = %if.else450
  %329 = load ptr, ptr %db, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %329, i32 0, i32 0
  %330 = load ptr, ptr %pVfs, align 8
  %331 = load ptr, ptr %zRight, align 8
  %call454 = call i32 @sqlite3OsAccess(ptr noundef %330, ptr noundef %331, i32 noundef 1, ptr noundef %res)
  store i32 %call454, ptr %rc, align 4
  %332 = load i32, ptr %rc, align 4
  %cmp455 = icmp ne i32 %332, 0
  br i1 %cmp455, label %if.then460, label %lor.lhs.false457

lor.lhs.false457:                                 ; preds = %if.then453
  %333 = load i32, ptr %res, align 4
  %cmp458 = icmp eq i32 %333, 0
  br i1 %cmp458, label %if.then460, label %if.end461

if.then460:                                       ; preds = %lor.lhs.false457, %if.then453
  %334 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %334, ptr noundef @.str.826)
  br label %pragma_out

if.end461:                                        ; preds = %lor.lhs.false457
  br label %if.end462

if.end462:                                        ; preds = %if.end461, %if.else450
  %335 = load ptr, ptr %db, align 8
  %temp_store463 = getelementptr inbounds nuw %struct.sqlite3, ptr %335, i32 0, i32 18
  %336 = load i8, ptr %temp_store463, align 8
  %conv464 = zext i8 %336 to i32
  %cmp465 = icmp sle i32 %conv464, 1
  br i1 %cmp465, label %if.then467, label %if.end469

if.then467:                                       ; preds = %if.end462
  %337 = load ptr, ptr %pParse.addr, align 8
  %call468 = call i32 @invalidateTempStorage(ptr noundef %337)
  br label %if.end469

if.end469:                                        ; preds = %if.then467, %if.end462
  %338 = load ptr, ptr @sqlite3_temp_directory, align 8
  call void @sqlite3_free(ptr noundef %338)
  %339 = load ptr, ptr %zRight, align 8
  %arrayidx470 = getelementptr inbounds i8, ptr %339, i64 0
  %340 = load i8, ptr %arrayidx470, align 1
  %tobool471 = icmp ne i8 %340, 0
  br i1 %tobool471, label %if.then472, label %if.else474

if.then472:                                       ; preds = %if.end469
  %341 = load ptr, ptr %zRight, align 8
  %call473 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.20, ptr noundef %341)
  store ptr %call473, ptr @sqlite3_temp_directory, align 8
  br label %if.end475

if.else474:                                       ; preds = %if.end469
  store ptr null, ptr @sqlite3_temp_directory, align 8
  br label %if.end475

if.end475:                                        ; preds = %if.else474, %if.then472
  br label %if.end476

if.end476:                                        ; preds = %if.end475, %if.then449
  br label %sw.epilog

sw.bb477:                                         ; preds = %if.end72
  %342 = load ptr, ptr %zRight, align 8
  %tobool478 = icmp ne ptr %342, null
  br i1 %tobool478, label %if.else483, label %if.then479

if.then479:                                       ; preds = %sw.bb477
  %343 = load ptr, ptr %v, align 8
  %344 = load ptr, ptr %pDb, align 8
  %safety_level = getelementptr inbounds nuw %struct.Db, ptr %344, i32 0, i32 2
  %345 = load i8, ptr %safety_level, align 8
  %conv480 = zext i8 %345 to i32
  %sub481 = sub nsw i32 %conv480, 1
  %conv482 = sext i32 %sub481 to i64
  call void @returnSingleInt(ptr noundef %343, i64 noundef %conv482)
  br label %if.end502

if.else483:                                       ; preds = %sw.bb477
  %346 = load ptr, ptr %db, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %346, i32 0, i32 17
  %347 = load i8, ptr %autoCommit, align 1
  %tobool484 = icmp ne i8 %347, 0
  br i1 %tobool484, label %if.else486, label %if.then485

if.then485:                                       ; preds = %if.else483
  %348 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %348, ptr noundef @.str.827)
  br label %if.end501

if.else486:                                       ; preds = %if.else483
  %349 = load i32, ptr %iDb, align 4
  %cmp487 = icmp ne i32 %349, 1
  br i1 %cmp487, label %if.then489, label %if.end500

if.then489:                                       ; preds = %if.else486
  %350 = load ptr, ptr %zRight, align 8
  %call490 = call zeroext i8 @getSafetyLevel(ptr noundef %350, i32 noundef 0, i8 noundef zeroext 1)
  %conv491 = zext i8 %call490 to i32
  %add492 = add nsw i32 %conv491, 1
  %and493 = and i32 %add492, 7
  store i32 %and493, ptr %iLevel, align 4
  %351 = load i32, ptr %iLevel, align 4
  %cmp494 = icmp eq i32 %351, 0
  br i1 %cmp494, label %if.then496, label %if.end497

if.then496:                                       ; preds = %if.then489
  store i32 1, ptr %iLevel, align 4
  br label %if.end497

if.end497:                                        ; preds = %if.then496, %if.then489
  %352 = load i32, ptr %iLevel, align 4
  %conv498 = trunc i32 %352 to i8
  %353 = load ptr, ptr %pDb, align 8
  %safety_level499 = getelementptr inbounds nuw %struct.Db, ptr %353, i32 0, i32 2
  store i8 %conv498, ptr %safety_level499, align 8
  %354 = load ptr, ptr %pDb, align 8
  %bSyncSet = getelementptr inbounds nuw %struct.Db, ptr %354, i32 0, i32 3
  store i8 1, ptr %bSyncSet, align 1
  %355 = load ptr, ptr %db, align 8
  call void @setAllPagerFlags(ptr noundef %355)
  br label %if.end500

if.end500:                                        ; preds = %if.end497, %if.else486
  br label %if.end501

if.end501:                                        ; preds = %if.end500, %if.then485
  br label %if.end502

if.end502:                                        ; preds = %if.end501, %if.then479
  br label %sw.epilog

sw.bb503:                                         ; preds = %if.end72
  %356 = load ptr, ptr %zRight, align 8
  %cmp504 = icmp eq ptr %356, null
  br i1 %cmp504, label %if.then506, label %if.else512

if.then506:                                       ; preds = %sw.bb503
  %357 = load ptr, ptr %v, align 8
  %358 = load ptr, ptr %pPragma, align 8
  call void @setPragmaResultColumnNames(ptr noundef %357, ptr noundef %358)
  %359 = load ptr, ptr %v, align 8
  %360 = load ptr, ptr %db, align 8
  %flags507 = getelementptr inbounds nuw %struct.sqlite3, ptr %360, i32 0, i32 7
  %361 = load i64, ptr %flags507, align 8
  %362 = load ptr, ptr %pPragma, align 8
  %iArg = getelementptr inbounds nuw %struct.PragmaName, ptr %362, i32 0, i32 5
  %363 = load i64, ptr %iArg, align 8
  %and508 = and i64 %361, %363
  %cmp509 = icmp ne i64 %and508, 0
  %conv510 = zext i1 %cmp509 to i32
  %conv511 = sext i32 %conv510 to i64
  call void @returnSingleInt(ptr noundef %359, i64 noundef %conv511)
  br label %if.end535

if.else512:                                       ; preds = %sw.bb503
  %364 = load ptr, ptr %pPragma, align 8
  %iArg513 = getelementptr inbounds nuw %struct.PragmaName, ptr %364, i32 0, i32 5
  %365 = load i64, ptr %iArg513, align 8
  store i64 %365, ptr %mask, align 8
  %366 = load ptr, ptr %db, align 8
  %autoCommit514 = getelementptr inbounds nuw %struct.sqlite3, ptr %366, i32 0, i32 17
  %367 = load i8, ptr %autoCommit514, align 1
  %conv515 = zext i8 %367 to i32
  %cmp516 = icmp eq i32 %conv515, 0
  br i1 %cmp516, label %if.then518, label %if.end520

if.then518:                                       ; preds = %if.else512
  %368 = load i64, ptr %mask, align 8
  %and519 = and i64 %368, -16385
  store i64 %and519, ptr %mask, align 8
  br label %if.end520

if.end520:                                        ; preds = %if.then518, %if.else512
  %369 = load ptr, ptr %zRight, align 8
  %call521 = call zeroext i8 @sqlite3GetBoolean(ptr noundef %369, i8 noundef zeroext 0)
  %tobool522 = icmp ne i8 %call521, 0
  br i1 %tobool522, label %if.then523, label %if.else526

if.then523:                                       ; preds = %if.end520
  %370 = load i64, ptr %mask, align 8
  %371 = load ptr, ptr %db, align 8
  %flags524 = getelementptr inbounds nuw %struct.sqlite3, ptr %371, i32 0, i32 7
  %372 = load i64, ptr %flags524, align 8
  %or525 = or i64 %372, %370
  store i64 %or525, ptr %flags524, align 8
  br label %if.end533

if.else526:                                       ; preds = %if.end520
  %373 = load i64, ptr %mask, align 8
  %not = xor i64 %373, -1
  %374 = load ptr, ptr %db, align 8
  %flags527 = getelementptr inbounds nuw %struct.sqlite3, ptr %374, i32 0, i32 7
  %375 = load i64, ptr %flags527, align 8
  %and528 = and i64 %375, %not
  store i64 %and528, ptr %flags527, align 8
  %376 = load i64, ptr %mask, align 8
  %cmp529 = icmp eq i64 %376, 524288
  br i1 %cmp529, label %if.then531, label %if.end532

if.then531:                                       ; preds = %if.else526
  %377 = load ptr, ptr %db, align 8
  %nDeferredImmCons = getelementptr inbounds nuw %struct.sqlite3, ptr %377, i32 0, i32 81
  store i64 0, ptr %nDeferredImmCons, align 8
  br label %if.end532

if.end532:                                        ; preds = %if.then531, %if.else526
  br label %if.end533

if.end533:                                        ; preds = %if.end532, %if.then523
  %378 = load ptr, ptr %v, align 8
  %call534 = call i32 @sqlite3VdbeAddOp0(ptr noundef %378, i32 noundef 158)
  %379 = load ptr, ptr %db, align 8
  call void @setAllPagerFlags(ptr noundef %379)
  br label %if.end535

if.end535:                                        ; preds = %if.end533, %if.then506
  br label %sw.epilog

sw.bb536:                                         ; preds = %if.end72
  %380 = load ptr, ptr %zRight, align 8
  %tobool537 = icmp ne ptr %380, null
  br i1 %tobool537, label %if.then538, label %if.end610

if.then538:                                       ; preds = %sw.bb536
  %381 = load ptr, ptr %pParse.addr, align 8
  %382 = load ptr, ptr %zRight, align 8
  %383 = load ptr, ptr %zDb, align 8
  %call539 = call ptr @sqlite3LocateTable(ptr noundef %381, i32 noundef 2, ptr noundef %382, ptr noundef %383)
  store ptr %call539, ptr %pTab, align 8
  %384 = load ptr, ptr %pTab, align 8
  %tobool540 = icmp ne ptr %384, null
  br i1 %tobool540, label %if.then541, label %if.end609

if.then541:                                       ; preds = %if.then538
  %385 = load ptr, ptr %db, align 8
  %386 = load ptr, ptr %pTab, align 8
  %pSchema542 = getelementptr inbounds nuw %struct.Table, ptr %386, i32 0, i32 20
  %387 = load ptr, ptr %pSchema542, align 8
  %call543 = call i32 @sqlite3SchemaToIndex(ptr noundef %385, ptr noundef %387)
  store i32 %call543, ptr %iTabDb, align 4
  store i32 0, ptr %nHidden, align 4
  %388 = load ptr, ptr %pTab, align 8
  %call544 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %388)
  store ptr %call544, ptr %pPk, align 8
  %389 = load ptr, ptr %pParse.addr, align 8
  %nMem545 = getelementptr inbounds nuw %struct.Parse, ptr %389, i32 0, i32 18
  store i32 7, ptr %nMem545, align 8
  %390 = load ptr, ptr %pParse.addr, align 8
  %391 = load i32, ptr %iTabDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %390, i32 noundef %391)
  %392 = load ptr, ptr %pParse.addr, align 8
  %393 = load ptr, ptr %pTab, align 8
  %call546 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %392, ptr noundef %393)
  store i32 0, ptr %i, align 4
  %394 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %394, i32 0, i32 1
  %395 = load ptr, ptr %aCol, align 8
  store ptr %395, ptr %pCol, align 8
  br label %for.cond547

for.cond547:                                      ; preds = %for.inc606, %if.then541
  %396 = load i32, ptr %i, align 4
  %397 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %397, i32 0, i32 11
  %398 = load i16, ptr %nCol, align 2
  %conv548 = sext i16 %398 to i32
  %cmp549 = icmp slt i32 %396, %conv548
  br i1 %cmp549, label %for.body551, label %for.end608

for.body551:                                      ; preds = %for.cond547
  %399 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %399, i32 0, i32 6
  %400 = load i8, ptr %colFlags, align 1
  %conv552 = zext i8 %400 to i32
  %and553 = and i32 %conv552, 2
  %cmp554 = icmp ne i32 %and553, 0
  %conv555 = zext i1 %cmp554 to i32
  store i32 %conv555, ptr %isHidden, align 4
  %401 = load i32, ptr %isHidden, align 4
  %tobool556 = icmp ne i32 %401, 0
  br i1 %tobool556, label %land.lhs.true557, label %if.end563

land.lhs.true557:                                 ; preds = %for.body551
  %402 = load ptr, ptr %pPragma, align 8
  %iArg558 = getelementptr inbounds nuw %struct.PragmaName, ptr %402, i32 0, i32 5
  %403 = load i64, ptr %iArg558, align 8
  %cmp559 = icmp eq i64 %403, 0
  br i1 %cmp559, label %if.then561, label %if.end563

if.then561:                                       ; preds = %land.lhs.true557
  %404 = load i32, ptr %nHidden, align 4
  %inc562 = add nsw i32 %404, 1
  store i32 %inc562, ptr %nHidden, align 4
  br label %for.inc606

if.end563:                                        ; preds = %land.lhs.true557, %for.body551
  %405 = load ptr, ptr %pCol, align 8
  %colFlags564 = getelementptr inbounds nuw %struct.Column, ptr %405, i32 0, i32 6
  %406 = load i8, ptr %colFlags564, align 1
  %conv565 = zext i8 %406 to i32
  %and566 = and i32 %conv565, 1
  %cmp567 = icmp eq i32 %and566, 0
  br i1 %cmp567, label %if.then569, label %if.else570

if.then569:                                       ; preds = %if.end563
  store i32 0, ptr %k, align 4
  br label %if.end591

if.else570:                                       ; preds = %if.end563
  %407 = load ptr, ptr %pPk, align 8
  %cmp571 = icmp eq ptr %407, null
  br i1 %cmp571, label %if.then573, label %if.else574

if.then573:                                       ; preds = %if.else570
  store i32 1, ptr %k, align 4
  br label %if.end590

if.else574:                                       ; preds = %if.else570
  store i32 1, ptr %k, align 4
  br label %for.cond575

for.cond575:                                      ; preds = %for.inc587, %if.else574
  %408 = load i32, ptr %k, align 4
  %409 = load ptr, ptr %pTab, align 8
  %nCol576 = getelementptr inbounds nuw %struct.Table, ptr %409, i32 0, i32 11
  %410 = load i16, ptr %nCol576, align 2
  %conv577 = sext i16 %410 to i32
  %cmp578 = icmp sle i32 %408, %conv577
  br i1 %cmp578, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond575
  %411 = load ptr, ptr %pPk, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %411, i32 0, i32 1
  %412 = load ptr, ptr %aiColumn, align 8
  %413 = load i32, ptr %k, align 4
  %sub580 = sub nsw i32 %413, 1
  %idxprom581 = sext i32 %sub580 to i64
  %arrayidx582 = getelementptr inbounds i16, ptr %412, i64 %idxprom581
  %414 = load i16, ptr %arrayidx582, align 2
  %conv583 = sext i16 %414 to i32
  %415 = load i32, ptr %i, align 4
  %cmp584 = icmp ne i32 %conv583, %415
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond575
  %416 = phi i1 [ false, %for.cond575 ], [ %cmp584, %land.rhs ]
  br i1 %416, label %for.body586, label %for.end589

for.body586:                                      ; preds = %land.end
  br label %for.inc587

for.inc587:                                       ; preds = %for.body586
  %417 = load i32, ptr %k, align 4
  %inc588 = add nsw i32 %417, 1
  store i32 %inc588, ptr %k, align 4
  br label %for.cond575, !llvm.loop !12

for.end589:                                       ; preds = %land.end
  br label %if.end590

if.end590:                                        ; preds = %for.end589, %if.then573
  br label %if.end591

if.end591:                                        ; preds = %if.end590, %if.then569
  %418 = load ptr, ptr %v, align 8
  %419 = load ptr, ptr %pPragma, align 8
  %iArg592 = getelementptr inbounds nuw %struct.PragmaName, ptr %419, i32 0, i32 5
  %420 = load i64, ptr %iArg592, align 8
  %tobool593 = icmp ne i64 %420, 0
  %421 = zext i1 %tobool593 to i64
  %cond594 = select i1 %tobool593, ptr @.str.828, ptr @.str.829
  %422 = load i32, ptr %i, align 4
  %423 = load i32, ptr %nHidden, align 4
  %sub595 = sub nsw i32 %422, %423
  %424 = load ptr, ptr %pCol, align 8
  %zName = getelementptr inbounds nuw %struct.Column, ptr %424, i32 0, i32 0
  %425 = load ptr, ptr %zName, align 8
  %426 = load ptr, ptr %pCol, align 8
  %call596 = call ptr @sqlite3ColumnType(ptr noundef %426, ptr noundef @.str.3)
  %427 = load ptr, ptr %pCol, align 8
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %427, i32 0, i32 3
  %428 = load i8, ptr %notNull, align 8
  %conv597 = zext i8 %428 to i32
  %tobool598 = icmp ne i32 %conv597, 0
  %429 = zext i1 %tobool598 to i64
  %cond599 = select i1 %tobool598, i32 1, i32 0
  %430 = load ptr, ptr %pCol, align 8
  %pDflt = getelementptr inbounds nuw %struct.Column, ptr %430, i32 0, i32 1
  %431 = load ptr, ptr %pDflt, align 8
  %tobool600 = icmp ne ptr %431, null
  br i1 %tobool600, label %cond.true601, label %cond.false603

cond.true601:                                     ; preds = %if.end591
  %432 = load ptr, ptr %pCol, align 8
  %pDflt602 = getelementptr inbounds nuw %struct.Column, ptr %432, i32 0, i32 1
  %433 = load ptr, ptr %pDflt602, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %433, i32 0, i32 3
  %434 = load ptr, ptr %u, align 8
  br label %cond.end604

cond.false603:                                    ; preds = %if.end591
  br label %cond.end604

cond.end604:                                      ; preds = %cond.false603, %cond.true601
  %cond605 = phi ptr [ %434, %cond.true601 ], [ null, %cond.false603 ]
  %435 = load i32, ptr %k, align 4
  %436 = load i32, ptr %isHidden, align 4
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %418, i32 noundef 1, ptr noundef %cond594, i32 noundef %sub595, ptr noundef %425, ptr noundef %call596, i32 noundef %cond599, ptr noundef %cond605, i32 noundef %435, i32 noundef %436)
  br label %for.inc606

for.inc606:                                       ; preds = %cond.end604, %if.then561
  %437 = load i32, ptr %i, align 4
  %inc607 = add nsw i32 %437, 1
  store i32 %inc607, ptr %i, align 4
  %438 = load ptr, ptr %pCol, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Column, ptr %438, i32 1
  store ptr %incdec.ptr, ptr %pCol, align 8
  br label %for.cond547, !llvm.loop !13

for.end608:                                       ; preds = %for.cond547
  br label %if.end609

if.end609:                                        ; preds = %for.end608, %if.then538
  br label %if.end610

if.end610:                                        ; preds = %if.end609, %sw.bb536
  br label %sw.epilog

sw.bb611:                                         ; preds = %if.end72
  %439 = load ptr, ptr %zRight, align 8
  %tobool612 = icmp ne ptr %439, null
  br i1 %tobool612, label %if.then613, label %if.end681

if.then613:                                       ; preds = %sw.bb611
  %440 = load ptr, ptr %db, align 8
  %441 = load ptr, ptr %zRight, align 8
  %442 = load ptr, ptr %zDb, align 8
  %call615 = call ptr @sqlite3FindIndex(ptr noundef %440, ptr noundef %441, ptr noundef %442)
  store ptr %call615, ptr %pIdx, align 8
  %443 = load ptr, ptr %pIdx, align 8
  %cmp616 = icmp eq ptr %443, null
  br i1 %cmp616, label %if.then618, label %if.end628

if.then618:                                       ; preds = %if.then613
  %444 = load ptr, ptr %pParse.addr, align 8
  %445 = load ptr, ptr %zRight, align 8
  %446 = load ptr, ptr %zDb, align 8
  %call619 = call ptr @sqlite3LocateTable(ptr noundef %444, i32 noundef 2, ptr noundef %445, ptr noundef %446)
  store ptr %call619, ptr %pTab614, align 8
  %447 = load ptr, ptr %pTab614, align 8
  %tobool620 = icmp ne ptr %447, null
  br i1 %tobool620, label %land.lhs.true621, label %if.end627

land.lhs.true621:                                 ; preds = %if.then618
  %448 = load ptr, ptr %pTab614, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %448, i32 0, i32 9
  %449 = load i32, ptr %tabFlags, align 8
  %and622 = and i32 %449, 32
  %cmp623 = icmp eq i32 %and622, 0
  br i1 %cmp623, label %if.end627, label %if.then625

if.then625:                                       ; preds = %land.lhs.true621
  %450 = load ptr, ptr %pTab614, align 8
  %call626 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %450)
  store ptr %call626, ptr %pIdx, align 8
  br label %if.end627

if.end627:                                        ; preds = %if.then625, %land.lhs.true621, %if.then618
  br label %if.end628

if.end628:                                        ; preds = %if.end627, %if.then613
  %451 = load ptr, ptr %pIdx, align 8
  %tobool629 = icmp ne ptr %451, null
  br i1 %tobool629, label %if.then630, label %if.end680

if.then630:                                       ; preds = %if.end628
  %452 = load ptr, ptr %db, align 8
  %453 = load ptr, ptr %pIdx, align 8
  %pSchema631 = getelementptr inbounds nuw %struct.Index, ptr %453, i32 0, i32 6
  %454 = load ptr, ptr %pSchema631, align 8
  %call632 = call i32 @sqlite3SchemaToIndex(ptr noundef %452, ptr noundef %454)
  store i32 %call632, ptr %iIdxDb, align 4
  %455 = load ptr, ptr %pPragma, align 8
  %iArg634 = getelementptr inbounds nuw %struct.PragmaName, ptr %455, i32 0, i32 5
  %456 = load i64, ptr %iArg634, align 8
  %tobool635 = icmp ne i64 %456, 0
  br i1 %tobool635, label %if.then636, label %if.else639

if.then636:                                       ; preds = %if.then630
  %457 = load ptr, ptr %pIdx, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %457, i32 0, i32 14
  %458 = load i16, ptr %nColumn, align 8
  %conv637 = zext i16 %458 to i32
  store i32 %conv637, ptr %mx, align 4
  %459 = load ptr, ptr %pParse.addr, align 8
  %nMem638 = getelementptr inbounds nuw %struct.Parse, ptr %459, i32 0, i32 18
  store i32 6, ptr %nMem638, align 8
  br label %if.end642

if.else639:                                       ; preds = %if.then630
  %460 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %460, i32 0, i32 13
  %461 = load i16, ptr %nKeyCol, align 2
  %conv640 = zext i16 %461 to i32
  store i32 %conv640, ptr %mx, align 4
  %462 = load ptr, ptr %pParse.addr, align 8
  %nMem641 = getelementptr inbounds nuw %struct.Parse, ptr %462, i32 0, i32 18
  store i32 3, ptr %nMem641, align 8
  br label %if.end642

if.end642:                                        ; preds = %if.else639, %if.then636
  %463 = load ptr, ptr %pIdx, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %463, i32 0, i32 3
  %464 = load ptr, ptr %pTable, align 8
  store ptr %464, ptr %pTab614, align 8
  %465 = load ptr, ptr %pParse.addr, align 8
  %466 = load i32, ptr %iIdxDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %465, i32 noundef %466)
  store i32 0, ptr %i633, align 4
  br label %for.cond643

for.cond643:                                      ; preds = %for.inc677, %if.end642
  %467 = load i32, ptr %i633, align 4
  %468 = load i32, ptr %mx, align 4
  %cmp644 = icmp slt i32 %467, %468
  br i1 %cmp644, label %for.body646, label %for.end679

for.body646:                                      ; preds = %for.cond643
  %469 = load ptr, ptr %pIdx, align 8
  %aiColumn647 = getelementptr inbounds nuw %struct.Index, ptr %469, i32 0, i32 1
  %470 = load ptr, ptr %aiColumn647, align 8
  %471 = load i32, ptr %i633, align 4
  %idxprom648 = sext i32 %471 to i64
  %arrayidx649 = getelementptr inbounds i16, ptr %470, i64 %idxprom648
  %472 = load i16, ptr %arrayidx649, align 2
  store i16 %472, ptr %cnum, align 2
  %473 = load ptr, ptr %v, align 8
  %474 = load i32, ptr %i633, align 4
  %475 = load i16, ptr %cnum, align 2
  %conv650 = sext i16 %475 to i32
  %476 = load i16, ptr %cnum, align 2
  %conv651 = sext i16 %476 to i32
  %cmp652 = icmp slt i32 %conv651, 0
  br i1 %cmp652, label %cond.true654, label %cond.false655

cond.true654:                                     ; preds = %for.body646
  br label %cond.end660

cond.false655:                                    ; preds = %for.body646
  %477 = load ptr, ptr %pTab614, align 8
  %aCol656 = getelementptr inbounds nuw %struct.Table, ptr %477, i32 0, i32 1
  %478 = load ptr, ptr %aCol656, align 8
  %479 = load i16, ptr %cnum, align 2
  %idxprom657 = sext i16 %479 to i64
  %arrayidx658 = getelementptr inbounds %struct.Column, ptr %478, i64 %idxprom657
  %zName659 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx658, i32 0, i32 0
  %480 = load ptr, ptr %zName659, align 8
  br label %cond.end660

cond.end660:                                      ; preds = %cond.false655, %cond.true654
  %cond661 = phi ptr [ null, %cond.true654 ], [ %480, %cond.false655 ]
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %473, i32 noundef 1, ptr noundef @.str.830, i32 noundef %474, i32 noundef %conv650, ptr noundef %cond661)
  %481 = load ptr, ptr %pPragma, align 8
  %iArg662 = getelementptr inbounds nuw %struct.PragmaName, ptr %481, i32 0, i32 5
  %482 = load i64, ptr %iArg662, align 8
  %tobool663 = icmp ne i64 %482, 0
  br i1 %tobool663, label %if.then664, label %if.end674

if.then664:                                       ; preds = %cond.end660
  %483 = load ptr, ptr %v, align 8
  %484 = load ptr, ptr %pIdx, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %484, i32 0, i32 7
  %485 = load ptr, ptr %aSortOrder, align 8
  %486 = load i32, ptr %i633, align 4
  %idxprom665 = sext i32 %486 to i64
  %arrayidx666 = getelementptr inbounds i8, ptr %485, i64 %idxprom665
  %487 = load i8, ptr %arrayidx666, align 1
  %conv667 = zext i8 %487 to i32
  %488 = load ptr, ptr %pIdx, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %488, i32 0, i32 8
  %489 = load ptr, ptr %azColl, align 8
  %490 = load i32, ptr %i633, align 4
  %idxprom668 = sext i32 %490 to i64
  %arrayidx669 = getelementptr inbounds ptr, ptr %489, i64 %idxprom668
  %491 = load ptr, ptr %arrayidx669, align 8
  %492 = load i32, ptr %i633, align 4
  %493 = load ptr, ptr %pIdx, align 8
  %nKeyCol670 = getelementptr inbounds nuw %struct.Index, ptr %493, i32 0, i32 13
  %494 = load i16, ptr %nKeyCol670, align 2
  %conv671 = zext i16 %494 to i32
  %cmp672 = icmp slt i32 %492, %conv671
  %conv673 = zext i1 %cmp672 to i32
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %483, i32 noundef 4, ptr noundef @.str.831, i32 noundef %conv667, ptr noundef %491, i32 noundef %conv673)
  br label %if.end674

if.end674:                                        ; preds = %if.then664, %cond.end660
  %495 = load ptr, ptr %v, align 8
  %496 = load ptr, ptr %pParse.addr, align 8
  %nMem675 = getelementptr inbounds nuw %struct.Parse, ptr %496, i32 0, i32 18
  %497 = load i32, ptr %nMem675, align 8
  %call676 = call i32 @sqlite3VdbeAddOp2(ptr noundef %495, i32 noundef 81, i32 noundef 1, i32 noundef %497)
  br label %for.inc677

for.inc677:                                       ; preds = %if.end674
  %498 = load i32, ptr %i633, align 4
  %inc678 = add nsw i32 %498, 1
  store i32 %inc678, ptr %i633, align 4
  br label %for.cond643, !llvm.loop !14

for.end679:                                       ; preds = %for.cond643
  br label %if.end680

if.end680:                                        ; preds = %for.end679, %if.end628
  br label %if.end681

if.end681:                                        ; preds = %if.end680, %sw.bb611
  br label %sw.epilog

sw.bb682:                                         ; preds = %if.end72
  %499 = load ptr, ptr %zRight, align 8
  %tobool683 = icmp ne ptr %499, null
  br i1 %tobool683, label %if.then684, label %if.end710

if.then684:                                       ; preds = %sw.bb682
  %500 = load ptr, ptr %db, align 8
  %501 = load ptr, ptr %zRight, align 8
  %502 = load ptr, ptr %zDb, align 8
  %call688 = call ptr @sqlite3FindTable(ptr noundef %500, ptr noundef %501, ptr noundef %502)
  store ptr %call688, ptr %pTab686, align 8
  %503 = load ptr, ptr %pTab686, align 8
  %tobool689 = icmp ne ptr %503, null
  br i1 %tobool689, label %if.then690, label %if.end709

if.then690:                                       ; preds = %if.then684
  %504 = load ptr, ptr %db, align 8
  %505 = load ptr, ptr %pTab686, align 8
  %pSchema692 = getelementptr inbounds nuw %struct.Table, ptr %505, i32 0, i32 20
  %506 = load ptr, ptr %pSchema692, align 8
  %call693 = call i32 @sqlite3SchemaToIndex(ptr noundef %504, ptr noundef %506)
  store i32 %call693, ptr %iTabDb691, align 4
  %507 = load ptr, ptr %pParse.addr, align 8
  %nMem694 = getelementptr inbounds nuw %struct.Parse, ptr %507, i32 0, i32 18
  store i32 5, ptr %nMem694, align 8
  %508 = load ptr, ptr %pParse.addr, align 8
  %509 = load i32, ptr %iTabDb691, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %508, i32 noundef %509)
  %510 = load ptr, ptr %pTab686, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %510, i32 0, i32 2
  %511 = load ptr, ptr %pIndex, align 8
  store ptr %511, ptr %pIdx685, align 8
  store i32 0, ptr %i687, align 4
  br label %for.cond695

for.cond695:                                      ; preds = %for.inc706, %if.then690
  %512 = load ptr, ptr %pIdx685, align 8
  %tobool696 = icmp ne ptr %512, null
  br i1 %tobool696, label %for.body697, label %for.end708

for.body697:                                      ; preds = %for.cond695
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %azOrigin, ptr align 16 @__const.sqlite3Pragma.azOrigin, i64 24, i1 false)
  %513 = load ptr, ptr %v, align 8
  %514 = load i32, ptr %i687, align 4
  %515 = load ptr, ptr %pIdx685, align 8
  %zName698 = getelementptr inbounds nuw %struct.Index, ptr %515, i32 0, i32 0
  %516 = load ptr, ptr %zName698, align 8
  %517 = load ptr, ptr %pIdx685, align 8
  %onError = getelementptr inbounds nuw %struct.Index, ptr %517, i32 0, i32 15
  %518 = load i8, ptr %onError, align 2
  %conv699 = zext i8 %518 to i32
  %cmp700 = icmp ne i32 %conv699, 0
  %conv701 = zext i1 %cmp700 to i32
  %519 = load ptr, ptr %pIdx685, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %519, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %idxprom702 = zext i32 %bf.cast to i64
  %arrayidx703 = getelementptr inbounds nuw [3 x ptr], ptr %azOrigin, i64 0, i64 %idxprom702
  %520 = load ptr, ptr %arrayidx703, align 8
  %521 = load ptr, ptr %pIdx685, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %521, i32 0, i32 9
  %522 = load ptr, ptr %pPartIdxWhere, align 8
  %cmp704 = icmp ne ptr %522, null
  %conv705 = zext i1 %cmp704 to i32
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %513, i32 noundef 1, ptr noundef @.str.834, i32 noundef %514, ptr noundef %516, i32 noundef %conv701, ptr noundef %520, i32 noundef %conv705)
  br label %for.inc706

for.inc706:                                       ; preds = %for.body697
  %523 = load ptr, ptr %pIdx685, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %523, i32 0, i32 5
  %524 = load ptr, ptr %pNext, align 8
  store ptr %524, ptr %pIdx685, align 8
  %525 = load i32, ptr %i687, align 4
  %inc707 = add nsw i32 %525, 1
  store i32 %inc707, ptr %i687, align 4
  br label %for.cond695, !llvm.loop !15

for.end708:                                       ; preds = %for.cond695
  br label %if.end709

if.end709:                                        ; preds = %for.end708, %if.then684
  br label %if.end710

if.end710:                                        ; preds = %if.end709, %sw.bb682
  br label %sw.epilog

sw.bb711:                                         ; preds = %if.end72
  %526 = load ptr, ptr %pParse.addr, align 8
  %nMem713 = getelementptr inbounds nuw %struct.Parse, ptr %526, i32 0, i32 18
  store i32 3, ptr %nMem713, align 8
  store i32 0, ptr %i712, align 4
  br label %for.cond714

for.cond714:                                      ; preds = %for.inc736, %sw.bb711
  %527 = load i32, ptr %i712, align 4
  %528 = load ptr, ptr %db, align 8
  %nDb715 = getelementptr inbounds nuw %struct.sqlite3, ptr %528, i32 0, i32 5
  %529 = load i32, ptr %nDb715, align 8
  %cmp716 = icmp slt i32 %527, %529
  br i1 %cmp716, label %for.body718, label %for.end738

for.body718:                                      ; preds = %for.cond714
  %530 = load ptr, ptr %db, align 8
  %aDb719 = getelementptr inbounds nuw %struct.sqlite3, ptr %530, i32 0, i32 4
  %531 = load ptr, ptr %aDb719, align 8
  %532 = load i32, ptr %i712, align 4
  %idxprom720 = sext i32 %532 to i64
  %arrayidx721 = getelementptr inbounds %struct.Db, ptr %531, i64 %idxprom720
  %pBt722 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx721, i32 0, i32 1
  %533 = load ptr, ptr %pBt722, align 8
  %cmp723 = icmp eq ptr %533, null
  br i1 %cmp723, label %if.then725, label %if.end726

if.then725:                                       ; preds = %for.body718
  br label %for.inc736

if.end726:                                        ; preds = %for.body718
  %534 = load ptr, ptr %v, align 8
  %535 = load i32, ptr %i712, align 4
  %536 = load ptr, ptr %db, align 8
  %aDb727 = getelementptr inbounds nuw %struct.sqlite3, ptr %536, i32 0, i32 4
  %537 = load ptr, ptr %aDb727, align 8
  %538 = load i32, ptr %i712, align 4
  %idxprom728 = sext i32 %538 to i64
  %arrayidx729 = getelementptr inbounds %struct.Db, ptr %537, i64 %idxprom728
  %zDbSName730 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx729, i32 0, i32 0
  %539 = load ptr, ptr %zDbSName730, align 8
  %540 = load ptr, ptr %db, align 8
  %aDb731 = getelementptr inbounds nuw %struct.sqlite3, ptr %540, i32 0, i32 4
  %541 = load ptr, ptr %aDb731, align 8
  %542 = load i32, ptr %i712, align 4
  %idxprom732 = sext i32 %542 to i64
  %arrayidx733 = getelementptr inbounds %struct.Db, ptr %541, i64 %idxprom732
  %pBt734 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx733, i32 0, i32 1
  %543 = load ptr, ptr %pBt734, align 8
  %call735 = call ptr @sqlite3BtreeGetFilename(ptr noundef %543)
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %534, i32 noundef 1, ptr noundef @.str.835, i32 noundef %535, ptr noundef %539, ptr noundef %call735)
  br label %for.inc736

for.inc736:                                       ; preds = %if.end726, %if.then725
  %544 = load i32, ptr %i712, align 4
  %inc737 = add nsw i32 %544, 1
  store i32 %inc737, ptr %i712, align 4
  br label %for.cond714, !llvm.loop !16

for.end738:                                       ; preds = %for.cond714
  br label %sw.epilog

sw.bb739:                                         ; preds = %if.end72
  store i32 0, ptr %i740, align 4
  %545 = load ptr, ptr %pParse.addr, align 8
  %nMem741 = getelementptr inbounds nuw %struct.Parse, ptr %545, i32 0, i32 18
  store i32 2, ptr %nMem741, align 8
  %546 = load ptr, ptr %db, align 8
  %aCollSeq = getelementptr inbounds nuw %struct.sqlite3, ptr %546, i32 0, i32 73
  %first = getelementptr inbounds nuw %struct.Hash, ptr %aCollSeq, i32 0, i32 2
  %547 = load ptr, ptr %first, align 8
  store ptr %547, ptr %p, align 8
  br label %for.cond742

for.cond742:                                      ; preds = %for.inc747, %sw.bb739
  %548 = load ptr, ptr %p, align 8
  %tobool743 = icmp ne ptr %548, null
  br i1 %tobool743, label %for.body744, label %for.end748

for.body744:                                      ; preds = %for.cond742
  %549 = load ptr, ptr %p, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %549, i32 0, i32 2
  %550 = load ptr, ptr %data, align 8
  store ptr %550, ptr %pColl, align 8
  %551 = load ptr, ptr %v, align 8
  %552 = load i32, ptr %i740, align 4
  %inc745 = add nsw i32 %552, 1
  store i32 %inc745, ptr %i740, align 4
  %553 = load ptr, ptr %pColl, align 8
  %zName746 = getelementptr inbounds nuw %struct.CollSeq, ptr %553, i32 0, i32 0
  %554 = load ptr, ptr %zName746, align 8
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %551, i32 noundef 1, ptr noundef @.str.836, i32 noundef %552, ptr noundef %554)
  br label %for.inc747

for.inc747:                                       ; preds = %for.body744
  %555 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %555, i32 0, i32 0
  %556 = load ptr, ptr %next, align 8
  store ptr %556, ptr %p, align 8
  br label %for.cond742, !llvm.loop !17

for.end748:                                       ; preds = %for.cond742
  br label %sw.epilog

sw.bb749:                                         ; preds = %if.end72
  %557 = load ptr, ptr %pParse.addr, align 8
  %nMem752 = getelementptr inbounds nuw %struct.Parse, ptr %557, i32 0, i32 18
  store i32 2, ptr %nMem752, align 8
  store i32 0, ptr %i750, align 4
  br label %for.cond753

for.cond753:                                      ; preds = %for.inc770, %sw.bb749
  %558 = load i32, ptr %i750, align 4
  %cmp754 = icmp slt i32 %558, 23
  br i1 %cmp754, label %for.body756, label %for.end772

for.body756:                                      ; preds = %for.cond753
  %559 = load i32, ptr %i750, align 4
  %idxprom757 = sext i32 %559 to i64
  %arrayidx758 = getelementptr inbounds [23 x ptr], ptr @sqlite3BuiltinFunctions, i64 0, i64 %idxprom757
  %560 = load ptr, ptr %arrayidx758, align 8
  store ptr %560, ptr %p751, align 8
  br label %for.cond759

for.cond759:                                      ; preds = %for.inc767, %for.body756
  %561 = load ptr, ptr %p751, align 8
  %tobool760 = icmp ne ptr %561, null
  br i1 %tobool760, label %for.body761, label %for.end769

for.body761:                                      ; preds = %for.cond759
  %562 = load ptr, ptr %p751, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %562, i32 0, i32 1
  %563 = load i32, ptr %funcFlags, align 4
  %and762 = and i32 %563, 262144
  %tobool763 = icmp ne i32 %and762, 0
  br i1 %tobool763, label %if.then764, label %if.end765

if.then764:                                       ; preds = %for.body761
  br label %for.inc767

if.end765:                                        ; preds = %for.body761
  %564 = load ptr, ptr %v, align 8
  %565 = load ptr, ptr %p751, align 8
  %zName766 = getelementptr inbounds nuw %struct.FuncDef, ptr %565, i32 0, i32 8
  %566 = load ptr, ptr %zName766, align 8
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %564, i32 noundef 1, ptr noundef @.str.837, ptr noundef %566, i32 noundef 1)
  br label %for.inc767

for.inc767:                                       ; preds = %if.end765, %if.then764
  %567 = load ptr, ptr %p751, align 8
  %u768 = getelementptr inbounds nuw %struct.FuncDef, ptr %567, i32 0, i32 9
  %568 = load ptr, ptr %u768, align 8
  store ptr %568, ptr %p751, align 8
  br label %for.cond759, !llvm.loop !18

for.end769:                                       ; preds = %for.cond759
  br label %for.inc770

for.inc770:                                       ; preds = %for.end769
  %569 = load i32, ptr %i750, align 4
  %inc771 = add nsw i32 %569, 1
  store i32 %inc771, ptr %i750, align 4
  br label %for.cond753, !llvm.loop !19

for.end772:                                       ; preds = %for.cond753
  %570 = load ptr, ptr %db, align 8
  %aFunc = getelementptr inbounds nuw %struct.sqlite3, ptr %570, i32 0, i32 72
  %first773 = getelementptr inbounds nuw %struct.Hash, ptr %aFunc, i32 0, i32 2
  %571 = load ptr, ptr %first773, align 8
  store ptr %571, ptr %j, align 8
  br label %for.cond774

for.cond774:                                      ; preds = %for.inc779, %for.end772
  %572 = load ptr, ptr %j, align 8
  %tobool775 = icmp ne ptr %572, null
  br i1 %tobool775, label %for.body776, label %for.end781

for.body776:                                      ; preds = %for.cond774
  %573 = load ptr, ptr %j, align 8
  %data777 = getelementptr inbounds nuw %struct.HashElem, ptr %573, i32 0, i32 2
  %574 = load ptr, ptr %data777, align 8
  store ptr %574, ptr %p751, align 8
  %575 = load ptr, ptr %v, align 8
  %576 = load ptr, ptr %p751, align 8
  %zName778 = getelementptr inbounds nuw %struct.FuncDef, ptr %576, i32 0, i32 8
  %577 = load ptr, ptr %zName778, align 8
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %575, i32 noundef 1, ptr noundef @.str.837, ptr noundef %577, i32 noundef 0)
  br label %for.inc779

for.inc779:                                       ; preds = %for.body776
  %578 = load ptr, ptr %j, align 8
  %next780 = getelementptr inbounds nuw %struct.HashElem, ptr %578, i32 0, i32 0
  %579 = load ptr, ptr %next780, align 8
  store ptr %579, ptr %j, align 8
  br label %for.cond774, !llvm.loop !20

for.end781:                                       ; preds = %for.cond774
  br label %sw.epilog

sw.bb782:                                         ; preds = %if.end72
  %580 = load ptr, ptr %pParse.addr, align 8
  %nMem784 = getelementptr inbounds nuw %struct.Parse, ptr %580, i32 0, i32 18
  store i32 1, ptr %nMem784, align 8
  %581 = load ptr, ptr %db, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %581, i32 0, i32 68
  %first785 = getelementptr inbounds nuw %struct.Hash, ptr %aModule, i32 0, i32 2
  %582 = load ptr, ptr %first785, align 8
  store ptr %582, ptr %j783, align 8
  br label %for.cond786

for.cond786:                                      ; preds = %for.inc791, %sw.bb782
  %583 = load ptr, ptr %j783, align 8
  %tobool787 = icmp ne ptr %583, null
  br i1 %tobool787, label %for.body788, label %for.end793

for.body788:                                      ; preds = %for.cond786
  %584 = load ptr, ptr %j783, align 8
  %data789 = getelementptr inbounds nuw %struct.HashElem, ptr %584, i32 0, i32 2
  %585 = load ptr, ptr %data789, align 8
  store ptr %585, ptr %pMod, align 8
  %586 = load ptr, ptr %v, align 8
  %587 = load ptr, ptr %pMod, align 8
  %zName790 = getelementptr inbounds nuw %struct.Module, ptr %587, i32 0, i32 1
  %588 = load ptr, ptr %zName790, align 8
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %586, i32 noundef 1, ptr noundef @.str.838, ptr noundef %588)
  br label %for.inc791

for.inc791:                                       ; preds = %for.body788
  %589 = load ptr, ptr %j783, align 8
  %next792 = getelementptr inbounds nuw %struct.HashElem, ptr %589, i32 0, i32 0
  %590 = load ptr, ptr %next792, align 8
  store ptr %590, ptr %j783, align 8
  br label %for.cond786, !llvm.loop !21

for.end793:                                       ; preds = %for.cond786
  br label %sw.epilog

sw.bb794:                                         ; preds = %if.end72
  store i32 0, ptr %i795, align 4
  br label %for.cond796

for.cond796:                                      ; preds = %for.inc803, %sw.bb794
  %591 = load i32, ptr %i795, align 4
  %cmp797 = icmp slt i32 %591, 63
  br i1 %cmp797, label %for.body799, label %for.end805

for.body799:                                      ; preds = %for.cond796
  %592 = load ptr, ptr %v, align 8
  %593 = load i32, ptr %i795, align 4
  %idxprom800 = sext i32 %593 to i64
  %arrayidx801 = getelementptr inbounds [63 x %struct.PragmaName], ptr @aPragmaName, i64 0, i64 %idxprom800
  %zName802 = getelementptr inbounds nuw %struct.PragmaName, ptr %arrayidx801, i32 0, i32 0
  %594 = load ptr, ptr %zName802, align 8
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %592, i32 noundef 1, ptr noundef @.str.838, ptr noundef %594)
  br label %for.inc803

for.inc803:                                       ; preds = %for.body799
  %595 = load i32, ptr %i795, align 4
  %inc804 = add nsw i32 %595, 1
  store i32 %inc804, ptr %i795, align 4
  br label %for.cond796, !llvm.loop !22

for.end805:                                       ; preds = %for.cond796
  br label %sw.epilog

sw.bb806:                                         ; preds = %if.end72
  %596 = load ptr, ptr %zRight, align 8
  %tobool807 = icmp ne ptr %596, null
  br i1 %tobool807, label %if.then808, label %if.end848

if.then808:                                       ; preds = %sw.bb806
  %597 = load ptr, ptr %db, align 8
  %598 = load ptr, ptr %zRight, align 8
  %599 = load ptr, ptr %zDb, align 8
  %call810 = call ptr @sqlite3FindTable(ptr noundef %597, ptr noundef %598, ptr noundef %599)
  store ptr %call810, ptr %pTab809, align 8
  %600 = load ptr, ptr %pTab809, align 8
  %tobool811 = icmp ne ptr %600, null
  br i1 %tobool811, label %if.then812, label %if.end847

if.then812:                                       ; preds = %if.then808
  %601 = load ptr, ptr %pTab809, align 8
  %pFKey = getelementptr inbounds nuw %struct.Table, ptr %601, i32 0, i32 4
  %602 = load ptr, ptr %pFKey, align 8
  store ptr %602, ptr %pFK, align 8
  %603 = load ptr, ptr %pFK, align 8
  %tobool813 = icmp ne ptr %603, null
  br i1 %tobool813, label %if.then814, label %if.end846

if.then814:                                       ; preds = %if.then812
  %604 = load ptr, ptr %db, align 8
  %605 = load ptr, ptr %pTab809, align 8
  %pSchema816 = getelementptr inbounds nuw %struct.Table, ptr %605, i32 0, i32 20
  %606 = load ptr, ptr %pSchema816, align 8
  %call817 = call i32 @sqlite3SchemaToIndex(ptr noundef %604, ptr noundef %606)
  store i32 %call817, ptr %iTabDb815, align 4
  store i32 0, ptr %i818, align 4
  %607 = load ptr, ptr %pParse.addr, align 8
  %nMem819 = getelementptr inbounds nuw %struct.Parse, ptr %607, i32 0, i32 18
  store i32 8, ptr %nMem819, align 8
  %608 = load ptr, ptr %pParse.addr, align 8
  %609 = load i32, ptr %iTabDb815, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %608, i32 noundef %609)
  br label %while.cond

while.cond:                                       ; preds = %for.end844, %if.then814
  %610 = load ptr, ptr %pFK, align 8
  %tobool820 = icmp ne ptr %610, null
  br i1 %tobool820, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %j821, align 4
  br label %for.cond822

for.cond822:                                      ; preds = %for.inc842, %while.body
  %611 = load i32, ptr %j821, align 4
  %612 = load ptr, ptr %pFK, align 8
  %nCol823 = getelementptr inbounds nuw %struct.FKey, ptr %612, i32 0, i32 5
  %613 = load i32, ptr %nCol823, align 8
  %cmp824 = icmp slt i32 %611, %613
  br i1 %cmp824, label %for.body826, label %for.end844

for.body826:                                      ; preds = %for.cond822
  %614 = load ptr, ptr %v, align 8
  %615 = load i32, ptr %i818, align 4
  %616 = load i32, ptr %j821, align 4
  %617 = load ptr, ptr %pFK, align 8
  %zTo = getelementptr inbounds nuw %struct.FKey, ptr %617, i32 0, i32 2
  %618 = load ptr, ptr %zTo, align 8
  %619 = load ptr, ptr %pTab809, align 8
  %aCol827 = getelementptr inbounds nuw %struct.Table, ptr %619, i32 0, i32 1
  %620 = load ptr, ptr %aCol827, align 8
  %621 = load ptr, ptr %pFK, align 8
  %aCol828 = getelementptr inbounds nuw %struct.FKey, ptr %621, i32 0, i32 9
  %622 = load i32, ptr %j821, align 4
  %idxprom829 = sext i32 %622 to i64
  %arrayidx830 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol828, i64 0, i64 %idxprom829
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx830, i32 0, i32 0
  %623 = load i32, ptr %iFrom, align 8
  %idxprom831 = sext i32 %623 to i64
  %arrayidx832 = getelementptr inbounds %struct.Column, ptr %620, i64 %idxprom831
  %zName833 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx832, i32 0, i32 0
  %624 = load ptr, ptr %zName833, align 8
  %625 = load ptr, ptr %pFK, align 8
  %aCol834 = getelementptr inbounds nuw %struct.FKey, ptr %625, i32 0, i32 9
  %626 = load i32, ptr %j821, align 4
  %idxprom835 = sext i32 %626 to i64
  %arrayidx836 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol834, i64 0, i64 %idxprom835
  %zCol = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx836, i32 0, i32 1
  %627 = load ptr, ptr %zCol, align 8
  %628 = load ptr, ptr %pFK, align 8
  %aAction = getelementptr inbounds nuw %struct.FKey, ptr %628, i32 0, i32 7
  %arrayidx837 = getelementptr inbounds [2 x i8], ptr %aAction, i64 0, i64 1
  %629 = load i8, ptr %arrayidx837, align 1
  %call838 = call ptr @actionName(i8 noundef zeroext %629)
  %630 = load ptr, ptr %pFK, align 8
  %aAction839 = getelementptr inbounds nuw %struct.FKey, ptr %630, i32 0, i32 7
  %arrayidx840 = getelementptr inbounds [2 x i8], ptr %aAction839, i64 0, i64 0
  %631 = load i8, ptr %arrayidx840, align 1
  %call841 = call ptr @actionName(i8 noundef zeroext %631)
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %614, i32 noundef 1, ptr noundef @.str.839, i32 noundef %615, i32 noundef %616, ptr noundef %618, ptr noundef %624, ptr noundef %627, ptr noundef %call838, ptr noundef %call841, ptr noundef @.str.840)
  br label %for.inc842

for.inc842:                                       ; preds = %for.body826
  %632 = load i32, ptr %j821, align 4
  %inc843 = add nsw i32 %632, 1
  store i32 %inc843, ptr %j821, align 4
  br label %for.cond822, !llvm.loop !23

for.end844:                                       ; preds = %for.cond822
  %633 = load i32, ptr %i818, align 4
  %inc845 = add nsw i32 %633, 1
  store i32 %inc845, ptr %i818, align 4
  %634 = load ptr, ptr %pFK, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %634, i32 0, i32 1
  %635 = load ptr, ptr %pNextFrom, align 8
  store ptr %635, ptr %pFK, align 8
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  br label %if.end846

if.end846:                                        ; preds = %while.end, %if.then812
  br label %if.end847

if.end847:                                        ; preds = %if.end846, %if.then808
  br label %if.end848

if.end848:                                        ; preds = %if.end847, %sw.bb806
  br label %sw.epilog

sw.bb849:                                         ; preds = %if.end72
  %636 = load ptr, ptr %pParse.addr, align 8
  %nMem856 = getelementptr inbounds nuw %struct.Parse, ptr %636, i32 0, i32 18
  %637 = load i32, ptr %nMem856, align 8
  %add857 = add nsw i32 %637, 1
  store i32 %add857, ptr %regResult, align 4
  %638 = load ptr, ptr %pParse.addr, align 8
  %nMem858 = getelementptr inbounds nuw %struct.Parse, ptr %638, i32 0, i32 18
  %639 = load i32, ptr %nMem858, align 8
  %add859 = add nsw i32 %639, 4
  store i32 %add859, ptr %nMem858, align 8
  %640 = load ptr, ptr %pParse.addr, align 8
  %nMem860 = getelementptr inbounds nuw %struct.Parse, ptr %640, i32 0, i32 18
  %641 = load i32, ptr %nMem860, align 8
  %inc861 = add nsw i32 %641, 1
  store i32 %inc861, ptr %nMem860, align 8
  store i32 %inc861, ptr %regKey, align 4
  %642 = load ptr, ptr %pParse.addr, align 8
  %nMem862 = getelementptr inbounds nuw %struct.Parse, ptr %642, i32 0, i32 18
  %643 = load i32, ptr %nMem862, align 8
  %inc863 = add nsw i32 %643, 1
  store i32 %inc863, ptr %nMem862, align 8
  store i32 %inc863, ptr %regRow, align 4
  %644 = load ptr, ptr %db, align 8
  %aDb864 = getelementptr inbounds nuw %struct.sqlite3, ptr %644, i32 0, i32 4
  %645 = load ptr, ptr %aDb864, align 8
  %646 = load i32, ptr %iDb, align 4
  %idxprom865 = sext i32 %646 to i64
  %arrayidx866 = getelementptr inbounds %struct.Db, ptr %645, i64 %idxprom865
  %pSchema867 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx866, i32 0, i32 4
  %647 = load ptr, ptr %pSchema867, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %647, i32 0, i32 2
  %first868 = getelementptr inbounds nuw %struct.Hash, ptr %tblHash, i32 0, i32 2
  %648 = load ptr, ptr %first868, align 8
  store ptr %648, ptr %k855, align 8
  br label %while.cond869

while.cond869:                                    ; preds = %for.end1010, %if.then886, %sw.bb849
  %649 = load ptr, ptr %k855, align 8
  %tobool870 = icmp ne ptr %649, null
  br i1 %tobool870, label %while.body871, label %while.end1013

while.body871:                                    ; preds = %while.cond869
  %650 = load ptr, ptr %zRight, align 8
  %tobool873 = icmp ne ptr %650, null
  br i1 %tobool873, label %if.then874, label %if.else876

if.then874:                                       ; preds = %while.body871
  %651 = load ptr, ptr %pParse.addr, align 8
  %652 = load ptr, ptr %zRight, align 8
  %653 = load ptr, ptr %zDb, align 8
  %call875 = call ptr @sqlite3LocateTable(ptr noundef %651, i32 noundef 0, ptr noundef %652, ptr noundef %653)
  store ptr %call875, ptr %pTab851, align 8
  store ptr null, ptr %k855, align 8
  br label %if.end879

if.else876:                                       ; preds = %while.body871
  %654 = load ptr, ptr %k855, align 8
  %data877 = getelementptr inbounds nuw %struct.HashElem, ptr %654, i32 0, i32 2
  %655 = load ptr, ptr %data877, align 8
  store ptr %655, ptr %pTab851, align 8
  %656 = load ptr, ptr %k855, align 8
  %next878 = getelementptr inbounds nuw %struct.HashElem, ptr %656, i32 0, i32 0
  %657 = load ptr, ptr %next878, align 8
  store ptr %657, ptr %k855, align 8
  br label %if.end879

if.end879:                                        ; preds = %if.else876, %if.then874
  %658 = load ptr, ptr %pTab851, align 8
  %cmp880 = icmp eq ptr %658, null
  br i1 %cmp880, label %if.then886, label %lor.lhs.false882

lor.lhs.false882:                                 ; preds = %if.end879
  %659 = load ptr, ptr %pTab851, align 8
  %pFKey883 = getelementptr inbounds nuw %struct.Table, ptr %659, i32 0, i32 4
  %660 = load ptr, ptr %pFKey883, align 8
  %cmp884 = icmp eq ptr %660, null
  br i1 %cmp884, label %if.then886, label %if.end887

if.then886:                                       ; preds = %lor.lhs.false882, %if.end879
  br label %while.cond869, !llvm.loop !25

if.end887:                                        ; preds = %lor.lhs.false882
  %661 = load ptr, ptr %db, align 8
  %662 = load ptr, ptr %pTab851, align 8
  %pSchema888 = getelementptr inbounds nuw %struct.Table, ptr %662, i32 0, i32 20
  %663 = load ptr, ptr %pSchema888, align 8
  %call889 = call i32 @sqlite3SchemaToIndex(ptr noundef %661, ptr noundef %663)
  store i32 %call889, ptr %iTabDb872, align 4
  %664 = load ptr, ptr %pParse.addr, align 8
  %665 = load i32, ptr %iTabDb872, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %664, i32 noundef %665)
  %666 = load ptr, ptr %pParse.addr, align 8
  %667 = load i32, ptr %iTabDb872, align 4
  %668 = load ptr, ptr %pTab851, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %668, i32 0, i32 7
  %669 = load i32, ptr %tnum, align 8
  %670 = load ptr, ptr %pTab851, align 8
  %zName890 = getelementptr inbounds nuw %struct.Table, ptr %670, i32 0, i32 0
  %671 = load ptr, ptr %zName890, align 8
  call void @sqlite3TableLock(ptr noundef %666, i32 noundef %667, i32 noundef %669, i8 noundef zeroext 0, ptr noundef %671)
  %672 = load ptr, ptr %pTab851, align 8
  %nCol891 = getelementptr inbounds nuw %struct.Table, ptr %672, i32 0, i32 11
  %673 = load i16, ptr %nCol891, align 2
  %conv892 = sext i16 %673 to i32
  %674 = load i32, ptr %regRow, align 4
  %add893 = add nsw i32 %conv892, %674
  %675 = load ptr, ptr %pParse.addr, align 8
  %nMem894 = getelementptr inbounds nuw %struct.Parse, ptr %675, i32 0, i32 18
  %676 = load i32, ptr %nMem894, align 8
  %cmp895 = icmp sgt i32 %add893, %676
  br i1 %cmp895, label %if.then897, label %if.end902

if.then897:                                       ; preds = %if.end887
  %677 = load ptr, ptr %pTab851, align 8
  %nCol898 = getelementptr inbounds nuw %struct.Table, ptr %677, i32 0, i32 11
  %678 = load i16, ptr %nCol898, align 2
  %conv899 = sext i16 %678 to i32
  %679 = load i32, ptr %regRow, align 4
  %add900 = add nsw i32 %conv899, %679
  %680 = load ptr, ptr %pParse.addr, align 8
  %nMem901 = getelementptr inbounds nuw %struct.Parse, ptr %680, i32 0, i32 18
  store i32 %add900, ptr %nMem901, align 8
  br label %if.end902

if.end902:                                        ; preds = %if.then897, %if.end887
  %681 = load ptr, ptr %pParse.addr, align 8
  %682 = load i32, ptr %iTabDb872, align 4
  %683 = load ptr, ptr %pTab851, align 8
  call void @sqlite3OpenTable(ptr noundef %681, i32 noundef 0, i32 noundef %682, ptr noundef %683, i32 noundef 97)
  %684 = load ptr, ptr %v, align 8
  %685 = load i32, ptr %regResult, align 4
  %686 = load ptr, ptr %pTab851, align 8
  %zName903 = getelementptr inbounds nuw %struct.Table, ptr %686, i32 0, i32 0
  %687 = load ptr, ptr %zName903, align 8
  %call904 = call i32 @sqlite3VdbeLoadString(ptr noundef %684, i32 noundef %685, ptr noundef %687)
  store i32 1, ptr %i853, align 4
  %688 = load ptr, ptr %pTab851, align 8
  %pFKey905 = getelementptr inbounds nuw %struct.Table, ptr %688, i32 0, i32 4
  %689 = load ptr, ptr %pFKey905, align 8
  store ptr %689, ptr %pFK850, align 8
  br label %for.cond906

for.cond906:                                      ; preds = %for.inc930, %if.end902
  %690 = load ptr, ptr %pFK850, align 8
  %tobool907 = icmp ne ptr %690, null
  br i1 %tobool907, label %for.body908, label %for.end933

for.body908:                                      ; preds = %for.cond906
  %691 = load ptr, ptr %db, align 8
  %692 = load ptr, ptr %pFK850, align 8
  %zTo909 = getelementptr inbounds nuw %struct.FKey, ptr %692, i32 0, i32 2
  %693 = load ptr, ptr %zTo909, align 8
  %694 = load ptr, ptr %zDb, align 8
  %call910 = call ptr @sqlite3FindTable(ptr noundef %691, ptr noundef %693, ptr noundef %694)
  store ptr %call910, ptr %pParent, align 8
  %695 = load ptr, ptr %pParent, align 8
  %cmp911 = icmp eq ptr %695, null
  br i1 %cmp911, label %if.then913, label %if.end914

if.then913:                                       ; preds = %for.body908
  br label %for.inc930

if.end914:                                        ; preds = %for.body908
  store ptr null, ptr %pIdx852, align 8
  %696 = load ptr, ptr %pParse.addr, align 8
  %697 = load i32, ptr %iTabDb872, align 4
  %698 = load ptr, ptr %pParent, align 8
  %tnum915 = getelementptr inbounds nuw %struct.Table, ptr %698, i32 0, i32 7
  %699 = load i32, ptr %tnum915, align 8
  %700 = load ptr, ptr %pParent, align 8
  %zName916 = getelementptr inbounds nuw %struct.Table, ptr %700, i32 0, i32 0
  %701 = load ptr, ptr %zName916, align 8
  call void @sqlite3TableLock(ptr noundef %696, i32 noundef %697, i32 noundef %699, i8 noundef zeroext 0, ptr noundef %701)
  %702 = load ptr, ptr %pParse.addr, align 8
  %703 = load ptr, ptr %pParent, align 8
  %704 = load ptr, ptr %pFK850, align 8
  %call917 = call i32 @sqlite3FkLocateIndex(ptr noundef %702, ptr noundef %703, ptr noundef %704, ptr noundef %pIdx852, ptr noundef null)
  store i32 %call917, ptr %x, align 4
  %705 = load i32, ptr %x, align 4
  %cmp918 = icmp eq i32 %705, 0
  br i1 %cmp918, label %if.then920, label %if.else928

if.then920:                                       ; preds = %if.end914
  %706 = load ptr, ptr %pIdx852, align 8
  %cmp921 = icmp eq ptr %706, null
  br i1 %cmp921, label %if.then923, label %if.else924

if.then923:                                       ; preds = %if.then920
  %707 = load ptr, ptr %pParse.addr, align 8
  %708 = load i32, ptr %i853, align 4
  %709 = load i32, ptr %iTabDb872, align 4
  %710 = load ptr, ptr %pParent, align 8
  call void @sqlite3OpenTable(ptr noundef %707, i32 noundef %708, i32 noundef %709, ptr noundef %710, i32 noundef 97)
  br label %if.end927

if.else924:                                       ; preds = %if.then920
  %711 = load ptr, ptr %v, align 8
  %712 = load i32, ptr %i853, align 4
  %713 = load ptr, ptr %pIdx852, align 8
  %tnum925 = getelementptr inbounds nuw %struct.Index, ptr %713, i32 0, i32 11
  %714 = load i32, ptr %tnum925, align 8
  %715 = load i32, ptr %iTabDb872, align 4
  %call926 = call i32 @sqlite3VdbeAddOp3(ptr noundef %711, i32 noundef 97, i32 noundef %712, i32 noundef %714, i32 noundef %715)
  %716 = load ptr, ptr %pParse.addr, align 8
  %717 = load ptr, ptr %pIdx852, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %716, ptr noundef %717)
  br label %if.end927

if.end927:                                        ; preds = %if.else924, %if.then923
  br label %if.end929

if.else928:                                       ; preds = %if.end914
  store ptr null, ptr %k855, align 8
  br label %for.end933

if.end929:                                        ; preds = %if.end927
  br label %for.inc930

for.inc930:                                       ; preds = %if.end929, %if.then913
  %718 = load i32, ptr %i853, align 4
  %inc931 = add nsw i32 %718, 1
  store i32 %inc931, ptr %i853, align 4
  %719 = load ptr, ptr %pFK850, align 8
  %pNextFrom932 = getelementptr inbounds nuw %struct.FKey, ptr %719, i32 0, i32 1
  %720 = load ptr, ptr %pNextFrom932, align 8
  store ptr %720, ptr %pFK850, align 8
  br label %for.cond906, !llvm.loop !26

for.end933:                                       ; preds = %if.else928, %for.cond906
  %721 = load ptr, ptr %pFK850, align 8
  %tobool934 = icmp ne ptr %721, null
  br i1 %tobool934, label %if.then935, label %if.end936

if.then935:                                       ; preds = %for.end933
  br label %while.end1013

if.end936:                                        ; preds = %for.end933
  %722 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %722, i32 0, i32 17
  %723 = load i32, ptr %nTab, align 4
  %724 = load i32, ptr %i853, align 4
  %cmp937 = icmp slt i32 %723, %724
  br i1 %cmp937, label %if.then939, label %if.end941

if.then939:                                       ; preds = %if.end936
  %725 = load i32, ptr %i853, align 4
  %726 = load ptr, ptr %pParse.addr, align 8
  %nTab940 = getelementptr inbounds nuw %struct.Parse, ptr %726, i32 0, i32 17
  store i32 %725, ptr %nTab940, align 4
  br label %if.end941

if.end941:                                        ; preds = %if.then939, %if.end936
  %727 = load ptr, ptr %v, align 8
  %call942 = call i32 @sqlite3VdbeAddOp1(ptr noundef %727, i32 noundef 36, i32 noundef 0)
  store i32 %call942, ptr %addrTop, align 4
  store i32 1, ptr %i853, align 4
  %728 = load ptr, ptr %pTab851, align 8
  %pFKey943 = getelementptr inbounds nuw %struct.Table, ptr %728, i32 0, i32 4
  %729 = load ptr, ptr %pFKey943, align 8
  store ptr %729, ptr %pFK850, align 8
  br label %for.cond944

for.cond944:                                      ; preds = %for.inc1007, %if.end941
  %730 = load ptr, ptr %pFK850, align 8
  %tobool945 = icmp ne ptr %730, null
  br i1 %tobool945, label %for.body946, label %for.end1010

for.body946:                                      ; preds = %for.cond944
  %731 = load ptr, ptr %db, align 8
  %732 = load ptr, ptr %pFK850, align 8
  %zTo947 = getelementptr inbounds nuw %struct.FKey, ptr %732, i32 0, i32 2
  %733 = load ptr, ptr %zTo947, align 8
  %734 = load ptr, ptr %zDb, align 8
  %call948 = call ptr @sqlite3FindTable(ptr noundef %731, ptr noundef %733, ptr noundef %734)
  store ptr %call948, ptr %pParent, align 8
  store ptr null, ptr %pIdx852, align 8
  store ptr null, ptr %aiCols, align 8
  %735 = load ptr, ptr %pParent, align 8
  %tobool949 = icmp ne ptr %735, null
  br i1 %tobool949, label %if.then950, label %if.end952

if.then950:                                       ; preds = %for.body946
  %736 = load ptr, ptr %pParse.addr, align 8
  %737 = load ptr, ptr %pParent, align 8
  %738 = load ptr, ptr %pFK850, align 8
  %call951 = call i32 @sqlite3FkLocateIndex(ptr noundef %736, ptr noundef %737, ptr noundef %738, ptr noundef %pIdx852, ptr noundef %aiCols)
  store i32 %call951, ptr %x, align 4
  br label %if.end952

if.end952:                                        ; preds = %if.then950, %for.body946
  %739 = load ptr, ptr %pParse.addr, align 8
  %call953 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %739)
  store i32 %call953, ptr %addrOk, align 4
  store i32 0, ptr %j854, align 4
  br label %for.cond954

for.cond954:                                      ; preds = %for.inc973, %if.end952
  %740 = load i32, ptr %j854, align 4
  %741 = load ptr, ptr %pFK850, align 8
  %nCol955 = getelementptr inbounds nuw %struct.FKey, ptr %741, i32 0, i32 5
  %742 = load i32, ptr %nCol955, align 8
  %cmp956 = icmp slt i32 %740, %742
  br i1 %cmp956, label %for.body958, label %for.end975

for.body958:                                      ; preds = %for.cond954
  %743 = load ptr, ptr %aiCols, align 8
  %tobool959 = icmp ne ptr %743, null
  br i1 %tobool959, label %cond.true960, label %cond.false963

cond.true960:                                     ; preds = %for.body958
  %744 = load ptr, ptr %aiCols, align 8
  %745 = load i32, ptr %j854, align 4
  %idxprom961 = sext i32 %745 to i64
  %arrayidx962 = getelementptr inbounds i32, ptr %744, i64 %idxprom961
  %746 = load i32, ptr %arrayidx962, align 4
  br label %cond.end968

cond.false963:                                    ; preds = %for.body958
  %747 = load ptr, ptr %pFK850, align 8
  %aCol964 = getelementptr inbounds nuw %struct.FKey, ptr %747, i32 0, i32 9
  %748 = load i32, ptr %j854, align 4
  %idxprom965 = sext i32 %748 to i64
  %arrayidx966 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol964, i64 0, i64 %idxprom965
  %iFrom967 = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx966, i32 0, i32 0
  %749 = load i32, ptr %iFrom967, align 8
  br label %cond.end968

cond.end968:                                      ; preds = %cond.false963, %cond.true960
  %cond969 = phi i32 [ %746, %cond.true960 ], [ %749, %cond.false963 ]
  store i32 %cond969, ptr %iCol, align 4
  %750 = load ptr, ptr %v, align 8
  %751 = load ptr, ptr %pTab851, align 8
  %752 = load i32, ptr %iCol, align 4
  %753 = load i32, ptr %regRow, align 4
  %754 = load i32, ptr %j854, align 4
  %add970 = add nsw i32 %753, %754
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %750, ptr noundef %751, i32 noundef 0, i32 noundef %752, i32 noundef %add970)
  %755 = load ptr, ptr %v, align 8
  %756 = load i32, ptr %regRow, align 4
  %757 = load i32, ptr %j854, align 4
  %add971 = add nsw i32 %756, %757
  %758 = load i32, ptr %addrOk, align 4
  %call972 = call i32 @sqlite3VdbeAddOp2(ptr noundef %755, i32 noundef 50, i32 noundef %add971, i32 noundef %758)
  br label %for.inc973

for.inc973:                                       ; preds = %cond.end968
  %759 = load i32, ptr %j854, align 4
  %inc974 = add nsw i32 %759, 1
  store i32 %inc974, ptr %j854, align 4
  br label %for.cond954, !llvm.loop !27

for.end975:                                       ; preds = %for.cond954
  %760 = load ptr, ptr %pIdx852, align 8
  %tobool976 = icmp ne ptr %760, null
  br i1 %tobool976, label %if.then977, label %if.else983

if.then977:                                       ; preds = %for.end975
  %761 = load ptr, ptr %v, align 8
  %762 = load i32, ptr %regRow, align 4
  %763 = load ptr, ptr %pFK850, align 8
  %nCol978 = getelementptr inbounds nuw %struct.FKey, ptr %763, i32 0, i32 5
  %764 = load i32, ptr %nCol978, align 8
  %765 = load i32, ptr %regKey, align 4
  %766 = load ptr, ptr %db, align 8
  %767 = load ptr, ptr %pIdx852, align 8
  %call979 = call ptr @sqlite3IndexAffinityStr(ptr noundef %766, ptr noundef %767)
  %768 = load ptr, ptr %pFK850, align 8
  %nCol980 = getelementptr inbounds nuw %struct.FKey, ptr %768, i32 0, i32 5
  %769 = load i32, ptr %nCol980, align 8
  %call981 = call i32 @sqlite3VdbeAddOp4(ptr noundef %761, i32 noundef 92, i32 noundef %762, i32 noundef %764, i32 noundef %765, ptr noundef %call979, i32 noundef %769)
  %770 = load ptr, ptr %v, align 8
  %771 = load i32, ptr %i853, align 4
  %772 = load i32, ptr %addrOk, align 4
  %773 = load i32, ptr %regKey, align 4
  %call982 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %770, i32 noundef 29, i32 noundef %771, i32 noundef %772, i32 noundef %773, i32 noundef 0)
  br label %if.end991

if.else983:                                       ; preds = %for.end975
  %774 = load ptr, ptr %pParent, align 8
  %tobool984 = icmp ne ptr %774, null
  br i1 %tobool984, label %if.then985, label %if.end990

if.then985:                                       ; preds = %if.else983
  %775 = load ptr, ptr %v, align 8
  %call986 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %775)
  %add987 = add nsw i32 %call986, 2
  store i32 %add987, ptr %jmp, align 4
  %776 = load ptr, ptr %v, align 8
  %777 = load i32, ptr %i853, align 4
  %778 = load i32, ptr %jmp, align 4
  %779 = load i32, ptr %regRow, align 4
  %call988 = call i32 @sqlite3VdbeAddOp3(ptr noundef %776, i32 noundef 30, i32 noundef %777, i32 noundef %778, i32 noundef %779)
  %780 = load ptr, ptr %v, align 8
  %781 = load i32, ptr %addrOk, align 4
  %call989 = call i32 @sqlite3VdbeGoto(ptr noundef %780, i32 noundef %781)
  br label %if.end990

if.end990:                                        ; preds = %if.then985, %if.else983
  br label %if.end991

if.end991:                                        ; preds = %if.end990, %if.then977
  %782 = load ptr, ptr %pTab851, align 8
  %tabFlags992 = getelementptr inbounds nuw %struct.Table, ptr %782, i32 0, i32 9
  %783 = load i32, ptr %tabFlags992, align 8
  %and993 = and i32 %783, 32
  %cmp994 = icmp eq i32 %and993, 0
  br i1 %cmp994, label %if.then996, label %if.else999

if.then996:                                       ; preds = %if.end991
  %784 = load ptr, ptr %v, align 8
  %785 = load i32, ptr %regResult, align 4
  %add997 = add nsw i32 %785, 1
  %call998 = call i32 @sqlite3VdbeAddOp2(ptr noundef %784, i32 noundef 128, i32 noundef 0, i32 noundef %add997)
  br label %if.end1002

if.else999:                                       ; preds = %if.end991
  %786 = load ptr, ptr %v, align 8
  %787 = load i32, ptr %regResult, align 4
  %add1000 = add nsw i32 %787, 1
  %call1001 = call i32 @sqlite3VdbeAddOp2(ptr noundef %786, i32 noundef 73, i32 noundef 0, i32 noundef %add1000)
  br label %if.end1002

if.end1002:                                       ; preds = %if.else999, %if.then996
  %788 = load ptr, ptr %v, align 8
  %789 = load i32, ptr %regResult, align 4
  %add1003 = add nsw i32 %789, 2
  %790 = load ptr, ptr %pFK850, align 8
  %zTo1004 = getelementptr inbounds nuw %struct.FKey, ptr %790, i32 0, i32 2
  %791 = load ptr, ptr %zTo1004, align 8
  %792 = load i32, ptr %i853, align 4
  %sub1005 = sub nsw i32 %792, 1
  call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %788, i32 noundef %add1003, ptr noundef @.str.841, ptr noundef %791, i32 noundef %sub1005)
  %793 = load ptr, ptr %v, align 8
  %794 = load i32, ptr %regResult, align 4
  %call1006 = call i32 @sqlite3VdbeAddOp2(ptr noundef %793, i32 noundef 81, i32 noundef %794, i32 noundef 4)
  %795 = load ptr, ptr %v, align 8
  %796 = load i32, ptr %addrOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %795, i32 noundef %796)
  %797 = load ptr, ptr %db, align 8
  %798 = load ptr, ptr %aiCols, align 8
  call void @sqlite3DbFree(ptr noundef %797, ptr noundef %798)
  br label %for.inc1007

for.inc1007:                                      ; preds = %if.end1002
  %799 = load i32, ptr %i853, align 4
  %inc1008 = add nsw i32 %799, 1
  store i32 %inc1008, ptr %i853, align 4
  %800 = load ptr, ptr %pFK850, align 8
  %pNextFrom1009 = getelementptr inbounds nuw %struct.FKey, ptr %800, i32 0, i32 1
  %801 = load ptr, ptr %pNextFrom1009, align 8
  store ptr %801, ptr %pFK850, align 8
  br label %for.cond944, !llvm.loop !28

for.end1010:                                      ; preds = %for.cond944
  %802 = load ptr, ptr %v, align 8
  %803 = load i32, ptr %addrTop, align 4
  %add1011 = add nsw i32 %803, 1
  %call1012 = call i32 @sqlite3VdbeAddOp2(ptr noundef %802, i32 noundef 5, i32 noundef 0, i32 noundef %add1011)
  %804 = load ptr, ptr %v, align 8
  %805 = load i32, ptr %addrTop, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %804, i32 noundef %805)
  br label %while.cond869, !llvm.loop !25

while.end1013:                                    ; preds = %if.then935, %while.cond869
  br label %sw.epilog

sw.bb1014:                                        ; preds = %if.end72
  %806 = load ptr, ptr %zRight, align 8
  %tobool1015 = icmp ne ptr %806, null
  br i1 %tobool1015, label %if.then1016, label %if.end1019

if.then1016:                                      ; preds = %sw.bb1014
  %807 = load ptr, ptr %db, align 8
  %808 = load ptr, ptr %zRight, align 8
  %call1017 = call zeroext i8 @sqlite3GetBoolean(ptr noundef %808, i8 noundef zeroext 0)
  %conv1018 = zext i8 %call1017 to i32
  call void @sqlite3RegisterLikeFunctions(ptr noundef %807, i32 noundef %conv1018)
  br label %if.end1019

if.end1019:                                       ; preds = %if.then1016, %sw.bb1014
  br label %sw.epilog

sw.bb1020:                                        ; preds = %if.end72
  %809 = load ptr, ptr %zLeft, align 8
  %arrayidx1024 = getelementptr inbounds i8, ptr %809, i64 0
  %810 = load i8, ptr %arrayidx1024, align 1
  %idxprom1025 = zext i8 %810 to i64
  %arrayidx1026 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom1025
  %811 = load i8, ptr %arrayidx1026, align 1
  %conv1027 = zext i8 %811 to i32
  %cmp1028 = icmp eq i32 %conv1027, 113
  %conv1029 = zext i1 %cmp1028 to i32
  store i32 %conv1029, ptr %isQuick, align 4
  %812 = load ptr, ptr %pId2.addr, align 8
  %z = getelementptr inbounds nuw %struct.Token, ptr %812, i32 0, i32 0
  %813 = load ptr, ptr %z, align 8
  %cmp1030 = icmp eq ptr %813, null
  br i1 %cmp1030, label %if.then1032, label %if.end1033

if.then1032:                                      ; preds = %sw.bb1020
  store i32 -1, ptr %iDb, align 4
  br label %if.end1033

if.end1033:                                       ; preds = %if.then1032, %sw.bb1020
  %814 = load ptr, ptr %pParse.addr, align 8
  %nMem1034 = getelementptr inbounds nuw %struct.Parse, ptr %814, i32 0, i32 18
  store i32 6, ptr %nMem1034, align 8
  store i32 100, ptr %mxErr, align 4
  %815 = load ptr, ptr %zRight, align 8
  %tobool1035 = icmp ne ptr %815, null
  br i1 %tobool1035, label %if.then1036, label %if.end1042

if.then1036:                                      ; preds = %if.end1033
  %816 = load ptr, ptr %zRight, align 8
  %call1037 = call i32 @sqlite3GetInt32(ptr noundef %816, ptr noundef %mxErr)
  %817 = load i32, ptr %mxErr, align 4
  %cmp1038 = icmp sle i32 %817, 0
  br i1 %cmp1038, label %if.then1040, label %if.end1041

if.then1040:                                      ; preds = %if.then1036
  store i32 100, ptr %mxErr, align 4
  br label %if.end1041

if.end1041:                                       ; preds = %if.then1040, %if.then1036
  br label %if.end1042

if.end1042:                                       ; preds = %if.end1041, %if.end1033
  %818 = load ptr, ptr %v, align 8
  %819 = load i32, ptr %mxErr, align 4
  %sub1043 = sub nsw i32 %819, 1
  %call1044 = call i32 @sqlite3VdbeAddOp2(ptr noundef %818, i32 noundef 70, i32 noundef %sub1043, i32 noundef 1)
  store i32 0, ptr %i1021, align 4
  br label %for.cond1045

for.cond1045:                                     ; preds = %for.inc1373, %if.end1042
  %820 = load i32, ptr %i1021, align 4
  %821 = load ptr, ptr %db, align 8
  %nDb1046 = getelementptr inbounds nuw %struct.sqlite3, ptr %821, i32 0, i32 5
  %822 = load i32, ptr %nDb1046, align 8
  %cmp1047 = icmp slt i32 %820, %822
  br i1 %cmp1047, label %for.body1049, label %for.end1375

for.body1049:                                     ; preds = %for.cond1045
  store i32 0, ptr %cnt, align 4
  store i32 0, ptr %mxIdx, align 4
  %823 = load i32, ptr %iDb, align 4
  %cmp1051 = icmp sge i32 %823, 0
  br i1 %cmp1051, label %land.lhs.true1053, label %if.end1057

land.lhs.true1053:                                ; preds = %for.body1049
  %824 = load i32, ptr %i1021, align 4
  %825 = load i32, ptr %iDb, align 4
  %cmp1054 = icmp ne i32 %824, %825
  br i1 %cmp1054, label %if.then1056, label %if.end1057

if.then1056:                                      ; preds = %land.lhs.true1053
  br label %for.inc1373

if.end1057:                                       ; preds = %land.lhs.true1053, %for.body1049
  %826 = load ptr, ptr %pParse.addr, align 8
  %827 = load i32, ptr %i1021, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %826, i32 noundef %827)
  %828 = load ptr, ptr %db, align 8
  %aDb1058 = getelementptr inbounds nuw %struct.sqlite3, ptr %828, i32 0, i32 4
  %829 = load ptr, ptr %aDb1058, align 8
  %830 = load i32, ptr %i1021, align 4
  %idxprom1059 = sext i32 %830 to i64
  %arrayidx1060 = getelementptr inbounds %struct.Db, ptr %829, i64 %idxprom1059
  %pSchema1061 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx1060, i32 0, i32 4
  %831 = load ptr, ptr %pSchema1061, align 8
  %tblHash1062 = getelementptr inbounds nuw %struct.Schema, ptr %831, i32 0, i32 2
  store ptr %tblHash1062, ptr %pTbls, align 8
  store i32 0, ptr %cnt, align 4
  %832 = load ptr, ptr %pTbls, align 8
  %first1063 = getelementptr inbounds nuw %struct.Hash, ptr %832, i32 0, i32 2
  %833 = load ptr, ptr %first1063, align 8
  store ptr %833, ptr %x1050, align 8
  br label %for.cond1064

for.cond1064:                                     ; preds = %for.inc1090, %if.end1057
  %834 = load ptr, ptr %x1050, align 8
  %tobool1065 = icmp ne ptr %834, null
  br i1 %tobool1065, label %for.body1066, label %for.end1092

for.body1066:                                     ; preds = %for.cond1064
  %835 = load ptr, ptr %x1050, align 8
  %data1068 = getelementptr inbounds nuw %struct.HashElem, ptr %835, i32 0, i32 2
  %836 = load ptr, ptr %data1068, align 8
  store ptr %836, ptr %pTab1067, align 8
  %837 = load ptr, ptr %pTab1067, align 8
  %tabFlags1070 = getelementptr inbounds nuw %struct.Table, ptr %837, i32 0, i32 9
  %838 = load i32, ptr %tabFlags1070, align 8
  %and1071 = and i32 %838, 32
  %cmp1072 = icmp eq i32 %and1071, 0
  br i1 %cmp1072, label %if.then1074, label %if.end1076

if.then1074:                                      ; preds = %for.body1066
  %839 = load i32, ptr %cnt, align 4
  %inc1075 = add nsw i32 %839, 1
  store i32 %inc1075, ptr %cnt, align 4
  br label %if.end1076

if.end1076:                                       ; preds = %if.then1074, %for.body1066
  store i32 0, ptr %nIdx, align 4
  %840 = load ptr, ptr %pTab1067, align 8
  %pIndex1077 = getelementptr inbounds nuw %struct.Table, ptr %840, i32 0, i32 2
  %841 = load ptr, ptr %pIndex1077, align 8
  store ptr %841, ptr %pIdx1069, align 8
  br label %for.cond1078

for.cond1078:                                     ; preds = %for.inc1082, %if.end1076
  %842 = load ptr, ptr %pIdx1069, align 8
  %tobool1079 = icmp ne ptr %842, null
  br i1 %tobool1079, label %for.body1080, label %for.end1085

for.body1080:                                     ; preds = %for.cond1078
  %843 = load i32, ptr %cnt, align 4
  %inc1081 = add nsw i32 %843, 1
  store i32 %inc1081, ptr %cnt, align 4
  br label %for.inc1082

for.inc1082:                                      ; preds = %for.body1080
  %844 = load ptr, ptr %pIdx1069, align 8
  %pNext1083 = getelementptr inbounds nuw %struct.Index, ptr %844, i32 0, i32 5
  %845 = load ptr, ptr %pNext1083, align 8
  store ptr %845, ptr %pIdx1069, align 8
  %846 = load i32, ptr %nIdx, align 4
  %inc1084 = add nsw i32 %846, 1
  store i32 %inc1084, ptr %nIdx, align 4
  br label %for.cond1078, !llvm.loop !29

for.end1085:                                      ; preds = %for.cond1078
  %847 = load i32, ptr %nIdx, align 4
  %848 = load i32, ptr %mxIdx, align 4
  %cmp1086 = icmp sgt i32 %847, %848
  br i1 %cmp1086, label %if.then1088, label %if.end1089

if.then1088:                                      ; preds = %for.end1085
  %849 = load i32, ptr %nIdx, align 4
  store i32 %849, ptr %mxIdx, align 4
  br label %if.end1089

if.end1089:                                       ; preds = %if.then1088, %for.end1085
  br label %for.inc1090

for.inc1090:                                      ; preds = %if.end1089
  %850 = load ptr, ptr %x1050, align 8
  %next1091 = getelementptr inbounds nuw %struct.HashElem, ptr %850, i32 0, i32 0
  %851 = load ptr, ptr %next1091, align 8
  store ptr %851, ptr %x1050, align 8
  br label %for.cond1064, !llvm.loop !30

for.end1092:                                      ; preds = %for.cond1064
  %852 = load ptr, ptr %db, align 8
  %853 = load i32, ptr %cnt, align 4
  %add1093 = add nsw i32 %853, 1
  %conv1094 = sext i32 %add1093 to i64
  %mul = mul i64 4, %conv1094
  %call1095 = call ptr @sqlite3DbMallocRawNN(ptr noundef %852, i64 noundef %mul)
  store ptr %call1095, ptr %aRoot, align 8
  %854 = load ptr, ptr %aRoot, align 8
  %cmp1096 = icmp eq ptr %854, null
  br i1 %cmp1096, label %if.then1098, label %if.end1099

if.then1098:                                      ; preds = %for.end1092
  br label %for.end1375

if.end1099:                                       ; preds = %for.end1092
  store i32 0, ptr %cnt, align 4
  %855 = load ptr, ptr %pTbls, align 8
  %first1100 = getelementptr inbounds nuw %struct.Hash, ptr %855, i32 0, i32 2
  %856 = load ptr, ptr %first1100, align 8
  store ptr %856, ptr %x1050, align 8
  br label %for.cond1101

for.cond1101:                                     ; preds = %for.inc1128, %if.end1099
  %857 = load ptr, ptr %x1050, align 8
  %tobool1102 = icmp ne ptr %857, null
  br i1 %tobool1102, label %for.body1103, label %for.end1130

for.body1103:                                     ; preds = %for.cond1101
  %858 = load ptr, ptr %x1050, align 8
  %data1105 = getelementptr inbounds nuw %struct.HashElem, ptr %858, i32 0, i32 2
  %859 = load ptr, ptr %data1105, align 8
  store ptr %859, ptr %pTab1104, align 8
  %860 = load ptr, ptr %pTab1104, align 8
  %tabFlags1107 = getelementptr inbounds nuw %struct.Table, ptr %860, i32 0, i32 9
  %861 = load i32, ptr %tabFlags1107, align 8
  %and1108 = and i32 %861, 32
  %cmp1109 = icmp eq i32 %and1108, 0
  br i1 %cmp1109, label %if.then1111, label %if.end1116

if.then1111:                                      ; preds = %for.body1103
  %862 = load ptr, ptr %pTab1104, align 8
  %tnum1112 = getelementptr inbounds nuw %struct.Table, ptr %862, i32 0, i32 7
  %863 = load i32, ptr %tnum1112, align 8
  %864 = load ptr, ptr %aRoot, align 8
  %865 = load i32, ptr %cnt, align 4
  %inc1113 = add nsw i32 %865, 1
  store i32 %inc1113, ptr %cnt, align 4
  %idxprom1114 = sext i32 %inc1113 to i64
  %arrayidx1115 = getelementptr inbounds i32, ptr %864, i64 %idxprom1114
  store i32 %863, ptr %arrayidx1115, align 4
  br label %if.end1116

if.end1116:                                       ; preds = %if.then1111, %for.body1103
  %866 = load ptr, ptr %pTab1104, align 8
  %pIndex1117 = getelementptr inbounds nuw %struct.Table, ptr %866, i32 0, i32 2
  %867 = load ptr, ptr %pIndex1117, align 8
  store ptr %867, ptr %pIdx1106, align 8
  br label %for.cond1118

for.cond1118:                                     ; preds = %for.inc1125, %if.end1116
  %868 = load ptr, ptr %pIdx1106, align 8
  %tobool1119 = icmp ne ptr %868, null
  br i1 %tobool1119, label %for.body1120, label %for.end1127

for.body1120:                                     ; preds = %for.cond1118
  %869 = load ptr, ptr %pIdx1106, align 8
  %tnum1121 = getelementptr inbounds nuw %struct.Index, ptr %869, i32 0, i32 11
  %870 = load i32, ptr %tnum1121, align 8
  %871 = load ptr, ptr %aRoot, align 8
  %872 = load i32, ptr %cnt, align 4
  %inc1122 = add nsw i32 %872, 1
  store i32 %inc1122, ptr %cnt, align 4
  %idxprom1123 = sext i32 %inc1122 to i64
  %arrayidx1124 = getelementptr inbounds i32, ptr %871, i64 %idxprom1123
  store i32 %870, ptr %arrayidx1124, align 4
  br label %for.inc1125

for.inc1125:                                      ; preds = %for.body1120
  %873 = load ptr, ptr %pIdx1106, align 8
  %pNext1126 = getelementptr inbounds nuw %struct.Index, ptr %873, i32 0, i32 5
  %874 = load ptr, ptr %pNext1126, align 8
  store ptr %874, ptr %pIdx1106, align 8
  br label %for.cond1118, !llvm.loop !31

for.end1127:                                      ; preds = %for.cond1118
  br label %for.inc1128

for.inc1128:                                      ; preds = %for.end1127
  %875 = load ptr, ptr %x1050, align 8
  %next1129 = getelementptr inbounds nuw %struct.HashElem, ptr %875, i32 0, i32 0
  %876 = load ptr, ptr %next1129, align 8
  store ptr %876, ptr %x1050, align 8
  br label %for.cond1101, !llvm.loop !32

for.end1130:                                      ; preds = %for.cond1101
  %877 = load i32, ptr %cnt, align 4
  %878 = load ptr, ptr %aRoot, align 8
  %arrayidx1131 = getelementptr inbounds i32, ptr %878, i64 0
  store i32 %877, ptr %arrayidx1131, align 4
  %879 = load ptr, ptr %pParse.addr, align 8
  %nMem1132 = getelementptr inbounds nuw %struct.Parse, ptr %879, i32 0, i32 18
  %880 = load i32, ptr %nMem1132, align 8
  %881 = load i32, ptr %mxIdx, align 4
  %add1133 = add nsw i32 8, %881
  %cmp1134 = icmp sgt i32 %880, %add1133
  br i1 %cmp1134, label %cond.true1136, label %cond.false1138

cond.true1136:                                    ; preds = %for.end1130
  %882 = load ptr, ptr %pParse.addr, align 8
  %nMem1137 = getelementptr inbounds nuw %struct.Parse, ptr %882, i32 0, i32 18
  %883 = load i32, ptr %nMem1137, align 8
  br label %cond.end1140

cond.false1138:                                   ; preds = %for.end1130
  %884 = load i32, ptr %mxIdx, align 4
  %add1139 = add nsw i32 8, %884
  br label %cond.end1140

cond.end1140:                                     ; preds = %cond.false1138, %cond.true1136
  %cond1141 = phi i32 [ %883, %cond.true1136 ], [ %add1139, %cond.false1138 ]
  %885 = load ptr, ptr %pParse.addr, align 8
  %nMem1142 = getelementptr inbounds nuw %struct.Parse, ptr %885, i32 0, i32 18
  store i32 %cond1141, ptr %nMem1142, align 8
  %886 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3ClearTempRegCache(ptr noundef %886)
  %887 = load ptr, ptr %v, align 8
  %888 = load i32, ptr %cnt, align 4
  %889 = load ptr, ptr %aRoot, align 8
  %call1143 = call i32 @sqlite3VdbeAddOp4(ptr noundef %887, i32 noundef 146, i32 noundef 2, i32 noundef %888, i32 noundef 1, ptr noundef %889, i32 noundef -15)
  %890 = load ptr, ptr %v, align 8
  %891 = load i32, ptr %i1021, align 4
  %conv1144 = trunc i32 %891 to i8
  %conv1145 = zext i8 %conv1144 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %890, i16 noundef zeroext %conv1145)
  %892 = load ptr, ptr %v, align 8
  %call1146 = call i32 @sqlite3VdbeAddOp1(ptr noundef %892, i32 noundef 50, i32 noundef 2)
  store i32 %call1146, ptr %addr1023, align 4
  %893 = load ptr, ptr %v, align 8
  %894 = load ptr, ptr %db, align 8
  %895 = load ptr, ptr %db, align 8
  %aDb1147 = getelementptr inbounds nuw %struct.sqlite3, ptr %895, i32 0, i32 4
  %896 = load ptr, ptr %aDb1147, align 8
  %897 = load i32, ptr %i1021, align 4
  %idxprom1148 = sext i32 %897 to i64
  %arrayidx1149 = getelementptr inbounds %struct.Db, ptr %896, i64 %idxprom1148
  %zDbSName1150 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx1149, i32 0, i32 0
  %898 = load ptr, ptr %zDbSName1150, align 8
  %call1151 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %894, ptr noundef @.str.842, ptr noundef %898)
  %call1152 = call i32 @sqlite3VdbeAddOp4(ptr noundef %893, i32 noundef 113, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef %call1151, i32 noundef -7)
  %899 = load ptr, ptr %v, align 8
  %call1153 = call i32 @sqlite3VdbeAddOp3(ptr noundef %899, i32 noundef 108, i32 noundef 2, i32 noundef 3, i32 noundef 3)
  %900 = load ptr, ptr %v, align 8
  %call1154 = call i32 @integrityCheckResultRow(ptr noundef %900)
  %901 = load ptr, ptr %v, align 8
  %902 = load i32, ptr %addr1023, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %901, i32 noundef %902)
  %903 = load ptr, ptr %pTbls, align 8
  %first1155 = getelementptr inbounds nuw %struct.Hash, ptr %903, i32 0, i32 2
  %904 = load ptr, ptr %first1155, align 8
  store ptr %904, ptr %x1050, align 8
  br label %for.cond1156

for.cond1156:                                     ; preds = %for.inc1370, %cond.end1140
  %905 = load ptr, ptr %x1050, align 8
  %tobool1157 = icmp ne ptr %905, null
  br i1 %tobool1157, label %for.body1158, label %for.end1372

for.body1158:                                     ; preds = %for.cond1156
  %906 = load ptr, ptr %x1050, align 8
  %data1160 = getelementptr inbounds nuw %struct.HashElem, ptr %906, i32 0, i32 2
  %907 = load ptr, ptr %data1160, align 8
  store ptr %907, ptr %pTab1159, align 8
  store ptr null, ptr %pPrior, align 8
  store i32 -1, ptr %r1, align 4
  %908 = load ptr, ptr %pTab1159, align 8
  %tnum1163 = getelementptr inbounds nuw %struct.Table, ptr %908, i32 0, i32 7
  %909 = load i32, ptr %tnum1163, align 8
  %cmp1164 = icmp slt i32 %909, 1
  br i1 %cmp1164, label %if.then1166, label %if.end1167

if.then1166:                                      ; preds = %for.body1158
  br label %for.inc1370

if.end1167:                                       ; preds = %for.body1158
  %910 = load ptr, ptr %pTab1159, align 8
  %tabFlags1168 = getelementptr inbounds nuw %struct.Table, ptr %910, i32 0, i32 9
  %911 = load i32, ptr %tabFlags1168, align 8
  %and1169 = and i32 %911, 32
  %cmp1170 = icmp eq i32 %and1169, 0
  br i1 %cmp1170, label %cond.true1172, label %cond.false1173

cond.true1172:                                    ; preds = %if.end1167
  br label %cond.end1175

cond.false1173:                                   ; preds = %if.end1167
  %912 = load ptr, ptr %pTab1159, align 8
  %call1174 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %912)
  br label %cond.end1175

cond.end1175:                                     ; preds = %cond.false1173, %cond.true1172
  %cond1176 = phi ptr [ null, %cond.true1172 ], [ %call1174, %cond.false1173 ]
  store ptr %cond1176, ptr %pPk1162, align 8
  %913 = load ptr, ptr %pParse.addr, align 8
  %914 = load ptr, ptr %pTab1159, align 8
  %call1177 = call i32 @sqlite3OpenTableAndIndices(ptr noundef %913, ptr noundef %914, i32 noundef 97, i8 noundef zeroext 0, i32 noundef 1, ptr noundef null, ptr noundef %iDataCur, ptr noundef %iIdxCur)
  %915 = load ptr, ptr %v, align 8
  %call1178 = call i32 @sqlite3VdbeAddOp2(ptr noundef %915, i32 noundef 70, i32 noundef 0, i32 noundef 7)
  store i32 0, ptr %j1022, align 4
  %916 = load ptr, ptr %pTab1159, align 8
  %pIndex1179 = getelementptr inbounds nuw %struct.Table, ptr %916, i32 0, i32 2
  %917 = load ptr, ptr %pIndex1179, align 8
  store ptr %917, ptr %pIdx1161, align 8
  br label %for.cond1180

for.cond1180:                                     ; preds = %for.inc1185, %cond.end1175
  %918 = load ptr, ptr %pIdx1161, align 8
  %tobool1181 = icmp ne ptr %918, null
  br i1 %tobool1181, label %for.body1182, label %for.end1188

for.body1182:                                     ; preds = %for.cond1180
  %919 = load ptr, ptr %v, align 8
  %920 = load i32, ptr %j1022, align 4
  %add1183 = add nsw i32 8, %920
  %call1184 = call i32 @sqlite3VdbeAddOp2(ptr noundef %919, i32 noundef 70, i32 noundef 0, i32 noundef %add1183)
  br label %for.inc1185

for.inc1185:                                      ; preds = %for.body1182
  %921 = load ptr, ptr %pIdx1161, align 8
  %pNext1186 = getelementptr inbounds nuw %struct.Index, ptr %921, i32 0, i32 5
  %922 = load ptr, ptr %pNext1186, align 8
  store ptr %922, ptr %pIdx1161, align 8
  %923 = load i32, ptr %j1022, align 4
  %inc1187 = add nsw i32 %923, 1
  store i32 %inc1187, ptr %j1022, align 4
  br label %for.cond1180, !llvm.loop !33

for.end1188:                                      ; preds = %for.cond1180
  %924 = load ptr, ptr %v, align 8
  %925 = load i32, ptr %iDataCur, align 4
  %call1189 = call i32 @sqlite3VdbeAddOp2(ptr noundef %924, i32 noundef 36, i32 noundef %925, i32 noundef 0)
  %926 = load ptr, ptr %v, align 8
  %call1190 = call i32 @sqlite3VdbeAddOp2(ptr noundef %926, i32 noundef 83, i32 noundef 7, i32 noundef 1)
  store i32 %call1190, ptr %loopTop, align 4
  %927 = load i32, ptr %isQuick, align 4
  %tobool1191 = icmp ne i32 %927, 0
  br i1 %tobool1191, label %if.end1197, label %if.then1192

if.then1192:                                      ; preds = %for.end1188
  %928 = load ptr, ptr %v, align 8
  %929 = load i32, ptr %iDataCur, align 4
  %930 = load ptr, ptr %pTab1159, align 8
  %nCol1193 = getelementptr inbounds nuw %struct.Table, ptr %930, i32 0, i32 11
  %931 = load i16, ptr %nCol1193, align 2
  %conv1194 = sext i16 %931 to i32
  %sub1195 = sub nsw i32 %conv1194, 1
  %call1196 = call i32 @sqlite3VdbeAddOp3(ptr noundef %928, i32 noundef 90, i32 noundef %929, i32 noundef %sub1195, i32 noundef 3)
  %932 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %932, i16 noundef zeroext 128)
  br label %if.end1197

if.end1197:                                       ; preds = %if.then1192, %for.end1188
  store i32 0, ptr %j1022, align 4
  br label %for.cond1198

for.cond1198:                                     ; preds = %for.inc1227, %if.end1197
  %933 = load i32, ptr %j1022, align 4
  %934 = load ptr, ptr %pTab1159, align 8
  %nCol1199 = getelementptr inbounds nuw %struct.Table, ptr %934, i32 0, i32 11
  %935 = load i16, ptr %nCol1199, align 2
  %conv1200 = sext i16 %935 to i32
  %cmp1201 = icmp slt i32 %933, %conv1200
  br i1 %cmp1201, label %for.body1203, label %for.end1229

for.body1203:                                     ; preds = %for.cond1198
  %936 = load i32, ptr %j1022, align 4
  %937 = load ptr, ptr %pTab1159, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %937, i32 0, i32 10
  %938 = load i16, ptr %iPKey, align 4
  %conv1204 = sext i16 %938 to i32
  %cmp1205 = icmp eq i32 %936, %conv1204
  br i1 %cmp1205, label %if.then1207, label %if.end1208

if.then1207:                                      ; preds = %for.body1203
  br label %for.inc1227

if.end1208:                                       ; preds = %for.body1203
  %939 = load ptr, ptr %pTab1159, align 8
  %aCol1209 = getelementptr inbounds nuw %struct.Table, ptr %939, i32 0, i32 1
  %940 = load ptr, ptr %aCol1209, align 8
  %941 = load i32, ptr %j1022, align 4
  %idxprom1210 = sext i32 %941 to i64
  %arrayidx1211 = getelementptr inbounds %struct.Column, ptr %940, i64 %idxprom1210
  %notNull1212 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx1211, i32 0, i32 3
  %942 = load i8, ptr %notNull1212, align 8
  %conv1213 = zext i8 %942 to i32
  %cmp1214 = icmp eq i32 %conv1213, 0
  br i1 %cmp1214, label %if.then1216, label %if.end1217

if.then1216:                                      ; preds = %if.end1208
  br label %for.inc1227

if.end1217:                                       ; preds = %if.end1208
  %943 = load ptr, ptr %v, align 8
  %944 = load ptr, ptr %pTab1159, align 8
  %945 = load i32, ptr %iDataCur, align 4
  %946 = load i32, ptr %j1022, align 4
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %943, ptr noundef %944, i32 noundef %945, i32 noundef %946, i32 noundef 3)
  %947 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %947, i16 noundef zeroext 128)
  %948 = load ptr, ptr %v, align 8
  %call1218 = call i32 @sqlite3VdbeAddOp1(ptr noundef %948, i32 noundef 51, i32 noundef 3)
  store i32 %call1218, ptr %jmp2, align 4
  %949 = load ptr, ptr %db, align 8
  %950 = load ptr, ptr %pTab1159, align 8
  %zName1219 = getelementptr inbounds nuw %struct.Table, ptr %950, i32 0, i32 0
  %951 = load ptr, ptr %zName1219, align 8
  %952 = load ptr, ptr %pTab1159, align 8
  %aCol1220 = getelementptr inbounds nuw %struct.Table, ptr %952, i32 0, i32 1
  %953 = load ptr, ptr %aCol1220, align 8
  %954 = load i32, ptr %j1022, align 4
  %idxprom1221 = sext i32 %954 to i64
  %arrayidx1222 = getelementptr inbounds %struct.Column, ptr %953, i64 %idxprom1221
  %zName1223 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx1222, i32 0, i32 0
  %955 = load ptr, ptr %zName1223, align 8
  %call1224 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %949, ptr noundef @.str.843, ptr noundef %951, ptr noundef %955)
  store ptr %call1224, ptr %zErr, align 8
  %956 = load ptr, ptr %v, align 8
  %957 = load ptr, ptr %zErr, align 8
  %call1225 = call i32 @sqlite3VdbeAddOp4(ptr noundef %956, i32 noundef 113, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef %957, i32 noundef -7)
  %958 = load ptr, ptr %v, align 8
  %call1226 = call i32 @integrityCheckResultRow(ptr noundef %958)
  %959 = load ptr, ptr %v, align 8
  %960 = load i32, ptr %jmp2, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %959, i32 noundef %960)
  br label %for.inc1227

for.inc1227:                                      ; preds = %if.end1217, %if.then1216, %if.then1207
  %961 = load i32, ptr %j1022, align 4
  %inc1228 = add nsw i32 %961, 1
  store i32 %inc1228, ptr %j1022, align 4
  br label %for.cond1198, !llvm.loop !34

for.end1229:                                      ; preds = %for.cond1198
  %962 = load ptr, ptr %pTab1159, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %962, i32 0, i32 6
  %963 = load ptr, ptr %pCheck, align 8
  %tobool1230 = icmp ne ptr %963, null
  br i1 %tobool1230, label %land.lhs.true1231, label %if.end1268

land.lhs.true1231:                                ; preds = %for.end1229
  %964 = load ptr, ptr %db, align 8
  %flags1232 = getelementptr inbounds nuw %struct.sqlite3, ptr %964, i32 0, i32 7
  %965 = load i64, ptr %flags1232, align 8
  %and1233 = and i64 %965, 512
  %cmp1234 = icmp eq i64 %and1233, 0
  br i1 %cmp1234, label %if.then1236, label %if.end1268

if.then1236:                                      ; preds = %land.lhs.true1231
  %966 = load ptr, ptr %db, align 8
  %967 = load ptr, ptr %pTab1159, align 8
  %pCheck1238 = getelementptr inbounds nuw %struct.Table, ptr %967, i32 0, i32 6
  %968 = load ptr, ptr %pCheck1238, align 8
  %call1239 = call ptr @sqlite3ExprListDup(ptr noundef %966, ptr noundef %968, i32 noundef 0)
  store ptr %call1239, ptr %pCheck1237, align 8
  %969 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %969, i32 0, i32 19
  %970 = load i8, ptr %mallocFailed, align 1
  %conv1240 = zext i8 %970 to i32
  %cmp1241 = icmp eq i32 %conv1240, 0
  br i1 %cmp1241, label %if.then1243, label %if.end1267

if.then1243:                                      ; preds = %if.then1236
  %971 = load ptr, ptr %pParse.addr, align 8
  %call1244 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %971)
  store i32 %call1244, ptr %addrCkFault, align 4
  %972 = load ptr, ptr %pParse.addr, align 8
  %call1245 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %972)
  store i32 %call1245, ptr %addrCkOk, align 4
  %973 = load i32, ptr %iDataCur, align 4
  %add1248 = add nsw i32 %973, 1
  %974 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab = getelementptr inbounds nuw %struct.Parse, ptr %974, i32 0, i32 20
  store i32 %add1248, ptr %iSelfTab, align 8
  %975 = load ptr, ptr %pCheck1237, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %975, i32 0, i32 0
  %976 = load i32, ptr %nExpr, align 8
  %sub1249 = sub nsw i32 %976, 1
  store i32 %sub1249, ptr %k1247, align 4
  br label %for.cond1250

for.cond1250:                                     ; preds = %for.inc1256, %if.then1243
  %977 = load i32, ptr %k1247, align 4
  %cmp1251 = icmp sgt i32 %977, 0
  br i1 %cmp1251, label %for.body1253, label %for.end1258

for.body1253:                                     ; preds = %for.cond1250
  %978 = load ptr, ptr %pParse.addr, align 8
  %979 = load ptr, ptr %pCheck1237, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %979, i32 0, i32 1
  %980 = load i32, ptr %k1247, align 4
  %idxprom1254 = sext i32 %980 to i64
  %arrayidx1255 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom1254
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx1255, i32 0, i32 0
  %981 = load ptr, ptr %pExpr, align 8
  %982 = load i32, ptr %addrCkFault, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %978, ptr noundef %981, i32 noundef %982, i32 noundef 0)
  br label %for.inc1256

for.inc1256:                                      ; preds = %for.body1253
  %983 = load i32, ptr %k1247, align 4
  %dec1257 = add nsw i32 %983, -1
  store i32 %dec1257, ptr %k1247, align 4
  br label %for.cond1250, !llvm.loop !35

for.end1258:                                      ; preds = %for.cond1250
  %984 = load ptr, ptr %pParse.addr, align 8
  %985 = load ptr, ptr %pCheck1237, align 8
  %a1259 = getelementptr inbounds nuw %struct.ExprList, ptr %985, i32 0, i32 1
  %arrayidx1260 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a1259, i64 0, i64 0
  %pExpr1261 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx1260, i32 0, i32 0
  %986 = load ptr, ptr %pExpr1261, align 8
  %987 = load i32, ptr %addrCkOk, align 4
  call void @sqlite3ExprIfTrue(ptr noundef %984, ptr noundef %986, i32 noundef %987, i32 noundef 16)
  %988 = load ptr, ptr %v, align 8
  %989 = load i32, ptr %addrCkFault, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %988, i32 noundef %989)
  %990 = load ptr, ptr %pParse.addr, align 8
  %iSelfTab1262 = getelementptr inbounds nuw %struct.Parse, ptr %990, i32 0, i32 20
  store i32 0, ptr %iSelfTab1262, align 8
  %991 = load ptr, ptr %db, align 8
  %992 = load ptr, ptr %pTab1159, align 8
  %zName1263 = getelementptr inbounds nuw %struct.Table, ptr %992, i32 0, i32 0
  %993 = load ptr, ptr %zName1263, align 8
  %call1264 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %991, ptr noundef @.str.844, ptr noundef %993)
  store ptr %call1264, ptr %zErr1246, align 8
  %994 = load ptr, ptr %v, align 8
  %995 = load ptr, ptr %zErr1246, align 8
  %call1265 = call i32 @sqlite3VdbeAddOp4(ptr noundef %994, i32 noundef 113, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef %995, i32 noundef -7)
  %996 = load ptr, ptr %v, align 8
  %call1266 = call i32 @integrityCheckResultRow(ptr noundef %996)
  %997 = load ptr, ptr %v, align 8
  %998 = load i32, ptr %addrCkOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %997, i32 noundef %998)
  br label %if.end1267

if.end1267:                                       ; preds = %for.end1258, %if.then1236
  %999 = load ptr, ptr %db, align 8
  %1000 = load ptr, ptr %pCheck1237, align 8
  call void @sqlite3ExprListDelete(ptr noundef %999, ptr noundef %1000)
  br label %if.end1268

if.end1268:                                       ; preds = %if.end1267, %land.lhs.true1231, %for.end1229
  %1001 = load i32, ptr %isQuick, align 4
  %tobool1269 = icmp ne i32 %1001, 0
  br i1 %tobool1269, label %if.end1343, label %if.then1270

if.then1270:                                      ; preds = %if.end1268
  store i32 0, ptr %j1022, align 4
  %1002 = load ptr, ptr %pTab1159, align 8
  %pIndex1271 = getelementptr inbounds nuw %struct.Table, ptr %1002, i32 0, i32 2
  %1003 = load ptr, ptr %pIndex1271, align 8
  store ptr %1003, ptr %pIdx1161, align 8
  br label %for.cond1272

for.cond1272:                                     ; preds = %for.inc1339, %if.then1270
  %1004 = load ptr, ptr %pIdx1161, align 8
  %tobool1273 = icmp ne ptr %1004, null
  br i1 %tobool1273, label %for.body1274, label %for.end1342

for.body1274:                                     ; preds = %for.cond1272
  %1005 = load ptr, ptr %pParse.addr, align 8
  %call1276 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %1005)
  store i32 %call1276, ptr %ckUniq, align 4
  %1006 = load ptr, ptr %pPk1162, align 8
  %1007 = load ptr, ptr %pIdx1161, align 8
  %cmp1277 = icmp eq ptr %1006, %1007
  br i1 %cmp1277, label %if.then1279, label %if.end1280

if.then1279:                                      ; preds = %for.body1274
  br label %for.inc1339

if.end1280:                                       ; preds = %for.body1274
  %1008 = load ptr, ptr %pParse.addr, align 8
  %1009 = load ptr, ptr %pIdx1161, align 8
  %1010 = load i32, ptr %iDataCur, align 4
  %1011 = load ptr, ptr %pPrior, align 8
  %1012 = load i32, ptr %r1, align 4
  %call1281 = call i32 @sqlite3GenerateIndexKey(ptr noundef %1008, ptr noundef %1009, i32 noundef %1010, i32 noundef 0, i32 noundef 0, ptr noundef %jmp3, ptr noundef %1011, i32 noundef %1012)
  store i32 %call1281, ptr %r1, align 4
  %1013 = load ptr, ptr %pIdx1161, align 8
  store ptr %1013, ptr %pPrior, align 8
  %1014 = load ptr, ptr %v, align 8
  %1015 = load i32, ptr %j1022, align 4
  %add1282 = add nsw i32 8, %1015
  %call1283 = call i32 @sqlite3VdbeAddOp2(ptr noundef %1014, i32 noundef 83, i32 noundef %add1282, i32 noundef 1)
  %1016 = load ptr, ptr %v, align 8
  %1017 = load i32, ptr %iIdxCur, align 4
  %1018 = load i32, ptr %j1022, align 4
  %add1284 = add nsw i32 %1017, %1018
  %1019 = load i32, ptr %ckUniq, align 4
  %1020 = load i32, ptr %r1, align 4
  %1021 = load ptr, ptr %pIdx1161, align 8
  %nColumn1285 = getelementptr inbounds nuw %struct.Index, ptr %1021, i32 0, i32 14
  %1022 = load i16, ptr %nColumn1285, align 8
  %conv1286 = zext i16 %1022 to i32
  %call1287 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %1016, i32 noundef 29, i32 noundef %add1284, i32 noundef %1019, i32 noundef %1020, i32 noundef %conv1286)
  store i32 %call1287, ptr %jmp21275, align 4
  %1023 = load ptr, ptr %v, align 8
  %call1288 = call i32 @sqlite3VdbeLoadString(ptr noundef %1023, i32 noundef 3, ptr noundef @.str.845)
  %1024 = load ptr, ptr %v, align 8
  %call1289 = call i32 @sqlite3VdbeAddOp3(ptr noundef %1024, i32 noundef 108, i32 noundef 7, i32 noundef 3, i32 noundef 3)
  %1025 = load ptr, ptr %v, align 8
  %call1290 = call i32 @sqlite3VdbeLoadString(ptr noundef %1025, i32 noundef 4, ptr noundef @.str.846)
  %1026 = load ptr, ptr %v, align 8
  %call1291 = call i32 @sqlite3VdbeAddOp3(ptr noundef %1026, i32 noundef 108, i32 noundef 4, i32 noundef 3, i32 noundef 3)
  %1027 = load ptr, ptr %v, align 8
  %1028 = load ptr, ptr %pIdx1161, align 8
  %zName1292 = getelementptr inbounds nuw %struct.Index, ptr %1028, i32 0, i32 0
  %1029 = load ptr, ptr %zName1292, align 8
  %call1293 = call i32 @sqlite3VdbeLoadString(ptr noundef %1027, i32 noundef 4, ptr noundef %1029)
  store i32 %call1293, ptr %jmp5, align 4
  %1030 = load ptr, ptr %v, align 8
  %call1294 = call i32 @sqlite3VdbeAddOp3(ptr noundef %1030, i32 noundef 108, i32 noundef 4, i32 noundef 3, i32 noundef 3)
  %1031 = load ptr, ptr %v, align 8
  %call1295 = call i32 @integrityCheckResultRow(ptr noundef %1031)
  store i32 %call1295, ptr %jmp4, align 4
  %1032 = load ptr, ptr %v, align 8
  %1033 = load i32, ptr %jmp21275, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %1032, i32 noundef %1033)
  %1034 = load ptr, ptr %pIdx1161, align 8
  %onError1296 = getelementptr inbounds nuw %struct.Index, ptr %1034, i32 0, i32 15
  %1035 = load i8, ptr %onError1296, align 2
  %conv1297 = zext i8 %1035 to i32
  %cmp1298 = icmp ne i32 %conv1297, 0
  br i1 %cmp1298, label %if.then1300, label %if.end1338

if.then1300:                                      ; preds = %if.end1280
  %1036 = load ptr, ptr %pParse.addr, align 8
  %call1301 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %1036)
  store i32 %call1301, ptr %uniqOk, align 4
  store i32 0, ptr %kk, align 4
  br label %for.cond1302

for.cond1302:                                     ; preds = %for.inc1326, %if.then1300
  %1037 = load i32, ptr %kk, align 4
  %1038 = load ptr, ptr %pIdx1161, align 8
  %nKeyCol1303 = getelementptr inbounds nuw %struct.Index, ptr %1038, i32 0, i32 13
  %1039 = load i16, ptr %nKeyCol1303, align 2
  %conv1304 = zext i16 %1039 to i32
  %cmp1305 = icmp slt i32 %1037, %conv1304
  br i1 %cmp1305, label %for.body1307, label %for.end1328

for.body1307:                                     ; preds = %for.cond1302
  %1040 = load ptr, ptr %pIdx1161, align 8
  %aiColumn1309 = getelementptr inbounds nuw %struct.Index, ptr %1040, i32 0, i32 1
  %1041 = load ptr, ptr %aiColumn1309, align 8
  %1042 = load i32, ptr %kk, align 4
  %idxprom1310 = sext i32 %1042 to i64
  %arrayidx1311 = getelementptr inbounds i16, ptr %1041, i64 %idxprom1310
  %1043 = load i16, ptr %arrayidx1311, align 2
  %conv1312 = sext i16 %1043 to i32
  store i32 %conv1312, ptr %iCol1308, align 4
  %1044 = load i32, ptr %iCol1308, align 4
  %cmp1313 = icmp sge i32 %1044, 0
  br i1 %cmp1313, label %land.lhs.true1315, label %if.end1323

land.lhs.true1315:                                ; preds = %for.body1307
  %1045 = load ptr, ptr %pTab1159, align 8
  %aCol1316 = getelementptr inbounds nuw %struct.Table, ptr %1045, i32 0, i32 1
  %1046 = load ptr, ptr %aCol1316, align 8
  %1047 = load i32, ptr %iCol1308, align 4
  %idxprom1317 = sext i32 %1047 to i64
  %arrayidx1318 = getelementptr inbounds %struct.Column, ptr %1046, i64 %idxprom1317
  %notNull1319 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx1318, i32 0, i32 3
  %1048 = load i8, ptr %notNull1319, align 8
  %conv1320 = zext i8 %1048 to i32
  %tobool1321 = icmp ne i32 %conv1320, 0
  br i1 %tobool1321, label %if.then1322, label %if.end1323

if.then1322:                                      ; preds = %land.lhs.true1315
  br label %for.inc1326

if.end1323:                                       ; preds = %land.lhs.true1315, %for.body1307
  %1049 = load ptr, ptr %v, align 8
  %1050 = load i32, ptr %r1, align 4
  %1051 = load i32, ptr %kk, align 4
  %add1324 = add nsw i32 %1050, %1051
  %1052 = load i32, ptr %uniqOk, align 4
  %call1325 = call i32 @sqlite3VdbeAddOp2(ptr noundef %1049, i32 noundef 50, i32 noundef %add1324, i32 noundef %1052)
  br label %for.inc1326

for.inc1326:                                      ; preds = %if.end1323, %if.then1322
  %1053 = load i32, ptr %kk, align 4
  %inc1327 = add nsw i32 %1053, 1
  store i32 %inc1327, ptr %kk, align 4
  br label %for.cond1302, !llvm.loop !36

for.end1328:                                      ; preds = %for.cond1302
  %1054 = load ptr, ptr %v, align 8
  %1055 = load i32, ptr %iIdxCur, align 4
  %1056 = load i32, ptr %j1022, align 4
  %add1329 = add nsw i32 %1055, %1056
  %call1330 = call i32 @sqlite3VdbeAddOp1(ptr noundef %1054, i32 noundef 5, i32 noundef %add1329)
  store i32 %call1330, ptr %jmp6, align 4
  %1057 = load ptr, ptr %v, align 8
  %1058 = load i32, ptr %uniqOk, align 4
  %call1331 = call i32 @sqlite3VdbeGoto(ptr noundef %1057, i32 noundef %1058)
  %1059 = load ptr, ptr %v, align 8
  %1060 = load i32, ptr %jmp6, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %1059, i32 noundef %1060)
  %1061 = load ptr, ptr %v, align 8
  %1062 = load i32, ptr %iIdxCur, align 4
  %1063 = load i32, ptr %j1022, align 4
  %add1332 = add nsw i32 %1062, %1063
  %1064 = load i32, ptr %uniqOk, align 4
  %1065 = load i32, ptr %r1, align 4
  %1066 = load ptr, ptr %pIdx1161, align 8
  %nKeyCol1333 = getelementptr inbounds nuw %struct.Index, ptr %1066, i32 0, i32 13
  %1067 = load i16, ptr %nKeyCol1333, align 2
  %conv1334 = zext i16 %1067 to i32
  %call1335 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %1061, i32 noundef 38, i32 noundef %add1332, i32 noundef %1064, i32 noundef %1065, i32 noundef %conv1334)
  %1068 = load ptr, ptr %v, align 8
  %call1336 = call i32 @sqlite3VdbeLoadString(ptr noundef %1068, i32 noundef 3, ptr noundef @.str.847)
  %1069 = load ptr, ptr %v, align 8
  %1070 = load i32, ptr %jmp5, align 4
  %call1337 = call i32 @sqlite3VdbeGoto(ptr noundef %1069, i32 noundef %1070)
  %1071 = load ptr, ptr %v, align 8
  %1072 = load i32, ptr %uniqOk, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %1071, i32 noundef %1072)
  br label %if.end1338

if.end1338:                                       ; preds = %for.end1328, %if.end1280
  %1073 = load ptr, ptr %v, align 8
  %1074 = load i32, ptr %jmp4, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %1073, i32 noundef %1074)
  %1075 = load ptr, ptr %pParse.addr, align 8
  %1076 = load i32, ptr %jmp3, align 4
  call void @sqlite3ResolvePartIdxLabel(ptr noundef %1075, i32 noundef %1076)
  br label %for.inc1339

for.inc1339:                                      ; preds = %if.end1338, %if.then1279
  %1077 = load ptr, ptr %pIdx1161, align 8
  %pNext1340 = getelementptr inbounds nuw %struct.Index, ptr %1077, i32 0, i32 5
  %1078 = load ptr, ptr %pNext1340, align 8
  store ptr %1078, ptr %pIdx1161, align 8
  %1079 = load i32, ptr %j1022, align 4
  %inc1341 = add nsw i32 %1079, 1
  store i32 %inc1341, ptr %j1022, align 4
  br label %for.cond1272, !llvm.loop !37

for.end1342:                                      ; preds = %for.cond1272
  br label %if.end1343

if.end1343:                                       ; preds = %for.end1342, %if.end1268
  %1080 = load ptr, ptr %v, align 8
  %1081 = load i32, ptr %iDataCur, align 4
  %1082 = load i32, ptr %loopTop, align 4
  %call1344 = call i32 @sqlite3VdbeAddOp2(ptr noundef %1080, i32 noundef 5, i32 noundef %1081, i32 noundef %1082)
  %1083 = load ptr, ptr %v, align 8
  %1084 = load i32, ptr %loopTop, align 4
  %sub1345 = sub nsw i32 %1084, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %1083, i32 noundef %sub1345)
  %1085 = load i32, ptr %isQuick, align 4
  %tobool1346 = icmp ne i32 %1085, 0
  br i1 %tobool1346, label %if.end1369, label %if.then1347

if.then1347:                                      ; preds = %if.end1343
  %1086 = load ptr, ptr %v, align 8
  %call1348 = call i32 @sqlite3VdbeLoadString(ptr noundef %1086, i32 noundef 2, ptr noundef @.str.848)
  store i32 0, ptr %j1022, align 4
  %1087 = load ptr, ptr %pTab1159, align 8
  %pIndex1349 = getelementptr inbounds nuw %struct.Table, ptr %1087, i32 0, i32 2
  %1088 = load ptr, ptr %pIndex1349, align 8
  store ptr %1088, ptr %pIdx1161, align 8
  br label %for.cond1350

for.cond1350:                                     ; preds = %for.inc1365, %if.then1347
  %1089 = load ptr, ptr %pIdx1161, align 8
  %tobool1351 = icmp ne ptr %1089, null
  br i1 %tobool1351, label %for.body1352, label %for.end1368

for.body1352:                                     ; preds = %for.cond1350
  %1090 = load ptr, ptr %pPk1162, align 8
  %1091 = load ptr, ptr %pIdx1161, align 8
  %cmp1353 = icmp eq ptr %1090, %1091
  br i1 %cmp1353, label %if.then1355, label %if.end1356

if.then1355:                                      ; preds = %for.body1352
  br label %for.inc1365

if.end1356:                                       ; preds = %for.body1352
  %1092 = load ptr, ptr %v, align 8
  %1093 = load i32, ptr %iIdxCur, align 4
  %1094 = load i32, ptr %j1022, align 4
  %add1357 = add nsw i32 %1093, %1094
  %call1358 = call i32 @sqlite3VdbeAddOp2(ptr noundef %1092, i32 noundef 93, i32 noundef %add1357, i32 noundef 3)
  %1095 = load ptr, ptr %v, align 8
  %1096 = load i32, ptr %j1022, align 4
  %add1359 = add nsw i32 8, %1096
  %call1360 = call i32 @sqlite3VdbeAddOp3(ptr noundef %1095, i32 noundef 53, i32 noundef %add1359, i32 noundef 0, i32 noundef 3)
  store i32 %call1360, ptr %addr1023, align 4
  %1097 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %1097, i16 noundef zeroext 144)
  %1098 = load ptr, ptr %v, align 8
  %1099 = load ptr, ptr %pIdx1161, align 8
  %zName1361 = getelementptr inbounds nuw %struct.Index, ptr %1099, i32 0, i32 0
  %1100 = load ptr, ptr %zName1361, align 8
  %call1362 = call i32 @sqlite3VdbeLoadString(ptr noundef %1098, i32 noundef 4, ptr noundef %1100)
  %1101 = load ptr, ptr %v, align 8
  %call1363 = call i32 @sqlite3VdbeAddOp3(ptr noundef %1101, i32 noundef 108, i32 noundef 4, i32 noundef 2, i32 noundef 3)
  %1102 = load ptr, ptr %v, align 8
  %call1364 = call i32 @integrityCheckResultRow(ptr noundef %1102)
  %1103 = load ptr, ptr %v, align 8
  %1104 = load i32, ptr %addr1023, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %1103, i32 noundef %1104)
  br label %for.inc1365

for.inc1365:                                      ; preds = %if.end1356, %if.then1355
  %1105 = load ptr, ptr %pIdx1161, align 8
  %pNext1366 = getelementptr inbounds nuw %struct.Index, ptr %1105, i32 0, i32 5
  %1106 = load ptr, ptr %pNext1366, align 8
  store ptr %1106, ptr %pIdx1161, align 8
  %1107 = load i32, ptr %j1022, align 4
  %inc1367 = add nsw i32 %1107, 1
  store i32 %inc1367, ptr %j1022, align 4
  br label %for.cond1350, !llvm.loop !38

for.end1368:                                      ; preds = %for.cond1350
  br label %if.end1369

if.end1369:                                       ; preds = %for.end1368, %if.end1343
  br label %for.inc1370

for.inc1370:                                      ; preds = %if.end1369, %if.then1166
  %1108 = load ptr, ptr %x1050, align 8
  %next1371 = getelementptr inbounds nuw %struct.HashElem, ptr %1108, i32 0, i32 0
  %1109 = load ptr, ptr %next1371, align 8
  store ptr %1109, ptr %x1050, align 8
  br label %for.cond1156, !llvm.loop !39

for.end1372:                                      ; preds = %for.cond1156
  br label %for.inc1373

for.inc1373:                                      ; preds = %for.end1372, %if.then1056
  %1110 = load i32, ptr %i1021, align 4
  %inc1374 = add nsw i32 %1110, 1
  store i32 %inc1374, ptr %i1021, align 4
  br label %for.cond1045, !llvm.loop !40

for.end1375:                                      ; preds = %if.then1098, %for.cond1045
  %1111 = load ptr, ptr %v, align 8
  %call1377 = call ptr @sqlite3VdbeAddOpList(ptr noundef %1111, i32 noundef 7, ptr noundef @sqlite3Pragma.endCode, i32 noundef 0)
  store ptr %call1377, ptr %aOp1376, align 8
  %1112 = load ptr, ptr %aOp1376, align 8
  %tobool1378 = icmp ne ptr %1112, null
  br i1 %tobool1378, label %if.then1379, label %if.end1390

if.then1379:                                      ; preds = %for.end1375
  %1113 = load i32, ptr %mxErr, align 4
  %sub1380 = sub nsw i32 1, %1113
  %1114 = load ptr, ptr %aOp1376, align 8
  %arrayidx1381 = getelementptr inbounds %struct.VdbeOp, ptr %1114, i64 0
  %p21382 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1381, i32 0, i32 4
  store i32 %sub1380, ptr %p21382, align 8
  %1115 = load ptr, ptr %aOp1376, align 8
  %arrayidx1383 = getelementptr inbounds %struct.VdbeOp, ptr %1115, i64 2
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1383, i32 0, i32 1
  store i8 -1, ptr %p4type, align 1
  %1116 = load ptr, ptr %aOp1376, align 8
  %arrayidx1384 = getelementptr inbounds %struct.VdbeOp, ptr %1116, i64 2
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1384, i32 0, i32 6
  store ptr @.str.850, ptr %p4, align 8
  %1117 = load ptr, ptr %aOp1376, align 8
  %arrayidx1385 = getelementptr inbounds %struct.VdbeOp, ptr %1117, i64 5
  %p4type1386 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1385, i32 0, i32 1
  store i8 -1, ptr %p4type1386, align 1
  %call1387 = call ptr @sqlite3ErrStr(i32 noundef 11)
  %1118 = load ptr, ptr %aOp1376, align 8
  %arrayidx1388 = getelementptr inbounds %struct.VdbeOp, ptr %1118, i64 5
  %p41389 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1388, i32 0, i32 6
  store ptr %call1387, ptr %p41389, align 8
  br label %if.end1390

if.end1390:                                       ; preds = %if.then1379, %for.end1375
  %1119 = load ptr, ptr %v, align 8
  %1120 = load ptr, ptr %v, align 8
  %call1391 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %1120)
  %sub1392 = sub nsw i32 %call1391, 2
  call void @sqlite3VdbeChangeP3(ptr noundef %1119, i32 noundef 0, i32 noundef %sub1392)
  br label %sw.epilog

sw.bb1393:                                        ; preds = %if.end72
  %1121 = load ptr, ptr %zRight, align 8
  %tobool1394 = icmp ne ptr %1121, null
  br i1 %tobool1394, label %if.else1404, label %if.then1395

if.then1395:                                      ; preds = %sw.bb1393
  %1122 = load ptr, ptr %pParse.addr, align 8
  %call1396 = call i32 @sqlite3ReadSchema(ptr noundef %1122)
  %tobool1397 = icmp ne i32 %call1396, 0
  br i1 %tobool1397, label %if.then1398, label %if.end1399

if.then1398:                                      ; preds = %if.then1395
  br label %pragma_out

if.end1399:                                       ; preds = %if.then1395
  %1123 = load ptr, ptr %v, align 8
  %1124 = load ptr, ptr %pParse.addr, align 8
  %db1400 = getelementptr inbounds nuw %struct.Parse, ptr %1124, i32 0, i32 0
  %1125 = load ptr, ptr %db1400, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %1125, i32 0, i32 16
  %1126 = load i8, ptr %enc, align 2
  %idxprom1401 = zext i8 %1126 to i64
  %arrayidx1402 = getelementptr inbounds nuw [9 x %struct.EncName], ptr @sqlite3Pragma.encnames, i64 0, i64 %idxprom1401
  %zName1403 = getelementptr inbounds nuw %struct.EncName, ptr %arrayidx1402, i32 0, i32 0
  %1127 = load ptr, ptr %zName1403, align 16
  call void @returnSingleText(ptr noundef %1123, ptr noundef %1127)
  br label %if.end1455

if.else1404:                                      ; preds = %sw.bb1393
  %1128 = load ptr, ptr %db, align 8
  %aDb1405 = getelementptr inbounds nuw %struct.sqlite3, ptr %1128, i32 0, i32 4
  %1129 = load ptr, ptr %aDb1405, align 8
  %arrayidx1406 = getelementptr inbounds %struct.Db, ptr %1129, i64 0
  %pSchema1407 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx1406, i32 0, i32 4
  %1130 = load ptr, ptr %pSchema1407, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %1130, i32 0, i32 9
  %1131 = load i16, ptr %schemaFlags, align 2
  %conv1408 = zext i16 %1131 to i32
  %and1409 = and i32 %conv1408, 1
  %cmp1410 = icmp eq i32 %and1409, 1
  br i1 %cmp1410, label %lor.lhs.false1412, label %if.then1421

lor.lhs.false1412:                                ; preds = %if.else1404
  %1132 = load ptr, ptr %db, align 8
  %aDb1413 = getelementptr inbounds nuw %struct.sqlite3, ptr %1132, i32 0, i32 4
  %1133 = load ptr, ptr %aDb1413, align 8
  %arrayidx1414 = getelementptr inbounds %struct.Db, ptr %1133, i64 0
  %pSchema1415 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx1414, i32 0, i32 4
  %1134 = load ptr, ptr %pSchema1415, align 8
  %schemaFlags1416 = getelementptr inbounds nuw %struct.Schema, ptr %1134, i32 0, i32 9
  %1135 = load i16, ptr %schemaFlags1416, align 2
  %conv1417 = zext i16 %1135 to i32
  %and1418 = and i32 %conv1417, 4
  %cmp1419 = icmp eq i32 %and1418, 4
  br i1 %cmp1419, label %if.then1421, label %if.end1454

if.then1421:                                      ; preds = %lor.lhs.false1412, %if.else1404
  store ptr @sqlite3Pragma.encnames, ptr %pEnc, align 8
  br label %for.cond1422

for.cond1422:                                     ; preds = %for.inc1447, %if.then1421
  %1136 = load ptr, ptr %pEnc, align 8
  %zName1423 = getelementptr inbounds nuw %struct.EncName, ptr %1136, i32 0, i32 0
  %1137 = load ptr, ptr %zName1423, align 8
  %tobool1424 = icmp ne ptr %1137, null
  br i1 %tobool1424, label %for.body1425, label %for.end1449

for.body1425:                                     ; preds = %for.cond1422
  %1138 = load ptr, ptr %zRight, align 8
  %1139 = load ptr, ptr %pEnc, align 8
  %zName1426 = getelementptr inbounds nuw %struct.EncName, ptr %1139, i32 0, i32 0
  %1140 = load ptr, ptr %zName1426, align 8
  %call1427 = call i32 @sqlite3StrICmp(ptr noundef %1138, ptr noundef %1140)
  %cmp1428 = icmp eq i32 0, %call1427
  br i1 %cmp1428, label %if.then1430, label %if.end1446

if.then1430:                                      ; preds = %for.body1425
  %1141 = load ptr, ptr %pEnc, align 8
  %enc1431 = getelementptr inbounds nuw %struct.EncName, ptr %1141, i32 0, i32 1
  %1142 = load i8, ptr %enc1431, align 8
  %conv1432 = zext i8 %1142 to i32
  %tobool1433 = icmp ne i32 %conv1432, 0
  br i1 %tobool1433, label %cond.true1434, label %cond.false1437

cond.true1434:                                    ; preds = %if.then1430
  %1143 = load ptr, ptr %pEnc, align 8
  %enc1435 = getelementptr inbounds nuw %struct.EncName, ptr %1143, i32 0, i32 1
  %1144 = load i8, ptr %enc1435, align 8
  %conv1436 = zext i8 %1144 to i32
  br label %cond.end1438

cond.false1437:                                   ; preds = %if.then1430
  br label %cond.end1438

cond.end1438:                                     ; preds = %cond.false1437, %cond.true1434
  %cond1439 = phi i32 [ %conv1436, %cond.true1434 ], [ 2, %cond.false1437 ]
  %conv1440 = trunc i32 %cond1439 to i8
  %1145 = load ptr, ptr %db, align 8
  %enc1441 = getelementptr inbounds nuw %struct.sqlite3, ptr %1145, i32 0, i32 16
  store i8 %conv1440, ptr %enc1441, align 2
  %1146 = load ptr, ptr %db, align 8
  %aDb1442 = getelementptr inbounds nuw %struct.sqlite3, ptr %1146, i32 0, i32 4
  %1147 = load ptr, ptr %aDb1442, align 8
  %arrayidx1443 = getelementptr inbounds %struct.Db, ptr %1147, i64 0
  %pSchema1444 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx1443, i32 0, i32 4
  %1148 = load ptr, ptr %pSchema1444, align 8
  %enc1445 = getelementptr inbounds nuw %struct.Schema, ptr %1148, i32 0, i32 8
  store i8 %conv1440, ptr %enc1445, align 1
  br label %for.end1449

if.end1446:                                       ; preds = %for.body1425
  br label %for.inc1447

for.inc1447:                                      ; preds = %if.end1446
  %1149 = load ptr, ptr %pEnc, align 8
  %incdec.ptr1448 = getelementptr inbounds nuw %struct.EncName, ptr %1149, i32 1
  store ptr %incdec.ptr1448, ptr %pEnc, align 8
  br label %for.cond1422, !llvm.loop !41

for.end1449:                                      ; preds = %cond.end1438, %for.cond1422
  %1150 = load ptr, ptr %pEnc, align 8
  %zName1450 = getelementptr inbounds nuw %struct.EncName, ptr %1150, i32 0, i32 0
  %1151 = load ptr, ptr %zName1450, align 8
  %tobool1451 = icmp ne ptr %1151, null
  br i1 %tobool1451, label %if.end1453, label %if.then1452

if.then1452:                                      ; preds = %for.end1449
  %1152 = load ptr, ptr %pParse.addr, align 8
  %1153 = load ptr, ptr %zRight, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %1152, ptr noundef @.str.859, ptr noundef %1153)
  br label %if.end1453

if.end1453:                                       ; preds = %if.then1452, %for.end1449
  br label %if.end1454

if.end1454:                                       ; preds = %if.end1453, %lor.lhs.false1412
  br label %if.end1455

if.end1455:                                       ; preds = %if.end1454, %if.end1399
  br label %sw.epilog

sw.bb1456:                                        ; preds = %if.end72
  %1154 = load ptr, ptr %pPragma, align 8
  %iArg1457 = getelementptr inbounds nuw %struct.PragmaName, ptr %1154, i32 0, i32 5
  %1155 = load i64, ptr %iArg1457, align 8
  %conv1458 = trunc i64 %1155 to i32
  store i32 %conv1458, ptr %iCookie, align 4
  %1156 = load ptr, ptr %v, align 8
  %1157 = load i32, ptr %iDb, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %1156, i32 noundef %1157)
  %1158 = load ptr, ptr %zRight, align 8
  %tobool1459 = icmp ne ptr %1158, null
  br i1 %tobool1459, label %land.lhs.true1460, label %if.else1478

land.lhs.true1460:                                ; preds = %sw.bb1456
  %1159 = load ptr, ptr %pPragma, align 8
  %mPragFlg1461 = getelementptr inbounds nuw %struct.PragmaName, ptr %1159, i32 0, i32 2
  %1160 = load i8, ptr %mPragFlg1461, align 1
  %conv1462 = zext i8 %1160 to i32
  %and1463 = and i32 %conv1462, 8
  %cmp1464 = icmp eq i32 %and1463, 0
  br i1 %cmp1464, label %if.then1466, label %if.else1478

if.then1466:                                      ; preds = %land.lhs.true1460
  %1161 = load ptr, ptr %v, align 8
  %call1468 = call ptr @sqlite3VdbeAddOpList(ptr noundef %1161, i32 noundef 2, ptr noundef @sqlite3Pragma.setCookie, i32 noundef 0)
  store ptr %call1468, ptr %aOp1467, align 8
  %1162 = load i32, ptr %iDb, align 4
  %1163 = load ptr, ptr %aOp1467, align 8
  %arrayidx1469 = getelementptr inbounds %struct.VdbeOp, ptr %1163, i64 0
  %p11470 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1469, i32 0, i32 3
  store i32 %1162, ptr %p11470, align 4
  %1164 = load i32, ptr %iDb, align 4
  %1165 = load ptr, ptr %aOp1467, align 8
  %arrayidx1471 = getelementptr inbounds %struct.VdbeOp, ptr %1165, i64 1
  %p11472 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1471, i32 0, i32 3
  store i32 %1164, ptr %p11472, align 4
  %1166 = load i32, ptr %iCookie, align 4
  %1167 = load ptr, ptr %aOp1467, align 8
  %arrayidx1473 = getelementptr inbounds %struct.VdbeOp, ptr %1167, i64 1
  %p21474 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1473, i32 0, i32 4
  store i32 %1166, ptr %p21474, align 8
  %1168 = load ptr, ptr %zRight, align 8
  %call1475 = call i32 @sqlite3Atoi(ptr noundef %1168)
  %1169 = load ptr, ptr %aOp1467, align 8
  %arrayidx1476 = getelementptr inbounds %struct.VdbeOp, ptr %1169, i64 1
  %p31477 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1476, i32 0, i32 5
  store i32 %call1475, ptr %p31477, align 4
  br label %if.end1487

if.else1478:                                      ; preds = %land.lhs.true1460, %sw.bb1456
  %1170 = load ptr, ptr %v, align 8
  %call1480 = call ptr @sqlite3VdbeAddOpList(ptr noundef %1170, i32 noundef 3, ptr noundef @sqlite3Pragma.readCookie, i32 noundef 0)
  store ptr %call1480, ptr %aOp1479, align 8
  %1171 = load i32, ptr %iDb, align 4
  %1172 = load ptr, ptr %aOp1479, align 8
  %arrayidx1481 = getelementptr inbounds %struct.VdbeOp, ptr %1172, i64 0
  %p11482 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1481, i32 0, i32 3
  store i32 %1171, ptr %p11482, align 4
  %1173 = load i32, ptr %iDb, align 4
  %1174 = load ptr, ptr %aOp1479, align 8
  %arrayidx1483 = getelementptr inbounds %struct.VdbeOp, ptr %1174, i64 1
  %p11484 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1483, i32 0, i32 3
  store i32 %1173, ptr %p11484, align 4
  %1175 = load i32, ptr %iCookie, align 4
  %1176 = load ptr, ptr %aOp1479, align 8
  %arrayidx1485 = getelementptr inbounds %struct.VdbeOp, ptr %1176, i64 1
  %p31486 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1485, i32 0, i32 5
  store i32 %1175, ptr %p31486, align 4
  %1177 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeReusable(ptr noundef %1177)
  br label %if.end1487

if.end1487:                                       ; preds = %if.else1478, %if.then1466
  br label %sw.epilog

sw.bb1488:                                        ; preds = %if.end72
  store i32 0, ptr %i1489, align 4
  %1178 = load ptr, ptr %pParse.addr, align 8
  %nMem1490 = getelementptr inbounds nuw %struct.Parse, ptr %1178, i32 0, i32 18
  store i32 1, ptr %nMem1490, align 8
  br label %while.cond1491

while.cond1491:                                   ; preds = %while.body1496, %sw.bb1488
  %1179 = load i32, ptr %i1489, align 4
  %inc1492 = add nsw i32 %1179, 1
  store i32 %inc1492, ptr %i1489, align 4
  %call1493 = call ptr @sqlite3_compileoption_get(i32 noundef %1179)
  store ptr %call1493, ptr %zOpt, align 8
  %cmp1494 = icmp ne ptr %call1493, null
  br i1 %cmp1494, label %while.body1496, label %while.end1499

while.body1496:                                   ; preds = %while.cond1491
  %1180 = load ptr, ptr %v, align 8
  %1181 = load ptr, ptr %zOpt, align 8
  %call1497 = call i32 @sqlite3VdbeLoadString(ptr noundef %1180, i32 noundef 1, ptr noundef %1181)
  %1182 = load ptr, ptr %v, align 8
  %call1498 = call i32 @sqlite3VdbeAddOp2(ptr noundef %1182, i32 noundef 81, i32 noundef 1, i32 noundef 1)
  br label %while.cond1491, !llvm.loop !42

while.end1499:                                    ; preds = %while.cond1491
  %1183 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeReusable(ptr noundef %1183)
  br label %sw.epilog

sw.bb1500:                                        ; preds = %if.end72
  %1184 = load ptr, ptr %pId2.addr, align 8
  %z1501 = getelementptr inbounds nuw %struct.Token, ptr %1184, i32 0, i32 0
  %1185 = load ptr, ptr %z1501, align 8
  %tobool1502 = icmp ne ptr %1185, null
  br i1 %tobool1502, label %cond.true1503, label %cond.false1504

cond.true1503:                                    ; preds = %sw.bb1500
  %1186 = load i32, ptr %iDb, align 4
  br label %cond.end1505

cond.false1504:                                   ; preds = %sw.bb1500
  br label %cond.end1505

cond.end1505:                                     ; preds = %cond.false1504, %cond.true1503
  %cond1506 = phi i32 [ %1186, %cond.true1503 ], [ 10, %cond.false1504 ]
  store i32 %cond1506, ptr %iBt, align 4
  store i32 0, ptr %eMode1507, align 4
  %1187 = load ptr, ptr %zRight, align 8
  %tobool1508 = icmp ne ptr %1187, null
  br i1 %tobool1508, label %if.then1509, label %if.end1527

if.then1509:                                      ; preds = %cond.end1505
  %1188 = load ptr, ptr %zRight, align 8
  %call1510 = call i32 @sqlite3StrICmp(ptr noundef %1188, ptr noundef @.str.860)
  %cmp1511 = icmp eq i32 %call1510, 0
  br i1 %cmp1511, label %if.then1513, label %if.else1514

if.then1513:                                      ; preds = %if.then1509
  store i32 1, ptr %eMode1507, align 4
  br label %if.end1526

if.else1514:                                      ; preds = %if.then1509
  %1189 = load ptr, ptr %zRight, align 8
  %call1515 = call i32 @sqlite3StrICmp(ptr noundef %1189, ptr noundef @.str.861)
  %cmp1516 = icmp eq i32 %call1515, 0
  br i1 %cmp1516, label %if.then1518, label %if.else1519

if.then1518:                                      ; preds = %if.else1514
  store i32 2, ptr %eMode1507, align 4
  br label %if.end1525

if.else1519:                                      ; preds = %if.else1514
  %1190 = load ptr, ptr %zRight, align 8
  %call1520 = call i32 @sqlite3StrICmp(ptr noundef %1190, ptr noundef @.str.378)
  %cmp1521 = icmp eq i32 %call1520, 0
  br i1 %cmp1521, label %if.then1523, label %if.end1524

if.then1523:                                      ; preds = %if.else1519
  store i32 3, ptr %eMode1507, align 4
  br label %if.end1524

if.end1524:                                       ; preds = %if.then1523, %if.else1519
  br label %if.end1525

if.end1525:                                       ; preds = %if.end1524, %if.then1518
  br label %if.end1526

if.end1526:                                       ; preds = %if.end1525, %if.then1513
  br label %if.end1527

if.end1527:                                       ; preds = %if.end1526, %cond.end1505
  %1191 = load ptr, ptr %pParse.addr, align 8
  %nMem1528 = getelementptr inbounds nuw %struct.Parse, ptr %1191, i32 0, i32 18
  store i32 3, ptr %nMem1528, align 8
  %1192 = load ptr, ptr %v, align 8
  %1193 = load i32, ptr %iBt, align 4
  %1194 = load i32, ptr %eMode1507, align 4
  %call1529 = call i32 @sqlite3VdbeAddOp3(ptr noundef %1192, i32 noundef 6, i32 noundef %1193, i32 noundef %1194, i32 noundef 1)
  %1195 = load ptr, ptr %v, align 8
  %call1530 = call i32 @sqlite3VdbeAddOp2(ptr noundef %1195, i32 noundef 81, i32 noundef 1, i32 noundef 3)
  br label %sw.epilog

sw.bb1531:                                        ; preds = %if.end72
  %1196 = load ptr, ptr %zRight, align 8
  %tobool1532 = icmp ne ptr %1196, null
  br i1 %tobool1532, label %if.then1533, label %if.end1536

if.then1533:                                      ; preds = %sw.bb1531
  %1197 = load ptr, ptr %db, align 8
  %1198 = load ptr, ptr %zRight, align 8
  %call1534 = call i32 @sqlite3Atoi(ptr noundef %1198)
  %call1535 = call i32 @sqlite3_wal_autocheckpoint(ptr noundef %1197, i32 noundef %call1534)
  br label %if.end1536

if.end1536:                                       ; preds = %if.then1533, %sw.bb1531
  %1199 = load ptr, ptr %v, align 8
  %1200 = load ptr, ptr %db, align 8
  %xWalCallback = getelementptr inbounds nuw %struct.sqlite3, ptr %1200, i32 0, i32 54
  %1201 = load ptr, ptr %xWalCallback, align 8
  %cmp1537 = icmp eq ptr %1201, @sqlite3WalDefaultHook
  br i1 %cmp1537, label %cond.true1539, label %cond.false1541

cond.true1539:                                    ; preds = %if.end1536
  %1202 = load ptr, ptr %db, align 8
  %pWalArg = getelementptr inbounds nuw %struct.sqlite3, ptr %1202, i32 0, i32 55
  %1203 = load ptr, ptr %pWalArg, align 8
  %1204 = ptrtoint ptr %1203 to i64
  %conv1540 = trunc i64 %1204 to i32
  br label %cond.end1542

cond.false1541:                                   ; preds = %if.end1536
  br label %cond.end1542

cond.end1542:                                     ; preds = %cond.false1541, %cond.true1539
  %cond1543 = phi i32 [ %conv1540, %cond.true1539 ], [ 0, %cond.false1541 ]
  %conv1544 = sext i32 %cond1543 to i64
  call void @returnSingleInt(ptr noundef %1199, i64 noundef %conv1544)
  br label %sw.epilog

sw.bb1545:                                        ; preds = %if.end72
  %1205 = load ptr, ptr %db, align 8
  %call1546 = call i32 @sqlite3_db_release_memory(ptr noundef %1205)
  br label %sw.epilog

sw.bb1547:                                        ; preds = %if.end72
  %1206 = load ptr, ptr %zRight, align 8
  %tobool1552 = icmp ne ptr %1206, null
  br i1 %tobool1552, label %if.then1553, label %if.else1560

if.then1553:                                      ; preds = %sw.bb1547
  %1207 = load ptr, ptr %zRight, align 8
  %call1554 = call i32 @sqlite3Atoi(ptr noundef %1207)
  store i32 %call1554, ptr %opMask, align 4
  %1208 = load i32, ptr %opMask, align 4
  %and1555 = and i32 %1208, 2
  %cmp1556 = icmp eq i32 %and1555, 0
  br i1 %cmp1556, label %if.then1558, label %if.end1559

if.then1558:                                      ; preds = %if.then1553
  br label %sw.epilog

if.end1559:                                       ; preds = %if.then1553
  br label %if.end1561

if.else1560:                                      ; preds = %sw.bb1547
  store i32 65534, ptr %opMask, align 4
  br label %if.end1561

if.end1561:                                       ; preds = %if.else1560, %if.end1559
  %1209 = load ptr, ptr %pParse.addr, align 8
  %nTab1562 = getelementptr inbounds nuw %struct.Parse, ptr %1209, i32 0, i32 17
  %1210 = load i32, ptr %nTab1562, align 4
  %inc1563 = add nsw i32 %1210, 1
  store i32 %inc1563, ptr %nTab1562, align 4
  store i32 %1210, ptr %iTabCur, align 4
  %1211 = load ptr, ptr %zDb, align 8
  %tobool1564 = icmp ne ptr %1211, null
  br i1 %tobool1564, label %cond.true1565, label %cond.false1566

cond.true1565:                                    ; preds = %if.end1561
  %1212 = load i32, ptr %iDb, align 4
  br label %cond.end1569

cond.false1566:                                   ; preds = %if.end1561
  %1213 = load ptr, ptr %db, align 8
  %nDb1567 = getelementptr inbounds nuw %struct.sqlite3, ptr %1213, i32 0, i32 5
  %1214 = load i32, ptr %nDb1567, align 8
  %sub1568 = sub nsw i32 %1214, 1
  br label %cond.end1569

cond.end1569:                                     ; preds = %cond.false1566, %cond.true1565
  %cond1570 = phi i32 [ %1212, %cond.true1565 ], [ %sub1568, %cond.false1566 ]
  store i32 %cond1570, ptr %iDbLast, align 4
  br label %for.cond1571

for.cond1571:                                     ; preds = %for.inc1639, %cond.end1569
  %1215 = load i32, ptr %iDb, align 4
  %1216 = load i32, ptr %iDbLast, align 4
  %cmp1572 = icmp sle i32 %1215, %1216
  br i1 %cmp1572, label %for.body1574, label %for.end1641

for.body1574:                                     ; preds = %for.cond1571
  %1217 = load i32, ptr %iDb, align 4
  %cmp1575 = icmp eq i32 %1217, 1
  br i1 %cmp1575, label %if.then1577, label %if.end1578

if.then1577:                                      ; preds = %for.body1574
  br label %for.inc1639

if.end1578:                                       ; preds = %for.body1574
  %1218 = load ptr, ptr %pParse.addr, align 8
  %1219 = load i32, ptr %iDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %1218, i32 noundef %1219)
  %1220 = load ptr, ptr %db, align 8
  %aDb1579 = getelementptr inbounds nuw %struct.sqlite3, ptr %1220, i32 0, i32 4
  %1221 = load ptr, ptr %aDb1579, align 8
  %1222 = load i32, ptr %iDb, align 4
  %idxprom1580 = sext i32 %1222 to i64
  %arrayidx1581 = getelementptr inbounds %struct.Db, ptr %1221, i64 %idxprom1580
  %pSchema1582 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx1581, i32 0, i32 4
  %1223 = load ptr, ptr %pSchema1582, align 8
  store ptr %1223, ptr %pSchema1549, align 8
  %1224 = load ptr, ptr %pSchema1549, align 8
  %tblHash1583 = getelementptr inbounds nuw %struct.Schema, ptr %1224, i32 0, i32 2
  %first1584 = getelementptr inbounds nuw %struct.Hash, ptr %tblHash1583, i32 0, i32 2
  %1225 = load ptr, ptr %first1584, align 8
  store ptr %1225, ptr %k1548, align 8
  br label %for.cond1585

for.cond1585:                                     ; preds = %for.inc1636, %if.end1578
  %1226 = load ptr, ptr %k1548, align 8
  %tobool1586 = icmp ne ptr %1226, null
  br i1 %tobool1586, label %for.body1587, label %for.end1638

for.body1587:                                     ; preds = %for.cond1585
  %1227 = load ptr, ptr %k1548, align 8
  %data1588 = getelementptr inbounds nuw %struct.HashElem, ptr %1227, i32 0, i32 2
  %1228 = load ptr, ptr %data1588, align 8
  store ptr %1228, ptr %pTab1550, align 8
  %1229 = load ptr, ptr %pTab1550, align 8
  %tabFlags1589 = getelementptr inbounds nuw %struct.Table, ptr %1229, i32 0, i32 9
  %1230 = load i32, ptr %tabFlags1589, align 8
  %and1590 = and i32 %1230, 256
  %cmp1591 = icmp eq i32 %and1590, 0
  br i1 %cmp1591, label %if.then1593, label %if.end1594

if.then1593:                                      ; preds = %for.body1587
  br label %for.inc1636

if.end1594:                                       ; preds = %for.body1587
  %1231 = load ptr, ptr %pTab1550, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %1231, i32 0, i32 12
  %1232 = load i16, ptr %nRowLogEst, align 8
  %conv1595 = sext i16 %1232 to i32
  %add1596 = add nsw i32 %conv1595, 46
  %conv1597 = trunc i32 %add1596 to i16
  store i16 %conv1597, ptr %szThreshold, align 2
  %1233 = load ptr, ptr %pTab1550, align 8
  %pIndex1598 = getelementptr inbounds nuw %struct.Table, ptr %1233, i32 0, i32 2
  %1234 = load ptr, ptr %pIndex1598, align 8
  store ptr %1234, ptr %pIdx1551, align 8
  br label %for.cond1599

for.cond1599:                                     ; preds = %for.inc1608, %if.end1594
  %1235 = load ptr, ptr %pIdx1551, align 8
  %tobool1600 = icmp ne ptr %1235, null
  br i1 %tobool1600, label %for.body1601, label %for.end1610

for.body1601:                                     ; preds = %for.cond1599
  %1236 = load ptr, ptr %pIdx1551, align 8
  %hasStat1 = getelementptr inbounds nuw %struct.Index, ptr %1236, i32 0, i32 16
  %bf.load1602 = load i16, ptr %hasStat1, align 1
  %bf.lshr = lshr i16 %bf.load1602, 7
  %bf.clear1603 = and i16 %bf.lshr, 1
  %bf.cast1604 = zext i16 %bf.clear1603 to i32
  %tobool1605 = icmp ne i32 %bf.cast1604, 0
  br i1 %tobool1605, label %if.end1607, label %if.then1606

if.then1606:                                      ; preds = %for.body1601
  store i16 0, ptr %szThreshold, align 2
  br label %for.end1610

if.end1607:                                       ; preds = %for.body1601
  br label %for.inc1608

for.inc1608:                                      ; preds = %if.end1607
  %1237 = load ptr, ptr %pIdx1551, align 8
  %pNext1609 = getelementptr inbounds nuw %struct.Index, ptr %1237, i32 0, i32 5
  %1238 = load ptr, ptr %pNext1609, align 8
  store ptr %1238, ptr %pIdx1551, align 8
  br label %for.cond1599, !llvm.loop !43

for.end1610:                                      ; preds = %if.then1606, %for.cond1599
  %1239 = load i16, ptr %szThreshold, align 2
  %tobool1611 = icmp ne i16 %1239, 0
  br i1 %tobool1611, label %if.then1612, label %if.end1619

if.then1612:                                      ; preds = %for.end1610
  %1240 = load ptr, ptr %pParse.addr, align 8
  %1241 = load i32, ptr %iTabCur, align 4
  %1242 = load i32, ptr %iDb, align 4
  %1243 = load ptr, ptr %pTab1550, align 8
  call void @sqlite3OpenTable(ptr noundef %1240, i32 noundef %1241, i32 noundef %1242, ptr noundef %1243, i32 noundef 97)
  %1244 = load ptr, ptr %v, align 8
  %1245 = load i32, ptr %iTabCur, align 4
  %1246 = load ptr, ptr %v, align 8
  %call1613 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %1246)
  %add1614 = add nsw i32 %call1613, 2
  %1247 = load i32, ptr %opMask, align 4
  %and1615 = and i32 %1247, 1
  %add1616 = add i32 %add1614, %and1615
  %1248 = load i16, ptr %szThreshold, align 2
  %conv1617 = sext i16 %1248 to i32
  %call1618 = call i32 @sqlite3VdbeAddOp3(ptr noundef %1244, i32 noundef 33, i32 noundef %1245, i32 noundef %add1616, i32 noundef %conv1617)
  br label %if.end1619

if.end1619:                                       ; preds = %if.then1612, %for.end1610
  %1249 = load ptr, ptr %db, align 8
  %1250 = load ptr, ptr %db, align 8
  %aDb1620 = getelementptr inbounds nuw %struct.sqlite3, ptr %1250, i32 0, i32 4
  %1251 = load ptr, ptr %aDb1620, align 8
  %1252 = load i32, ptr %iDb, align 4
  %idxprom1621 = sext i32 %1252 to i64
  %arrayidx1622 = getelementptr inbounds %struct.Db, ptr %1251, i64 %idxprom1621
  %zDbSName1623 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx1622, i32 0, i32 0
  %1253 = load ptr, ptr %zDbSName1623, align 8
  %1254 = load ptr, ptr %pTab1550, align 8
  %zName1624 = getelementptr inbounds nuw %struct.Table, ptr %1254, i32 0, i32 0
  %1255 = load ptr, ptr %zName1624, align 8
  %call1625 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %1249, ptr noundef @.str.862, ptr noundef %1253, ptr noundef %1255)
  store ptr %call1625, ptr %zSubSql, align 8
  %1256 = load i32, ptr %opMask, align 4
  %and1626 = and i32 %1256, 1
  %tobool1627 = icmp ne i32 %and1626, 0
  br i1 %tobool1627, label %if.then1628, label %if.else1633

if.then1628:                                      ; preds = %if.end1619
  %1257 = load ptr, ptr %pParse.addr, align 8
  %call1630 = call i32 @sqlite3GetTempReg(ptr noundef %1257)
  store i32 %call1630, ptr %r11629, align 4
  %1258 = load ptr, ptr %v, align 8
  %1259 = load i32, ptr %r11629, align 4
  %1260 = load ptr, ptr %zSubSql, align 8
  %call1631 = call i32 @sqlite3VdbeAddOp4(ptr noundef %1258, i32 noundef 113, i32 noundef 0, i32 noundef %1259, i32 noundef 0, ptr noundef %1260, i32 noundef -7)
  %1261 = load ptr, ptr %v, align 8
  %1262 = load i32, ptr %r11629, align 4
  %call1632 = call i32 @sqlite3VdbeAddOp2(ptr noundef %1261, i32 noundef 81, i32 noundef %1262, i32 noundef 1)
  br label %if.end1635

if.else1633:                                      ; preds = %if.end1619
  %1263 = load ptr, ptr %v, align 8
  %1264 = load ptr, ptr %zSubSql, align 8
  %call1634 = call i32 @sqlite3VdbeAddOp4(ptr noundef %1263, i32 noundef 140, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %1264, i32 noundef -7)
  br label %if.end1635

if.end1635:                                       ; preds = %if.else1633, %if.then1628
  br label %for.inc1636

for.inc1636:                                      ; preds = %if.end1635, %if.then1593
  %1265 = load ptr, ptr %k1548, align 8
  %next1637 = getelementptr inbounds nuw %struct.HashElem, ptr %1265, i32 0, i32 0
  %1266 = load ptr, ptr %next1637, align 8
  store ptr %1266, ptr %k1548, align 8
  br label %for.cond1585, !llvm.loop !44

for.end1638:                                      ; preds = %for.cond1585
  br label %for.inc1639

for.inc1639:                                      ; preds = %for.end1638, %if.then1577
  %1267 = load i32, ptr %iDb, align 4
  %inc1640 = add nsw i32 %1267, 1
  store i32 %inc1640, ptr %iDb, align 4
  br label %for.cond1571, !llvm.loop !45

for.end1641:                                      ; preds = %for.cond1571
  %1268 = load ptr, ptr %v, align 8
  %call1642 = call i32 @sqlite3VdbeAddOp0(ptr noundef %1268, i32 noundef 158)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end72
  %1269 = load ptr, ptr %zRight, align 8
  %tobool1643 = icmp ne ptr %1269, null
  br i1 %tobool1643, label %if.then1644, label %if.end1647

if.then1644:                                      ; preds = %sw.default
  %1270 = load ptr, ptr %db, align 8
  %1271 = load ptr, ptr %zRight, align 8
  %call1645 = call i32 @sqlite3Atoi(ptr noundef %1271)
  %call1646 = call i32 @sqlite3_busy_timeout(ptr noundef %1270, i32 noundef %call1645)
  br label %if.end1647

if.end1647:                                       ; preds = %if.then1644, %sw.default
  %1272 = load ptr, ptr %v, align 8
  %1273 = load ptr, ptr %db, align 8
  %busyTimeout = getelementptr inbounds nuw %struct.sqlite3, ptr %1273, i32 0, i32 77
  %1274 = load i32, ptr %busyTimeout, align 8
  %conv1648 = sext i32 %1274 to i64
  call void @returnSingleInt(ptr noundef %1272, i64 noundef %conv1648)
  br label %sw.epilog

sw.bb1649:                                        ; preds = %if.end72
  %1275 = load ptr, ptr %zRight, align 8
  %tobool1650 = icmp ne ptr %1275, null
  br i1 %tobool1650, label %land.lhs.true1651, label %if.end1657

land.lhs.true1651:                                ; preds = %sw.bb1649
  %1276 = load ptr, ptr %zRight, align 8
  %call1652 = call i32 @sqlite3DecOrHexToI64(ptr noundef %1276, ptr noundef %N)
  %cmp1653 = icmp eq i32 %call1652, 0
  br i1 %cmp1653, label %if.then1655, label %if.end1657

if.then1655:                                      ; preds = %land.lhs.true1651
  %1277 = load i64, ptr %N, align 8
  %call1656 = call i64 @sqlite3_soft_heap_limit64(i64 noundef %1277)
  br label %if.end1657

if.end1657:                                       ; preds = %if.then1655, %land.lhs.true1651, %sw.bb1649
  %1278 = load ptr, ptr %v, align 8
  %call1658 = call i64 @sqlite3_soft_heap_limit64(i64 noundef -1)
  call void @returnSingleInt(ptr noundef %1278, i64 noundef %call1658)
  br label %sw.epilog

sw.bb1659:                                        ; preds = %if.end72
  %1279 = load ptr, ptr %zRight, align 8
  %tobool1661 = icmp ne ptr %1279, null
  br i1 %tobool1661, label %land.lhs.true1662, label %if.end1673

land.lhs.true1662:                                ; preds = %sw.bb1659
  %1280 = load ptr, ptr %zRight, align 8
  %call1663 = call i32 @sqlite3DecOrHexToI64(ptr noundef %1280, ptr noundef %N1660)
  %cmp1664 = icmp eq i32 %call1663, 0
  br i1 %cmp1664, label %land.lhs.true1666, label %if.end1673

land.lhs.true1666:                                ; preds = %land.lhs.true1662
  %1281 = load i64, ptr %N1660, align 8
  %cmp1667 = icmp sge i64 %1281, 0
  br i1 %cmp1667, label %if.then1669, label %if.end1673

if.then1669:                                      ; preds = %land.lhs.true1666
  %1282 = load ptr, ptr %db, align 8
  %1283 = load i64, ptr %N1660, align 8
  %and1670 = and i64 %1283, 2147483647
  %conv1671 = trunc i64 %and1670 to i32
  %call1672 = call i32 @sqlite3_limit(ptr noundef %1282, i32 noundef 11, i32 noundef %conv1671)
  br label %if.end1673

if.end1673:                                       ; preds = %if.then1669, %land.lhs.true1666, %land.lhs.true1662, %sw.bb1659
  %1284 = load ptr, ptr %v, align 8
  %1285 = load ptr, ptr %db, align 8
  %call1674 = call i32 @sqlite3_limit(ptr noundef %1285, i32 noundef 11, i32 noundef -1)
  %conv1675 = sext i32 %call1674 to i64
  call void @returnSingleInt(ptr noundef %1284, i64 noundef %conv1675)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end1673, %if.end1657, %if.end1647, %for.end1641, %if.then1558, %sw.bb1545, %cond.end1542, %if.end1527, %while.end1499, %if.end1487, %if.end1455, %if.end1390, %if.end1019, %while.end1013, %if.end848, %for.end805, %for.end793, %for.end781, %for.end748, %for.end738, %if.end710, %if.end681, %if.end610, %if.end535, %if.end502, %if.end476, %if.end446, %if.end439, %if.end383, %if.end349, %if.end328, %if.end316, %if.end280, %for.end267, %if.end202, %if.end160, %if.end142, %if.end112, %if.end90
  %1286 = load ptr, ptr %pPragma, align 8
  %mPragFlg1676 = getelementptr inbounds nuw %struct.PragmaName, ptr %1286, i32 0, i32 2
  %1287 = load i8, ptr %mPragFlg1676, align 1
  %conv1677 = zext i8 %1287 to i32
  %and1678 = and i32 %conv1677, 4
  %tobool1679 = icmp ne i32 %and1678, 0
  br i1 %tobool1679, label %land.lhs.true1680, label %if.end1683

land.lhs.true1680:                                ; preds = %sw.epilog
  %1288 = load ptr, ptr %zRight, align 8
  %tobool1681 = icmp ne ptr %1288, null
  br i1 %tobool1681, label %if.then1682, label %if.end1683

if.then1682:                                      ; preds = %land.lhs.true1680
  br label %if.end1683

if.end1683:                                       ; preds = %if.then1682, %land.lhs.true1680, %sw.epilog
  br label %pragma_out

pragma_out:                                       ; preds = %if.end1683, %if.then1398, %if.then460, %if.then55, %if.then48, %if.end43, %if.then30, %if.then22
  %1289 = load ptr, ptr %db, align 8
  %1290 = load ptr, ptr %zLeft, align 8
  call void @sqlite3DbFree(ptr noundef %1289, ptr noundef %1290)
  %1291 = load ptr, ptr %db, align 8
  %1292 = load ptr, ptr %zRight, align 8
  call void @sqlite3DbFree(ptr noundef %1291, ptr noundef %1292)
  br label %return

return:                                           ; preds = %pragma_out, %if.then12, %if.then8, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeLoadString(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP3(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ClearTempRegCache(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfTrue(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TwoPartName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ViewGetColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GenerateIndexKey(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResolvePartIdxLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3IndexAffinityStr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OpenTableAndIndices(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkLocateIndex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeRunOnlyOnce(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @returnSingleText(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setPragmaResultColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @returnSingleInt(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSecureDelete(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getLockingMode(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerLockingMode(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3PagerJournalSizeLimit(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getAutoVacuum(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setAllPagerFlags(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetMmapLimit(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @changeTempStorage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @invalidateTempStorage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @getSafetyLevel(ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMultiLoad(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @actionName(i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RegisterLikeFunctions(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @integrityCheckResultRow(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeReusable(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
