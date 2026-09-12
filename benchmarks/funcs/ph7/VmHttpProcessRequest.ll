; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyhttpUri = type { %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyhttpHeader = type { %struct.SyString, %struct.SyString }

@.str.628 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1340 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.1341 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.1342 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.1343 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.1344 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1345 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1346 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1347 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1348 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.1349 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.1350 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.1351 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.1352 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.1353 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.1354 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.1355 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.1356 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.1357 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.1358 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.1359 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.1360 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.1361 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.1362 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.1363 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1364 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.1365 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1366 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.1367 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.1368 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.1369 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.1370 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.1371 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.1372 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.1373 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.1374 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.1375 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_vm_config(ptr noundef, i32 noundef, ...) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractSuper(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrToInt32(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetResetCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetGetNextEntry(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHashmapInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmHttpProcessRequest(ptr noundef %pVm, ptr noundef %zRequest, i32 noundef %nByte) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %zRequest.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pName = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %sRequest = alloca %struct.SyString, align 8
  %pHeaderArray = alloca ptr, align 8
  %pHeader = alloca ptr, align 8
  %sUri = alloca %struct.SyhttpUri, align 8
  %sWorker = alloca %struct.SyBlob, align 8
  %sHeader = alloca %struct.SySet, align 8
  %iMethod = alloca i32, align 4
  %iVer = alloca i32, align 4
  %rc = alloca i32, align 4
  %iLen = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %zRequest, ptr %zRequest.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  %0 = load ptr, ptr %zRequest.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  store ptr %0, ptr %zString, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %nByte1 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  store i32 %1, ptr %nByte1, align 8
  %2 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %sHeader, ptr noundef %sAllocator, i32 noundef 32)
  %3 = load ptr, ptr %pVm.addr, align 8
  %sAllocator2 = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 0
  %call3 = call i32 @SyBlobInit(ptr noundef %sWorker, ptr noundef %sAllocator2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %nByte4 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %4 = load i32, ptr %nByte4, align 8
  %cmp = icmp ugt i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %zString5 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %5 = load ptr, ptr %zString5, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %cmp6 = icmp slt i32 %conv, 192
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call8 = call ptr @__ctype_b_loc() #2
  %7 = load ptr, ptr %call8, align 8
  %zString9 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %8 = load ptr, ptr %zString9, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %9 to i32
  %idxprom = sext i32 %conv11 to i64
  %arrayidx12 = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %10 = load i16, ptr %arrayidx12, align 2
  %conv13 = zext i16 %10 to i32
  %and = and i32 %conv13, 8192
  %tobool = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %nByte14 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %12 = load i32, ptr %nByte14, align 8
  %dec = add i32 %12, -1
  store i32 %dec, ptr %nByte14, align 8
  %zString15 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %13 = load ptr, ptr %zString15, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %zString15, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond16

while.cond16:                                     ; preds = %while.body42, %while.end
  %nByte17 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %14 = load i32, ptr %nByte17, align 8
  %cmp18 = icmp ugt i32 %14, 0
  br i1 %cmp18, label %land.lhs.true20, label %land.end41

land.lhs.true20:                                  ; preds = %while.cond16
  %zString21 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %15 = load ptr, ptr %zString21, align 8
  %nByte22 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %16 = load i32, ptr %nByte22, align 8
  %sub = sub i32 %16, 1
  %idxprom23 = zext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %15, i64 %idxprom23
  %17 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %17 to i32
  %cmp26 = icmp slt i32 %conv25, 192
  br i1 %cmp26, label %land.rhs28, label %land.end41

land.rhs28:                                       ; preds = %land.lhs.true20
  %call29 = call ptr @__ctype_b_loc() #2
  %18 = load ptr, ptr %call29, align 8
  %zString30 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %19 = load ptr, ptr %zString30, align 8
  %nByte31 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %20 = load i32, ptr %nByte31, align 8
  %sub32 = sub i32 %20, 1
  %idxprom33 = zext i32 %sub32 to i64
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %19, i64 %idxprom33
  %21 = load i8, ptr %arrayidx34, align 1
  %conv35 = sext i8 %21 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %arrayidx37 = getelementptr inbounds i16, ptr %18, i64 %idxprom36
  %22 = load i16, ptr %arrayidx37, align 2
  %conv38 = zext i16 %22 to i32
  %and39 = and i32 %conv38, 8192
  %tobool40 = icmp ne i32 %and39, 0
  br label %land.end41

land.end41:                                       ; preds = %land.rhs28, %land.lhs.true20, %while.cond16
  %23 = phi i1 [ false, %land.lhs.true20 ], [ false, %while.cond16 ], [ %tobool40, %land.rhs28 ]
  br i1 %23, label %while.body42, label %while.end45

while.body42:                                     ; preds = %land.end41
  %nByte43 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %24 = load i32, ptr %nByte43, align 8
  %dec44 = add i32 %24, -1
  store i32 %dec44, ptr %nByte43, align 8
  br label %while.cond16, !llvm.loop !8

while.end45:                                      ; preds = %land.end41
  %call46 = call i32 @VmHttpProcessFirstLine(ptr noundef %sRequest, ptr noundef %iMethod, ptr noundef %sUri, ptr noundef %iVer)
  store i32 %call46, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp47 = icmp ne i32 %25, 0
  br i1 %cmp47, label %if.then, label %if.end

if.then:                                          ; preds = %while.end45
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end45
  %call49 = call i32 @VmHttpExtractHeaders(ptr noundef %sRequest, ptr noundef %sHeader)
  %27 = load ptr, ptr %pVm.addr, align 8
  %28 = load i32, ptr %iVer, align 4
  %cmp50 = icmp eq i32 %28, 1
  %29 = zext i1 %cmp50 to i64
  %cond = select i1 %cmp50, ptr @.str.1341, ptr @.str.1342
  %call52 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %27, i32 noundef 10, ptr noundef @.str.1340, ptr noundef %cond, i64 noundef 8)
  %30 = load ptr, ptr %pVm.addr, align 8
  %31 = load i32, ptr %iMethod, align 4
  %cmp53 = icmp eq i32 %31, 1
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end69

cond.false:                                       ; preds = %if.end
  %32 = load i32, ptr %iMethod, align 4
  %cmp55 = icmp eq i32 %32, 3
  br i1 %cmp55, label %cond.true57, label %cond.false58

cond.true57:                                      ; preds = %cond.false
  br label %cond.end67

cond.false58:                                     ; preds = %cond.false
  %33 = load i32, ptr %iMethod, align 4
  %cmp59 = icmp eq i32 %33, 4
  br i1 %cmp59, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %cond.false58
  br label %cond.end

cond.false62:                                     ; preds = %cond.false58
  %34 = load i32, ptr %iMethod, align 4
  %cmp63 = icmp eq i32 %34, 2
  %35 = zext i1 %cmp63 to i64
  %cond65 = select i1 %cmp63, ptr @.str.1347, ptr @.str.1348
  br label %cond.end

cond.end:                                         ; preds = %cond.false62, %cond.true61
  %cond66 = phi ptr [ @.str.1346, %cond.true61 ], [ %cond65, %cond.false62 ]
  br label %cond.end67

cond.end67:                                       ; preds = %cond.end, %cond.true57
  %cond68 = phi ptr [ @.str.1345, %cond.true57 ], [ %cond66, %cond.end ]
  br label %cond.end69

cond.end69:                                       ; preds = %cond.end67, %cond.true
  %cond70 = phi ptr [ @.str.1344, %cond.true ], [ %cond68, %cond.end67 ]
  %call71 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %30, i32 noundef 10, ptr noundef @.str.1343, ptr noundef %cond70, i32 noundef -1)
  %sQuery = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sUri, i32 0, i32 3
  %nByte72 = getelementptr inbounds nuw %struct.SyString, ptr %sQuery, i32 0, i32 1
  %36 = load i32, ptr %nByte72, align 8
  %cmp73 = icmp ugt i32 %36, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.end84

land.lhs.true75:                                  ; preds = %cond.end69
  %37 = load i32, ptr %iMethod, align 4
  %cmp76 = icmp eq i32 %37, 1
  br i1 %cmp76, label %if.then78, label %if.end84

if.then78:                                        ; preds = %land.lhs.true75
  %sQuery79 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sUri, i32 0, i32 3
  store ptr %sQuery79, ptr %pValue, align 8
  %38 = load ptr, ptr %pVm.addr, align 8
  %39 = load ptr, ptr %pValue, align 8
  %zString80 = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %zString80, align 8
  %41 = load ptr, ptr %pValue, align 8
  %nByte81 = getelementptr inbounds nuw %struct.SyString, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %nByte81, align 8
  %call82 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %38, i32 noundef 10, ptr noundef @.str.1349, ptr noundef %40, i32 noundef %42)
  %43 = load ptr, ptr %pVm.addr, align 8
  %44 = load ptr, ptr %pValue, align 8
  %call83 = call i32 @VmHttpSplitEncodedQuery(ptr noundef %43, ptr noundef %44, ptr noundef %sWorker, i32 noundef 0)
  br label %if.end84

if.end84:                                         ; preds = %if.then78, %land.lhs.true75, %cond.end69
  %sRaw = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sUri, i32 0, i32 8
  store ptr %sRaw, ptr %pValue, align 8
  %45 = load ptr, ptr %pVm.addr, align 8
  %46 = load ptr, ptr %pValue, align 8
  %zString85 = getelementptr inbounds nuw %struct.SyString, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %zString85, align 8
  %48 = load ptr, ptr %pValue, align 8
  %nByte86 = getelementptr inbounds nuw %struct.SyString, ptr %48, i32 0, i32 1
  %49 = load i32, ptr %nByte86, align 8
  %call87 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %45, i32 noundef 10, ptr noundef @.str.1350, ptr noundef %47, i32 noundef %49)
  %sPath = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sUri, i32 0, i32 2
  store ptr %sPath, ptr %pValue, align 8
  %50 = load ptr, ptr %pVm.addr, align 8
  %51 = load ptr, ptr %pValue, align 8
  %zString88 = getelementptr inbounds nuw %struct.SyString, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %zString88, align 8
  %53 = load ptr, ptr %pValue, align 8
  %nByte89 = getelementptr inbounds nuw %struct.SyString, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %nByte89, align 8
  %call90 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %50, i32 noundef 10, ptr noundef @.str.1351, ptr noundef %52, i32 noundef %54)
  %55 = load ptr, ptr %pVm.addr, align 8
  %56 = load ptr, ptr %pValue, align 8
  %zString91 = getelementptr inbounds nuw %struct.SyString, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %zString91, align 8
  %58 = load ptr, ptr %pValue, align 8
  %nByte92 = getelementptr inbounds nuw %struct.SyString, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %nByte92, align 8
  %call93 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %55, i32 noundef 10, ptr noundef @.str.1352, ptr noundef %57, i32 noundef %59)
  %call94 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1353, i32 noundef 6)
  store ptr %call94, ptr %pValue, align 8
  %60 = load ptr, ptr %pValue, align 8
  %tobool95 = icmp ne ptr %60, null
  br i1 %tobool95, label %if.then96, label %if.end100

if.then96:                                        ; preds = %if.end84
  %61 = load ptr, ptr %pVm.addr, align 8
  %62 = load ptr, ptr %pValue, align 8
  %zString97 = getelementptr inbounds nuw %struct.SyString, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %zString97, align 8
  %64 = load ptr, ptr %pValue, align 8
  %nByte98 = getelementptr inbounds nuw %struct.SyString, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %nByte98, align 8
  %call99 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %61, i32 noundef 10, ptr noundef @.str.1354, ptr noundef %63, i32 noundef %65)
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %if.end84
  %call101 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1355, i32 noundef 14)
  store ptr %call101, ptr %pValue, align 8
  %66 = load ptr, ptr %pValue, align 8
  %tobool102 = icmp ne ptr %66, null
  br i1 %tobool102, label %if.then103, label %if.end107

if.then103:                                       ; preds = %if.end100
  %67 = load ptr, ptr %pVm.addr, align 8
  %68 = load ptr, ptr %pValue, align 8
  %zString104 = getelementptr inbounds nuw %struct.SyString, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %zString104, align 8
  %70 = load ptr, ptr %pValue, align 8
  %nByte105 = getelementptr inbounds nuw %struct.SyString, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %nByte105, align 8
  %call106 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %67, i32 noundef 10, ptr noundef @.str.1356, ptr noundef %69, i32 noundef %71)
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end100
  %call108 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1357, i32 noundef 15)
  store ptr %call108, ptr %pValue, align 8
  %72 = load ptr, ptr %pValue, align 8
  %tobool109 = icmp ne ptr %72, null
  br i1 %tobool109, label %if.then110, label %if.end114

if.then110:                                       ; preds = %if.end107
  %73 = load ptr, ptr %pVm.addr, align 8
  %74 = load ptr, ptr %pValue, align 8
  %zString111 = getelementptr inbounds nuw %struct.SyString, ptr %74, i32 0, i32 0
  %75 = load ptr, ptr %zString111, align 8
  %76 = load ptr, ptr %pValue, align 8
  %nByte112 = getelementptr inbounds nuw %struct.SyString, ptr %76, i32 0, i32 1
  %77 = load i32, ptr %nByte112, align 8
  %call113 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %73, i32 noundef 10, ptr noundef @.str.1358, ptr noundef %75, i32 noundef %77)
  br label %if.end114

if.end114:                                        ; preds = %if.then110, %if.end107
  %call115 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1359, i32 noundef 15)
  store ptr %call115, ptr %pValue, align 8
  %78 = load ptr, ptr %pValue, align 8
  %tobool116 = icmp ne ptr %78, null
  br i1 %tobool116, label %if.then117, label %if.end121

if.then117:                                       ; preds = %if.end114
  %79 = load ptr, ptr %pVm.addr, align 8
  %80 = load ptr, ptr %pValue, align 8
  %zString118 = getelementptr inbounds nuw %struct.SyString, ptr %80, i32 0, i32 0
  %81 = load ptr, ptr %zString118, align 8
  %82 = load ptr, ptr %pValue, align 8
  %nByte119 = getelementptr inbounds nuw %struct.SyString, ptr %82, i32 0, i32 1
  %83 = load i32, ptr %nByte119, align 8
  %call120 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %79, i32 noundef 10, ptr noundef @.str.1360, ptr noundef %81, i32 noundef %83)
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.end114
  %call122 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1361, i32 noundef 10)
  store ptr %call122, ptr %pValue, align 8
  %84 = load ptr, ptr %pValue, align 8
  %tobool123 = icmp ne ptr %84, null
  br i1 %tobool123, label %if.then124, label %if.end128

if.then124:                                       ; preds = %if.end121
  %85 = load ptr, ptr %pVm.addr, align 8
  %86 = load ptr, ptr %pValue, align 8
  %zString125 = getelementptr inbounds nuw %struct.SyString, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %zString125, align 8
  %88 = load ptr, ptr %pValue, align 8
  %nByte126 = getelementptr inbounds nuw %struct.SyString, ptr %88, i32 0, i32 1
  %89 = load i32, ptr %nByte126, align 8
  %call127 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %85, i32 noundef 10, ptr noundef @.str.1362, ptr noundef %87, i32 noundef %89)
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.end121
  %call129 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1363, i32 noundef 4)
  store ptr %call129, ptr %pValue, align 8
  %90 = load ptr, ptr %pValue, align 8
  %tobool130 = icmp ne ptr %90, null
  br i1 %tobool130, label %if.then131, label %if.end135

if.then131:                                       ; preds = %if.end128
  %91 = load ptr, ptr %pVm.addr, align 8
  %92 = load ptr, ptr %pValue, align 8
  %zString132 = getelementptr inbounds nuw %struct.SyString, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %zString132, align 8
  %94 = load ptr, ptr %pValue, align 8
  %nByte133 = getelementptr inbounds nuw %struct.SyString, ptr %94, i32 0, i32 1
  %95 = load i32, ptr %nByte133, align 8
  %call134 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %91, i32 noundef 10, ptr noundef @.str.1364, ptr noundef %93, i32 noundef %95)
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %if.end128
  %call136 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1365, i32 noundef 7)
  store ptr %call136, ptr %pValue, align 8
  %96 = load ptr, ptr %pValue, align 8
  %tobool137 = icmp ne ptr %96, null
  br i1 %tobool137, label %if.then138, label %if.end142

if.then138:                                       ; preds = %if.end135
  %97 = load ptr, ptr %pVm.addr, align 8
  %98 = load ptr, ptr %pValue, align 8
  %zString139 = getelementptr inbounds nuw %struct.SyString, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %zString139, align 8
  %100 = load ptr, ptr %pValue, align 8
  %nByte140 = getelementptr inbounds nuw %struct.SyString, ptr %100, i32 0, i32 1
  %101 = load i32, ptr %nByte140, align 8
  %call141 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %97, i32 noundef 10, ptr noundef @.str.1366, ptr noundef %99, i32 noundef %101)
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %if.end135
  %call143 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1367, i32 noundef 10)
  store ptr %call143, ptr %pValue, align 8
  %102 = load ptr, ptr %pValue, align 8
  %tobool144 = icmp ne ptr %102, null
  br i1 %tobool144, label %if.then145, label %if.end149

if.then145:                                       ; preds = %if.end142
  %103 = load ptr, ptr %pVm.addr, align 8
  %104 = load ptr, ptr %pValue, align 8
  %zString146 = getelementptr inbounds nuw %struct.SyString, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %zString146, align 8
  %106 = load ptr, ptr %pValue, align 8
  %nByte147 = getelementptr inbounds nuw %struct.SyString, ptr %106, i32 0, i32 1
  %107 = load i32, ptr %nByte147, align 8
  %call148 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %103, i32 noundef 10, ptr noundef @.str.1368, ptr noundef %105, i32 noundef %107)
  br label %if.end149

if.end149:                                        ; preds = %if.then145, %if.end142
  %call150 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1369, i32 noundef 13)
  store ptr %call150, ptr %pValue, align 8
  %108 = load ptr, ptr %pValue, align 8
  %tobool151 = icmp ne ptr %108, null
  br i1 %tobool151, label %if.then152, label %if.end159

if.then152:                                       ; preds = %if.end149
  %109 = load ptr, ptr %pVm.addr, align 8
  %110 = load ptr, ptr %pValue, align 8
  %zString153 = getelementptr inbounds nuw %struct.SyString, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %zString153, align 8
  %112 = load ptr, ptr %pValue, align 8
  %nByte154 = getelementptr inbounds nuw %struct.SyString, ptr %112, i32 0, i32 1
  %113 = load i32, ptr %nByte154, align 8
  %call155 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %109, i32 noundef 10, ptr noundef @.str.1370, ptr noundef %111, i32 noundef %113)
  %114 = load ptr, ptr %pVm.addr, align 8
  %115 = load ptr, ptr %pValue, align 8
  %zString156 = getelementptr inbounds nuw %struct.SyString, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %zString156, align 8
  %117 = load ptr, ptr %pValue, align 8
  %nByte157 = getelementptr inbounds nuw %struct.SyString, ptr %117, i32 0, i32 1
  %118 = load i32, ptr %nByte157, align 8
  %call158 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %114, i32 noundef 10, ptr noundef @.str.1371, ptr noundef %116, i32 noundef %118)
  br label %if.end159

if.end159:                                        ; preds = %if.then152, %if.end149
  %119 = load ptr, ptr %pVm.addr, align 8
  %call160 = call ptr @VmExtractSuper(ptr noundef %119, ptr noundef @.str.628, i32 noundef 7)
  store ptr %call160, ptr %pHeaderArray, align 8
  %call161 = call i32 @SySetResetCursor(ptr noundef %sHeader)
  store ptr null, ptr %pHeader, align 8
  br label %while.cond162

while.cond162:                                    ; preds = %if.end195, %if.end159
  %call163 = call i32 @SySetGetNextEntry(ptr noundef %sHeader, ptr noundef %pHeader)
  %cmp164 = icmp eq i32 0, %call163
  br i1 %cmp164, label %while.body166, label %while.end196

while.body166:                                    ; preds = %while.cond162
  %120 = load ptr, ptr %pHeader, align 8
  %sName = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %120, i32 0, i32 0
  store ptr %sName, ptr %pName, align 8
  %121 = load ptr, ptr %pHeader, align 8
  %sValue = getelementptr inbounds nuw %struct.SyhttpHeader, ptr %121, i32 0, i32 1
  store ptr %sValue, ptr %pValue, align 8
  %122 = load ptr, ptr %pHeaderArray, align 8
  %tobool167 = icmp ne ptr %122, null
  br i1 %tobool167, label %land.lhs.true168, label %if.end177

land.lhs.true168:                                 ; preds = %while.body166
  %123 = load ptr, ptr %pHeaderArray, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %123, i32 0, i32 2
  %124 = load i32, ptr %iFlags, align 8
  %and169 = and i32 %124, 64
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %if.then171, label %if.end177

if.then171:                                       ; preds = %land.lhs.true168
  %125 = load ptr, ptr %pHeaderArray, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %125, i32 0, i32 1
  %126 = load ptr, ptr %x, align 8
  %127 = load ptr, ptr %pName, align 8
  %zString172 = getelementptr inbounds nuw %struct.SyString, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %zString172, align 8
  %129 = load ptr, ptr %pName, align 8
  %nByte173 = getelementptr inbounds nuw %struct.SyString, ptr %129, i32 0, i32 1
  %130 = load i32, ptr %nByte173, align 8
  %131 = load ptr, ptr %pValue, align 8
  %zString174 = getelementptr inbounds nuw %struct.SyString, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %zString174, align 8
  %133 = load ptr, ptr %pValue, align 8
  %nByte175 = getelementptr inbounds nuw %struct.SyString, ptr %133, i32 0, i32 1
  %134 = load i32, ptr %nByte175, align 8
  %call176 = call i32 @VmHashmapInsert(ptr noundef %126, ptr noundef %128, i32 noundef %130, ptr noundef %132, i32 noundef %134)
  br label %if.end177

if.end177:                                        ; preds = %if.then171, %land.lhs.true168, %while.body166
  %135 = load ptr, ptr %pName, align 8
  %nByte178 = getelementptr inbounds nuw %struct.SyString, ptr %135, i32 0, i32 1
  %136 = load i32, ptr %nByte178, align 8
  %conv179 = zext i32 %136 to i64
  %cmp180 = icmp eq i64 %conv179, 6
  br i1 %cmp180, label %land.lhs.true182, label %if.end195

land.lhs.true182:                                 ; preds = %if.end177
  %137 = load ptr, ptr %pName, align 8
  %zString183 = getelementptr inbounds nuw %struct.SyString, ptr %137, i32 0, i32 0
  %138 = load ptr, ptr %zString183, align 8
  %call184 = call i32 @SyStrnicmp(ptr noundef %138, ptr noundef @.str.1372, i32 noundef 6)
  %cmp185 = icmp eq i32 %call184, 0
  br i1 %cmp185, label %land.lhs.true187, label %if.end195

land.lhs.true187:                                 ; preds = %land.lhs.true182
  %139 = load ptr, ptr %pValue, align 8
  %nByte188 = getelementptr inbounds nuw %struct.SyString, ptr %139, i32 0, i32 1
  %140 = load i32, ptr %nByte188, align 8
  %cmp189 = icmp ugt i32 %140, 0
  br i1 %cmp189, label %if.then191, label %if.end195

if.then191:                                       ; preds = %land.lhs.true187
  %141 = load ptr, ptr %pVm.addr, align 8
  %142 = load ptr, ptr %pValue, align 8
  %zString192 = getelementptr inbounds nuw %struct.SyString, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %zString192, align 8
  %144 = load ptr, ptr %pValue, align 8
  %nByte193 = getelementptr inbounds nuw %struct.SyString, ptr %144, i32 0, i32 1
  %145 = load i32, ptr %nByte193, align 8
  %call194 = call i32 @VmHttpPorcessCookie(ptr noundef %141, ptr noundef %sWorker, ptr noundef %143, i32 noundef %145)
  br label %if.end195

if.end195:                                        ; preds = %if.then191, %land.lhs.true187, %land.lhs.true182, %if.end177
  br label %while.cond162, !llvm.loop !9

while.end196:                                     ; preds = %while.cond162
  %146 = load i32, ptr %iMethod, align 4
  %cmp197 = icmp eq i32 %146, 3
  br i1 %cmp197, label %if.then199, label %if.end291

if.then199:                                       ; preds = %while.end196
  %call200 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1373, i32 noundef 12)
  store ptr %call200, ptr %pValue, align 8
  %147 = load ptr, ptr %pValue, align 8
  %tobool201 = icmp ne ptr %147, null
  br i1 %tobool201, label %land.lhs.true202, label %if.end290

land.lhs.true202:                                 ; preds = %if.then199
  %148 = load ptr, ptr %pValue, align 8
  %nByte203 = getelementptr inbounds nuw %struct.SyString, ptr %148, i32 0, i32 1
  %149 = load i32, ptr %nByte203, align 8
  %conv204 = zext i32 %149 to i64
  %cmp205 = icmp uge i64 %conv204, 33
  br i1 %cmp205, label %land.lhs.true207, label %if.end290

land.lhs.true207:                                 ; preds = %land.lhs.true202
  %150 = load ptr, ptr %pValue, align 8
  %zString208 = getelementptr inbounds nuw %struct.SyString, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %zString208, align 8
  %152 = load ptr, ptr %pValue, align 8
  %nByte209 = getelementptr inbounds nuw %struct.SyString, ptr %152, i32 0, i32 1
  %153 = load i32, ptr %nByte209, align 8
  %call210 = call i32 @SyMemcmp(ptr noundef @.str.1374, ptr noundef %151, i32 noundef %153)
  %cmp211 = icmp eq i32 %call210, 0
  br i1 %cmp211, label %if.then213, label %if.end290

if.then213:                                       ; preds = %land.lhs.true207
  %call214 = call ptr @VmHttpExtractHeaderValue(ptr noundef %sHeader, ptr noundef @.str.1375, i32 noundef 14)
  store ptr %call214, ptr %pValue, align 8
  %154 = load ptr, ptr %pValue, align 8
  %tobool215 = icmp ne ptr %154, null
  br i1 %tobool215, label %if.then216, label %if.end289

if.then216:                                       ; preds = %if.then213
  store i32 0, ptr %iLen, align 4
  %155 = load ptr, ptr %pValue, align 8
  %zString217 = getelementptr inbounds nuw %struct.SyString, ptr %155, i32 0, i32 0
  %156 = load ptr, ptr %zString217, align 8
  %157 = load ptr, ptr %pValue, align 8
  %nByte218 = getelementptr inbounds nuw %struct.SyString, ptr %157, i32 0, i32 1
  %158 = load i32, ptr %nByte218, align 8
  %call219 = call i32 @SyStrToInt32(ptr noundef %156, i32 noundef %158, ptr noundef %iLen, ptr noundef null)
  %159 = load i32, ptr %iLen, align 4
  %cmp220 = icmp sgt i32 %159, 0
  br i1 %cmp220, label %if.then222, label %if.end288

if.then222:                                       ; preds = %if.then216
  br label %while.cond223

while.cond223:                                    ; preds = %while.body244, %if.then222
  %nByte224 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %160 = load i32, ptr %nByte224, align 8
  %cmp225 = icmp ugt i32 %160, 0
  br i1 %cmp225, label %land.lhs.true227, label %land.end243

land.lhs.true227:                                 ; preds = %while.cond223
  %zString228 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %161 = load ptr, ptr %zString228, align 8
  %arrayidx229 = getelementptr inbounds i8, ptr %161, i64 0
  %162 = load i8, ptr %arrayidx229, align 1
  %conv230 = zext i8 %162 to i32
  %cmp231 = icmp slt i32 %conv230, 192
  br i1 %cmp231, label %land.rhs233, label %land.end243

land.rhs233:                                      ; preds = %land.lhs.true227
  %call234 = call ptr @__ctype_b_loc() #2
  %163 = load ptr, ptr %call234, align 8
  %zString235 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %164 = load ptr, ptr %zString235, align 8
  %arrayidx236 = getelementptr inbounds i8, ptr %164, i64 0
  %165 = load i8, ptr %arrayidx236, align 1
  %conv237 = sext i8 %165 to i32
  %idxprom238 = sext i32 %conv237 to i64
  %arrayidx239 = getelementptr inbounds i16, ptr %163, i64 %idxprom238
  %166 = load i16, ptr %arrayidx239, align 2
  %conv240 = zext i16 %166 to i32
  %and241 = and i32 %conv240, 8192
  %tobool242 = icmp ne i32 %and241, 0
  br label %land.end243

land.end243:                                      ; preds = %land.rhs233, %land.lhs.true227, %while.cond223
  %167 = phi i1 [ false, %land.lhs.true227 ], [ false, %while.cond223 ], [ %tobool242, %land.rhs233 ]
  br i1 %167, label %while.body244, label %while.end249

while.body244:                                    ; preds = %land.end243
  %nByte245 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %168 = load i32, ptr %nByte245, align 8
  %dec246 = add i32 %168, -1
  store i32 %dec246, ptr %nByte245, align 8
  %zString247 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %169 = load ptr, ptr %zString247, align 8
  %incdec.ptr248 = getelementptr inbounds nuw i8, ptr %169, i32 1
  store ptr %incdec.ptr248, ptr %zString247, align 8
  br label %while.cond223, !llvm.loop !10

while.end249:                                     ; preds = %land.end243
  br label %while.cond250

while.cond250:                                    ; preds = %while.body277, %while.end249
  %nByte251 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %170 = load i32, ptr %nByte251, align 8
  %cmp252 = icmp ugt i32 %170, 0
  br i1 %cmp252, label %land.lhs.true254, label %land.end276

land.lhs.true254:                                 ; preds = %while.cond250
  %zString255 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %171 = load ptr, ptr %zString255, align 8
  %nByte256 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %172 = load i32, ptr %nByte256, align 8
  %sub257 = sub i32 %172, 1
  %idxprom258 = zext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds nuw i8, ptr %171, i64 %idxprom258
  %173 = load i8, ptr %arrayidx259, align 1
  %conv260 = zext i8 %173 to i32
  %cmp261 = icmp slt i32 %conv260, 192
  br i1 %cmp261, label %land.rhs263, label %land.end276

land.rhs263:                                      ; preds = %land.lhs.true254
  %call264 = call ptr @__ctype_b_loc() #2
  %174 = load ptr, ptr %call264, align 8
  %zString265 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 0
  %175 = load ptr, ptr %zString265, align 8
  %nByte266 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %176 = load i32, ptr %nByte266, align 8
  %sub267 = sub i32 %176, 1
  %idxprom268 = zext i32 %sub267 to i64
  %arrayidx269 = getelementptr inbounds nuw i8, ptr %175, i64 %idxprom268
  %177 = load i8, ptr %arrayidx269, align 1
  %conv270 = sext i8 %177 to i32
  %idxprom271 = sext i32 %conv270 to i64
  %arrayidx272 = getelementptr inbounds i16, ptr %174, i64 %idxprom271
  %178 = load i16, ptr %arrayidx272, align 2
  %conv273 = zext i16 %178 to i32
  %and274 = and i32 %conv273, 8192
  %tobool275 = icmp ne i32 %and274, 0
  br label %land.end276

land.end276:                                      ; preds = %land.rhs263, %land.lhs.true254, %while.cond250
  %179 = phi i1 [ false, %land.lhs.true254 ], [ false, %while.cond250 ], [ %tobool275, %land.rhs263 ]
  br i1 %179, label %while.body277, label %while.end280

while.body277:                                    ; preds = %land.end276
  %nByte278 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %180 = load i32, ptr %nByte278, align 8
  %dec279 = add i32 %180, -1
  store i32 %dec279, ptr %nByte278, align 8
  br label %while.cond250, !llvm.loop !11

while.end280:                                     ; preds = %land.end276
  %nByte281 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  %181 = load i32, ptr %nByte281, align 8
  %182 = load i32, ptr %iLen, align 4
  %cmp282 = icmp sgt i32 %181, %182
  br i1 %cmp282, label %if.then284, label %if.end286

if.then284:                                       ; preds = %while.end280
  %183 = load i32, ptr %iLen, align 4
  %nByte285 = getelementptr inbounds nuw %struct.SyString, ptr %sRequest, i32 0, i32 1
  store i32 %183, ptr %nByte285, align 8
  br label %if.end286

if.end286:                                        ; preds = %if.then284, %while.end280
  %184 = load ptr, ptr %pVm.addr, align 8
  %call287 = call i32 @VmHttpSplitEncodedQuery(ptr noundef %184, ptr noundef %sRequest, ptr noundef %sWorker, i32 noundef 1)
  br label %if.end288

if.end288:                                        ; preds = %if.end286, %if.then216
  br label %if.end289

if.end289:                                        ; preds = %if.end288, %if.then213
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %land.lhs.true207, %land.lhs.true202, %if.then199
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %while.end196
  %call292 = call i32 @SySetRelease(ptr noundef %sHeader)
  %call293 = call i32 @SyBlobRelease(ptr noundef %sWorker)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end291, %if.then
  %185 = load i32, ptr %retval, align 4
  ret i32 %185
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHttpProcessFirstLine(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHttpExtractHeaders(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHttpSplitEncodedQuery(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmHttpExtractHeaderValue(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHttpPorcessCookie(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

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
