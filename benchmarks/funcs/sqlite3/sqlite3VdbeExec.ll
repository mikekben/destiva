; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }
%struct.BtreePayload = type { ptr, i64, ptr, ptr, i16, i32, i32 }
%struct.InitData = type { ptr, ptr, i32, i32, i32, i32 }
%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }
%struct.VdbeFrame = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }
%struct.Savepoint = type { ptr, i64, i64, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_vtab_cursor = type { ptr }
%struct.sqlite3_vtab = type { ptr, i32, ptr }
%struct.sqlite3_module = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SubProgram = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.12 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@sqlite3VdbeExec.azType = external hidden constant [4 x ptr], align 16
@.str.309 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.310 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.311 = external hidden unnamed_addr constant [24 x i8], align 1
@sqlite3VdbeExec.aLTb = external hidden constant [6 x i8], align 1
@sqlite3VdbeExec.aEQb = external hidden constant [6 x i8], align 1
@sqlite3VdbeExec.aGTb = external hidden constant [6 x i8], align 1
@sqlite3VdbeExec.and_logic = external hidden constant [9 x i8], align 1
@sqlite3VdbeExec.or_logic = external hidden constant [9 x i8], align 1
@sqlite3VdbeExec.aFlag = external hidden constant [2 x i16], align 2
@sqlite3VdbeExec.aZero = external hidden global [16 x i8], align 16
@.str.312 = external hidden unnamed_addr constant [51 x i8], align 1
@.str.313 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.314 = external hidden unnamed_addr constant [54 x i8], align 1
@.str.315 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.316 = external hidden unnamed_addr constant [48 x i8], align 1
@.str.317 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.318 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.319 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.321 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.322 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.323 = external hidden unnamed_addr constant [52 x i8], align 1
@.str.324 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.325 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.326 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.327 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.328 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.329 = external hidden unnamed_addr constant [14 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsNaN(double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeBeginTrans(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGetJournalMode(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeLastPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeUpdateMeta(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetVersion(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemExpandBlob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden double @sqlite3VdbeRealValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3VdbeIntValue(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemMakeWriteable(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetStr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetInt64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemCopy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeExpandSql(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @applyNumericAffinity(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExpirePreparedStatements(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Checkpoint(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SystemError(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeOpen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerFilename(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWalSupported(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3BtreeIntegerKey(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePayloadSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeTripAllCursors(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeClearCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeHalt(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RollbackAll(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CloseSavepoints(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCheckFk(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCloseStatement(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetChanges(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFrameRestore(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeDeleteAuxData(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeFreeCursor(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSorterReset(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeError(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabImportErrmsg(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSavepoint(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabSavepoint(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemFinalize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemGrow(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeEncoding(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemNulTerminate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemStringify(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemClearAndResize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeExec(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %aOp = alloca ptr, align 8
  %pOp = alloca ptr, align 8
  %rc = alloca i32, align 4
  %db = alloca ptr, align 8
  %resetSchemaOnFault = alloca i8, align 1
  %encoding = alloca i8, align 1
  %iCompare = alloca i32, align 4
  %nVmStep = alloca i32, align 4
  %nProgressLimit = alloca i32, align 4
  %aMem = alloca ptr, align 8
  %pIn1 = alloca ptr, align 8
  %pIn2 = alloca ptr, align 8
  %pIn3 = alloca ptr, align 8
  %pOut = alloca ptr, align 8
  %iPrior = alloca i32, align 4
  %pCaller = alloca ptr, align 8
  %pcDest = alloca i32, align 4
  %pFrame = alloca ptr, align 8
  %pcx = alloca i32, align 4
  %cnt = alloca i32, align 4
  %nullFlag = alloca i16, align 2
  %pVar = alloca ptr, align 8
  %n301 = alloca i32, align 4
  %p1302 = alloca i32, align 4
  %p2303 = alloca i32, align 4
  %n326 = alloca i32, align 4
  %pMem = alloca ptr, align 8
  %i = alloca i32, align 4
  %nByte = alloca i64, align 8
  %flags1 = alloca i16, align 2
  %flags2 = alloca i16, align 2
  %flags558 = alloca i16, align 2
  %type1 = alloca i16, align 2
  %type2 = alloca i16, align 2
  %iA = alloca i64, align 8
  %iB = alloca i64, align 8
  %rA = alloca double, align 8
  %rB = alloca double, align 8
  %iA688 = alloca i64, align 8
  %uA = alloca i64, align 8
  %iB689 = alloca i64, align 8
  %op = alloca i8, align 1
  %res = alloca i32, align 4
  %res2 = alloca i32, align 4
  %affinity = alloca i8, align 1
  %flags1840 = alloca i16, align 2
  %flags3 = alloca i16, align 2
  %n1074 = alloca i32, align 4
  %i1075 = alloca i32, align 4
  %p11076 = alloca i32, align 4
  %p21077 = alloca i32, align 4
  %pKeyInfo = alloca ptr, align 8
  %idx = alloca i32, align 4
  %pColl = alloca ptr, align 8
  %bRev = alloca i32, align 4
  %aPermute = alloca ptr, align 8
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %iAddr = alloca i32, align 4
  %c = alloca i32, align 4
  %c1323 = alloca i32, align 4
  %p21370 = alloca i32, align 4
  %pC = alloca ptr, align 8
  %pCrsr = alloca ptr, align 8
  %aOffset = alloca ptr, align 8
  %len = alloca i32, align 4
  %i1371 = alloca i32, align 4
  %pDest = alloca ptr, align 8
  %sMem = alloca %struct.sqlite3_value, align 8
  %zData = alloca ptr, align 8
  %zHdr = alloca ptr, align 8
  %zEndHdr = alloca ptr, align 8
  %offset64 = alloca i64, align 8
  %t = alloca i32, align 4
  %pReg = alloca ptr, align 8
  %zAffinity = alloca ptr, align 8
  %pRec = alloca ptr, align 8
  %nData = alloca i64, align 8
  %nHdr = alloca i32, align 4
  %nByte1761 = alloca i64, align 8
  %nZero = alloca i64, align 8
  %nVarint = alloca i32, align 4
  %serial_type = alloca i32, align 4
  %pData0 = alloca ptr, align 8
  %pLast = alloca ptr, align 8
  %nField = alloca i32, align 4
  %zAffinity1762 = alloca ptr, align 8
  %file_format = alloca i32, align 4
  %len1763 = alloca i32, align 4
  %zHdr1764 = alloca ptr, align 8
  %zPayload = alloca ptr, align 8
  %i1828 = alloca i64, align 8
  %uu = alloca i64, align 8
  %nEntry = alloca i64, align 8
  %pCrsr2055 = alloca ptr, align 8
  %p12068 = alloca i32, align 4
  %zName = alloca ptr, align 8
  %nName = alloca i32, align 4
  %pNew = alloca ptr, align 8
  %pSavepoint = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %iSavepoint = alloca i32, align 4
  %ii = alloca i32, align 4
  %isTransaction = alloca i32, align 4
  %isSchemaChange = alloca i32, align 4
  %desiredAutoCommit = alloca i32, align 4
  %iRollback = alloca i32, align 4
  %pBt2322 = alloca ptr, align 8
  %iMeta = alloca i32, align 4
  %iMeta2429 = alloca i32, align 4
  %iDb = alloca i32, align 4
  %iCookie = alloca i32, align 4
  %pDb = alloca ptr, align 8
  %nField2481 = alloca i32, align 4
  %pKeyInfo2482 = alloca ptr, align 8
  %p22483 = alloca i32, align 4
  %iDb2484 = alloca i32, align 4
  %wrFlag = alloca i32, align 4
  %pX = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pDb2485 = alloca ptr, align 8
  %pOrig = alloca ptr, align 8
  %pCx = alloca ptr, align 8
  %pCx2625 = alloca ptr, align 8
  %pKeyInfo2626 = alloca ptr, align 8
  %pCx2712 = alloca ptr, align 8
  %pC2728 = alloca ptr, align 8
  %pCx2740 = alloca ptr, align 8
  %res2764 = alloca i32, align 4
  %oc = alloca i32, align 4
  %pC2765 = alloca ptr, align 8
  %r = alloca %struct.UnpackedRecord, align 8
  %nField2766 = alloca i32, align 4
  %iKey = alloca i64, align 8
  %eqOnly = alloca i32, align 4
  %flags32778 = alloca i16, align 2
  %newType = alloca i16, align 2
  %pC2945 = alloca ptr, align 8
  %pC2959 = alloca ptr, align 8
  %alreadyExists = alloca i32, align 4
  %takeJump = alloca i32, align 4
  %ii2973 = alloca i32, align 4
  %pC2974 = alloca ptr, align 8
  %res2975 = alloca i32, align 4
  %pFree = alloca ptr, align 8
  %pIdxKey = alloca ptr, align 8
  %r2976 = alloca %struct.UnpackedRecord, align 8
  %pC3075 = alloca ptr, align 8
  %pCrsr3076 = alloca ptr, align 8
  %res3077 = alloca i32, align 4
  %iKey3078 = alloca i64, align 8
  %x = alloca %struct.sqlite3_value, align 8
  %v = alloca i64, align 8
  %pC3138 = alloca ptr, align 8
  %res3139 = alloca i32, align 4
  %cnt3140 = alloca i32, align 4
  %pMem3141 = alloca ptr, align 8
  %pFrame3142 = alloca ptr, align 8
  %pData = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %pC3260 = alloca ptr, align 8
  %seekResult3261 = alloca i32, align 4
  %zDb = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %x3262 = alloca %struct.BtreePayload, align 8
  %pC3349 = alloca ptr, align 8
  %zDb3350 = alloca ptr, align 8
  %pTab3351 = alloca ptr, align 8
  %opflags = alloca i32, align 4
  %pC3418 = alloca ptr, align 8
  %res3419 = alloca i32, align 4
  %nKeyCol = alloca i32, align 4
  %pC3436 = alloca ptr, align 8
  %pC3454 = alloca ptr, align 8
  %pCrsr3455 = alloca ptr, align 8
  %n3456 = alloca i32, align 4
  %pC3489 = alloca ptr, align 8
  %v3490 = alloca i64, align 8
  %pVtab = alloca ptr, align 8
  %pModule = alloca ptr, align 8
  %pC3536 = alloca ptr, align 8
  %pC3551 = alloca ptr, align 8
  %pCrsr3552 = alloca ptr, align 8
  %res3553 = alloca i32, align 4
  %pC3587 = alloca ptr, align 8
  %pCrsr3588 = alloca ptr, align 8
  %res3589 = alloca i32, align 4
  %sz = alloca i64, align 8
  %pC3622 = alloca ptr, align 8
  %pCrsr3623 = alloca ptr, align 8
  %res3624 = alloca i32, align 4
  %pC3650 = alloca ptr, align 8
  %pC3682 = alloca ptr, align 8
  %x3683 = alloca %struct.BtreePayload, align 8
  %pC3749 = alloca ptr, align 8
  %pCrsr3750 = alloca ptr, align 8
  %res3751 = alloca i32, align 4
  %r3752 = alloca %struct.UnpackedRecord, align 8
  %pC3783 = alloca ptr, align 8
  %pTabCur = alloca ptr, align 8
  %rowid = alloca i64, align 8
  %pC3825 = alloca ptr, align 8
  %res3826 = alloca i32, align 4
  %r3827 = alloca %struct.UnpackedRecord, align 8
  %iMoved = alloca i32, align 4
  %iDb3869 = alloca i32, align 4
  %nChange3901 = alloca i32, align 4
  %pC3936 = alloca ptr, align 8
  %pgno = alloca i32, align 4
  %pDb3955 = alloca ptr, align 8
  %iDb3979 = alloca i32, align 4
  %zMaster = alloca ptr, align 8
  %zSql3980 = alloca ptr, align 8
  %initData = alloca %struct.InitData, align 8
  %nRoot = alloca i32, align 4
  %aRoot = alloca ptr, align 8
  %nErr = alloca i32, align 4
  %z4057 = alloca ptr, align 8
  %pnErr = alloca ptr, align 8
  %val = alloca i64, align 8
  %iSet = alloca i32, align 4
  %exists = alloca i32, align 4
  %nMem4168 = alloca i32, align 4
  %nByte4169 = alloca i32, align 4
  %pRt = alloca ptr, align 8
  %pMem4170 = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pFrame4171 = alloca ptr, align 8
  %pProgram = alloca ptr, align 8
  %t4172 = alloca ptr, align 8
  %pFrame4318 = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  %pFrame4379 = alloca ptr, align 8
  %x4427 = alloca i64, align 8
  %n4486 = alloca i32, align 4
  %pCtx = alloca ptr, align 8
  %i4513 = alloca i32, align 4
  %pCtx4514 = alloca ptr, align 8
  %pMem4515 = alloca ptr, align 8
  %pMem4591 = alloca ptr, align 8
  %i4621 = alloca i32, align 4
  %aRes = alloca [3 x i32], align 4
  %pMem4622 = alloca ptr, align 8
  %pBt4654 = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %eNew = alloca i32, align 4
  %eOld = alloca i32, align 4
  %zFilename = alloca ptr, align 8
  %pBt4763 = alloca ptr, align 8
  %isWriteLock = alloca i8, align 1
  %p14803 = alloca i32, align 4
  %z4817 = alloca ptr, align 8
  %pVTab = alloca ptr, align 8
  %sMem4833 = alloca %struct.sqlite3_value, align 8
  %zTab = alloca ptr, align 8
  %pCur4861 = alloca ptr, align 8
  %pVCur = alloca ptr, align 8
  %pVtab4862 = alloca ptr, align 8
  %pModule4863 = alloca ptr, align 8
  %nArg = alloca i32, align 4
  %iQuery = alloca i32, align 4
  %pModule4890 = alloca ptr, align 8
  %pQuery = alloca ptr, align 8
  %pArgc = alloca ptr, align 8
  %pVCur4891 = alloca ptr, align 8
  %pVtab4892 = alloca ptr, align 8
  %pCur4893 = alloca ptr, align 8
  %res4894 = alloca i32, align 4
  %i4895 = alloca i32, align 4
  %apArg = alloca ptr, align 8
  %pVtab4935 = alloca ptr, align 8
  %pModule4936 = alloca ptr, align 8
  %pDest4937 = alloca ptr, align 8
  %sContext = alloca %struct.sqlite3_context, align 8
  %pCur4938 = alloca ptr, align 8
  %pVtab4989 = alloca ptr, align 8
  %pModule4990 = alloca ptr, align 8
  %res4991 = alloca i32, align 4
  %pCur4992 = alloca ptr, align 8
  %pVtab5016 = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %isLegacy = alloca i32, align 4
  %pVtab5048 = alloca ptr, align 8
  %pModule5049 = alloca ptr, align 8
  %nArg5050 = alloca i32, align 4
  %i5051 = alloca i32, align 4
  %rowid5052 = alloca i64, align 8
  %apArg5053 = alloca ptr, align 8
  %pX5054 = alloca ptr, align 8
  %vtabOnConflict = alloca i8, align 1
  %newMax = alloca i32, align 4
  %pBt5148 = alloca ptr, align 8
  %n5170 = alloca i32, align 4
  %pCtx5171 = alloca ptr, align 8
  %i5203 = alloca i32, align 4
  %pCtx5204 = alloca ptr, align 8
  %i5275 = alloca i32, align 4
  %zTrace = alloca ptr, align 8
  %x5304 = alloca ptr, align 8
  %z5306 = alloca ptr, align 8
  %z5313 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %aOp1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 23
  %1 = load ptr, ptr %aOp1, align 8
  store ptr %1, ptr %aOp, align 8
  %2 = load ptr, ptr %aOp, align 8
  store ptr %2, ptr %pOp, align 8
  store i32 0, ptr %rc, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db2, align 8
  store ptr %4, ptr %db, align 8
  store i8 0, ptr %resetSchemaOnFault, align 1
  %5 = load ptr, ptr %db, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 16
  %6 = load i8, ptr %enc, align 2
  store i8 %6, ptr %encoding, align 1
  store i32 0, ptr %iCompare, align 4
  store i32 0, ptr %nVmStep, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %aMem3 = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 19
  %8 = load ptr, ptr %aMem3, align 8
  store ptr %8, ptr %aMem, align 8
  store ptr null, ptr %pIn1, align 8
  store ptr null, ptr %pIn2, align 8
  store ptr null, ptr %pIn3, align 8
  store ptr null, ptr %pOut, align 8
  %9 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeEnter(ptr noundef %9)
  %10 = load ptr, ptr %db, align 8
  %xProgress = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 64
  %11 = load ptr, ptr %xProgress, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %p.addr, align 8
  %aCounter = getelementptr inbounds nuw %struct.Vdbe, ptr %12, i32 0, i32 39
  %arrayidx = getelementptr inbounds [7 x i32], ptr %aCounter, i64 0, i64 4
  %13 = load i32, ptr %arrayidx, align 8
  store i32 %13, ptr %iPrior, align 4
  %14 = load ptr, ptr %db, align 8
  %nProgressOps = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 66
  %15 = load i32, ptr %nProgressOps, align 8
  %16 = load i32, ptr %iPrior, align 4
  %17 = load ptr, ptr %db, align 8
  %nProgressOps4 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 66
  %18 = load i32, ptr %nProgressOps4, align 8
  %rem = urem i32 %16, %18
  %sub = sub i32 %15, %rem
  store i32 %sub, ptr %nProgressLimit, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 -1, ptr %nProgressLimit, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load ptr, ptr %p.addr, align 8
  %rc5 = getelementptr inbounds nuw %struct.Vdbe, ptr %19, i32 0, i32 11
  %20 = load i32, ptr %rc5, align 8
  %cmp = icmp eq i32 %20, 7
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  br label %no_mem

if.end7:                                          ; preds = %if.end
  %21 = load ptr, ptr %p.addr, align 8
  %iCurrentTime = getelementptr inbounds nuw %struct.Vdbe, ptr %21, i32 0, i32 15
  store i64 0, ptr %iCurrentTime, align 8
  %22 = load ptr, ptr %p.addr, align 8
  %pResultSet = getelementptr inbounds nuw %struct.Vdbe, ptr %22, i32 0, i32 27
  store ptr null, ptr %pResultSet, align 8
  %23 = load ptr, ptr %db, align 8
  %busyHandler = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 74
  %nBusy = getelementptr inbounds nuw %struct.BusyHandler, ptr %busyHandler, i32 0, i32 2
  store i32 0, ptr %nBusy, align 8
  %24 = load ptr, ptr %db, align 8
  %u1 = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 60
  %25 = load volatile i32, ptr %u1, align 8
  %tobool8 = icmp ne i32 %25, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  br label %abort_due_to_interrupt

if.end10:                                         ; preds = %if.end7
  %26 = load ptr, ptr %aOp, align 8
  %27 = load ptr, ptr %p.addr, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %27, i32 0, i32 10
  %28 = load i32, ptr %pc, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx11 = getelementptr inbounds %struct.VdbeOp, ptr %26, i64 %idxprom
  store ptr %arrayidx11, ptr %pOp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5365, %if.end10
  br i1 true, label %for.body, label %for.end5367

for.body:                                         ; preds = %for.cond
  %29 = load i32, ptr %nVmStep, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %nVmStep, align 4
  %30 = load ptr, ptr %pOp, align 8
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %30, i32 0, i32 0
  %31 = load i8, ptr %opcode, align 8
  %conv = zext i8 %31 to i32
  switch i32 %conv, label %sw.default5363 [
    i32 11, label %sw.bb
    i32 12, label %sw.bb29
    i32 66, label %sw.bb38
    i32 13, label %sw.bb45
    i32 67, label %sw.bb57
    i32 14, label %sw.bb68
    i32 68, label %sw.bb84
    i32 69, label %sw.bb94
    i32 70, label %sw.bb160
    i32 71, label %sw.bb165
    i32 148, label %sw.bb169
    i32 113, label %sw.bb174
    i32 72, label %sw.bb214
    i32 73, label %sw.bb238
    i32 74, label %sw.bb257
    i32 75, label %sw.bb267
    i32 76, label %sw.bb273
    i32 77, label %sw.bb300
    i32 78, label %sw.bb325
    i32 79, label %sw.bb354
    i32 80, label %sw.bb361
    i32 81, label %sw.bb369
    i32 108, label %sw.bb422
    i32 103, label %sw.bb557
    i32 104, label %sw.bb557
    i32 105, label %sw.bb557
    i32 106, label %sw.bb557
    i32 107, label %sw.bb557
    i32 82, label %sw.bb679
    i32 99, label %sw.bb687
    i32 100, label %sw.bb687
    i32 101, label %sw.bb687
    i32 102, label %sw.bb687
    i32 83, label %sw.bb772
    i32 15, label %sw.bb781
    i32 84, label %sw.bb810
    i32 85, label %sw.bb821
    i32 53, label %sw.bb839
    i32 52, label %sw.bb839
    i32 56, label %sw.bb839
    i32 55, label %sw.bb839
    i32 54, label %sw.bb839
    i32 57, label %sw.bb839
    i32 58, label %sw.bb1067
    i32 86, label %sw.bb1072
    i32 87, label %sw.bb1073
    i32 16, label %sw.bb1150
    i32 44, label %sw.bb1173
    i32 43, label %sw.bb1173
    i32 88, label %sw.bb1221
    i32 19, label %sw.bb1232
    i32 110, label %sw.bb1250
    i32 17, label %sw.bb1267
    i32 18, label %sw.bb1313
    i32 20, label %sw.bb1322
    i32 50, label %sw.bb1338
    i32 51, label %sw.bb1349
    i32 21, label %sw.bb1360
    i32 90, label %sw.bb1369
    i32 91, label %sw.bb1702
    i32 92, label %sw.bb1760
    i32 93, label %sw.bb2054
    i32 0, label %sw.bb2067
    i32 1, label %sw.bb2263
    i32 2, label %sw.bb2321
    i32 94, label %sw.bb2428
    i32 95, label %sw.bb2439
    i32 96, label %sw.bb2480
    i32 97, label %sw.bb2497
    i32 98, label %sw.bb2497
    i32 109, label %sw.bb2588
    i32 111, label %sw.bb2624
    i32 112, label %sw.bb2624
    i32 114, label %sw.bb2711
    i32 115, label %sw.bb2727
    i32 116, label %sw.bb2739
    i32 117, label %sw.bb2754
    i32 22, label %sw.bb2763
    i32 23, label %sw.bb2763
    i32 24, label %sw.bb2763
    i32 25, label %sw.bb2763
    i32 119, label %sw.bb2944
    i32 26, label %sw.bb2958
    i32 27, label %sw.bb2972
    i32 28, label %sw.bb2972
    i32 29, label %sw.bb2972
    i32 30, label %sw.bb3074
    i32 31, label %sw.bb3098
    i32 120, label %sw.bb3128
    i32 121, label %sw.bb3137
    i32 122, label %sw.bb3259
    i32 123, label %sw.bb3348
    i32 124, label %sw.bb3414
    i32 125, label %sw.bb3417
    i32 126, label %sw.bb3435
    i32 127, label %sw.bb3453
    i32 128, label %sw.bb3488
    i32 129, label %sw.bb3535
    i32 130, label %sw.bb3550
    i32 32, label %sw.bb3550
    i32 33, label %sw.bb3586
    i32 34, label %sw.bb3617
    i32 35, label %sw.bb3617
    i32 36, label %sw.bb3621
    i32 3, label %sw.bb3649
    i32 4, label %sw.bb3656
    i32 5, label %sw.bb3656
    i32 131, label %sw.bb3681
    i32 132, label %sw.bb3681
    i32 133, label %sw.bb3748
    i32 134, label %sw.bb3782
    i32 135, label %sw.bb3782
    i32 37, label %sw.bb3824
    i32 38, label %sw.bb3824
    i32 39, label %sw.bb3824
    i32 40, label %sw.bb3824
    i32 136, label %sw.bb3868
    i32 137, label %sw.bb3900
    i32 138, label %sw.bb3935
    i32 139, label %sw.bb3954
    i32 140, label %sw.bb3969
    i32 141, label %sw.bb3978
    i32 142, label %sw.bb4041
    i32 143, label %sw.bb4047
    i32 144, label %sw.bb4050
    i32 145, label %sw.bb4053
    i32 146, label %sw.bb4056
    i32 147, label %sw.bb4093
    i32 41, label %sw.bb4113
    i32 42, label %sw.bb4133
    i32 45, label %sw.bb4167
    i32 149, label %sw.bb4317
    i32 150, label %sw.bb4331
    i32 46, label %sw.bb4354
    i32 151, label %sw.bb4378
    i32 47, label %sw.bb4413
    i32 152, label %sw.bb4426
    i32 48, label %sw.bb4454
    i32 49, label %sw.bb4469
    i32 153, label %sw.bb4485
    i32 154, label %sw.bb4485
    i32 155, label %sw.bb4512
    i32 156, label %sw.bb4590
    i32 157, label %sw.bb4590
    i32 6, label %sw.bb4620
    i32 7, label %sw.bb4653
    i32 8, label %sw.bb4746
    i32 59, label %sw.bb4762
    i32 158, label %sw.bb4777
    i32 159, label %sw.bb4792
    i32 160, label %sw.bb4822
    i32 161, label %sw.bb4832
    i32 162, label %sw.bb4849
    i32 163, label %sw.bb4860
    i32 9, label %sw.bb4889
    i32 164, label %sw.bb4934
    i32 60, label %sw.bb4988
    i32 165, label %sw.bb5015
    i32 10, label %sw.bb5047
    i32 166, label %sw.bb5137
    i32 167, label %sw.bb5147
    i32 62, label %sw.bb5169
    i32 63, label %sw.bb5169
    i32 64, label %sw.bb5202
    i32 65, label %sw.bb5202
    i32 168, label %sw.bb5274
    i32 61, label %sw.bb5274
  ]

sw.bb:                                            ; preds = %for.body
  br label %jump_to_p2_and_check_for_interrupt

jump_to_p2_and_check_for_interrupt:               ; preds = %if.then5013, %if.then4127, %if.then3668, %sw.bb
  %32 = load ptr, ptr %aOp, align 8
  %33 = load ptr, ptr %pOp, align 8
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %33, i32 0, i32 4
  %34 = load i32, ptr %p2, align 8
  %sub12 = sub nsw i32 %34, 1
  %idxprom13 = sext i32 %sub12 to i64
  %arrayidx14 = getelementptr inbounds %struct.VdbeOp, ptr %32, i64 %idxprom13
  store ptr %arrayidx14, ptr %pOp, align 8
  br label %check_for_interrupt

check_for_interrupt:                              ; preds = %if.end5014, %if.end4275, %if.end4132, %if.end3679, %jump_to_p2_and_check_for_interrupt
  %35 = load ptr, ptr %db, align 8
  %u115 = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 60
  %36 = load volatile i32, ptr %u115, align 8
  %tobool16 = icmp ne i32 %36, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %check_for_interrupt
  br label %abort_due_to_interrupt

if.end18:                                         ; preds = %check_for_interrupt
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end18
  %37 = load i32, ptr %nVmStep, align 4
  %38 = load i32, ptr %nProgressLimit, align 4
  %cmp19 = icmp uge i32 %37, %38
  br i1 %cmp19, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %39 = load ptr, ptr %db, align 8
  %xProgress21 = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 64
  %40 = load ptr, ptr %xProgress21, align 8
  %cmp22 = icmp ne ptr %40, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load ptr, ptr %db, align 8
  %nProgressOps24 = getelementptr inbounds nuw %struct.sqlite3, ptr %42, i32 0, i32 66
  %43 = load i32, ptr %nProgressOps24, align 8
  %44 = load i32, ptr %nProgressLimit, align 4
  %add = add i32 %44, %43
  store i32 %add, ptr %nProgressLimit, align 4
  %45 = load ptr, ptr %db, align 8
  %xProgress25 = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 64
  %46 = load ptr, ptr %xProgress25, align 8
  %47 = load ptr, ptr %db, align 8
  %pProgressArg = getelementptr inbounds nuw %struct.sqlite3, ptr %47, i32 0, i32 65
  %48 = load ptr, ptr %pProgressArg, align 8
  %call = call i32 %46(ptr noundef %48)
  %tobool26 = icmp ne i32 %call, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %while.body
  store i32 -1, ptr %nProgressLimit, align 4
  store i32 9, ptr %rc, align 4
  br label %abort_due_to_error

if.end28:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %sw.epilog5364

sw.bb29:                                          ; preds = %for.body
  %49 = load ptr, ptr %aMem, align 8
  %50 = load ptr, ptr %pOp, align 8
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %50, i32 0, i32 3
  %51 = load i32, ptr %p1, align 4
  %idxprom30 = sext i32 %51 to i64
  %arrayidx31 = getelementptr inbounds %struct.sqlite3_value, ptr %49, i64 %idxprom30
  store ptr %arrayidx31, ptr %pIn1, align 8
  %52 = load ptr, ptr %pIn1, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %52, i32 0, i32 1
  store i16 4, ptr %flags, align 8
  %53 = load ptr, ptr %pOp, align 8
  %54 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %53 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %54 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv32 = trunc i64 %sub.ptr.div to i32
  %conv33 = sext i32 %conv32 to i64
  %55 = load ptr, ptr %pIn1, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %55, i32 0, i32 0
  store i64 %conv33, ptr %u, align 8
  br label %jump_to_p2

jump_to_p2:                                       ; preds = %if.end5357, %if.then4932, %if.end4775, %if.then4483, %if.end4467, %if.then4420, %if.then4375, %if.then4365, %if.then4158, %if.then3866, %if.then3647, %if.then3615, %if.then3583, %if.then3433, %if.else3122, %if.then3094, %if.then3071, %if.then3065, %if.then2937, %if.then2808, %if.then2737, %if.then1365, %if.then1358, %if.then1347, %if.then1336, %if.then1320, %if.then1306, %if.then1287, %if.then1070, %if.then1064, %if.then898, %if.else801, %if.then55, %sw.bb29
  %56 = load ptr, ptr %aOp, align 8
  %57 = load ptr, ptr %pOp, align 8
  %p234 = getelementptr inbounds nuw %struct.VdbeOp, ptr %57, i32 0, i32 4
  %58 = load i32, ptr %p234, align 8
  %sub35 = sub nsw i32 %58, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds %struct.VdbeOp, ptr %56, i64 %idxprom36
  store ptr %arrayidx37, ptr %pOp, align 8
  br label %sw.epilog5364

sw.bb38:                                          ; preds = %for.body
  %59 = load ptr, ptr %aMem, align 8
  %60 = load ptr, ptr %pOp, align 8
  %p139 = getelementptr inbounds nuw %struct.VdbeOp, ptr %60, i32 0, i32 3
  %61 = load i32, ptr %p139, align 4
  %idxprom40 = sext i32 %61 to i64
  %arrayidx41 = getelementptr inbounds %struct.sqlite3_value, ptr %59, i64 %idxprom40
  store ptr %arrayidx41, ptr %pIn1, align 8
  %62 = load ptr, ptr %aOp, align 8
  %63 = load ptr, ptr %pIn1, align 8
  %u42 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %63, i32 0, i32 0
  %64 = load i64, ptr %u42, align 8
  %arrayidx43 = getelementptr inbounds %struct.VdbeOp, ptr %62, i64 %64
  store ptr %arrayidx43, ptr %pOp, align 8
  %65 = load ptr, ptr %pIn1, align 8
  %flags44 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %65, i32 0, i32 1
  store i16 128, ptr %flags44, align 8
  br label %sw.epilog5364

sw.bb45:                                          ; preds = %for.body
  %66 = load ptr, ptr %aMem, align 8
  %67 = load ptr, ptr %pOp, align 8
  %p146 = getelementptr inbounds nuw %struct.VdbeOp, ptr %67, i32 0, i32 3
  %68 = load i32, ptr %p146, align 4
  %idxprom47 = sext i32 %68 to i64
  %arrayidx48 = getelementptr inbounds %struct.sqlite3_value, ptr %66, i64 %idxprom47
  store ptr %arrayidx48, ptr %pOut, align 8
  %69 = load ptr, ptr %pOp, align 8
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %69, i32 0, i32 5
  %70 = load i32, ptr %p3, align 4
  %sub49 = sub nsw i32 %70, 1
  %conv50 = sext i32 %sub49 to i64
  %71 = load ptr, ptr %pOut, align 8
  %u51 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %71, i32 0, i32 0
  store i64 %conv50, ptr %u51, align 8
  %72 = load ptr, ptr %pOut, align 8
  %flags52 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %72, i32 0, i32 1
  store i16 4, ptr %flags52, align 8
  %73 = load ptr, ptr %pOp, align 8
  %p253 = getelementptr inbounds nuw %struct.VdbeOp, ptr %73, i32 0, i32 4
  %74 = load i32, ptr %p253, align 8
  %tobool54 = icmp ne i32 %74, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %sw.bb45
  br label %jump_to_p2

if.end56:                                         ; preds = %sw.bb45
  br label %sw.epilog5364

sw.bb57:                                          ; preds = %for.body
  %75 = load ptr, ptr %aMem, align 8
  %76 = load ptr, ptr %pOp, align 8
  %p158 = getelementptr inbounds nuw %struct.VdbeOp, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %p158, align 4
  %idxprom59 = sext i32 %77 to i64
  %arrayidx60 = getelementptr inbounds %struct.sqlite3_value, ptr %75, i64 %idxprom59
  store ptr %arrayidx60, ptr %pIn1, align 8
  %78 = load ptr, ptr %aOp, align 8
  %79 = load ptr, ptr %pIn1, align 8
  %u61 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %79, i32 0, i32 0
  %80 = load i64, ptr %u61, align 8
  %arrayidx62 = getelementptr inbounds %struct.VdbeOp, ptr %78, i64 %80
  store ptr %arrayidx62, ptr %pCaller, align 8
  %81 = load ptr, ptr %aOp, align 8
  %82 = load ptr, ptr %pCaller, align 8
  %p263 = getelementptr inbounds nuw %struct.VdbeOp, ptr %82, i32 0, i32 4
  %83 = load i32, ptr %p263, align 8
  %sub64 = sub nsw i32 %83, 1
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds %struct.VdbeOp, ptr %81, i64 %idxprom65
  store ptr %arrayidx66, ptr %pOp, align 8
  %84 = load ptr, ptr %pIn1, align 8
  %flags67 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %84, i32 0, i32 1
  store i16 128, ptr %flags67, align 8
  br label %sw.epilog5364

sw.bb68:                                          ; preds = %for.body
  %85 = load ptr, ptr %aMem, align 8
  %86 = load ptr, ptr %pOp, align 8
  %p169 = getelementptr inbounds nuw %struct.VdbeOp, ptr %86, i32 0, i32 3
  %87 = load i32, ptr %p169, align 4
  %idxprom70 = sext i32 %87 to i64
  %arrayidx71 = getelementptr inbounds %struct.sqlite3_value, ptr %85, i64 %idxprom70
  store ptr %arrayidx71, ptr %pIn1, align 8
  %88 = load ptr, ptr %pIn1, align 8
  %flags72 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %88, i32 0, i32 1
  store i16 4, ptr %flags72, align 8
  %89 = load ptr, ptr %pIn1, align 8
  %u73 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %89, i32 0, i32 0
  %90 = load i64, ptr %u73, align 8
  %conv74 = trunc i64 %90 to i32
  store i32 %conv74, ptr %pcDest, align 4
  %91 = load ptr, ptr %pOp, align 8
  %92 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast75 = ptrtoint ptr %91 to i64
  %sub.ptr.rhs.cast76 = ptrtoint ptr %92 to i64
  %sub.ptr.sub77 = sub i64 %sub.ptr.lhs.cast75, %sub.ptr.rhs.cast76
  %sub.ptr.div78 = sdiv exact i64 %sub.ptr.sub77, 24
  %conv79 = trunc i64 %sub.ptr.div78 to i32
  %conv80 = sext i32 %conv79 to i64
  %93 = load ptr, ptr %pIn1, align 8
  %u81 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %93, i32 0, i32 0
  store i64 %conv80, ptr %u81, align 8
  %94 = load ptr, ptr %aOp, align 8
  %95 = load i32, ptr %pcDest, align 4
  %idxprom82 = sext i32 %95 to i64
  %arrayidx83 = getelementptr inbounds %struct.VdbeOp, ptr %94, i64 %idxprom82
  store ptr %arrayidx83, ptr %pOp, align 8
  br label %sw.epilog5364

sw.bb84:                                          ; preds = %for.body
  %96 = load ptr, ptr %aMem, align 8
  %97 = load ptr, ptr %pOp, align 8
  %p385 = getelementptr inbounds nuw %struct.VdbeOp, ptr %97, i32 0, i32 5
  %98 = load i32, ptr %p385, align 4
  %idxprom86 = sext i32 %98 to i64
  %arrayidx87 = getelementptr inbounds %struct.sqlite3_value, ptr %96, i64 %idxprom86
  store ptr %arrayidx87, ptr %pIn3, align 8
  %99 = load ptr, ptr %pIn3, align 8
  %flags88 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %99, i32 0, i32 1
  %100 = load i16, ptr %flags88, align 8
  %conv89 = zext i16 %100 to i32
  %and = and i32 %conv89, 1
  %cmp90 = icmp eq i32 %and, 0
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %sw.bb84
  br label %sw.epilog5364

if.end93:                                         ; preds = %sw.bb84
  br label %sw.bb94

sw.bb94:                                          ; preds = %if.end93, %for.body
  %101 = load ptr, ptr %pOp, align 8
  %102 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast95 = ptrtoint ptr %101 to i64
  %sub.ptr.rhs.cast96 = ptrtoint ptr %102 to i64
  %sub.ptr.sub97 = sub i64 %sub.ptr.lhs.cast95, %sub.ptr.rhs.cast96
  %sub.ptr.div98 = sdiv exact i64 %sub.ptr.sub97, 24
  %conv99 = trunc i64 %sub.ptr.div98 to i32
  store i32 %conv99, ptr %pcx, align 4
  %103 = load ptr, ptr %pOp, align 8
  %p1100 = getelementptr inbounds nuw %struct.VdbeOp, ptr %103, i32 0, i32 3
  %104 = load i32, ptr %p1100, align 4
  %cmp101 = icmp eq i32 %104, 0
  br i1 %cmp101, label %land.lhs.true, label %if.end123

land.lhs.true:                                    ; preds = %sw.bb94
  %105 = load ptr, ptr %p.addr, align 8
  %pFrame103 = getelementptr inbounds nuw %struct.Vdbe, ptr %105, i32 0, i32 43
  %106 = load ptr, ptr %pFrame103, align 8
  %tobool104 = icmp ne ptr %106, null
  br i1 %tobool104, label %if.then105, label %if.end123

if.then105:                                       ; preds = %land.lhs.true
  %107 = load ptr, ptr %p.addr, align 8
  %pFrame106 = getelementptr inbounds nuw %struct.Vdbe, ptr %107, i32 0, i32 43
  %108 = load ptr, ptr %pFrame106, align 8
  store ptr %108, ptr %pFrame, align 8
  %109 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VdbeFrame, ptr %109, i32 0, i32 1
  %110 = load ptr, ptr %pParent, align 8
  %111 = load ptr, ptr %p.addr, align 8
  %pFrame107 = getelementptr inbounds nuw %struct.Vdbe, ptr %111, i32 0, i32 43
  store ptr %110, ptr %pFrame107, align 8
  %112 = load ptr, ptr %p.addr, align 8
  %nFrame = getelementptr inbounds nuw %struct.Vdbe, ptr %112, i32 0, i32 45
  %113 = load i32, ptr %nFrame, align 8
  %dec = add nsw i32 %113, -1
  store i32 %dec, ptr %nFrame, align 8
  %114 = load ptr, ptr %db, align 8
  %115 = load ptr, ptr %p.addr, align 8
  %nChange = getelementptr inbounds nuw %struct.Vdbe, ptr %115, i32 0, i32 12
  %116 = load i32, ptr %nChange, align 4
  call void @sqlite3VdbeSetChanges(ptr noundef %114, i32 noundef %116)
  %117 = load ptr, ptr %pFrame, align 8
  %call108 = call i32 @sqlite3VdbeFrameRestore(ptr noundef %117)
  store i32 %call108, ptr %pcx, align 4
  %118 = load ptr, ptr %pOp, align 8
  %p2109 = getelementptr inbounds nuw %struct.VdbeOp, ptr %118, i32 0, i32 4
  %119 = load i32, ptr %p2109, align 8
  %cmp110 = icmp eq i32 %119, 4
  br i1 %cmp110, label %if.then112, label %if.end118

if.then112:                                       ; preds = %if.then105
  %120 = load ptr, ptr %p.addr, align 8
  %aOp113 = getelementptr inbounds nuw %struct.Vdbe, ptr %120, i32 0, i32 23
  %121 = load ptr, ptr %aOp113, align 8
  %122 = load i32, ptr %pcx, align 4
  %idxprom114 = sext i32 %122 to i64
  %arrayidx115 = getelementptr inbounds %struct.VdbeOp, ptr %121, i64 %idxprom114
  %p2116 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx115, i32 0, i32 4
  %123 = load i32, ptr %p2116, align 8
  %sub117 = sub nsw i32 %123, 1
  store i32 %sub117, ptr %pcx, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %if.then105
  %124 = load ptr, ptr %p.addr, align 8
  %aOp119 = getelementptr inbounds nuw %struct.Vdbe, ptr %124, i32 0, i32 23
  %125 = load ptr, ptr %aOp119, align 8
  store ptr %125, ptr %aOp, align 8
  %126 = load ptr, ptr %p.addr, align 8
  %aMem120 = getelementptr inbounds nuw %struct.Vdbe, ptr %126, i32 0, i32 19
  %127 = load ptr, ptr %aMem120, align 8
  store ptr %127, ptr %aMem, align 8
  %128 = load ptr, ptr %aOp, align 8
  %129 = load i32, ptr %pcx, align 4
  %idxprom121 = sext i32 %129 to i64
  %arrayidx122 = getelementptr inbounds %struct.VdbeOp, ptr %128, i64 %idxprom121
  store ptr %arrayidx122, ptr %pOp, align 8
  br label %sw.epilog5364

if.end123:                                        ; preds = %land.lhs.true, %sw.bb94
  %130 = load ptr, ptr %pOp, align 8
  %p1124 = getelementptr inbounds nuw %struct.VdbeOp, ptr %130, i32 0, i32 3
  %131 = load i32, ptr %p1124, align 4
  %132 = load ptr, ptr %p.addr, align 8
  %rc125 = getelementptr inbounds nuw %struct.Vdbe, ptr %132, i32 0, i32 11
  store i32 %131, ptr %rc125, align 8
  %133 = load ptr, ptr %pOp, align 8
  %p2126 = getelementptr inbounds nuw %struct.VdbeOp, ptr %133, i32 0, i32 4
  %134 = load i32, ptr %p2126, align 8
  %conv127 = trunc i32 %134 to i8
  %135 = load ptr, ptr %p.addr, align 8
  %errorAction = getelementptr inbounds nuw %struct.Vdbe, ptr %135, i32 0, i32 32
  store i8 %conv127, ptr %errorAction, align 2
  %136 = load i32, ptr %pcx, align 4
  %137 = load ptr, ptr %p.addr, align 8
  %pc128 = getelementptr inbounds nuw %struct.Vdbe, ptr %137, i32 0, i32 10
  store i32 %136, ptr %pc128, align 4
  %138 = load ptr, ptr %p.addr, align 8
  %rc129 = getelementptr inbounds nuw %struct.Vdbe, ptr %138, i32 0, i32 11
  %139 = load i32, ptr %rc129, align 8
  %tobool130 = icmp ne i32 %139, 0
  br i1 %tobool130, label %if.then131, label %if.end150

if.then131:                                       ; preds = %if.end123
  %140 = load ptr, ptr %pOp, align 8
  %p5 = getelementptr inbounds nuw %struct.VdbeOp, ptr %140, i32 0, i32 2
  %141 = load i16, ptr %p5, align 2
  %tobool132 = icmp ne i16 %141, 0
  br i1 %tobool132, label %if.then133, label %if.else145

if.then133:                                       ; preds = %if.then131
  %142 = load ptr, ptr %p.addr, align 8
  %143 = load ptr, ptr %pOp, align 8
  %p5134 = getelementptr inbounds nuw %struct.VdbeOp, ptr %143, i32 0, i32 2
  %144 = load i16, ptr %p5134, align 2
  %conv135 = zext i16 %144 to i32
  %sub136 = sub nsw i32 %conv135, 1
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds [4 x ptr], ptr @sqlite3VdbeExec.azType, i64 0, i64 %idxprom137
  %145 = load ptr, ptr %arrayidx138, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %142, ptr noundef @.str.309, ptr noundef %145)
  %146 = load ptr, ptr %pOp, align 8
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %146, i32 0, i32 6
  %147 = load ptr, ptr %p4, align 8
  %tobool139 = icmp ne ptr %147, null
  br i1 %tobool139, label %if.then140, label %if.end144

if.then140:                                       ; preds = %if.then133
  %148 = load ptr, ptr %db, align 8
  %149 = load ptr, ptr %p.addr, align 8
  %zErrMsg = getelementptr inbounds nuw %struct.Vdbe, ptr %149, i32 0, i32 28
  %150 = load ptr, ptr %zErrMsg, align 8
  %151 = load ptr, ptr %pOp, align 8
  %p4141 = getelementptr inbounds nuw %struct.VdbeOp, ptr %151, i32 0, i32 6
  %152 = load ptr, ptr %p4141, align 8
  %call142 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %148, ptr noundef @.str.310, ptr noundef %150, ptr noundef %152)
  %153 = load ptr, ptr %p.addr, align 8
  %zErrMsg143 = getelementptr inbounds nuw %struct.Vdbe, ptr %153, i32 0, i32 28
  store ptr %call142, ptr %zErrMsg143, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then140, %if.then133
  br label %if.end147

if.else145:                                       ; preds = %if.then131
  %154 = load ptr, ptr %p.addr, align 8
  %155 = load ptr, ptr %pOp, align 8
  %p4146 = getelementptr inbounds nuw %struct.VdbeOp, ptr %155, i32 0, i32 6
  %156 = load ptr, ptr %p4146, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %154, ptr noundef @.str.20, ptr noundef %156)
  br label %if.end147

if.end147:                                        ; preds = %if.else145, %if.end144
  %157 = load ptr, ptr %pOp, align 8
  %p1148 = getelementptr inbounds nuw %struct.VdbeOp, ptr %157, i32 0, i32 3
  %158 = load i32, ptr %p1148, align 4
  %159 = load i32, ptr %pcx, align 4
  %160 = load ptr, ptr %p.addr, align 8
  %zSql = getelementptr inbounds nuw %struct.Vdbe, ptr %160, i32 0, i32 41
  %161 = load ptr, ptr %zSql, align 8
  %162 = load ptr, ptr %p.addr, align 8
  %zErrMsg149 = getelementptr inbounds nuw %struct.Vdbe, ptr %162, i32 0, i32 28
  %163 = load ptr, ptr %zErrMsg149, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %158, ptr noundef @.str.311, i32 noundef %159, ptr noundef %161, ptr noundef %163)
  br label %if.end150

if.end150:                                        ; preds = %if.end147, %if.end123
  %164 = load ptr, ptr %p.addr, align 8
  %call151 = call i32 @sqlite3VdbeHalt(ptr noundef %164)
  store i32 %call151, ptr %rc, align 4
  %165 = load i32, ptr %rc, align 4
  %cmp152 = icmp eq i32 %165, 5
  br i1 %cmp152, label %if.then154, label %if.else156

if.then154:                                       ; preds = %if.end150
  %166 = load ptr, ptr %p.addr, align 8
  %rc155 = getelementptr inbounds nuw %struct.Vdbe, ptr %166, i32 0, i32 11
  store i32 5, ptr %rc155, align 8
  br label %if.end159

if.else156:                                       ; preds = %if.end150
  %167 = load ptr, ptr %p.addr, align 8
  %rc157 = getelementptr inbounds nuw %struct.Vdbe, ptr %167, i32 0, i32 11
  %168 = load i32, ptr %rc157, align 8
  %tobool158 = icmp ne i32 %168, 0
  %169 = zext i1 %tobool158 to i64
  %cond = select i1 %tobool158, i32 1, i32 101
  store i32 %cond, ptr %rc, align 4
  br label %if.end159

if.end159:                                        ; preds = %if.else156, %if.then154
  br label %vdbe_return

sw.bb160:                                         ; preds = %for.body
  %170 = load ptr, ptr %p.addr, align 8
  %171 = load ptr, ptr %pOp, align 8
  %call161 = call ptr @out2Prerelease(ptr noundef %170, ptr noundef %171)
  store ptr %call161, ptr %pOut, align 8
  %172 = load ptr, ptr %pOp, align 8
  %p1162 = getelementptr inbounds nuw %struct.VdbeOp, ptr %172, i32 0, i32 3
  %173 = load i32, ptr %p1162, align 4
  %conv163 = sext i32 %173 to i64
  %174 = load ptr, ptr %pOut, align 8
  %u164 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %174, i32 0, i32 0
  store i64 %conv163, ptr %u164, align 8
  br label %sw.epilog5364

sw.bb165:                                         ; preds = %for.body
  %175 = load ptr, ptr %p.addr, align 8
  %176 = load ptr, ptr %pOp, align 8
  %call166 = call ptr @out2Prerelease(ptr noundef %175, ptr noundef %176)
  store ptr %call166, ptr %pOut, align 8
  %177 = load ptr, ptr %pOp, align 8
  %p4167 = getelementptr inbounds nuw %struct.VdbeOp, ptr %177, i32 0, i32 6
  %178 = load ptr, ptr %p4167, align 8
  %179 = load i64, ptr %178, align 8
  %180 = load ptr, ptr %pOut, align 8
  %u168 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %180, i32 0, i32 0
  store i64 %179, ptr %u168, align 8
  br label %sw.epilog5364

sw.bb169:                                         ; preds = %for.body
  %181 = load ptr, ptr %p.addr, align 8
  %182 = load ptr, ptr %pOp, align 8
  %call170 = call ptr @out2Prerelease(ptr noundef %181, ptr noundef %182)
  store ptr %call170, ptr %pOut, align 8
  %183 = load ptr, ptr %pOut, align 8
  %flags171 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %183, i32 0, i32 1
  store i16 8, ptr %flags171, align 8
  %184 = load ptr, ptr %pOp, align 8
  %p4172 = getelementptr inbounds nuw %struct.VdbeOp, ptr %184, i32 0, i32 6
  %185 = load ptr, ptr %p4172, align 8
  %186 = load double, ptr %185, align 8
  %187 = load ptr, ptr %pOut, align 8
  %u173 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %187, i32 0, i32 0
  store double %186, ptr %u173, align 8
  br label %sw.epilog5364

sw.bb174:                                         ; preds = %for.body
  %188 = load ptr, ptr %p.addr, align 8
  %189 = load ptr, ptr %pOp, align 8
  %call175 = call ptr @out2Prerelease(ptr noundef %188, ptr noundef %189)
  store ptr %call175, ptr %pOut, align 8
  %190 = load ptr, ptr %pOp, align 8
  %p4176 = getelementptr inbounds nuw %struct.VdbeOp, ptr %190, i32 0, i32 6
  %191 = load ptr, ptr %p4176, align 8
  %call177 = call i32 @sqlite3Strlen30(ptr noundef %191)
  %192 = load ptr, ptr %pOp, align 8
  %p1178 = getelementptr inbounds nuw %struct.VdbeOp, ptr %192, i32 0, i32 3
  store i32 %call177, ptr %p1178, align 4
  %193 = load i8, ptr %encoding, align 1
  %conv179 = zext i8 %193 to i32
  %cmp180 = icmp ne i32 %conv179, 1
  br i1 %cmp180, label %if.then182, label %if.end206

if.then182:                                       ; preds = %sw.bb174
  %194 = load ptr, ptr %pOut, align 8
  %195 = load ptr, ptr %pOp, align 8
  %p4183 = getelementptr inbounds nuw %struct.VdbeOp, ptr %195, i32 0, i32 6
  %196 = load ptr, ptr %p4183, align 8
  %call184 = call i32 @sqlite3VdbeMemSetStr(ptr noundef %194, ptr noundef %196, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null)
  store i32 %call184, ptr %rc, align 4
  %197 = load i32, ptr %rc, align 4
  %tobool185 = icmp ne i32 %197, 0
  br i1 %tobool185, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.then182
  br label %too_big

if.end187:                                        ; preds = %if.then182
  %198 = load ptr, ptr %pOut, align 8
  %199 = load i8, ptr %encoding, align 1
  %conv188 = zext i8 %199 to i32
  %call189 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %198, i32 noundef %conv188)
  %cmp190 = icmp ne i32 0, %call189
  br i1 %cmp190, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end187
  br label %no_mem

if.end193:                                        ; preds = %if.end187
  %200 = load ptr, ptr %pOut, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %200, i32 0, i32 7
  store i32 0, ptr %szMalloc, align 8
  %201 = load ptr, ptr %pOut, align 8
  %flags194 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %201, i32 0, i32 1
  %202 = load i16, ptr %flags194, align 8
  %conv195 = zext i16 %202 to i32
  %or = or i32 %conv195, 2048
  %conv196 = trunc i32 %or to i16
  store i16 %conv196, ptr %flags194, align 8
  %203 = load ptr, ptr %pOp, align 8
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %203, i32 0, i32 1
  %204 = load i8, ptr %p4type, align 1
  %conv197 = sext i8 %204 to i32
  %cmp198 = icmp eq i32 %conv197, -7
  br i1 %cmp198, label %if.then200, label %if.end202

if.then200:                                       ; preds = %if.end193
  %205 = load ptr, ptr %db, align 8
  %206 = load ptr, ptr %pOp, align 8
  %p4201 = getelementptr inbounds nuw %struct.VdbeOp, ptr %206, i32 0, i32 6
  %207 = load ptr, ptr %p4201, align 8
  call void @sqlite3DbFree(ptr noundef %205, ptr noundef %207)
  br label %if.end202

if.end202:                                        ; preds = %if.then200, %if.end193
  %208 = load ptr, ptr %pOp, align 8
  %p4type203 = getelementptr inbounds nuw %struct.VdbeOp, ptr %208, i32 0, i32 1
  store i8 -7, ptr %p4type203, align 1
  %209 = load ptr, ptr %pOut, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %209, i32 0, i32 5
  %210 = load ptr, ptr %z, align 8
  %211 = load ptr, ptr %pOp, align 8
  %p4204 = getelementptr inbounds nuw %struct.VdbeOp, ptr %211, i32 0, i32 6
  store ptr %210, ptr %p4204, align 8
  %212 = load ptr, ptr %pOut, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %212, i32 0, i32 4
  %213 = load i32, ptr %n, align 4
  %214 = load ptr, ptr %pOp, align 8
  %p1205 = getelementptr inbounds nuw %struct.VdbeOp, ptr %214, i32 0, i32 3
  store i32 %213, ptr %p1205, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.end202, %sw.bb174
  %215 = load ptr, ptr %pOp, align 8
  %p1207 = getelementptr inbounds nuw %struct.VdbeOp, ptr %215, i32 0, i32 3
  %216 = load i32, ptr %p1207, align 4
  %217 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %217, i32 0, i32 33
  %arrayidx208 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  %218 = load i32, ptr %arrayidx208, align 4
  %cmp209 = icmp sgt i32 %216, %218
  br i1 %cmp209, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.end206
  br label %too_big

if.end212:                                        ; preds = %if.end206
  %219 = load ptr, ptr %pOp, align 8
  %opcode213 = getelementptr inbounds nuw %struct.VdbeOp, ptr %219, i32 0, i32 0
  store i8 72, ptr %opcode213, align 8
  br label %sw.bb214

sw.bb214:                                         ; preds = %if.end212, %for.body
  %220 = load ptr, ptr %p.addr, align 8
  %221 = load ptr, ptr %pOp, align 8
  %call215 = call ptr @out2Prerelease(ptr noundef %220, ptr noundef %221)
  store ptr %call215, ptr %pOut, align 8
  %222 = load ptr, ptr %pOut, align 8
  %flags216 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %222, i32 0, i32 1
  store i16 2562, ptr %flags216, align 8
  %223 = load ptr, ptr %pOp, align 8
  %p4217 = getelementptr inbounds nuw %struct.VdbeOp, ptr %223, i32 0, i32 6
  %224 = load ptr, ptr %p4217, align 8
  %225 = load ptr, ptr %pOut, align 8
  %z218 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %225, i32 0, i32 5
  store ptr %224, ptr %z218, align 8
  %226 = load ptr, ptr %pOp, align 8
  %p1219 = getelementptr inbounds nuw %struct.VdbeOp, ptr %226, i32 0, i32 3
  %227 = load i32, ptr %p1219, align 4
  %228 = load ptr, ptr %pOut, align 8
  %n220 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %228, i32 0, i32 4
  store i32 %227, ptr %n220, align 4
  %229 = load i8, ptr %encoding, align 1
  %230 = load ptr, ptr %pOut, align 8
  %enc221 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %230, i32 0, i32 2
  store i8 %229, ptr %enc221, align 2
  %231 = load ptr, ptr %pOp, align 8
  %p3222 = getelementptr inbounds nuw %struct.VdbeOp, ptr %231, i32 0, i32 5
  %232 = load i32, ptr %p3222, align 4
  %cmp223 = icmp sgt i32 %232, 0
  br i1 %cmp223, label %if.then225, label %if.end237

if.then225:                                       ; preds = %sw.bb214
  %233 = load ptr, ptr %aMem, align 8
  %234 = load ptr, ptr %pOp, align 8
  %p3226 = getelementptr inbounds nuw %struct.VdbeOp, ptr %234, i32 0, i32 5
  %235 = load i32, ptr %p3226, align 4
  %idxprom227 = sext i32 %235 to i64
  %arrayidx228 = getelementptr inbounds %struct.sqlite3_value, ptr %233, i64 %idxprom227
  store ptr %arrayidx228, ptr %pIn3, align 8
  %236 = load ptr, ptr %pIn3, align 8
  %u229 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %236, i32 0, i32 0
  %237 = load i64, ptr %u229, align 8
  %238 = load ptr, ptr %pOp, align 8
  %p5230 = getelementptr inbounds nuw %struct.VdbeOp, ptr %238, i32 0, i32 2
  %239 = load i16, ptr %p5230, align 2
  %conv231 = zext i16 %239 to i64
  %cmp232 = icmp eq i64 %237, %conv231
  br i1 %cmp232, label %if.then234, label %if.end236

if.then234:                                       ; preds = %if.then225
  %240 = load ptr, ptr %pOut, align 8
  %flags235 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %240, i32 0, i32 1
  store i16 2576, ptr %flags235, align 8
  br label %if.end236

if.end236:                                        ; preds = %if.then234, %if.then225
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %sw.bb214
  br label %sw.epilog5364

sw.bb238:                                         ; preds = %for.body
  %241 = load ptr, ptr %p.addr, align 8
  %242 = load ptr, ptr %pOp, align 8
  %call239 = call ptr @out2Prerelease(ptr noundef %241, ptr noundef %242)
  store ptr %call239, ptr %pOut, align 8
  %243 = load ptr, ptr %pOp, align 8
  %p3240 = getelementptr inbounds nuw %struct.VdbeOp, ptr %243, i32 0, i32 5
  %244 = load i32, ptr %p3240, align 4
  %245 = load ptr, ptr %pOp, align 8
  %p2241 = getelementptr inbounds nuw %struct.VdbeOp, ptr %245, i32 0, i32 4
  %246 = load i32, ptr %p2241, align 8
  %sub242 = sub nsw i32 %244, %246
  store i32 %sub242, ptr %cnt, align 4
  %247 = load ptr, ptr %pOp, align 8
  %p1243 = getelementptr inbounds nuw %struct.VdbeOp, ptr %247, i32 0, i32 3
  %248 = load i32, ptr %p1243, align 4
  %tobool244 = icmp ne i32 %248, 0
  %249 = zext i1 %tobool244 to i64
  %cond245 = select i1 %tobool244, i32 257, i32 1
  %conv246 = trunc i32 %cond245 to i16
  store i16 %conv246, ptr %nullFlag, align 2
  %250 = load ptr, ptr %pOut, align 8
  %flags247 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %250, i32 0, i32 1
  store i16 %conv246, ptr %flags247, align 8
  %251 = load ptr, ptr %pOut, align 8
  %n248 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %251, i32 0, i32 4
  store i32 0, ptr %n248, align 4
  br label %while.cond249

while.cond249:                                    ; preds = %while.body252, %sw.bb238
  %252 = load i32, ptr %cnt, align 4
  %cmp250 = icmp sgt i32 %252, 0
  br i1 %cmp250, label %while.body252, label %while.end256

while.body252:                                    ; preds = %while.cond249
  %253 = load ptr, ptr %pOut, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.sqlite3_value, ptr %253, i32 1
  store ptr %incdec.ptr, ptr %pOut, align 8
  %254 = load ptr, ptr %pOut, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %254)
  %255 = load i16, ptr %nullFlag, align 2
  %256 = load ptr, ptr %pOut, align 8
  %flags253 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %256, i32 0, i32 1
  store i16 %255, ptr %flags253, align 8
  %257 = load ptr, ptr %pOut, align 8
  %n254 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %257, i32 0, i32 4
  store i32 0, ptr %n254, align 4
  %258 = load i32, ptr %cnt, align 4
  %dec255 = add nsw i32 %258, -1
  store i32 %dec255, ptr %cnt, align 4
  br label %while.cond249, !llvm.loop !8

while.end256:                                     ; preds = %while.cond249
  br label %sw.epilog5364

sw.bb257:                                         ; preds = %for.body
  %259 = load ptr, ptr %aMem, align 8
  %260 = load ptr, ptr %pOp, align 8
  %p1258 = getelementptr inbounds nuw %struct.VdbeOp, ptr %260, i32 0, i32 3
  %261 = load i32, ptr %p1258, align 4
  %idxprom259 = sext i32 %261 to i64
  %arrayidx260 = getelementptr inbounds %struct.sqlite3_value, ptr %259, i64 %idxprom259
  store ptr %arrayidx260, ptr %pOut, align 8
  %262 = load ptr, ptr %pOut, align 8
  %flags261 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %262, i32 0, i32 1
  %263 = load i16, ptr %flags261, align 8
  %conv262 = zext i16 %263 to i32
  %and263 = and i32 %conv262, -192
  %or264 = or i32 %and263, 1
  %conv265 = trunc i32 %or264 to i16
  %264 = load ptr, ptr %pOut, align 8
  %flags266 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %264, i32 0, i32 1
  store i16 %conv265, ptr %flags266, align 8
  br label %sw.epilog5364

sw.bb267:                                         ; preds = %for.body
  %265 = load ptr, ptr %p.addr, align 8
  %266 = load ptr, ptr %pOp, align 8
  %call268 = call ptr @out2Prerelease(ptr noundef %265, ptr noundef %266)
  store ptr %call268, ptr %pOut, align 8
  %267 = load ptr, ptr %pOut, align 8
  %268 = load ptr, ptr %pOp, align 8
  %p4269 = getelementptr inbounds nuw %struct.VdbeOp, ptr %268, i32 0, i32 6
  %269 = load ptr, ptr %p4269, align 8
  %270 = load ptr, ptr %pOp, align 8
  %p1270 = getelementptr inbounds nuw %struct.VdbeOp, ptr %270, i32 0, i32 3
  %271 = load i32, ptr %p1270, align 4
  %call271 = call i32 @sqlite3VdbeMemSetStr(ptr noundef %267, ptr noundef %269, i32 noundef %271, i8 noundef zeroext 0, ptr noundef null)
  %272 = load i8, ptr %encoding, align 1
  %273 = load ptr, ptr %pOut, align 8
  %enc272 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %273, i32 0, i32 2
  store i8 %272, ptr %enc272, align 2
  br label %sw.epilog5364

sw.bb273:                                         ; preds = %for.body
  %274 = load ptr, ptr %p.addr, align 8
  %aVar = getelementptr inbounds nuw %struct.Vdbe, ptr %274, i32 0, i32 22
  %275 = load ptr, ptr %aVar, align 8
  %276 = load ptr, ptr %pOp, align 8
  %p1274 = getelementptr inbounds nuw %struct.VdbeOp, ptr %276, i32 0, i32 3
  %277 = load i32, ptr %p1274, align 4
  %sub275 = sub nsw i32 %277, 1
  %idxprom276 = sext i32 %sub275 to i64
  %arrayidx277 = getelementptr inbounds %struct.sqlite3_value, ptr %275, i64 %idxprom276
  store ptr %arrayidx277, ptr %pVar, align 8
  %278 = load ptr, ptr %pVar, align 8
  %call278 = call i32 @sqlite3VdbeMemTooBig(ptr noundef %278)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.then280, label %if.end281

if.then280:                                       ; preds = %sw.bb273
  br label %too_big

if.end281:                                        ; preds = %sw.bb273
  %279 = load ptr, ptr %aMem, align 8
  %280 = load ptr, ptr %pOp, align 8
  %p2282 = getelementptr inbounds nuw %struct.VdbeOp, ptr %280, i32 0, i32 4
  %281 = load i32, ptr %p2282, align 8
  %idxprom283 = sext i32 %281 to i64
  %arrayidx284 = getelementptr inbounds %struct.sqlite3_value, ptr %279, i64 %idxprom283
  store ptr %arrayidx284, ptr %pOut, align 8
  %282 = load ptr, ptr %pOut, align 8
  %flags285 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %282, i32 0, i32 1
  %283 = load i16, ptr %flags285, align 8
  %conv286 = zext i16 %283 to i32
  %and287 = and i32 %conv286, 9216
  %cmp288 = icmp ne i32 %and287, 0
  br i1 %cmp288, label %if.then290, label %if.end291

if.then290:                                       ; preds = %if.end281
  %284 = load ptr, ptr %pOut, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %284)
  br label %if.end291

if.end291:                                        ; preds = %if.then290, %if.end281
  %285 = load ptr, ptr %pOut, align 8
  %286 = load ptr, ptr %pVar, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %285, ptr align 8 %286, i64 24, i1 false)
  %287 = load ptr, ptr %pOut, align 8
  %flags292 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %287, i32 0, i32 1
  %288 = load i16, ptr %flags292, align 8
  %conv293 = zext i16 %288 to i32
  %and294 = and i32 %conv293, -5121
  %conv295 = trunc i32 %and294 to i16
  store i16 %conv295, ptr %flags292, align 8
  %289 = load ptr, ptr %pOut, align 8
  %flags296 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %289, i32 0, i32 1
  %290 = load i16, ptr %flags296, align 8
  %conv297 = zext i16 %290 to i32
  %or298 = or i32 %conv297, 2112
  %conv299 = trunc i32 %or298 to i16
  store i16 %conv299, ptr %flags296, align 8
  br label %sw.epilog5364

sw.bb300:                                         ; preds = %for.body
  %291 = load ptr, ptr %pOp, align 8
  %p3304 = getelementptr inbounds nuw %struct.VdbeOp, ptr %291, i32 0, i32 5
  %292 = load i32, ptr %p3304, align 4
  store i32 %292, ptr %n301, align 4
  %293 = load ptr, ptr %pOp, align 8
  %p1305 = getelementptr inbounds nuw %struct.VdbeOp, ptr %293, i32 0, i32 3
  %294 = load i32, ptr %p1305, align 4
  store i32 %294, ptr %p1302, align 4
  %295 = load ptr, ptr %pOp, align 8
  %p2306 = getelementptr inbounds nuw %struct.VdbeOp, ptr %295, i32 0, i32 4
  %296 = load i32, ptr %p2306, align 8
  store i32 %296, ptr %p2303, align 4
  %297 = load ptr, ptr %aMem, align 8
  %298 = load i32, ptr %p1302, align 4
  %idxprom307 = sext i32 %298 to i64
  %arrayidx308 = getelementptr inbounds %struct.sqlite3_value, ptr %297, i64 %idxprom307
  store ptr %arrayidx308, ptr %pIn1, align 8
  %299 = load ptr, ptr %aMem, align 8
  %300 = load i32, ptr %p2303, align 4
  %idxprom309 = sext i32 %300 to i64
  %arrayidx310 = getelementptr inbounds %struct.sqlite3_value, ptr %299, i64 %idxprom309
  store ptr %arrayidx310, ptr %pOut, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb300
  %301 = load ptr, ptr %pOut, align 8
  %302 = load ptr, ptr %pIn1, align 8
  call void @sqlite3VdbeMemMove(ptr noundef %301, ptr noundef %302)
  %303 = load ptr, ptr %pOut, align 8
  %flags311 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %303, i32 0, i32 1
  %304 = load i16, ptr %flags311, align 8
  %conv312 = zext i16 %304 to i32
  %and313 = and i32 %conv312, 4096
  %cmp314 = icmp ne i32 %and313, 0
  br i1 %cmp314, label %land.lhs.true316, label %if.end320

land.lhs.true316:                                 ; preds = %do.body
  %305 = load ptr, ptr %pOut, align 8
  %call317 = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %305)
  %tobool318 = icmp ne i32 %call317, 0
  br i1 %tobool318, label %if.then319, label %if.end320

if.then319:                                       ; preds = %land.lhs.true316
  br label %no_mem

if.end320:                                        ; preds = %land.lhs.true316, %do.body
  %306 = load ptr, ptr %pIn1, align 8
  %incdec.ptr321 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %306, i32 1
  store ptr %incdec.ptr321, ptr %pIn1, align 8
  %307 = load ptr, ptr %pOut, align 8
  %incdec.ptr322 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %307, i32 1
  store ptr %incdec.ptr322, ptr %pOut, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end320
  %308 = load i32, ptr %n301, align 4
  %dec323 = add nsw i32 %308, -1
  store i32 %dec323, ptr %n301, align 4
  %tobool324 = icmp ne i32 %dec323, 0
  br i1 %tobool324, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  br label %sw.epilog5364

sw.bb325:                                         ; preds = %for.body
  %309 = load ptr, ptr %pOp, align 8
  %p3327 = getelementptr inbounds nuw %struct.VdbeOp, ptr %309, i32 0, i32 5
  %310 = load i32, ptr %p3327, align 4
  store i32 %310, ptr %n326, align 4
  %311 = load ptr, ptr %aMem, align 8
  %312 = load ptr, ptr %pOp, align 8
  %p1328 = getelementptr inbounds nuw %struct.VdbeOp, ptr %312, i32 0, i32 3
  %313 = load i32, ptr %p1328, align 4
  %idxprom329 = sext i32 %313 to i64
  %arrayidx330 = getelementptr inbounds %struct.sqlite3_value, ptr %311, i64 %idxprom329
  store ptr %arrayidx330, ptr %pIn1, align 8
  %314 = load ptr, ptr %aMem, align 8
  %315 = load ptr, ptr %pOp, align 8
  %p2331 = getelementptr inbounds nuw %struct.VdbeOp, ptr %315, i32 0, i32 4
  %316 = load i32, ptr %p2331, align 8
  %idxprom332 = sext i32 %316 to i64
  %arrayidx333 = getelementptr inbounds %struct.sqlite3_value, ptr %314, i64 %idxprom332
  store ptr %arrayidx333, ptr %pOut, align 8
  br label %while.body335

while.body335:                                    ; preds = %if.end350, %sw.bb325
  %317 = load ptr, ptr %pOut, align 8
  %318 = load ptr, ptr %pIn1, align 8
  call void @sqlite3VdbeMemShallowCopy(ptr noundef %317, ptr noundef %318, i32 noundef 4096)
  %319 = load ptr, ptr %pOut, align 8
  %flags336 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %319, i32 0, i32 1
  %320 = load i16, ptr %flags336, align 8
  %conv337 = zext i16 %320 to i32
  %and338 = and i32 %conv337, 4096
  %cmp339 = icmp ne i32 %and338, 0
  br i1 %cmp339, label %land.lhs.true341, label %if.end345

land.lhs.true341:                                 ; preds = %while.body335
  %321 = load ptr, ptr %pOut, align 8
  %call342 = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %321)
  %tobool343 = icmp ne i32 %call342, 0
  br i1 %tobool343, label %if.then344, label %if.end345

if.then344:                                       ; preds = %land.lhs.true341
  br label %no_mem

if.end345:                                        ; preds = %land.lhs.true341, %while.body335
  %322 = load i32, ptr %n326, align 4
  %dec346 = add nsw i32 %322, -1
  store i32 %dec346, ptr %n326, align 4
  %cmp347 = icmp eq i32 %322, 0
  br i1 %cmp347, label %if.then349, label %if.end350

if.then349:                                       ; preds = %if.end345
  br label %while.end353

if.end350:                                        ; preds = %if.end345
  %323 = load ptr, ptr %pOut, align 8
  %incdec.ptr351 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %323, i32 1
  store ptr %incdec.ptr351, ptr %pOut, align 8
  %324 = load ptr, ptr %pIn1, align 8
  %incdec.ptr352 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %324, i32 1
  store ptr %incdec.ptr352, ptr %pIn1, align 8
  br label %while.body335

while.end353:                                     ; preds = %if.then349
  br label %sw.epilog5364

sw.bb354:                                         ; preds = %for.body
  %325 = load ptr, ptr %aMem, align 8
  %326 = load ptr, ptr %pOp, align 8
  %p1355 = getelementptr inbounds nuw %struct.VdbeOp, ptr %326, i32 0, i32 3
  %327 = load i32, ptr %p1355, align 4
  %idxprom356 = sext i32 %327 to i64
  %arrayidx357 = getelementptr inbounds %struct.sqlite3_value, ptr %325, i64 %idxprom356
  store ptr %arrayidx357, ptr %pIn1, align 8
  %328 = load ptr, ptr %aMem, align 8
  %329 = load ptr, ptr %pOp, align 8
  %p2358 = getelementptr inbounds nuw %struct.VdbeOp, ptr %329, i32 0, i32 4
  %330 = load i32, ptr %p2358, align 8
  %idxprom359 = sext i32 %330 to i64
  %arrayidx360 = getelementptr inbounds %struct.sqlite3_value, ptr %328, i64 %idxprom359
  store ptr %arrayidx360, ptr %pOut, align 8
  %331 = load ptr, ptr %pOut, align 8
  %332 = load ptr, ptr %pIn1, align 8
  call void @sqlite3VdbeMemShallowCopy(ptr noundef %331, ptr noundef %332, i32 noundef 4096)
  br label %sw.epilog5364

sw.bb361:                                         ; preds = %for.body
  %333 = load ptr, ptr %aMem, align 8
  %334 = load ptr, ptr %pOp, align 8
  %p1362 = getelementptr inbounds nuw %struct.VdbeOp, ptr %334, i32 0, i32 3
  %335 = load i32, ptr %p1362, align 4
  %idxprom363 = sext i32 %335 to i64
  %arrayidx364 = getelementptr inbounds %struct.sqlite3_value, ptr %333, i64 %idxprom363
  store ptr %arrayidx364, ptr %pIn1, align 8
  %336 = load ptr, ptr %aMem, align 8
  %337 = load ptr, ptr %pOp, align 8
  %p2365 = getelementptr inbounds nuw %struct.VdbeOp, ptr %337, i32 0, i32 4
  %338 = load i32, ptr %p2365, align 8
  %idxprom366 = sext i32 %338 to i64
  %arrayidx367 = getelementptr inbounds %struct.sqlite3_value, ptr %336, i64 %idxprom366
  store ptr %arrayidx367, ptr %pOut, align 8
  %339 = load ptr, ptr %pOut, align 8
  %340 = load ptr, ptr %pIn1, align 8
  %u368 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %340, i32 0, i32 0
  %341 = load i64, ptr %u368, align 8
  call void @sqlite3VdbeMemSetInt64(ptr noundef %339, i64 noundef %341)
  br label %sw.epilog5364

sw.bb369:                                         ; preds = %for.body
  %342 = load ptr, ptr %p.addr, align 8
  %call370 = call i32 @sqlite3VdbeCheckFk(ptr noundef %342, i32 noundef 0)
  store i32 %call370, ptr %rc, align 4
  %cmp371 = icmp ne i32 0, %call370
  br i1 %cmp371, label %if.then373, label %if.end374

if.then373:                                       ; preds = %sw.bb369
  br label %abort_due_to_error

if.end374:                                        ; preds = %sw.bb369
  %343 = load ptr, ptr %p.addr, align 8
  %call375 = call i32 @sqlite3VdbeCloseStatement(ptr noundef %343, i32 noundef 1)
  store i32 %call375, ptr %rc, align 4
  %344 = load ptr, ptr %p.addr, align 8
  %cacheCtr = getelementptr inbounds nuw %struct.Vdbe, ptr %344, i32 0, i32 9
  %345 = load i32, ptr %cacheCtr, align 8
  %add376 = add i32 %345, 2
  %or377 = or i32 %add376, 1
  %346 = load ptr, ptr %p.addr, align 8
  %cacheCtr378 = getelementptr inbounds nuw %struct.Vdbe, ptr %346, i32 0, i32 9
  store i32 %or377, ptr %cacheCtr378, align 8
  %347 = load ptr, ptr %aMem, align 8
  %348 = load ptr, ptr %pOp, align 8
  %p1379 = getelementptr inbounds nuw %struct.VdbeOp, ptr %348, i32 0, i32 3
  %349 = load i32, ptr %p1379, align 4
  %idxprom380 = sext i32 %349 to i64
  %arrayidx381 = getelementptr inbounds %struct.sqlite3_value, ptr %347, i64 %idxprom380
  %350 = load ptr, ptr %p.addr, align 8
  %pResultSet382 = getelementptr inbounds nuw %struct.Vdbe, ptr %350, i32 0, i32 27
  store ptr %arrayidx381, ptr %pResultSet382, align 8
  store ptr %arrayidx381, ptr %pMem, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond383

for.cond383:                                      ; preds = %for.inc, %if.end374
  %351 = load i32, ptr %i, align 4
  %352 = load ptr, ptr %pOp, align 8
  %p2384 = getelementptr inbounds nuw %struct.VdbeOp, ptr %352, i32 0, i32 4
  %353 = load i32, ptr %p2384, align 8
  %cmp385 = icmp slt i32 %351, %353
  br i1 %cmp385, label %for.body387, label %for.end

for.body387:                                      ; preds = %for.cond383
  %354 = load ptr, ptr %pMem, align 8
  %355 = load i32, ptr %i, align 4
  %idxprom388 = sext i32 %355 to i64
  %arrayidx389 = getelementptr inbounds %struct.sqlite3_value, ptr %354, i64 %idxprom388
  %flags390 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx389, i32 0, i32 1
  %356 = load i16, ptr %flags390, align 8
  %conv391 = zext i16 %356 to i32
  %and392 = and i32 %conv391, 4096
  %cmp393 = icmp ne i32 %and392, 0
  br i1 %cmp393, label %land.lhs.true395, label %if.end401

land.lhs.true395:                                 ; preds = %for.body387
  %357 = load ptr, ptr %pMem, align 8
  %358 = load i32, ptr %i, align 4
  %idxprom396 = sext i32 %358 to i64
  %arrayidx397 = getelementptr inbounds %struct.sqlite3_value, ptr %357, i64 %idxprom396
  %call398 = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %arrayidx397)
  %tobool399 = icmp ne i32 %call398, 0
  br i1 %tobool399, label %if.then400, label %if.end401

if.then400:                                       ; preds = %land.lhs.true395
  br label %no_mem

if.end401:                                        ; preds = %land.lhs.true395, %for.body387
  %359 = load ptr, ptr %pMem, align 8
  %360 = load i32, ptr %i, align 4
  %idxprom402 = sext i32 %360 to i64
  %arrayidx403 = getelementptr inbounds %struct.sqlite3_value, ptr %359, i64 %idxprom402
  %call404 = call i32 @sqlite3VdbeMemNulTerminate(ptr noundef %arrayidx403)
  br label %for.inc

for.inc:                                          ; preds = %if.end401
  %361 = load i32, ptr %i, align 4
  %inc405 = add nsw i32 %361, 1
  store i32 %inc405, ptr %i, align 4
  br label %for.cond383, !llvm.loop !10

for.end:                                          ; preds = %for.cond383
  %362 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %362, i32 0, i32 19
  %363 = load i8, ptr %mallocFailed, align 1
  %tobool406 = icmp ne i8 %363, 0
  br i1 %tobool406, label %if.then407, label %if.end408

if.then407:                                       ; preds = %for.end
  br label %no_mem

if.end408:                                        ; preds = %for.end
  %364 = load ptr, ptr %db, align 8
  %mTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %364, i32 0, i32 26
  %365 = load i8, ptr %mTrace, align 8
  %conv409 = zext i8 %365 to i32
  %and410 = and i32 %conv409, 4
  %tobool411 = icmp ne i32 %and410, 0
  br i1 %tobool411, label %if.then412, label %if.end414

if.then412:                                       ; preds = %if.end408
  %366 = load ptr, ptr %db, align 8
  %xTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %366, i32 0, i32 43
  %367 = load ptr, ptr %xTrace, align 8
  %368 = load ptr, ptr %db, align 8
  %pTraceArg = getelementptr inbounds nuw %struct.sqlite3, ptr %368, i32 0, i32 44
  %369 = load ptr, ptr %pTraceArg, align 8
  %370 = load ptr, ptr %p.addr, align 8
  %call413 = call i32 %367(i32 noundef 4, ptr noundef %369, ptr noundef %370, ptr noundef null)
  br label %if.end414

if.end414:                                        ; preds = %if.then412, %if.end408
  %371 = load ptr, ptr %pOp, align 8
  %372 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast415 = ptrtoint ptr %371 to i64
  %sub.ptr.rhs.cast416 = ptrtoint ptr %372 to i64
  %sub.ptr.sub417 = sub i64 %sub.ptr.lhs.cast415, %sub.ptr.rhs.cast416
  %sub.ptr.div418 = sdiv exact i64 %sub.ptr.sub417, 24
  %conv419 = trunc i64 %sub.ptr.div418 to i32
  %add420 = add nsw i32 %conv419, 1
  %373 = load ptr, ptr %p.addr, align 8
  %pc421 = getelementptr inbounds nuw %struct.Vdbe, ptr %373, i32 0, i32 10
  store i32 %add420, ptr %pc421, align 4
  store i32 100, ptr %rc, align 4
  br label %vdbe_return

sw.bb422:                                         ; preds = %for.body
  %374 = load ptr, ptr %aMem, align 8
  %375 = load ptr, ptr %pOp, align 8
  %p1423 = getelementptr inbounds nuw %struct.VdbeOp, ptr %375, i32 0, i32 3
  %376 = load i32, ptr %p1423, align 4
  %idxprom424 = sext i32 %376 to i64
  %arrayidx425 = getelementptr inbounds %struct.sqlite3_value, ptr %374, i64 %idxprom424
  store ptr %arrayidx425, ptr %pIn1, align 8
  %377 = load ptr, ptr %aMem, align 8
  %378 = load ptr, ptr %pOp, align 8
  %p2426 = getelementptr inbounds nuw %struct.VdbeOp, ptr %378, i32 0, i32 4
  %379 = load i32, ptr %p2426, align 8
  %idxprom427 = sext i32 %379 to i64
  %arrayidx428 = getelementptr inbounds %struct.sqlite3_value, ptr %377, i64 %idxprom427
  store ptr %arrayidx428, ptr %pIn2, align 8
  %380 = load ptr, ptr %aMem, align 8
  %381 = load ptr, ptr %pOp, align 8
  %p3429 = getelementptr inbounds nuw %struct.VdbeOp, ptr %381, i32 0, i32 5
  %382 = load i32, ptr %p3429, align 4
  %idxprom430 = sext i32 %382 to i64
  %arrayidx431 = getelementptr inbounds %struct.sqlite3_value, ptr %380, i64 %idxprom430
  store ptr %arrayidx431, ptr %pOut, align 8
  %383 = load ptr, ptr %pIn1, align 8
  %flags432 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %383, i32 0, i32 1
  %384 = load i16, ptr %flags432, align 8
  store i16 %384, ptr %flags1, align 2
  %385 = load i16, ptr %flags1, align 2
  %conv433 = zext i16 %385 to i32
  %386 = load ptr, ptr %pIn2, align 8
  %flags434 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %386, i32 0, i32 1
  %387 = load i16, ptr %flags434, align 8
  %conv435 = zext i16 %387 to i32
  %or436 = or i32 %conv433, %conv435
  %and437 = and i32 %or436, 1
  %tobool438 = icmp ne i32 %and437, 0
  br i1 %tobool438, label %if.then439, label %if.end440

if.then439:                                       ; preds = %sw.bb422
  %388 = load ptr, ptr %pOut, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %388)
  br label %sw.epilog5364

if.end440:                                        ; preds = %sw.bb422
  %389 = load i16, ptr %flags1, align 2
  %conv441 = zext i16 %389 to i32
  %and442 = and i32 %conv441, 18
  %cmp443 = icmp eq i32 %and442, 0
  br i1 %cmp443, label %if.then445, label %if.else454

if.then445:                                       ; preds = %if.end440
  %390 = load ptr, ptr %pIn1, align 8
  %391 = load i8, ptr %encoding, align 1
  %call446 = call i32 @sqlite3VdbeMemStringify(ptr noundef %390, i8 noundef zeroext %391, i8 noundef zeroext 0)
  %tobool447 = icmp ne i32 %call446, 0
  br i1 %tobool447, label %if.then448, label %if.end449

if.then448:                                       ; preds = %if.then445
  br label %no_mem

if.end449:                                        ; preds = %if.then445
  %392 = load ptr, ptr %pIn1, align 8
  %flags450 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %392, i32 0, i32 1
  %393 = load i16, ptr %flags450, align 8
  %conv451 = zext i16 %393 to i32
  %and452 = and i32 %conv451, -3
  %conv453 = trunc i32 %and452 to i16
  store i16 %conv453, ptr %flags1, align 2
  br label %if.end469

if.else454:                                       ; preds = %if.end440
  %394 = load i16, ptr %flags1, align 2
  %conv455 = zext i16 %394 to i32
  %and456 = and i32 %conv455, 16384
  %cmp457 = icmp ne i32 %and456, 0
  br i1 %cmp457, label %if.then459, label %if.end468

if.then459:                                       ; preds = %if.else454
  %395 = load ptr, ptr %pIn1, align 8
  %call460 = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %395)
  %tobool461 = icmp ne i32 %call460, 0
  br i1 %tobool461, label %if.then462, label %if.end463

if.then462:                                       ; preds = %if.then459
  br label %no_mem

if.end463:                                        ; preds = %if.then459
  %396 = load ptr, ptr %pIn1, align 8
  %flags464 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %396, i32 0, i32 1
  %397 = load i16, ptr %flags464, align 8
  %conv465 = zext i16 %397 to i32
  %and466 = and i32 %conv465, -3
  %conv467 = trunc i32 %and466 to i16
  store i16 %conv467, ptr %flags1, align 2
  br label %if.end468

if.end468:                                        ; preds = %if.end463, %if.else454
  br label %if.end469

if.end469:                                        ; preds = %if.end468, %if.end449
  %398 = load ptr, ptr %pIn2, align 8
  %flags470 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %398, i32 0, i32 1
  %399 = load i16, ptr %flags470, align 8
  store i16 %399, ptr %flags2, align 2
  %400 = load i16, ptr %flags2, align 2
  %conv471 = zext i16 %400 to i32
  %and472 = and i32 %conv471, 18
  %cmp473 = icmp eq i32 %and472, 0
  br i1 %cmp473, label %if.then475, label %if.else484

if.then475:                                       ; preds = %if.end469
  %401 = load ptr, ptr %pIn2, align 8
  %402 = load i8, ptr %encoding, align 1
  %call476 = call i32 @sqlite3VdbeMemStringify(ptr noundef %401, i8 noundef zeroext %402, i8 noundef zeroext 0)
  %tobool477 = icmp ne i32 %call476, 0
  br i1 %tobool477, label %if.then478, label %if.end479

if.then478:                                       ; preds = %if.then475
  br label %no_mem

if.end479:                                        ; preds = %if.then475
  %403 = load ptr, ptr %pIn2, align 8
  %flags480 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %403, i32 0, i32 1
  %404 = load i16, ptr %flags480, align 8
  %conv481 = zext i16 %404 to i32
  %and482 = and i32 %conv481, -3
  %conv483 = trunc i32 %and482 to i16
  store i16 %conv483, ptr %flags2, align 2
  br label %if.end499

if.else484:                                       ; preds = %if.end469
  %405 = load i16, ptr %flags2, align 2
  %conv485 = zext i16 %405 to i32
  %and486 = and i32 %conv485, 16384
  %cmp487 = icmp ne i32 %and486, 0
  br i1 %cmp487, label %if.then489, label %if.end498

if.then489:                                       ; preds = %if.else484
  %406 = load ptr, ptr %pIn2, align 8
  %call490 = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %406)
  %tobool491 = icmp ne i32 %call490, 0
  br i1 %tobool491, label %if.then492, label %if.end493

if.then492:                                       ; preds = %if.then489
  br label %no_mem

if.end493:                                        ; preds = %if.then489
  %407 = load ptr, ptr %pIn2, align 8
  %flags494 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %407, i32 0, i32 1
  %408 = load i16, ptr %flags494, align 8
  %conv495 = zext i16 %408 to i32
  %and496 = and i32 %conv495, -3
  %conv497 = trunc i32 %and496 to i16
  store i16 %conv497, ptr %flags2, align 2
  br label %if.end498

if.end498:                                        ; preds = %if.end493, %if.else484
  br label %if.end499

if.end499:                                        ; preds = %if.end498, %if.end479
  %409 = load ptr, ptr %pIn1, align 8
  %n500 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %409, i32 0, i32 4
  %410 = load i32, ptr %n500, align 4
  %411 = load ptr, ptr %pIn2, align 8
  %n501 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %411, i32 0, i32 4
  %412 = load i32, ptr %n501, align 4
  %add502 = add nsw i32 %410, %412
  %conv503 = sext i32 %add502 to i64
  store i64 %conv503, ptr %nByte, align 8
  %413 = load i64, ptr %nByte, align 8
  %414 = load ptr, ptr %db, align 8
  %aLimit504 = getelementptr inbounds nuw %struct.sqlite3, ptr %414, i32 0, i32 33
  %arrayidx505 = getelementptr inbounds [12 x i32], ptr %aLimit504, i64 0, i64 0
  %415 = load i32, ptr %arrayidx505, align 4
  %conv506 = sext i32 %415 to i64
  %cmp507 = icmp sgt i64 %413, %conv506
  br i1 %cmp507, label %if.then509, label %if.end510

if.then509:                                       ; preds = %if.end499
  br label %too_big

if.end510:                                        ; preds = %if.end499
  %416 = load ptr, ptr %pOut, align 8
  %417 = load i64, ptr %nByte, align 8
  %conv511 = trunc i64 %417 to i32
  %add512 = add nsw i32 %conv511, 3
  %418 = load ptr, ptr %pOut, align 8
  %419 = load ptr, ptr %pIn2, align 8
  %cmp513 = icmp eq ptr %418, %419
  %conv514 = zext i1 %cmp513 to i32
  %call515 = call i32 @sqlite3VdbeMemGrow(ptr noundef %416, i32 noundef %add512, i32 noundef %conv514)
  %tobool516 = icmp ne i32 %call515, 0
  br i1 %tobool516, label %if.then517, label %if.end518

if.then517:                                       ; preds = %if.end510
  br label %no_mem

if.end518:                                        ; preds = %if.end510
  %420 = load ptr, ptr %pOut, align 8
  %flags519 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %420, i32 0, i32 1
  %421 = load i16, ptr %flags519, align 8
  %conv520 = zext i16 %421 to i32
  %and521 = and i32 %conv520, -49600
  %or522 = or i32 %and521, 2
  %conv523 = trunc i32 %or522 to i16
  %422 = load ptr, ptr %pOut, align 8
  %flags524 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %422, i32 0, i32 1
  store i16 %conv523, ptr %flags524, align 8
  %423 = load ptr, ptr %pOut, align 8
  %424 = load ptr, ptr %pIn2, align 8
  %cmp525 = icmp ne ptr %423, %424
  br i1 %cmp525, label %if.then527, label %if.end533

if.then527:                                       ; preds = %if.end518
  %425 = load ptr, ptr %pOut, align 8
  %z528 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %425, i32 0, i32 5
  %426 = load ptr, ptr %z528, align 8
  %427 = load ptr, ptr %pIn2, align 8
  %z529 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %427, i32 0, i32 5
  %428 = load ptr, ptr %z529, align 8
  %429 = load ptr, ptr %pIn2, align 8
  %n530 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %429, i32 0, i32 4
  %430 = load i32, ptr %n530, align 4
  %conv531 = sext i32 %430 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %426, ptr align 1 %428, i64 %conv531, i1 false)
  %431 = load i16, ptr %flags2, align 2
  %432 = load ptr, ptr %pIn2, align 8
  %flags532 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %432, i32 0, i32 1
  store i16 %431, ptr %flags532, align 8
  br label %if.end533

if.end533:                                        ; preds = %if.then527, %if.end518
  %433 = load ptr, ptr %pOut, align 8
  %z534 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %433, i32 0, i32 5
  %434 = load ptr, ptr %z534, align 8
  %435 = load ptr, ptr %pIn2, align 8
  %n535 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %435, i32 0, i32 4
  %436 = load i32, ptr %n535, align 4
  %idxprom536 = sext i32 %436 to i64
  %arrayidx537 = getelementptr inbounds i8, ptr %434, i64 %idxprom536
  %437 = load ptr, ptr %pIn1, align 8
  %z538 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %437, i32 0, i32 5
  %438 = load ptr, ptr %z538, align 8
  %439 = load ptr, ptr %pIn1, align 8
  %n539 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %439, i32 0, i32 4
  %440 = load i32, ptr %n539, align 4
  %conv540 = sext i32 %440 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx537, ptr align 1 %438, i64 %conv540, i1 false)
  %441 = load i16, ptr %flags1, align 2
  %442 = load ptr, ptr %pIn1, align 8
  %flags541 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %442, i32 0, i32 1
  store i16 %441, ptr %flags541, align 8
  %443 = load ptr, ptr %pOut, align 8
  %z542 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %443, i32 0, i32 5
  %444 = load ptr, ptr %z542, align 8
  %445 = load i64, ptr %nByte, align 8
  %arrayidx543 = getelementptr inbounds i8, ptr %444, i64 %445
  store i8 0, ptr %arrayidx543, align 1
  %446 = load ptr, ptr %pOut, align 8
  %z544 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %446, i32 0, i32 5
  %447 = load ptr, ptr %z544, align 8
  %448 = load i64, ptr %nByte, align 8
  %add545 = add nsw i64 %448, 1
  %arrayidx546 = getelementptr inbounds i8, ptr %447, i64 %add545
  store i8 0, ptr %arrayidx546, align 1
  %449 = load ptr, ptr %pOut, align 8
  %z547 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %449, i32 0, i32 5
  %450 = load ptr, ptr %z547, align 8
  %451 = load i64, ptr %nByte, align 8
  %add548 = add nsw i64 %451, 2
  %arrayidx549 = getelementptr inbounds i8, ptr %450, i64 %add548
  store i8 0, ptr %arrayidx549, align 1
  %452 = load ptr, ptr %pOut, align 8
  %flags550 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %452, i32 0, i32 1
  %453 = load i16, ptr %flags550, align 8
  %conv551 = zext i16 %453 to i32
  %or552 = or i32 %conv551, 512
  %conv553 = trunc i32 %or552 to i16
  store i16 %conv553, ptr %flags550, align 8
  %454 = load i64, ptr %nByte, align 8
  %conv554 = trunc i64 %454 to i32
  %455 = load ptr, ptr %pOut, align 8
  %n555 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %455, i32 0, i32 4
  store i32 %conv554, ptr %n555, align 4
  %456 = load i8, ptr %encoding, align 1
  %457 = load ptr, ptr %pOut, align 8
  %enc556 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %457, i32 0, i32 2
  store i8 %456, ptr %enc556, align 2
  br label %sw.epilog5364

sw.bb557:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %458 = load ptr, ptr %aMem, align 8
  %459 = load ptr, ptr %pOp, align 8
  %p1559 = getelementptr inbounds nuw %struct.VdbeOp, ptr %459, i32 0, i32 3
  %460 = load i32, ptr %p1559, align 4
  %idxprom560 = sext i32 %460 to i64
  %arrayidx561 = getelementptr inbounds %struct.sqlite3_value, ptr %458, i64 %idxprom560
  store ptr %arrayidx561, ptr %pIn1, align 8
  %461 = load ptr, ptr %pIn1, align 8
  %call562 = call zeroext i16 @numericType(ptr noundef %461)
  store i16 %call562, ptr %type1, align 2
  %462 = load ptr, ptr %aMem, align 8
  %463 = load ptr, ptr %pOp, align 8
  %p2563 = getelementptr inbounds nuw %struct.VdbeOp, ptr %463, i32 0, i32 4
  %464 = load i32, ptr %p2563, align 8
  %idxprom564 = sext i32 %464 to i64
  %arrayidx565 = getelementptr inbounds %struct.sqlite3_value, ptr %462, i64 %idxprom564
  store ptr %arrayidx565, ptr %pIn2, align 8
  %465 = load ptr, ptr %pIn2, align 8
  %call566 = call zeroext i16 @numericType(ptr noundef %465)
  store i16 %call566, ptr %type2, align 2
  %466 = load ptr, ptr %aMem, align 8
  %467 = load ptr, ptr %pOp, align 8
  %p3567 = getelementptr inbounds nuw %struct.VdbeOp, ptr %467, i32 0, i32 5
  %468 = load i32, ptr %p3567, align 4
  %idxprom568 = sext i32 %468 to i64
  %arrayidx569 = getelementptr inbounds %struct.sqlite3_value, ptr %466, i64 %idxprom568
  store ptr %arrayidx569, ptr %pOut, align 8
  %469 = load ptr, ptr %pIn1, align 8
  %flags570 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %469, i32 0, i32 1
  %470 = load i16, ptr %flags570, align 8
  %conv571 = zext i16 %470 to i32
  %471 = load ptr, ptr %pIn2, align 8
  %flags572 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %471, i32 0, i32 1
  %472 = load i16, ptr %flags572, align 8
  %conv573 = zext i16 %472 to i32
  %or574 = or i32 %conv571, %conv573
  %conv575 = trunc i32 %or574 to i16
  store i16 %conv575, ptr %flags558, align 2
  %473 = load i16, ptr %type1, align 2
  %conv576 = zext i16 %473 to i32
  %474 = load i16, ptr %type2, align 2
  %conv577 = zext i16 %474 to i32
  %and578 = and i32 %conv576, %conv577
  %and579 = and i32 %and578, 4
  %cmp580 = icmp ne i32 %and579, 0
  br i1 %cmp580, label %if.then582, label %if.else630

if.then582:                                       ; preds = %sw.bb557
  %475 = load ptr, ptr %pIn1, align 8
  %u583 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %475, i32 0, i32 0
  %476 = load i64, ptr %u583, align 8
  store i64 %476, ptr %iA, align 8
  %477 = load ptr, ptr %pIn2, align 8
  %u584 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %477, i32 0, i32 0
  %478 = load i64, ptr %u584, align 8
  store i64 %478, ptr %iB, align 8
  %479 = load ptr, ptr %pOp, align 8
  %opcode585 = getelementptr inbounds nuw %struct.VdbeOp, ptr %479, i32 0, i32 0
  %480 = load i8, ptr %opcode585, align 8
  %conv586 = zext i8 %480 to i32
  switch i32 %conv586, label %sw.default [
    i32 103, label %sw.bb587
    i32 104, label %sw.bb592
    i32 105, label %sw.bb597
    i32 106, label %sw.bb602
  ]

sw.bb587:                                         ; preds = %if.then582
  %481 = load i64, ptr %iA, align 8
  %call588 = call i32 @sqlite3AddInt64(ptr noundef %iB, i64 noundef %481)
  %tobool589 = icmp ne i32 %call588, 0
  br i1 %tobool589, label %if.then590, label %if.end591

if.then590:                                       ; preds = %sw.bb587
  br label %fp_math

if.end591:                                        ; preds = %sw.bb587
  br label %sw.epilog

sw.bb592:                                         ; preds = %if.then582
  %482 = load i64, ptr %iA, align 8
  %call593 = call i32 @sqlite3SubInt64(ptr noundef %iB, i64 noundef %482)
  %tobool594 = icmp ne i32 %call593, 0
  br i1 %tobool594, label %if.then595, label %if.end596

if.then595:                                       ; preds = %sw.bb592
  br label %fp_math

if.end596:                                        ; preds = %sw.bb592
  br label %sw.epilog

sw.bb597:                                         ; preds = %if.then582
  %483 = load i64, ptr %iA, align 8
  %call598 = call i32 @sqlite3MulInt64(ptr noundef %iB, i64 noundef %483)
  %tobool599 = icmp ne i32 %call598, 0
  br i1 %tobool599, label %if.then600, label %if.end601

if.then600:                                       ; preds = %sw.bb597
  br label %fp_math

if.end601:                                        ; preds = %sw.bb597
  br label %sw.epilog

sw.bb602:                                         ; preds = %if.then582
  %484 = load i64, ptr %iA, align 8
  %cmp603 = icmp eq i64 %484, 0
  br i1 %cmp603, label %if.then605, label %if.end606

if.then605:                                       ; preds = %sw.bb602
  br label %arithmetic_result_is_null

if.end606:                                        ; preds = %sw.bb602
  %485 = load i64, ptr %iA, align 8
  %cmp607 = icmp eq i64 %485, -1
  br i1 %cmp607, label %land.lhs.true609, label %if.end613

land.lhs.true609:                                 ; preds = %if.end606
  %486 = load i64, ptr %iB, align 8
  %cmp610 = icmp eq i64 %486, -9223372036854775808
  br i1 %cmp610, label %if.then612, label %if.end613

if.then612:                                       ; preds = %land.lhs.true609
  br label %fp_math

if.end613:                                        ; preds = %land.lhs.true609, %if.end606
  %487 = load i64, ptr %iA, align 8
  %488 = load i64, ptr %iB, align 8
  %div = sdiv i64 %488, %487
  store i64 %div, ptr %iB, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then582
  %489 = load i64, ptr %iA, align 8
  %cmp614 = icmp eq i64 %489, 0
  br i1 %cmp614, label %if.then616, label %if.end617

if.then616:                                       ; preds = %sw.default
  br label %arithmetic_result_is_null

if.end617:                                        ; preds = %sw.default
  %490 = load i64, ptr %iA, align 8
  %cmp618 = icmp eq i64 %490, -1
  br i1 %cmp618, label %if.then620, label %if.end621

if.then620:                                       ; preds = %if.end617
  store i64 1, ptr %iA, align 8
  br label %if.end621

if.end621:                                        ; preds = %if.then620, %if.end617
  %491 = load i64, ptr %iA, align 8
  %492 = load i64, ptr %iB, align 8
  %rem622 = srem i64 %492, %491
  store i64 %rem622, ptr %iB, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end621, %if.end613, %if.end601, %if.end596, %if.end591
  %493 = load i64, ptr %iB, align 8
  %494 = load ptr, ptr %pOut, align 8
  %u623 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %494, i32 0, i32 0
  store i64 %493, ptr %u623, align 8
  %495 = load ptr, ptr %pOut, align 8
  %flags624 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %495, i32 0, i32 1
  %496 = load i16, ptr %flags624, align 8
  %conv625 = zext i16 %496 to i32
  %and626 = and i32 %conv625, -49600
  %or627 = or i32 %and626, 4
  %conv628 = trunc i32 %or627 to i16
  %497 = load ptr, ptr %pOut, align 8
  %flags629 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %497, i32 0, i32 1
  store i16 %conv628, ptr %flags629, align 8
  br label %if.end678

if.else630:                                       ; preds = %sw.bb557
  %498 = load i16, ptr %flags558, align 2
  %conv631 = zext i16 %498 to i32
  %and632 = and i32 %conv631, 1
  %cmp633 = icmp ne i32 %and632, 0
  br i1 %cmp633, label %if.then635, label %if.else636

if.then635:                                       ; preds = %if.else630
  br label %arithmetic_result_is_null

if.else636:                                       ; preds = %if.else630
  br label %fp_math

fp_math:                                          ; preds = %if.else636, %if.then612, %if.then600, %if.then595, %if.then590
  %499 = load ptr, ptr %pIn1, align 8
  %call637 = call double @sqlite3VdbeRealValue(ptr noundef %499)
  store double %call637, ptr %rA, align 8
  %500 = load ptr, ptr %pIn2, align 8
  %call638 = call double @sqlite3VdbeRealValue(ptr noundef %500)
  store double %call638, ptr %rB, align 8
  %501 = load ptr, ptr %pOp, align 8
  %opcode639 = getelementptr inbounds nuw %struct.VdbeOp, ptr %501, i32 0, i32 0
  %502 = load i8, ptr %opcode639, align 8
  %conv640 = zext i8 %502 to i32
  switch i32 %conv640, label %sw.default652 [
    i32 103, label %sw.bb641
    i32 104, label %sw.bb643
    i32 105, label %sw.bb645
    i32 106, label %sw.bb646
  ]

sw.bb641:                                         ; preds = %fp_math
  %503 = load double, ptr %rA, align 8
  %504 = load double, ptr %rB, align 8
  %add642 = fadd double %504, %503
  store double %add642, ptr %rB, align 8
  br label %sw.epilog665

sw.bb643:                                         ; preds = %fp_math
  %505 = load double, ptr %rA, align 8
  %506 = load double, ptr %rB, align 8
  %sub644 = fsub double %506, %505
  store double %sub644, ptr %rB, align 8
  br label %sw.epilog665

sw.bb645:                                         ; preds = %fp_math
  %507 = load double, ptr %rA, align 8
  %508 = load double, ptr %rB, align 8
  %mul = fmul double %508, %507
  store double %mul, ptr %rB, align 8
  br label %sw.epilog665

sw.bb646:                                         ; preds = %fp_math
  %509 = load double, ptr %rA, align 8
  %cmp647 = fcmp oeq double %509, 0.000000e+00
  br i1 %cmp647, label %if.then649, label %if.end650

if.then649:                                       ; preds = %sw.bb646
  br label %arithmetic_result_is_null

if.end650:                                        ; preds = %sw.bb646
  %510 = load double, ptr %rA, align 8
  %511 = load double, ptr %rB, align 8
  %div651 = fdiv double %511, %510
  store double %div651, ptr %rB, align 8
  br label %sw.epilog665

sw.default652:                                    ; preds = %fp_math
  %512 = load ptr, ptr %pIn1, align 8
  %call653 = call i64 @sqlite3VdbeIntValue(ptr noundef %512)
  store i64 %call653, ptr %iA, align 8
  %513 = load ptr, ptr %pIn2, align 8
  %call654 = call i64 @sqlite3VdbeIntValue(ptr noundef %513)
  store i64 %call654, ptr %iB, align 8
  %514 = load i64, ptr %iA, align 8
  %cmp655 = icmp eq i64 %514, 0
  br i1 %cmp655, label %if.then657, label %if.end658

if.then657:                                       ; preds = %sw.default652
  br label %arithmetic_result_is_null

if.end658:                                        ; preds = %sw.default652
  %515 = load i64, ptr %iA, align 8
  %cmp659 = icmp eq i64 %515, -1
  br i1 %cmp659, label %if.then661, label %if.end662

if.then661:                                       ; preds = %if.end658
  store i64 1, ptr %iA, align 8
  br label %if.end662

if.end662:                                        ; preds = %if.then661, %if.end658
  %516 = load i64, ptr %iB, align 8
  %517 = load i64, ptr %iA, align 8
  %rem663 = srem i64 %516, %517
  %conv664 = sitofp i64 %rem663 to double
  store double %conv664, ptr %rB, align 8
  br label %sw.epilog665

sw.epilog665:                                     ; preds = %if.end662, %if.end650, %sw.bb645, %sw.bb643, %sw.bb641
  %518 = load double, ptr %rB, align 8
  %call666 = call i32 @sqlite3IsNaN(double noundef %518)
  %tobool667 = icmp ne i32 %call666, 0
  br i1 %tobool667, label %if.then668, label %if.end669

if.then668:                                       ; preds = %sw.epilog665
  br label %arithmetic_result_is_null

if.end669:                                        ; preds = %sw.epilog665
  %519 = load double, ptr %rB, align 8
  %520 = load ptr, ptr %pOut, align 8
  %u670 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %520, i32 0, i32 0
  store double %519, ptr %u670, align 8
  %521 = load ptr, ptr %pOut, align 8
  %flags671 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %521, i32 0, i32 1
  %522 = load i16, ptr %flags671, align 8
  %conv672 = zext i16 %522 to i32
  %and673 = and i32 %conv672, -49600
  %or674 = or i32 %and673, 8
  %conv675 = trunc i32 %or674 to i16
  %523 = load ptr, ptr %pOut, align 8
  %flags676 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %523, i32 0, i32 1
  store i16 %conv675, ptr %flags676, align 8
  br label %if.end677

if.end677:                                        ; preds = %if.end669
  br label %if.end678

if.end678:                                        ; preds = %if.end677, %sw.epilog
  br label %sw.epilog5364

arithmetic_result_is_null:                        ; preds = %if.then668, %if.then657, %if.then649, %if.then635, %if.then616, %if.then605
  %524 = load ptr, ptr %pOut, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %524)
  br label %sw.epilog5364

sw.bb679:                                         ; preds = %for.body
  %525 = load ptr, ptr %pOp, align 8
  %p1680 = getelementptr inbounds nuw %struct.VdbeOp, ptr %525, i32 0, i32 3
  %526 = load i32, ptr %p1680, align 4
  %tobool681 = icmp ne i32 %526, 0
  br i1 %tobool681, label %if.then682, label %if.end686

if.then682:                                       ; preds = %sw.bb679
  %527 = load ptr, ptr %aMem, align 8
  %528 = load ptr, ptr %pOp, align 8
  %p1683 = getelementptr inbounds nuw %struct.VdbeOp, ptr %528, i32 0, i32 3
  %529 = load i32, ptr %p1683, align 4
  %idxprom684 = sext i32 %529 to i64
  %arrayidx685 = getelementptr inbounds %struct.sqlite3_value, ptr %527, i64 %idxprom684
  call void @sqlite3VdbeMemSetInt64(ptr noundef %arrayidx685, i64 noundef 0)
  br label %if.end686

if.end686:                                        ; preds = %if.then682, %sw.bb679
  br label %sw.epilog5364

sw.bb687:                                         ; preds = %for.body, %for.body, %for.body, %for.body
  %530 = load ptr, ptr %aMem, align 8
  %531 = load ptr, ptr %pOp, align 8
  %p1690 = getelementptr inbounds nuw %struct.VdbeOp, ptr %531, i32 0, i32 3
  %532 = load i32, ptr %p1690, align 4
  %idxprom691 = sext i32 %532 to i64
  %arrayidx692 = getelementptr inbounds %struct.sqlite3_value, ptr %530, i64 %idxprom691
  store ptr %arrayidx692, ptr %pIn1, align 8
  %533 = load ptr, ptr %aMem, align 8
  %534 = load ptr, ptr %pOp, align 8
  %p2693 = getelementptr inbounds nuw %struct.VdbeOp, ptr %534, i32 0, i32 4
  %535 = load i32, ptr %p2693, align 8
  %idxprom694 = sext i32 %535 to i64
  %arrayidx695 = getelementptr inbounds %struct.sqlite3_value, ptr %533, i64 %idxprom694
  store ptr %arrayidx695, ptr %pIn2, align 8
  %536 = load ptr, ptr %aMem, align 8
  %537 = load ptr, ptr %pOp, align 8
  %p3696 = getelementptr inbounds nuw %struct.VdbeOp, ptr %537, i32 0, i32 5
  %538 = load i32, ptr %p3696, align 4
  %idxprom697 = sext i32 %538 to i64
  %arrayidx698 = getelementptr inbounds %struct.sqlite3_value, ptr %536, i64 %idxprom697
  store ptr %arrayidx698, ptr %pOut, align 8
  %539 = load ptr, ptr %pIn1, align 8
  %flags699 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %539, i32 0, i32 1
  %540 = load i16, ptr %flags699, align 8
  %conv700 = zext i16 %540 to i32
  %541 = load ptr, ptr %pIn2, align 8
  %flags701 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %541, i32 0, i32 1
  %542 = load i16, ptr %flags701, align 8
  %conv702 = zext i16 %542 to i32
  %or703 = or i32 %conv700, %conv702
  %and704 = and i32 %or703, 1
  %tobool705 = icmp ne i32 %and704, 0
  br i1 %tobool705, label %if.then706, label %if.end707

if.then706:                                       ; preds = %sw.bb687
  %543 = load ptr, ptr %pOut, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %543)
  br label %sw.epilog5364

if.end707:                                        ; preds = %sw.bb687
  %544 = load ptr, ptr %pIn2, align 8
  %call708 = call i64 @sqlite3VdbeIntValue(ptr noundef %544)
  store i64 %call708, ptr %iA688, align 8
  %545 = load ptr, ptr %pIn1, align 8
  %call709 = call i64 @sqlite3VdbeIntValue(ptr noundef %545)
  store i64 %call709, ptr %iB689, align 8
  %546 = load ptr, ptr %pOp, align 8
  %opcode710 = getelementptr inbounds nuw %struct.VdbeOp, ptr %546, i32 0, i32 0
  %547 = load i8, ptr %opcode710, align 8
  store i8 %547, ptr %op, align 1
  %548 = load i8, ptr %op, align 1
  %conv711 = zext i8 %548 to i32
  %cmp712 = icmp eq i32 %conv711, 99
  br i1 %cmp712, label %if.then714, label %if.else716

if.then714:                                       ; preds = %if.end707
  %549 = load i64, ptr %iB689, align 8
  %550 = load i64, ptr %iA688, align 8
  %and715 = and i64 %550, %549
  store i64 %and715, ptr %iA688, align 8
  br label %if.end764

if.else716:                                       ; preds = %if.end707
  %551 = load i8, ptr %op, align 1
  %conv717 = zext i8 %551 to i32
  %cmp718 = icmp eq i32 %conv717, 100
  br i1 %cmp718, label %if.then720, label %if.else722

if.then720:                                       ; preds = %if.else716
  %552 = load i64, ptr %iB689, align 8
  %553 = load i64, ptr %iA688, align 8
  %or721 = or i64 %553, %552
  store i64 %or721, ptr %iA688, align 8
  br label %if.end763

if.else722:                                       ; preds = %if.else716
  %554 = load i64, ptr %iB689, align 8
  %cmp723 = icmp ne i64 %554, 0
  br i1 %cmp723, label %if.then725, label %if.end762

if.then725:                                       ; preds = %if.else722
  %555 = load i64, ptr %iB689, align 8
  %cmp726 = icmp slt i64 %555, 0
  br i1 %cmp726, label %if.then728, label %if.end736

if.then728:                                       ; preds = %if.then725
  %556 = load i8, ptr %op, align 1
  %conv729 = zext i8 %556 to i32
  %sub730 = sub nsw i32 203, %conv729
  %conv731 = trunc i32 %sub730 to i8
  store i8 %conv731, ptr %op, align 1
  %557 = load i64, ptr %iB689, align 8
  %cmp732 = icmp sgt i64 %557, -64
  br i1 %cmp732, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then728
  %558 = load i64, ptr %iB689, align 8
  %sub734 = sub nsw i64 0, %558
  br label %cond.end

cond.false:                                       ; preds = %if.then728
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond735 = phi i64 [ %sub734, %cond.true ], [ 64, %cond.false ]
  store i64 %cond735, ptr %iB689, align 8
  br label %if.end736

if.end736:                                        ; preds = %cond.end, %if.then725
  %559 = load i64, ptr %iB689, align 8
  %cmp737 = icmp sge i64 %559, 64
  br i1 %cmp737, label %if.then739, label %if.else747

if.then739:                                       ; preds = %if.end736
  %560 = load i64, ptr %iA688, align 8
  %cmp740 = icmp sge i64 %560, 0
  br i1 %cmp740, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then739
  %561 = load i8, ptr %op, align 1
  %conv742 = zext i8 %561 to i32
  %cmp743 = icmp eq i32 %conv742, 101
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then739
  %562 = phi i1 [ true, %if.then739 ], [ %cmp743, %lor.rhs ]
  %563 = zext i1 %562 to i64
  %cond745 = select i1 %562, i32 0, i32 -1
  %conv746 = sext i32 %cond745 to i64
  store i64 %conv746, ptr %iA688, align 8
  br label %if.end761

if.else747:                                       ; preds = %if.end736
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %uA, ptr align 8 %iA688, i64 8, i1 false)
  %564 = load i8, ptr %op, align 1
  %conv748 = zext i8 %564 to i32
  %cmp749 = icmp eq i32 %conv748, 101
  br i1 %cmp749, label %if.then751, label %if.else752

if.then751:                                       ; preds = %if.else747
  %565 = load i64, ptr %iB689, align 8
  %566 = load i64, ptr %uA, align 8
  %shl = shl i64 %566, %565
  store i64 %shl, ptr %uA, align 8
  br label %if.end760

if.else752:                                       ; preds = %if.else747
  %567 = load i64, ptr %iB689, align 8
  %568 = load i64, ptr %uA, align 8
  %shr = lshr i64 %568, %567
  store i64 %shr, ptr %uA, align 8
  %569 = load i64, ptr %iA688, align 8
  %cmp753 = icmp slt i64 %569, 0
  br i1 %cmp753, label %if.then755, label %if.end759

if.then755:                                       ; preds = %if.else752
  %570 = load i64, ptr %iB689, align 8
  %sub756 = sub nsw i64 64, %570
  %shl757 = shl i64 -1, %sub756
  %571 = load i64, ptr %uA, align 8
  %or758 = or i64 %571, %shl757
  store i64 %or758, ptr %uA, align 8
  br label %if.end759

if.end759:                                        ; preds = %if.then755, %if.else752
  br label %if.end760

if.end760:                                        ; preds = %if.end759, %if.then751
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %iA688, ptr align 8 %uA, i64 8, i1 false)
  br label %if.end761

if.end761:                                        ; preds = %if.end760, %lor.end
  br label %if.end762

if.end762:                                        ; preds = %if.end761, %if.else722
  br label %if.end763

if.end763:                                        ; preds = %if.end762, %if.then720
  br label %if.end764

if.end764:                                        ; preds = %if.end763, %if.then714
  %572 = load i64, ptr %iA688, align 8
  %573 = load ptr, ptr %pOut, align 8
  %u765 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %573, i32 0, i32 0
  store i64 %572, ptr %u765, align 8
  %574 = load ptr, ptr %pOut, align 8
  %flags766 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %574, i32 0, i32 1
  %575 = load i16, ptr %flags766, align 8
  %conv767 = zext i16 %575 to i32
  %and768 = and i32 %conv767, -49600
  %or769 = or i32 %and768, 4
  %conv770 = trunc i32 %or769 to i16
  %576 = load ptr, ptr %pOut, align 8
  %flags771 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %576, i32 0, i32 1
  store i16 %conv770, ptr %flags771, align 8
  br label %sw.epilog5364

sw.bb772:                                         ; preds = %for.body
  %577 = load ptr, ptr %aMem, align 8
  %578 = load ptr, ptr %pOp, align 8
  %p1773 = getelementptr inbounds nuw %struct.VdbeOp, ptr %578, i32 0, i32 3
  %579 = load i32, ptr %p1773, align 4
  %idxprom774 = sext i32 %579 to i64
  %arrayidx775 = getelementptr inbounds %struct.sqlite3_value, ptr %577, i64 %idxprom774
  store ptr %arrayidx775, ptr %pIn1, align 8
  %580 = load ptr, ptr %pIn1, align 8
  %call776 = call i32 @sqlite3VdbeMemIntegerify(ptr noundef %580)
  %581 = load ptr, ptr %pOp, align 8
  %p2777 = getelementptr inbounds nuw %struct.VdbeOp, ptr %581, i32 0, i32 4
  %582 = load i32, ptr %p2777, align 8
  %conv778 = sext i32 %582 to i64
  %583 = load ptr, ptr %pIn1, align 8
  %u779 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %583, i32 0, i32 0
  %584 = load i64, ptr %u779, align 8
  %add780 = add nsw i64 %584, %conv778
  store i64 %add780, ptr %u779, align 8
  br label %sw.epilog5364

sw.bb781:                                         ; preds = %for.body
  %585 = load ptr, ptr %aMem, align 8
  %586 = load ptr, ptr %pOp, align 8
  %p1782 = getelementptr inbounds nuw %struct.VdbeOp, ptr %586, i32 0, i32 3
  %587 = load i32, ptr %p1782, align 4
  %idxprom783 = sext i32 %587 to i64
  %arrayidx784 = getelementptr inbounds %struct.sqlite3_value, ptr %585, i64 %idxprom783
  store ptr %arrayidx784, ptr %pIn1, align 8
  %588 = load ptr, ptr %pIn1, align 8
  %flags785 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %588, i32 0, i32 1
  %589 = load i16, ptr %flags785, align 8
  %conv786 = zext i16 %589 to i32
  %and787 = and i32 %conv786, 4
  %cmp788 = icmp eq i32 %and787, 0
  br i1 %cmp788, label %if.then790, label %if.end803

if.then790:                                       ; preds = %sw.bb781
  %590 = load ptr, ptr %pIn1, align 8
  %591 = load i8, ptr %encoding, align 1
  call void @applyAffinity(ptr noundef %590, i8 noundef signext 67, i8 noundef zeroext %591)
  %592 = load ptr, ptr %pIn1, align 8
  %flags791 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %592, i32 0, i32 1
  %593 = load i16, ptr %flags791, align 8
  %conv792 = zext i16 %593 to i32
  %and793 = and i32 %conv792, 4
  %cmp794 = icmp eq i32 %and793, 0
  br i1 %cmp794, label %if.then796, label %if.end802

if.then796:                                       ; preds = %if.then790
  %594 = load ptr, ptr %pOp, align 8
  %p2797 = getelementptr inbounds nuw %struct.VdbeOp, ptr %594, i32 0, i32 4
  %595 = load i32, ptr %p2797, align 8
  %cmp798 = icmp eq i32 %595, 0
  br i1 %cmp798, label %if.then800, label %if.else801

if.then800:                                       ; preds = %if.then796
  store i32 20, ptr %rc, align 4
  br label %abort_due_to_error

if.else801:                                       ; preds = %if.then796
  br label %jump_to_p2

if.end802:                                        ; preds = %if.then790
  br label %if.end803

if.end803:                                        ; preds = %if.end802, %sw.bb781
  %596 = load ptr, ptr %pIn1, align 8
  %flags804 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %596, i32 0, i32 1
  %597 = load i16, ptr %flags804, align 8
  %conv805 = zext i16 %597 to i32
  %and806 = and i32 %conv805, -49600
  %or807 = or i32 %and806, 4
  %conv808 = trunc i32 %or807 to i16
  %598 = load ptr, ptr %pIn1, align 8
  %flags809 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %598, i32 0, i32 1
  store i16 %conv808, ptr %flags809, align 8
  br label %sw.epilog5364

sw.bb810:                                         ; preds = %for.body
  %599 = load ptr, ptr %aMem, align 8
  %600 = load ptr, ptr %pOp, align 8
  %p1811 = getelementptr inbounds nuw %struct.VdbeOp, ptr %600, i32 0, i32 3
  %601 = load i32, ptr %p1811, align 4
  %idxprom812 = sext i32 %601 to i64
  %arrayidx813 = getelementptr inbounds %struct.sqlite3_value, ptr %599, i64 %idxprom812
  store ptr %arrayidx813, ptr %pIn1, align 8
  %602 = load ptr, ptr %pIn1, align 8
  %flags814 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %602, i32 0, i32 1
  %603 = load i16, ptr %flags814, align 8
  %conv815 = zext i16 %603 to i32
  %and816 = and i32 %conv815, 36
  %tobool817 = icmp ne i32 %and816, 0
  br i1 %tobool817, label %if.then818, label %if.end820

if.then818:                                       ; preds = %sw.bb810
  %604 = load ptr, ptr %pIn1, align 8
  %call819 = call i32 @sqlite3VdbeMemRealify(ptr noundef %604)
  br label %if.end820

if.end820:                                        ; preds = %if.then818, %sw.bb810
  br label %sw.epilog5364

sw.bb821:                                         ; preds = %for.body
  %605 = load ptr, ptr %aMem, align 8
  %606 = load ptr, ptr %pOp, align 8
  %p1822 = getelementptr inbounds nuw %struct.VdbeOp, ptr %606, i32 0, i32 3
  %607 = load i32, ptr %p1822, align 4
  %idxprom823 = sext i32 %607 to i64
  %arrayidx824 = getelementptr inbounds %struct.sqlite3_value, ptr %605, i64 %idxprom823
  store ptr %arrayidx824, ptr %pIn1, align 8
  %608 = load ptr, ptr %pIn1, align 8
  %flags825 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %608, i32 0, i32 1
  %609 = load i16, ptr %flags825, align 8
  %conv826 = zext i16 %609 to i32
  %and827 = and i32 %conv826, 16384
  %tobool828 = icmp ne i32 %and827, 0
  br i1 %tobool828, label %cond.true829, label %cond.false831

cond.true829:                                     ; preds = %sw.bb821
  %610 = load ptr, ptr %pIn1, align 8
  %call830 = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %610)
  br label %cond.end832

cond.false831:                                    ; preds = %sw.bb821
  br label %cond.end832

cond.end832:                                      ; preds = %cond.false831, %cond.true829
  %cond833 = phi i32 [ %call830, %cond.true829 ], [ 0, %cond.false831 ]
  store i32 %cond833, ptr %rc, align 4
  %611 = load ptr, ptr %pIn1, align 8
  %612 = load ptr, ptr %pOp, align 8
  %p2834 = getelementptr inbounds nuw %struct.VdbeOp, ptr %612, i32 0, i32 4
  %613 = load i32, ptr %p2834, align 8
  %conv835 = trunc i32 %613 to i8
  %614 = load i8, ptr %encoding, align 1
  call void @sqlite3VdbeMemCast(ptr noundef %611, i8 noundef zeroext %conv835, i8 noundef zeroext %614)
  %615 = load i32, ptr %rc, align 4
  %tobool836 = icmp ne i32 %615, 0
  br i1 %tobool836, label %if.then837, label %if.end838

if.then837:                                       ; preds = %cond.end832
  br label %abort_due_to_error

if.end838:                                        ; preds = %cond.end832
  br label %sw.epilog5364

sw.bb839:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %616 = load ptr, ptr %aMem, align 8
  %617 = load ptr, ptr %pOp, align 8
  %p1841 = getelementptr inbounds nuw %struct.VdbeOp, ptr %617, i32 0, i32 3
  %618 = load i32, ptr %p1841, align 4
  %idxprom842 = sext i32 %618 to i64
  %arrayidx843 = getelementptr inbounds %struct.sqlite3_value, ptr %616, i64 %idxprom842
  store ptr %arrayidx843, ptr %pIn1, align 8
  %619 = load ptr, ptr %aMem, align 8
  %620 = load ptr, ptr %pOp, align 8
  %p3844 = getelementptr inbounds nuw %struct.VdbeOp, ptr %620, i32 0, i32 5
  %621 = load i32, ptr %p3844, align 4
  %idxprom845 = sext i32 %621 to i64
  %arrayidx846 = getelementptr inbounds %struct.sqlite3_value, ptr %619, i64 %idxprom845
  store ptr %arrayidx846, ptr %pIn3, align 8
  %622 = load ptr, ptr %pIn1, align 8
  %flags847 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %622, i32 0, i32 1
  %623 = load i16, ptr %flags847, align 8
  store i16 %623, ptr %flags1840, align 2
  %624 = load ptr, ptr %pIn3, align 8
  %flags848 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %624, i32 0, i32 1
  %625 = load i16, ptr %flags848, align 8
  store i16 %625, ptr %flags3, align 2
  %626 = load i16, ptr %flags1840, align 2
  %conv849 = zext i16 %626 to i32
  %627 = load i16, ptr %flags3, align 2
  %conv850 = zext i16 %627 to i32
  %or851 = or i32 %conv849, %conv850
  %and852 = and i32 %or851, 1
  %tobool853 = icmp ne i32 %and852, 0
  br i1 %tobool853, label %if.then854, label %if.else902

if.then854:                                       ; preds = %sw.bb839
  %628 = load ptr, ptr %pOp, align 8
  %p5855 = getelementptr inbounds nuw %struct.VdbeOp, ptr %628, i32 0, i32 2
  %629 = load i16, ptr %p5855, align 2
  %conv856 = zext i16 %629 to i32
  %and857 = and i32 %conv856, 128
  %tobool858 = icmp ne i32 %and857, 0
  br i1 %tobool858, label %if.then859, label %if.else878

if.then859:                                       ; preds = %if.then854
  %630 = load i16, ptr %flags1840, align 2
  %conv860 = zext i16 %630 to i32
  %631 = load i16, ptr %flags3, align 2
  %conv861 = zext i16 %631 to i32
  %and862 = and i32 %conv860, %conv861
  %and863 = and i32 %and862, 1
  %cmp864 = icmp ne i32 %and863, 0
  br i1 %cmp864, label %land.lhs.true866, label %if.else872

land.lhs.true866:                                 ; preds = %if.then859
  %632 = load i16, ptr %flags3, align 2
  %conv867 = zext i16 %632 to i32
  %and868 = and i32 %conv867, 256
  %cmp869 = icmp eq i32 %and868, 0
  br i1 %cmp869, label %if.then871, label %if.else872

if.then871:                                       ; preds = %land.lhs.true866
  store i32 0, ptr %res, align 4
  br label %if.end877

if.else872:                                       ; preds = %land.lhs.true866, %if.then859
  %633 = load i16, ptr %flags3, align 2
  %conv873 = zext i16 %633 to i32
  %and874 = and i32 %conv873, 1
  %tobool875 = icmp ne i32 %and874, 0
  %634 = zext i1 %tobool875 to i64
  %cond876 = select i1 %tobool875, i32 -1, i32 1
  store i32 %cond876, ptr %res, align 4
  br label %if.end877

if.end877:                                        ; preds = %if.else872, %if.then871
  br label %if.end901

if.else878:                                       ; preds = %if.then854
  %635 = load ptr, ptr %pOp, align 8
  %p5879 = getelementptr inbounds nuw %struct.VdbeOp, ptr %635, i32 0, i32 2
  %636 = load i16, ptr %p5879, align 2
  %conv880 = zext i16 %636 to i32
  %and881 = and i32 %conv880, 32
  %tobool882 = icmp ne i32 %and881, 0
  br i1 %tobool882, label %if.then883, label %if.else893

if.then883:                                       ; preds = %if.else878
  %637 = load ptr, ptr %aMem, align 8
  %638 = load ptr, ptr %pOp, align 8
  %p2884 = getelementptr inbounds nuw %struct.VdbeOp, ptr %638, i32 0, i32 4
  %639 = load i32, ptr %p2884, align 8
  %idxprom885 = sext i32 %639 to i64
  %arrayidx886 = getelementptr inbounds %struct.sqlite3_value, ptr %637, i64 %idxprom885
  store ptr %arrayidx886, ptr %pOut, align 8
  store i32 1, ptr %iCompare, align 4
  %640 = load ptr, ptr %pOut, align 8
  %flags887 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %640, i32 0, i32 1
  %641 = load i16, ptr %flags887, align 8
  %conv888 = zext i16 %641 to i32
  %and889 = and i32 %conv888, -49600
  %or890 = or i32 %and889, 1
  %conv891 = trunc i32 %or890 to i16
  %642 = load ptr, ptr %pOut, align 8
  %flags892 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %642, i32 0, i32 1
  store i16 %conv891, ptr %flags892, align 8
  br label %if.end900

if.else893:                                       ; preds = %if.else878
  %643 = load ptr, ptr %pOp, align 8
  %p5894 = getelementptr inbounds nuw %struct.VdbeOp, ptr %643, i32 0, i32 2
  %644 = load i16, ptr %p5894, align 2
  %conv895 = zext i16 %644 to i32
  %and896 = and i32 %conv895, 16
  %tobool897 = icmp ne i32 %and896, 0
  br i1 %tobool897, label %if.then898, label %if.end899

if.then898:                                       ; preds = %if.else893
  br label %jump_to_p2

if.end899:                                        ; preds = %if.else893
  br label %if.end900

if.end900:                                        ; preds = %if.end899, %if.then883
  br label %sw.epilog5364

if.end901:                                        ; preds = %if.end877
  br label %if.end1000

if.else902:                                       ; preds = %sw.bb839
  %645 = load ptr, ptr %pOp, align 8
  %p5903 = getelementptr inbounds nuw %struct.VdbeOp, ptr %645, i32 0, i32 2
  %646 = load i16, ptr %p5903, align 2
  %conv904 = zext i16 %646 to i32
  %and905 = and i32 %conv904, 71
  %conv906 = trunc i32 %and905 to i8
  store i8 %conv906, ptr %affinity, align 1
  %647 = load i8, ptr %affinity, align 1
  %conv907 = sext i8 %647 to i32
  %cmp908 = icmp sge i32 %conv907, 67
  br i1 %cmp908, label %if.then910, label %if.else953

if.then910:                                       ; preds = %if.else902
  %648 = load i16, ptr %flags1840, align 2
  %conv911 = zext i16 %648 to i32
  %649 = load i16, ptr %flags3, align 2
  %conv912 = zext i16 %649 to i32
  %or913 = or i32 %conv911, %conv912
  %and914 = and i32 %or913, 2
  %tobool915 = icmp ne i32 %and914, 0
  br i1 %tobool915, label %if.then916, label %if.end930

if.then916:                                       ; preds = %if.then910
  %650 = load i16, ptr %flags1840, align 2
  %conv917 = zext i16 %650 to i32
  %and918 = and i32 %conv917, 46
  %cmp919 = icmp eq i32 %and918, 2
  br i1 %cmp919, label %if.then921, label %if.end923

if.then921:                                       ; preds = %if.then916
  %651 = load ptr, ptr %pIn1, align 8
  call void @applyNumericAffinity(ptr noundef %651, i32 noundef 0)
  %652 = load ptr, ptr %pIn3, align 8
  %flags922 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %652, i32 0, i32 1
  %653 = load i16, ptr %flags922, align 8
  store i16 %653, ptr %flags3, align 2
  br label %if.end923

if.end923:                                        ; preds = %if.then921, %if.then916
  %654 = load i16, ptr %flags3, align 2
  %conv924 = zext i16 %654 to i32
  %and925 = and i32 %conv924, 46
  %cmp926 = icmp eq i32 %and925, 2
  br i1 %cmp926, label %if.then928, label %if.end929

if.then928:                                       ; preds = %if.end923
  %655 = load ptr, ptr %pIn3, align 8
  call void @applyNumericAffinity(ptr noundef %655, i32 noundef 0)
  br label %if.end929

if.end929:                                        ; preds = %if.then928, %if.end923
  br label %if.end930

if.end930:                                        ; preds = %if.end929, %if.then910
  %656 = load ptr, ptr %pIn1, align 8
  %flags931 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %656, i32 0, i32 1
  %657 = load i16, ptr %flags931, align 8
  %conv932 = zext i16 %657 to i32
  %658 = load ptr, ptr %pIn3, align 8
  %flags933 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %658, i32 0, i32 1
  %659 = load i16, ptr %flags933, align 8
  %conv934 = zext i16 %659 to i32
  %and935 = and i32 %conv932, %conv934
  %and936 = and i32 %and935, 4
  %cmp937 = icmp ne i32 %and936, 0
  br i1 %cmp937, label %if.then939, label %if.end952

if.then939:                                       ; preds = %if.end930
  %660 = load ptr, ptr %pIn3, align 8
  %u940 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %660, i32 0, i32 0
  %661 = load i64, ptr %u940, align 8
  %662 = load ptr, ptr %pIn1, align 8
  %u941 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %662, i32 0, i32 0
  %663 = load i64, ptr %u941, align 8
  %cmp942 = icmp sgt i64 %661, %663
  br i1 %cmp942, label %if.then944, label %if.end945

if.then944:                                       ; preds = %if.then939
  store i32 1, ptr %res, align 4
  br label %compare_op

if.end945:                                        ; preds = %if.then939
  %664 = load ptr, ptr %pIn3, align 8
  %u946 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %664, i32 0, i32 0
  %665 = load i64, ptr %u946, align 8
  %666 = load ptr, ptr %pIn1, align 8
  %u947 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %666, i32 0, i32 0
  %667 = load i64, ptr %u947, align 8
  %cmp948 = icmp slt i64 %665, %667
  br i1 %cmp948, label %if.then950, label %if.end951

if.then950:                                       ; preds = %if.end945
  store i32 -1, ptr %res, align 4
  br label %compare_op

if.end951:                                        ; preds = %if.end945
  store i32 0, ptr %res, align 4
  br label %compare_op

if.end952:                                        ; preds = %if.end930
  br label %if.end997

if.else953:                                       ; preds = %if.else902
  %668 = load i8, ptr %affinity, align 1
  %conv954 = sext i8 %668 to i32
  %cmp955 = icmp eq i32 %conv954, 66
  br i1 %cmp955, label %if.then957, label %if.end996

if.then957:                                       ; preds = %if.else953
  %669 = load i16, ptr %flags1840, align 2
  %conv958 = zext i16 %669 to i32
  %and959 = and i32 %conv958, 2
  %cmp960 = icmp eq i32 %and959, 0
  br i1 %cmp960, label %land.lhs.true962, label %if.end976

land.lhs.true962:                                 ; preds = %if.then957
  %670 = load i16, ptr %flags1840, align 2
  %conv963 = zext i16 %670 to i32
  %and964 = and i32 %conv963, 44
  %cmp965 = icmp ne i32 %and964, 0
  br i1 %cmp965, label %if.then967, label %if.end976

if.then967:                                       ; preds = %land.lhs.true962
  %671 = load ptr, ptr %pIn1, align 8
  %672 = load i8, ptr %encoding, align 1
  %call968 = call i32 @sqlite3VdbeMemStringify(ptr noundef %671, i8 noundef zeroext %672, i8 noundef zeroext 1)
  %673 = load ptr, ptr %pIn1, align 8
  %flags969 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %673, i32 0, i32 1
  %674 = load i16, ptr %flags969, align 8
  %conv970 = zext i16 %674 to i32
  %and971 = and i32 %conv970, -49600
  %675 = load i16, ptr %flags1840, align 2
  %conv972 = zext i16 %675 to i32
  %and973 = and i32 %conv972, 49599
  %or974 = or i32 %and971, %and973
  %conv975 = trunc i32 %or974 to i16
  store i16 %conv975, ptr %flags1840, align 2
  br label %if.end976

if.end976:                                        ; preds = %if.then967, %land.lhs.true962, %if.then957
  %676 = load i16, ptr %flags3, align 2
  %conv977 = zext i16 %676 to i32
  %and978 = and i32 %conv977, 2
  %cmp979 = icmp eq i32 %and978, 0
  br i1 %cmp979, label %land.lhs.true981, label %if.end995

land.lhs.true981:                                 ; preds = %if.end976
  %677 = load i16, ptr %flags3, align 2
  %conv982 = zext i16 %677 to i32
  %and983 = and i32 %conv982, 44
  %cmp984 = icmp ne i32 %and983, 0
  br i1 %cmp984, label %if.then986, label %if.end995

if.then986:                                       ; preds = %land.lhs.true981
  %678 = load ptr, ptr %pIn3, align 8
  %679 = load i8, ptr %encoding, align 1
  %call987 = call i32 @sqlite3VdbeMemStringify(ptr noundef %678, i8 noundef zeroext %679, i8 noundef zeroext 1)
  %680 = load ptr, ptr %pIn3, align 8
  %flags988 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %680, i32 0, i32 1
  %681 = load i16, ptr %flags988, align 8
  %conv989 = zext i16 %681 to i32
  %and990 = and i32 %conv989, -49600
  %682 = load i16, ptr %flags3, align 2
  %conv991 = zext i16 %682 to i32
  %and992 = and i32 %conv991, 49599
  %or993 = or i32 %and990, %and992
  %conv994 = trunc i32 %or993 to i16
  store i16 %conv994, ptr %flags3, align 2
  br label %if.end995

if.end995:                                        ; preds = %if.then986, %land.lhs.true981, %if.end976
  br label %if.end996

if.end996:                                        ; preds = %if.end995, %if.else953
  br label %if.end997

if.end997:                                        ; preds = %if.end996, %if.end952
  %683 = load ptr, ptr %pIn3, align 8
  %684 = load ptr, ptr %pIn1, align 8
  %685 = load ptr, ptr %pOp, align 8
  %p4998 = getelementptr inbounds nuw %struct.VdbeOp, ptr %685, i32 0, i32 6
  %686 = load ptr, ptr %p4998, align 8
  %call999 = call i32 @sqlite3MemCompare(ptr noundef %683, ptr noundef %684, ptr noundef %686)
  store i32 %call999, ptr %res, align 4
  br label %if.end1000

if.end1000:                                       ; preds = %if.end997, %if.end901
  br label %compare_op

compare_op:                                       ; preds = %if.end1000, %if.end951, %if.then950, %if.then944
  %687 = load i32, ptr %res, align 4
  %cmp1001 = icmp slt i32 %687, 0
  br i1 %cmp1001, label %if.then1003, label %if.else1010

if.then1003:                                      ; preds = %compare_op
  %688 = load ptr, ptr %pOp, align 8
  %opcode1004 = getelementptr inbounds nuw %struct.VdbeOp, ptr %688, i32 0, i32 0
  %689 = load i8, ptr %opcode1004, align 8
  %conv1005 = zext i8 %689 to i32
  %sub1006 = sub nsw i32 %conv1005, 52
  %idxprom1007 = sext i32 %sub1006 to i64
  %arrayidx1008 = getelementptr inbounds [6 x i8], ptr @sqlite3VdbeExec.aLTb, i64 0, i64 %idxprom1007
  %690 = load i8, ptr %arrayidx1008, align 1
  %conv1009 = zext i8 %690 to i32
  store i32 %conv1009, ptr %res2, align 4
  br label %if.end1028

if.else1010:                                      ; preds = %compare_op
  %691 = load i32, ptr %res, align 4
  %cmp1011 = icmp eq i32 %691, 0
  br i1 %cmp1011, label %if.then1013, label %if.else1020

if.then1013:                                      ; preds = %if.else1010
  %692 = load ptr, ptr %pOp, align 8
  %opcode1014 = getelementptr inbounds nuw %struct.VdbeOp, ptr %692, i32 0, i32 0
  %693 = load i8, ptr %opcode1014, align 8
  %conv1015 = zext i8 %693 to i32
  %sub1016 = sub nsw i32 %conv1015, 52
  %idxprom1017 = sext i32 %sub1016 to i64
  %arrayidx1018 = getelementptr inbounds [6 x i8], ptr @sqlite3VdbeExec.aEQb, i64 0, i64 %idxprom1017
  %694 = load i8, ptr %arrayidx1018, align 1
  %conv1019 = zext i8 %694 to i32
  store i32 %conv1019, ptr %res2, align 4
  br label %if.end1027

if.else1020:                                      ; preds = %if.else1010
  %695 = load ptr, ptr %pOp, align 8
  %opcode1021 = getelementptr inbounds nuw %struct.VdbeOp, ptr %695, i32 0, i32 0
  %696 = load i8, ptr %opcode1021, align 8
  %conv1022 = zext i8 %696 to i32
  %sub1023 = sub nsw i32 %conv1022, 52
  %idxprom1024 = sext i32 %sub1023 to i64
  %arrayidx1025 = getelementptr inbounds [6 x i8], ptr @sqlite3VdbeExec.aGTb, i64 0, i64 %idxprom1024
  %697 = load i8, ptr %arrayidx1025, align 1
  %conv1026 = zext i8 %697 to i32
  store i32 %conv1026, ptr %res2, align 4
  br label %if.end1027

if.end1027:                                       ; preds = %if.else1020, %if.then1013
  br label %if.end1028

if.end1028:                                       ; preds = %if.end1027, %if.then1003
  %698 = load i16, ptr %flags1840, align 2
  %699 = load ptr, ptr %pIn1, align 8
  %flags1029 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %699, i32 0, i32 1
  store i16 %698, ptr %flags1029, align 8
  %700 = load i16, ptr %flags3, align 2
  %701 = load ptr, ptr %pIn3, align 8
  %flags1030 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %701, i32 0, i32 1
  store i16 %700, ptr %flags1030, align 8
  %702 = load ptr, ptr %pOp, align 8
  %p51031 = getelementptr inbounds nuw %struct.VdbeOp, ptr %702, i32 0, i32 2
  %703 = load i16, ptr %p51031, align 2
  %conv1032 = zext i16 %703 to i32
  %and1033 = and i32 %conv1032, 32
  %tobool1034 = icmp ne i32 %and1033, 0
  br i1 %tobool1034, label %if.then1035, label %if.else1062

if.then1035:                                      ; preds = %if.end1028
  %704 = load ptr, ptr %aMem, align 8
  %705 = load ptr, ptr %pOp, align 8
  %p21036 = getelementptr inbounds nuw %struct.VdbeOp, ptr %705, i32 0, i32 4
  %706 = load i32, ptr %p21036, align 8
  %idxprom1037 = sext i32 %706 to i64
  %arrayidx1038 = getelementptr inbounds %struct.sqlite3_value, ptr %704, i64 %idxprom1037
  store ptr %arrayidx1038, ptr %pOut, align 8
  %707 = load i32, ptr %res, align 4
  store i32 %707, ptr %iCompare, align 4
  %708 = load ptr, ptr %pOp, align 8
  %p51039 = getelementptr inbounds nuw %struct.VdbeOp, ptr %708, i32 0, i32 2
  %709 = load i16, ptr %p51039, align 2
  %conv1040 = zext i16 %709 to i32
  %and1041 = and i32 %conv1040, 8
  %cmp1042 = icmp ne i32 %and1041, 0
  br i1 %cmp1042, label %if.then1044, label %if.end1053

if.then1044:                                      ; preds = %if.then1035
  %710 = load ptr, ptr %pOp, align 8
  %opcode1045 = getelementptr inbounds nuw %struct.VdbeOp, ptr %710, i32 0, i32 0
  %711 = load i8, ptr %opcode1045, align 8
  %conv1046 = zext i8 %711 to i32
  %cmp1047 = icmp eq i32 %conv1046, 53
  %conv1048 = zext i1 %cmp1047 to i32
  %712 = load i32, ptr %res2, align 4
  %cmp1049 = icmp eq i32 %conv1048, %712
  br i1 %cmp1049, label %if.then1051, label %if.end1052

if.then1051:                                      ; preds = %if.then1044
  br label %sw.epilog5364

if.end1052:                                       ; preds = %if.then1044
  br label %if.end1053

if.end1053:                                       ; preds = %if.end1052, %if.then1035
  %713 = load ptr, ptr %pOut, align 8
  %flags1054 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %713, i32 0, i32 1
  %714 = load i16, ptr %flags1054, align 8
  %conv1055 = zext i16 %714 to i32
  %and1056 = and i32 %conv1055, -49600
  %or1057 = or i32 %and1056, 4
  %conv1058 = trunc i32 %or1057 to i16
  %715 = load ptr, ptr %pOut, align 8
  %flags1059 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %715, i32 0, i32 1
  store i16 %conv1058, ptr %flags1059, align 8
  %716 = load i32, ptr %res2, align 4
  %conv1060 = sext i32 %716 to i64
  %717 = load ptr, ptr %pOut, align 8
  %u1061 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %717, i32 0, i32 0
  store i64 %conv1060, ptr %u1061, align 8
  br label %if.end1066

if.else1062:                                      ; preds = %if.end1028
  %718 = load i32, ptr %res2, align 4
  %tobool1063 = icmp ne i32 %718, 0
  br i1 %tobool1063, label %if.then1064, label %if.end1065

if.then1064:                                      ; preds = %if.else1062
  br label %jump_to_p2

if.end1065:                                       ; preds = %if.else1062
  br label %if.end1066

if.end1066:                                       ; preds = %if.end1065, %if.end1053
  br label %sw.epilog5364

sw.bb1067:                                        ; preds = %for.body
  %719 = load i32, ptr %iCompare, align 4
  %cmp1068 = icmp ne i32 %719, 0
  br i1 %cmp1068, label %if.then1070, label %if.end1071

if.then1070:                                      ; preds = %sw.bb1067
  br label %jump_to_p2

if.end1071:                                       ; preds = %sw.bb1067
  br label %sw.epilog5364

sw.bb1072:                                        ; preds = %for.body
  br label %sw.epilog5364

sw.bb1073:                                        ; preds = %for.body
  %720 = load ptr, ptr %pOp, align 8
  %p51078 = getelementptr inbounds nuw %struct.VdbeOp, ptr %720, i32 0, i32 2
  %721 = load i16, ptr %p51078, align 2
  %conv1079 = zext i16 %721 to i32
  %and1080 = and i32 %conv1079, 1
  %cmp1081 = icmp eq i32 %and1080, 0
  br i1 %cmp1081, label %if.then1083, label %if.else1084

if.then1083:                                      ; preds = %sw.bb1073
  store ptr null, ptr %aPermute, align 8
  br label %if.end1087

if.else1084:                                      ; preds = %sw.bb1073
  %722 = load ptr, ptr %pOp, align 8
  %arrayidx1085 = getelementptr inbounds %struct.VdbeOp, ptr %722, i64 -1
  %p41086 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1085, i32 0, i32 6
  %723 = load ptr, ptr %p41086, align 8
  %add.ptr = getelementptr inbounds i32, ptr %723, i64 1
  store ptr %add.ptr, ptr %aPermute, align 8
  br label %if.end1087

if.end1087:                                       ; preds = %if.else1084, %if.then1083
  %724 = load ptr, ptr %pOp, align 8
  %p31088 = getelementptr inbounds nuw %struct.VdbeOp, ptr %724, i32 0, i32 5
  %725 = load i32, ptr %p31088, align 4
  store i32 %725, ptr %n1074, align 4
  %726 = load ptr, ptr %pOp, align 8
  %p41089 = getelementptr inbounds nuw %struct.VdbeOp, ptr %726, i32 0, i32 6
  %727 = load ptr, ptr %p41089, align 8
  store ptr %727, ptr %pKeyInfo, align 8
  %728 = load ptr, ptr %pOp, align 8
  %p11090 = getelementptr inbounds nuw %struct.VdbeOp, ptr %728, i32 0, i32 3
  %729 = load i32, ptr %p11090, align 4
  store i32 %729, ptr %p11076, align 4
  %730 = load ptr, ptr %pOp, align 8
  %p21091 = getelementptr inbounds nuw %struct.VdbeOp, ptr %730, i32 0, i32 4
  %731 = load i32, ptr %p21091, align 8
  store i32 %731, ptr %p21077, align 4
  store i32 0, ptr %i1075, align 4
  br label %for.cond1092

for.cond1092:                                     ; preds = %for.inc1147, %if.end1087
  %732 = load i32, ptr %i1075, align 4
  %733 = load i32, ptr %n1074, align 4
  %cmp1093 = icmp slt i32 %732, %733
  br i1 %cmp1093, label %for.body1095, label %for.end1149

for.body1095:                                     ; preds = %for.cond1092
  %734 = load ptr, ptr %aPermute, align 8
  %tobool1096 = icmp ne ptr %734, null
  br i1 %tobool1096, label %cond.true1097, label %cond.false1100

cond.true1097:                                    ; preds = %for.body1095
  %735 = load ptr, ptr %aPermute, align 8
  %736 = load i32, ptr %i1075, align 4
  %idxprom1098 = sext i32 %736 to i64
  %arrayidx1099 = getelementptr inbounds i32, ptr %735, i64 %idxprom1098
  %737 = load i32, ptr %arrayidx1099, align 4
  br label %cond.end1101

cond.false1100:                                   ; preds = %for.body1095
  %738 = load i32, ptr %i1075, align 4
  br label %cond.end1101

cond.end1101:                                     ; preds = %cond.false1100, %cond.true1097
  %cond1102 = phi i32 [ %737, %cond.true1097 ], [ %738, %cond.false1100 ]
  store i32 %cond1102, ptr %idx, align 4
  %739 = load ptr, ptr %pKeyInfo, align 8
  %aColl = getelementptr inbounds nuw %struct.KeyInfo, ptr %739, i32 0, i32 6
  %740 = load i32, ptr %i1075, align 4
  %idxprom1103 = sext i32 %740 to i64
  %arrayidx1104 = getelementptr inbounds [1 x ptr], ptr %aColl, i64 0, i64 %idxprom1103
  %741 = load ptr, ptr %arrayidx1104, align 8
  store ptr %741, ptr %pColl, align 8
  %742 = load ptr, ptr %pKeyInfo, align 8
  %aSortFlags = getelementptr inbounds nuw %struct.KeyInfo, ptr %742, i32 0, i32 5
  %743 = load ptr, ptr %aSortFlags, align 8
  %744 = load i32, ptr %i1075, align 4
  %idxprom1105 = sext i32 %744 to i64
  %arrayidx1106 = getelementptr inbounds i8, ptr %743, i64 %idxprom1105
  %745 = load i8, ptr %arrayidx1106, align 1
  %conv1107 = zext i8 %745 to i32
  %and1108 = and i32 %conv1107, 1
  store i32 %and1108, ptr %bRev, align 4
  %746 = load ptr, ptr %aMem, align 8
  %747 = load i32, ptr %p11076, align 4
  %748 = load i32, ptr %idx, align 4
  %add1109 = add nsw i32 %747, %748
  %idxprom1110 = sext i32 %add1109 to i64
  %arrayidx1111 = getelementptr inbounds %struct.sqlite3_value, ptr %746, i64 %idxprom1110
  %749 = load ptr, ptr %aMem, align 8
  %750 = load i32, ptr %p21077, align 4
  %751 = load i32, ptr %idx, align 4
  %add1112 = add nsw i32 %750, %751
  %idxprom1113 = sext i32 %add1112 to i64
  %arrayidx1114 = getelementptr inbounds %struct.sqlite3_value, ptr %749, i64 %idxprom1113
  %752 = load ptr, ptr %pColl, align 8
  %call1115 = call i32 @sqlite3MemCompare(ptr noundef %arrayidx1111, ptr noundef %arrayidx1114, ptr noundef %752)
  store i32 %call1115, ptr %iCompare, align 4
  %753 = load i32, ptr %iCompare, align 4
  %tobool1116 = icmp ne i32 %753, 0
  br i1 %tobool1116, label %if.then1117, label %if.end1146

if.then1117:                                      ; preds = %cond.end1101
  %754 = load ptr, ptr %pKeyInfo, align 8
  %aSortFlags1118 = getelementptr inbounds nuw %struct.KeyInfo, ptr %754, i32 0, i32 5
  %755 = load ptr, ptr %aSortFlags1118, align 8
  %756 = load i32, ptr %i1075, align 4
  %idxprom1119 = sext i32 %756 to i64
  %arrayidx1120 = getelementptr inbounds i8, ptr %755, i64 %idxprom1119
  %757 = load i8, ptr %arrayidx1120, align 1
  %conv1121 = zext i8 %757 to i32
  %and1122 = and i32 %conv1121, 2
  %tobool1123 = icmp ne i32 %and1122, 0
  br i1 %tobool1123, label %land.lhs.true1124, label %if.end1141

land.lhs.true1124:                                ; preds = %if.then1117
  %758 = load ptr, ptr %aMem, align 8
  %759 = load i32, ptr %p11076, align 4
  %760 = load i32, ptr %idx, align 4
  %add1125 = add nsw i32 %759, %760
  %idxprom1126 = sext i32 %add1125 to i64
  %arrayidx1127 = getelementptr inbounds %struct.sqlite3_value, ptr %758, i64 %idxprom1126
  %flags1128 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx1127, i32 0, i32 1
  %761 = load i16, ptr %flags1128, align 8
  %conv1129 = zext i16 %761 to i32
  %and1130 = and i32 %conv1129, 1
  %tobool1131 = icmp ne i32 %and1130, 0
  br i1 %tobool1131, label %if.then1139, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true1124
  %762 = load ptr, ptr %aMem, align 8
  %763 = load i32, ptr %p21077, align 4
  %764 = load i32, ptr %idx, align 4
  %add1132 = add nsw i32 %763, %764
  %idxprom1133 = sext i32 %add1132 to i64
  %arrayidx1134 = getelementptr inbounds %struct.sqlite3_value, ptr %762, i64 %idxprom1133
  %flags1135 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx1134, i32 0, i32 1
  %765 = load i16, ptr %flags1135, align 8
  %conv1136 = zext i16 %765 to i32
  %and1137 = and i32 %conv1136, 1
  %tobool1138 = icmp ne i32 %and1137, 0
  br i1 %tobool1138, label %if.then1139, label %if.end1141

if.then1139:                                      ; preds = %lor.lhs.false, %land.lhs.true1124
  %766 = load i32, ptr %iCompare, align 4
  %sub1140 = sub nsw i32 0, %766
  store i32 %sub1140, ptr %iCompare, align 4
  br label %if.end1141

if.end1141:                                       ; preds = %if.then1139, %lor.lhs.false, %if.then1117
  %767 = load i32, ptr %bRev, align 4
  %tobool1142 = icmp ne i32 %767, 0
  br i1 %tobool1142, label %if.then1143, label %if.end1145

if.then1143:                                      ; preds = %if.end1141
  %768 = load i32, ptr %iCompare, align 4
  %sub1144 = sub nsw i32 0, %768
  store i32 %sub1144, ptr %iCompare, align 4
  br label %if.end1145

if.end1145:                                       ; preds = %if.then1143, %if.end1141
  br label %for.end1149

if.end1146:                                       ; preds = %cond.end1101
  br label %for.inc1147

for.inc1147:                                      ; preds = %if.end1146
  %769 = load i32, ptr %i1075, align 4
  %inc1148 = add nsw i32 %769, 1
  store i32 %inc1148, ptr %i1075, align 4
  br label %for.cond1092, !llvm.loop !11

for.end1149:                                      ; preds = %if.end1145, %for.cond1092
  br label %sw.epilog5364

sw.bb1150:                                        ; preds = %for.body
  %770 = load i32, ptr %iCompare, align 4
  %cmp1151 = icmp slt i32 %770, 0
  br i1 %cmp1151, label %if.then1153, label %if.else1158

if.then1153:                                      ; preds = %sw.bb1150
  %771 = load ptr, ptr %aOp, align 8
  %772 = load ptr, ptr %pOp, align 8
  %p11154 = getelementptr inbounds nuw %struct.VdbeOp, ptr %772, i32 0, i32 3
  %773 = load i32, ptr %p11154, align 4
  %sub1155 = sub nsw i32 %773, 1
  %idxprom1156 = sext i32 %sub1155 to i64
  %arrayidx1157 = getelementptr inbounds %struct.VdbeOp, ptr %771, i64 %idxprom1156
  store ptr %arrayidx1157, ptr %pOp, align 8
  br label %if.end1172

if.else1158:                                      ; preds = %sw.bb1150
  %774 = load i32, ptr %iCompare, align 4
  %cmp1159 = icmp eq i32 %774, 0
  br i1 %cmp1159, label %if.then1161, label %if.else1166

if.then1161:                                      ; preds = %if.else1158
  %775 = load ptr, ptr %aOp, align 8
  %776 = load ptr, ptr %pOp, align 8
  %p21162 = getelementptr inbounds nuw %struct.VdbeOp, ptr %776, i32 0, i32 4
  %777 = load i32, ptr %p21162, align 8
  %sub1163 = sub nsw i32 %777, 1
  %idxprom1164 = sext i32 %sub1163 to i64
  %arrayidx1165 = getelementptr inbounds %struct.VdbeOp, ptr %775, i64 %idxprom1164
  store ptr %arrayidx1165, ptr %pOp, align 8
  br label %if.end1171

if.else1166:                                      ; preds = %if.else1158
  %778 = load ptr, ptr %aOp, align 8
  %779 = load ptr, ptr %pOp, align 8
  %p31167 = getelementptr inbounds nuw %struct.VdbeOp, ptr %779, i32 0, i32 5
  %780 = load i32, ptr %p31167, align 4
  %sub1168 = sub nsw i32 %780, 1
  %idxprom1169 = sext i32 %sub1168 to i64
  %arrayidx1170 = getelementptr inbounds %struct.VdbeOp, ptr %778, i64 %idxprom1169
  store ptr %arrayidx1170, ptr %pOp, align 8
  br label %if.end1171

if.end1171:                                       ; preds = %if.else1166, %if.then1161
  br label %if.end1172

if.end1172:                                       ; preds = %if.end1171, %if.then1153
  br label %sw.epilog5364

sw.bb1173:                                        ; preds = %for.body, %for.body
  %781 = load ptr, ptr %aMem, align 8
  %782 = load ptr, ptr %pOp, align 8
  %p11174 = getelementptr inbounds nuw %struct.VdbeOp, ptr %782, i32 0, i32 3
  %783 = load i32, ptr %p11174, align 4
  %idxprom1175 = sext i32 %783 to i64
  %arrayidx1176 = getelementptr inbounds %struct.sqlite3_value, ptr %781, i64 %idxprom1175
  %call1177 = call i32 @sqlite3VdbeBooleanValue(ptr noundef %arrayidx1176, i32 noundef 2)
  store i32 %call1177, ptr %v1, align 4
  %784 = load ptr, ptr %aMem, align 8
  %785 = load ptr, ptr %pOp, align 8
  %p21178 = getelementptr inbounds nuw %struct.VdbeOp, ptr %785, i32 0, i32 4
  %786 = load i32, ptr %p21178, align 8
  %idxprom1179 = sext i32 %786 to i64
  %arrayidx1180 = getelementptr inbounds %struct.sqlite3_value, ptr %784, i64 %idxprom1179
  %call1181 = call i32 @sqlite3VdbeBooleanValue(ptr noundef %arrayidx1180, i32 noundef 2)
  store i32 %call1181, ptr %v2, align 4
  %787 = load ptr, ptr %pOp, align 8
  %opcode1182 = getelementptr inbounds nuw %struct.VdbeOp, ptr %787, i32 0, i32 0
  %788 = load i8, ptr %opcode1182, align 8
  %conv1183 = zext i8 %788 to i32
  %cmp1184 = icmp eq i32 %conv1183, 44
  br i1 %cmp1184, label %if.then1186, label %if.else1192

if.then1186:                                      ; preds = %sw.bb1173
  %789 = load i32, ptr %v1, align 4
  %mul1187 = mul nsw i32 %789, 3
  %790 = load i32, ptr %v2, align 4
  %add1188 = add nsw i32 %mul1187, %790
  %idxprom1189 = sext i32 %add1188 to i64
  %arrayidx1190 = getelementptr inbounds [9 x i8], ptr @sqlite3VdbeExec.and_logic, i64 0, i64 %idxprom1189
  %791 = load i8, ptr %arrayidx1190, align 1
  %conv1191 = zext i8 %791 to i32
  store i32 %conv1191, ptr %v1, align 4
  br label %if.end1198

if.else1192:                                      ; preds = %sw.bb1173
  %792 = load i32, ptr %v1, align 4
  %mul1193 = mul nsw i32 %792, 3
  %793 = load i32, ptr %v2, align 4
  %add1194 = add nsw i32 %mul1193, %793
  %idxprom1195 = sext i32 %add1194 to i64
  %arrayidx1196 = getelementptr inbounds [9 x i8], ptr @sqlite3VdbeExec.or_logic, i64 0, i64 %idxprom1195
  %794 = load i8, ptr %arrayidx1196, align 1
  %conv1197 = zext i8 %794 to i32
  store i32 %conv1197, ptr %v1, align 4
  br label %if.end1198

if.end1198:                                       ; preds = %if.else1192, %if.then1186
  %795 = load ptr, ptr %aMem, align 8
  %796 = load ptr, ptr %pOp, align 8
  %p31199 = getelementptr inbounds nuw %struct.VdbeOp, ptr %796, i32 0, i32 5
  %797 = load i32, ptr %p31199, align 4
  %idxprom1200 = sext i32 %797 to i64
  %arrayidx1201 = getelementptr inbounds %struct.sqlite3_value, ptr %795, i64 %idxprom1200
  store ptr %arrayidx1201, ptr %pOut, align 8
  %798 = load i32, ptr %v1, align 4
  %cmp1202 = icmp eq i32 %798, 2
  br i1 %cmp1202, label %if.then1204, label %if.else1211

if.then1204:                                      ; preds = %if.end1198
  %799 = load ptr, ptr %pOut, align 8
  %flags1205 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %799, i32 0, i32 1
  %800 = load i16, ptr %flags1205, align 8
  %conv1206 = zext i16 %800 to i32
  %and1207 = and i32 %conv1206, -49600
  %or1208 = or i32 %and1207, 1
  %conv1209 = trunc i32 %or1208 to i16
  %801 = load ptr, ptr %pOut, align 8
  %flags1210 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %801, i32 0, i32 1
  store i16 %conv1209, ptr %flags1210, align 8
  br label %if.end1220

if.else1211:                                      ; preds = %if.end1198
  %802 = load i32, ptr %v1, align 4
  %conv1212 = sext i32 %802 to i64
  %803 = load ptr, ptr %pOut, align 8
  %u1213 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %803, i32 0, i32 0
  store i64 %conv1212, ptr %u1213, align 8
  %804 = load ptr, ptr %pOut, align 8
  %flags1214 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %804, i32 0, i32 1
  %805 = load i16, ptr %flags1214, align 8
  %conv1215 = zext i16 %805 to i32
  %and1216 = and i32 %conv1215, -49600
  %or1217 = or i32 %and1216, 4
  %conv1218 = trunc i32 %or1217 to i16
  %806 = load ptr, ptr %pOut, align 8
  %flags1219 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %806, i32 0, i32 1
  store i16 %conv1218, ptr %flags1219, align 8
  br label %if.end1220

if.end1220:                                       ; preds = %if.else1211, %if.then1204
  br label %sw.epilog5364

sw.bb1221:                                        ; preds = %for.body
  %807 = load ptr, ptr %aMem, align 8
  %808 = load ptr, ptr %pOp, align 8
  %p21222 = getelementptr inbounds nuw %struct.VdbeOp, ptr %808, i32 0, i32 4
  %809 = load i32, ptr %p21222, align 8
  %idxprom1223 = sext i32 %809 to i64
  %arrayidx1224 = getelementptr inbounds %struct.sqlite3_value, ptr %807, i64 %idxprom1223
  %810 = load ptr, ptr %aMem, align 8
  %811 = load ptr, ptr %pOp, align 8
  %p11225 = getelementptr inbounds nuw %struct.VdbeOp, ptr %811, i32 0, i32 3
  %812 = load i32, ptr %p11225, align 4
  %idxprom1226 = sext i32 %812 to i64
  %arrayidx1227 = getelementptr inbounds %struct.sqlite3_value, ptr %810, i64 %idxprom1226
  %813 = load ptr, ptr %pOp, align 8
  %p31228 = getelementptr inbounds nuw %struct.VdbeOp, ptr %813, i32 0, i32 5
  %814 = load i32, ptr %p31228, align 4
  %call1229 = call i32 @sqlite3VdbeBooleanValue(ptr noundef %arrayidx1227, i32 noundef %814)
  %815 = load ptr, ptr %pOp, align 8
  %p41230 = getelementptr inbounds nuw %struct.VdbeOp, ptr %815, i32 0, i32 6
  %816 = load i32, ptr %p41230, align 8
  %xor = xor i32 %call1229, %816
  %conv1231 = sext i32 %xor to i64
  call void @sqlite3VdbeMemSetInt64(ptr noundef %arrayidx1224, i64 noundef %conv1231)
  br label %sw.epilog5364

sw.bb1232:                                        ; preds = %for.body
  %817 = load ptr, ptr %aMem, align 8
  %818 = load ptr, ptr %pOp, align 8
  %p11233 = getelementptr inbounds nuw %struct.VdbeOp, ptr %818, i32 0, i32 3
  %819 = load i32, ptr %p11233, align 4
  %idxprom1234 = sext i32 %819 to i64
  %arrayidx1235 = getelementptr inbounds %struct.sqlite3_value, ptr %817, i64 %idxprom1234
  store ptr %arrayidx1235, ptr %pIn1, align 8
  %820 = load ptr, ptr %aMem, align 8
  %821 = load ptr, ptr %pOp, align 8
  %p21236 = getelementptr inbounds nuw %struct.VdbeOp, ptr %821, i32 0, i32 4
  %822 = load i32, ptr %p21236, align 8
  %idxprom1237 = sext i32 %822 to i64
  %arrayidx1238 = getelementptr inbounds %struct.sqlite3_value, ptr %820, i64 %idxprom1237
  store ptr %arrayidx1238, ptr %pOut, align 8
  %823 = load ptr, ptr %pIn1, align 8
  %flags1239 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %823, i32 0, i32 1
  %824 = load i16, ptr %flags1239, align 8
  %conv1240 = zext i16 %824 to i32
  %and1241 = and i32 %conv1240, 1
  %cmp1242 = icmp eq i32 %and1241, 0
  br i1 %cmp1242, label %if.then1244, label %if.else1248

if.then1244:                                      ; preds = %sw.bb1232
  %825 = load ptr, ptr %pOut, align 8
  %826 = load ptr, ptr %pIn1, align 8
  %call1245 = call i32 @sqlite3VdbeBooleanValue(ptr noundef %826, i32 noundef 0)
  %tobool1246 = icmp ne i32 %call1245, 0
  %lnot = xor i1 %tobool1246, true
  %lnot.ext = zext i1 %lnot to i32
  %conv1247 = sext i32 %lnot.ext to i64
  call void @sqlite3VdbeMemSetInt64(ptr noundef %825, i64 noundef %conv1247)
  br label %if.end1249

if.else1248:                                      ; preds = %sw.bb1232
  %827 = load ptr, ptr %pOut, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %827)
  br label %if.end1249

if.end1249:                                       ; preds = %if.else1248, %if.then1244
  br label %sw.epilog5364

sw.bb1250:                                        ; preds = %for.body
  %828 = load ptr, ptr %aMem, align 8
  %829 = load ptr, ptr %pOp, align 8
  %p11251 = getelementptr inbounds nuw %struct.VdbeOp, ptr %829, i32 0, i32 3
  %830 = load i32, ptr %p11251, align 4
  %idxprom1252 = sext i32 %830 to i64
  %arrayidx1253 = getelementptr inbounds %struct.sqlite3_value, ptr %828, i64 %idxprom1252
  store ptr %arrayidx1253, ptr %pIn1, align 8
  %831 = load ptr, ptr %aMem, align 8
  %832 = load ptr, ptr %pOp, align 8
  %p21254 = getelementptr inbounds nuw %struct.VdbeOp, ptr %832, i32 0, i32 4
  %833 = load i32, ptr %p21254, align 8
  %idxprom1255 = sext i32 %833 to i64
  %arrayidx1256 = getelementptr inbounds %struct.sqlite3_value, ptr %831, i64 %idxprom1255
  store ptr %arrayidx1256, ptr %pOut, align 8
  %834 = load ptr, ptr %pOut, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %834)
  %835 = load ptr, ptr %pIn1, align 8
  %flags1257 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %835, i32 0, i32 1
  %836 = load i16, ptr %flags1257, align 8
  %conv1258 = zext i16 %836 to i32
  %and1259 = and i32 %conv1258, 1
  %cmp1260 = icmp eq i32 %and1259, 0
  br i1 %cmp1260, label %if.then1262, label %if.end1266

if.then1262:                                      ; preds = %sw.bb1250
  %837 = load ptr, ptr %pOut, align 8
  %flags1263 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %837, i32 0, i32 1
  store i16 4, ptr %flags1263, align 8
  %838 = load ptr, ptr %pIn1, align 8
  %call1264 = call i64 @sqlite3VdbeIntValue(ptr noundef %838)
  %not = xor i64 %call1264, -1
  %839 = load ptr, ptr %pOut, align 8
  %u1265 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %839, i32 0, i32 0
  store i64 %not, ptr %u1265, align 8
  br label %if.end1266

if.end1266:                                       ; preds = %if.then1262, %sw.bb1250
  br label %sw.epilog5364

sw.bb1267:                                        ; preds = %for.body
  %840 = load ptr, ptr %p.addr, align 8
  %pFrame1268 = getelementptr inbounds nuw %struct.Vdbe, ptr %840, i32 0, i32 43
  %841 = load ptr, ptr %pFrame1268, align 8
  %tobool1269 = icmp ne ptr %841, null
  br i1 %tobool1269, label %if.then1270, label %if.else1299

if.then1270:                                      ; preds = %sw.bb1267
  %842 = load ptr, ptr %pOp, align 8
  %843 = load ptr, ptr %p.addr, align 8
  %aOp1271 = getelementptr inbounds nuw %struct.Vdbe, ptr %843, i32 0, i32 23
  %844 = load ptr, ptr %aOp1271, align 8
  %sub.ptr.lhs.cast1272 = ptrtoint ptr %842 to i64
  %sub.ptr.rhs.cast1273 = ptrtoint ptr %844 to i64
  %sub.ptr.sub1274 = sub i64 %sub.ptr.lhs.cast1272, %sub.ptr.rhs.cast1273
  %sub.ptr.div1275 = sdiv exact i64 %sub.ptr.sub1274, 24
  %conv1276 = trunc i64 %sub.ptr.div1275 to i32
  store i32 %conv1276, ptr %iAddr, align 4
  %845 = load ptr, ptr %p.addr, align 8
  %pFrame1277 = getelementptr inbounds nuw %struct.Vdbe, ptr %845, i32 0, i32 43
  %846 = load ptr, ptr %pFrame1277, align 8
  %aOnce = getelementptr inbounds nuw %struct.VdbeFrame, ptr %846, i32 0, i32 6
  %847 = load ptr, ptr %aOnce, align 8
  %848 = load i32, ptr %iAddr, align 4
  %div1278 = udiv i32 %848, 8
  %idxprom1279 = zext i32 %div1278 to i64
  %arrayidx1280 = getelementptr inbounds nuw i8, ptr %847, i64 %idxprom1279
  %849 = load i8, ptr %arrayidx1280, align 1
  %conv1281 = zext i8 %849 to i32
  %850 = load i32, ptr %iAddr, align 4
  %and1282 = and i32 %850, 7
  %shl1283 = shl i32 1, %and1282
  %and1284 = and i32 %conv1281, %shl1283
  %cmp1285 = icmp ne i32 %and1284, 0
  br i1 %cmp1285, label %if.then1287, label %if.end1288

if.then1287:                                      ; preds = %if.then1270
  br label %jump_to_p2

if.end1288:                                       ; preds = %if.then1270
  %851 = load i32, ptr %iAddr, align 4
  %and1289 = and i32 %851, 7
  %shl1290 = shl i32 1, %and1289
  %852 = load ptr, ptr %p.addr, align 8
  %pFrame1291 = getelementptr inbounds nuw %struct.Vdbe, ptr %852, i32 0, i32 43
  %853 = load ptr, ptr %pFrame1291, align 8
  %aOnce1292 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %853, i32 0, i32 6
  %854 = load ptr, ptr %aOnce1292, align 8
  %855 = load i32, ptr %iAddr, align 4
  %div1293 = udiv i32 %855, 8
  %idxprom1294 = zext i32 %div1293 to i64
  %arrayidx1295 = getelementptr inbounds nuw i8, ptr %854, i64 %idxprom1294
  %856 = load i8, ptr %arrayidx1295, align 1
  %conv1296 = zext i8 %856 to i32
  %or1297 = or i32 %conv1296, %shl1290
  %conv1298 = trunc i32 %or1297 to i8
  store i8 %conv1298, ptr %arrayidx1295, align 1
  br label %if.end1308

if.else1299:                                      ; preds = %sw.bb1267
  %857 = load ptr, ptr %p.addr, align 8
  %aOp1300 = getelementptr inbounds nuw %struct.Vdbe, ptr %857, i32 0, i32 23
  %858 = load ptr, ptr %aOp1300, align 8
  %arrayidx1301 = getelementptr inbounds %struct.VdbeOp, ptr %858, i64 0
  %p11302 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1301, i32 0, i32 3
  %859 = load i32, ptr %p11302, align 4
  %860 = load ptr, ptr %pOp, align 8
  %p11303 = getelementptr inbounds nuw %struct.VdbeOp, ptr %860, i32 0, i32 3
  %861 = load i32, ptr %p11303, align 4
  %cmp1304 = icmp eq i32 %859, %861
  br i1 %cmp1304, label %if.then1306, label %if.end1307

if.then1306:                                      ; preds = %if.else1299
  br label %jump_to_p2

if.end1307:                                       ; preds = %if.else1299
  br label %if.end1308

if.end1308:                                       ; preds = %if.end1307, %if.end1288
  %862 = load ptr, ptr %p.addr, align 8
  %aOp1309 = getelementptr inbounds nuw %struct.Vdbe, ptr %862, i32 0, i32 23
  %863 = load ptr, ptr %aOp1309, align 8
  %arrayidx1310 = getelementptr inbounds %struct.VdbeOp, ptr %863, i64 0
  %p11311 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1310, i32 0, i32 3
  %864 = load i32, ptr %p11311, align 4
  %865 = load ptr, ptr %pOp, align 8
  %p11312 = getelementptr inbounds nuw %struct.VdbeOp, ptr %865, i32 0, i32 3
  store i32 %864, ptr %p11312, align 4
  br label %sw.epilog5364

sw.bb1313:                                        ; preds = %for.body
  %866 = load ptr, ptr %aMem, align 8
  %867 = load ptr, ptr %pOp, align 8
  %p11314 = getelementptr inbounds nuw %struct.VdbeOp, ptr %867, i32 0, i32 3
  %868 = load i32, ptr %p11314, align 4
  %idxprom1315 = sext i32 %868 to i64
  %arrayidx1316 = getelementptr inbounds %struct.sqlite3_value, ptr %866, i64 %idxprom1315
  %869 = load ptr, ptr %pOp, align 8
  %p31317 = getelementptr inbounds nuw %struct.VdbeOp, ptr %869, i32 0, i32 5
  %870 = load i32, ptr %p31317, align 4
  %call1318 = call i32 @sqlite3VdbeBooleanValue(ptr noundef %arrayidx1316, i32 noundef %870)
  store i32 %call1318, ptr %c, align 4
  %871 = load i32, ptr %c, align 4
  %tobool1319 = icmp ne i32 %871, 0
  br i1 %tobool1319, label %if.then1320, label %if.end1321

if.then1320:                                      ; preds = %sw.bb1313
  br label %jump_to_p2

if.end1321:                                       ; preds = %sw.bb1313
  br label %sw.epilog5364

sw.bb1322:                                        ; preds = %for.body
  %872 = load ptr, ptr %aMem, align 8
  %873 = load ptr, ptr %pOp, align 8
  %p11324 = getelementptr inbounds nuw %struct.VdbeOp, ptr %873, i32 0, i32 3
  %874 = load i32, ptr %p11324, align 4
  %idxprom1325 = sext i32 %874 to i64
  %arrayidx1326 = getelementptr inbounds %struct.sqlite3_value, ptr %872, i64 %idxprom1325
  %875 = load ptr, ptr %pOp, align 8
  %p31327 = getelementptr inbounds nuw %struct.VdbeOp, ptr %875, i32 0, i32 5
  %876 = load i32, ptr %p31327, align 4
  %tobool1328 = icmp ne i32 %876, 0
  %lnot1329 = xor i1 %tobool1328, true
  %lnot.ext1330 = zext i1 %lnot1329 to i32
  %call1331 = call i32 @sqlite3VdbeBooleanValue(ptr noundef %arrayidx1326, i32 noundef %lnot.ext1330)
  %tobool1332 = icmp ne i32 %call1331, 0
  %lnot1333 = xor i1 %tobool1332, true
  %lnot.ext1334 = zext i1 %lnot1333 to i32
  store i32 %lnot.ext1334, ptr %c1323, align 4
  %877 = load i32, ptr %c1323, align 4
  %tobool1335 = icmp ne i32 %877, 0
  br i1 %tobool1335, label %if.then1336, label %if.end1337

if.then1336:                                      ; preds = %sw.bb1322
  br label %jump_to_p2

if.end1337:                                       ; preds = %sw.bb1322
  br label %sw.epilog5364

sw.bb1338:                                        ; preds = %for.body
  %878 = load ptr, ptr %aMem, align 8
  %879 = load ptr, ptr %pOp, align 8
  %p11339 = getelementptr inbounds nuw %struct.VdbeOp, ptr %879, i32 0, i32 3
  %880 = load i32, ptr %p11339, align 4
  %idxprom1340 = sext i32 %880 to i64
  %arrayidx1341 = getelementptr inbounds %struct.sqlite3_value, ptr %878, i64 %idxprom1340
  store ptr %arrayidx1341, ptr %pIn1, align 8
  %881 = load ptr, ptr %pIn1, align 8
  %flags1342 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %881, i32 0, i32 1
  %882 = load i16, ptr %flags1342, align 8
  %conv1343 = zext i16 %882 to i32
  %and1344 = and i32 %conv1343, 1
  %cmp1345 = icmp ne i32 %and1344, 0
  br i1 %cmp1345, label %if.then1347, label %if.end1348

if.then1347:                                      ; preds = %sw.bb1338
  br label %jump_to_p2

if.end1348:                                       ; preds = %sw.bb1338
  br label %sw.epilog5364

sw.bb1349:                                        ; preds = %for.body
  %883 = load ptr, ptr %aMem, align 8
  %884 = load ptr, ptr %pOp, align 8
  %p11350 = getelementptr inbounds nuw %struct.VdbeOp, ptr %884, i32 0, i32 3
  %885 = load i32, ptr %p11350, align 4
  %idxprom1351 = sext i32 %885 to i64
  %arrayidx1352 = getelementptr inbounds %struct.sqlite3_value, ptr %883, i64 %idxprom1351
  store ptr %arrayidx1352, ptr %pIn1, align 8
  %886 = load ptr, ptr %pIn1, align 8
  %flags1353 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %886, i32 0, i32 1
  %887 = load i16, ptr %flags1353, align 8
  %conv1354 = zext i16 %887 to i32
  %and1355 = and i32 %conv1354, 1
  %cmp1356 = icmp eq i32 %and1355, 0
  br i1 %cmp1356, label %if.then1358, label %if.end1359

if.then1358:                                      ; preds = %sw.bb1349
  br label %jump_to_p2

if.end1359:                                       ; preds = %sw.bb1349
  br label %sw.epilog5364

sw.bb1360:                                        ; preds = %for.body
  %888 = load ptr, ptr %p.addr, align 8
  %apCsr = getelementptr inbounds nuw %struct.Vdbe, ptr %888, i32 0, i32 21
  %889 = load ptr, ptr %apCsr, align 8
  %890 = load ptr, ptr %pOp, align 8
  %p11361 = getelementptr inbounds nuw %struct.VdbeOp, ptr %890, i32 0, i32 3
  %891 = load i32, ptr %p11361, align 4
  %idxprom1362 = sext i32 %891 to i64
  %arrayidx1363 = getelementptr inbounds ptr, ptr %889, i64 %idxprom1362
  %892 = load ptr, ptr %arrayidx1363, align 8
  %nullRow = getelementptr inbounds nuw %struct.VdbeCursor, ptr %892, i32 0, i32 2
  %893 = load i8, ptr %nullRow, align 2
  %tobool1364 = icmp ne i8 %893, 0
  br i1 %tobool1364, label %if.then1365, label %if.end1368

if.then1365:                                      ; preds = %sw.bb1360
  %894 = load ptr, ptr %aMem, align 8
  %895 = load ptr, ptr %pOp, align 8
  %p31366 = getelementptr inbounds nuw %struct.VdbeOp, ptr %895, i32 0, i32 5
  %896 = load i32, ptr %p31366, align 4
  %idx.ext = sext i32 %896 to i64
  %add.ptr1367 = getelementptr inbounds %struct.sqlite3_value, ptr %894, i64 %idx.ext
  call void @sqlite3VdbeMemSetNull(ptr noundef %add.ptr1367)
  br label %jump_to_p2

if.end1368:                                       ; preds = %sw.bb1360
  br label %sw.epilog5364

sw.bb1369:                                        ; preds = %for.body
  %897 = load ptr, ptr %p.addr, align 8
  %apCsr1372 = getelementptr inbounds nuw %struct.Vdbe, ptr %897, i32 0, i32 21
  %898 = load ptr, ptr %apCsr1372, align 8
  %899 = load ptr, ptr %pOp, align 8
  %p11373 = getelementptr inbounds nuw %struct.VdbeOp, ptr %899, i32 0, i32 3
  %900 = load i32, ptr %p11373, align 4
  %idxprom1374 = sext i32 %900 to i64
  %arrayidx1375 = getelementptr inbounds ptr, ptr %898, i64 %idxprom1374
  %901 = load ptr, ptr %arrayidx1375, align 8
  store ptr %901, ptr %pC, align 8
  %902 = load ptr, ptr %pOp, align 8
  %p21376 = getelementptr inbounds nuw %struct.VdbeOp, ptr %902, i32 0, i32 4
  %903 = load i32, ptr %p21376, align 8
  store i32 %903, ptr %p21370, align 4
  %call1377 = call i32 @sqlite3VdbeCursorMoveto(ptr noundef %pC, ptr noundef %p21370)
  store i32 %call1377, ptr %rc, align 4
  %904 = load i32, ptr %rc, align 4
  %tobool1378 = icmp ne i32 %904, 0
  br i1 %tobool1378, label %if.then1379, label %if.end1380

if.then1379:                                      ; preds = %sw.bb1369
  br label %abort_due_to_error

if.end1380:                                       ; preds = %sw.bb1369
  %905 = load ptr, ptr %aMem, align 8
  %906 = load ptr, ptr %pOp, align 8
  %p31381 = getelementptr inbounds nuw %struct.VdbeOp, ptr %906, i32 0, i32 5
  %907 = load i32, ptr %p31381, align 4
  %idxprom1382 = sext i32 %907 to i64
  %arrayidx1383 = getelementptr inbounds %struct.sqlite3_value, ptr %905, i64 %idxprom1382
  store ptr %arrayidx1383, ptr %pDest, align 8
  %908 = load ptr, ptr %pC, align 8
  %aOffset1384 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %908, i32 0, i32 19
  %909 = load ptr, ptr %aOffset1384, align 8
  store ptr %909, ptr %aOffset, align 8
  %910 = load ptr, ptr %pC, align 8
  %cacheStatus = getelementptr inbounds nuw %struct.VdbeCursor, ptr %910, i32 0, i32 9
  %911 = load i32, ptr %cacheStatus, align 8
  %912 = load ptr, ptr %p.addr, align 8
  %cacheCtr1385 = getelementptr inbounds nuw %struct.Vdbe, ptr %912, i32 0, i32 9
  %913 = load i32, ptr %cacheCtr1385, align 8
  %cmp1386 = icmp ne i32 %911, %913
  br i1 %cmp1386, label %if.then1388, label %if.end1455

if.then1388:                                      ; preds = %if.end1380
  %914 = load ptr, ptr %pC, align 8
  %nullRow1389 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %914, i32 0, i32 2
  %915 = load i8, ptr %nullRow1389, align 2
  %tobool1390 = icmp ne i8 %915, 0
  br i1 %tobool1390, label %if.then1391, label %if.else1402

if.then1391:                                      ; preds = %if.then1388
  %916 = load ptr, ptr %pC, align 8
  %eCurType = getelementptr inbounds nuw %struct.VdbeCursor, ptr %916, i32 0, i32 0
  %917 = load i8, ptr %eCurType, align 8
  %conv1392 = zext i8 %917 to i32
  %cmp1393 = icmp eq i32 %conv1392, 3
  br i1 %cmp1393, label %if.then1395, label %if.else1400

if.then1395:                                      ; preds = %if.then1391
  %918 = load ptr, ptr %aMem, align 8
  %919 = load ptr, ptr %pC, align 8
  %seekResult = getelementptr inbounds nuw %struct.VdbeCursor, ptr %919, i32 0, i32 10
  %920 = load i32, ptr %seekResult, align 4
  %idxprom1396 = sext i32 %920 to i64
  %arrayidx1397 = getelementptr inbounds %struct.sqlite3_value, ptr %918, i64 %idxprom1396
  store ptr %arrayidx1397, ptr %pReg, align 8
  %921 = load ptr, ptr %pReg, align 8
  %n1398 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %921, i32 0, i32 4
  %922 = load i32, ptr %n1398, align 4
  %923 = load ptr, ptr %pC, align 8
  %szRow = getelementptr inbounds nuw %struct.VdbeCursor, ptr %923, i32 0, i32 22
  store i32 %922, ptr %szRow, align 4
  %924 = load ptr, ptr %pC, align 8
  %payloadSize = getelementptr inbounds nuw %struct.VdbeCursor, ptr %924, i32 0, i32 21
  store i32 %922, ptr %payloadSize, align 8
  %925 = load ptr, ptr %pReg, align 8
  %z1399 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %925, i32 0, i32 5
  %926 = load ptr, ptr %z1399, align 8
  %927 = load ptr, ptr %pC, align 8
  %aRow = getelementptr inbounds nuw %struct.VdbeCursor, ptr %927, i32 0, i32 20
  store ptr %926, ptr %aRow, align 8
  br label %if.end1401

if.else1400:                                      ; preds = %if.then1391
  %928 = load ptr, ptr %pDest, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %928)
  br label %op_column_out

if.end1401:                                       ; preds = %if.then1395
  br label %if.end1415

if.else1402:                                      ; preds = %if.then1388
  %929 = load ptr, ptr %pC, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %929, i32 0, i32 12
  %930 = load ptr, ptr %uc, align 8
  store ptr %930, ptr %pCrsr, align 8
  %931 = load ptr, ptr %pCrsr, align 8
  %call1403 = call i32 @sqlite3BtreePayloadSize(ptr noundef %931)
  %932 = load ptr, ptr %pC, align 8
  %payloadSize1404 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %932, i32 0, i32 21
  store i32 %call1403, ptr %payloadSize1404, align 8
  %933 = load ptr, ptr %pCrsr, align 8
  %934 = load ptr, ptr %pC, align 8
  %szRow1405 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %934, i32 0, i32 22
  %call1406 = call ptr @sqlite3BtreePayloadFetch(ptr noundef %933, ptr noundef %szRow1405)
  %935 = load ptr, ptr %pC, align 8
  %aRow1407 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %935, i32 0, i32 20
  store ptr %call1406, ptr %aRow1407, align 8
  %936 = load ptr, ptr %pC, align 8
  %payloadSize1408 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %936, i32 0, i32 21
  %937 = load i32, ptr %payloadSize1408, align 8
  %938 = load ptr, ptr %db, align 8
  %aLimit1409 = getelementptr inbounds nuw %struct.sqlite3, ptr %938, i32 0, i32 33
  %arrayidx1410 = getelementptr inbounds [12 x i32], ptr %aLimit1409, i64 0, i64 0
  %939 = load i32, ptr %arrayidx1410, align 4
  %cmp1411 = icmp ugt i32 %937, %939
  br i1 %cmp1411, label %if.then1413, label %if.end1414

if.then1413:                                      ; preds = %if.else1402
  br label %too_big

if.end1414:                                       ; preds = %if.else1402
  br label %if.end1415

if.end1415:                                       ; preds = %if.end1414, %if.end1401
  %940 = load ptr, ptr %p.addr, align 8
  %cacheCtr1416 = getelementptr inbounds nuw %struct.Vdbe, ptr %940, i32 0, i32 9
  %941 = load i32, ptr %cacheCtr1416, align 8
  %942 = load ptr, ptr %pC, align 8
  %cacheStatus1417 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %942, i32 0, i32 9
  store i32 %941, ptr %cacheStatus1417, align 8
  %943 = load ptr, ptr %pC, align 8
  %aRow1418 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %943, i32 0, i32 20
  %944 = load ptr, ptr %aRow1418, align 8
  %945 = load i8, ptr %944, align 1
  %conv1419 = zext i8 %945 to i32
  %cmp1420 = icmp slt i32 %conv1419, 128
  br i1 %cmp1420, label %cond.true1422, label %cond.false1426

cond.true1422:                                    ; preds = %if.end1415
  %946 = load ptr, ptr %pC, align 8
  %aRow1423 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %946, i32 0, i32 20
  %947 = load ptr, ptr %aRow1423, align 8
  %948 = load i8, ptr %947, align 1
  %conv1424 = zext i8 %948 to i32
  %949 = load ptr, ptr %aOffset, align 8
  %arrayidx1425 = getelementptr inbounds i32, ptr %949, i64 0
  store i32 %conv1424, ptr %arrayidx1425, align 4
  br label %cond.end1431

cond.false1426:                                   ; preds = %if.end1415
  %950 = load ptr, ptr %pC, align 8
  %aRow1427 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %950, i32 0, i32 20
  %951 = load ptr, ptr %aRow1427, align 8
  %952 = load ptr, ptr %aOffset, align 8
  %arrayidx1428 = getelementptr inbounds i32, ptr %952, i64 0
  %call1429 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %951, ptr noundef %arrayidx1428)
  %conv1430 = zext i8 %call1429 to i32
  br label %cond.end1431

cond.end1431:                                     ; preds = %cond.false1426, %cond.true1422
  %cond1432 = phi i32 [ 1, %cond.true1422 ], [ %conv1430, %cond.false1426 ]
  %conv1433 = trunc i32 %cond1432 to i8
  %conv1434 = zext i8 %conv1433 to i32
  %953 = load ptr, ptr %pC, align 8
  %iHdrOffset = getelementptr inbounds nuw %struct.VdbeCursor, ptr %953, i32 0, i32 14
  store i32 %conv1434, ptr %iHdrOffset, align 8
  %954 = load ptr, ptr %pC, align 8
  %nHdrParsed = getelementptr inbounds nuw %struct.VdbeCursor, ptr %954, i32 0, i32 17
  store i16 0, ptr %nHdrParsed, align 2
  %955 = load ptr, ptr %pC, align 8
  %szRow1435 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %955, i32 0, i32 22
  %956 = load i32, ptr %szRow1435, align 4
  %957 = load ptr, ptr %aOffset, align 8
  %arrayidx1436 = getelementptr inbounds i32, ptr %957, i64 0
  %958 = load i32, ptr %arrayidx1436, align 4
  %cmp1437 = icmp ult i32 %956, %958
  br i1 %cmp1437, label %if.then1439, label %if.else1452

if.then1439:                                      ; preds = %cond.end1431
  %959 = load ptr, ptr %pC, align 8
  %aRow1440 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %959, i32 0, i32 20
  store ptr null, ptr %aRow1440, align 8
  %960 = load ptr, ptr %pC, align 8
  %szRow1441 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %960, i32 0, i32 22
  store i32 0, ptr %szRow1441, align 4
  %961 = load ptr, ptr %aOffset, align 8
  %arrayidx1442 = getelementptr inbounds i32, ptr %961, i64 0
  %962 = load i32, ptr %arrayidx1442, align 4
  %cmp1443 = icmp ugt i32 %962, 98307
  br i1 %cmp1443, label %if.then1450, label %lor.lhs.false1445

lor.lhs.false1445:                                ; preds = %if.then1439
  %963 = load ptr, ptr %aOffset, align 8
  %arrayidx1446 = getelementptr inbounds i32, ptr %963, i64 0
  %964 = load i32, ptr %arrayidx1446, align 4
  %965 = load ptr, ptr %pC, align 8
  %payloadSize1447 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %965, i32 0, i32 21
  %966 = load i32, ptr %payloadSize1447, align 8
  %cmp1448 = icmp ugt i32 %964, %966
  br i1 %cmp1448, label %if.then1450, label %if.end1451

if.then1450:                                      ; preds = %lor.lhs.false1445, %if.then1439
  br label %op_column_corrupt

if.end1451:                                       ; preds = %lor.lhs.false1445
  br label %if.end1454

if.else1452:                                      ; preds = %cond.end1431
  %967 = load ptr, ptr %pC, align 8
  %aRow1453 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %967, i32 0, i32 20
  %968 = load ptr, ptr %aRow1453, align 8
  store ptr %968, ptr %zData, align 8
  br label %op_column_read_header

if.end1454:                                       ; preds = %if.end1451
  br label %if.end1455

if.end1455:                                       ; preds = %if.end1454, %if.end1380
  %969 = load ptr, ptr %pC, align 8
  %nHdrParsed1456 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %969, i32 0, i32 17
  %970 = load i16, ptr %nHdrParsed1456, align 2
  %conv1457 = zext i16 %970 to i32
  %971 = load i32, ptr %p21370, align 4
  %cmp1458 = icmp sle i32 %conv1457, %971
  br i1 %cmp1458, label %if.then1460, label %if.else1586

if.then1460:                                      ; preds = %if.end1455
  %972 = load ptr, ptr %pC, align 8
  %iHdrOffset1461 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %972, i32 0, i32 14
  %973 = load i32, ptr %iHdrOffset1461, align 8
  %974 = load ptr, ptr %aOffset, align 8
  %arrayidx1462 = getelementptr inbounds i32, ptr %974, i64 0
  %975 = load i32, ptr %arrayidx1462, align 4
  %cmp1463 = icmp ult i32 %973, %975
  br i1 %cmp1463, label %if.then1465, label %if.else1570

if.then1465:                                      ; preds = %if.then1460
  %976 = load ptr, ptr %pC, align 8
  %aRow1466 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %976, i32 0, i32 20
  %977 = load ptr, ptr %aRow1466, align 8
  %cmp1467 = icmp eq ptr %977, null
  br i1 %cmp1467, label %if.then1469, label %if.else1478

if.then1469:                                      ; preds = %if.then1465
  call void @llvm.memset.p0.i64(ptr align 8 %sMem, i8 0, i64 56, i1 false)
  %978 = load ptr, ptr %pC, align 8
  %uc1470 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %978, i32 0, i32 12
  %979 = load ptr, ptr %uc1470, align 8
  %980 = load ptr, ptr %aOffset, align 8
  %arrayidx1471 = getelementptr inbounds i32, ptr %980, i64 0
  %981 = load i32, ptr %arrayidx1471, align 4
  %call1472 = call i32 @sqlite3VdbeMemFromBtree(ptr noundef %979, i32 noundef 0, i32 noundef %981, ptr noundef %sMem)
  store i32 %call1472, ptr %rc, align 4
  %982 = load i32, ptr %rc, align 4
  %cmp1473 = icmp ne i32 %982, 0
  br i1 %cmp1473, label %if.then1475, label %if.end1476

if.then1475:                                      ; preds = %if.then1469
  br label %abort_due_to_error

if.end1476:                                       ; preds = %if.then1469
  %z1477 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %sMem, i32 0, i32 5
  %983 = load ptr, ptr %z1477, align 8
  store ptr %983, ptr %zData, align 8
  br label %if.end1480

if.else1478:                                      ; preds = %if.then1465
  %984 = load ptr, ptr %pC, align 8
  %aRow1479 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %984, i32 0, i32 20
  %985 = load ptr, ptr %aRow1479, align 8
  store ptr %985, ptr %zData, align 8
  br label %if.end1480

if.end1480:                                       ; preds = %if.else1478, %if.end1476
  br label %op_column_read_header

op_column_read_header:                            ; preds = %if.end1480, %if.else1452
  %986 = load ptr, ptr %pC, align 8
  %nHdrParsed1481 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %986, i32 0, i32 17
  %987 = load i16, ptr %nHdrParsed1481, align 2
  %conv1482 = zext i16 %987 to i32
  store i32 %conv1482, ptr %i1371, align 4
  %988 = load ptr, ptr %aOffset, align 8
  %989 = load i32, ptr %i1371, align 4
  %idxprom1483 = sext i32 %989 to i64
  %arrayidx1484 = getelementptr inbounds i32, ptr %988, i64 %idxprom1483
  %990 = load i32, ptr %arrayidx1484, align 4
  %conv1485 = zext i32 %990 to i64
  store i64 %conv1485, ptr %offset64, align 8
  %991 = load ptr, ptr %zData, align 8
  %992 = load ptr, ptr %pC, align 8
  %iHdrOffset1486 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %992, i32 0, i32 14
  %993 = load i32, ptr %iHdrOffset1486, align 8
  %idx.ext1487 = zext i32 %993 to i64
  %add.ptr1488 = getelementptr inbounds nuw i8, ptr %991, i64 %idx.ext1487
  store ptr %add.ptr1488, ptr %zHdr, align 8
  %994 = load ptr, ptr %zData, align 8
  %995 = load ptr, ptr %aOffset, align 8
  %arrayidx1489 = getelementptr inbounds i32, ptr %995, i64 0
  %996 = load i32, ptr %arrayidx1489, align 4
  %idx.ext1490 = zext i32 %996 to i64
  %add.ptr1491 = getelementptr inbounds nuw i8, ptr %994, i64 %idx.ext1490
  store ptr %add.ptr1491, ptr %zEndHdr, align 8
  br label %do.body1492

do.body1492:                                      ; preds = %land.end1528, %op_column_read_header
  %997 = load ptr, ptr %zHdr, align 8
  %arrayidx1493 = getelementptr inbounds i8, ptr %997, i64 0
  %998 = load i8, ptr %arrayidx1493, align 1
  %conv1494 = zext i8 %998 to i32
  store i32 %conv1494, ptr %t, align 4
  %999 = load ptr, ptr %pC, align 8
  %aType = getelementptr inbounds nuw %struct.VdbeCursor, ptr %999, i32 0, i32 23
  %1000 = load i32, ptr %i1371, align 4
  %idxprom1495 = sext i32 %1000 to i64
  %arrayidx1496 = getelementptr inbounds [1 x i32], ptr %aType, i64 0, i64 %idxprom1495
  store i32 %conv1494, ptr %arrayidx1496, align 4
  %cmp1497 = icmp ult i32 %conv1494, 128
  br i1 %cmp1497, label %if.then1499, label %if.else1505

if.then1499:                                      ; preds = %do.body1492
  %1001 = load ptr, ptr %zHdr, align 8
  %incdec.ptr1500 = getelementptr inbounds nuw i8, ptr %1001, i32 1
  store ptr %incdec.ptr1500, ptr %zHdr, align 8
  %1002 = load i32, ptr %t, align 4
  %conv1501 = trunc i32 %1002 to i8
  %call1502 = call zeroext i8 @sqlite3VdbeOneByteSerialTypeLen(i8 noundef zeroext %conv1501)
  %conv1503 = zext i8 %call1502 to i64
  %1003 = load i64, ptr %offset64, align 8
  %add1504 = add i64 %1003, %conv1503
  store i64 %add1504, ptr %offset64, align 8
  br label %if.end1516

if.else1505:                                      ; preds = %do.body1492
  %1004 = load ptr, ptr %zHdr, align 8
  %call1506 = call zeroext i8 @sqlite3GetVarint32(ptr noundef %1004, ptr noundef %t)
  %conv1507 = zext i8 %call1506 to i32
  %1005 = load ptr, ptr %zHdr, align 8
  %idx.ext1508 = sext i32 %conv1507 to i64
  %add.ptr1509 = getelementptr inbounds i8, ptr %1005, i64 %idx.ext1508
  store ptr %add.ptr1509, ptr %zHdr, align 8
  %1006 = load i32, ptr %t, align 4
  %1007 = load ptr, ptr %pC, align 8
  %aType1510 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1007, i32 0, i32 23
  %1008 = load i32, ptr %i1371, align 4
  %idxprom1511 = sext i32 %1008 to i64
  %arrayidx1512 = getelementptr inbounds [1 x i32], ptr %aType1510, i64 0, i64 %idxprom1511
  store i32 %1006, ptr %arrayidx1512, align 4
  %1009 = load i32, ptr %t, align 4
  %call1513 = call i32 @sqlite3VdbeSerialTypeLen(i32 noundef %1009)
  %conv1514 = zext i32 %call1513 to i64
  %1010 = load i64, ptr %offset64, align 8
  %add1515 = add i64 %1010, %conv1514
  store i64 %add1515, ptr %offset64, align 8
  br label %if.end1516

if.end1516:                                       ; preds = %if.else1505, %if.then1499
  %1011 = load i64, ptr %offset64, align 8
  %and1517 = and i64 %1011, 4294967295
  %conv1518 = trunc i64 %and1517 to i32
  %1012 = load ptr, ptr %aOffset, align 8
  %1013 = load i32, ptr %i1371, align 4
  %inc1519 = add nsw i32 %1013, 1
  store i32 %inc1519, ptr %i1371, align 4
  %idxprom1520 = sext i32 %inc1519 to i64
  %arrayidx1521 = getelementptr inbounds i32, ptr %1012, i64 %idxprom1520
  store i32 %conv1518, ptr %arrayidx1521, align 4
  br label %do.cond1522

do.cond1522:                                      ; preds = %if.end1516
  %1014 = load i32, ptr %i1371, align 4
  %1015 = load i32, ptr %p21370, align 4
  %cmp1523 = icmp sle i32 %1014, %1015
  br i1 %cmp1523, label %land.rhs1525, label %land.end1528

land.rhs1525:                                     ; preds = %do.cond1522
  %1016 = load ptr, ptr %zHdr, align 8
  %1017 = load ptr, ptr %zEndHdr, align 8
  %cmp1526 = icmp ult ptr %1016, %1017
  br label %land.end1528

land.end1528:                                     ; preds = %land.rhs1525, %do.cond1522
  %1018 = phi i1 [ false, %do.cond1522 ], [ %cmp1526, %land.rhs1525 ]
  br i1 %1018, label %do.body1492, label %do.end1529, !llvm.loop !12

do.end1529:                                       ; preds = %land.end1528
  %1019 = load ptr, ptr %zHdr, align 8
  %1020 = load ptr, ptr %zEndHdr, align 8
  %cmp1530 = icmp uge ptr %1019, %1020
  br i1 %cmp1530, label %land.lhs.true1532, label %lor.lhs.false1540

land.lhs.true1532:                                ; preds = %do.end1529
  %1021 = load ptr, ptr %zHdr, align 8
  %1022 = load ptr, ptr %zEndHdr, align 8
  %cmp1533 = icmp ugt ptr %1021, %1022
  br i1 %cmp1533, label %if.then1545, label %lor.lhs.false1535

lor.lhs.false1535:                                ; preds = %land.lhs.true1532
  %1023 = load i64, ptr %offset64, align 8
  %1024 = load ptr, ptr %pC, align 8
  %payloadSize1536 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1024, i32 0, i32 21
  %1025 = load i32, ptr %payloadSize1536, align 8
  %conv1537 = zext i32 %1025 to i64
  %cmp1538 = icmp ne i64 %1023, %conv1537
  br i1 %cmp1538, label %if.then1545, label %lor.lhs.false1540

lor.lhs.false1540:                                ; preds = %lor.lhs.false1535, %do.end1529
  %1026 = load i64, ptr %offset64, align 8
  %1027 = load ptr, ptr %pC, align 8
  %payloadSize1541 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1027, i32 0, i32 21
  %1028 = load i32, ptr %payloadSize1541, align 8
  %conv1542 = zext i32 %1028 to i64
  %cmp1543 = icmp ugt i64 %1026, %conv1542
  br i1 %cmp1543, label %if.then1545, label %if.end1557

if.then1545:                                      ; preds = %lor.lhs.false1540, %lor.lhs.false1535, %land.lhs.true1532
  %1029 = load ptr, ptr %aOffset, align 8
  %arrayidx1546 = getelementptr inbounds i32, ptr %1029, i64 0
  %1030 = load i32, ptr %arrayidx1546, align 4
  %cmp1547 = icmp eq i32 %1030, 0
  br i1 %cmp1547, label %if.then1549, label %if.else1550

if.then1549:                                      ; preds = %if.then1545
  store i32 0, ptr %i1371, align 4
  %1031 = load ptr, ptr %zEndHdr, align 8
  store ptr %1031, ptr %zHdr, align 8
  br label %if.end1556

if.else1550:                                      ; preds = %if.then1545
  %1032 = load ptr, ptr %pC, align 8
  %aRow1551 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1032, i32 0, i32 20
  %1033 = load ptr, ptr %aRow1551, align 8
  %cmp1552 = icmp eq ptr %1033, null
  br i1 %cmp1552, label %if.then1554, label %if.end1555

if.then1554:                                      ; preds = %if.else1550
  call void @sqlite3VdbeMemRelease(ptr noundef %sMem)
  br label %if.end1555

if.end1555:                                       ; preds = %if.then1554, %if.else1550
  br label %op_column_corrupt

if.end1556:                                       ; preds = %if.then1549
  br label %if.end1557

if.end1557:                                       ; preds = %if.end1556, %lor.lhs.false1540
  %1034 = load i32, ptr %i1371, align 4
  %conv1558 = trunc i32 %1034 to i16
  %1035 = load ptr, ptr %pC, align 8
  %nHdrParsed1559 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1035, i32 0, i32 17
  store i16 %conv1558, ptr %nHdrParsed1559, align 2
  %1036 = load ptr, ptr %zHdr, align 8
  %1037 = load ptr, ptr %zData, align 8
  %sub.ptr.lhs.cast1560 = ptrtoint ptr %1036 to i64
  %sub.ptr.rhs.cast1561 = ptrtoint ptr %1037 to i64
  %sub.ptr.sub1562 = sub i64 %sub.ptr.lhs.cast1560, %sub.ptr.rhs.cast1561
  %conv1563 = trunc i64 %sub.ptr.sub1562 to i32
  %1038 = load ptr, ptr %pC, align 8
  %iHdrOffset1564 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1038, i32 0, i32 14
  store i32 %conv1563, ptr %iHdrOffset1564, align 8
  %1039 = load ptr, ptr %pC, align 8
  %aRow1565 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1039, i32 0, i32 20
  %1040 = load ptr, ptr %aRow1565, align 8
  %cmp1566 = icmp eq ptr %1040, null
  br i1 %cmp1566, label %if.then1568, label %if.end1569

if.then1568:                                      ; preds = %if.end1557
  call void @sqlite3VdbeMemRelease(ptr noundef %sMem)
  br label %if.end1569

if.end1569:                                       ; preds = %if.then1568, %if.end1557
  br label %if.end1571

if.else1570:                                      ; preds = %if.then1460
  store i32 0, ptr %t, align 4
  br label %if.end1571

if.end1571:                                       ; preds = %if.else1570, %if.end1569
  %1041 = load ptr, ptr %pC, align 8
  %nHdrParsed1572 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1041, i32 0, i32 17
  %1042 = load i16, ptr %nHdrParsed1572, align 2
  %conv1573 = zext i16 %1042 to i32
  %1043 = load i32, ptr %p21370, align 4
  %cmp1574 = icmp sle i32 %conv1573, %1043
  br i1 %cmp1574, label %if.then1576, label %if.end1585

if.then1576:                                      ; preds = %if.end1571
  %1044 = load ptr, ptr %pOp, align 8
  %p4type1577 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1044, i32 0, i32 1
  %1045 = load i8, ptr %p4type1577, align 1
  %conv1578 = sext i8 %1045 to i32
  %cmp1579 = icmp eq i32 %conv1578, -11
  br i1 %cmp1579, label %if.then1581, label %if.else1583

if.then1581:                                      ; preds = %if.then1576
  %1046 = load ptr, ptr %pDest, align 8
  %1047 = load ptr, ptr %pOp, align 8
  %p41582 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1047, i32 0, i32 6
  %1048 = load ptr, ptr %p41582, align 8
  call void @sqlite3VdbeMemShallowCopy(ptr noundef %1046, ptr noundef %1048, i32 noundef 2048)
  br label %if.end1584

if.else1583:                                      ; preds = %if.then1576
  %1049 = load ptr, ptr %pDest, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %1049)
  br label %if.end1584

if.end1584:                                       ; preds = %if.else1583, %if.then1581
  br label %op_column_out

if.end1585:                                       ; preds = %if.end1571
  br label %if.end1590

if.else1586:                                      ; preds = %if.end1455
  %1050 = load ptr, ptr %pC, align 8
  %aType1587 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1050, i32 0, i32 23
  %1051 = load i32, ptr %p21370, align 4
  %idxprom1588 = sext i32 %1051 to i64
  %arrayidx1589 = getelementptr inbounds [1 x i32], ptr %aType1587, i64 0, i64 %idxprom1588
  %1052 = load i32, ptr %arrayidx1589, align 4
  store i32 %1052, ptr %t, align 4
  br label %if.end1590

if.end1590:                                       ; preds = %if.else1586, %if.end1585
  %1053 = load ptr, ptr %pDest, align 8
  %flags1591 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1053, i32 0, i32 1
  %1054 = load i16, ptr %flags1591, align 8
  %conv1592 = zext i16 %1054 to i32
  %and1593 = and i32 %conv1592, 9216
  %cmp1594 = icmp ne i32 %and1593, 0
  br i1 %cmp1594, label %if.then1596, label %if.end1597

if.then1596:                                      ; preds = %if.end1590
  %1055 = load ptr, ptr %pDest, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %1055)
  br label %if.end1597

if.end1597:                                       ; preds = %if.then1596, %if.end1590
  %1056 = load ptr, ptr %pC, align 8
  %szRow1598 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1056, i32 0, i32 22
  %1057 = load i32, ptr %szRow1598, align 4
  %1058 = load ptr, ptr %aOffset, align 8
  %1059 = load i32, ptr %p21370, align 4
  %add1599 = add nsw i32 %1059, 1
  %idxprom1600 = sext i32 %add1599 to i64
  %arrayidx1601 = getelementptr inbounds i32, ptr %1058, i64 %idxprom1600
  %1060 = load i32, ptr %arrayidx1601, align 4
  %cmp1602 = icmp uge i32 %1057, %1060
  br i1 %cmp1602, label %if.then1604, label %if.else1647

if.then1604:                                      ; preds = %if.end1597
  %1061 = load ptr, ptr %pC, align 8
  %aRow1605 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1061, i32 0, i32 20
  %1062 = load ptr, ptr %aRow1605, align 8
  %1063 = load ptr, ptr %aOffset, align 8
  %1064 = load i32, ptr %p21370, align 4
  %idxprom1606 = sext i32 %1064 to i64
  %arrayidx1607 = getelementptr inbounds i32, ptr %1063, i64 %idxprom1606
  %1065 = load i32, ptr %arrayidx1607, align 4
  %idx.ext1608 = zext i32 %1065 to i64
  %add.ptr1609 = getelementptr inbounds nuw i8, ptr %1062, i64 %idx.ext1608
  store ptr %add.ptr1609, ptr %zData, align 8
  %1066 = load i32, ptr %t, align 4
  %cmp1610 = icmp ult i32 %1066, 12
  br i1 %cmp1610, label %if.then1612, label %if.else1614

if.then1612:                                      ; preds = %if.then1604
  %1067 = load ptr, ptr %zData, align 8
  %1068 = load i32, ptr %t, align 4
  %1069 = load ptr, ptr %pDest, align 8
  %call1613 = call i32 @sqlite3VdbeSerialGet(ptr noundef %1067, i32 noundef %1068, ptr noundef %1069)
  br label %if.end1646

if.else1614:                                      ; preds = %if.then1604
  %1070 = load i32, ptr %t, align 4
  %sub1615 = sub i32 %1070, 12
  %div1616 = udiv i32 %sub1615, 2
  store i32 %div1616, ptr %len, align 4
  %1071 = load ptr, ptr %pDest, align 8
  %n1617 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1071, i32 0, i32 4
  store i32 %div1616, ptr %n1617, align 4
  %1072 = load i8, ptr %encoding, align 1
  %1073 = load ptr, ptr %pDest, align 8
  %enc1618 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1073, i32 0, i32 2
  store i8 %1072, ptr %enc1618, align 2
  %1074 = load ptr, ptr %pDest, align 8
  %szMalloc1619 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1074, i32 0, i32 7
  %1075 = load i32, ptr %szMalloc1619, align 8
  %1076 = load i32, ptr %len, align 4
  %add1620 = add nsw i32 %1076, 2
  %cmp1621 = icmp slt i32 %1075, %add1620
  br i1 %cmp1621, label %if.then1623, label %if.else1630

if.then1623:                                      ; preds = %if.else1614
  %1077 = load ptr, ptr %pDest, align 8
  %flags1624 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1077, i32 0, i32 1
  store i16 1, ptr %flags1624, align 8
  %1078 = load ptr, ptr %pDest, align 8
  %1079 = load i32, ptr %len, align 4
  %add1625 = add nsw i32 %1079, 2
  %call1626 = call i32 @sqlite3VdbeMemGrow(ptr noundef %1078, i32 noundef %add1625, i32 noundef 0)
  %tobool1627 = icmp ne i32 %call1626, 0
  br i1 %tobool1627, label %if.then1628, label %if.end1629

if.then1628:                                      ; preds = %if.then1623
  br label %no_mem

if.end1629:                                       ; preds = %if.then1623
  br label %if.end1632

if.else1630:                                      ; preds = %if.else1614
  %1080 = load ptr, ptr %pDest, align 8
  %zMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1080, i32 0, i32 6
  %1081 = load ptr, ptr %zMalloc, align 8
  %1082 = load ptr, ptr %pDest, align 8
  %z1631 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1082, i32 0, i32 5
  store ptr %1081, ptr %z1631, align 8
  br label %if.end1632

if.end1632:                                       ; preds = %if.else1630, %if.end1629
  %1083 = load ptr, ptr %pDest, align 8
  %z1633 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1083, i32 0, i32 5
  %1084 = load ptr, ptr %z1633, align 8
  %1085 = load ptr, ptr %zData, align 8
  %1086 = load i32, ptr %len, align 4
  %conv1634 = sext i32 %1086 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1084, ptr align 1 %1085, i64 %conv1634, i1 false)
  %1087 = load ptr, ptr %pDest, align 8
  %z1635 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1087, i32 0, i32 5
  %1088 = load ptr, ptr %z1635, align 8
  %1089 = load i32, ptr %len, align 4
  %idxprom1636 = sext i32 %1089 to i64
  %arrayidx1637 = getelementptr inbounds i8, ptr %1088, i64 %idxprom1636
  store i8 0, ptr %arrayidx1637, align 1
  %1090 = load ptr, ptr %pDest, align 8
  %z1638 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1090, i32 0, i32 5
  %1091 = load ptr, ptr %z1638, align 8
  %1092 = load i32, ptr %len, align 4
  %add1639 = add nsw i32 %1092, 1
  %idxprom1640 = sext i32 %add1639 to i64
  %arrayidx1641 = getelementptr inbounds i8, ptr %1091, i64 %idxprom1640
  store i8 0, ptr %arrayidx1641, align 1
  %1093 = load i32, ptr %t, align 4
  %and1642 = and i32 %1093, 1
  %idxprom1643 = zext i32 %and1642 to i64
  %arrayidx1644 = getelementptr inbounds nuw [2 x i16], ptr @sqlite3VdbeExec.aFlag, i64 0, i64 %idxprom1643
  %1094 = load i16, ptr %arrayidx1644, align 2
  %1095 = load ptr, ptr %pDest, align 8
  %flags1645 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1095, i32 0, i32 1
  store i16 %1094, ptr %flags1645, align 8
  br label %if.end1646

if.end1646:                                       ; preds = %if.end1632, %if.then1612
  br label %if.end1689

if.else1647:                                      ; preds = %if.end1597
  %1096 = load i8, ptr %encoding, align 1
  %1097 = load ptr, ptr %pDest, align 8
  %enc1648 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1097, i32 0, i32 2
  store i8 %1096, ptr %enc1648, align 2
  %1098 = load ptr, ptr %pOp, align 8
  %p51649 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1098, i32 0, i32 2
  %1099 = load i16, ptr %p51649, align 2
  %conv1650 = zext i16 %1099 to i32
  %and1651 = and i32 %conv1650, 192
  %cmp1652 = icmp ne i32 %and1651, 0
  br i1 %cmp1652, label %land.lhs.true1654, label %lor.lhs.false1667

land.lhs.true1654:                                ; preds = %if.else1647
  %1100 = load i32, ptr %t, align 4
  %cmp1655 = icmp uge i32 %1100, 12
  br i1 %cmp1655, label %land.lhs.true1657, label %lor.lhs.false1661

land.lhs.true1657:                                ; preds = %land.lhs.true1654
  %1101 = load i32, ptr %t, align 4
  %and1658 = and i32 %1101, 1
  %cmp1659 = icmp eq i32 %and1658, 0
  br i1 %cmp1659, label %if.then1671, label %lor.lhs.false1661

lor.lhs.false1661:                                ; preds = %land.lhs.true1657, %land.lhs.true1654
  %1102 = load ptr, ptr %pOp, align 8
  %p51662 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1102, i32 0, i32 2
  %1103 = load i16, ptr %p51662, align 2
  %conv1663 = zext i16 %1103 to i32
  %and1664 = and i32 %conv1663, 128
  %cmp1665 = icmp ne i32 %and1664, 0
  br i1 %cmp1665, label %if.then1671, label %lor.lhs.false1667

lor.lhs.false1667:                                ; preds = %lor.lhs.false1661, %if.else1647
  %1104 = load i32, ptr %t, align 4
  %call1668 = call i32 @sqlite3VdbeSerialTypeLen(i32 noundef %1104)
  store i32 %call1668, ptr %len, align 4
  %cmp1669 = icmp eq i32 %call1668, 0
  br i1 %cmp1669, label %if.then1671, label %if.else1673

if.then1671:                                      ; preds = %lor.lhs.false1667, %lor.lhs.false1661, %land.lhs.true1657
  %1105 = load i32, ptr %t, align 4
  %1106 = load ptr, ptr %pDest, align 8
  %call1672 = call i32 @sqlite3VdbeSerialGet(ptr noundef @sqlite3VdbeExec.aZero, i32 noundef %1105, ptr noundef %1106)
  br label %if.end1688

if.else1673:                                      ; preds = %lor.lhs.false1667
  %1107 = load ptr, ptr %pC, align 8
  %uc1674 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1107, i32 0, i32 12
  %1108 = load ptr, ptr %uc1674, align 8
  %1109 = load ptr, ptr %aOffset, align 8
  %1110 = load i32, ptr %p21370, align 4
  %idxprom1675 = sext i32 %1110 to i64
  %arrayidx1676 = getelementptr inbounds i32, ptr %1109, i64 %idxprom1675
  %1111 = load i32, ptr %arrayidx1676, align 4
  %1112 = load i32, ptr %len, align 4
  %1113 = load ptr, ptr %pDest, align 8
  %call1677 = call i32 @sqlite3VdbeMemFromBtree(ptr noundef %1108, i32 noundef %1111, i32 noundef %1112, ptr noundef %1113)
  store i32 %call1677, ptr %rc, align 4
  %1114 = load i32, ptr %rc, align 4
  %cmp1678 = icmp ne i32 %1114, 0
  br i1 %cmp1678, label %if.then1680, label %if.end1681

if.then1680:                                      ; preds = %if.else1673
  br label %abort_due_to_error

if.end1681:                                       ; preds = %if.else1673
  %1115 = load ptr, ptr %pDest, align 8
  %z1682 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1115, i32 0, i32 5
  %1116 = load ptr, ptr %z1682, align 8
  %1117 = load i32, ptr %t, align 4
  %1118 = load ptr, ptr %pDest, align 8
  %call1683 = call i32 @sqlite3VdbeSerialGet(ptr noundef %1116, i32 noundef %1117, ptr noundef %1118)
  %1119 = load ptr, ptr %pDest, align 8
  %flags1684 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1119, i32 0, i32 1
  %1120 = load i16, ptr %flags1684, align 8
  %conv1685 = zext i16 %1120 to i32
  %and1686 = and i32 %conv1685, -4097
  %conv1687 = trunc i32 %and1686 to i16
  store i16 %conv1687, ptr %flags1684, align 8
  br label %if.end1688

if.end1688:                                       ; preds = %if.end1681, %if.then1671
  br label %if.end1689

if.end1689:                                       ; preds = %if.end1688, %if.end1646
  br label %op_column_out

op_column_out:                                    ; preds = %if.end1689, %if.end1584, %if.else1400
  br label %sw.epilog5364

op_column_corrupt:                                ; preds = %if.end1555, %if.then1450
  %1121 = load ptr, ptr %aOp, align 8
  %arrayidx1690 = getelementptr inbounds %struct.VdbeOp, ptr %1121, i64 0
  %p31691 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1690, i32 0, i32 5
  %1122 = load i32, ptr %p31691, align 4
  %cmp1692 = icmp sgt i32 %1122, 0
  br i1 %cmp1692, label %if.then1694, label %if.else1700

if.then1694:                                      ; preds = %op_column_corrupt
  %1123 = load ptr, ptr %aOp, align 8
  %1124 = load ptr, ptr %aOp, align 8
  %arrayidx1695 = getelementptr inbounds %struct.VdbeOp, ptr %1124, i64 0
  %p31696 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx1695, i32 0, i32 5
  %1125 = load i32, ptr %p31696, align 4
  %sub1697 = sub nsw i32 %1125, 1
  %idxprom1698 = sext i32 %sub1697 to i64
  %arrayidx1699 = getelementptr inbounds %struct.VdbeOp, ptr %1123, i64 %idxprom1698
  store ptr %arrayidx1699, ptr %pOp, align 8
  br label %sw.epilog5364

if.else1700:                                      ; preds = %op_column_corrupt
  %call1701 = call i32 @sqlite3CorruptError(i32 noundef 86741)
  store i32 %call1701, ptr %rc, align 4
  br label %abort_due_to_error

sw.bb1702:                                        ; preds = %for.body
  %1126 = load ptr, ptr %pOp, align 8
  %p41703 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1126, i32 0, i32 6
  %1127 = load ptr, ptr %p41703, align 8
  store ptr %1127, ptr %zAffinity, align 8
  %1128 = load ptr, ptr %aMem, align 8
  %1129 = load ptr, ptr %pOp, align 8
  %p11704 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1129, i32 0, i32 3
  %1130 = load i32, ptr %p11704, align 4
  %idxprom1705 = sext i32 %1130 to i64
  %arrayidx1706 = getelementptr inbounds %struct.sqlite3_value, ptr %1128, i64 %idxprom1705
  store ptr %arrayidx1706, ptr %pIn1, align 8
  br label %while.body1708

while.body1708:                                   ; preds = %if.end1757, %sw.bb1702
  %1131 = load ptr, ptr %pIn1, align 8
  %1132 = load ptr, ptr %zAffinity, align 8
  %arrayidx1709 = getelementptr inbounds i8, ptr %1132, i64 0
  %1133 = load i8, ptr %arrayidx1709, align 1
  %1134 = load i8, ptr %encoding, align 1
  call void @applyAffinity(ptr noundef %1131, i8 noundef signext %1133, i8 noundef zeroext %1134)
  %1135 = load ptr, ptr %zAffinity, align 8
  %arrayidx1710 = getelementptr inbounds i8, ptr %1135, i64 0
  %1136 = load i8, ptr %arrayidx1710, align 1
  %conv1711 = sext i8 %1136 to i32
  %cmp1712 = icmp eq i32 %conv1711, 69
  br i1 %cmp1712, label %land.lhs.true1714, label %if.end1750

land.lhs.true1714:                                ; preds = %while.body1708
  %1137 = load ptr, ptr %pIn1, align 8
  %flags1715 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1137, i32 0, i32 1
  %1138 = load i16, ptr %flags1715, align 8
  %conv1716 = zext i16 %1138 to i32
  %and1717 = and i32 %conv1716, 4
  %cmp1718 = icmp ne i32 %and1717, 0
  br i1 %cmp1718, label %if.then1720, label %if.end1750

if.then1720:                                      ; preds = %land.lhs.true1714
  %1139 = load ptr, ptr %pIn1, align 8
  %u1721 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1139, i32 0, i32 0
  %1140 = load i64, ptr %u1721, align 8
  %cmp1722 = icmp sle i64 %1140, 140737488355327
  br i1 %cmp1722, label %land.lhs.true1724, label %if.else1737

land.lhs.true1724:                                ; preds = %if.then1720
  %1141 = load ptr, ptr %pIn1, align 8
  %u1725 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1141, i32 0, i32 0
  %1142 = load i64, ptr %u1725, align 8
  %cmp1726 = icmp sge i64 %1142, -140737488355328
  br i1 %cmp1726, label %if.then1728, label %if.else1737

if.then1728:                                      ; preds = %land.lhs.true1724
  %1143 = load ptr, ptr %pIn1, align 8
  %flags1729 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1143, i32 0, i32 1
  %1144 = load i16, ptr %flags1729, align 8
  %conv1730 = zext i16 %1144 to i32
  %or1731 = or i32 %conv1730, 32
  %conv1732 = trunc i32 %or1731 to i16
  store i16 %conv1732, ptr %flags1729, align 8
  %1145 = load ptr, ptr %pIn1, align 8
  %flags1733 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1145, i32 0, i32 1
  %1146 = load i16, ptr %flags1733, align 8
  %conv1734 = zext i16 %1146 to i32
  %and1735 = and i32 %conv1734, -5
  %conv1736 = trunc i32 %and1735 to i16
  store i16 %conv1736, ptr %flags1733, align 8
  br label %if.end1749

if.else1737:                                      ; preds = %land.lhs.true1724, %if.then1720
  %1147 = load ptr, ptr %pIn1, align 8
  %u1738 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1147, i32 0, i32 0
  %1148 = load i64, ptr %u1738, align 8
  %conv1739 = sitofp i64 %1148 to double
  %1149 = load ptr, ptr %pIn1, align 8
  %u1740 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1149, i32 0, i32 0
  store double %conv1739, ptr %u1740, align 8
  %1150 = load ptr, ptr %pIn1, align 8
  %flags1741 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1150, i32 0, i32 1
  %1151 = load i16, ptr %flags1741, align 8
  %conv1742 = zext i16 %1151 to i32
  %or1743 = or i32 %conv1742, 8
  %conv1744 = trunc i32 %or1743 to i16
  store i16 %conv1744, ptr %flags1741, align 8
  %1152 = load ptr, ptr %pIn1, align 8
  %flags1745 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1152, i32 0, i32 1
  %1153 = load i16, ptr %flags1745, align 8
  %conv1746 = zext i16 %1153 to i32
  %and1747 = and i32 %conv1746, -5
  %conv1748 = trunc i32 %and1747 to i16
  store i16 %conv1748, ptr %flags1745, align 8
  br label %if.end1749

if.end1749:                                       ; preds = %if.else1737, %if.then1728
  br label %if.end1750

if.end1750:                                       ; preds = %if.end1749, %land.lhs.true1714, %while.body1708
  %1154 = load ptr, ptr %zAffinity, align 8
  %incdec.ptr1751 = getelementptr inbounds nuw i8, ptr %1154, i32 1
  store ptr %incdec.ptr1751, ptr %zAffinity, align 8
  %1155 = load ptr, ptr %zAffinity, align 8
  %arrayidx1752 = getelementptr inbounds i8, ptr %1155, i64 0
  %1156 = load i8, ptr %arrayidx1752, align 1
  %conv1753 = sext i8 %1156 to i32
  %cmp1754 = icmp eq i32 %conv1753, 0
  br i1 %cmp1754, label %if.then1756, label %if.end1757

if.then1756:                                      ; preds = %if.end1750
  br label %while.end1759

if.end1757:                                       ; preds = %if.end1750
  %1157 = load ptr, ptr %pIn1, align 8
  %incdec.ptr1758 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1157, i32 1
  store ptr %incdec.ptr1758, ptr %pIn1, align 8
  br label %while.body1708

while.end1759:                                    ; preds = %if.then1756
  br label %sw.epilog5364

sw.bb1760:                                        ; preds = %for.body
  store i64 0, ptr %nData, align 8
  store i32 0, ptr %nHdr, align 4
  store i64 0, ptr %nZero, align 8
  %1158 = load ptr, ptr %pOp, align 8
  %p11765 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1158, i32 0, i32 3
  %1159 = load i32, ptr %p11765, align 4
  store i32 %1159, ptr %nField, align 4
  %1160 = load ptr, ptr %pOp, align 8
  %p41766 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1160, i32 0, i32 6
  %1161 = load ptr, ptr %p41766, align 8
  store ptr %1161, ptr %zAffinity1762, align 8
  %1162 = load ptr, ptr %aMem, align 8
  %1163 = load i32, ptr %nField, align 4
  %idxprom1767 = sext i32 %1163 to i64
  %arrayidx1768 = getelementptr inbounds %struct.sqlite3_value, ptr %1162, i64 %idxprom1767
  store ptr %arrayidx1768, ptr %pData0, align 8
  %1164 = load ptr, ptr %pOp, align 8
  %p21769 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1164, i32 0, i32 4
  %1165 = load i32, ptr %p21769, align 8
  store i32 %1165, ptr %nField, align 4
  %1166 = load ptr, ptr %pData0, align 8
  %1167 = load i32, ptr %nField, align 4
  %sub1770 = sub nsw i32 %1167, 1
  %idxprom1771 = sext i32 %sub1770 to i64
  %arrayidx1772 = getelementptr inbounds %struct.sqlite3_value, ptr %1166, i64 %idxprom1771
  store ptr %arrayidx1772, ptr %pLast, align 8
  %1168 = load ptr, ptr %p.addr, align 8
  %minWriteFileFormat = getelementptr inbounds nuw %struct.Vdbe, ptr %1168, i32 0, i32 33
  %1169 = load i8, ptr %minWriteFileFormat, align 1
  %conv1773 = zext i8 %1169 to i32
  store i32 %conv1773, ptr %file_format, align 4
  %1170 = load ptr, ptr %aMem, align 8
  %1171 = load ptr, ptr %pOp, align 8
  %p31774 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1171, i32 0, i32 5
  %1172 = load i32, ptr %p31774, align 4
  %idxprom1775 = sext i32 %1172 to i64
  %arrayidx1776 = getelementptr inbounds %struct.sqlite3_value, ptr %1170, i64 %idxprom1775
  store ptr %arrayidx1776, ptr %pOut, align 8
  %1173 = load ptr, ptr %zAffinity1762, align 8
  %tobool1777 = icmp ne ptr %1173, null
  br i1 %tobool1777, label %if.then1778, label %if.end1806

if.then1778:                                      ; preds = %sw.bb1760
  %1174 = load ptr, ptr %pData0, align 8
  store ptr %1174, ptr %pRec, align 8
  br label %do.body1779

do.body1779:                                      ; preds = %do.cond1802, %if.then1778
  %1175 = load ptr, ptr %pRec, align 8
  %1176 = load ptr, ptr %zAffinity1762, align 8
  %arrayidx1780 = getelementptr inbounds i8, ptr %1176, i64 0
  %1177 = load i8, ptr %arrayidx1780, align 1
  %1178 = load i8, ptr %encoding, align 1
  call void @applyAffinity(ptr noundef %1175, i8 noundef signext %1177, i8 noundef zeroext %1178)
  %1179 = load ptr, ptr %zAffinity1762, align 8
  %arrayidx1781 = getelementptr inbounds i8, ptr %1179, i64 0
  %1180 = load i8, ptr %arrayidx1781, align 1
  %conv1782 = sext i8 %1180 to i32
  %cmp1783 = icmp eq i32 %conv1782, 69
  br i1 %cmp1783, label %land.lhs.true1785, label %if.end1799

land.lhs.true1785:                                ; preds = %do.body1779
  %1181 = load ptr, ptr %pRec, align 8
  %flags1786 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1181, i32 0, i32 1
  %1182 = load i16, ptr %flags1786, align 8
  %conv1787 = zext i16 %1182 to i32
  %and1788 = and i32 %conv1787, 4
  %tobool1789 = icmp ne i32 %and1788, 0
  br i1 %tobool1789, label %if.then1790, label %if.end1799

if.then1790:                                      ; preds = %land.lhs.true1785
  %1183 = load ptr, ptr %pRec, align 8
  %flags1791 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1183, i32 0, i32 1
  %1184 = load i16, ptr %flags1791, align 8
  %conv1792 = zext i16 %1184 to i32
  %or1793 = or i32 %conv1792, 32
  %conv1794 = trunc i32 %or1793 to i16
  store i16 %conv1794, ptr %flags1791, align 8
  %1185 = load ptr, ptr %pRec, align 8
  %flags1795 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1185, i32 0, i32 1
  %1186 = load i16, ptr %flags1795, align 8
  %conv1796 = zext i16 %1186 to i32
  %and1797 = and i32 %conv1796, -5
  %conv1798 = trunc i32 %and1797 to i16
  store i16 %conv1798, ptr %flags1795, align 8
  br label %if.end1799

if.end1799:                                       ; preds = %if.then1790, %land.lhs.true1785, %do.body1779
  %1187 = load ptr, ptr %zAffinity1762, align 8
  %incdec.ptr1800 = getelementptr inbounds nuw i8, ptr %1187, i32 1
  store ptr %incdec.ptr1800, ptr %zAffinity1762, align 8
  %1188 = load ptr, ptr %pRec, align 8
  %incdec.ptr1801 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1188, i32 1
  store ptr %incdec.ptr1801, ptr %pRec, align 8
  br label %do.cond1802

do.cond1802:                                      ; preds = %if.end1799
  %1189 = load ptr, ptr %zAffinity1762, align 8
  %arrayidx1803 = getelementptr inbounds i8, ptr %1189, i64 0
  %1190 = load i8, ptr %arrayidx1803, align 1
  %tobool1804 = icmp ne i8 %1190, 0
  br i1 %tobool1804, label %do.body1779, label %do.end1805, !llvm.loop !13

do.end1805:                                       ; preds = %do.cond1802
  br label %if.end1806

if.end1806:                                       ; preds = %do.end1805, %sw.bb1760
  %1191 = load ptr, ptr %pLast, align 8
  store ptr %1191, ptr %pRec, align 8
  br label %do.body1807

do.body1807:                                      ; preds = %do.cond1960, %if.end1806
  %1192 = load ptr, ptr %pRec, align 8
  %flags1808 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1192, i32 0, i32 1
  %1193 = load i16, ptr %flags1808, align 8
  %conv1809 = zext i16 %1193 to i32
  %and1810 = and i32 %conv1809, 1
  %tobool1811 = icmp ne i32 %and1810, 0
  br i1 %tobool1811, label %if.then1812, label %if.else1822

if.then1812:                                      ; preds = %do.body1807
  %1194 = load ptr, ptr %pRec, align 8
  %flags1813 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1194, i32 0, i32 1
  %1195 = load i16, ptr %flags1813, align 8
  %conv1814 = zext i16 %1195 to i32
  %and1815 = and i32 %conv1814, 16384
  %tobool1816 = icmp ne i32 %and1815, 0
  br i1 %tobool1816, label %if.then1817, label %if.else1818

if.then1817:                                      ; preds = %if.then1812
  %1196 = load ptr, ptr %pRec, align 8
  %uTemp = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1196, i32 0, i32 8
  store i32 10, ptr %uTemp, align 4
  br label %if.end1820

if.else1818:                                      ; preds = %if.then1812
  %1197 = load ptr, ptr %pRec, align 8
  %uTemp1819 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1197, i32 0, i32 8
  store i32 0, ptr %uTemp1819, align 4
  br label %if.end1820

if.end1820:                                       ; preds = %if.else1818, %if.then1817
  %1198 = load i32, ptr %nHdr, align 4
  %inc1821 = add nsw i32 %1198, 1
  store i32 %inc1821, ptr %nHdr, align 4
  br label %if.end1954

if.else1822:                                      ; preds = %do.body1807
  %1199 = load ptr, ptr %pRec, align 8
  %flags1823 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1199, i32 0, i32 1
  %1200 = load i16, ptr %flags1823, align 8
  %conv1824 = zext i16 %1200 to i32
  %and1825 = and i32 %conv1824, 36
  %tobool1826 = icmp ne i32 %and1825, 0
  br i1 %tobool1826, label %if.then1827, label %if.else1905

if.then1827:                                      ; preds = %if.else1822
  %1201 = load ptr, ptr %pRec, align 8
  %u1829 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1201, i32 0, i32 0
  %1202 = load i64, ptr %u1829, align 8
  store i64 %1202, ptr %i1828, align 8
  %1203 = load i64, ptr %i1828, align 8
  %cmp1830 = icmp slt i64 %1203, 0
  br i1 %cmp1830, label %if.then1832, label %if.else1834

if.then1832:                                      ; preds = %if.then1827
  %1204 = load i64, ptr %i1828, align 8
  %not1833 = xor i64 %1204, -1
  store i64 %not1833, ptr %uu, align 8
  br label %if.end1835

if.else1834:                                      ; preds = %if.then1827
  %1205 = load i64, ptr %i1828, align 8
  store i64 %1205, ptr %uu, align 8
  br label %if.end1835

if.end1835:                                       ; preds = %if.else1834, %if.then1832
  %1206 = load i32, ptr %nHdr, align 4
  %inc1836 = add nsw i32 %1206, 1
  store i32 %inc1836, ptr %nHdr, align 4
  %1207 = load i64, ptr %uu, align 8
  %cmp1837 = icmp ule i64 %1207, 127
  br i1 %cmp1837, label %if.then1839, label %if.else1854

if.then1839:                                      ; preds = %if.end1835
  %1208 = load i64, ptr %i1828, align 8
  %and1840 = and i64 %1208, 1
  %1209 = load i64, ptr %i1828, align 8
  %cmp1841 = icmp eq i64 %and1840, %1209
  br i1 %cmp1841, label %land.lhs.true1843, label %if.else1850

land.lhs.true1843:                                ; preds = %if.then1839
  %1210 = load i32, ptr %file_format, align 4
  %cmp1844 = icmp sge i32 %1210, 4
  br i1 %cmp1844, label %if.then1846, label %if.else1850

if.then1846:                                      ; preds = %land.lhs.true1843
  %1211 = load i64, ptr %uu, align 8
  %conv1847 = trunc i64 %1211 to i32
  %add1848 = add i32 8, %conv1847
  %1212 = load ptr, ptr %pRec, align 8
  %uTemp1849 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1212, i32 0, i32 8
  store i32 %add1848, ptr %uTemp1849, align 4
  br label %if.end1853

if.else1850:                                      ; preds = %land.lhs.true1843, %if.then1839
  %1213 = load i64, ptr %nData, align 8
  %inc1851 = add i64 %1213, 1
  store i64 %inc1851, ptr %nData, align 8
  %1214 = load ptr, ptr %pRec, align 8
  %uTemp1852 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1214, i32 0, i32 8
  store i32 1, ptr %uTemp1852, align 4
  br label %if.end1853

if.end1853:                                       ; preds = %if.else1850, %if.then1846
  br label %if.end1904

if.else1854:                                      ; preds = %if.end1835
  %1215 = load i64, ptr %uu, align 8
  %cmp1855 = icmp ule i64 %1215, 32767
  br i1 %cmp1855, label %if.then1857, label %if.else1860

if.then1857:                                      ; preds = %if.else1854
  %1216 = load i64, ptr %nData, align 8
  %add1858 = add i64 %1216, 2
  store i64 %add1858, ptr %nData, align 8
  %1217 = load ptr, ptr %pRec, align 8
  %uTemp1859 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1217, i32 0, i32 8
  store i32 2, ptr %uTemp1859, align 4
  br label %if.end1903

if.else1860:                                      ; preds = %if.else1854
  %1218 = load i64, ptr %uu, align 8
  %cmp1861 = icmp ule i64 %1218, 8388607
  br i1 %cmp1861, label %if.then1863, label %if.else1866

if.then1863:                                      ; preds = %if.else1860
  %1219 = load i64, ptr %nData, align 8
  %add1864 = add i64 %1219, 3
  store i64 %add1864, ptr %nData, align 8
  %1220 = load ptr, ptr %pRec, align 8
  %uTemp1865 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1220, i32 0, i32 8
  store i32 3, ptr %uTemp1865, align 4
  br label %if.end1902

if.else1866:                                      ; preds = %if.else1860
  %1221 = load i64, ptr %uu, align 8
  %cmp1867 = icmp ule i64 %1221, 2147483647
  br i1 %cmp1867, label %if.then1869, label %if.else1872

if.then1869:                                      ; preds = %if.else1866
  %1222 = load i64, ptr %nData, align 8
  %add1870 = add i64 %1222, 4
  store i64 %add1870, ptr %nData, align 8
  %1223 = load ptr, ptr %pRec, align 8
  %uTemp1871 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1223, i32 0, i32 8
  store i32 4, ptr %uTemp1871, align 4
  br label %if.end1901

if.else1872:                                      ; preds = %if.else1866
  %1224 = load i64, ptr %uu, align 8
  %cmp1873 = icmp ule i64 %1224, 140737488355327
  br i1 %cmp1873, label %if.then1875, label %if.else1878

if.then1875:                                      ; preds = %if.else1872
  %1225 = load i64, ptr %nData, align 8
  %add1876 = add i64 %1225, 6
  store i64 %add1876, ptr %nData, align 8
  %1226 = load ptr, ptr %pRec, align 8
  %uTemp1877 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1226, i32 0, i32 8
  store i32 5, ptr %uTemp1877, align 4
  br label %if.end1900

if.else1878:                                      ; preds = %if.else1872
  %1227 = load i64, ptr %nData, align 8
  %add1879 = add i64 %1227, 8
  store i64 %add1879, ptr %nData, align 8
  %1228 = load ptr, ptr %pRec, align 8
  %flags1880 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1228, i32 0, i32 1
  %1229 = load i16, ptr %flags1880, align 8
  %conv1881 = zext i16 %1229 to i32
  %and1882 = and i32 %conv1881, 32
  %tobool1883 = icmp ne i32 %and1882, 0
  br i1 %tobool1883, label %if.then1884, label %if.else1897

if.then1884:                                      ; preds = %if.else1878
  %1230 = load ptr, ptr %pRec, align 8
  %u1885 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1230, i32 0, i32 0
  %1231 = load i64, ptr %u1885, align 8
  %conv1886 = sitofp i64 %1231 to double
  %1232 = load ptr, ptr %pRec, align 8
  %u1887 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1232, i32 0, i32 0
  store double %conv1886, ptr %u1887, align 8
  %1233 = load ptr, ptr %pRec, align 8
  %flags1888 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1233, i32 0, i32 1
  %1234 = load i16, ptr %flags1888, align 8
  %conv1889 = zext i16 %1234 to i32
  %and1890 = and i32 %conv1889, -33
  %conv1891 = trunc i32 %and1890 to i16
  store i16 %conv1891, ptr %flags1888, align 8
  %1235 = load ptr, ptr %pRec, align 8
  %flags1892 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1235, i32 0, i32 1
  %1236 = load i16, ptr %flags1892, align 8
  %conv1893 = zext i16 %1236 to i32
  %or1894 = or i32 %conv1893, 8
  %conv1895 = trunc i32 %or1894 to i16
  store i16 %conv1895, ptr %flags1892, align 8
  %1237 = load ptr, ptr %pRec, align 8
  %uTemp1896 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1237, i32 0, i32 8
  store i32 7, ptr %uTemp1896, align 4
  br label %if.end1899

if.else1897:                                      ; preds = %if.else1878
  %1238 = load ptr, ptr %pRec, align 8
  %uTemp1898 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1238, i32 0, i32 8
  store i32 6, ptr %uTemp1898, align 4
  br label %if.end1899

if.end1899:                                       ; preds = %if.else1897, %if.then1884
  br label %if.end1900

if.end1900:                                       ; preds = %if.end1899, %if.then1875
  br label %if.end1901

if.end1901:                                       ; preds = %if.end1900, %if.then1869
  br label %if.end1902

if.end1902:                                       ; preds = %if.end1901, %if.then1863
  br label %if.end1903

if.end1903:                                       ; preds = %if.end1902, %if.then1857
  br label %if.end1904

if.end1904:                                       ; preds = %if.end1903, %if.end1853
  br label %if.end1953

if.else1905:                                      ; preds = %if.else1822
  %1239 = load ptr, ptr %pRec, align 8
  %flags1906 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1239, i32 0, i32 1
  %1240 = load i16, ptr %flags1906, align 8
  %conv1907 = zext i16 %1240 to i32
  %and1908 = and i32 %conv1907, 8
  %tobool1909 = icmp ne i32 %and1908, 0
  br i1 %tobool1909, label %if.then1910, label %if.else1914

if.then1910:                                      ; preds = %if.else1905
  %1241 = load i32, ptr %nHdr, align 4
  %inc1911 = add nsw i32 %1241, 1
  store i32 %inc1911, ptr %nHdr, align 4
  %1242 = load i64, ptr %nData, align 8
  %add1912 = add i64 %1242, 8
  store i64 %add1912, ptr %nData, align 8
  %1243 = load ptr, ptr %pRec, align 8
  %uTemp1913 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1243, i32 0, i32 8
  store i32 7, ptr %uTemp1913, align 4
  br label %if.end1952

if.else1914:                                      ; preds = %if.else1905
  %1244 = load ptr, ptr %pRec, align 8
  %n1915 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1244, i32 0, i32 4
  %1245 = load i32, ptr %n1915, align 4
  store i32 %1245, ptr %len1763, align 4
  %1246 = load i32, ptr %len1763, align 4
  %mul1916 = mul i32 %1246, 2
  %add1917 = add i32 %mul1916, 12
  %1247 = load ptr, ptr %pRec, align 8
  %flags1918 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1247, i32 0, i32 1
  %1248 = load i16, ptr %flags1918, align 8
  %conv1919 = zext i16 %1248 to i32
  %and1920 = and i32 %conv1919, 2
  %cmp1921 = icmp ne i32 %and1920, 0
  %conv1922 = zext i1 %cmp1921 to i32
  %add1923 = add i32 %add1917, %conv1922
  store i32 %add1923, ptr %serial_type, align 4
  %1249 = load ptr, ptr %pRec, align 8
  %flags1924 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1249, i32 0, i32 1
  %1250 = load i16, ptr %flags1924, align 8
  %conv1925 = zext i16 %1250 to i32
  %and1926 = and i32 %conv1925, 16384
  %tobool1927 = icmp ne i32 %and1926, 0
  br i1 %tobool1927, label %if.then1928, label %if.end1945

if.then1928:                                      ; preds = %if.else1914
  %1251 = load ptr, ptr %pRec, align 8
  %u1929 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1251, i32 0, i32 0
  %1252 = load i32, ptr %u1929, align 8
  %mul1930 = mul nsw i32 %1252, 2
  %1253 = load i32, ptr %serial_type, align 4
  %add1931 = add i32 %1253, %mul1930
  store i32 %add1931, ptr %serial_type, align 4
  %1254 = load i64, ptr %nData, align 8
  %tobool1932 = icmp ne i64 %1254, 0
  br i1 %tobool1932, label %if.then1933, label %if.else1940

if.then1933:                                      ; preds = %if.then1928
  %1255 = load ptr, ptr %pRec, align 8
  %call1934 = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %1255)
  %tobool1935 = icmp ne i32 %call1934, 0
  br i1 %tobool1935, label %if.then1936, label %if.end1937

if.then1936:                                      ; preds = %if.then1933
  br label %no_mem

if.end1937:                                       ; preds = %if.then1933
  %1256 = load ptr, ptr %pRec, align 8
  %u1938 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1256, i32 0, i32 0
  %1257 = load i32, ptr %u1938, align 8
  %1258 = load i32, ptr %len1763, align 4
  %add1939 = add i32 %1258, %1257
  store i32 %add1939, ptr %len1763, align 4
  br label %if.end1944

if.else1940:                                      ; preds = %if.then1928
  %1259 = load ptr, ptr %pRec, align 8
  %u1941 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1259, i32 0, i32 0
  %1260 = load i32, ptr %u1941, align 8
  %conv1942 = sext i32 %1260 to i64
  %1261 = load i64, ptr %nZero, align 8
  %add1943 = add nsw i64 %1261, %conv1942
  store i64 %add1943, ptr %nZero, align 8
  br label %if.end1944

if.end1944:                                       ; preds = %if.else1940, %if.end1937
  br label %if.end1945

if.end1945:                                       ; preds = %if.end1944, %if.else1914
  %1262 = load i32, ptr %len1763, align 4
  %conv1946 = zext i32 %1262 to i64
  %1263 = load i64, ptr %nData, align 8
  %add1947 = add i64 %1263, %conv1946
  store i64 %add1947, ptr %nData, align 8
  %1264 = load i32, ptr %serial_type, align 4
  %conv1948 = zext i32 %1264 to i64
  %call1949 = call i32 @sqlite3VarintLen(i64 noundef %conv1948)
  %1265 = load i32, ptr %nHdr, align 4
  %add1950 = add nsw i32 %1265, %call1949
  store i32 %add1950, ptr %nHdr, align 4
  %1266 = load i32, ptr %serial_type, align 4
  %1267 = load ptr, ptr %pRec, align 8
  %uTemp1951 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1267, i32 0, i32 8
  store i32 %1266, ptr %uTemp1951, align 4
  br label %if.end1952

if.end1952:                                       ; preds = %if.end1945, %if.then1910
  br label %if.end1953

if.end1953:                                       ; preds = %if.end1952, %if.end1904
  br label %if.end1954

if.end1954:                                       ; preds = %if.end1953, %if.end1820
  %1268 = load ptr, ptr %pRec, align 8
  %1269 = load ptr, ptr %pData0, align 8
  %cmp1955 = icmp eq ptr %1268, %1269
  br i1 %cmp1955, label %if.then1957, label %if.end1958

if.then1957:                                      ; preds = %if.end1954
  br label %do.end1961

if.end1958:                                       ; preds = %if.end1954
  %1270 = load ptr, ptr %pRec, align 8
  %incdec.ptr1959 = getelementptr inbounds %struct.sqlite3_value, ptr %1270, i32 -1
  store ptr %incdec.ptr1959, ptr %pRec, align 8
  br label %do.cond1960

do.cond1960:                                      ; preds = %if.end1958
  br i1 true, label %do.body1807, label %do.end1961

do.end1961:                                       ; preds = %do.cond1960, %if.then1957
  %1271 = load i32, ptr %nHdr, align 4
  %cmp1962 = icmp sle i32 %1271, 126
  br i1 %cmp1962, label %if.then1964, label %if.else1966

if.then1964:                                      ; preds = %do.end1961
  %1272 = load i32, ptr %nHdr, align 4
  %add1965 = add nsw i32 %1272, 1
  store i32 %add1965, ptr %nHdr, align 4
  br label %if.end1977

if.else1966:                                      ; preds = %do.end1961
  %1273 = load i32, ptr %nHdr, align 4
  %conv1967 = sext i32 %1273 to i64
  %call1968 = call i32 @sqlite3VarintLen(i64 noundef %conv1967)
  store i32 %call1968, ptr %nVarint, align 4
  %1274 = load i32, ptr %nVarint, align 4
  %1275 = load i32, ptr %nHdr, align 4
  %add1969 = add nsw i32 %1275, %1274
  store i32 %add1969, ptr %nHdr, align 4
  %1276 = load i32, ptr %nVarint, align 4
  %1277 = load i32, ptr %nHdr, align 4
  %conv1970 = sext i32 %1277 to i64
  %call1971 = call i32 @sqlite3VarintLen(i64 noundef %conv1970)
  %cmp1972 = icmp slt i32 %1276, %call1971
  br i1 %cmp1972, label %if.then1974, label %if.end1976

if.then1974:                                      ; preds = %if.else1966
  %1278 = load i32, ptr %nHdr, align 4
  %inc1975 = add nsw i32 %1278, 1
  store i32 %inc1975, ptr %nHdr, align 4
  br label %if.end1976

if.end1976:                                       ; preds = %if.then1974, %if.else1966
  br label %if.end1977

if.end1977:                                       ; preds = %if.end1976, %if.then1964
  %1279 = load i32, ptr %nHdr, align 4
  %conv1978 = sext i32 %1279 to i64
  %1280 = load i64, ptr %nData, align 8
  %add1979 = add i64 %conv1978, %1280
  store i64 %add1979, ptr %nByte1761, align 8
  %1281 = load i64, ptr %nByte1761, align 8
  %1282 = load i64, ptr %nZero, align 8
  %add1980 = add nsw i64 %1281, %1282
  %1283 = load ptr, ptr %pOut, align 8
  %szMalloc1981 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1283, i32 0, i32 7
  %1284 = load i32, ptr %szMalloc1981, align 8
  %conv1982 = sext i32 %1284 to i64
  %cmp1983 = icmp sle i64 %add1980, %conv1982
  br i1 %cmp1983, label %if.then1985, label %if.else1988

if.then1985:                                      ; preds = %if.end1977
  %1285 = load ptr, ptr %pOut, align 8
  %zMalloc1986 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1285, i32 0, i32 6
  %1286 = load ptr, ptr %zMalloc1986, align 8
  %1287 = load ptr, ptr %pOut, align 8
  %z1987 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1287, i32 0, i32 5
  store ptr %1286, ptr %z1987, align 8
  br label %if.end2002

if.else1988:                                      ; preds = %if.end1977
  %1288 = load i64, ptr %nByte1761, align 8
  %1289 = load i64, ptr %nZero, align 8
  %add1989 = add nsw i64 %1288, %1289
  %1290 = load ptr, ptr %db, align 8
  %aLimit1990 = getelementptr inbounds nuw %struct.sqlite3, ptr %1290, i32 0, i32 33
  %arrayidx1991 = getelementptr inbounds [12 x i32], ptr %aLimit1990, i64 0, i64 0
  %1291 = load i32, ptr %arrayidx1991, align 4
  %conv1992 = sext i32 %1291 to i64
  %cmp1993 = icmp sgt i64 %add1989, %conv1992
  br i1 %cmp1993, label %if.then1995, label %if.end1996

if.then1995:                                      ; preds = %if.else1988
  br label %too_big

if.end1996:                                       ; preds = %if.else1988
  %1292 = load ptr, ptr %pOut, align 8
  %1293 = load i64, ptr %nByte1761, align 8
  %conv1997 = trunc i64 %1293 to i32
  %call1998 = call i32 @sqlite3VdbeMemClearAndResize(ptr noundef %1292, i32 noundef %conv1997)
  %tobool1999 = icmp ne i32 %call1998, 0
  br i1 %tobool1999, label %if.then2000, label %if.end2001

if.then2000:                                      ; preds = %if.end1996
  br label %no_mem

if.end2001:                                       ; preds = %if.end1996
  br label %if.end2002

if.end2002:                                       ; preds = %if.end2001, %if.then1985
  %1294 = load i64, ptr %nByte1761, align 8
  %conv2003 = trunc i64 %1294 to i32
  %1295 = load ptr, ptr %pOut, align 8
  %n2004 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1295, i32 0, i32 4
  store i32 %conv2003, ptr %n2004, align 4
  %1296 = load ptr, ptr %pOut, align 8
  %flags2005 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1296, i32 0, i32 1
  store i16 16, ptr %flags2005, align 8
  %1297 = load i64, ptr %nZero, align 8
  %tobool2006 = icmp ne i64 %1297, 0
  br i1 %tobool2006, label %if.then2007, label %if.end2014

if.then2007:                                      ; preds = %if.end2002
  %1298 = load i64, ptr %nZero, align 8
  %conv2008 = trunc i64 %1298 to i32
  %1299 = load ptr, ptr %pOut, align 8
  %u2009 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1299, i32 0, i32 0
  store i32 %conv2008, ptr %u2009, align 8
  %1300 = load ptr, ptr %pOut, align 8
  %flags2010 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1300, i32 0, i32 1
  %1301 = load i16, ptr %flags2010, align 8
  %conv2011 = zext i16 %1301 to i32
  %or2012 = or i32 %conv2011, 16384
  %conv2013 = trunc i32 %or2012 to i16
  store i16 %conv2013, ptr %flags2010, align 8
  br label %if.end2014

if.end2014:                                       ; preds = %if.then2007, %if.end2002
  %1302 = load ptr, ptr %pOut, align 8
  %z2015 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1302, i32 0, i32 5
  %1303 = load ptr, ptr %z2015, align 8
  store ptr %1303, ptr %zHdr1764, align 8
  %1304 = load ptr, ptr %zHdr1764, align 8
  %1305 = load i32, ptr %nHdr, align 4
  %idx.ext2016 = sext i32 %1305 to i64
  %add.ptr2017 = getelementptr inbounds i8, ptr %1304, i64 %idx.ext2016
  store ptr %add.ptr2017, ptr %zPayload, align 8
  %1306 = load i32, ptr %nHdr, align 4
  %cmp2018 = icmp ult i32 %1306, 128
  br i1 %cmp2018, label %cond.true2020, label %cond.false2022

cond.true2020:                                    ; preds = %if.end2014
  %1307 = load i32, ptr %nHdr, align 4
  %conv2021 = trunc i32 %1307 to i8
  %1308 = load ptr, ptr %zHdr1764, align 8
  store i8 %conv2021, ptr %1308, align 1
  br label %cond.end2025

cond.false2022:                                   ; preds = %if.end2014
  %1309 = load ptr, ptr %zHdr1764, align 8
  %1310 = load i32, ptr %nHdr, align 4
  %conv2023 = sext i32 %1310 to i64
  %call2024 = call i32 @sqlite3PutVarint(ptr noundef %1309, i64 noundef %conv2023)
  br label %cond.end2025

cond.end2025:                                     ; preds = %cond.false2022, %cond.true2020
  %cond2026 = phi i32 [ 1, %cond.true2020 ], [ %call2024, %cond.false2022 ]
  %conv2027 = trunc i32 %cond2026 to i8
  %conv2028 = zext i8 %conv2027 to i32
  %1311 = load ptr, ptr %zHdr1764, align 8
  %idx.ext2029 = sext i32 %conv2028 to i64
  %add.ptr2030 = getelementptr inbounds i8, ptr %1311, i64 %idx.ext2029
  store ptr %add.ptr2030, ptr %zHdr1764, align 8
  %1312 = load ptr, ptr %pData0, align 8
  store ptr %1312, ptr %pRec, align 8
  br label %do.body2031

do.body2031:                                      ; preds = %do.cond2049, %cond.end2025
  %1313 = load ptr, ptr %pRec, align 8
  %uTemp2032 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1313, i32 0, i32 8
  %1314 = load i32, ptr %uTemp2032, align 4
  store i32 %1314, ptr %serial_type, align 4
  %1315 = load i32, ptr %serial_type, align 4
  %cmp2033 = icmp ult i32 %1315, 128
  br i1 %cmp2033, label %cond.true2035, label %cond.false2037

cond.true2035:                                    ; preds = %do.body2031
  %1316 = load i32, ptr %serial_type, align 4
  %conv2036 = trunc i32 %1316 to i8
  %1317 = load ptr, ptr %zHdr1764, align 8
  store i8 %conv2036, ptr %1317, align 1
  br label %cond.end2040

cond.false2037:                                   ; preds = %do.body2031
  %1318 = load ptr, ptr %zHdr1764, align 8
  %1319 = load i32, ptr %serial_type, align 4
  %conv2038 = zext i32 %1319 to i64
  %call2039 = call i32 @sqlite3PutVarint(ptr noundef %1318, i64 noundef %conv2038)
  br label %cond.end2040

cond.end2040:                                     ; preds = %cond.false2037, %cond.true2035
  %cond2041 = phi i32 [ 1, %cond.true2035 ], [ %call2039, %cond.false2037 ]
  %conv2042 = trunc i32 %cond2041 to i8
  %conv2043 = zext i8 %conv2042 to i32
  %1320 = load ptr, ptr %zHdr1764, align 8
  %idx.ext2044 = sext i32 %conv2043 to i64
  %add.ptr2045 = getelementptr inbounds i8, ptr %1320, i64 %idx.ext2044
  store ptr %add.ptr2045, ptr %zHdr1764, align 8
  %1321 = load ptr, ptr %zPayload, align 8
  %1322 = load ptr, ptr %pRec, align 8
  %1323 = load i32, ptr %serial_type, align 4
  %call2046 = call i32 @sqlite3VdbeSerialPut(ptr noundef %1321, ptr noundef %1322, i32 noundef %1323)
  %1324 = load ptr, ptr %zPayload, align 8
  %idx.ext2047 = zext i32 %call2046 to i64
  %add.ptr2048 = getelementptr inbounds nuw i8, ptr %1324, i64 %idx.ext2047
  store ptr %add.ptr2048, ptr %zPayload, align 8
  br label %do.cond2049

do.cond2049:                                      ; preds = %cond.end2040
  %1325 = load ptr, ptr %pRec, align 8
  %incdec.ptr2050 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1325, i32 1
  store ptr %incdec.ptr2050, ptr %pRec, align 8
  %1326 = load ptr, ptr %pLast, align 8
  %cmp2051 = icmp ule ptr %incdec.ptr2050, %1326
  br i1 %cmp2051, label %do.body2031, label %do.end2053, !llvm.loop !14

do.end2053:                                       ; preds = %do.cond2049
  br label %sw.epilog5364

sw.bb2054:                                        ; preds = %for.body
  %1327 = load ptr, ptr %p.addr, align 8
  %apCsr2056 = getelementptr inbounds nuw %struct.Vdbe, ptr %1327, i32 0, i32 21
  %1328 = load ptr, ptr %apCsr2056, align 8
  %1329 = load ptr, ptr %pOp, align 8
  %p12057 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1329, i32 0, i32 3
  %1330 = load i32, ptr %p12057, align 4
  %idxprom2058 = sext i32 %1330 to i64
  %arrayidx2059 = getelementptr inbounds ptr, ptr %1328, i64 %idxprom2058
  %1331 = load ptr, ptr %arrayidx2059, align 8
  %uc2060 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1331, i32 0, i32 12
  %1332 = load ptr, ptr %uc2060, align 8
  store ptr %1332, ptr %pCrsr2055, align 8
  store i64 0, ptr %nEntry, align 8
  %1333 = load ptr, ptr %pCrsr2055, align 8
  %call2061 = call i32 @sqlite3BtreeCount(ptr noundef %1333, ptr noundef %nEntry)
  store i32 %call2061, ptr %rc, align 4
  %1334 = load i32, ptr %rc, align 4
  %tobool2062 = icmp ne i32 %1334, 0
  br i1 %tobool2062, label %if.then2063, label %if.end2064

if.then2063:                                      ; preds = %sw.bb2054
  br label %abort_due_to_error

if.end2064:                                       ; preds = %sw.bb2054
  %1335 = load ptr, ptr %p.addr, align 8
  %1336 = load ptr, ptr %pOp, align 8
  %call2065 = call ptr @out2Prerelease(ptr noundef %1335, ptr noundef %1336)
  store ptr %call2065, ptr %pOut, align 8
  %1337 = load i64, ptr %nEntry, align 8
  %1338 = load ptr, ptr %pOut, align 8
  %u2066 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1338, i32 0, i32 0
  store i64 %1337, ptr %u2066, align 8
  br label %sw.epilog5364

sw.bb2067:                                        ; preds = %for.body
  %1339 = load ptr, ptr %pOp, align 8
  %p12069 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1339, i32 0, i32 3
  %1340 = load i32, ptr %p12069, align 4
  store i32 %1340, ptr %p12068, align 4
  %1341 = load ptr, ptr %pOp, align 8
  %p42070 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1341, i32 0, i32 6
  %1342 = load ptr, ptr %p42070, align 8
  store ptr %1342, ptr %zName, align 8
  %1343 = load i32, ptr %p12068, align 4
  %cmp2071 = icmp eq i32 %1343, 0
  br i1 %cmp2071, label %if.then2073, label %if.else2109

if.then2073:                                      ; preds = %sw.bb2067
  %1344 = load ptr, ptr %db, align 8
  %nVdbeWrite = getelementptr inbounds nuw %struct.sqlite3, ptr %1344, i32 0, i32 38
  %1345 = load i32, ptr %nVdbeWrite, align 8
  %cmp2074 = icmp sgt i32 %1345, 0
  br i1 %cmp2074, label %if.then2076, label %if.else2077

if.then2076:                                      ; preds = %if.then2073
  %1346 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %1346, ptr noundef @.str.312)
  store i32 5, ptr %rc, align 4
  br label %if.end2108

if.else2077:                                      ; preds = %if.then2073
  %1347 = load ptr, ptr %zName, align 8
  %call2078 = call i32 @sqlite3Strlen30(ptr noundef %1347)
  store i32 %call2078, ptr %nName, align 4
  %1348 = load ptr, ptr %db, align 8
  %1349 = load ptr, ptr %db, align 8
  %nStatement = getelementptr inbounds nuw %struct.sqlite3, ptr %1349, i32 0, i32 79
  %1350 = load i32, ptr %nStatement, align 8
  %1351 = load ptr, ptr %db, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.sqlite3, ptr %1351, i32 0, i32 78
  %1352 = load i32, ptr %nSavepoint, align 4
  %add2079 = add nsw i32 %1350, %1352
  %call2080 = call i32 @sqlite3VtabSavepoint(ptr noundef %1348, i32 noundef 0, i32 noundef %add2079)
  store i32 %call2080, ptr %rc, align 4
  %1353 = load i32, ptr %rc, align 4
  %cmp2081 = icmp ne i32 %1353, 0
  br i1 %cmp2081, label %if.then2083, label %if.end2084

if.then2083:                                      ; preds = %if.else2077
  br label %abort_due_to_error

if.end2084:                                       ; preds = %if.else2077
  %1354 = load ptr, ptr %db, align 8
  %1355 = load i32, ptr %nName, align 4
  %conv2085 = sext i32 %1355 to i64
  %add2086 = add i64 32, %conv2085
  %add2087 = add i64 %add2086, 1
  %call2088 = call ptr @sqlite3DbMallocRawNN(ptr noundef %1354, i64 noundef %add2087)
  store ptr %call2088, ptr %pNew, align 8
  %1356 = load ptr, ptr %pNew, align 8
  %tobool2089 = icmp ne ptr %1356, null
  br i1 %tobool2089, label %if.then2090, label %if.end2107

if.then2090:                                      ; preds = %if.end2084
  %1357 = load ptr, ptr %pNew, align 8
  %arrayidx2091 = getelementptr inbounds %struct.Savepoint, ptr %1357, i64 1
  %1358 = load ptr, ptr %pNew, align 8
  %zName2092 = getelementptr inbounds nuw %struct.Savepoint, ptr %1358, i32 0, i32 0
  store ptr %arrayidx2091, ptr %zName2092, align 8
  %1359 = load ptr, ptr %pNew, align 8
  %zName2093 = getelementptr inbounds nuw %struct.Savepoint, ptr %1359, i32 0, i32 0
  %1360 = load ptr, ptr %zName2093, align 8
  %1361 = load ptr, ptr %zName, align 8
  %1362 = load i32, ptr %nName, align 4
  %add2094 = add nsw i32 %1362, 1
  %conv2095 = sext i32 %add2094 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1360, ptr align 1 %1361, i64 %conv2095, i1 false)
  %1363 = load ptr, ptr %db, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %1363, i32 0, i32 17
  %1364 = load i8, ptr %autoCommit, align 1
  %tobool2096 = icmp ne i8 %1364, 0
  br i1 %tobool2096, label %if.then2097, label %if.else2099

if.then2097:                                      ; preds = %if.then2090
  %1365 = load ptr, ptr %db, align 8
  %autoCommit2098 = getelementptr inbounds nuw %struct.sqlite3, ptr %1365, i32 0, i32 17
  store i8 0, ptr %autoCommit2098, align 1
  %1366 = load ptr, ptr %db, align 8
  %isTransactionSavepoint = getelementptr inbounds nuw %struct.sqlite3, ptr %1366, i32 0, i32 25
  store i8 1, ptr %isTransactionSavepoint, align 1
  br label %if.end2102

if.else2099:                                      ; preds = %if.then2090
  %1367 = load ptr, ptr %db, align 8
  %nSavepoint2100 = getelementptr inbounds nuw %struct.sqlite3, ptr %1367, i32 0, i32 78
  %1368 = load i32, ptr %nSavepoint2100, align 4
  %inc2101 = add nsw i32 %1368, 1
  store i32 %inc2101, ptr %nSavepoint2100, align 4
  br label %if.end2102

if.end2102:                                       ; preds = %if.else2099, %if.then2097
  %1369 = load ptr, ptr %db, align 8
  %pSavepoint2103 = getelementptr inbounds nuw %struct.sqlite3, ptr %1369, i32 0, i32 76
  %1370 = load ptr, ptr %pSavepoint2103, align 8
  %1371 = load ptr, ptr %pNew, align 8
  %pNext = getelementptr inbounds nuw %struct.Savepoint, ptr %1371, i32 0, i32 3
  store ptr %1370, ptr %pNext, align 8
  %1372 = load ptr, ptr %pNew, align 8
  %1373 = load ptr, ptr %db, align 8
  %pSavepoint2104 = getelementptr inbounds nuw %struct.sqlite3, ptr %1373, i32 0, i32 76
  store ptr %1372, ptr %pSavepoint2104, align 8
  %1374 = load ptr, ptr %db, align 8
  %nDeferredCons = getelementptr inbounds nuw %struct.sqlite3, ptr %1374, i32 0, i32 80
  %1375 = load i64, ptr %nDeferredCons, align 8
  %1376 = load ptr, ptr %pNew, align 8
  %nDeferredCons2105 = getelementptr inbounds nuw %struct.Savepoint, ptr %1376, i32 0, i32 1
  store i64 %1375, ptr %nDeferredCons2105, align 8
  %1377 = load ptr, ptr %db, align 8
  %nDeferredImmCons = getelementptr inbounds nuw %struct.sqlite3, ptr %1377, i32 0, i32 81
  %1378 = load i64, ptr %nDeferredImmCons, align 8
  %1379 = load ptr, ptr %pNew, align 8
  %nDeferredImmCons2106 = getelementptr inbounds nuw %struct.Savepoint, ptr %1379, i32 0, i32 2
  store i64 %1378, ptr %nDeferredImmCons2106, align 8
  br label %if.end2107

if.end2107:                                       ; preds = %if.end2102, %if.end2084
  br label %if.end2108

if.end2108:                                       ; preds = %if.end2107, %if.then2076
  br label %if.end2259

if.else2109:                                      ; preds = %sw.bb2067
  store i32 0, ptr %iSavepoint, align 4
  %1380 = load ptr, ptr %db, align 8
  %pSavepoint2110 = getelementptr inbounds nuw %struct.sqlite3, ptr %1380, i32 0, i32 76
  %1381 = load ptr, ptr %pSavepoint2110, align 8
  store ptr %1381, ptr %pSavepoint, align 8
  br label %for.cond2111

for.cond2111:                                     ; preds = %for.inc2120, %if.else2109
  %1382 = load ptr, ptr %pSavepoint, align 8
  %tobool2112 = icmp ne ptr %1382, null
  br i1 %tobool2112, label %land.rhs2113, label %land.end2117

land.rhs2113:                                     ; preds = %for.cond2111
  %1383 = load ptr, ptr %pSavepoint, align 8
  %zName2114 = getelementptr inbounds nuw %struct.Savepoint, ptr %1383, i32 0, i32 0
  %1384 = load ptr, ptr %zName2114, align 8
  %1385 = load ptr, ptr %zName, align 8
  %call2115 = call i32 @sqlite3StrICmp(ptr noundef %1384, ptr noundef %1385)
  %tobool2116 = icmp ne i32 %call2115, 0
  br label %land.end2117

land.end2117:                                     ; preds = %land.rhs2113, %for.cond2111
  %1386 = phi i1 [ false, %for.cond2111 ], [ %tobool2116, %land.rhs2113 ]
  br i1 %1386, label %for.body2118, label %for.end2122

for.body2118:                                     ; preds = %land.end2117
  %1387 = load i32, ptr %iSavepoint, align 4
  %inc2119 = add nsw i32 %1387, 1
  store i32 %inc2119, ptr %iSavepoint, align 4
  br label %for.inc2120

for.inc2120:                                      ; preds = %for.body2118
  %1388 = load ptr, ptr %pSavepoint, align 8
  %pNext2121 = getelementptr inbounds nuw %struct.Savepoint, ptr %1388, i32 0, i32 3
  %1389 = load ptr, ptr %pNext2121, align 8
  store ptr %1389, ptr %pSavepoint, align 8
  br label %for.cond2111, !llvm.loop !15

for.end2122:                                      ; preds = %land.end2117
  %1390 = load ptr, ptr %pSavepoint, align 8
  %tobool2123 = icmp ne ptr %1390, null
  br i1 %tobool2123, label %if.else2125, label %if.then2124

if.then2124:                                      ; preds = %for.end2122
  %1391 = load ptr, ptr %p.addr, align 8
  %1392 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %1391, ptr noundef @.str.313, ptr noundef %1392)
  store i32 1, ptr %rc, align 4
  br label %if.end2258

if.else2125:                                      ; preds = %for.end2122
  %1393 = load ptr, ptr %db, align 8
  %nVdbeWrite2126 = getelementptr inbounds nuw %struct.sqlite3, ptr %1393, i32 0, i32 38
  %1394 = load i32, ptr %nVdbeWrite2126, align 8
  %cmp2127 = icmp sgt i32 %1394, 0
  br i1 %cmp2127, label %land.lhs.true2129, label %if.else2133

land.lhs.true2129:                                ; preds = %if.else2125
  %1395 = load i32, ptr %p12068, align 4
  %cmp2130 = icmp eq i32 %1395, 1
  br i1 %cmp2130, label %if.then2132, label %if.else2133

if.then2132:                                      ; preds = %land.lhs.true2129
  %1396 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %1396, ptr noundef @.str.314)
  store i32 5, ptr %rc, align 4
  br label %if.end2257

if.else2133:                                      ; preds = %land.lhs.true2129, %if.else2125
  %1397 = load ptr, ptr %pSavepoint, align 8
  %pNext2134 = getelementptr inbounds nuw %struct.Savepoint, ptr %1397, i32 0, i32 3
  %1398 = load ptr, ptr %pNext2134, align 8
  %cmp2135 = icmp eq ptr %1398, null
  br i1 %cmp2135, label %land.rhs2137, label %land.end2141

land.rhs2137:                                     ; preds = %if.else2133
  %1399 = load ptr, ptr %db, align 8
  %isTransactionSavepoint2138 = getelementptr inbounds nuw %struct.sqlite3, ptr %1399, i32 0, i32 25
  %1400 = load i8, ptr %isTransactionSavepoint2138, align 1
  %conv2139 = zext i8 %1400 to i32
  %tobool2140 = icmp ne i32 %conv2139, 0
  br label %land.end2141

land.end2141:                                     ; preds = %land.rhs2137, %if.else2133
  %1401 = phi i1 [ false, %if.else2133 ], [ %tobool2140, %land.rhs2137 ]
  %land.ext = zext i1 %1401 to i32
  store i32 %land.ext, ptr %isTransaction, align 4
  %1402 = load i32, ptr %isTransaction, align 4
  %tobool2142 = icmp ne i32 %1402, 0
  br i1 %tobool2142, label %land.lhs.true2143, label %if.else2168

land.lhs.true2143:                                ; preds = %land.end2141
  %1403 = load i32, ptr %p12068, align 4
  %cmp2144 = icmp eq i32 %1403, 1
  br i1 %cmp2144, label %if.then2146, label %if.else2168

if.then2146:                                      ; preds = %land.lhs.true2143
  %1404 = load ptr, ptr %p.addr, align 8
  %call2147 = call i32 @sqlite3VdbeCheckFk(ptr noundef %1404, i32 noundef 1)
  store i32 %call2147, ptr %rc, align 4
  %cmp2148 = icmp ne i32 %call2147, 0
  br i1 %cmp2148, label %if.then2150, label %if.end2151

if.then2150:                                      ; preds = %if.then2146
  br label %vdbe_return

if.end2151:                                       ; preds = %if.then2146
  %1405 = load ptr, ptr %db, align 8
  %autoCommit2152 = getelementptr inbounds nuw %struct.sqlite3, ptr %1405, i32 0, i32 17
  store i8 1, ptr %autoCommit2152, align 1
  %1406 = load ptr, ptr %p.addr, align 8
  %call2153 = call i32 @sqlite3VdbeHalt(ptr noundef %1406)
  %cmp2154 = icmp eq i32 %call2153, 5
  br i1 %cmp2154, label %if.then2156, label %if.end2165

if.then2156:                                      ; preds = %if.end2151
  %1407 = load ptr, ptr %pOp, align 8
  %1408 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast2157 = ptrtoint ptr %1407 to i64
  %sub.ptr.rhs.cast2158 = ptrtoint ptr %1408 to i64
  %sub.ptr.sub2159 = sub i64 %sub.ptr.lhs.cast2157, %sub.ptr.rhs.cast2158
  %sub.ptr.div2160 = sdiv exact i64 %sub.ptr.sub2159, 24
  %conv2161 = trunc i64 %sub.ptr.div2160 to i32
  %1409 = load ptr, ptr %p.addr, align 8
  %pc2162 = getelementptr inbounds nuw %struct.Vdbe, ptr %1409, i32 0, i32 10
  store i32 %conv2161, ptr %pc2162, align 4
  %1410 = load ptr, ptr %db, align 8
  %autoCommit2163 = getelementptr inbounds nuw %struct.sqlite3, ptr %1410, i32 0, i32 17
  store i8 0, ptr %autoCommit2163, align 1
  store i32 5, ptr %rc, align 4
  %1411 = load ptr, ptr %p.addr, align 8
  %rc2164 = getelementptr inbounds nuw %struct.Vdbe, ptr %1411, i32 0, i32 11
  store i32 5, ptr %rc2164, align 8
  br label %vdbe_return

if.end2165:                                       ; preds = %if.end2151
  %1412 = load ptr, ptr %db, align 8
  %isTransactionSavepoint2166 = getelementptr inbounds nuw %struct.sqlite3, ptr %1412, i32 0, i32 25
  store i8 0, ptr %isTransactionSavepoint2166, align 1
  %1413 = load ptr, ptr %p.addr, align 8
  %rc2167 = getelementptr inbounds nuw %struct.Vdbe, ptr %1413, i32 0, i32 11
  %1414 = load i32, ptr %rc2167, align 8
  store i32 %1414, ptr %rc, align 4
  br label %if.end2218

if.else2168:                                      ; preds = %land.lhs.true2143, %land.end2141
  %1415 = load ptr, ptr %db, align 8
  %nSavepoint2169 = getelementptr inbounds nuw %struct.sqlite3, ptr %1415, i32 0, i32 78
  %1416 = load i32, ptr %nSavepoint2169, align 4
  %1417 = load i32, ptr %iSavepoint, align 4
  %sub2170 = sub nsw i32 %1416, %1417
  %sub2171 = sub nsw i32 %sub2170, 1
  store i32 %sub2171, ptr %iSavepoint, align 4
  %1418 = load i32, ptr %p12068, align 4
  %cmp2172 = icmp eq i32 %1418, 2
  br i1 %cmp2172, label %if.then2174, label %if.else2194

if.then2174:                                      ; preds = %if.else2168
  %1419 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %1419, i32 0, i32 6
  %1420 = load i32, ptr %mDbFlags, align 4
  %and2175 = and i32 %1420, 1
  %cmp2176 = icmp ne i32 %and2175, 0
  %conv2177 = zext i1 %cmp2176 to i32
  store i32 %conv2177, ptr %isSchemaChange, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond2178

for.cond2178:                                     ; preds = %for.inc2191, %if.then2174
  %1421 = load i32, ptr %ii, align 4
  %1422 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %1422, i32 0, i32 5
  %1423 = load i32, ptr %nDb, align 8
  %cmp2179 = icmp slt i32 %1421, %1423
  br i1 %cmp2179, label %for.body2181, label %for.end2193

for.body2181:                                     ; preds = %for.cond2178
  %1424 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %1424, i32 0, i32 4
  %1425 = load ptr, ptr %aDb, align 8
  %1426 = load i32, ptr %ii, align 4
  %idxprom2182 = sext i32 %1426 to i64
  %arrayidx2183 = getelementptr inbounds %struct.Db, ptr %1425, i64 %idxprom2182
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx2183, i32 0, i32 1
  %1427 = load ptr, ptr %pBt, align 8
  %1428 = load i32, ptr %isSchemaChange, align 4
  %cmp2184 = icmp eq i32 %1428, 0
  %conv2185 = zext i1 %cmp2184 to i32
  %call2186 = call i32 @sqlite3BtreeTripAllCursors(ptr noundef %1427, i32 noundef 516, i32 noundef %conv2185)
  store i32 %call2186, ptr %rc, align 4
  %1429 = load i32, ptr %rc, align 4
  %cmp2187 = icmp ne i32 %1429, 0
  br i1 %cmp2187, label %if.then2189, label %if.end2190

if.then2189:                                      ; preds = %for.body2181
  br label %abort_due_to_error

if.end2190:                                       ; preds = %for.body2181
  br label %for.inc2191

for.inc2191:                                      ; preds = %if.end2190
  %1430 = load i32, ptr %ii, align 4
  %inc2192 = add nsw i32 %1430, 1
  store i32 %inc2192, ptr %ii, align 4
  br label %for.cond2178, !llvm.loop !16

for.end2193:                                      ; preds = %for.cond2178
  br label %if.end2195

if.else2194:                                      ; preds = %if.else2168
  store i32 0, ptr %isSchemaChange, align 4
  br label %if.end2195

if.end2195:                                       ; preds = %if.else2194, %for.end2193
  store i32 0, ptr %ii, align 4
  br label %for.cond2196

for.cond2196:                                     ; preds = %for.inc2210, %if.end2195
  %1431 = load i32, ptr %ii, align 4
  %1432 = load ptr, ptr %db, align 8
  %nDb2197 = getelementptr inbounds nuw %struct.sqlite3, ptr %1432, i32 0, i32 5
  %1433 = load i32, ptr %nDb2197, align 8
  %cmp2198 = icmp slt i32 %1431, %1433
  br i1 %cmp2198, label %for.body2200, label %for.end2212

for.body2200:                                     ; preds = %for.cond2196
  %1434 = load ptr, ptr %db, align 8
  %aDb2201 = getelementptr inbounds nuw %struct.sqlite3, ptr %1434, i32 0, i32 4
  %1435 = load ptr, ptr %aDb2201, align 8
  %1436 = load i32, ptr %ii, align 4
  %idxprom2202 = sext i32 %1436 to i64
  %arrayidx2203 = getelementptr inbounds %struct.Db, ptr %1435, i64 %idxprom2202
  %pBt2204 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx2203, i32 0, i32 1
  %1437 = load ptr, ptr %pBt2204, align 8
  %1438 = load i32, ptr %p12068, align 4
  %1439 = load i32, ptr %iSavepoint, align 4
  %call2205 = call i32 @sqlite3BtreeSavepoint(ptr noundef %1437, i32 noundef %1438, i32 noundef %1439)
  store i32 %call2205, ptr %rc, align 4
  %1440 = load i32, ptr %rc, align 4
  %cmp2206 = icmp ne i32 %1440, 0
  br i1 %cmp2206, label %if.then2208, label %if.end2209

if.then2208:                                      ; preds = %for.body2200
  br label %abort_due_to_error

if.end2209:                                       ; preds = %for.body2200
  br label %for.inc2210

for.inc2210:                                      ; preds = %if.end2209
  %1441 = load i32, ptr %ii, align 4
  %inc2211 = add nsw i32 %1441, 1
  store i32 %inc2211, ptr %ii, align 4
  br label %for.cond2196, !llvm.loop !17

for.end2212:                                      ; preds = %for.cond2196
  %1442 = load i32, ptr %isSchemaChange, align 4
  %tobool2213 = icmp ne i32 %1442, 0
  br i1 %tobool2213, label %if.then2214, label %if.end2217

if.then2214:                                      ; preds = %for.end2212
  %1443 = load ptr, ptr %db, align 8
  call void @sqlite3ExpirePreparedStatements(ptr noundef %1443, i32 noundef 0)
  %1444 = load ptr, ptr %db, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %1444)
  %1445 = load ptr, ptr %db, align 8
  %mDbFlags2215 = getelementptr inbounds nuw %struct.sqlite3, ptr %1445, i32 0, i32 6
  %1446 = load i32, ptr %mDbFlags2215, align 4
  %or2216 = or i32 %1446, 1
  store i32 %or2216, ptr %mDbFlags2215, align 4
  br label %if.end2217

if.end2217:                                       ; preds = %if.then2214, %for.end2212
  br label %if.end2218

if.end2218:                                       ; preds = %if.end2217, %if.end2165
  br label %while.cond2219

while.cond2219:                                   ; preds = %while.body2223, %if.end2218
  %1447 = load ptr, ptr %db, align 8
  %pSavepoint2220 = getelementptr inbounds nuw %struct.sqlite3, ptr %1447, i32 0, i32 76
  %1448 = load ptr, ptr %pSavepoint2220, align 8
  %1449 = load ptr, ptr %pSavepoint, align 8
  %cmp2221 = icmp ne ptr %1448, %1449
  br i1 %cmp2221, label %while.body2223, label %while.end2229

while.body2223:                                   ; preds = %while.cond2219
  %1450 = load ptr, ptr %db, align 8
  %pSavepoint2224 = getelementptr inbounds nuw %struct.sqlite3, ptr %1450, i32 0, i32 76
  %1451 = load ptr, ptr %pSavepoint2224, align 8
  store ptr %1451, ptr %pTmp, align 8
  %1452 = load ptr, ptr %pTmp, align 8
  %pNext2225 = getelementptr inbounds nuw %struct.Savepoint, ptr %1452, i32 0, i32 3
  %1453 = load ptr, ptr %pNext2225, align 8
  %1454 = load ptr, ptr %db, align 8
  %pSavepoint2226 = getelementptr inbounds nuw %struct.sqlite3, ptr %1454, i32 0, i32 76
  store ptr %1453, ptr %pSavepoint2226, align 8
  %1455 = load ptr, ptr %db, align 8
  %1456 = load ptr, ptr %pTmp, align 8
  call void @sqlite3DbFree(ptr noundef %1455, ptr noundef %1456)
  %1457 = load ptr, ptr %db, align 8
  %nSavepoint2227 = getelementptr inbounds nuw %struct.sqlite3, ptr %1457, i32 0, i32 78
  %1458 = load i32, ptr %nSavepoint2227, align 4
  %dec2228 = add nsw i32 %1458, -1
  store i32 %dec2228, ptr %nSavepoint2227, align 4
  br label %while.cond2219, !llvm.loop !18

while.end2229:                                    ; preds = %while.cond2219
  %1459 = load i32, ptr %p12068, align 4
  %cmp2230 = icmp eq i32 %1459, 1
  br i1 %cmp2230, label %if.then2232, label %if.else2240

if.then2232:                                      ; preds = %while.end2229
  %1460 = load ptr, ptr %pSavepoint, align 8
  %pNext2233 = getelementptr inbounds nuw %struct.Savepoint, ptr %1460, i32 0, i32 3
  %1461 = load ptr, ptr %pNext2233, align 8
  %1462 = load ptr, ptr %db, align 8
  %pSavepoint2234 = getelementptr inbounds nuw %struct.sqlite3, ptr %1462, i32 0, i32 76
  store ptr %1461, ptr %pSavepoint2234, align 8
  %1463 = load ptr, ptr %db, align 8
  %1464 = load ptr, ptr %pSavepoint, align 8
  call void @sqlite3DbFree(ptr noundef %1463, ptr noundef %1464)
  %1465 = load i32, ptr %isTransaction, align 4
  %tobool2235 = icmp ne i32 %1465, 0
  br i1 %tobool2235, label %if.end2239, label %if.then2236

if.then2236:                                      ; preds = %if.then2232
  %1466 = load ptr, ptr %db, align 8
  %nSavepoint2237 = getelementptr inbounds nuw %struct.sqlite3, ptr %1466, i32 0, i32 78
  %1467 = load i32, ptr %nSavepoint2237, align 4
  %dec2238 = add nsw i32 %1467, -1
  store i32 %dec2238, ptr %nSavepoint2237, align 4
  br label %if.end2239

if.end2239:                                       ; preds = %if.then2236, %if.then2232
  br label %if.end2245

if.else2240:                                      ; preds = %while.end2229
  %1468 = load ptr, ptr %pSavepoint, align 8
  %nDeferredCons2241 = getelementptr inbounds nuw %struct.Savepoint, ptr %1468, i32 0, i32 1
  %1469 = load i64, ptr %nDeferredCons2241, align 8
  %1470 = load ptr, ptr %db, align 8
  %nDeferredCons2242 = getelementptr inbounds nuw %struct.sqlite3, ptr %1470, i32 0, i32 80
  store i64 %1469, ptr %nDeferredCons2242, align 8
  %1471 = load ptr, ptr %pSavepoint, align 8
  %nDeferredImmCons2243 = getelementptr inbounds nuw %struct.Savepoint, ptr %1471, i32 0, i32 2
  %1472 = load i64, ptr %nDeferredImmCons2243, align 8
  %1473 = load ptr, ptr %db, align 8
  %nDeferredImmCons2244 = getelementptr inbounds nuw %struct.sqlite3, ptr %1473, i32 0, i32 81
  store i64 %1472, ptr %nDeferredImmCons2244, align 8
  br label %if.end2245

if.end2245:                                       ; preds = %if.else2240, %if.end2239
  %1474 = load i32, ptr %isTransaction, align 4
  %tobool2246 = icmp ne i32 %1474, 0
  br i1 %tobool2246, label %lor.lhs.false2247, label %if.then2250

lor.lhs.false2247:                                ; preds = %if.end2245
  %1475 = load i32, ptr %p12068, align 4
  %cmp2248 = icmp eq i32 %1475, 2
  br i1 %cmp2248, label %if.then2250, label %if.end2256

if.then2250:                                      ; preds = %lor.lhs.false2247, %if.end2245
  %1476 = load ptr, ptr %db, align 8
  %1477 = load i32, ptr %p12068, align 4
  %1478 = load i32, ptr %iSavepoint, align 4
  %call2251 = call i32 @sqlite3VtabSavepoint(ptr noundef %1476, i32 noundef %1477, i32 noundef %1478)
  store i32 %call2251, ptr %rc, align 4
  %1479 = load i32, ptr %rc, align 4
  %cmp2252 = icmp ne i32 %1479, 0
  br i1 %cmp2252, label %if.then2254, label %if.end2255

if.then2254:                                      ; preds = %if.then2250
  br label %abort_due_to_error

if.end2255:                                       ; preds = %if.then2250
  br label %if.end2256

if.end2256:                                       ; preds = %if.end2255, %lor.lhs.false2247
  br label %if.end2257

if.end2257:                                       ; preds = %if.end2256, %if.then2132
  br label %if.end2258

if.end2258:                                       ; preds = %if.end2257, %if.then2124
  br label %if.end2259

if.end2259:                                       ; preds = %if.end2258, %if.end2108
  %1480 = load i32, ptr %rc, align 4
  %tobool2260 = icmp ne i32 %1480, 0
  br i1 %tobool2260, label %if.then2261, label %if.end2262

if.then2261:                                      ; preds = %if.end2259
  br label %abort_due_to_error

if.end2262:                                       ; preds = %if.end2259
  br label %sw.epilog5364

sw.bb2263:                                        ; preds = %for.body
  %1481 = load ptr, ptr %pOp, align 8
  %p12264 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1481, i32 0, i32 3
  %1482 = load i32, ptr %p12264, align 4
  store i32 %1482, ptr %desiredAutoCommit, align 4
  %1483 = load ptr, ptr %pOp, align 8
  %p22265 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1483, i32 0, i32 4
  %1484 = load i32, ptr %p22265, align 8
  store i32 %1484, ptr %iRollback, align 4
  %1485 = load i32, ptr %desiredAutoCommit, align 4
  %1486 = load ptr, ptr %db, align 8
  %autoCommit2266 = getelementptr inbounds nuw %struct.sqlite3, ptr %1486, i32 0, i32 17
  %1487 = load i8, ptr %autoCommit2266, align 1
  %conv2267 = zext i8 %1487 to i32
  %cmp2268 = icmp ne i32 %1485, %conv2267
  br i1 %cmp2268, label %if.then2270, label %if.else2313

if.then2270:                                      ; preds = %sw.bb2263
  %1488 = load i32, ptr %iRollback, align 4
  %tobool2271 = icmp ne i32 %1488, 0
  br i1 %tobool2271, label %if.then2272, label %if.else2274

if.then2272:                                      ; preds = %if.then2270
  %1489 = load ptr, ptr %db, align 8
  call void @sqlite3RollbackAll(ptr noundef %1489, i32 noundef 516)
  %1490 = load ptr, ptr %db, align 8
  %autoCommit2273 = getelementptr inbounds nuw %struct.sqlite3, ptr %1490, i32 0, i32 17
  store i8 1, ptr %autoCommit2273, align 1
  br label %if.end2291

if.else2274:                                      ; preds = %if.then2270
  %1491 = load i32, ptr %desiredAutoCommit, align 4
  %tobool2275 = icmp ne i32 %1491, 0
  br i1 %tobool2275, label %land.lhs.true2276, label %if.else2281

land.lhs.true2276:                                ; preds = %if.else2274
  %1492 = load ptr, ptr %db, align 8
  %nVdbeWrite2277 = getelementptr inbounds nuw %struct.sqlite3, ptr %1492, i32 0, i32 38
  %1493 = load i32, ptr %nVdbeWrite2277, align 8
  %cmp2278 = icmp sgt i32 %1493, 0
  br i1 %cmp2278, label %if.then2280, label %if.else2281

if.then2280:                                      ; preds = %land.lhs.true2276
  %1494 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %1494, ptr noundef @.str.315)
  store i32 5, ptr %rc, align 4
  br label %abort_due_to_error

if.else2281:                                      ; preds = %land.lhs.true2276, %if.else2274
  %1495 = load ptr, ptr %p.addr, align 8
  %call2282 = call i32 @sqlite3VdbeCheckFk(ptr noundef %1495, i32 noundef 1)
  store i32 %call2282, ptr %rc, align 4
  %cmp2283 = icmp ne i32 %call2282, 0
  br i1 %cmp2283, label %if.then2285, label %if.else2286

if.then2285:                                      ; preds = %if.else2281
  br label %vdbe_return

if.else2286:                                      ; preds = %if.else2281
  %1496 = load i32, ptr %desiredAutoCommit, align 4
  %conv2287 = trunc i32 %1496 to i8
  %1497 = load ptr, ptr %db, align 8
  %autoCommit2288 = getelementptr inbounds nuw %struct.sqlite3, ptr %1497, i32 0, i32 17
  store i8 %conv2287, ptr %autoCommit2288, align 1
  br label %if.end2289

if.end2289:                                       ; preds = %if.else2286
  br label %if.end2290

if.end2290:                                       ; preds = %if.end2289
  br label %if.end2291

if.end2291:                                       ; preds = %if.end2290, %if.then2272
  %1498 = load ptr, ptr %p.addr, align 8
  %call2292 = call i32 @sqlite3VdbeHalt(ptr noundef %1498)
  %cmp2293 = icmp eq i32 %call2292, 5
  br i1 %cmp2293, label %if.then2295, label %if.end2306

if.then2295:                                      ; preds = %if.end2291
  %1499 = load ptr, ptr %pOp, align 8
  %1500 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast2296 = ptrtoint ptr %1499 to i64
  %sub.ptr.rhs.cast2297 = ptrtoint ptr %1500 to i64
  %sub.ptr.sub2298 = sub i64 %sub.ptr.lhs.cast2296, %sub.ptr.rhs.cast2297
  %sub.ptr.div2299 = sdiv exact i64 %sub.ptr.sub2298, 24
  %conv2300 = trunc i64 %sub.ptr.div2299 to i32
  %1501 = load ptr, ptr %p.addr, align 8
  %pc2301 = getelementptr inbounds nuw %struct.Vdbe, ptr %1501, i32 0, i32 10
  store i32 %conv2300, ptr %pc2301, align 4
  %1502 = load i32, ptr %desiredAutoCommit, align 4
  %sub2302 = sub nsw i32 1, %1502
  %conv2303 = trunc i32 %sub2302 to i8
  %1503 = load ptr, ptr %db, align 8
  %autoCommit2304 = getelementptr inbounds nuw %struct.sqlite3, ptr %1503, i32 0, i32 17
  store i8 %conv2303, ptr %autoCommit2304, align 1
  store i32 5, ptr %rc, align 4
  %1504 = load ptr, ptr %p.addr, align 8
  %rc2305 = getelementptr inbounds nuw %struct.Vdbe, ptr %1504, i32 0, i32 11
  store i32 5, ptr %rc2305, align 8
  br label %vdbe_return

if.end2306:                                       ; preds = %if.end2291
  %1505 = load ptr, ptr %db, align 8
  call void @sqlite3CloseSavepoints(ptr noundef %1505)
  %1506 = load ptr, ptr %p.addr, align 8
  %rc2307 = getelementptr inbounds nuw %struct.Vdbe, ptr %1506, i32 0, i32 11
  %1507 = load i32, ptr %rc2307, align 8
  %cmp2308 = icmp eq i32 %1507, 0
  br i1 %cmp2308, label %if.then2310, label %if.else2311

if.then2310:                                      ; preds = %if.end2306
  store i32 101, ptr %rc, align 4
  br label %if.end2312

if.else2311:                                      ; preds = %if.end2306
  store i32 1, ptr %rc, align 4
  br label %if.end2312

if.end2312:                                       ; preds = %if.else2311, %if.then2310
  br label %vdbe_return

if.else2313:                                      ; preds = %sw.bb2263
  %1508 = load ptr, ptr %p.addr, align 8
  %1509 = load i32, ptr %desiredAutoCommit, align 4
  %tobool2314 = icmp ne i32 %1509, 0
  br i1 %tobool2314, label %cond.false2316, label %cond.true2315

cond.true2315:                                    ; preds = %if.else2313
  br label %cond.end2319

cond.false2316:                                   ; preds = %if.else2313
  %1510 = load i32, ptr %iRollback, align 4
  %tobool2317 = icmp ne i32 %1510, 0
  %1511 = zext i1 %tobool2317 to i64
  %cond2318 = select i1 %tobool2317, ptr @.str.317, ptr @.str.318
  br label %cond.end2319

cond.end2319:                                     ; preds = %cond.false2316, %cond.true2315
  %cond2320 = phi ptr [ @.str.316, %cond.true2315 ], [ %cond2318, %cond.false2316 ]
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %1508, ptr noundef %cond2320)
  store i32 1, ptr %rc, align 4
  br label %abort_due_to_error

sw.bb2321:                                        ; preds = %for.body
  store i32 0, ptr %iMeta, align 4
  %1512 = load ptr, ptr %pOp, align 8
  %p22323 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1512, i32 0, i32 4
  %1513 = load i32, ptr %p22323, align 8
  %tobool2324 = icmp ne i32 %1513, 0
  br i1 %tobool2324, label %land.lhs.true2325, label %if.end2331

land.lhs.true2325:                                ; preds = %sw.bb2321
  %1514 = load ptr, ptr %db, align 8
  %flags2326 = getelementptr inbounds nuw %struct.sqlite3, ptr %1514, i32 0, i32 7
  %1515 = load i64, ptr %flags2326, align 8
  %and2327 = and i64 %1515, 1048576
  %cmp2328 = icmp ne i64 %and2327, 0
  br i1 %cmp2328, label %if.then2330, label %if.end2331

if.then2330:                                      ; preds = %land.lhs.true2325
  store i32 8, ptr %rc, align 4
  br label %abort_due_to_error

if.end2331:                                       ; preds = %land.lhs.true2325, %sw.bb2321
  %1516 = load ptr, ptr %db, align 8
  %aDb2332 = getelementptr inbounds nuw %struct.sqlite3, ptr %1516, i32 0, i32 4
  %1517 = load ptr, ptr %aDb2332, align 8
  %1518 = load ptr, ptr %pOp, align 8
  %p12333 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1518, i32 0, i32 3
  %1519 = load i32, ptr %p12333, align 4
  %idxprom2334 = sext i32 %1519 to i64
  %arrayidx2335 = getelementptr inbounds %struct.Db, ptr %1517, i64 %idxprom2334
  %pBt2336 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx2335, i32 0, i32 1
  %1520 = load ptr, ptr %pBt2336, align 8
  store ptr %1520, ptr %pBt2322, align 8
  %1521 = load ptr, ptr %pBt2322, align 8
  %tobool2337 = icmp ne ptr %1521, null
  br i1 %tobool2337, label %if.then2338, label %if.end2392

if.then2338:                                      ; preds = %if.end2331
  %1522 = load ptr, ptr %pBt2322, align 8
  %1523 = load ptr, ptr %pOp, align 8
  %p22339 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1523, i32 0, i32 4
  %1524 = load i32, ptr %p22339, align 8
  %call2340 = call i32 @sqlite3BtreeBeginTrans(ptr noundef %1522, i32 noundef %1524, ptr noundef %iMeta)
  store i32 %call2340, ptr %rc, align 4
  %1525 = load i32, ptr %rc, align 4
  %cmp2341 = icmp ne i32 %1525, 0
  br i1 %cmp2341, label %if.then2343, label %if.end2356

if.then2343:                                      ; preds = %if.then2338
  %1526 = load i32, ptr %rc, align 4
  %and2344 = and i32 %1526, 255
  %cmp2345 = icmp eq i32 %and2344, 5
  br i1 %cmp2345, label %if.then2347, label %if.end2355

if.then2347:                                      ; preds = %if.then2343
  %1527 = load ptr, ptr %pOp, align 8
  %1528 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast2348 = ptrtoint ptr %1527 to i64
  %sub.ptr.rhs.cast2349 = ptrtoint ptr %1528 to i64
  %sub.ptr.sub2350 = sub i64 %sub.ptr.lhs.cast2348, %sub.ptr.rhs.cast2349
  %sub.ptr.div2351 = sdiv exact i64 %sub.ptr.sub2350, 24
  %conv2352 = trunc i64 %sub.ptr.div2351 to i32
  %1529 = load ptr, ptr %p.addr, align 8
  %pc2353 = getelementptr inbounds nuw %struct.Vdbe, ptr %1529, i32 0, i32 10
  store i32 %conv2352, ptr %pc2353, align 4
  %1530 = load i32, ptr %rc, align 4
  %1531 = load ptr, ptr %p.addr, align 8
  %rc2354 = getelementptr inbounds nuw %struct.Vdbe, ptr %1531, i32 0, i32 11
  store i32 %1530, ptr %rc2354, align 8
  br label %vdbe_return

if.end2355:                                       ; preds = %if.then2343
  br label %abort_due_to_error

if.end2356:                                       ; preds = %if.then2338
  %1532 = load ptr, ptr %pOp, align 8
  %p22357 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1532, i32 0, i32 4
  %1533 = load i32, ptr %p22357, align 8
  %tobool2358 = icmp ne i32 %1533, 0
  br i1 %tobool2358, label %land.lhs.true2359, label %if.end2391

land.lhs.true2359:                                ; preds = %if.end2356
  %1534 = load ptr, ptr %p.addr, align 8
  %usesStmtJournal = getelementptr inbounds nuw %struct.Vdbe, ptr %1534, i32 0, i32 35
  %bf.load = load i16, ptr %usesStmtJournal, align 1
  %bf.lshr = lshr i16 %bf.load, 7
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool2360 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2360, label %land.lhs.true2361, label %if.end2391

land.lhs.true2361:                                ; preds = %land.lhs.true2359
  %1535 = load ptr, ptr %db, align 8
  %autoCommit2362 = getelementptr inbounds nuw %struct.sqlite3, ptr %1535, i32 0, i32 17
  %1536 = load i8, ptr %autoCommit2362, align 1
  %conv2363 = zext i8 %1536 to i32
  %cmp2364 = icmp eq i32 %conv2363, 0
  br i1 %cmp2364, label %if.then2369, label %lor.lhs.false2366

lor.lhs.false2366:                                ; preds = %land.lhs.true2361
  %1537 = load ptr, ptr %db, align 8
  %nVdbeRead = getelementptr inbounds nuw %struct.sqlite3, ptr %1537, i32 0, i32 37
  %1538 = load i32, ptr %nVdbeRead, align 4
  %cmp2367 = icmp sgt i32 %1538, 1
  br i1 %cmp2367, label %if.then2369, label %if.end2391

if.then2369:                                      ; preds = %lor.lhs.false2366, %land.lhs.true2361
  %1539 = load ptr, ptr %p.addr, align 8
  %iStatement = getelementptr inbounds nuw %struct.Vdbe, ptr %1539, i32 0, i32 13
  %1540 = load i32, ptr %iStatement, align 8
  %cmp2370 = icmp eq i32 %1540, 0
  br i1 %cmp2370, label %if.then2372, label %if.end2379

if.then2372:                                      ; preds = %if.then2369
  %1541 = load ptr, ptr %db, align 8
  %nStatement2373 = getelementptr inbounds nuw %struct.sqlite3, ptr %1541, i32 0, i32 79
  %1542 = load i32, ptr %nStatement2373, align 8
  %inc2374 = add nsw i32 %1542, 1
  store i32 %inc2374, ptr %nStatement2373, align 8
  %1543 = load ptr, ptr %db, align 8
  %nSavepoint2375 = getelementptr inbounds nuw %struct.sqlite3, ptr %1543, i32 0, i32 78
  %1544 = load i32, ptr %nSavepoint2375, align 4
  %1545 = load ptr, ptr %db, align 8
  %nStatement2376 = getelementptr inbounds nuw %struct.sqlite3, ptr %1545, i32 0, i32 79
  %1546 = load i32, ptr %nStatement2376, align 8
  %add2377 = add nsw i32 %1544, %1546
  %1547 = load ptr, ptr %p.addr, align 8
  %iStatement2378 = getelementptr inbounds nuw %struct.Vdbe, ptr %1547, i32 0, i32 13
  store i32 %add2377, ptr %iStatement2378, align 8
  br label %if.end2379

if.end2379:                                       ; preds = %if.then2372, %if.then2369
  %1548 = load ptr, ptr %db, align 8
  %1549 = load ptr, ptr %p.addr, align 8
  %iStatement2380 = getelementptr inbounds nuw %struct.Vdbe, ptr %1549, i32 0, i32 13
  %1550 = load i32, ptr %iStatement2380, align 8
  %sub2381 = sub nsw i32 %1550, 1
  %call2382 = call i32 @sqlite3VtabSavepoint(ptr noundef %1548, i32 noundef 0, i32 noundef %sub2381)
  store i32 %call2382, ptr %rc, align 4
  %1551 = load i32, ptr %rc, align 4
  %cmp2383 = icmp eq i32 %1551, 0
  br i1 %cmp2383, label %if.then2385, label %if.end2388

if.then2385:                                      ; preds = %if.end2379
  %1552 = load ptr, ptr %pBt2322, align 8
  %1553 = load ptr, ptr %p.addr, align 8
  %iStatement2386 = getelementptr inbounds nuw %struct.Vdbe, ptr %1553, i32 0, i32 13
  %1554 = load i32, ptr %iStatement2386, align 8
  %call2387 = call i32 @sqlite3BtreeBeginStmt(ptr noundef %1552, i32 noundef %1554)
  store i32 %call2387, ptr %rc, align 4
  br label %if.end2388

if.end2388:                                       ; preds = %if.then2385, %if.end2379
  %1555 = load ptr, ptr %db, align 8
  %nDeferredCons2389 = getelementptr inbounds nuw %struct.sqlite3, ptr %1555, i32 0, i32 80
  %1556 = load i64, ptr %nDeferredCons2389, align 8
  %1557 = load ptr, ptr %p.addr, align 8
  %nStmtDefCons = getelementptr inbounds nuw %struct.Vdbe, ptr %1557, i32 0, i32 17
  store i64 %1556, ptr %nStmtDefCons, align 8
  %1558 = load ptr, ptr %db, align 8
  %nDeferredImmCons2390 = getelementptr inbounds nuw %struct.sqlite3, ptr %1558, i32 0, i32 81
  %1559 = load i64, ptr %nDeferredImmCons2390, align 8
  %1560 = load ptr, ptr %p.addr, align 8
  %nStmtDefImmCons = getelementptr inbounds nuw %struct.Vdbe, ptr %1560, i32 0, i32 18
  store i64 %1559, ptr %nStmtDefImmCons, align 8
  br label %if.end2391

if.end2391:                                       ; preds = %if.end2388, %lor.lhs.false2366, %land.lhs.true2359, %if.end2356
  br label %if.end2392

if.end2392:                                       ; preds = %if.end2391, %if.end2331
  %1561 = load ptr, ptr %pOp, align 8
  %p52393 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1561, i32 0, i32 2
  %1562 = load i16, ptr %p52393, align 2
  %conv2394 = zext i16 %1562 to i32
  %tobool2395 = icmp ne i32 %conv2394, 0
  br i1 %tobool2395, label %land.lhs.true2396, label %if.end2424

land.lhs.true2396:                                ; preds = %if.end2392
  %1563 = load i32, ptr %iMeta, align 4
  %1564 = load ptr, ptr %pOp, align 8
  %p32397 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1564, i32 0, i32 5
  %1565 = load i32, ptr %p32397, align 4
  %cmp2398 = icmp ne i32 %1563, %1565
  br i1 %cmp2398, label %if.then2408, label %lor.lhs.false2400

lor.lhs.false2400:                                ; preds = %land.lhs.true2396
  %1566 = load ptr, ptr %db, align 8
  %aDb2401 = getelementptr inbounds nuw %struct.sqlite3, ptr %1566, i32 0, i32 4
  %1567 = load ptr, ptr %aDb2401, align 8
  %1568 = load ptr, ptr %pOp, align 8
  %p12402 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1568, i32 0, i32 3
  %1569 = load i32, ptr %p12402, align 4
  %idxprom2403 = sext i32 %1569 to i64
  %arrayidx2404 = getelementptr inbounds %struct.Db, ptr %1567, i64 %idxprom2403
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx2404, i32 0, i32 4
  %1570 = load ptr, ptr %pSchema, align 8
  %iGeneration = getelementptr inbounds nuw %struct.Schema, ptr %1570, i32 0, i32 1
  %1571 = load i32, ptr %iGeneration, align 4
  %1572 = load ptr, ptr %pOp, align 8
  %p42405 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1572, i32 0, i32 6
  %1573 = load i32, ptr %p42405, align 8
  %cmp2406 = icmp ne i32 %1571, %1573
  br i1 %cmp2406, label %if.then2408, label %if.end2424

if.then2408:                                      ; preds = %lor.lhs.false2400, %land.lhs.true2396
  %1574 = load ptr, ptr %db, align 8
  %1575 = load ptr, ptr %p.addr, align 8
  %zErrMsg2409 = getelementptr inbounds nuw %struct.Vdbe, ptr %1575, i32 0, i32 28
  %1576 = load ptr, ptr %zErrMsg2409, align 8
  call void @sqlite3DbFree(ptr noundef %1574, ptr noundef %1576)
  %1577 = load ptr, ptr %db, align 8
  %call2410 = call ptr @sqlite3DbStrDup(ptr noundef %1577, ptr noundef @.str.319)
  %1578 = load ptr, ptr %p.addr, align 8
  %zErrMsg2411 = getelementptr inbounds nuw %struct.Vdbe, ptr %1578, i32 0, i32 28
  store ptr %call2410, ptr %zErrMsg2411, align 8
  %1579 = load ptr, ptr %db, align 8
  %aDb2412 = getelementptr inbounds nuw %struct.sqlite3, ptr %1579, i32 0, i32 4
  %1580 = load ptr, ptr %aDb2412, align 8
  %1581 = load ptr, ptr %pOp, align 8
  %p12413 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1581, i32 0, i32 3
  %1582 = load i32, ptr %p12413, align 4
  %idxprom2414 = sext i32 %1582 to i64
  %arrayidx2415 = getelementptr inbounds %struct.Db, ptr %1580, i64 %idxprom2414
  %pSchema2416 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx2415, i32 0, i32 4
  %1583 = load ptr, ptr %pSchema2416, align 8
  %schema_cookie = getelementptr inbounds nuw %struct.Schema, ptr %1583, i32 0, i32 0
  %1584 = load i32, ptr %schema_cookie, align 8
  %1585 = load i32, ptr %iMeta, align 4
  %cmp2417 = icmp ne i32 %1584, %1585
  br i1 %cmp2417, label %if.then2419, label %if.end2421

if.then2419:                                      ; preds = %if.then2408
  %1586 = load ptr, ptr %db, align 8
  %1587 = load ptr, ptr %pOp, align 8
  %p12420 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1587, i32 0, i32 3
  %1588 = load i32, ptr %p12420, align 4
  call void @sqlite3ResetOneSchema(ptr noundef %1586, i32 noundef %1588)
  br label %if.end2421

if.end2421:                                       ; preds = %if.then2419, %if.then2408
  %1589 = load ptr, ptr %p.addr, align 8
  %expired = getelementptr inbounds nuw %struct.Vdbe, ptr %1589, i32 0, i32 35
  %bf.load2422 = load i16, ptr %expired, align 1
  %bf.clear2423 = and i16 %bf.load2422, -4
  %bf.set = or i16 %bf.clear2423, 1
  store i16 %bf.set, ptr %expired, align 1
  store i32 17, ptr %rc, align 4
  br label %if.end2424

if.end2424:                                       ; preds = %if.end2421, %lor.lhs.false2400, %if.end2392
  %1590 = load i32, ptr %rc, align 4
  %tobool2425 = icmp ne i32 %1590, 0
  br i1 %tobool2425, label %if.then2426, label %if.end2427

if.then2426:                                      ; preds = %if.end2424
  br label %abort_due_to_error

if.end2427:                                       ; preds = %if.end2424
  br label %sw.epilog5364

sw.bb2428:                                        ; preds = %for.body
  %1591 = load ptr, ptr %pOp, align 8
  %p12430 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1591, i32 0, i32 3
  %1592 = load i32, ptr %p12430, align 4
  store i32 %1592, ptr %iDb, align 4
  %1593 = load ptr, ptr %pOp, align 8
  %p32431 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1593, i32 0, i32 5
  %1594 = load i32, ptr %p32431, align 4
  store i32 %1594, ptr %iCookie, align 4
  %1595 = load ptr, ptr %db, align 8
  %aDb2432 = getelementptr inbounds nuw %struct.sqlite3, ptr %1595, i32 0, i32 4
  %1596 = load ptr, ptr %aDb2432, align 8
  %1597 = load i32, ptr %iDb, align 4
  %idxprom2433 = sext i32 %1597 to i64
  %arrayidx2434 = getelementptr inbounds %struct.Db, ptr %1596, i64 %idxprom2433
  %pBt2435 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx2434, i32 0, i32 1
  %1598 = load ptr, ptr %pBt2435, align 8
  %1599 = load i32, ptr %iCookie, align 4
  call void @sqlite3BtreeGetMeta(ptr noundef %1598, i32 noundef %1599, ptr noundef %iMeta2429)
  %1600 = load ptr, ptr %p.addr, align 8
  %1601 = load ptr, ptr %pOp, align 8
  %call2436 = call ptr @out2Prerelease(ptr noundef %1600, ptr noundef %1601)
  store ptr %call2436, ptr %pOut, align 8
  %1602 = load i32, ptr %iMeta2429, align 4
  %conv2437 = sext i32 %1602 to i64
  %1603 = load ptr, ptr %pOut, align 8
  %u2438 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1603, i32 0, i32 0
  store i64 %conv2437, ptr %u2438, align 8
  br label %sw.epilog5364

sw.bb2439:                                        ; preds = %for.body
  %1604 = load ptr, ptr %db, align 8
  %aDb2440 = getelementptr inbounds nuw %struct.sqlite3, ptr %1604, i32 0, i32 4
  %1605 = load ptr, ptr %aDb2440, align 8
  %1606 = load ptr, ptr %pOp, align 8
  %p12441 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1606, i32 0, i32 3
  %1607 = load i32, ptr %p12441, align 4
  %idxprom2442 = sext i32 %1607 to i64
  %arrayidx2443 = getelementptr inbounds %struct.Db, ptr %1605, i64 %idxprom2442
  store ptr %arrayidx2443, ptr %pDb, align 8
  %1608 = load ptr, ptr %pDb, align 8
  %pBt2444 = getelementptr inbounds nuw %struct.Db, ptr %1608, i32 0, i32 1
  %1609 = load ptr, ptr %pBt2444, align 8
  %1610 = load ptr, ptr %pOp, align 8
  %p22445 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1610, i32 0, i32 4
  %1611 = load i32, ptr %p22445, align 8
  %1612 = load ptr, ptr %pOp, align 8
  %p32446 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1612, i32 0, i32 5
  %1613 = load i32, ptr %p32446, align 4
  %call2447 = call i32 @sqlite3BtreeUpdateMeta(ptr noundef %1609, i32 noundef %1611, i32 noundef %1613)
  store i32 %call2447, ptr %rc, align 4
  %1614 = load ptr, ptr %pOp, align 8
  %p22448 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1614, i32 0, i32 4
  %1615 = load i32, ptr %p22448, align 8
  %cmp2449 = icmp eq i32 %1615, 1
  br i1 %cmp2449, label %if.then2451, label %if.else2457

if.then2451:                                      ; preds = %sw.bb2439
  %1616 = load ptr, ptr %pOp, align 8
  %p32452 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1616, i32 0, i32 5
  %1617 = load i32, ptr %p32452, align 4
  %1618 = load ptr, ptr %pDb, align 8
  %pSchema2453 = getelementptr inbounds nuw %struct.Db, ptr %1618, i32 0, i32 4
  %1619 = load ptr, ptr %pSchema2453, align 8
  %schema_cookie2454 = getelementptr inbounds nuw %struct.Schema, ptr %1619, i32 0, i32 0
  store i32 %1617, ptr %schema_cookie2454, align 8
  %1620 = load ptr, ptr %db, align 8
  %mDbFlags2455 = getelementptr inbounds nuw %struct.sqlite3, ptr %1620, i32 0, i32 6
  %1621 = load i32, ptr %mDbFlags2455, align 4
  %or2456 = or i32 %1621, 1
  store i32 %or2456, ptr %mDbFlags2455, align 4
  br label %if.end2467

if.else2457:                                      ; preds = %sw.bb2439
  %1622 = load ptr, ptr %pOp, align 8
  %p22458 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1622, i32 0, i32 4
  %1623 = load i32, ptr %p22458, align 8
  %cmp2459 = icmp eq i32 %1623, 2
  br i1 %cmp2459, label %if.then2461, label %if.end2466

if.then2461:                                      ; preds = %if.else2457
  %1624 = load ptr, ptr %pOp, align 8
  %p32462 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1624, i32 0, i32 5
  %1625 = load i32, ptr %p32462, align 4
  %conv2463 = trunc i32 %1625 to i8
  %1626 = load ptr, ptr %pDb, align 8
  %pSchema2464 = getelementptr inbounds nuw %struct.Db, ptr %1626, i32 0, i32 4
  %1627 = load ptr, ptr %pSchema2464, align 8
  %file_format2465 = getelementptr inbounds nuw %struct.Schema, ptr %1627, i32 0, i32 7
  store i8 %conv2463, ptr %file_format2465, align 8
  br label %if.end2466

if.end2466:                                       ; preds = %if.then2461, %if.else2457
  br label %if.end2467

if.end2467:                                       ; preds = %if.end2466, %if.then2451
  %1628 = load ptr, ptr %pOp, align 8
  %p12468 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1628, i32 0, i32 3
  %1629 = load i32, ptr %p12468, align 4
  %cmp2469 = icmp eq i32 %1629, 1
  br i1 %cmp2469, label %if.then2471, label %if.end2476

if.then2471:                                      ; preds = %if.end2467
  %1630 = load ptr, ptr %db, align 8
  call void @sqlite3ExpirePreparedStatements(ptr noundef %1630, i32 noundef 0)
  %1631 = load ptr, ptr %p.addr, align 8
  %expired2472 = getelementptr inbounds nuw %struct.Vdbe, ptr %1631, i32 0, i32 35
  %bf.load2473 = load i16, ptr %expired2472, align 1
  %bf.clear2474 = and i16 %bf.load2473, -4
  %bf.set2475 = or i16 %bf.clear2474, 0
  store i16 %bf.set2475, ptr %expired2472, align 1
  br label %if.end2476

if.end2476:                                       ; preds = %if.then2471, %if.end2467
  %1632 = load i32, ptr %rc, align 4
  %tobool2477 = icmp ne i32 %1632, 0
  br i1 %tobool2477, label %if.then2478, label %if.end2479

if.then2478:                                      ; preds = %if.end2476
  br label %abort_due_to_error

if.end2479:                                       ; preds = %if.end2476
  br label %sw.epilog5364

sw.bb2480:                                        ; preds = %for.body
  %1633 = load ptr, ptr %p.addr, align 8
  %apCsr2486 = getelementptr inbounds nuw %struct.Vdbe, ptr %1633, i32 0, i32 21
  %1634 = load ptr, ptr %apCsr2486, align 8
  %1635 = load ptr, ptr %pOp, align 8
  %p12487 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1635, i32 0, i32 3
  %1636 = load i32, ptr %p12487, align 4
  %idxprom2488 = sext i32 %1636 to i64
  %arrayidx2489 = getelementptr inbounds ptr, ptr %1634, i64 %idxprom2488
  %1637 = load ptr, ptr %arrayidx2489, align 8
  store ptr %1637, ptr %pCur, align 8
  %1638 = load ptr, ptr %pCur, align 8
  %tobool2490 = icmp ne ptr %1638, null
  br i1 %tobool2490, label %land.lhs.true2491, label %if.end2496

land.lhs.true2491:                                ; preds = %sw.bb2480
  %1639 = load ptr, ptr %pCur, align 8
  %pgnoRoot = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1639, i32 0, i32 15
  %1640 = load i32, ptr %pgnoRoot, align 4
  %1641 = load ptr, ptr %pOp, align 8
  %p22492 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1641, i32 0, i32 4
  %1642 = load i32, ptr %p22492, align 8
  %cmp2493 = icmp eq i32 %1640, %1642
  br i1 %cmp2493, label %if.then2495, label %if.end2496

if.then2495:                                      ; preds = %land.lhs.true2491
  br label %open_cursor_set_hints

if.end2496:                                       ; preds = %land.lhs.true2491, %sw.bb2480
  br label %sw.bb2497

sw.bb2497:                                        ; preds = %if.end2496, %for.body, %for.body
  %1643 = load ptr, ptr %p.addr, align 8
  %expired2498 = getelementptr inbounds nuw %struct.Vdbe, ptr %1643, i32 0, i32 35
  %bf.load2499 = load i16, ptr %expired2498, align 1
  %bf.clear2500 = and i16 %bf.load2499, 3
  %bf.cast2501 = zext i16 %bf.clear2500 to i32
  %cmp2502 = icmp eq i32 %bf.cast2501, 1
  br i1 %cmp2502, label %if.then2504, label %if.end2505

if.then2504:                                      ; preds = %sw.bb2497
  store i32 516, ptr %rc, align 4
  br label %abort_due_to_error

if.end2505:                                       ; preds = %sw.bb2497
  store i32 0, ptr %nField2481, align 4
  store ptr null, ptr %pKeyInfo2482, align 8
  %1644 = load ptr, ptr %pOp, align 8
  %p22506 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1644, i32 0, i32 4
  %1645 = load i32, ptr %p22506, align 8
  store i32 %1645, ptr %p22483, align 4
  %1646 = load ptr, ptr %pOp, align 8
  %p32507 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1646, i32 0, i32 5
  %1647 = load i32, ptr %p32507, align 4
  store i32 %1647, ptr %iDb2484, align 4
  %1648 = load ptr, ptr %db, align 8
  %aDb2508 = getelementptr inbounds nuw %struct.sqlite3, ptr %1648, i32 0, i32 4
  %1649 = load ptr, ptr %aDb2508, align 8
  %1650 = load i32, ptr %iDb2484, align 4
  %idxprom2509 = sext i32 %1650 to i64
  %arrayidx2510 = getelementptr inbounds %struct.Db, ptr %1649, i64 %idxprom2509
  store ptr %arrayidx2510, ptr %pDb2485, align 8
  %1651 = load ptr, ptr %pDb2485, align 8
  %pBt2511 = getelementptr inbounds nuw %struct.Db, ptr %1651, i32 0, i32 1
  %1652 = load ptr, ptr %pBt2511, align 8
  store ptr %1652, ptr %pX, align 8
  %1653 = load ptr, ptr %pOp, align 8
  %opcode2512 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1653, i32 0, i32 0
  %1654 = load i8, ptr %opcode2512, align 8
  %conv2513 = zext i8 %1654 to i32
  %cmp2514 = icmp eq i32 %conv2513, 98
  br i1 %cmp2514, label %if.then2516, label %if.else2533

if.then2516:                                      ; preds = %if.end2505
  %1655 = load ptr, ptr %pOp, align 8
  %p52517 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1655, i32 0, i32 2
  %1656 = load i16, ptr %p52517, align 2
  %conv2518 = zext i16 %1656 to i32
  %and2519 = and i32 %conv2518, 8
  %or2520 = or i32 4, %and2519
  store i32 %or2520, ptr %wrFlag, align 4
  %1657 = load ptr, ptr %pDb2485, align 8
  %pSchema2521 = getelementptr inbounds nuw %struct.Db, ptr %1657, i32 0, i32 4
  %1658 = load ptr, ptr %pSchema2521, align 8
  %file_format2522 = getelementptr inbounds nuw %struct.Schema, ptr %1658, i32 0, i32 7
  %1659 = load i8, ptr %file_format2522, align 8
  %conv2523 = zext i8 %1659 to i32
  %1660 = load ptr, ptr %p.addr, align 8
  %minWriteFileFormat2524 = getelementptr inbounds nuw %struct.Vdbe, ptr %1660, i32 0, i32 33
  %1661 = load i8, ptr %minWriteFileFormat2524, align 1
  %conv2525 = zext i8 %1661 to i32
  %cmp2526 = icmp slt i32 %conv2523, %conv2525
  br i1 %cmp2526, label %if.then2528, label %if.end2532

if.then2528:                                      ; preds = %if.then2516
  %1662 = load ptr, ptr %pDb2485, align 8
  %pSchema2529 = getelementptr inbounds nuw %struct.Db, ptr %1662, i32 0, i32 4
  %1663 = load ptr, ptr %pSchema2529, align 8
  %file_format2530 = getelementptr inbounds nuw %struct.Schema, ptr %1663, i32 0, i32 7
  %1664 = load i8, ptr %file_format2530, align 8
  %1665 = load ptr, ptr %p.addr, align 8
  %minWriteFileFormat2531 = getelementptr inbounds nuw %struct.Vdbe, ptr %1665, i32 0, i32 33
  store i8 %1664, ptr %minWriteFileFormat2531, align 1
  br label %if.end2532

if.end2532:                                       ; preds = %if.then2528, %if.then2516
  br label %if.end2534

if.else2533:                                      ; preds = %if.end2505
  store i32 0, ptr %wrFlag, align 4
  br label %if.end2534

if.end2534:                                       ; preds = %if.else2533, %if.end2532
  %1666 = load ptr, ptr %pOp, align 8
  %p52535 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1666, i32 0, i32 2
  %1667 = load i16, ptr %p52535, align 2
  %conv2536 = zext i16 %1667 to i32
  %and2537 = and i32 %conv2536, 16
  %tobool2538 = icmp ne i32 %and2537, 0
  br i1 %tobool2538, label %if.then2539, label %if.end2545

if.then2539:                                      ; preds = %if.end2534
  %1668 = load ptr, ptr %aMem, align 8
  %1669 = load i32, ptr %p22483, align 4
  %idxprom2540 = sext i32 %1669 to i64
  %arrayidx2541 = getelementptr inbounds %struct.sqlite3_value, ptr %1668, i64 %idxprom2540
  store ptr %arrayidx2541, ptr %pIn2, align 8
  %1670 = load ptr, ptr %pIn2, align 8
  %call2542 = call i32 @sqlite3VdbeMemIntegerify(ptr noundef %1670)
  %1671 = load ptr, ptr %pIn2, align 8
  %u2543 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1671, i32 0, i32 0
  %1672 = load i64, ptr %u2543, align 8
  %conv2544 = trunc i64 %1672 to i32
  store i32 %conv2544, ptr %p22483, align 4
  br label %if.end2545

if.end2545:                                       ; preds = %if.then2539, %if.end2534
  %1673 = load ptr, ptr %pOp, align 8
  %p4type2546 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1673, i32 0, i32 1
  %1674 = load i8, ptr %p4type2546, align 1
  %conv2547 = sext i8 %1674 to i32
  %cmp2548 = icmp eq i32 %conv2547, -9
  br i1 %cmp2548, label %if.then2550, label %if.else2553

if.then2550:                                      ; preds = %if.end2545
  %1675 = load ptr, ptr %pOp, align 8
  %p42551 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1675, i32 0, i32 6
  %1676 = load ptr, ptr %p42551, align 8
  store ptr %1676, ptr %pKeyInfo2482, align 8
  %1677 = load ptr, ptr %pKeyInfo2482, align 8
  %nAllField = getelementptr inbounds nuw %struct.KeyInfo, ptr %1677, i32 0, i32 3
  %1678 = load i16, ptr %nAllField, align 8
  %conv2552 = zext i16 %1678 to i32
  store i32 %conv2552, ptr %nField2481, align 4
  br label %if.end2561

if.else2553:                                      ; preds = %if.end2545
  %1679 = load ptr, ptr %pOp, align 8
  %p4type2554 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1679, i32 0, i32 1
  %1680 = load i8, ptr %p4type2554, align 1
  %conv2555 = sext i8 %1680 to i32
  %cmp2556 = icmp eq i32 %conv2555, -3
  br i1 %cmp2556, label %if.then2558, label %if.end2560

if.then2558:                                      ; preds = %if.else2553
  %1681 = load ptr, ptr %pOp, align 8
  %p42559 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1681, i32 0, i32 6
  %1682 = load i32, ptr %p42559, align 8
  store i32 %1682, ptr %nField2481, align 4
  br label %if.end2560

if.end2560:                                       ; preds = %if.then2558, %if.else2553
  br label %if.end2561

if.end2561:                                       ; preds = %if.end2560, %if.then2550
  %1683 = load ptr, ptr %p.addr, align 8
  %1684 = load ptr, ptr %pOp, align 8
  %p12562 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1684, i32 0, i32 3
  %1685 = load i32, ptr %p12562, align 4
  %1686 = load i32, ptr %nField2481, align 4
  %1687 = load i32, ptr %iDb2484, align 4
  %call2563 = call ptr @allocateCursor(ptr noundef %1683, i32 noundef %1685, i32 noundef %1686, i32 noundef %1687, i8 noundef zeroext 0)
  store ptr %call2563, ptr %pCur, align 8
  %1688 = load ptr, ptr %pCur, align 8
  %cmp2564 = icmp eq ptr %1688, null
  br i1 %cmp2564, label %if.then2566, label %if.end2567

if.then2566:                                      ; preds = %if.end2561
  br label %no_mem

if.end2567:                                       ; preds = %if.end2561
  %1689 = load ptr, ptr %pCur, align 8
  %nullRow2568 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1689, i32 0, i32 2
  store i8 1, ptr %nullRow2568, align 2
  %1690 = load ptr, ptr %pCur, align 8
  %isOrdered = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1690, i32 0, i32 5
  %bf.load2569 = load i8, ptr %isOrdered, align 1
  %bf.clear2570 = and i8 %bf.load2569, -5
  %bf.set2571 = or i8 %bf.clear2570, 4
  store i8 %bf.set2571, ptr %isOrdered, align 1
  %1691 = load i32, ptr %p22483, align 4
  %1692 = load ptr, ptr %pCur, align 8
  %pgnoRoot2572 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1692, i32 0, i32 15
  store i32 %1691, ptr %pgnoRoot2572, align 4
  %1693 = load ptr, ptr %pX, align 8
  %1694 = load i32, ptr %p22483, align 4
  %1695 = load i32, ptr %wrFlag, align 4
  %1696 = load ptr, ptr %pKeyInfo2482, align 8
  %1697 = load ptr, ptr %pCur, align 8
  %uc2573 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1697, i32 0, i32 12
  %1698 = load ptr, ptr %uc2573, align 8
  %call2574 = call i32 @sqlite3BtreeCursor(ptr noundef %1693, i32 noundef %1694, i32 noundef %1695, ptr noundef %1696, ptr noundef %1698)
  store i32 %call2574, ptr %rc, align 4
  %1699 = load ptr, ptr %pKeyInfo2482, align 8
  %1700 = load ptr, ptr %pCur, align 8
  %pKeyInfo2575 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1700, i32 0, i32 13
  store ptr %1699, ptr %pKeyInfo2575, align 8
  %1701 = load ptr, ptr %pOp, align 8
  %p4type2576 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1701, i32 0, i32 1
  %1702 = load i8, ptr %p4type2576, align 1
  %conv2577 = sext i8 %1702 to i32
  %cmp2578 = icmp ne i32 %conv2577, -9
  %conv2579 = zext i1 %cmp2578 to i32
  %conv2580 = trunc i32 %conv2579 to i8
  %1703 = load ptr, ptr %pCur, align 8
  %isTable = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1703, i32 0, i32 4
  store i8 %conv2580, ptr %isTable, align 4
  br label %open_cursor_set_hints

open_cursor_set_hints:                            ; preds = %if.end2567, %if.then2495
  %1704 = load ptr, ptr %pCur, align 8
  %uc2581 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1704, i32 0, i32 12
  %1705 = load ptr, ptr %uc2581, align 8
  %1706 = load ptr, ptr %pOp, align 8
  %p52582 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1706, i32 0, i32 2
  %1707 = load i16, ptr %p52582, align 2
  %conv2583 = zext i16 %1707 to i32
  %and2584 = and i32 %conv2583, 3
  call void @sqlite3BtreeCursorHintFlags(ptr noundef %1705, i32 noundef %and2584)
  %1708 = load i32, ptr %rc, align 4
  %tobool2585 = icmp ne i32 %1708, 0
  br i1 %tobool2585, label %if.then2586, label %if.end2587

if.then2586:                                      ; preds = %open_cursor_set_hints
  br label %abort_due_to_error

if.end2587:                                       ; preds = %open_cursor_set_hints
  br label %sw.epilog5364

sw.bb2588:                                        ; preds = %for.body
  %1709 = load ptr, ptr %p.addr, align 8
  %apCsr2589 = getelementptr inbounds nuw %struct.Vdbe, ptr %1709, i32 0, i32 21
  %1710 = load ptr, ptr %apCsr2589, align 8
  %1711 = load ptr, ptr %pOp, align 8
  %p22590 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1711, i32 0, i32 4
  %1712 = load i32, ptr %p22590, align 8
  %idxprom2591 = sext i32 %1712 to i64
  %arrayidx2592 = getelementptr inbounds ptr, ptr %1710, i64 %idxprom2591
  %1713 = load ptr, ptr %arrayidx2592, align 8
  store ptr %1713, ptr %pOrig, align 8
  %1714 = load ptr, ptr %p.addr, align 8
  %1715 = load ptr, ptr %pOp, align 8
  %p12593 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1715, i32 0, i32 3
  %1716 = load i32, ptr %p12593, align 4
  %1717 = load ptr, ptr %pOrig, align 8
  %nField2594 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1717, i32 0, i32 16
  %1718 = load i16, ptr %nField2594, align 8
  %conv2595 = sext i16 %1718 to i32
  %call2596 = call ptr @allocateCursor(ptr noundef %1714, i32 noundef %1716, i32 noundef %conv2595, i32 noundef -1, i8 noundef zeroext 0)
  store ptr %call2596, ptr %pCx, align 8
  %1719 = load ptr, ptr %pCx, align 8
  %cmp2597 = icmp eq ptr %1719, null
  br i1 %cmp2597, label %if.then2599, label %if.end2600

if.then2599:                                      ; preds = %sw.bb2588
  br label %no_mem

if.end2600:                                       ; preds = %sw.bb2588
  %1720 = load ptr, ptr %pCx, align 8
  %nullRow2601 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1720, i32 0, i32 2
  store i8 1, ptr %nullRow2601, align 2
  %1721 = load ptr, ptr %pCx, align 8
  %isEphemeral = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1721, i32 0, i32 5
  %bf.load2602 = load i8, ptr %isEphemeral, align 1
  %bf.clear2603 = and i8 %bf.load2602, -2
  %bf.set2604 = or i8 %bf.clear2603, 1
  store i8 %bf.set2604, ptr %isEphemeral, align 1
  %1722 = load ptr, ptr %pOrig, align 8
  %pKeyInfo2605 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1722, i32 0, i32 13
  %1723 = load ptr, ptr %pKeyInfo2605, align 8
  %1724 = load ptr, ptr %pCx, align 8
  %pKeyInfo2606 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1724, i32 0, i32 13
  store ptr %1723, ptr %pKeyInfo2606, align 8
  %1725 = load ptr, ptr %pOrig, align 8
  %isTable2607 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1725, i32 0, i32 4
  %1726 = load i8, ptr %isTable2607, align 4
  %1727 = load ptr, ptr %pCx, align 8
  %isTable2608 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1727, i32 0, i32 4
  store i8 %1726, ptr %isTable2608, align 4
  %1728 = load ptr, ptr %pOrig, align 8
  %pgnoRoot2609 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1728, i32 0, i32 15
  %1729 = load i32, ptr %pgnoRoot2609, align 4
  %1730 = load ptr, ptr %pCx, align 8
  %pgnoRoot2610 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1730, i32 0, i32 15
  store i32 %1729, ptr %pgnoRoot2610, align 4
  %1731 = load ptr, ptr %pOrig, align 8
  %isOrdered2611 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1731, i32 0, i32 5
  %bf.load2612 = load i8, ptr %isOrdered2611, align 1
  %bf.lshr2613 = lshr i8 %bf.load2612, 2
  %bf.clear2614 = and i8 %bf.lshr2613, 1
  %bf.cast2615 = zext i8 %bf.clear2614 to i32
  %1732 = load ptr, ptr %pCx, align 8
  %isOrdered2616 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1732, i32 0, i32 5
  %1733 = trunc i32 %bf.cast2615 to i8
  %bf.load2617 = load i8, ptr %isOrdered2616, align 1
  %bf.value = and i8 %1733, 1
  %bf.shl = shl i8 %bf.value, 2
  %bf.clear2618 = and i8 %bf.load2617, -5
  %bf.set2619 = or i8 %bf.clear2618, %bf.shl
  store i8 %bf.set2619, ptr %isOrdered2616, align 1
  %bf.result.cast = zext i8 %bf.value to i32
  %1734 = load ptr, ptr %pOrig, align 8
  %pBtx = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1734, i32 0, i32 6
  %1735 = load ptr, ptr %pBtx, align 8
  %1736 = load ptr, ptr %pCx, align 8
  %pgnoRoot2620 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1736, i32 0, i32 15
  %1737 = load i32, ptr %pgnoRoot2620, align 4
  %1738 = load ptr, ptr %pCx, align 8
  %pKeyInfo2621 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1738, i32 0, i32 13
  %1739 = load ptr, ptr %pKeyInfo2621, align 8
  %1740 = load ptr, ptr %pCx, align 8
  %uc2622 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1740, i32 0, i32 12
  %1741 = load ptr, ptr %uc2622, align 8
  %call2623 = call i32 @sqlite3BtreeCursor(ptr noundef %1735, i32 noundef %1737, i32 noundef 4, ptr noundef %1739, ptr noundef %1741)
  store i32 %call2623, ptr %rc, align 4
  br label %sw.epilog5364

sw.bb2624:                                        ; preds = %for.body, %for.body
  %1742 = load ptr, ptr %p.addr, align 8
  %apCsr2627 = getelementptr inbounds nuw %struct.Vdbe, ptr %1742, i32 0, i32 21
  %1743 = load ptr, ptr %apCsr2627, align 8
  %1744 = load ptr, ptr %pOp, align 8
  %p12628 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1744, i32 0, i32 3
  %1745 = load i32, ptr %p12628, align 4
  %idxprom2629 = sext i32 %1745 to i64
  %arrayidx2630 = getelementptr inbounds ptr, ptr %1743, i64 %idxprom2629
  %1746 = load ptr, ptr %arrayidx2630, align 8
  store ptr %1746, ptr %pCx2625, align 8
  %1747 = load ptr, ptr %pCx2625, align 8
  %tobool2631 = icmp ne ptr %1747, null
  br i1 %tobool2631, label %if.then2632, label %if.else2641

if.then2632:                                      ; preds = %sw.bb2624
  %1748 = load ptr, ptr %pCx2625, align 8
  %seqCount = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1748, i32 0, i32 7
  store i64 0, ptr %seqCount, align 8
  %1749 = load ptr, ptr %pCx2625, align 8
  %cacheStatus2633 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1749, i32 0, i32 9
  store i32 0, ptr %cacheStatus2633, align 8
  %1750 = load ptr, ptr %pCx2625, align 8
  %pBtx2634 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1750, i32 0, i32 6
  %1751 = load ptr, ptr %pBtx2634, align 8
  %tobool2635 = icmp ne ptr %1751, null
  br i1 %tobool2635, label %if.then2636, label %if.end2640

if.then2636:                                      ; preds = %if.then2632
  %1752 = load ptr, ptr %pCx2625, align 8
  %pBtx2637 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1752, i32 0, i32 6
  %1753 = load ptr, ptr %pBtx2637, align 8
  %1754 = load ptr, ptr %pCx2625, align 8
  %pgnoRoot2638 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1754, i32 0, i32 15
  %1755 = load i32, ptr %pgnoRoot2638, align 4
  %call2639 = call i32 @sqlite3BtreeClearTable(ptr noundef %1753, i32 noundef %1755, ptr noundef null)
  store i32 %call2639, ptr %rc, align 4
  br label %if.end2640

if.end2640:                                       ; preds = %if.then2636, %if.then2632
  br label %if.end2706

if.else2641:                                      ; preds = %sw.bb2624
  %1756 = load ptr, ptr %p.addr, align 8
  %1757 = load ptr, ptr %pOp, align 8
  %p12642 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1757, i32 0, i32 3
  %1758 = load i32, ptr %p12642, align 4
  %1759 = load ptr, ptr %pOp, align 8
  %p22643 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1759, i32 0, i32 4
  %1760 = load i32, ptr %p22643, align 8
  %call2644 = call ptr @allocateCursor(ptr noundef %1756, i32 noundef %1758, i32 noundef %1760, i32 noundef -1, i8 noundef zeroext 0)
  store ptr %call2644, ptr %pCx2625, align 8
  %1761 = load ptr, ptr %pCx2625, align 8
  %cmp2645 = icmp eq ptr %1761, null
  br i1 %cmp2645, label %if.then2647, label %if.end2648

if.then2647:                                      ; preds = %if.else2641
  br label %no_mem

if.end2648:                                       ; preds = %if.else2641
  %1762 = load ptr, ptr %pCx2625, align 8
  %isEphemeral2649 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1762, i32 0, i32 5
  %bf.load2650 = load i8, ptr %isEphemeral2649, align 1
  %bf.clear2651 = and i8 %bf.load2650, -2
  %bf.set2652 = or i8 %bf.clear2651, 1
  store i8 %bf.set2652, ptr %isEphemeral2649, align 1
  %1763 = load ptr, ptr %db, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %1763, i32 0, i32 0
  %1764 = load ptr, ptr %pVfs, align 8
  %1765 = load ptr, ptr %db, align 8
  %1766 = load ptr, ptr %pCx2625, align 8
  %pBtx2653 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1766, i32 0, i32 6
  %1767 = load ptr, ptr %pOp, align 8
  %p52654 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1767, i32 0, i32 2
  %1768 = load i16, ptr %p52654, align 2
  %conv2655 = zext i16 %1768 to i32
  %or2656 = or i32 5, %conv2655
  %call2657 = call i32 @sqlite3BtreeOpen(ptr noundef %1764, ptr noundef null, ptr noundef %1765, ptr noundef %pBtx2653, i32 noundef %or2656, i32 noundef 1054)
  store i32 %call2657, ptr %rc, align 4
  %1769 = load i32, ptr %rc, align 4
  %cmp2658 = icmp eq i32 %1769, 0
  br i1 %cmp2658, label %if.then2660, label %if.end2663

if.then2660:                                      ; preds = %if.end2648
  %1770 = load ptr, ptr %pCx2625, align 8
  %pBtx2661 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1770, i32 0, i32 6
  %1771 = load ptr, ptr %pBtx2661, align 8
  %call2662 = call i32 @sqlite3BtreeBeginTrans(ptr noundef %1771, i32 noundef 1, ptr noundef null)
  store i32 %call2662, ptr %rc, align 4
  br label %if.end2663

if.end2663:                                       ; preds = %if.then2660, %if.end2648
  %1772 = load i32, ptr %rc, align 4
  %cmp2664 = icmp eq i32 %1772, 0
  br i1 %cmp2664, label %if.then2666, label %if.end2694

if.then2666:                                      ; preds = %if.end2663
  %1773 = load ptr, ptr %pOp, align 8
  %p42667 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1773, i32 0, i32 6
  %1774 = load ptr, ptr %p42667, align 8
  store ptr %1774, ptr %pKeyInfo2626, align 8
  %1775 = load ptr, ptr %pCx2625, align 8
  %pKeyInfo2668 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1775, i32 0, i32 13
  store ptr %1774, ptr %pKeyInfo2668, align 8
  %cmp2669 = icmp ne ptr %1774, null
  br i1 %cmp2669, label %if.then2671, label %if.else2687

if.then2671:                                      ; preds = %if.then2666
  %1776 = load ptr, ptr %pCx2625, align 8
  %pBtx2672 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1776, i32 0, i32 6
  %1777 = load ptr, ptr %pBtx2672, align 8
  %1778 = load ptr, ptr %pCx2625, align 8
  %pgnoRoot2673 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1778, i32 0, i32 15
  %1779 = load ptr, ptr %pOp, align 8
  %p52674 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1779, i32 0, i32 2
  %1780 = load i16, ptr %p52674, align 2
  %conv2675 = zext i16 %1780 to i32
  %or2676 = or i32 2, %conv2675
  %call2677 = call i32 @sqlite3BtreeCreateTable(ptr noundef %1777, ptr noundef %pgnoRoot2673, i32 noundef %or2676)
  store i32 %call2677, ptr %rc, align 4
  %1781 = load i32, ptr %rc, align 4
  %cmp2678 = icmp eq i32 %1781, 0
  br i1 %cmp2678, label %if.then2680, label %if.end2685

if.then2680:                                      ; preds = %if.then2671
  %1782 = load ptr, ptr %pCx2625, align 8
  %pBtx2681 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1782, i32 0, i32 6
  %1783 = load ptr, ptr %pBtx2681, align 8
  %1784 = load ptr, ptr %pCx2625, align 8
  %pgnoRoot2682 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1784, i32 0, i32 15
  %1785 = load i32, ptr %pgnoRoot2682, align 4
  %1786 = load ptr, ptr %pKeyInfo2626, align 8
  %1787 = load ptr, ptr %pCx2625, align 8
  %uc2683 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1787, i32 0, i32 12
  %1788 = load ptr, ptr %uc2683, align 8
  %call2684 = call i32 @sqlite3BtreeCursor(ptr noundef %1783, i32 noundef %1785, i32 noundef 4, ptr noundef %1786, ptr noundef %1788)
  store i32 %call2684, ptr %rc, align 4
  br label %if.end2685

if.end2685:                                       ; preds = %if.then2680, %if.then2671
  %1789 = load ptr, ptr %pCx2625, align 8
  %isTable2686 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1789, i32 0, i32 4
  store i8 0, ptr %isTable2686, align 4
  br label %if.end2693

if.else2687:                                      ; preds = %if.then2666
  %1790 = load ptr, ptr %pCx2625, align 8
  %pgnoRoot2688 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1790, i32 0, i32 15
  store i32 1, ptr %pgnoRoot2688, align 4
  %1791 = load ptr, ptr %pCx2625, align 8
  %pBtx2689 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1791, i32 0, i32 6
  %1792 = load ptr, ptr %pBtx2689, align 8
  %1793 = load ptr, ptr %pCx2625, align 8
  %uc2690 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1793, i32 0, i32 12
  %1794 = load ptr, ptr %uc2690, align 8
  %call2691 = call i32 @sqlite3BtreeCursor(ptr noundef %1792, i32 noundef 1, i32 noundef 4, ptr noundef null, ptr noundef %1794)
  store i32 %call2691, ptr %rc, align 4
  %1795 = load ptr, ptr %pCx2625, align 8
  %isTable2692 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1795, i32 0, i32 4
  store i8 1, ptr %isTable2692, align 4
  br label %if.end2693

if.end2693:                                       ; preds = %if.else2687, %if.end2685
  br label %if.end2694

if.end2694:                                       ; preds = %if.end2693, %if.end2663
  %1796 = load ptr, ptr %pOp, align 8
  %p52695 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1796, i32 0, i32 2
  %1797 = load i16, ptr %p52695, align 2
  %conv2696 = zext i16 %1797 to i32
  %cmp2697 = icmp ne i32 %conv2696, 8
  %conv2698 = zext i1 %cmp2697 to i32
  %1798 = load ptr, ptr %pCx2625, align 8
  %isOrdered2699 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1798, i32 0, i32 5
  %1799 = trunc i32 %conv2698 to i8
  %bf.load2700 = load i8, ptr %isOrdered2699, align 1
  %bf.value2701 = and i8 %1799, 1
  %bf.shl2702 = shl i8 %bf.value2701, 2
  %bf.clear2703 = and i8 %bf.load2700, -5
  %bf.set2704 = or i8 %bf.clear2703, %bf.shl2702
  store i8 %bf.set2704, ptr %isOrdered2699, align 1
  %bf.result.cast2705 = zext i8 %bf.value2701 to i32
  br label %if.end2706

if.end2706:                                       ; preds = %if.end2694, %if.end2640
  %1800 = load i32, ptr %rc, align 4
  %tobool2707 = icmp ne i32 %1800, 0
  br i1 %tobool2707, label %if.then2708, label %if.end2709

if.then2708:                                      ; preds = %if.end2706
  br label %abort_due_to_error

if.end2709:                                       ; preds = %if.end2706
  %1801 = load ptr, ptr %pCx2625, align 8
  %nullRow2710 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1801, i32 0, i32 2
  store i8 1, ptr %nullRow2710, align 2
  br label %sw.epilog5364

sw.bb2711:                                        ; preds = %for.body
  %1802 = load ptr, ptr %p.addr, align 8
  %1803 = load ptr, ptr %pOp, align 8
  %p12713 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1803, i32 0, i32 3
  %1804 = load i32, ptr %p12713, align 4
  %1805 = load ptr, ptr %pOp, align 8
  %p22714 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1805, i32 0, i32 4
  %1806 = load i32, ptr %p22714, align 8
  %call2715 = call ptr @allocateCursor(ptr noundef %1802, i32 noundef %1804, i32 noundef %1806, i32 noundef -1, i8 noundef zeroext 1)
  store ptr %call2715, ptr %pCx2712, align 8
  %1807 = load ptr, ptr %pCx2712, align 8
  %cmp2716 = icmp eq ptr %1807, null
  br i1 %cmp2716, label %if.then2718, label %if.end2719

if.then2718:                                      ; preds = %sw.bb2711
  br label %no_mem

if.end2719:                                       ; preds = %sw.bb2711
  %1808 = load ptr, ptr %pOp, align 8
  %p42720 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1808, i32 0, i32 6
  %1809 = load ptr, ptr %p42720, align 8
  %1810 = load ptr, ptr %pCx2712, align 8
  %pKeyInfo2721 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1810, i32 0, i32 13
  store ptr %1809, ptr %pKeyInfo2721, align 8
  %1811 = load ptr, ptr %db, align 8
  %1812 = load ptr, ptr %pOp, align 8
  %p32722 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1812, i32 0, i32 5
  %1813 = load i32, ptr %p32722, align 4
  %1814 = load ptr, ptr %pCx2712, align 8
  %call2723 = call i32 @sqlite3VdbeSorterInit(ptr noundef %1811, i32 noundef %1813, ptr noundef %1814)
  store i32 %call2723, ptr %rc, align 4
  %1815 = load i32, ptr %rc, align 4
  %tobool2724 = icmp ne i32 %1815, 0
  br i1 %tobool2724, label %if.then2725, label %if.end2726

if.then2725:                                      ; preds = %if.end2719
  br label %abort_due_to_error

if.end2726:                                       ; preds = %if.end2719
  br label %sw.epilog5364

sw.bb2727:                                        ; preds = %for.body
  %1816 = load ptr, ptr %p.addr, align 8
  %apCsr2729 = getelementptr inbounds nuw %struct.Vdbe, ptr %1816, i32 0, i32 21
  %1817 = load ptr, ptr %apCsr2729, align 8
  %1818 = load ptr, ptr %pOp, align 8
  %p12730 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1818, i32 0, i32 3
  %1819 = load i32, ptr %p12730, align 4
  %idxprom2731 = sext i32 %1819 to i64
  %arrayidx2732 = getelementptr inbounds ptr, ptr %1817, i64 %idxprom2731
  %1820 = load ptr, ptr %arrayidx2732, align 8
  store ptr %1820, ptr %pC2728, align 8
  %1821 = load ptr, ptr %pC2728, align 8
  %seqCount2733 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1821, i32 0, i32 7
  %1822 = load i64, ptr %seqCount2733, align 8
  %inc2734 = add nsw i64 %1822, 1
  store i64 %inc2734, ptr %seqCount2733, align 8
  %cmp2735 = icmp eq i64 %1822, 0
  br i1 %cmp2735, label %if.then2737, label %if.end2738

if.then2737:                                      ; preds = %sw.bb2727
  br label %jump_to_p2

if.end2738:                                       ; preds = %sw.bb2727
  br label %sw.epilog5364

sw.bb2739:                                        ; preds = %for.body
  %1823 = load ptr, ptr %p.addr, align 8
  %1824 = load ptr, ptr %pOp, align 8
  %p12741 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1824, i32 0, i32 3
  %1825 = load i32, ptr %p12741, align 4
  %1826 = load ptr, ptr %pOp, align 8
  %p32742 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1826, i32 0, i32 5
  %1827 = load i32, ptr %p32742, align 4
  %call2743 = call ptr @allocateCursor(ptr noundef %1823, i32 noundef %1825, i32 noundef %1827, i32 noundef -1, i8 noundef zeroext 3)
  store ptr %call2743, ptr %pCx2740, align 8
  %1828 = load ptr, ptr %pCx2740, align 8
  %cmp2744 = icmp eq ptr %1828, null
  br i1 %cmp2744, label %if.then2746, label %if.end2747

if.then2746:                                      ; preds = %sw.bb2739
  br label %no_mem

if.end2747:                                       ; preds = %sw.bb2739
  %1829 = load ptr, ptr %pCx2740, align 8
  %nullRow2748 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1829, i32 0, i32 2
  store i8 1, ptr %nullRow2748, align 2
  %1830 = load ptr, ptr %pOp, align 8
  %p22749 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1830, i32 0, i32 4
  %1831 = load i32, ptr %p22749, align 8
  %1832 = load ptr, ptr %pCx2740, align 8
  %seekResult2750 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1832, i32 0, i32 10
  store i32 %1831, ptr %seekResult2750, align 4
  %1833 = load ptr, ptr %pCx2740, align 8
  %isTable2751 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1833, i32 0, i32 4
  store i8 1, ptr %isTable2751, align 4
  %call2752 = call ptr @sqlite3BtreeFakeValidCursor()
  %1834 = load ptr, ptr %pCx2740, align 8
  %uc2753 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1834, i32 0, i32 12
  store ptr %call2752, ptr %uc2753, align 8
  br label %sw.epilog5364

sw.bb2754:                                        ; preds = %for.body
  %1835 = load ptr, ptr %p.addr, align 8
  %1836 = load ptr, ptr %p.addr, align 8
  %apCsr2755 = getelementptr inbounds nuw %struct.Vdbe, ptr %1836, i32 0, i32 21
  %1837 = load ptr, ptr %apCsr2755, align 8
  %1838 = load ptr, ptr %pOp, align 8
  %p12756 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1838, i32 0, i32 3
  %1839 = load i32, ptr %p12756, align 4
  %idxprom2757 = sext i32 %1839 to i64
  %arrayidx2758 = getelementptr inbounds ptr, ptr %1837, i64 %idxprom2757
  %1840 = load ptr, ptr %arrayidx2758, align 8
  call void @sqlite3VdbeFreeCursor(ptr noundef %1835, ptr noundef %1840)
  %1841 = load ptr, ptr %p.addr, align 8
  %apCsr2759 = getelementptr inbounds nuw %struct.Vdbe, ptr %1841, i32 0, i32 21
  %1842 = load ptr, ptr %apCsr2759, align 8
  %1843 = load ptr, ptr %pOp, align 8
  %p12760 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1843, i32 0, i32 3
  %1844 = load i32, ptr %p12760, align 4
  %idxprom2761 = sext i32 %1844 to i64
  %arrayidx2762 = getelementptr inbounds ptr, ptr %1842, i64 %idxprom2761
  store ptr null, ptr %arrayidx2762, align 8
  br label %sw.epilog5364

sw.bb2763:                                        ; preds = %for.body, %for.body, %for.body, %for.body
  %1845 = load ptr, ptr %p.addr, align 8
  %apCsr2767 = getelementptr inbounds nuw %struct.Vdbe, ptr %1845, i32 0, i32 21
  %1846 = load ptr, ptr %apCsr2767, align 8
  %1847 = load ptr, ptr %pOp, align 8
  %p12768 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1847, i32 0, i32 3
  %1848 = load i32, ptr %p12768, align 4
  %idxprom2769 = sext i32 %1848 to i64
  %arrayidx2770 = getelementptr inbounds ptr, ptr %1846, i64 %idxprom2769
  %1849 = load ptr, ptr %arrayidx2770, align 8
  store ptr %1849, ptr %pC2765, align 8
  %1850 = load ptr, ptr %pOp, align 8
  %opcode2771 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1850, i32 0, i32 0
  %1851 = load i8, ptr %opcode2771, align 8
  %conv2772 = zext i8 %1851 to i32
  store i32 %conv2772, ptr %oc, align 4
  store i32 0, ptr %eqOnly, align 4
  %1852 = load ptr, ptr %pC2765, align 8
  %nullRow2773 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1852, i32 0, i32 2
  store i8 0, ptr %nullRow2773, align 2
  %1853 = load ptr, ptr %pC2765, align 8
  %deferredMoveto = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1853, i32 0, i32 3
  store i8 0, ptr %deferredMoveto, align 1
  %1854 = load ptr, ptr %pC2765, align 8
  %cacheStatus2774 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1854, i32 0, i32 9
  store i32 0, ptr %cacheStatus2774, align 8
  %1855 = load ptr, ptr %pC2765, align 8
  %isTable2775 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1855, i32 0, i32 4
  %1856 = load i8, ptr %isTable2775, align 4
  %tobool2776 = icmp ne i8 %1856, 0
  br i1 %tobool2776, label %if.then2777, label %if.else2850

if.then2777:                                      ; preds = %sw.bb2763
  %1857 = load ptr, ptr %aMem, align 8
  %1858 = load ptr, ptr %pOp, align 8
  %p32779 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1858, i32 0, i32 5
  %1859 = load i32, ptr %p32779, align 4
  %idxprom2780 = sext i32 %1859 to i64
  %arrayidx2781 = getelementptr inbounds %struct.sqlite3_value, ptr %1857, i64 %idxprom2780
  store ptr %arrayidx2781, ptr %pIn3, align 8
  %1860 = load ptr, ptr %pIn3, align 8
  %flags2782 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1860, i32 0, i32 1
  %1861 = load i16, ptr %flags2782, align 8
  store i16 %1861, ptr %flags32778, align 2
  %1862 = load i16, ptr %flags32778, align 2
  %conv2783 = zext i16 %1862 to i32
  %and2784 = and i32 %conv2783, 46
  %cmp2785 = icmp eq i32 %and2784, 2
  br i1 %cmp2785, label %if.then2787, label %if.end2788

if.then2787:                                      ; preds = %if.then2777
  %1863 = load ptr, ptr %pIn3, align 8
  call void @applyNumericAffinity(ptr noundef %1863, i32 noundef 0)
  br label %if.end2788

if.end2788:                                       ; preds = %if.then2787, %if.then2777
  %1864 = load ptr, ptr %pIn3, align 8
  %call2789 = call i64 @sqlite3VdbeIntValue(ptr noundef %1864)
  store i64 %call2789, ptr %iKey, align 8
  %1865 = load ptr, ptr %pIn3, align 8
  %flags2790 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1865, i32 0, i32 1
  %1866 = load i16, ptr %flags2790, align 8
  store i16 %1866, ptr %newType, align 2
  %1867 = load i16, ptr %flags32778, align 2
  %1868 = load ptr, ptr %pIn3, align 8
  %flags2791 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1868, i32 0, i32 1
  store i16 %1867, ptr %flags2791, align 8
  %1869 = load i16, ptr %newType, align 2
  %conv2792 = zext i16 %1869 to i32
  %and2793 = and i32 %conv2792, 36
  %cmp2794 = icmp eq i32 %and2793, 0
  br i1 %cmp2794, label %if.then2796, label %if.end2843

if.then2796:                                      ; preds = %if.end2788
  %1870 = load i16, ptr %newType, align 2
  %conv2797 = zext i16 %1870 to i32
  %and2798 = and i32 %conv2797, 8
  %cmp2799 = icmp eq i32 %and2798, 0
  br i1 %cmp2799, label %if.then2801, label %if.else2816

if.then2801:                                      ; preds = %if.then2796
  %1871 = load i16, ptr %newType, align 2
  %conv2802 = zext i16 %1871 to i32
  %and2803 = and i32 %conv2802, 1
  %tobool2804 = icmp ne i32 %and2803, 0
  br i1 %tobool2804, label %if.then2808, label %lor.lhs.false2805

lor.lhs.false2805:                                ; preds = %if.then2801
  %1872 = load i32, ptr %oc, align 4
  %cmp2806 = icmp sge i32 %1872, 24
  br i1 %cmp2806, label %if.then2808, label %if.else2809

if.then2808:                                      ; preds = %lor.lhs.false2805, %if.then2801
  br label %jump_to_p2

if.else2809:                                      ; preds = %lor.lhs.false2805
  %1873 = load ptr, ptr %pC2765, align 8
  %uc2810 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1873, i32 0, i32 12
  %1874 = load ptr, ptr %uc2810, align 8
  %call2811 = call i32 @sqlite3BtreeLast(ptr noundef %1874, ptr noundef %res2764)
  store i32 %call2811, ptr %rc, align 4
  %1875 = load i32, ptr %rc, align 4
  %cmp2812 = icmp ne i32 %1875, 0
  br i1 %cmp2812, label %if.then2814, label %if.end2815

if.then2814:                                      ; preds = %if.else2809
  br label %abort_due_to_error

if.end2815:                                       ; preds = %if.else2809
  br label %seek_not_found

if.else2816:                                      ; preds = %if.then2796
  %1876 = load ptr, ptr %pIn3, align 8
  %u2817 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1876, i32 0, i32 0
  %1877 = load double, ptr %u2817, align 8
  %1878 = load i64, ptr %iKey, align 8
  %conv2818 = sitofp i64 %1878 to double
  %cmp2819 = fcmp olt double %1877, %conv2818
  br i1 %cmp2819, label %if.then2821, label %if.else2828

if.then2821:                                      ; preds = %if.else2816
  %1879 = load i32, ptr %oc, align 4
  %and2822 = and i32 %1879, 1
  %cmp2823 = icmp eq i32 %and2822, 1
  br i1 %cmp2823, label %if.then2825, label %if.end2827

if.then2825:                                      ; preds = %if.then2821
  %1880 = load i32, ptr %oc, align 4
  %dec2826 = add nsw i32 %1880, -1
  store i32 %dec2826, ptr %oc, align 4
  br label %if.end2827

if.end2827:                                       ; preds = %if.then2825, %if.then2821
  br label %if.end2841

if.else2828:                                      ; preds = %if.else2816
  %1881 = load ptr, ptr %pIn3, align 8
  %u2829 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1881, i32 0, i32 0
  %1882 = load double, ptr %u2829, align 8
  %1883 = load i64, ptr %iKey, align 8
  %conv2830 = sitofp i64 %1883 to double
  %cmp2831 = fcmp ogt double %1882, %conv2830
  br i1 %cmp2831, label %if.then2833, label %if.end2840

if.then2833:                                      ; preds = %if.else2828
  %1884 = load i32, ptr %oc, align 4
  %and2834 = and i32 %1884, 1
  %cmp2835 = icmp eq i32 %and2834, 0
  br i1 %cmp2835, label %if.then2837, label %if.end2839

if.then2837:                                      ; preds = %if.then2833
  %1885 = load i32, ptr %oc, align 4
  %inc2838 = add nsw i32 %1885, 1
  store i32 %inc2838, ptr %oc, align 4
  br label %if.end2839

if.end2839:                                       ; preds = %if.then2837, %if.then2833
  br label %if.end2840

if.end2840:                                       ; preds = %if.end2839, %if.else2828
  br label %if.end2841

if.end2841:                                       ; preds = %if.end2840, %if.end2827
  br label %if.end2842

if.end2842:                                       ; preds = %if.end2841
  br label %if.end2843

if.end2843:                                       ; preds = %if.end2842, %if.end2788
  %1886 = load ptr, ptr %pC2765, align 8
  %uc2844 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1886, i32 0, i32 12
  %1887 = load ptr, ptr %uc2844, align 8
  %1888 = load i64, ptr %iKey, align 8
  %call2845 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %1887, ptr noundef null, i64 noundef %1888, i32 noundef 0, ptr noundef %res2764)
  store i32 %call2845, ptr %rc, align 4
  %1889 = load i64, ptr %iKey, align 8
  %1890 = load ptr, ptr %pC2765, align 8
  %movetoTarget = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1890, i32 0, i32 18
  store i64 %1889, ptr %movetoTarget, align 8
  %1891 = load i32, ptr %rc, align 4
  %cmp2846 = icmp ne i32 %1891, 0
  br i1 %cmp2846, label %if.then2848, label %if.end2849

if.then2848:                                      ; preds = %if.end2843
  br label %abort_due_to_error

if.end2849:                                       ; preds = %if.end2843
  br label %if.end2884

if.else2850:                                      ; preds = %sw.bb2763
  %1892 = load ptr, ptr %pC2765, align 8
  %uc2851 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1892, i32 0, i32 12
  %1893 = load ptr, ptr %uc2851, align 8
  %call2852 = call i32 @sqlite3BtreeCursorHasHint(ptr noundef %1893, i32 noundef 2)
  %tobool2853 = icmp ne i32 %call2852, 0
  br i1 %tobool2853, label %if.then2854, label %if.end2855

if.then2854:                                      ; preds = %if.else2850
  store i32 1, ptr %eqOnly, align 4
  br label %if.end2855

if.end2855:                                       ; preds = %if.then2854, %if.else2850
  %1894 = load ptr, ptr %pOp, align 8
  %p42856 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1894, i32 0, i32 6
  %1895 = load i32, ptr %p42856, align 8
  store i32 %1895, ptr %nField2766, align 4
  %1896 = load ptr, ptr %pC2765, align 8
  %pKeyInfo2857 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1896, i32 0, i32 13
  %1897 = load ptr, ptr %pKeyInfo2857, align 8
  %pKeyInfo2858 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 0
  store ptr %1897, ptr %pKeyInfo2858, align 8
  %1898 = load i32, ptr %nField2766, align 4
  %conv2859 = trunc i32 %1898 to i16
  %nField2860 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 2
  store i16 %conv2859, ptr %nField2860, align 8
  %1899 = load i32, ptr %oc, align 4
  %sub2861 = sub nsw i32 %1899, 22
  %and2862 = and i32 1, %sub2861
  %tobool2863 = icmp ne i32 %and2862, 0
  %1900 = zext i1 %tobool2863 to i64
  %cond2864 = select i1 %tobool2863, i32 -1, i32 1
  %conv2865 = trunc i32 %cond2864 to i8
  %default_rc = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 3
  store i8 %conv2865, ptr %default_rc, align 2
  %1901 = load ptr, ptr %aMem, align 8
  %1902 = load ptr, ptr %pOp, align 8
  %p32866 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1902, i32 0, i32 5
  %1903 = load i32, ptr %p32866, align 4
  %idxprom2867 = sext i32 %1903 to i64
  %arrayidx2868 = getelementptr inbounds %struct.sqlite3_value, ptr %1901, i64 %idxprom2867
  %aMem2869 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 1
  store ptr %arrayidx2868, ptr %aMem2869, align 8
  %eqSeen = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 7
  store i8 0, ptr %eqSeen, align 2
  %1904 = load ptr, ptr %pC2765, align 8
  %uc2870 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1904, i32 0, i32 12
  %1905 = load ptr, ptr %uc2870, align 8
  %call2871 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %1905, ptr noundef %r, i64 noundef 0, i32 noundef 0, ptr noundef %res2764)
  store i32 %call2871, ptr %rc, align 4
  %1906 = load i32, ptr %rc, align 4
  %cmp2872 = icmp ne i32 %1906, 0
  br i1 %cmp2872, label %if.then2874, label %if.end2875

if.then2874:                                      ; preds = %if.end2855
  br label %abort_due_to_error

if.end2875:                                       ; preds = %if.end2855
  %1907 = load i32, ptr %eqOnly, align 4
  %tobool2876 = icmp ne i32 %1907, 0
  br i1 %tobool2876, label %land.lhs.true2877, label %if.end2883

land.lhs.true2877:                                ; preds = %if.end2875
  %eqSeen2878 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r, i32 0, i32 7
  %1908 = load i8, ptr %eqSeen2878, align 2
  %conv2879 = zext i8 %1908 to i32
  %cmp2880 = icmp eq i32 %conv2879, 0
  br i1 %cmp2880, label %if.then2882, label %if.end2883

if.then2882:                                      ; preds = %land.lhs.true2877
  br label %seek_not_found

if.end2883:                                       ; preds = %land.lhs.true2877, %if.end2875
  br label %if.end2884

if.end2884:                                       ; preds = %if.end2883, %if.end2849
  %1909 = load i32, ptr %oc, align 4
  %cmp2885 = icmp sge i32 %1909, 24
  br i1 %cmp2885, label %if.then2887, label %if.else2910

if.then2887:                                      ; preds = %if.end2884
  %1910 = load i32, ptr %res2764, align 4
  %cmp2888 = icmp slt i32 %1910, 0
  br i1 %cmp2888, label %if.then2896, label %lor.lhs.false2890

lor.lhs.false2890:                                ; preds = %if.then2887
  %1911 = load i32, ptr %res2764, align 4
  %cmp2891 = icmp eq i32 %1911, 0
  br i1 %cmp2891, label %land.lhs.true2893, label %if.else2908

land.lhs.true2893:                                ; preds = %lor.lhs.false2890
  %1912 = load i32, ptr %oc, align 4
  %cmp2894 = icmp eq i32 %1912, 25
  br i1 %cmp2894, label %if.then2896, label %if.else2908

if.then2896:                                      ; preds = %land.lhs.true2893, %if.then2887
  store i32 0, ptr %res2764, align 4
  %1913 = load ptr, ptr %pC2765, align 8
  %uc2897 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1913, i32 0, i32 12
  %1914 = load ptr, ptr %uc2897, align 8
  %call2898 = call i32 @sqlite3BtreeNext(ptr noundef %1914, i32 noundef 0)
  store i32 %call2898, ptr %rc, align 4
  %1915 = load i32, ptr %rc, align 4
  %cmp2899 = icmp ne i32 %1915, 0
  br i1 %cmp2899, label %if.then2901, label %if.end2907

if.then2901:                                      ; preds = %if.then2896
  %1916 = load i32, ptr %rc, align 4
  %cmp2902 = icmp eq i32 %1916, 101
  br i1 %cmp2902, label %if.then2904, label %if.else2905

if.then2904:                                      ; preds = %if.then2901
  store i32 0, ptr %rc, align 4
  store i32 1, ptr %res2764, align 4
  br label %if.end2906

if.else2905:                                      ; preds = %if.then2901
  br label %abort_due_to_error

if.end2906:                                       ; preds = %if.then2904
  br label %if.end2907

if.end2907:                                       ; preds = %if.end2906, %if.then2896
  br label %if.end2909

if.else2908:                                      ; preds = %land.lhs.true2893, %lor.lhs.false2890
  store i32 0, ptr %res2764, align 4
  br label %if.end2909

if.end2909:                                       ; preds = %if.else2908, %if.end2907
  br label %if.end2935

if.else2910:                                      ; preds = %if.end2884
  %1917 = load i32, ptr %res2764, align 4
  %cmp2911 = icmp sgt i32 %1917, 0
  br i1 %cmp2911, label %if.then2919, label %lor.lhs.false2913

lor.lhs.false2913:                                ; preds = %if.else2910
  %1918 = load i32, ptr %res2764, align 4
  %cmp2914 = icmp eq i32 %1918, 0
  br i1 %cmp2914, label %land.lhs.true2916, label %if.else2931

land.lhs.true2916:                                ; preds = %lor.lhs.false2913
  %1919 = load i32, ptr %oc, align 4
  %cmp2917 = icmp eq i32 %1919, 22
  br i1 %cmp2917, label %if.then2919, label %if.else2931

if.then2919:                                      ; preds = %land.lhs.true2916, %if.else2910
  store i32 0, ptr %res2764, align 4
  %1920 = load ptr, ptr %pC2765, align 8
  %uc2920 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1920, i32 0, i32 12
  %1921 = load ptr, ptr %uc2920, align 8
  %call2921 = call i32 @sqlite3BtreePrevious(ptr noundef %1921, i32 noundef 0)
  store i32 %call2921, ptr %rc, align 4
  %1922 = load i32, ptr %rc, align 4
  %cmp2922 = icmp ne i32 %1922, 0
  br i1 %cmp2922, label %if.then2924, label %if.end2930

if.then2924:                                      ; preds = %if.then2919
  %1923 = load i32, ptr %rc, align 4
  %cmp2925 = icmp eq i32 %1923, 101
  br i1 %cmp2925, label %if.then2927, label %if.else2928

if.then2927:                                      ; preds = %if.then2924
  store i32 0, ptr %rc, align 4
  store i32 1, ptr %res2764, align 4
  br label %if.end2929

if.else2928:                                      ; preds = %if.then2924
  br label %abort_due_to_error

if.end2929:                                       ; preds = %if.then2927
  br label %if.end2930

if.end2930:                                       ; preds = %if.end2929, %if.then2919
  br label %if.end2934

if.else2931:                                      ; preds = %land.lhs.true2916, %lor.lhs.false2913
  %1924 = load ptr, ptr %pC2765, align 8
  %uc2932 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1924, i32 0, i32 12
  %1925 = load ptr, ptr %uc2932, align 8
  %call2933 = call i32 @sqlite3BtreeEof(ptr noundef %1925)
  store i32 %call2933, ptr %res2764, align 4
  br label %if.end2934

if.end2934:                                       ; preds = %if.else2931, %if.end2930
  br label %if.end2935

if.end2935:                                       ; preds = %if.end2934, %if.end2909
  br label %seek_not_found

seek_not_found:                                   ; preds = %if.end2935, %if.then2882, %if.end2815
  %1926 = load i32, ptr %res2764, align 4
  %tobool2936 = icmp ne i32 %1926, 0
  br i1 %tobool2936, label %if.then2937, label %if.else2938

if.then2937:                                      ; preds = %seek_not_found
  br label %jump_to_p2

if.else2938:                                      ; preds = %seek_not_found
  %1927 = load i32, ptr %eqOnly, align 4
  %tobool2939 = icmp ne i32 %1927, 0
  br i1 %tobool2939, label %if.then2940, label %if.end2942

if.then2940:                                      ; preds = %if.else2938
  %1928 = load ptr, ptr %pOp, align 8
  %incdec.ptr2941 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1928, i32 1
  store ptr %incdec.ptr2941, ptr %pOp, align 8
  br label %if.end2942

if.end2942:                                       ; preds = %if.then2940, %if.else2938
  br label %if.end2943

if.end2943:                                       ; preds = %if.end2942
  br label %sw.epilog5364

sw.bb2944:                                        ; preds = %for.body
  %1929 = load ptr, ptr %p.addr, align 8
  %apCsr2946 = getelementptr inbounds nuw %struct.Vdbe, ptr %1929, i32 0, i32 21
  %1930 = load ptr, ptr %apCsr2946, align 8
  %1931 = load ptr, ptr %pOp, align 8
  %p12947 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1931, i32 0, i32 3
  %1932 = load i32, ptr %p12947, align 4
  %idxprom2948 = sext i32 %1932 to i64
  %arrayidx2949 = getelementptr inbounds ptr, ptr %1930, i64 %idxprom2948
  %1933 = load ptr, ptr %arrayidx2949, align 8
  store ptr %1933, ptr %pC2945, align 8
  %1934 = load ptr, ptr %pOp, align 8
  %p22950 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1934, i32 0, i32 4
  %1935 = load i32, ptr %p22950, align 8
  %and2951 = and i32 %1935, 1
  %1936 = load ptr, ptr %pC2945, align 8
  %seekHit = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1936, i32 0, i32 5
  %1937 = trunc i32 %and2951 to i8
  %bf.load2952 = load i8, ptr %seekHit, align 1
  %bf.value2953 = and i8 %1937, 1
  %bf.shl2954 = shl i8 %bf.value2953, 3
  %bf.clear2955 = and i8 %bf.load2952, -9
  %bf.set2956 = or i8 %bf.clear2955, %bf.shl2954
  store i8 %bf.set2956, ptr %seekHit, align 1
  %bf.result.cast2957 = zext i8 %bf.value2953 to i32
  br label %sw.epilog5364

sw.bb2958:                                        ; preds = %for.body
  %1938 = load ptr, ptr %p.addr, align 8
  %apCsr2960 = getelementptr inbounds nuw %struct.Vdbe, ptr %1938, i32 0, i32 21
  %1939 = load ptr, ptr %apCsr2960, align 8
  %1940 = load ptr, ptr %pOp, align 8
  %p12961 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1940, i32 0, i32 3
  %1941 = load i32, ptr %p12961, align 4
  %idxprom2962 = sext i32 %1941 to i64
  %arrayidx2963 = getelementptr inbounds ptr, ptr %1939, i64 %idxprom2962
  %1942 = load ptr, ptr %arrayidx2963, align 8
  store ptr %1942, ptr %pC2959, align 8
  %1943 = load ptr, ptr %pC2959, align 8
  %seekHit2964 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1943, i32 0, i32 5
  %bf.load2965 = load i8, ptr %seekHit2964, align 1
  %bf.lshr2966 = lshr i8 %bf.load2965, 3
  %bf.clear2967 = and i8 %bf.lshr2966, 1
  %bf.cast2968 = zext i8 %bf.clear2967 to i32
  %tobool2969 = icmp ne i32 %bf.cast2968, 0
  br i1 %tobool2969, label %if.then2970, label %if.end2971

if.then2970:                                      ; preds = %sw.bb2958
  br label %sw.epilog5364

if.end2971:                                       ; preds = %sw.bb2958
  br label %sw.bb2972

sw.bb2972:                                        ; preds = %if.end2971, %for.body, %for.body, %for.body
  %1944 = load ptr, ptr %p.addr, align 8
  %apCsr2977 = getelementptr inbounds nuw %struct.Vdbe, ptr %1944, i32 0, i32 21
  %1945 = load ptr, ptr %apCsr2977, align 8
  %1946 = load ptr, ptr %pOp, align 8
  %p12978 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1946, i32 0, i32 3
  %1947 = load i32, ptr %p12978, align 4
  %idxprom2979 = sext i32 %1947 to i64
  %arrayidx2980 = getelementptr inbounds ptr, ptr %1945, i64 %idxprom2979
  %1948 = load ptr, ptr %arrayidx2980, align 8
  store ptr %1948, ptr %pC2974, align 8
  %1949 = load ptr, ptr %aMem, align 8
  %1950 = load ptr, ptr %pOp, align 8
  %p32981 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1950, i32 0, i32 5
  %1951 = load i32, ptr %p32981, align 4
  %idxprom2982 = sext i32 %1951 to i64
  %arrayidx2983 = getelementptr inbounds %struct.sqlite3_value, ptr %1949, i64 %idxprom2982
  store ptr %arrayidx2983, ptr %pIn3, align 8
  %1952 = load ptr, ptr %pOp, align 8
  %p42984 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1952, i32 0, i32 6
  %1953 = load i32, ptr %p42984, align 8
  %cmp2985 = icmp sgt i32 %1953, 0
  br i1 %cmp2985, label %if.then2987, label %if.else2994

if.then2987:                                      ; preds = %sw.bb2972
  %1954 = load ptr, ptr %pC2974, align 8
  %pKeyInfo2988 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1954, i32 0, i32 13
  %1955 = load ptr, ptr %pKeyInfo2988, align 8
  %pKeyInfo2989 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r2976, i32 0, i32 0
  store ptr %1955, ptr %pKeyInfo2989, align 8
  %1956 = load ptr, ptr %pOp, align 8
  %p42990 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1956, i32 0, i32 6
  %1957 = load i32, ptr %p42990, align 8
  %conv2991 = trunc i32 %1957 to i16
  %nField2992 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r2976, i32 0, i32 2
  store i16 %conv2991, ptr %nField2992, align 8
  %1958 = load ptr, ptr %pIn3, align 8
  %aMem2993 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r2976, i32 0, i32 1
  store ptr %1958, ptr %aMem2993, align 8
  store ptr %r2976, ptr %pIdxKey, align 8
  store ptr null, ptr %pFree, align 8
  br label %if.end3016

if.else2994:                                      ; preds = %sw.bb2972
  %1959 = load ptr, ptr %pIn3, align 8
  %flags2995 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1959, i32 0, i32 1
  %1960 = load i16, ptr %flags2995, align 8
  %conv2996 = zext i16 %1960 to i32
  %and2997 = and i32 %conv2996, 16384
  %tobool2998 = icmp ne i32 %and2997, 0
  br i1 %tobool2998, label %cond.true2999, label %cond.false3001

cond.true2999:                                    ; preds = %if.else2994
  %1961 = load ptr, ptr %pIn3, align 8
  %call3000 = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %1961)
  br label %cond.end3002

cond.false3001:                                   ; preds = %if.else2994
  br label %cond.end3002

cond.end3002:                                     ; preds = %cond.false3001, %cond.true2999
  %cond3003 = phi i32 [ %call3000, %cond.true2999 ], [ 0, %cond.false3001 ]
  store i32 %cond3003, ptr %rc, align 4
  %1962 = load i32, ptr %rc, align 4
  %tobool3004 = icmp ne i32 %1962, 0
  br i1 %tobool3004, label %if.then3005, label %if.end3006

if.then3005:                                      ; preds = %cond.end3002
  br label %no_mem

if.end3006:                                       ; preds = %cond.end3002
  %1963 = load ptr, ptr %pC2974, align 8
  %pKeyInfo3007 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1963, i32 0, i32 13
  %1964 = load ptr, ptr %pKeyInfo3007, align 8
  %call3008 = call ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef %1964)
  store ptr %call3008, ptr %pIdxKey, align 8
  store ptr %call3008, ptr %pFree, align 8
  %1965 = load ptr, ptr %pIdxKey, align 8
  %cmp3009 = icmp eq ptr %1965, null
  br i1 %cmp3009, label %if.then3011, label %if.end3012

if.then3011:                                      ; preds = %if.end3006
  br label %no_mem

if.end3012:                                       ; preds = %if.end3006
  %1966 = load ptr, ptr %pC2974, align 8
  %pKeyInfo3013 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1966, i32 0, i32 13
  %1967 = load ptr, ptr %pKeyInfo3013, align 8
  %1968 = load ptr, ptr %pIn3, align 8
  %n3014 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1968, i32 0, i32 4
  %1969 = load i32, ptr %n3014, align 4
  %1970 = load ptr, ptr %pIn3, align 8
  %z3015 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1970, i32 0, i32 5
  %1971 = load ptr, ptr %z3015, align 8
  %1972 = load ptr, ptr %pIdxKey, align 8
  call void @sqlite3VdbeRecordUnpack(ptr noundef %1967, i32 noundef %1969, ptr noundef %1971, ptr noundef %1972)
  br label %if.end3016

if.end3016:                                       ; preds = %if.end3012, %if.then2987
  %1973 = load ptr, ptr %pIdxKey, align 8
  %default_rc3017 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %1973, i32 0, i32 3
  store i8 0, ptr %default_rc3017, align 2
  store i32 0, ptr %takeJump, align 4
  %1974 = load ptr, ptr %pOp, align 8
  %opcode3018 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1974, i32 0, i32 0
  %1975 = load i8, ptr %opcode3018, align 8
  %conv3019 = zext i8 %1975 to i32
  %cmp3020 = icmp eq i32 %conv3019, 27
  br i1 %cmp3020, label %if.then3022, label %if.end3041

if.then3022:                                      ; preds = %if.end3016
  store i32 0, ptr %ii2973, align 4
  br label %for.cond3023

for.cond3023:                                     ; preds = %for.inc3038, %if.then3022
  %1976 = load i32, ptr %ii2973, align 4
  %1977 = load ptr, ptr %pIdxKey, align 8
  %nField3024 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %1977, i32 0, i32 2
  %1978 = load i16, ptr %nField3024, align 8
  %conv3025 = zext i16 %1978 to i32
  %cmp3026 = icmp slt i32 %1976, %conv3025
  br i1 %cmp3026, label %for.body3028, label %for.end3040

for.body3028:                                     ; preds = %for.cond3023
  %1979 = load ptr, ptr %pIdxKey, align 8
  %aMem3029 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %1979, i32 0, i32 1
  %1980 = load ptr, ptr %aMem3029, align 8
  %1981 = load i32, ptr %ii2973, align 4
  %idxprom3030 = sext i32 %1981 to i64
  %arrayidx3031 = getelementptr inbounds %struct.sqlite3_value, ptr %1980, i64 %idxprom3030
  %flags3032 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx3031, i32 0, i32 1
  %1982 = load i16, ptr %flags3032, align 8
  %conv3033 = zext i16 %1982 to i32
  %and3034 = and i32 %conv3033, 1
  %tobool3035 = icmp ne i32 %and3034, 0
  br i1 %tobool3035, label %if.then3036, label %if.end3037

if.then3036:                                      ; preds = %for.body3028
  store i32 1, ptr %takeJump, align 4
  br label %for.end3040

if.end3037:                                       ; preds = %for.body3028
  br label %for.inc3038

for.inc3038:                                      ; preds = %if.end3037
  %1983 = load i32, ptr %ii2973, align 4
  %inc3039 = add nsw i32 %1983, 1
  store i32 %inc3039, ptr %ii2973, align 4
  br label %for.cond3023, !llvm.loop !19

for.end3040:                                      ; preds = %if.then3036, %for.cond3023
  br label %if.end3041

if.end3041:                                       ; preds = %for.end3040, %if.end3016
  %1984 = load ptr, ptr %pC2974, align 8
  %uc3042 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1984, i32 0, i32 12
  %1985 = load ptr, ptr %uc3042, align 8
  %1986 = load ptr, ptr %pIdxKey, align 8
  %call3043 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %1985, ptr noundef %1986, i64 noundef 0, i32 noundef 0, ptr noundef %res2975)
  store i32 %call3043, ptr %rc, align 4
  %1987 = load ptr, ptr %pFree, align 8
  %tobool3044 = icmp ne ptr %1987, null
  br i1 %tobool3044, label %if.then3045, label %if.end3046

if.then3045:                                      ; preds = %if.end3041
  %1988 = load ptr, ptr %db, align 8
  %1989 = load ptr, ptr %pFree, align 8
  call void @sqlite3DbFreeNN(ptr noundef %1988, ptr noundef %1989)
  br label %if.end3046

if.end3046:                                       ; preds = %if.then3045, %if.end3041
  %1990 = load i32, ptr %rc, align 4
  %cmp3047 = icmp ne i32 %1990, 0
  br i1 %cmp3047, label %if.then3049, label %if.end3050

if.then3049:                                      ; preds = %if.end3046
  br label %abort_due_to_error

if.end3050:                                       ; preds = %if.end3046
  %1991 = load i32, ptr %res2975, align 4
  %1992 = load ptr, ptr %pC2974, align 8
  %seekResult3051 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1992, i32 0, i32 10
  store i32 %1991, ptr %seekResult3051, align 4
  %1993 = load i32, ptr %res2975, align 4
  %cmp3052 = icmp eq i32 %1993, 0
  %conv3053 = zext i1 %cmp3052 to i32
  store i32 %conv3053, ptr %alreadyExists, align 4
  %1994 = load i32, ptr %alreadyExists, align 4
  %sub3054 = sub nsw i32 1, %1994
  %conv3055 = trunc i32 %sub3054 to i8
  %1995 = load ptr, ptr %pC2974, align 8
  %nullRow3056 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1995, i32 0, i32 2
  store i8 %conv3055, ptr %nullRow3056, align 2
  %1996 = load ptr, ptr %pC2974, align 8
  %deferredMoveto3057 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1996, i32 0, i32 3
  store i8 0, ptr %deferredMoveto3057, align 1
  %1997 = load ptr, ptr %pC2974, align 8
  %cacheStatus3058 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %1997, i32 0, i32 9
  store i32 0, ptr %cacheStatus3058, align 8
  %1998 = load ptr, ptr %pOp, align 8
  %opcode3059 = getelementptr inbounds nuw %struct.VdbeOp, ptr %1998, i32 0, i32 0
  %1999 = load i8, ptr %opcode3059, align 8
  %conv3060 = zext i8 %1999 to i32
  %cmp3061 = icmp eq i32 %conv3060, 29
  br i1 %cmp3061, label %if.then3063, label %if.else3067

if.then3063:                                      ; preds = %if.end3050
  %2000 = load i32, ptr %alreadyExists, align 4
  %tobool3064 = icmp ne i32 %2000, 0
  br i1 %tobool3064, label %if.then3065, label %if.end3066

if.then3065:                                      ; preds = %if.then3063
  br label %jump_to_p2

if.end3066:                                       ; preds = %if.then3063
  br label %if.end3073

if.else3067:                                      ; preds = %if.end3050
  %2001 = load i32, ptr %takeJump, align 4
  %tobool3068 = icmp ne i32 %2001, 0
  br i1 %tobool3068, label %if.then3071, label %lor.lhs.false3069

lor.lhs.false3069:                                ; preds = %if.else3067
  %2002 = load i32, ptr %alreadyExists, align 4
  %tobool3070 = icmp ne i32 %2002, 0
  br i1 %tobool3070, label %if.end3072, label %if.then3071

if.then3071:                                      ; preds = %lor.lhs.false3069, %if.else3067
  br label %jump_to_p2

if.end3072:                                       ; preds = %lor.lhs.false3069
  br label %if.end3073

if.end3073:                                       ; preds = %if.end3072, %if.end3066
  br label %sw.epilog5364

sw.bb3074:                                        ; preds = %for.body
  %2003 = load ptr, ptr %aMem, align 8
  %2004 = load ptr, ptr %pOp, align 8
  %p33079 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2004, i32 0, i32 5
  %2005 = load i32, ptr %p33079, align 4
  %idxprom3080 = sext i32 %2005 to i64
  %arrayidx3081 = getelementptr inbounds %struct.sqlite3_value, ptr %2003, i64 %idxprom3080
  store ptr %arrayidx3081, ptr %pIn3, align 8
  %2006 = load ptr, ptr %pIn3, align 8
  %flags3082 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2006, i32 0, i32 1
  %2007 = load i16, ptr %flags3082, align 8
  %conv3083 = zext i16 %2007 to i32
  %and3084 = and i32 %conv3083, 36
  %cmp3085 = icmp eq i32 %and3084, 0
  br i1 %cmp3085, label %if.then3087, label %if.end3097

if.then3087:                                      ; preds = %sw.bb3074
  %2008 = load ptr, ptr %pIn3, align 8
  %arrayidx3088 = getelementptr inbounds %struct.sqlite3_value, ptr %2008, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x, ptr align 8 %arrayidx3088, i64 56, i1 false)
  %2009 = load i8, ptr %encoding, align 1
  call void @applyAffinity(ptr noundef %x, i8 noundef signext 67, i8 noundef zeroext %2009)
  %flags3089 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %x, i32 0, i32 1
  %2010 = load i16, ptr %flags3089, align 8
  %conv3090 = zext i16 %2010 to i32
  %and3091 = and i32 %conv3090, 4
  %cmp3092 = icmp eq i32 %and3091, 0
  br i1 %cmp3092, label %if.then3094, label %if.end3095

if.then3094:                                      ; preds = %if.then3087
  br label %jump_to_p2

if.end3095:                                       ; preds = %if.then3087
  %u3096 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %x, i32 0, i32 0
  %2011 = load i64, ptr %u3096, align 8
  store i64 %2011, ptr %iKey3078, align 8
  br label %notExistsWithKey

if.end3097:                                       ; preds = %sw.bb3074
  br label %sw.bb3098

sw.bb3098:                                        ; preds = %if.end3097, %for.body
  %2012 = load ptr, ptr %aMem, align 8
  %2013 = load ptr, ptr %pOp, align 8
  %p33099 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2013, i32 0, i32 5
  %2014 = load i32, ptr %p33099, align 4
  %idxprom3100 = sext i32 %2014 to i64
  %arrayidx3101 = getelementptr inbounds %struct.sqlite3_value, ptr %2012, i64 %idxprom3100
  store ptr %arrayidx3101, ptr %pIn3, align 8
  %2015 = load ptr, ptr %pIn3, align 8
  %u3102 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2015, i32 0, i32 0
  %2016 = load i64, ptr %u3102, align 8
  store i64 %2016, ptr %iKey3078, align 8
  br label %notExistsWithKey

notExistsWithKey:                                 ; preds = %sw.bb3098, %if.end3095
  %2017 = load ptr, ptr %p.addr, align 8
  %apCsr3103 = getelementptr inbounds nuw %struct.Vdbe, ptr %2017, i32 0, i32 21
  %2018 = load ptr, ptr %apCsr3103, align 8
  %2019 = load ptr, ptr %pOp, align 8
  %p13104 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2019, i32 0, i32 3
  %2020 = load i32, ptr %p13104, align 4
  %idxprom3105 = sext i32 %2020 to i64
  %arrayidx3106 = getelementptr inbounds ptr, ptr %2018, i64 %idxprom3105
  %2021 = load ptr, ptr %arrayidx3106, align 8
  store ptr %2021, ptr %pC3075, align 8
  %2022 = load ptr, ptr %pC3075, align 8
  %uc3107 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2022, i32 0, i32 12
  %2023 = load ptr, ptr %uc3107, align 8
  store ptr %2023, ptr %pCrsr3076, align 8
  store i32 0, ptr %res3077, align 4
  %2024 = load ptr, ptr %pCrsr3076, align 8
  %2025 = load i64, ptr %iKey3078, align 8
  %call3108 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %2024, ptr noundef null, i64 noundef %2025, i32 noundef 0, ptr noundef %res3077)
  store i32 %call3108, ptr %rc, align 4
  %2026 = load i64, ptr %iKey3078, align 8
  %2027 = load ptr, ptr %pC3075, align 8
  %movetoTarget3109 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2027, i32 0, i32 18
  store i64 %2026, ptr %movetoTarget3109, align 8
  %2028 = load ptr, ptr %pC3075, align 8
  %nullRow3110 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2028, i32 0, i32 2
  store i8 0, ptr %nullRow3110, align 2
  %2029 = load ptr, ptr %pC3075, align 8
  %cacheStatus3111 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2029, i32 0, i32 9
  store i32 0, ptr %cacheStatus3111, align 8
  %2030 = load ptr, ptr %pC3075, align 8
  %deferredMoveto3112 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2030, i32 0, i32 3
  store i8 0, ptr %deferredMoveto3112, align 1
  %2031 = load i32, ptr %res3077, align 4
  %2032 = load ptr, ptr %pC3075, align 8
  %seekResult3113 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2032, i32 0, i32 10
  store i32 %2031, ptr %seekResult3113, align 4
  %2033 = load i32, ptr %res3077, align 4
  %cmp3114 = icmp ne i32 %2033, 0
  br i1 %cmp3114, label %if.then3116, label %if.end3124

if.then3116:                                      ; preds = %notExistsWithKey
  %2034 = load ptr, ptr %pOp, align 8
  %p23117 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2034, i32 0, i32 4
  %2035 = load i32, ptr %p23117, align 8
  %cmp3118 = icmp eq i32 %2035, 0
  br i1 %cmp3118, label %if.then3120, label %if.else3122

if.then3120:                                      ; preds = %if.then3116
  %call3121 = call i32 @sqlite3CorruptError(i32 noundef 88527)
  store i32 %call3121, ptr %rc, align 4
  br label %if.end3123

if.else3122:                                      ; preds = %if.then3116
  br label %jump_to_p2

if.end3123:                                       ; preds = %if.then3120
  br label %if.end3124

if.end3124:                                       ; preds = %if.end3123, %notExistsWithKey
  %2036 = load i32, ptr %rc, align 4
  %tobool3125 = icmp ne i32 %2036, 0
  br i1 %tobool3125, label %if.then3126, label %if.end3127

if.then3126:                                      ; preds = %if.end3124
  br label %abort_due_to_error

if.end3127:                                       ; preds = %if.end3124
  br label %sw.epilog5364

sw.bb3128:                                        ; preds = %for.body
  %2037 = load ptr, ptr %p.addr, align 8
  %2038 = load ptr, ptr %pOp, align 8
  %call3129 = call ptr @out2Prerelease(ptr noundef %2037, ptr noundef %2038)
  store ptr %call3129, ptr %pOut, align 8
  %2039 = load ptr, ptr %p.addr, align 8
  %apCsr3130 = getelementptr inbounds nuw %struct.Vdbe, ptr %2039, i32 0, i32 21
  %2040 = load ptr, ptr %apCsr3130, align 8
  %2041 = load ptr, ptr %pOp, align 8
  %p13131 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2041, i32 0, i32 3
  %2042 = load i32, ptr %p13131, align 4
  %idxprom3132 = sext i32 %2042 to i64
  %arrayidx3133 = getelementptr inbounds ptr, ptr %2040, i64 %idxprom3132
  %2043 = load ptr, ptr %arrayidx3133, align 8
  %seqCount3134 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2043, i32 0, i32 7
  %2044 = load i64, ptr %seqCount3134, align 8
  %inc3135 = add nsw i64 %2044, 1
  store i64 %inc3135, ptr %seqCount3134, align 8
  %2045 = load ptr, ptr %pOut, align 8
  %u3136 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2045, i32 0, i32 0
  store i64 %2044, ptr %u3136, align 8
  br label %sw.epilog5364

sw.bb3137:                                        ; preds = %for.body
  store i64 0, ptr %v, align 8
  store i32 0, ptr %res3139, align 4
  %2046 = load ptr, ptr %p.addr, align 8
  %2047 = load ptr, ptr %pOp, align 8
  %call3143 = call ptr @out2Prerelease(ptr noundef %2046, ptr noundef %2047)
  store ptr %call3143, ptr %pOut, align 8
  %2048 = load ptr, ptr %p.addr, align 8
  %apCsr3144 = getelementptr inbounds nuw %struct.Vdbe, ptr %2048, i32 0, i32 21
  %2049 = load ptr, ptr %apCsr3144, align 8
  %2050 = load ptr, ptr %pOp, align 8
  %p13145 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2050, i32 0, i32 3
  %2051 = load i32, ptr %p13145, align 4
  %idxprom3146 = sext i32 %2051 to i64
  %arrayidx3147 = getelementptr inbounds ptr, ptr %2049, i64 %idxprom3146
  %2052 = load ptr, ptr %arrayidx3147, align 8
  store ptr %2052, ptr %pC3138, align 8
  %2053 = load ptr, ptr %pC3138, align 8
  %useRandomRowid = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2053, i32 0, i32 5
  %bf.load3148 = load i8, ptr %useRandomRowid, align 1
  %bf.lshr3149 = lshr i8 %bf.load3148, 1
  %bf.clear3150 = and i8 %bf.lshr3149, 1
  %bf.cast3151 = zext i8 %bf.clear3150 to i32
  %tobool3152 = icmp ne i32 %bf.cast3151, 0
  br i1 %tobool3152, label %if.end3176, label %if.then3153

if.then3153:                                      ; preds = %sw.bb3137
  %2054 = load ptr, ptr %pC3138, align 8
  %uc3154 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2054, i32 0, i32 12
  %2055 = load ptr, ptr %uc3154, align 8
  %call3155 = call i32 @sqlite3BtreeLast(ptr noundef %2055, ptr noundef %res3139)
  store i32 %call3155, ptr %rc, align 4
  %2056 = load i32, ptr %rc, align 4
  %cmp3156 = icmp ne i32 %2056, 0
  br i1 %cmp3156, label %if.then3158, label %if.end3159

if.then3158:                                      ; preds = %if.then3153
  br label %abort_due_to_error

if.end3159:                                       ; preds = %if.then3153
  %2057 = load i32, ptr %res3139, align 4
  %tobool3160 = icmp ne i32 %2057, 0
  br i1 %tobool3160, label %if.then3161, label %if.else3162

if.then3161:                                      ; preds = %if.end3159
  store i64 1, ptr %v, align 8
  br label %if.end3175

if.else3162:                                      ; preds = %if.end3159
  %2058 = load ptr, ptr %pC3138, align 8
  %uc3163 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2058, i32 0, i32 12
  %2059 = load ptr, ptr %uc3163, align 8
  %call3164 = call i64 @sqlite3BtreeIntegerKey(ptr noundef %2059)
  store i64 %call3164, ptr %v, align 8
  %2060 = load i64, ptr %v, align 8
  %cmp3165 = icmp sge i64 %2060, 9223372036854775807
  br i1 %cmp3165, label %if.then3167, label %if.else3172

if.then3167:                                      ; preds = %if.else3162
  %2061 = load ptr, ptr %pC3138, align 8
  %useRandomRowid3168 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2061, i32 0, i32 5
  %bf.load3169 = load i8, ptr %useRandomRowid3168, align 1
  %bf.clear3170 = and i8 %bf.load3169, -3
  %bf.set3171 = or i8 %bf.clear3170, 2
  store i8 %bf.set3171, ptr %useRandomRowid3168, align 1
  br label %if.end3174

if.else3172:                                      ; preds = %if.else3162
  %2062 = load i64, ptr %v, align 8
  %inc3173 = add nsw i64 %2062, 1
  store i64 %inc3173, ptr %v, align 8
  br label %if.end3174

if.end3174:                                       ; preds = %if.else3172, %if.then3167
  br label %if.end3175

if.end3175:                                       ; preds = %if.end3174, %if.then3161
  br label %if.end3176

if.end3176:                                       ; preds = %if.end3175, %sw.bb3137
  %2063 = load ptr, ptr %pOp, align 8
  %p33177 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2063, i32 0, i32 5
  %2064 = load i32, ptr %p33177, align 4
  %tobool3178 = icmp ne i32 %2064, 0
  br i1 %tobool3178, label %if.then3179, label %if.end3222

if.then3179:                                      ; preds = %if.end3176
  %2065 = load ptr, ptr %p.addr, align 8
  %pFrame3180 = getelementptr inbounds nuw %struct.Vdbe, ptr %2065, i32 0, i32 43
  %2066 = load ptr, ptr %pFrame3180, align 8
  %tobool3181 = icmp ne ptr %2066, null
  br i1 %tobool3181, label %if.then3182, label %if.else3195

if.then3182:                                      ; preds = %if.then3179
  %2067 = load ptr, ptr %p.addr, align 8
  %pFrame3183 = getelementptr inbounds nuw %struct.Vdbe, ptr %2067, i32 0, i32 43
  %2068 = load ptr, ptr %pFrame3183, align 8
  store ptr %2068, ptr %pFrame3142, align 8
  br label %for.cond3184

for.cond3184:                                     ; preds = %for.inc3188, %if.then3182
  %2069 = load ptr, ptr %pFrame3142, align 8
  %pParent3185 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2069, i32 0, i32 1
  %2070 = load ptr, ptr %pParent3185, align 8
  %tobool3186 = icmp ne ptr %2070, null
  br i1 %tobool3186, label %for.body3187, label %for.end3190

for.body3187:                                     ; preds = %for.cond3184
  br label %for.inc3188

for.inc3188:                                      ; preds = %for.body3187
  %2071 = load ptr, ptr %pFrame3142, align 8
  %pParent3189 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2071, i32 0, i32 1
  %2072 = load ptr, ptr %pParent3189, align 8
  store ptr %2072, ptr %pFrame3142, align 8
  br label %for.cond3184, !llvm.loop !20

for.end3190:                                      ; preds = %for.cond3184
  %2073 = load ptr, ptr %pFrame3142, align 8
  %aMem3191 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2073, i32 0, i32 4
  %2074 = load ptr, ptr %aMem3191, align 8
  %2075 = load ptr, ptr %pOp, align 8
  %p33192 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2075, i32 0, i32 5
  %2076 = load i32, ptr %p33192, align 4
  %idxprom3193 = sext i32 %2076 to i64
  %arrayidx3194 = getelementptr inbounds %struct.sqlite3_value, ptr %2074, i64 %idxprom3193
  store ptr %arrayidx3194, ptr %pMem3141, align 8
  br label %if.end3199

if.else3195:                                      ; preds = %if.then3179
  %2077 = load ptr, ptr %aMem, align 8
  %2078 = load ptr, ptr %pOp, align 8
  %p33196 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2078, i32 0, i32 5
  %2079 = load i32, ptr %p33196, align 4
  %idxprom3197 = sext i32 %2079 to i64
  %arrayidx3198 = getelementptr inbounds %struct.sqlite3_value, ptr %2077, i64 %idxprom3197
  store ptr %arrayidx3198, ptr %pMem3141, align 8
  br label %if.end3199

if.end3199:                                       ; preds = %if.else3195, %for.end3190
  %2080 = load ptr, ptr %pMem3141, align 8
  %call3200 = call i32 @sqlite3VdbeMemIntegerify(ptr noundef %2080)
  %2081 = load ptr, ptr %pMem3141, align 8
  %u3201 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2081, i32 0, i32 0
  %2082 = load i64, ptr %u3201, align 8
  %cmp3202 = icmp eq i64 %2082, 9223372036854775807
  br i1 %cmp3202, label %if.then3211, label %lor.lhs.false3204

lor.lhs.false3204:                                ; preds = %if.end3199
  %2083 = load ptr, ptr %pC3138, align 8
  %useRandomRowid3205 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2083, i32 0, i32 5
  %bf.load3206 = load i8, ptr %useRandomRowid3205, align 1
  %bf.lshr3207 = lshr i8 %bf.load3206, 1
  %bf.clear3208 = and i8 %bf.lshr3207, 1
  %bf.cast3209 = zext i8 %bf.clear3208 to i32
  %tobool3210 = icmp ne i32 %bf.cast3209, 0
  br i1 %tobool3210, label %if.then3211, label %if.end3212

if.then3211:                                      ; preds = %lor.lhs.false3204, %if.end3199
  store i32 13, ptr %rc, align 4
  br label %abort_due_to_error

if.end3212:                                       ; preds = %lor.lhs.false3204
  %2084 = load i64, ptr %v, align 8
  %2085 = load ptr, ptr %pMem3141, align 8
  %u3213 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2085, i32 0, i32 0
  %2086 = load i64, ptr %u3213, align 8
  %add3214 = add nsw i64 %2086, 1
  %cmp3215 = icmp slt i64 %2084, %add3214
  br i1 %cmp3215, label %if.then3217, label %if.end3220

if.then3217:                                      ; preds = %if.end3212
  %2087 = load ptr, ptr %pMem3141, align 8
  %u3218 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2087, i32 0, i32 0
  %2088 = load i64, ptr %u3218, align 8
  %add3219 = add nsw i64 %2088, 1
  store i64 %add3219, ptr %v, align 8
  br label %if.end3220

if.end3220:                                       ; preds = %if.then3217, %if.end3212
  %2089 = load i64, ptr %v, align 8
  %2090 = load ptr, ptr %pMem3141, align 8
  %u3221 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2090, i32 0, i32 0
  store i64 %2089, ptr %u3221, align 8
  br label %if.end3222

if.end3222:                                       ; preds = %if.end3220, %if.end3176
  %2091 = load ptr, ptr %pC3138, align 8
  %useRandomRowid3223 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2091, i32 0, i32 5
  %bf.load3224 = load i8, ptr %useRandomRowid3223, align 1
  %bf.lshr3225 = lshr i8 %bf.load3224, 1
  %bf.clear3226 = and i8 %bf.lshr3225, 1
  %bf.cast3227 = zext i8 %bf.clear3226 to i32
  %tobool3228 = icmp ne i32 %bf.cast3227, 0
  br i1 %tobool3228, label %if.then3229, label %if.end3255

if.then3229:                                      ; preds = %if.end3222
  store i32 0, ptr %cnt3140, align 4
  br label %do.body3230

do.body3230:                                      ; preds = %land.end3245, %if.then3229
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef %v)
  %2092 = load i64, ptr %v, align 8
  %and3231 = and i64 %2092, 4611686018427387903
  store i64 %and3231, ptr %v, align 8
  %2093 = load i64, ptr %v, align 8
  %inc3232 = add nsw i64 %2093, 1
  store i64 %inc3232, ptr %v, align 8
  br label %do.cond3233

do.cond3233:                                      ; preds = %do.body3230
  %2094 = load ptr, ptr %pC3138, align 8
  %uc3234 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2094, i32 0, i32 12
  %2095 = load ptr, ptr %uc3234, align 8
  %2096 = load i64, ptr %v, align 8
  %call3235 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %2095, ptr noundef null, i64 noundef %2096, i32 noundef 0, ptr noundef %res3139)
  store i32 %call3235, ptr %rc, align 4
  %cmp3236 = icmp eq i32 %call3235, 0
  br i1 %cmp3236, label %land.lhs.true3238, label %land.end3245

land.lhs.true3238:                                ; preds = %do.cond3233
  %2097 = load i32, ptr %res3139, align 4
  %cmp3239 = icmp eq i32 %2097, 0
  br i1 %cmp3239, label %land.rhs3241, label %land.end3245

land.rhs3241:                                     ; preds = %land.lhs.true3238
  %2098 = load i32, ptr %cnt3140, align 4
  %inc3242 = add nsw i32 %2098, 1
  store i32 %inc3242, ptr %cnt3140, align 4
  %cmp3243 = icmp slt i32 %inc3242, 100
  br label %land.end3245

land.end3245:                                     ; preds = %land.rhs3241, %land.lhs.true3238, %do.cond3233
  %2099 = phi i1 [ false, %land.lhs.true3238 ], [ false, %do.cond3233 ], [ %cmp3243, %land.rhs3241 ]
  br i1 %2099, label %do.body3230, label %do.end3247, !llvm.loop !21

do.end3247:                                       ; preds = %land.end3245
  %2100 = load i32, ptr %rc, align 4
  %tobool3248 = icmp ne i32 %2100, 0
  br i1 %tobool3248, label %if.then3249, label %if.end3250

if.then3249:                                      ; preds = %do.end3247
  br label %abort_due_to_error

if.end3250:                                       ; preds = %do.end3247
  %2101 = load i32, ptr %res3139, align 4
  %cmp3251 = icmp eq i32 %2101, 0
  br i1 %cmp3251, label %if.then3253, label %if.end3254

if.then3253:                                      ; preds = %if.end3250
  store i32 13, ptr %rc, align 4
  br label %abort_due_to_error

if.end3254:                                       ; preds = %if.end3250
  br label %if.end3255

if.end3255:                                       ; preds = %if.end3254, %if.end3222
  %2102 = load ptr, ptr %pC3138, align 8
  %deferredMoveto3256 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2102, i32 0, i32 3
  store i8 0, ptr %deferredMoveto3256, align 1
  %2103 = load ptr, ptr %pC3138, align 8
  %cacheStatus3257 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2103, i32 0, i32 9
  store i32 0, ptr %cacheStatus3257, align 8
  %2104 = load i64, ptr %v, align 8
  %2105 = load ptr, ptr %pOut, align 8
  %u3258 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2105, i32 0, i32 0
  store i64 %2104, ptr %u3258, align 8
  br label %sw.epilog5364

sw.bb3259:                                        ; preds = %for.body
  %2106 = load ptr, ptr %aMem, align 8
  %2107 = load ptr, ptr %pOp, align 8
  %p23263 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2107, i32 0, i32 4
  %2108 = load i32, ptr %p23263, align 8
  %idxprom3264 = sext i32 %2108 to i64
  %arrayidx3265 = getelementptr inbounds %struct.sqlite3_value, ptr %2106, i64 %idxprom3264
  store ptr %arrayidx3265, ptr %pData, align 8
  %2109 = load ptr, ptr %p.addr, align 8
  %apCsr3266 = getelementptr inbounds nuw %struct.Vdbe, ptr %2109, i32 0, i32 21
  %2110 = load ptr, ptr %apCsr3266, align 8
  %2111 = load ptr, ptr %pOp, align 8
  %p13267 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2111, i32 0, i32 3
  %2112 = load i32, ptr %p13267, align 4
  %idxprom3268 = sext i32 %2112 to i64
  %arrayidx3269 = getelementptr inbounds ptr, ptr %2110, i64 %idxprom3268
  %2113 = load ptr, ptr %arrayidx3269, align 8
  store ptr %2113, ptr %pC3260, align 8
  %2114 = load ptr, ptr %aMem, align 8
  %2115 = load ptr, ptr %pOp, align 8
  %p33270 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2115, i32 0, i32 5
  %2116 = load i32, ptr %p33270, align 4
  %idxprom3271 = sext i32 %2116 to i64
  %arrayidx3272 = getelementptr inbounds %struct.sqlite3_value, ptr %2114, i64 %idxprom3271
  store ptr %arrayidx3272, ptr %pKey, align 8
  %2117 = load ptr, ptr %pKey, align 8
  %u3273 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2117, i32 0, i32 0
  %2118 = load i64, ptr %u3273, align 8
  %nKey = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3262, i32 0, i32 1
  store i64 %2118, ptr %nKey, align 8
  %2119 = load ptr, ptr %pOp, align 8
  %p4type3274 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2119, i32 0, i32 1
  %2120 = load i8, ptr %p4type3274, align 1
  %conv3275 = sext i8 %2120 to i32
  %cmp3276 = icmp eq i32 %conv3275, -6
  br i1 %cmp3276, label %land.lhs.true3278, label %if.else3286

land.lhs.true3278:                                ; preds = %sw.bb3259
  %2121 = load ptr, ptr %db, align 8
  %xUpdateCallback = getelementptr inbounds nuw %struct.sqlite3, ptr %2121, i32 0, i32 52
  %2122 = load ptr, ptr %xUpdateCallback, align 8
  %tobool3279 = icmp ne ptr %2122, null
  br i1 %tobool3279, label %if.then3280, label %if.else3286

if.then3280:                                      ; preds = %land.lhs.true3278
  %2123 = load ptr, ptr %db, align 8
  %aDb3281 = getelementptr inbounds nuw %struct.sqlite3, ptr %2123, i32 0, i32 4
  %2124 = load ptr, ptr %aDb3281, align 8
  %2125 = load ptr, ptr %pC3260, align 8
  %iDb3282 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2125, i32 0, i32 1
  %2126 = load i8, ptr %iDb3282, align 1
  %idxprom3283 = sext i8 %2126 to i64
  %arrayidx3284 = getelementptr inbounds %struct.Db, ptr %2124, i64 %idxprom3283
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx3284, i32 0, i32 0
  %2127 = load ptr, ptr %zDbSName, align 8
  store ptr %2127, ptr %zDb, align 8
  %2128 = load ptr, ptr %pOp, align 8
  %p43285 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2128, i32 0, i32 6
  %2129 = load ptr, ptr %p43285, align 8
  store ptr %2129, ptr %pTab, align 8
  br label %if.end3287

if.else3286:                                      ; preds = %land.lhs.true3278, %sw.bb3259
  store ptr null, ptr %pTab, align 8
  store ptr null, ptr %zDb, align 8
  br label %if.end3287

if.end3287:                                       ; preds = %if.else3286, %if.then3280
  %2130 = load ptr, ptr %pOp, align 8
  %p53288 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2130, i32 0, i32 2
  %2131 = load i16, ptr %p53288, align 2
  %conv3289 = zext i16 %2131 to i32
  %and3290 = and i32 %conv3289, 1
  %tobool3291 = icmp ne i32 %and3290, 0
  br i1 %tobool3291, label %if.then3292, label %if.end3295

if.then3292:                                      ; preds = %if.end3287
  %2132 = load ptr, ptr %p.addr, align 8
  %nChange3293 = getelementptr inbounds nuw %struct.Vdbe, ptr %2132, i32 0, i32 12
  %2133 = load i32, ptr %nChange3293, align 4
  %inc3294 = add nsw i32 %2133, 1
  store i32 %inc3294, ptr %nChange3293, align 4
  br label %if.end3295

if.end3295:                                       ; preds = %if.then3292, %if.end3287
  %2134 = load ptr, ptr %pOp, align 8
  %p53296 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2134, i32 0, i32 2
  %2135 = load i16, ptr %p53296, align 2
  %conv3297 = zext i16 %2135 to i32
  %and3298 = and i32 %conv3297, 32
  %tobool3299 = icmp ne i32 %and3298, 0
  br i1 %tobool3299, label %if.then3300, label %if.end3302

if.then3300:                                      ; preds = %if.end3295
  %nKey3301 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3262, i32 0, i32 1
  %2136 = load i64, ptr %nKey3301, align 8
  %2137 = load ptr, ptr %db, align 8
  %lastRowid = getelementptr inbounds nuw %struct.sqlite3, ptr %2137, i32 0, i32 8
  store i64 %2136, ptr %lastRowid, align 8
  br label %if.end3302

if.end3302:                                       ; preds = %if.then3300, %if.end3295
  %2138 = load ptr, ptr %pData, align 8
  %z3303 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2138, i32 0, i32 5
  %2139 = load ptr, ptr %z3303, align 8
  %pData3304 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3262, i32 0, i32 2
  store ptr %2139, ptr %pData3304, align 8
  %2140 = load ptr, ptr %pData, align 8
  %n3305 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2140, i32 0, i32 4
  %2141 = load i32, ptr %n3305, align 4
  %nData3306 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3262, i32 0, i32 5
  store i32 %2141, ptr %nData3306, align 4
  %2142 = load ptr, ptr %pOp, align 8
  %p53307 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2142, i32 0, i32 2
  %2143 = load i16, ptr %p53307, align 2
  %conv3308 = zext i16 %2143 to i32
  %and3309 = and i32 %conv3308, 16
  %tobool3310 = icmp ne i32 %and3309, 0
  br i1 %tobool3310, label %cond.true3311, label %cond.false3313

cond.true3311:                                    ; preds = %if.end3302
  %2144 = load ptr, ptr %pC3260, align 8
  %seekResult3312 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2144, i32 0, i32 10
  %2145 = load i32, ptr %seekResult3312, align 4
  br label %cond.end3314

cond.false3313:                                   ; preds = %if.end3302
  br label %cond.end3314

cond.end3314:                                     ; preds = %cond.false3313, %cond.true3311
  %cond3315 = phi i32 [ %2145, %cond.true3311 ], [ 0, %cond.false3313 ]
  store i32 %cond3315, ptr %seekResult3261, align 4
  %2146 = load ptr, ptr %pData, align 8
  %flags3316 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2146, i32 0, i32 1
  %2147 = load i16, ptr %flags3316, align 8
  %conv3317 = zext i16 %2147 to i32
  %and3318 = and i32 %conv3317, 16384
  %tobool3319 = icmp ne i32 %and3318, 0
  br i1 %tobool3319, label %if.then3320, label %if.else3323

if.then3320:                                      ; preds = %cond.end3314
  %2148 = load ptr, ptr %pData, align 8
  %u3321 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2148, i32 0, i32 0
  %2149 = load i32, ptr %u3321, align 8
  %nZero3322 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3262, i32 0, i32 6
  store i32 %2149, ptr %nZero3322, align 8
  br label %if.end3325

if.else3323:                                      ; preds = %cond.end3314
  %nZero3324 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3262, i32 0, i32 6
  store i32 0, ptr %nZero3324, align 8
  br label %if.end3325

if.end3325:                                       ; preds = %if.else3323, %if.then3320
  %pKey3326 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3262, i32 0, i32 0
  store ptr null, ptr %pKey3326, align 8
  %2150 = load ptr, ptr %pC3260, align 8
  %uc3327 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2150, i32 0, i32 12
  %2151 = load ptr, ptr %uc3327, align 8
  %2152 = load ptr, ptr %pOp, align 8
  %p53328 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2152, i32 0, i32 2
  %2153 = load i16, ptr %p53328, align 2
  %conv3329 = zext i16 %2153 to i32
  %and3330 = and i32 %conv3329, 10
  %2154 = load i32, ptr %seekResult3261, align 4
  %call3331 = call i32 @sqlite3BtreeInsert(ptr noundef %2151, ptr noundef %x3262, i32 noundef %and3330, i32 noundef %2154)
  store i32 %call3331, ptr %rc, align 4
  %2155 = load ptr, ptr %pC3260, align 8
  %deferredMoveto3332 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2155, i32 0, i32 3
  store i8 0, ptr %deferredMoveto3332, align 1
  %2156 = load ptr, ptr %pC3260, align 8
  %cacheStatus3333 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2156, i32 0, i32 9
  store i32 0, ptr %cacheStatus3333, align 8
  %2157 = load i32, ptr %rc, align 4
  %tobool3334 = icmp ne i32 %2157, 0
  br i1 %tobool3334, label %if.then3335, label %if.end3336

if.then3335:                                      ; preds = %if.end3325
  br label %abort_due_to_error

if.end3336:                                       ; preds = %if.end3325
  %2158 = load ptr, ptr %pTab, align 8
  %tobool3337 = icmp ne ptr %2158, null
  br i1 %tobool3337, label %if.then3338, label %if.end3347

if.then3338:                                      ; preds = %if.end3336
  %2159 = load ptr, ptr %db, align 8
  %xUpdateCallback3339 = getelementptr inbounds nuw %struct.sqlite3, ptr %2159, i32 0, i32 52
  %2160 = load ptr, ptr %xUpdateCallback3339, align 8
  %2161 = load ptr, ptr %db, align 8
  %pUpdateArg = getelementptr inbounds nuw %struct.sqlite3, ptr %2161, i32 0, i32 51
  %2162 = load ptr, ptr %pUpdateArg, align 8
  %2163 = load ptr, ptr %pOp, align 8
  %p53340 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2163, i32 0, i32 2
  %2164 = load i16, ptr %p53340, align 2
  %conv3341 = zext i16 %2164 to i32
  %and3342 = and i32 %conv3341, 4
  %tobool3343 = icmp ne i32 %and3342, 0
  %2165 = zext i1 %tobool3343 to i64
  %cond3344 = select i1 %tobool3343, i32 23, i32 18
  %2166 = load ptr, ptr %zDb, align 8
  %2167 = load ptr, ptr %pTab, align 8
  %zName3345 = getelementptr inbounds nuw %struct.Table, ptr %2167, i32 0, i32 0
  %2168 = load ptr, ptr %zName3345, align 8
  %nKey3346 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3262, i32 0, i32 1
  %2169 = load i64, ptr %nKey3346, align 8
  call void %2160(ptr noundef %2162, i32 noundef %cond3344, ptr noundef %2166, ptr noundef %2168, i64 noundef %2169)
  br label %if.end3347

if.end3347:                                       ; preds = %if.then3338, %if.end3336
  br label %sw.epilog5364

sw.bb3348:                                        ; preds = %for.body
  %2170 = load ptr, ptr %pOp, align 8
  %p23352 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2170, i32 0, i32 4
  %2171 = load i32, ptr %p23352, align 8
  store i32 %2171, ptr %opflags, align 4
  %2172 = load ptr, ptr %p.addr, align 8
  %apCsr3353 = getelementptr inbounds nuw %struct.Vdbe, ptr %2172, i32 0, i32 21
  %2173 = load ptr, ptr %apCsr3353, align 8
  %2174 = load ptr, ptr %pOp, align 8
  %p13354 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2174, i32 0, i32 3
  %2175 = load i32, ptr %p13354, align 4
  %idxprom3355 = sext i32 %2175 to i64
  %arrayidx3356 = getelementptr inbounds ptr, ptr %2173, i64 %idxprom3355
  %2176 = load ptr, ptr %arrayidx3356, align 8
  store ptr %2176, ptr %pC3349, align 8
  %2177 = load ptr, ptr %pOp, align 8
  %p4type3357 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2177, i32 0, i32 1
  %2178 = load i8, ptr %p4type3357, align 1
  %conv3358 = sext i8 %2178 to i32
  %cmp3359 = icmp eq i32 %conv3358, -6
  br i1 %cmp3359, label %land.lhs.true3361, label %if.else3385

land.lhs.true3361:                                ; preds = %sw.bb3348
  %2179 = load ptr, ptr %db, align 8
  %xUpdateCallback3362 = getelementptr inbounds nuw %struct.sqlite3, ptr %2179, i32 0, i32 52
  %2180 = load ptr, ptr %xUpdateCallback3362, align 8
  %tobool3363 = icmp ne ptr %2180, null
  br i1 %tobool3363, label %if.then3364, label %if.else3385

if.then3364:                                      ; preds = %land.lhs.true3361
  %2181 = load ptr, ptr %db, align 8
  %aDb3365 = getelementptr inbounds nuw %struct.sqlite3, ptr %2181, i32 0, i32 4
  %2182 = load ptr, ptr %aDb3365, align 8
  %2183 = load ptr, ptr %pC3349, align 8
  %iDb3366 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2183, i32 0, i32 1
  %2184 = load i8, ptr %iDb3366, align 1
  %idxprom3367 = sext i8 %2184 to i64
  %arrayidx3368 = getelementptr inbounds %struct.Db, ptr %2182, i64 %idxprom3367
  %zDbSName3369 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx3368, i32 0, i32 0
  %2185 = load ptr, ptr %zDbSName3369, align 8
  store ptr %2185, ptr %zDb3350, align 8
  %2186 = load ptr, ptr %pOp, align 8
  %p43370 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2186, i32 0, i32 6
  %2187 = load ptr, ptr %p43370, align 8
  store ptr %2187, ptr %pTab3351, align 8
  %2188 = load ptr, ptr %pOp, align 8
  %p53371 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2188, i32 0, i32 2
  %2189 = load i16, ptr %p53371, align 2
  %conv3372 = zext i16 %2189 to i32
  %and3373 = and i32 %conv3372, 2
  %cmp3374 = icmp ne i32 %and3373, 0
  br i1 %cmp3374, label %land.lhs.true3376, label %if.end3384

land.lhs.true3376:                                ; preds = %if.then3364
  %2190 = load ptr, ptr %pC3349, align 8
  %isTable3377 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2190, i32 0, i32 4
  %2191 = load i8, ptr %isTable3377, align 4
  %conv3378 = zext i8 %2191 to i32
  %tobool3379 = icmp ne i32 %conv3378, 0
  br i1 %tobool3379, label %if.then3380, label %if.end3384

if.then3380:                                      ; preds = %land.lhs.true3376
  %2192 = load ptr, ptr %pC3349, align 8
  %uc3381 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2192, i32 0, i32 12
  %2193 = load ptr, ptr %uc3381, align 8
  %call3382 = call i64 @sqlite3BtreeIntegerKey(ptr noundef %2193)
  %2194 = load ptr, ptr %pC3349, align 8
  %movetoTarget3383 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2194, i32 0, i32 18
  store i64 %call3382, ptr %movetoTarget3383, align 8
  br label %if.end3384

if.end3384:                                       ; preds = %if.then3380, %land.lhs.true3376, %if.then3364
  br label %if.end3386

if.else3385:                                      ; preds = %land.lhs.true3361, %sw.bb3348
  store ptr null, ptr %zDb3350, align 8
  store ptr null, ptr %pTab3351, align 8
  br label %if.end3386

if.end3386:                                       ; preds = %if.else3385, %if.end3384
  %2195 = load ptr, ptr %pC3349, align 8
  %uc3387 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2195, i32 0, i32 12
  %2196 = load ptr, ptr %uc3387, align 8
  %2197 = load ptr, ptr %pOp, align 8
  %p53388 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2197, i32 0, i32 2
  %2198 = load i16, ptr %p53388, align 2
  %conv3389 = trunc i16 %2198 to i8
  %call3390 = call i32 @sqlite3BtreeDelete(ptr noundef %2196, i8 noundef zeroext %conv3389)
  store i32 %call3390, ptr %rc, align 4
  %2199 = load ptr, ptr %pC3349, align 8
  %cacheStatus3391 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2199, i32 0, i32 9
  store i32 0, ptr %cacheStatus3391, align 8
  %2200 = load ptr, ptr %pC3349, align 8
  %seekResult3392 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2200, i32 0, i32 10
  store i32 0, ptr %seekResult3392, align 4
  %2201 = load i32, ptr %rc, align 4
  %tobool3393 = icmp ne i32 %2201, 0
  br i1 %tobool3393, label %if.then3394, label %if.end3395

if.then3394:                                      ; preds = %if.end3386
  br label %abort_due_to_error

if.end3395:                                       ; preds = %if.end3386
  %2202 = load i32, ptr %opflags, align 4
  %and3396 = and i32 %2202, 1
  %tobool3397 = icmp ne i32 %and3396, 0
  br i1 %tobool3397, label %if.then3398, label %if.end3413

if.then3398:                                      ; preds = %if.end3395
  %2203 = load ptr, ptr %p.addr, align 8
  %nChange3399 = getelementptr inbounds nuw %struct.Vdbe, ptr %2203, i32 0, i32 12
  %2204 = load i32, ptr %nChange3399, align 4
  %inc3400 = add nsw i32 %2204, 1
  store i32 %inc3400, ptr %nChange3399, align 4
  %2205 = load ptr, ptr %db, align 8
  %xUpdateCallback3401 = getelementptr inbounds nuw %struct.sqlite3, ptr %2205, i32 0, i32 52
  %2206 = load ptr, ptr %xUpdateCallback3401, align 8
  %tobool3402 = icmp ne ptr %2206, null
  br i1 %tobool3402, label %land.lhs.true3403, label %if.end3412

land.lhs.true3403:                                ; preds = %if.then3398
  %2207 = load ptr, ptr %pTab3351, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %2207, i32 0, i32 9
  %2208 = load i32, ptr %tabFlags, align 8
  %and3404 = and i32 %2208, 32
  %cmp3405 = icmp eq i32 %and3404, 0
  br i1 %cmp3405, label %if.then3407, label %if.end3412

if.then3407:                                      ; preds = %land.lhs.true3403
  %2209 = load ptr, ptr %db, align 8
  %xUpdateCallback3408 = getelementptr inbounds nuw %struct.sqlite3, ptr %2209, i32 0, i32 52
  %2210 = load ptr, ptr %xUpdateCallback3408, align 8
  %2211 = load ptr, ptr %db, align 8
  %pUpdateArg3409 = getelementptr inbounds nuw %struct.sqlite3, ptr %2211, i32 0, i32 51
  %2212 = load ptr, ptr %pUpdateArg3409, align 8
  %2213 = load ptr, ptr %zDb3350, align 8
  %2214 = load ptr, ptr %pTab3351, align 8
  %zName3410 = getelementptr inbounds nuw %struct.Table, ptr %2214, i32 0, i32 0
  %2215 = load ptr, ptr %zName3410, align 8
  %2216 = load ptr, ptr %pC3349, align 8
  %movetoTarget3411 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2216, i32 0, i32 18
  %2217 = load i64, ptr %movetoTarget3411, align 8
  call void %2210(ptr noundef %2212, i32 noundef 9, ptr noundef %2213, ptr noundef %2215, i64 noundef %2217)
  br label %if.end3412

if.end3412:                                       ; preds = %if.then3407, %land.lhs.true3403, %if.then3398
  br label %if.end3413

if.end3413:                                       ; preds = %if.end3412, %if.end3395
  br label %sw.epilog5364

sw.bb3414:                                        ; preds = %for.body
  %2218 = load ptr, ptr %db, align 8
  %2219 = load ptr, ptr %p.addr, align 8
  %nChange3415 = getelementptr inbounds nuw %struct.Vdbe, ptr %2219, i32 0, i32 12
  %2220 = load i32, ptr %nChange3415, align 4
  call void @sqlite3VdbeSetChanges(ptr noundef %2218, i32 noundef %2220)
  %2221 = load ptr, ptr %p.addr, align 8
  %nChange3416 = getelementptr inbounds nuw %struct.Vdbe, ptr %2221, i32 0, i32 12
  store i32 0, ptr %nChange3416, align 4
  br label %sw.epilog5364

sw.bb3417:                                        ; preds = %for.body
  %2222 = load ptr, ptr %p.addr, align 8
  %apCsr3420 = getelementptr inbounds nuw %struct.Vdbe, ptr %2222, i32 0, i32 21
  %2223 = load ptr, ptr %apCsr3420, align 8
  %2224 = load ptr, ptr %pOp, align 8
  %p13421 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2224, i32 0, i32 3
  %2225 = load i32, ptr %p13421, align 4
  %idxprom3422 = sext i32 %2225 to i64
  %arrayidx3423 = getelementptr inbounds ptr, ptr %2223, i64 %idxprom3422
  %2226 = load ptr, ptr %arrayidx3423, align 8
  store ptr %2226, ptr %pC3418, align 8
  %2227 = load ptr, ptr %aMem, align 8
  %2228 = load ptr, ptr %pOp, align 8
  %p33424 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2228, i32 0, i32 5
  %2229 = load i32, ptr %p33424, align 4
  %idxprom3425 = sext i32 %2229 to i64
  %arrayidx3426 = getelementptr inbounds %struct.sqlite3_value, ptr %2227, i64 %idxprom3425
  store ptr %arrayidx3426, ptr %pIn3, align 8
  %2230 = load ptr, ptr %pOp, align 8
  %p43427 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2230, i32 0, i32 6
  %2231 = load i32, ptr %p43427, align 8
  store i32 %2231, ptr %nKeyCol, align 4
  store i32 0, ptr %res3419, align 4
  %2232 = load ptr, ptr %pC3418, align 8
  %2233 = load ptr, ptr %pIn3, align 8
  %2234 = load i32, ptr %nKeyCol, align 4
  %call3428 = call i32 @sqlite3VdbeSorterCompare(ptr noundef %2232, ptr noundef %2233, i32 noundef %2234, ptr noundef %res3419)
  store i32 %call3428, ptr %rc, align 4
  %2235 = load i32, ptr %rc, align 4
  %tobool3429 = icmp ne i32 %2235, 0
  br i1 %tobool3429, label %if.then3430, label %if.end3431

if.then3430:                                      ; preds = %sw.bb3417
  br label %abort_due_to_error

if.end3431:                                       ; preds = %sw.bb3417
  %2236 = load i32, ptr %res3419, align 4
  %tobool3432 = icmp ne i32 %2236, 0
  br i1 %tobool3432, label %if.then3433, label %if.end3434

if.then3433:                                      ; preds = %if.end3431
  br label %jump_to_p2

if.end3434:                                       ; preds = %if.end3431
  br label %sw.epilog5364

sw.bb3435:                                        ; preds = %for.body
  %2237 = load ptr, ptr %aMem, align 8
  %2238 = load ptr, ptr %pOp, align 8
  %p23437 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2238, i32 0, i32 4
  %2239 = load i32, ptr %p23437, align 8
  %idxprom3438 = sext i32 %2239 to i64
  %arrayidx3439 = getelementptr inbounds %struct.sqlite3_value, ptr %2237, i64 %idxprom3438
  store ptr %arrayidx3439, ptr %pOut, align 8
  %2240 = load ptr, ptr %p.addr, align 8
  %apCsr3440 = getelementptr inbounds nuw %struct.Vdbe, ptr %2240, i32 0, i32 21
  %2241 = load ptr, ptr %apCsr3440, align 8
  %2242 = load ptr, ptr %pOp, align 8
  %p13441 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2242, i32 0, i32 3
  %2243 = load i32, ptr %p13441, align 4
  %idxprom3442 = sext i32 %2243 to i64
  %arrayidx3443 = getelementptr inbounds ptr, ptr %2241, i64 %idxprom3442
  %2244 = load ptr, ptr %arrayidx3443, align 8
  store ptr %2244, ptr %pC3436, align 8
  %2245 = load ptr, ptr %pC3436, align 8
  %2246 = load ptr, ptr %pOut, align 8
  %call3444 = call i32 @sqlite3VdbeSorterRowkey(ptr noundef %2245, ptr noundef %2246)
  store i32 %call3444, ptr %rc, align 4
  %2247 = load i32, ptr %rc, align 4
  %tobool3445 = icmp ne i32 %2247, 0
  br i1 %tobool3445, label %if.then3446, label %if.end3447

if.then3446:                                      ; preds = %sw.bb3435
  br label %abort_due_to_error

if.end3447:                                       ; preds = %sw.bb3435
  %2248 = load ptr, ptr %p.addr, align 8
  %apCsr3448 = getelementptr inbounds nuw %struct.Vdbe, ptr %2248, i32 0, i32 21
  %2249 = load ptr, ptr %apCsr3448, align 8
  %2250 = load ptr, ptr %pOp, align 8
  %p33449 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2250, i32 0, i32 5
  %2251 = load i32, ptr %p33449, align 4
  %idxprom3450 = sext i32 %2251 to i64
  %arrayidx3451 = getelementptr inbounds ptr, ptr %2249, i64 %idxprom3450
  %2252 = load ptr, ptr %arrayidx3451, align 8
  %cacheStatus3452 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2252, i32 0, i32 9
  store i32 0, ptr %cacheStatus3452, align 8
  br label %sw.epilog5364

sw.bb3453:                                        ; preds = %for.body
  %2253 = load ptr, ptr %p.addr, align 8
  %2254 = load ptr, ptr %pOp, align 8
  %call3457 = call ptr @out2Prerelease(ptr noundef %2253, ptr noundef %2254)
  store ptr %call3457, ptr %pOut, align 8
  %2255 = load ptr, ptr %p.addr, align 8
  %apCsr3458 = getelementptr inbounds nuw %struct.Vdbe, ptr %2255, i32 0, i32 21
  %2256 = load ptr, ptr %apCsr3458, align 8
  %2257 = load ptr, ptr %pOp, align 8
  %p13459 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2257, i32 0, i32 3
  %2258 = load i32, ptr %p13459, align 4
  %idxprom3460 = sext i32 %2258 to i64
  %arrayidx3461 = getelementptr inbounds ptr, ptr %2256, i64 %idxprom3460
  %2259 = load ptr, ptr %arrayidx3461, align 8
  store ptr %2259, ptr %pC3454, align 8
  %2260 = load ptr, ptr %pC3454, align 8
  %uc3462 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2260, i32 0, i32 12
  %2261 = load ptr, ptr %uc3462, align 8
  store ptr %2261, ptr %pCrsr3455, align 8
  %2262 = load ptr, ptr %pCrsr3455, align 8
  %call3463 = call i32 @sqlite3BtreePayloadSize(ptr noundef %2262)
  store i32 %call3463, ptr %n3456, align 4
  %2263 = load i32, ptr %n3456, align 4
  %2264 = load ptr, ptr %db, align 8
  %aLimit3464 = getelementptr inbounds nuw %struct.sqlite3, ptr %2264, i32 0, i32 33
  %arrayidx3465 = getelementptr inbounds [12 x i32], ptr %aLimit3464, i64 0, i64 0
  %2265 = load i32, ptr %arrayidx3465, align 4
  %cmp3466 = icmp ugt i32 %2263, %2265
  br i1 %cmp3466, label %if.then3468, label %if.end3469

if.then3468:                                      ; preds = %sw.bb3453
  br label %too_big

if.end3469:                                       ; preds = %sw.bb3453
  %2266 = load ptr, ptr %pCrsr3455, align 8
  %2267 = load i32, ptr %n3456, align 4
  %2268 = load ptr, ptr %pOut, align 8
  %call3470 = call i32 @sqlite3VdbeMemFromBtree(ptr noundef %2266, i32 noundef 0, i32 noundef %2267, ptr noundef %2268)
  store i32 %call3470, ptr %rc, align 4
  %2269 = load i32, ptr %rc, align 4
  %tobool3471 = icmp ne i32 %2269, 0
  br i1 %tobool3471, label %if.then3472, label %if.end3473

if.then3472:                                      ; preds = %if.end3469
  br label %abort_due_to_error

if.end3473:                                       ; preds = %if.end3469
  %2270 = load ptr, ptr %pOp, align 8
  %p33474 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2270, i32 0, i32 5
  %2271 = load i32, ptr %p33474, align 4
  %tobool3475 = icmp ne i32 %2271, 0
  br i1 %tobool3475, label %if.end3487, label %if.then3476

if.then3476:                                      ; preds = %if.end3473
  %2272 = load ptr, ptr %pOut, align 8
  %flags3477 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2272, i32 0, i32 1
  %2273 = load i16, ptr %flags3477, align 8
  %conv3478 = zext i16 %2273 to i32
  %and3479 = and i32 %conv3478, 4096
  %cmp3480 = icmp ne i32 %and3479, 0
  br i1 %cmp3480, label %land.lhs.true3482, label %if.end3486

land.lhs.true3482:                                ; preds = %if.then3476
  %2274 = load ptr, ptr %pOut, align 8
  %call3483 = call i32 @sqlite3VdbeMemMakeWriteable(ptr noundef %2274)
  %tobool3484 = icmp ne i32 %call3483, 0
  br i1 %tobool3484, label %if.then3485, label %if.end3486

if.then3485:                                      ; preds = %land.lhs.true3482
  br label %no_mem

if.end3486:                                       ; preds = %land.lhs.true3482, %if.then3476
  br label %if.end3487

if.end3487:                                       ; preds = %if.end3486, %if.end3473
  br label %sw.epilog5364

sw.bb3488:                                        ; preds = %for.body
  %2275 = load ptr, ptr %p.addr, align 8
  %2276 = load ptr, ptr %pOp, align 8
  %call3491 = call ptr @out2Prerelease(ptr noundef %2275, ptr noundef %2276)
  store ptr %call3491, ptr %pOut, align 8
  %2277 = load ptr, ptr %p.addr, align 8
  %apCsr3492 = getelementptr inbounds nuw %struct.Vdbe, ptr %2277, i32 0, i32 21
  %2278 = load ptr, ptr %apCsr3492, align 8
  %2279 = load ptr, ptr %pOp, align 8
  %p13493 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2279, i32 0, i32 3
  %2280 = load i32, ptr %p13493, align 4
  %idxprom3494 = sext i32 %2280 to i64
  %arrayidx3495 = getelementptr inbounds ptr, ptr %2278, i64 %idxprom3494
  %2281 = load ptr, ptr %arrayidx3495, align 8
  store ptr %2281, ptr %pC3489, align 8
  %2282 = load ptr, ptr %pC3489, align 8
  %nullRow3496 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2282, i32 0, i32 2
  %2283 = load i8, ptr %nullRow3496, align 2
  %tobool3497 = icmp ne i8 %2283, 0
  br i1 %tobool3497, label %if.then3498, label %if.else3500

if.then3498:                                      ; preds = %sw.bb3488
  %2284 = load ptr, ptr %pOut, align 8
  %flags3499 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2284, i32 0, i32 1
  store i16 1, ptr %flags3499, align 8
  br label %sw.epilog5364

if.else3500:                                      ; preds = %sw.bb3488
  %2285 = load ptr, ptr %pC3489, align 8
  %deferredMoveto3501 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2285, i32 0, i32 3
  %2286 = load i8, ptr %deferredMoveto3501, align 1
  %tobool3502 = icmp ne i8 %2286, 0
  br i1 %tobool3502, label %if.then3503, label %if.else3505

if.then3503:                                      ; preds = %if.else3500
  %2287 = load ptr, ptr %pC3489, align 8
  %movetoTarget3504 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2287, i32 0, i32 18
  %2288 = load i64, ptr %movetoTarget3504, align 8
  store i64 %2288, ptr %v3490, align 8
  br label %if.end3532

if.else3505:                                      ; preds = %if.else3500
  %2289 = load ptr, ptr %pC3489, align 8
  %eCurType3506 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2289, i32 0, i32 0
  %2290 = load i8, ptr %eCurType3506, align 8
  %conv3507 = zext i8 %2290 to i32
  %cmp3508 = icmp eq i32 %conv3507, 2
  br i1 %cmp3508, label %if.then3510, label %if.else3519

if.then3510:                                      ; preds = %if.else3505
  %2291 = load ptr, ptr %pC3489, align 8
  %uc3511 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2291, i32 0, i32 12
  %2292 = load ptr, ptr %uc3511, align 8
  %pVtab3512 = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %2292, i32 0, i32 0
  %2293 = load ptr, ptr %pVtab3512, align 8
  store ptr %2293, ptr %pVtab, align 8
  %2294 = load ptr, ptr %pVtab, align 8
  %pModule3513 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %2294, i32 0, i32 0
  %2295 = load ptr, ptr %pModule3513, align 8
  store ptr %2295, ptr %pModule, align 8
  %2296 = load ptr, ptr %pModule, align 8
  %xRowid = getelementptr inbounds nuw %struct.sqlite3_module, ptr %2296, i32 0, i32 12
  %2297 = load ptr, ptr %xRowid, align 8
  %2298 = load ptr, ptr %pC3489, align 8
  %uc3514 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2298, i32 0, i32 12
  %2299 = load ptr, ptr %uc3514, align 8
  %call3515 = call i32 %2297(ptr noundef %2299, ptr noundef %v3490)
  store i32 %call3515, ptr %rc, align 4
  %2300 = load ptr, ptr %p.addr, align 8
  %2301 = load ptr, ptr %pVtab, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %2300, ptr noundef %2301)
  %2302 = load i32, ptr %rc, align 4
  %tobool3516 = icmp ne i32 %2302, 0
  br i1 %tobool3516, label %if.then3517, label %if.end3518

if.then3517:                                      ; preds = %if.then3510
  br label %abort_due_to_error

if.end3518:                                       ; preds = %if.then3510
  br label %if.end3531

if.else3519:                                      ; preds = %if.else3505
  %2303 = load ptr, ptr %pC3489, align 8
  %call3520 = call i32 @sqlite3VdbeCursorRestore(ptr noundef %2303)
  store i32 %call3520, ptr %rc, align 4
  %2304 = load i32, ptr %rc, align 4
  %tobool3521 = icmp ne i32 %2304, 0
  br i1 %tobool3521, label %if.then3522, label %if.end3523

if.then3522:                                      ; preds = %if.else3519
  br label %abort_due_to_error

if.end3523:                                       ; preds = %if.else3519
  %2305 = load ptr, ptr %pC3489, align 8
  %nullRow3524 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2305, i32 0, i32 2
  %2306 = load i8, ptr %nullRow3524, align 2
  %tobool3525 = icmp ne i8 %2306, 0
  br i1 %tobool3525, label %if.then3526, label %if.end3528

if.then3526:                                      ; preds = %if.end3523
  %2307 = load ptr, ptr %pOut, align 8
  %flags3527 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2307, i32 0, i32 1
  store i16 1, ptr %flags3527, align 8
  br label %sw.epilog5364

if.end3528:                                       ; preds = %if.end3523
  %2308 = load ptr, ptr %pC3489, align 8
  %uc3529 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2308, i32 0, i32 12
  %2309 = load ptr, ptr %uc3529, align 8
  %call3530 = call i64 @sqlite3BtreeIntegerKey(ptr noundef %2309)
  store i64 %call3530, ptr %v3490, align 8
  br label %if.end3531

if.end3531:                                       ; preds = %if.end3528, %if.end3518
  br label %if.end3532

if.end3532:                                       ; preds = %if.end3531, %if.then3503
  br label %if.end3533

if.end3533:                                       ; preds = %if.end3532
  %2310 = load i64, ptr %v3490, align 8
  %2311 = load ptr, ptr %pOut, align 8
  %u3534 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2311, i32 0, i32 0
  store i64 %2310, ptr %u3534, align 8
  br label %sw.epilog5364

sw.bb3535:                                        ; preds = %for.body
  %2312 = load ptr, ptr %p.addr, align 8
  %apCsr3537 = getelementptr inbounds nuw %struct.Vdbe, ptr %2312, i32 0, i32 21
  %2313 = load ptr, ptr %apCsr3537, align 8
  %2314 = load ptr, ptr %pOp, align 8
  %p13538 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2314, i32 0, i32 3
  %2315 = load i32, ptr %p13538, align 4
  %idxprom3539 = sext i32 %2315 to i64
  %arrayidx3540 = getelementptr inbounds ptr, ptr %2313, i64 %idxprom3539
  %2316 = load ptr, ptr %arrayidx3540, align 8
  store ptr %2316, ptr %pC3536, align 8
  %2317 = load ptr, ptr %pC3536, align 8
  %nullRow3541 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2317, i32 0, i32 2
  store i8 1, ptr %nullRow3541, align 2
  %2318 = load ptr, ptr %pC3536, align 8
  %cacheStatus3542 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2318, i32 0, i32 9
  store i32 0, ptr %cacheStatus3542, align 8
  %2319 = load ptr, ptr %pC3536, align 8
  %eCurType3543 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2319, i32 0, i32 0
  %2320 = load i8, ptr %eCurType3543, align 8
  %conv3544 = zext i8 %2320 to i32
  %cmp3545 = icmp eq i32 %conv3544, 0
  br i1 %cmp3545, label %if.then3547, label %if.end3549

if.then3547:                                      ; preds = %sw.bb3535
  %2321 = load ptr, ptr %pC3536, align 8
  %uc3548 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2321, i32 0, i32 12
  %2322 = load ptr, ptr %uc3548, align 8
  call void @sqlite3BtreeClearCursor(ptr noundef %2322)
  br label %if.end3549

if.end3549:                                       ; preds = %if.then3547, %sw.bb3535
  br label %sw.epilog5364

sw.bb3550:                                        ; preds = %for.body, %for.body
  %2323 = load ptr, ptr %p.addr, align 8
  %apCsr3554 = getelementptr inbounds nuw %struct.Vdbe, ptr %2323, i32 0, i32 21
  %2324 = load ptr, ptr %apCsr3554, align 8
  %2325 = load ptr, ptr %pOp, align 8
  %p13555 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2325, i32 0, i32 3
  %2326 = load i32, ptr %p13555, align 4
  %idxprom3556 = sext i32 %2326 to i64
  %arrayidx3557 = getelementptr inbounds ptr, ptr %2324, i64 %idxprom3556
  %2327 = load ptr, ptr %arrayidx3557, align 8
  store ptr %2327, ptr %pC3551, align 8
  %2328 = load ptr, ptr %pC3551, align 8
  %uc3558 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2328, i32 0, i32 12
  %2329 = load ptr, ptr %uc3558, align 8
  store ptr %2329, ptr %pCrsr3552, align 8
  store i32 0, ptr %res3553, align 4
  %2330 = load ptr, ptr %pOp, align 8
  %opcode3559 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2330, i32 0, i32 0
  %2331 = load i8, ptr %opcode3559, align 8
  %conv3560 = zext i8 %2331 to i32
  %cmp3561 = icmp eq i32 %conv3560, 130
  br i1 %cmp3561, label %if.then3563, label %if.end3569

if.then3563:                                      ; preds = %sw.bb3550
  %2332 = load ptr, ptr %pC3551, align 8
  %seekResult3564 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2332, i32 0, i32 10
  store i32 -1, ptr %seekResult3564, align 4
  %2333 = load ptr, ptr %pCrsr3552, align 8
  %call3565 = call i32 @sqlite3BtreeCursorIsValidNN(ptr noundef %2333)
  %tobool3566 = icmp ne i32 %call3565, 0
  br i1 %tobool3566, label %if.then3567, label %if.end3568

if.then3567:                                      ; preds = %if.then3563
  br label %sw.epilog5364

if.end3568:                                       ; preds = %if.then3563
  br label %if.end3569

if.end3569:                                       ; preds = %if.end3568, %sw.bb3550
  %2334 = load ptr, ptr %pCrsr3552, align 8
  %call3570 = call i32 @sqlite3BtreeLast(ptr noundef %2334, ptr noundef %res3553)
  store i32 %call3570, ptr %rc, align 4
  %2335 = load i32, ptr %res3553, align 4
  %conv3571 = trunc i32 %2335 to i8
  %2336 = load ptr, ptr %pC3551, align 8
  %nullRow3572 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2336, i32 0, i32 2
  store i8 %conv3571, ptr %nullRow3572, align 2
  %2337 = load ptr, ptr %pC3551, align 8
  %deferredMoveto3573 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2337, i32 0, i32 3
  store i8 0, ptr %deferredMoveto3573, align 1
  %2338 = load ptr, ptr %pC3551, align 8
  %cacheStatus3574 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2338, i32 0, i32 9
  store i32 0, ptr %cacheStatus3574, align 8
  %2339 = load i32, ptr %rc, align 4
  %tobool3575 = icmp ne i32 %2339, 0
  br i1 %tobool3575, label %if.then3576, label %if.end3577

if.then3576:                                      ; preds = %if.end3569
  br label %abort_due_to_error

if.end3577:                                       ; preds = %if.end3569
  %2340 = load ptr, ptr %pOp, align 8
  %p23578 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2340, i32 0, i32 4
  %2341 = load i32, ptr %p23578, align 8
  %cmp3579 = icmp sgt i32 %2341, 0
  br i1 %cmp3579, label %if.then3581, label %if.end3585

if.then3581:                                      ; preds = %if.end3577
  %2342 = load i32, ptr %res3553, align 4
  %tobool3582 = icmp ne i32 %2342, 0
  br i1 %tobool3582, label %if.then3583, label %if.end3584

if.then3583:                                      ; preds = %if.then3581
  br label %jump_to_p2

if.end3584:                                       ; preds = %if.then3581
  br label %if.end3585

if.end3585:                                       ; preds = %if.end3584, %if.end3577
  br label %sw.epilog5364

sw.bb3586:                                        ; preds = %for.body
  %2343 = load ptr, ptr %p.addr, align 8
  %apCsr3590 = getelementptr inbounds nuw %struct.Vdbe, ptr %2343, i32 0, i32 21
  %2344 = load ptr, ptr %apCsr3590, align 8
  %2345 = load ptr, ptr %pOp, align 8
  %p13591 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2345, i32 0, i32 3
  %2346 = load i32, ptr %p13591, align 4
  %idxprom3592 = sext i32 %2346 to i64
  %arrayidx3593 = getelementptr inbounds ptr, ptr %2344, i64 %idxprom3592
  %2347 = load ptr, ptr %arrayidx3593, align 8
  store ptr %2347, ptr %pC3587, align 8
  %2348 = load ptr, ptr %pC3587, align 8
  %uc3594 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2348, i32 0, i32 12
  %2349 = load ptr, ptr %uc3594, align 8
  store ptr %2349, ptr %pCrsr3588, align 8
  %2350 = load ptr, ptr %pCrsr3588, align 8
  %call3595 = call i32 @sqlite3BtreeFirst(ptr noundef %2350, ptr noundef %res3589)
  store i32 %call3595, ptr %rc, align 4
  %2351 = load i32, ptr %rc, align 4
  %tobool3596 = icmp ne i32 %2351, 0
  br i1 %tobool3596, label %if.then3597, label %if.end3598

if.then3597:                                      ; preds = %sw.bb3586
  br label %abort_due_to_error

if.end3598:                                       ; preds = %sw.bb3586
  %2352 = load i32, ptr %res3589, align 4
  %cmp3599 = icmp eq i32 %2352, 0
  br i1 %cmp3599, label %if.then3601, label %if.end3613

if.then3601:                                      ; preds = %if.end3598
  %2353 = load ptr, ptr %pCrsr3588, align 8
  %call3602 = call i64 @sqlite3BtreeRowCountEst(ptr noundef %2353)
  store i64 %call3602, ptr %sz, align 8
  %2354 = load i64, ptr %sz, align 8
  %cmp3603 = icmp sge i64 %2354, 0
  br i1 %cmp3603, label %land.lhs.true3605, label %if.end3612

land.lhs.true3605:                                ; preds = %if.then3601
  %2355 = load i64, ptr %sz, align 8
  %call3606 = call signext i16 @sqlite3LogEst(i64 noundef %2355)
  %conv3607 = sext i16 %call3606 to i32
  %2356 = load ptr, ptr %pOp, align 8
  %p33608 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2356, i32 0, i32 5
  %2357 = load i32, ptr %p33608, align 4
  %cmp3609 = icmp slt i32 %conv3607, %2357
  br i1 %cmp3609, label %if.then3611, label %if.end3612

if.then3611:                                      ; preds = %land.lhs.true3605
  store i32 1, ptr %res3589, align 4
  br label %if.end3612

if.end3612:                                       ; preds = %if.then3611, %land.lhs.true3605, %if.then3601
  br label %if.end3613

if.end3613:                                       ; preds = %if.end3612, %if.end3598
  %2358 = load i32, ptr %res3589, align 4
  %tobool3614 = icmp ne i32 %2358, 0
  br i1 %tobool3614, label %if.then3615, label %if.end3616

if.then3615:                                      ; preds = %if.end3613
  br label %jump_to_p2

if.end3616:                                       ; preds = %if.end3613
  br label %sw.epilog5364

sw.bb3617:                                        ; preds = %for.body, %for.body
  %2359 = load ptr, ptr %p.addr, align 8
  %aCounter3618 = getelementptr inbounds nuw %struct.Vdbe, ptr %2359, i32 0, i32 39
  %arrayidx3619 = getelementptr inbounds [7 x i32], ptr %aCounter3618, i64 0, i64 2
  %2360 = load i32, ptr %arrayidx3619, align 8
  %inc3620 = add i32 %2360, 1
  store i32 %inc3620, ptr %arrayidx3619, align 8
  br label %sw.bb3621

sw.bb3621:                                        ; preds = %sw.bb3617, %for.body
  %2361 = load ptr, ptr %p.addr, align 8
  %apCsr3625 = getelementptr inbounds nuw %struct.Vdbe, ptr %2361, i32 0, i32 21
  %2362 = load ptr, ptr %apCsr3625, align 8
  %2363 = load ptr, ptr %pOp, align 8
  %p13626 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2363, i32 0, i32 3
  %2364 = load i32, ptr %p13626, align 4
  %idxprom3627 = sext i32 %2364 to i64
  %arrayidx3628 = getelementptr inbounds ptr, ptr %2362, i64 %idxprom3627
  %2365 = load ptr, ptr %arrayidx3628, align 8
  store ptr %2365, ptr %pC3622, align 8
  store i32 1, ptr %res3624, align 4
  %2366 = load ptr, ptr %pC3622, align 8
  %eCurType3629 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2366, i32 0, i32 0
  %2367 = load i8, ptr %eCurType3629, align 8
  %conv3630 = zext i8 %2367 to i32
  %cmp3631 = icmp eq i32 %conv3630, 1
  br i1 %cmp3631, label %if.then3633, label %if.else3635

if.then3633:                                      ; preds = %sw.bb3621
  %2368 = load ptr, ptr %pC3622, align 8
  %call3634 = call i32 @sqlite3VdbeSorterRewind(ptr noundef %2368, ptr noundef %res3624)
  store i32 %call3634, ptr %rc, align 4
  br label %if.end3640

if.else3635:                                      ; preds = %sw.bb3621
  %2369 = load ptr, ptr %pC3622, align 8
  %uc3636 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2369, i32 0, i32 12
  %2370 = load ptr, ptr %uc3636, align 8
  store ptr %2370, ptr %pCrsr3623, align 8
  %2371 = load ptr, ptr %pCrsr3623, align 8
  %call3637 = call i32 @sqlite3BtreeFirst(ptr noundef %2371, ptr noundef %res3624)
  store i32 %call3637, ptr %rc, align 4
  %2372 = load ptr, ptr %pC3622, align 8
  %deferredMoveto3638 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2372, i32 0, i32 3
  store i8 0, ptr %deferredMoveto3638, align 1
  %2373 = load ptr, ptr %pC3622, align 8
  %cacheStatus3639 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2373, i32 0, i32 9
  store i32 0, ptr %cacheStatus3639, align 8
  br label %if.end3640

if.end3640:                                       ; preds = %if.else3635, %if.then3633
  %2374 = load i32, ptr %rc, align 4
  %tobool3641 = icmp ne i32 %2374, 0
  br i1 %tobool3641, label %if.then3642, label %if.end3643

if.then3642:                                      ; preds = %if.end3640
  br label %abort_due_to_error

if.end3643:                                       ; preds = %if.end3640
  %2375 = load i32, ptr %res3624, align 4
  %conv3644 = trunc i32 %2375 to i8
  %2376 = load ptr, ptr %pC3622, align 8
  %nullRow3645 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2376, i32 0, i32 2
  store i8 %conv3644, ptr %nullRow3645, align 2
  %2377 = load i32, ptr %res3624, align 4
  %tobool3646 = icmp ne i32 %2377, 0
  br i1 %tobool3646, label %if.then3647, label %if.end3648

if.then3647:                                      ; preds = %if.end3643
  br label %jump_to_p2

if.end3648:                                       ; preds = %if.end3643
  br label %sw.epilog5364

sw.bb3649:                                        ; preds = %for.body
  %2378 = load ptr, ptr %p.addr, align 8
  %apCsr3651 = getelementptr inbounds nuw %struct.Vdbe, ptr %2378, i32 0, i32 21
  %2379 = load ptr, ptr %apCsr3651, align 8
  %2380 = load ptr, ptr %pOp, align 8
  %p13652 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2380, i32 0, i32 3
  %2381 = load i32, ptr %p13652, align 4
  %idxprom3653 = sext i32 %2381 to i64
  %arrayidx3654 = getelementptr inbounds ptr, ptr %2379, i64 %idxprom3653
  %2382 = load ptr, ptr %arrayidx3654, align 8
  store ptr %2382, ptr %pC3650, align 8
  %2383 = load ptr, ptr %db, align 8
  %2384 = load ptr, ptr %pC3650, align 8
  %call3655 = call i32 @sqlite3VdbeSorterNext(ptr noundef %2383, ptr noundef %2384)
  store i32 %call3655, ptr %rc, align 4
  br label %next_tail

sw.bb3656:                                        ; preds = %for.body, %for.body
  %2385 = load ptr, ptr %p.addr, align 8
  %apCsr3657 = getelementptr inbounds nuw %struct.Vdbe, ptr %2385, i32 0, i32 21
  %2386 = load ptr, ptr %apCsr3657, align 8
  %2387 = load ptr, ptr %pOp, align 8
  %p13658 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2387, i32 0, i32 3
  %2388 = load i32, ptr %p13658, align 4
  %idxprom3659 = sext i32 %2388 to i64
  %arrayidx3660 = getelementptr inbounds ptr, ptr %2386, i64 %idxprom3659
  %2389 = load ptr, ptr %arrayidx3660, align 8
  store ptr %2389, ptr %pC3650, align 8
  %2390 = load ptr, ptr %pOp, align 8
  %p43661 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2390, i32 0, i32 6
  %2391 = load ptr, ptr %p43661, align 8
  %2392 = load ptr, ptr %pC3650, align 8
  %uc3662 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2392, i32 0, i32 12
  %2393 = load ptr, ptr %uc3662, align 8
  %2394 = load ptr, ptr %pOp, align 8
  %p33663 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2394, i32 0, i32 5
  %2395 = load i32, ptr %p33663, align 4
  %call3664 = call i32 %2391(ptr noundef %2393, i32 noundef %2395)
  store i32 %call3664, ptr %rc, align 4
  br label %next_tail

next_tail:                                        ; preds = %sw.bb3656, %sw.bb3649
  %2396 = load ptr, ptr %pC3650, align 8
  %cacheStatus3665 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2396, i32 0, i32 9
  store i32 0, ptr %cacheStatus3665, align 8
  %2397 = load i32, ptr %rc, align 4
  %cmp3666 = icmp eq i32 %2397, 0
  br i1 %cmp3666, label %if.then3668, label %if.end3675

if.then3668:                                      ; preds = %next_tail
  %2398 = load ptr, ptr %pC3650, align 8
  %nullRow3669 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2398, i32 0, i32 2
  store i8 0, ptr %nullRow3669, align 2
  %2399 = load ptr, ptr %p.addr, align 8
  %aCounter3670 = getelementptr inbounds nuw %struct.Vdbe, ptr %2399, i32 0, i32 39
  %2400 = load ptr, ptr %pOp, align 8
  %p53671 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2400, i32 0, i32 2
  %2401 = load i16, ptr %p53671, align 2
  %idxprom3672 = zext i16 %2401 to i64
  %arrayidx3673 = getelementptr inbounds nuw [7 x i32], ptr %aCounter3670, i64 0, i64 %idxprom3672
  %2402 = load i32, ptr %arrayidx3673, align 4
  %inc3674 = add i32 %2402, 1
  store i32 %inc3674, ptr %arrayidx3673, align 4
  br label %jump_to_p2_and_check_for_interrupt

if.end3675:                                       ; preds = %next_tail
  %2403 = load i32, ptr %rc, align 4
  %cmp3676 = icmp ne i32 %2403, 101
  br i1 %cmp3676, label %if.then3678, label %if.end3679

if.then3678:                                      ; preds = %if.end3675
  br label %abort_due_to_error

if.end3679:                                       ; preds = %if.end3675
  store i32 0, ptr %rc, align 4
  %2404 = load ptr, ptr %pC3650, align 8
  %nullRow3680 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2404, i32 0, i32 2
  store i8 1, ptr %nullRow3680, align 2
  br label %check_for_interrupt

sw.bb3681:                                        ; preds = %for.body, %for.body
  %2405 = load ptr, ptr %p.addr, align 8
  %apCsr3684 = getelementptr inbounds nuw %struct.Vdbe, ptr %2405, i32 0, i32 21
  %2406 = load ptr, ptr %apCsr3684, align 8
  %2407 = load ptr, ptr %pOp, align 8
  %p13685 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2407, i32 0, i32 3
  %2408 = load i32, ptr %p13685, align 4
  %idxprom3686 = sext i32 %2408 to i64
  %arrayidx3687 = getelementptr inbounds ptr, ptr %2406, i64 %idxprom3686
  %2409 = load ptr, ptr %arrayidx3687, align 8
  store ptr %2409, ptr %pC3682, align 8
  %2410 = load ptr, ptr %aMem, align 8
  %2411 = load ptr, ptr %pOp, align 8
  %p23688 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2411, i32 0, i32 4
  %2412 = load i32, ptr %p23688, align 8
  %idxprom3689 = sext i32 %2412 to i64
  %arrayidx3690 = getelementptr inbounds %struct.sqlite3_value, ptr %2410, i64 %idxprom3689
  store ptr %arrayidx3690, ptr %pIn2, align 8
  %2413 = load ptr, ptr %pOp, align 8
  %p53691 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2413, i32 0, i32 2
  %2414 = load i16, ptr %p53691, align 2
  %conv3692 = zext i16 %2414 to i32
  %and3693 = and i32 %conv3692, 1
  %tobool3694 = icmp ne i32 %and3693, 0
  br i1 %tobool3694, label %if.then3695, label %if.end3698

if.then3695:                                      ; preds = %sw.bb3681
  %2415 = load ptr, ptr %p.addr, align 8
  %nChange3696 = getelementptr inbounds nuw %struct.Vdbe, ptr %2415, i32 0, i32 12
  %2416 = load i32, ptr %nChange3696, align 4
  %inc3697 = add nsw i32 %2416, 1
  store i32 %inc3697, ptr %nChange3696, align 4
  br label %if.end3698

if.end3698:                                       ; preds = %if.then3695, %sw.bb3681
  %2417 = load ptr, ptr %pIn2, align 8
  %flags3699 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2417, i32 0, i32 1
  %2418 = load i16, ptr %flags3699, align 8
  %conv3700 = zext i16 %2418 to i32
  %and3701 = and i32 %conv3700, 16384
  %tobool3702 = icmp ne i32 %and3701, 0
  br i1 %tobool3702, label %cond.true3703, label %cond.false3705

cond.true3703:                                    ; preds = %if.end3698
  %2419 = load ptr, ptr %pIn2, align 8
  %call3704 = call i32 @sqlite3VdbeMemExpandBlob(ptr noundef %2419)
  br label %cond.end3706

cond.false3705:                                   ; preds = %if.end3698
  br label %cond.end3706

cond.end3706:                                     ; preds = %cond.false3705, %cond.true3703
  %cond3707 = phi i32 [ %call3704, %cond.true3703 ], [ 0, %cond.false3705 ]
  store i32 %cond3707, ptr %rc, align 4
  %2420 = load i32, ptr %rc, align 4
  %tobool3708 = icmp ne i32 %2420, 0
  br i1 %tobool3708, label %if.then3709, label %if.end3710

if.then3709:                                      ; preds = %cond.end3706
  br label %abort_due_to_error

if.end3710:                                       ; preds = %cond.end3706
  %2421 = load ptr, ptr %pOp, align 8
  %opcode3711 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2421, i32 0, i32 0
  %2422 = load i8, ptr %opcode3711, align 8
  %conv3712 = zext i8 %2422 to i32
  %cmp3713 = icmp eq i32 %conv3712, 131
  br i1 %cmp3713, label %if.then3715, label %if.else3717

if.then3715:                                      ; preds = %if.end3710
  %2423 = load ptr, ptr %pC3682, align 8
  %2424 = load ptr, ptr %pIn2, align 8
  %call3716 = call i32 @sqlite3VdbeSorterWrite(ptr noundef %2423, ptr noundef %2424)
  store i32 %call3716, ptr %rc, align 4
  br label %if.end3744

if.else3717:                                      ; preds = %if.end3710
  %2425 = load ptr, ptr %pIn2, align 8
  %n3718 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2425, i32 0, i32 4
  %2426 = load i32, ptr %n3718, align 4
  %conv3719 = sext i32 %2426 to i64
  %nKey3720 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3683, i32 0, i32 1
  store i64 %conv3719, ptr %nKey3720, align 8
  %2427 = load ptr, ptr %pIn2, align 8
  %z3721 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2427, i32 0, i32 5
  %2428 = load ptr, ptr %z3721, align 8
  %pKey3722 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3683, i32 0, i32 0
  store ptr %2428, ptr %pKey3722, align 8
  %2429 = load ptr, ptr %aMem, align 8
  %2430 = load ptr, ptr %pOp, align 8
  %p33723 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2430, i32 0, i32 5
  %2431 = load i32, ptr %p33723, align 4
  %idx.ext3724 = sext i32 %2431 to i64
  %add.ptr3725 = getelementptr inbounds %struct.sqlite3_value, ptr %2429, i64 %idx.ext3724
  %aMem3726 = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3683, i32 0, i32 3
  store ptr %add.ptr3725, ptr %aMem3726, align 8
  %2432 = load ptr, ptr %pOp, align 8
  %p43727 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2432, i32 0, i32 6
  %2433 = load i32, ptr %p43727, align 8
  %conv3728 = trunc i32 %2433 to i16
  %nMem = getelementptr inbounds nuw %struct.BtreePayload, ptr %x3683, i32 0, i32 4
  store i16 %conv3728, ptr %nMem, align 8
  %2434 = load ptr, ptr %pC3682, align 8
  %uc3729 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2434, i32 0, i32 12
  %2435 = load ptr, ptr %uc3729, align 8
  %2436 = load ptr, ptr %pOp, align 8
  %p53730 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2436, i32 0, i32 2
  %2437 = load i16, ptr %p53730, align 2
  %conv3731 = zext i16 %2437 to i32
  %and3732 = and i32 %conv3731, 10
  %2438 = load ptr, ptr %pOp, align 8
  %p53733 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2438, i32 0, i32 2
  %2439 = load i16, ptr %p53733, align 2
  %conv3734 = zext i16 %2439 to i32
  %and3735 = and i32 %conv3734, 16
  %tobool3736 = icmp ne i32 %and3735, 0
  br i1 %tobool3736, label %cond.true3737, label %cond.false3739

cond.true3737:                                    ; preds = %if.else3717
  %2440 = load ptr, ptr %pC3682, align 8
  %seekResult3738 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2440, i32 0, i32 10
  %2441 = load i32, ptr %seekResult3738, align 4
  br label %cond.end3740

cond.false3739:                                   ; preds = %if.else3717
  br label %cond.end3740

cond.end3740:                                     ; preds = %cond.false3739, %cond.true3737
  %cond3741 = phi i32 [ %2441, %cond.true3737 ], [ 0, %cond.false3739 ]
  %call3742 = call i32 @sqlite3BtreeInsert(ptr noundef %2435, ptr noundef %x3683, i32 noundef %and3732, i32 noundef %cond3741)
  store i32 %call3742, ptr %rc, align 4
  %2442 = load ptr, ptr %pC3682, align 8
  %cacheStatus3743 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2442, i32 0, i32 9
  store i32 0, ptr %cacheStatus3743, align 8
  br label %if.end3744

if.end3744:                                       ; preds = %cond.end3740, %if.then3715
  %2443 = load i32, ptr %rc, align 4
  %tobool3745 = icmp ne i32 %2443, 0
  br i1 %tobool3745, label %if.then3746, label %if.end3747

if.then3746:                                      ; preds = %if.end3744
  br label %abort_due_to_error

if.end3747:                                       ; preds = %if.end3744
  br label %sw.epilog5364

sw.bb3748:                                        ; preds = %for.body
  %2444 = load ptr, ptr %p.addr, align 8
  %apCsr3753 = getelementptr inbounds nuw %struct.Vdbe, ptr %2444, i32 0, i32 21
  %2445 = load ptr, ptr %apCsr3753, align 8
  %2446 = load ptr, ptr %pOp, align 8
  %p13754 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2446, i32 0, i32 3
  %2447 = load i32, ptr %p13754, align 4
  %idxprom3755 = sext i32 %2447 to i64
  %arrayidx3756 = getelementptr inbounds ptr, ptr %2445, i64 %idxprom3755
  %2448 = load ptr, ptr %arrayidx3756, align 8
  store ptr %2448, ptr %pC3749, align 8
  %2449 = load ptr, ptr %pC3749, align 8
  %uc3757 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2449, i32 0, i32 12
  %2450 = load ptr, ptr %uc3757, align 8
  store ptr %2450, ptr %pCrsr3750, align 8
  %2451 = load ptr, ptr %pC3749, align 8
  %pKeyInfo3758 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2451, i32 0, i32 13
  %2452 = load ptr, ptr %pKeyInfo3758, align 8
  %pKeyInfo3759 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3752, i32 0, i32 0
  store ptr %2452, ptr %pKeyInfo3759, align 8
  %2453 = load ptr, ptr %pOp, align 8
  %p33760 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2453, i32 0, i32 5
  %2454 = load i32, ptr %p33760, align 4
  %conv3761 = trunc i32 %2454 to i16
  %nField3762 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3752, i32 0, i32 2
  store i16 %conv3761, ptr %nField3762, align 8
  %default_rc3763 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3752, i32 0, i32 3
  store i8 0, ptr %default_rc3763, align 2
  %2455 = load ptr, ptr %aMem, align 8
  %2456 = load ptr, ptr %pOp, align 8
  %p23764 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2456, i32 0, i32 4
  %2457 = load i32, ptr %p23764, align 8
  %idxprom3765 = sext i32 %2457 to i64
  %arrayidx3766 = getelementptr inbounds %struct.sqlite3_value, ptr %2455, i64 %idxprom3765
  %aMem3767 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3752, i32 0, i32 1
  store ptr %arrayidx3766, ptr %aMem3767, align 8
  %2458 = load ptr, ptr %pCrsr3750, align 8
  %call3768 = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %2458, ptr noundef %r3752, i64 noundef 0, i32 noundef 0, ptr noundef %res3751)
  store i32 %call3768, ptr %rc, align 4
  %2459 = load i32, ptr %rc, align 4
  %tobool3769 = icmp ne i32 %2459, 0
  br i1 %tobool3769, label %if.then3770, label %if.end3771

if.then3770:                                      ; preds = %sw.bb3748
  br label %abort_due_to_error

if.end3771:                                       ; preds = %sw.bb3748
  %2460 = load i32, ptr %res3751, align 4
  %cmp3772 = icmp eq i32 %2460, 0
  br i1 %cmp3772, label %if.then3774, label %if.end3779

if.then3774:                                      ; preds = %if.end3771
  %2461 = load ptr, ptr %pCrsr3750, align 8
  %call3775 = call i32 @sqlite3BtreeDelete(ptr noundef %2461, i8 noundef zeroext 4)
  store i32 %call3775, ptr %rc, align 4
  %2462 = load i32, ptr %rc, align 4
  %tobool3776 = icmp ne i32 %2462, 0
  br i1 %tobool3776, label %if.then3777, label %if.end3778

if.then3777:                                      ; preds = %if.then3774
  br label %abort_due_to_error

if.end3778:                                       ; preds = %if.then3774
  br label %if.end3779

if.end3779:                                       ; preds = %if.end3778, %if.end3771
  %2463 = load ptr, ptr %pC3749, align 8
  %cacheStatus3780 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2463, i32 0, i32 9
  store i32 0, ptr %cacheStatus3780, align 8
  %2464 = load ptr, ptr %pC3749, align 8
  %seekResult3781 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2464, i32 0, i32 10
  store i32 0, ptr %seekResult3781, align 4
  br label %sw.epilog5364

sw.bb3782:                                        ; preds = %for.body, %for.body
  %2465 = load ptr, ptr %p.addr, align 8
  %apCsr3784 = getelementptr inbounds nuw %struct.Vdbe, ptr %2465, i32 0, i32 21
  %2466 = load ptr, ptr %apCsr3784, align 8
  %2467 = load ptr, ptr %pOp, align 8
  %p13785 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2467, i32 0, i32 3
  %2468 = load i32, ptr %p13785, align 4
  %idxprom3786 = sext i32 %2468 to i64
  %arrayidx3787 = getelementptr inbounds ptr, ptr %2466, i64 %idxprom3786
  %2469 = load ptr, ptr %arrayidx3787, align 8
  store ptr %2469, ptr %pC3783, align 8
  %2470 = load ptr, ptr %pC3783, align 8
  %call3788 = call i32 @sqlite3VdbeCursorRestore(ptr noundef %2470)
  store i32 %call3788, ptr %rc, align 4
  %2471 = load i32, ptr %rc, align 4
  %cmp3789 = icmp ne i32 %2471, 0
  br i1 %cmp3789, label %if.then3791, label %if.end3792

if.then3791:                                      ; preds = %sw.bb3782
  br label %abort_due_to_error

if.end3792:                                       ; preds = %sw.bb3782
  %2472 = load ptr, ptr %pC3783, align 8
  %nullRow3793 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2472, i32 0, i32 2
  %2473 = load i8, ptr %nullRow3793, align 2
  %tobool3794 = icmp ne i8 %2473, 0
  br i1 %tobool3794, label %if.else3819, label %if.then3795

if.then3795:                                      ; preds = %if.end3792
  store i64 0, ptr %rowid, align 8
  %2474 = load ptr, ptr %db, align 8
  %2475 = load ptr, ptr %pC3783, align 8
  %uc3796 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2475, i32 0, i32 12
  %2476 = load ptr, ptr %uc3796, align 8
  %call3797 = call i32 @sqlite3VdbeIdxRowid(ptr noundef %2474, ptr noundef %2476, ptr noundef %rowid)
  store i32 %call3797, ptr %rc, align 4
  %2477 = load i32, ptr %rc, align 4
  %cmp3798 = icmp ne i32 %2477, 0
  br i1 %cmp3798, label %if.then3800, label %if.end3801

if.then3800:                                      ; preds = %if.then3795
  br label %abort_due_to_error

if.end3801:                                       ; preds = %if.then3795
  %2478 = load ptr, ptr %pOp, align 8
  %opcode3802 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2478, i32 0, i32 0
  %2479 = load i8, ptr %opcode3802, align 8
  %conv3803 = zext i8 %2479 to i32
  %cmp3804 = icmp eq i32 %conv3803, 134
  br i1 %cmp3804, label %if.then3806, label %if.else3815

if.then3806:                                      ; preds = %if.end3801
  %2480 = load ptr, ptr %p.addr, align 8
  %apCsr3807 = getelementptr inbounds nuw %struct.Vdbe, ptr %2480, i32 0, i32 21
  %2481 = load ptr, ptr %apCsr3807, align 8
  %2482 = load ptr, ptr %pOp, align 8
  %p33808 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2482, i32 0, i32 5
  %2483 = load i32, ptr %p33808, align 4
  %idxprom3809 = sext i32 %2483 to i64
  %arrayidx3810 = getelementptr inbounds ptr, ptr %2481, i64 %idxprom3809
  %2484 = load ptr, ptr %arrayidx3810, align 8
  store ptr %2484, ptr %pTabCur, align 8
  %2485 = load ptr, ptr %pTabCur, align 8
  %nullRow3811 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2485, i32 0, i32 2
  store i8 0, ptr %nullRow3811, align 2
  %2486 = load i64, ptr %rowid, align 8
  %2487 = load ptr, ptr %pTabCur, align 8
  %movetoTarget3812 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2487, i32 0, i32 18
  store i64 %2486, ptr %movetoTarget3812, align 8
  %2488 = load ptr, ptr %pTabCur, align 8
  %deferredMoveto3813 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2488, i32 0, i32 3
  store i8 1, ptr %deferredMoveto3813, align 1
  %2489 = load ptr, ptr %pOp, align 8
  %p43814 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2489, i32 0, i32 6
  %2490 = load ptr, ptr %p43814, align 8
  %2491 = load ptr, ptr %pTabCur, align 8
  %aAltMap = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2491, i32 0, i32 8
  store ptr %2490, ptr %aAltMap, align 8
  %2492 = load ptr, ptr %pC3783, align 8
  %2493 = load ptr, ptr %pTabCur, align 8
  %pAltCursor = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2493, i32 0, i32 11
  store ptr %2492, ptr %pAltCursor, align 8
  br label %if.end3818

if.else3815:                                      ; preds = %if.end3801
  %2494 = load ptr, ptr %p.addr, align 8
  %2495 = load ptr, ptr %pOp, align 8
  %call3816 = call ptr @out2Prerelease(ptr noundef %2494, ptr noundef %2495)
  store ptr %call3816, ptr %pOut, align 8
  %2496 = load i64, ptr %rowid, align 8
  %2497 = load ptr, ptr %pOut, align 8
  %u3817 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2497, i32 0, i32 0
  store i64 %2496, ptr %u3817, align 8
  br label %if.end3818

if.end3818:                                       ; preds = %if.else3815, %if.then3806
  br label %if.end3823

if.else3819:                                      ; preds = %if.end3792
  %2498 = load ptr, ptr %aMem, align 8
  %2499 = load ptr, ptr %pOp, align 8
  %p23820 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2499, i32 0, i32 4
  %2500 = load i32, ptr %p23820, align 8
  %idxprom3821 = sext i32 %2500 to i64
  %arrayidx3822 = getelementptr inbounds %struct.sqlite3_value, ptr %2498, i64 %idxprom3821
  call void @sqlite3VdbeMemSetNull(ptr noundef %arrayidx3822)
  br label %if.end3823

if.end3823:                                       ; preds = %if.else3819, %if.end3818
  br label %sw.epilog5364

sw.bb3824:                                        ; preds = %for.body, %for.body, %for.body, %for.body
  %2501 = load ptr, ptr %p.addr, align 8
  %apCsr3828 = getelementptr inbounds nuw %struct.Vdbe, ptr %2501, i32 0, i32 21
  %2502 = load ptr, ptr %apCsr3828, align 8
  %2503 = load ptr, ptr %pOp, align 8
  %p13829 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2503, i32 0, i32 3
  %2504 = load i32, ptr %p13829, align 4
  %idxprom3830 = sext i32 %2504 to i64
  %arrayidx3831 = getelementptr inbounds ptr, ptr %2502, i64 %idxprom3830
  %2505 = load ptr, ptr %arrayidx3831, align 8
  store ptr %2505, ptr %pC3825, align 8
  %2506 = load ptr, ptr %pC3825, align 8
  %pKeyInfo3832 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2506, i32 0, i32 13
  %2507 = load ptr, ptr %pKeyInfo3832, align 8
  %pKeyInfo3833 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3827, i32 0, i32 0
  store ptr %2507, ptr %pKeyInfo3833, align 8
  %2508 = load ptr, ptr %pOp, align 8
  %p43834 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2508, i32 0, i32 6
  %2509 = load i32, ptr %p43834, align 8
  %conv3835 = trunc i32 %2509 to i16
  %nField3836 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3827, i32 0, i32 2
  store i16 %conv3835, ptr %nField3836, align 8
  %2510 = load ptr, ptr %pOp, align 8
  %opcode3837 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2510, i32 0, i32 0
  %2511 = load i8, ptr %opcode3837, align 8
  %conv3838 = zext i8 %2511 to i32
  %cmp3839 = icmp slt i32 %conv3838, 39
  br i1 %cmp3839, label %if.then3841, label %if.else3843

if.then3841:                                      ; preds = %sw.bb3824
  %default_rc3842 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3827, i32 0, i32 3
  store i8 -1, ptr %default_rc3842, align 2
  br label %if.end3845

if.else3843:                                      ; preds = %sw.bb3824
  %default_rc3844 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3827, i32 0, i32 3
  store i8 0, ptr %default_rc3844, align 2
  br label %if.end3845

if.end3845:                                       ; preds = %if.else3843, %if.then3841
  %2512 = load ptr, ptr %aMem, align 8
  %2513 = load ptr, ptr %pOp, align 8
  %p33846 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2513, i32 0, i32 5
  %2514 = load i32, ptr %p33846, align 4
  %idxprom3847 = sext i32 %2514 to i64
  %arrayidx3848 = getelementptr inbounds %struct.sqlite3_value, ptr %2512, i64 %idxprom3847
  %aMem3849 = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %r3827, i32 0, i32 1
  store ptr %arrayidx3848, ptr %aMem3849, align 8
  store i32 0, ptr %res3826, align 4
  %2515 = load ptr, ptr %db, align 8
  %2516 = load ptr, ptr %pC3825, align 8
  %call3850 = call i32 @sqlite3VdbeIdxKeyCompare(ptr noundef %2515, ptr noundef %2516, ptr noundef %r3827, ptr noundef %res3826)
  store i32 %call3850, ptr %rc, align 4
  %2517 = load ptr, ptr %pOp, align 8
  %opcode3851 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2517, i32 0, i32 0
  %2518 = load i8, ptr %opcode3851, align 8
  %conv3852 = zext i8 %2518 to i32
  %and3853 = and i32 %conv3852, 1
  %cmp3854 = icmp eq i32 %and3853, 1
  br i1 %cmp3854, label %if.then3856, label %if.else3858

if.then3856:                                      ; preds = %if.end3845
  %2519 = load i32, ptr %res3826, align 4
  %sub3857 = sub nsw i32 0, %2519
  store i32 %sub3857, ptr %res3826, align 4
  br label %if.end3860

if.else3858:                                      ; preds = %if.end3845
  %2520 = load i32, ptr %res3826, align 4
  %inc3859 = add nsw i32 %2520, 1
  store i32 %inc3859, ptr %res3826, align 4
  br label %if.end3860

if.end3860:                                       ; preds = %if.else3858, %if.then3856
  %2521 = load i32, ptr %rc, align 4
  %tobool3861 = icmp ne i32 %2521, 0
  br i1 %tobool3861, label %if.then3862, label %if.end3863

if.then3862:                                      ; preds = %if.end3860
  br label %abort_due_to_error

if.end3863:                                       ; preds = %if.end3860
  %2522 = load i32, ptr %res3826, align 4
  %cmp3864 = icmp sgt i32 %2522, 0
  br i1 %cmp3864, label %if.then3866, label %if.end3867

if.then3866:                                      ; preds = %if.end3863
  br label %jump_to_p2

if.end3867:                                       ; preds = %if.end3863
  br label %sw.epilog5364

sw.bb3868:                                        ; preds = %for.body
  %2523 = load ptr, ptr %p.addr, align 8
  %2524 = load ptr, ptr %pOp, align 8
  %call3870 = call ptr @out2Prerelease(ptr noundef %2523, ptr noundef %2524)
  store ptr %call3870, ptr %pOut, align 8
  %2525 = load ptr, ptr %pOut, align 8
  %flags3871 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2525, i32 0, i32 1
  store i16 1, ptr %flags3871, align 8
  %2526 = load ptr, ptr %db, align 8
  %nVdbeRead3872 = getelementptr inbounds nuw %struct.sqlite3, ptr %2526, i32 0, i32 37
  %2527 = load i32, ptr %nVdbeRead3872, align 4
  %2528 = load ptr, ptr %db, align 8
  %nVDestroy = getelementptr inbounds nuw %struct.sqlite3, ptr %2528, i32 0, i32 40
  %2529 = load i32, ptr %nVDestroy, align 8
  %add3873 = add nsw i32 %2529, 1
  %cmp3874 = icmp sgt i32 %2527, %add3873
  br i1 %cmp3874, label %if.then3876, label %if.else3878

if.then3876:                                      ; preds = %sw.bb3868
  store i32 6, ptr %rc, align 4
  %2530 = load ptr, ptr %p.addr, align 8
  %errorAction3877 = getelementptr inbounds nuw %struct.Vdbe, ptr %2530, i32 0, i32 32
  store i8 2, ptr %errorAction3877, align 2
  br label %abort_due_to_error

if.else3878:                                      ; preds = %sw.bb3868
  %2531 = load ptr, ptr %pOp, align 8
  %p33879 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2531, i32 0, i32 5
  %2532 = load i32, ptr %p33879, align 4
  store i32 %2532, ptr %iDb3869, align 4
  store i32 0, ptr %iMoved, align 4
  %2533 = load ptr, ptr %db, align 8
  %aDb3880 = getelementptr inbounds nuw %struct.sqlite3, ptr %2533, i32 0, i32 4
  %2534 = load ptr, ptr %aDb3880, align 8
  %2535 = load i32, ptr %iDb3869, align 4
  %idxprom3881 = sext i32 %2535 to i64
  %arrayidx3882 = getelementptr inbounds %struct.Db, ptr %2534, i64 %idxprom3881
  %pBt3883 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx3882, i32 0, i32 1
  %2536 = load ptr, ptr %pBt3883, align 8
  %2537 = load ptr, ptr %pOp, align 8
  %p13884 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2537, i32 0, i32 3
  %2538 = load i32, ptr %p13884, align 4
  %call3885 = call i32 @sqlite3BtreeDropTable(ptr noundef %2536, i32 noundef %2538, ptr noundef %iMoved)
  store i32 %call3885, ptr %rc, align 4
  %2539 = load ptr, ptr %pOut, align 8
  %flags3886 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2539, i32 0, i32 1
  store i16 4, ptr %flags3886, align 8
  %2540 = load i32, ptr %iMoved, align 4
  %conv3887 = sext i32 %2540 to i64
  %2541 = load ptr, ptr %pOut, align 8
  %u3888 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2541, i32 0, i32 0
  store i64 %conv3887, ptr %u3888, align 8
  %2542 = load i32, ptr %rc, align 4
  %tobool3889 = icmp ne i32 %2542, 0
  br i1 %tobool3889, label %if.then3890, label %if.end3891

if.then3890:                                      ; preds = %if.else3878
  br label %abort_due_to_error

if.end3891:                                       ; preds = %if.else3878
  %2543 = load i32, ptr %iMoved, align 4
  %cmp3892 = icmp ne i32 %2543, 0
  br i1 %cmp3892, label %if.then3894, label %if.end3898

if.then3894:                                      ; preds = %if.end3891
  %2544 = load ptr, ptr %db, align 8
  %2545 = load i32, ptr %iDb3869, align 4
  %2546 = load i32, ptr %iMoved, align 4
  %2547 = load ptr, ptr %pOp, align 8
  %p13895 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2547, i32 0, i32 3
  %2548 = load i32, ptr %p13895, align 4
  call void @sqlite3RootPageMoved(ptr noundef %2544, i32 noundef %2545, i32 noundef %2546, i32 noundef %2548)
  %2549 = load i32, ptr %iDb3869, align 4
  %add3896 = add nsw i32 %2549, 1
  %conv3897 = trunc i32 %add3896 to i8
  store i8 %conv3897, ptr %resetSchemaOnFault, align 1
  br label %if.end3898

if.end3898:                                       ; preds = %if.then3894, %if.end3891
  br label %if.end3899

if.end3899:                                       ; preds = %if.end3898
  br label %sw.epilog5364

sw.bb3900:                                        ; preds = %for.body
  store i32 0, ptr %nChange3901, align 4
  %2550 = load ptr, ptr %db, align 8
  %aDb3902 = getelementptr inbounds nuw %struct.sqlite3, ptr %2550, i32 0, i32 4
  %2551 = load ptr, ptr %aDb3902, align 8
  %2552 = load ptr, ptr %pOp, align 8
  %p23903 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2552, i32 0, i32 4
  %2553 = load i32, ptr %p23903, align 8
  %idxprom3904 = sext i32 %2553 to i64
  %arrayidx3905 = getelementptr inbounds %struct.Db, ptr %2551, i64 %idxprom3904
  %pBt3906 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx3905, i32 0, i32 1
  %2554 = load ptr, ptr %pBt3906, align 8
  %2555 = load ptr, ptr %pOp, align 8
  %p13907 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2555, i32 0, i32 3
  %2556 = load i32, ptr %p13907, align 4
  %2557 = load ptr, ptr %pOp, align 8
  %p33908 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2557, i32 0, i32 5
  %2558 = load i32, ptr %p33908, align 4
  %tobool3909 = icmp ne i32 %2558, 0
  br i1 %tobool3909, label %cond.true3910, label %cond.false3911

cond.true3910:                                    ; preds = %sw.bb3900
  br label %cond.end3912

cond.false3911:                                   ; preds = %sw.bb3900
  br label %cond.end3912

cond.end3912:                                     ; preds = %cond.false3911, %cond.true3910
  %cond3913 = phi ptr [ %nChange3901, %cond.true3910 ], [ null, %cond.false3911 ]
  %call3914 = call i32 @sqlite3BtreeClearTable(ptr noundef %2554, i32 noundef %2556, ptr noundef %cond3913)
  store i32 %call3914, ptr %rc, align 4
  %2559 = load ptr, ptr %pOp, align 8
  %p33915 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2559, i32 0, i32 5
  %2560 = load i32, ptr %p33915, align 4
  %tobool3916 = icmp ne i32 %2560, 0
  br i1 %tobool3916, label %if.then3917, label %if.end3931

if.then3917:                                      ; preds = %cond.end3912
  %2561 = load i32, ptr %nChange3901, align 4
  %2562 = load ptr, ptr %p.addr, align 8
  %nChange3918 = getelementptr inbounds nuw %struct.Vdbe, ptr %2562, i32 0, i32 12
  %2563 = load i32, ptr %nChange3918, align 4
  %add3919 = add nsw i32 %2563, %2561
  store i32 %add3919, ptr %nChange3918, align 4
  %2564 = load ptr, ptr %pOp, align 8
  %p33920 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2564, i32 0, i32 5
  %2565 = load i32, ptr %p33920, align 4
  %cmp3921 = icmp sgt i32 %2565, 0
  br i1 %cmp3921, label %if.then3923, label %if.end3930

if.then3923:                                      ; preds = %if.then3917
  %2566 = load i32, ptr %nChange3901, align 4
  %conv3924 = sext i32 %2566 to i64
  %2567 = load ptr, ptr %aMem, align 8
  %2568 = load ptr, ptr %pOp, align 8
  %p33925 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2568, i32 0, i32 5
  %2569 = load i32, ptr %p33925, align 4
  %idxprom3926 = sext i32 %2569 to i64
  %arrayidx3927 = getelementptr inbounds %struct.sqlite3_value, ptr %2567, i64 %idxprom3926
  %u3928 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %arrayidx3927, i32 0, i32 0
  %2570 = load i64, ptr %u3928, align 8
  %add3929 = add nsw i64 %2570, %conv3924
  store i64 %add3929, ptr %u3928, align 8
  br label %if.end3930

if.end3930:                                       ; preds = %if.then3923, %if.then3917
  br label %if.end3931

if.end3931:                                       ; preds = %if.end3930, %cond.end3912
  %2571 = load i32, ptr %rc, align 4
  %tobool3932 = icmp ne i32 %2571, 0
  br i1 %tobool3932, label %if.then3933, label %if.end3934

if.then3933:                                      ; preds = %if.end3931
  br label %abort_due_to_error

if.end3934:                                       ; preds = %if.end3931
  br label %sw.epilog5364

sw.bb3935:                                        ; preds = %for.body
  %2572 = load ptr, ptr %p.addr, align 8
  %apCsr3937 = getelementptr inbounds nuw %struct.Vdbe, ptr %2572, i32 0, i32 21
  %2573 = load ptr, ptr %apCsr3937, align 8
  %2574 = load ptr, ptr %pOp, align 8
  %p13938 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2574, i32 0, i32 3
  %2575 = load i32, ptr %p13938, align 4
  %idxprom3939 = sext i32 %2575 to i64
  %arrayidx3940 = getelementptr inbounds ptr, ptr %2573, i64 %idxprom3939
  %2576 = load ptr, ptr %arrayidx3940, align 8
  store ptr %2576, ptr %pC3936, align 8
  %2577 = load ptr, ptr %pC3936, align 8
  %eCurType3941 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2577, i32 0, i32 0
  %2578 = load i8, ptr %eCurType3941, align 8
  %conv3942 = zext i8 %2578 to i32
  %cmp3943 = icmp eq i32 %conv3942, 1
  br i1 %cmp3943, label %if.then3945, label %if.else3947

if.then3945:                                      ; preds = %sw.bb3935
  %2579 = load ptr, ptr %db, align 8
  %2580 = load ptr, ptr %pC3936, align 8
  %uc3946 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2580, i32 0, i32 12
  %2581 = load ptr, ptr %uc3946, align 8
  call void @sqlite3VdbeSorterReset(ptr noundef %2579, ptr noundef %2581)
  br label %if.end3953

if.else3947:                                      ; preds = %sw.bb3935
  %2582 = load ptr, ptr %pC3936, align 8
  %uc3948 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2582, i32 0, i32 12
  %2583 = load ptr, ptr %uc3948, align 8
  %call3949 = call i32 @sqlite3BtreeClearTableOfCursor(ptr noundef %2583)
  store i32 %call3949, ptr %rc, align 4
  %2584 = load i32, ptr %rc, align 4
  %tobool3950 = icmp ne i32 %2584, 0
  br i1 %tobool3950, label %if.then3951, label %if.end3952

if.then3951:                                      ; preds = %if.else3947
  br label %abort_due_to_error

if.end3952:                                       ; preds = %if.else3947
  br label %if.end3953

if.end3953:                                       ; preds = %if.end3952, %if.then3945
  br label %sw.epilog5364

sw.bb3954:                                        ; preds = %for.body
  %2585 = load ptr, ptr %p.addr, align 8
  %2586 = load ptr, ptr %pOp, align 8
  %call3956 = call ptr @out2Prerelease(ptr noundef %2585, ptr noundef %2586)
  store ptr %call3956, ptr %pOut, align 8
  store i32 0, ptr %pgno, align 4
  %2587 = load ptr, ptr %db, align 8
  %aDb3957 = getelementptr inbounds nuw %struct.sqlite3, ptr %2587, i32 0, i32 4
  %2588 = load ptr, ptr %aDb3957, align 8
  %2589 = load ptr, ptr %pOp, align 8
  %p13958 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2589, i32 0, i32 3
  %2590 = load i32, ptr %p13958, align 4
  %idxprom3959 = sext i32 %2590 to i64
  %arrayidx3960 = getelementptr inbounds %struct.Db, ptr %2588, i64 %idxprom3959
  store ptr %arrayidx3960, ptr %pDb3955, align 8
  %2591 = load ptr, ptr %pDb3955, align 8
  %pBt3961 = getelementptr inbounds nuw %struct.Db, ptr %2591, i32 0, i32 1
  %2592 = load ptr, ptr %pBt3961, align 8
  %2593 = load ptr, ptr %pOp, align 8
  %p33962 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2593, i32 0, i32 5
  %2594 = load i32, ptr %p33962, align 4
  %call3963 = call i32 @sqlite3BtreeCreateTable(ptr noundef %2592, ptr noundef %pgno, i32 noundef %2594)
  store i32 %call3963, ptr %rc, align 4
  %2595 = load i32, ptr %rc, align 4
  %tobool3964 = icmp ne i32 %2595, 0
  br i1 %tobool3964, label %if.then3965, label %if.end3966

if.then3965:                                      ; preds = %sw.bb3954
  br label %abort_due_to_error

if.end3966:                                       ; preds = %sw.bb3954
  %2596 = load i32, ptr %pgno, align 4
  %conv3967 = sext i32 %2596 to i64
  %2597 = load ptr, ptr %pOut, align 8
  %u3968 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2597, i32 0, i32 0
  store i64 %conv3967, ptr %u3968, align 8
  br label %sw.epilog5364

sw.bb3969:                                        ; preds = %for.body
  %2598 = load ptr, ptr %db, align 8
  %nSqlExec = getelementptr inbounds nuw %struct.sqlite3, ptr %2598, i32 0, i32 28
  %2599 = load i8, ptr %nSqlExec, align 2
  %inc3970 = add i8 %2599, 1
  store i8 %inc3970, ptr %nSqlExec, align 2
  %2600 = load ptr, ptr %db, align 8
  %2601 = load ptr, ptr %pOp, align 8
  %p43971 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2601, i32 0, i32 6
  %2602 = load ptr, ptr %p43971, align 8
  %call3972 = call i32 @sqlite3_exec(ptr noundef %2600, ptr noundef %2602, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call3972, ptr %rc, align 4
  %2603 = load ptr, ptr %db, align 8
  %nSqlExec3973 = getelementptr inbounds nuw %struct.sqlite3, ptr %2603, i32 0, i32 28
  %2604 = load i8, ptr %nSqlExec3973, align 2
  %dec3974 = add i8 %2604, -1
  store i8 %dec3974, ptr %nSqlExec3973, align 2
  %2605 = load i32, ptr %rc, align 4
  %tobool3975 = icmp ne i32 %2605, 0
  br i1 %tobool3975, label %if.then3976, label %if.end3977

if.then3976:                                      ; preds = %sw.bb3969
  br label %abort_due_to_error

if.end3977:                                       ; preds = %sw.bb3969
  br label %sw.epilog5364

sw.bb3978:                                        ; preds = %for.body
  %2606 = load ptr, ptr %pOp, align 8
  %p13981 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2606, i32 0, i32 3
  %2607 = load i32, ptr %p13981, align 4
  store i32 %2607, ptr %iDb3979, align 4
  %2608 = load ptr, ptr %pOp, align 8
  %p43982 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2608, i32 0, i32 6
  %2609 = load ptr, ptr %p43982, align 8
  %cmp3983 = icmp eq ptr %2609, null
  br i1 %cmp3983, label %if.then3985, label %if.else4000

if.then3985:                                      ; preds = %sw.bb3978
  %2610 = load ptr, ptr %db, align 8
  %aDb3986 = getelementptr inbounds nuw %struct.sqlite3, ptr %2610, i32 0, i32 4
  %2611 = load ptr, ptr %aDb3986, align 8
  %2612 = load i32, ptr %iDb3979, align 4
  %idxprom3987 = sext i32 %2612 to i64
  %arrayidx3988 = getelementptr inbounds %struct.Db, ptr %2611, i64 %idxprom3987
  %pSchema3989 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx3988, i32 0, i32 4
  %2613 = load ptr, ptr %pSchema3989, align 8
  call void @sqlite3SchemaClear(ptr noundef %2613)
  %2614 = load ptr, ptr %db, align 8
  %mDbFlags3990 = getelementptr inbounds nuw %struct.sqlite3, ptr %2614, i32 0, i32 6
  %2615 = load i32, ptr %mDbFlags3990, align 4
  %and3991 = and i32 %2615, -17
  store i32 %and3991, ptr %mDbFlags3990, align 4
  %2616 = load ptr, ptr %db, align 8
  %2617 = load i32, ptr %iDb3979, align 4
  %2618 = load ptr, ptr %p.addr, align 8
  %zErrMsg3992 = getelementptr inbounds nuw %struct.Vdbe, ptr %2618, i32 0, i32 28
  %call3993 = call i32 @sqlite3InitOne(ptr noundef %2616, i32 noundef %2617, ptr noundef %zErrMsg3992, i32 noundef 1)
  store i32 %call3993, ptr %rc, align 4
  %2619 = load ptr, ptr %db, align 8
  %mDbFlags3994 = getelementptr inbounds nuw %struct.sqlite3, ptr %2619, i32 0, i32 6
  %2620 = load i32, ptr %mDbFlags3994, align 4
  %or3995 = or i32 %2620, 1
  store i32 %or3995, ptr %mDbFlags3994, align 4
  %2621 = load ptr, ptr %p.addr, align 8
  %expired3996 = getelementptr inbounds nuw %struct.Vdbe, ptr %2621, i32 0, i32 35
  %bf.load3997 = load i16, ptr %expired3996, align 1
  %bf.clear3998 = and i16 %bf.load3997, -4
  %bf.set3999 = or i16 %bf.clear3998, 0
  store i16 %bf.set3999, ptr %expired3996, align 1
  br label %if.end4033

if.else4000:                                      ; preds = %sw.bb3978
  store ptr @.str.320, ptr %zMaster, align 8
  %2622 = load ptr, ptr %db, align 8
  %db4001 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 0
  store ptr %2622, ptr %db4001, align 8
  %2623 = load i32, ptr %iDb3979, align 4
  %iDb4002 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 2
  store i32 %2623, ptr %iDb4002, align 8
  %2624 = load ptr, ptr %p.addr, align 8
  %zErrMsg4003 = getelementptr inbounds nuw %struct.Vdbe, ptr %2624, i32 0, i32 28
  %pzErrMsg = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 1
  store ptr %zErrMsg4003, ptr %pzErrMsg, align 8
  %mInitFlags = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 4
  store i32 0, ptr %mInitFlags, align 8
  %2625 = load ptr, ptr %db, align 8
  %2626 = load ptr, ptr %db, align 8
  %aDb4004 = getelementptr inbounds nuw %struct.sqlite3, ptr %2626, i32 0, i32 4
  %2627 = load ptr, ptr %aDb4004, align 8
  %2628 = load i32, ptr %iDb3979, align 4
  %idxprom4005 = sext i32 %2628 to i64
  %arrayidx4006 = getelementptr inbounds %struct.Db, ptr %2627, i64 %idxprom4005
  %zDbSName4007 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx4006, i32 0, i32 0
  %2629 = load ptr, ptr %zDbSName4007, align 8
  %2630 = load ptr, ptr %zMaster, align 8
  %2631 = load ptr, ptr %pOp, align 8
  %p44008 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2631, i32 0, i32 6
  %2632 = load ptr, ptr %p44008, align 8
  %call4009 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %2625, ptr noundef @.str.321, ptr noundef %2629, ptr noundef %2630, ptr noundef %2632)
  store ptr %call4009, ptr %zSql3980, align 8
  %2633 = load ptr, ptr %zSql3980, align 8
  %cmp4010 = icmp eq ptr %2633, null
  br i1 %cmp4010, label %if.then4012, label %if.else4013

if.then4012:                                      ; preds = %if.else4000
  store i32 7, ptr %rc, align 4
  br label %if.end4032

if.else4013:                                      ; preds = %if.else4000
  %2634 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %2634, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  store i8 1, ptr %busy, align 1
  %rc4014 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 3
  store i32 0, ptr %rc4014, align 4
  %nInitRow = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 5
  store i32 0, ptr %nInitRow, align 4
  %2635 = load ptr, ptr %db, align 8
  %2636 = load ptr, ptr %zSql3980, align 8
  %call4015 = call i32 @sqlite3_exec(ptr noundef %2635, ptr noundef %2636, ptr noundef @sqlite3InitCallback, ptr noundef %initData, ptr noundef null)
  store i32 %call4015, ptr %rc, align 4
  %2637 = load i32, ptr %rc, align 4
  %cmp4016 = icmp eq i32 %2637, 0
  br i1 %cmp4016, label %if.then4018, label %if.end4020

if.then4018:                                      ; preds = %if.else4013
  %rc4019 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 3
  %2638 = load i32, ptr %rc4019, align 4
  store i32 %2638, ptr %rc, align 4
  br label %if.end4020

if.end4020:                                       ; preds = %if.then4018, %if.else4013
  %2639 = load i32, ptr %rc, align 4
  %cmp4021 = icmp eq i32 %2639, 0
  br i1 %cmp4021, label %land.lhs.true4023, label %if.end4029

land.lhs.true4023:                                ; preds = %if.end4020
  %nInitRow4024 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 5
  %2640 = load i32, ptr %nInitRow4024, align 4
  %cmp4025 = icmp eq i32 %2640, 0
  br i1 %cmp4025, label %if.then4027, label %if.end4029

if.then4027:                                      ; preds = %land.lhs.true4023
  %call4028 = call i32 @sqlite3CorruptError(i32 noundef 89937)
  store i32 %call4028, ptr %rc, align 4
  br label %if.end4029

if.end4029:                                       ; preds = %if.then4027, %land.lhs.true4023, %if.end4020
  %2641 = load ptr, ptr %db, align 8
  %2642 = load ptr, ptr %zSql3980, align 8
  call void @sqlite3DbFreeNN(ptr noundef %2641, ptr noundef %2642)
  %2643 = load ptr, ptr %db, align 8
  %init4030 = getelementptr inbounds nuw %struct.sqlite3, ptr %2643, i32 0, i32 35
  %busy4031 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init4030, i32 0, i32 2
  store i8 0, ptr %busy4031, align 1
  br label %if.end4032

if.end4032:                                       ; preds = %if.end4029, %if.then4012
  br label %if.end4033

if.end4033:                                       ; preds = %if.end4032, %if.then3985
  %2644 = load i32, ptr %rc, align 4
  %tobool4034 = icmp ne i32 %2644, 0
  br i1 %tobool4034, label %if.then4035, label %if.end4040

if.then4035:                                      ; preds = %if.end4033
  %2645 = load ptr, ptr %db, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %2645)
  %2646 = load i32, ptr %rc, align 4
  %cmp4036 = icmp eq i32 %2646, 7
  br i1 %cmp4036, label %if.then4038, label %if.end4039

if.then4038:                                      ; preds = %if.then4035
  br label %no_mem

if.end4039:                                       ; preds = %if.then4035
  br label %abort_due_to_error

if.end4040:                                       ; preds = %if.end4033
  br label %sw.epilog5364

sw.bb4041:                                        ; preds = %for.body
  %2647 = load ptr, ptr %db, align 8
  %2648 = load ptr, ptr %pOp, align 8
  %p14042 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2648, i32 0, i32 3
  %2649 = load i32, ptr %p14042, align 4
  %call4043 = call i32 @sqlite3AnalysisLoad(ptr noundef %2647, i32 noundef %2649)
  store i32 %call4043, ptr %rc, align 4
  %2650 = load i32, ptr %rc, align 4
  %tobool4044 = icmp ne i32 %2650, 0
  br i1 %tobool4044, label %if.then4045, label %if.end4046

if.then4045:                                      ; preds = %sw.bb4041
  br label %abort_due_to_error

if.end4046:                                       ; preds = %sw.bb4041
  br label %sw.epilog5364

sw.bb4047:                                        ; preds = %for.body
  %2651 = load ptr, ptr %db, align 8
  %2652 = load ptr, ptr %pOp, align 8
  %p14048 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2652, i32 0, i32 3
  %2653 = load i32, ptr %p14048, align 4
  %2654 = load ptr, ptr %pOp, align 8
  %p44049 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2654, i32 0, i32 6
  %2655 = load ptr, ptr %p44049, align 8
  call void @sqlite3UnlinkAndDeleteTable(ptr noundef %2651, i32 noundef %2653, ptr noundef %2655)
  br label %sw.epilog5364

sw.bb4050:                                        ; preds = %for.body
  %2656 = load ptr, ptr %db, align 8
  %2657 = load ptr, ptr %pOp, align 8
  %p14051 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2657, i32 0, i32 3
  %2658 = load i32, ptr %p14051, align 4
  %2659 = load ptr, ptr %pOp, align 8
  %p44052 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2659, i32 0, i32 6
  %2660 = load ptr, ptr %p44052, align 8
  call void @sqlite3UnlinkAndDeleteIndex(ptr noundef %2656, i32 noundef %2658, ptr noundef %2660)
  br label %sw.epilog5364

sw.bb4053:                                        ; preds = %for.body
  %2661 = load ptr, ptr %db, align 8
  %2662 = load ptr, ptr %pOp, align 8
  %p14054 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2662, i32 0, i32 3
  %2663 = load i32, ptr %p14054, align 4
  %2664 = load ptr, ptr %pOp, align 8
  %p44055 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2664, i32 0, i32 6
  %2665 = load ptr, ptr %p44055, align 8
  call void @sqlite3UnlinkAndDeleteTrigger(ptr noundef %2661, i32 noundef %2663, ptr noundef %2665)
  br label %sw.epilog5364

sw.bb4056:                                        ; preds = %for.body
  %2666 = load ptr, ptr %pOp, align 8
  %p24058 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2666, i32 0, i32 4
  %2667 = load i32, ptr %p24058, align 8
  store i32 %2667, ptr %nRoot, align 4
  %2668 = load ptr, ptr %pOp, align 8
  %p44059 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2668, i32 0, i32 6
  %2669 = load ptr, ptr %p44059, align 8
  store ptr %2669, ptr %aRoot, align 8
  %2670 = load ptr, ptr %aMem, align 8
  %2671 = load ptr, ptr %pOp, align 8
  %p34060 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2671, i32 0, i32 5
  %2672 = load i32, ptr %p34060, align 4
  %idxprom4061 = sext i32 %2672 to i64
  %arrayidx4062 = getelementptr inbounds %struct.sqlite3_value, ptr %2670, i64 %idxprom4061
  store ptr %arrayidx4062, ptr %pnErr, align 8
  %2673 = load ptr, ptr %aMem, align 8
  %2674 = load ptr, ptr %pOp, align 8
  %p14063 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2674, i32 0, i32 3
  %2675 = load i32, ptr %p14063, align 4
  %idxprom4064 = sext i32 %2675 to i64
  %arrayidx4065 = getelementptr inbounds %struct.sqlite3_value, ptr %2673, i64 %idxprom4064
  store ptr %arrayidx4065, ptr %pIn1, align 8
  %2676 = load ptr, ptr %db, align 8
  %aDb4066 = getelementptr inbounds nuw %struct.sqlite3, ptr %2676, i32 0, i32 4
  %2677 = load ptr, ptr %aDb4066, align 8
  %2678 = load ptr, ptr %pOp, align 8
  %p54067 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2678, i32 0, i32 2
  %2679 = load i16, ptr %p54067, align 2
  %idxprom4068 = zext i16 %2679 to i64
  %arrayidx4069 = getelementptr inbounds nuw %struct.Db, ptr %2677, i64 %idxprom4068
  %pBt4070 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx4069, i32 0, i32 1
  %2680 = load ptr, ptr %pBt4070, align 8
  %2681 = load ptr, ptr %aRoot, align 8
  %arrayidx4071 = getelementptr inbounds i32, ptr %2681, i64 1
  %2682 = load i32, ptr %nRoot, align 4
  %2683 = load ptr, ptr %pnErr, align 8
  %u4072 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2683, i32 0, i32 0
  %2684 = load i64, ptr %u4072, align 8
  %conv4073 = trunc i64 %2684 to i32
  %add4074 = add nsw i32 %conv4073, 1
  %call4075 = call ptr @sqlite3BtreeIntegrityCheck(ptr noundef %2680, ptr noundef %arrayidx4071, i32 noundef %2682, i32 noundef %add4074, ptr noundef %nErr)
  store ptr %call4075, ptr %z4057, align 8
  %2685 = load ptr, ptr %pIn1, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %2685)
  %2686 = load i32, ptr %nErr, align 4
  %cmp4076 = icmp eq i32 %2686, 0
  br i1 %cmp4076, label %if.then4078, label %if.else4079

if.then4078:                                      ; preds = %sw.bb4056
  br label %if.end4090

if.else4079:                                      ; preds = %sw.bb4056
  %2687 = load ptr, ptr %z4057, align 8
  %cmp4080 = icmp eq ptr %2687, null
  br i1 %cmp4080, label %if.then4082, label %if.else4083

if.then4082:                                      ; preds = %if.else4079
  br label %no_mem

if.else4083:                                      ; preds = %if.else4079
  %2688 = load i32, ptr %nErr, align 4
  %sub4084 = sub nsw i32 %2688, 1
  %conv4085 = sext i32 %sub4084 to i64
  %2689 = load ptr, ptr %pnErr, align 8
  %u4086 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2689, i32 0, i32 0
  %2690 = load i64, ptr %u4086, align 8
  %sub4087 = sub nsw i64 %2690, %conv4085
  store i64 %sub4087, ptr %u4086, align 8
  %2691 = load ptr, ptr %pIn1, align 8
  %2692 = load ptr, ptr %z4057, align 8
  %call4088 = call i32 @sqlite3VdbeMemSetStr(ptr noundef %2691, ptr noundef %2692, i32 noundef -1, i8 noundef zeroext 1, ptr noundef @sqlite3_free)
  br label %if.end4089

if.end4089:                                       ; preds = %if.else4083
  br label %if.end4090

if.end4090:                                       ; preds = %if.end4089, %if.then4078
  %2693 = load ptr, ptr %pIn1, align 8
  %2694 = load i8, ptr %encoding, align 1
  %conv4091 = zext i8 %2694 to i32
  %call4092 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %2693, i32 noundef %conv4091)
  br label %sw.epilog5364

sw.bb4093:                                        ; preds = %for.body
  %2695 = load ptr, ptr %aMem, align 8
  %2696 = load ptr, ptr %pOp, align 8
  %p14094 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2696, i32 0, i32 3
  %2697 = load i32, ptr %p14094, align 4
  %idxprom4095 = sext i32 %2697 to i64
  %arrayidx4096 = getelementptr inbounds %struct.sqlite3_value, ptr %2695, i64 %idxprom4095
  store ptr %arrayidx4096, ptr %pIn1, align 8
  %2698 = load ptr, ptr %aMem, align 8
  %2699 = load ptr, ptr %pOp, align 8
  %p24097 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2699, i32 0, i32 4
  %2700 = load i32, ptr %p24097, align 8
  %idxprom4098 = sext i32 %2700 to i64
  %arrayidx4099 = getelementptr inbounds %struct.sqlite3_value, ptr %2698, i64 %idxprom4098
  store ptr %arrayidx4099, ptr %pIn2, align 8
  %2701 = load ptr, ptr %pIn1, align 8
  %flags4100 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2701, i32 0, i32 1
  %2702 = load i16, ptr %flags4100, align 8
  %conv4101 = zext i16 %2702 to i32
  %and4102 = and i32 %conv4101, 16
  %cmp4103 = icmp eq i32 %and4102, 0
  br i1 %cmp4103, label %if.then4105, label %if.end4110

if.then4105:                                      ; preds = %sw.bb4093
  %2703 = load ptr, ptr %pIn1, align 8
  %call4106 = call i32 @sqlite3VdbeMemSetRowSet(ptr noundef %2703)
  %tobool4107 = icmp ne i32 %call4106, 0
  br i1 %tobool4107, label %if.then4108, label %if.end4109

if.then4108:                                      ; preds = %if.then4105
  br label %no_mem

if.end4109:                                       ; preds = %if.then4105
  br label %if.end4110

if.end4110:                                       ; preds = %if.end4109, %sw.bb4093
  %2704 = load ptr, ptr %pIn1, align 8
  %z4111 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2704, i32 0, i32 5
  %2705 = load ptr, ptr %z4111, align 8
  %2706 = load ptr, ptr %pIn2, align 8
  %u4112 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2706, i32 0, i32 0
  %2707 = load i64, ptr %u4112, align 8
  call void @sqlite3RowSetInsert(ptr noundef %2705, i64 noundef %2707)
  br label %sw.epilog5364

sw.bb4113:                                        ; preds = %for.body
  %2708 = load ptr, ptr %aMem, align 8
  %2709 = load ptr, ptr %pOp, align 8
  %p14114 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2709, i32 0, i32 3
  %2710 = load i32, ptr %p14114, align 4
  %idxprom4115 = sext i32 %2710 to i64
  %arrayidx4116 = getelementptr inbounds %struct.sqlite3_value, ptr %2708, i64 %idxprom4115
  store ptr %arrayidx4116, ptr %pIn1, align 8
  %2711 = load ptr, ptr %pIn1, align 8
  %flags4117 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2711, i32 0, i32 1
  %2712 = load i16, ptr %flags4117, align 8
  %conv4118 = zext i16 %2712 to i32
  %and4119 = and i32 %conv4118, 16
  %cmp4120 = icmp eq i32 %and4119, 0
  br i1 %cmp4120, label %if.then4127, label %lor.lhs.false4122

lor.lhs.false4122:                                ; preds = %sw.bb4113
  %2713 = load ptr, ptr %pIn1, align 8
  %z4123 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2713, i32 0, i32 5
  %2714 = load ptr, ptr %z4123, align 8
  %call4124 = call i32 @sqlite3RowSetNext(ptr noundef %2714, ptr noundef %val)
  %cmp4125 = icmp eq i32 %call4124, 0
  br i1 %cmp4125, label %if.then4127, label %if.else4128

if.then4127:                                      ; preds = %lor.lhs.false4122, %sw.bb4113
  %2715 = load ptr, ptr %pIn1, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %2715)
  br label %jump_to_p2_and_check_for_interrupt

if.else4128:                                      ; preds = %lor.lhs.false4122
  %2716 = load ptr, ptr %aMem, align 8
  %2717 = load ptr, ptr %pOp, align 8
  %p34129 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2717, i32 0, i32 5
  %2718 = load i32, ptr %p34129, align 4
  %idxprom4130 = sext i32 %2718 to i64
  %arrayidx4131 = getelementptr inbounds %struct.sqlite3_value, ptr %2716, i64 %idxprom4130
  %2719 = load i64, ptr %val, align 8
  call void @sqlite3VdbeMemSetInt64(ptr noundef %arrayidx4131, i64 noundef %2719)
  br label %if.end4132

if.end4132:                                       ; preds = %if.else4128
  br label %check_for_interrupt

sw.bb4133:                                        ; preds = %for.body
  %2720 = load ptr, ptr %aMem, align 8
  %2721 = load ptr, ptr %pOp, align 8
  %p14134 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2721, i32 0, i32 3
  %2722 = load i32, ptr %p14134, align 4
  %idxprom4135 = sext i32 %2722 to i64
  %arrayidx4136 = getelementptr inbounds %struct.sqlite3_value, ptr %2720, i64 %idxprom4135
  store ptr %arrayidx4136, ptr %pIn1, align 8
  %2723 = load ptr, ptr %aMem, align 8
  %2724 = load ptr, ptr %pOp, align 8
  %p34137 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2724, i32 0, i32 5
  %2725 = load i32, ptr %p34137, align 4
  %idxprom4138 = sext i32 %2725 to i64
  %arrayidx4139 = getelementptr inbounds %struct.sqlite3_value, ptr %2723, i64 %idxprom4138
  store ptr %arrayidx4139, ptr %pIn3, align 8
  %2726 = load ptr, ptr %pOp, align 8
  %p44140 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2726, i32 0, i32 6
  %2727 = load i32, ptr %p44140, align 8
  store i32 %2727, ptr %iSet, align 4
  %2728 = load ptr, ptr %pIn1, align 8
  %flags4141 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2728, i32 0, i32 1
  %2729 = load i16, ptr %flags4141, align 8
  %conv4142 = zext i16 %2729 to i32
  %and4143 = and i32 %conv4142, 16
  %cmp4144 = icmp eq i32 %and4143, 0
  br i1 %cmp4144, label %if.then4146, label %if.end4151

if.then4146:                                      ; preds = %sw.bb4133
  %2730 = load ptr, ptr %pIn1, align 8
  %call4147 = call i32 @sqlite3VdbeMemSetRowSet(ptr noundef %2730)
  %tobool4148 = icmp ne i32 %call4147, 0
  br i1 %tobool4148, label %if.then4149, label %if.end4150

if.then4149:                                      ; preds = %if.then4146
  br label %no_mem

if.end4150:                                       ; preds = %if.then4146
  br label %if.end4151

if.end4151:                                       ; preds = %if.end4150, %sw.bb4133
  %2731 = load i32, ptr %iSet, align 4
  %tobool4152 = icmp ne i32 %2731, 0
  br i1 %tobool4152, label %if.then4153, label %if.end4160

if.then4153:                                      ; preds = %if.end4151
  %2732 = load ptr, ptr %pIn1, align 8
  %z4154 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2732, i32 0, i32 5
  %2733 = load ptr, ptr %z4154, align 8
  %2734 = load i32, ptr %iSet, align 4
  %2735 = load ptr, ptr %pIn3, align 8
  %u4155 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2735, i32 0, i32 0
  %2736 = load i64, ptr %u4155, align 8
  %call4156 = call i32 @sqlite3RowSetTest(ptr noundef %2733, i32 noundef %2734, i64 noundef %2736)
  store i32 %call4156, ptr %exists, align 4
  %2737 = load i32, ptr %exists, align 4
  %tobool4157 = icmp ne i32 %2737, 0
  br i1 %tobool4157, label %if.then4158, label %if.end4159

if.then4158:                                      ; preds = %if.then4153
  br label %jump_to_p2

if.end4159:                                       ; preds = %if.then4153
  br label %if.end4160

if.end4160:                                       ; preds = %if.end4159, %if.end4151
  %2738 = load i32, ptr %iSet, align 4
  %cmp4161 = icmp sge i32 %2738, 0
  br i1 %cmp4161, label %if.then4163, label %if.end4166

if.then4163:                                      ; preds = %if.end4160
  %2739 = load ptr, ptr %pIn1, align 8
  %z4164 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2739, i32 0, i32 5
  %2740 = load ptr, ptr %z4164, align 8
  %2741 = load ptr, ptr %pIn3, align 8
  %u4165 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2741, i32 0, i32 0
  %2742 = load i64, ptr %u4165, align 8
  call void @sqlite3RowSetInsert(ptr noundef %2740, i64 noundef %2742)
  br label %if.end4166

if.end4166:                                       ; preds = %if.then4163, %if.end4160
  br label %sw.epilog5364

sw.bb4167:                                        ; preds = %for.body
  %2743 = load ptr, ptr %pOp, align 8
  %p44173 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2743, i32 0, i32 6
  %2744 = load ptr, ptr %p44173, align 8
  store ptr %2744, ptr %pProgram, align 8
  %2745 = load ptr, ptr %aMem, align 8
  %2746 = load ptr, ptr %pOp, align 8
  %p34174 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2746, i32 0, i32 5
  %2747 = load i32, ptr %p34174, align 4
  %idxprom4175 = sext i32 %2747 to i64
  %arrayidx4176 = getelementptr inbounds %struct.sqlite3_value, ptr %2745, i64 %idxprom4175
  store ptr %arrayidx4176, ptr %pRt, align 8
  %2748 = load ptr, ptr %pOp, align 8
  %p54177 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2748, i32 0, i32 2
  %2749 = load i16, ptr %p54177, align 2
  %tobool4178 = icmp ne i16 %2749, 0
  br i1 %tobool4178, label %if.then4179, label %if.end4196

if.then4179:                                      ; preds = %sw.bb4167
  %2750 = load ptr, ptr %pProgram, align 8
  %token = getelementptr inbounds nuw %struct.SubProgram, ptr %2750, i32 0, i32 5
  %2751 = load ptr, ptr %token, align 8
  store ptr %2751, ptr %t4172, align 8
  %2752 = load ptr, ptr %p.addr, align 8
  %pFrame4180 = getelementptr inbounds nuw %struct.Vdbe, ptr %2752, i32 0, i32 43
  %2753 = load ptr, ptr %pFrame4180, align 8
  store ptr %2753, ptr %pFrame4171, align 8
  br label %for.cond4181

for.cond4181:                                     ; preds = %for.inc4190, %if.then4179
  %2754 = load ptr, ptr %pFrame4171, align 8
  %tobool4182 = icmp ne ptr %2754, null
  br i1 %tobool4182, label %land.rhs4183, label %land.end4187

land.rhs4183:                                     ; preds = %for.cond4181
  %2755 = load ptr, ptr %pFrame4171, align 8
  %token4184 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2755, i32 0, i32 7
  %2756 = load ptr, ptr %token4184, align 8
  %2757 = load ptr, ptr %t4172, align 8
  %cmp4185 = icmp ne ptr %2756, %2757
  br label %land.end4187

land.end4187:                                     ; preds = %land.rhs4183, %for.cond4181
  %2758 = phi i1 [ false, %for.cond4181 ], [ %cmp4185, %land.rhs4183 ]
  br i1 %2758, label %for.body4189, label %for.end4192

for.body4189:                                     ; preds = %land.end4187
  br label %for.inc4190

for.inc4190:                                      ; preds = %for.body4189
  %2759 = load ptr, ptr %pFrame4171, align 8
  %pParent4191 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2759, i32 0, i32 1
  %2760 = load ptr, ptr %pParent4191, align 8
  store ptr %2760, ptr %pFrame4171, align 8
  br label %for.cond4181, !llvm.loop !22

for.end4192:                                      ; preds = %land.end4187
  %2761 = load ptr, ptr %pFrame4171, align 8
  %tobool4193 = icmp ne ptr %2761, null
  br i1 %tobool4193, label %if.then4194, label %if.end4195

if.then4194:                                      ; preds = %for.end4192
  br label %sw.epilog5364

if.end4195:                                       ; preds = %for.end4192
  br label %if.end4196

if.end4196:                                       ; preds = %if.end4195, %sw.bb4167
  %2762 = load ptr, ptr %p.addr, align 8
  %nFrame4197 = getelementptr inbounds nuw %struct.Vdbe, ptr %2762, i32 0, i32 45
  %2763 = load i32, ptr %nFrame4197, align 8
  %2764 = load ptr, ptr %db, align 8
  %aLimit4198 = getelementptr inbounds nuw %struct.sqlite3, ptr %2764, i32 0, i32 33
  %arrayidx4199 = getelementptr inbounds [12 x i32], ptr %aLimit4198, i64 0, i64 10
  %2765 = load i32, ptr %arrayidx4199, align 4
  %cmp4200 = icmp sge i32 %2763, %2765
  br i1 %cmp4200, label %if.then4202, label %if.end4203

if.then4202:                                      ; preds = %if.end4196
  store i32 1, ptr %rc, align 4
  %2766 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %2766, ptr noundef @.str.322)
  br label %abort_due_to_error

if.end4203:                                       ; preds = %if.end4196
  %2767 = load ptr, ptr %pRt, align 8
  %flags4204 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2767, i32 0, i32 1
  %2768 = load i16, ptr %flags4204, align 8
  %conv4205 = zext i16 %2768 to i32
  %and4206 = and i32 %conv4205, 16
  %cmp4207 = icmp eq i32 %and4206, 0
  br i1 %cmp4207, label %if.then4209, label %if.else4273

if.then4209:                                      ; preds = %if.end4203
  %2769 = load ptr, ptr %pProgram, align 8
  %nMem4210 = getelementptr inbounds nuw %struct.SubProgram, ptr %2769, i32 0, i32 2
  %2770 = load i32, ptr %nMem4210, align 4
  %2771 = load ptr, ptr %pProgram, align 8
  %nCsr = getelementptr inbounds nuw %struct.SubProgram, ptr %2771, i32 0, i32 3
  %2772 = load i32, ptr %nCsr, align 8
  %add4211 = add nsw i32 %2770, %2772
  store i32 %add4211, ptr %nMem4168, align 4
  %2773 = load ptr, ptr %pProgram, align 8
  %nCsr4212 = getelementptr inbounds nuw %struct.SubProgram, ptr %2773, i32 0, i32 3
  %2774 = load i32, ptr %nCsr4212, align 8
  %cmp4213 = icmp eq i32 %2774, 0
  br i1 %cmp4213, label %if.then4215, label %if.end4217

if.then4215:                                      ; preds = %if.then4209
  %2775 = load i32, ptr %nMem4168, align 4
  %inc4216 = add nsw i32 %2775, 1
  store i32 %inc4216, ptr %nMem4168, align 4
  br label %if.end4217

if.end4217:                                       ; preds = %if.then4215, %if.then4209
  %2776 = load i32, ptr %nMem4168, align 4
  %conv4218 = sext i32 %2776 to i64
  %mul4219 = mul i64 %conv4218, 56
  %add4220 = add i64 112, %mul4219
  %2777 = load ptr, ptr %pProgram, align 8
  %nCsr4221 = getelementptr inbounds nuw %struct.SubProgram, ptr %2777, i32 0, i32 3
  %2778 = load i32, ptr %nCsr4221, align 8
  %conv4222 = sext i32 %2778 to i64
  %mul4223 = mul i64 %conv4222, 8
  %add4224 = add i64 %add4220, %mul4223
  %2779 = load ptr, ptr %pProgram, align 8
  %nOp = getelementptr inbounds nuw %struct.SubProgram, ptr %2779, i32 0, i32 1
  %2780 = load i32, ptr %nOp, align 8
  %add4225 = add nsw i32 %2780, 7
  %div4226 = sdiv i32 %add4225, 8
  %conv4227 = sext i32 %div4226 to i64
  %add4228 = add i64 %add4224, %conv4227
  %conv4229 = trunc i64 %add4228 to i32
  store i32 %conv4229, ptr %nByte4169, align 4
  %2781 = load ptr, ptr %db, align 8
  %2782 = load i32, ptr %nByte4169, align 4
  %conv4230 = sext i32 %2782 to i64
  %call4231 = call ptr @sqlite3DbMallocZero(ptr noundef %2781, i64 noundef %conv4230)
  store ptr %call4231, ptr %pFrame4171, align 8
  %2783 = load ptr, ptr %pFrame4171, align 8
  %tobool4232 = icmp ne ptr %2783, null
  br i1 %tobool4232, label %if.end4234, label %if.then4233

if.then4233:                                      ; preds = %if.end4217
  br label %no_mem

if.end4234:                                       ; preds = %if.end4217
  %2784 = load ptr, ptr %pRt, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %2784)
  %2785 = load ptr, ptr %pRt, align 8
  %flags4235 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2785, i32 0, i32 1
  store i16 1040, ptr %flags4235, align 8
  %2786 = load ptr, ptr %pFrame4171, align 8
  %2787 = load ptr, ptr %pRt, align 8
  %z4236 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2787, i32 0, i32 5
  store ptr %2786, ptr %z4236, align 8
  %2788 = load i32, ptr %nByte4169, align 4
  %2789 = load ptr, ptr %pRt, align 8
  %n4237 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2789, i32 0, i32 4
  store i32 %2788, ptr %n4237, align 4
  %2790 = load ptr, ptr %pRt, align 8
  %xDel = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2790, i32 0, i32 10
  store ptr @sqlite3VdbeFrameMemDel, ptr %xDel, align 8
  %2791 = load ptr, ptr %p.addr, align 8
  %2792 = load ptr, ptr %pFrame4171, align 8
  %v4238 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2792, i32 0, i32 0
  store ptr %2791, ptr %v4238, align 8
  %2793 = load i32, ptr %nMem4168, align 4
  %2794 = load ptr, ptr %pFrame4171, align 8
  %nChildMem = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2794, i32 0, i32 14
  store i32 %2793, ptr %nChildMem, align 8
  %2795 = load ptr, ptr %pProgram, align 8
  %nCsr4239 = getelementptr inbounds nuw %struct.SubProgram, ptr %2795, i32 0, i32 3
  %2796 = load i32, ptr %nCsr4239, align 8
  %2797 = load ptr, ptr %pFrame4171, align 8
  %nChildCsr = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2797, i32 0, i32 15
  store i32 %2796, ptr %nChildCsr, align 4
  %2798 = load ptr, ptr %pOp, align 8
  %2799 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast4240 = ptrtoint ptr %2798 to i64
  %sub.ptr.rhs.cast4241 = ptrtoint ptr %2799 to i64
  %sub.ptr.sub4242 = sub i64 %sub.ptr.lhs.cast4240, %sub.ptr.rhs.cast4241
  %sub.ptr.div4243 = sdiv exact i64 %sub.ptr.sub4242, 24
  %conv4244 = trunc i64 %sub.ptr.div4243 to i32
  %2800 = load ptr, ptr %pFrame4171, align 8
  %pc4245 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2800, i32 0, i32 11
  store i32 %conv4244, ptr %pc4245, align 4
  %2801 = load ptr, ptr %p.addr, align 8
  %aMem4246 = getelementptr inbounds nuw %struct.Vdbe, ptr %2801, i32 0, i32 19
  %2802 = load ptr, ptr %aMem4246, align 8
  %2803 = load ptr, ptr %pFrame4171, align 8
  %aMem4247 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2803, i32 0, i32 4
  store ptr %2802, ptr %aMem4247, align 8
  %2804 = load ptr, ptr %p.addr, align 8
  %nMem4248 = getelementptr inbounds nuw %struct.Vdbe, ptr %2804, i32 0, i32 7
  %2805 = load i32, ptr %nMem4248, align 8
  %2806 = load ptr, ptr %pFrame4171, align 8
  %nMem4249 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2806, i32 0, i32 13
  store i32 %2805, ptr %nMem4249, align 4
  %2807 = load ptr, ptr %p.addr, align 8
  %apCsr4250 = getelementptr inbounds nuw %struct.Vdbe, ptr %2807, i32 0, i32 21
  %2808 = load ptr, ptr %apCsr4250, align 8
  %2809 = load ptr, ptr %pFrame4171, align 8
  %apCsr4251 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2809, i32 0, i32 5
  store ptr %2808, ptr %apCsr4251, align 8
  %2810 = load ptr, ptr %p.addr, align 8
  %nCursor = getelementptr inbounds nuw %struct.Vdbe, ptr %2810, i32 0, i32 8
  %2811 = load i32, ptr %nCursor, align 4
  %2812 = load ptr, ptr %pFrame4171, align 8
  %nCursor4252 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2812, i32 0, i32 10
  store i32 %2811, ptr %nCursor4252, align 8
  %2813 = load ptr, ptr %p.addr, align 8
  %aOp4253 = getelementptr inbounds nuw %struct.Vdbe, ptr %2813, i32 0, i32 23
  %2814 = load ptr, ptr %aOp4253, align 8
  %2815 = load ptr, ptr %pFrame4171, align 8
  %aOp4254 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2815, i32 0, i32 2
  store ptr %2814, ptr %aOp4254, align 8
  %2816 = load ptr, ptr %p.addr, align 8
  %nOp4255 = getelementptr inbounds nuw %struct.Vdbe, ptr %2816, i32 0, i32 24
  %2817 = load i32, ptr %nOp4255, align 8
  %2818 = load ptr, ptr %pFrame4171, align 8
  %nOp4256 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2818, i32 0, i32 12
  store i32 %2817, ptr %nOp4256, align 8
  %2819 = load ptr, ptr %pProgram, align 8
  %token4257 = getelementptr inbounds nuw %struct.SubProgram, ptr %2819, i32 0, i32 5
  %2820 = load ptr, ptr %token4257, align 8
  %2821 = load ptr, ptr %pFrame4171, align 8
  %token4258 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2821, i32 0, i32 7
  store ptr %2820, ptr %token4258, align 8
  %2822 = load ptr, ptr %pFrame4171, align 8
  %arrayidx4259 = getelementptr inbounds nuw i8, ptr %2822, i64 112
  %2823 = load ptr, ptr %pFrame4171, align 8
  %nChildMem4260 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2823, i32 0, i32 14
  %2824 = load i32, ptr %nChildMem4260, align 8
  %idxprom4261 = sext i32 %2824 to i64
  %arrayidx4262 = getelementptr inbounds %struct.sqlite3_value, ptr %arrayidx4259, i64 %idxprom4261
  store ptr %arrayidx4262, ptr %pEnd, align 8
  %2825 = load ptr, ptr %pFrame4171, align 8
  %arrayidx4263 = getelementptr inbounds nuw i8, ptr %2825, i64 112
  store ptr %arrayidx4263, ptr %pMem4170, align 8
  br label %for.cond4264

for.cond4264:                                     ; preds = %for.inc4270, %if.end4234
  %2826 = load ptr, ptr %pMem4170, align 8
  %2827 = load ptr, ptr %pEnd, align 8
  %cmp4265 = icmp ne ptr %2826, %2827
  br i1 %cmp4265, label %for.body4267, label %for.end4272

for.body4267:                                     ; preds = %for.cond4264
  %2828 = load ptr, ptr %pMem4170, align 8
  %flags4268 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2828, i32 0, i32 1
  store i16 128, ptr %flags4268, align 8
  %2829 = load ptr, ptr %db, align 8
  %2830 = load ptr, ptr %pMem4170, align 8
  %db4269 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2830, i32 0, i32 9
  store ptr %2829, ptr %db4269, align 8
  br label %for.inc4270

for.inc4270:                                      ; preds = %for.body4267
  %2831 = load ptr, ptr %pMem4170, align 8
  %incdec.ptr4271 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2831, i32 1
  store ptr %incdec.ptr4271, ptr %pMem4170, align 8
  br label %for.cond4264, !llvm.loop !23

for.end4272:                                      ; preds = %for.cond4264
  br label %if.end4275

if.else4273:                                      ; preds = %if.end4203
  %2832 = load ptr, ptr %pRt, align 8
  %z4274 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2832, i32 0, i32 5
  %2833 = load ptr, ptr %z4274, align 8
  store ptr %2833, ptr %pFrame4171, align 8
  br label %if.end4275

if.end4275:                                       ; preds = %if.else4273, %for.end4272
  %2834 = load ptr, ptr %p.addr, align 8
  %nFrame4276 = getelementptr inbounds nuw %struct.Vdbe, ptr %2834, i32 0, i32 45
  %2835 = load i32, ptr %nFrame4276, align 8
  %inc4277 = add nsw i32 %2835, 1
  store i32 %inc4277, ptr %nFrame4276, align 8
  %2836 = load ptr, ptr %p.addr, align 8
  %pFrame4278 = getelementptr inbounds nuw %struct.Vdbe, ptr %2836, i32 0, i32 43
  %2837 = load ptr, ptr %pFrame4278, align 8
  %2838 = load ptr, ptr %pFrame4171, align 8
  %pParent4279 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2838, i32 0, i32 1
  store ptr %2837, ptr %pParent4279, align 8
  %2839 = load ptr, ptr %db, align 8
  %lastRowid4280 = getelementptr inbounds nuw %struct.sqlite3, ptr %2839, i32 0, i32 8
  %2840 = load i64, ptr %lastRowid4280, align 8
  %2841 = load ptr, ptr %pFrame4171, align 8
  %lastRowid4281 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2841, i32 0, i32 8
  store i64 %2840, ptr %lastRowid4281, align 8
  %2842 = load ptr, ptr %p.addr, align 8
  %nChange4282 = getelementptr inbounds nuw %struct.Vdbe, ptr %2842, i32 0, i32 12
  %2843 = load i32, ptr %nChange4282, align 4
  %2844 = load ptr, ptr %pFrame4171, align 8
  %nChange4283 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2844, i32 0, i32 16
  store i32 %2843, ptr %nChange4283, align 8
  %2845 = load ptr, ptr %p.addr, align 8
  %db4284 = getelementptr inbounds nuw %struct.Vdbe, ptr %2845, i32 0, i32 0
  %2846 = load ptr, ptr %db4284, align 8
  %nChange4285 = getelementptr inbounds nuw %struct.sqlite3, ptr %2846, i32 0, i32 31
  %2847 = load i32, ptr %nChange4285, align 4
  %2848 = load ptr, ptr %pFrame4171, align 8
  %nDbChange = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2848, i32 0, i32 17
  store i32 %2847, ptr %nDbChange, align 4
  %2849 = load ptr, ptr %p.addr, align 8
  %pAuxData = getelementptr inbounds nuw %struct.Vdbe, ptr %2849, i32 0, i32 48
  %2850 = load ptr, ptr %pAuxData, align 8
  %2851 = load ptr, ptr %pFrame4171, align 8
  %pAuxData4286 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2851, i32 0, i32 9
  store ptr %2850, ptr %pAuxData4286, align 8
  %2852 = load ptr, ptr %p.addr, align 8
  %pAuxData4287 = getelementptr inbounds nuw %struct.Vdbe, ptr %2852, i32 0, i32 48
  store ptr null, ptr %pAuxData4287, align 8
  %2853 = load ptr, ptr %p.addr, align 8
  %nChange4288 = getelementptr inbounds nuw %struct.Vdbe, ptr %2853, i32 0, i32 12
  store i32 0, ptr %nChange4288, align 4
  %2854 = load ptr, ptr %pFrame4171, align 8
  %2855 = load ptr, ptr %p.addr, align 8
  %pFrame4289 = getelementptr inbounds nuw %struct.Vdbe, ptr %2855, i32 0, i32 43
  store ptr %2854, ptr %pFrame4289, align 8
  %2856 = load ptr, ptr %pFrame4171, align 8
  %arrayidx4290 = getelementptr inbounds nuw i8, ptr %2856, i64 112
  store ptr %arrayidx4290, ptr %aMem, align 8
  %2857 = load ptr, ptr %p.addr, align 8
  %aMem4291 = getelementptr inbounds nuw %struct.Vdbe, ptr %2857, i32 0, i32 19
  store ptr %arrayidx4290, ptr %aMem4291, align 8
  %2858 = load ptr, ptr %pFrame4171, align 8
  %nChildMem4292 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2858, i32 0, i32 14
  %2859 = load i32, ptr %nChildMem4292, align 8
  %2860 = load ptr, ptr %p.addr, align 8
  %nMem4293 = getelementptr inbounds nuw %struct.Vdbe, ptr %2860, i32 0, i32 7
  store i32 %2859, ptr %nMem4293, align 8
  %2861 = load ptr, ptr %pFrame4171, align 8
  %nChildCsr4294 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2861, i32 0, i32 15
  %2862 = load i32, ptr %nChildCsr4294, align 4
  %conv4295 = trunc i32 %2862 to i16
  %conv4296 = zext i16 %conv4295 to i32
  %2863 = load ptr, ptr %p.addr, align 8
  %nCursor4297 = getelementptr inbounds nuw %struct.Vdbe, ptr %2863, i32 0, i32 8
  store i32 %conv4296, ptr %nCursor4297, align 4
  %2864 = load ptr, ptr %aMem, align 8
  %2865 = load ptr, ptr %p.addr, align 8
  %nMem4298 = getelementptr inbounds nuw %struct.Vdbe, ptr %2865, i32 0, i32 7
  %2866 = load i32, ptr %nMem4298, align 8
  %idxprom4299 = sext i32 %2866 to i64
  %arrayidx4300 = getelementptr inbounds %struct.sqlite3_value, ptr %2864, i64 %idxprom4299
  %2867 = load ptr, ptr %p.addr, align 8
  %apCsr4301 = getelementptr inbounds nuw %struct.Vdbe, ptr %2867, i32 0, i32 21
  store ptr %arrayidx4300, ptr %apCsr4301, align 8
  %2868 = load ptr, ptr %p.addr, align 8
  %apCsr4302 = getelementptr inbounds nuw %struct.Vdbe, ptr %2868, i32 0, i32 21
  %2869 = load ptr, ptr %apCsr4302, align 8
  %2870 = load ptr, ptr %pProgram, align 8
  %nCsr4303 = getelementptr inbounds nuw %struct.SubProgram, ptr %2870, i32 0, i32 3
  %2871 = load i32, ptr %nCsr4303, align 8
  %idxprom4304 = sext i32 %2871 to i64
  %arrayidx4305 = getelementptr inbounds ptr, ptr %2869, i64 %idxprom4304
  %2872 = load ptr, ptr %pFrame4171, align 8
  %aOnce4306 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2872, i32 0, i32 6
  store ptr %arrayidx4305, ptr %aOnce4306, align 8
  %2873 = load ptr, ptr %pFrame4171, align 8
  %aOnce4307 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2873, i32 0, i32 6
  %2874 = load ptr, ptr %aOnce4307, align 8
  %2875 = load ptr, ptr %pProgram, align 8
  %nOp4308 = getelementptr inbounds nuw %struct.SubProgram, ptr %2875, i32 0, i32 1
  %2876 = load i32, ptr %nOp4308, align 8
  %add4309 = add nsw i32 %2876, 7
  %div4310 = sdiv i32 %add4309, 8
  %conv4311 = sext i32 %div4310 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %2874, i8 0, i64 %conv4311, i1 false)
  %2877 = load ptr, ptr %pProgram, align 8
  %aOp4312 = getelementptr inbounds nuw %struct.SubProgram, ptr %2877, i32 0, i32 0
  %2878 = load ptr, ptr %aOp4312, align 8
  store ptr %2878, ptr %aOp, align 8
  %2879 = load ptr, ptr %p.addr, align 8
  %aOp4313 = getelementptr inbounds nuw %struct.Vdbe, ptr %2879, i32 0, i32 23
  store ptr %2878, ptr %aOp4313, align 8
  %2880 = load ptr, ptr %pProgram, align 8
  %nOp4314 = getelementptr inbounds nuw %struct.SubProgram, ptr %2880, i32 0, i32 1
  %2881 = load i32, ptr %nOp4314, align 8
  %2882 = load ptr, ptr %p.addr, align 8
  %nOp4315 = getelementptr inbounds nuw %struct.Vdbe, ptr %2882, i32 0, i32 24
  store i32 %2881, ptr %nOp4315, align 8
  %2883 = load ptr, ptr %aOp, align 8
  %arrayidx4316 = getelementptr inbounds %struct.VdbeOp, ptr %2883, i64 -1
  store ptr %arrayidx4316, ptr %pOp, align 8
  br label %check_for_interrupt

sw.bb4317:                                        ; preds = %for.body
  %2884 = load ptr, ptr %p.addr, align 8
  %2885 = load ptr, ptr %pOp, align 8
  %call4319 = call ptr @out2Prerelease(ptr noundef %2884, ptr noundef %2885)
  store ptr %call4319, ptr %pOut, align 8
  %2886 = load ptr, ptr %p.addr, align 8
  %pFrame4320 = getelementptr inbounds nuw %struct.Vdbe, ptr %2886, i32 0, i32 43
  %2887 = load ptr, ptr %pFrame4320, align 8
  store ptr %2887, ptr %pFrame4318, align 8
  %2888 = load ptr, ptr %pFrame4318, align 8
  %aMem4321 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2888, i32 0, i32 4
  %2889 = load ptr, ptr %aMem4321, align 8
  %2890 = load ptr, ptr %pOp, align 8
  %p14322 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2890, i32 0, i32 3
  %2891 = load i32, ptr %p14322, align 4
  %2892 = load ptr, ptr %pFrame4318, align 8
  %aOp4323 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2892, i32 0, i32 2
  %2893 = load ptr, ptr %aOp4323, align 8
  %2894 = load ptr, ptr %pFrame4318, align 8
  %pc4324 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2894, i32 0, i32 11
  %2895 = load i32, ptr %pc4324, align 4
  %idxprom4325 = sext i32 %2895 to i64
  %arrayidx4326 = getelementptr inbounds %struct.VdbeOp, ptr %2893, i64 %idxprom4325
  %p14327 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx4326, i32 0, i32 3
  %2896 = load i32, ptr %p14327, align 4
  %add4328 = add nsw i32 %2891, %2896
  %idxprom4329 = sext i32 %add4328 to i64
  %arrayidx4330 = getelementptr inbounds %struct.sqlite3_value, ptr %2889, i64 %idxprom4329
  store ptr %arrayidx4330, ptr %pIn, align 8
  %2897 = load ptr, ptr %pOut, align 8
  %2898 = load ptr, ptr %pIn, align 8
  call void @sqlite3VdbeMemShallowCopy(ptr noundef %2897, ptr noundef %2898, i32 noundef 4096)
  br label %sw.epilog5364

sw.bb4331:                                        ; preds = %for.body
  %2899 = load ptr, ptr %db, align 8
  %flags4332 = getelementptr inbounds nuw %struct.sqlite3, ptr %2899, i32 0, i32 7
  %2900 = load i64, ptr %flags4332, align 8
  %and4333 = and i64 %2900, 524288
  %tobool4334 = icmp ne i64 %and4333, 0
  br i1 %tobool4334, label %if.then4335, label %if.else4340

if.then4335:                                      ; preds = %sw.bb4331
  %2901 = load ptr, ptr %pOp, align 8
  %p24336 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2901, i32 0, i32 4
  %2902 = load i32, ptr %p24336, align 8
  %conv4337 = sext i32 %2902 to i64
  %2903 = load ptr, ptr %db, align 8
  %nDeferredImmCons4338 = getelementptr inbounds nuw %struct.sqlite3, ptr %2903, i32 0, i32 81
  %2904 = load i64, ptr %nDeferredImmCons4338, align 8
  %add4339 = add nsw i64 %2904, %conv4337
  store i64 %add4339, ptr %nDeferredImmCons4338, align 8
  br label %if.end4353

if.else4340:                                      ; preds = %sw.bb4331
  %2905 = load ptr, ptr %pOp, align 8
  %p14341 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2905, i32 0, i32 3
  %2906 = load i32, ptr %p14341, align 4
  %tobool4342 = icmp ne i32 %2906, 0
  br i1 %tobool4342, label %if.then4343, label %if.else4348

if.then4343:                                      ; preds = %if.else4340
  %2907 = load ptr, ptr %pOp, align 8
  %p24344 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2907, i32 0, i32 4
  %2908 = load i32, ptr %p24344, align 8
  %conv4345 = sext i32 %2908 to i64
  %2909 = load ptr, ptr %db, align 8
  %nDeferredCons4346 = getelementptr inbounds nuw %struct.sqlite3, ptr %2909, i32 0, i32 80
  %2910 = load i64, ptr %nDeferredCons4346, align 8
  %add4347 = add nsw i64 %2910, %conv4345
  store i64 %add4347, ptr %nDeferredCons4346, align 8
  br label %if.end4352

if.else4348:                                      ; preds = %if.else4340
  %2911 = load ptr, ptr %pOp, align 8
  %p24349 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2911, i32 0, i32 4
  %2912 = load i32, ptr %p24349, align 8
  %conv4350 = sext i32 %2912 to i64
  %2913 = load ptr, ptr %p.addr, align 8
  %nFkConstraint = getelementptr inbounds nuw %struct.Vdbe, ptr %2913, i32 0, i32 16
  %2914 = load i64, ptr %nFkConstraint, align 8
  %add4351 = add nsw i64 %2914, %conv4350
  store i64 %add4351, ptr %nFkConstraint, align 8
  br label %if.end4352

if.end4352:                                       ; preds = %if.else4348, %if.then4343
  br label %if.end4353

if.end4353:                                       ; preds = %if.end4352, %if.then4335
  br label %sw.epilog5364

sw.bb4354:                                        ; preds = %for.body
  %2915 = load ptr, ptr %pOp, align 8
  %p14355 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2915, i32 0, i32 3
  %2916 = load i32, ptr %p14355, align 4
  %tobool4356 = icmp ne i32 %2916, 0
  br i1 %tobool4356, label %if.then4357, label %if.else4367

if.then4357:                                      ; preds = %sw.bb4354
  %2917 = load ptr, ptr %db, align 8
  %nDeferredCons4358 = getelementptr inbounds nuw %struct.sqlite3, ptr %2917, i32 0, i32 80
  %2918 = load i64, ptr %nDeferredCons4358, align 8
  %cmp4359 = icmp eq i64 %2918, 0
  br i1 %cmp4359, label %land.lhs.true4361, label %if.end4366

land.lhs.true4361:                                ; preds = %if.then4357
  %2919 = load ptr, ptr %db, align 8
  %nDeferredImmCons4362 = getelementptr inbounds nuw %struct.sqlite3, ptr %2919, i32 0, i32 81
  %2920 = load i64, ptr %nDeferredImmCons4362, align 8
  %cmp4363 = icmp eq i64 %2920, 0
  br i1 %cmp4363, label %if.then4365, label %if.end4366

if.then4365:                                      ; preds = %land.lhs.true4361
  br label %jump_to_p2

if.end4366:                                       ; preds = %land.lhs.true4361, %if.then4357
  br label %if.end4377

if.else4367:                                      ; preds = %sw.bb4354
  %2921 = load ptr, ptr %p.addr, align 8
  %nFkConstraint4368 = getelementptr inbounds nuw %struct.Vdbe, ptr %2921, i32 0, i32 16
  %2922 = load i64, ptr %nFkConstraint4368, align 8
  %cmp4369 = icmp eq i64 %2922, 0
  br i1 %cmp4369, label %land.lhs.true4371, label %if.end4376

land.lhs.true4371:                                ; preds = %if.else4367
  %2923 = load ptr, ptr %db, align 8
  %nDeferredImmCons4372 = getelementptr inbounds nuw %struct.sqlite3, ptr %2923, i32 0, i32 81
  %2924 = load i64, ptr %nDeferredImmCons4372, align 8
  %cmp4373 = icmp eq i64 %2924, 0
  br i1 %cmp4373, label %if.then4375, label %if.end4376

if.then4375:                                      ; preds = %land.lhs.true4371
  br label %jump_to_p2

if.end4376:                                       ; preds = %land.lhs.true4371, %if.else4367
  br label %if.end4377

if.end4377:                                       ; preds = %if.end4376, %if.end4366
  br label %sw.epilog5364

sw.bb4378:                                        ; preds = %for.body
  %2925 = load ptr, ptr %p.addr, align 8
  %pFrame4380 = getelementptr inbounds nuw %struct.Vdbe, ptr %2925, i32 0, i32 43
  %2926 = load ptr, ptr %pFrame4380, align 8
  %tobool4381 = icmp ne ptr %2926, null
  br i1 %tobool4381, label %if.then4382, label %if.else4395

if.then4382:                                      ; preds = %sw.bb4378
  %2927 = load ptr, ptr %p.addr, align 8
  %pFrame4383 = getelementptr inbounds nuw %struct.Vdbe, ptr %2927, i32 0, i32 43
  %2928 = load ptr, ptr %pFrame4383, align 8
  store ptr %2928, ptr %pFrame4379, align 8
  br label %for.cond4384

for.cond4384:                                     ; preds = %for.inc4388, %if.then4382
  %2929 = load ptr, ptr %pFrame4379, align 8
  %pParent4385 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2929, i32 0, i32 1
  %2930 = load ptr, ptr %pParent4385, align 8
  %tobool4386 = icmp ne ptr %2930, null
  br i1 %tobool4386, label %for.body4387, label %for.end4390

for.body4387:                                     ; preds = %for.cond4384
  br label %for.inc4388

for.inc4388:                                      ; preds = %for.body4387
  %2931 = load ptr, ptr %pFrame4379, align 8
  %pParent4389 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2931, i32 0, i32 1
  %2932 = load ptr, ptr %pParent4389, align 8
  store ptr %2932, ptr %pFrame4379, align 8
  br label %for.cond4384, !llvm.loop !24

for.end4390:                                      ; preds = %for.cond4384
  %2933 = load ptr, ptr %pFrame4379, align 8
  %aMem4391 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2933, i32 0, i32 4
  %2934 = load ptr, ptr %aMem4391, align 8
  %2935 = load ptr, ptr %pOp, align 8
  %p14392 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2935, i32 0, i32 3
  %2936 = load i32, ptr %p14392, align 4
  %idxprom4393 = sext i32 %2936 to i64
  %arrayidx4394 = getelementptr inbounds %struct.sqlite3_value, ptr %2934, i64 %idxprom4393
  store ptr %arrayidx4394, ptr %pIn1, align 8
  br label %if.end4399

if.else4395:                                      ; preds = %sw.bb4378
  %2937 = load ptr, ptr %aMem, align 8
  %2938 = load ptr, ptr %pOp, align 8
  %p14396 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2938, i32 0, i32 3
  %2939 = load i32, ptr %p14396, align 4
  %idxprom4397 = sext i32 %2939 to i64
  %arrayidx4398 = getelementptr inbounds %struct.sqlite3_value, ptr %2937, i64 %idxprom4397
  store ptr %arrayidx4398, ptr %pIn1, align 8
  br label %if.end4399

if.end4399:                                       ; preds = %if.else4395, %for.end4390
  %2940 = load ptr, ptr %pIn1, align 8
  %call4400 = call i32 @sqlite3VdbeMemIntegerify(ptr noundef %2940)
  %2941 = load ptr, ptr %aMem, align 8
  %2942 = load ptr, ptr %pOp, align 8
  %p24401 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2942, i32 0, i32 4
  %2943 = load i32, ptr %p24401, align 8
  %idxprom4402 = sext i32 %2943 to i64
  %arrayidx4403 = getelementptr inbounds %struct.sqlite3_value, ptr %2941, i64 %idxprom4402
  store ptr %arrayidx4403, ptr %pIn2, align 8
  %2944 = load ptr, ptr %pIn2, align 8
  %call4404 = call i32 @sqlite3VdbeMemIntegerify(ptr noundef %2944)
  %2945 = load ptr, ptr %pIn1, align 8
  %u4405 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2945, i32 0, i32 0
  %2946 = load i64, ptr %u4405, align 8
  %2947 = load ptr, ptr %pIn2, align 8
  %u4406 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2947, i32 0, i32 0
  %2948 = load i64, ptr %u4406, align 8
  %cmp4407 = icmp slt i64 %2946, %2948
  br i1 %cmp4407, label %if.then4409, label %if.end4412

if.then4409:                                      ; preds = %if.end4399
  %2949 = load ptr, ptr %pIn2, align 8
  %u4410 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2949, i32 0, i32 0
  %2950 = load i64, ptr %u4410, align 8
  %2951 = load ptr, ptr %pIn1, align 8
  %u4411 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2951, i32 0, i32 0
  store i64 %2950, ptr %u4411, align 8
  br label %if.end4412

if.end4412:                                       ; preds = %if.then4409, %if.end4399
  br label %sw.epilog5364

sw.bb4413:                                        ; preds = %for.body
  %2952 = load ptr, ptr %aMem, align 8
  %2953 = load ptr, ptr %pOp, align 8
  %p14414 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2953, i32 0, i32 3
  %2954 = load i32, ptr %p14414, align 4
  %idxprom4415 = sext i32 %2954 to i64
  %arrayidx4416 = getelementptr inbounds %struct.sqlite3_value, ptr %2952, i64 %idxprom4415
  store ptr %arrayidx4416, ptr %pIn1, align 8
  %2955 = load ptr, ptr %pIn1, align 8
  %u4417 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2955, i32 0, i32 0
  %2956 = load i64, ptr %u4417, align 8
  %cmp4418 = icmp sgt i64 %2956, 0
  br i1 %cmp4418, label %if.then4420, label %if.end4425

if.then4420:                                      ; preds = %sw.bb4413
  %2957 = load ptr, ptr %pOp, align 8
  %p34421 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2957, i32 0, i32 5
  %2958 = load i32, ptr %p34421, align 4
  %conv4422 = sext i32 %2958 to i64
  %2959 = load ptr, ptr %pIn1, align 8
  %u4423 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2959, i32 0, i32 0
  %2960 = load i64, ptr %u4423, align 8
  %sub4424 = sub nsw i64 %2960, %conv4422
  store i64 %sub4424, ptr %u4423, align 8
  br label %jump_to_p2

if.end4425:                                       ; preds = %sw.bb4413
  br label %sw.epilog5364

sw.bb4426:                                        ; preds = %for.body
  %2961 = load ptr, ptr %aMem, align 8
  %2962 = load ptr, ptr %pOp, align 8
  %p14428 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2962, i32 0, i32 3
  %2963 = load i32, ptr %p14428, align 4
  %idxprom4429 = sext i32 %2963 to i64
  %arrayidx4430 = getelementptr inbounds %struct.sqlite3_value, ptr %2961, i64 %idxprom4429
  store ptr %arrayidx4430, ptr %pIn1, align 8
  %2964 = load ptr, ptr %aMem, align 8
  %2965 = load ptr, ptr %pOp, align 8
  %p34431 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2965, i32 0, i32 5
  %2966 = load i32, ptr %p34431, align 4
  %idxprom4432 = sext i32 %2966 to i64
  %arrayidx4433 = getelementptr inbounds %struct.sqlite3_value, ptr %2964, i64 %idxprom4432
  store ptr %arrayidx4433, ptr %pIn3, align 8
  %2967 = load ptr, ptr %p.addr, align 8
  %2968 = load ptr, ptr %pOp, align 8
  %call4434 = call ptr @out2Prerelease(ptr noundef %2967, ptr noundef %2968)
  store ptr %call4434, ptr %pOut, align 8
  %2969 = load ptr, ptr %pIn1, align 8
  %u4435 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2969, i32 0, i32 0
  %2970 = load i64, ptr %u4435, align 8
  store i64 %2970, ptr %x4427, align 8
  %2971 = load i64, ptr %x4427, align 8
  %cmp4436 = icmp sle i64 %2971, 0
  br i1 %cmp4436, label %if.then4449, label %lor.lhs.false4438

lor.lhs.false4438:                                ; preds = %sw.bb4426
  %2972 = load ptr, ptr %pIn3, align 8
  %u4439 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2972, i32 0, i32 0
  %2973 = load i64, ptr %u4439, align 8
  %cmp4440 = icmp sgt i64 %2973, 0
  br i1 %cmp4440, label %cond.true4442, label %cond.false4444

cond.true4442:                                    ; preds = %lor.lhs.false4438
  %2974 = load ptr, ptr %pIn3, align 8
  %u4443 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2974, i32 0, i32 0
  %2975 = load i64, ptr %u4443, align 8
  br label %cond.end4445

cond.false4444:                                   ; preds = %lor.lhs.false4438
  br label %cond.end4445

cond.end4445:                                     ; preds = %cond.false4444, %cond.true4442
  %cond4446 = phi i64 [ %2975, %cond.true4442 ], [ 0, %cond.false4444 ]
  %call4447 = call i32 @sqlite3AddInt64(ptr noundef %x4427, i64 noundef %cond4446)
  %tobool4448 = icmp ne i32 %call4447, 0
  br i1 %tobool4448, label %if.then4449, label %if.else4451

if.then4449:                                      ; preds = %cond.end4445, %sw.bb4426
  %2976 = load ptr, ptr %pOut, align 8
  %u4450 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2976, i32 0, i32 0
  store i64 -1, ptr %u4450, align 8
  br label %if.end4453

if.else4451:                                      ; preds = %cond.end4445
  %2977 = load i64, ptr %x4427, align 8
  %2978 = load ptr, ptr %pOut, align 8
  %u4452 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2978, i32 0, i32 0
  store i64 %2977, ptr %u4452, align 8
  br label %if.end4453

if.end4453:                                       ; preds = %if.else4451, %if.then4449
  br label %sw.epilog5364

sw.bb4454:                                        ; preds = %for.body
  %2979 = load ptr, ptr %aMem, align 8
  %2980 = load ptr, ptr %pOp, align 8
  %p14455 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2980, i32 0, i32 3
  %2981 = load i32, ptr %p14455, align 4
  %idxprom4456 = sext i32 %2981 to i64
  %arrayidx4457 = getelementptr inbounds %struct.sqlite3_value, ptr %2979, i64 %idxprom4456
  store ptr %arrayidx4457, ptr %pIn1, align 8
  %2982 = load ptr, ptr %pIn1, align 8
  %u4458 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2982, i32 0, i32 0
  %2983 = load i64, ptr %u4458, align 8
  %tobool4459 = icmp ne i64 %2983, 0
  br i1 %tobool4459, label %if.then4460, label %if.end4468

if.then4460:                                      ; preds = %sw.bb4454
  %2984 = load ptr, ptr %pIn1, align 8
  %u4461 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2984, i32 0, i32 0
  %2985 = load i64, ptr %u4461, align 8
  %cmp4462 = icmp sgt i64 %2985, 0
  br i1 %cmp4462, label %if.then4464, label %if.end4467

if.then4464:                                      ; preds = %if.then4460
  %2986 = load ptr, ptr %pIn1, align 8
  %u4465 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2986, i32 0, i32 0
  %2987 = load i64, ptr %u4465, align 8
  %dec4466 = add nsw i64 %2987, -1
  store i64 %dec4466, ptr %u4465, align 8
  br label %if.end4467

if.end4467:                                       ; preds = %if.then4464, %if.then4460
  br label %jump_to_p2

if.end4468:                                       ; preds = %sw.bb4454
  br label %sw.epilog5364

sw.bb4469:                                        ; preds = %for.body
  %2988 = load ptr, ptr %aMem, align 8
  %2989 = load ptr, ptr %pOp, align 8
  %p14470 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2989, i32 0, i32 3
  %2990 = load i32, ptr %p14470, align 4
  %idxprom4471 = sext i32 %2990 to i64
  %arrayidx4472 = getelementptr inbounds %struct.sqlite3_value, ptr %2988, i64 %idxprom4471
  store ptr %arrayidx4472, ptr %pIn1, align 8
  %2991 = load ptr, ptr %pIn1, align 8
  %u4473 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2991, i32 0, i32 0
  %2992 = load i64, ptr %u4473, align 8
  %cmp4474 = icmp sgt i64 %2992, -9223372036854775808
  br i1 %cmp4474, label %if.then4476, label %if.end4479

if.then4476:                                      ; preds = %sw.bb4469
  %2993 = load ptr, ptr %pIn1, align 8
  %u4477 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2993, i32 0, i32 0
  %2994 = load i64, ptr %u4477, align 8
  %dec4478 = add nsw i64 %2994, -1
  store i64 %dec4478, ptr %u4477, align 8
  br label %if.end4479

if.end4479:                                       ; preds = %if.then4476, %sw.bb4469
  %2995 = load ptr, ptr %pIn1, align 8
  %u4480 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2995, i32 0, i32 0
  %2996 = load i64, ptr %u4480, align 8
  %cmp4481 = icmp eq i64 %2996, 0
  br i1 %cmp4481, label %if.then4483, label %if.end4484

if.then4483:                                      ; preds = %if.end4479
  br label %jump_to_p2

if.end4484:                                       ; preds = %if.end4479
  br label %sw.epilog5364

sw.bb4485:                                        ; preds = %for.body, %for.body
  %2997 = load ptr, ptr %pOp, align 8
  %p54487 = getelementptr inbounds nuw %struct.VdbeOp, ptr %2997, i32 0, i32 2
  %2998 = load i16, ptr %p54487, align 2
  %conv4488 = zext i16 %2998 to i32
  store i32 %conv4488, ptr %n4486, align 4
  %2999 = load ptr, ptr %db, align 8
  %3000 = load i32, ptr %n4486, align 4
  %conv4489 = sext i32 %3000 to i64
  %mul4490 = mul i64 %conv4489, 8
  %add4491 = add i64 %mul4490, 104
  %call4492 = call ptr @sqlite3DbMallocRawNN(ptr noundef %2999, i64 noundef %add4491)
  store ptr %call4492, ptr %pCtx, align 8
  %3001 = load ptr, ptr %pCtx, align 8
  %cmp4493 = icmp eq ptr %3001, null
  br i1 %cmp4493, label %if.then4495, label %if.end4496

if.then4495:                                      ; preds = %sw.bb4485
  br label %no_mem

if.end4496:                                       ; preds = %sw.bb4485
  %3002 = load ptr, ptr %pCtx, align 8
  %pMem4497 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3002, i32 0, i32 2
  store ptr null, ptr %pMem4497, align 8
  %3003 = load ptr, ptr %pCtx, align 8
  %argv = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3003, i32 0, i32 8
  %3004 = load i32, ptr %n4486, align 4
  %idxprom4498 = sext i32 %3004 to i64
  %arrayidx4499 = getelementptr inbounds [1 x ptr], ptr %argv, i64 0, i64 %idxprom4498
  %3005 = load ptr, ptr %pCtx, align 8
  %pOut4500 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3005, i32 0, i32 0
  store ptr %arrayidx4499, ptr %pOut4500, align 8
  %3006 = load ptr, ptr %pCtx, align 8
  %pOut4501 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3006, i32 0, i32 0
  %3007 = load ptr, ptr %pOut4501, align 8
  %3008 = load ptr, ptr %db, align 8
  call void @sqlite3VdbeMemInit(ptr noundef %3007, ptr noundef %3008, i16 noundef zeroext 1)
  %3009 = load ptr, ptr %pOp, align 8
  %p44502 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3009, i32 0, i32 6
  %3010 = load ptr, ptr %p44502, align 8
  %3011 = load ptr, ptr %pCtx, align 8
  %pFunc = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3011, i32 0, i32 1
  store ptr %3010, ptr %pFunc, align 8
  %3012 = load ptr, ptr %pOp, align 8
  %3013 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast4503 = ptrtoint ptr %3012 to i64
  %sub.ptr.rhs.cast4504 = ptrtoint ptr %3013 to i64
  %sub.ptr.sub4505 = sub i64 %sub.ptr.lhs.cast4503, %sub.ptr.rhs.cast4504
  %sub.ptr.div4506 = sdiv exact i64 %sub.ptr.sub4505, 24
  %conv4507 = trunc i64 %sub.ptr.div4506 to i32
  %3014 = load ptr, ptr %pCtx, align 8
  %iOp = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3014, i32 0, i32 4
  store i32 %conv4507, ptr %iOp, align 8
  %3015 = load ptr, ptr %p.addr, align 8
  %3016 = load ptr, ptr %pCtx, align 8
  %pVdbe = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3016, i32 0, i32 3
  store ptr %3015, ptr %pVdbe, align 8
  %3017 = load ptr, ptr %pCtx, align 8
  %skipFlag = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3017, i32 0, i32 6
  store i8 0, ptr %skipFlag, align 8
  %3018 = load ptr, ptr %pCtx, align 8
  %isError = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3018, i32 0, i32 5
  store i32 0, ptr %isError, align 4
  %3019 = load i32, ptr %n4486, align 4
  %conv4508 = trunc i32 %3019 to i8
  %3020 = load ptr, ptr %pCtx, align 8
  %argc = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3020, i32 0, i32 7
  store i8 %conv4508, ptr %argc, align 1
  %3021 = load ptr, ptr %pOp, align 8
  %p4type4509 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3021, i32 0, i32 1
  store i8 -16, ptr %p4type4509, align 1
  %3022 = load ptr, ptr %pCtx, align 8
  %3023 = load ptr, ptr %pOp, align 8
  %p44510 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3023, i32 0, i32 6
  store ptr %3022, ptr %p44510, align 8
  %3024 = load ptr, ptr %pOp, align 8
  %opcode4511 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3024, i32 0, i32 0
  store i8 -101, ptr %opcode4511, align 8
  br label %sw.bb4512

sw.bb4512:                                        ; preds = %if.end4496, %for.body
  %3025 = load ptr, ptr %pOp, align 8
  %p44516 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3025, i32 0, i32 6
  %3026 = load ptr, ptr %p44516, align 8
  store ptr %3026, ptr %pCtx4514, align 8
  %3027 = load ptr, ptr %aMem, align 8
  %3028 = load ptr, ptr %pOp, align 8
  %p34517 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3028, i32 0, i32 5
  %3029 = load i32, ptr %p34517, align 4
  %idxprom4518 = sext i32 %3029 to i64
  %arrayidx4519 = getelementptr inbounds %struct.sqlite3_value, ptr %3027, i64 %idxprom4518
  store ptr %arrayidx4519, ptr %pMem4515, align 8
  %3030 = load ptr, ptr %pCtx4514, align 8
  %pMem4520 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3030, i32 0, i32 2
  %3031 = load ptr, ptr %pMem4520, align 8
  %3032 = load ptr, ptr %pMem4515, align 8
  %cmp4521 = icmp ne ptr %3031, %3032
  br i1 %cmp4521, label %if.then4523, label %if.end4542

if.then4523:                                      ; preds = %sw.bb4512
  %3033 = load ptr, ptr %pMem4515, align 8
  %3034 = load ptr, ptr %pCtx4514, align 8
  %pMem4524 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3034, i32 0, i32 2
  store ptr %3033, ptr %pMem4524, align 8
  %3035 = load ptr, ptr %pCtx4514, align 8
  %argc4525 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3035, i32 0, i32 7
  %3036 = load i8, ptr %argc4525, align 1
  %conv4526 = zext i8 %3036 to i32
  %sub4527 = sub nsw i32 %conv4526, 1
  store i32 %sub4527, ptr %i4513, align 4
  br label %for.cond4528

for.cond4528:                                     ; preds = %for.inc4539, %if.then4523
  %3037 = load i32, ptr %i4513, align 4
  %cmp4529 = icmp sge i32 %3037, 0
  br i1 %cmp4529, label %for.body4531, label %for.end4541

for.body4531:                                     ; preds = %for.cond4528
  %3038 = load ptr, ptr %aMem, align 8
  %3039 = load ptr, ptr %pOp, align 8
  %p24532 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3039, i32 0, i32 4
  %3040 = load i32, ptr %p24532, align 8
  %3041 = load i32, ptr %i4513, align 4
  %add4533 = add nsw i32 %3040, %3041
  %idxprom4534 = sext i32 %add4533 to i64
  %arrayidx4535 = getelementptr inbounds %struct.sqlite3_value, ptr %3038, i64 %idxprom4534
  %3042 = load ptr, ptr %pCtx4514, align 8
  %argv4536 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3042, i32 0, i32 8
  %3043 = load i32, ptr %i4513, align 4
  %idxprom4537 = sext i32 %3043 to i64
  %arrayidx4538 = getelementptr inbounds [1 x ptr], ptr %argv4536, i64 0, i64 %idxprom4537
  store ptr %arrayidx4535, ptr %arrayidx4538, align 8
  br label %for.inc4539

for.inc4539:                                      ; preds = %for.body4531
  %3044 = load i32, ptr %i4513, align 4
  %dec4540 = add nsw i32 %3044, -1
  store i32 %dec4540, ptr %i4513, align 4
  br label %for.cond4528, !llvm.loop !25

for.end4541:                                      ; preds = %for.cond4528
  br label %if.end4542

if.end4542:                                       ; preds = %for.end4541, %sw.bb4512
  %3045 = load ptr, ptr %pMem4515, align 8
  %n4543 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3045, i32 0, i32 4
  %3046 = load i32, ptr %n4543, align 4
  %inc4544 = add nsw i32 %3046, 1
  store i32 %inc4544, ptr %n4543, align 4
  %3047 = load ptr, ptr %pOp, align 8
  %p14545 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3047, i32 0, i32 3
  %3048 = load i32, ptr %p14545, align 4
  %tobool4546 = icmp ne i32 %3048, 0
  br i1 %tobool4546, label %if.then4547, label %if.else4552

if.then4547:                                      ; preds = %if.end4542
  %3049 = load ptr, ptr %pCtx4514, align 8
  %pFunc4548 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3049, i32 0, i32 1
  %3050 = load ptr, ptr %pFunc4548, align 8
  %xInverse = getelementptr inbounds nuw %struct.FuncDef, ptr %3050, i32 0, i32 7
  %3051 = load ptr, ptr %xInverse, align 8
  %3052 = load ptr, ptr %pCtx4514, align 8
  %3053 = load ptr, ptr %pCtx4514, align 8
  %argc4549 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3053, i32 0, i32 7
  %3054 = load i8, ptr %argc4549, align 1
  %conv4550 = zext i8 %3054 to i32
  %3055 = load ptr, ptr %pCtx4514, align 8
  %argv4551 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3055, i32 0, i32 8
  %arraydecay = getelementptr inbounds [1 x ptr], ptr %argv4551, i64 0, i64 0
  call void %3051(ptr noundef %3052, i32 noundef %conv4550, ptr noundef %arraydecay)
  br label %if.end4558

if.else4552:                                      ; preds = %if.end4542
  %3056 = load ptr, ptr %pCtx4514, align 8
  %pFunc4553 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3056, i32 0, i32 1
  %3057 = load ptr, ptr %pFunc4553, align 8
  %xSFunc = getelementptr inbounds nuw %struct.FuncDef, ptr %3057, i32 0, i32 4
  %3058 = load ptr, ptr %xSFunc, align 8
  %3059 = load ptr, ptr %pCtx4514, align 8
  %3060 = load ptr, ptr %pCtx4514, align 8
  %argc4554 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3060, i32 0, i32 7
  %3061 = load i8, ptr %argc4554, align 1
  %conv4555 = zext i8 %3061 to i32
  %3062 = load ptr, ptr %pCtx4514, align 8
  %argv4556 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3062, i32 0, i32 8
  %arraydecay4557 = getelementptr inbounds [1 x ptr], ptr %argv4556, i64 0, i64 0
  call void %3058(ptr noundef %3059, i32 noundef %conv4555, ptr noundef %arraydecay4557)
  br label %if.end4558

if.end4558:                                       ; preds = %if.else4552, %if.then4547
  %3063 = load ptr, ptr %pCtx4514, align 8
  %isError4559 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3063, i32 0, i32 5
  %3064 = load i32, ptr %isError4559, align 4
  %tobool4560 = icmp ne i32 %3064, 0
  br i1 %tobool4560, label %if.then4561, label %if.end4589

if.then4561:                                      ; preds = %if.end4558
  %3065 = load ptr, ptr %pCtx4514, align 8
  %isError4562 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3065, i32 0, i32 5
  %3066 = load i32, ptr %isError4562, align 4
  %cmp4563 = icmp sgt i32 %3066, 0
  br i1 %cmp4563, label %if.then4565, label %if.end4569

if.then4565:                                      ; preds = %if.then4561
  %3067 = load ptr, ptr %p.addr, align 8
  %3068 = load ptr, ptr %pCtx4514, align 8
  %pOut4566 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3068, i32 0, i32 0
  %3069 = load ptr, ptr %pOut4566, align 8
  %call4567 = call ptr @sqlite3_value_text(ptr noundef %3069)
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3067, ptr noundef @.str.20, ptr noundef %call4567)
  %3070 = load ptr, ptr %pCtx4514, align 8
  %isError4568 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3070, i32 0, i32 5
  %3071 = load i32, ptr %isError4568, align 4
  store i32 %3071, ptr %rc, align 4
  br label %if.end4569

if.end4569:                                       ; preds = %if.then4565, %if.then4561
  %3072 = load ptr, ptr %pCtx4514, align 8
  %skipFlag4570 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3072, i32 0, i32 6
  %3073 = load i8, ptr %skipFlag4570, align 8
  %tobool4571 = icmp ne i8 %3073, 0
  br i1 %tobool4571, label %if.then4572, label %if.end4581

if.then4572:                                      ; preds = %if.end4569
  %3074 = load ptr, ptr %pOp, align 8
  %arrayidx4573 = getelementptr inbounds %struct.VdbeOp, ptr %3074, i64 -1
  %p14574 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx4573, i32 0, i32 3
  %3075 = load i32, ptr %p14574, align 4
  store i32 %3075, ptr %i4513, align 4
  %3076 = load i32, ptr %i4513, align 4
  %tobool4575 = icmp ne i32 %3076, 0
  br i1 %tobool4575, label %if.then4576, label %if.end4579

if.then4576:                                      ; preds = %if.then4572
  %3077 = load ptr, ptr %aMem, align 8
  %3078 = load i32, ptr %i4513, align 4
  %idxprom4577 = sext i32 %3078 to i64
  %arrayidx4578 = getelementptr inbounds %struct.sqlite3_value, ptr %3077, i64 %idxprom4577
  call void @sqlite3VdbeMemSetInt64(ptr noundef %arrayidx4578, i64 noundef 1)
  br label %if.end4579

if.end4579:                                       ; preds = %if.then4576, %if.then4572
  %3079 = load ptr, ptr %pCtx4514, align 8
  %skipFlag4580 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3079, i32 0, i32 6
  store i8 0, ptr %skipFlag4580, align 8
  br label %if.end4581

if.end4581:                                       ; preds = %if.end4579, %if.end4569
  %3080 = load ptr, ptr %pCtx4514, align 8
  %pOut4582 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3080, i32 0, i32 0
  %3081 = load ptr, ptr %pOut4582, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %3081)
  %3082 = load ptr, ptr %pCtx4514, align 8
  %pOut4583 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3082, i32 0, i32 0
  %3083 = load ptr, ptr %pOut4583, align 8
  %flags4584 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3083, i32 0, i32 1
  store i16 1, ptr %flags4584, align 8
  %3084 = load ptr, ptr %pCtx4514, align 8
  %isError4585 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3084, i32 0, i32 5
  store i32 0, ptr %isError4585, align 4
  %3085 = load i32, ptr %rc, align 4
  %tobool4586 = icmp ne i32 %3085, 0
  br i1 %tobool4586, label %if.then4587, label %if.end4588

if.then4587:                                      ; preds = %if.end4581
  br label %abort_due_to_error

if.end4588:                                       ; preds = %if.end4581
  br label %if.end4589

if.end4589:                                       ; preds = %if.end4588, %if.end4558
  br label %sw.epilog5364

sw.bb4590:                                        ; preds = %for.body, %for.body
  %3086 = load ptr, ptr %aMem, align 8
  %3087 = load ptr, ptr %pOp, align 8
  %p14592 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3087, i32 0, i32 3
  %3088 = load i32, ptr %p14592, align 4
  %idxprom4593 = sext i32 %3088 to i64
  %arrayidx4594 = getelementptr inbounds %struct.sqlite3_value, ptr %3086, i64 %idxprom4593
  store ptr %arrayidx4594, ptr %pMem4591, align 8
  %3089 = load ptr, ptr %pOp, align 8
  %p34595 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3089, i32 0, i32 5
  %3090 = load i32, ptr %p34595, align 4
  %tobool4596 = icmp ne i32 %3090, 0
  br i1 %tobool4596, label %if.then4597, label %if.else4606

if.then4597:                                      ; preds = %sw.bb4590
  %3091 = load ptr, ptr %pMem4591, align 8
  %3092 = load ptr, ptr %aMem, align 8
  %3093 = load ptr, ptr %pOp, align 8
  %p34598 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3093, i32 0, i32 5
  %3094 = load i32, ptr %p34598, align 4
  %idxprom4599 = sext i32 %3094 to i64
  %arrayidx4600 = getelementptr inbounds %struct.sqlite3_value, ptr %3092, i64 %idxprom4599
  %3095 = load ptr, ptr %pOp, align 8
  %p44601 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3095, i32 0, i32 6
  %3096 = load ptr, ptr %p44601, align 8
  %call4602 = call i32 @sqlite3VdbeMemAggValue(ptr noundef %3091, ptr noundef %arrayidx4600, ptr noundef %3096)
  store i32 %call4602, ptr %rc, align 4
  %3097 = load ptr, ptr %aMem, align 8
  %3098 = load ptr, ptr %pOp, align 8
  %p34603 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3098, i32 0, i32 5
  %3099 = load i32, ptr %p34603, align 4
  %idxprom4604 = sext i32 %3099 to i64
  %arrayidx4605 = getelementptr inbounds %struct.sqlite3_value, ptr %3097, i64 %idxprom4604
  store ptr %arrayidx4605, ptr %pMem4591, align 8
  br label %if.end4609

if.else4606:                                      ; preds = %sw.bb4590
  %3100 = load ptr, ptr %pMem4591, align 8
  %3101 = load ptr, ptr %pOp, align 8
  %p44607 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3101, i32 0, i32 6
  %3102 = load ptr, ptr %p44607, align 8
  %call4608 = call i32 @sqlite3VdbeMemFinalize(ptr noundef %3100, ptr noundef %3102)
  store i32 %call4608, ptr %rc, align 4
  br label %if.end4609

if.end4609:                                       ; preds = %if.else4606, %if.then4597
  %3103 = load i32, ptr %rc, align 4
  %tobool4610 = icmp ne i32 %3103, 0
  br i1 %tobool4610, label %if.then4611, label %if.end4613

if.then4611:                                      ; preds = %if.end4609
  %3104 = load ptr, ptr %p.addr, align 8
  %3105 = load ptr, ptr %pMem4591, align 8
  %call4612 = call ptr @sqlite3_value_text(ptr noundef %3105)
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3104, ptr noundef @.str.20, ptr noundef %call4612)
  br label %abort_due_to_error

if.end4613:                                       ; preds = %if.end4609
  %3106 = load ptr, ptr %pMem4591, align 8
  %3107 = load i8, ptr %encoding, align 1
  %conv4614 = zext i8 %3107 to i32
  %call4615 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %3106, i32 noundef %conv4614)
  %3108 = load ptr, ptr %pMem4591, align 8
  %call4616 = call i32 @sqlite3VdbeMemTooBig(ptr noundef %3108)
  %tobool4617 = icmp ne i32 %call4616, 0
  br i1 %tobool4617, label %if.then4618, label %if.end4619

if.then4618:                                      ; preds = %if.end4613
  br label %too_big

if.end4619:                                       ; preds = %if.end4613
  br label %sw.epilog5364

sw.bb4620:                                        ; preds = %for.body
  %arrayidx4623 = getelementptr inbounds [3 x i32], ptr %aRes, i64 0, i64 0
  store i32 0, ptr %arrayidx4623, align 4
  %arrayidx4624 = getelementptr inbounds [3 x i32], ptr %aRes, i64 0, i64 2
  store i32 -1, ptr %arrayidx4624, align 4
  %arrayidx4625 = getelementptr inbounds [3 x i32], ptr %aRes, i64 0, i64 1
  store i32 -1, ptr %arrayidx4625, align 4
  %3109 = load ptr, ptr %db, align 8
  %3110 = load ptr, ptr %pOp, align 8
  %p14626 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3110, i32 0, i32 3
  %3111 = load i32, ptr %p14626, align 4
  %3112 = load ptr, ptr %pOp, align 8
  %p24627 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3112, i32 0, i32 4
  %3113 = load i32, ptr %p24627, align 8
  %arrayidx4628 = getelementptr inbounds [3 x i32], ptr %aRes, i64 0, i64 1
  %arrayidx4629 = getelementptr inbounds [3 x i32], ptr %aRes, i64 0, i64 2
  %call4630 = call i32 @sqlite3Checkpoint(ptr noundef %3109, i32 noundef %3111, i32 noundef %3113, ptr noundef %arrayidx4628, ptr noundef %arrayidx4629)
  store i32 %call4630, ptr %rc, align 4
  %3114 = load i32, ptr %rc, align 4
  %tobool4631 = icmp ne i32 %3114, 0
  br i1 %tobool4631, label %if.then4632, label %if.end4638

if.then4632:                                      ; preds = %sw.bb4620
  %3115 = load i32, ptr %rc, align 4
  %cmp4633 = icmp ne i32 %3115, 5
  br i1 %cmp4633, label %if.then4635, label %if.end4636

if.then4635:                                      ; preds = %if.then4632
  br label %abort_due_to_error

if.end4636:                                       ; preds = %if.then4632
  store i32 0, ptr %rc, align 4
  %arrayidx4637 = getelementptr inbounds [3 x i32], ptr %aRes, i64 0, i64 0
  store i32 1, ptr %arrayidx4637, align 4
  br label %if.end4638

if.end4638:                                       ; preds = %if.end4636, %sw.bb4620
  store i32 0, ptr %i4621, align 4
  %3116 = load ptr, ptr %aMem, align 8
  %3117 = load ptr, ptr %pOp, align 8
  %p34639 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3117, i32 0, i32 5
  %3118 = load i32, ptr %p34639, align 4
  %idxprom4640 = sext i32 %3118 to i64
  %arrayidx4641 = getelementptr inbounds %struct.sqlite3_value, ptr %3116, i64 %idxprom4640
  store ptr %arrayidx4641, ptr %pMem4622, align 8
  br label %for.cond4642

for.cond4642:                                     ; preds = %for.inc4649, %if.end4638
  %3119 = load i32, ptr %i4621, align 4
  %cmp4643 = icmp slt i32 %3119, 3
  br i1 %cmp4643, label %for.body4645, label %for.end4652

for.body4645:                                     ; preds = %for.cond4642
  %3120 = load ptr, ptr %pMem4622, align 8
  %3121 = load i32, ptr %i4621, align 4
  %idxprom4646 = sext i32 %3121 to i64
  %arrayidx4647 = getelementptr inbounds [3 x i32], ptr %aRes, i64 0, i64 %idxprom4646
  %3122 = load i32, ptr %arrayidx4647, align 4
  %conv4648 = sext i32 %3122 to i64
  call void @sqlite3VdbeMemSetInt64(ptr noundef %3120, i64 noundef %conv4648)
  br label %for.inc4649

for.inc4649:                                      ; preds = %for.body4645
  %3123 = load i32, ptr %i4621, align 4
  %inc4650 = add nsw i32 %3123, 1
  store i32 %inc4650, ptr %i4621, align 4
  %3124 = load ptr, ptr %pMem4622, align 8
  %incdec.ptr4651 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3124, i32 1
  store ptr %incdec.ptr4651, ptr %pMem4622, align 8
  br label %for.cond4642, !llvm.loop !26

for.end4652:                                      ; preds = %for.cond4642
  br label %sw.epilog5364

sw.bb4653:                                        ; preds = %for.body
  %3125 = load ptr, ptr %p.addr, align 8
  %3126 = load ptr, ptr %pOp, align 8
  %call4655 = call ptr @out2Prerelease(ptr noundef %3125, ptr noundef %3126)
  store ptr %call4655, ptr %pOut, align 8
  %3127 = load ptr, ptr %pOp, align 8
  %p34656 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3127, i32 0, i32 5
  %3128 = load i32, ptr %p34656, align 4
  store i32 %3128, ptr %eNew, align 4
  %3129 = load ptr, ptr %db, align 8
  %aDb4657 = getelementptr inbounds nuw %struct.sqlite3, ptr %3129, i32 0, i32 4
  %3130 = load ptr, ptr %aDb4657, align 8
  %3131 = load ptr, ptr %pOp, align 8
  %p14658 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3131, i32 0, i32 3
  %3132 = load i32, ptr %p14658, align 4
  %idxprom4659 = sext i32 %3132 to i64
  %arrayidx4660 = getelementptr inbounds %struct.Db, ptr %3130, i64 %idxprom4659
  %pBt4661 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx4660, i32 0, i32 1
  %3133 = load ptr, ptr %pBt4661, align 8
  store ptr %3133, ptr %pBt4654, align 8
  %3134 = load ptr, ptr %pBt4654, align 8
  %call4662 = call ptr @sqlite3BtreePager(ptr noundef %3134)
  store ptr %call4662, ptr %pPager, align 8
  %3135 = load ptr, ptr %pPager, align 8
  %call4663 = call i32 @sqlite3PagerGetJournalMode(ptr noundef %3135)
  store i32 %call4663, ptr %eOld, align 4
  %3136 = load i32, ptr %eNew, align 4
  %cmp4664 = icmp eq i32 %3136, -1
  br i1 %cmp4664, label %if.then4666, label %if.end4667

if.then4666:                                      ; preds = %sw.bb4653
  %3137 = load i32, ptr %eOld, align 4
  store i32 %3137, ptr %eNew, align 4
  br label %if.end4667

if.end4667:                                       ; preds = %if.then4666, %sw.bb4653
  %3138 = load ptr, ptr %pPager, align 8
  %call4668 = call i32 @sqlite3PagerOkToChangeJournalMode(ptr noundef %3138)
  %tobool4669 = icmp ne i32 %call4668, 0
  br i1 %tobool4669, label %if.end4671, label %if.then4670

if.then4670:                                      ; preds = %if.end4667
  %3139 = load i32, ptr %eOld, align 4
  store i32 %3139, ptr %eNew, align 4
  br label %if.end4671

if.end4671:                                       ; preds = %if.then4670, %if.end4667
  %3140 = load ptr, ptr %pPager, align 8
  %call4672 = call ptr @sqlite3PagerFilename(ptr noundef %3140, i32 noundef 1)
  store ptr %call4672, ptr %zFilename, align 8
  %3141 = load i32, ptr %eNew, align 4
  %cmp4673 = icmp eq i32 %3141, 5
  br i1 %cmp4673, label %land.lhs.true4675, label %if.end4683

land.lhs.true4675:                                ; preds = %if.end4671
  %3142 = load ptr, ptr %zFilename, align 8
  %call4676 = call i32 @sqlite3Strlen30(ptr noundef %3142)
  %cmp4677 = icmp eq i32 %call4676, 0
  br i1 %cmp4677, label %if.then4682, label %lor.lhs.false4679

lor.lhs.false4679:                                ; preds = %land.lhs.true4675
  %3143 = load ptr, ptr %pPager, align 8
  %call4680 = call i32 @sqlite3PagerWalSupported(ptr noundef %3143)
  %tobool4681 = icmp ne i32 %call4680, 0
  br i1 %tobool4681, label %if.end4683, label %if.then4682

if.then4682:                                      ; preds = %lor.lhs.false4679, %land.lhs.true4675
  %3144 = load i32, ptr %eOld, align 4
  store i32 %3144, ptr %eNew, align 4
  br label %if.end4683

if.end4683:                                       ; preds = %if.then4682, %lor.lhs.false4679, %if.end4671
  %3145 = load i32, ptr %eNew, align 4
  %3146 = load i32, ptr %eOld, align 4
  %cmp4684 = icmp ne i32 %3145, %3146
  br i1 %cmp4684, label %land.lhs.true4686, label %if.end4729

land.lhs.true4686:                                ; preds = %if.end4683
  %3147 = load i32, ptr %eOld, align 4
  %cmp4687 = icmp eq i32 %3147, 5
  br i1 %cmp4687, label %if.then4692, label %lor.lhs.false4689

lor.lhs.false4689:                                ; preds = %land.lhs.true4686
  %3148 = load i32, ptr %eNew, align 4
  %cmp4690 = icmp eq i32 %3148, 5
  br i1 %cmp4690, label %if.then4692, label %if.end4729

if.then4692:                                      ; preds = %lor.lhs.false4689, %land.lhs.true4686
  %3149 = load ptr, ptr %db, align 8
  %autoCommit4693 = getelementptr inbounds nuw %struct.sqlite3, ptr %3149, i32 0, i32 17
  %3150 = load i8, ptr %autoCommit4693, align 1
  %tobool4694 = icmp ne i8 %3150, 0
  br i1 %tobool4694, label %lor.lhs.false4695, label %if.then4699

lor.lhs.false4695:                                ; preds = %if.then4692
  %3151 = load ptr, ptr %db, align 8
  %nVdbeRead4696 = getelementptr inbounds nuw %struct.sqlite3, ptr %3151, i32 0, i32 37
  %3152 = load i32, ptr %nVdbeRead4696, align 4
  %cmp4697 = icmp sgt i32 %3152, 1
  br i1 %cmp4697, label %if.then4699, label %if.else4703

if.then4699:                                      ; preds = %lor.lhs.false4695, %if.then4692
  store i32 1, ptr %rc, align 4
  %3153 = load ptr, ptr %p.addr, align 8
  %3154 = load i32, ptr %eNew, align 4
  %cmp4700 = icmp eq i32 %3154, 5
  %3155 = zext i1 %cmp4700 to i64
  %cond4702 = select i1 %cmp4700, ptr @.str.324, ptr @.str.325
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3153, ptr noundef @.str.323, ptr noundef %cond4702)
  br label %abort_due_to_error

if.else4703:                                      ; preds = %lor.lhs.false4695
  %3156 = load i32, ptr %eOld, align 4
  %cmp4704 = icmp eq i32 %3156, 5
  br i1 %cmp4704, label %if.then4706, label %if.else4713

if.then4706:                                      ; preds = %if.else4703
  %3157 = load ptr, ptr %pPager, align 8
  %3158 = load ptr, ptr %db, align 8
  %call4707 = call i32 @sqlite3PagerCloseWal(ptr noundef %3157, ptr noundef %3158)
  store i32 %call4707, ptr %rc, align 4
  %3159 = load i32, ptr %rc, align 4
  %cmp4708 = icmp eq i32 %3159, 0
  br i1 %cmp4708, label %if.then4710, label %if.end4712

if.then4710:                                      ; preds = %if.then4706
  %3160 = load ptr, ptr %pPager, align 8
  %3161 = load i32, ptr %eNew, align 4
  %call4711 = call i32 @sqlite3PagerSetJournalMode(ptr noundef %3160, i32 noundef %3161)
  br label %if.end4712

if.end4712:                                       ; preds = %if.then4710, %if.then4706
  br label %if.end4719

if.else4713:                                      ; preds = %if.else4703
  %3162 = load i32, ptr %eOld, align 4
  %cmp4714 = icmp eq i32 %3162, 4
  br i1 %cmp4714, label %if.then4716, label %if.end4718

if.then4716:                                      ; preds = %if.else4713
  %3163 = load ptr, ptr %pPager, align 8
  %call4717 = call i32 @sqlite3PagerSetJournalMode(ptr noundef %3163, i32 noundef 2)
  br label %if.end4718

if.end4718:                                       ; preds = %if.then4716, %if.else4713
  br label %if.end4719

if.end4719:                                       ; preds = %if.end4718, %if.end4712
  %3164 = load i32, ptr %rc, align 4
  %cmp4720 = icmp eq i32 %3164, 0
  br i1 %cmp4720, label %if.then4722, label %if.end4727

if.then4722:                                      ; preds = %if.end4719
  %3165 = load ptr, ptr %pBt4654, align 8
  %3166 = load i32, ptr %eNew, align 4
  %cmp4723 = icmp eq i32 %3166, 5
  %3167 = zext i1 %cmp4723 to i64
  %cond4725 = select i1 %cmp4723, i32 2, i32 1
  %call4726 = call i32 @sqlite3BtreeSetVersion(ptr noundef %3165, i32 noundef %cond4725)
  store i32 %call4726, ptr %rc, align 4
  br label %if.end4727

if.end4727:                                       ; preds = %if.then4722, %if.end4719
  br label %if.end4728

if.end4728:                                       ; preds = %if.end4727
  br label %if.end4729

if.end4729:                                       ; preds = %if.end4728, %lor.lhs.false4689, %if.end4683
  %3168 = load i32, ptr %rc, align 4
  %tobool4730 = icmp ne i32 %3168, 0
  br i1 %tobool4730, label %if.then4731, label %if.end4732

if.then4731:                                      ; preds = %if.end4729
  %3169 = load i32, ptr %eOld, align 4
  store i32 %3169, ptr %eNew, align 4
  br label %if.end4732

if.end4732:                                       ; preds = %if.then4731, %if.end4729
  %3170 = load ptr, ptr %pPager, align 8
  %3171 = load i32, ptr %eNew, align 4
  %call4733 = call i32 @sqlite3PagerSetJournalMode(ptr noundef %3170, i32 noundef %3171)
  store i32 %call4733, ptr %eNew, align 4
  %3172 = load ptr, ptr %pOut, align 8
  %flags4734 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3172, i32 0, i32 1
  store i16 2562, ptr %flags4734, align 8
  %3173 = load i32, ptr %eNew, align 4
  %call4735 = call ptr @sqlite3JournalModename(i32 noundef %3173)
  %3174 = load ptr, ptr %pOut, align 8
  %z4736 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3174, i32 0, i32 5
  store ptr %call4735, ptr %z4736, align 8
  %3175 = load ptr, ptr %pOut, align 8
  %z4737 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3175, i32 0, i32 5
  %3176 = load ptr, ptr %z4737, align 8
  %call4738 = call i32 @sqlite3Strlen30(ptr noundef %3176)
  %3177 = load ptr, ptr %pOut, align 8
  %n4739 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3177, i32 0, i32 4
  store i32 %call4738, ptr %n4739, align 4
  %3178 = load ptr, ptr %pOut, align 8
  %enc4740 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3178, i32 0, i32 2
  store i8 1, ptr %enc4740, align 2
  %3179 = load ptr, ptr %pOut, align 8
  %3180 = load i8, ptr %encoding, align 1
  %conv4741 = zext i8 %3180 to i32
  %call4742 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %3179, i32 noundef %conv4741)
  %3181 = load i32, ptr %rc, align 4
  %tobool4743 = icmp ne i32 %3181, 0
  br i1 %tobool4743, label %if.then4744, label %if.end4745

if.then4744:                                      ; preds = %if.end4732
  br label %abort_due_to_error

if.end4745:                                       ; preds = %if.end4732
  br label %sw.epilog5364

sw.bb4746:                                        ; preds = %for.body
  %3182 = load ptr, ptr %p.addr, align 8
  %zErrMsg4747 = getelementptr inbounds nuw %struct.Vdbe, ptr %3182, i32 0, i32 28
  %3183 = load ptr, ptr %db, align 8
  %3184 = load ptr, ptr %pOp, align 8
  %p14748 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3184, i32 0, i32 3
  %3185 = load i32, ptr %p14748, align 4
  %3186 = load ptr, ptr %pOp, align 8
  %p24749 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3186, i32 0, i32 4
  %3187 = load i32, ptr %p24749, align 8
  %tobool4750 = icmp ne i32 %3187, 0
  br i1 %tobool4750, label %cond.true4751, label %cond.false4755

cond.true4751:                                    ; preds = %sw.bb4746
  %3188 = load ptr, ptr %aMem, align 8
  %3189 = load ptr, ptr %pOp, align 8
  %p24752 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3189, i32 0, i32 4
  %3190 = load i32, ptr %p24752, align 8
  %idxprom4753 = sext i32 %3190 to i64
  %arrayidx4754 = getelementptr inbounds %struct.sqlite3_value, ptr %3188, i64 %idxprom4753
  br label %cond.end4756

cond.false4755:                                   ; preds = %sw.bb4746
  br label %cond.end4756

cond.end4756:                                     ; preds = %cond.false4755, %cond.true4751
  %cond4757 = phi ptr [ %arrayidx4754, %cond.true4751 ], [ null, %cond.false4755 ]
  %call4758 = call i32 @sqlite3RunVacuum(ptr noundef %zErrMsg4747, ptr noundef %3183, i32 noundef %3185, ptr noundef %cond4757)
  store i32 %call4758, ptr %rc, align 4
  %3191 = load i32, ptr %rc, align 4
  %tobool4759 = icmp ne i32 %3191, 0
  br i1 %tobool4759, label %if.then4760, label %if.end4761

if.then4760:                                      ; preds = %cond.end4756
  br label %abort_due_to_error

if.end4761:                                       ; preds = %cond.end4756
  br label %sw.epilog5364

sw.bb4762:                                        ; preds = %for.body
  %3192 = load ptr, ptr %db, align 8
  %aDb4764 = getelementptr inbounds nuw %struct.sqlite3, ptr %3192, i32 0, i32 4
  %3193 = load ptr, ptr %aDb4764, align 8
  %3194 = load ptr, ptr %pOp, align 8
  %p14765 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3194, i32 0, i32 3
  %3195 = load i32, ptr %p14765, align 4
  %idxprom4766 = sext i32 %3195 to i64
  %arrayidx4767 = getelementptr inbounds %struct.Db, ptr %3193, i64 %idxprom4766
  %pBt4768 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx4767, i32 0, i32 1
  %3196 = load ptr, ptr %pBt4768, align 8
  store ptr %3196, ptr %pBt4763, align 8
  %3197 = load ptr, ptr %pBt4763, align 8
  %call4769 = call i32 @sqlite3BtreeIncrVacuum(ptr noundef %3197)
  store i32 %call4769, ptr %rc, align 4
  %3198 = load i32, ptr %rc, align 4
  %tobool4770 = icmp ne i32 %3198, 0
  br i1 %tobool4770, label %if.then4771, label %if.end4776

if.then4771:                                      ; preds = %sw.bb4762
  %3199 = load i32, ptr %rc, align 4
  %cmp4772 = icmp ne i32 %3199, 101
  br i1 %cmp4772, label %if.then4774, label %if.end4775

if.then4774:                                      ; preds = %if.then4771
  br label %abort_due_to_error

if.end4775:                                       ; preds = %if.then4771
  store i32 0, ptr %rc, align 4
  br label %jump_to_p2

if.end4776:                                       ; preds = %sw.bb4762
  br label %sw.epilog5364

sw.bb4777:                                        ; preds = %for.body
  %3200 = load ptr, ptr %pOp, align 8
  %p14778 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3200, i32 0, i32 3
  %3201 = load i32, ptr %p14778, align 4
  %tobool4779 = icmp ne i32 %3201, 0
  br i1 %tobool4779, label %if.else4782, label %if.then4780

if.then4780:                                      ; preds = %sw.bb4777
  %3202 = load ptr, ptr %db, align 8
  %3203 = load ptr, ptr %pOp, align 8
  %p24781 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3203, i32 0, i32 4
  %3204 = load i32, ptr %p24781, align 8
  call void @sqlite3ExpirePreparedStatements(ptr noundef %3202, i32 noundef %3204)
  br label %if.end4791

if.else4782:                                      ; preds = %sw.bb4777
  %3205 = load ptr, ptr %pOp, align 8
  %p24783 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3205, i32 0, i32 4
  %3206 = load i32, ptr %p24783, align 8
  %add4784 = add nsw i32 %3206, 1
  %3207 = load ptr, ptr %p.addr, align 8
  %expired4785 = getelementptr inbounds nuw %struct.Vdbe, ptr %3207, i32 0, i32 35
  %3208 = trunc i32 %add4784 to i16
  %bf.load4786 = load i16, ptr %expired4785, align 1
  %bf.value4787 = and i16 %3208, 3
  %bf.clear4788 = and i16 %bf.load4786, -4
  %bf.set4789 = or i16 %bf.clear4788, %bf.value4787
  store i16 %bf.set4789, ptr %expired4785, align 1
  %bf.result.cast4790 = zext i16 %bf.value4787 to i32
  br label %if.end4791

if.end4791:                                       ; preds = %if.else4782, %if.then4780
  br label %sw.epilog5364

sw.bb4792:                                        ; preds = %for.body
  %3209 = load ptr, ptr %pOp, align 8
  %p34793 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3209, i32 0, i32 5
  %3210 = load i32, ptr %p34793, align 4
  %conv4794 = trunc i32 %3210 to i8
  store i8 %conv4794, ptr %isWriteLock, align 1
  %3211 = load i8, ptr %isWriteLock, align 1
  %conv4795 = zext i8 %3211 to i32
  %tobool4796 = icmp ne i32 %conv4795, 0
  br i1 %tobool4796, label %if.then4802, label %lor.lhs.false4797

lor.lhs.false4797:                                ; preds = %sw.bb4792
  %3212 = load ptr, ptr %db, align 8
  %flags4798 = getelementptr inbounds nuw %struct.sqlite3, ptr %3212, i32 0, i32 7
  %3213 = load i64, ptr %flags4798, align 8
  %and4799 = and i64 %3213, 1024
  %cmp4800 = icmp eq i64 0, %and4799
  br i1 %cmp4800, label %if.then4802, label %if.end4821

if.then4802:                                      ; preds = %lor.lhs.false4797, %sw.bb4792
  %3214 = load ptr, ptr %pOp, align 8
  %p14804 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3214, i32 0, i32 3
  %3215 = load i32, ptr %p14804, align 4
  store i32 %3215, ptr %p14803, align 4
  %3216 = load ptr, ptr %db, align 8
  %aDb4805 = getelementptr inbounds nuw %struct.sqlite3, ptr %3216, i32 0, i32 4
  %3217 = load ptr, ptr %aDb4805, align 8
  %3218 = load i32, ptr %p14803, align 4
  %idxprom4806 = sext i32 %3218 to i64
  %arrayidx4807 = getelementptr inbounds %struct.Db, ptr %3217, i64 %idxprom4806
  %pBt4808 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx4807, i32 0, i32 1
  %3219 = load ptr, ptr %pBt4808, align 8
  %3220 = load ptr, ptr %pOp, align 8
  %p24809 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3220, i32 0, i32 4
  %3221 = load i32, ptr %p24809, align 8
  %3222 = load i8, ptr %isWriteLock, align 1
  %call4810 = call i32 @sqlite3BtreeLockTable(ptr noundef %3219, i32 noundef %3221, i8 noundef zeroext %3222)
  store i32 %call4810, ptr %rc, align 4
  %3223 = load i32, ptr %rc, align 4
  %tobool4811 = icmp ne i32 %3223, 0
  br i1 %tobool4811, label %if.then4812, label %if.end4820

if.then4812:                                      ; preds = %if.then4802
  %3224 = load i32, ptr %rc, align 4
  %and4813 = and i32 %3224, 255
  %cmp4814 = icmp eq i32 %and4813, 6
  br i1 %cmp4814, label %if.then4816, label %if.end4819

if.then4816:                                      ; preds = %if.then4812
  %3225 = load ptr, ptr %pOp, align 8
  %p44818 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3225, i32 0, i32 6
  %3226 = load ptr, ptr %p44818, align 8
  store ptr %3226, ptr %z4817, align 8
  %3227 = load ptr, ptr %p.addr, align 8
  %3228 = load ptr, ptr %z4817, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3227, ptr noundef @.str.326, ptr noundef %3228)
  br label %if.end4819

if.end4819:                                       ; preds = %if.then4816, %if.then4812
  br label %abort_due_to_error

if.end4820:                                       ; preds = %if.then4802
  br label %if.end4821

if.end4821:                                       ; preds = %if.end4820, %lor.lhs.false4797
  br label %sw.epilog5364

sw.bb4822:                                        ; preds = %for.body
  %3229 = load ptr, ptr %pOp, align 8
  %p44823 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3229, i32 0, i32 6
  %3230 = load ptr, ptr %p44823, align 8
  store ptr %3230, ptr %pVTab, align 8
  %3231 = load ptr, ptr %db, align 8
  %3232 = load ptr, ptr %pVTab, align 8
  %call4824 = call i32 @sqlite3VtabBegin(ptr noundef %3231, ptr noundef %3232)
  store i32 %call4824, ptr %rc, align 4
  %3233 = load ptr, ptr %pVTab, align 8
  %tobool4825 = icmp ne ptr %3233, null
  br i1 %tobool4825, label %if.then4826, label %if.end4828

if.then4826:                                      ; preds = %sw.bb4822
  %3234 = load ptr, ptr %p.addr, align 8
  %3235 = load ptr, ptr %pVTab, align 8
  %pVtab4827 = getelementptr inbounds nuw %struct.VTable, ptr %3235, i32 0, i32 2
  %3236 = load ptr, ptr %pVtab4827, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %3234, ptr noundef %3236)
  br label %if.end4828

if.end4828:                                       ; preds = %if.then4826, %sw.bb4822
  %3237 = load i32, ptr %rc, align 4
  %tobool4829 = icmp ne i32 %3237, 0
  br i1 %tobool4829, label %if.then4830, label %if.end4831

if.then4830:                                      ; preds = %if.end4828
  br label %abort_due_to_error

if.end4831:                                       ; preds = %if.end4828
  br label %sw.epilog5364

sw.bb4832:                                        ; preds = %for.body
  call void @llvm.memset.p0.i64(ptr align 8 %sMem4833, i8 0, i64 56, i1 false)
  %3238 = load ptr, ptr %db, align 8
  %db4834 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %sMem4833, i32 0, i32 9
  store ptr %3238, ptr %db4834, align 8
  %3239 = load ptr, ptr %aMem, align 8
  %3240 = load ptr, ptr %pOp, align 8
  %p24835 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3240, i32 0, i32 4
  %3241 = load i32, ptr %p24835, align 8
  %idxprom4836 = sext i32 %3241 to i64
  %arrayidx4837 = getelementptr inbounds %struct.sqlite3_value, ptr %3239, i64 %idxprom4836
  %call4838 = call i32 @sqlite3VdbeMemCopy(ptr noundef %sMem4833, ptr noundef %arrayidx4837)
  store i32 %call4838, ptr %rc, align 4
  %call4839 = call ptr @sqlite3_value_text(ptr noundef %sMem4833)
  store ptr %call4839, ptr %zTab, align 8
  %3242 = load ptr, ptr %zTab, align 8
  %tobool4840 = icmp ne ptr %3242, null
  br i1 %tobool4840, label %if.then4841, label %if.end4845

if.then4841:                                      ; preds = %sw.bb4832
  %3243 = load ptr, ptr %db, align 8
  %3244 = load ptr, ptr %pOp, align 8
  %p14842 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3244, i32 0, i32 3
  %3245 = load i32, ptr %p14842, align 4
  %3246 = load ptr, ptr %zTab, align 8
  %3247 = load ptr, ptr %p.addr, align 8
  %zErrMsg4843 = getelementptr inbounds nuw %struct.Vdbe, ptr %3247, i32 0, i32 28
  %call4844 = call i32 @sqlite3VtabCallCreate(ptr noundef %3243, i32 noundef %3245, ptr noundef %3246, ptr noundef %zErrMsg4843)
  store i32 %call4844, ptr %rc, align 4
  br label %if.end4845

if.end4845:                                       ; preds = %if.then4841, %sw.bb4832
  call void @sqlite3VdbeMemRelease(ptr noundef %sMem4833)
  %3248 = load i32, ptr %rc, align 4
  %tobool4846 = icmp ne i32 %3248, 0
  br i1 %tobool4846, label %if.then4847, label %if.end4848

if.then4847:                                      ; preds = %if.end4845
  br label %abort_due_to_error

if.end4848:                                       ; preds = %if.end4845
  br label %sw.epilog5364

sw.bb4849:                                        ; preds = %for.body
  %3249 = load ptr, ptr %db, align 8
  %nVDestroy4850 = getelementptr inbounds nuw %struct.sqlite3, ptr %3249, i32 0, i32 40
  %3250 = load i32, ptr %nVDestroy4850, align 8
  %inc4851 = add nsw i32 %3250, 1
  store i32 %inc4851, ptr %nVDestroy4850, align 8
  %3251 = load ptr, ptr %db, align 8
  %3252 = load ptr, ptr %pOp, align 8
  %p14852 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3252, i32 0, i32 3
  %3253 = load i32, ptr %p14852, align 4
  %3254 = load ptr, ptr %pOp, align 8
  %p44853 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3254, i32 0, i32 6
  %3255 = load ptr, ptr %p44853, align 8
  %call4854 = call i32 @sqlite3VtabCallDestroy(ptr noundef %3251, i32 noundef %3253, ptr noundef %3255)
  store i32 %call4854, ptr %rc, align 4
  %3256 = load ptr, ptr %db, align 8
  %nVDestroy4855 = getelementptr inbounds nuw %struct.sqlite3, ptr %3256, i32 0, i32 40
  %3257 = load i32, ptr %nVDestroy4855, align 8
  %dec4856 = add nsw i32 %3257, -1
  store i32 %dec4856, ptr %nVDestroy4855, align 8
  %3258 = load i32, ptr %rc, align 4
  %tobool4857 = icmp ne i32 %3258, 0
  br i1 %tobool4857, label %if.then4858, label %if.end4859

if.then4858:                                      ; preds = %sw.bb4849
  br label %abort_due_to_error

if.end4859:                                       ; preds = %sw.bb4849
  br label %sw.epilog5364

sw.bb4860:                                        ; preds = %for.body
  store ptr null, ptr %pCur4861, align 8
  store ptr null, ptr %pVCur, align 8
  %3259 = load ptr, ptr %pOp, align 8
  %p44864 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3259, i32 0, i32 6
  %3260 = load ptr, ptr %p44864, align 8
  %pVtab4865 = getelementptr inbounds nuw %struct.VTable, ptr %3260, i32 0, i32 2
  %3261 = load ptr, ptr %pVtab4865, align 8
  store ptr %3261, ptr %pVtab4862, align 8
  %3262 = load ptr, ptr %pVtab4862, align 8
  %cmp4866 = icmp eq ptr %3262, null
  br i1 %cmp4866, label %if.then4872, label %lor.lhs.false4868

lor.lhs.false4868:                                ; preds = %sw.bb4860
  %3263 = load ptr, ptr %pVtab4862, align 8
  %pModule4869 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3263, i32 0, i32 0
  %3264 = load ptr, ptr %pModule4869, align 8
  %cmp4870 = icmp eq ptr %3264, null
  br i1 %cmp4870, label %if.then4872, label %if.end4873

if.then4872:                                      ; preds = %lor.lhs.false4868, %sw.bb4860
  store i32 6, ptr %rc, align 4
  br label %abort_due_to_error

if.end4873:                                       ; preds = %lor.lhs.false4868
  %3265 = load ptr, ptr %pVtab4862, align 8
  %pModule4874 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3265, i32 0, i32 0
  %3266 = load ptr, ptr %pModule4874, align 8
  store ptr %3266, ptr %pModule4863, align 8
  %3267 = load ptr, ptr %pModule4863, align 8
  %xOpen = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3267, i32 0, i32 6
  %3268 = load ptr, ptr %xOpen, align 8
  %3269 = load ptr, ptr %pVtab4862, align 8
  %call4875 = call i32 %3268(ptr noundef %3269, ptr noundef %pVCur)
  store i32 %call4875, ptr %rc, align 4
  %3270 = load ptr, ptr %p.addr, align 8
  %3271 = load ptr, ptr %pVtab4862, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %3270, ptr noundef %3271)
  %3272 = load i32, ptr %rc, align 4
  %tobool4876 = icmp ne i32 %3272, 0
  br i1 %tobool4876, label %if.then4877, label %if.end4878

if.then4877:                                      ; preds = %if.end4873
  br label %abort_due_to_error

if.end4878:                                       ; preds = %if.end4873
  %3273 = load ptr, ptr %pVtab4862, align 8
  %3274 = load ptr, ptr %pVCur, align 8
  %pVtab4879 = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %3274, i32 0, i32 0
  store ptr %3273, ptr %pVtab4879, align 8
  %3275 = load ptr, ptr %p.addr, align 8
  %3276 = load ptr, ptr %pOp, align 8
  %p14880 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3276, i32 0, i32 3
  %3277 = load i32, ptr %p14880, align 4
  %call4881 = call ptr @allocateCursor(ptr noundef %3275, i32 noundef %3277, i32 noundef 0, i32 noundef -1, i8 noundef zeroext 2)
  store ptr %call4881, ptr %pCur4861, align 8
  %3278 = load ptr, ptr %pCur4861, align 8
  %tobool4882 = icmp ne ptr %3278, null
  br i1 %tobool4882, label %if.then4883, label %if.else4886

if.then4883:                                      ; preds = %if.end4878
  %3279 = load ptr, ptr %pVCur, align 8
  %3280 = load ptr, ptr %pCur4861, align 8
  %uc4884 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3280, i32 0, i32 12
  store ptr %3279, ptr %uc4884, align 8
  %3281 = load ptr, ptr %pVtab4862, align 8
  %nRef = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3281, i32 0, i32 1
  %3282 = load i32, ptr %nRef, align 8
  %inc4885 = add nsw i32 %3282, 1
  store i32 %inc4885, ptr %nRef, align 8
  br label %if.end4888

if.else4886:                                      ; preds = %if.end4878
  %3283 = load ptr, ptr %pModule4863, align 8
  %xClose = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3283, i32 0, i32 7
  %3284 = load ptr, ptr %xClose, align 8
  %3285 = load ptr, ptr %pVCur, align 8
  %call4887 = call i32 %3284(ptr noundef %3285)
  br label %no_mem

if.end4888:                                       ; preds = %if.then4883
  br label %sw.epilog5364

sw.bb4889:                                        ; preds = %for.body
  %3286 = load ptr, ptr %aMem, align 8
  %3287 = load ptr, ptr %pOp, align 8
  %p34896 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3287, i32 0, i32 5
  %3288 = load i32, ptr %p34896, align 4
  %idxprom4897 = sext i32 %3288 to i64
  %arrayidx4898 = getelementptr inbounds %struct.sqlite3_value, ptr %3286, i64 %idxprom4897
  store ptr %arrayidx4898, ptr %pQuery, align 8
  %3289 = load ptr, ptr %pQuery, align 8
  %arrayidx4899 = getelementptr inbounds %struct.sqlite3_value, ptr %3289, i64 1
  store ptr %arrayidx4899, ptr %pArgc, align 8
  %3290 = load ptr, ptr %p.addr, align 8
  %apCsr4900 = getelementptr inbounds nuw %struct.Vdbe, ptr %3290, i32 0, i32 21
  %3291 = load ptr, ptr %apCsr4900, align 8
  %3292 = load ptr, ptr %pOp, align 8
  %p14901 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3292, i32 0, i32 3
  %3293 = load i32, ptr %p14901, align 4
  %idxprom4902 = sext i32 %3293 to i64
  %arrayidx4903 = getelementptr inbounds ptr, ptr %3291, i64 %idxprom4902
  %3294 = load ptr, ptr %arrayidx4903, align 8
  store ptr %3294, ptr %pCur4893, align 8
  %3295 = load ptr, ptr %pCur4893, align 8
  %uc4904 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3295, i32 0, i32 12
  %3296 = load ptr, ptr %uc4904, align 8
  store ptr %3296, ptr %pVCur4891, align 8
  %3297 = load ptr, ptr %pVCur4891, align 8
  %pVtab4905 = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %3297, i32 0, i32 0
  %3298 = load ptr, ptr %pVtab4905, align 8
  store ptr %3298, ptr %pVtab4892, align 8
  %3299 = load ptr, ptr %pVtab4892, align 8
  %pModule4906 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3299, i32 0, i32 0
  %3300 = load ptr, ptr %pModule4906, align 8
  store ptr %3300, ptr %pModule4890, align 8
  %3301 = load ptr, ptr %pArgc, align 8
  %u4907 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3301, i32 0, i32 0
  %3302 = load i64, ptr %u4907, align 8
  %conv4908 = trunc i64 %3302 to i32
  store i32 %conv4908, ptr %nArg, align 4
  %3303 = load ptr, ptr %pQuery, align 8
  %u4909 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3303, i32 0, i32 0
  %3304 = load i64, ptr %u4909, align 8
  %conv4910 = trunc i64 %3304 to i32
  store i32 %conv4910, ptr %iQuery, align 4
  store i32 0, ptr %res4894, align 4
  %3305 = load ptr, ptr %p.addr, align 8
  %apArg4911 = getelementptr inbounds nuw %struct.Vdbe, ptr %3305, i32 0, i32 20
  %3306 = load ptr, ptr %apArg4911, align 8
  store ptr %3306, ptr %apArg, align 8
  store i32 0, ptr %i4895, align 4
  br label %for.cond4912

for.cond4912:                                     ; preds = %for.inc4921, %sw.bb4889
  %3307 = load i32, ptr %i4895, align 4
  %3308 = load i32, ptr %nArg, align 4
  %cmp4913 = icmp slt i32 %3307, %3308
  br i1 %cmp4913, label %for.body4915, label %for.end4923

for.body4915:                                     ; preds = %for.cond4912
  %3309 = load ptr, ptr %pArgc, align 8
  %3310 = load i32, ptr %i4895, align 4
  %add4916 = add nsw i32 %3310, 1
  %idxprom4917 = sext i32 %add4916 to i64
  %arrayidx4918 = getelementptr inbounds %struct.sqlite3_value, ptr %3309, i64 %idxprom4917
  %3311 = load ptr, ptr %apArg, align 8
  %3312 = load i32, ptr %i4895, align 4
  %idxprom4919 = sext i32 %3312 to i64
  %arrayidx4920 = getelementptr inbounds ptr, ptr %3311, i64 %idxprom4919
  store ptr %arrayidx4918, ptr %arrayidx4920, align 8
  br label %for.inc4921

for.inc4921:                                      ; preds = %for.body4915
  %3313 = load i32, ptr %i4895, align 4
  %inc4922 = add nsw i32 %3313, 1
  store i32 %inc4922, ptr %i4895, align 4
  br label %for.cond4912, !llvm.loop !27

for.end4923:                                      ; preds = %for.cond4912
  %3314 = load ptr, ptr %pModule4890, align 8
  %xFilter = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3314, i32 0, i32 8
  %3315 = load ptr, ptr %xFilter, align 8
  %3316 = load ptr, ptr %pVCur4891, align 8
  %3317 = load i32, ptr %iQuery, align 4
  %3318 = load ptr, ptr %pOp, align 8
  %p44924 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3318, i32 0, i32 6
  %3319 = load ptr, ptr %p44924, align 8
  %3320 = load i32, ptr %nArg, align 4
  %3321 = load ptr, ptr %apArg, align 8
  %call4925 = call i32 %3315(ptr noundef %3316, i32 noundef %3317, ptr noundef %3319, i32 noundef %3320, ptr noundef %3321)
  store i32 %call4925, ptr %rc, align 4
  %3322 = load ptr, ptr %p.addr, align 8
  %3323 = load ptr, ptr %pVtab4892, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %3322, ptr noundef %3323)
  %3324 = load i32, ptr %rc, align 4
  %tobool4926 = icmp ne i32 %3324, 0
  br i1 %tobool4926, label %if.then4927, label %if.end4928

if.then4927:                                      ; preds = %for.end4923
  br label %abort_due_to_error

if.end4928:                                       ; preds = %for.end4923
  %3325 = load ptr, ptr %pModule4890, align 8
  %xEof = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3325, i32 0, i32 10
  %3326 = load ptr, ptr %xEof, align 8
  %3327 = load ptr, ptr %pVCur4891, align 8
  %call4929 = call i32 %3326(ptr noundef %3327)
  store i32 %call4929, ptr %res4894, align 4
  %3328 = load ptr, ptr %pCur4893, align 8
  %nullRow4930 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3328, i32 0, i32 2
  store i8 0, ptr %nullRow4930, align 2
  %3329 = load i32, ptr %res4894, align 4
  %tobool4931 = icmp ne i32 %3329, 0
  br i1 %tobool4931, label %if.then4932, label %if.end4933

if.then4932:                                      ; preds = %if.end4928
  br label %jump_to_p2

if.end4933:                                       ; preds = %if.end4928
  br label %sw.epilog5364

sw.bb4934:                                        ; preds = %for.body
  %3330 = load ptr, ptr %p.addr, align 8
  %apCsr4939 = getelementptr inbounds nuw %struct.Vdbe, ptr %3330, i32 0, i32 21
  %3331 = load ptr, ptr %apCsr4939, align 8
  %3332 = load ptr, ptr %pOp, align 8
  %p14940 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3332, i32 0, i32 3
  %3333 = load i32, ptr %p14940, align 4
  %idxprom4941 = sext i32 %3333 to i64
  %arrayidx4942 = getelementptr inbounds ptr, ptr %3331, i64 %idxprom4941
  %3334 = load ptr, ptr %arrayidx4942, align 8
  store ptr %3334, ptr %pCur4938, align 8
  %3335 = load ptr, ptr %aMem, align 8
  %3336 = load ptr, ptr %pOp, align 8
  %p34943 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3336, i32 0, i32 5
  %3337 = load i32, ptr %p34943, align 4
  %idxprom4944 = sext i32 %3337 to i64
  %arrayidx4945 = getelementptr inbounds %struct.sqlite3_value, ptr %3335, i64 %idxprom4944
  store ptr %arrayidx4945, ptr %pDest4937, align 8
  %3338 = load ptr, ptr %pCur4938, align 8
  %nullRow4946 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3338, i32 0, i32 2
  %3339 = load i8, ptr %nullRow4946, align 2
  %tobool4947 = icmp ne i8 %3339, 0
  br i1 %tobool4947, label %if.then4948, label %if.end4949

if.then4948:                                      ; preds = %sw.bb4934
  %3340 = load ptr, ptr %pDest4937, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %3340)
  br label %sw.epilog5364

if.end4949:                                       ; preds = %sw.bb4934
  %3341 = load ptr, ptr %pCur4938, align 8
  %uc4950 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3341, i32 0, i32 12
  %3342 = load ptr, ptr %uc4950, align 8
  %pVtab4951 = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %3342, i32 0, i32 0
  %3343 = load ptr, ptr %pVtab4951, align 8
  store ptr %3343, ptr %pVtab4935, align 8
  %3344 = load ptr, ptr %pVtab4935, align 8
  %pModule4952 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3344, i32 0, i32 0
  %3345 = load ptr, ptr %pModule4952, align 8
  store ptr %3345, ptr %pModule4936, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sContext, i8 0, i64 56, i1 false)
  %3346 = load ptr, ptr %pDest4937, align 8
  %pOut4953 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %sContext, i32 0, i32 0
  store ptr %3346, ptr %pOut4953, align 8
  %3347 = load ptr, ptr %pOp, align 8
  %p54954 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3347, i32 0, i32 2
  %3348 = load i16, ptr %p54954, align 2
  %conv4955 = zext i16 %3348 to i32
  %and4956 = and i32 %conv4955, 1
  %tobool4957 = icmp ne i32 %and4956, 0
  br i1 %tobool4957, label %if.then4958, label %if.else4961

if.then4958:                                      ; preds = %if.end4949
  %3349 = load ptr, ptr %pDest4937, align 8
  call void @sqlite3VdbeMemSetNull(ptr noundef %3349)
  %3350 = load ptr, ptr %pDest4937, align 8
  %flags4959 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3350, i32 0, i32 1
  store i16 16385, ptr %flags4959, align 8
  %3351 = load ptr, ptr %pDest4937, align 8
  %u4960 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3351, i32 0, i32 0
  store i32 0, ptr %u4960, align 8
  br label %if.end4968

if.else4961:                                      ; preds = %if.end4949
  %3352 = load ptr, ptr %pDest4937, align 8
  %flags4962 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3352, i32 0, i32 1
  %3353 = load i16, ptr %flags4962, align 8
  %conv4963 = zext i16 %3353 to i32
  %and4964 = and i32 %conv4963, -49600
  %or4965 = or i32 %and4964, 1
  %conv4966 = trunc i32 %or4965 to i16
  %3354 = load ptr, ptr %pDest4937, align 8
  %flags4967 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3354, i32 0, i32 1
  store i16 %conv4966, ptr %flags4967, align 8
  br label %if.end4968

if.end4968:                                       ; preds = %if.else4961, %if.then4958
  %3355 = load ptr, ptr %pModule4936, align 8
  %xColumn = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3355, i32 0, i32 11
  %3356 = load ptr, ptr %xColumn, align 8
  %3357 = load ptr, ptr %pCur4938, align 8
  %uc4969 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3357, i32 0, i32 12
  %3358 = load ptr, ptr %uc4969, align 8
  %3359 = load ptr, ptr %pOp, align 8
  %p24970 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3359, i32 0, i32 4
  %3360 = load i32, ptr %p24970, align 8
  %call4971 = call i32 %3356(ptr noundef %3358, ptr noundef %sContext, i32 noundef %3360)
  store i32 %call4971, ptr %rc, align 4
  %3361 = load ptr, ptr %p.addr, align 8
  %3362 = load ptr, ptr %pVtab4935, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %3361, ptr noundef %3362)
  %isError4972 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %sContext, i32 0, i32 5
  %3363 = load i32, ptr %isError4972, align 4
  %cmp4973 = icmp sgt i32 %3363, 0
  br i1 %cmp4973, label %if.then4975, label %if.end4978

if.then4975:                                      ; preds = %if.end4968
  %3364 = load ptr, ptr %p.addr, align 8
  %3365 = load ptr, ptr %pDest4937, align 8
  %call4976 = call ptr @sqlite3_value_text(ptr noundef %3365)
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3364, ptr noundef @.str.20, ptr noundef %call4976)
  %isError4977 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %sContext, i32 0, i32 5
  %3366 = load i32, ptr %isError4977, align 4
  store i32 %3366, ptr %rc, align 4
  br label %if.end4978

if.end4978:                                       ; preds = %if.then4975, %if.end4968
  %3367 = load ptr, ptr %pDest4937, align 8
  %3368 = load i8, ptr %encoding, align 1
  %conv4979 = zext i8 %3368 to i32
  %call4980 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %3367, i32 noundef %conv4979)
  %3369 = load ptr, ptr %pDest4937, align 8
  %call4981 = call i32 @sqlite3VdbeMemTooBig(ptr noundef %3369)
  %tobool4982 = icmp ne i32 %call4981, 0
  br i1 %tobool4982, label %if.then4983, label %if.end4984

if.then4983:                                      ; preds = %if.end4978
  br label %too_big

if.end4984:                                       ; preds = %if.end4978
  %3370 = load i32, ptr %rc, align 4
  %tobool4985 = icmp ne i32 %3370, 0
  br i1 %tobool4985, label %if.then4986, label %if.end4987

if.then4986:                                      ; preds = %if.end4984
  br label %abort_due_to_error

if.end4987:                                       ; preds = %if.end4984
  br label %sw.epilog5364

sw.bb4988:                                        ; preds = %for.body
  store i32 0, ptr %res4991, align 4
  %3371 = load ptr, ptr %p.addr, align 8
  %apCsr4993 = getelementptr inbounds nuw %struct.Vdbe, ptr %3371, i32 0, i32 21
  %3372 = load ptr, ptr %apCsr4993, align 8
  %3373 = load ptr, ptr %pOp, align 8
  %p14994 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3373, i32 0, i32 3
  %3374 = load i32, ptr %p14994, align 4
  %idxprom4995 = sext i32 %3374 to i64
  %arrayidx4996 = getelementptr inbounds ptr, ptr %3372, i64 %idxprom4995
  %3375 = load ptr, ptr %arrayidx4996, align 8
  store ptr %3375, ptr %pCur4992, align 8
  %3376 = load ptr, ptr %pCur4992, align 8
  %nullRow4997 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3376, i32 0, i32 2
  %3377 = load i8, ptr %nullRow4997, align 2
  %tobool4998 = icmp ne i8 %3377, 0
  br i1 %tobool4998, label %if.then4999, label %if.end5000

if.then4999:                                      ; preds = %sw.bb4988
  br label %sw.epilog5364

if.end5000:                                       ; preds = %sw.bb4988
  %3378 = load ptr, ptr %pCur4992, align 8
  %uc5001 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3378, i32 0, i32 12
  %3379 = load ptr, ptr %uc5001, align 8
  %pVtab5002 = getelementptr inbounds nuw %struct.sqlite3_vtab_cursor, ptr %3379, i32 0, i32 0
  %3380 = load ptr, ptr %pVtab5002, align 8
  store ptr %3380, ptr %pVtab4989, align 8
  %3381 = load ptr, ptr %pVtab4989, align 8
  %pModule5003 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3381, i32 0, i32 0
  %3382 = load ptr, ptr %pModule5003, align 8
  store ptr %3382, ptr %pModule4990, align 8
  %3383 = load ptr, ptr %pModule4990, align 8
  %xNext = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3383, i32 0, i32 9
  %3384 = load ptr, ptr %xNext, align 8
  %3385 = load ptr, ptr %pCur4992, align 8
  %uc5004 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3385, i32 0, i32 12
  %3386 = load ptr, ptr %uc5004, align 8
  %call5005 = call i32 %3384(ptr noundef %3386)
  store i32 %call5005, ptr %rc, align 4
  %3387 = load ptr, ptr %p.addr, align 8
  %3388 = load ptr, ptr %pVtab4989, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %3387, ptr noundef %3388)
  %3389 = load i32, ptr %rc, align 4
  %tobool5006 = icmp ne i32 %3389, 0
  br i1 %tobool5006, label %if.then5007, label %if.end5008

if.then5007:                                      ; preds = %if.end5000
  br label %abort_due_to_error

if.end5008:                                       ; preds = %if.end5000
  %3390 = load ptr, ptr %pModule4990, align 8
  %xEof5009 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3390, i32 0, i32 10
  %3391 = load ptr, ptr %xEof5009, align 8
  %3392 = load ptr, ptr %pCur4992, align 8
  %uc5010 = getelementptr inbounds nuw %struct.VdbeCursor, ptr %3392, i32 0, i32 12
  %3393 = load ptr, ptr %uc5010, align 8
  %call5011 = call i32 %3391(ptr noundef %3393)
  store i32 %call5011, ptr %res4991, align 4
  %3394 = load i32, ptr %res4991, align 4
  %tobool5012 = icmp ne i32 %3394, 0
  br i1 %tobool5012, label %if.end5014, label %if.then5013

if.then5013:                                      ; preds = %if.end5008
  br label %jump_to_p2_and_check_for_interrupt

if.end5014:                                       ; preds = %if.end5008
  br label %check_for_interrupt

sw.bb5015:                                        ; preds = %for.body
  %3395 = load ptr, ptr %db, align 8
  %flags5017 = getelementptr inbounds nuw %struct.sqlite3, ptr %3395, i32 0, i32 7
  %3396 = load i64, ptr %flags5017, align 8
  %and5018 = and i64 %3396, 67108864
  %conv5019 = trunc i64 %and5018 to i32
  store i32 %conv5019, ptr %isLegacy, align 4
  %3397 = load ptr, ptr %db, align 8
  %flags5020 = getelementptr inbounds nuw %struct.sqlite3, ptr %3397, i32 0, i32 7
  %3398 = load i64, ptr %flags5020, align 8
  %or5021 = or i64 %3398, 67108864
  store i64 %or5021, ptr %flags5020, align 8
  %3399 = load ptr, ptr %pOp, align 8
  %p45022 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3399, i32 0, i32 6
  %3400 = load ptr, ptr %p45022, align 8
  %pVtab5023 = getelementptr inbounds nuw %struct.VTable, ptr %3400, i32 0, i32 2
  %3401 = load ptr, ptr %pVtab5023, align 8
  store ptr %3401, ptr %pVtab5016, align 8
  %3402 = load ptr, ptr %aMem, align 8
  %3403 = load ptr, ptr %pOp, align 8
  %p15024 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3403, i32 0, i32 3
  %3404 = load i32, ptr %p15024, align 4
  %idxprom5025 = sext i32 %3404 to i64
  %arrayidx5026 = getelementptr inbounds %struct.sqlite3_value, ptr %3402, i64 %idxprom5025
  store ptr %arrayidx5026, ptr %pName, align 8
  %3405 = load ptr, ptr %pName, align 8
  %call5027 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %3405, i32 noundef 1)
  store i32 %call5027, ptr %rc, align 4
  %3406 = load i32, ptr %rc, align 4
  %tobool5028 = icmp ne i32 %3406, 0
  br i1 %tobool5028, label %if.then5029, label %if.end5030

if.then5029:                                      ; preds = %sw.bb5015
  br label %abort_due_to_error

if.end5030:                                       ; preds = %sw.bb5015
  %3407 = load ptr, ptr %pVtab5016, align 8
  %pModule5031 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3407, i32 0, i32 0
  %3408 = load ptr, ptr %pModule5031, align 8
  %xRename = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3408, i32 0, i32 19
  %3409 = load ptr, ptr %xRename, align 8
  %3410 = load ptr, ptr %pVtab5016, align 8
  %3411 = load ptr, ptr %pName, align 8
  %z5032 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3411, i32 0, i32 5
  %3412 = load ptr, ptr %z5032, align 8
  %call5033 = call i32 %3409(ptr noundef %3410, ptr noundef %3412)
  store i32 %call5033, ptr %rc, align 4
  %3413 = load i32, ptr %isLegacy, align 4
  %cmp5034 = icmp eq i32 %3413, 0
  br i1 %cmp5034, label %if.then5036, label %if.end5039

if.then5036:                                      ; preds = %if.end5030
  %3414 = load ptr, ptr %db, align 8
  %flags5037 = getelementptr inbounds nuw %struct.sqlite3, ptr %3414, i32 0, i32 7
  %3415 = load i64, ptr %flags5037, align 8
  %and5038 = and i64 %3415, -67108865
  store i64 %and5038, ptr %flags5037, align 8
  br label %if.end5039

if.end5039:                                       ; preds = %if.then5036, %if.end5030
  %3416 = load ptr, ptr %p.addr, align 8
  %3417 = load ptr, ptr %pVtab5016, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %3416, ptr noundef %3417)
  %3418 = load ptr, ptr %p.addr, align 8
  %expired5040 = getelementptr inbounds nuw %struct.Vdbe, ptr %3418, i32 0, i32 35
  %bf.load5041 = load i16, ptr %expired5040, align 1
  %bf.clear5042 = and i16 %bf.load5041, -4
  %bf.set5043 = or i16 %bf.clear5042, 0
  store i16 %bf.set5043, ptr %expired5040, align 1
  %3419 = load i32, ptr %rc, align 4
  %tobool5044 = icmp ne i32 %3419, 0
  br i1 %tobool5044, label %if.then5045, label %if.end5046

if.then5045:                                      ; preds = %if.end5039
  br label %abort_due_to_error

if.end5046:                                       ; preds = %if.end5039
  br label %sw.epilog5364

sw.bb5047:                                        ; preds = %for.body
  %3420 = load ptr, ptr %db, align 8
  %mallocFailed5055 = getelementptr inbounds nuw %struct.sqlite3, ptr %3420, i32 0, i32 19
  %3421 = load i8, ptr %mallocFailed5055, align 1
  %tobool5056 = icmp ne i8 %3421, 0
  br i1 %tobool5056, label %if.then5057, label %if.end5058

if.then5057:                                      ; preds = %sw.bb5047
  br label %no_mem

if.end5058:                                       ; preds = %sw.bb5047
  %3422 = load ptr, ptr %pOp, align 8
  %p45059 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3422, i32 0, i32 6
  %3423 = load ptr, ptr %p45059, align 8
  %pVtab5060 = getelementptr inbounds nuw %struct.VTable, ptr %3423, i32 0, i32 2
  %3424 = load ptr, ptr %pVtab5060, align 8
  store ptr %3424, ptr %pVtab5048, align 8
  %3425 = load ptr, ptr %pVtab5048, align 8
  %cmp5061 = icmp eq ptr %3425, null
  br i1 %cmp5061, label %if.then5067, label %lor.lhs.false5063

lor.lhs.false5063:                                ; preds = %if.end5058
  %3426 = load ptr, ptr %pVtab5048, align 8
  %pModule5064 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3426, i32 0, i32 0
  %3427 = load ptr, ptr %pModule5064, align 8
  %cmp5065 = icmp eq ptr %3427, null
  br i1 %cmp5065, label %if.then5067, label %if.end5068

if.then5067:                                      ; preds = %lor.lhs.false5063, %if.end5058
  store i32 6, ptr %rc, align 4
  br label %abort_due_to_error

if.end5068:                                       ; preds = %lor.lhs.false5063
  %3428 = load ptr, ptr %pVtab5048, align 8
  %pModule5069 = getelementptr inbounds nuw %struct.sqlite3_vtab, ptr %3428, i32 0, i32 0
  %3429 = load ptr, ptr %pModule5069, align 8
  store ptr %3429, ptr %pModule5049, align 8
  %3430 = load ptr, ptr %pOp, align 8
  %p25070 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3430, i32 0, i32 4
  %3431 = load i32, ptr %p25070, align 8
  store i32 %3431, ptr %nArg5050, align 4
  %3432 = load ptr, ptr %pModule5049, align 8
  %xUpdate = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3432, i32 0, i32 13
  %3433 = load ptr, ptr %xUpdate, align 8
  %tobool5071 = icmp ne ptr %3433, null
  br i1 %tobool5071, label %if.then5072, label %if.end5136

if.then5072:                                      ; preds = %if.end5068
  %3434 = load ptr, ptr %db, align 8
  %vtabOnConflict5073 = getelementptr inbounds nuw %struct.sqlite3, ptr %3434, i32 0, i32 24
  %3435 = load i8, ptr %vtabOnConflict5073, align 2
  store i8 %3435, ptr %vtabOnConflict, align 1
  %3436 = load ptr, ptr %p.addr, align 8
  %apArg5074 = getelementptr inbounds nuw %struct.Vdbe, ptr %3436, i32 0, i32 20
  %3437 = load ptr, ptr %apArg5074, align 8
  store ptr %3437, ptr %apArg5053, align 8
  %3438 = load ptr, ptr %aMem, align 8
  %3439 = load ptr, ptr %pOp, align 8
  %p35075 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3439, i32 0, i32 5
  %3440 = load i32, ptr %p35075, align 4
  %idxprom5076 = sext i32 %3440 to i64
  %arrayidx5077 = getelementptr inbounds %struct.sqlite3_value, ptr %3438, i64 %idxprom5076
  store ptr %arrayidx5077, ptr %pX5054, align 8
  store i32 0, ptr %i5051, align 4
  br label %for.cond5078

for.cond5078:                                     ; preds = %for.inc5085, %if.then5072
  %3441 = load i32, ptr %i5051, align 4
  %3442 = load i32, ptr %nArg5050, align 4
  %cmp5079 = icmp slt i32 %3441, %3442
  br i1 %cmp5079, label %for.body5081, label %for.end5087

for.body5081:                                     ; preds = %for.cond5078
  %3443 = load ptr, ptr %pX5054, align 8
  %3444 = load ptr, ptr %apArg5053, align 8
  %3445 = load i32, ptr %i5051, align 4
  %idxprom5082 = sext i32 %3445 to i64
  %arrayidx5083 = getelementptr inbounds ptr, ptr %3444, i64 %idxprom5082
  store ptr %3443, ptr %arrayidx5083, align 8
  %3446 = load ptr, ptr %pX5054, align 8
  %incdec.ptr5084 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3446, i32 1
  store ptr %incdec.ptr5084, ptr %pX5054, align 8
  br label %for.inc5085

for.inc5085:                                      ; preds = %for.body5081
  %3447 = load i32, ptr %i5051, align 4
  %inc5086 = add nsw i32 %3447, 1
  store i32 %inc5086, ptr %i5051, align 4
  br label %for.cond5078, !llvm.loop !28

for.end5087:                                      ; preds = %for.cond5078
  %3448 = load ptr, ptr %pOp, align 8
  %p55088 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3448, i32 0, i32 2
  %3449 = load i16, ptr %p55088, align 2
  %conv5089 = trunc i16 %3449 to i8
  %3450 = load ptr, ptr %db, align 8
  %vtabOnConflict5090 = getelementptr inbounds nuw %struct.sqlite3, ptr %3450, i32 0, i32 24
  store i8 %conv5089, ptr %vtabOnConflict5090, align 2
  %3451 = load ptr, ptr %pModule5049, align 8
  %xUpdate5091 = getelementptr inbounds nuw %struct.sqlite3_module, ptr %3451, i32 0, i32 13
  %3452 = load ptr, ptr %xUpdate5091, align 8
  %3453 = load ptr, ptr %pVtab5048, align 8
  %3454 = load i32, ptr %nArg5050, align 4
  %3455 = load ptr, ptr %apArg5053, align 8
  %call5092 = call i32 %3452(ptr noundef %3453, i32 noundef %3454, ptr noundef %3455, ptr noundef %rowid5052)
  store i32 %call5092, ptr %rc, align 4
  %3456 = load i8, ptr %vtabOnConflict, align 1
  %3457 = load ptr, ptr %db, align 8
  %vtabOnConflict5093 = getelementptr inbounds nuw %struct.sqlite3, ptr %3457, i32 0, i32 24
  store i8 %3456, ptr %vtabOnConflict5093, align 2
  %3458 = load ptr, ptr %p.addr, align 8
  %3459 = load ptr, ptr %pVtab5048, align 8
  call void @sqlite3VtabImportErrmsg(ptr noundef %3458, ptr noundef %3459)
  %3460 = load i32, ptr %rc, align 4
  %cmp5094 = icmp eq i32 %3460, 0
  br i1 %cmp5094, label %land.lhs.true5096, label %if.end5101

land.lhs.true5096:                                ; preds = %for.end5087
  %3461 = load ptr, ptr %pOp, align 8
  %p15097 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3461, i32 0, i32 3
  %3462 = load i32, ptr %p15097, align 4
  %tobool5098 = icmp ne i32 %3462, 0
  br i1 %tobool5098, label %if.then5099, label %if.end5101

if.then5099:                                      ; preds = %land.lhs.true5096
  %3463 = load i64, ptr %rowid5052, align 8
  %3464 = load ptr, ptr %db, align 8
  %lastRowid5100 = getelementptr inbounds nuw %struct.sqlite3, ptr %3464, i32 0, i32 8
  store i64 %3463, ptr %lastRowid5100, align 8
  br label %if.end5101

if.end5101:                                       ; preds = %if.then5099, %land.lhs.true5096, %for.end5087
  %3465 = load i32, ptr %rc, align 4
  %and5102 = and i32 %3465, 255
  %cmp5103 = icmp eq i32 %and5102, 19
  br i1 %cmp5103, label %land.lhs.true5105, label %if.else5129

land.lhs.true5105:                                ; preds = %if.end5101
  %3466 = load ptr, ptr %pOp, align 8
  %p45106 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3466, i32 0, i32 6
  %3467 = load ptr, ptr %p45106, align 8
  %bConstraint = getelementptr inbounds nuw %struct.VTable, ptr %3467, i32 0, i32 4
  %3468 = load i8, ptr %bConstraint, align 4
  %conv5107 = zext i8 %3468 to i32
  %tobool5108 = icmp ne i32 %conv5107, 0
  br i1 %tobool5108, label %if.then5109, label %if.else5129

if.then5109:                                      ; preds = %land.lhs.true5105
  %3469 = load ptr, ptr %pOp, align 8
  %p55110 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3469, i32 0, i32 2
  %3470 = load i16, ptr %p55110, align 2
  %conv5111 = zext i16 %3470 to i32
  %cmp5112 = icmp eq i32 %conv5111, 4
  br i1 %cmp5112, label %if.then5114, label %if.else5115

if.then5114:                                      ; preds = %if.then5109
  store i32 0, ptr %rc, align 4
  br label %if.end5128

if.else5115:                                      ; preds = %if.then5109
  %3471 = load ptr, ptr %pOp, align 8
  %p55116 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3471, i32 0, i32 2
  %3472 = load i16, ptr %p55116, align 2
  %conv5117 = zext i16 %3472 to i32
  %cmp5118 = icmp eq i32 %conv5117, 5
  br i1 %cmp5118, label %cond.true5120, label %cond.false5121

cond.true5120:                                    ; preds = %if.else5115
  br label %cond.end5124

cond.false5121:                                   ; preds = %if.else5115
  %3473 = load ptr, ptr %pOp, align 8
  %p55122 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3473, i32 0, i32 2
  %3474 = load i16, ptr %p55122, align 2
  %conv5123 = zext i16 %3474 to i32
  br label %cond.end5124

cond.end5124:                                     ; preds = %cond.false5121, %cond.true5120
  %cond5125 = phi i32 [ 2, %cond.true5120 ], [ %conv5123, %cond.false5121 ]
  %conv5126 = trunc i32 %cond5125 to i8
  %3475 = load ptr, ptr %p.addr, align 8
  %errorAction5127 = getelementptr inbounds nuw %struct.Vdbe, ptr %3475, i32 0, i32 32
  store i8 %conv5126, ptr %errorAction5127, align 2
  br label %if.end5128

if.end5128:                                       ; preds = %cond.end5124, %if.then5114
  br label %if.end5132

if.else5129:                                      ; preds = %land.lhs.true5105, %if.end5101
  %3476 = load ptr, ptr %p.addr, align 8
  %nChange5130 = getelementptr inbounds nuw %struct.Vdbe, ptr %3476, i32 0, i32 12
  %3477 = load i32, ptr %nChange5130, align 4
  %inc5131 = add nsw i32 %3477, 1
  store i32 %inc5131, ptr %nChange5130, align 4
  br label %if.end5132

if.end5132:                                       ; preds = %if.else5129, %if.end5128
  %3478 = load i32, ptr %rc, align 4
  %tobool5133 = icmp ne i32 %3478, 0
  br i1 %tobool5133, label %if.then5134, label %if.end5135

if.then5134:                                      ; preds = %if.end5132
  br label %abort_due_to_error

if.end5135:                                       ; preds = %if.end5132
  br label %if.end5136

if.end5136:                                       ; preds = %if.end5135, %if.end5068
  br label %sw.epilog5364

sw.bb5137:                                        ; preds = %for.body
  %3479 = load ptr, ptr %p.addr, align 8
  %3480 = load ptr, ptr %pOp, align 8
  %call5138 = call ptr @out2Prerelease(ptr noundef %3479, ptr noundef %3480)
  store ptr %call5138, ptr %pOut, align 8
  %3481 = load ptr, ptr %db, align 8
  %aDb5139 = getelementptr inbounds nuw %struct.sqlite3, ptr %3481, i32 0, i32 4
  %3482 = load ptr, ptr %aDb5139, align 8
  %3483 = load ptr, ptr %pOp, align 8
  %p15140 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3483, i32 0, i32 3
  %3484 = load i32, ptr %p15140, align 4
  %idxprom5141 = sext i32 %3484 to i64
  %arrayidx5142 = getelementptr inbounds %struct.Db, ptr %3482, i64 %idxprom5141
  %pBt5143 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx5142, i32 0, i32 1
  %3485 = load ptr, ptr %pBt5143, align 8
  %call5144 = call i32 @sqlite3BtreeLastPage(ptr noundef %3485)
  %conv5145 = zext i32 %call5144 to i64
  %3486 = load ptr, ptr %pOut, align 8
  %u5146 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3486, i32 0, i32 0
  store i64 %conv5145, ptr %u5146, align 8
  br label %sw.epilog5364

sw.bb5147:                                        ; preds = %for.body
  %3487 = load ptr, ptr %p.addr, align 8
  %3488 = load ptr, ptr %pOp, align 8
  %call5149 = call ptr @out2Prerelease(ptr noundef %3487, ptr noundef %3488)
  store ptr %call5149, ptr %pOut, align 8
  %3489 = load ptr, ptr %db, align 8
  %aDb5150 = getelementptr inbounds nuw %struct.sqlite3, ptr %3489, i32 0, i32 4
  %3490 = load ptr, ptr %aDb5150, align 8
  %3491 = load ptr, ptr %pOp, align 8
  %p15151 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3491, i32 0, i32 3
  %3492 = load i32, ptr %p15151, align 4
  %idxprom5152 = sext i32 %3492 to i64
  %arrayidx5153 = getelementptr inbounds %struct.Db, ptr %3490, i64 %idxprom5152
  %pBt5154 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx5153, i32 0, i32 1
  %3493 = load ptr, ptr %pBt5154, align 8
  store ptr %3493, ptr %pBt5148, align 8
  store i32 0, ptr %newMax, align 4
  %3494 = load ptr, ptr %pOp, align 8
  %p35155 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3494, i32 0, i32 5
  %3495 = load i32, ptr %p35155, align 4
  %tobool5156 = icmp ne i32 %3495, 0
  br i1 %tobool5156, label %if.then5157, label %if.end5165

if.then5157:                                      ; preds = %sw.bb5147
  %3496 = load ptr, ptr %pBt5148, align 8
  %call5158 = call i32 @sqlite3BtreeLastPage(ptr noundef %3496)
  store i32 %call5158, ptr %newMax, align 4
  %3497 = load i32, ptr %newMax, align 4
  %3498 = load ptr, ptr %pOp, align 8
  %p35159 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3498, i32 0, i32 5
  %3499 = load i32, ptr %p35159, align 4
  %cmp5160 = icmp ult i32 %3497, %3499
  br i1 %cmp5160, label %if.then5162, label %if.end5164

if.then5162:                                      ; preds = %if.then5157
  %3500 = load ptr, ptr %pOp, align 8
  %p35163 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3500, i32 0, i32 5
  %3501 = load i32, ptr %p35163, align 4
  store i32 %3501, ptr %newMax, align 4
  br label %if.end5164

if.end5164:                                       ; preds = %if.then5162, %if.then5157
  br label %if.end5165

if.end5165:                                       ; preds = %if.end5164, %sw.bb5147
  %3502 = load ptr, ptr %pBt5148, align 8
  %3503 = load i32, ptr %newMax, align 4
  %call5166 = call i32 @sqlite3BtreeMaxPageCount(ptr noundef %3502, i32 noundef %3503)
  %conv5167 = sext i32 %call5166 to i64
  %3504 = load ptr, ptr %pOut, align 8
  %u5168 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3504, i32 0, i32 0
  store i64 %conv5167, ptr %u5168, align 8
  br label %sw.epilog5364

sw.bb5169:                                        ; preds = %for.body, %for.body
  %3505 = load ptr, ptr %pOp, align 8
  %p55172 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3505, i32 0, i32 2
  %3506 = load i16, ptr %p55172, align 2
  %conv5173 = zext i16 %3506 to i32
  store i32 %conv5173, ptr %n5170, align 4
  %3507 = load ptr, ptr %db, align 8
  %3508 = load i32, ptr %n5170, align 4
  %sub5174 = sub nsw i32 %3508, 1
  %conv5175 = sext i32 %sub5174 to i64
  %mul5176 = mul i64 %conv5175, 8
  %add5177 = add i64 56, %mul5176
  %call5178 = call ptr @sqlite3DbMallocRawNN(ptr noundef %3507, i64 noundef %add5177)
  store ptr %call5178, ptr %pCtx5171, align 8
  %3509 = load ptr, ptr %pCtx5171, align 8
  %cmp5179 = icmp eq ptr %3509, null
  br i1 %cmp5179, label %if.then5181, label %if.end5182

if.then5181:                                      ; preds = %sw.bb5169
  br label %no_mem

if.end5182:                                       ; preds = %sw.bb5169
  %3510 = load ptr, ptr %pCtx5171, align 8
  %pOut5183 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3510, i32 0, i32 0
  store ptr null, ptr %pOut5183, align 8
  %3511 = load ptr, ptr %pOp, align 8
  %p45184 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3511, i32 0, i32 6
  %3512 = load ptr, ptr %p45184, align 8
  %3513 = load ptr, ptr %pCtx5171, align 8
  %pFunc5185 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3513, i32 0, i32 1
  store ptr %3512, ptr %pFunc5185, align 8
  %3514 = load ptr, ptr %pOp, align 8
  %3515 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast5186 = ptrtoint ptr %3514 to i64
  %sub.ptr.rhs.cast5187 = ptrtoint ptr %3515 to i64
  %sub.ptr.sub5188 = sub i64 %sub.ptr.lhs.cast5186, %sub.ptr.rhs.cast5187
  %sub.ptr.div5189 = sdiv exact i64 %sub.ptr.sub5188, 24
  %conv5190 = trunc i64 %sub.ptr.div5189 to i32
  %3516 = load ptr, ptr %pCtx5171, align 8
  %iOp5191 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3516, i32 0, i32 4
  store i32 %conv5190, ptr %iOp5191, align 8
  %3517 = load ptr, ptr %p.addr, align 8
  %3518 = load ptr, ptr %pCtx5171, align 8
  %pVdbe5192 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3518, i32 0, i32 3
  store ptr %3517, ptr %pVdbe5192, align 8
  %3519 = load ptr, ptr %pCtx5171, align 8
  %isError5193 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3519, i32 0, i32 5
  store i32 0, ptr %isError5193, align 4
  %3520 = load i32, ptr %n5170, align 4
  %conv5194 = trunc i32 %3520 to i8
  %3521 = load ptr, ptr %pCtx5171, align 8
  %argc5195 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3521, i32 0, i32 7
  store i8 %conv5194, ptr %argc5195, align 1
  %3522 = load ptr, ptr %pOp, align 8
  %p4type5196 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3522, i32 0, i32 1
  store i8 -16, ptr %p4type5196, align 1
  %3523 = load ptr, ptr %pCtx5171, align 8
  %3524 = load ptr, ptr %pOp, align 8
  %p45197 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3524, i32 0, i32 6
  store ptr %3523, ptr %p45197, align 8
  %3525 = load ptr, ptr %pOp, align 8
  %opcode5198 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3525, i32 0, i32 0
  %3526 = load i8, ptr %opcode5198, align 8
  %conv5199 = zext i8 %3526 to i32
  %add5200 = add nsw i32 %conv5199, 2
  %conv5201 = trunc i32 %add5200 to i8
  store i8 %conv5201, ptr %opcode5198, align 8
  br label %sw.bb5202

sw.bb5202:                                        ; preds = %if.end5182, %for.body, %for.body
  %3527 = load ptr, ptr %pOp, align 8
  %p45205 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3527, i32 0, i32 6
  %3528 = load ptr, ptr %p45205, align 8
  store ptr %3528, ptr %pCtx5204, align 8
  %3529 = load ptr, ptr %aMem, align 8
  %3530 = load ptr, ptr %pOp, align 8
  %p35206 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3530, i32 0, i32 5
  %3531 = load i32, ptr %p35206, align 4
  %idxprom5207 = sext i32 %3531 to i64
  %arrayidx5208 = getelementptr inbounds %struct.sqlite3_value, ptr %3529, i64 %idxprom5207
  store ptr %arrayidx5208, ptr %pOut, align 8
  %3532 = load ptr, ptr %pCtx5204, align 8
  %pOut5209 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3532, i32 0, i32 0
  %3533 = load ptr, ptr %pOut5209, align 8
  %3534 = load ptr, ptr %pOut, align 8
  %cmp5210 = icmp ne ptr %3533, %3534
  br i1 %cmp5210, label %if.then5212, label %if.end5231

if.then5212:                                      ; preds = %sw.bb5202
  %3535 = load ptr, ptr %pOut, align 8
  %3536 = load ptr, ptr %pCtx5204, align 8
  %pOut5213 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3536, i32 0, i32 0
  store ptr %3535, ptr %pOut5213, align 8
  %3537 = load ptr, ptr %pCtx5204, align 8
  %argc5214 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3537, i32 0, i32 7
  %3538 = load i8, ptr %argc5214, align 1
  %conv5215 = zext i8 %3538 to i32
  %sub5216 = sub nsw i32 %conv5215, 1
  store i32 %sub5216, ptr %i5203, align 4
  br label %for.cond5217

for.cond5217:                                     ; preds = %for.inc5228, %if.then5212
  %3539 = load i32, ptr %i5203, align 4
  %cmp5218 = icmp sge i32 %3539, 0
  br i1 %cmp5218, label %for.body5220, label %for.end5230

for.body5220:                                     ; preds = %for.cond5217
  %3540 = load ptr, ptr %aMem, align 8
  %3541 = load ptr, ptr %pOp, align 8
  %p25221 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3541, i32 0, i32 4
  %3542 = load i32, ptr %p25221, align 8
  %3543 = load i32, ptr %i5203, align 4
  %add5222 = add nsw i32 %3542, %3543
  %idxprom5223 = sext i32 %add5222 to i64
  %arrayidx5224 = getelementptr inbounds %struct.sqlite3_value, ptr %3540, i64 %idxprom5223
  %3544 = load ptr, ptr %pCtx5204, align 8
  %argv5225 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3544, i32 0, i32 8
  %3545 = load i32, ptr %i5203, align 4
  %idxprom5226 = sext i32 %3545 to i64
  %arrayidx5227 = getelementptr inbounds [1 x ptr], ptr %argv5225, i64 0, i64 %idxprom5226
  store ptr %arrayidx5224, ptr %arrayidx5227, align 8
  br label %for.inc5228

for.inc5228:                                      ; preds = %for.body5220
  %3546 = load i32, ptr %i5203, align 4
  %dec5229 = add nsw i32 %3546, -1
  store i32 %dec5229, ptr %i5203, align 4
  br label %for.cond5217, !llvm.loop !29

for.end5230:                                      ; preds = %for.cond5217
  br label %if.end5231

if.end5231:                                       ; preds = %for.end5230, %sw.bb5202
  %3547 = load ptr, ptr %pOut, align 8
  %flags5232 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3547, i32 0, i32 1
  %3548 = load i16, ptr %flags5232, align 8
  %conv5233 = zext i16 %3548 to i32
  %and5234 = and i32 %conv5233, -49600
  %or5235 = or i32 %and5234, 1
  %conv5236 = trunc i32 %or5235 to i16
  %3549 = load ptr, ptr %pOut, align 8
  %flags5237 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3549, i32 0, i32 1
  store i16 %conv5236, ptr %flags5237, align 8
  %3550 = load ptr, ptr %pCtx5204, align 8
  %pFunc5238 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3550, i32 0, i32 1
  %3551 = load ptr, ptr %pFunc5238, align 8
  %xSFunc5239 = getelementptr inbounds nuw %struct.FuncDef, ptr %3551, i32 0, i32 4
  %3552 = load ptr, ptr %xSFunc5239, align 8
  %3553 = load ptr, ptr %pCtx5204, align 8
  %3554 = load ptr, ptr %pCtx5204, align 8
  %argc5240 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3554, i32 0, i32 7
  %3555 = load i8, ptr %argc5240, align 1
  %conv5241 = zext i8 %3555 to i32
  %3556 = load ptr, ptr %pCtx5204, align 8
  %argv5242 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3556, i32 0, i32 8
  %arraydecay5243 = getelementptr inbounds [1 x ptr], ptr %argv5242, i64 0, i64 0
  call void %3552(ptr noundef %3553, i32 noundef %conv5241, ptr noundef %arraydecay5243)
  %3557 = load ptr, ptr %pCtx5204, align 8
  %isError5244 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3557, i32 0, i32 5
  %3558 = load i32, ptr %isError5244, align 4
  %tobool5245 = icmp ne i32 %3558, 0
  br i1 %tobool5245, label %if.then5246, label %if.end5261

if.then5246:                                      ; preds = %if.end5231
  %3559 = load ptr, ptr %pCtx5204, align 8
  %isError5247 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3559, i32 0, i32 5
  %3560 = load i32, ptr %isError5247, align 4
  %cmp5248 = icmp sgt i32 %3560, 0
  br i1 %cmp5248, label %if.then5250, label %if.end5253

if.then5250:                                      ; preds = %if.then5246
  %3561 = load ptr, ptr %p.addr, align 8
  %3562 = load ptr, ptr %pOut, align 8
  %call5251 = call ptr @sqlite3_value_text(ptr noundef %3562)
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3561, ptr noundef @.str.20, ptr noundef %call5251)
  %3563 = load ptr, ptr %pCtx5204, align 8
  %isError5252 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3563, i32 0, i32 5
  %3564 = load i32, ptr %isError5252, align 4
  store i32 %3564, ptr %rc, align 4
  br label %if.end5253

if.end5253:                                       ; preds = %if.then5250, %if.then5246
  %3565 = load ptr, ptr %db, align 8
  %3566 = load ptr, ptr %p.addr, align 8
  %pAuxData5254 = getelementptr inbounds nuw %struct.Vdbe, ptr %3566, i32 0, i32 48
  %3567 = load ptr, ptr %pCtx5204, align 8
  %iOp5255 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3567, i32 0, i32 4
  %3568 = load i32, ptr %iOp5255, align 8
  %3569 = load ptr, ptr %pOp, align 8
  %p15256 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3569, i32 0, i32 3
  %3570 = load i32, ptr %p15256, align 4
  call void @sqlite3VdbeDeleteAuxData(ptr noundef %3565, ptr noundef %pAuxData5254, i32 noundef %3568, i32 noundef %3570)
  %3571 = load ptr, ptr %pCtx5204, align 8
  %isError5257 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %3571, i32 0, i32 5
  store i32 0, ptr %isError5257, align 4
  %3572 = load i32, ptr %rc, align 4
  %tobool5258 = icmp ne i32 %3572, 0
  br i1 %tobool5258, label %if.then5259, label %if.end5260

if.then5259:                                      ; preds = %if.end5253
  br label %abort_due_to_error

if.end5260:                                       ; preds = %if.end5253
  br label %if.end5261

if.end5261:                                       ; preds = %if.end5260, %if.end5231
  %3573 = load ptr, ptr %pOut, align 8
  %flags5262 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3573, i32 0, i32 1
  %3574 = load i16, ptr %flags5262, align 8
  %conv5263 = zext i16 %3574 to i32
  %and5264 = and i32 %conv5263, 18
  %tobool5265 = icmp ne i32 %and5264, 0
  br i1 %tobool5265, label %if.then5266, label %if.end5273

if.then5266:                                      ; preds = %if.end5261
  %3575 = load ptr, ptr %pOut, align 8
  %3576 = load i8, ptr %encoding, align 1
  %conv5267 = zext i8 %3576 to i32
  %call5268 = call i32 @sqlite3VdbeChangeEncoding(ptr noundef %3575, i32 noundef %conv5267)
  %3577 = load ptr, ptr %pOut, align 8
  %call5269 = call i32 @sqlite3VdbeMemTooBig(ptr noundef %3577)
  %tobool5270 = icmp ne i32 %call5269, 0
  br i1 %tobool5270, label %if.then5271, label %if.end5272

if.then5271:                                      ; preds = %if.then5266
  br label %too_big

if.end5272:                                       ; preds = %if.then5266
  br label %if.end5273

if.end5273:                                       ; preds = %if.end5272, %if.end5261
  br label %sw.epilog5364

sw.bb5274:                                        ; preds = %for.body, %for.body
  %3578 = load ptr, ptr %db, align 8
  %mTrace5276 = getelementptr inbounds nuw %struct.sqlite3, ptr %3578, i32 0, i32 26
  %3579 = load i8, ptr %mTrace5276, align 8
  %conv5277 = zext i8 %3579 to i32
  %and5278 = and i32 %conv5277, 65
  %cmp5279 = icmp ne i32 %and5278, 0
  br i1 %cmp5279, label %land.lhs.true5281, label %if.end5324

land.lhs.true5281:                                ; preds = %sw.bb5274
  %3580 = load ptr, ptr %p.addr, align 8
  %doingRerun = getelementptr inbounds nuw %struct.Vdbe, ptr %3580, i32 0, i32 35
  %bf.load5282 = load i16, ptr %doingRerun, align 1
  %bf.lshr5283 = lshr i16 %bf.load5282, 4
  %bf.clear5284 = and i16 %bf.lshr5283, 1
  %bf.cast5285 = zext i16 %bf.clear5284 to i32
  %tobool5286 = icmp ne i32 %bf.cast5285, 0
  br i1 %tobool5286, label %if.end5324, label %land.lhs.true5287

land.lhs.true5287:                                ; preds = %land.lhs.true5281
  %3581 = load ptr, ptr %pOp, align 8
  %p45288 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3581, i32 0, i32 6
  %3582 = load ptr, ptr %p45288, align 8
  %tobool5289 = icmp ne ptr %3582, null
  br i1 %tobool5289, label %cond.true5290, label %cond.false5292

cond.true5290:                                    ; preds = %land.lhs.true5287
  %3583 = load ptr, ptr %pOp, align 8
  %p45291 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3583, i32 0, i32 6
  %3584 = load ptr, ptr %p45291, align 8
  br label %cond.end5294

cond.false5292:                                   ; preds = %land.lhs.true5287
  %3585 = load ptr, ptr %p.addr, align 8
  %zSql5293 = getelementptr inbounds nuw %struct.Vdbe, ptr %3585, i32 0, i32 41
  %3586 = load ptr, ptr %zSql5293, align 8
  br label %cond.end5294

cond.end5294:                                     ; preds = %cond.false5292, %cond.true5290
  %cond5295 = phi ptr [ %3584, %cond.true5290 ], [ %3586, %cond.false5292 ]
  store ptr %cond5295, ptr %zTrace, align 8
  %cmp5296 = icmp ne ptr %cond5295, null
  br i1 %cmp5296, label %if.then5298, label %if.end5324

if.then5298:                                      ; preds = %cond.end5294
  %3587 = load ptr, ptr %db, align 8
  %mTrace5299 = getelementptr inbounds nuw %struct.sqlite3, ptr %3587, i32 0, i32 26
  %3588 = load i8, ptr %mTrace5299, align 8
  %conv5300 = zext i8 %3588 to i32
  %and5301 = and i32 %conv5300, 64
  %tobool5302 = icmp ne i32 %and5301, 0
  br i1 %tobool5302, label %if.then5303, label %if.else5309

if.then5303:                                      ; preds = %if.then5298
  %3589 = load ptr, ptr %db, align 8
  %xTrace5305 = getelementptr inbounds nuw %struct.sqlite3, ptr %3589, i32 0, i32 43
  %3590 = load ptr, ptr %xTrace5305, align 8
  store ptr %3590, ptr %x5304, align 8
  %3591 = load ptr, ptr %p.addr, align 8
  %3592 = load ptr, ptr %zTrace, align 8
  %call5307 = call ptr @sqlite3VdbeExpandSql(ptr noundef %3591, ptr noundef %3592)
  store ptr %call5307, ptr %z5306, align 8
  %3593 = load ptr, ptr %x5304, align 8
  %3594 = load ptr, ptr %db, align 8
  %pTraceArg5308 = getelementptr inbounds nuw %struct.sqlite3, ptr %3594, i32 0, i32 44
  %3595 = load ptr, ptr %pTraceArg5308, align 8
  %3596 = load ptr, ptr %z5306, align 8
  call void %3593(ptr noundef %3595, ptr noundef %3596)
  %3597 = load ptr, ptr %z5306, align 8
  call void @sqlite3_free(ptr noundef %3597)
  br label %if.end5323

if.else5309:                                      ; preds = %if.then5298
  %3598 = load ptr, ptr %db, align 8
  %nVdbeExec = getelementptr inbounds nuw %struct.sqlite3, ptr %3598, i32 0, i32 39
  %3599 = load i32, ptr %nVdbeExec, align 4
  %cmp5310 = icmp sgt i32 %3599, 1
  br i1 %cmp5310, label %if.then5312, label %if.else5318

if.then5312:                                      ; preds = %if.else5309
  %3600 = load ptr, ptr %db, align 8
  %3601 = load ptr, ptr %zTrace, align 8
  %call5314 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %3600, ptr noundef @.str.327, ptr noundef %3601)
  store ptr %call5314, ptr %z5313, align 8
  %3602 = load ptr, ptr %db, align 8
  %xTrace5315 = getelementptr inbounds nuw %struct.sqlite3, ptr %3602, i32 0, i32 43
  %3603 = load ptr, ptr %xTrace5315, align 8
  %3604 = load ptr, ptr %db, align 8
  %pTraceArg5316 = getelementptr inbounds nuw %struct.sqlite3, ptr %3604, i32 0, i32 44
  %3605 = load ptr, ptr %pTraceArg5316, align 8
  %3606 = load ptr, ptr %p.addr, align 8
  %3607 = load ptr, ptr %z5313, align 8
  %call5317 = call i32 %3603(i32 noundef 1, ptr noundef %3605, ptr noundef %3606, ptr noundef %3607)
  %3608 = load ptr, ptr %db, align 8
  %3609 = load ptr, ptr %z5313, align 8
  call void @sqlite3DbFree(ptr noundef %3608, ptr noundef %3609)
  br label %if.end5322

if.else5318:                                      ; preds = %if.else5309
  %3610 = load ptr, ptr %db, align 8
  %xTrace5319 = getelementptr inbounds nuw %struct.sqlite3, ptr %3610, i32 0, i32 43
  %3611 = load ptr, ptr %xTrace5319, align 8
  %3612 = load ptr, ptr %db, align 8
  %pTraceArg5320 = getelementptr inbounds nuw %struct.sqlite3, ptr %3612, i32 0, i32 44
  %3613 = load ptr, ptr %pTraceArg5320, align 8
  %3614 = load ptr, ptr %p.addr, align 8
  %3615 = load ptr, ptr %zTrace, align 8
  %call5321 = call i32 %3611(i32 noundef 1, ptr noundef %3613, ptr noundef %3614, ptr noundef %3615)
  br label %if.end5322

if.end5322:                                       ; preds = %if.else5318, %if.then5312
  br label %if.end5323

if.end5323:                                       ; preds = %if.end5322, %if.then5303
  br label %if.end5324

if.end5324:                                       ; preds = %if.end5323, %cond.end5294, %land.lhs.true5281, %sw.bb5274
  %3616 = load ptr, ptr %pOp, align 8
  %p15325 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3616, i32 0, i32 3
  %3617 = load i32, ptr %p15325, align 4
  %3618 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 39), align 8
  %cmp5326 = icmp sge i32 %3617, %3618
  br i1 %cmp5326, label %if.then5328, label %if.end5357

if.then5328:                                      ; preds = %if.end5324
  %3619 = load ptr, ptr %pOp, align 8
  %opcode5329 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3619, i32 0, i32 0
  %3620 = load i8, ptr %opcode5329, align 8
  %conv5330 = zext i8 %3620 to i32
  %cmp5331 = icmp eq i32 %conv5330, 168
  br i1 %cmp5331, label %if.then5333, label %if.end5334

if.then5333:                                      ; preds = %if.then5328
  br label %sw.epilog5364

if.end5334:                                       ; preds = %if.then5328
  store i32 1, ptr %i5275, align 4
  br label %for.cond5335

for.cond5335:                                     ; preds = %for.inc5353, %if.end5334
  %3621 = load i32, ptr %i5275, align 4
  %3622 = load ptr, ptr %p.addr, align 8
  %nOp5336 = getelementptr inbounds nuw %struct.Vdbe, ptr %3622, i32 0, i32 24
  %3623 = load i32, ptr %nOp5336, align 8
  %cmp5337 = icmp slt i32 %3621, %3623
  br i1 %cmp5337, label %for.body5339, label %for.end5355

for.body5339:                                     ; preds = %for.cond5335
  %3624 = load ptr, ptr %p.addr, align 8
  %aOp5340 = getelementptr inbounds nuw %struct.Vdbe, ptr %3624, i32 0, i32 23
  %3625 = load ptr, ptr %aOp5340, align 8
  %3626 = load i32, ptr %i5275, align 4
  %idxprom5341 = sext i32 %3626 to i64
  %arrayidx5342 = getelementptr inbounds %struct.VdbeOp, ptr %3625, i64 %idxprom5341
  %opcode5343 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx5342, i32 0, i32 0
  %3627 = load i8, ptr %opcode5343, align 8
  %conv5344 = zext i8 %3627 to i32
  %cmp5345 = icmp eq i32 %conv5344, 17
  br i1 %cmp5345, label %if.then5347, label %if.end5352

if.then5347:                                      ; preds = %for.body5339
  %3628 = load ptr, ptr %p.addr, align 8
  %aOp5348 = getelementptr inbounds nuw %struct.Vdbe, ptr %3628, i32 0, i32 23
  %3629 = load ptr, ptr %aOp5348, align 8
  %3630 = load i32, ptr %i5275, align 4
  %idxprom5349 = sext i32 %3630 to i64
  %arrayidx5350 = getelementptr inbounds %struct.VdbeOp, ptr %3629, i64 %idxprom5349
  %p15351 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx5350, i32 0, i32 3
  store i32 0, ptr %p15351, align 4
  br label %if.end5352

if.end5352:                                       ; preds = %if.then5347, %for.body5339
  br label %for.inc5353

for.inc5353:                                      ; preds = %if.end5352
  %3631 = load i32, ptr %i5275, align 4
  %inc5354 = add nsw i32 %3631, 1
  store i32 %inc5354, ptr %i5275, align 4
  br label %for.cond5335, !llvm.loop !30

for.end5355:                                      ; preds = %for.cond5335
  %3632 = load ptr, ptr %pOp, align 8
  %p15356 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3632, i32 0, i32 3
  store i32 0, ptr %p15356, align 4
  br label %if.end5357

if.end5357:                                       ; preds = %for.end5355, %if.end5324
  %3633 = load ptr, ptr %pOp, align 8
  %p15358 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3633, i32 0, i32 3
  %3634 = load i32, ptr %p15358, align 4
  %inc5359 = add nsw i32 %3634, 1
  store i32 %inc5359, ptr %p15358, align 4
  %3635 = load ptr, ptr %p.addr, align 8
  %aCounter5360 = getelementptr inbounds nuw %struct.Vdbe, ptr %3635, i32 0, i32 39
  %arrayidx5361 = getelementptr inbounds [7 x i32], ptr %aCounter5360, i64 0, i64 6
  %3636 = load i32, ptr %arrayidx5361, align 8
  %inc5362 = add i32 %3636, 1
  store i32 %inc5362, ptr %arrayidx5361, align 8
  br label %jump_to_p2

sw.default5363:                                   ; preds = %for.body
  br label %sw.epilog5364

sw.epilog5364:                                    ; preds = %sw.default5363, %if.then5333, %if.end5273, %if.end5165, %sw.bb5137, %if.end5136, %if.end5046, %if.then4999, %if.end4987, %if.then4948, %if.end4933, %if.end4888, %if.end4859, %if.end4848, %if.end4831, %if.end4821, %if.end4791, %if.end4776, %if.end4761, %if.end4745, %for.end4652, %if.end4619, %if.end4589, %if.end4484, %if.end4468, %if.end4453, %if.end4425, %if.end4412, %if.end4377, %if.end4353, %sw.bb4317, %if.then4194, %if.end4166, %if.end4110, %if.end4090, %sw.bb4053, %sw.bb4050, %sw.bb4047, %if.end4046, %if.end4040, %if.end3977, %if.end3966, %if.end3953, %if.end3934, %if.end3899, %if.end3867, %if.end3823, %if.end3779, %if.end3747, %if.end3648, %if.end3616, %if.end3585, %if.then3567, %if.end3549, %if.end3533, %if.then3526, %if.then3498, %if.end3487, %if.end3447, %if.end3434, %sw.bb3414, %if.end3413, %if.end3347, %if.end3255, %sw.bb3128, %if.end3127, %if.end3073, %if.then2970, %sw.bb2944, %if.end2943, %sw.bb2754, %if.end2747, %if.end2738, %if.end2726, %if.end2709, %if.end2600, %if.end2587, %if.end2479, %sw.bb2428, %if.end2427, %if.end2262, %if.end2064, %do.end2053, %while.end1759, %if.then1694, %op_column_out, %if.end1368, %if.end1359, %if.end1348, %if.end1337, %if.end1321, %if.end1308, %if.end1266, %if.end1249, %sw.bb1221, %if.end1220, %if.end1172, %for.end1149, %sw.bb1072, %if.end1071, %if.end1066, %if.then1051, %if.end900, %if.end838, %if.end820, %if.end803, %sw.bb772, %if.end764, %if.then706, %if.end686, %arithmetic_result_is_null, %if.end678, %if.end533, %if.then439, %sw.bb361, %sw.bb354, %while.end353, %do.end, %if.end291, %sw.bb267, %sw.bb257, %while.end256, %if.end237, %sw.bb169, %sw.bb165, %sw.bb160, %if.end118, %if.then92, %sw.bb68, %sw.bb57, %if.end56, %sw.bb38, %jump_to_p2, %while.end
  br label %for.inc5365

for.inc5365:                                      ; preds = %sw.epilog5364
  %3637 = load ptr, ptr %pOp, align 8
  %incdec.ptr5366 = getelementptr inbounds nuw %struct.VdbeOp, ptr %3637, i32 1
  store ptr %incdec.ptr5366, ptr %pOp, align 8
  br label %for.cond

for.end5367:                                      ; preds = %for.cond
  br label %abort_due_to_error

abort_due_to_error:                               ; preds = %abort_due_to_interrupt, %no_mem, %too_big, %if.then5417, %for.end5367, %if.then5259, %if.then5134, %if.then5067, %if.then5045, %if.then5029, %if.then5007, %if.then4986, %if.then4927, %if.then4877, %if.then4872, %if.then4858, %if.then4847, %if.then4830, %if.end4819, %if.then4774, %if.then4760, %if.then4744, %if.then4699, %if.then4635, %if.then4611, %if.then4587, %if.then4202, %if.then4045, %if.end4039, %if.then3976, %if.then3965, %if.then3951, %if.then3933, %if.then3890, %if.then3876, %if.then3862, %if.then3800, %if.then3791, %if.then3777, %if.then3770, %if.then3746, %if.then3709, %if.then3678, %if.then3642, %if.then3597, %if.then3576, %if.then3522, %if.then3517, %if.then3472, %if.then3446, %if.then3430, %if.then3394, %if.then3335, %if.then3253, %if.then3249, %if.then3211, %if.then3158, %if.then3126, %if.then3049, %if.else2928, %if.else2905, %if.then2874, %if.then2848, %if.then2814, %if.then2725, %if.then2708, %if.then2586, %if.then2504, %if.then2478, %if.then2426, %if.end2355, %if.then2330, %cond.end2319, %if.then2280, %if.then2261, %if.then2254, %if.then2208, %if.then2189, %if.then2083, %if.then2063, %if.else1700, %if.then1680, %if.then1475, %if.then1379, %if.then837, %if.then800, %if.then373, %if.then27
  %3638 = load ptr, ptr %db, align 8
  %mallocFailed5368 = getelementptr inbounds nuw %struct.sqlite3, ptr %3638, i32 0, i32 19
  %3639 = load i8, ptr %mallocFailed5368, align 1
  %tobool5369 = icmp ne i8 %3639, 0
  br i1 %tobool5369, label %if.then5370, label %if.end5371

if.then5370:                                      ; preds = %abort_due_to_error
  store i32 7, ptr %rc, align 4
  br label %if.end5371

if.end5371:                                       ; preds = %if.then5370, %abort_due_to_error
  %3640 = load ptr, ptr %p.addr, align 8
  %zErrMsg5372 = getelementptr inbounds nuw %struct.Vdbe, ptr %3640, i32 0, i32 28
  %3641 = load ptr, ptr %zErrMsg5372, align 8
  %cmp5373 = icmp eq ptr %3641, null
  br i1 %cmp5373, label %land.lhs.true5375, label %if.end5380

land.lhs.true5375:                                ; preds = %if.end5371
  %3642 = load i32, ptr %rc, align 4
  %cmp5376 = icmp ne i32 %3642, 3082
  br i1 %cmp5376, label %if.then5378, label %if.end5380

if.then5378:                                      ; preds = %land.lhs.true5375
  %3643 = load ptr, ptr %p.addr, align 8
  %3644 = load i32, ptr %rc, align 4
  %call5379 = call ptr @sqlite3ErrStr(i32 noundef %3644)
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3643, ptr noundef @.str.20, ptr noundef %call5379)
  br label %if.end5380

if.end5380:                                       ; preds = %if.then5378, %land.lhs.true5375, %if.end5371
  %3645 = load i32, ptr %rc, align 4
  %3646 = load ptr, ptr %p.addr, align 8
  %rc5381 = getelementptr inbounds nuw %struct.Vdbe, ptr %3646, i32 0, i32 11
  store i32 %3645, ptr %rc5381, align 8
  %3647 = load ptr, ptr %db, align 8
  %3648 = load i32, ptr %rc, align 4
  call void @sqlite3SystemError(ptr noundef %3647, i32 noundef %3648)
  %3649 = load i32, ptr %rc, align 4
  %3650 = load ptr, ptr %pOp, align 8
  %3651 = load ptr, ptr %aOp, align 8
  %sub.ptr.lhs.cast5382 = ptrtoint ptr %3650 to i64
  %sub.ptr.rhs.cast5383 = ptrtoint ptr %3651 to i64
  %sub.ptr.sub5384 = sub i64 %sub.ptr.lhs.cast5382, %sub.ptr.rhs.cast5383
  %sub.ptr.div5385 = sdiv exact i64 %sub.ptr.sub5384, 24
  %conv5386 = trunc i64 %sub.ptr.div5385 to i32
  %3652 = load ptr, ptr %p.addr, align 8
  %zSql5387 = getelementptr inbounds nuw %struct.Vdbe, ptr %3652, i32 0, i32 41
  %3653 = load ptr, ptr %zSql5387, align 8
  %3654 = load ptr, ptr %p.addr, align 8
  %zErrMsg5388 = getelementptr inbounds nuw %struct.Vdbe, ptr %3654, i32 0, i32 28
  %3655 = load ptr, ptr %zErrMsg5388, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %3649, ptr noundef @.str.328, i32 noundef %conv5386, ptr noundef %3653, ptr noundef %3655)
  %3656 = load ptr, ptr %p.addr, align 8
  %call5389 = call i32 @sqlite3VdbeHalt(ptr noundef %3656)
  %3657 = load i32, ptr %rc, align 4
  %cmp5390 = icmp eq i32 %3657, 3082
  br i1 %cmp5390, label %if.then5392, label %if.end5393

if.then5392:                                      ; preds = %if.end5380
  %3658 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %3658)
  br label %if.end5393

if.end5393:                                       ; preds = %if.then5392, %if.end5380
  store i32 1, ptr %rc, align 4
  %3659 = load i8, ptr %resetSchemaOnFault, align 1
  %conv5394 = zext i8 %3659 to i32
  %cmp5395 = icmp sgt i32 %conv5394, 0
  br i1 %cmp5395, label %if.then5397, label %if.end5400

if.then5397:                                      ; preds = %if.end5393
  %3660 = load ptr, ptr %db, align 8
  %3661 = load i8, ptr %resetSchemaOnFault, align 1
  %conv5398 = zext i8 %3661 to i32
  %sub5399 = sub nsw i32 %conv5398, 1
  call void @sqlite3ResetOneSchema(ptr noundef %3660, i32 noundef %sub5399)
  br label %if.end5400

if.end5400:                                       ; preds = %if.then5397, %if.end5393
  br label %vdbe_return

vdbe_return:                                      ; preds = %if.end5400, %if.then2347, %if.end2312, %if.then2295, %if.then2285, %if.then2156, %if.then2150, %if.end414, %if.end159
  br label %while.cond5401

while.cond5401:                                   ; preds = %if.end5418, %vdbe_return
  %3662 = load i32, ptr %nVmStep, align 4
  %3663 = load i32, ptr %nProgressLimit, align 4
  %cmp5402 = icmp uge i32 %3662, %3663
  br i1 %cmp5402, label %land.rhs5404, label %land.end5408

land.rhs5404:                                     ; preds = %while.cond5401
  %3664 = load ptr, ptr %db, align 8
  %xProgress5405 = getelementptr inbounds nuw %struct.sqlite3, ptr %3664, i32 0, i32 64
  %3665 = load ptr, ptr %xProgress5405, align 8
  %cmp5406 = icmp ne ptr %3665, null
  br label %land.end5408

land.end5408:                                     ; preds = %land.rhs5404, %while.cond5401
  %3666 = phi i1 [ false, %while.cond5401 ], [ %cmp5406, %land.rhs5404 ]
  br i1 %3666, label %while.body5410, label %while.end5419

while.body5410:                                   ; preds = %land.end5408
  %3667 = load ptr, ptr %db, align 8
  %nProgressOps5411 = getelementptr inbounds nuw %struct.sqlite3, ptr %3667, i32 0, i32 66
  %3668 = load i32, ptr %nProgressOps5411, align 8
  %3669 = load i32, ptr %nProgressLimit, align 4
  %add5412 = add i32 %3669, %3668
  store i32 %add5412, ptr %nProgressLimit, align 4
  %3670 = load ptr, ptr %db, align 8
  %xProgress5413 = getelementptr inbounds nuw %struct.sqlite3, ptr %3670, i32 0, i32 64
  %3671 = load ptr, ptr %xProgress5413, align 8
  %3672 = load ptr, ptr %db, align 8
  %pProgressArg5414 = getelementptr inbounds nuw %struct.sqlite3, ptr %3672, i32 0, i32 65
  %3673 = load ptr, ptr %pProgressArg5414, align 8
  %call5415 = call i32 %3671(ptr noundef %3673)
  %tobool5416 = icmp ne i32 %call5415, 0
  br i1 %tobool5416, label %if.then5417, label %if.end5418

if.then5417:                                      ; preds = %while.body5410
  store i32 -1, ptr %nProgressLimit, align 4
  store i32 9, ptr %rc, align 4
  br label %abort_due_to_error

if.end5418:                                       ; preds = %while.body5410
  br label %while.cond5401, !llvm.loop !31

while.end5419:                                    ; preds = %land.end5408
  %3674 = load i32, ptr %nVmStep, align 4
  %3675 = load ptr, ptr %p.addr, align 8
  %aCounter5420 = getelementptr inbounds nuw %struct.Vdbe, ptr %3675, i32 0, i32 39
  %arrayidx5421 = getelementptr inbounds [7 x i32], ptr %aCounter5420, i64 0, i64 4
  %3676 = load i32, ptr %arrayidx5421, align 8
  %add5422 = add i32 %3676, %3674
  store i32 %add5422, ptr %arrayidx5421, align 8
  %3677 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeLeave(ptr noundef %3677)
  %3678 = load i32, ptr %rc, align 4
  ret i32 %3678

too_big:                                          ; preds = %if.then5271, %if.then4983, %if.then4618, %if.then3468, %if.then1995, %if.then1413, %if.then509, %if.then280, %if.then211, %if.then186
  %3679 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3679, ptr noundef @.str.12)
  store i32 18, ptr %rc, align 4
  br label %abort_due_to_error

no_mem:                                           ; preds = %if.then5181, %if.then5057, %if.else4886, %if.then4495, %if.then4233, %if.then4149, %if.then4108, %if.then4082, %if.then4038, %if.then3485, %if.then3011, %if.then3005, %if.then2746, %if.then2718, %if.then2647, %if.then2599, %if.then2566, %if.then2000, %if.then1936, %if.then1628, %if.then517, %if.then492, %if.then478, %if.then462, %if.then448, %if.then407, %if.then400, %if.then344, %if.then319, %if.then192, %if.then6
  %3680 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %3680)
  %3681 = load ptr, ptr %p.addr, align 8
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3681, ptr noundef @.str.329)
  store i32 7, ptr %rc, align 4
  br label %abort_due_to_error

abort_due_to_interrupt:                           ; preds = %if.then17, %if.then9
  %3682 = load ptr, ptr %db, align 8
  %mallocFailed5423 = getelementptr inbounds nuw %struct.sqlite3, ptr %3682, i32 0, i32 19
  %3683 = load i8, ptr %mallocFailed5423, align 1
  %conv5424 = zext i8 %3683 to i32
  %tobool5425 = icmp ne i32 %conv5424, 0
  %3684 = zext i1 %tobool5425 to i64
  %cond5426 = select i1 %tobool5425, i32 7, i32 9
  store i32 %cond5426, ptr %rc, align 4
  %3685 = load i32, ptr %rc, align 4
  %3686 = load ptr, ptr %p.addr, align 8
  %rc5427 = getelementptr inbounds nuw %struct.Vdbe, ptr %3686, i32 0, i32 11
  store i32 %3685, ptr %rc5427, align 8
  %3687 = load ptr, ptr %p.addr, align 8
  %3688 = load i32, ptr %rc, align 4
  %call5428 = call ptr @sqlite3ErrStr(i32 noundef %3688)
  call void (ptr, ptr, ...) @sqlite3VdbeError(ptr noundef %3687, ptr noundef @.str.20, ptr noundef %call5428)
  br label %abort_due_to_error
}

; Function Attrs: nounwind uwtable
declare hidden ptr @out2Prerelease(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemTooBig(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemMove(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemShallowCopy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i16 @numericType(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AddInt64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SubInt64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MulInt64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemIntegerify(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @applyAffinity(ptr noundef, i8 noundef signext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemRealify(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemCast(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MemCompare(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeBooleanValue(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCursorMoveto(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePayloadFetch(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetVarint32(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemFromBtree(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3VdbeOneByteSerialTypeLen(i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSerialTypeLen(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSerialGet(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VarintLen(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PutVarint(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSerialPut(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCount(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeBeginStmt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetOneSchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeGetMeta(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @allocateCursor(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCursor(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeCursorHintFlags(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClearTable(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCreateTable(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSorterInit(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreeFakeValidCursor() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeLast(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeMovetoUnpacked(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCursorHasHint(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeNext(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreePrevious(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeEof(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeRecordUnpack(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeInsert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeDelete(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSorterCompare(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSorterRowkey(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCursorRestore(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCursorIsValidNN(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeFirst(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3BtreeRowCountEst(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSorterRewind(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSorterNext(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSorterWrite(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeIdxRowid(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeIdxKeyCompare(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeDropTable(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RootPageMoved(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClearTableOfCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SchemaClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3InitOne(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3InitCallback(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AnalysisLoad(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3UnlinkAndDeleteTable(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3UnlinkAndDeleteIndex(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3UnlinkAndDeleteTrigger(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreeIntegrityCheck(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemSetRowSet(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RowSetInsert(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RowSetNext(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RowSetTest(ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeFrameMemDel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemInit(ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMemAggValue(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerOkToChangeJournalMode(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerCloseWal(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSetJournalMode(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3JournalModename(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3RunVacuum(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIncrVacuum(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeLockTable(ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabBegin(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabCallCreate(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabCallDestroy(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeMaxPageCount(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
