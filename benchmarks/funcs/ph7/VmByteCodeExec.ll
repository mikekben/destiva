; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm_func_closure_env = type { %struct.SyString, i32, %struct.ph7_value, i32 }
%struct.VmSlot = type { i32, ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.VmInstr = type { i8, i32, i32, ptr }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_constant = type { %struct.SyString, ptr, ptr }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.ph7_exception = type { ptr, %struct.SySet, ptr }
%struct.ph7_foreach_info = type { %struct.SyString, %struct.SyString, i32, %struct.SySet }
%struct.ph7_foreach_step = type { i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func_arg = type { %struct.SyString, %struct.SySet, i32, %struct.SyString, i32 }
%struct.ph7_switch = type { %struct.SySet, i32, i32 }
%struct.ph7_case_expr = type { %struct.SySet, i32 }
%struct.ph7_vm_func_static_var = type { %struct.SyString, %struct.SySet, i32 }
%struct.ph7_user_func = type { ptr, %struct.SyString, ptr, ptr, %struct.SySet }

@.str.62 = external hidden unnamed_addr constant [67 x i8], align 1
@.str.63 = external hidden unnamed_addr constant [71 x i8], align 1
@.str.64 = external hidden unnamed_addr constant [83 x i8], align 1
@.str.65 = external hidden unnamed_addr constant [64 x i8], align 1
@.str.66 = external hidden unnamed_addr constant [71 x i8], align 1
@.str.67 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.68 = external hidden unnamed_addr constant [114 x i8], align 1
@.str.69 = external hidden unnamed_addr constant [76 x i8], align 1
@.str.70 = external hidden unnamed_addr constant [70 x i8], align 1
@.str.71 = external hidden unnamed_addr constant [56 x i8], align 1
@.str.72 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.73 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.74 = external hidden unnamed_addr constant [23 x i8], align 1
@VmByteCodeExec.and_logic = external hidden constant [9 x i8], align 1
@VmByteCodeExec.or_logic = external hidden constant [9 x i8], align 1
@.str.75 = external hidden unnamed_addr constant [75 x i8], align 1
@.str.76 = external hidden unnamed_addr constant [65 x i8], align 1
@.str.77 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.78 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.79 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.80 = external hidden unnamed_addr constant [86 x i8], align 1
@.str.81 = external hidden unnamed_addr constant [64 x i8], align 1
@.str.82 = external hidden unnamed_addr constant [52 x i8], align 1
@.str.83 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.84 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.85 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.86 = external hidden unnamed_addr constant [67 x i8], align 1
@.str.87 = external hidden unnamed_addr constant [51 x i8], align 1
@.str.88 = external hidden unnamed_addr constant [56 x i8], align 1
@.str.89 = external hidden unnamed_addr constant [59 x i8], align 1
@.str.90 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.91 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.92 = external hidden unnamed_addr constant [68 x i8], align 1
@.str.93 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.94 = external hidden unnamed_addr constant [48 x i8], align 1
@.str.95 = external hidden unnamed_addr constant [82 x i8], align 1
@.str.96 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.97 = external hidden unnamed_addr constant [52 x i8], align 1
@.str.98 = external hidden unnamed_addr constant [70 x i8], align 1
@.str.99 = external hidden unnamed_addr constant [79 x i8], align 1
@.str.100 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.101 = external hidden unnamed_addr constant [44 x i8], align 1
@.str.102 = external hidden unnamed_addr constant [91 x i8], align 1
@.str.103 = external hidden unnamed_addr constant [79 x i8], align 1
@VmByteCodeExec.sThis = external hidden constant { ptr, i32, [4 x i8] }, align 8
@.str.105 = external hidden unnamed_addr constant [87 x i8], align 1
@.str.106 = external hidden unnamed_addr constant [115 x i8], align 1
@.str.107 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.108 = external hidden unnamed_addr constant [103 x i8], align 1
@.str.109 = external hidden unnamed_addr constant [108 x i8], align 1
@.str.110 = external hidden unnamed_addr constant [54 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashDeleteEntry(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewHashmap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToBool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToReal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjCmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapLookup(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromInt(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjTryInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmEnterFrame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmLocalExec(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmNewOperandStack(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmByteCodeExec(ptr noundef %pVm, ptr noundef %aInstr, ptr noundef %pStack, i32 noundef %nTos, ptr noundef %pResult, ptr noundef %pLastRef, i32 noundef %is_callback) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %aInstr.addr = alloca ptr, align 8
  %pStack.addr = alloca ptr, align 8
  %nTos.addr = alloca i32, align 4
  %pResult.addr = alloca ptr, align 8
  %pLastRef.addr = alloca ptr, align 8
  %is_callback.addr = alloca i32, align 4
  %pInstr = alloca ptr, align 8
  %pTos = alloca ptr, align 8
  %aArg = alloca %struct.SySet, align 8
  %pc = alloca i32, align 4
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %pNos = alloca ptr, align 8
  %iRes = alloca i32, align 4
  %pThis = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pCons = alloca ptr, align 8
  %pObj249 = alloca ptr, align 8
  %sName = alloca %struct.SyString, align 8
  %pMap = alloca ptr, align 8
  %pEntry313 = alloca ptr, align 8
  %pEntry355 = alloca ptr, align 8
  %pMap371 = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %sKey = alloca %struct.ph7_value, align 8
  %pObj374 = alloca ptr, align 8
  %pNode404 = alloca ptr, align 8
  %pMap405 = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %nOfft = alloca i32, align 4
  %zData = alloca ptr, align 8
  %c = alloca i32, align 4
  %pObj484 = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %aEnv = alloca ptr, align 8
  %pEnv = alloca ptr, align 8
  %sEnv = alloca %struct.ph7_vm_func_closure_env, align 8
  %pClosure = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %mLen = alloca i32, align 4
  %n542 = alloca i32, align 4
  %pValue = alloca ptr, align 8
  %pObj616 = alloca ptr, align 8
  %sName617 = alloca %struct.SyString, align 8
  %nIdx621 = alloca i32, align 4
  %pMap680 = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %nIdx681 = alloca i32, align 4
  %pObj701 = alloca ptr, align 8
  %nOfft744 = alloca i32, align 4
  %zBlob = alloca ptr, align 8
  %zData765 = alloca ptr, align 8
  %pObj833 = alloca ptr, align 8
  %pObj895 = alloca ptr, align 8
  %pNos1001 = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %r = alloca double, align 8
  %a1034 = alloca i64, align 8
  %b1035 = alloca i64, align 8
  %r1036 = alloca i64, align 8
  %pObj1051 = alloca ptr, align 8
  %pNos1069 = alloca ptr, align 8
  %pNos1073 = alloca ptr, align 8
  %pObj1075 = alloca ptr, align 8
  %nIdx1076 = alloca i32, align 4
  %pNos1094 = alloca ptr, align 8
  %a1102 = alloca double, align 8
  %b1103 = alloca double, align 8
  %r1104 = alloca double, align 8
  %a1129 = alloca i64, align 8
  %b1130 = alloca i64, align 8
  %r1131 = alloca i64, align 8
  %pNos1142 = alloca ptr, align 8
  %pObj1144 = alloca ptr, align 8
  %a1151 = alloca double, align 8
  %b1152 = alloca double, align 8
  %r1153 = alloca double, align 8
  %a1178 = alloca i64, align 8
  %b1179 = alloca i64, align 8
  %r1180 = alloca i64, align 8
  %pNos1206 = alloca ptr, align 8
  %a1208 = alloca i64, align 8
  %b1209 = alloca i64, align 8
  %r1210 = alloca i64, align 8
  %pNos1239 = alloca ptr, align 8
  %pObj1241 = alloca ptr, align 8
  %a1242 = alloca i64, align 8
  %b1243 = alloca i64, align 8
  %r1244 = alloca i64, align 8
  %pNos1289 = alloca ptr, align 8
  %a1291 = alloca double, align 8
  %b1292 = alloca double, align 8
  %r1293 = alloca double, align 8
  %pNos1323 = alloca ptr, align 8
  %pObj1325 = alloca ptr, align 8
  %a1326 = alloca double, align 8
  %b1327 = alloca double, align 8
  %r1328 = alloca double, align 8
  %pNos1374 = alloca ptr, align 8
  %a1376 = alloca i64, align 8
  %b1377 = alloca i64, align 8
  %r1378 = alloca i64, align 8
  %pNos1408 = alloca ptr, align 8
  %pObj1410 = alloca ptr, align 8
  %a1411 = alloca i64, align 8
  %b1412 = alloca i64, align 8
  %r1413 = alloca i64, align 8
  %pNos1461 = alloca ptr, align 8
  %a1463 = alloca i64, align 8
  %r1464 = alloca i64, align 8
  %b1465 = alloca i32, align 4
  %pNos1497 = alloca ptr, align 8
  %pObj1499 = alloca ptr, align 8
  %a1500 = alloca i64, align 8
  %r1501 = alloca i64, align 8
  %b1502 = alloca i32, align 4
  %pNos1552 = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pNos1600 = alloca ptr, align 8
  %pObj1602 = alloca ptr, align 8
  %pNos1645 = alloca ptr, align 8
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %pNos1700 = alloca ptr, align 8
  %v = alloca i32, align 4
  %pNos1736 = alloca ptr, align 8
  %pNos1768 = alloca ptr, align 8
  %pNos1791 = alloca ptr, align 8
  %pNos1814 = alloca ptr, align 8
  %pNos1846 = alloca ptr, align 8
  %pNos1878 = alloca ptr, align 8
  %s1 = alloca %struct.SyString, align 8
  %s2 = alloca %struct.SyString, align 8
  %nIdx1950 = alloca i32, align 4
  %sName1962 = alloca %struct.SyString, align 8
  %pEntry1963 = alloca ptr, align 8
  %nIdx1964 = alloca i32, align 4
  %zName1969 = alloca ptr, align 8
  %pObj2016 = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  %pLink = alloca ptr, align 8
  %sName2095 = alloca %struct.SyString, align 8
  %pException = alloca ptr, align 8
  %pFrame2125 = alloca ptr, align 8
  %pException2150 = alloca ptr, align 8
  %apException = alloca ptr, align 8
  %pFrame2173 = alloca ptr, align 8
  %nJump = alloca i32, align 4
  %pThis2193 = alloca ptr, align 8
  %pException2195 = alloca ptr, align 8
  %pInfo = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %pStep = alloca ptr, align 8
  %pMap2327 = alloca ptr, align 8
  %pThis2334 = alloca ptr, align 8
  %pInfo2356 = alloca ptr, align 8
  %apStep = alloca ptr, align 8
  %pStep2358 = alloca ptr, align 8
  %pValue2359 = alloca ptr, align 8
  %pFrame2360 = alloca ptr, align 8
  %pMap2384 = alloca ptr, align 8
  %pNode2386 = alloca ptr, align 8
  %pKey2418 = alloca ptr, align 8
  %pEntry2429 = alloca ptr, align 8
  %pThis2460 = alloca ptr, align 8
  %pVmAttr = alloca ptr, align 8
  %pEntry2462 = alloca ptr, align 8
  %pAttrName = alloca ptr, align 8
  %pAttrValue = alloca ptr, align 8
  %pKey2510 = alloca ptr, align 8
  %pThis2567 = alloca ptr, align 8
  %pNos2568 = alloca ptr, align 8
  %sName2569 = alloca %struct.SyString, align 8
  %pClass2578 = alloca ptr, align 8
  %pMeth = alloca ptr, align 8
  %pObjAttr = alloca ptr, align 8
  %pEntry2619 = alloca ptr, align 8
  %pValue2646 = alloca ptr, align 8
  %pClass2712 = alloca ptr, align 8
  %pMeth2752 = alloca ptr, align 8
  %pAttr2802 = alloca ptr, align 8
  %pValue2835 = alloca ptr, align 8
  %pArg = alloca ptr, align 8
  %pClass2878 = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %pCons2918 = alloca ptr, align 8
  %pName2937 = alloca ptr, align 8
  %pFuncArg = alloca ptr, align 8
  %n2955 = alloca i32, align 4
  %pSrc = alloca ptr, align 8
  %pClone = alloca ptr, align 8
  %pSwitch = alloca ptr, align 8
  %aCase = alloca ptr, align 8
  %pCase = alloca ptr, align 8
  %sValue3030 = alloca %struct.ph7_value, align 8
  %sCaseValue = alloca %struct.ph7_value, align 8
  %n3031 = alloca i32, align 4
  %nEntry = alloca i32, align 4
  %pArg3070 = alloca ptr, align 8
  %pEntry3075 = alloca ptr, align 8
  %sName3076 = alloca %struct.SyString, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %pThis3112 = alloca ptr, align 8
  %aFormalArg = alloca ptr, align 8
  %pThis3140 = alloca ptr, align 8
  %pFrameStack = alloca ptr, align 8
  %pVmFunc = alloca ptr, align 8
  %pSelf = alloca ptr, align 8
  %pFrame3141 = alloca ptr, align 8
  %pObj3142 = alloca ptr, align 8
  %sArg = alloca %struct.VmSlot, align 8
  %n3143 = alloca i32, align 4
  %pMeth3149 = alloca ptr, align 8
  %pTarget = alloca ptr, align 8
  %pFrame3194 = alloca ptr, align 8
  %pStatic = alloca ptr, align 8
  %aStatic3318 = alloca ptr, align 8
  %pName3403 = alloca ptr, align 8
  %pClass3406 = alloca ptr, align 8
  %pThis3428 = alloca ptr, align 8
  %xCast = alloca ptr, align 8
  %pRefEntry = alloca ptr, align 8
  %zName3521 = alloca [32 x i8], align 16
  %sName3522 = alloca %struct.SyString, align 8
  %aEnv3546 = alloca ptr, align 8
  %pEnv3547 = alloca ptr, align 8
  %pValue3548 = alloca ptr, align 8
  %n3549 = alloca i32, align 4
  %xCast3629 = alloca ptr, align 8
  %aSlot = alloca ptr, align 8
  %i = alloca i32, align 4
  %pFunc3773 = alloca ptr, align 8
  %sCtx = alloca %struct.ph7_context, align 8
  %sRet = alloca %struct.ph7_value, align 8
  %pCons3817 = alloca ptr, align 8
  %pCur3819 = alloca ptr, align 8
  %pOut = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %aInstr, ptr %aInstr.addr, align 8
  store ptr %pStack, ptr %pStack.addr, align 8
  store i32 %nTos, ptr %nTos.addr, align 4
  store ptr %pResult, ptr %pResult.addr, align 8
  store ptr %pLastRef, ptr %pLastRef.addr, align 8
  store i32 %is_callback, ptr %is_callback.addr, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %aArg, ptr noundef %sAllocator, i32 noundef 8)
  %1 = load i32, ptr %nTos.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pStack.addr, align 8
  %arrayidx = getelementptr inbounds %struct.ph7_value, ptr %2, i64 -1
  store ptr %arrayidx, ptr %pTos, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %pStack.addr, align 8
  %4 = load i32, ptr %nTos.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds %struct.ph7_value, ptr %3, i64 %idxprom
  store ptr %arrayidx1, ptr %pTos, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, ptr %pc, align 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog3867, %if.end
  %5 = load ptr, ptr %aInstr.addr, align 8
  %6 = load i32, ptr %pc, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds %struct.VmInstr, ptr %5, i64 %idxprom2
  store ptr %arrayidx3, ptr %pInstr, align 8
  store i32 0, ptr %rc, align 4
  %7 = load ptr, ptr %pInstr, align 8
  %iOp = getelementptr inbounds nuw %struct.VmInstr, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %iOp, align 8
  %conv = zext i8 %8 to i32
  switch i32 %conv, label %sw.epilog3867 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
    i32 10, label %sw.bb57
    i32 11, label %sw.bb58
    i32 12, label %sw.bb76
    i32 9, label %sw.bb94
    i32 13, label %sw.bb95
    i32 15, label %sw.bb106
    i32 17, label %sw.bb117
    i32 16, label %sw.bb129
    i32 50, label %sw.bb137
    i32 74, label %sw.bb145
    i32 51, label %sw.bb147
    i32 75, label %sw.bb149
    i32 76, label %sw.bb156
    i32 84, label %sw.bb164
    i32 79, label %sw.bb165
    i32 4, label %sw.bb207
    i32 3, label %sw.bb248
    i32 6, label %sw.bb302
    i32 7, label %sw.bb354
    i32 5, label %sw.bb403
    i32 8, label %sw.bb536
    i32 44, label %sw.bb615
    i32 45, label %sw.bb679
    i32 46, label %sw.bb679
    i32 52, label %sw.bb823
    i32 53, label %sw.bb884
    i32 19, label %sw.bb945
    i32 20, label %sw.bb962
    i32 22, label %sw.bb978
    i32 21, label %sw.bb990
    i32 23, label %sw.bb1000
    i32 60, label %sw.bb1000
    i32 26, label %sw.bb1068
    i32 58, label %sw.bb1072
    i32 27, label %sw.bb1093
    i32 59, label %sw.bb1141
    i32 25, label %sw.bb1205
    i32 62, label %sw.bb1238
    i32 24, label %sw.bb1288
    i32 61, label %sw.bb1322
    i32 38, label %sw.bb1373
    i32 40, label %sw.bb1373
    i32 39, label %sw.bb1373
    i32 66, label %sw.bb1407
    i32 67, label %sw.bb1407
    i32 68, label %sw.bb1407
    i32 28, label %sw.bb1460
    i32 29, label %sw.bb1460
    i32 64, label %sw.bb1496
    i32 65, label %sw.bb1496
    i32 14, label %sw.bb1551
    i32 63, label %sw.bb1599
    i32 41, label %sw.bb1644
    i32 42, label %sw.bb1644
    i32 43, label %sw.bb1699
    i32 34, label %sw.bb1735
    i32 35, label %sw.bb1735
    i32 36, label %sw.bb1767
    i32 37, label %sw.bb1790
    i32 30, label %sw.bb1813
    i32 31, label %sw.bb1813
    i32 32, label %sw.bb1845
    i32 33, label %sw.bb1845
    i32 54, label %sw.bb1877
    i32 55, label %sw.bb1877
    i32 70, label %sw.bb1949
    i32 71, label %sw.bb1961
    i32 73, label %sw.bb2085
    i32 80, label %sw.bb2123
    i32 81, label %sw.bb2149
    i32 82, label %sw.bb2172
    i32 77, label %sw.bb2224
    i32 78, label %sw.bb2355
    i32 72, label %sw.bb2566
    i32 56, label %sw.bb2873
    i32 57, label %sw.bb3005
    i32 83, label %sw.bb3028
    i32 18, label %sw.bb3069
    i32 69, label %sw.bb3816
  ]

sw.bb:                                            ; preds = %for.cond
  %9 = load ptr, ptr %pInstr, align 8
  %iP1 = getelementptr inbounds nuw %struct.VmInstr, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %iP1, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then4, label %if.else12

if.then4:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %pLastRef.addr, align 8
  %tobool5 = icmp ne ptr %11, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  %12 = load ptr, ptr %pTos, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %nIdx, align 8
  %14 = load ptr, ptr %pLastRef.addr, align 8
  store i32 %13, ptr %14, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then4
  %15 = load ptr, ptr %pResult.addr, align 8
  %tobool8 = icmp ne ptr %15, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %16 = load ptr, ptr %pTos, align 8
  %17 = load ptr, ptr %pResult.addr, align 8
  %call10 = call i32 @PH7_MemObjStore(ptr noundef %16, ptr noundef %17)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end16

if.else12:                                        ; preds = %sw.bb
  %18 = load ptr, ptr %pLastRef.addr, align 8
  %tobool13 = icmp ne ptr %18, null
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else12
  %19 = load ptr, ptr %pLastRef.addr, align 8
  store i32 -1, ptr %19, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else12
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end11
  br label %Done

sw.bb17:                                          ; preds = %for.cond
  %20 = load ptr, ptr %pInstr, align 8
  %iP118 = getelementptr inbounds nuw %struct.VmInstr, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %iP118, align 4
  %tobool19 = icmp ne i32 %21, 0
  br i1 %tobool19, label %if.then20, label %if.else52

if.then20:                                        ; preds = %sw.bb17
  %22 = load ptr, ptr %pLastRef.addr, align 8
  %tobool21 = icmp ne ptr %22, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then20
  %23 = load ptr, ptr %pTos, align 8
  %nIdx23 = getelementptr inbounds nuw %struct.ph7_value, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %nIdx23, align 8
  %25 = load ptr, ptr %pLastRef.addr, align 8
  store i32 %24, ptr %25, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then20
  %26 = load ptr, ptr %pTos, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %iFlags, align 8
  %and = and i32 %27, 1
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %if.then26, label %if.else44

if.then26:                                        ; preds = %if.end24
  %28 = load ptr, ptr %pTos, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %28, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %29 = load i32, ptr %nByte, align 8
  %cmp27 = icmp ugt i32 %29, 0
  br i1 %cmp27, label %if.then29, label %if.end43

if.then29:                                        ; preds = %if.then26
  %30 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %30, i32 0, i32 43
  %xConsumer = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer, i32 0, i32 0
  %31 = load ptr, ptr %xConsumer, align 8
  %32 = load ptr, ptr %pTos, align 8
  %sBlob30 = getelementptr inbounds nuw %struct.ph7_value, ptr %32, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob30, i32 0, i32 1
  %33 = load ptr, ptr %pBlob, align 8
  %34 = load ptr, ptr %pTos, align 8
  %sBlob31 = getelementptr inbounds nuw %struct.ph7_value, ptr %34, i32 0, i32 4
  %nByte32 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob31, i32 0, i32 2
  %35 = load i32, ptr %nByte32, align 8
  %36 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer33 = getelementptr inbounds nuw %struct.ph7_vm, ptr %36, i32 0, i32 43
  %pUserData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer33, i32 0, i32 1
  %37 = load ptr, ptr %pUserData, align 8
  %call34 = call i32 %31(ptr noundef %33, i32 noundef %35, ptr noundef %37)
  %38 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer35 = getelementptr inbounds nuw %struct.ph7_vm, ptr %38, i32 0, i32 43
  %xConsumer36 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer35, i32 0, i32 0
  %39 = load ptr, ptr %xConsumer36, align 8
  %cmp37 = icmp ne ptr %39, @VmObConsumer
  br i1 %cmp37, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.then29
  %40 = load ptr, ptr %pTos, align 8
  %sBlob40 = getelementptr inbounds nuw %struct.ph7_value, ptr %40, i32 0, i32 4
  %nByte41 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob40, i32 0, i32 2
  %41 = load i32, ptr %nByte41, align 8
  %42 = load ptr, ptr %pVm.addr, align 8
  %nOutputLen = getelementptr inbounds nuw %struct.ph7_vm, ptr %42, i32 0, i32 42
  %43 = load i32, ptr %nOutputLen, align 8
  %add = add i32 %43, %41
  store i32 %add, ptr %nOutputLen, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.then29
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then26
  br label %if.end51

if.else44:                                        ; preds = %if.end24
  %44 = load ptr, ptr %pTos, align 8
  %iFlags45 = getelementptr inbounds nuw %struct.ph7_value, ptr %44, i32 0, i32 2
  %45 = load i32, ptr %iFlags45, align 8
  %and46 = and i32 %45, 2
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.else44
  %46 = load ptr, ptr %pTos, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %46, i32 0, i32 1
  %47 = load i64, ptr %x, align 8
  %conv49 = trunc i64 %47 to i32
  %48 = load ptr, ptr %pVm.addr, align 8
  %iExitStatus = getelementptr inbounds nuw %struct.ph7_vm, ptr %48, i32 0, i32 53
  store i32 %conv49, ptr %iExitStatus, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.else44
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end43
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end56

if.else52:                                        ; preds = %sw.bb17
  %49 = load ptr, ptr %pLastRef.addr, align 8
  %tobool53 = icmp ne ptr %49, null
  br i1 %tobool53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.else52
  %50 = load ptr, ptr %pLastRef.addr, align 8
  store i32 -1, ptr %50, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.else52
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end51
  br label %Abort

sw.bb57:                                          ; preds = %for.cond
  %51 = load ptr, ptr %pInstr, align 8
  %iP2 = getelementptr inbounds nuw %struct.VmInstr, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %iP2, align 8
  %sub = sub i32 %52, 1
  store i32 %sub, ptr %pc, align 4
  br label %sw.epilog3867

sw.bb58:                                          ; preds = %for.cond
  %53 = load ptr, ptr %pTos, align 8
  %iFlags59 = getelementptr inbounds nuw %struct.ph7_value, ptr %53, i32 0, i32 2
  %54 = load i32, ptr %iFlags59, align 8
  %and60 = and i32 %54, 8
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %sw.bb58
  %55 = load ptr, ptr %pTos, align 8
  %call64 = call i32 @PH7_MemObjToBool(ptr noundef %55)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %sw.bb58
  %56 = load ptr, ptr %pTos, align 8
  %x66 = getelementptr inbounds nuw %struct.ph7_value, ptr %56, i32 0, i32 1
  %57 = load i64, ptr %x66, align 8
  %tobool67 = icmp ne i64 %57, 0
  br i1 %tobool67, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.end65
  %58 = load ptr, ptr %pInstr, align 8
  %iP269 = getelementptr inbounds nuw %struct.VmInstr, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %iP269, align 8
  %sub70 = sub i32 %59, 1
  store i32 %sub70, ptr %pc, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65
  %60 = load ptr, ptr %pInstr, align 8
  %iP172 = getelementptr inbounds nuw %struct.VmInstr, ptr %60, i32 0, i32 1
  %61 = load i32, ptr %iP172, align 4
  %tobool73 = icmp ne i32 %61, 0
  br i1 %tobool73, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end71
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %if.end71
  br label %sw.epilog3867

sw.bb76:                                          ; preds = %for.cond
  %62 = load ptr, ptr %pTos, align 8
  %iFlags77 = getelementptr inbounds nuw %struct.ph7_value, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %iFlags77, align 8
  %and78 = and i32 %63, 8
  %cmp79 = icmp eq i32 %and78, 0
  br i1 %cmp79, label %if.then81, label %if.end83

if.then81:                                        ; preds = %sw.bb76
  %64 = load ptr, ptr %pTos, align 8
  %call82 = call i32 @PH7_MemObjToBool(ptr noundef %64)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %sw.bb76
  %65 = load ptr, ptr %pTos, align 8
  %x84 = getelementptr inbounds nuw %struct.ph7_value, ptr %65, i32 0, i32 1
  %66 = load i64, ptr %x84, align 8
  %tobool85 = icmp ne i64 %66, 0
  br i1 %tobool85, label %if.then86, label %if.end89

if.then86:                                        ; preds = %if.end83
  %67 = load ptr, ptr %pInstr, align 8
  %iP287 = getelementptr inbounds nuw %struct.VmInstr, ptr %67, i32 0, i32 2
  %68 = load i32, ptr %iP287, align 8
  %sub88 = sub i32 %68, 1
  store i32 %sub88, ptr %pc, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.end83
  %69 = load ptr, ptr %pInstr, align 8
  %iP190 = getelementptr inbounds nuw %struct.VmInstr, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %iP190, align 4
  %tobool91 = icmp ne i32 %70, 0
  br i1 %tobool91, label %if.end93, label %if.then92

if.then92:                                        ; preds = %if.end89
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.end89
  br label %sw.epilog3867

sw.bb94:                                          ; preds = %for.cond
  br label %sw.epilog3867

sw.bb95:                                          ; preds = %for.cond
  %71 = load ptr, ptr %pInstr, align 8
  %iP196 = getelementptr inbounds nuw %struct.VmInstr, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %iP196, align 4
  store i32 %72, ptr %n, align 4
  %73 = load ptr, ptr %pTos, align 8
  %74 = load i32, ptr %n, align 4
  %sub97 = sub nsw i32 0, %74
  %add98 = add nsw i32 %sub97, 1
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds %struct.ph7_value, ptr %73, i64 %idxprom99
  %75 = load ptr, ptr %pStack.addr, align 8
  %cmp101 = icmp ult ptr %arrayidx100, %75
  br i1 %cmp101, label %if.then103, label %if.end105

if.then103:                                       ; preds = %sw.bb95
  %76 = load ptr, ptr %pTos, align 8
  %77 = load ptr, ptr %pStack.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %76 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %77 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 72
  %conv104 = trunc i64 %sub.ptr.div to i32
  store i32 %conv104, ptr %n, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %sw.bb95
  %78 = load i32, ptr %n, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %78)
  br label %sw.epilog3867

sw.bb106:                                         ; preds = %for.cond
  %79 = load ptr, ptr %pTos, align 8
  %iFlags107 = getelementptr inbounds nuw %struct.ph7_value, ptr %79, i32 0, i32 2
  %80 = load i32, ptr %iFlags107, align 8
  %and108 = and i32 %80, 2
  %cmp109 = icmp eq i32 %and108, 0
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %sw.bb106
  %81 = load ptr, ptr %pTos, align 8
  %call112 = call i32 @PH7_MemObjToInteger(ptr noundef %81)
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %sw.bb106
  %82 = load ptr, ptr %pTos, align 8
  %iFlags114 = getelementptr inbounds nuw %struct.ph7_value, ptr %82, i32 0, i32 2
  %83 = load i32, ptr %iFlags114, align 8
  %and115 = and i32 %83, -496
  %or = or i32 %and115, 2
  %84 = load ptr, ptr %pTos, align 8
  %iFlags116 = getelementptr inbounds nuw %struct.ph7_value, ptr %84, i32 0, i32 2
  store i32 %or, ptr %iFlags116, align 8
  br label %sw.epilog3867

sw.bb117:                                         ; preds = %for.cond
  %85 = load ptr, ptr %pTos, align 8
  %iFlags118 = getelementptr inbounds nuw %struct.ph7_value, ptr %85, i32 0, i32 2
  %86 = load i32, ptr %iFlags118, align 8
  %and119 = and i32 %86, 4
  %cmp120 = icmp eq i32 %and119, 0
  br i1 %cmp120, label %if.then122, label %if.end124

if.then122:                                       ; preds = %sw.bb117
  %87 = load ptr, ptr %pTos, align 8
  %call123 = call i32 @PH7_MemObjToReal(ptr noundef %87)
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %sw.bb117
  %88 = load ptr, ptr %pTos, align 8
  %iFlags125 = getelementptr inbounds nuw %struct.ph7_value, ptr %88, i32 0, i32 2
  %89 = load i32, ptr %iFlags125, align 8
  %and126 = and i32 %89, -496
  %or127 = or i32 %and126, 4
  %90 = load ptr, ptr %pTos, align 8
  %iFlags128 = getelementptr inbounds nuw %struct.ph7_value, ptr %90, i32 0, i32 2
  store i32 %or127, ptr %iFlags128, align 8
  br label %sw.epilog3867

sw.bb129:                                         ; preds = %for.cond
  %91 = load ptr, ptr %pTos, align 8
  %iFlags130 = getelementptr inbounds nuw %struct.ph7_value, ptr %91, i32 0, i32 2
  %92 = load i32, ptr %iFlags130, align 8
  %and131 = and i32 %92, 1
  %cmp132 = icmp eq i32 %and131, 0
  br i1 %cmp132, label %if.then134, label %if.end136

if.then134:                                       ; preds = %sw.bb129
  %93 = load ptr, ptr %pTos, align 8
  %call135 = call i32 @PH7_MemObjToString(ptr noundef %93)
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %sw.bb129
  br label %sw.epilog3867

sw.bb137:                                         ; preds = %for.cond
  %94 = load ptr, ptr %pTos, align 8
  %iFlags138 = getelementptr inbounds nuw %struct.ph7_value, ptr %94, i32 0, i32 2
  %95 = load i32, ptr %iFlags138, align 8
  %and139 = and i32 %95, 8
  %cmp140 = icmp eq i32 %and139, 0
  br i1 %cmp140, label %if.then142, label %if.end144

if.then142:                                       ; preds = %sw.bb137
  %96 = load ptr, ptr %pTos, align 8
  %call143 = call i32 @PH7_MemObjToBool(ptr noundef %96)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %sw.bb137
  br label %sw.epilog3867

sw.bb145:                                         ; preds = %for.cond
  %97 = load ptr, ptr %pTos, align 8
  %call146 = call i32 @PH7_MemObjRelease(ptr noundef %97)
  br label %sw.epilog3867

sw.bb147:                                         ; preds = %for.cond
  %98 = load ptr, ptr %pTos, align 8
  %call148 = call i32 @PH7_MemObjToNumeric(ptr noundef %98)
  br label %sw.epilog3867

sw.bb149:                                         ; preds = %for.cond
  %99 = load ptr, ptr %pTos, align 8
  %call150 = call i32 @PH7_MemObjToHashmap(ptr noundef %99)
  store i32 %call150, ptr %rc, align 4
  %100 = load i32, ptr %rc, align 4
  %cmp151 = icmp ne i32 %100, 0
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %sw.bb149
  %101 = load ptr, ptr %pVm.addr, align 8
  %call154 = call i32 @PH7_VmThrowError(ptr noundef %101, ptr noundef null, i32 noundef 2, ptr noundef @.str.62)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %sw.bb149
  br label %sw.epilog3867

sw.bb156:                                         ; preds = %for.cond
  %102 = load ptr, ptr %pTos, align 8
  %iFlags157 = getelementptr inbounds nuw %struct.ph7_value, ptr %102, i32 0, i32 2
  %103 = load i32, ptr %iFlags157, align 8
  %and158 = and i32 %103, 128
  %cmp159 = icmp eq i32 %and158, 0
  br i1 %cmp159, label %if.then161, label %if.end163

if.then161:                                       ; preds = %sw.bb156
  %104 = load ptr, ptr %pTos, align 8
  %call162 = call i32 @PH7_MemObjToObject(ptr noundef %104)
  br label %if.end163

if.end163:                                        ; preds = %if.then161, %sw.bb156
  br label %sw.epilog3867

sw.bb164:                                         ; preds = %for.cond
  br label %sw.epilog3867

sw.bb165:                                         ; preds = %for.cond
  %105 = load ptr, ptr %pTos, align 8
  %arrayidx166 = getelementptr inbounds %struct.ph7_value, ptr %105, i64 -1
  store ptr %arrayidx166, ptr %pNos, align 8
  store i32 0, ptr %iRes, align 4
  %106 = load ptr, ptr %pNos, align 8
  %iFlags167 = getelementptr inbounds nuw %struct.ph7_value, ptr %106, i32 0, i32 2
  %107 = load i32, ptr %iFlags167, align 8
  %and168 = and i32 %107, 128
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.then170, label %if.end199

if.then170:                                       ; preds = %sw.bb165
  %108 = load ptr, ptr %pNos, align 8
  %x171 = getelementptr inbounds nuw %struct.ph7_value, ptr %108, i32 0, i32 1
  %109 = load ptr, ptr %x171, align 8
  store ptr %109, ptr %pThis, align 8
  store ptr null, ptr %pClass, align 8
  %110 = load ptr, ptr %pTos, align 8
  %iFlags172 = getelementptr inbounds nuw %struct.ph7_value, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %iFlags172, align 8
  %and173 = and i32 %111, 128
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %if.then170
  %112 = load ptr, ptr %pTos, align 8
  %x176 = getelementptr inbounds nuw %struct.ph7_value, ptr %112, i32 0, i32 1
  %113 = load ptr, ptr %x176, align 8
  %pClass177 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %113, i32 0, i32 1
  %114 = load ptr, ptr %pClass177, align 8
  store ptr %114, ptr %pClass, align 8
  br label %if.end193

if.else178:                                       ; preds = %if.then170
  %115 = load ptr, ptr %pTos, align 8
  %iFlags179 = getelementptr inbounds nuw %struct.ph7_value, ptr %115, i32 0, i32 2
  %116 = load i32, ptr %iFlags179, align 8
  %and180 = and i32 %116, 1
  %tobool181 = icmp ne i32 %and180, 0
  br i1 %tobool181, label %land.lhs.true, label %if.end192

land.lhs.true:                                    ; preds = %if.else178
  %117 = load ptr, ptr %pTos, align 8
  %sBlob182 = getelementptr inbounds nuw %struct.ph7_value, ptr %117, i32 0, i32 4
  %nByte183 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob182, i32 0, i32 2
  %118 = load i32, ptr %nByte183, align 8
  %cmp184 = icmp ugt i32 %118, 0
  br i1 %cmp184, label %if.then186, label %if.end192

if.then186:                                       ; preds = %land.lhs.true
  %119 = load ptr, ptr %pVm.addr, align 8
  %120 = load ptr, ptr %pTos, align 8
  %sBlob187 = getelementptr inbounds nuw %struct.ph7_value, ptr %120, i32 0, i32 4
  %pBlob188 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob187, i32 0, i32 1
  %121 = load ptr, ptr %pBlob188, align 8
  %122 = load ptr, ptr %pTos, align 8
  %sBlob189 = getelementptr inbounds nuw %struct.ph7_value, ptr %122, i32 0, i32 4
  %nByte190 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob189, i32 0, i32 2
  %123 = load i32, ptr %nByte190, align 8
  %call191 = call ptr @PH7_VmExtractClass(ptr noundef %119, ptr noundef %121, i32 noundef %123, i32 noundef 0, i32 noundef 0)
  store ptr %call191, ptr %pClass, align 8
  br label %if.end192

if.end192:                                        ; preds = %if.then186, %land.lhs.true, %if.else178
  br label %if.end193

if.end193:                                        ; preds = %if.end192, %if.then175
  %124 = load ptr, ptr %pClass, align 8
  %tobool194 = icmp ne ptr %124, null
  br i1 %tobool194, label %if.then195, label %if.end198

if.then195:                                       ; preds = %if.end193
  %125 = load ptr, ptr %pThis, align 8
  %pClass196 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %125, i32 0, i32 1
  %126 = load ptr, ptr %pClass196, align 8
  %127 = load ptr, ptr %pClass, align 8
  %call197 = call i32 @VmInstanceOf(ptr noundef %126, ptr noundef %127)
  store i32 %call197, ptr %iRes, align 4
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %if.end193
  br label %if.end199

if.end199:                                        ; preds = %if.end198, %sw.bb165
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %128 = load ptr, ptr %pTos, align 8
  %call200 = call i32 @PH7_MemObjRelease(ptr noundef %128)
  %129 = load i32, ptr %iRes, align 4
  %conv201 = sext i32 %129 to i64
  %130 = load ptr, ptr %pTos, align 8
  %x202 = getelementptr inbounds nuw %struct.ph7_value, ptr %130, i32 0, i32 1
  store i64 %conv201, ptr %x202, align 8
  %131 = load ptr, ptr %pTos, align 8
  %iFlags203 = getelementptr inbounds nuw %struct.ph7_value, ptr %131, i32 0, i32 2
  %132 = load i32, ptr %iFlags203, align 8
  %and204 = and i32 %132, -496
  %or205 = or i32 %and204, 8
  %133 = load ptr, ptr %pTos, align 8
  %iFlags206 = getelementptr inbounds nuw %struct.ph7_value, ptr %133, i32 0, i32 2
  store i32 %or205, ptr %iFlags206, align 8
  br label %sw.epilog3867

sw.bb207:                                         ; preds = %for.cond
  %134 = load ptr, ptr %pTos, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ph7_value, ptr %134, i32 1
  store ptr %incdec.ptr, ptr %pTos, align 8
  %135 = load ptr, ptr %pVm.addr, align 8
  %aLitObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %135, i32 0, i32 7
  %136 = load ptr, ptr %pInstr, align 8
  %iP2208 = getelementptr inbounds nuw %struct.VmInstr, ptr %136, i32 0, i32 2
  %137 = load i32, ptr %iP2208, align 8
  %call209 = call ptr @SySetAt(ptr noundef %aLitObj, i32 noundef %137)
  store ptr %call209, ptr %pObj, align 8
  %cmp210 = icmp ne ptr %call209, null
  br i1 %cmp210, label %if.then212, label %if.else241

if.then212:                                       ; preds = %sw.bb207
  %138 = load ptr, ptr %pInstr, align 8
  %iP1213 = getelementptr inbounds nuw %struct.VmInstr, ptr %138, i32 0, i32 1
  %139 = load i32, ptr %iP1213, align 4
  %cmp214 = icmp eq i32 %139, 1
  br i1 %cmp214, label %land.lhs.true216, label %if.end239

land.lhs.true216:                                 ; preds = %if.then212
  %140 = load ptr, ptr %pObj, align 8
  %sBlob217 = getelementptr inbounds nuw %struct.ph7_value, ptr %140, i32 0, i32 4
  %nByte218 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob217, i32 0, i32 2
  %141 = load i32, ptr %nByte218, align 8
  %cmp219 = icmp ule i32 %141, 64
  br i1 %cmp219, label %if.then221, label %if.end239

if.then221:                                       ; preds = %land.lhs.true216
  %142 = load ptr, ptr %pVm.addr, align 8
  %hConstant = getelementptr inbounds nuw %struct.ph7_vm, ptr %142, i32 0, i32 11
  %143 = load ptr, ptr %pObj, align 8
  %sBlob222 = getelementptr inbounds nuw %struct.ph7_value, ptr %143, i32 0, i32 4
  %pBlob223 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob222, i32 0, i32 1
  %144 = load ptr, ptr %pBlob223, align 8
  %145 = load ptr, ptr %pObj, align 8
  %sBlob224 = getelementptr inbounds nuw %struct.ph7_value, ptr %145, i32 0, i32 4
  %nByte225 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob224, i32 0, i32 2
  %146 = load i32, ptr %nByte225, align 8
  %call226 = call ptr @SyHashGet(ptr noundef %hConstant, ptr noundef %144, i32 noundef %146)
  store ptr %call226, ptr %pEntry, align 8
  %147 = load ptr, ptr %pEntry, align 8
  %tobool227 = icmp ne ptr %147, null
  br i1 %tobool227, label %if.then228, label %if.end238

if.then228:                                       ; preds = %if.then221
  %148 = load ptr, ptr %pEntry, align 8
  %pUserData229 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %148, i32 0, i32 2
  %149 = load ptr, ptr %pUserData229, align 8
  store ptr %149, ptr %pCons, align 8
  %150 = load ptr, ptr %pTos, align 8
  %iFlags230 = getelementptr inbounds nuw %struct.ph7_value, ptr %150, i32 0, i32 2
  %151 = load i32, ptr %iFlags230, align 8
  %and231 = and i32 %151, -496
  %or232 = or i32 %and231, 32
  %152 = load ptr, ptr %pTos, align 8
  %iFlags233 = getelementptr inbounds nuw %struct.ph7_value, ptr %152, i32 0, i32 2
  store i32 %or232, ptr %iFlags233, align 8
  %153 = load ptr, ptr %pTos, align 8
  %sBlob234 = getelementptr inbounds nuw %struct.ph7_value, ptr %153, i32 0, i32 4
  %call235 = call i32 @SyBlobReset(ptr noundef %sBlob234)
  %154 = load ptr, ptr %pCons, align 8
  %xExpand = getelementptr inbounds nuw %struct.ph7_constant, ptr %154, i32 0, i32 1
  %155 = load ptr, ptr %xExpand, align 8
  %156 = load ptr, ptr %pTos, align 8
  %157 = load ptr, ptr %pCons, align 8
  %pUserData236 = getelementptr inbounds nuw %struct.ph7_constant, ptr %157, i32 0, i32 2
  %158 = load ptr, ptr %pUserData236, align 8
  call void %155(ptr noundef %156, ptr noundef %158)
  %159 = load ptr, ptr %pTos, align 8
  %nIdx237 = getelementptr inbounds nuw %struct.ph7_value, ptr %159, i32 0, i32 5
  store i32 -1, ptr %nIdx237, align 8
  br label %sw.epilog3867

if.end238:                                        ; preds = %if.then221
  br label %if.end239

if.end239:                                        ; preds = %if.end238, %land.lhs.true216, %if.then212
  %160 = load ptr, ptr %pObj, align 8
  %161 = load ptr, ptr %pTos, align 8
  %call240 = call i32 @PH7_MemObjLoad(ptr noundef %160, ptr noundef %161)
  br label %if.end246

if.else241:                                       ; preds = %sw.bb207
  %162 = load ptr, ptr %pTos, align 8
  %iFlags242 = getelementptr inbounds nuw %struct.ph7_value, ptr %162, i32 0, i32 2
  %163 = load i32, ptr %iFlags242, align 8
  %and243 = and i32 %163, -496
  %or244 = or i32 %and243, 32
  %164 = load ptr, ptr %pTos, align 8
  %iFlags245 = getelementptr inbounds nuw %struct.ph7_value, ptr %164, i32 0, i32 2
  store i32 %or244, ptr %iFlags245, align 8
  br label %if.end246

if.end246:                                        ; preds = %if.else241, %if.end239
  %165 = load ptr, ptr %pTos, align 8
  %nIdx247 = getelementptr inbounds nuw %struct.ph7_value, ptr %165, i32 0, i32 5
  store i32 -1, ptr %nIdx247, align 8
  br label %sw.epilog3867

sw.bb248:                                         ; preds = %for.cond
  %166 = load ptr, ptr %pInstr, align 8
  %p3 = getelementptr inbounds nuw %struct.VmInstr, ptr %166, i32 0, i32 3
  %167 = load ptr, ptr %p3, align 8
  %cmp250 = icmp eq ptr %167, null
  br i1 %cmp250, label %if.then252, label %if.else265

if.then252:                                       ; preds = %sw.bb248
  %168 = load ptr, ptr %pTos, align 8
  %iFlags253 = getelementptr inbounds nuw %struct.ph7_value, ptr %168, i32 0, i32 2
  %169 = load i32, ptr %iFlags253, align 8
  %and254 = and i32 %169, 1
  %cmp255 = icmp eq i32 %and254, 0
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %if.then252
  %170 = load ptr, ptr %pTos, align 8
  %call258 = call i32 @PH7_MemObjToString(ptr noundef %170)
  br label %if.end259

if.end259:                                        ; preds = %if.then257, %if.then252
  %171 = load ptr, ptr %pTos, align 8
  %sBlob260 = getelementptr inbounds nuw %struct.ph7_value, ptr %171, i32 0, i32 4
  %pBlob261 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob260, i32 0, i32 1
  %172 = load ptr, ptr %pBlob261, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %172, ptr %zString, align 8
  %173 = load ptr, ptr %pTos, align 8
  %sBlob262 = getelementptr inbounds nuw %struct.ph7_value, ptr %173, i32 0, i32 4
  %nByte263 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob262, i32 0, i32 2
  %174 = load i32, ptr %nByte263, align 8
  %nByte264 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  store i32 %174, ptr %nByte264, align 8
  br label %if.end272

if.else265:                                       ; preds = %sw.bb248
  %175 = load ptr, ptr %pInstr, align 8
  %p3266 = getelementptr inbounds nuw %struct.VmInstr, ptr %175, i32 0, i32 3
  %176 = load ptr, ptr %p3266, align 8
  %zString267 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %176, ptr %zString267, align 8
  %177 = load ptr, ptr %pInstr, align 8
  %p3268 = getelementptr inbounds nuw %struct.VmInstr, ptr %177, i32 0, i32 3
  %178 = load ptr, ptr %p3268, align 8
  %call269 = call i32 @SyStrlen(ptr noundef %178)
  %nByte270 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  store i32 %call269, ptr %nByte270, align 8
  %179 = load ptr, ptr %pTos, align 8
  %incdec.ptr271 = getelementptr inbounds nuw %struct.ph7_value, ptr %179, i32 1
  store ptr %incdec.ptr271, ptr %pTos, align 8
  br label %if.end272

if.end272:                                        ; preds = %if.else265, %if.end259
  %180 = load ptr, ptr %pVm.addr, align 8
  %181 = load ptr, ptr %pInstr, align 8
  %p3273 = getelementptr inbounds nuw %struct.VmInstr, ptr %181, i32 0, i32 3
  %182 = load ptr, ptr %p3273, align 8
  %tobool274 = icmp ne ptr %182, null
  %183 = zext i1 %tobool274 to i64
  %cond = select i1 %tobool274, i32 0, i32 1
  %184 = load ptr, ptr %pInstr, align 8
  %iP1275 = getelementptr inbounds nuw %struct.VmInstr, ptr %184, i32 0, i32 1
  %185 = load i32, ptr %iP1275, align 4
  %cmp276 = icmp ne i32 %185, 1
  %conv277 = zext i1 %cmp276 to i32
  %call278 = call ptr @VmExtractMemObj(ptr noundef %180, ptr noundef %sName, i32 noundef %cond, i32 noundef %conv277)
  store ptr %call278, ptr %pObj249, align 8
  %186 = load ptr, ptr %pObj249, align 8
  %cmp279 = icmp eq ptr %186, null
  br i1 %cmp279, label %if.then281, label %if.end298

if.then281:                                       ; preds = %if.end272
  %187 = load ptr, ptr %pInstr, align 8
  %iP1282 = getelementptr inbounds nuw %struct.VmInstr, ptr %187, i32 0, i32 1
  %188 = load i32, ptr %iP1282, align 4
  %tobool283 = icmp ne i32 %188, 0
  br i1 %tobool283, label %if.then284, label %if.else296

if.then284:                                       ; preds = %if.then281
  %189 = load ptr, ptr %pInstr, align 8
  %p3285 = getelementptr inbounds nuw %struct.VmInstr, ptr %189, i32 0, i32 3
  %190 = load ptr, ptr %p3285, align 8
  %tobool286 = icmp ne ptr %190, null
  br i1 %tobool286, label %if.else289, label %if.then287

if.then287:                                       ; preds = %if.then284
  %191 = load ptr, ptr %pTos, align 8
  %call288 = call i32 @PH7_MemObjRelease(ptr noundef %191)
  br label %if.end294

if.else289:                                       ; preds = %if.then284
  %192 = load ptr, ptr %pTos, align 8
  %iFlags290 = getelementptr inbounds nuw %struct.ph7_value, ptr %192, i32 0, i32 2
  %193 = load i32, ptr %iFlags290, align 8
  %and291 = and i32 %193, -496
  %or292 = or i32 %and291, 32
  %194 = load ptr, ptr %pTos, align 8
  %iFlags293 = getelementptr inbounds nuw %struct.ph7_value, ptr %194, i32 0, i32 2
  store i32 %or292, ptr %iFlags293, align 8
  br label %if.end294

if.end294:                                        ; preds = %if.else289, %if.then287
  %195 = load ptr, ptr %pTos, align 8
  %nIdx295 = getelementptr inbounds nuw %struct.ph7_value, ptr %195, i32 0, i32 5
  store i32 -1, ptr %nIdx295, align 8
  br label %sw.epilog3867

if.else296:                                       ; preds = %if.then281
  %196 = load ptr, ptr %pVm.addr, align 8
  %call297 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %196, i32 noundef 1, ptr noundef @.str.63, ptr noundef %sName)
  br label %Abort

if.end298:                                        ; preds = %if.end272
  %197 = load ptr, ptr %pObj249, align 8
  %198 = load ptr, ptr %pTos, align 8
  %call299 = call i32 @PH7_MemObjLoad(ptr noundef %197, ptr noundef %198)
  %199 = load ptr, ptr %pObj249, align 8
  %nIdx300 = getelementptr inbounds nuw %struct.ph7_value, ptr %199, i32 0, i32 5
  %200 = load i32, ptr %nIdx300, align 8
  %201 = load ptr, ptr %pTos, align 8
  %nIdx301 = getelementptr inbounds nuw %struct.ph7_value, ptr %201, i32 0, i32 5
  store i32 %200, ptr %nIdx301, align 8
  br label %sw.epilog3867

sw.bb302:                                         ; preds = %for.cond
  %202 = load ptr, ptr %pVm.addr, align 8
  %call303 = call ptr @PH7_NewHashmap(ptr noundef %202, ptr noundef null, ptr noundef null)
  store ptr %call303, ptr %pMap, align 8
  %203 = load ptr, ptr %pMap, align 8
  %cmp304 = icmp eq ptr %203, null
  br i1 %cmp304, label %if.then306, label %if.end308

if.then306:                                       ; preds = %sw.bb302
  %204 = load ptr, ptr %pVm.addr, align 8
  %205 = load i32, ptr %pc, align 4
  %call307 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %204, i32 noundef 1, ptr noundef @.str.64, i32 noundef %205)
  br label %Abort

if.end308:                                        ; preds = %sw.bb302
  %206 = load ptr, ptr %pInstr, align 8
  %iP1309 = getelementptr inbounds nuw %struct.VmInstr, ptr %206, i32 0, i32 1
  %207 = load i32, ptr %iP1309, align 4
  %cmp310 = icmp sgt i32 %207, 0
  br i1 %cmp310, label %if.then312, label %if.end346

if.then312:                                       ; preds = %if.end308
  %208 = load ptr, ptr %pTos, align 8
  %209 = load ptr, ptr %pInstr, align 8
  %iP1314 = getelementptr inbounds nuw %struct.VmInstr, ptr %209, i32 0, i32 1
  %210 = load i32, ptr %iP1314, align 4
  %sub315 = sub nsw i32 0, %210
  %add316 = add nsw i32 %sub315, 1
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds %struct.ph7_value, ptr %208, i64 %idxprom317
  store ptr %arrayidx318, ptr %pEntry313, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end344, %if.then312
  %211 = load ptr, ptr %pEntry313, align 8
  %212 = load ptr, ptr %pTos, align 8
  %cmp319 = icmp ult ptr %211, %212
  br i1 %cmp319, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %213 = load ptr, ptr %pEntry313, align 8
  %arrayidx321 = getelementptr inbounds %struct.ph7_value, ptr %213, i64 1
  %iFlags322 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx321, i32 0, i32 2
  %214 = load i32, ptr %iFlags322, align 8
  %and323 = and i32 %214, 1024
  %tobool324 = icmp ne i32 %and323, 0
  br i1 %tobool324, label %if.then325, label %if.else334

if.then325:                                       ; preds = %while.body
  %215 = load ptr, ptr %pMap, align 8
  %216 = load ptr, ptr %pEntry313, align 8
  %iFlags326 = getelementptr inbounds nuw %struct.ph7_value, ptr %216, i32 0, i32 2
  %217 = load i32, ptr %iFlags326, align 8
  %and327 = and i32 %217, 32
  %tobool328 = icmp ne i32 %and327, 0
  br i1 %tobool328, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then325
  br label %cond.end

cond.false:                                       ; preds = %if.then325
  %218 = load ptr, ptr %pEntry313, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond329 = phi ptr [ null, %cond.true ], [ %218, %cond.false ]
  %219 = load ptr, ptr %pEntry313, align 8
  %arrayidx330 = getelementptr inbounds %struct.ph7_value, ptr %219, i64 1
  %x331 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx330, i32 0, i32 1
  %220 = load i64, ptr %x331, align 8
  %conv332 = trunc i64 %220 to i32
  %call333 = call i32 @PH7_HashmapInsertByRef(ptr noundef %215, ptr noundef %cond329, i32 noundef %conv332)
  br label %if.end344

if.else334:                                       ; preds = %while.body
  %221 = load ptr, ptr %pMap, align 8
  %222 = load ptr, ptr %pEntry313, align 8
  %iFlags335 = getelementptr inbounds nuw %struct.ph7_value, ptr %222, i32 0, i32 2
  %223 = load i32, ptr %iFlags335, align 8
  %and336 = and i32 %223, 32
  %tobool337 = icmp ne i32 %and336, 0
  br i1 %tobool337, label %cond.true338, label %cond.false339

cond.true338:                                     ; preds = %if.else334
  br label %cond.end340

cond.false339:                                    ; preds = %if.else334
  %224 = load ptr, ptr %pEntry313, align 8
  br label %cond.end340

cond.end340:                                      ; preds = %cond.false339, %cond.true338
  %cond341 = phi ptr [ null, %cond.true338 ], [ %224, %cond.false339 ]
  %225 = load ptr, ptr %pEntry313, align 8
  %arrayidx342 = getelementptr inbounds %struct.ph7_value, ptr %225, i64 1
  %call343 = call i32 @PH7_HashmapInsert(ptr noundef %221, ptr noundef %cond341, ptr noundef %arrayidx342)
  br label %if.end344

if.end344:                                        ; preds = %cond.end340, %cond.end
  %226 = load ptr, ptr %pEntry313, align 8
  %add.ptr = getelementptr inbounds %struct.ph7_value, ptr %226, i64 2
  store ptr %add.ptr, ptr %pEntry313, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %227 = load ptr, ptr %pInstr, align 8
  %iP1345 = getelementptr inbounds nuw %struct.VmInstr, ptr %227, i32 0, i32 1
  %228 = load i32, ptr %iP1345, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %228)
  br label %if.end346

if.end346:                                        ; preds = %while.end, %if.end308
  %229 = load ptr, ptr %pTos, align 8
  %incdec.ptr347 = getelementptr inbounds nuw %struct.ph7_value, ptr %229, i32 1
  store ptr %incdec.ptr347, ptr %pTos, align 8
  %230 = load ptr, ptr %pTos, align 8
  %nIdx348 = getelementptr inbounds nuw %struct.ph7_value, ptr %230, i32 0, i32 5
  store i32 -1, ptr %nIdx348, align 8
  %231 = load ptr, ptr %pMap, align 8
  %232 = load ptr, ptr %pTos, align 8
  %x349 = getelementptr inbounds nuw %struct.ph7_value, ptr %232, i32 0, i32 1
  store ptr %231, ptr %x349, align 8
  %233 = load ptr, ptr %pTos, align 8
  %iFlags350 = getelementptr inbounds nuw %struct.ph7_value, ptr %233, i32 0, i32 2
  %234 = load i32, ptr %iFlags350, align 8
  %and351 = and i32 %234, -496
  %or352 = or i32 %and351, 64
  %235 = load ptr, ptr %pTos, align 8
  %iFlags353 = getelementptr inbounds nuw %struct.ph7_value, ptr %235, i32 0, i32 2
  store i32 %or352, ptr %iFlags353, align 8
  br label %sw.epilog3867

sw.bb354:                                         ; preds = %for.cond
  %236 = load ptr, ptr %pInstr, align 8
  %iP1356 = getelementptr inbounds nuw %struct.VmInstr, ptr %236, i32 0, i32 1
  %237 = load i32, ptr %iP1356, align 4
  %cmp357 = icmp sle i32 %237, 0
  br i1 %cmp357, label %if.then359, label %if.end360

if.then359:                                       ; preds = %sw.bb354
  br label %sw.epilog3867

if.end360:                                        ; preds = %sw.bb354
  %238 = load ptr, ptr %pTos, align 8
  %239 = load ptr, ptr %pInstr, align 8
  %iP1361 = getelementptr inbounds nuw %struct.VmInstr, ptr %239, i32 0, i32 1
  %240 = load i32, ptr %iP1361, align 4
  %sub362 = sub nsw i32 0, %240
  %add363 = add nsw i32 %sub362, 1
  %idxprom364 = sext i32 %add363 to i64
  %arrayidx365 = getelementptr inbounds %struct.ph7_value, ptr %238, i64 %idxprom364
  store ptr %arrayidx365, ptr %pEntry355, align 8
  %241 = load ptr, ptr %pEntry355, align 8
  %arrayidx366 = getelementptr inbounds %struct.ph7_value, ptr %241, i64 -1
  %iFlags367 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx366, i32 0, i32 2
  %242 = load i32, ptr %iFlags367, align 8
  %and368 = and i32 %242, 64
  %tobool369 = icmp ne i32 %and368, 0
  br i1 %tobool369, label %if.then370, label %if.end401

if.then370:                                       ; preds = %if.end360
  %243 = load ptr, ptr %pEntry355, align 8
  %arrayidx372 = getelementptr inbounds %struct.ph7_value, ptr %243, i64 -1
  %x373 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx372, i32 0, i32 1
  %244 = load ptr, ptr %x373, align 8
  store ptr %244, ptr %pMap371, align 8
  %245 = load ptr, ptr %pVm.addr, align 8
  %call375 = call i32 @PH7_MemObjInitFromInt(ptr noundef %245, ptr noundef %sKey, i64 noundef 0)
  br label %while.cond376

while.cond376:                                    ; preds = %if.end397, %if.then370
  %246 = load ptr, ptr %pEntry355, align 8
  %247 = load ptr, ptr %pTos, align 8
  %cmp377 = icmp ule ptr %246, %247
  br i1 %cmp377, label %while.body379, label %while.end400

while.body379:                                    ; preds = %while.cond376
  %248 = load ptr, ptr %pEntry355, align 8
  %nIdx380 = getelementptr inbounds nuw %struct.ph7_value, ptr %248, i32 0, i32 5
  %249 = load i32, ptr %nIdx380, align 8
  %cmp381 = icmp ne i32 %249, -1
  br i1 %cmp381, label %if.then383, label %if.end397

if.then383:                                       ; preds = %while.body379
  %250 = load ptr, ptr %pMap371, align 8
  %call384 = call i32 @PH7_HashmapLookup(ptr noundef %250, ptr noundef %sKey, ptr noundef %pNode)
  store i32 %call384, ptr %rc, align 4
  %251 = load ptr, ptr %pVm.addr, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %251, i32 0, i32 6
  %252 = load ptr, ptr %pEntry355, align 8
  %nIdx385 = getelementptr inbounds nuw %struct.ph7_value, ptr %252, i32 0, i32 5
  %253 = load i32, ptr %nIdx385, align 8
  %call386 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %253)
  store ptr %call386, ptr %pObj374, align 8
  %cmp387 = icmp ne ptr %call386, null
  br i1 %cmp387, label %if.then389, label %if.end396

if.then389:                                       ; preds = %if.then383
  %254 = load i32, ptr %rc, align 4
  %cmp390 = icmp eq i32 %254, 0
  br i1 %cmp390, label %if.then392, label %if.else393

if.then392:                                       ; preds = %if.then389
  %255 = load ptr, ptr %pNode, align 8
  %256 = load ptr, ptr %pObj374, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %255, ptr noundef %256, i32 noundef 1)
  br label %if.end395

if.else393:                                       ; preds = %if.then389
  %257 = load ptr, ptr %pObj374, align 8
  %call394 = call i32 @PH7_MemObjRelease(ptr noundef %257)
  br label %if.end395

if.end395:                                        ; preds = %if.else393, %if.then392
  br label %if.end396

if.end396:                                        ; preds = %if.end395, %if.then383
  br label %if.end397

if.end397:                                        ; preds = %if.end396, %while.body379
  %x398 = getelementptr inbounds nuw %struct.ph7_value, ptr %sKey, i32 0, i32 1
  %258 = load i64, ptr %x398, align 8
  %inc = add nsw i64 %258, 1
  store i64 %inc, ptr %x398, align 8
  %259 = load ptr, ptr %pEntry355, align 8
  %incdec.ptr399 = getelementptr inbounds nuw %struct.ph7_value, ptr %259, i32 1
  store ptr %incdec.ptr399, ptr %pEntry355, align 8
  br label %while.cond376, !llvm.loop !8

while.end400:                                     ; preds = %while.cond376
  br label %if.end401

if.end401:                                        ; preds = %while.end400, %if.end360
  %260 = load ptr, ptr %pInstr, align 8
  %iP1402 = getelementptr inbounds nuw %struct.VmInstr, ptr %260, i32 0, i32 1
  %261 = load i32, ptr %iP1402, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %261)
  br label %sw.epilog3867

sw.bb403:                                         ; preds = %for.cond
  store ptr null, ptr %pNode404, align 8
  store ptr null, ptr %pMap405, align 8
  store ptr null, ptr %pIdx, align 8
  %262 = load ptr, ptr %pInstr, align 8
  %iP1406 = getelementptr inbounds nuw %struct.VmInstr, ptr %262, i32 0, i32 1
  %263 = load i32, ptr %iP1406, align 4
  %cmp407 = icmp eq i32 %263, 0
  br i1 %cmp407, label %if.then409, label %if.else427

if.then409:                                       ; preds = %sw.bb403
  %264 = load ptr, ptr %pInstr, align 8
  %iP2410 = getelementptr inbounds nuw %struct.VmInstr, ptr %264, i32 0, i32 2
  %265 = load i32, ptr %iP2410, align 8
  %tobool411 = icmp ne i32 %265, 0
  br i1 %tobool411, label %if.end426, label %if.then412

if.then412:                                       ; preds = %if.then409
  %266 = load ptr, ptr %pTos, align 8
  %267 = load ptr, ptr %pStack.addr, align 8
  %cmp413 = icmp uge ptr %266, %267
  br i1 %cmp413, label %if.then415, label %if.else417

if.then415:                                       ; preds = %if.then412
  %268 = load ptr, ptr %pTos, align 8
  %call416 = call i32 @PH7_MemObjRelease(ptr noundef %268)
  br label %if.end424

if.else417:                                       ; preds = %if.then412
  %269 = load ptr, ptr %pTos, align 8
  %incdec.ptr418 = getelementptr inbounds nuw %struct.ph7_value, ptr %269, i32 1
  store ptr %incdec.ptr418, ptr %pTos, align 8
  %270 = load ptr, ptr %pTos, align 8
  %iFlags419 = getelementptr inbounds nuw %struct.ph7_value, ptr %270, i32 0, i32 2
  %271 = load i32, ptr %iFlags419, align 8
  %and420 = and i32 %271, -496
  %or421 = or i32 %and420, 32
  %272 = load ptr, ptr %pTos, align 8
  %iFlags422 = getelementptr inbounds nuw %struct.ph7_value, ptr %272, i32 0, i32 2
  store i32 %or421, ptr %iFlags422, align 8
  %273 = load ptr, ptr %pTos, align 8
  %nIdx423 = getelementptr inbounds nuw %struct.ph7_value, ptr %273, i32 0, i32 5
  store i32 -1, ptr %nIdx423, align 8
  br label %if.end424

if.end424:                                        ; preds = %if.else417, %if.then415
  %274 = load ptr, ptr %pVm.addr, align 8
  %call425 = call i32 @PH7_VmThrowError(ptr noundef %274, ptr noundef null, i32 noundef 3, ptr noundef @.str.65)
  br label %sw.epilog3867

if.end426:                                        ; preds = %if.then409
  br label %if.end429

if.else427:                                       ; preds = %sw.bb403
  %275 = load ptr, ptr %pTos, align 8
  store ptr %275, ptr %pIdx, align 8
  %276 = load ptr, ptr %pTos, align 8
  %incdec.ptr428 = getelementptr inbounds %struct.ph7_value, ptr %276, i32 -1
  store ptr %incdec.ptr428, ptr %pTos, align 8
  br label %if.end429

if.end429:                                        ; preds = %if.else427, %if.end426
  %277 = load ptr, ptr %pTos, align 8
  %iFlags430 = getelementptr inbounds nuw %struct.ph7_value, ptr %277, i32 0, i32 2
  %278 = load i32, ptr %iFlags430, align 8
  %and431 = and i32 %278, 1
  %tobool432 = icmp ne i32 %and431, 0
  br i1 %tobool432, label %if.then433, label %if.end471

if.then433:                                       ; preds = %if.end429
  %279 = load ptr, ptr %pIdx, align 8
  %tobool434 = icmp ne ptr %279, null
  br i1 %tobool434, label %if.then435, label %if.else465

if.then435:                                       ; preds = %if.then433
  %280 = load ptr, ptr %pIdx, align 8
  %iFlags436 = getelementptr inbounds nuw %struct.ph7_value, ptr %280, i32 0, i32 2
  %281 = load i32, ptr %iFlags436, align 8
  %and437 = and i32 %281, 2
  %cmp438 = icmp eq i32 %and437, 0
  br i1 %cmp438, label %if.then440, label %if.end442

if.then440:                                       ; preds = %if.then435
  %282 = load ptr, ptr %pIdx, align 8
  %call441 = call i32 @PH7_MemObjToInteger(ptr noundef %282)
  br label %if.end442

if.end442:                                        ; preds = %if.then440, %if.then435
  %283 = load ptr, ptr %pIdx, align 8
  %x443 = getelementptr inbounds nuw %struct.ph7_value, ptr %283, i32 0, i32 1
  %284 = load i64, ptr %x443, align 8
  %conv444 = trunc i64 %284 to i32
  store i32 %conv444, ptr %nOfft, align 4
  %285 = load i32, ptr %nOfft, align 4
  %286 = load ptr, ptr %pTos, align 8
  %sBlob445 = getelementptr inbounds nuw %struct.ph7_value, ptr %286, i32 0, i32 4
  %nByte446 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob445, i32 0, i32 2
  %287 = load i32, ptr %nByte446, align 8
  %cmp447 = icmp uge i32 %285, %287
  br i1 %cmp447, label %if.then449, label %if.else451

if.then449:                                       ; preds = %if.end442
  %288 = load ptr, ptr %pTos, align 8
  %call450 = call i32 @PH7_MemObjRelease(ptr noundef %288)
  br label %if.end464

if.else451:                                       ; preds = %if.end442
  %289 = load ptr, ptr %pTos, align 8
  %sBlob452 = getelementptr inbounds nuw %struct.ph7_value, ptr %289, i32 0, i32 4
  %pBlob453 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob452, i32 0, i32 1
  %290 = load ptr, ptr %pBlob453, align 8
  store ptr %290, ptr %zData, align 8
  %291 = load ptr, ptr %zData, align 8
  %292 = load i32, ptr %nOfft, align 4
  %idxprom454 = zext i32 %292 to i64
  %arrayidx455 = getelementptr inbounds nuw i8, ptr %291, i64 %idxprom454
  %293 = load i8, ptr %arrayidx455, align 1
  %conv456 = sext i8 %293 to i32
  store i32 %conv456, ptr %c, align 4
  %294 = load ptr, ptr %pTos, align 8
  %call457 = call i32 @PH7_MemObjRelease(ptr noundef %294)
  %295 = load ptr, ptr %pTos, align 8
  %iFlags458 = getelementptr inbounds nuw %struct.ph7_value, ptr %295, i32 0, i32 2
  %296 = load i32, ptr %iFlags458, align 8
  %and459 = and i32 %296, -496
  %or460 = or i32 %and459, 1
  %297 = load ptr, ptr %pTos, align 8
  %iFlags461 = getelementptr inbounds nuw %struct.ph7_value, ptr %297, i32 0, i32 2
  store i32 %or460, ptr %iFlags461, align 8
  %298 = load ptr, ptr %pTos, align 8
  %sBlob462 = getelementptr inbounds nuw %struct.ph7_value, ptr %298, i32 0, i32 4
  %call463 = call i32 @SyBlobAppend(ptr noundef %sBlob462, ptr noundef %c, i32 noundef 1)
  br label %if.end464

if.end464:                                        ; preds = %if.else451, %if.then449
  br label %if.end470

if.else465:                                       ; preds = %if.then433
  %299 = load ptr, ptr %pTos, align 8
  %iFlags466 = getelementptr inbounds nuw %struct.ph7_value, ptr %299, i32 0, i32 2
  %300 = load i32, ptr %iFlags466, align 8
  %and467 = and i32 %300, -496
  %or468 = or i32 %and467, 32
  %301 = load ptr, ptr %pTos, align 8
  %iFlags469 = getelementptr inbounds nuw %struct.ph7_value, ptr %301, i32 0, i32 2
  store i32 %or468, ptr %iFlags469, align 8
  br label %if.end470

if.end470:                                        ; preds = %if.else465, %if.end464
  br label %sw.epilog3867

if.end471:                                        ; preds = %if.end429
  %302 = load ptr, ptr %pInstr, align 8
  %iP2472 = getelementptr inbounds nuw %struct.VmInstr, ptr %302, i32 0, i32 2
  %303 = load i32, ptr %iP2472, align 8
  %tobool473 = icmp ne i32 %303, 0
  br i1 %tobool473, label %land.lhs.true474, label %if.end495

land.lhs.true474:                                 ; preds = %if.end471
  %304 = load ptr, ptr %pTos, align 8
  %iFlags475 = getelementptr inbounds nuw %struct.ph7_value, ptr %304, i32 0, i32 2
  %305 = load i32, ptr %iFlags475, align 8
  %and476 = and i32 %305, 64
  %cmp477 = icmp eq i32 %and476, 0
  br i1 %cmp477, label %if.then479, label %if.end495

if.then479:                                       ; preds = %land.lhs.true474
  %306 = load ptr, ptr %pTos, align 8
  %nIdx480 = getelementptr inbounds nuw %struct.ph7_value, ptr %306, i32 0, i32 5
  %307 = load i32, ptr %nIdx480, align 8
  %cmp481 = icmp ne i32 %307, -1
  br i1 %cmp481, label %if.then483, label %if.end494

if.then483:                                       ; preds = %if.then479
  %308 = load ptr, ptr %pVm.addr, align 8
  %aMemObj485 = getelementptr inbounds nuw %struct.ph7_vm, ptr %308, i32 0, i32 6
  %309 = load ptr, ptr %pTos, align 8
  %nIdx486 = getelementptr inbounds nuw %struct.ph7_value, ptr %309, i32 0, i32 5
  %310 = load i32, ptr %nIdx486, align 8
  %call487 = call ptr @SySetAt(ptr noundef %aMemObj485, i32 noundef %310)
  store ptr %call487, ptr %pObj484, align 8
  %cmp488 = icmp ne ptr %call487, null
  br i1 %cmp488, label %if.then490, label %if.end493

if.then490:                                       ; preds = %if.then483
  %311 = load ptr, ptr %pObj484, align 8
  %call491 = call i32 @PH7_MemObjToHashmap(ptr noundef %311)
  %312 = load ptr, ptr %pObj484, align 8
  %313 = load ptr, ptr %pTos, align 8
  %call492 = call i32 @PH7_MemObjLoad(ptr noundef %312, ptr noundef %313)
  br label %if.end493

if.end493:                                        ; preds = %if.then490, %if.then483
  br label %if.end494

if.end494:                                        ; preds = %if.end493, %if.then479
  br label %if.end495

if.end495:                                        ; preds = %if.end494, %land.lhs.true474, %if.end471
  store i32 -6, ptr %rc, align 4
  %314 = load ptr, ptr %pTos, align 8
  %iFlags496 = getelementptr inbounds nuw %struct.ph7_value, ptr %314, i32 0, i32 2
  %315 = load i32, ptr %iFlags496, align 8
  %and497 = and i32 %315, 64
  %tobool498 = icmp ne i32 %and497, 0
  br i1 %tobool498, label %if.then499, label %if.end517

if.then499:                                       ; preds = %if.end495
  %316 = load ptr, ptr %pTos, align 8
  %x500 = getelementptr inbounds nuw %struct.ph7_value, ptr %316, i32 0, i32 1
  %317 = load ptr, ptr %x500, align 8
  store ptr %317, ptr %pMap405, align 8
  %318 = load ptr, ptr %pIdx, align 8
  %tobool501 = icmp ne ptr %318, null
  br i1 %tobool501, label %if.then502, label %if.end504

if.then502:                                       ; preds = %if.then499
  %319 = load ptr, ptr %pMap405, align 8
  %320 = load ptr, ptr %pIdx, align 8
  %call503 = call i32 @PH7_HashmapLookup(ptr noundef %319, ptr noundef %320, ptr noundef %pNode404)
  store i32 %call503, ptr %rc, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.then502, %if.then499
  %321 = load i32, ptr %rc, align 4
  %cmp505 = icmp ne i32 %321, 0
  br i1 %cmp505, label %land.lhs.true507, label %if.end516

land.lhs.true507:                                 ; preds = %if.end504
  %322 = load ptr, ptr %pInstr, align 8
  %iP2508 = getelementptr inbounds nuw %struct.VmInstr, ptr %322, i32 0, i32 2
  %323 = load i32, ptr %iP2508, align 8
  %tobool509 = icmp ne i32 %323, 0
  br i1 %tobool509, label %if.then510, label %if.end516

if.then510:                                       ; preds = %land.lhs.true507
  %324 = load ptr, ptr %pMap405, align 8
  %325 = load ptr, ptr %pIdx, align 8
  %call511 = call i32 @PH7_HashmapInsert(ptr noundef %324, ptr noundef %325, ptr noundef null)
  store i32 %call511, ptr %rc, align 4
  %326 = load i32, ptr %rc, align 4
  %cmp512 = icmp eq i32 %326, 0
  br i1 %cmp512, label %if.then514, label %if.end515

if.then514:                                       ; preds = %if.then510
  %327 = load ptr, ptr %pMap405, align 8
  %pLast = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %327, i32 0, i32 3
  %328 = load ptr, ptr %pLast, align 8
  store ptr %328, ptr %pNode404, align 8
  br label %if.end515

if.end515:                                        ; preds = %if.then514, %if.then510
  br label %if.end516

if.end516:                                        ; preds = %if.end515, %land.lhs.true507, %if.end504
  br label %if.end517

if.end517:                                        ; preds = %if.end516, %if.end495
  %329 = load ptr, ptr %pIdx, align 8
  %tobool518 = icmp ne ptr %329, null
  br i1 %tobool518, label %if.then519, label %if.end521

if.then519:                                       ; preds = %if.end517
  %330 = load ptr, ptr %pIdx, align 8
  %call520 = call i32 @PH7_MemObjRelease(ptr noundef %330)
  br label %if.end521

if.end521:                                        ; preds = %if.then519, %if.end517
  %331 = load i32, ptr %rc, align 4
  %cmp522 = icmp eq i32 %331, 0
  br i1 %cmp522, label %if.then524, label %if.else532

if.then524:                                       ; preds = %if.end521
  %332 = load ptr, ptr %pMap405, align 8
  %iRef = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %332, i32 0, i32 10
  %333 = load i32, ptr %iRef, align 8
  %cmp525 = icmp slt i32 %333, 2
  br i1 %cmp525, label %if.then527, label %if.else529

if.then527:                                       ; preds = %if.then524
  %334 = load ptr, ptr %pTos, align 8
  %nIdx528 = getelementptr inbounds nuw %struct.ph7_value, ptr %334, i32 0, i32 5
  store i32 -1, ptr %nIdx528, align 8
  %335 = load ptr, ptr %pNode404, align 8
  %336 = load ptr, ptr %pTos, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %335, ptr noundef %336, i32 noundef 1)
  br label %if.end531

if.else529:                                       ; preds = %if.then524
  %337 = load ptr, ptr %pNode404, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %337, i32 0, i32 5
  %338 = load i32, ptr %nValIdx, align 8
  %339 = load ptr, ptr %pTos, align 8
  %nIdx530 = getelementptr inbounds nuw %struct.ph7_value, ptr %339, i32 0, i32 5
  store i32 %338, ptr %nIdx530, align 8
  %340 = load ptr, ptr %pNode404, align 8
  %341 = load ptr, ptr %pTos, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %340, ptr noundef %341, i32 noundef 0)
  %342 = load ptr, ptr %pMap405, align 8
  call void @PH7_HashmapUnref(ptr noundef %342)
  br label %if.end531

if.end531:                                        ; preds = %if.else529, %if.then527
  br label %if.end535

if.else532:                                       ; preds = %if.end521
  %343 = load ptr, ptr %pTos, align 8
  %call533 = call i32 @PH7_MemObjRelease(ptr noundef %343)
  %344 = load ptr, ptr %pTos, align 8
  %nIdx534 = getelementptr inbounds nuw %struct.ph7_value, ptr %344, i32 0, i32 5
  store i32 -1, ptr %nIdx534, align 8
  br label %if.end535

if.end535:                                        ; preds = %if.else532, %if.end531
  br label %sw.epilog3867

sw.bb536:                                         ; preds = %for.cond
  %345 = load ptr, ptr %pInstr, align 8
  %p3537 = getelementptr inbounds nuw %struct.VmInstr, ptr %345, i32 0, i32 3
  %346 = load ptr, ptr %p3537, align 8
  store ptr %346, ptr %pFunc, align 8
  %347 = load ptr, ptr %pFunc, align 8
  %iFlags538 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %347, i32 0, i32 5
  %348 = load i32, ptr %iFlags538, align 8
  %and539 = and i32 %348, 16
  %tobool540 = icmp ne i32 %and539, 0
  br i1 %tobool540, label %if.then541, label %if.end614

if.then541:                                       ; preds = %sw.bb536
  %349 = load ptr, ptr %pVm.addr, align 8
  %sAllocator543 = getelementptr inbounds nuw %struct.ph7_vm, ptr %349, i32 0, i32 0
  %call544 = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator543, i32 noundef 216)
  store ptr %call544, ptr %pClosure, align 8
  %350 = load ptr, ptr %pVm.addr, align 8
  %sAllocator545 = getelementptr inbounds nuw %struct.ph7_vm, ptr %350, i32 0, i32 0
  %call546 = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator545, i32 noundef 75)
  store ptr %call546, ptr %zName, align 8
  %351 = load ptr, ptr %pClosure, align 8
  %cmp547 = icmp eq ptr %351, null
  br i1 %cmp547, label %if.then551, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then541
  %352 = load ptr, ptr %zName, align 8
  %cmp549 = icmp eq ptr %352, null
  br i1 %cmp549, label %if.then551, label %if.end553

if.then551:                                       ; preds = %lor.lhs.false, %if.then541
  %353 = load ptr, ptr %pVm.addr, align 8
  %call552 = call i32 @PH7_VmThrowError(ptr noundef %353, ptr noundef null, i32 noundef 1, ptr noundef @.str.66)
  br label %Abort

if.end553:                                        ; preds = %lor.lhs.false
  %354 = load ptr, ptr %zName, align 8
  %355 = load ptr, ptr %pVm.addr, align 8
  %closure_cnt = getelementptr inbounds nuw %struct.ph7_vm, ptr %355, i32 0, i32 38
  %356 = load i32, ptr %closure_cnt, align 4
  %inc554 = add nsw i32 %356, 1
  store i32 %inc554, ptr %closure_cnt, align 4
  %call555 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %354, i32 noundef 75, ptr noundef @.str.67, i32 noundef %356)
  store i32 %call555, ptr %mLen, align 4
  br label %while.cond556

while.cond556:                                    ; preds = %while.body563, %if.end553
  %357 = load ptr, ptr %pVm.addr, align 8
  %hFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %357, i32 0, i32 13
  %358 = load ptr, ptr %zName, align 8
  %359 = load i32, ptr %mLen, align 4
  %call557 = call ptr @SyHashGet(ptr noundef %hFunction, ptr noundef %358, i32 noundef %359)
  %cmp558 = icmp ne ptr %call557, null
  br i1 %cmp558, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond556
  %360 = load i32, ptr %mLen, align 4
  %conv560 = zext i32 %360 to i64
  %cmp561 = icmp ult i64 %conv560, 71
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond556
  %361 = phi i1 [ false, %while.cond556 ], [ %cmp561, %land.rhs ]
  br i1 %361, label %while.body563, label %while.end567

while.body563:                                    ; preds = %land.end
  %362 = load ptr, ptr %zName, align 8
  %363 = load ptr, ptr %pVm.addr, align 8
  %closure_cnt564 = getelementptr inbounds nuw %struct.ph7_vm, ptr %363, i32 0, i32 38
  %364 = load i32, ptr %closure_cnt564, align 4
  %inc565 = add nsw i32 %364, 1
  store i32 %inc565, ptr %closure_cnt564, align 4
  %call566 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %362, i32 noundef 75, ptr noundef @.str.67, i32 noundef %364)
  store i32 %call566, ptr %mLen, align 4
  br label %while.cond556, !llvm.loop !9

while.end567:                                     ; preds = %land.end
  %365 = load ptr, ptr %pClosure, align 8
  call void @SyZero(ptr noundef %365, i32 noundef 216)
  %366 = load ptr, ptr %pClosure, align 8
  %aArgs = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %366, i32 0, i32 0
  %367 = load ptr, ptr %pFunc, align 8
  %aArgs568 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %367, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %aArgs, ptr align 8 %aArgs568, i64 40, i1 false)
  %368 = load ptr, ptr %pClosure, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %368, i32 0, i32 3
  %369 = load ptr, ptr %pFunc, align 8
  %aByteCode569 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %369, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %aByteCode, ptr align 8 %aByteCode569, i64 40, i1 false)
  %370 = load ptr, ptr %pClosure, align 8
  %aStatic = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %370, i32 0, i32 1
  %371 = load ptr, ptr %pFunc, align 8
  %aStatic570 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %371, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %aStatic, ptr align 8 %aStatic570, i64 40, i1 false)
  %372 = load ptr, ptr %pFunc, align 8
  %iFlags571 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %372, i32 0, i32 5
  %373 = load i32, ptr %iFlags571, align 8
  %374 = load ptr, ptr %pClosure, align 8
  %iFlags572 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %374, i32 0, i32 5
  store i32 %373, ptr %iFlags572, align 8
  %375 = load ptr, ptr %pFunc, align 8
  %pUserData573 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %375, i32 0, i32 7
  %376 = load ptr, ptr %pUserData573, align 8
  %377 = load ptr, ptr %pClosure, align 8
  %pUserData574 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %377, i32 0, i32 7
  store ptr %376, ptr %pUserData574, align 8
  %378 = load ptr, ptr %pClosure, align 8
  %sSignature = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %378, i32 0, i32 6
  %379 = load ptr, ptr %pFunc, align 8
  %sSignature575 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %379, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sSignature, ptr align 8 %sSignature575, i64 16, i1 false)
  %380 = load ptr, ptr %zName, align 8
  %381 = load ptr, ptr %pClosure, align 8
  %sName576 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %381, i32 0, i32 2
  %zString577 = getelementptr inbounds nuw %struct.SyString, ptr %sName576, i32 0, i32 0
  store ptr %380, ptr %zString577, align 8
  %382 = load i32, ptr %mLen, align 4
  %383 = load ptr, ptr %pClosure, align 8
  %sName578 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %383, i32 0, i32 2
  %nByte579 = getelementptr inbounds nuw %struct.SyString, ptr %sName578, i32 0, i32 1
  store i32 %382, ptr %nByte579, align 8
  %384 = load ptr, ptr %pVm.addr, align 8
  %385 = load ptr, ptr %pClosure, align 8
  %call580 = call i32 @PH7_VmInstallUserFunction(ptr noundef %384, ptr noundef %385, ptr noundef null)
  %386 = load ptr, ptr %pClosure, align 8
  %aClosureEnv = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %386, i32 0, i32 4
  %387 = load ptr, ptr %pVm.addr, align 8
  %sAllocator581 = getelementptr inbounds nuw %struct.ph7_vm, ptr %387, i32 0, i32 0
  %call582 = call i32 @SySetInit(ptr noundef %aClosureEnv, ptr noundef %sAllocator581, i32 noundef 104)
  %388 = load ptr, ptr %pFunc, align 8
  %aClosureEnv583 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %388, i32 0, i32 4
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aClosureEnv583, i32 0, i32 1
  %389 = load ptr, ptr %pBase, align 8
  store ptr %389, ptr %aEnv, align 8
  store i32 0, ptr %n542, align 4
  br label %for.cond584

for.cond584:                                      ; preds = %for.inc, %while.end567
  %390 = load i32, ptr %n542, align 4
  %391 = load ptr, ptr %pFunc, align 8
  %aClosureEnv585 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %391, i32 0, i32 4
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aClosureEnv585, i32 0, i32 2
  %392 = load i32, ptr %nUsed, align 8
  %cmp586 = icmp ult i32 %390, %392
  br i1 %cmp586, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond584
  %393 = load ptr, ptr %aEnv, align 8
  %394 = load i32, ptr %n542, align 4
  %idxprom588 = zext i32 %394 to i64
  %arrayidx589 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %393, i64 %idxprom588
  store ptr %arrayidx589, ptr %pEnv, align 8
  %sName590 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 0
  %395 = load ptr, ptr %pEnv, align 8
  %sName591 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %395, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sName590, ptr align 8 %sName591, i64 16, i1 false)
  %396 = load ptr, ptr %pEnv, align 8
  %iFlags592 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %396, i32 0, i32 1
  %397 = load i32, ptr %iFlags592, align 8
  %iFlags593 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 1
  store i32 %397, ptr %iFlags593, align 8
  %nIdx594 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 3
  store i32 -1, ptr %nIdx594, align 8
  %398 = load ptr, ptr %pVm.addr, align 8
  %sValue = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 2
  %call595 = call i32 @PH7_MemObjInit(ptr noundef %398, ptr noundef %sValue)
  %iFlags596 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 1
  %399 = load i32, ptr %iFlags596, align 8
  %and597 = and i32 %399, 1
  %tobool598 = icmp ne i32 %and597, 0
  br i1 %tobool598, label %if.then599, label %if.end601

if.then599:                                       ; preds = %for.body
  %400 = load ptr, ptr %pVm.addr, align 8
  %call600 = call i32 @PH7_VmThrowError(ptr noundef %400, ptr noundef null, i32 noundef 2, ptr noundef @.str.68)
  br label %if.end601

if.end601:                                        ; preds = %if.then599, %for.body
  %401 = load ptr, ptr %pVm.addr, align 8
  %sName602 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 0
  %call603 = call ptr @VmExtractMemObj(ptr noundef %401, ptr noundef %sName602, i32 noundef 0, i32 noundef 0)
  store ptr %call603, ptr %pValue, align 8
  %402 = load ptr, ptr %pValue, align 8
  %tobool604 = icmp ne ptr %402, null
  br i1 %tobool604, label %if.then605, label %if.end608

if.then605:                                       ; preds = %if.end601
  %403 = load ptr, ptr %pValue, align 8
  %sValue606 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 2
  %call607 = call i32 @PH7_MemObjStore(ptr noundef %403, ptr noundef %sValue606)
  br label %if.end608

if.end608:                                        ; preds = %if.then605, %if.end601
  %404 = load ptr, ptr %pClosure, align 8
  %aClosureEnv609 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %404, i32 0, i32 4
  %call610 = call i32 @SySetPut(ptr noundef %aClosureEnv609, ptr noundef %sEnv)
  br label %for.inc

for.inc:                                          ; preds = %if.end608
  %405 = load i32, ptr %n542, align 4
  %inc611 = add i32 %405, 1
  store i32 %inc611, ptr %n542, align 4
  br label %for.cond584, !llvm.loop !10

for.end:                                          ; preds = %for.cond584
  %406 = load ptr, ptr %pTos, align 8
  %incdec.ptr612 = getelementptr inbounds nuw %struct.ph7_value, ptr %406, i32 1
  store ptr %incdec.ptr612, ptr %pTos, align 8
  %407 = load ptr, ptr %pTos, align 8
  %408 = load ptr, ptr %zName, align 8
  %409 = load i32, ptr %mLen, align 4
  %call613 = call i32 @PH7_MemObjStringAppend(ptr noundef %407, ptr noundef %408, i32 noundef %409)
  br label %if.end614

if.end614:                                        ; preds = %for.end, %sw.bb536
  br label %sw.epilog3867

sw.bb615:                                         ; preds = %for.cond
  %410 = load ptr, ptr %pInstr, align 8
  %iP2618 = getelementptr inbounds nuw %struct.VmInstr, ptr %410, i32 0, i32 2
  %411 = load i32, ptr %iP2618, align 8
  %tobool619 = icmp ne i32 %411, 0
  br i1 %tobool619, label %if.then620, label %if.else636

if.then620:                                       ; preds = %sw.bb615
  %412 = load ptr, ptr %pTos, align 8
  %nIdx622 = getelementptr inbounds nuw %struct.ph7_value, ptr %412, i32 0, i32 5
  %413 = load i32, ptr %nIdx622, align 8
  store i32 %413, ptr %nIdx621, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %414 = load i32, ptr %nIdx621, align 4
  %cmp623 = icmp eq i32 %414, -1
  br i1 %cmp623, label %if.then625, label %if.else628

if.then625:                                       ; preds = %if.then620
  %415 = load ptr, ptr %pVm.addr, align 8
  %call626 = call i32 @PH7_VmThrowError(ptr noundef %415, ptr noundef null, i32 noundef 1, ptr noundef @.str.69)
  %416 = load ptr, ptr %pTos, align 8
  %nIdx627 = getelementptr inbounds nuw %struct.ph7_value, ptr %416, i32 0, i32 5
  store i32 -1, ptr %nIdx627, align 8
  br label %if.end635

if.else628:                                       ; preds = %if.then620
  %417 = load ptr, ptr %pVm.addr, align 8
  %aMemObj629 = getelementptr inbounds nuw %struct.ph7_vm, ptr %417, i32 0, i32 6
  %418 = load i32, ptr %nIdx621, align 4
  %call630 = call ptr @SySetAt(ptr noundef %aMemObj629, i32 noundef %418)
  store ptr %call630, ptr %pObj616, align 8
  %419 = load ptr, ptr %pObj616, align 8
  %tobool631 = icmp ne ptr %419, null
  br i1 %tobool631, label %if.then632, label %if.end634

if.then632:                                       ; preds = %if.else628
  %420 = load ptr, ptr %pTos, align 8
  %421 = load ptr, ptr %pObj616, align 8
  %call633 = call i32 @PH7_MemObjStore(ptr noundef %420, ptr noundef %421)
  br label %if.end634

if.end634:                                        ; preds = %if.then632, %if.else628
  br label %if.end635

if.end635:                                        ; preds = %if.end634, %if.then625
  br label %sw.epilog3867

if.else636:                                       ; preds = %sw.bb615
  %422 = load ptr, ptr %pInstr, align 8
  %p3637 = getelementptr inbounds nuw %struct.VmInstr, ptr %422, i32 0, i32 3
  %423 = load ptr, ptr %p3637, align 8
  %cmp638 = icmp eq ptr %423, null
  br i1 %cmp638, label %if.then640, label %if.else655

if.then640:                                       ; preds = %if.else636
  %424 = load ptr, ptr %pTos, align 8
  %iFlags641 = getelementptr inbounds nuw %struct.ph7_value, ptr %424, i32 0, i32 2
  %425 = load i32, ptr %iFlags641, align 8
  %and642 = and i32 %425, 1
  %cmp643 = icmp eq i32 %and642, 0
  br i1 %cmp643, label %if.then645, label %if.end647

if.then645:                                       ; preds = %if.then640
  %426 = load ptr, ptr %pTos, align 8
  %call646 = call i32 @PH7_MemObjToString(ptr noundef %426)
  br label %if.end647

if.end647:                                        ; preds = %if.then645, %if.then640
  %427 = load ptr, ptr %pTos, align 8
  %sBlob648 = getelementptr inbounds nuw %struct.ph7_value, ptr %427, i32 0, i32 4
  %pBlob649 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob648, i32 0, i32 1
  %428 = load ptr, ptr %pBlob649, align 8
  %zString650 = getelementptr inbounds nuw %struct.SyString, ptr %sName617, i32 0, i32 0
  store ptr %428, ptr %zString650, align 8
  %429 = load ptr, ptr %pTos, align 8
  %sBlob651 = getelementptr inbounds nuw %struct.ph7_value, ptr %429, i32 0, i32 4
  %nByte652 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob651, i32 0, i32 2
  %430 = load i32, ptr %nByte652, align 8
  %nByte653 = getelementptr inbounds nuw %struct.SyString, ptr %sName617, i32 0, i32 1
  store i32 %430, ptr %nByte653, align 8
  %431 = load ptr, ptr %pTos, align 8
  %incdec.ptr654 = getelementptr inbounds %struct.ph7_value, ptr %431, i32 -1
  store ptr %incdec.ptr654, ptr %pTos, align 8
  br label %if.end661

if.else655:                                       ; preds = %if.else636
  %432 = load ptr, ptr %pInstr, align 8
  %p3656 = getelementptr inbounds nuw %struct.VmInstr, ptr %432, i32 0, i32 3
  %433 = load ptr, ptr %p3656, align 8
  %zString657 = getelementptr inbounds nuw %struct.SyString, ptr %sName617, i32 0, i32 0
  store ptr %433, ptr %zString657, align 8
  %434 = load ptr, ptr %pInstr, align 8
  %p3658 = getelementptr inbounds nuw %struct.VmInstr, ptr %434, i32 0, i32 3
  %435 = load ptr, ptr %p3658, align 8
  %call659 = call i32 @SyStrlen(ptr noundef %435)
  %nByte660 = getelementptr inbounds nuw %struct.SyString, ptr %sName617, i32 0, i32 1
  store i32 %call659, ptr %nByte660, align 8
  br label %if.end661

if.end661:                                        ; preds = %if.else655, %if.end647
  br label %if.end662

if.end662:                                        ; preds = %if.end661
  %436 = load ptr, ptr %pVm.addr, align 8
  %437 = load ptr, ptr %pInstr, align 8
  %p3663 = getelementptr inbounds nuw %struct.VmInstr, ptr %437, i32 0, i32 3
  %438 = load ptr, ptr %p3663, align 8
  %tobool664 = icmp ne ptr %438, null
  %439 = zext i1 %tobool664 to i64
  %cond665 = select i1 %tobool664, i32 0, i32 1
  %call666 = call ptr @VmExtractMemObj(ptr noundef %436, ptr noundef %sName617, i32 noundef %cond665, i32 noundef 1)
  store ptr %call666, ptr %pObj616, align 8
  %440 = load ptr, ptr %pObj616, align 8
  %cmp667 = icmp eq ptr %440, null
  br i1 %cmp667, label %if.then669, label %if.end671

if.then669:                                       ; preds = %if.end662
  %441 = load ptr, ptr %pVm.addr, align 8
  %call670 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %441, i32 noundef 1, ptr noundef @.str.63, ptr noundef %sName617)
  br label %Abort

if.end671:                                        ; preds = %if.end662
  %442 = load ptr, ptr %pInstr, align 8
  %p3672 = getelementptr inbounds nuw %struct.VmInstr, ptr %442, i32 0, i32 3
  %443 = load ptr, ptr %p3672, align 8
  %tobool673 = icmp ne ptr %443, null
  br i1 %tobool673, label %if.end677, label %if.then674

if.then674:                                       ; preds = %if.end671
  %444 = load ptr, ptr %pTos, align 8
  %arrayidx675 = getelementptr inbounds %struct.ph7_value, ptr %444, i64 1
  %call676 = call i32 @PH7_MemObjRelease(ptr noundef %arrayidx675)
  br label %if.end677

if.end677:                                        ; preds = %if.then674, %if.end671
  %445 = load ptr, ptr %pTos, align 8
  %446 = load ptr, ptr %pObj616, align 8
  %call678 = call i32 @PH7_MemObjStore(ptr noundef %445, ptr noundef %446)
  br label %sw.epilog3867

sw.bb679:                                         ; preds = %for.cond, %for.cond
  store ptr null, ptr %pMap680, align 8
  %447 = load ptr, ptr %pInstr, align 8
  %iP1682 = getelementptr inbounds nuw %struct.VmInstr, ptr %447, i32 0, i32 1
  %448 = load i32, ptr %iP1682, align 4
  %tobool683 = icmp ne i32 %448, 0
  br i1 %tobool683, label %if.then684, label %if.else686

if.then684:                                       ; preds = %sw.bb679
  %449 = load ptr, ptr %pTos, align 8
  store ptr %449, ptr %pKey, align 8
  %450 = load ptr, ptr %pTos, align 8
  %incdec.ptr685 = getelementptr inbounds %struct.ph7_value, ptr %450, i32 -1
  store ptr %incdec.ptr685, ptr %pTos, align 8
  br label %if.end687

if.else686:                                       ; preds = %sw.bb679
  store ptr null, ptr %pKey, align 8
  br label %if.end687

if.end687:                                        ; preds = %if.else686, %if.then684
  %451 = load ptr, ptr %pTos, align 8
  %nIdx688 = getelementptr inbounds nuw %struct.ph7_value, ptr %451, i32 0, i32 5
  %452 = load i32, ptr %nIdx688, align 8
  store i32 %452, ptr %nIdx681, align 4
  %453 = load ptr, ptr %pTos, align 8
  %iFlags689 = getelementptr inbounds nuw %struct.ph7_value, ptr %453, i32 0, i32 2
  %454 = load i32, ptr %iFlags689, align 8
  %and690 = and i32 %454, 64
  %tobool691 = icmp ne i32 %and690, 0
  br i1 %tobool691, label %if.then692, label %if.else700

if.then692:                                       ; preds = %if.end687
  %455 = load ptr, ptr %pTos, align 8
  %x693 = getelementptr inbounds nuw %struct.ph7_value, ptr %455, i32 0, i32 1
  %456 = load ptr, ptr %x693, align 8
  store ptr %456, ptr %pMap680, align 8
  %457 = load ptr, ptr %pMap680, align 8
  %iRef694 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %457, i32 0, i32 10
  %458 = load i32, ptr %iRef694, align 8
  %cmp695 = icmp slt i32 %458, 2
  br i1 %cmp695, label %if.then697, label %if.end699

if.then697:                                       ; preds = %if.then692
  %459 = load ptr, ptr %pMap680, align 8
  %iRef698 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %459, i32 0, i32 10
  store i32 2, ptr %iRef698, align 8
  br label %if.end699

if.end699:                                        ; preds = %if.then697, %if.then692
  br label %if.end804

if.else700:                                       ; preds = %if.end687
  %460 = load ptr, ptr %pVm.addr, align 8
  %aMemObj702 = getelementptr inbounds nuw %struct.ph7_vm, ptr %460, i32 0, i32 6
  %461 = load i32, ptr %nIdx681, align 4
  %call703 = call ptr @SySetAt(ptr noundef %aMemObj702, i32 noundef %461)
  store ptr %call703, ptr %pObj701, align 8
  %462 = load ptr, ptr %pObj701, align 8
  %cmp704 = icmp eq ptr %462, null
  br i1 %cmp704, label %if.then706, label %if.end711

if.then706:                                       ; preds = %if.else700
  %463 = load ptr, ptr %pKey, align 8
  %tobool707 = icmp ne ptr %463, null
  br i1 %tobool707, label %if.then708, label %if.end710

if.then708:                                       ; preds = %if.then706
  %464 = load ptr, ptr %pKey, align 8
  %call709 = call i32 @PH7_MemObjRelease(ptr noundef %464)
  br label %if.end710

if.end710:                                        ; preds = %if.then708, %if.then706
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

if.end711:                                        ; preds = %if.else700
  %465 = load ptr, ptr %pObj701, align 8
  %iFlags712 = getelementptr inbounds nuw %struct.ph7_value, ptr %465, i32 0, i32 2
  %466 = load i32, ptr %iFlags712, align 8
  %and713 = and i32 %466, 1
  %tobool714 = icmp ne i32 %and713, 0
  br i1 %tobool714, label %land.lhs.true715, label %if.else789

land.lhs.true715:                                 ; preds = %if.end711
  %467 = load ptr, ptr %pInstr, align 8
  %iOp716 = getelementptr inbounds nuw %struct.VmInstr, ptr %467, i32 0, i32 0
  %468 = load i8, ptr %iOp716, align 8
  %conv717 = zext i8 %468 to i32
  %cmp718 = icmp ne i32 %conv717, 46
  br i1 %cmp718, label %if.then720, label %if.else789

if.then720:                                       ; preds = %land.lhs.true715
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %469 = load ptr, ptr %pTos, align 8
  %iFlags721 = getelementptr inbounds nuw %struct.ph7_value, ptr %469, i32 0, i32 2
  %470 = load i32, ptr %iFlags721, align 8
  %and722 = and i32 %470, 1
  %cmp723 = icmp eq i32 %and722, 0
  br i1 %cmp723, label %if.then725, label %if.end727

if.then725:                                       ; preds = %if.then720
  %471 = load ptr, ptr %pTos, align 8
  %call726 = call i32 @PH7_MemObjToString(ptr noundef %471)
  br label %if.end727

if.end727:                                        ; preds = %if.then725, %if.then720
  %472 = load ptr, ptr %pKey, align 8
  %cmp728 = icmp eq ptr %472, null
  br i1 %cmp728, label %if.then730, label %if.else743

if.then730:                                       ; preds = %if.end727
  %473 = load ptr, ptr %pTos, align 8
  %sBlob731 = getelementptr inbounds nuw %struct.ph7_value, ptr %473, i32 0, i32 4
  %nByte732 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob731, i32 0, i32 2
  %474 = load i32, ptr %nByte732, align 8
  %cmp733 = icmp ugt i32 %474, 0
  br i1 %cmp733, label %if.then735, label %if.end742

if.then735:                                       ; preds = %if.then730
  %475 = load ptr, ptr %pObj701, align 8
  %sBlob736 = getelementptr inbounds nuw %struct.ph7_value, ptr %475, i32 0, i32 4
  %476 = load ptr, ptr %pTos, align 8
  %sBlob737 = getelementptr inbounds nuw %struct.ph7_value, ptr %476, i32 0, i32 4
  %pBlob738 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob737, i32 0, i32 1
  %477 = load ptr, ptr %pBlob738, align 8
  %478 = load ptr, ptr %pTos, align 8
  %sBlob739 = getelementptr inbounds nuw %struct.ph7_value, ptr %478, i32 0, i32 4
  %nByte740 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob739, i32 0, i32 2
  %479 = load i32, ptr %nByte740, align 8
  %call741 = call i32 @SyBlobAppend(ptr noundef %sBlob736, ptr noundef %477, i32 noundef %479)
  br label %if.end742

if.end742:                                        ; preds = %if.then735, %if.then730
  br label %if.end784

if.else743:                                       ; preds = %if.end727
  %480 = load ptr, ptr %pKey, align 8
  %iFlags745 = getelementptr inbounds nuw %struct.ph7_value, ptr %480, i32 0, i32 2
  %481 = load i32, ptr %iFlags745, align 8
  %and746 = and i32 %481, 2
  %tobool747 = icmp ne i32 %and746, 0
  br i1 %tobool747, label %if.then748, label %if.end750

if.then748:                                       ; preds = %if.else743
  %482 = load ptr, ptr %pKey, align 8
  %call749 = call i32 @PH7_MemObjToInteger(ptr noundef %482)
  br label %if.end750

if.end750:                                        ; preds = %if.then748, %if.else743
  %483 = load ptr, ptr %pKey, align 8
  %x751 = getelementptr inbounds nuw %struct.ph7_value, ptr %483, i32 0, i32 1
  %484 = load i64, ptr %x751, align 8
  %conv752 = trunc i64 %484 to i32
  store i32 %conv752, ptr %nOfft744, align 4
  %485 = load i32, ptr %nOfft744, align 4
  %486 = load ptr, ptr %pObj701, align 8
  %sBlob753 = getelementptr inbounds nuw %struct.ph7_value, ptr %486, i32 0, i32 4
  %nByte754 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob753, i32 0, i32 2
  %487 = load i32, ptr %nByte754, align 8
  %cmp755 = icmp ult i32 %485, %487
  br i1 %cmp755, label %land.lhs.true757, label %if.else771

land.lhs.true757:                                 ; preds = %if.end750
  %488 = load ptr, ptr %pTos, align 8
  %sBlob758 = getelementptr inbounds nuw %struct.ph7_value, ptr %488, i32 0, i32 4
  %nByte759 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob758, i32 0, i32 2
  %489 = load i32, ptr %nByte759, align 8
  %cmp760 = icmp ugt i32 %489, 0
  br i1 %cmp760, label %if.then762, label %if.else771

if.then762:                                       ; preds = %land.lhs.true757
  %490 = load ptr, ptr %pTos, align 8
  %sBlob763 = getelementptr inbounds nuw %struct.ph7_value, ptr %490, i32 0, i32 4
  %pBlob764 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob763, i32 0, i32 1
  %491 = load ptr, ptr %pBlob764, align 8
  store ptr %491, ptr %zBlob, align 8
  %492 = load ptr, ptr %pObj701, align 8
  %sBlob766 = getelementptr inbounds nuw %struct.ph7_value, ptr %492, i32 0, i32 4
  %pBlob767 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob766, i32 0, i32 1
  %493 = load ptr, ptr %pBlob767, align 8
  store ptr %493, ptr %zData765, align 8
  %494 = load ptr, ptr %zBlob, align 8
  %arrayidx768 = getelementptr inbounds i8, ptr %494, i64 0
  %495 = load i8, ptr %arrayidx768, align 1
  %496 = load ptr, ptr %zData765, align 8
  %497 = load i32, ptr %nOfft744, align 4
  %idxprom769 = zext i32 %497 to i64
  %arrayidx770 = getelementptr inbounds nuw i8, ptr %496, i64 %idxprom769
  store i8 %495, ptr %arrayidx770, align 1
  br label %if.end783

if.else771:                                       ; preds = %land.lhs.true757, %if.end750
  %498 = load ptr, ptr %pTos, align 8
  %sBlob772 = getelementptr inbounds nuw %struct.ph7_value, ptr %498, i32 0, i32 4
  %nByte773 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob772, i32 0, i32 2
  %499 = load i32, ptr %nByte773, align 8
  %conv774 = zext i32 %499 to i64
  %cmp775 = icmp uge i64 %conv774, 1
  br i1 %cmp775, label %if.then777, label %if.end782

if.then777:                                       ; preds = %if.else771
  %500 = load ptr, ptr %pObj701, align 8
  %sBlob778 = getelementptr inbounds nuw %struct.ph7_value, ptr %500, i32 0, i32 4
  %501 = load ptr, ptr %pTos, align 8
  %sBlob779 = getelementptr inbounds nuw %struct.ph7_value, ptr %501, i32 0, i32 4
  %pBlob780 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob779, i32 0, i32 1
  %502 = load ptr, ptr %pBlob780, align 8
  %call781 = call i32 @SyBlobAppend(ptr noundef %sBlob778, ptr noundef %502, i32 noundef 1)
  br label %if.end782

if.end782:                                        ; preds = %if.then777, %if.else771
  br label %if.end783

if.end783:                                        ; preds = %if.end782, %if.then762
  br label %if.end784

if.end784:                                        ; preds = %if.end783, %if.end742
  %503 = load ptr, ptr %pKey, align 8
  %tobool785 = icmp ne ptr %503, null
  br i1 %tobool785, label %if.then786, label %if.end788

if.then786:                                       ; preds = %if.end784
  %504 = load ptr, ptr %pKey, align 8
  %call787 = call i32 @PH7_MemObjRelease(ptr noundef %504)
  br label %if.end788

if.end788:                                        ; preds = %if.then786, %if.end784
  br label %sw.epilog3867

if.else789:                                       ; preds = %land.lhs.true715, %if.end711
  %505 = load ptr, ptr %pObj701, align 8
  %iFlags790 = getelementptr inbounds nuw %struct.ph7_value, ptr %505, i32 0, i32 2
  %506 = load i32, ptr %iFlags790, align 8
  %and791 = and i32 %506, 64
  %cmp792 = icmp eq i32 %and791, 0
  br i1 %cmp792, label %if.then794, label %if.end801

if.then794:                                       ; preds = %if.else789
  %507 = load ptr, ptr %pObj701, align 8
  %call795 = call i32 @PH7_MemObjToHashmap(ptr noundef %507)
  store i32 %call795, ptr %rc, align 4
  %508 = load i32, ptr %rc, align 4
  %cmp796 = icmp ne i32 %508, 0
  br i1 %cmp796, label %if.then798, label %if.end800

if.then798:                                       ; preds = %if.then794
  %509 = load ptr, ptr %pVm.addr, align 8
  %call799 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %509, i32 noundef 1, ptr noundef @.str.70)
  br label %Abort

if.end800:                                        ; preds = %if.then794
  br label %if.end801

if.end801:                                        ; preds = %if.end800, %if.else789
  br label %if.end802

if.end802:                                        ; preds = %if.end801
  %510 = load ptr, ptr %pObj701, align 8
  %x803 = getelementptr inbounds nuw %struct.ph7_value, ptr %510, i32 0, i32 1
  %511 = load ptr, ptr %x803, align 8
  store ptr %511, ptr %pMap680, align 8
  br label %if.end804

if.end804:                                        ; preds = %if.end802, %if.end699
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %512 = load ptr, ptr %pInstr, align 8
  %iOp805 = getelementptr inbounds nuw %struct.VmInstr, ptr %512, i32 0, i32 0
  %513 = load i8, ptr %iOp805, align 8
  %conv806 = zext i8 %513 to i32
  %cmp807 = icmp eq i32 %conv806, 46
  br i1 %cmp807, label %land.lhs.true809, label %if.else816

land.lhs.true809:                                 ; preds = %if.end804
  %514 = load ptr, ptr %pTos, align 8
  %nIdx810 = getelementptr inbounds nuw %struct.ph7_value, ptr %514, i32 0, i32 5
  %515 = load i32, ptr %nIdx810, align 8
  %cmp811 = icmp ne i32 %515, -1
  br i1 %cmp811, label %if.then813, label %if.else816

if.then813:                                       ; preds = %land.lhs.true809
  %516 = load ptr, ptr %pMap680, align 8
  %517 = load ptr, ptr %pKey, align 8
  %518 = load ptr, ptr %pTos, align 8
  %nIdx814 = getelementptr inbounds nuw %struct.ph7_value, ptr %518, i32 0, i32 5
  %519 = load i32, ptr %nIdx814, align 8
  %call815 = call i32 @PH7_HashmapInsertByRef(ptr noundef %516, ptr noundef %517, i32 noundef %519)
  br label %if.end818

if.else816:                                       ; preds = %land.lhs.true809, %if.end804
  %520 = load ptr, ptr %pMap680, align 8
  %521 = load ptr, ptr %pKey, align 8
  %522 = load ptr, ptr %pTos, align 8
  %call817 = call i32 @PH7_HashmapInsert(ptr noundef %520, ptr noundef %521, ptr noundef %522)
  br label %if.end818

if.end818:                                        ; preds = %if.else816, %if.then813
  %523 = load ptr, ptr %pKey, align 8
  %tobool819 = icmp ne ptr %523, null
  br i1 %tobool819, label %if.then820, label %if.end822

if.then820:                                       ; preds = %if.end818
  %524 = load ptr, ptr %pKey, align 8
  %call821 = call i32 @PH7_MemObjRelease(ptr noundef %524)
  br label %if.end822

if.end822:                                        ; preds = %if.then820, %if.end818
  br label %sw.epilog3867

sw.bb823:                                         ; preds = %for.cond
  %525 = load ptr, ptr %pTos, align 8
  %iFlags824 = getelementptr inbounds nuw %struct.ph7_value, ptr %525, i32 0, i32 2
  %526 = load i32, ptr %iFlags824, align 8
  %and825 = and i32 %526, 448
  %cmp826 = icmp eq i32 %and825, 0
  br i1 %cmp826, label %if.then828, label %if.end883

if.then828:                                       ; preds = %sw.bb823
  %527 = load ptr, ptr %pTos, align 8
  %nIdx829 = getelementptr inbounds nuw %struct.ph7_value, ptr %527, i32 0, i32 5
  %528 = load i32, ptr %nIdx829, align 8
  %cmp830 = icmp ne i32 %528, -1
  br i1 %cmp830, label %if.then832, label %if.else861

if.then832:                                       ; preds = %if.then828
  %529 = load ptr, ptr %pVm.addr, align 8
  %aMemObj834 = getelementptr inbounds nuw %struct.ph7_vm, ptr %529, i32 0, i32 6
  %530 = load ptr, ptr %pTos, align 8
  %nIdx835 = getelementptr inbounds nuw %struct.ph7_value, ptr %530, i32 0, i32 5
  %531 = load i32, ptr %nIdx835, align 8
  %call836 = call ptr @SySetAt(ptr noundef %aMemObj834, i32 noundef %531)
  store ptr %call836, ptr %pObj833, align 8
  %cmp837 = icmp ne ptr %call836, null
  br i1 %cmp837, label %if.then839, label %if.end860

if.then839:                                       ; preds = %if.then832
  %532 = load ptr, ptr %pObj833, align 8
  %call840 = call i32 @PH7_MemObjToNumeric(ptr noundef %532)
  %533 = load ptr, ptr %pObj833, align 8
  %iFlags841 = getelementptr inbounds nuw %struct.ph7_value, ptr %533, i32 0, i32 2
  %534 = load i32, ptr %iFlags841, align 8
  %and842 = and i32 %534, 4
  %tobool843 = icmp ne i32 %and842, 0
  br i1 %tobool843, label %if.then844, label %if.else847

if.then844:                                       ; preds = %if.then839
  %535 = load ptr, ptr %pObj833, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %535, i32 0, i32 0
  %536 = load double, ptr %rVal, align 8
  %inc845 = fadd double %536, 1.000000e+00
  store double %inc845, ptr %rVal, align 8
  %537 = load ptr, ptr %pTos, align 8
  %call846 = call i32 @PH7_MemObjTryInteger(ptr noundef %537)
  br label %if.end854

if.else847:                                       ; preds = %if.then839
  %538 = load ptr, ptr %pObj833, align 8
  %x848 = getelementptr inbounds nuw %struct.ph7_value, ptr %538, i32 0, i32 1
  %539 = load i64, ptr %x848, align 8
  %inc849 = add nsw i64 %539, 1
  store i64 %inc849, ptr %x848, align 8
  %540 = load ptr, ptr %pTos, align 8
  %iFlags850 = getelementptr inbounds nuw %struct.ph7_value, ptr %540, i32 0, i32 2
  %541 = load i32, ptr %iFlags850, align 8
  %and851 = and i32 %541, -496
  %or852 = or i32 %and851, 2
  %542 = load ptr, ptr %pTos, align 8
  %iFlags853 = getelementptr inbounds nuw %struct.ph7_value, ptr %542, i32 0, i32 2
  store i32 %or852, ptr %iFlags853, align 8
  br label %if.end854

if.end854:                                        ; preds = %if.else847, %if.then844
  %543 = load ptr, ptr %pInstr, align 8
  %iP1855 = getelementptr inbounds nuw %struct.VmInstr, ptr %543, i32 0, i32 1
  %544 = load i32, ptr %iP1855, align 4
  %tobool856 = icmp ne i32 %544, 0
  br i1 %tobool856, label %if.then857, label %if.end859

if.then857:                                       ; preds = %if.end854
  %545 = load ptr, ptr %pObj833, align 8
  %546 = load ptr, ptr %pTos, align 8
  %call858 = call i32 @PH7_MemObjStore(ptr noundef %545, ptr noundef %546)
  br label %if.end859

if.end859:                                        ; preds = %if.then857, %if.end854
  br label %if.end860

if.end860:                                        ; preds = %if.end859, %if.then832
  br label %if.end882

if.else861:                                       ; preds = %if.then828
  %547 = load ptr, ptr %pInstr, align 8
  %iP1862 = getelementptr inbounds nuw %struct.VmInstr, ptr %547, i32 0, i32 1
  %548 = load i32, ptr %iP1862, align 4
  %tobool863 = icmp ne i32 %548, 0
  br i1 %tobool863, label %if.then864, label %if.end881

if.then864:                                       ; preds = %if.else861
  %549 = load ptr, ptr %pTos, align 8
  %call865 = call i32 @PH7_MemObjToNumeric(ptr noundef %549)
  %550 = load ptr, ptr %pTos, align 8
  %iFlags866 = getelementptr inbounds nuw %struct.ph7_value, ptr %550, i32 0, i32 2
  %551 = load i32, ptr %iFlags866, align 8
  %and867 = and i32 %551, 4
  %tobool868 = icmp ne i32 %and867, 0
  br i1 %tobool868, label %if.then869, label %if.else873

if.then869:                                       ; preds = %if.then864
  %552 = load ptr, ptr %pTos, align 8
  %rVal870 = getelementptr inbounds nuw %struct.ph7_value, ptr %552, i32 0, i32 0
  %553 = load double, ptr %rVal870, align 8
  %inc871 = fadd double %553, 1.000000e+00
  store double %inc871, ptr %rVal870, align 8
  %554 = load ptr, ptr %pTos, align 8
  %call872 = call i32 @PH7_MemObjTryInteger(ptr noundef %554)
  br label %if.end880

if.else873:                                       ; preds = %if.then864
  %555 = load ptr, ptr %pTos, align 8
  %x874 = getelementptr inbounds nuw %struct.ph7_value, ptr %555, i32 0, i32 1
  %556 = load i64, ptr %x874, align 8
  %inc875 = add nsw i64 %556, 1
  store i64 %inc875, ptr %x874, align 8
  %557 = load ptr, ptr %pTos, align 8
  %iFlags876 = getelementptr inbounds nuw %struct.ph7_value, ptr %557, i32 0, i32 2
  %558 = load i32, ptr %iFlags876, align 8
  %and877 = and i32 %558, -496
  %or878 = or i32 %and877, 2
  %559 = load ptr, ptr %pTos, align 8
  %iFlags879 = getelementptr inbounds nuw %struct.ph7_value, ptr %559, i32 0, i32 2
  store i32 %or878, ptr %iFlags879, align 8
  br label %if.end880

if.end880:                                        ; preds = %if.else873, %if.then869
  br label %if.end881

if.end881:                                        ; preds = %if.end880, %if.else861
  br label %if.end882

if.end882:                                        ; preds = %if.end881, %if.end860
  br label %if.end883

if.end883:                                        ; preds = %if.end882, %sw.bb823
  br label %sw.epilog3867

sw.bb884:                                         ; preds = %for.cond
  %560 = load ptr, ptr %pTos, align 8
  %iFlags885 = getelementptr inbounds nuw %struct.ph7_value, ptr %560, i32 0, i32 2
  %561 = load i32, ptr %iFlags885, align 8
  %and886 = and i32 %561, 480
  %cmp887 = icmp eq i32 %and886, 0
  br i1 %cmp887, label %if.then889, label %if.end944

if.then889:                                       ; preds = %sw.bb884
  %562 = load ptr, ptr %pTos, align 8
  %call890 = call i32 @PH7_MemObjToNumeric(ptr noundef %562)
  %563 = load ptr, ptr %pTos, align 8
  %nIdx891 = getelementptr inbounds nuw %struct.ph7_value, ptr %563, i32 0, i32 5
  %564 = load i32, ptr %nIdx891, align 8
  %cmp892 = icmp ne i32 %564, -1
  br i1 %cmp892, label %if.then894, label %if.else923

if.then894:                                       ; preds = %if.then889
  %565 = load ptr, ptr %pVm.addr, align 8
  %aMemObj896 = getelementptr inbounds nuw %struct.ph7_vm, ptr %565, i32 0, i32 6
  %566 = load ptr, ptr %pTos, align 8
  %nIdx897 = getelementptr inbounds nuw %struct.ph7_value, ptr %566, i32 0, i32 5
  %567 = load i32, ptr %nIdx897, align 8
  %call898 = call ptr @SySetAt(ptr noundef %aMemObj896, i32 noundef %567)
  store ptr %call898, ptr %pObj895, align 8
  %cmp899 = icmp ne ptr %call898, null
  br i1 %cmp899, label %if.then901, label %if.end922

if.then901:                                       ; preds = %if.then894
  %568 = load ptr, ptr %pObj895, align 8
  %call902 = call i32 @PH7_MemObjToNumeric(ptr noundef %568)
  %569 = load ptr, ptr %pObj895, align 8
  %iFlags903 = getelementptr inbounds nuw %struct.ph7_value, ptr %569, i32 0, i32 2
  %570 = load i32, ptr %iFlags903, align 8
  %and904 = and i32 %570, 4
  %tobool905 = icmp ne i32 %and904, 0
  br i1 %tobool905, label %if.then906, label %if.else909

if.then906:                                       ; preds = %if.then901
  %571 = load ptr, ptr %pObj895, align 8
  %rVal907 = getelementptr inbounds nuw %struct.ph7_value, ptr %571, i32 0, i32 0
  %572 = load double, ptr %rVal907, align 8
  %dec = fadd double %572, -1.000000e+00
  store double %dec, ptr %rVal907, align 8
  %573 = load ptr, ptr %pTos, align 8
  %call908 = call i32 @PH7_MemObjTryInteger(ptr noundef %573)
  br label %if.end916

if.else909:                                       ; preds = %if.then901
  %574 = load ptr, ptr %pObj895, align 8
  %x910 = getelementptr inbounds nuw %struct.ph7_value, ptr %574, i32 0, i32 1
  %575 = load i64, ptr %x910, align 8
  %dec911 = add nsw i64 %575, -1
  store i64 %dec911, ptr %x910, align 8
  %576 = load ptr, ptr %pTos, align 8
  %iFlags912 = getelementptr inbounds nuw %struct.ph7_value, ptr %576, i32 0, i32 2
  %577 = load i32, ptr %iFlags912, align 8
  %and913 = and i32 %577, -496
  %or914 = or i32 %and913, 2
  %578 = load ptr, ptr %pTos, align 8
  %iFlags915 = getelementptr inbounds nuw %struct.ph7_value, ptr %578, i32 0, i32 2
  store i32 %or914, ptr %iFlags915, align 8
  br label %if.end916

if.end916:                                        ; preds = %if.else909, %if.then906
  %579 = load ptr, ptr %pInstr, align 8
  %iP1917 = getelementptr inbounds nuw %struct.VmInstr, ptr %579, i32 0, i32 1
  %580 = load i32, ptr %iP1917, align 4
  %tobool918 = icmp ne i32 %580, 0
  br i1 %tobool918, label %if.then919, label %if.end921

if.then919:                                       ; preds = %if.end916
  %581 = load ptr, ptr %pObj895, align 8
  %582 = load ptr, ptr %pTos, align 8
  %call920 = call i32 @PH7_MemObjStore(ptr noundef %581, ptr noundef %582)
  br label %if.end921

if.end921:                                        ; preds = %if.then919, %if.end916
  br label %if.end922

if.end922:                                        ; preds = %if.end921, %if.then894
  br label %if.end943

if.else923:                                       ; preds = %if.then889
  %583 = load ptr, ptr %pInstr, align 8
  %iP1924 = getelementptr inbounds nuw %struct.VmInstr, ptr %583, i32 0, i32 1
  %584 = load i32, ptr %iP1924, align 4
  %tobool925 = icmp ne i32 %584, 0
  br i1 %tobool925, label %if.then926, label %if.end942

if.then926:                                       ; preds = %if.else923
  %585 = load ptr, ptr %pTos, align 8
  %iFlags927 = getelementptr inbounds nuw %struct.ph7_value, ptr %585, i32 0, i32 2
  %586 = load i32, ptr %iFlags927, align 8
  %and928 = and i32 %586, 4
  %tobool929 = icmp ne i32 %and928, 0
  br i1 %tobool929, label %if.then930, label %if.else934

if.then930:                                       ; preds = %if.then926
  %587 = load ptr, ptr %pTos, align 8
  %rVal931 = getelementptr inbounds nuw %struct.ph7_value, ptr %587, i32 0, i32 0
  %588 = load double, ptr %rVal931, align 8
  %dec932 = fadd double %588, -1.000000e+00
  store double %dec932, ptr %rVal931, align 8
  %589 = load ptr, ptr %pTos, align 8
  %call933 = call i32 @PH7_MemObjTryInteger(ptr noundef %589)
  br label %if.end941

if.else934:                                       ; preds = %if.then926
  %590 = load ptr, ptr %pTos, align 8
  %x935 = getelementptr inbounds nuw %struct.ph7_value, ptr %590, i32 0, i32 1
  %591 = load i64, ptr %x935, align 8
  %dec936 = add nsw i64 %591, -1
  store i64 %dec936, ptr %x935, align 8
  %592 = load ptr, ptr %pTos, align 8
  %iFlags937 = getelementptr inbounds nuw %struct.ph7_value, ptr %592, i32 0, i32 2
  %593 = load i32, ptr %iFlags937, align 8
  %and938 = and i32 %593, -496
  %or939 = or i32 %and938, 2
  %594 = load ptr, ptr %pTos, align 8
  %iFlags940 = getelementptr inbounds nuw %struct.ph7_value, ptr %594, i32 0, i32 2
  store i32 %or939, ptr %iFlags940, align 8
  br label %if.end941

if.end941:                                        ; preds = %if.else934, %if.then930
  br label %if.end942

if.end942:                                        ; preds = %if.end941, %if.else923
  br label %if.end943

if.end943:                                        ; preds = %if.end942, %if.end922
  br label %if.end944

if.end944:                                        ; preds = %if.end943, %sw.bb884
  br label %sw.epilog3867

sw.bb945:                                         ; preds = %for.cond
  %595 = load ptr, ptr %pTos, align 8
  %call946 = call i32 @PH7_MemObjToNumeric(ptr noundef %595)
  %596 = load ptr, ptr %pTos, align 8
  %iFlags947 = getelementptr inbounds nuw %struct.ph7_value, ptr %596, i32 0, i32 2
  %597 = load i32, ptr %iFlags947, align 8
  %and948 = and i32 %597, 4
  %tobool949 = icmp ne i32 %and948, 0
  br i1 %tobool949, label %if.then950, label %if.end953

if.then950:                                       ; preds = %sw.bb945
  %598 = load ptr, ptr %pTos, align 8
  %rVal951 = getelementptr inbounds nuw %struct.ph7_value, ptr %598, i32 0, i32 0
  %599 = load double, ptr %rVal951, align 8
  %fneg = fneg double %599
  %600 = load ptr, ptr %pTos, align 8
  %rVal952 = getelementptr inbounds nuw %struct.ph7_value, ptr %600, i32 0, i32 0
  store double %fneg, ptr %rVal952, align 8
  br label %if.end953

if.end953:                                        ; preds = %if.then950, %sw.bb945
  %601 = load ptr, ptr %pTos, align 8
  %iFlags954 = getelementptr inbounds nuw %struct.ph7_value, ptr %601, i32 0, i32 2
  %602 = load i32, ptr %iFlags954, align 8
  %and955 = and i32 %602, 2
  %tobool956 = icmp ne i32 %and955, 0
  br i1 %tobool956, label %if.then957, label %if.end961

if.then957:                                       ; preds = %if.end953
  %603 = load ptr, ptr %pTos, align 8
  %x958 = getelementptr inbounds nuw %struct.ph7_value, ptr %603, i32 0, i32 1
  %604 = load i64, ptr %x958, align 8
  %sub959 = sub nsw i64 0, %604
  %605 = load ptr, ptr %pTos, align 8
  %x960 = getelementptr inbounds nuw %struct.ph7_value, ptr %605, i32 0, i32 1
  store i64 %sub959, ptr %x960, align 8
  br label %if.end961

if.end961:                                        ; preds = %if.then957, %if.end953
  br label %sw.epilog3867

sw.bb962:                                         ; preds = %for.cond
  %606 = load ptr, ptr %pTos, align 8
  %call963 = call i32 @PH7_MemObjToNumeric(ptr noundef %606)
  %607 = load ptr, ptr %pTos, align 8
  %iFlags964 = getelementptr inbounds nuw %struct.ph7_value, ptr %607, i32 0, i32 2
  %608 = load i32, ptr %iFlags964, align 8
  %and965 = and i32 %608, 4
  %tobool966 = icmp ne i32 %and965, 0
  br i1 %tobool966, label %if.then967, label %if.end970

if.then967:                                       ; preds = %sw.bb962
  %609 = load ptr, ptr %pTos, align 8
  %rVal968 = getelementptr inbounds nuw %struct.ph7_value, ptr %609, i32 0, i32 0
  %610 = load double, ptr %rVal968, align 8
  %611 = load ptr, ptr %pTos, align 8
  %rVal969 = getelementptr inbounds nuw %struct.ph7_value, ptr %611, i32 0, i32 0
  store double %610, ptr %rVal969, align 8
  br label %if.end970

if.end970:                                        ; preds = %if.then967, %sw.bb962
  %612 = load ptr, ptr %pTos, align 8
  %iFlags971 = getelementptr inbounds nuw %struct.ph7_value, ptr %612, i32 0, i32 2
  %613 = load i32, ptr %iFlags971, align 8
  %and972 = and i32 %613, 2
  %tobool973 = icmp ne i32 %and972, 0
  br i1 %tobool973, label %if.then974, label %if.end977

if.then974:                                       ; preds = %if.end970
  %614 = load ptr, ptr %pTos, align 8
  %x975 = getelementptr inbounds nuw %struct.ph7_value, ptr %614, i32 0, i32 1
  %615 = load i64, ptr %x975, align 8
  %616 = load ptr, ptr %pTos, align 8
  %x976 = getelementptr inbounds nuw %struct.ph7_value, ptr %616, i32 0, i32 1
  store i64 %615, ptr %x976, align 8
  br label %if.end977

if.end977:                                        ; preds = %if.then974, %if.end970
  br label %sw.epilog3867

sw.bb978:                                         ; preds = %for.cond
  %617 = load ptr, ptr %pTos, align 8
  %iFlags979 = getelementptr inbounds nuw %struct.ph7_value, ptr %617, i32 0, i32 2
  %618 = load i32, ptr %iFlags979, align 8
  %and980 = and i32 %618, 8
  %cmp981 = icmp eq i32 %and980, 0
  br i1 %cmp981, label %if.then983, label %if.end985

if.then983:                                       ; preds = %sw.bb978
  %619 = load ptr, ptr %pTos, align 8
  %call984 = call i32 @PH7_MemObjToBool(ptr noundef %619)
  br label %if.end985

if.end985:                                        ; preds = %if.then983, %sw.bb978
  %620 = load ptr, ptr %pTos, align 8
  %x986 = getelementptr inbounds nuw %struct.ph7_value, ptr %620, i32 0, i32 1
  %621 = load i64, ptr %x986, align 8
  %tobool987 = icmp ne i64 %621, 0
  %lnot = xor i1 %tobool987, true
  %lnot.ext = zext i1 %lnot to i32
  %conv988 = sext i32 %lnot.ext to i64
  %622 = load ptr, ptr %pTos, align 8
  %x989 = getelementptr inbounds nuw %struct.ph7_value, ptr %622, i32 0, i32 1
  store i64 %conv988, ptr %x989, align 8
  br label %sw.epilog3867

sw.bb990:                                         ; preds = %for.cond
  %623 = load ptr, ptr %pTos, align 8
  %iFlags991 = getelementptr inbounds nuw %struct.ph7_value, ptr %623, i32 0, i32 2
  %624 = load i32, ptr %iFlags991, align 8
  %and992 = and i32 %624, 2
  %cmp993 = icmp eq i32 %and992, 0
  br i1 %cmp993, label %if.then995, label %if.end997

if.then995:                                       ; preds = %sw.bb990
  %625 = load ptr, ptr %pTos, align 8
  %call996 = call i32 @PH7_MemObjToInteger(ptr noundef %625)
  br label %if.end997

if.end997:                                        ; preds = %if.then995, %sw.bb990
  %626 = load ptr, ptr %pTos, align 8
  %x998 = getelementptr inbounds nuw %struct.ph7_value, ptr %626, i32 0, i32 1
  %627 = load i64, ptr %x998, align 8
  %not = xor i64 %627, -1
  %628 = load ptr, ptr %pTos, align 8
  %x999 = getelementptr inbounds nuw %struct.ph7_value, ptr %628, i32 0, i32 1
  store i64 %not, ptr %x999, align 8
  br label %sw.epilog3867

sw.bb1000:                                        ; preds = %for.cond, %for.cond
  %629 = load ptr, ptr %pTos, align 8
  %arrayidx1002 = getelementptr inbounds %struct.ph7_value, ptr %629, i64 -1
  store ptr %arrayidx1002, ptr %pNos1001, align 8
  %630 = load ptr, ptr %pTos, align 8
  %call1003 = call i32 @PH7_MemObjToNumeric(ptr noundef %630)
  %631 = load ptr, ptr %pNos1001, align 8
  %call1004 = call i32 @PH7_MemObjToNumeric(ptr noundef %631)
  %632 = load ptr, ptr %pTos, align 8
  %iFlags1005 = getelementptr inbounds nuw %struct.ph7_value, ptr %632, i32 0, i32 2
  %633 = load i32, ptr %iFlags1005, align 8
  %634 = load ptr, ptr %pNos1001, align 8
  %iFlags1006 = getelementptr inbounds nuw %struct.ph7_value, ptr %634, i32 0, i32 2
  %635 = load i32, ptr %iFlags1006, align 8
  %or1007 = or i32 %633, %635
  %and1008 = and i32 4, %or1007
  %tobool1009 = icmp ne i32 %and1008, 0
  br i1 %tobool1009, label %if.then1010, label %if.else1033

if.then1010:                                      ; preds = %sw.bb1000
  %636 = load ptr, ptr %pTos, align 8
  %iFlags1011 = getelementptr inbounds nuw %struct.ph7_value, ptr %636, i32 0, i32 2
  %637 = load i32, ptr %iFlags1011, align 8
  %and1012 = and i32 %637, 4
  %cmp1013 = icmp eq i32 %and1012, 0
  br i1 %cmp1013, label %if.then1015, label %if.end1017

if.then1015:                                      ; preds = %if.then1010
  %638 = load ptr, ptr %pTos, align 8
  %call1016 = call i32 @PH7_MemObjToReal(ptr noundef %638)
  br label %if.end1017

if.end1017:                                       ; preds = %if.then1015, %if.then1010
  %639 = load ptr, ptr %pNos1001, align 8
  %iFlags1018 = getelementptr inbounds nuw %struct.ph7_value, ptr %639, i32 0, i32 2
  %640 = load i32, ptr %iFlags1018, align 8
  %and1019 = and i32 %640, 4
  %cmp1020 = icmp eq i32 %and1019, 0
  br i1 %cmp1020, label %if.then1022, label %if.end1024

if.then1022:                                      ; preds = %if.end1017
  %641 = load ptr, ptr %pNos1001, align 8
  %call1023 = call i32 @PH7_MemObjToReal(ptr noundef %641)
  br label %if.end1024

if.end1024:                                       ; preds = %if.then1022, %if.end1017
  %642 = load ptr, ptr %pNos1001, align 8
  %rVal1025 = getelementptr inbounds nuw %struct.ph7_value, ptr %642, i32 0, i32 0
  %643 = load double, ptr %rVal1025, align 8
  store double %643, ptr %a, align 8
  %644 = load ptr, ptr %pTos, align 8
  %rVal1026 = getelementptr inbounds nuw %struct.ph7_value, ptr %644, i32 0, i32 0
  %645 = load double, ptr %rVal1026, align 8
  store double %645, ptr %b, align 8
  %646 = load double, ptr %a, align 8
  %647 = load double, ptr %b, align 8
  %mul = fmul double %646, %647
  store double %mul, ptr %r, align 8
  %648 = load double, ptr %r, align 8
  %649 = load ptr, ptr %pNos1001, align 8
  %rVal1027 = getelementptr inbounds nuw %struct.ph7_value, ptr %649, i32 0, i32 0
  store double %648, ptr %rVal1027, align 8
  %650 = load ptr, ptr %pNos1001, align 8
  %iFlags1028 = getelementptr inbounds nuw %struct.ph7_value, ptr %650, i32 0, i32 2
  %651 = load i32, ptr %iFlags1028, align 8
  %and1029 = and i32 %651, -496
  %or1030 = or i32 %and1029, 4
  %652 = load ptr, ptr %pNos1001, align 8
  %iFlags1031 = getelementptr inbounds nuw %struct.ph7_value, ptr %652, i32 0, i32 2
  store i32 %or1030, ptr %iFlags1031, align 8
  %653 = load ptr, ptr %pNos1001, align 8
  %call1032 = call i32 @PH7_MemObjTryInteger(ptr noundef %653)
  br label %if.end1045

if.else1033:                                      ; preds = %sw.bb1000
  %654 = load ptr, ptr %pNos1001, align 8
  %x1037 = getelementptr inbounds nuw %struct.ph7_value, ptr %654, i32 0, i32 1
  %655 = load i64, ptr %x1037, align 8
  store i64 %655, ptr %a1034, align 8
  %656 = load ptr, ptr %pTos, align 8
  %x1038 = getelementptr inbounds nuw %struct.ph7_value, ptr %656, i32 0, i32 1
  %657 = load i64, ptr %x1038, align 8
  store i64 %657, ptr %b1035, align 8
  %658 = load i64, ptr %a1034, align 8
  %659 = load i64, ptr %b1035, align 8
  %mul1039 = mul nsw i64 %658, %659
  store i64 %mul1039, ptr %r1036, align 8
  %660 = load i64, ptr %r1036, align 8
  %661 = load ptr, ptr %pNos1001, align 8
  %x1040 = getelementptr inbounds nuw %struct.ph7_value, ptr %661, i32 0, i32 1
  store i64 %660, ptr %x1040, align 8
  %662 = load ptr, ptr %pNos1001, align 8
  %iFlags1041 = getelementptr inbounds nuw %struct.ph7_value, ptr %662, i32 0, i32 2
  %663 = load i32, ptr %iFlags1041, align 8
  %and1042 = and i32 %663, -496
  %or1043 = or i32 %and1042, 2
  %664 = load ptr, ptr %pNos1001, align 8
  %iFlags1044 = getelementptr inbounds nuw %struct.ph7_value, ptr %664, i32 0, i32 2
  store i32 %or1043, ptr %iFlags1044, align 8
  br label %if.end1045

if.end1045:                                       ; preds = %if.else1033, %if.end1024
  %665 = load ptr, ptr %pInstr, align 8
  %iOp1046 = getelementptr inbounds nuw %struct.VmInstr, ptr %665, i32 0, i32 0
  %666 = load i8, ptr %iOp1046, align 8
  %conv1047 = zext i8 %666 to i32
  %cmp1048 = icmp eq i32 %conv1047, 60
  br i1 %cmp1048, label %if.then1050, label %if.end1067

if.then1050:                                      ; preds = %if.end1045
  %667 = load ptr, ptr %pTos, align 8
  %nIdx1052 = getelementptr inbounds nuw %struct.ph7_value, ptr %667, i32 0, i32 5
  %668 = load i32, ptr %nIdx1052, align 8
  %cmp1053 = icmp eq i32 %668, -1
  br i1 %cmp1053, label %if.then1055, label %if.else1057

if.then1055:                                      ; preds = %if.then1050
  %669 = load ptr, ptr %pVm.addr, align 8
  %call1056 = call i32 @PH7_VmThrowError(ptr noundef %669, ptr noundef null, i32 noundef 1, ptr noundef @.str.71)
  br label %if.end1066

if.else1057:                                      ; preds = %if.then1050
  %670 = load ptr, ptr %pVm.addr, align 8
  %aMemObj1058 = getelementptr inbounds nuw %struct.ph7_vm, ptr %670, i32 0, i32 6
  %671 = load ptr, ptr %pTos, align 8
  %nIdx1059 = getelementptr inbounds nuw %struct.ph7_value, ptr %671, i32 0, i32 5
  %672 = load i32, ptr %nIdx1059, align 8
  %call1060 = call ptr @SySetAt(ptr noundef %aMemObj1058, i32 noundef %672)
  store ptr %call1060, ptr %pObj1051, align 8
  %cmp1061 = icmp ne ptr %call1060, null
  br i1 %cmp1061, label %if.then1063, label %if.end1065

if.then1063:                                      ; preds = %if.else1057
  %673 = load ptr, ptr %pNos1001, align 8
  %674 = load ptr, ptr %pObj1051, align 8
  %call1064 = call i32 @PH7_MemObjStore(ptr noundef %673, ptr noundef %674)
  br label %if.end1065

if.end1065:                                       ; preds = %if.then1063, %if.else1057
  br label %if.end1066

if.end1066:                                       ; preds = %if.end1065, %if.then1055
  br label %if.end1067

if.end1067:                                       ; preds = %if.end1066, %if.end1045
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1068:                                        ; preds = %for.cond
  %675 = load ptr, ptr %pTos, align 8
  %arrayidx1070 = getelementptr inbounds %struct.ph7_value, ptr %675, i64 -1
  store ptr %arrayidx1070, ptr %pNos1069, align 8
  %676 = load ptr, ptr %pNos1069, align 8
  %677 = load ptr, ptr %pTos, align 8
  %call1071 = call i32 @PH7_MemObjAdd(ptr noundef %676, ptr noundef %677, i32 noundef 0)
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1072:                                        ; preds = %for.cond
  %678 = load ptr, ptr %pTos, align 8
  %arrayidx1074 = getelementptr inbounds %struct.ph7_value, ptr %678, i64 -1
  store ptr %arrayidx1074, ptr %pNos1073, align 8
  %679 = load ptr, ptr %pTos, align 8
  %nIdx1077 = getelementptr inbounds nuw %struct.ph7_value, ptr %679, i32 0, i32 5
  %680 = load i32, ptr %nIdx1077, align 8
  store i32 %680, ptr %nIdx1076, align 4
  %681 = load ptr, ptr %pTos, align 8
  %682 = load ptr, ptr %pNos1073, align 8
  %call1078 = call i32 @PH7_MemObjAdd(ptr noundef %681, ptr noundef %682, i32 noundef 1)
  %683 = load i32, ptr %nIdx1076, align 4
  %cmp1079 = icmp eq i32 %683, -1
  br i1 %cmp1079, label %if.then1081, label %if.else1083

if.then1081:                                      ; preds = %sw.bb1072
  %684 = load ptr, ptr %pVm.addr, align 8
  %call1082 = call i32 @PH7_VmThrowError(ptr noundef %684, ptr noundef null, i32 noundef 1, ptr noundef @.str.71)
  br label %if.end1091

if.else1083:                                      ; preds = %sw.bb1072
  %685 = load ptr, ptr %pVm.addr, align 8
  %aMemObj1084 = getelementptr inbounds nuw %struct.ph7_vm, ptr %685, i32 0, i32 6
  %686 = load i32, ptr %nIdx1076, align 4
  %call1085 = call ptr @SySetAt(ptr noundef %aMemObj1084, i32 noundef %686)
  store ptr %call1085, ptr %pObj1075, align 8
  %cmp1086 = icmp ne ptr %call1085, null
  br i1 %cmp1086, label %if.then1088, label %if.end1090

if.then1088:                                      ; preds = %if.else1083
  %687 = load ptr, ptr %pTos, align 8
  %688 = load ptr, ptr %pObj1075, align 8
  %call1089 = call i32 @PH7_MemObjStore(ptr noundef %687, ptr noundef %688)
  br label %if.end1090

if.end1090:                                       ; preds = %if.then1088, %if.else1083
  br label %if.end1091

if.end1091:                                       ; preds = %if.end1090, %if.then1081
  %689 = load ptr, ptr %pTos, align 8
  %690 = load ptr, ptr %pNos1073, align 8
  %call1092 = call i32 @PH7_MemObjStore(ptr noundef %689, ptr noundef %690)
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1093:                                        ; preds = %for.cond
  %691 = load ptr, ptr %pTos, align 8
  %arrayidx1095 = getelementptr inbounds %struct.ph7_value, ptr %691, i64 -1
  store ptr %arrayidx1095, ptr %pNos1094, align 8
  %692 = load ptr, ptr %pTos, align 8
  %iFlags1096 = getelementptr inbounds nuw %struct.ph7_value, ptr %692, i32 0, i32 2
  %693 = load i32, ptr %iFlags1096, align 8
  %694 = load ptr, ptr %pNos1094, align 8
  %iFlags1097 = getelementptr inbounds nuw %struct.ph7_value, ptr %694, i32 0, i32 2
  %695 = load i32, ptr %iFlags1097, align 8
  %or1098 = or i32 %693, %695
  %and1099 = and i32 4, %or1098
  %tobool1100 = icmp ne i32 %and1099, 0
  br i1 %tobool1100, label %if.then1101, label %if.else1128

if.then1101:                                      ; preds = %sw.bb1093
  %696 = load ptr, ptr %pTos, align 8
  %iFlags1105 = getelementptr inbounds nuw %struct.ph7_value, ptr %696, i32 0, i32 2
  %697 = load i32, ptr %iFlags1105, align 8
  %and1106 = and i32 %697, 4
  %cmp1107 = icmp eq i32 %and1106, 0
  br i1 %cmp1107, label %if.then1109, label %if.end1111

if.then1109:                                      ; preds = %if.then1101
  %698 = load ptr, ptr %pTos, align 8
  %call1110 = call i32 @PH7_MemObjToReal(ptr noundef %698)
  br label %if.end1111

if.end1111:                                       ; preds = %if.then1109, %if.then1101
  %699 = load ptr, ptr %pNos1094, align 8
  %iFlags1112 = getelementptr inbounds nuw %struct.ph7_value, ptr %699, i32 0, i32 2
  %700 = load i32, ptr %iFlags1112, align 8
  %and1113 = and i32 %700, 4
  %cmp1114 = icmp eq i32 %and1113, 0
  br i1 %cmp1114, label %if.then1116, label %if.end1118

if.then1116:                                      ; preds = %if.end1111
  %701 = load ptr, ptr %pNos1094, align 8
  %call1117 = call i32 @PH7_MemObjToReal(ptr noundef %701)
  br label %if.end1118

if.end1118:                                       ; preds = %if.then1116, %if.end1111
  %702 = load ptr, ptr %pNos1094, align 8
  %rVal1119 = getelementptr inbounds nuw %struct.ph7_value, ptr %702, i32 0, i32 0
  %703 = load double, ptr %rVal1119, align 8
  store double %703, ptr %a1102, align 8
  %704 = load ptr, ptr %pTos, align 8
  %rVal1120 = getelementptr inbounds nuw %struct.ph7_value, ptr %704, i32 0, i32 0
  %705 = load double, ptr %rVal1120, align 8
  store double %705, ptr %b1103, align 8
  %706 = load double, ptr %a1102, align 8
  %707 = load double, ptr %b1103, align 8
  %sub1121 = fsub double %706, %707
  store double %sub1121, ptr %r1104, align 8
  %708 = load double, ptr %r1104, align 8
  %709 = load ptr, ptr %pNos1094, align 8
  %rVal1122 = getelementptr inbounds nuw %struct.ph7_value, ptr %709, i32 0, i32 0
  store double %708, ptr %rVal1122, align 8
  %710 = load ptr, ptr %pNos1094, align 8
  %iFlags1123 = getelementptr inbounds nuw %struct.ph7_value, ptr %710, i32 0, i32 2
  %711 = load i32, ptr %iFlags1123, align 8
  %and1124 = and i32 %711, -496
  %or1125 = or i32 %and1124, 4
  %712 = load ptr, ptr %pNos1094, align 8
  %iFlags1126 = getelementptr inbounds nuw %struct.ph7_value, ptr %712, i32 0, i32 2
  store i32 %or1125, ptr %iFlags1126, align 8
  %713 = load ptr, ptr %pNos1094, align 8
  %call1127 = call i32 @PH7_MemObjTryInteger(ptr noundef %713)
  br label %if.end1140

if.else1128:                                      ; preds = %sw.bb1093
  %714 = load ptr, ptr %pNos1094, align 8
  %x1132 = getelementptr inbounds nuw %struct.ph7_value, ptr %714, i32 0, i32 1
  %715 = load i64, ptr %x1132, align 8
  store i64 %715, ptr %a1129, align 8
  %716 = load ptr, ptr %pTos, align 8
  %x1133 = getelementptr inbounds nuw %struct.ph7_value, ptr %716, i32 0, i32 1
  %717 = load i64, ptr %x1133, align 8
  store i64 %717, ptr %b1130, align 8
  %718 = load i64, ptr %a1129, align 8
  %719 = load i64, ptr %b1130, align 8
  %sub1134 = sub nsw i64 %718, %719
  store i64 %sub1134, ptr %r1131, align 8
  %720 = load i64, ptr %r1131, align 8
  %721 = load ptr, ptr %pNos1094, align 8
  %x1135 = getelementptr inbounds nuw %struct.ph7_value, ptr %721, i32 0, i32 1
  store i64 %720, ptr %x1135, align 8
  %722 = load ptr, ptr %pNos1094, align 8
  %iFlags1136 = getelementptr inbounds nuw %struct.ph7_value, ptr %722, i32 0, i32 2
  %723 = load i32, ptr %iFlags1136, align 8
  %and1137 = and i32 %723, -496
  %or1138 = or i32 %and1137, 2
  %724 = load ptr, ptr %pNos1094, align 8
  %iFlags1139 = getelementptr inbounds nuw %struct.ph7_value, ptr %724, i32 0, i32 2
  store i32 %or1138, ptr %iFlags1139, align 8
  br label %if.end1140

if.end1140:                                       ; preds = %if.else1128, %if.end1118
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1141:                                        ; preds = %for.cond
  %725 = load ptr, ptr %pTos, align 8
  %arrayidx1143 = getelementptr inbounds %struct.ph7_value, ptr %725, i64 -1
  store ptr %arrayidx1143, ptr %pNos1142, align 8
  %726 = load ptr, ptr %pTos, align 8
  %iFlags1145 = getelementptr inbounds nuw %struct.ph7_value, ptr %726, i32 0, i32 2
  %727 = load i32, ptr %iFlags1145, align 8
  %728 = load ptr, ptr %pNos1142, align 8
  %iFlags1146 = getelementptr inbounds nuw %struct.ph7_value, ptr %728, i32 0, i32 2
  %729 = load i32, ptr %iFlags1146, align 8
  %or1147 = or i32 %727, %729
  %and1148 = and i32 4, %or1147
  %tobool1149 = icmp ne i32 %and1148, 0
  br i1 %tobool1149, label %if.then1150, label %if.else1177

if.then1150:                                      ; preds = %sw.bb1141
  %730 = load ptr, ptr %pTos, align 8
  %iFlags1154 = getelementptr inbounds nuw %struct.ph7_value, ptr %730, i32 0, i32 2
  %731 = load i32, ptr %iFlags1154, align 8
  %and1155 = and i32 %731, 4
  %cmp1156 = icmp eq i32 %and1155, 0
  br i1 %cmp1156, label %if.then1158, label %if.end1160

if.then1158:                                      ; preds = %if.then1150
  %732 = load ptr, ptr %pTos, align 8
  %call1159 = call i32 @PH7_MemObjToReal(ptr noundef %732)
  br label %if.end1160

if.end1160:                                       ; preds = %if.then1158, %if.then1150
  %733 = load ptr, ptr %pNos1142, align 8
  %iFlags1161 = getelementptr inbounds nuw %struct.ph7_value, ptr %733, i32 0, i32 2
  %734 = load i32, ptr %iFlags1161, align 8
  %and1162 = and i32 %734, 4
  %cmp1163 = icmp eq i32 %and1162, 0
  br i1 %cmp1163, label %if.then1165, label %if.end1167

if.then1165:                                      ; preds = %if.end1160
  %735 = load ptr, ptr %pNos1142, align 8
  %call1166 = call i32 @PH7_MemObjToReal(ptr noundef %735)
  br label %if.end1167

if.end1167:                                       ; preds = %if.then1165, %if.end1160
  %736 = load ptr, ptr %pTos, align 8
  %rVal1168 = getelementptr inbounds nuw %struct.ph7_value, ptr %736, i32 0, i32 0
  %737 = load double, ptr %rVal1168, align 8
  store double %737, ptr %a1151, align 8
  %738 = load ptr, ptr %pNos1142, align 8
  %rVal1169 = getelementptr inbounds nuw %struct.ph7_value, ptr %738, i32 0, i32 0
  %739 = load double, ptr %rVal1169, align 8
  store double %739, ptr %b1152, align 8
  %740 = load double, ptr %a1151, align 8
  %741 = load double, ptr %b1152, align 8
  %sub1170 = fsub double %740, %741
  store double %sub1170, ptr %r1153, align 8
  %742 = load double, ptr %r1153, align 8
  %743 = load ptr, ptr %pNos1142, align 8
  %rVal1171 = getelementptr inbounds nuw %struct.ph7_value, ptr %743, i32 0, i32 0
  store double %742, ptr %rVal1171, align 8
  %744 = load ptr, ptr %pNos1142, align 8
  %iFlags1172 = getelementptr inbounds nuw %struct.ph7_value, ptr %744, i32 0, i32 2
  %745 = load i32, ptr %iFlags1172, align 8
  %and1173 = and i32 %745, -496
  %or1174 = or i32 %and1173, 4
  %746 = load ptr, ptr %pNos1142, align 8
  %iFlags1175 = getelementptr inbounds nuw %struct.ph7_value, ptr %746, i32 0, i32 2
  store i32 %or1174, ptr %iFlags1175, align 8
  %747 = load ptr, ptr %pNos1142, align 8
  %call1176 = call i32 @PH7_MemObjTryInteger(ptr noundef %747)
  br label %if.end1189

if.else1177:                                      ; preds = %sw.bb1141
  %748 = load ptr, ptr %pTos, align 8
  %x1181 = getelementptr inbounds nuw %struct.ph7_value, ptr %748, i32 0, i32 1
  %749 = load i64, ptr %x1181, align 8
  store i64 %749, ptr %a1178, align 8
  %750 = load ptr, ptr %pNos1142, align 8
  %x1182 = getelementptr inbounds nuw %struct.ph7_value, ptr %750, i32 0, i32 1
  %751 = load i64, ptr %x1182, align 8
  store i64 %751, ptr %b1179, align 8
  %752 = load i64, ptr %a1178, align 8
  %753 = load i64, ptr %b1179, align 8
  %sub1183 = sub nsw i64 %752, %753
  store i64 %sub1183, ptr %r1180, align 8
  %754 = load i64, ptr %r1180, align 8
  %755 = load ptr, ptr %pNos1142, align 8
  %x1184 = getelementptr inbounds nuw %struct.ph7_value, ptr %755, i32 0, i32 1
  store i64 %754, ptr %x1184, align 8
  %756 = load ptr, ptr %pNos1142, align 8
  %iFlags1185 = getelementptr inbounds nuw %struct.ph7_value, ptr %756, i32 0, i32 2
  %757 = load i32, ptr %iFlags1185, align 8
  %and1186 = and i32 %757, -496
  %or1187 = or i32 %and1186, 2
  %758 = load ptr, ptr %pNos1142, align 8
  %iFlags1188 = getelementptr inbounds nuw %struct.ph7_value, ptr %758, i32 0, i32 2
  store i32 %or1187, ptr %iFlags1188, align 8
  br label %if.end1189

if.end1189:                                       ; preds = %if.else1177, %if.end1167
  %759 = load ptr, ptr %pTos, align 8
  %nIdx1190 = getelementptr inbounds nuw %struct.ph7_value, ptr %759, i32 0, i32 5
  %760 = load i32, ptr %nIdx1190, align 8
  %cmp1191 = icmp eq i32 %760, -1
  br i1 %cmp1191, label %if.then1193, label %if.else1195

if.then1193:                                      ; preds = %if.end1189
  %761 = load ptr, ptr %pVm.addr, align 8
  %call1194 = call i32 @PH7_VmThrowError(ptr noundef %761, ptr noundef null, i32 noundef 1, ptr noundef @.str.71)
  br label %if.end1204

if.else1195:                                      ; preds = %if.end1189
  %762 = load ptr, ptr %pVm.addr, align 8
  %aMemObj1196 = getelementptr inbounds nuw %struct.ph7_vm, ptr %762, i32 0, i32 6
  %763 = load ptr, ptr %pTos, align 8
  %nIdx1197 = getelementptr inbounds nuw %struct.ph7_value, ptr %763, i32 0, i32 5
  %764 = load i32, ptr %nIdx1197, align 8
  %call1198 = call ptr @SySetAt(ptr noundef %aMemObj1196, i32 noundef %764)
  store ptr %call1198, ptr %pObj1144, align 8
  %cmp1199 = icmp ne ptr %call1198, null
  br i1 %cmp1199, label %if.then1201, label %if.end1203

if.then1201:                                      ; preds = %if.else1195
  %765 = load ptr, ptr %pNos1142, align 8
  %766 = load ptr, ptr %pObj1144, align 8
  %call1202 = call i32 @PH7_MemObjStore(ptr noundef %765, ptr noundef %766)
  br label %if.end1203

if.end1203:                                       ; preds = %if.then1201, %if.else1195
  br label %if.end1204

if.end1204:                                       ; preds = %if.end1203, %if.then1193
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1205:                                        ; preds = %for.cond
  %767 = load ptr, ptr %pTos, align 8
  %arrayidx1207 = getelementptr inbounds %struct.ph7_value, ptr %767, i64 -1
  store ptr %arrayidx1207, ptr %pNos1206, align 8
  %768 = load ptr, ptr %pTos, align 8
  %iFlags1211 = getelementptr inbounds nuw %struct.ph7_value, ptr %768, i32 0, i32 2
  %769 = load i32, ptr %iFlags1211, align 8
  %and1212 = and i32 %769, 2
  %cmp1213 = icmp eq i32 %and1212, 0
  br i1 %cmp1213, label %if.then1215, label %if.end1217

if.then1215:                                      ; preds = %sw.bb1205
  %770 = load ptr, ptr %pTos, align 8
  %call1216 = call i32 @PH7_MemObjToInteger(ptr noundef %770)
  br label %if.end1217

if.end1217:                                       ; preds = %if.then1215, %sw.bb1205
  %771 = load ptr, ptr %pNos1206, align 8
  %iFlags1218 = getelementptr inbounds nuw %struct.ph7_value, ptr %771, i32 0, i32 2
  %772 = load i32, ptr %iFlags1218, align 8
  %and1219 = and i32 %772, 2
  %cmp1220 = icmp eq i32 %and1219, 0
  br i1 %cmp1220, label %if.then1222, label %if.end1224

if.then1222:                                      ; preds = %if.end1217
  %773 = load ptr, ptr %pNos1206, align 8
  %call1223 = call i32 @PH7_MemObjToInteger(ptr noundef %773)
  br label %if.end1224

if.end1224:                                       ; preds = %if.then1222, %if.end1217
  %774 = load ptr, ptr %pNos1206, align 8
  %x1225 = getelementptr inbounds nuw %struct.ph7_value, ptr %774, i32 0, i32 1
  %775 = load i64, ptr %x1225, align 8
  store i64 %775, ptr %a1208, align 8
  %776 = load ptr, ptr %pTos, align 8
  %x1226 = getelementptr inbounds nuw %struct.ph7_value, ptr %776, i32 0, i32 1
  %777 = load i64, ptr %x1226, align 8
  store i64 %777, ptr %b1209, align 8
  %778 = load i64, ptr %b1209, align 8
  %cmp1227 = icmp eq i64 %778, 0
  br i1 %cmp1227, label %if.then1229, label %if.else1231

if.then1229:                                      ; preds = %if.end1224
  store i64 0, ptr %r1210, align 8
  %779 = load ptr, ptr %pVm.addr, align 8
  %780 = load i64, ptr %a1208, align 8
  %call1230 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %779, i32 noundef 1, ptr noundef @.str.72, i64 noundef %780)
  br label %if.end1232

if.else1231:                                      ; preds = %if.end1224
  %781 = load i64, ptr %a1208, align 8
  %782 = load i64, ptr %b1209, align 8
  %rem = srem i64 %781, %782
  store i64 %rem, ptr %r1210, align 8
  br label %if.end1232

if.end1232:                                       ; preds = %if.else1231, %if.then1229
  %783 = load i64, ptr %r1210, align 8
  %784 = load ptr, ptr %pNos1206, align 8
  %x1233 = getelementptr inbounds nuw %struct.ph7_value, ptr %784, i32 0, i32 1
  store i64 %783, ptr %x1233, align 8
  %785 = load ptr, ptr %pNos1206, align 8
  %iFlags1234 = getelementptr inbounds nuw %struct.ph7_value, ptr %785, i32 0, i32 2
  %786 = load i32, ptr %iFlags1234, align 8
  %and1235 = and i32 %786, -496
  %or1236 = or i32 %and1235, 2
  %787 = load ptr, ptr %pNos1206, align 8
  %iFlags1237 = getelementptr inbounds nuw %struct.ph7_value, ptr %787, i32 0, i32 2
  store i32 %or1236, ptr %iFlags1237, align 8
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1238:                                        ; preds = %for.cond
  %788 = load ptr, ptr %pTos, align 8
  %arrayidx1240 = getelementptr inbounds %struct.ph7_value, ptr %788, i64 -1
  store ptr %arrayidx1240, ptr %pNos1239, align 8
  %789 = load ptr, ptr %pTos, align 8
  %iFlags1245 = getelementptr inbounds nuw %struct.ph7_value, ptr %789, i32 0, i32 2
  %790 = load i32, ptr %iFlags1245, align 8
  %and1246 = and i32 %790, 2
  %cmp1247 = icmp eq i32 %and1246, 0
  br i1 %cmp1247, label %if.then1249, label %if.end1251

if.then1249:                                      ; preds = %sw.bb1238
  %791 = load ptr, ptr %pTos, align 8
  %call1250 = call i32 @PH7_MemObjToInteger(ptr noundef %791)
  br label %if.end1251

if.end1251:                                       ; preds = %if.then1249, %sw.bb1238
  %792 = load ptr, ptr %pNos1239, align 8
  %iFlags1252 = getelementptr inbounds nuw %struct.ph7_value, ptr %792, i32 0, i32 2
  %793 = load i32, ptr %iFlags1252, align 8
  %and1253 = and i32 %793, 2
  %cmp1254 = icmp eq i32 %and1253, 0
  br i1 %cmp1254, label %if.then1256, label %if.end1258

if.then1256:                                      ; preds = %if.end1251
  %794 = load ptr, ptr %pNos1239, align 8
  %call1257 = call i32 @PH7_MemObjToInteger(ptr noundef %794)
  br label %if.end1258

if.end1258:                                       ; preds = %if.then1256, %if.end1251
  %795 = load ptr, ptr %pTos, align 8
  %x1259 = getelementptr inbounds nuw %struct.ph7_value, ptr %795, i32 0, i32 1
  %796 = load i64, ptr %x1259, align 8
  store i64 %796, ptr %a1242, align 8
  %797 = load ptr, ptr %pNos1239, align 8
  %x1260 = getelementptr inbounds nuw %struct.ph7_value, ptr %797, i32 0, i32 1
  %798 = load i64, ptr %x1260, align 8
  store i64 %798, ptr %b1243, align 8
  %799 = load i64, ptr %b1243, align 8
  %cmp1261 = icmp eq i64 %799, 0
  br i1 %cmp1261, label %if.then1263, label %if.else1265

if.then1263:                                      ; preds = %if.end1258
  store i64 0, ptr %r1244, align 8
  %800 = load ptr, ptr %pVm.addr, align 8
  %801 = load i64, ptr %a1242, align 8
  %call1264 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %800, i32 noundef 1, ptr noundef @.str.72, i64 noundef %801)
  br label %if.end1267

if.else1265:                                      ; preds = %if.end1258
  %802 = load i64, ptr %a1242, align 8
  %803 = load i64, ptr %b1243, align 8
  %rem1266 = srem i64 %802, %803
  store i64 %rem1266, ptr %r1244, align 8
  br label %if.end1267

if.end1267:                                       ; preds = %if.else1265, %if.then1263
  %804 = load i64, ptr %r1244, align 8
  %805 = load ptr, ptr %pNos1239, align 8
  %x1268 = getelementptr inbounds nuw %struct.ph7_value, ptr %805, i32 0, i32 1
  store i64 %804, ptr %x1268, align 8
  %806 = load ptr, ptr %pNos1239, align 8
  %iFlags1269 = getelementptr inbounds nuw %struct.ph7_value, ptr %806, i32 0, i32 2
  %807 = load i32, ptr %iFlags1269, align 8
  %and1270 = and i32 %807, -496
  %or1271 = or i32 %and1270, 2
  %808 = load ptr, ptr %pNos1239, align 8
  %iFlags1272 = getelementptr inbounds nuw %struct.ph7_value, ptr %808, i32 0, i32 2
  store i32 %or1271, ptr %iFlags1272, align 8
  %809 = load ptr, ptr %pTos, align 8
  %nIdx1273 = getelementptr inbounds nuw %struct.ph7_value, ptr %809, i32 0, i32 5
  %810 = load i32, ptr %nIdx1273, align 8
  %cmp1274 = icmp eq i32 %810, -1
  br i1 %cmp1274, label %if.then1276, label %if.else1278

if.then1276:                                      ; preds = %if.end1267
  %811 = load ptr, ptr %pVm.addr, align 8
  %call1277 = call i32 @PH7_VmThrowError(ptr noundef %811, ptr noundef null, i32 noundef 1, ptr noundef @.str.71)
  br label %if.end1287

if.else1278:                                      ; preds = %if.end1267
  %812 = load ptr, ptr %pVm.addr, align 8
  %aMemObj1279 = getelementptr inbounds nuw %struct.ph7_vm, ptr %812, i32 0, i32 6
  %813 = load ptr, ptr %pTos, align 8
  %nIdx1280 = getelementptr inbounds nuw %struct.ph7_value, ptr %813, i32 0, i32 5
  %814 = load i32, ptr %nIdx1280, align 8
  %call1281 = call ptr @SySetAt(ptr noundef %aMemObj1279, i32 noundef %814)
  store ptr %call1281, ptr %pObj1241, align 8
  %cmp1282 = icmp ne ptr %call1281, null
  br i1 %cmp1282, label %if.then1284, label %if.end1286

if.then1284:                                      ; preds = %if.else1278
  %815 = load ptr, ptr %pNos1239, align 8
  %816 = load ptr, ptr %pObj1241, align 8
  %call1285 = call i32 @PH7_MemObjStore(ptr noundef %815, ptr noundef %816)
  br label %if.end1286

if.end1286:                                       ; preds = %if.then1284, %if.else1278
  br label %if.end1287

if.end1287:                                       ; preds = %if.end1286, %if.then1276
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1288:                                        ; preds = %for.cond
  %817 = load ptr, ptr %pTos, align 8
  %arrayidx1290 = getelementptr inbounds %struct.ph7_value, ptr %817, i64 -1
  store ptr %arrayidx1290, ptr %pNos1289, align 8
  %818 = load ptr, ptr %pTos, align 8
  %iFlags1294 = getelementptr inbounds nuw %struct.ph7_value, ptr %818, i32 0, i32 2
  %819 = load i32, ptr %iFlags1294, align 8
  %and1295 = and i32 %819, 4
  %cmp1296 = icmp eq i32 %and1295, 0
  br i1 %cmp1296, label %if.then1298, label %if.end1300

if.then1298:                                      ; preds = %sw.bb1288
  %820 = load ptr, ptr %pTos, align 8
  %call1299 = call i32 @PH7_MemObjToReal(ptr noundef %820)
  br label %if.end1300

if.end1300:                                       ; preds = %if.then1298, %sw.bb1288
  %821 = load ptr, ptr %pNos1289, align 8
  %iFlags1301 = getelementptr inbounds nuw %struct.ph7_value, ptr %821, i32 0, i32 2
  %822 = load i32, ptr %iFlags1301, align 8
  %and1302 = and i32 %822, 4
  %cmp1303 = icmp eq i32 %and1302, 0
  br i1 %cmp1303, label %if.then1305, label %if.end1307

if.then1305:                                      ; preds = %if.end1300
  %823 = load ptr, ptr %pNos1289, align 8
  %call1306 = call i32 @PH7_MemObjToReal(ptr noundef %823)
  br label %if.end1307

if.end1307:                                       ; preds = %if.then1305, %if.end1300
  %824 = load ptr, ptr %pNos1289, align 8
  %rVal1308 = getelementptr inbounds nuw %struct.ph7_value, ptr %824, i32 0, i32 0
  %825 = load double, ptr %rVal1308, align 8
  store double %825, ptr %a1291, align 8
  %826 = load ptr, ptr %pTos, align 8
  %rVal1309 = getelementptr inbounds nuw %struct.ph7_value, ptr %826, i32 0, i32 0
  %827 = load double, ptr %rVal1309, align 8
  store double %827, ptr %b1292, align 8
  %828 = load double, ptr %b1292, align 8
  %cmp1310 = fcmp oeq double %828, 0.000000e+00
  br i1 %cmp1310, label %if.then1312, label %if.else1314

if.then1312:                                      ; preds = %if.end1307
  store double 0.000000e+00, ptr %r1293, align 8
  %829 = load ptr, ptr %pVm.addr, align 8
  %call1313 = call i32 @PH7_VmThrowError(ptr noundef %829, ptr noundef null, i32 noundef 1, ptr noundef @.str.73)
  br label %if.end1321

if.else1314:                                      ; preds = %if.end1307
  %830 = load double, ptr %a1291, align 8
  %831 = load double, ptr %b1292, align 8
  %div = fdiv double %830, %831
  store double %div, ptr %r1293, align 8
  %832 = load double, ptr %r1293, align 8
  %833 = load ptr, ptr %pNos1289, align 8
  %rVal1315 = getelementptr inbounds nuw %struct.ph7_value, ptr %833, i32 0, i32 0
  store double %832, ptr %rVal1315, align 8
  %834 = load ptr, ptr %pNos1289, align 8
  %iFlags1316 = getelementptr inbounds nuw %struct.ph7_value, ptr %834, i32 0, i32 2
  %835 = load i32, ptr %iFlags1316, align 8
  %and1317 = and i32 %835, -496
  %or1318 = or i32 %and1317, 4
  %836 = load ptr, ptr %pNos1289, align 8
  %iFlags1319 = getelementptr inbounds nuw %struct.ph7_value, ptr %836, i32 0, i32 2
  store i32 %or1318, ptr %iFlags1319, align 8
  %837 = load ptr, ptr %pNos1289, align 8
  %call1320 = call i32 @PH7_MemObjTryInteger(ptr noundef %837)
  br label %if.end1321

if.end1321:                                       ; preds = %if.else1314, %if.then1312
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1322:                                        ; preds = %for.cond
  %838 = load ptr, ptr %pTos, align 8
  %arrayidx1324 = getelementptr inbounds %struct.ph7_value, ptr %838, i64 -1
  store ptr %arrayidx1324, ptr %pNos1323, align 8
  %839 = load ptr, ptr %pTos, align 8
  %iFlags1329 = getelementptr inbounds nuw %struct.ph7_value, ptr %839, i32 0, i32 2
  %840 = load i32, ptr %iFlags1329, align 8
  %and1330 = and i32 %840, 4
  %cmp1331 = icmp eq i32 %and1330, 0
  br i1 %cmp1331, label %if.then1333, label %if.end1335

if.then1333:                                      ; preds = %sw.bb1322
  %841 = load ptr, ptr %pTos, align 8
  %call1334 = call i32 @PH7_MemObjToReal(ptr noundef %841)
  br label %if.end1335

if.end1335:                                       ; preds = %if.then1333, %sw.bb1322
  %842 = load ptr, ptr %pNos1323, align 8
  %iFlags1336 = getelementptr inbounds nuw %struct.ph7_value, ptr %842, i32 0, i32 2
  %843 = load i32, ptr %iFlags1336, align 8
  %and1337 = and i32 %843, 4
  %cmp1338 = icmp eq i32 %and1337, 0
  br i1 %cmp1338, label %if.then1340, label %if.end1342

if.then1340:                                      ; preds = %if.end1335
  %844 = load ptr, ptr %pNos1323, align 8
  %call1341 = call i32 @PH7_MemObjToReal(ptr noundef %844)
  br label %if.end1342

if.end1342:                                       ; preds = %if.then1340, %if.end1335
  %845 = load ptr, ptr %pTos, align 8
  %rVal1343 = getelementptr inbounds nuw %struct.ph7_value, ptr %845, i32 0, i32 0
  %846 = load double, ptr %rVal1343, align 8
  store double %846, ptr %a1326, align 8
  %847 = load ptr, ptr %pNos1323, align 8
  %rVal1344 = getelementptr inbounds nuw %struct.ph7_value, ptr %847, i32 0, i32 0
  %848 = load double, ptr %rVal1344, align 8
  store double %848, ptr %b1327, align 8
  %849 = load double, ptr %b1327, align 8
  %cmp1345 = fcmp oeq double %849, 0.000000e+00
  br i1 %cmp1345, label %if.then1347, label %if.else1349

if.then1347:                                      ; preds = %if.end1342
  store double 0.000000e+00, ptr %r1328, align 8
  %850 = load ptr, ptr %pVm.addr, align 8
  %851 = load double, ptr %a1326, align 8
  %call1348 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %850, i32 noundef 1, ptr noundef @.str.74, double noundef %851)
  br label %if.end1357

if.else1349:                                      ; preds = %if.end1342
  %852 = load double, ptr %a1326, align 8
  %853 = load double, ptr %b1327, align 8
  %div1350 = fdiv double %852, %853
  store double %div1350, ptr %r1328, align 8
  %854 = load double, ptr %r1328, align 8
  %855 = load ptr, ptr %pNos1323, align 8
  %rVal1351 = getelementptr inbounds nuw %struct.ph7_value, ptr %855, i32 0, i32 0
  store double %854, ptr %rVal1351, align 8
  %856 = load ptr, ptr %pNos1323, align 8
  %iFlags1352 = getelementptr inbounds nuw %struct.ph7_value, ptr %856, i32 0, i32 2
  %857 = load i32, ptr %iFlags1352, align 8
  %and1353 = and i32 %857, -496
  %or1354 = or i32 %and1353, 4
  %858 = load ptr, ptr %pNos1323, align 8
  %iFlags1355 = getelementptr inbounds nuw %struct.ph7_value, ptr %858, i32 0, i32 2
  store i32 %or1354, ptr %iFlags1355, align 8
  %859 = load ptr, ptr %pNos1323, align 8
  %call1356 = call i32 @PH7_MemObjTryInteger(ptr noundef %859)
  br label %if.end1357

if.end1357:                                       ; preds = %if.else1349, %if.then1347
  %860 = load ptr, ptr %pTos, align 8
  %nIdx1358 = getelementptr inbounds nuw %struct.ph7_value, ptr %860, i32 0, i32 5
  %861 = load i32, ptr %nIdx1358, align 8
  %cmp1359 = icmp eq i32 %861, -1
  br i1 %cmp1359, label %if.then1361, label %if.else1363

if.then1361:                                      ; preds = %if.end1357
  %862 = load ptr, ptr %pVm.addr, align 8
  %call1362 = call i32 @PH7_VmThrowError(ptr noundef %862, ptr noundef null, i32 noundef 1, ptr noundef @.str.71)
  br label %if.end1372

if.else1363:                                      ; preds = %if.end1357
  %863 = load ptr, ptr %pVm.addr, align 8
  %aMemObj1364 = getelementptr inbounds nuw %struct.ph7_vm, ptr %863, i32 0, i32 6
  %864 = load ptr, ptr %pTos, align 8
  %nIdx1365 = getelementptr inbounds nuw %struct.ph7_value, ptr %864, i32 0, i32 5
  %865 = load i32, ptr %nIdx1365, align 8
  %call1366 = call ptr @SySetAt(ptr noundef %aMemObj1364, i32 noundef %865)
  store ptr %call1366, ptr %pObj1325, align 8
  %cmp1367 = icmp ne ptr %call1366, null
  br i1 %cmp1367, label %if.then1369, label %if.end1371

if.then1369:                                      ; preds = %if.else1363
  %866 = load ptr, ptr %pNos1323, align 8
  %867 = load ptr, ptr %pObj1325, align 8
  %call1370 = call i32 @PH7_MemObjStore(ptr noundef %866, ptr noundef %867)
  br label %if.end1371

if.end1371:                                       ; preds = %if.then1369, %if.else1363
  br label %if.end1372

if.end1372:                                       ; preds = %if.end1371, %if.then1361
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1373:                                        ; preds = %for.cond, %for.cond, %for.cond
  %868 = load ptr, ptr %pTos, align 8
  %arrayidx1375 = getelementptr inbounds %struct.ph7_value, ptr %868, i64 -1
  store ptr %arrayidx1375, ptr %pNos1374, align 8
  %869 = load ptr, ptr %pTos, align 8
  %iFlags1379 = getelementptr inbounds nuw %struct.ph7_value, ptr %869, i32 0, i32 2
  %870 = load i32, ptr %iFlags1379, align 8
  %and1380 = and i32 %870, 2
  %cmp1381 = icmp eq i32 %and1380, 0
  br i1 %cmp1381, label %if.then1383, label %if.end1385

if.then1383:                                      ; preds = %sw.bb1373
  %871 = load ptr, ptr %pTos, align 8
  %call1384 = call i32 @PH7_MemObjToInteger(ptr noundef %871)
  br label %if.end1385

if.end1385:                                       ; preds = %if.then1383, %sw.bb1373
  %872 = load ptr, ptr %pNos1374, align 8
  %iFlags1386 = getelementptr inbounds nuw %struct.ph7_value, ptr %872, i32 0, i32 2
  %873 = load i32, ptr %iFlags1386, align 8
  %and1387 = and i32 %873, 2
  %cmp1388 = icmp eq i32 %and1387, 0
  br i1 %cmp1388, label %if.then1390, label %if.end1392

if.then1390:                                      ; preds = %if.end1385
  %874 = load ptr, ptr %pNos1374, align 8
  %call1391 = call i32 @PH7_MemObjToInteger(ptr noundef %874)
  br label %if.end1392

if.end1392:                                       ; preds = %if.then1390, %if.end1385
  %875 = load ptr, ptr %pNos1374, align 8
  %x1393 = getelementptr inbounds nuw %struct.ph7_value, ptr %875, i32 0, i32 1
  %876 = load i64, ptr %x1393, align 8
  store i64 %876, ptr %a1376, align 8
  %877 = load ptr, ptr %pTos, align 8
  %x1394 = getelementptr inbounds nuw %struct.ph7_value, ptr %877, i32 0, i32 1
  %878 = load i64, ptr %x1394, align 8
  store i64 %878, ptr %b1377, align 8
  %879 = load ptr, ptr %pInstr, align 8
  %iOp1395 = getelementptr inbounds nuw %struct.VmInstr, ptr %879, i32 0, i32 0
  %880 = load i8, ptr %iOp1395, align 8
  %conv1396 = zext i8 %880 to i32
  switch i32 %conv1396, label %sw.default [
    i32 67, label %sw.bb1397
    i32 40, label %sw.bb1397
    i32 68, label %sw.bb1399
    i32 39, label %sw.bb1399
    i32 66, label %sw.bb1400
    i32 38, label %sw.bb1400
  ]

sw.bb1397:                                        ; preds = %if.end1392, %if.end1392
  %881 = load i64, ptr %a1376, align 8
  %882 = load i64, ptr %b1377, align 8
  %or1398 = or i64 %881, %882
  store i64 %or1398, ptr %r1378, align 8
  br label %sw.epilog

sw.bb1399:                                        ; preds = %if.end1392, %if.end1392
  %883 = load i64, ptr %a1376, align 8
  %884 = load i64, ptr %b1377, align 8
  %xor = xor i64 %883, %884
  store i64 %xor, ptr %r1378, align 8
  br label %sw.epilog

sw.bb1400:                                        ; preds = %if.end1392, %if.end1392
  br label %sw.default

sw.default:                                       ; preds = %sw.bb1400, %if.end1392
  %885 = load i64, ptr %a1376, align 8
  %886 = load i64, ptr %b1377, align 8
  %and1401 = and i64 %885, %886
  store i64 %and1401, ptr %r1378, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1399, %sw.bb1397
  %887 = load i64, ptr %r1378, align 8
  %888 = load ptr, ptr %pNos1374, align 8
  %x1402 = getelementptr inbounds nuw %struct.ph7_value, ptr %888, i32 0, i32 1
  store i64 %887, ptr %x1402, align 8
  %889 = load ptr, ptr %pNos1374, align 8
  %iFlags1403 = getelementptr inbounds nuw %struct.ph7_value, ptr %889, i32 0, i32 2
  %890 = load i32, ptr %iFlags1403, align 8
  %and1404 = and i32 %890, -496
  %or1405 = or i32 %and1404, 2
  %891 = load ptr, ptr %pNos1374, align 8
  %iFlags1406 = getelementptr inbounds nuw %struct.ph7_value, ptr %891, i32 0, i32 2
  store i32 %or1405, ptr %iFlags1406, align 8
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1407:                                        ; preds = %for.cond, %for.cond, %for.cond
  %892 = load ptr, ptr %pTos, align 8
  %arrayidx1409 = getelementptr inbounds %struct.ph7_value, ptr %892, i64 -1
  store ptr %arrayidx1409, ptr %pNos1408, align 8
  %893 = load ptr, ptr %pTos, align 8
  %iFlags1414 = getelementptr inbounds nuw %struct.ph7_value, ptr %893, i32 0, i32 2
  %894 = load i32, ptr %iFlags1414, align 8
  %and1415 = and i32 %894, 2
  %cmp1416 = icmp eq i32 %and1415, 0
  br i1 %cmp1416, label %if.then1418, label %if.end1420

if.then1418:                                      ; preds = %sw.bb1407
  %895 = load ptr, ptr %pTos, align 8
  %call1419 = call i32 @PH7_MemObjToInteger(ptr noundef %895)
  br label %if.end1420

if.end1420:                                       ; preds = %if.then1418, %sw.bb1407
  %896 = load ptr, ptr %pNos1408, align 8
  %iFlags1421 = getelementptr inbounds nuw %struct.ph7_value, ptr %896, i32 0, i32 2
  %897 = load i32, ptr %iFlags1421, align 8
  %and1422 = and i32 %897, 2
  %cmp1423 = icmp eq i32 %and1422, 0
  br i1 %cmp1423, label %if.then1425, label %if.end1427

if.then1425:                                      ; preds = %if.end1420
  %898 = load ptr, ptr %pNos1408, align 8
  %call1426 = call i32 @PH7_MemObjToInteger(ptr noundef %898)
  br label %if.end1427

if.end1427:                                       ; preds = %if.then1425, %if.end1420
  %899 = load ptr, ptr %pTos, align 8
  %x1428 = getelementptr inbounds nuw %struct.ph7_value, ptr %899, i32 0, i32 1
  %900 = load i64, ptr %x1428, align 8
  store i64 %900, ptr %a1411, align 8
  %901 = load ptr, ptr %pNos1408, align 8
  %x1429 = getelementptr inbounds nuw %struct.ph7_value, ptr %901, i32 0, i32 1
  %902 = load i64, ptr %x1429, align 8
  store i64 %902, ptr %b1412, align 8
  %903 = load ptr, ptr %pInstr, align 8
  %iOp1430 = getelementptr inbounds nuw %struct.VmInstr, ptr %903, i32 0, i32 0
  %904 = load i8, ptr %iOp1430, align 8
  %conv1431 = zext i8 %904 to i32
  switch i32 %conv1431, label %sw.default1437 [
    i32 67, label %sw.bb1432
    i32 40, label %sw.bb1432
    i32 68, label %sw.bb1434
    i32 39, label %sw.bb1434
    i32 66, label %sw.bb1436
    i32 38, label %sw.bb1436
  ]

sw.bb1432:                                        ; preds = %if.end1427, %if.end1427
  %905 = load i64, ptr %a1411, align 8
  %906 = load i64, ptr %b1412, align 8
  %or1433 = or i64 %905, %906
  store i64 %or1433, ptr %r1413, align 8
  br label %sw.epilog1439

sw.bb1434:                                        ; preds = %if.end1427, %if.end1427
  %907 = load i64, ptr %a1411, align 8
  %908 = load i64, ptr %b1412, align 8
  %xor1435 = xor i64 %907, %908
  store i64 %xor1435, ptr %r1413, align 8
  br label %sw.epilog1439

sw.bb1436:                                        ; preds = %if.end1427, %if.end1427
  br label %sw.default1437

sw.default1437:                                   ; preds = %sw.bb1436, %if.end1427
  %909 = load i64, ptr %a1411, align 8
  %910 = load i64, ptr %b1412, align 8
  %and1438 = and i64 %909, %910
  store i64 %and1438, ptr %r1413, align 8
  br label %sw.epilog1439

sw.epilog1439:                                    ; preds = %sw.default1437, %sw.bb1434, %sw.bb1432
  %911 = load i64, ptr %r1413, align 8
  %912 = load ptr, ptr %pNos1408, align 8
  %x1440 = getelementptr inbounds nuw %struct.ph7_value, ptr %912, i32 0, i32 1
  store i64 %911, ptr %x1440, align 8
  %913 = load ptr, ptr %pNos1408, align 8
  %iFlags1441 = getelementptr inbounds nuw %struct.ph7_value, ptr %913, i32 0, i32 2
  %914 = load i32, ptr %iFlags1441, align 8
  %and1442 = and i32 %914, -496
  %or1443 = or i32 %and1442, 2
  %915 = load ptr, ptr %pNos1408, align 8
  %iFlags1444 = getelementptr inbounds nuw %struct.ph7_value, ptr %915, i32 0, i32 2
  store i32 %or1443, ptr %iFlags1444, align 8
  %916 = load ptr, ptr %pTos, align 8
  %nIdx1445 = getelementptr inbounds nuw %struct.ph7_value, ptr %916, i32 0, i32 5
  %917 = load i32, ptr %nIdx1445, align 8
  %cmp1446 = icmp eq i32 %917, -1
  br i1 %cmp1446, label %if.then1448, label %if.else1450

if.then1448:                                      ; preds = %sw.epilog1439
  %918 = load ptr, ptr %pVm.addr, align 8
  %call1449 = call i32 @PH7_VmThrowError(ptr noundef %918, ptr noundef null, i32 noundef 1, ptr noundef @.str.71)
  br label %if.end1459

if.else1450:                                      ; preds = %sw.epilog1439
  %919 = load ptr, ptr %pVm.addr, align 8
  %aMemObj1451 = getelementptr inbounds nuw %struct.ph7_vm, ptr %919, i32 0, i32 6
  %920 = load ptr, ptr %pTos, align 8
  %nIdx1452 = getelementptr inbounds nuw %struct.ph7_value, ptr %920, i32 0, i32 5
  %921 = load i32, ptr %nIdx1452, align 8
  %call1453 = call ptr @SySetAt(ptr noundef %aMemObj1451, i32 noundef %921)
  store ptr %call1453, ptr %pObj1410, align 8
  %cmp1454 = icmp ne ptr %call1453, null
  br i1 %cmp1454, label %if.then1456, label %if.end1458

if.then1456:                                      ; preds = %if.else1450
  %922 = load ptr, ptr %pNos1408, align 8
  %923 = load ptr, ptr %pObj1410, align 8
  %call1457 = call i32 @PH7_MemObjStore(ptr noundef %922, ptr noundef %923)
  br label %if.end1458

if.end1458:                                       ; preds = %if.then1456, %if.else1450
  br label %if.end1459

if.end1459:                                       ; preds = %if.end1458, %if.then1448
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1460:                                        ; preds = %for.cond, %for.cond
  %924 = load ptr, ptr %pTos, align 8
  %arrayidx1462 = getelementptr inbounds %struct.ph7_value, ptr %924, i64 -1
  store ptr %arrayidx1462, ptr %pNos1461, align 8
  %925 = load ptr, ptr %pTos, align 8
  %iFlags1466 = getelementptr inbounds nuw %struct.ph7_value, ptr %925, i32 0, i32 2
  %926 = load i32, ptr %iFlags1466, align 8
  %and1467 = and i32 %926, 2
  %cmp1468 = icmp eq i32 %and1467, 0
  br i1 %cmp1468, label %if.then1470, label %if.end1472

if.then1470:                                      ; preds = %sw.bb1460
  %927 = load ptr, ptr %pTos, align 8
  %call1471 = call i32 @PH7_MemObjToInteger(ptr noundef %927)
  br label %if.end1472

if.end1472:                                       ; preds = %if.then1470, %sw.bb1460
  %928 = load ptr, ptr %pNos1461, align 8
  %iFlags1473 = getelementptr inbounds nuw %struct.ph7_value, ptr %928, i32 0, i32 2
  %929 = load i32, ptr %iFlags1473, align 8
  %and1474 = and i32 %929, 2
  %cmp1475 = icmp eq i32 %and1474, 0
  br i1 %cmp1475, label %if.then1477, label %if.end1479

if.then1477:                                      ; preds = %if.end1472
  %930 = load ptr, ptr %pNos1461, align 8
  %call1478 = call i32 @PH7_MemObjToInteger(ptr noundef %930)
  br label %if.end1479

if.end1479:                                       ; preds = %if.then1477, %if.end1472
  %931 = load ptr, ptr %pNos1461, align 8
  %x1480 = getelementptr inbounds nuw %struct.ph7_value, ptr %931, i32 0, i32 1
  %932 = load i64, ptr %x1480, align 8
  store i64 %932, ptr %a1463, align 8
  %933 = load ptr, ptr %pTos, align 8
  %x1481 = getelementptr inbounds nuw %struct.ph7_value, ptr %933, i32 0, i32 1
  %934 = load i64, ptr %x1481, align 8
  %conv1482 = trunc i64 %934 to i32
  store i32 %conv1482, ptr %b1465, align 4
  %935 = load ptr, ptr %pInstr, align 8
  %iOp1483 = getelementptr inbounds nuw %struct.VmInstr, ptr %935, i32 0, i32 0
  %936 = load i8, ptr %iOp1483, align 8
  %conv1484 = zext i8 %936 to i32
  %cmp1485 = icmp eq i32 %conv1484, 28
  br i1 %cmp1485, label %if.then1487, label %if.else1488

if.then1487:                                      ; preds = %if.end1479
  %937 = load i64, ptr %a1463, align 8
  %938 = load i32, ptr %b1465, align 4
  %sh_prom = zext i32 %938 to i64
  %shl = shl i64 %937, %sh_prom
  store i64 %shl, ptr %r1464, align 8
  br label %if.end1490

if.else1488:                                      ; preds = %if.end1479
  %939 = load i64, ptr %a1463, align 8
  %940 = load i32, ptr %b1465, align 4
  %sh_prom1489 = zext i32 %940 to i64
  %shr = ashr i64 %939, %sh_prom1489
  store i64 %shr, ptr %r1464, align 8
  br label %if.end1490

if.end1490:                                       ; preds = %if.else1488, %if.then1487
  %941 = load i64, ptr %r1464, align 8
  %942 = load ptr, ptr %pNos1461, align 8
  %x1491 = getelementptr inbounds nuw %struct.ph7_value, ptr %942, i32 0, i32 1
  store i64 %941, ptr %x1491, align 8
  %943 = load ptr, ptr %pNos1461, align 8
  %iFlags1492 = getelementptr inbounds nuw %struct.ph7_value, ptr %943, i32 0, i32 2
  %944 = load i32, ptr %iFlags1492, align 8
  %and1493 = and i32 %944, -496
  %or1494 = or i32 %and1493, 2
  %945 = load ptr, ptr %pNos1461, align 8
  %iFlags1495 = getelementptr inbounds nuw %struct.ph7_value, ptr %945, i32 0, i32 2
  store i32 %or1494, ptr %iFlags1495, align 8
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1496:                                        ; preds = %for.cond, %for.cond
  %946 = load ptr, ptr %pTos, align 8
  %arrayidx1498 = getelementptr inbounds %struct.ph7_value, ptr %946, i64 -1
  store ptr %arrayidx1498, ptr %pNos1497, align 8
  %947 = load ptr, ptr %pTos, align 8
  %iFlags1503 = getelementptr inbounds nuw %struct.ph7_value, ptr %947, i32 0, i32 2
  %948 = load i32, ptr %iFlags1503, align 8
  %and1504 = and i32 %948, 2
  %cmp1505 = icmp eq i32 %and1504, 0
  br i1 %cmp1505, label %if.then1507, label %if.end1509

if.then1507:                                      ; preds = %sw.bb1496
  %949 = load ptr, ptr %pTos, align 8
  %call1508 = call i32 @PH7_MemObjToInteger(ptr noundef %949)
  br label %if.end1509

if.end1509:                                       ; preds = %if.then1507, %sw.bb1496
  %950 = load ptr, ptr %pNos1497, align 8
  %iFlags1510 = getelementptr inbounds nuw %struct.ph7_value, ptr %950, i32 0, i32 2
  %951 = load i32, ptr %iFlags1510, align 8
  %and1511 = and i32 %951, 2
  %cmp1512 = icmp eq i32 %and1511, 0
  br i1 %cmp1512, label %if.then1514, label %if.end1516

if.then1514:                                      ; preds = %if.end1509
  %952 = load ptr, ptr %pNos1497, align 8
  %call1515 = call i32 @PH7_MemObjToInteger(ptr noundef %952)
  br label %if.end1516

if.end1516:                                       ; preds = %if.then1514, %if.end1509
  %953 = load ptr, ptr %pTos, align 8
  %x1517 = getelementptr inbounds nuw %struct.ph7_value, ptr %953, i32 0, i32 1
  %954 = load i64, ptr %x1517, align 8
  store i64 %954, ptr %a1500, align 8
  %955 = load ptr, ptr %pNos1497, align 8
  %x1518 = getelementptr inbounds nuw %struct.ph7_value, ptr %955, i32 0, i32 1
  %956 = load i64, ptr %x1518, align 8
  %conv1519 = trunc i64 %956 to i32
  store i32 %conv1519, ptr %b1502, align 4
  %957 = load ptr, ptr %pInstr, align 8
  %iOp1520 = getelementptr inbounds nuw %struct.VmInstr, ptr %957, i32 0, i32 0
  %958 = load i8, ptr %iOp1520, align 8
  %conv1521 = zext i8 %958 to i32
  %cmp1522 = icmp eq i32 %conv1521, 64
  br i1 %cmp1522, label %if.then1524, label %if.else1527

if.then1524:                                      ; preds = %if.end1516
  %959 = load i64, ptr %a1500, align 8
  %960 = load i32, ptr %b1502, align 4
  %sh_prom1525 = zext i32 %960 to i64
  %shl1526 = shl i64 %959, %sh_prom1525
  store i64 %shl1526, ptr %r1501, align 8
  br label %if.end1530

if.else1527:                                      ; preds = %if.end1516
  %961 = load i64, ptr %a1500, align 8
  %962 = load i32, ptr %b1502, align 4
  %sh_prom1528 = zext i32 %962 to i64
  %shr1529 = ashr i64 %961, %sh_prom1528
  store i64 %shr1529, ptr %r1501, align 8
  br label %if.end1530

if.end1530:                                       ; preds = %if.else1527, %if.then1524
  %963 = load i64, ptr %r1501, align 8
  %964 = load ptr, ptr %pNos1497, align 8
  %x1531 = getelementptr inbounds nuw %struct.ph7_value, ptr %964, i32 0, i32 1
  store i64 %963, ptr %x1531, align 8
  %965 = load ptr, ptr %pNos1497, align 8
  %iFlags1532 = getelementptr inbounds nuw %struct.ph7_value, ptr %965, i32 0, i32 2
  %966 = load i32, ptr %iFlags1532, align 8
  %and1533 = and i32 %966, -496
  %or1534 = or i32 %and1533, 2
  %967 = load ptr, ptr %pNos1497, align 8
  %iFlags1535 = getelementptr inbounds nuw %struct.ph7_value, ptr %967, i32 0, i32 2
  store i32 %or1534, ptr %iFlags1535, align 8
  %968 = load ptr, ptr %pTos, align 8
  %nIdx1536 = getelementptr inbounds nuw %struct.ph7_value, ptr %968, i32 0, i32 5
  %969 = load i32, ptr %nIdx1536, align 8
  %cmp1537 = icmp eq i32 %969, -1
  br i1 %cmp1537, label %if.then1539, label %if.else1541

if.then1539:                                      ; preds = %if.end1530
  %970 = load ptr, ptr %pVm.addr, align 8
  %call1540 = call i32 @PH7_VmThrowError(ptr noundef %970, ptr noundef null, i32 noundef 1, ptr noundef @.str.71)
  br label %if.end1550

if.else1541:                                      ; preds = %if.end1530
  %971 = load ptr, ptr %pVm.addr, align 8
  %aMemObj1542 = getelementptr inbounds nuw %struct.ph7_vm, ptr %971, i32 0, i32 6
  %972 = load ptr, ptr %pTos, align 8
  %nIdx1543 = getelementptr inbounds nuw %struct.ph7_value, ptr %972, i32 0, i32 5
  %973 = load i32, ptr %nIdx1543, align 8
  %call1544 = call ptr @SySetAt(ptr noundef %aMemObj1542, i32 noundef %973)
  store ptr %call1544, ptr %pObj1499, align 8
  %cmp1545 = icmp ne ptr %call1544, null
  br i1 %cmp1545, label %if.then1547, label %if.end1549

if.then1547:                                      ; preds = %if.else1541
  %974 = load ptr, ptr %pNos1497, align 8
  %975 = load ptr, ptr %pObj1499, align 8
  %call1548 = call i32 @PH7_MemObjStore(ptr noundef %974, ptr noundef %975)
  br label %if.end1549

if.end1549:                                       ; preds = %if.then1547, %if.else1541
  br label %if.end1550

if.end1550:                                       ; preds = %if.end1549, %if.then1539
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1551:                                        ; preds = %for.cond
  %976 = load ptr, ptr %pInstr, align 8
  %iP11553 = getelementptr inbounds nuw %struct.VmInstr, ptr %976, i32 0, i32 1
  %977 = load i32, ptr %iP11553, align 4
  %cmp1554 = icmp slt i32 %977, 1
  br i1 %cmp1554, label %if.then1556, label %if.else1558

if.then1556:                                      ; preds = %sw.bb1551
  %978 = load ptr, ptr %pTos, align 8
  %arrayidx1557 = getelementptr inbounds %struct.ph7_value, ptr %978, i64 -1
  store ptr %arrayidx1557, ptr %pNos1552, align 8
  br label %if.end1564

if.else1558:                                      ; preds = %sw.bb1551
  %979 = load ptr, ptr %pTos, align 8
  %980 = load ptr, ptr %pInstr, align 8
  %iP11559 = getelementptr inbounds nuw %struct.VmInstr, ptr %980, i32 0, i32 1
  %981 = load i32, ptr %iP11559, align 4
  %sub1560 = sub nsw i32 0, %981
  %add1561 = add nsw i32 %sub1560, 1
  %idxprom1562 = sext i32 %add1561 to i64
  %arrayidx1563 = getelementptr inbounds %struct.ph7_value, ptr %979, i64 %idxprom1562
  store ptr %arrayidx1563, ptr %pNos1552, align 8
  br label %if.end1564

if.end1564:                                       ; preds = %if.else1558, %if.then1556
  %982 = load ptr, ptr %pNos1552, align 8
  %iFlags1565 = getelementptr inbounds nuw %struct.ph7_value, ptr %982, i32 0, i32 2
  %983 = load i32, ptr %iFlags1565, align 8
  %and1566 = and i32 %983, 1
  %cmp1567 = icmp eq i32 %and1566, 0
  br i1 %cmp1567, label %if.then1569, label %if.end1571

if.then1569:                                      ; preds = %if.end1564
  %984 = load ptr, ptr %pNos1552, align 8
  %call1570 = call i32 @PH7_MemObjToString(ptr noundef %984)
  br label %if.end1571

if.end1571:                                       ; preds = %if.then1569, %if.end1564
  %985 = load ptr, ptr %pNos1552, align 8
  %arrayidx1572 = getelementptr inbounds %struct.ph7_value, ptr %985, i64 1
  store ptr %arrayidx1572, ptr %pCur, align 8
  br label %while.cond1573

while.cond1573:                                   ; preds = %if.end1594, %if.end1571
  %986 = load ptr, ptr %pCur, align 8
  %987 = load ptr, ptr %pTos, align 8
  %cmp1574 = icmp ule ptr %986, %987
  br i1 %cmp1574, label %while.body1576, label %while.end1598

while.body1576:                                   ; preds = %while.cond1573
  %988 = load ptr, ptr %pCur, align 8
  %iFlags1577 = getelementptr inbounds nuw %struct.ph7_value, ptr %988, i32 0, i32 2
  %989 = load i32, ptr %iFlags1577, align 8
  %and1578 = and i32 %989, 1
  %cmp1579 = icmp eq i32 %and1578, 0
  br i1 %cmp1579, label %if.then1581, label %if.end1583

if.then1581:                                      ; preds = %while.body1576
  %990 = load ptr, ptr %pCur, align 8
  %call1582 = call i32 @PH7_MemObjToString(ptr noundef %990)
  br label %if.end1583

if.end1583:                                       ; preds = %if.then1581, %while.body1576
  %991 = load ptr, ptr %pCur, align 8
  %sBlob1584 = getelementptr inbounds nuw %struct.ph7_value, ptr %991, i32 0, i32 4
  %nByte1585 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1584, i32 0, i32 2
  %992 = load i32, ptr %nByte1585, align 8
  %cmp1586 = icmp ugt i32 %992, 0
  br i1 %cmp1586, label %if.then1588, label %if.end1594

if.then1588:                                      ; preds = %if.end1583
  %993 = load ptr, ptr %pNos1552, align 8
  %994 = load ptr, ptr %pCur, align 8
  %sBlob1589 = getelementptr inbounds nuw %struct.ph7_value, ptr %994, i32 0, i32 4
  %pBlob1590 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1589, i32 0, i32 1
  %995 = load ptr, ptr %pBlob1590, align 8
  %996 = load ptr, ptr %pCur, align 8
  %sBlob1591 = getelementptr inbounds nuw %struct.ph7_value, ptr %996, i32 0, i32 4
  %nByte1592 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1591, i32 0, i32 2
  %997 = load i32, ptr %nByte1592, align 8
  %call1593 = call i32 @PH7_MemObjStringAppend(ptr noundef %993, ptr noundef %995, i32 noundef %997)
  br label %if.end1594

if.end1594:                                       ; preds = %if.then1588, %if.end1583
  %998 = load ptr, ptr %pCur, align 8
  %sBlob1595 = getelementptr inbounds nuw %struct.ph7_value, ptr %998, i32 0, i32 4
  %call1596 = call i32 @SyBlobRelease(ptr noundef %sBlob1595)
  %999 = load ptr, ptr %pCur, align 8
  %incdec.ptr1597 = getelementptr inbounds nuw %struct.ph7_value, ptr %999, i32 1
  store ptr %incdec.ptr1597, ptr %pCur, align 8
  br label %while.cond1573, !llvm.loop !11

while.end1598:                                    ; preds = %while.cond1573
  %1000 = load ptr, ptr %pNos1552, align 8
  store ptr %1000, ptr %pTos, align 8
  br label %sw.epilog3867

sw.bb1599:                                        ; preds = %for.cond
  %1001 = load ptr, ptr %pTos, align 8
  %arrayidx1601 = getelementptr inbounds %struct.ph7_value, ptr %1001, i64 -1
  store ptr %arrayidx1601, ptr %pNos1600, align 8
  %1002 = load ptr, ptr %pTos, align 8
  %iFlags1603 = getelementptr inbounds nuw %struct.ph7_value, ptr %1002, i32 0, i32 2
  %1003 = load i32, ptr %iFlags1603, align 8
  %and1604 = and i32 %1003, 1
  %cmp1605 = icmp eq i32 %and1604, 0
  br i1 %cmp1605, label %if.then1607, label %if.end1609

if.then1607:                                      ; preds = %sw.bb1599
  %1004 = load ptr, ptr %pTos, align 8
  %call1608 = call i32 @PH7_MemObjToString(ptr noundef %1004)
  br label %if.end1609

if.end1609:                                       ; preds = %if.then1607, %sw.bb1599
  %1005 = load ptr, ptr %pNos1600, align 8
  %iFlags1610 = getelementptr inbounds nuw %struct.ph7_value, ptr %1005, i32 0, i32 2
  %1006 = load i32, ptr %iFlags1610, align 8
  %and1611 = and i32 %1006, 1
  %cmp1612 = icmp eq i32 %and1611, 0
  br i1 %cmp1612, label %if.then1614, label %if.end1616

if.then1614:                                      ; preds = %if.end1609
  %1007 = load ptr, ptr %pNos1600, align 8
  %call1615 = call i32 @PH7_MemObjToString(ptr noundef %1007)
  br label %if.end1616

if.end1616:                                       ; preds = %if.then1614, %if.end1609
  %1008 = load ptr, ptr %pNos1600, align 8
  %sBlob1617 = getelementptr inbounds nuw %struct.ph7_value, ptr %1008, i32 0, i32 4
  %nByte1618 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1617, i32 0, i32 2
  %1009 = load i32, ptr %nByte1618, align 8
  %cmp1619 = icmp ugt i32 %1009, 0
  br i1 %cmp1619, label %if.then1621, label %if.end1627

if.then1621:                                      ; preds = %if.end1616
  %1010 = load ptr, ptr %pTos, align 8
  %1011 = load ptr, ptr %pNos1600, align 8
  %sBlob1622 = getelementptr inbounds nuw %struct.ph7_value, ptr %1011, i32 0, i32 4
  %pBlob1623 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1622, i32 0, i32 1
  %1012 = load ptr, ptr %pBlob1623, align 8
  %1013 = load ptr, ptr %pNos1600, align 8
  %sBlob1624 = getelementptr inbounds nuw %struct.ph7_value, ptr %1013, i32 0, i32 4
  %nByte1625 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1624, i32 0, i32 2
  %1014 = load i32, ptr %nByte1625, align 8
  %call1626 = call i32 @PH7_MemObjStringAppend(ptr noundef %1010, ptr noundef %1012, i32 noundef %1014)
  br label %if.end1627

if.end1627:                                       ; preds = %if.then1621, %if.end1616
  %1015 = load ptr, ptr %pTos, align 8
  %nIdx1628 = getelementptr inbounds nuw %struct.ph7_value, ptr %1015, i32 0, i32 5
  %1016 = load i32, ptr %nIdx1628, align 8
  %cmp1629 = icmp eq i32 %1016, -1
  br i1 %cmp1629, label %if.then1631, label %if.else1633

if.then1631:                                      ; preds = %if.end1627
  %1017 = load ptr, ptr %pVm.addr, align 8
  %call1632 = call i32 @PH7_VmThrowError(ptr noundef %1017, ptr noundef null, i32 noundef 1, ptr noundef @.str.71)
  br label %if.end1642

if.else1633:                                      ; preds = %if.end1627
  %1018 = load ptr, ptr %pVm.addr, align 8
  %aMemObj1634 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1018, i32 0, i32 6
  %1019 = load ptr, ptr %pTos, align 8
  %nIdx1635 = getelementptr inbounds nuw %struct.ph7_value, ptr %1019, i32 0, i32 5
  %1020 = load i32, ptr %nIdx1635, align 8
  %call1636 = call ptr @SySetAt(ptr noundef %aMemObj1634, i32 noundef %1020)
  store ptr %call1636, ptr %pObj1602, align 8
  %cmp1637 = icmp ne ptr %call1636, null
  br i1 %cmp1637, label %if.then1639, label %if.end1641

if.then1639:                                      ; preds = %if.else1633
  %1021 = load ptr, ptr %pTos, align 8
  %1022 = load ptr, ptr %pObj1602, align 8
  %call1640 = call i32 @PH7_MemObjStore(ptr noundef %1021, ptr noundef %1022)
  br label %if.end1641

if.end1641:                                       ; preds = %if.then1639, %if.else1633
  br label %if.end1642

if.end1642:                                       ; preds = %if.end1641, %if.then1631
  %1023 = load ptr, ptr %pTos, align 8
  %1024 = load ptr, ptr %pNos1600, align 8
  %call1643 = call i32 @PH7_MemObjStore(ptr noundef %1023, ptr noundef %1024)
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb1644:                                        ; preds = %for.cond, %for.cond
  %1025 = load ptr, ptr %pTos, align 8
  %arrayidx1646 = getelementptr inbounds %struct.ph7_value, ptr %1025, i64 -1
  store ptr %arrayidx1646, ptr %pNos1645, align 8
  %1026 = load ptr, ptr %pTos, align 8
  %iFlags1647 = getelementptr inbounds nuw %struct.ph7_value, ptr %1026, i32 0, i32 2
  %1027 = load i32, ptr %iFlags1647, align 8
  %and1648 = and i32 %1027, 8
  %cmp1649 = icmp eq i32 %and1648, 0
  br i1 %cmp1649, label %if.then1651, label %if.end1653

if.then1651:                                      ; preds = %sw.bb1644
  %1028 = load ptr, ptr %pTos, align 8
  %call1652 = call i32 @PH7_MemObjToBool(ptr noundef %1028)
  br label %if.end1653

if.end1653:                                       ; preds = %if.then1651, %sw.bb1644
  %1029 = load ptr, ptr %pNos1645, align 8
  %iFlags1654 = getelementptr inbounds nuw %struct.ph7_value, ptr %1029, i32 0, i32 2
  %1030 = load i32, ptr %iFlags1654, align 8
  %and1655 = and i32 %1030, 8
  %cmp1656 = icmp eq i32 %and1655, 0
  br i1 %cmp1656, label %if.then1658, label %if.end1660

if.then1658:                                      ; preds = %if.end1653
  %1031 = load ptr, ptr %pNos1645, align 8
  %call1659 = call i32 @PH7_MemObjToBool(ptr noundef %1031)
  br label %if.end1660

if.end1660:                                       ; preds = %if.then1658, %if.end1653
  %1032 = load ptr, ptr %pNos1645, align 8
  %x1661 = getelementptr inbounds nuw %struct.ph7_value, ptr %1032, i32 0, i32 1
  %1033 = load i64, ptr %x1661, align 8
  %cmp1662 = icmp eq i64 %1033, 0
  %1034 = zext i1 %cmp1662 to i64
  %cond1664 = select i1 %cmp1662, i32 1, i32 0
  store i32 %cond1664, ptr %v1, align 4
  %1035 = load ptr, ptr %pTos, align 8
  %x1665 = getelementptr inbounds nuw %struct.ph7_value, ptr %1035, i32 0, i32 1
  %1036 = load i64, ptr %x1665, align 8
  %cmp1666 = icmp eq i64 %1036, 0
  %1037 = zext i1 %cmp1666 to i64
  %cond1668 = select i1 %cmp1666, i32 1, i32 0
  store i32 %cond1668, ptr %v2, align 4
  %1038 = load ptr, ptr %pInstr, align 8
  %iOp1669 = getelementptr inbounds nuw %struct.VmInstr, ptr %1038, i32 0, i32 0
  %1039 = load i8, ptr %iOp1669, align 8
  %conv1670 = zext i8 %1039 to i32
  %cmp1671 = icmp eq i32 %conv1670, 41
  br i1 %cmp1671, label %if.then1673, label %if.else1679

if.then1673:                                      ; preds = %if.end1660
  %1040 = load i32, ptr %v1, align 4
  %mul1674 = mul nsw i32 %1040, 3
  %1041 = load i32, ptr %v2, align 4
  %add1675 = add nsw i32 %mul1674, %1041
  %idxprom1676 = sext i32 %add1675 to i64
  %arrayidx1677 = getelementptr inbounds [9 x i8], ptr @VmByteCodeExec.and_logic, i64 0, i64 %idxprom1676
  %1042 = load i8, ptr %arrayidx1677, align 1
  %conv1678 = zext i8 %1042 to i32
  store i32 %conv1678, ptr %v1, align 4
  br label %if.end1685

if.else1679:                                      ; preds = %if.end1660
  %1043 = load i32, ptr %v1, align 4
  %mul1680 = mul nsw i32 %1043, 3
  %1044 = load i32, ptr %v2, align 4
  %add1681 = add nsw i32 %mul1680, %1044
  %idxprom1682 = sext i32 %add1681 to i64
  %arrayidx1683 = getelementptr inbounds [9 x i8], ptr @VmByteCodeExec.or_logic, i64 0, i64 %idxprom1682
  %1045 = load i8, ptr %arrayidx1683, align 1
  %conv1684 = zext i8 %1045 to i32
  store i32 %conv1684, ptr %v1, align 4
  br label %if.end1685

if.end1685:                                       ; preds = %if.else1679, %if.then1673
  %1046 = load i32, ptr %v1, align 4
  %cmp1686 = icmp eq i32 %1046, 2
  br i1 %cmp1686, label %if.then1688, label %if.end1689

if.then1688:                                      ; preds = %if.end1685
  store i32 1, ptr %v1, align 4
  br label %if.end1689

if.end1689:                                       ; preds = %if.then1688, %if.end1685
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1047 = load i32, ptr %v1, align 4
  %cmp1690 = icmp eq i32 %1047, 0
  %1048 = zext i1 %cmp1690 to i64
  %cond1692 = select i1 %cmp1690, i32 1, i32 0
  %conv1693 = sext i32 %cond1692 to i64
  %1049 = load ptr, ptr %pTos, align 8
  %x1694 = getelementptr inbounds nuw %struct.ph7_value, ptr %1049, i32 0, i32 1
  store i64 %conv1693, ptr %x1694, align 8
  %1050 = load ptr, ptr %pTos, align 8
  %iFlags1695 = getelementptr inbounds nuw %struct.ph7_value, ptr %1050, i32 0, i32 2
  %1051 = load i32, ptr %iFlags1695, align 8
  %and1696 = and i32 %1051, -496
  %or1697 = or i32 %and1696, 8
  %1052 = load ptr, ptr %pTos, align 8
  %iFlags1698 = getelementptr inbounds nuw %struct.ph7_value, ptr %1052, i32 0, i32 2
  store i32 %or1697, ptr %iFlags1698, align 8
  br label %sw.epilog3867

sw.bb1699:                                        ; preds = %for.cond
  %1053 = load ptr, ptr %pTos, align 8
  %arrayidx1701 = getelementptr inbounds %struct.ph7_value, ptr %1053, i64 -1
  store ptr %arrayidx1701, ptr %pNos1700, align 8
  store i32 0, ptr %v, align 4
  %1054 = load ptr, ptr %pTos, align 8
  %iFlags1702 = getelementptr inbounds nuw %struct.ph7_value, ptr %1054, i32 0, i32 2
  %1055 = load i32, ptr %iFlags1702, align 8
  %and1703 = and i32 %1055, 8
  %cmp1704 = icmp eq i32 %and1703, 0
  br i1 %cmp1704, label %if.then1706, label %if.end1708

if.then1706:                                      ; preds = %sw.bb1699
  %1056 = load ptr, ptr %pTos, align 8
  %call1707 = call i32 @PH7_MemObjToBool(ptr noundef %1056)
  br label %if.end1708

if.end1708:                                       ; preds = %if.then1706, %sw.bb1699
  %1057 = load ptr, ptr %pNos1700, align 8
  %iFlags1709 = getelementptr inbounds nuw %struct.ph7_value, ptr %1057, i32 0, i32 2
  %1058 = load i32, ptr %iFlags1709, align 8
  %and1710 = and i32 %1058, 8
  %cmp1711 = icmp eq i32 %and1710, 0
  br i1 %cmp1711, label %if.then1713, label %if.end1715

if.then1713:                                      ; preds = %if.end1708
  %1059 = load ptr, ptr %pNos1700, align 8
  %call1714 = call i32 @PH7_MemObjToBool(ptr noundef %1059)
  br label %if.end1715

if.end1715:                                       ; preds = %if.then1713, %if.end1708
  %1060 = load ptr, ptr %pNos1700, align 8
  %x1716 = getelementptr inbounds nuw %struct.ph7_value, ptr %1060, i32 0, i32 1
  %1061 = load i64, ptr %x1716, align 8
  %tobool1717 = icmp ne i64 %1061, 0
  br i1 %tobool1717, label %land.lhs.true1718, label %lor.lhs.false1721

land.lhs.true1718:                                ; preds = %if.end1715
  %1062 = load ptr, ptr %pTos, align 8
  %x1719 = getelementptr inbounds nuw %struct.ph7_value, ptr %1062, i32 0, i32 1
  %1063 = load i64, ptr %x1719, align 8
  %tobool1720 = icmp ne i64 %1063, 0
  br i1 %tobool1720, label %lor.lhs.false1721, label %if.then1727

lor.lhs.false1721:                                ; preds = %land.lhs.true1718, %if.end1715
  %1064 = load ptr, ptr %pTos, align 8
  %x1722 = getelementptr inbounds nuw %struct.ph7_value, ptr %1064, i32 0, i32 1
  %1065 = load i64, ptr %x1722, align 8
  %tobool1723 = icmp ne i64 %1065, 0
  br i1 %tobool1723, label %land.lhs.true1724, label %if.end1728

land.lhs.true1724:                                ; preds = %lor.lhs.false1721
  %1066 = load ptr, ptr %pNos1700, align 8
  %x1725 = getelementptr inbounds nuw %struct.ph7_value, ptr %1066, i32 0, i32 1
  %1067 = load i64, ptr %x1725, align 8
  %tobool1726 = icmp ne i64 %1067, 0
  br i1 %tobool1726, label %if.end1728, label %if.then1727

if.then1727:                                      ; preds = %land.lhs.true1724, %land.lhs.true1718
  store i32 1, ptr %v, align 4
  br label %if.end1728

if.end1728:                                       ; preds = %if.then1727, %land.lhs.true1724, %lor.lhs.false1721
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1068 = load i32, ptr %v, align 4
  %conv1729 = sext i32 %1068 to i64
  %1069 = load ptr, ptr %pTos, align 8
  %x1730 = getelementptr inbounds nuw %struct.ph7_value, ptr %1069, i32 0, i32 1
  store i64 %conv1729, ptr %x1730, align 8
  %1070 = load ptr, ptr %pTos, align 8
  %iFlags1731 = getelementptr inbounds nuw %struct.ph7_value, ptr %1070, i32 0, i32 2
  %1071 = load i32, ptr %iFlags1731, align 8
  %and1732 = and i32 %1071, -496
  %or1733 = or i32 %and1732, 8
  %1072 = load ptr, ptr %pTos, align 8
  %iFlags1734 = getelementptr inbounds nuw %struct.ph7_value, ptr %1072, i32 0, i32 2
  store i32 %or1733, ptr %iFlags1734, align 8
  br label %sw.epilog3867

sw.bb1735:                                        ; preds = %for.cond, %for.cond
  %1073 = load ptr, ptr %pTos, align 8
  %arrayidx1737 = getelementptr inbounds %struct.ph7_value, ptr %1073, i64 -1
  store ptr %arrayidx1737, ptr %pNos1736, align 8
  %1074 = load ptr, ptr %pNos1736, align 8
  %1075 = load ptr, ptr %pTos, align 8
  %call1738 = call i32 @PH7_MemObjCmp(ptr noundef %1074, ptr noundef %1075, i32 noundef 0, i32 noundef 0)
  store i32 %call1738, ptr %rc, align 4
  %1076 = load ptr, ptr %pInstr, align 8
  %iOp1739 = getelementptr inbounds nuw %struct.VmInstr, ptr %1076, i32 0, i32 0
  %1077 = load i8, ptr %iOp1739, align 8
  %conv1740 = zext i8 %1077 to i32
  %cmp1741 = icmp eq i32 %conv1740, 34
  br i1 %cmp1741, label %if.then1743, label %if.else1746

if.then1743:                                      ; preds = %sw.bb1735
  %1078 = load i32, ptr %rc, align 4
  %cmp1744 = icmp eq i32 %1078, 0
  %conv1745 = zext i1 %cmp1744 to i32
  store i32 %conv1745, ptr %rc, align 4
  br label %if.end1749

if.else1746:                                      ; preds = %sw.bb1735
  %1079 = load i32, ptr %rc, align 4
  %cmp1747 = icmp ne i32 %1079, 0
  %conv1748 = zext i1 %cmp1747 to i32
  store i32 %conv1748, ptr %rc, align 4
  br label %if.end1749

if.end1749:                                       ; preds = %if.else1746, %if.then1743
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1080 = load ptr, ptr %pInstr, align 8
  %iP21750 = getelementptr inbounds nuw %struct.VmInstr, ptr %1080, i32 0, i32 2
  %1081 = load i32, ptr %iP21750, align 8
  %tobool1751 = icmp ne i32 %1081, 0
  br i1 %tobool1751, label %if.else1760, label %if.then1752

if.then1752:                                      ; preds = %if.end1749
  %1082 = load ptr, ptr %pTos, align 8
  %call1753 = call i32 @PH7_MemObjRelease(ptr noundef %1082)
  %1083 = load i32, ptr %rc, align 4
  %conv1754 = sext i32 %1083 to i64
  %1084 = load ptr, ptr %pTos, align 8
  %x1755 = getelementptr inbounds nuw %struct.ph7_value, ptr %1084, i32 0, i32 1
  store i64 %conv1754, ptr %x1755, align 8
  %1085 = load ptr, ptr %pTos, align 8
  %iFlags1756 = getelementptr inbounds nuw %struct.ph7_value, ptr %1085, i32 0, i32 2
  %1086 = load i32, ptr %iFlags1756, align 8
  %and1757 = and i32 %1086, -496
  %or1758 = or i32 %and1757, 8
  %1087 = load ptr, ptr %pTos, align 8
  %iFlags1759 = getelementptr inbounds nuw %struct.ph7_value, ptr %1087, i32 0, i32 2
  store i32 %or1758, ptr %iFlags1759, align 8
  br label %if.end1766

if.else1760:                                      ; preds = %if.end1749
  %1088 = load i32, ptr %rc, align 4
  %tobool1761 = icmp ne i32 %1088, 0
  br i1 %tobool1761, label %if.then1762, label %if.end1765

if.then1762:                                      ; preds = %if.else1760
  %1089 = load ptr, ptr %pInstr, align 8
  %iP21763 = getelementptr inbounds nuw %struct.VmInstr, ptr %1089, i32 0, i32 2
  %1090 = load i32, ptr %iP21763, align 8
  %sub1764 = sub i32 %1090, 1
  store i32 %sub1764, ptr %pc, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end1765

if.end1765:                                       ; preds = %if.then1762, %if.else1760
  br label %if.end1766

if.end1766:                                       ; preds = %if.end1765, %if.then1752
  br label %sw.epilog3867

sw.bb1767:                                        ; preds = %for.cond
  %1091 = load ptr, ptr %pTos, align 8
  %arrayidx1769 = getelementptr inbounds %struct.ph7_value, ptr %1091, i64 -1
  store ptr %arrayidx1769, ptr %pNos1768, align 8
  %1092 = load ptr, ptr %pNos1768, align 8
  %1093 = load ptr, ptr %pTos, align 8
  %call1770 = call i32 @PH7_MemObjCmp(ptr noundef %1092, ptr noundef %1093, i32 noundef 1, i32 noundef 0)
  %cmp1771 = icmp eq i32 %call1770, 0
  %conv1772 = zext i1 %cmp1771 to i32
  store i32 %conv1772, ptr %rc, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1094 = load ptr, ptr %pInstr, align 8
  %iP21773 = getelementptr inbounds nuw %struct.VmInstr, ptr %1094, i32 0, i32 2
  %1095 = load i32, ptr %iP21773, align 8
  %tobool1774 = icmp ne i32 %1095, 0
  br i1 %tobool1774, label %if.else1783, label %if.then1775

if.then1775:                                      ; preds = %sw.bb1767
  %1096 = load ptr, ptr %pTos, align 8
  %call1776 = call i32 @PH7_MemObjRelease(ptr noundef %1096)
  %1097 = load i32, ptr %rc, align 4
  %conv1777 = sext i32 %1097 to i64
  %1098 = load ptr, ptr %pTos, align 8
  %x1778 = getelementptr inbounds nuw %struct.ph7_value, ptr %1098, i32 0, i32 1
  store i64 %conv1777, ptr %x1778, align 8
  %1099 = load ptr, ptr %pTos, align 8
  %iFlags1779 = getelementptr inbounds nuw %struct.ph7_value, ptr %1099, i32 0, i32 2
  %1100 = load i32, ptr %iFlags1779, align 8
  %and1780 = and i32 %1100, -496
  %or1781 = or i32 %and1780, 8
  %1101 = load ptr, ptr %pTos, align 8
  %iFlags1782 = getelementptr inbounds nuw %struct.ph7_value, ptr %1101, i32 0, i32 2
  store i32 %or1781, ptr %iFlags1782, align 8
  br label %if.end1789

if.else1783:                                      ; preds = %sw.bb1767
  %1102 = load i32, ptr %rc, align 4
  %tobool1784 = icmp ne i32 %1102, 0
  br i1 %tobool1784, label %if.then1785, label %if.end1788

if.then1785:                                      ; preds = %if.else1783
  %1103 = load ptr, ptr %pInstr, align 8
  %iP21786 = getelementptr inbounds nuw %struct.VmInstr, ptr %1103, i32 0, i32 2
  %1104 = load i32, ptr %iP21786, align 8
  %sub1787 = sub i32 %1104, 1
  store i32 %sub1787, ptr %pc, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end1788

if.end1788:                                       ; preds = %if.then1785, %if.else1783
  br label %if.end1789

if.end1789:                                       ; preds = %if.end1788, %if.then1775
  br label %sw.epilog3867

sw.bb1790:                                        ; preds = %for.cond
  %1105 = load ptr, ptr %pTos, align 8
  %arrayidx1792 = getelementptr inbounds %struct.ph7_value, ptr %1105, i64 -1
  store ptr %arrayidx1792, ptr %pNos1791, align 8
  %1106 = load ptr, ptr %pNos1791, align 8
  %1107 = load ptr, ptr %pTos, align 8
  %call1793 = call i32 @PH7_MemObjCmp(ptr noundef %1106, ptr noundef %1107, i32 noundef 1, i32 noundef 0)
  %cmp1794 = icmp ne i32 %call1793, 0
  %conv1795 = zext i1 %cmp1794 to i32
  store i32 %conv1795, ptr %rc, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1108 = load ptr, ptr %pInstr, align 8
  %iP21796 = getelementptr inbounds nuw %struct.VmInstr, ptr %1108, i32 0, i32 2
  %1109 = load i32, ptr %iP21796, align 8
  %tobool1797 = icmp ne i32 %1109, 0
  br i1 %tobool1797, label %if.else1806, label %if.then1798

if.then1798:                                      ; preds = %sw.bb1790
  %1110 = load ptr, ptr %pTos, align 8
  %call1799 = call i32 @PH7_MemObjRelease(ptr noundef %1110)
  %1111 = load i32, ptr %rc, align 4
  %conv1800 = sext i32 %1111 to i64
  %1112 = load ptr, ptr %pTos, align 8
  %x1801 = getelementptr inbounds nuw %struct.ph7_value, ptr %1112, i32 0, i32 1
  store i64 %conv1800, ptr %x1801, align 8
  %1113 = load ptr, ptr %pTos, align 8
  %iFlags1802 = getelementptr inbounds nuw %struct.ph7_value, ptr %1113, i32 0, i32 2
  %1114 = load i32, ptr %iFlags1802, align 8
  %and1803 = and i32 %1114, -496
  %or1804 = or i32 %and1803, 8
  %1115 = load ptr, ptr %pTos, align 8
  %iFlags1805 = getelementptr inbounds nuw %struct.ph7_value, ptr %1115, i32 0, i32 2
  store i32 %or1804, ptr %iFlags1805, align 8
  br label %if.end1812

if.else1806:                                      ; preds = %sw.bb1790
  %1116 = load i32, ptr %rc, align 4
  %tobool1807 = icmp ne i32 %1116, 0
  br i1 %tobool1807, label %if.then1808, label %if.end1811

if.then1808:                                      ; preds = %if.else1806
  %1117 = load ptr, ptr %pInstr, align 8
  %iP21809 = getelementptr inbounds nuw %struct.VmInstr, ptr %1117, i32 0, i32 2
  %1118 = load i32, ptr %iP21809, align 8
  %sub1810 = sub i32 %1118, 1
  store i32 %sub1810, ptr %pc, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end1811

if.end1811:                                       ; preds = %if.then1808, %if.else1806
  br label %if.end1812

if.end1812:                                       ; preds = %if.end1811, %if.then1798
  br label %sw.epilog3867

sw.bb1813:                                        ; preds = %for.cond, %for.cond
  %1119 = load ptr, ptr %pTos, align 8
  %arrayidx1815 = getelementptr inbounds %struct.ph7_value, ptr %1119, i64 -1
  store ptr %arrayidx1815, ptr %pNos1814, align 8
  %1120 = load ptr, ptr %pNos1814, align 8
  %1121 = load ptr, ptr %pTos, align 8
  %call1816 = call i32 @PH7_MemObjCmp(ptr noundef %1120, ptr noundef %1121, i32 noundef 0, i32 noundef 0)
  store i32 %call1816, ptr %rc, align 4
  %1122 = load ptr, ptr %pInstr, align 8
  %iOp1817 = getelementptr inbounds nuw %struct.VmInstr, ptr %1122, i32 0, i32 0
  %1123 = load i8, ptr %iOp1817, align 8
  %conv1818 = zext i8 %1123 to i32
  %cmp1819 = icmp eq i32 %conv1818, 31
  br i1 %cmp1819, label %if.then1821, label %if.else1824

if.then1821:                                      ; preds = %sw.bb1813
  %1124 = load i32, ptr %rc, align 4
  %cmp1822 = icmp slt i32 %1124, 1
  %conv1823 = zext i1 %cmp1822 to i32
  store i32 %conv1823, ptr %rc, align 4
  br label %if.end1827

if.else1824:                                      ; preds = %sw.bb1813
  %1125 = load i32, ptr %rc, align 4
  %cmp1825 = icmp slt i32 %1125, 0
  %conv1826 = zext i1 %cmp1825 to i32
  store i32 %conv1826, ptr %rc, align 4
  br label %if.end1827

if.end1827:                                       ; preds = %if.else1824, %if.then1821
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1126 = load ptr, ptr %pInstr, align 8
  %iP21828 = getelementptr inbounds nuw %struct.VmInstr, ptr %1126, i32 0, i32 2
  %1127 = load i32, ptr %iP21828, align 8
  %tobool1829 = icmp ne i32 %1127, 0
  br i1 %tobool1829, label %if.else1838, label %if.then1830

if.then1830:                                      ; preds = %if.end1827
  %1128 = load ptr, ptr %pTos, align 8
  %call1831 = call i32 @PH7_MemObjRelease(ptr noundef %1128)
  %1129 = load i32, ptr %rc, align 4
  %conv1832 = sext i32 %1129 to i64
  %1130 = load ptr, ptr %pTos, align 8
  %x1833 = getelementptr inbounds nuw %struct.ph7_value, ptr %1130, i32 0, i32 1
  store i64 %conv1832, ptr %x1833, align 8
  %1131 = load ptr, ptr %pTos, align 8
  %iFlags1834 = getelementptr inbounds nuw %struct.ph7_value, ptr %1131, i32 0, i32 2
  %1132 = load i32, ptr %iFlags1834, align 8
  %and1835 = and i32 %1132, -496
  %or1836 = or i32 %and1835, 8
  %1133 = load ptr, ptr %pTos, align 8
  %iFlags1837 = getelementptr inbounds nuw %struct.ph7_value, ptr %1133, i32 0, i32 2
  store i32 %or1836, ptr %iFlags1837, align 8
  br label %if.end1844

if.else1838:                                      ; preds = %if.end1827
  %1134 = load i32, ptr %rc, align 4
  %tobool1839 = icmp ne i32 %1134, 0
  br i1 %tobool1839, label %if.then1840, label %if.end1843

if.then1840:                                      ; preds = %if.else1838
  %1135 = load ptr, ptr %pInstr, align 8
  %iP21841 = getelementptr inbounds nuw %struct.VmInstr, ptr %1135, i32 0, i32 2
  %1136 = load i32, ptr %iP21841, align 8
  %sub1842 = sub i32 %1136, 1
  store i32 %sub1842, ptr %pc, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end1843

if.end1843:                                       ; preds = %if.then1840, %if.else1838
  br label %if.end1844

if.end1844:                                       ; preds = %if.end1843, %if.then1830
  br label %sw.epilog3867

sw.bb1845:                                        ; preds = %for.cond, %for.cond
  %1137 = load ptr, ptr %pTos, align 8
  %arrayidx1847 = getelementptr inbounds %struct.ph7_value, ptr %1137, i64 -1
  store ptr %arrayidx1847, ptr %pNos1846, align 8
  %1138 = load ptr, ptr %pNos1846, align 8
  %1139 = load ptr, ptr %pTos, align 8
  %call1848 = call i32 @PH7_MemObjCmp(ptr noundef %1138, ptr noundef %1139, i32 noundef 0, i32 noundef 0)
  store i32 %call1848, ptr %rc, align 4
  %1140 = load ptr, ptr %pInstr, align 8
  %iOp1849 = getelementptr inbounds nuw %struct.VmInstr, ptr %1140, i32 0, i32 0
  %1141 = load i8, ptr %iOp1849, align 8
  %conv1850 = zext i8 %1141 to i32
  %cmp1851 = icmp eq i32 %conv1850, 33
  br i1 %cmp1851, label %if.then1853, label %if.else1856

if.then1853:                                      ; preds = %sw.bb1845
  %1142 = load i32, ptr %rc, align 4
  %cmp1854 = icmp sge i32 %1142, 0
  %conv1855 = zext i1 %cmp1854 to i32
  store i32 %conv1855, ptr %rc, align 4
  br label %if.end1859

if.else1856:                                      ; preds = %sw.bb1845
  %1143 = load i32, ptr %rc, align 4
  %cmp1857 = icmp sgt i32 %1143, 0
  %conv1858 = zext i1 %cmp1857 to i32
  store i32 %conv1858, ptr %rc, align 4
  br label %if.end1859

if.end1859:                                       ; preds = %if.else1856, %if.then1853
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1144 = load ptr, ptr %pInstr, align 8
  %iP21860 = getelementptr inbounds nuw %struct.VmInstr, ptr %1144, i32 0, i32 2
  %1145 = load i32, ptr %iP21860, align 8
  %tobool1861 = icmp ne i32 %1145, 0
  br i1 %tobool1861, label %if.else1870, label %if.then1862

if.then1862:                                      ; preds = %if.end1859
  %1146 = load ptr, ptr %pTos, align 8
  %call1863 = call i32 @PH7_MemObjRelease(ptr noundef %1146)
  %1147 = load i32, ptr %rc, align 4
  %conv1864 = sext i32 %1147 to i64
  %1148 = load ptr, ptr %pTos, align 8
  %x1865 = getelementptr inbounds nuw %struct.ph7_value, ptr %1148, i32 0, i32 1
  store i64 %conv1864, ptr %x1865, align 8
  %1149 = load ptr, ptr %pTos, align 8
  %iFlags1866 = getelementptr inbounds nuw %struct.ph7_value, ptr %1149, i32 0, i32 2
  %1150 = load i32, ptr %iFlags1866, align 8
  %and1867 = and i32 %1150, -496
  %or1868 = or i32 %and1867, 8
  %1151 = load ptr, ptr %pTos, align 8
  %iFlags1869 = getelementptr inbounds nuw %struct.ph7_value, ptr %1151, i32 0, i32 2
  store i32 %or1868, ptr %iFlags1869, align 8
  br label %if.end1876

if.else1870:                                      ; preds = %if.end1859
  %1152 = load i32, ptr %rc, align 4
  %tobool1871 = icmp ne i32 %1152, 0
  br i1 %tobool1871, label %if.then1872, label %if.end1875

if.then1872:                                      ; preds = %if.else1870
  %1153 = load ptr, ptr %pInstr, align 8
  %iP21873 = getelementptr inbounds nuw %struct.VmInstr, ptr %1153, i32 0, i32 2
  %1154 = load i32, ptr %iP21873, align 8
  %sub1874 = sub i32 %1154, 1
  store i32 %sub1874, ptr %pc, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end1875

if.end1875:                                       ; preds = %if.then1872, %if.else1870
  br label %if.end1876

if.end1876:                                       ; preds = %if.end1875, %if.then1862
  br label %sw.epilog3867

sw.bb1877:                                        ; preds = %for.cond, %for.cond
  %1155 = load ptr, ptr %pTos, align 8
  %arrayidx1879 = getelementptr inbounds %struct.ph7_value, ptr %1155, i64 -1
  store ptr %arrayidx1879, ptr %pNos1878, align 8
  %1156 = load ptr, ptr %pTos, align 8
  %iFlags1880 = getelementptr inbounds nuw %struct.ph7_value, ptr %1156, i32 0, i32 2
  %1157 = load i32, ptr %iFlags1880, align 8
  %and1881 = and i32 %1157, 1
  %cmp1882 = icmp eq i32 %and1881, 0
  br i1 %cmp1882, label %if.then1884, label %if.end1886

if.then1884:                                      ; preds = %sw.bb1877
  %1158 = load ptr, ptr %pTos, align 8
  %call1885 = call i32 @PH7_MemObjToString(ptr noundef %1158)
  br label %if.end1886

if.end1886:                                       ; preds = %if.then1884, %sw.bb1877
  %1159 = load ptr, ptr %pNos1878, align 8
  %iFlags1887 = getelementptr inbounds nuw %struct.ph7_value, ptr %1159, i32 0, i32 2
  %1160 = load i32, ptr %iFlags1887, align 8
  %and1888 = and i32 %1160, 1
  %cmp1889 = icmp eq i32 %and1888, 0
  br i1 %cmp1889, label %if.then1891, label %if.end1893

if.then1891:                                      ; preds = %if.end1886
  %1161 = load ptr, ptr %pNos1878, align 8
  %call1892 = call i32 @PH7_MemObjToString(ptr noundef %1161)
  br label %if.end1893

if.end1893:                                       ; preds = %if.then1891, %if.end1886
  %1162 = load ptr, ptr %pNos1878, align 8
  %sBlob1894 = getelementptr inbounds nuw %struct.ph7_value, ptr %1162, i32 0, i32 4
  %pBlob1895 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1894, i32 0, i32 1
  %1163 = load ptr, ptr %pBlob1895, align 8
  %zString1896 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 0
  store ptr %1163, ptr %zString1896, align 8
  %1164 = load ptr, ptr %pNos1878, align 8
  %sBlob1897 = getelementptr inbounds nuw %struct.ph7_value, ptr %1164, i32 0, i32 4
  %nByte1898 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1897, i32 0, i32 2
  %1165 = load i32, ptr %nByte1898, align 8
  %nByte1899 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 1
  store i32 %1165, ptr %nByte1899, align 8
  %1166 = load ptr, ptr %pTos, align 8
  %sBlob1900 = getelementptr inbounds nuw %struct.ph7_value, ptr %1166, i32 0, i32 4
  %pBlob1901 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1900, i32 0, i32 1
  %1167 = load ptr, ptr %pBlob1901, align 8
  %zString1902 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 0
  store ptr %1167, ptr %zString1902, align 8
  %1168 = load ptr, ptr %pTos, align 8
  %sBlob1903 = getelementptr inbounds nuw %struct.ph7_value, ptr %1168, i32 0, i32 4
  %nByte1904 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1903, i32 0, i32 2
  %1169 = load i32, ptr %nByte1904, align 8
  %nByte1905 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  store i32 %1169, ptr %nByte1905, align 8
  %nByte1906 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 1
  %1170 = load i32, ptr %nByte1906, align 8
  %nByte1907 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  %1171 = load i32, ptr %nByte1907, align 8
  %cmp1908 = icmp eq i32 %1170, %1171
  br i1 %cmp1908, label %cond.true1910, label %cond.false1915

cond.true1910:                                    ; preds = %if.end1893
  %zString1911 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 0
  %1172 = load ptr, ptr %zString1911, align 8
  %zString1912 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 0
  %1173 = load ptr, ptr %zString1912, align 8
  %nByte1913 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  %1174 = load i32, ptr %nByte1913, align 8
  %call1914 = call i32 @SyMemcmp(ptr noundef %1172, ptr noundef %1173, i32 noundef %1174)
  br label %cond.end1919

cond.false1915:                                   ; preds = %if.end1893
  %nByte1916 = getelementptr inbounds nuw %struct.SyString, ptr %s1, i32 0, i32 1
  %1175 = load i32, ptr %nByte1916, align 8
  %nByte1917 = getelementptr inbounds nuw %struct.SyString, ptr %s2, i32 0, i32 1
  %1176 = load i32, ptr %nByte1917, align 8
  %sub1918 = sub i32 %1175, %1176
  br label %cond.end1919

cond.end1919:                                     ; preds = %cond.false1915, %cond.true1910
  %cond1920 = phi i32 [ %call1914, %cond.true1910 ], [ %sub1918, %cond.false1915 ]
  store i32 %cond1920, ptr %rc, align 4
  %1177 = load ptr, ptr %pInstr, align 8
  %iOp1921 = getelementptr inbounds nuw %struct.VmInstr, ptr %1177, i32 0, i32 0
  %1178 = load i8, ptr %iOp1921, align 8
  %conv1922 = zext i8 %1178 to i32
  %cmp1923 = icmp eq i32 %conv1922, 35
  br i1 %cmp1923, label %if.then1925, label %if.else1928

if.then1925:                                      ; preds = %cond.end1919
  %1179 = load i32, ptr %rc, align 4
  %cmp1926 = icmp ne i32 %1179, 0
  %conv1927 = zext i1 %cmp1926 to i32
  store i32 %conv1927, ptr %rc, align 4
  br label %if.end1931

if.else1928:                                      ; preds = %cond.end1919
  %1180 = load i32, ptr %rc, align 4
  %cmp1929 = icmp eq i32 %1180, 0
  %conv1930 = zext i1 %cmp1929 to i32
  store i32 %conv1930, ptr %rc, align 4
  br label %if.end1931

if.end1931:                                       ; preds = %if.else1928, %if.then1925
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1181 = load ptr, ptr %pInstr, align 8
  %iP21932 = getelementptr inbounds nuw %struct.VmInstr, ptr %1181, i32 0, i32 2
  %1182 = load i32, ptr %iP21932, align 8
  %tobool1933 = icmp ne i32 %1182, 0
  br i1 %tobool1933, label %if.else1942, label %if.then1934

if.then1934:                                      ; preds = %if.end1931
  %1183 = load ptr, ptr %pTos, align 8
  %call1935 = call i32 @PH7_MemObjRelease(ptr noundef %1183)
  %1184 = load i32, ptr %rc, align 4
  %conv1936 = sext i32 %1184 to i64
  %1185 = load ptr, ptr %pTos, align 8
  %x1937 = getelementptr inbounds nuw %struct.ph7_value, ptr %1185, i32 0, i32 1
  store i64 %conv1936, ptr %x1937, align 8
  %1186 = load ptr, ptr %pTos, align 8
  %iFlags1938 = getelementptr inbounds nuw %struct.ph7_value, ptr %1186, i32 0, i32 2
  %1187 = load i32, ptr %iFlags1938, align 8
  %and1939 = and i32 %1187, -496
  %or1940 = or i32 %and1939, 8
  %1188 = load ptr, ptr %pTos, align 8
  %iFlags1941 = getelementptr inbounds nuw %struct.ph7_value, ptr %1188, i32 0, i32 2
  store i32 %or1940, ptr %iFlags1941, align 8
  br label %if.end1948

if.else1942:                                      ; preds = %if.end1931
  %1189 = load i32, ptr %rc, align 4
  %tobool1943 = icmp ne i32 %1189, 0
  br i1 %tobool1943, label %if.then1944, label %if.end1947

if.then1944:                                      ; preds = %if.else1942
  %1190 = load ptr, ptr %pInstr, align 8
  %iP21945 = getelementptr inbounds nuw %struct.VmInstr, ptr %1190, i32 0, i32 2
  %1191 = load i32, ptr %iP21945, align 8
  %sub1946 = sub i32 %1191, 1
  store i32 %sub1946, ptr %pc, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end1947

if.end1947:                                       ; preds = %if.then1944, %if.else1942
  br label %if.end1948

if.end1948:                                       ; preds = %if.end1947, %if.then1934
  br label %sw.epilog3867

sw.bb1949:                                        ; preds = %for.cond
  %1192 = load ptr, ptr %pTos, align 8
  %nIdx1951 = getelementptr inbounds nuw %struct.ph7_value, ptr %1192, i32 0, i32 5
  %1193 = load i32, ptr %nIdx1951, align 8
  store i32 %1193, ptr %nIdx1950, align 4
  %1194 = load i32, ptr %nIdx1950, align 4
  %cmp1952 = icmp ne i32 %1194, -1
  br i1 %cmp1952, label %if.then1954, label %if.end1960

if.then1954:                                      ; preds = %sw.bb1949
  %1195 = load ptr, ptr %pTos, align 8
  %call1955 = call i32 @PH7_MemObjRelease(ptr noundef %1195)
  %1196 = load i32, ptr %nIdx1950, align 4
  %conv1956 = zext i32 %1196 to i64
  %1197 = load ptr, ptr %pTos, align 8
  %x1957 = getelementptr inbounds nuw %struct.ph7_value, ptr %1197, i32 0, i32 1
  store i64 %conv1956, ptr %x1957, align 8
  %1198 = load ptr, ptr %pTos, align 8
  %nIdx1958 = getelementptr inbounds nuw %struct.ph7_value, ptr %1198, i32 0, i32 5
  store i32 -1, ptr %nIdx1958, align 8
  %1199 = load ptr, ptr %pTos, align 8
  %iFlags1959 = getelementptr inbounds nuw %struct.ph7_value, ptr %1199, i32 0, i32 2
  store i32 1026, ptr %iFlags1959, align 8
  br label %if.end1960

if.end1960:                                       ; preds = %if.then1954, %sw.bb1949
  br label %sw.epilog3867

sw.bb1961:                                        ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr align 8 %sName1962, i8 0, i64 16, i1 false)
  %1200 = load ptr, ptr %pInstr, align 8
  %p31965 = getelementptr inbounds nuw %struct.VmInstr, ptr %1200, i32 0, i32 3
  %1201 = load ptr, ptr %p31965, align 8
  %cmp1966 = icmp eq ptr %1201, null
  br i1 %cmp1966, label %if.then1968, label %if.else1998

if.then1968:                                      ; preds = %sw.bb1961
  %1202 = load ptr, ptr %pTos, align 8
  %iFlags1970 = getelementptr inbounds nuw %struct.ph7_value, ptr %1202, i32 0, i32 2
  %1203 = load i32, ptr %iFlags1970, align 8
  %and1971 = and i32 %1203, 1
  %cmp1972 = icmp eq i32 %and1971, 0
  br i1 %cmp1972, label %if.then1974, label %if.end1976

if.then1974:                                      ; preds = %if.then1968
  %1204 = load ptr, ptr %pTos, align 8
  %call1975 = call i32 @PH7_MemObjToString(ptr noundef %1204)
  br label %if.end1976

if.end1976:                                       ; preds = %if.then1974, %if.then1968
  %1205 = load ptr, ptr %pTos, align 8
  %sBlob1977 = getelementptr inbounds nuw %struct.ph7_value, ptr %1205, i32 0, i32 4
  %nByte1978 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1977, i32 0, i32 2
  %1206 = load i32, ptr %nByte1978, align 8
  %cmp1979 = icmp ugt i32 %1206, 0
  br i1 %cmp1979, label %if.then1981, label %if.end1995

if.then1981:                                      ; preds = %if.end1976
  %1207 = load ptr, ptr %pVm.addr, align 8
  %sAllocator1982 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1207, i32 0, i32 0
  %1208 = load ptr, ptr %pTos, align 8
  %sBlob1983 = getelementptr inbounds nuw %struct.ph7_value, ptr %1208, i32 0, i32 4
  %pBlob1984 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1983, i32 0, i32 1
  %1209 = load ptr, ptr %pBlob1984, align 8
  %1210 = load ptr, ptr %pTos, align 8
  %sBlob1985 = getelementptr inbounds nuw %struct.ph7_value, ptr %1210, i32 0, i32 4
  %nByte1986 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1985, i32 0, i32 2
  %1211 = load i32, ptr %nByte1986, align 8
  %call1987 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator1982, ptr noundef %1209, i32 noundef %1211)
  store ptr %call1987, ptr %zName1969, align 8
  %1212 = load ptr, ptr %zName1969, align 8
  %tobool1988 = icmp ne ptr %1212, null
  br i1 %tobool1988, label %if.then1989, label %if.end1994

if.then1989:                                      ; preds = %if.then1981
  %1213 = load ptr, ptr %zName1969, align 8
  %zString1990 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 0
  store ptr %1213, ptr %zString1990, align 8
  %1214 = load ptr, ptr %pTos, align 8
  %sBlob1991 = getelementptr inbounds nuw %struct.ph7_value, ptr %1214, i32 0, i32 4
  %nByte1992 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1991, i32 0, i32 2
  %1215 = load i32, ptr %nByte1992, align 8
  %nByte1993 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 1
  store i32 %1215, ptr %nByte1993, align 8
  br label %if.end1994

if.end1994:                                       ; preds = %if.then1989, %if.then1981
  br label %if.end1995

if.end1995:                                       ; preds = %if.end1994, %if.end1976
  %1216 = load ptr, ptr %pTos, align 8
  %call1996 = call i32 @PH7_MemObjRelease(ptr noundef %1216)
  %1217 = load ptr, ptr %pTos, align 8
  %incdec.ptr1997 = getelementptr inbounds %struct.ph7_value, ptr %1217, i32 -1
  store ptr %incdec.ptr1997, ptr %pTos, align 8
  br label %if.end2004

if.else1998:                                      ; preds = %sw.bb1961
  %1218 = load ptr, ptr %pInstr, align 8
  %p31999 = getelementptr inbounds nuw %struct.VmInstr, ptr %1218, i32 0, i32 3
  %1219 = load ptr, ptr %p31999, align 8
  %zString2000 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 0
  store ptr %1219, ptr %zString2000, align 8
  %1220 = load ptr, ptr %pInstr, align 8
  %p32001 = getelementptr inbounds nuw %struct.VmInstr, ptr %1220, i32 0, i32 3
  %1221 = load ptr, ptr %p32001, align 8
  %call2002 = call i32 @SyStrlen(ptr noundef %1221)
  %nByte2003 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 1
  store i32 %call2002, ptr %nByte2003, align 8
  br label %if.end2004

if.end2004:                                       ; preds = %if.else1998, %if.end1995
  %1222 = load ptr, ptr %pTos, align 8
  %nIdx2005 = getelementptr inbounds nuw %struct.ph7_value, ptr %1222, i32 0, i32 5
  %1223 = load i32, ptr %nIdx2005, align 8
  store i32 %1223, ptr %nIdx1964, align 4
  %1224 = load i32, ptr %nIdx1964, align 4
  %cmp2006 = icmp eq i32 %1224, -1
  br i1 %cmp2006, label %if.then2008, label %if.else2027

if.then2008:                                      ; preds = %if.end2004
  %1225 = load ptr, ptr %pTos, align 8
  %iFlags2009 = getelementptr inbounds nuw %struct.ph7_value, ptr %1225, i32 0, i32 2
  %1226 = load i32, ptr %iFlags2009, align 8
  %and2010 = and i32 %1226, 448
  %cmp2011 = icmp eq i32 %and2010, 0
  br i1 %cmp2011, label %if.then2013, label %if.else2015

if.then2013:                                      ; preds = %if.then2008
  %1227 = load ptr, ptr %pVm.addr, align 8
  %call2014 = call i32 @PH7_VmThrowError(ptr noundef %1227, ptr noundef null, i32 noundef 1, ptr noundef @.str.75)
  br label %if.end2026

if.else2015:                                      ; preds = %if.then2008
  %1228 = load ptr, ptr %pVm.addr, align 8
  %call2017 = call ptr @VmExtractMemObj(ptr noundef %1228, ptr noundef %sName1962, i32 noundef 0, i32 noundef 1)
  store ptr %call2017, ptr %pObj2016, align 8
  %1229 = load ptr, ptr %pObj2016, align 8
  %cmp2018 = icmp eq ptr %1229, null
  br i1 %cmp2018, label %if.then2020, label %if.end2022

if.then2020:                                      ; preds = %if.else2015
  %1230 = load ptr, ptr %pVm.addr, align 8
  %call2021 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1230, i32 noundef 1, ptr noundef @.str.63, ptr noundef %sName1962)
  br label %Abort

if.end2022:                                       ; preds = %if.else2015
  %1231 = load ptr, ptr %pTos, align 8
  %1232 = load ptr, ptr %pObj2016, align 8
  %call2023 = call i32 @PH7_MemObjStore(ptr noundef %1231, ptr noundef %1232)
  %1233 = load ptr, ptr %pObj2016, align 8
  %nIdx2024 = getelementptr inbounds nuw %struct.ph7_value, ptr %1233, i32 0, i32 5
  %1234 = load i32, ptr %nIdx2024, align 8
  %1235 = load ptr, ptr %pTos, align 8
  %nIdx2025 = getelementptr inbounds nuw %struct.ph7_value, ptr %1235, i32 0, i32 5
  store i32 %1234, ptr %nIdx2025, align 8
  br label %if.end2026

if.end2026:                                       ; preds = %if.end2022, %if.then2013
  br label %if.end2084

if.else2027:                                      ; preds = %if.end2004
  %nByte2028 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 1
  %1236 = load i32, ptr %nByte2028, align 8
  %cmp2029 = icmp ugt i32 %1236, 0
  br i1 %cmp2029, label %if.then2031, label %if.end2083

if.then2031:                                      ; preds = %if.else2027
  %1237 = load ptr, ptr %pTos, align 8
  %iFlags2032 = getelementptr inbounds nuw %struct.ph7_value, ptr %1237, i32 0, i32 2
  %1238 = load i32, ptr %iFlags2032, align 8
  %and2033 = and i32 %1238, 64
  %tobool2034 = icmp ne i32 %and2033, 0
  br i1 %tobool2034, label %land.lhs.true2035, label %if.else2041

land.lhs.true2035:                                ; preds = %if.then2031
  %1239 = load ptr, ptr %pVm.addr, align 8
  %pGlobal = getelementptr inbounds nuw %struct.ph7_vm, ptr %1239, i32 0, i32 51
  %1240 = load ptr, ptr %pGlobal, align 8
  %1241 = load ptr, ptr %pTos, align 8
  %x2036 = getelementptr inbounds nuw %struct.ph7_value, ptr %1241, i32 0, i32 1
  %1242 = load ptr, ptr %x2036, align 8
  %cmp2037 = icmp eq ptr %1240, %1242
  br i1 %cmp2037, label %if.then2039, label %if.else2041

if.then2039:                                      ; preds = %land.lhs.true2035
  %1243 = load ptr, ptr %pVm.addr, align 8
  %call2040 = call i32 @PH7_VmThrowError(ptr noundef %1243, ptr noundef null, i32 noundef 1, ptr noundef @.str.76)
  br label %if.end2082

if.else2041:                                      ; preds = %land.lhs.true2035, %if.then2031
  %1244 = load ptr, ptr %pVm.addr, align 8
  %pFrame2042 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1244, i32 0, i32 4
  %1245 = load ptr, ptr %pFrame2042, align 8
  store ptr %1245, ptr %pFrame, align 8
  br label %while.cond2043

while.cond2043:                                   ; preds = %while.body2050, %if.else2041
  %1246 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %1246, i32 0, i32 0
  %1247 = load ptr, ptr %pParent, align 8
  %tobool2044 = icmp ne ptr %1247, null
  br i1 %tobool2044, label %land.rhs2045, label %land.end2049

land.rhs2045:                                     ; preds = %while.cond2043
  %1248 = load ptr, ptr %pFrame, align 8
  %iFlags2046 = getelementptr inbounds nuw %struct.VmFrame, ptr %1248, i32 0, i32 8
  %1249 = load i32, ptr %iFlags2046, align 8
  %and2047 = and i32 %1249, 1
  %tobool2048 = icmp ne i32 %and2047, 0
  br label %land.end2049

land.end2049:                                     ; preds = %land.rhs2045, %while.cond2043
  %1250 = phi i1 [ false, %while.cond2043 ], [ %tobool2048, %land.rhs2045 ]
  br i1 %1250, label %while.body2050, label %while.end2052

while.body2050:                                   ; preds = %land.end2049
  %1251 = load ptr, ptr %pFrame, align 8
  %pParent2051 = getelementptr inbounds nuw %struct.VmFrame, ptr %1251, i32 0, i32 0
  %1252 = load ptr, ptr %pParent2051, align 8
  store ptr %1252, ptr %pFrame, align 8
  br label %while.cond2043, !llvm.loop !12

while.end2052:                                    ; preds = %land.end2049
  %1253 = load ptr, ptr %pFrame, align 8
  %hVar = getelementptr inbounds nuw %struct.VmFrame, ptr %1253, i32 0, i32 5
  %zString2053 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 0
  %1254 = load ptr, ptr %zString2053, align 8
  %nByte2054 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 1
  %1255 = load i32, ptr %nByte2054, align 8
  %call2055 = call ptr @SyHashGet(ptr noundef %hVar, ptr noundef %1254, i32 noundef %1255)
  store ptr %call2055, ptr %pEntry1963, align 8
  %1256 = load ptr, ptr %pEntry1963, align 8
  %tobool2056 = icmp ne ptr %1256, null
  br i1 %tobool2056, label %if.then2057, label %if.else2059

if.then2057:                                      ; preds = %while.end2052
  %1257 = load ptr, ptr %pVm.addr, align 8
  %call2058 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1257, i32 noundef 1, ptr noundef @.str.77, ptr noundef %sName1962)
  br label %if.end2081

if.else2059:                                      ; preds = %while.end2052
  %1258 = load ptr, ptr %pFrame, align 8
  %hVar2060 = getelementptr inbounds nuw %struct.VmFrame, ptr %1258, i32 0, i32 5
  %zString2061 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 0
  %1259 = load ptr, ptr %zString2061, align 8
  %nByte2062 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 1
  %1260 = load i32, ptr %nByte2062, align 8
  %1261 = load i32, ptr %nIdx1964, align 4
  %conv2063 = zext i32 %1261 to i64
  %1262 = inttoptr i64 %conv2063 to ptr
  %call2064 = call i32 @SyHashInsert(ptr noundef %hVar2060, ptr noundef %1259, i32 noundef %1260, ptr noundef %1262)
  store i32 %call2064, ptr %rc, align 4
  %1263 = load ptr, ptr %pFrame, align 8
  %pParent2065 = getelementptr inbounds nuw %struct.VmFrame, ptr %1263, i32 0, i32 0
  %1264 = load ptr, ptr %pParent2065, align 8
  %cmp2066 = icmp eq ptr %1264, null
  br i1 %cmp2066, label %if.then2068, label %if.end2073

if.then2068:                                      ; preds = %if.else2059
  %1265 = load ptr, ptr %pVm.addr, align 8
  %pGlobal2069 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1265, i32 0, i32 51
  %1266 = load ptr, ptr %pGlobal2069, align 8
  %zString2070 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 0
  %1267 = load ptr, ptr %zString2070, align 8
  %nByte2071 = getelementptr inbounds nuw %struct.SyString, ptr %sName1962, i32 0, i32 1
  %1268 = load i32, ptr %nByte2071, align 8
  %1269 = load i32, ptr %nIdx1964, align 4
  %call2072 = call i32 @VmHashmapRefInsert(ptr noundef %1266, ptr noundef %1267, i32 noundef %1268, i32 noundef %1269)
  br label %if.end2073

if.end2073:                                       ; preds = %if.then2068, %if.else2059
  %1270 = load i32, ptr %rc, align 4
  %cmp2074 = icmp eq i32 %1270, 0
  br i1 %cmp2074, label %if.then2076, label %if.end2080

if.then2076:                                      ; preds = %if.end2073
  %1271 = load ptr, ptr %pVm.addr, align 8
  %1272 = load i32, ptr %nIdx1964, align 4
  %1273 = load ptr, ptr %pFrame, align 8
  %hVar2077 = getelementptr inbounds nuw %struct.VmFrame, ptr %1273, i32 0, i32 5
  %call2078 = call ptr @SyHashLastEntry(ptr noundef %hVar2077)
  %call2079 = call i32 @PH7_VmRefObjInstall(ptr noundef %1271, i32 noundef %1272, ptr noundef %call2078, ptr noundef null, i32 noundef 0)
  br label %if.end2080

if.end2080:                                       ; preds = %if.then2076, %if.end2073
  br label %if.end2081

if.end2081:                                       ; preds = %if.end2080, %if.then2057
  br label %if.end2082

if.end2082:                                       ; preds = %if.end2081, %if.then2039
  br label %if.end2083

if.end2083:                                       ; preds = %if.end2082, %if.else2027
  br label %if.end2084

if.end2084:                                       ; preds = %if.end2083, %if.end2026
  br label %sw.epilog3867

sw.bb2085:                                        ; preds = %for.cond
  %1274 = load ptr, ptr %pVm.addr, align 8
  %pFrame2086 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1274, i32 0, i32 4
  %1275 = load ptr, ptr %pFrame2086, align 8
  %pParent2087 = getelementptr inbounds nuw %struct.VmFrame, ptr %1275, i32 0, i32 0
  %1276 = load ptr, ptr %pParent2087, align 8
  %tobool2088 = icmp ne ptr %1276, null
  br i1 %tobool2088, label %if.then2089, label %if.end2121

if.then2089:                                      ; preds = %sw.bb2085
  %1277 = load ptr, ptr %pTos, align 8
  %1278 = load ptr, ptr %pInstr, align 8
  %iP12090 = getelementptr inbounds nuw %struct.VmInstr, ptr %1278, i32 0, i32 1
  %1279 = load i32, ptr %iP12090, align 4
  %sub2091 = sub nsw i32 0, %1279
  %add2092 = add nsw i32 %sub2091, 1
  %idxprom2093 = sext i32 %add2092 to i64
  %arrayidx2094 = getelementptr inbounds %struct.ph7_value, ptr %1277, i64 %idxprom2093
  store ptr %arrayidx2094, ptr %pLink, align 8
  br label %while.cond2096

while.cond2096:                                   ; preds = %if.end2118, %if.then2089
  %1280 = load ptr, ptr %pLink, align 8
  %1281 = load ptr, ptr %pTos, align 8
  %cmp2097 = icmp ule ptr %1280, %1281
  br i1 %cmp2097, label %while.body2099, label %while.end2120

while.body2099:                                   ; preds = %while.cond2096
  %1282 = load ptr, ptr %pLink, align 8
  %iFlags2100 = getelementptr inbounds nuw %struct.ph7_value, ptr %1282, i32 0, i32 2
  %1283 = load i32, ptr %iFlags2100, align 8
  %and2101 = and i32 %1283, 1
  %cmp2102 = icmp eq i32 %and2101, 0
  br i1 %cmp2102, label %if.then2104, label %if.end2106

if.then2104:                                      ; preds = %while.body2099
  %1284 = load ptr, ptr %pLink, align 8
  %call2105 = call i32 @PH7_MemObjToString(ptr noundef %1284)
  br label %if.end2106

if.end2106:                                       ; preds = %if.then2104, %while.body2099
  %1285 = load ptr, ptr %pLink, align 8
  %sBlob2107 = getelementptr inbounds nuw %struct.ph7_value, ptr %1285, i32 0, i32 4
  %pBlob2108 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2107, i32 0, i32 1
  %1286 = load ptr, ptr %pBlob2108, align 8
  %zString2109 = getelementptr inbounds nuw %struct.SyString, ptr %sName2095, i32 0, i32 0
  store ptr %1286, ptr %zString2109, align 8
  %1287 = load ptr, ptr %pLink, align 8
  %sBlob2110 = getelementptr inbounds nuw %struct.ph7_value, ptr %1287, i32 0, i32 4
  %nByte2111 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2110, i32 0, i32 2
  %1288 = load i32, ptr %nByte2111, align 8
  %nByte2112 = getelementptr inbounds nuw %struct.SyString, ptr %sName2095, i32 0, i32 1
  store i32 %1288, ptr %nByte2112, align 8
  %nByte2113 = getelementptr inbounds nuw %struct.SyString, ptr %sName2095, i32 0, i32 1
  %1289 = load i32, ptr %nByte2113, align 8
  %cmp2114 = icmp ugt i32 %1289, 0
  br i1 %cmp2114, label %if.then2116, label %if.end2118

if.then2116:                                      ; preds = %if.end2106
  %1290 = load ptr, ptr %pVm.addr, align 8
  %call2117 = call i32 @VmFrameLink(ptr noundef %1290, ptr noundef %sName2095)
  br label %if.end2118

if.end2118:                                       ; preds = %if.then2116, %if.end2106
  %1291 = load ptr, ptr %pLink, align 8
  %incdec.ptr2119 = getelementptr inbounds nuw %struct.ph7_value, ptr %1291, i32 1
  store ptr %incdec.ptr2119, ptr %pLink, align 8
  br label %while.cond2096, !llvm.loop !13

while.end2120:                                    ; preds = %while.cond2096
  br label %if.end2121

if.end2121:                                       ; preds = %while.end2120, %sw.bb2085
  %1292 = load ptr, ptr %pInstr, align 8
  %iP12122 = getelementptr inbounds nuw %struct.VmInstr, ptr %1292, i32 0, i32 1
  %1293 = load i32, ptr %iP12122, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %1293)
  br label %sw.epilog3867

sw.bb2123:                                        ; preds = %for.cond
  %1294 = load ptr, ptr %pInstr, align 8
  %p32124 = getelementptr inbounds nuw %struct.VmInstr, ptr %1294, i32 0, i32 3
  %1295 = load ptr, ptr %p32124, align 8
  store ptr %1295, ptr %pException, align 8
  %1296 = load ptr, ptr %pVm.addr, align 8
  %aException = getelementptr inbounds nuw %struct.ph7_vm, ptr %1296, i32 0, i32 24
  %call2126 = call i32 @SySetPut(ptr noundef %aException, ptr noundef %pException)
  %1297 = load ptr, ptr %pVm.addr, align 8
  %call2127 = call i32 @VmEnterFrame(ptr noundef %1297, ptr noundef null, ptr noundef null, ptr noundef %pFrame2125)
  store i32 %call2127, ptr %rc, align 4
  %1298 = load i32, ptr %rc, align 4
  %cmp2128 = icmp ne i32 %1298, 0
  br i1 %cmp2128, label %if.then2130, label %if.end2132

if.then2130:                                      ; preds = %sw.bb2123
  %1299 = load ptr, ptr %pVm.addr, align 8
  %call2131 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1299, i32 noundef 1, ptr noundef @.str.78)
  br label %Abort

if.end2132:                                       ; preds = %sw.bb2123
  %1300 = load ptr, ptr %pFrame2125, align 8
  %iFlags2133 = getelementptr inbounds nuw %struct.VmFrame, ptr %1300, i32 0, i32 8
  %1301 = load i32, ptr %iFlags2133, align 8
  %or2134 = or i32 %1301, 1
  store i32 %or2134, ptr %iFlags2133, align 8
  %1302 = load ptr, ptr %pInstr, align 8
  %iP22135 = getelementptr inbounds nuw %struct.VmInstr, ptr %1302, i32 0, i32 2
  %1303 = load i32, ptr %iP22135, align 8
  %1304 = load ptr, ptr %pFrame2125, align 8
  %iExceptionJump = getelementptr inbounds nuw %struct.VmFrame, ptr %1304, i32 0, i32 9
  store i32 %1303, ptr %iExceptionJump, align 4
  %1305 = load ptr, ptr %pFrame2125, align 8
  %pParent2136 = getelementptr inbounds nuw %struct.VmFrame, ptr %1305, i32 0, i32 0
  %1306 = load ptr, ptr %pParent2136, align 8
  store ptr %1306, ptr %pFrame2125, align 8
  br label %while.cond2137

while.cond2137:                                   ; preds = %while.body2145, %if.end2132
  %1307 = load ptr, ptr %pFrame2125, align 8
  %pParent2138 = getelementptr inbounds nuw %struct.VmFrame, ptr %1307, i32 0, i32 0
  %1308 = load ptr, ptr %pParent2138, align 8
  %tobool2139 = icmp ne ptr %1308, null
  br i1 %tobool2139, label %land.rhs2140, label %land.end2144

land.rhs2140:                                     ; preds = %while.cond2137
  %1309 = load ptr, ptr %pFrame2125, align 8
  %iFlags2141 = getelementptr inbounds nuw %struct.VmFrame, ptr %1309, i32 0, i32 8
  %1310 = load i32, ptr %iFlags2141, align 8
  %and2142 = and i32 %1310, 1
  %tobool2143 = icmp ne i32 %and2142, 0
  br label %land.end2144

land.end2144:                                     ; preds = %land.rhs2140, %while.cond2137
  %1311 = phi i1 [ false, %while.cond2137 ], [ %tobool2143, %land.rhs2140 ]
  br i1 %1311, label %while.body2145, label %while.end2147

while.body2145:                                   ; preds = %land.end2144
  %1312 = load ptr, ptr %pFrame2125, align 8
  %pParent2146 = getelementptr inbounds nuw %struct.VmFrame, ptr %1312, i32 0, i32 0
  %1313 = load ptr, ptr %pParent2146, align 8
  store ptr %1313, ptr %pFrame2125, align 8
  br label %while.cond2137, !llvm.loop !14

while.end2147:                                    ; preds = %land.end2144
  %1314 = load ptr, ptr %pFrame2125, align 8
  %1315 = load ptr, ptr %pException, align 8
  %pFrame2148 = getelementptr inbounds nuw %struct.ph7_exception, ptr %1315, i32 0, i32 2
  store ptr %1314, ptr %pFrame2148, align 8
  br label %sw.epilog3867

sw.bb2149:                                        ; preds = %for.cond
  %1316 = load ptr, ptr %pInstr, align 8
  %p32151 = getelementptr inbounds nuw %struct.VmInstr, ptr %1316, i32 0, i32 3
  %1317 = load ptr, ptr %p32151, align 8
  store ptr %1317, ptr %pException2150, align 8
  %1318 = load ptr, ptr %pVm.addr, align 8
  %aException2152 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1318, i32 0, i32 24
  %nUsed2153 = getelementptr inbounds nuw %struct.SySet, ptr %aException2152, i32 0, i32 2
  %1319 = load i32, ptr %nUsed2153, align 8
  %cmp2154 = icmp ugt i32 %1319, 0
  br i1 %cmp2154, label %if.then2156, label %if.end2170

if.then2156:                                      ; preds = %sw.bb2149
  %1320 = load ptr, ptr %pVm.addr, align 8
  %aException2157 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1320, i32 0, i32 24
  %pBase2158 = getelementptr inbounds nuw %struct.SySet, ptr %aException2157, i32 0, i32 1
  %1321 = load ptr, ptr %pBase2158, align 8
  store ptr %1321, ptr %apException, align 8
  %1322 = load ptr, ptr %pException2150, align 8
  %1323 = load ptr, ptr %apException, align 8
  %1324 = load ptr, ptr %pVm.addr, align 8
  %aException2159 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1324, i32 0, i32 24
  %nUsed2160 = getelementptr inbounds nuw %struct.SySet, ptr %aException2159, i32 0, i32 2
  %1325 = load i32, ptr %nUsed2160, align 8
  %sub2161 = sub i32 %1325, 1
  %idxprom2162 = zext i32 %sub2161 to i64
  %arrayidx2163 = getelementptr inbounds nuw ptr, ptr %1323, i64 %idxprom2162
  %1326 = load ptr, ptr %arrayidx2163, align 8
  %cmp2164 = icmp eq ptr %1322, %1326
  br i1 %cmp2164, label %if.then2166, label %if.end2169

if.then2166:                                      ; preds = %if.then2156
  %1327 = load ptr, ptr %pVm.addr, align 8
  %aException2167 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1327, i32 0, i32 24
  %call2168 = call ptr @SySetPop(ptr noundef %aException2167)
  br label %if.end2169

if.end2169:                                       ; preds = %if.then2166, %if.then2156
  br label %if.end2170

if.end2170:                                       ; preds = %if.end2169, %sw.bb2149
  %1328 = load ptr, ptr %pException2150, align 8
  %pFrame2171 = getelementptr inbounds nuw %struct.ph7_exception, ptr %1328, i32 0, i32 2
  store ptr null, ptr %pFrame2171, align 8
  %1329 = load ptr, ptr %pVm.addr, align 8
  call void @VmLeaveFrame(ptr noundef %1329)
  br label %sw.epilog3867

sw.bb2172:                                        ; preds = %for.cond
  %1330 = load ptr, ptr %pVm.addr, align 8
  %pFrame2174 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1330, i32 0, i32 4
  %1331 = load ptr, ptr %pFrame2174, align 8
  store ptr %1331, ptr %pFrame2173, align 8
  %1332 = load ptr, ptr %pInstr, align 8
  %iP22175 = getelementptr inbounds nuw %struct.VmInstr, ptr %1332, i32 0, i32 2
  %1333 = load i32, ptr %iP22175, align 8
  store i32 %1333, ptr %nJump, align 4
  br label %while.cond2176

while.cond2176:                                   ; preds = %while.body2184, %sw.bb2172
  %1334 = load ptr, ptr %pFrame2173, align 8
  %pParent2177 = getelementptr inbounds nuw %struct.VmFrame, ptr %1334, i32 0, i32 0
  %1335 = load ptr, ptr %pParent2177, align 8
  %tobool2178 = icmp ne ptr %1335, null
  br i1 %tobool2178, label %land.rhs2179, label %land.end2183

land.rhs2179:                                     ; preds = %while.cond2176
  %1336 = load ptr, ptr %pFrame2173, align 8
  %iFlags2180 = getelementptr inbounds nuw %struct.VmFrame, ptr %1336, i32 0, i32 8
  %1337 = load i32, ptr %iFlags2180, align 8
  %and2181 = and i32 %1337, 1
  %tobool2182 = icmp ne i32 %and2181, 0
  br label %land.end2183

land.end2183:                                     ; preds = %land.rhs2179, %while.cond2176
  %1338 = phi i1 [ false, %while.cond2176 ], [ %tobool2182, %land.rhs2179 ]
  br i1 %1338, label %while.body2184, label %while.end2186

while.body2184:                                   ; preds = %land.end2183
  %1339 = load ptr, ptr %pFrame2173, align 8
  %pParent2185 = getelementptr inbounds nuw %struct.VmFrame, ptr %1339, i32 0, i32 0
  %1340 = load ptr, ptr %pParent2185, align 8
  store ptr %1340, ptr %pFrame2173, align 8
  br label %while.cond2176, !llvm.loop !15

while.end2186:                                    ; preds = %land.end2183
  %1341 = load ptr, ptr %pFrame2173, align 8
  %iFlags2187 = getelementptr inbounds nuw %struct.VmFrame, ptr %1341, i32 0, i32 8
  %1342 = load i32, ptr %iFlags2187, align 8
  %or2188 = or i32 %1342, 2
  store i32 %or2188, ptr %iFlags2187, align 8
  %1343 = load ptr, ptr %pTos, align 8
  %iFlags2189 = getelementptr inbounds nuw %struct.ph7_value, ptr %1343, i32 0, i32 2
  %1344 = load i32, ptr %iFlags2189, align 8
  %and2190 = and i32 %1344, 128
  %tobool2191 = icmp ne i32 %and2190, 0
  br i1 %tobool2191, label %if.then2192, label %if.else2216

if.then2192:                                      ; preds = %while.end2186
  %1345 = load ptr, ptr %pTos, align 8
  %x2194 = getelementptr inbounds nuw %struct.ph7_value, ptr %1345, i32 0, i32 1
  %1346 = load ptr, ptr %x2194, align 8
  store ptr %1346, ptr %pThis2193, align 8
  %1347 = load ptr, ptr %pVm.addr, align 8
  %call2196 = call ptr @PH7_VmExtractClass(ptr noundef %1347, ptr noundef @.str.79, i32 noundef 9, i32 noundef 1, i32 noundef 0)
  store ptr %call2196, ptr %pException2195, align 8
  %1348 = load ptr, ptr %pException2195, align 8
  %cmp2197 = icmp eq ptr %1348, null
  br i1 %cmp2197, label %if.then2203, label %lor.lhs.false2199

lor.lhs.false2199:                                ; preds = %if.then2192
  %1349 = load ptr, ptr %pThis2193, align 8
  %pClass2200 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1349, i32 0, i32 1
  %1350 = load ptr, ptr %pClass2200, align 8
  %1351 = load ptr, ptr %pException2195, align 8
  %call2201 = call i32 @VmInstanceOf(ptr noundef %1350, ptr noundef %1351)
  %tobool2202 = icmp ne i32 %call2201, 0
  br i1 %tobool2202, label %if.else2209, label %if.then2203

if.then2203:                                      ; preds = %lor.lhs.false2199, %if.then2192
  %1352 = load ptr, ptr %pVm.addr, align 8
  %1353 = load ptr, ptr %pThis2193, align 8
  %call2204 = call i32 @VmUncaughtException(ptr noundef %1352, ptr noundef %1353)
  store i32 %call2204, ptr %rc, align 4
  %1354 = load i32, ptr %rc, align 4
  %cmp2205 = icmp eq i32 %1354, -10
  br i1 %cmp2205, label %if.then2207, label %if.end2208

if.then2207:                                      ; preds = %if.then2203
  br label %Abort

if.end2208:                                       ; preds = %if.then2203
  br label %if.end2215

if.else2209:                                      ; preds = %lor.lhs.false2199
  %1355 = load ptr, ptr %pVm.addr, align 8
  %1356 = load ptr, ptr %pThis2193, align 8
  %call2210 = call i32 @VmThrowException(ptr noundef %1355, ptr noundef %1356)
  store i32 %call2210, ptr %rc, align 4
  %1357 = load i32, ptr %rc, align 4
  %cmp2211 = icmp eq i32 %1357, -10
  br i1 %cmp2211, label %if.then2213, label %if.end2214

if.then2213:                                      ; preds = %if.else2209
  br label %Abort

if.end2214:                                       ; preds = %if.else2209
  br label %if.end2215

if.end2215:                                       ; preds = %if.end2214, %if.end2208
  br label %if.end2222

if.else2216:                                      ; preds = %while.end2186
  %1358 = load ptr, ptr %pVm.addr, align 8
  %call2217 = call i32 @VmUncaughtException(ptr noundef %1358, ptr noundef null)
  %1359 = load i32, ptr %rc, align 4
  %cmp2218 = icmp eq i32 %1359, -10
  br i1 %cmp2218, label %if.then2220, label %if.end2221

if.then2220:                                      ; preds = %if.else2216
  br label %Abort

if.end2221:                                       ; preds = %if.else2216
  br label %if.end2222

if.end2222:                                       ; preds = %if.end2221, %if.end2215
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1360 = load i32, ptr %nJump, align 4
  %sub2223 = sub i32 %1360, 1
  store i32 %sub2223, ptr %pc, align 4
  br label %sw.epilog3867

sw.bb2224:                                        ; preds = %for.cond
  %1361 = load ptr, ptr %pInstr, align 8
  %p32225 = getelementptr inbounds nuw %struct.VmInstr, ptr %1361, i32 0, i32 3
  %1362 = load ptr, ptr %p32225, align 8
  store ptr %1362, ptr %pInfo, align 8
  %1363 = load ptr, ptr %pInfo, align 8
  %sValue2226 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1363, i32 0, i32 1
  %nByte2227 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2226, i32 0, i32 1
  %1364 = load i32, ptr %nByte2227, align 8
  %cmp2228 = icmp ult i32 %1364, 1
  br i1 %cmp2228, label %if.then2230, label %if.end2256

if.then2230:                                      ; preds = %sw.bb2224
  %1365 = load ptr, ptr %pTos, align 8
  %iFlags2231 = getelementptr inbounds nuw %struct.ph7_value, ptr %1365, i32 0, i32 2
  %1366 = load i32, ptr %iFlags2231, align 8
  %and2232 = and i32 %1366, 1
  %cmp2233 = icmp eq i32 %and2232, 0
  br i1 %cmp2233, label %if.then2235, label %if.end2237

if.then2235:                                      ; preds = %if.then2230
  %1367 = load ptr, ptr %pTos, align 8
  %call2236 = call i32 @PH7_MemObjToString(ptr noundef %1367)
  br label %if.end2237

if.end2237:                                       ; preds = %if.then2235, %if.then2230
  %1368 = load ptr, ptr %pTos, align 8
  %sBlob2238 = getelementptr inbounds nuw %struct.ph7_value, ptr %1368, i32 0, i32 4
  %nByte2239 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2238, i32 0, i32 2
  %1369 = load i32, ptr %nByte2239, align 8
  %cmp2240 = icmp ugt i32 %1369, 0
  br i1 %cmp2240, label %if.then2242, label %if.end2255

if.then2242:                                      ; preds = %if.end2237
  %1370 = load ptr, ptr %pVm.addr, align 8
  %sAllocator2243 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1370, i32 0, i32 0
  %1371 = load ptr, ptr %pTos, align 8
  %sBlob2244 = getelementptr inbounds nuw %struct.ph7_value, ptr %1371, i32 0, i32 4
  %pBlob2245 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2244, i32 0, i32 1
  %1372 = load ptr, ptr %pBlob2245, align 8
  %1373 = load ptr, ptr %pTos, align 8
  %sBlob2246 = getelementptr inbounds nuw %struct.ph7_value, ptr %1373, i32 0, i32 4
  %nByte2247 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2246, i32 0, i32 2
  %1374 = load i32, ptr %nByte2247, align 8
  %call2248 = call ptr @SyMemBackendDup(ptr noundef %sAllocator2243, ptr noundef %1372, i32 noundef %1374)
  store ptr %call2248, ptr %pName, align 8
  %1375 = load ptr, ptr %pName, align 8
  %1376 = load ptr, ptr %pInfo, align 8
  %sValue2249 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1376, i32 0, i32 1
  %zString2250 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2249, i32 0, i32 0
  store ptr %1375, ptr %zString2250, align 8
  %1377 = load ptr, ptr %pTos, align 8
  %sBlob2251 = getelementptr inbounds nuw %struct.ph7_value, ptr %1377, i32 0, i32 4
  %nByte2252 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2251, i32 0, i32 2
  %1378 = load i32, ptr %nByte2252, align 8
  %1379 = load ptr, ptr %pInfo, align 8
  %sValue2253 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1379, i32 0, i32 1
  %nByte2254 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2253, i32 0, i32 1
  store i32 %1378, ptr %nByte2254, align 8
  br label %if.end2255

if.end2255:                                       ; preds = %if.then2242, %if.end2237
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end2256

if.end2256:                                       ; preds = %if.end2255, %sw.bb2224
  %1380 = load ptr, ptr %pInfo, align 8
  %iFlags2257 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1380, i32 0, i32 2
  %1381 = load i32, ptr %iFlags2257, align 8
  %and2258 = and i32 %1381, 4
  %tobool2259 = icmp ne i32 %and2258, 0
  br i1 %tobool2259, label %land.lhs.true2260, label %if.end2291

land.lhs.true2260:                                ; preds = %if.end2256
  %1382 = load ptr, ptr %pInfo, align 8
  %sKey2261 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1382, i32 0, i32 0
  %nByte2262 = getelementptr inbounds nuw %struct.SyString, ptr %sKey2261, i32 0, i32 1
  %1383 = load i32, ptr %nByte2262, align 8
  %cmp2263 = icmp ult i32 %1383, 1
  br i1 %cmp2263, label %if.then2265, label %if.end2291

if.then2265:                                      ; preds = %land.lhs.true2260
  %1384 = load ptr, ptr %pTos, align 8
  %iFlags2266 = getelementptr inbounds nuw %struct.ph7_value, ptr %1384, i32 0, i32 2
  %1385 = load i32, ptr %iFlags2266, align 8
  %and2267 = and i32 %1385, 1
  %cmp2268 = icmp eq i32 %and2267, 0
  br i1 %cmp2268, label %if.then2270, label %if.end2272

if.then2270:                                      ; preds = %if.then2265
  %1386 = load ptr, ptr %pTos, align 8
  %call2271 = call i32 @PH7_MemObjToString(ptr noundef %1386)
  br label %if.end2272

if.end2272:                                       ; preds = %if.then2270, %if.then2265
  %1387 = load ptr, ptr %pTos, align 8
  %sBlob2273 = getelementptr inbounds nuw %struct.ph7_value, ptr %1387, i32 0, i32 4
  %nByte2274 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2273, i32 0, i32 2
  %1388 = load i32, ptr %nByte2274, align 8
  %cmp2275 = icmp ugt i32 %1388, 0
  br i1 %cmp2275, label %if.then2277, label %if.end2290

if.then2277:                                      ; preds = %if.end2272
  %1389 = load ptr, ptr %pVm.addr, align 8
  %sAllocator2278 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1389, i32 0, i32 0
  %1390 = load ptr, ptr %pTos, align 8
  %sBlob2279 = getelementptr inbounds nuw %struct.ph7_value, ptr %1390, i32 0, i32 4
  %pBlob2280 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2279, i32 0, i32 1
  %1391 = load ptr, ptr %pBlob2280, align 8
  %1392 = load ptr, ptr %pTos, align 8
  %sBlob2281 = getelementptr inbounds nuw %struct.ph7_value, ptr %1392, i32 0, i32 4
  %nByte2282 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2281, i32 0, i32 2
  %1393 = load i32, ptr %nByte2282, align 8
  %call2283 = call ptr @SyMemBackendDup(ptr noundef %sAllocator2278, ptr noundef %1391, i32 noundef %1393)
  store ptr %call2283, ptr %pName, align 8
  %1394 = load ptr, ptr %pName, align 8
  %1395 = load ptr, ptr %pInfo, align 8
  %sKey2284 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1395, i32 0, i32 0
  %zString2285 = getelementptr inbounds nuw %struct.SyString, ptr %sKey2284, i32 0, i32 0
  store ptr %1394, ptr %zString2285, align 8
  %1396 = load ptr, ptr %pTos, align 8
  %sBlob2286 = getelementptr inbounds nuw %struct.ph7_value, ptr %1396, i32 0, i32 4
  %nByte2287 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2286, i32 0, i32 2
  %1397 = load i32, ptr %nByte2287, align 8
  %1398 = load ptr, ptr %pInfo, align 8
  %sKey2288 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1398, i32 0, i32 0
  %nByte2289 = getelementptr inbounds nuw %struct.SyString, ptr %sKey2288, i32 0, i32 1
  store i32 %1397, ptr %nByte2289, align 8
  br label %if.end2290

if.end2290:                                       ; preds = %if.then2277, %if.end2272
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end2291

if.end2291:                                       ; preds = %if.end2290, %land.lhs.true2260, %if.end2256
  %1399 = load ptr, ptr %pTos, align 8
  %iFlags2292 = getelementptr inbounds nuw %struct.ph7_value, ptr %1399, i32 0, i32 2
  %1400 = load i32, ptr %iFlags2292, align 8
  %and2293 = and i32 %1400, 192
  %cmp2294 = icmp eq i32 %and2293, 0
  br i1 %cmp2294, label %if.then2301, label %lor.lhs.false2296

lor.lhs.false2296:                                ; preds = %if.end2291
  %1401 = load ptr, ptr %pInfo, align 8
  %sValue2297 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1401, i32 0, i32 1
  %nByte2298 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2297, i32 0, i32 1
  %1402 = load i32, ptr %nByte2298, align 8
  %cmp2299 = icmp ult i32 %1402, 1
  br i1 %cmp2299, label %if.then2301, label %if.else2311

if.then2301:                                      ; preds = %lor.lhs.false2296, %if.end2291
  %1403 = load ptr, ptr %pTos, align 8
  %iFlags2302 = getelementptr inbounds nuw %struct.ph7_value, ptr %1403, i32 0, i32 2
  %1404 = load i32, ptr %iFlags2302, align 8
  %and2303 = and i32 %1404, 32
  %cmp2304 = icmp eq i32 %and2303, 0
  br i1 %cmp2304, label %if.then2306, label %if.end2308

if.then2306:                                      ; preds = %if.then2301
  %1405 = load ptr, ptr %pVm.addr, align 8
  %call2307 = call i32 @PH7_VmThrowError(ptr noundef %1405, ptr noundef null, i32 noundef 2, ptr noundef @.str.80)
  br label %if.end2308

if.end2308:                                       ; preds = %if.then2306, %if.then2301
  %1406 = load ptr, ptr %pInstr, align 8
  %iP22309 = getelementptr inbounds nuw %struct.VmInstr, ptr %1406, i32 0, i32 2
  %1407 = load i32, ptr %iP22309, align 8
  %sub2310 = sub i32 %1407, 1
  store i32 %sub2310, ptr %pc, align 4
  br label %if.end2354

if.else2311:                                      ; preds = %lor.lhs.false2296
  %1408 = load ptr, ptr %pVm.addr, align 8
  %sAllocator2312 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1408, i32 0, i32 0
  %call2313 = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator2312, i32 noundef 16)
  store ptr %call2313, ptr %pStep, align 8
  %1409 = load ptr, ptr %pStep, align 8
  %cmp2314 = icmp eq ptr %1409, null
  br i1 %cmp2314, label %if.then2316, label %if.else2320

if.then2316:                                      ; preds = %if.else2311
  %1410 = load ptr, ptr %pVm.addr, align 8
  %call2317 = call i32 @PH7_VmThrowError(ptr noundef %1410, ptr noundef null, i32 noundef 1, ptr noundef @.str.81)
  %1411 = load ptr, ptr %pInstr, align 8
  %iP22318 = getelementptr inbounds nuw %struct.VmInstr, ptr %1411, i32 0, i32 2
  %1412 = load i32, ptr %iP22318, align 8
  %sub2319 = sub i32 %1412, 1
  store i32 %sub2319, ptr %pc, align 4
  br label %if.end2343

if.else2320:                                      ; preds = %if.else2311
  %1413 = load ptr, ptr %pStep, align 8
  call void @SyZero(ptr noundef %1413, i32 noundef 16)
  %1414 = load ptr, ptr %pInfo, align 8
  %iFlags2321 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1414, i32 0, i32 2
  %1415 = load i32, ptr %iFlags2321, align 8
  %1416 = load ptr, ptr %pStep, align 8
  %iFlags2322 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1416, i32 0, i32 0
  store i32 %1415, ptr %iFlags2322, align 8
  %1417 = load ptr, ptr %pTos, align 8
  %iFlags2323 = getelementptr inbounds nuw %struct.ph7_value, ptr %1417, i32 0, i32 2
  %1418 = load i32, ptr %iFlags2323, align 8
  %and2324 = and i32 %1418, 64
  %tobool2325 = icmp ne i32 %and2324, 0
  br i1 %tobool2325, label %if.then2326, label %if.else2333

if.then2326:                                      ; preds = %if.else2320
  %1419 = load ptr, ptr %pTos, align 8
  %x2328 = getelementptr inbounds nuw %struct.ph7_value, ptr %1419, i32 0, i32 1
  %1420 = load ptr, ptr %x2328, align 8
  store ptr %1420, ptr %pMap2327, align 8
  %1421 = load ptr, ptr %pMap2327, align 8
  call void @PH7_HashmapResetLoopCursor(ptr noundef %1421)
  %1422 = load ptr, ptr %pStep, align 8
  %iFlags2329 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1422, i32 0, i32 0
  %1423 = load i32, ptr %iFlags2329, align 8
  %or2330 = or i32 %1423, 1
  store i32 %or2330, ptr %iFlags2329, align 8
  %1424 = load ptr, ptr %pMap2327, align 8
  %1425 = load ptr, ptr %pStep, align 8
  %xIter = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1425, i32 0, i32 1
  store ptr %1424, ptr %xIter, align 8
  %1426 = load ptr, ptr %pMap2327, align 8
  %iRef2331 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %1426, i32 0, i32 10
  %1427 = load i32, ptr %iRef2331, align 8
  %inc2332 = add nsw i32 %1427, 1
  store i32 %inc2332, ptr %iRef2331, align 8
  br label %if.end2342

if.else2333:                                      ; preds = %if.else2320
  %1428 = load ptr, ptr %pTos, align 8
  %x2335 = getelementptr inbounds nuw %struct.ph7_value, ptr %1428, i32 0, i32 1
  %1429 = load ptr, ptr %x2335, align 8
  store ptr %1429, ptr %pThis2334, align 8
  %1430 = load ptr, ptr %pThis2334, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1430, i32 0, i32 2
  %call2336 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  %1431 = load ptr, ptr %pStep, align 8
  %iFlags2337 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1431, i32 0, i32 0
  %1432 = load i32, ptr %iFlags2337, align 8
  %or2338 = or i32 %1432, 2
  store i32 %or2338, ptr %iFlags2337, align 8
  %1433 = load ptr, ptr %pThis2334, align 8
  %1434 = load ptr, ptr %pStep, align 8
  %xIter2339 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1434, i32 0, i32 1
  store ptr %1433, ptr %xIter2339, align 8
  %1435 = load ptr, ptr %pThis2334, align 8
  %iRef2340 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1435, i32 0, i32 3
  %1436 = load i32, ptr %iRef2340, align 8
  %inc2341 = add nsw i32 %1436, 1
  store i32 %inc2341, ptr %iRef2340, align 8
  br label %if.end2342

if.end2342:                                       ; preds = %if.else2333, %if.then2326
  br label %if.end2343

if.end2343:                                       ; preds = %if.end2342, %if.then2316
  %1437 = load ptr, ptr %pInfo, align 8
  %aStep = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1437, i32 0, i32 3
  %call2344 = call i32 @SySetPut(ptr noundef %aStep, ptr noundef %pStep)
  %cmp2345 = icmp ne i32 0, %call2344
  br i1 %cmp2345, label %if.then2347, label %if.end2353

if.then2347:                                      ; preds = %if.end2343
  %1438 = load ptr, ptr %pVm.addr, align 8
  %call2348 = call i32 @PH7_VmThrowError(ptr noundef %1438, ptr noundef null, i32 noundef 1, ptr noundef @.str.81)
  %1439 = load ptr, ptr %pVm.addr, align 8
  %sAllocator2349 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1439, i32 0, i32 0
  %1440 = load ptr, ptr %pStep, align 8
  %call2350 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator2349, ptr noundef %1440)
  %1441 = load ptr, ptr %pInstr, align 8
  %iP22351 = getelementptr inbounds nuw %struct.VmInstr, ptr %1441, i32 0, i32 2
  %1442 = load i32, ptr %iP22351, align 8
  %sub2352 = sub i32 %1442, 1
  store i32 %sub2352, ptr %pc, align 4
  br label %if.end2353

if.end2353:                                       ; preds = %if.then2347, %if.end2343
  br label %if.end2354

if.end2354:                                       ; preds = %if.end2353, %if.end2308
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %sw.epilog3867

sw.bb2355:                                        ; preds = %for.cond
  %1443 = load ptr, ptr %pInstr, align 8
  %p32357 = getelementptr inbounds nuw %struct.VmInstr, ptr %1443, i32 0, i32 3
  %1444 = load ptr, ptr %p32357, align 8
  store ptr %1444, ptr %pInfo2356, align 8
  %1445 = load ptr, ptr %pInfo2356, align 8
  %aStep2361 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1445, i32 0, i32 3
  %pBase2362 = getelementptr inbounds nuw %struct.SySet, ptr %aStep2361, i32 0, i32 1
  %1446 = load ptr, ptr %pBase2362, align 8
  store ptr %1446, ptr %apStep, align 8
  %1447 = load ptr, ptr %apStep, align 8
  %1448 = load ptr, ptr %pInfo2356, align 8
  %aStep2363 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1448, i32 0, i32 3
  %nUsed2364 = getelementptr inbounds nuw %struct.SySet, ptr %aStep2363, i32 0, i32 2
  %1449 = load i32, ptr %nUsed2364, align 8
  %sub2365 = sub i32 %1449, 1
  %idxprom2366 = zext i32 %sub2365 to i64
  %arrayidx2367 = getelementptr inbounds nuw ptr, ptr %1447, i64 %idxprom2366
  %1450 = load ptr, ptr %arrayidx2367, align 8
  store ptr %1450, ptr %pStep2358, align 8
  %1451 = load ptr, ptr %pVm.addr, align 8
  %pFrame2368 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1451, i32 0, i32 4
  %1452 = load ptr, ptr %pFrame2368, align 8
  store ptr %1452, ptr %pFrame2360, align 8
  br label %while.cond2369

while.cond2369:                                   ; preds = %while.body2377, %sw.bb2355
  %1453 = load ptr, ptr %pFrame2360, align 8
  %pParent2370 = getelementptr inbounds nuw %struct.VmFrame, ptr %1453, i32 0, i32 0
  %1454 = load ptr, ptr %pParent2370, align 8
  %tobool2371 = icmp ne ptr %1454, null
  br i1 %tobool2371, label %land.rhs2372, label %land.end2376

land.rhs2372:                                     ; preds = %while.cond2369
  %1455 = load ptr, ptr %pFrame2360, align 8
  %iFlags2373 = getelementptr inbounds nuw %struct.VmFrame, ptr %1455, i32 0, i32 8
  %1456 = load i32, ptr %iFlags2373, align 8
  %and2374 = and i32 %1456, 1
  %tobool2375 = icmp ne i32 %and2374, 0
  br label %land.end2376

land.end2376:                                     ; preds = %land.rhs2372, %while.cond2369
  %1457 = phi i1 [ false, %while.cond2369 ], [ %tobool2375, %land.rhs2372 ]
  br i1 %1457, label %while.body2377, label %while.end2379

while.body2377:                                   ; preds = %land.end2376
  %1458 = load ptr, ptr %pFrame2360, align 8
  %pParent2378 = getelementptr inbounds nuw %struct.VmFrame, ptr %1458, i32 0, i32 0
  %1459 = load ptr, ptr %pParent2378, align 8
  store ptr %1459, ptr %pFrame2360, align 8
  br label %while.cond2369, !llvm.loop !16

while.end2379:                                    ; preds = %land.end2376
  %1460 = load ptr, ptr %pStep2358, align 8
  %iFlags2380 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1460, i32 0, i32 0
  %1461 = load i32, ptr %iFlags2380, align 8
  %and2381 = and i32 %1461, 1
  %tobool2382 = icmp ne i32 %and2381, 0
  br i1 %tobool2382, label %if.then2383, label %if.else2459

if.then2383:                                      ; preds = %while.end2379
  %1462 = load ptr, ptr %pStep2358, align 8
  %xIter2385 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1462, i32 0, i32 1
  %1463 = load ptr, ptr %xIter2385, align 8
  store ptr %1463, ptr %pMap2384, align 8
  %1464 = load ptr, ptr %pMap2384, align 8
  %call2387 = call ptr @PH7_HashmapGetNextEntry(ptr noundef %1464)
  store ptr %call2387, ptr %pNode2386, align 8
  %1465 = load ptr, ptr %pNode2386, align 8
  %cmp2388 = icmp eq ptr %1465, null
  br i1 %cmp2388, label %if.then2390, label %if.else2408

if.then2390:                                      ; preds = %if.then2383
  %1466 = load ptr, ptr %pInstr, align 8
  %iP22391 = getelementptr inbounds nuw %struct.VmInstr, ptr %1466, i32 0, i32 2
  %1467 = load i32, ptr %iP22391, align 8
  %sub2392 = sub i32 %1467, 1
  store i32 %sub2392, ptr %pc, align 4
  %1468 = load ptr, ptr %pStep2358, align 8
  %iFlags2393 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1468, i32 0, i32 0
  %1469 = load i32, ptr %iFlags2393, align 8
  %and2394 = and i32 %1469, 8
  %tobool2395 = icmp ne i32 %and2394, 0
  br i1 %tobool2395, label %if.then2396, label %if.end2403

if.then2396:                                      ; preds = %if.then2390
  %1470 = load ptr, ptr %pFrame2360, align 8
  %hVar2397 = getelementptr inbounds nuw %struct.VmFrame, ptr %1470, i32 0, i32 5
  %1471 = load ptr, ptr %pInfo2356, align 8
  %sValue2398 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1471, i32 0, i32 1
  %zString2399 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2398, i32 0, i32 0
  %1472 = load ptr, ptr %zString2399, align 8
  %1473 = load ptr, ptr %pInfo2356, align 8
  %sValue2400 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1473, i32 0, i32 1
  %nByte2401 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2400, i32 0, i32 1
  %1474 = load i32, ptr %nByte2401, align 8
  %call2402 = call i32 @SyHashDeleteEntry(ptr noundef %hVar2397, ptr noundef %1472, i32 noundef %1474, ptr noundef null)
  br label %if.end2403

if.end2403:                                       ; preds = %if.then2396, %if.then2390
  %1475 = load ptr, ptr %pMap2384, align 8
  call void @PH7_HashmapResetLoopCursor(ptr noundef %1475)
  %1476 = load ptr, ptr %pVm.addr, align 8
  %sAllocator2404 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1476, i32 0, i32 0
  %1477 = load ptr, ptr %pStep2358, align 8
  %call2405 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator2404, ptr noundef %1477)
  %1478 = load ptr, ptr %pInfo2356, align 8
  %aStep2406 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1478, i32 0, i32 3
  %call2407 = call ptr @SySetPop(ptr noundef %aStep2406)
  %1479 = load ptr, ptr %pMap2384, align 8
  call void @PH7_HashmapUnref(ptr noundef %1479)
  br label %if.end2458

if.else2408:                                      ; preds = %if.then2383
  %1480 = load ptr, ptr %pStep2358, align 8
  %iFlags2409 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1480, i32 0, i32 0
  %1481 = load i32, ptr %iFlags2409, align 8
  %and2410 = and i32 %1481, 4
  %tobool2411 = icmp ne i32 %and2410, 0
  br i1 %tobool2411, label %land.lhs.true2412, label %if.end2424

land.lhs.true2412:                                ; preds = %if.else2408
  %1482 = load ptr, ptr %pInfo2356, align 8
  %sKey2413 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1482, i32 0, i32 0
  %nByte2414 = getelementptr inbounds nuw %struct.SyString, ptr %sKey2413, i32 0, i32 1
  %1483 = load i32, ptr %nByte2414, align 8
  %cmp2415 = icmp ugt i32 %1483, 0
  br i1 %cmp2415, label %if.then2417, label %if.end2424

if.then2417:                                      ; preds = %land.lhs.true2412
  %1484 = load ptr, ptr %pVm.addr, align 8
  %1485 = load ptr, ptr %pInfo2356, align 8
  %sKey2419 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1485, i32 0, i32 0
  %call2420 = call ptr @VmExtractMemObj(ptr noundef %1484, ptr noundef %sKey2419, i32 noundef 0, i32 noundef 1)
  store ptr %call2420, ptr %pKey2418, align 8
  %1486 = load ptr, ptr %pKey2418, align 8
  %tobool2421 = icmp ne ptr %1486, null
  br i1 %tobool2421, label %if.then2422, label %if.end2423

if.then2422:                                      ; preds = %if.then2417
  %1487 = load ptr, ptr %pNode2386, align 8
  %1488 = load ptr, ptr %pKey2418, align 8
  call void @PH7_HashmapExtractNodeKey(ptr noundef %1487, ptr noundef %1488)
  br label %if.end2423

if.end2423:                                       ; preds = %if.then2422, %if.then2417
  br label %if.end2424

if.end2424:                                       ; preds = %if.end2423, %land.lhs.true2412, %if.else2408
  %1489 = load ptr, ptr %pStep2358, align 8
  %iFlags2425 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1489, i32 0, i32 0
  %1490 = load i32, ptr %iFlags2425, align 8
  %and2426 = and i32 %1490, 8
  %tobool2427 = icmp ne i32 %and2426, 0
  br i1 %tobool2427, label %if.then2428, label %if.else2451

if.then2428:                                      ; preds = %if.end2424
  %1491 = load ptr, ptr %pFrame2360, align 8
  %hVar2430 = getelementptr inbounds nuw %struct.VmFrame, ptr %1491, i32 0, i32 5
  %1492 = load ptr, ptr %pInfo2356, align 8
  %sValue2431 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1492, i32 0, i32 1
  %zString2432 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2431, i32 0, i32 0
  %1493 = load ptr, ptr %zString2432, align 8
  %1494 = load ptr, ptr %pInfo2356, align 8
  %sValue2433 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1494, i32 0, i32 1
  %nByte2434 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2433, i32 0, i32 1
  %1495 = load i32, ptr %nByte2434, align 8
  %call2435 = call ptr @SyHashGet(ptr noundef %hVar2430, ptr noundef %1493, i32 noundef %1495)
  store ptr %call2435, ptr %pEntry2429, align 8
  %1496 = load ptr, ptr %pEntry2429, align 8
  %tobool2436 = icmp ne ptr %1496, null
  br i1 %tobool2436, label %if.then2437, label %if.else2441

if.then2437:                                      ; preds = %if.then2428
  %1497 = load ptr, ptr %pNode2386, align 8
  %nValIdx2438 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %1497, i32 0, i32 5
  %1498 = load i32, ptr %nValIdx2438, align 8
  %conv2439 = zext i32 %1498 to i64
  %1499 = inttoptr i64 %conv2439 to ptr
  %1500 = load ptr, ptr %pEntry2429, align 8
  %pUserData2440 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %1500, i32 0, i32 2
  store ptr %1499, ptr %pUserData2440, align 8
  br label %if.end2450

if.else2441:                                      ; preds = %if.then2428
  %1501 = load ptr, ptr %pFrame2360, align 8
  %hVar2442 = getelementptr inbounds nuw %struct.VmFrame, ptr %1501, i32 0, i32 5
  %1502 = load ptr, ptr %pInfo2356, align 8
  %sValue2443 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1502, i32 0, i32 1
  %zString2444 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2443, i32 0, i32 0
  %1503 = load ptr, ptr %zString2444, align 8
  %1504 = load ptr, ptr %pInfo2356, align 8
  %sValue2445 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1504, i32 0, i32 1
  %nByte2446 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2445, i32 0, i32 1
  %1505 = load i32, ptr %nByte2446, align 8
  %1506 = load ptr, ptr %pNode2386, align 8
  %nValIdx2447 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %1506, i32 0, i32 5
  %1507 = load i32, ptr %nValIdx2447, align 8
  %conv2448 = zext i32 %1507 to i64
  %1508 = inttoptr i64 %conv2448 to ptr
  %call2449 = call i32 @SyHashInsert(ptr noundef %hVar2442, ptr noundef %1503, i32 noundef %1505, ptr noundef %1508)
  br label %if.end2450

if.end2450:                                       ; preds = %if.else2441, %if.then2437
  br label %if.end2457

if.else2451:                                      ; preds = %if.end2424
  %1509 = load ptr, ptr %pVm.addr, align 8
  %1510 = load ptr, ptr %pInfo2356, align 8
  %sValue2452 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1510, i32 0, i32 1
  %call2453 = call ptr @VmExtractMemObj(ptr noundef %1509, ptr noundef %sValue2452, i32 noundef 0, i32 noundef 1)
  store ptr %call2453, ptr %pValue2359, align 8
  %1511 = load ptr, ptr %pValue2359, align 8
  %tobool2454 = icmp ne ptr %1511, null
  br i1 %tobool2454, label %if.then2455, label %if.end2456

if.then2455:                                      ; preds = %if.else2451
  %1512 = load ptr, ptr %pNode2386, align 8
  %1513 = load ptr, ptr %pValue2359, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %1512, ptr noundef %1513, i32 noundef 1)
  br label %if.end2456

if.end2456:                                       ; preds = %if.then2455, %if.else2451
  br label %if.end2457

if.end2457:                                       ; preds = %if.end2456, %if.end2450
  br label %if.end2458

if.end2458:                                       ; preds = %if.end2457, %if.end2403
  br label %if.end2565

if.else2459:                                      ; preds = %while.end2379
  %1514 = load ptr, ptr %pStep2358, align 8
  %xIter2461 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1514, i32 0, i32 1
  %1515 = load ptr, ptr %xIter2461, align 8
  store ptr %1515, ptr %pThis2460, align 8
  store ptr null, ptr %pVmAttr, align 8
  br label %while.cond2463

while.cond2463:                                   ; preds = %if.end2476, %if.else2459
  %1516 = load ptr, ptr %pThis2460, align 8
  %hAttr2464 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1516, i32 0, i32 2
  %call2465 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr2464)
  store ptr %call2465, ptr %pEntry2462, align 8
  %cmp2466 = icmp ne ptr %call2465, null
  br i1 %cmp2466, label %while.body2468, label %while.end2477

while.body2468:                                   ; preds = %while.cond2463
  %1517 = load ptr, ptr %pEntry2462, align 8
  %pUserData2469 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %1517, i32 0, i32 2
  %1518 = load ptr, ptr %pUserData2469, align 8
  store ptr %1518, ptr %pVmAttr, align 8
  %1519 = load ptr, ptr %pVm.addr, align 8
  %1520 = load ptr, ptr %pThis2460, align 8
  %pClass2470 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1520, i32 0, i32 1
  %1521 = load ptr, ptr %pClass2470, align 8
  %1522 = load ptr, ptr %pVmAttr, align 8
  %pAttr = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1522, i32 0, i32 0
  %1523 = load ptr, ptr %pAttr, align 8
  %sName2471 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1523, i32 0, i32 0
  %1524 = load ptr, ptr %pVmAttr, align 8
  %pAttr2472 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1524, i32 0, i32 0
  %1525 = load ptr, ptr %pAttr2472, align 8
  %iProtection = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1525, i32 0, i32 2
  %1526 = load i32, ptr %iProtection, align 4
  %call2473 = call i32 @VmClassMemberAccess(ptr noundef %1519, ptr noundef %1521, ptr noundef %sName2471, i32 noundef %1526, i32 noundef 0)
  %tobool2474 = icmp ne i32 %call2473, 0
  br i1 %tobool2474, label %if.then2475, label %if.end2476

if.then2475:                                      ; preds = %while.body2468
  br label %while.end2477

if.end2476:                                       ; preds = %while.body2468
  br label %while.cond2463, !llvm.loop !17

while.end2477:                                    ; preds = %if.then2475, %while.cond2463
  %1527 = load ptr, ptr %pEntry2462, align 8
  %cmp2478 = icmp eq ptr %1527, null
  br i1 %cmp2478, label %if.then2480, label %if.else2498

if.then2480:                                      ; preds = %while.end2477
  %1528 = load ptr, ptr %pInstr, align 8
  %iP22481 = getelementptr inbounds nuw %struct.VmInstr, ptr %1528, i32 0, i32 2
  %1529 = load i32, ptr %iP22481, align 8
  %sub2482 = sub i32 %1529, 1
  store i32 %sub2482, ptr %pc, align 4
  %1530 = load ptr, ptr %pStep2358, align 8
  %iFlags2483 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1530, i32 0, i32 0
  %1531 = load i32, ptr %iFlags2483, align 8
  %and2484 = and i32 %1531, 8
  %tobool2485 = icmp ne i32 %and2484, 0
  br i1 %tobool2485, label %if.then2486, label %if.end2493

if.then2486:                                      ; preds = %if.then2480
  %1532 = load ptr, ptr %pFrame2360, align 8
  %hVar2487 = getelementptr inbounds nuw %struct.VmFrame, ptr %1532, i32 0, i32 5
  %1533 = load ptr, ptr %pInfo2356, align 8
  %sValue2488 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1533, i32 0, i32 1
  %zString2489 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2488, i32 0, i32 0
  %1534 = load ptr, ptr %zString2489, align 8
  %1535 = load ptr, ptr %pInfo2356, align 8
  %sValue2490 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1535, i32 0, i32 1
  %nByte2491 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2490, i32 0, i32 1
  %1536 = load i32, ptr %nByte2491, align 8
  %call2492 = call i32 @SyHashDeleteEntry(ptr noundef %hVar2487, ptr noundef %1534, i32 noundef %1536, ptr noundef null)
  br label %if.end2493

if.end2493:                                       ; preds = %if.then2486, %if.then2480
  %1537 = load ptr, ptr %pVm.addr, align 8
  %sAllocator2494 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1537, i32 0, i32 0
  %1538 = load ptr, ptr %pStep2358, align 8
  %call2495 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator2494, ptr noundef %1538)
  %1539 = load ptr, ptr %pInfo2356, align 8
  %aStep2496 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1539, i32 0, i32 3
  %call2497 = call ptr @SySetPop(ptr noundef %aStep2496)
  %1540 = load ptr, ptr %pThis2460, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %1540)
  br label %if.end2564

if.else2498:                                      ; preds = %while.end2477
  %1541 = load ptr, ptr %pVmAttr, align 8
  %pAttr2499 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1541, i32 0, i32 0
  %1542 = load ptr, ptr %pAttr2499, align 8
  %sName2500 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1542, i32 0, i32 0
  store ptr %sName2500, ptr %pAttrName, align 8
  %1543 = load ptr, ptr %pStep2358, align 8
  %iFlags2501 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1543, i32 0, i32 0
  %1544 = load i32, ptr %iFlags2501, align 8
  %and2502 = and i32 %1544, 4
  %tobool2503 = icmp ne i32 %and2502, 0
  br i1 %tobool2503, label %land.lhs.true2504, label %if.end2526

land.lhs.true2504:                                ; preds = %if.else2498
  %1545 = load ptr, ptr %pInfo2356, align 8
  %sKey2505 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1545, i32 0, i32 0
  %nByte2506 = getelementptr inbounds nuw %struct.SyString, ptr %sKey2505, i32 0, i32 1
  %1546 = load i32, ptr %nByte2506, align 8
  %cmp2507 = icmp ugt i32 %1546, 0
  br i1 %cmp2507, label %if.then2509, label %if.end2526

if.then2509:                                      ; preds = %land.lhs.true2504
  %1547 = load ptr, ptr %pVm.addr, align 8
  %1548 = load ptr, ptr %pInfo2356, align 8
  %sKey2511 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1548, i32 0, i32 0
  %call2512 = call ptr @VmExtractMemObj(ptr noundef %1547, ptr noundef %sKey2511, i32 noundef 0, i32 noundef 1)
  store ptr %call2512, ptr %pKey2510, align 8
  %1549 = load ptr, ptr %pKey2510, align 8
  %tobool2513 = icmp ne ptr %1549, null
  br i1 %tobool2513, label %if.then2514, label %if.end2525

if.then2514:                                      ; preds = %if.then2509
  %1550 = load ptr, ptr %pKey2510, align 8
  %sBlob2515 = getelementptr inbounds nuw %struct.ph7_value, ptr %1550, i32 0, i32 4
  %call2516 = call i32 @SyBlobReset(ptr noundef %sBlob2515)
  %1551 = load ptr, ptr %pKey2510, align 8
  %sBlob2517 = getelementptr inbounds nuw %struct.ph7_value, ptr %1551, i32 0, i32 4
  %1552 = load ptr, ptr %pAttrName, align 8
  %zString2518 = getelementptr inbounds nuw %struct.SyString, ptr %1552, i32 0, i32 0
  %1553 = load ptr, ptr %zString2518, align 8
  %1554 = load ptr, ptr %pAttrName, align 8
  %nByte2519 = getelementptr inbounds nuw %struct.SyString, ptr %1554, i32 0, i32 1
  %1555 = load i32, ptr %nByte2519, align 8
  %call2520 = call i32 @SyBlobAppend(ptr noundef %sBlob2517, ptr noundef %1553, i32 noundef %1555)
  %1556 = load ptr, ptr %pKey2510, align 8
  %iFlags2521 = getelementptr inbounds nuw %struct.ph7_value, ptr %1556, i32 0, i32 2
  %1557 = load i32, ptr %iFlags2521, align 8
  %and2522 = and i32 %1557, -496
  %or2523 = or i32 %and2522, 1
  %1558 = load ptr, ptr %pKey2510, align 8
  %iFlags2524 = getelementptr inbounds nuw %struct.ph7_value, ptr %1558, i32 0, i32 2
  store i32 %or2523, ptr %iFlags2524, align 8
  br label %if.end2525

if.end2525:                                       ; preds = %if.then2514, %if.then2509
  br label %if.end2526

if.end2526:                                       ; preds = %if.end2525, %land.lhs.true2504, %if.else2498
  %1559 = load ptr, ptr %pThis2460, align 8
  %1560 = load ptr, ptr %pVmAttr, align 8
  %call2527 = call ptr @PH7_ClassInstanceExtractAttrValue(ptr noundef %1559, ptr noundef %1560)
  store ptr %call2527, ptr %pAttrValue, align 8
  %1561 = load ptr, ptr %pAttrValue, align 8
  %tobool2528 = icmp ne ptr %1561, null
  br i1 %tobool2528, label %if.then2529, label %if.end2563

if.then2529:                                      ; preds = %if.end2526
  %1562 = load ptr, ptr %pStep2358, align 8
  %iFlags2530 = getelementptr inbounds nuw %struct.ph7_foreach_step, ptr %1562, i32 0, i32 0
  %1563 = load i32, ptr %iFlags2530, align 8
  %and2531 = and i32 %1563, 8
  %tobool2532 = icmp ne i32 %and2531, 0
  br i1 %tobool2532, label %if.then2533, label %if.else2555

if.then2533:                                      ; preds = %if.then2529
  %1564 = load ptr, ptr %pFrame2360, align 8
  %hVar2534 = getelementptr inbounds nuw %struct.VmFrame, ptr %1564, i32 0, i32 5
  %1565 = load ptr, ptr %pInfo2356, align 8
  %sValue2535 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1565, i32 0, i32 1
  %zString2536 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2535, i32 0, i32 0
  %1566 = load ptr, ptr %zString2536, align 8
  %1567 = load ptr, ptr %pInfo2356, align 8
  %sValue2537 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1567, i32 0, i32 1
  %nByte2538 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2537, i32 0, i32 1
  %1568 = load i32, ptr %nByte2538, align 8
  %call2539 = call ptr @SyHashGet(ptr noundef %hVar2534, ptr noundef %1566, i32 noundef %1568)
  store ptr %call2539, ptr %pEntry2462, align 8
  %1569 = load ptr, ptr %pEntry2462, align 8
  %tobool2540 = icmp ne ptr %1569, null
  br i1 %tobool2540, label %if.then2541, label %if.else2545

if.then2541:                                      ; preds = %if.then2533
  %1570 = load ptr, ptr %pVmAttr, align 8
  %nIdx2542 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1570, i32 0, i32 1
  %1571 = load i32, ptr %nIdx2542, align 8
  %conv2543 = zext i32 %1571 to i64
  %1572 = inttoptr i64 %conv2543 to ptr
  %1573 = load ptr, ptr %pEntry2462, align 8
  %pUserData2544 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %1573, i32 0, i32 2
  store ptr %1572, ptr %pUserData2544, align 8
  br label %if.end2554

if.else2545:                                      ; preds = %if.then2533
  %1574 = load ptr, ptr %pFrame2360, align 8
  %hVar2546 = getelementptr inbounds nuw %struct.VmFrame, ptr %1574, i32 0, i32 5
  %1575 = load ptr, ptr %pInfo2356, align 8
  %sValue2547 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1575, i32 0, i32 1
  %zString2548 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2547, i32 0, i32 0
  %1576 = load ptr, ptr %zString2548, align 8
  %1577 = load ptr, ptr %pInfo2356, align 8
  %sValue2549 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1577, i32 0, i32 1
  %nByte2550 = getelementptr inbounds nuw %struct.SyString, ptr %sValue2549, i32 0, i32 1
  %1578 = load i32, ptr %nByte2550, align 8
  %1579 = load ptr, ptr %pVmAttr, align 8
  %nIdx2551 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1579, i32 0, i32 1
  %1580 = load i32, ptr %nIdx2551, align 8
  %conv2552 = zext i32 %1580 to i64
  %1581 = inttoptr i64 %conv2552 to ptr
  %call2553 = call i32 @SyHashInsert(ptr noundef %hVar2546, ptr noundef %1576, i32 noundef %1578, ptr noundef %1581)
  br label %if.end2554

if.end2554:                                       ; preds = %if.else2545, %if.then2541
  br label %if.end2562

if.else2555:                                      ; preds = %if.then2529
  %1582 = load ptr, ptr %pVm.addr, align 8
  %1583 = load ptr, ptr %pInfo2356, align 8
  %sValue2556 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %1583, i32 0, i32 1
  %call2557 = call ptr @VmExtractMemObj(ptr noundef %1582, ptr noundef %sValue2556, i32 noundef 0, i32 noundef 1)
  store ptr %call2557, ptr %pValue2359, align 8
  %1584 = load ptr, ptr %pValue2359, align 8
  %tobool2558 = icmp ne ptr %1584, null
  br i1 %tobool2558, label %if.then2559, label %if.end2561

if.then2559:                                      ; preds = %if.else2555
  %1585 = load ptr, ptr %pAttrValue, align 8
  %1586 = load ptr, ptr %pValue2359, align 8
  %call2560 = call i32 @PH7_MemObjStore(ptr noundef %1585, ptr noundef %1586)
  br label %if.end2561

if.end2561:                                       ; preds = %if.then2559, %if.else2555
  br label %if.end2562

if.end2562:                                       ; preds = %if.end2561, %if.end2554
  br label %if.end2563

if.end2563:                                       ; preds = %if.end2562, %if.end2526
  br label %if.end2564

if.end2564:                                       ; preds = %if.end2563, %if.end2493
  br label %if.end2565

if.end2565:                                       ; preds = %if.end2564, %if.end2458
  br label %sw.epilog3867

sw.bb2566:                                        ; preds = %for.cond
  %1587 = load ptr, ptr %pInstr, align 8
  %iP12570 = getelementptr inbounds nuw %struct.VmInstr, ptr %1587, i32 0, i32 1
  %1588 = load i32, ptr %iP12570, align 4
  %tobool2571 = icmp ne i32 %1588, 0
  br i1 %tobool2571, label %if.else2690, label %if.then2572

if.then2572:                                      ; preds = %sw.bb2566
  %1589 = load ptr, ptr %pTos, align 8
  %arrayidx2573 = getelementptr inbounds %struct.ph7_value, ptr %1589, i64 -1
  store ptr %arrayidx2573, ptr %pNos2568, align 8
  %1590 = load ptr, ptr %pNos2568, align 8
  %iFlags2574 = getelementptr inbounds nuw %struct.ph7_value, ptr %1590, i32 0, i32 2
  %1591 = load i32, ptr %iFlags2574, align 8
  %and2575 = and i32 %1591, 128
  %tobool2576 = icmp ne i32 %and2575, 0
  br i1 %tobool2576, label %if.then2577, label %if.else2685

if.then2577:                                      ; preds = %if.then2572
  %1592 = load ptr, ptr %pNos2568, align 8
  %x2579 = getelementptr inbounds nuw %struct.ph7_value, ptr %1592, i32 0, i32 1
  %1593 = load ptr, ptr %x2579, align 8
  store ptr %1593, ptr %pThis2567, align 8
  %1594 = load ptr, ptr %pThis2567, align 8
  %pClass2580 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1594, i32 0, i32 1
  %1595 = load ptr, ptr %pClass2580, align 8
  store ptr %1595, ptr %pClass2578, align 8
  %1596 = load ptr, ptr %pTos, align 8
  %sBlob2581 = getelementptr inbounds nuw %struct.ph7_value, ptr %1596, i32 0, i32 4
  %pBlob2582 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2581, i32 0, i32 1
  %1597 = load ptr, ptr %pBlob2582, align 8
  %zString2583 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 0
  store ptr %1597, ptr %zString2583, align 8
  %1598 = load ptr, ptr %pTos, align 8
  %sBlob2584 = getelementptr inbounds nuw %struct.ph7_value, ptr %1598, i32 0, i32 4
  %nByte2585 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2584, i32 0, i32 2
  %1599 = load i32, ptr %nByte2585, align 8
  %nByte2586 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  store i32 %1599, ptr %nByte2586, align 8
  %1600 = load ptr, ptr %pInstr, align 8
  %iP22587 = getelementptr inbounds nuw %struct.VmInstr, ptr %1600, i32 0, i32 2
  %1601 = load i32, ptr %iP22587, align 8
  %tobool2588 = icmp ne i32 %1601, 0
  br i1 %tobool2588, label %if.then2589, label %if.else2618

if.then2589:                                      ; preds = %if.then2577
  store ptr null, ptr %pMeth, align 8
  %nByte2590 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  %1602 = load i32, ptr %nByte2590, align 8
  %cmp2591 = icmp ugt i32 %1602, 0
  br i1 %cmp2591, label %if.then2593, label %if.end2597

if.then2593:                                      ; preds = %if.then2589
  %1603 = load ptr, ptr %pClass2578, align 8
  %zString2594 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 0
  %1604 = load ptr, ptr %zString2594, align 8
  %nByte2595 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  %1605 = load i32, ptr %nByte2595, align 8
  %call2596 = call ptr @PH7_ClassExtractMethod(ptr noundef %1603, ptr noundef %1604, i32 noundef %1605)
  store ptr %call2596, ptr %pMeth, align 8
  br label %if.end2597

if.end2597:                                       ; preds = %if.then2593, %if.then2589
  %1606 = load ptr, ptr %pMeth, align 8
  %cmp2598 = icmp eq ptr %1606, null
  br i1 %cmp2598, label %if.then2600, label %if.else2605

if.then2600:                                      ; preds = %if.end2597
  %1607 = load ptr, ptr %pVm.addr, align 8
  %1608 = load ptr, ptr %pClass2578, align 8
  %sName2601 = getelementptr inbounds nuw %struct.ph7_class, ptr %1608, i32 0, i32 2
  %call2602 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1607, i32 noundef 1, ptr noundef @.str.82, ptr noundef %sName2601, ptr noundef %sName2569)
  %1609 = load ptr, ptr %pVm.addr, align 8
  %1610 = load ptr, ptr %pClass2578, align 8
  %1611 = load ptr, ptr %pThis2567, align 8
  %call2603 = call i32 @PH7_ClassInstanceCallMagicMethod(ptr noundef %1609, ptr noundef %1610, ptr noundef %1611, ptr noundef @.str.83, i32 noundef 6, ptr noundef %sName2569)
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1612 = load ptr, ptr %pTos, align 8
  %call2604 = call i32 @PH7_MemObjRelease(ptr noundef %1612)
  br label %if.end2616

if.else2605:                                      ; preds = %if.end2597
  %1613 = load ptr, ptr %pTos, align 8
  %call2606 = call i32 @PH7_MemObjRelease(ptr noundef %1613)
  %1614 = load ptr, ptr %pTos, align 8
  %sBlob2607 = getelementptr inbounds nuw %struct.ph7_value, ptr %1614, i32 0, i32 4
  %1615 = load ptr, ptr %pMeth, align 8
  %sVmName = getelementptr inbounds nuw %struct.ph7_class_method, ptr %1615, i32 0, i32 1
  %zString2608 = getelementptr inbounds nuw %struct.SyString, ptr %sVmName, i32 0, i32 0
  %1616 = load ptr, ptr %zString2608, align 8
  %1617 = load ptr, ptr %pMeth, align 8
  %sVmName2609 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %1617, i32 0, i32 1
  %nByte2610 = getelementptr inbounds nuw %struct.SyString, ptr %sVmName2609, i32 0, i32 1
  %1618 = load i32, ptr %nByte2610, align 8
  %call2611 = call i32 @SyBlobAppend(ptr noundef %sBlob2607, ptr noundef %1616, i32 noundef %1618)
  %1619 = load ptr, ptr %pTos, align 8
  %iFlags2612 = getelementptr inbounds nuw %struct.ph7_value, ptr %1619, i32 0, i32 2
  %1620 = load i32, ptr %iFlags2612, align 8
  %and2613 = and i32 %1620, -496
  %or2614 = or i32 %and2613, 1
  %1621 = load ptr, ptr %pTos, align 8
  %iFlags2615 = getelementptr inbounds nuw %struct.ph7_value, ptr %1621, i32 0, i32 2
  store i32 %or2614, ptr %iFlags2615, align 8
  br label %if.end2616

if.end2616:                                       ; preds = %if.else2605, %if.then2600
  %1622 = load ptr, ptr %pTos, align 8
  %nIdx2617 = getelementptr inbounds nuw %struct.ph7_value, ptr %1622, i32 0, i32 5
  store i32 -1, ptr %nIdx2617, align 8
  br label %if.end2684

if.else2618:                                      ; preds = %if.then2577
  store ptr null, ptr %pObjAttr, align 8
  %nByte2620 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  %1623 = load i32, ptr %nByte2620, align 8
  %cmp2621 = icmp ugt i32 %1623, 0
  br i1 %cmp2621, label %if.then2623, label %if.end2632

if.then2623:                                      ; preds = %if.else2618
  %1624 = load ptr, ptr %pThis2567, align 8
  %hAttr2624 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1624, i32 0, i32 2
  %zString2625 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 0
  %1625 = load ptr, ptr %zString2625, align 8
  %nByte2626 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  %1626 = load i32, ptr %nByte2626, align 8
  %call2627 = call ptr @SyHashGet(ptr noundef %hAttr2624, ptr noundef %1625, i32 noundef %1626)
  store ptr %call2627, ptr %pEntry2619, align 8
  %1627 = load ptr, ptr %pEntry2619, align 8
  %tobool2628 = icmp ne ptr %1627, null
  br i1 %tobool2628, label %if.then2629, label %if.end2631

if.then2629:                                      ; preds = %if.then2623
  %1628 = load ptr, ptr %pEntry2619, align 8
  %pUserData2630 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %1628, i32 0, i32 2
  %1629 = load ptr, ptr %pUserData2630, align 8
  store ptr %1629, ptr %pObjAttr, align 8
  br label %if.end2631

if.end2631:                                       ; preds = %if.then2629, %if.then2623
  br label %if.end2632

if.end2632:                                       ; preds = %if.end2631, %if.else2618
  %1630 = load ptr, ptr %pObjAttr, align 8
  %cmp2633 = icmp eq ptr %1630, null
  br i1 %cmp2633, label %if.then2635, label %if.end2639

if.then2635:                                      ; preds = %if.end2632
  %1631 = load ptr, ptr %pVm.addr, align 8
  %1632 = load ptr, ptr %pClass2578, align 8
  %sName2636 = getelementptr inbounds nuw %struct.ph7_class, ptr %1632, i32 0, i32 2
  %call2637 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1631, i32 noundef 1, ptr noundef @.str.84, ptr noundef %sName2636, ptr noundef %sName2569)
  %1633 = load ptr, ptr %pVm.addr, align 8
  %1634 = load ptr, ptr %pClass2578, align 8
  %1635 = load ptr, ptr %pThis2567, align 8
  %call2638 = call i32 @PH7_ClassInstanceCallMagicMethod(ptr noundef %1633, ptr noundef %1634, ptr noundef %1635, ptr noundef @.str.85, i32 noundef 5, ptr noundef %sName2569)
  br label %if.end2639

if.end2639:                                       ; preds = %if.then2635, %if.end2632
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1636 = load ptr, ptr %pThis2567, align 8
  %iRef2640 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1636, i32 0, i32 3
  %1637 = load i32, ptr %iRef2640, align 8
  %inc2641 = add nsw i32 %1637, 1
  store i32 %inc2641, ptr %iRef2640, align 8
  %1638 = load ptr, ptr %pTos, align 8
  %call2642 = call i32 @PH7_MemObjRelease(ptr noundef %1638)
  %1639 = load ptr, ptr %pTos, align 8
  %nIdx2643 = getelementptr inbounds nuw %struct.ph7_value, ptr %1639, i32 0, i32 5
  store i32 -1, ptr %nIdx2643, align 8
  %1640 = load ptr, ptr %pObjAttr, align 8
  %tobool2644 = icmp ne ptr %1640, null
  br i1 %tobool2644, label %if.then2645, label %if.end2683

if.then2645:                                      ; preds = %if.end2639
  store ptr null, ptr %pValue2646, align 8
  %1641 = load ptr, ptr %pVm.addr, align 8
  %1642 = load ptr, ptr %pClass2578, align 8
  %1643 = load ptr, ptr %pObjAttr, align 8
  %pAttr2647 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1643, i32 0, i32 0
  %1644 = load ptr, ptr %pAttr2647, align 8
  %sName2648 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1644, i32 0, i32 0
  %1645 = load ptr, ptr %pObjAttr, align 8
  %pAttr2649 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1645, i32 0, i32 0
  %1646 = load ptr, ptr %pAttr2649, align 8
  %iProtection2650 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1646, i32 0, i32 2
  %1647 = load i32, ptr %iProtection2650, align 4
  %call2651 = call i32 @VmClassMemberAccess(ptr noundef %1641, ptr noundef %1642, ptr noundef %sName2648, i32 noundef %1647, i32 noundef 1)
  %tobool2652 = icmp ne i32 %call2651, 0
  br i1 %tobool2652, label %if.then2653, label %if.end2682

if.then2653:                                      ; preds = %if.then2645
  %1648 = load ptr, ptr %pVm.addr, align 8
  %aMemObj2654 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1648, i32 0, i32 6
  %1649 = load ptr, ptr %pObjAttr, align 8
  %nIdx2655 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1649, i32 0, i32 1
  %1650 = load i32, ptr %nIdx2655, align 8
  %call2656 = call ptr @SySetAt(ptr noundef %aMemObj2654, i32 noundef %1650)
  store ptr %call2656, ptr %pValue2646, align 8
  %1651 = load ptr, ptr %pValue2646, align 8
  %tobool2657 = icmp ne ptr %1651, null
  br i1 %tobool2657, label %if.then2658, label %if.end2681

if.then2658:                                      ; preds = %if.then2653
  %1652 = load ptr, ptr %pThis2567, align 8
  %iRef2659 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1652, i32 0, i32 3
  %1653 = load i32, ptr %iRef2659, align 8
  %cmp2660 = icmp slt i32 %1653, 2
  br i1 %cmp2660, label %if.then2662, label %if.else2664

if.then2662:                                      ; preds = %if.then2658
  %1654 = load ptr, ptr %pValue2646, align 8
  %1655 = load ptr, ptr %pTos, align 8
  %call2663 = call i32 @PH7_MemObjStore(ptr noundef %1654, ptr noundef %1655)
  br label %if.end2666

if.else2664:                                      ; preds = %if.then2658
  %1656 = load ptr, ptr %pValue2646, align 8
  %1657 = load ptr, ptr %pTos, align 8
  %call2665 = call i32 @PH7_MemObjLoad(ptr noundef %1656, ptr noundef %1657)
  br label %if.end2666

if.end2666:                                       ; preds = %if.else2664, %if.then2662
  %1658 = load ptr, ptr %pObjAttr, align 8
  %pAttr2667 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1658, i32 0, i32 0
  %1659 = load ptr, ptr %pAttr2667, align 8
  %iFlags2668 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1659, i32 0, i32 1
  %1660 = load i32, ptr %iFlags2668, align 8
  %and2669 = and i32 %1660, 2
  %cmp2670 = icmp eq i32 %and2669, 0
  br i1 %cmp2670, label %if.then2672, label %if.end2680

if.then2672:                                      ; preds = %if.end2666
  %1661 = load ptr, ptr %pThis2567, align 8
  %iRef2673 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1661, i32 0, i32 3
  %1662 = load i32, ptr %iRef2673, align 8
  %cmp2674 = icmp sgt i32 %1662, 1
  br i1 %cmp2674, label %if.then2676, label %if.end2679

if.then2676:                                      ; preds = %if.then2672
  %1663 = load ptr, ptr %pObjAttr, align 8
  %nIdx2677 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %1663, i32 0, i32 1
  %1664 = load i32, ptr %nIdx2677, align 8
  %1665 = load ptr, ptr %pTos, align 8
  %nIdx2678 = getelementptr inbounds nuw %struct.ph7_value, ptr %1665, i32 0, i32 5
  store i32 %1664, ptr %nIdx2678, align 8
  br label %if.end2679

if.end2679:                                       ; preds = %if.then2676, %if.then2672
  br label %if.end2680

if.end2680:                                       ; preds = %if.end2679, %if.end2666
  br label %if.end2681

if.end2681:                                       ; preds = %if.end2680, %if.then2653
  br label %if.end2682

if.end2682:                                       ; preds = %if.end2681, %if.then2645
  br label %if.end2683

if.end2683:                                       ; preds = %if.end2682, %if.end2639
  %1666 = load ptr, ptr %pThis2567, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %1666)
  br label %if.end2684

if.end2684:                                       ; preds = %if.end2683, %if.end2616
  br label %if.end2689

if.else2685:                                      ; preds = %if.then2572
  %1667 = load ptr, ptr %pVm.addr, align 8
  %call2686 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1667, i32 noundef 1, ptr noundef @.str.86)
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1668 = load ptr, ptr %pTos, align 8
  %call2687 = call i32 @PH7_MemObjRelease(ptr noundef %1668)
  %1669 = load ptr, ptr %pTos, align 8
  %nIdx2688 = getelementptr inbounds nuw %struct.ph7_value, ptr %1669, i32 0, i32 5
  store i32 -1, ptr %nIdx2688, align 8
  br label %if.end2689

if.end2689:                                       ; preds = %if.else2685, %if.end2684
  br label %if.end2872

if.else2690:                                      ; preds = %sw.bb2566
  %1670 = load ptr, ptr %pTos, align 8
  store ptr %1670, ptr %pNos2568, align 8
  store ptr null, ptr %pThis2567, align 8
  %1671 = load ptr, ptr %pInstr, align 8
  %p32691 = getelementptr inbounds nuw %struct.VmInstr, ptr %1671, i32 0, i32 3
  %1672 = load ptr, ptr %p32691, align 8
  %tobool2692 = icmp ne ptr %1672, null
  br i1 %tobool2692, label %if.else2701, label %if.then2693

if.then2693:                                      ; preds = %if.else2690
  %1673 = load ptr, ptr %pTos, align 8
  %sBlob2694 = getelementptr inbounds nuw %struct.ph7_value, ptr %1673, i32 0, i32 4
  %pBlob2695 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2694, i32 0, i32 1
  %1674 = load ptr, ptr %pBlob2695, align 8
  %zString2696 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 0
  store ptr %1674, ptr %zString2696, align 8
  %1675 = load ptr, ptr %pTos, align 8
  %sBlob2697 = getelementptr inbounds nuw %struct.ph7_value, ptr %1675, i32 0, i32 4
  %nByte2698 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2697, i32 0, i32 2
  %1676 = load i32, ptr %nByte2698, align 8
  %nByte2699 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  store i32 %1676, ptr %nByte2699, align 8
  %1677 = load ptr, ptr %pNos2568, align 8
  %incdec.ptr2700 = getelementptr inbounds %struct.ph7_value, ptr %1677, i32 -1
  store ptr %incdec.ptr2700, ptr %pNos2568, align 8
  br label %if.end2707

if.else2701:                                      ; preds = %if.else2690
  %1678 = load ptr, ptr %pInstr, align 8
  %p32702 = getelementptr inbounds nuw %struct.VmInstr, ptr %1678, i32 0, i32 3
  %1679 = load ptr, ptr %p32702, align 8
  %zString2703 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 0
  store ptr %1679, ptr %zString2703, align 8
  %1680 = load ptr, ptr %pInstr, align 8
  %p32704 = getelementptr inbounds nuw %struct.VmInstr, ptr %1680, i32 0, i32 3
  %1681 = load ptr, ptr %p32704, align 8
  %call2705 = call i32 @SyStrlen(ptr noundef %1681)
  %nByte2706 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  store i32 %call2705, ptr %nByte2706, align 8
  br label %if.end2707

if.end2707:                                       ; preds = %if.else2701, %if.then2693
  %1682 = load ptr, ptr %pNos2568, align 8
  %iFlags2708 = getelementptr inbounds nuw %struct.ph7_value, ptr %1682, i32 0, i32 2
  %1683 = load i32, ptr %iFlags2708, align 8
  %and2709 = and i32 %1683, 129
  %tobool2710 = icmp ne i32 %and2709, 0
  br i1 %tobool2710, label %if.then2711, label %if.else2863

if.then2711:                                      ; preds = %if.end2707
  store ptr null, ptr %pClass2712, align 8
  %1684 = load ptr, ptr %pNos2568, align 8
  %iFlags2713 = getelementptr inbounds nuw %struct.ph7_value, ptr %1684, i32 0, i32 2
  %1685 = load i32, ptr %iFlags2713, align 8
  %and2714 = and i32 %1685, 128
  %tobool2715 = icmp ne i32 %and2714, 0
  br i1 %tobool2715, label %if.then2716, label %if.else2721

if.then2716:                                      ; preds = %if.then2711
  %1686 = load ptr, ptr %pNos2568, align 8
  %x2717 = getelementptr inbounds nuw %struct.ph7_value, ptr %1686, i32 0, i32 1
  %1687 = load ptr, ptr %x2717, align 8
  store ptr %1687, ptr %pThis2567, align 8
  %1688 = load ptr, ptr %pThis2567, align 8
  %pClass2718 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1688, i32 0, i32 1
  %1689 = load ptr, ptr %pClass2718, align 8
  store ptr %1689, ptr %pClass2712, align 8
  %1690 = load ptr, ptr %pThis2567, align 8
  %iRef2719 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1690, i32 0, i32 3
  %1691 = load i32, ptr %iRef2719, align 8
  %inc2720 = add nsw i32 %1691, 1
  store i32 %inc2720, ptr %iRef2719, align 8
  br label %if.end2733

if.else2721:                                      ; preds = %if.then2711
  %1692 = load ptr, ptr %pNos2568, align 8
  %sBlob2722 = getelementptr inbounds nuw %struct.ph7_value, ptr %1692, i32 0, i32 4
  %nByte2723 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2722, i32 0, i32 2
  %1693 = load i32, ptr %nByte2723, align 8
  %cmp2724 = icmp ugt i32 %1693, 0
  br i1 %cmp2724, label %if.then2726, label %if.end2732

if.then2726:                                      ; preds = %if.else2721
  %1694 = load ptr, ptr %pVm.addr, align 8
  %1695 = load ptr, ptr %pNos2568, align 8
  %sBlob2727 = getelementptr inbounds nuw %struct.ph7_value, ptr %1695, i32 0, i32 4
  %pBlob2728 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2727, i32 0, i32 1
  %1696 = load ptr, ptr %pBlob2728, align 8
  %1697 = load ptr, ptr %pNos2568, align 8
  %sBlob2729 = getelementptr inbounds nuw %struct.ph7_value, ptr %1697, i32 0, i32 4
  %nByte2730 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2729, i32 0, i32 2
  %1698 = load i32, ptr %nByte2730, align 8
  %call2731 = call ptr @PH7_VmExtractClass(ptr noundef %1694, ptr noundef %1696, i32 noundef %1698, i32 noundef 0, i32 noundef 0)
  store ptr %call2731, ptr %pClass2712, align 8
  br label %if.end2732

if.end2732:                                       ; preds = %if.then2726, %if.else2721
  br label %if.end2733

if.end2733:                                       ; preds = %if.end2732, %if.then2716
  %1699 = load ptr, ptr %pClass2712, align 8
  %cmp2734 = icmp eq ptr %1699, null
  br i1 %cmp2734, label %if.then2736, label %if.else2748

if.then2736:                                      ; preds = %if.end2733
  %1700 = load ptr, ptr %pVm.addr, align 8
  %1701 = load ptr, ptr %pNos2568, align 8
  %sBlob2737 = getelementptr inbounds nuw %struct.ph7_value, ptr %1701, i32 0, i32 4
  %nByte2738 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2737, i32 0, i32 2
  %1702 = load i32, ptr %nByte2738, align 8
  %1703 = load ptr, ptr %pNos2568, align 8
  %sBlob2739 = getelementptr inbounds nuw %struct.ph7_value, ptr %1703, i32 0, i32 4
  %pBlob2740 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2739, i32 0, i32 1
  %1704 = load ptr, ptr %pBlob2740, align 8
  %call2741 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1700, i32 noundef 1, ptr noundef @.str.87, i32 noundef %1702, ptr noundef %1704)
  %1705 = load ptr, ptr %pInstr, align 8
  %p32742 = getelementptr inbounds nuw %struct.VmInstr, ptr %1705, i32 0, i32 3
  %1706 = load ptr, ptr %p32742, align 8
  %tobool2743 = icmp ne ptr %1706, null
  br i1 %tobool2743, label %if.end2745, label %if.then2744

if.then2744:                                      ; preds = %if.then2736
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end2745

if.end2745:                                       ; preds = %if.then2744, %if.then2736
  %1707 = load ptr, ptr %pTos, align 8
  %call2746 = call i32 @PH7_MemObjRelease(ptr noundef %1707)
  %1708 = load ptr, ptr %pTos, align 8
  %nIdx2747 = getelementptr inbounds nuw %struct.ph7_value, ptr %1708, i32 0, i32 5
  store i32 -1, ptr %nIdx2747, align 8
  br label %if.end2862

if.else2748:                                      ; preds = %if.end2733
  %1709 = load ptr, ptr %pInstr, align 8
  %iP22749 = getelementptr inbounds nuw %struct.VmInstr, ptr %1709, i32 0, i32 2
  %1710 = load i32, ptr %iP22749, align 8
  %tobool2750 = icmp ne i32 %1710, 0
  br i1 %tobool2750, label %if.then2751, label %if.else2801

if.then2751:                                      ; preds = %if.else2748
  store ptr null, ptr %pMeth2752, align 8
  %nByte2753 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  %1711 = load i32, ptr %nByte2753, align 8
  %cmp2754 = icmp ugt i32 %1711, 0
  br i1 %cmp2754, label %land.lhs.true2756, label %if.end2765

land.lhs.true2756:                                ; preds = %if.then2751
  %1712 = load ptr, ptr %pClass2712, align 8
  %iFlags2757 = getelementptr inbounds nuw %struct.ph7_class, ptr %1712, i32 0, i32 3
  %1713 = load i32, ptr %iFlags2757, align 8
  %and2758 = and i32 %1713, 2
  %cmp2759 = icmp eq i32 %and2758, 0
  br i1 %cmp2759, label %if.then2761, label %if.end2765

if.then2761:                                      ; preds = %land.lhs.true2756
  %1714 = load ptr, ptr %pClass2712, align 8
  %zString2762 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 0
  %1715 = load ptr, ptr %zString2762, align 8
  %nByte2763 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  %1716 = load i32, ptr %nByte2763, align 8
  %call2764 = call ptr @PH7_ClassExtractMethod(ptr noundef %1714, ptr noundef %1715, i32 noundef %1716)
  store ptr %call2764, ptr %pMeth2752, align 8
  br label %if.end2765

if.end2765:                                       ; preds = %if.then2761, %land.lhs.true2756, %if.then2751
  %1717 = load ptr, ptr %pMeth2752, align 8
  %cmp2766 = icmp eq ptr %1717, null
  br i1 %cmp2766, label %if.then2772, label %lor.lhs.false2768

lor.lhs.false2768:                                ; preds = %if.end2765
  %1718 = load ptr, ptr %pMeth2752, align 8
  %iFlags2769 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %1718, i32 0, i32 3
  %1719 = load i32, ptr %iFlags2769, align 4
  %and2770 = and i32 %1719, 4
  %tobool2771 = icmp ne i32 %and2770, 0
  br i1 %tobool2771, label %if.then2772, label %if.else2787

if.then2772:                                      ; preds = %lor.lhs.false2768, %if.end2765
  %1720 = load ptr, ptr %pMeth2752, align 8
  %tobool2773 = icmp ne ptr %1720, null
  br i1 %tobool2773, label %if.then2774, label %if.else2777

if.then2774:                                      ; preds = %if.then2772
  %1721 = load ptr, ptr %pVm.addr, align 8
  %1722 = load ptr, ptr %pClass2712, align 8
  %sName2775 = getelementptr inbounds nuw %struct.ph7_class, ptr %1722, i32 0, i32 2
  %call2776 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1721, i32 noundef 1, ptr noundef @.str.88, ptr noundef %sName2775, ptr noundef %sName2569)
  br label %if.end2781

if.else2777:                                      ; preds = %if.then2772
  %1723 = load ptr, ptr %pVm.addr, align 8
  %1724 = load ptr, ptr %pClass2712, align 8
  %sName2778 = getelementptr inbounds nuw %struct.ph7_class, ptr %1724, i32 0, i32 2
  %call2779 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1723, i32 noundef 1, ptr noundef @.str.89, ptr noundef %sName2778, ptr noundef %sName2569)
  %1725 = load ptr, ptr %pVm.addr, align 8
  %1726 = load ptr, ptr %pClass2712, align 8
  %call2780 = call i32 @PH7_ClassInstanceCallMagicMethod(ptr noundef %1725, ptr noundef %1726, ptr noundef null, ptr noundef @.str.90, i32 noundef 12, ptr noundef %sName2569)
  br label %if.end2781

if.end2781:                                       ; preds = %if.else2777, %if.then2774
  %1727 = load ptr, ptr %pInstr, align 8
  %p32782 = getelementptr inbounds nuw %struct.VmInstr, ptr %1727, i32 0, i32 3
  %1728 = load ptr, ptr %p32782, align 8
  %tobool2783 = icmp ne ptr %1728, null
  br i1 %tobool2783, label %if.end2785, label %if.then2784

if.then2784:                                      ; preds = %if.end2781
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end2785

if.end2785:                                       ; preds = %if.then2784, %if.end2781
  %1729 = load ptr, ptr %pTos, align 8
  %call2786 = call i32 @PH7_MemObjRelease(ptr noundef %1729)
  br label %if.end2799

if.else2787:                                      ; preds = %lor.lhs.false2768
  %1730 = load ptr, ptr %pTos, align 8
  %call2788 = call i32 @PH7_MemObjRelease(ptr noundef %1730)
  %1731 = load ptr, ptr %pTos, align 8
  %sBlob2789 = getelementptr inbounds nuw %struct.ph7_value, ptr %1731, i32 0, i32 4
  %1732 = load ptr, ptr %pMeth2752, align 8
  %sVmName2790 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %1732, i32 0, i32 1
  %zString2791 = getelementptr inbounds nuw %struct.SyString, ptr %sVmName2790, i32 0, i32 0
  %1733 = load ptr, ptr %zString2791, align 8
  %1734 = load ptr, ptr %pMeth2752, align 8
  %sVmName2792 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %1734, i32 0, i32 1
  %nByte2793 = getelementptr inbounds nuw %struct.SyString, ptr %sVmName2792, i32 0, i32 1
  %1735 = load i32, ptr %nByte2793, align 8
  %call2794 = call i32 @SyBlobAppend(ptr noundef %sBlob2789, ptr noundef %1733, i32 noundef %1735)
  %1736 = load ptr, ptr %pTos, align 8
  %iFlags2795 = getelementptr inbounds nuw %struct.ph7_value, ptr %1736, i32 0, i32 2
  %1737 = load i32, ptr %iFlags2795, align 8
  %and2796 = and i32 %1737, -496
  %or2797 = or i32 %and2796, 1
  %1738 = load ptr, ptr %pTos, align 8
  %iFlags2798 = getelementptr inbounds nuw %struct.ph7_value, ptr %1738, i32 0, i32 2
  store i32 %or2797, ptr %iFlags2798, align 8
  br label %if.end2799

if.end2799:                                       ; preds = %if.else2787, %if.end2785
  %1739 = load ptr, ptr %pTos, align 8
  %nIdx2800 = getelementptr inbounds nuw %struct.ph7_value, ptr %1739, i32 0, i32 5
  store i32 -1, ptr %nIdx2800, align 8
  br label %if.end2858

if.else2801:                                      ; preds = %if.else2748
  store ptr null, ptr %pAttr2802, align 8
  %nByte2803 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  %1740 = load i32, ptr %nByte2803, align 8
  %cmp2804 = icmp ugt i32 %1740, 0
  br i1 %cmp2804, label %if.then2806, label %if.end2810

if.then2806:                                      ; preds = %if.else2801
  %1741 = load ptr, ptr %pClass2712, align 8
  %zString2807 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 0
  %1742 = load ptr, ptr %zString2807, align 8
  %nByte2808 = getelementptr inbounds nuw %struct.SyString, ptr %sName2569, i32 0, i32 1
  %1743 = load i32, ptr %nByte2808, align 8
  %call2809 = call ptr @PH7_ClassExtractAttribute(ptr noundef %1741, ptr noundef %1742, i32 noundef %1743)
  store ptr %call2809, ptr %pAttr2802, align 8
  br label %if.end2810

if.end2810:                                       ; preds = %if.then2806, %if.else2801
  %1744 = load ptr, ptr %pAttr2802, align 8
  %cmp2811 = icmp eq ptr %1744, null
  br i1 %cmp2811, label %if.then2813, label %if.end2817

if.then2813:                                      ; preds = %if.end2810
  %1745 = load ptr, ptr %pVm.addr, align 8
  %1746 = load ptr, ptr %pClass2712, align 8
  %sName2814 = getelementptr inbounds nuw %struct.ph7_class, ptr %1746, i32 0, i32 2
  %call2815 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1745, i32 noundef 1, ptr noundef @.str.91, ptr noundef %sName2814, ptr noundef %sName2569)
  %1747 = load ptr, ptr %pVm.addr, align 8
  %1748 = load ptr, ptr %pClass2712, align 8
  %call2816 = call i32 @PH7_ClassInstanceCallMagicMethod(ptr noundef %1747, ptr noundef %1748, ptr noundef null, ptr noundef @.str.85, i32 noundef 5, ptr noundef %sName2569)
  br label %if.end2817

if.end2817:                                       ; preds = %if.then2813, %if.end2810
  %1749 = load ptr, ptr %pInstr, align 8
  %p32818 = getelementptr inbounds nuw %struct.VmInstr, ptr %1749, i32 0, i32 3
  %1750 = load ptr, ptr %p32818, align 8
  %tobool2819 = icmp ne ptr %1750, null
  br i1 %tobool2819, label %if.end2821, label %if.then2820

if.then2820:                                      ; preds = %if.end2817
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end2821

if.end2821:                                       ; preds = %if.then2820, %if.end2817
  %1751 = load ptr, ptr %pTos, align 8
  %call2822 = call i32 @PH7_MemObjRelease(ptr noundef %1751)
  %1752 = load ptr, ptr %pTos, align 8
  %nIdx2823 = getelementptr inbounds nuw %struct.ph7_value, ptr %1752, i32 0, i32 5
  store i32 -1, ptr %nIdx2823, align 8
  %1753 = load ptr, ptr %pAttr2802, align 8
  %tobool2824 = icmp ne ptr %1753, null
  br i1 %tobool2824, label %if.then2825, label %if.end2857

if.then2825:                                      ; preds = %if.end2821
  %1754 = load ptr, ptr %pAttr2802, align 8
  %iFlags2826 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1754, i32 0, i32 1
  %1755 = load i32, ptr %iFlags2826, align 8
  %and2827 = and i32 %1755, 3
  %cmp2828 = icmp eq i32 %and2827, 0
  br i1 %cmp2828, label %if.then2830, label %if.else2834

if.then2830:                                      ; preds = %if.then2825
  %1756 = load ptr, ptr %pVm.addr, align 8
  %1757 = load ptr, ptr %pClass2712, align 8
  %sName2831 = getelementptr inbounds nuw %struct.ph7_class, ptr %1757, i32 0, i32 2
  %1758 = load ptr, ptr %pAttr2802, align 8
  %sName2832 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1758, i32 0, i32 0
  %call2833 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1756, i32 noundef 1, ptr noundef @.str.92, ptr noundef %sName2831, ptr noundef %sName2832)
  br label %if.end2856

if.else2834:                                      ; preds = %if.then2825
  %1759 = load ptr, ptr %pVm.addr, align 8
  %1760 = load ptr, ptr %pClass2712, align 8
  %1761 = load ptr, ptr %pAttr2802, align 8
  %sName2836 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1761, i32 0, i32 0
  %1762 = load ptr, ptr %pAttr2802, align 8
  %iProtection2837 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1762, i32 0, i32 2
  %1763 = load i32, ptr %iProtection2837, align 4
  %call2838 = call i32 @VmClassMemberAccess(ptr noundef %1759, ptr noundef %1760, ptr noundef %sName2836, i32 noundef %1763, i32 noundef 1)
  %tobool2839 = icmp ne i32 %call2838, 0
  br i1 %tobool2839, label %if.then2840, label %if.end2855

if.then2840:                                      ; preds = %if.else2834
  %1764 = load ptr, ptr %pVm.addr, align 8
  %aMemObj2841 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1764, i32 0, i32 6
  %1765 = load ptr, ptr %pAttr2802, align 8
  %nIdx2842 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1765, i32 0, i32 4
  %1766 = load i32, ptr %nIdx2842, align 8
  %call2843 = call ptr @SySetAt(ptr noundef %aMemObj2841, i32 noundef %1766)
  store ptr %call2843, ptr %pValue2835, align 8
  %1767 = load ptr, ptr %pValue2835, align 8
  %tobool2844 = icmp ne ptr %1767, null
  br i1 %tobool2844, label %if.then2845, label %if.end2854

if.then2845:                                      ; preds = %if.then2840
  %1768 = load ptr, ptr %pValue2835, align 8
  %1769 = load ptr, ptr %pTos, align 8
  %call2846 = call i32 @PH7_MemObjLoad(ptr noundef %1768, ptr noundef %1769)
  %1770 = load ptr, ptr %pAttr2802, align 8
  %iFlags2847 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1770, i32 0, i32 1
  %1771 = load i32, ptr %iFlags2847, align 8
  %and2848 = and i32 %1771, 1
  %tobool2849 = icmp ne i32 %and2848, 0
  br i1 %tobool2849, label %if.then2850, label %if.end2853

if.then2850:                                      ; preds = %if.then2845
  %1772 = load ptr, ptr %pAttr2802, align 8
  %nIdx2851 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %1772, i32 0, i32 4
  %1773 = load i32, ptr %nIdx2851, align 8
  %1774 = load ptr, ptr %pTos, align 8
  %nIdx2852 = getelementptr inbounds nuw %struct.ph7_value, ptr %1774, i32 0, i32 5
  store i32 %1773, ptr %nIdx2852, align 8
  br label %if.end2853

if.end2853:                                       ; preds = %if.then2850, %if.then2845
  br label %if.end2854

if.end2854:                                       ; preds = %if.end2853, %if.then2840
  br label %if.end2855

if.end2855:                                       ; preds = %if.end2854, %if.else2834
  br label %if.end2856

if.end2856:                                       ; preds = %if.end2855, %if.then2830
  br label %if.end2857

if.end2857:                                       ; preds = %if.end2856, %if.end2821
  br label %if.end2858

if.end2858:                                       ; preds = %if.end2857, %if.end2799
  %1775 = load ptr, ptr %pThis2567, align 8
  %tobool2859 = icmp ne ptr %1775, null
  br i1 %tobool2859, label %if.then2860, label %if.end2861

if.then2860:                                      ; preds = %if.end2858
  %1776 = load ptr, ptr %pThis2567, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %1776)
  br label %if.end2861

if.end2861:                                       ; preds = %if.then2860, %if.end2858
  br label %if.end2862

if.end2862:                                       ; preds = %if.end2861, %if.end2745
  br label %if.end2871

if.else2863:                                      ; preds = %if.end2707
  %1777 = load ptr, ptr %pVm.addr, align 8
  %call2864 = call i32 @PH7_VmThrowError(ptr noundef %1777, ptr noundef null, i32 noundef 1, ptr noundef @.str.93)
  %1778 = load ptr, ptr %pInstr, align 8
  %p32865 = getelementptr inbounds nuw %struct.VmInstr, ptr %1778, i32 0, i32 3
  %1779 = load ptr, ptr %p32865, align 8
  %tobool2866 = icmp ne ptr %1779, null
  br i1 %tobool2866, label %if.end2868, label %if.then2867

if.then2867:                                      ; preds = %if.else2863
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  br label %if.end2868

if.end2868:                                       ; preds = %if.then2867, %if.else2863
  %1780 = load ptr, ptr %pTos, align 8
  %call2869 = call i32 @PH7_MemObjRelease(ptr noundef %1780)
  %1781 = load ptr, ptr %pTos, align 8
  %nIdx2870 = getelementptr inbounds nuw %struct.ph7_value, ptr %1781, i32 0, i32 5
  store i32 -1, ptr %nIdx2870, align 8
  br label %if.end2871

if.end2871:                                       ; preds = %if.end2868, %if.end2862
  br label %if.end2872

if.end2872:                                       ; preds = %if.end2871, %if.end2689
  br label %sw.epilog3867

sw.bb2873:                                        ; preds = %for.cond
  %1782 = load ptr, ptr %pTos, align 8
  %1783 = load ptr, ptr %pInstr, align 8
  %iP12874 = getelementptr inbounds nuw %struct.VmInstr, ptr %1783, i32 0, i32 1
  %1784 = load i32, ptr %iP12874, align 4
  %sub2875 = sub nsw i32 0, %1784
  %idxprom2876 = sext i32 %sub2875 to i64
  %arrayidx2877 = getelementptr inbounds %struct.ph7_value, ptr %1782, i64 %idxprom2876
  store ptr %arrayidx2877, ptr %pArg, align 8
  store ptr null, ptr %pClass2878, align 8
  %1785 = load ptr, ptr %pTos, align 8
  %iFlags2879 = getelementptr inbounds nuw %struct.ph7_value, ptr %1785, i32 0, i32 2
  %1786 = load i32, ptr %iFlags2879, align 8
  %and2880 = and i32 %1786, 1
  %tobool2881 = icmp ne i32 %and2880, 0
  br i1 %tobool2881, label %land.lhs.true2882, label %if.else2893

land.lhs.true2882:                                ; preds = %sw.bb2873
  %1787 = load ptr, ptr %pTos, align 8
  %sBlob2883 = getelementptr inbounds nuw %struct.ph7_value, ptr %1787, i32 0, i32 4
  %nByte2884 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2883, i32 0, i32 2
  %1788 = load i32, ptr %nByte2884, align 8
  %cmp2885 = icmp ugt i32 %1788, 0
  br i1 %cmp2885, label %if.then2887, label %if.else2893

if.then2887:                                      ; preds = %land.lhs.true2882
  %1789 = load ptr, ptr %pVm.addr, align 8
  %1790 = load ptr, ptr %pTos, align 8
  %sBlob2888 = getelementptr inbounds nuw %struct.ph7_value, ptr %1790, i32 0, i32 4
  %pBlob2889 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2888, i32 0, i32 1
  %1791 = load ptr, ptr %pBlob2889, align 8
  %1792 = load ptr, ptr %pTos, align 8
  %sBlob2890 = getelementptr inbounds nuw %struct.ph7_value, ptr %1792, i32 0, i32 4
  %nByte2891 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2890, i32 0, i32 2
  %1793 = load i32, ptr %nByte2891, align 8
  %call2892 = call ptr @PH7_VmExtractClass(ptr noundef %1789, ptr noundef %1791, i32 noundef %1793, i32 noundef 1, i32 noundef 0)
  store ptr %call2892, ptr %pClass2878, align 8
  br label %if.end2901

if.else2893:                                      ; preds = %land.lhs.true2882, %sw.bb2873
  %1794 = load ptr, ptr %pTos, align 8
  %iFlags2894 = getelementptr inbounds nuw %struct.ph7_value, ptr %1794, i32 0, i32 2
  %1795 = load i32, ptr %iFlags2894, align 8
  %and2895 = and i32 %1795, 128
  %tobool2896 = icmp ne i32 %and2895, 0
  br i1 %tobool2896, label %if.then2897, label %if.end2900

if.then2897:                                      ; preds = %if.else2893
  %1796 = load ptr, ptr %pTos, align 8
  %x2898 = getelementptr inbounds nuw %struct.ph7_value, ptr %1796, i32 0, i32 1
  %1797 = load ptr, ptr %x2898, align 8
  %pClass2899 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1797, i32 0, i32 1
  %1798 = load ptr, ptr %pClass2899, align 8
  store ptr %1798, ptr %pClass2878, align 8
  br label %if.end2900

if.end2900:                                       ; preds = %if.then2897, %if.else2893
  br label %if.end2901

if.end2901:                                       ; preds = %if.end2900, %if.then2887
  %1799 = load ptr, ptr %pClass2878, align 8
  %cmp2902 = icmp eq ptr %1799, null
  br i1 %cmp2902, label %if.then2904, label %if.else2917

if.then2904:                                      ; preds = %if.end2901
  %1800 = load ptr, ptr %pVm.addr, align 8
  %1801 = load ptr, ptr %pTos, align 8
  %sBlob2905 = getelementptr inbounds nuw %struct.ph7_value, ptr %1801, i32 0, i32 4
  %nByte2906 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2905, i32 0, i32 2
  %1802 = load i32, ptr %nByte2906, align 8
  %1803 = load ptr, ptr %pTos, align 8
  %sBlob2907 = getelementptr inbounds nuw %struct.ph7_value, ptr %1803, i32 0, i32 4
  %pBlob2908 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob2907, i32 0, i32 1
  %1804 = load ptr, ptr %pBlob2908, align 8
  %call2909 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1800, i32 noundef 1, ptr noundef @.str.94, i32 noundef %1802, ptr noundef %1804)
  %1805 = load ptr, ptr %pTos, align 8
  %call2910 = call i32 @PH7_MemObjRelease(ptr noundef %1805)
  %1806 = load ptr, ptr %pInstr, align 8
  %iP12911 = getelementptr inbounds nuw %struct.VmInstr, ptr %1806, i32 0, i32 1
  %1807 = load i32, ptr %iP12911, align 4
  %cmp2912 = icmp sgt i32 %1807, 0
  br i1 %cmp2912, label %if.then2914, label %if.end2916

if.then2914:                                      ; preds = %if.then2904
  %1808 = load ptr, ptr %pInstr, align 8
  %iP12915 = getelementptr inbounds nuw %struct.VmInstr, ptr %1808, i32 0, i32 1
  %1809 = load i32, ptr %iP12915, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %1809)
  br label %if.end2916

if.end2916:                                       ; preds = %if.then2914, %if.then2904
  br label %if.end3004

if.else2917:                                      ; preds = %if.end2901
  %1810 = load ptr, ptr %pVm.addr, align 8
  %1811 = load ptr, ptr %pClass2878, align 8
  %call2919 = call ptr @PH7_NewClassInstance(ptr noundef %1810, ptr noundef %1811)
  store ptr %call2919, ptr %pNew, align 8
  %1812 = load ptr, ptr %pNew, align 8
  %cmp2920 = icmp eq ptr %1812, null
  br i1 %cmp2920, label %if.then2922, label %if.end2932

if.then2922:                                      ; preds = %if.else2917
  %1813 = load ptr, ptr %pVm.addr, align 8
  %1814 = load ptr, ptr %pClass2878, align 8
  %sName2923 = getelementptr inbounds nuw %struct.ph7_class, ptr %1814, i32 0, i32 2
  %call2924 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1813, i32 noundef 1, ptr noundef @.str.95, ptr noundef %sName2923)
  %1815 = load ptr, ptr %pTos, align 8
  %call2925 = call i32 @PH7_MemObjRelease(ptr noundef %1815)
  %1816 = load ptr, ptr %pInstr, align 8
  %iP12926 = getelementptr inbounds nuw %struct.VmInstr, ptr %1816, i32 0, i32 1
  %1817 = load i32, ptr %iP12926, align 4
  %cmp2927 = icmp sgt i32 %1817, 0
  br i1 %cmp2927, label %if.then2929, label %if.end2931

if.then2929:                                      ; preds = %if.then2922
  %1818 = load ptr, ptr %pInstr, align 8
  %iP12930 = getelementptr inbounds nuw %struct.VmInstr, ptr %1818, i32 0, i32 1
  %1819 = load i32, ptr %iP12930, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %1819)
  br label %if.end2931

if.end2931:                                       ; preds = %if.then2929, %if.then2922
  br label %sw.epilog3867

if.end2932:                                       ; preds = %if.else2917
  %1820 = load ptr, ptr %pClass2878, align 8
  %call2933 = call ptr @PH7_ClassExtractMethod(ptr noundef %1820, ptr noundef @.str.96, i32 noundef 11)
  store ptr %call2933, ptr %pCons2918, align 8
  %1821 = load ptr, ptr %pCons2918, align 8
  %cmp2934 = icmp eq ptr %1821, null
  br i1 %cmp2934, label %if.then2936, label %if.end2942

if.then2936:                                      ; preds = %if.end2932
  %1822 = load ptr, ptr %pClass2878, align 8
  %sName2938 = getelementptr inbounds nuw %struct.ph7_class, ptr %1822, i32 0, i32 2
  store ptr %sName2938, ptr %pName2937, align 8
  %1823 = load ptr, ptr %pClass2878, align 8
  %1824 = load ptr, ptr %pName2937, align 8
  %zString2939 = getelementptr inbounds nuw %struct.SyString, ptr %1824, i32 0, i32 0
  %1825 = load ptr, ptr %zString2939, align 8
  %1826 = load ptr, ptr %pName2937, align 8
  %nByte2940 = getelementptr inbounds nuw %struct.SyString, ptr %1826, i32 0, i32 1
  %1827 = load i32, ptr %nByte2940, align 8
  %call2941 = call ptr @PH7_ClassExtractMethod(ptr noundef %1823, ptr noundef %1825, i32 noundef %1827)
  store ptr %call2941, ptr %pCons2918, align 8
  br label %if.end2942

if.end2942:                                       ; preds = %if.then2936, %if.end2932
  %1828 = load ptr, ptr %pCons2918, align 8
  %tobool2943 = icmp ne ptr %1828, null
  br i1 %tobool2943, label %if.then2944, label %if.end2991

if.then2944:                                      ; preds = %if.end2942
  %call2945 = call i32 @SySetReset(ptr noundef %aArg)
  br label %while.cond2946

while.cond2946:                                   ; preds = %while.body2949, %if.then2944
  %1829 = load ptr, ptr %pArg, align 8
  %1830 = load ptr, ptr %pTos, align 8
  %cmp2947 = icmp ult ptr %1829, %1830
  br i1 %cmp2947, label %while.body2949, label %while.end2952

while.body2949:                                   ; preds = %while.cond2946
  %call2950 = call i32 @SySetPut(ptr noundef %aArg, ptr noundef %pArg)
  %1831 = load ptr, ptr %pArg, align 8
  %incdec.ptr2951 = getelementptr inbounds nuw %struct.ph7_value, ptr %1831, i32 1
  store ptr %incdec.ptr2951, ptr %pArg, align 8
  br label %while.cond2946, !llvm.loop !18

while.end2952:                                    ; preds = %while.cond2946
  %1832 = load ptr, ptr %pVm.addr, align 8
  %bErrReport = getelementptr inbounds nuw %struct.ph7_vm, ptr %1832, i32 0, i32 33
  %1833 = load i32, ptr %bErrReport, align 8
  %tobool2953 = icmp ne i32 %1833, 0
  br i1 %tobool2953, label %if.then2954, label %if.end2981

if.then2954:                                      ; preds = %while.end2952
  %nUsed2956 = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 2
  %1834 = load i32, ptr %nUsed2956, align 8
  store i32 %1834, ptr %n2955, align 4
  br label %while.cond2957

while.cond2957:                                   ; preds = %if.end2978, %if.then2954
  %1835 = load i32, ptr %n2955, align 4
  %1836 = load ptr, ptr %pCons2918, align 8
  %sFunc = getelementptr inbounds nuw %struct.ph7_class_method, ptr %1836, i32 0, i32 0
  %aArgs2958 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %sFunc, i32 0, i32 0
  %nUsed2959 = getelementptr inbounds nuw %struct.SySet, ptr %aArgs2958, i32 0, i32 2
  %1837 = load i32, ptr %nUsed2959, align 8
  %cmp2960 = icmp ult i32 %1835, %1837
  br i1 %cmp2960, label %while.body2962, label %while.end2980

while.body2962:                                   ; preds = %while.cond2957
  %1838 = load ptr, ptr %pCons2918, align 8
  %sFunc2963 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %1838, i32 0, i32 0
  %aArgs2964 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %sFunc2963, i32 0, i32 0
  %1839 = load i32, ptr %n2955, align 4
  %call2965 = call ptr @SySetAt(ptr noundef %aArgs2964, i32 noundef %1839)
  store ptr %call2965, ptr %pFuncArg, align 8
  %1840 = load ptr, ptr %pFuncArg, align 8
  %tobool2966 = icmp ne ptr %1840, null
  br i1 %tobool2966, label %if.then2967, label %if.end2978

if.then2967:                                      ; preds = %while.body2962
  %1841 = load ptr, ptr %pFuncArg, align 8
  %aByteCode2968 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %1841, i32 0, i32 1
  %nUsed2969 = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode2968, i32 0, i32 2
  %1842 = load i32, ptr %nUsed2969, align 8
  %cmp2970 = icmp ult i32 %1842, 1
  br i1 %cmp2970, label %if.then2972, label %if.end2977

if.then2972:                                      ; preds = %if.then2967
  %1843 = load ptr, ptr %pVm.addr, align 8
  %1844 = load i32, ptr %n2955, align 4
  %add2973 = add i32 %1844, 1
  %1845 = load ptr, ptr %pFuncArg, align 8
  %sName2974 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %1845, i32 0, i32 0
  %1846 = load ptr, ptr %pClass2878, align 8
  %sName2975 = getelementptr inbounds nuw %struct.ph7_class, ptr %1846, i32 0, i32 2
  %call2976 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1843, i32 noundef 3, ptr noundef @.str.97, i32 noundef %add2973, ptr noundef %sName2974, ptr noundef %sName2975)
  br label %if.end2977

if.end2977:                                       ; preds = %if.then2972, %if.then2967
  br label %if.end2978

if.end2978:                                       ; preds = %if.end2977, %while.body2962
  %1847 = load i32, ptr %n2955, align 4
  %inc2979 = add i32 %1847, 1
  store i32 %inc2979, ptr %n2955, align 4
  br label %while.cond2957, !llvm.loop !19

while.end2980:                                    ; preds = %while.cond2957
  br label %if.end2981

if.end2981:                                       ; preds = %while.end2980, %while.end2952
  %1848 = load ptr, ptr %pVm.addr, align 8
  %1849 = load ptr, ptr %pNew, align 8
  %1850 = load ptr, ptr %pCons2918, align 8
  %nUsed2982 = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 2
  %1851 = load i32, ptr %nUsed2982, align 8
  %pBase2983 = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 1
  %1852 = load ptr, ptr %pBase2983, align 8
  %call2984 = call i32 @PH7_VmCallClassMethod(ptr noundef %1848, ptr noundef %1849, ptr noundef %1850, ptr noundef null, i32 noundef %1851, ptr noundef %1852)
  %1853 = load ptr, ptr %pNew, align 8
  %iRef2985 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1853, i32 0, i32 3
  %1854 = load i32, ptr %iRef2985, align 8
  %cmp2986 = icmp slt i32 %1854, 1
  br i1 %cmp2986, label %if.then2988, label %if.end2990

if.then2988:                                      ; preds = %if.end2981
  %1855 = load ptr, ptr %pNew, align 8
  %iRef2989 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1855, i32 0, i32 3
  store i32 1, ptr %iRef2989, align 8
  br label %if.end2990

if.end2990:                                       ; preds = %if.then2988, %if.end2981
  br label %if.end2991

if.end2991:                                       ; preds = %if.end2990, %if.end2942
  %1856 = load ptr, ptr %pInstr, align 8
  %iP12992 = getelementptr inbounds nuw %struct.VmInstr, ptr %1856, i32 0, i32 1
  %1857 = load i32, ptr %iP12992, align 4
  %cmp2993 = icmp sgt i32 %1857, 0
  br i1 %cmp2993, label %if.then2995, label %if.end2997

if.then2995:                                      ; preds = %if.end2991
  %1858 = load ptr, ptr %pInstr, align 8
  %iP12996 = getelementptr inbounds nuw %struct.VmInstr, ptr %1858, i32 0, i32 1
  %1859 = load i32, ptr %iP12996, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %1859)
  br label %if.end2997

if.end2997:                                       ; preds = %if.then2995, %if.end2991
  %1860 = load ptr, ptr %pTos, align 8
  %call2998 = call i32 @PH7_MemObjRelease(ptr noundef %1860)
  %1861 = load ptr, ptr %pNew, align 8
  %1862 = load ptr, ptr %pTos, align 8
  %x2999 = getelementptr inbounds nuw %struct.ph7_value, ptr %1862, i32 0, i32 1
  store ptr %1861, ptr %x2999, align 8
  %1863 = load ptr, ptr %pTos, align 8
  %iFlags3000 = getelementptr inbounds nuw %struct.ph7_value, ptr %1863, i32 0, i32 2
  %1864 = load i32, ptr %iFlags3000, align 8
  %and3001 = and i32 %1864, -496
  %or3002 = or i32 %and3001, 128
  %1865 = load ptr, ptr %pTos, align 8
  %iFlags3003 = getelementptr inbounds nuw %struct.ph7_value, ptr %1865, i32 0, i32 2
  store i32 %or3002, ptr %iFlags3003, align 8
  br label %if.end3004

if.end3004:                                       ; preds = %if.end2997, %if.end2916
  br label %sw.epilog3867

sw.bb3005:                                        ; preds = %for.cond
  %1866 = load ptr, ptr %pTos, align 8
  %iFlags3006 = getelementptr inbounds nuw %struct.ph7_value, ptr %1866, i32 0, i32 2
  %1867 = load i32, ptr %iFlags3006, align 8
  %and3007 = and i32 %1867, 128
  %cmp3008 = icmp eq i32 %and3007, 0
  br i1 %cmp3008, label %if.then3010, label %if.end3013

if.then3010:                                      ; preds = %sw.bb3005
  %1868 = load ptr, ptr %pVm.addr, align 8
  %call3011 = call i32 @PH7_VmThrowError(ptr noundef %1868, ptr noundef null, i32 noundef 1, ptr noundef @.str.98)
  %1869 = load ptr, ptr %pTos, align 8
  %call3012 = call i32 @PH7_MemObjRelease(ptr noundef %1869)
  br label %sw.epilog3867

if.end3013:                                       ; preds = %sw.bb3005
  %1870 = load ptr, ptr %pTos, align 8
  %x3014 = getelementptr inbounds nuw %struct.ph7_value, ptr %1870, i32 0, i32 1
  %1871 = load ptr, ptr %x3014, align 8
  store ptr %1871, ptr %pSrc, align 8
  %1872 = load ptr, ptr %pSrc, align 8
  %call3015 = call ptr @PH7_CloneClassInstance(ptr noundef %1872)
  store ptr %call3015, ptr %pClone, align 8
  %1873 = load ptr, ptr %pTos, align 8
  %call3016 = call i32 @PH7_MemObjRelease(ptr noundef %1873)
  %1874 = load ptr, ptr %pClone, align 8
  %cmp3017 = icmp eq ptr %1874, null
  br i1 %cmp3017, label %if.then3019, label %if.else3021

if.then3019:                                      ; preds = %if.end3013
  %1875 = load ptr, ptr %pVm.addr, align 8
  %call3020 = call i32 @PH7_VmThrowError(ptr noundef %1875, ptr noundef null, i32 noundef 1, ptr noundef @.str.99)
  br label %if.end3027

if.else3021:                                      ; preds = %if.end3013
  %1876 = load ptr, ptr %pClone, align 8
  %1877 = load ptr, ptr %pTos, align 8
  %x3022 = getelementptr inbounds nuw %struct.ph7_value, ptr %1877, i32 0, i32 1
  store ptr %1876, ptr %x3022, align 8
  %1878 = load ptr, ptr %pTos, align 8
  %iFlags3023 = getelementptr inbounds nuw %struct.ph7_value, ptr %1878, i32 0, i32 2
  %1879 = load i32, ptr %iFlags3023, align 8
  %and3024 = and i32 %1879, -496
  %or3025 = or i32 %and3024, 128
  %1880 = load ptr, ptr %pTos, align 8
  %iFlags3026 = getelementptr inbounds nuw %struct.ph7_value, ptr %1880, i32 0, i32 2
  store i32 %or3025, ptr %iFlags3026, align 8
  br label %if.end3027

if.end3027:                                       ; preds = %if.else3021, %if.then3019
  br label %sw.epilog3867

sw.bb3028:                                        ; preds = %for.cond
  %1881 = load ptr, ptr %pInstr, align 8
  %p33029 = getelementptr inbounds nuw %struct.VmInstr, ptr %1881, i32 0, i32 3
  %1882 = load ptr, ptr %p33029, align 8
  store ptr %1882, ptr %pSwitch, align 8
  %1883 = load ptr, ptr %pSwitch, align 8
  %aCaseExpr = getelementptr inbounds nuw %struct.ph7_switch, ptr %1883, i32 0, i32 0
  %pBase3032 = getelementptr inbounds nuw %struct.SySet, ptr %aCaseExpr, i32 0, i32 1
  %1884 = load ptr, ptr %pBase3032, align 8
  store ptr %1884, ptr %aCase, align 8
  %1885 = load ptr, ptr %pSwitch, align 8
  %aCaseExpr3033 = getelementptr inbounds nuw %struct.ph7_switch, ptr %1885, i32 0, i32 0
  %nUsed3034 = getelementptr inbounds nuw %struct.SySet, ptr %aCaseExpr3033, i32 0, i32 2
  %1886 = load i32, ptr %nUsed3034, align 8
  store i32 %1886, ptr %nEntry, align 4
  %1887 = load ptr, ptr %pVm.addr, align 8
  %call3035 = call i32 @PH7_MemObjInit(ptr noundef %1887, ptr noundef %sValue3030)
  %1888 = load ptr, ptr %pVm.addr, align 8
  %call3036 = call i32 @PH7_MemObjInit(ptr noundef %1888, ptr noundef %sCaseValue)
  store i32 0, ptr %n3031, align 4
  br label %for.cond3037

for.cond3037:                                     ; preds = %for.inc3054, %sw.bb3028
  %1889 = load i32, ptr %n3031, align 4
  %1890 = load i32, ptr %nEntry, align 4
  %cmp3038 = icmp ult i32 %1889, %1890
  br i1 %cmp3038, label %for.body3040, label %for.end3056

for.body3040:                                     ; preds = %for.cond3037
  %1891 = load ptr, ptr %aCase, align 8
  %1892 = load i32, ptr %n3031, align 4
  %idxprom3041 = zext i32 %1892 to i64
  %arrayidx3042 = getelementptr inbounds nuw %struct.ph7_case_expr, ptr %1891, i64 %idxprom3041
  store ptr %arrayidx3042, ptr %pCase, align 8
  %1893 = load ptr, ptr %pTos, align 8
  %call3043 = call i32 @PH7_MemObjLoad(ptr noundef %1893, ptr noundef %sValue3030)
  %1894 = load ptr, ptr %pVm.addr, align 8
  %1895 = load ptr, ptr %pCase, align 8
  %aByteCode3044 = getelementptr inbounds nuw %struct.ph7_case_expr, ptr %1895, i32 0, i32 0
  %call3045 = call i32 @VmLocalExec(ptr noundef %1894, ptr noundef %aByteCode3044, ptr noundef %sCaseValue)
  %call3046 = call i32 @PH7_MemObjCmp(ptr noundef %sValue3030, ptr noundef %sCaseValue, i32 noundef 0, i32 noundef 0)
  store i32 %call3046, ptr %rc, align 4
  %call3047 = call i32 @PH7_MemObjRelease(ptr noundef %sValue3030)
  %call3048 = call i32 @PH7_MemObjRelease(ptr noundef %sCaseValue)
  %1896 = load i32, ptr %rc, align 4
  %cmp3049 = icmp eq i32 %1896, 0
  br i1 %cmp3049, label %if.then3051, label %if.end3053

if.then3051:                                      ; preds = %for.body3040
  %1897 = load ptr, ptr %pCase, align 8
  %nStart = getelementptr inbounds nuw %struct.ph7_case_expr, ptr %1897, i32 0, i32 1
  %1898 = load i32, ptr %nStart, align 8
  %sub3052 = sub i32 %1898, 1
  store i32 %sub3052, ptr %pc, align 4
  br label %for.end3056

if.end3053:                                       ; preds = %for.body3040
  br label %for.inc3054

for.inc3054:                                      ; preds = %if.end3053
  %1899 = load i32, ptr %n3031, align 4
  %inc3055 = add i32 %1899, 1
  store i32 %inc3055, ptr %n3031, align 4
  br label %for.cond3037, !llvm.loop !20

for.end3056:                                      ; preds = %if.then3051, %for.cond3037
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1900 = load i32, ptr %n3031, align 4
  %1901 = load i32, ptr %nEntry, align 4
  %cmp3057 = icmp uge i32 %1900, %1901
  br i1 %cmp3057, label %if.then3059, label %if.end3068

if.then3059:                                      ; preds = %for.end3056
  %1902 = load ptr, ptr %pSwitch, align 8
  %nDefault = getelementptr inbounds nuw %struct.ph7_switch, ptr %1902, i32 0, i32 2
  %1903 = load i32, ptr %nDefault, align 4
  %cmp3060 = icmp ugt i32 %1903, 0
  br i1 %cmp3060, label %if.then3062, label %if.else3065

if.then3062:                                      ; preds = %if.then3059
  %1904 = load ptr, ptr %pSwitch, align 8
  %nDefault3063 = getelementptr inbounds nuw %struct.ph7_switch, ptr %1904, i32 0, i32 2
  %1905 = load i32, ptr %nDefault3063, align 4
  %sub3064 = sub i32 %1905, 1
  store i32 %sub3064, ptr %pc, align 4
  br label %if.end3067

if.else3065:                                      ; preds = %if.then3059
  %1906 = load ptr, ptr %pSwitch, align 8
  %nOut = getelementptr inbounds nuw %struct.ph7_switch, ptr %1906, i32 0, i32 1
  %1907 = load i32, ptr %nOut, align 8
  %sub3066 = sub i32 %1907, 1
  store i32 %sub3066, ptr %pc, align 4
  br label %if.end3067

if.end3067:                                       ; preds = %if.else3065, %if.then3062
  br label %if.end3068

if.end3068:                                       ; preds = %if.end3067, %for.end3056
  br label %sw.epilog3867

sw.bb3069:                                        ; preds = %for.cond
  %1908 = load ptr, ptr %pTos, align 8
  %1909 = load ptr, ptr %pInstr, align 8
  %iP13071 = getelementptr inbounds nuw %struct.VmInstr, ptr %1909, i32 0, i32 1
  %1910 = load i32, ptr %iP13071, align 4
  %sub3072 = sub nsw i32 0, %1910
  %idxprom3073 = sext i32 %sub3072 to i64
  %arrayidx3074 = getelementptr inbounds %struct.ph7_value, ptr %1908, i64 %idxprom3073
  store ptr %arrayidx3074, ptr %pArg3070, align 8
  %1911 = load ptr, ptr %pTos, align 8
  %iFlags3077 = getelementptr inbounds nuw %struct.ph7_value, ptr %1911, i32 0, i32 2
  %1912 = load i32, ptr %iFlags3077, align 8
  %and3078 = and i32 %1912, 1
  %cmp3079 = icmp eq i32 %and3078, 0
  br i1 %cmp3079, label %if.then3081, label %if.end3127

if.then3081:                                      ; preds = %sw.bb3069
  %1913 = load ptr, ptr %pTos, align 8
  %iFlags3082 = getelementptr inbounds nuw %struct.ph7_value, ptr %1913, i32 0, i32 2
  %1914 = load i32, ptr %iFlags3082, align 8
  %and3083 = and i32 %1914, 64
  %tobool3084 = icmp ne i32 %and3083, 0
  br i1 %tobool3084, label %if.then3085, label %if.else3107

if.then3085:                                      ; preds = %if.then3081
  %call3086 = call i32 @SySetReset(ptr noundef %aArg)
  br label %while.cond3087

while.cond3087:                                   ; preds = %while.body3090, %if.then3085
  %1915 = load ptr, ptr %pArg3070, align 8
  %1916 = load ptr, ptr %pTos, align 8
  %cmp3088 = icmp ult ptr %1915, %1916
  br i1 %cmp3088, label %while.body3090, label %while.end3093

while.body3090:                                   ; preds = %while.cond3087
  %call3091 = call i32 @SySetPut(ptr noundef %aArg, ptr noundef %pArg3070)
  %1917 = load ptr, ptr %pArg3070, align 8
  %incdec.ptr3092 = getelementptr inbounds nuw %struct.ph7_value, ptr %1917, i32 1
  store ptr %incdec.ptr3092, ptr %pArg3070, align 8
  br label %while.cond3087, !llvm.loop !21

while.end3093:                                    ; preds = %while.cond3087
  %1918 = load ptr, ptr %pVm.addr, align 8
  %call3094 = call i32 @PH7_MemObjInit(ptr noundef %1918, ptr noundef %sResult)
  %1919 = load ptr, ptr %pVm.addr, align 8
  %1920 = load ptr, ptr %pTos, align 8
  %nUsed3095 = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 2
  %1921 = load i32, ptr %nUsed3095, align 8
  %pBase3096 = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 1
  %1922 = load ptr, ptr %pBase3096, align 8
  %call3097 = call i32 @PH7_VmCallUserFunction(ptr noundef %1919, ptr noundef %1920, i32 noundef %1921, ptr noundef %1922, ptr noundef %sResult)
  %call3098 = call i32 @SySetReset(ptr noundef %aArg)
  %1923 = load ptr, ptr %pInstr, align 8
  %iP13099 = getelementptr inbounds nuw %struct.VmInstr, ptr %1923, i32 0, i32 1
  %1924 = load i32, ptr %iP13099, align 4
  %cmp3100 = icmp sgt i32 %1924, 0
  br i1 %cmp3100, label %if.then3102, label %if.end3104

if.then3102:                                      ; preds = %while.end3093
  %1925 = load ptr, ptr %pInstr, align 8
  %iP13103 = getelementptr inbounds nuw %struct.VmInstr, ptr %1925, i32 0, i32 1
  %1926 = load i32, ptr %iP13103, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %1926)
  br label %if.end3104

if.end3104:                                       ; preds = %if.then3102, %while.end3093
  %1927 = load ptr, ptr %pTos, align 8
  %call3105 = call i32 @PH7_MemObjStore(ptr noundef %sResult, ptr noundef %1927)
  %call3106 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  br label %if.end3126

if.else3107:                                      ; preds = %if.then3081
  %1928 = load ptr, ptr %pTos, align 8
  %iFlags3108 = getelementptr inbounds nuw %struct.ph7_value, ptr %1928, i32 0, i32 2
  %1929 = load i32, ptr %iFlags3108, align 8
  %and3109 = and i32 %1929, 128
  %tobool3110 = icmp ne i32 %and3109, 0
  br i1 %tobool3110, label %if.then3111, label %if.else3116

if.then3111:                                      ; preds = %if.else3107
  %1930 = load ptr, ptr %pTos, align 8
  %x3113 = getelementptr inbounds nuw %struct.ph7_value, ptr %1930, i32 0, i32 1
  %1931 = load ptr, ptr %x3113, align 8
  store ptr %1931, ptr %pThis3112, align 8
  %1932 = load ptr, ptr %pVm.addr, align 8
  %1933 = load ptr, ptr %pThis3112, align 8
  %pClass3114 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1933, i32 0, i32 1
  %1934 = load ptr, ptr %pClass3114, align 8
  %1935 = load ptr, ptr %pThis3112, align 8
  %call3115 = call i32 @PH7_ClassInstanceCallMagicMethod(ptr noundef %1932, ptr noundef %1934, ptr noundef %1935, ptr noundef @.str.100, i32 noundef 8, ptr noundef null)
  br label %if.end3118

if.else3116:                                      ; preds = %if.else3107
  %1936 = load ptr, ptr %pVm.addr, align 8
  %call3117 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %1936, i32 noundef 2, ptr noundef @.str.101)
  br label %if.end3118

if.end3118:                                       ; preds = %if.else3116, %if.then3111
  %1937 = load ptr, ptr %pInstr, align 8
  %iP13119 = getelementptr inbounds nuw %struct.VmInstr, ptr %1937, i32 0, i32 1
  %1938 = load i32, ptr %iP13119, align 4
  %cmp3120 = icmp sgt i32 %1938, 0
  br i1 %cmp3120, label %if.then3122, label %if.end3124

if.then3122:                                      ; preds = %if.end3118
  %1939 = load ptr, ptr %pInstr, align 8
  %iP13123 = getelementptr inbounds nuw %struct.VmInstr, ptr %1939, i32 0, i32 1
  %1940 = load i32, ptr %iP13123, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %1940)
  br label %if.end3124

if.end3124:                                       ; preds = %if.then3122, %if.end3118
  %1941 = load ptr, ptr %pTos, align 8
  %call3125 = call i32 @PH7_MemObjRelease(ptr noundef %1941)
  br label %if.end3126

if.end3126:                                       ; preds = %if.end3124, %if.end3104
  br label %sw.epilog3867

if.end3127:                                       ; preds = %sw.bb3069
  %1942 = load ptr, ptr %pTos, align 8
  %sBlob3128 = getelementptr inbounds nuw %struct.ph7_value, ptr %1942, i32 0, i32 4
  %pBlob3129 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3128, i32 0, i32 1
  %1943 = load ptr, ptr %pBlob3129, align 8
  %zString3130 = getelementptr inbounds nuw %struct.SyString, ptr %sName3076, i32 0, i32 0
  store ptr %1943, ptr %zString3130, align 8
  %1944 = load ptr, ptr %pTos, align 8
  %sBlob3131 = getelementptr inbounds nuw %struct.ph7_value, ptr %1944, i32 0, i32 4
  %nByte3132 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3131, i32 0, i32 2
  %1945 = load i32, ptr %nByte3132, align 8
  %nByte3133 = getelementptr inbounds nuw %struct.SyString, ptr %sName3076, i32 0, i32 1
  store i32 %1945, ptr %nByte3133, align 8
  %1946 = load ptr, ptr %pVm.addr, align 8
  %hFunction3134 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1946, i32 0, i32 13
  %zString3135 = getelementptr inbounds nuw %struct.SyString, ptr %sName3076, i32 0, i32 0
  %1947 = load ptr, ptr %zString3135, align 8
  %nByte3136 = getelementptr inbounds nuw %struct.SyString, ptr %sName3076, i32 0, i32 1
  %1948 = load i32, ptr %nByte3136, align 8
  %call3137 = call ptr @SyHashGet(ptr noundef %hFunction3134, ptr noundef %1947, i32 noundef %1948)
  store ptr %call3137, ptr %pEntry3075, align 8
  %1949 = load ptr, ptr %pEntry3075, align 8
  %tobool3138 = icmp ne ptr %1949, null
  br i1 %tobool3138, label %if.then3139, label %if.else3772

if.then3139:                                      ; preds = %if.end3127
  %1950 = load ptr, ptr %pEntry3075, align 8
  %pUserData3144 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %1950, i32 0, i32 2
  %1951 = load ptr, ptr %pUserData3144, align 8
  store ptr %1951, ptr %pVmFunc, align 8
  store ptr null, ptr %pThis3140, align 8
  store ptr null, ptr %pSelf, align 8
  %1952 = load ptr, ptr %pVmFunc, align 8
  %iFlags3145 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %1952, i32 0, i32 5
  %1953 = load i32, ptr %iFlags3145, align 8
  %and3146 = and i32 %1953, 8
  %tobool3147 = icmp ne i32 %and3146, 0
  br i1 %tobool3147, label %if.then3148, label %if.end3258

if.then3148:                                      ; preds = %if.then3139
  %1954 = load ptr, ptr %pTos, align 8
  %arrayidx3150 = getelementptr inbounds %struct.ph7_value, ptr %1954, i64 -1
  store ptr %arrayidx3150, ptr %pTarget, align 8
  %1955 = load ptr, ptr %pTarget, align 8
  %1956 = load ptr, ptr %pStack.addr, align 8
  %cmp3151 = icmp uge ptr %1955, %1956
  br i1 %cmp3151, label %land.lhs.true3153, label %if.end3257

land.lhs.true3153:                                ; preds = %if.then3148
  %1957 = load ptr, ptr %pTarget, align 8
  %iFlags3154 = getelementptr inbounds nuw %struct.ph7_value, ptr %1957, i32 0, i32 2
  %1958 = load i32, ptr %iFlags3154, align 8
  %and3155 = and i32 %1958, 161
  %tobool3156 = icmp ne i32 %and3155, 0
  br i1 %tobool3156, label %if.then3157, label %if.end3257

if.then3157:                                      ; preds = %land.lhs.true3153
  %1959 = load ptr, ptr %pTarget, align 8
  %iFlags3158 = getelementptr inbounds nuw %struct.ph7_value, ptr %1959, i32 0, i32 2
  %1960 = load i32, ptr %iFlags3158, align 8
  %and3159 = and i32 %1960, 128
  %tobool3160 = icmp ne i32 %and3159, 0
  br i1 %tobool3160, label %if.then3161, label %if.end3166

if.then3161:                                      ; preds = %if.then3157
  %1961 = load ptr, ptr %pTarget, align 8
  %x3162 = getelementptr inbounds nuw %struct.ph7_value, ptr %1961, i32 0, i32 1
  %1962 = load ptr, ptr %x3162, align 8
  store ptr %1962, ptr %pThis3140, align 8
  %1963 = load ptr, ptr %pThis3140, align 8
  %iRef3163 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1963, i32 0, i32 3
  %1964 = load i32, ptr %iRef3163, align 8
  %inc3164 = add nsw i32 %1964, 1
  store i32 %inc3164, ptr %iRef3163, align 8
  %1965 = load ptr, ptr %pThis3140, align 8
  %pClass3165 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1965, i32 0, i32 1
  %1966 = load ptr, ptr %pClass3165, align 8
  store ptr %1966, ptr %pSelf, align 8
  br label %if.end3166

if.end3166:                                       ; preds = %if.then3161, %if.then3157
  %1967 = load ptr, ptr %pSelf, align 8
  %cmp3167 = icmp eq ptr %1967, null
  br i1 %cmp3167, label %if.then3169, label %if.end3190

if.then3169:                                      ; preds = %if.end3166
  %1968 = load ptr, ptr %pTarget, align 8
  %iFlags3170 = getelementptr inbounds nuw %struct.ph7_value, ptr %1968, i32 0, i32 2
  %1969 = load i32, ptr %iFlags3170, align 8
  %and3171 = and i32 %1969, 1
  %tobool3172 = icmp ne i32 %and3171, 0
  br i1 %tobool3172, label %land.lhs.true3173, label %if.end3184

land.lhs.true3173:                                ; preds = %if.then3169
  %1970 = load ptr, ptr %pTarget, align 8
  %sBlob3174 = getelementptr inbounds nuw %struct.ph7_value, ptr %1970, i32 0, i32 4
  %nByte3175 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3174, i32 0, i32 2
  %1971 = load i32, ptr %nByte3175, align 8
  %cmp3176 = icmp ugt i32 %1971, 0
  br i1 %cmp3176, label %if.then3178, label %if.end3184

if.then3178:                                      ; preds = %land.lhs.true3173
  %1972 = load ptr, ptr %pVm.addr, align 8
  %1973 = load ptr, ptr %pTarget, align 8
  %sBlob3179 = getelementptr inbounds nuw %struct.ph7_value, ptr %1973, i32 0, i32 4
  %pBlob3180 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3179, i32 0, i32 1
  %1974 = load ptr, ptr %pBlob3180, align 8
  %1975 = load ptr, ptr %pTarget, align 8
  %sBlob3181 = getelementptr inbounds nuw %struct.ph7_value, ptr %1975, i32 0, i32 4
  %nByte3182 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3181, i32 0, i32 2
  %1976 = load i32, ptr %nByte3182, align 8
  %call3183 = call ptr @PH7_VmExtractClass(ptr noundef %1972, ptr noundef %1974, i32 noundef %1976, i32 noundef 0, i32 noundef 0)
  store ptr %call3183, ptr %pSelf, align 8
  br label %if.end3184

if.end3184:                                       ; preds = %if.then3178, %land.lhs.true3173, %if.then3169
  %1977 = load ptr, ptr %pSelf, align 8
  %cmp3185 = icmp eq ptr %1977, null
  br i1 %cmp3185, label %if.then3187, label %if.end3189

if.then3187:                                      ; preds = %if.end3184
  %1978 = load ptr, ptr %pVmFunc, align 8
  %pUserData3188 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %1978, i32 0, i32 7
  %1979 = load ptr, ptr %pUserData3188, align 8
  store ptr %1979, ptr %pSelf, align 8
  br label %if.end3189

if.end3189:                                       ; preds = %if.then3187, %if.end3184
  br label %if.end3190

if.end3190:                                       ; preds = %if.end3189, %if.end3166
  %1980 = load ptr, ptr %pThis3140, align 8
  %cmp3191 = icmp eq ptr %1980, null
  br i1 %cmp3191, label %if.then3193, label %if.end3217

if.then3193:                                      ; preds = %if.end3190
  %1981 = load ptr, ptr %pVm.addr, align 8
  %pFrame3195 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1981, i32 0, i32 4
  %1982 = load ptr, ptr %pFrame3195, align 8
  store ptr %1982, ptr %pFrame3194, align 8
  br label %while.cond3196

while.cond3196:                                   ; preds = %while.body3204, %if.then3193
  %1983 = load ptr, ptr %pFrame3194, align 8
  %pParent3197 = getelementptr inbounds nuw %struct.VmFrame, ptr %1983, i32 0, i32 0
  %1984 = load ptr, ptr %pParent3197, align 8
  %tobool3198 = icmp ne ptr %1984, null
  br i1 %tobool3198, label %land.rhs3199, label %land.end3203

land.rhs3199:                                     ; preds = %while.cond3196
  %1985 = load ptr, ptr %pFrame3194, align 8
  %iFlags3200 = getelementptr inbounds nuw %struct.VmFrame, ptr %1985, i32 0, i32 8
  %1986 = load i32, ptr %iFlags3200, align 8
  %and3201 = and i32 %1986, 1
  %tobool3202 = icmp ne i32 %and3201, 0
  br label %land.end3203

land.end3203:                                     ; preds = %land.rhs3199, %while.cond3196
  %1987 = phi i1 [ false, %while.cond3196 ], [ %tobool3202, %land.rhs3199 ]
  br i1 %1987, label %while.body3204, label %while.end3206

while.body3204:                                   ; preds = %land.end3203
  %1988 = load ptr, ptr %pFrame3194, align 8
  %pParent3205 = getelementptr inbounds nuw %struct.VmFrame, ptr %1988, i32 0, i32 0
  %1989 = load ptr, ptr %pParent3205, align 8
  store ptr %1989, ptr %pFrame3194, align 8
  br label %while.cond3196, !llvm.loop !22

while.end3206:                                    ; preds = %land.end3203
  %1990 = load ptr, ptr %pFrame3194, align 8
  %pParent3207 = getelementptr inbounds nuw %struct.VmFrame, ptr %1990, i32 0, i32 0
  %1991 = load ptr, ptr %pParent3207, align 8
  %tobool3208 = icmp ne ptr %1991, null
  br i1 %tobool3208, label %if.then3209, label %if.end3216

if.then3209:                                      ; preds = %while.end3206
  %1992 = load ptr, ptr %pFrame3194, align 8
  %pThis3210 = getelementptr inbounds nuw %struct.VmFrame, ptr %1992, i32 0, i32 2
  %1993 = load ptr, ptr %pThis3210, align 8
  store ptr %1993, ptr %pThis3140, align 8
  %1994 = load ptr, ptr %pThis3140, align 8
  %tobool3211 = icmp ne ptr %1994, null
  br i1 %tobool3211, label %if.then3212, label %if.end3215

if.then3212:                                      ; preds = %if.then3209
  %1995 = load ptr, ptr %pThis3140, align 8
  %iRef3213 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %1995, i32 0, i32 3
  %1996 = load i32, ptr %iRef3213, align 8
  %inc3214 = add nsw i32 %1996, 1
  store i32 %inc3214, ptr %iRef3213, align 8
  br label %if.end3215

if.end3215:                                       ; preds = %if.then3212, %if.then3209
  br label %if.end3216

if.end3216:                                       ; preds = %if.end3215, %while.end3206
  br label %if.end3217

if.end3217:                                       ; preds = %if.end3216, %if.end3190
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %1997 = load ptr, ptr %pTos, align 8
  %call3218 = call i32 @PH7_MemObjRelease(ptr noundef %1997)
  %1998 = load ptr, ptr %pTos, align 8
  %1999 = load ptr, ptr %pInstr, align 8
  %iP13219 = getelementptr inbounds nuw %struct.VmInstr, ptr %1999, i32 0, i32 1
  %2000 = load i32, ptr %iP13219, align 4
  %sub3220 = sub nsw i32 0, %2000
  %idxprom3221 = sext i32 %sub3220 to i64
  %arrayidx3222 = getelementptr inbounds %struct.ph7_value, ptr %1998, i64 %idxprom3221
  store ptr %arrayidx3222, ptr %pArg3070, align 8
  br label %while.cond3223

while.cond3223:                                   ; preds = %while.body3226, %if.end3217
  %2001 = load ptr, ptr %pArg3070, align 8
  %2002 = load ptr, ptr %pStack.addr, align 8
  %cmp3224 = icmp ult ptr %2001, %2002
  br i1 %cmp3224, label %while.body3226, label %while.end3228

while.body3226:                                   ; preds = %while.cond3223
  %2003 = load ptr, ptr %pArg3070, align 8
  %incdec.ptr3227 = getelementptr inbounds nuw %struct.ph7_value, ptr %2003, i32 1
  store ptr %incdec.ptr3227, ptr %pArg3070, align 8
  br label %while.cond3223, !llvm.loop !23

while.end3228:                                    ; preds = %while.cond3223
  %2004 = load ptr, ptr %pSelf, align 8
  %tobool3229 = icmp ne ptr %2004, null
  br i1 %tobool3229, label %if.then3230, label %if.end3256

if.then3230:                                      ; preds = %while.end3228
  %2005 = load ptr, ptr %pSelf, align 8
  %2006 = load ptr, ptr %pVmFunc, align 8
  %sName3231 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2006, i32 0, i32 2
  %zString3232 = getelementptr inbounds nuw %struct.SyString, ptr %sName3231, i32 0, i32 0
  %2007 = load ptr, ptr %zString3232, align 8
  %2008 = load ptr, ptr %pVmFunc, align 8
  %sName3233 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2008, i32 0, i32 2
  %nByte3234 = getelementptr inbounds nuw %struct.SyString, ptr %sName3233, i32 0, i32 1
  %2009 = load i32, ptr %nByte3234, align 8
  %call3235 = call ptr @PH7_ClassExtractMethod(ptr noundef %2005, ptr noundef %2007, i32 noundef %2009)
  store ptr %call3235, ptr %pMeth3149, align 8
  %2010 = load ptr, ptr %pMeth3149, align 8
  %tobool3236 = icmp ne ptr %2010, null
  br i1 %tobool3236, label %land.lhs.true3237, label %if.end3255

land.lhs.true3237:                                ; preds = %if.then3230
  %2011 = load ptr, ptr %pMeth3149, align 8
  %iProtection3238 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %2011, i32 0, i32 2
  %2012 = load i32, ptr %iProtection3238, align 8
  %cmp3239 = icmp ne i32 %2012, 1
  br i1 %cmp3239, label %if.then3241, label %if.end3255

if.then3241:                                      ; preds = %land.lhs.true3237
  %2013 = load ptr, ptr %pVm.addr, align 8
  %2014 = load ptr, ptr %pSelf, align 8
  %2015 = load ptr, ptr %pVmFunc, align 8
  %sName3242 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2015, i32 0, i32 2
  %2016 = load ptr, ptr %pMeth3149, align 8
  %iProtection3243 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %2016, i32 0, i32 2
  %2017 = load i32, ptr %iProtection3243, align 8
  %call3244 = call i32 @VmClassMemberAccess(ptr noundef %2013, ptr noundef %2014, ptr noundef %sName3242, i32 noundef %2017, i32 noundef 1)
  %tobool3245 = icmp ne i32 %call3244, 0
  br i1 %tobool3245, label %if.end3254, label %if.then3246

if.then3246:                                      ; preds = %if.then3241
  %2018 = load ptr, ptr %pInstr, align 8
  %iP13247 = getelementptr inbounds nuw %struct.VmInstr, ptr %2018, i32 0, i32 1
  %2019 = load i32, ptr %iP13247, align 4
  %cmp3248 = icmp sgt i32 %2019, 0
  br i1 %cmp3248, label %if.then3250, label %if.end3252

if.then3250:                                      ; preds = %if.then3246
  %2020 = load ptr, ptr %pInstr, align 8
  %iP13251 = getelementptr inbounds nuw %struct.VmInstr, ptr %2020, i32 0, i32 1
  %2021 = load i32, ptr %iP13251, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %2021)
  br label %if.end3252

if.end3252:                                       ; preds = %if.then3250, %if.then3246
  %2022 = load ptr, ptr %pTos, align 8
  %call3253 = call i32 @PH7_MemObjRelease(ptr noundef %2022)
  br label %sw.epilog3867

if.end3254:                                       ; preds = %if.then3241
  br label %if.end3255

if.end3255:                                       ; preds = %if.end3254, %land.lhs.true3237, %if.then3230
  br label %if.end3256

if.end3256:                                       ; preds = %if.end3255, %while.end3228
  br label %if.end3257

if.end3257:                                       ; preds = %if.end3256, %land.lhs.true3153, %if.then3148
  br label %if.end3258

if.end3258:                                       ; preds = %if.end3257, %if.then3139
  %2023 = load ptr, ptr %pVm.addr, align 8
  %nRecursionDepth = getelementptr inbounds nuw %struct.ph7_vm, ptr %2023, i32 0, i32 34
  %2024 = load i32, ptr %nRecursionDepth, align 4
  %2025 = load ptr, ptr %pVm.addr, align 8
  %nMaxDepth = getelementptr inbounds nuw %struct.ph7_vm, ptr %2025, i32 0, i32 35
  %2026 = load i32, ptr %nMaxDepth, align 8
  %cmp3259 = icmp sgt i32 %2024, %2026
  br i1 %cmp3259, label %if.then3261, label %if.end3271

if.then3261:                                      ; preds = %if.end3258
  %2027 = load ptr, ptr %pVm.addr, align 8
  %2028 = load ptr, ptr %pVmFunc, align 8
  %sName3262 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2028, i32 0, i32 2
  %call3263 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2027, i32 noundef 1, ptr noundef @.str.102, ptr noundef %sName3262)
  %2029 = load ptr, ptr %pInstr, align 8
  %iP13264 = getelementptr inbounds nuw %struct.VmInstr, ptr %2029, i32 0, i32 1
  %2030 = load i32, ptr %iP13264, align 4
  %cmp3265 = icmp sgt i32 %2030, 0
  br i1 %cmp3265, label %if.then3267, label %if.end3269

if.then3267:                                      ; preds = %if.then3261
  %2031 = load ptr, ptr %pInstr, align 8
  %iP13268 = getelementptr inbounds nuw %struct.VmInstr, ptr %2031, i32 0, i32 1
  %2032 = load i32, ptr %iP13268, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %2032)
  br label %if.end3269

if.end3269:                                       ; preds = %if.then3267, %if.then3261
  %2033 = load ptr, ptr %pTos, align 8
  %call3270 = call i32 @PH7_MemObjRelease(ptr noundef %2033)
  br label %sw.epilog3867

if.end3271:                                       ; preds = %if.end3258
  %2034 = load ptr, ptr %pVmFunc, align 8
  %pNextName = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2034, i32 0, i32 8
  %2035 = load ptr, ptr %pNextName, align 8
  %tobool3272 = icmp ne ptr %2035, null
  br i1 %tobool3272, label %if.then3273, label %if.end3280

if.then3273:                                      ; preds = %if.end3271
  %2036 = load ptr, ptr %pVm.addr, align 8
  %2037 = load ptr, ptr %pVmFunc, align 8
  %2038 = load ptr, ptr %pArg3070, align 8
  %2039 = load ptr, ptr %pTos, align 8
  %2040 = load ptr, ptr %pArg3070, align 8
  %sub.ptr.lhs.cast3274 = ptrtoint ptr %2039 to i64
  %sub.ptr.rhs.cast3275 = ptrtoint ptr %2040 to i64
  %sub.ptr.sub3276 = sub i64 %sub.ptr.lhs.cast3274, %sub.ptr.rhs.cast3275
  %sub.ptr.div3277 = sdiv exact i64 %sub.ptr.sub3276, 72
  %conv3278 = trunc i64 %sub.ptr.div3277 to i32
  %call3279 = call ptr @VmOverload(ptr noundef %2036, ptr noundef %2037, ptr noundef %2038, i32 noundef %conv3278)
  store ptr %call3279, ptr %pVmFunc, align 8
  br label %if.end3280

if.end3280:                                       ; preds = %if.then3273, %if.end3271
  %2041 = load ptr, ptr %pVmFunc, align 8
  %aArgs3281 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2041, i32 0, i32 0
  %pBase3282 = getelementptr inbounds nuw %struct.SySet, ptr %aArgs3281, i32 0, i32 1
  %2042 = load ptr, ptr %pBase3282, align 8
  store ptr %2042, ptr %aFormalArg, align 8
  %2043 = load ptr, ptr %pVm.addr, align 8
  %2044 = load ptr, ptr %pVmFunc, align 8
  %2045 = load ptr, ptr %pThis3140, align 8
  %call3283 = call i32 @VmEnterFrame(ptr noundef %2043, ptr noundef %2044, ptr noundef %2045, ptr noundef %pFrame3141)
  store i32 %call3283, ptr %rc, align 4
  %2046 = load i32, ptr %rc, align 4
  %cmp3284 = icmp ne i32 %2046, 0
  br i1 %cmp3284, label %if.then3286, label %if.end3296

if.then3286:                                      ; preds = %if.end3280
  %2047 = load ptr, ptr %pVm.addr, align 8
  %2048 = load ptr, ptr %pVmFunc, align 8
  %sName3287 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2048, i32 0, i32 2
  %call3288 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2047, i32 noundef 1, ptr noundef @.str.103, ptr noundef %sName3287)
  %2049 = load ptr, ptr %pInstr, align 8
  %iP13289 = getelementptr inbounds nuw %struct.VmInstr, ptr %2049, i32 0, i32 1
  %2050 = load i32, ptr %iP13289, align 4
  %cmp3290 = icmp sgt i32 %2050, 0
  br i1 %cmp3290, label %if.then3292, label %if.end3294

if.then3292:                                      ; preds = %if.then3286
  %2051 = load ptr, ptr %pInstr, align 8
  %iP13293 = getelementptr inbounds nuw %struct.VmInstr, ptr %2051, i32 0, i32 1
  %2052 = load i32, ptr %iP13293, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %2052)
  br label %if.end3294

if.end3294:                                       ; preds = %if.then3292, %if.then3286
  %2053 = load ptr, ptr %pTos, align 8
  %call3295 = call i32 @PH7_MemObjRelease(ptr noundef %2053)
  br label %sw.epilog3867

if.end3296:                                       ; preds = %if.end3280
  %2054 = load ptr, ptr %pVmFunc, align 8
  %iFlags3297 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2054, i32 0, i32 5
  %2055 = load i32, ptr %iFlags3297, align 8
  %and3298 = and i32 %2055, 8
  %tobool3299 = icmp ne i32 %and3298, 0
  br i1 %tobool3299, label %land.lhs.true3300, label %if.end3312

land.lhs.true3300:                                ; preds = %if.end3296
  %2056 = load ptr, ptr %pThis3140, align 8
  %tobool3301 = icmp ne ptr %2056, null
  br i1 %tobool3301, label %if.then3302, label %if.end3312

if.then3302:                                      ; preds = %land.lhs.true3300
  %2057 = load ptr, ptr %pVm.addr, align 8
  %call3303 = call ptr @VmExtractMemObj(ptr noundef %2057, ptr noundef @VmByteCodeExec.sThis, i32 noundef 0, i32 noundef 1)
  store ptr %call3303, ptr %pObj3142, align 8
  %2058 = load ptr, ptr %pObj3142, align 8
  %tobool3304 = icmp ne ptr %2058, null
  br i1 %tobool3304, label %if.then3305, label %if.end3311

if.then3305:                                      ; preds = %if.then3302
  %2059 = load ptr, ptr %pThis3140, align 8
  %2060 = load ptr, ptr %pObj3142, align 8
  %x3306 = getelementptr inbounds nuw %struct.ph7_value, ptr %2060, i32 0, i32 1
  store ptr %2059, ptr %x3306, align 8
  %2061 = load ptr, ptr %pObj3142, align 8
  %iFlags3307 = getelementptr inbounds nuw %struct.ph7_value, ptr %2061, i32 0, i32 2
  %2062 = load i32, ptr %iFlags3307, align 8
  %and3308 = and i32 %2062, -496
  %or3309 = or i32 %and3308, 128
  %2063 = load ptr, ptr %pObj3142, align 8
  %iFlags3310 = getelementptr inbounds nuw %struct.ph7_value, ptr %2063, i32 0, i32 2
  store i32 %or3309, ptr %iFlags3310, align 8
  br label %if.end3311

if.end3311:                                       ; preds = %if.then3305, %if.then3302
  br label %if.end3312

if.end3312:                                       ; preds = %if.end3311, %land.lhs.true3300, %if.end3296
  %2064 = load ptr, ptr %pVmFunc, align 8
  %aStatic3313 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2064, i32 0, i32 1
  %nUsed3314 = getelementptr inbounds nuw %struct.SySet, ptr %aStatic3313, i32 0, i32 2
  %2065 = load i32, ptr %nUsed3314, align 8
  %cmp3315 = icmp ugt i32 %2065, 0
  br i1 %cmp3315, label %if.then3317, label %if.end3362

if.then3317:                                      ; preds = %if.end3312
  %2066 = load ptr, ptr %pVmFunc, align 8
  %aStatic3319 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2066, i32 0, i32 1
  %pBase3320 = getelementptr inbounds nuw %struct.SySet, ptr %aStatic3319, i32 0, i32 1
  %2067 = load ptr, ptr %pBase3320, align 8
  store ptr %2067, ptr %aStatic3318, align 8
  store i32 0, ptr %n3143, align 4
  br label %for.cond3321

for.cond3321:                                     ; preds = %for.inc3359, %if.then3317
  %2068 = load i32, ptr %n3143, align 4
  %2069 = load ptr, ptr %pVmFunc, align 8
  %aStatic3322 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2069, i32 0, i32 1
  %nUsed3323 = getelementptr inbounds nuw %struct.SySet, ptr %aStatic3322, i32 0, i32 2
  %2070 = load i32, ptr %nUsed3323, align 8
  %cmp3324 = icmp ult i32 %2068, %2070
  br i1 %cmp3324, label %for.body3326, label %for.end3361

for.body3326:                                     ; preds = %for.cond3321
  %2071 = load ptr, ptr %aStatic3318, align 8
  %2072 = load i32, ptr %n3143, align 4
  %idxprom3327 = zext i32 %2072 to i64
  %arrayidx3328 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2071, i64 %idxprom3327
  store ptr %arrayidx3328, ptr %pStatic, align 8
  %2073 = load ptr, ptr %pStatic, align 8
  %nIdx3329 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2073, i32 0, i32 2
  %2074 = load i32, ptr %nIdx3329, align 8
  %cmp3330 = icmp eq i32 %2074, -1
  br i1 %cmp3330, label %if.then3332, label %if.end3350

if.then3332:                                      ; preds = %for.body3326
  %2075 = load ptr, ptr %pVm.addr, align 8
  %2076 = load ptr, ptr %pStatic, align 8
  %nIdx3333 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2076, i32 0, i32 2
  %call3334 = call ptr @VmReserveMemObj(ptr noundef %2075, ptr noundef %nIdx3333)
  store ptr %call3334, ptr %pObj3142, align 8
  %2077 = load ptr, ptr %pObj3142, align 8
  %tobool3335 = icmp ne ptr %2077, null
  br i1 %tobool3335, label %if.then3336, label %if.else3348

if.then3336:                                      ; preds = %if.then3332
  %2078 = load ptr, ptr %pVm.addr, align 8
  %2079 = load ptr, ptr %pObj3142, align 8
  %call3337 = call i32 @PH7_MemObjInit(ptr noundef %2078, ptr noundef %2079)
  %2080 = load ptr, ptr %pStatic, align 8
  %aByteCode3338 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2080, i32 0, i32 1
  %nUsed3339 = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode3338, i32 0, i32 2
  %2081 = load i32, ptr %nUsed3339, align 8
  %cmp3340 = icmp ugt i32 %2081, 0
  br i1 %cmp3340, label %if.then3342, label %if.end3345

if.then3342:                                      ; preds = %if.then3336
  %2082 = load ptr, ptr %pVm.addr, align 8
  %2083 = load ptr, ptr %pStatic, align 8
  %aByteCode3343 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2083, i32 0, i32 1
  %2084 = load ptr, ptr %pObj3142, align 8
  %call3344 = call i32 @VmLocalExec(ptr noundef %2082, ptr noundef %aByteCode3343, ptr noundef %2084)
  br label %if.end3345

if.end3345:                                       ; preds = %if.then3342, %if.then3336
  %2085 = load ptr, ptr %pStatic, align 8
  %nIdx3346 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2085, i32 0, i32 2
  %2086 = load i32, ptr %nIdx3346, align 8
  %2087 = load ptr, ptr %pObj3142, align 8
  %nIdx3347 = getelementptr inbounds nuw %struct.ph7_value, ptr %2087, i32 0, i32 5
  store i32 %2086, ptr %nIdx3347, align 8
  br label %if.end3349

if.else3348:                                      ; preds = %if.then3332
  br label %for.inc3359

if.end3349:                                       ; preds = %if.end3345
  br label %if.end3350

if.end3350:                                       ; preds = %if.end3349, %for.body3326
  %2088 = load ptr, ptr %pFrame3141, align 8
  %hVar3351 = getelementptr inbounds nuw %struct.VmFrame, ptr %2088, i32 0, i32 5
  %2089 = load ptr, ptr %pStatic, align 8
  %sName3352 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2089, i32 0, i32 0
  %zString3353 = getelementptr inbounds nuw %struct.SyString, ptr %sName3352, i32 0, i32 0
  %2090 = load ptr, ptr %zString3353, align 8
  %2091 = load ptr, ptr %pStatic, align 8
  %sName3354 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2091, i32 0, i32 0
  %nByte3355 = getelementptr inbounds nuw %struct.SyString, ptr %sName3354, i32 0, i32 1
  %2092 = load i32, ptr %nByte3355, align 8
  %2093 = load ptr, ptr %pStatic, align 8
  %nIdx3356 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %2093, i32 0, i32 2
  %2094 = load i32, ptr %nIdx3356, align 8
  %conv3357 = zext i32 %2094 to i64
  %2095 = inttoptr i64 %conv3357 to ptr
  %call3358 = call i32 @SyHashInsert(ptr noundef %hVar3351, ptr noundef %2090, i32 noundef %2092, ptr noundef %2095)
  br label %for.inc3359

for.inc3359:                                      ; preds = %if.end3350, %if.else3348
  %2096 = load i32, ptr %n3143, align 4
  %inc3360 = add i32 %2096, 1
  store i32 %inc3360, ptr %n3143, align 4
  br label %for.cond3321, !llvm.loop !24

for.end3361:                                      ; preds = %for.cond3321
  br label %if.end3362

if.end3362:                                       ; preds = %for.end3361, %if.end3312
  store i32 0, ptr %n3143, align 4
  br label %while.cond3363

while.cond3363:                                   ; preds = %if.end3537, %if.end3362
  %2097 = load ptr, ptr %pArg3070, align 8
  %2098 = load ptr, ptr %pTos, align 8
  %cmp3364 = icmp ult ptr %2097, %2098
  br i1 %cmp3364, label %while.body3366, label %while.end3541

while.body3366:                                   ; preds = %while.cond3363
  %2099 = load i32, ptr %n3143, align 4
  %2100 = load ptr, ptr %pVmFunc, align 8
  %aArgs3367 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2100, i32 0, i32 0
  %nUsed3368 = getelementptr inbounds nuw %struct.SySet, ptr %aArgs3367, i32 0, i32 2
  %2101 = load i32, ptr %nUsed3368, align 8
  %cmp3369 = icmp ult i32 %2099, %2101
  br i1 %cmp3369, label %if.then3371, label %if.else3520

if.then3371:                                      ; preds = %while.body3366
  %2102 = load ptr, ptr %pArg3070, align 8
  %iFlags3372 = getelementptr inbounds nuw %struct.ph7_value, ptr %2102, i32 0, i32 2
  %2103 = load i32, ptr %iFlags3372, align 8
  %and3373 = and i32 %2103, 32
  %tobool3374 = icmp ne i32 %and3373, 0
  br i1 %tobool3374, label %land.lhs.true3375, label %if.end3391

land.lhs.true3375:                                ; preds = %if.then3371
  %2104 = load ptr, ptr %aFormalArg, align 8
  %2105 = load i32, ptr %n3143, align 4
  %idxprom3376 = zext i32 %2105 to i64
  %arrayidx3377 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2104, i64 %idxprom3376
  %aByteCode3378 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3377, i32 0, i32 1
  %nUsed3379 = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode3378, i32 0, i32 2
  %2106 = load i32, ptr %nUsed3379, align 8
  %cmp3380 = icmp ugt i32 %2106, 0
  br i1 %cmp3380, label %if.then3382, label %if.end3391

if.then3382:                                      ; preds = %land.lhs.true3375
  %2107 = load ptr, ptr %pVm.addr, align 8
  %2108 = load ptr, ptr %aFormalArg, align 8
  %2109 = load i32, ptr %n3143, align 4
  %idxprom3383 = zext i32 %2109 to i64
  %arrayidx3384 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2108, i64 %idxprom3383
  %aByteCode3385 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3384, i32 0, i32 1
  %2110 = load ptr, ptr %pArg3070, align 8
  %call3386 = call i32 @VmLocalExec(ptr noundef %2107, ptr noundef %aByteCode3385, ptr noundef %2110)
  store i32 %call3386, ptr %rc, align 4
  %2111 = load i32, ptr %rc, align 4
  %cmp3387 = icmp eq i32 %2111, -10
  br i1 %cmp3387, label %if.then3389, label %if.end3390

if.then3389:                                      ; preds = %if.then3382
  br label %Abort

if.end3390:                                       ; preds = %if.then3382
  br label %if.end3391

if.end3391:                                       ; preds = %if.end3390, %land.lhs.true3375, %if.then3371
  %2112 = load ptr, ptr %aFormalArg, align 8
  %2113 = load i32, ptr %n3143, align 4
  %idxprom3392 = zext i32 %2113 to i64
  %arrayidx3393 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2112, i64 %idxprom3392
  %nType = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3393, i32 0, i32 2
  %2114 = load i32, ptr %nType, align 8
  %cmp3394 = icmp ugt i32 %2114, 0
  br i1 %cmp3394, label %if.then3396, label %if.end3457

if.then3396:                                      ; preds = %if.end3391
  %2115 = load ptr, ptr %aFormalArg, align 8
  %2116 = load i32, ptr %n3143, align 4
  %idxprom3397 = zext i32 %2116 to i64
  %arrayidx3398 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2115, i64 %idxprom3397
  %nType3399 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3398, i32 0, i32 2
  %2117 = load i32, ptr %nType3399, align 8
  %cmp3400 = icmp eq i32 %2117, -1
  br i1 %cmp3400, label %if.then3402, label %if.else3441

if.then3402:                                      ; preds = %if.then3396
  %2118 = load ptr, ptr %aFormalArg, align 8
  %2119 = load i32, ptr %n3143, align 4
  %idxprom3404 = zext i32 %2119 to i64
  %arrayidx3405 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2118, i64 %idxprom3404
  %sClass = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3405, i32 0, i32 3
  store ptr %sClass, ptr %pName3403, align 8
  %2120 = load ptr, ptr %pVm.addr, align 8
  %2121 = load ptr, ptr %pName3403, align 8
  %zString3407 = getelementptr inbounds nuw %struct.SyString, ptr %2121, i32 0, i32 0
  %2122 = load ptr, ptr %zString3407, align 8
  %2123 = load ptr, ptr %pName3403, align 8
  %nByte3408 = getelementptr inbounds nuw %struct.SyString, ptr %2123, i32 0, i32 1
  %2124 = load i32, ptr %nByte3408, align 8
  %call3409 = call ptr @PH7_VmExtractClass(ptr noundef %2120, ptr noundef %2122, i32 noundef %2124, i32 noundef 1, i32 noundef 0)
  store ptr %call3409, ptr %pClass3406, align 8
  %2125 = load ptr, ptr %pClass3406, align 8
  %tobool3410 = icmp ne ptr %2125, null
  br i1 %tobool3410, label %if.then3411, label %if.end3440

if.then3411:                                      ; preds = %if.then3402
  %2126 = load ptr, ptr %pArg3070, align 8
  %iFlags3412 = getelementptr inbounds nuw %struct.ph7_value, ptr %2126, i32 0, i32 2
  %2127 = load i32, ptr %iFlags3412, align 8
  %and3413 = and i32 %2127, 128
  %cmp3414 = icmp eq i32 %and3413, 0
  br i1 %cmp3414, label %if.then3416, label %if.else3427

if.then3416:                                      ; preds = %if.then3411
  %2128 = load ptr, ptr %pArg3070, align 8
  %iFlags3417 = getelementptr inbounds nuw %struct.ph7_value, ptr %2128, i32 0, i32 2
  %2129 = load i32, ptr %iFlags3417, align 8
  %and3418 = and i32 %2129, 32
  %cmp3419 = icmp eq i32 %and3418, 0
  br i1 %cmp3419, label %if.then3421, label %if.end3426

if.then3421:                                      ; preds = %if.then3416
  %2130 = load ptr, ptr %pVm.addr, align 8
  %2131 = load ptr, ptr %pVmFunc, align 8
  %sName3422 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2131, i32 0, i32 2
  %2132 = load i32, ptr %n3143, align 4
  %add3423 = add i32 %2132, 1
  %2133 = load ptr, ptr %pName3403, align 8
  %call3424 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2130, i32 noundef 2, ptr noundef @.str.105, ptr noundef %sName3422, i32 noundef %add3423, ptr noundef %2133)
  %2134 = load ptr, ptr %pArg3070, align 8
  %call3425 = call i32 @PH7_MemObjRelease(ptr noundef %2134)
  br label %if.end3426

if.end3426:                                       ; preds = %if.then3421, %if.then3416
  br label %if.end3439

if.else3427:                                      ; preds = %if.then3411
  %2135 = load ptr, ptr %pArg3070, align 8
  %x3429 = getelementptr inbounds nuw %struct.ph7_value, ptr %2135, i32 0, i32 1
  %2136 = load ptr, ptr %x3429, align 8
  store ptr %2136, ptr %pThis3428, align 8
  %2137 = load ptr, ptr %pThis3428, align 8
  %pClass3430 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %2137, i32 0, i32 1
  %2138 = load ptr, ptr %pClass3430, align 8
  %2139 = load ptr, ptr %pClass3406, align 8
  %call3431 = call i32 @VmInstanceOf(ptr noundef %2138, ptr noundef %2139)
  %tobool3432 = icmp ne i32 %call3431, 0
  br i1 %tobool3432, label %if.end3438, label %if.then3433

if.then3433:                                      ; preds = %if.else3427
  %2140 = load ptr, ptr %pVm.addr, align 8
  %2141 = load ptr, ptr %pVmFunc, align 8
  %sName3434 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2141, i32 0, i32 2
  %2142 = load i32, ptr %n3143, align 4
  %add3435 = add i32 %2142, 1
  %2143 = load ptr, ptr %pName3403, align 8
  %call3436 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2140, i32 noundef 1, ptr noundef @.str.105, ptr noundef %sName3434, i32 noundef %add3435, ptr noundef %2143)
  %2144 = load ptr, ptr %pArg3070, align 8
  %call3437 = call i32 @PH7_MemObjRelease(ptr noundef %2144)
  br label %if.end3438

if.end3438:                                       ; preds = %if.then3433, %if.else3427
  br label %if.end3439

if.end3439:                                       ; preds = %if.end3438, %if.end3426
  br label %if.end3440

if.end3440:                                       ; preds = %if.end3439, %if.then3402
  br label %if.end3456

if.else3441:                                      ; preds = %if.then3396
  %2145 = load ptr, ptr %pArg3070, align 8
  %iFlags3442 = getelementptr inbounds nuw %struct.ph7_value, ptr %2145, i32 0, i32 2
  %2146 = load i32, ptr %iFlags3442, align 8
  %2147 = load ptr, ptr %aFormalArg, align 8
  %2148 = load i32, ptr %n3143, align 4
  %idxprom3443 = zext i32 %2148 to i64
  %arrayidx3444 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2147, i64 %idxprom3443
  %nType3445 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3444, i32 0, i32 2
  %2149 = load i32, ptr %nType3445, align 8
  %and3446 = and i32 %2146, %2149
  %cmp3447 = icmp eq i32 %and3446, 0
  br i1 %cmp3447, label %if.then3449, label %if.end3455

if.then3449:                                      ; preds = %if.else3441
  %2150 = load ptr, ptr %aFormalArg, align 8
  %2151 = load i32, ptr %n3143, align 4
  %idxprom3450 = zext i32 %2151 to i64
  %arrayidx3451 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2150, i64 %idxprom3450
  %nType3452 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3451, i32 0, i32 2
  %2152 = load i32, ptr %nType3452, align 8
  %call3453 = call ptr @PH7_MemObjCastMethod(i32 noundef %2152)
  store ptr %call3453, ptr %xCast, align 8
  %2153 = load ptr, ptr %xCast, align 8
  %2154 = load ptr, ptr %pArg3070, align 8
  %call3454 = call i32 %2153(ptr noundef %2154)
  br label %if.end3455

if.end3455:                                       ; preds = %if.then3449, %if.else3441
  br label %if.end3456

if.end3456:                                       ; preds = %if.end3455, %if.end3440
  br label %if.end3457

if.end3457:                                       ; preds = %if.end3456, %if.end3391
  %2155 = load ptr, ptr %aFormalArg, align 8
  %2156 = load i32, ptr %n3143, align 4
  %idxprom3458 = zext i32 %2156 to i64
  %arrayidx3459 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2155, i64 %idxprom3458
  %iFlags3460 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3459, i32 0, i32 4
  %2157 = load i32, ptr %iFlags3460, align 8
  %and3461 = and i32 %2157, 1
  %tobool3462 = icmp ne i32 %and3461, 0
  br i1 %tobool3462, label %if.then3463, label %if.else3514

if.then3463:                                      ; preds = %if.end3457
  %2158 = load ptr, ptr %pArg3070, align 8
  %nIdx3464 = getelementptr inbounds nuw %struct.ph7_value, ptr %2158, i32 0, i32 5
  %2159 = load i32, ptr %nIdx3464, align 8
  %cmp3465 = icmp eq i32 %2159, -1
  br i1 %cmp3465, label %if.then3467, label %if.else3481

if.then3467:                                      ; preds = %if.then3463
  %2160 = load ptr, ptr %pArg3070, align 8
  %iFlags3468 = getelementptr inbounds nuw %struct.ph7_value, ptr %2160, i32 0, i32 2
  %2161 = load i32, ptr %iFlags3468, align 8
  %and3469 = and i32 %2161, 480
  %cmp3470 = icmp eq i32 %and3469, 0
  br i1 %cmp3470, label %if.then3472, label %if.end3476

if.then3472:                                      ; preds = %if.then3467
  %2162 = load ptr, ptr %pVm.addr, align 8
  %2163 = load ptr, ptr %pVmFunc, align 8
  %sName3473 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2163, i32 0, i32 2
  %2164 = load i32, ptr %n3143, align 4
  %add3474 = add i32 %2164, 1
  %call3475 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2162, i32 noundef 2, ptr noundef @.str.106, ptr noundef %sName3473, i32 noundef %add3474)
  br label %if.end3476

if.end3476:                                       ; preds = %if.then3472, %if.then3467
  %2165 = load ptr, ptr %pVm.addr, align 8
  %2166 = load ptr, ptr %aFormalArg, align 8
  %2167 = load i32, ptr %n3143, align 4
  %idxprom3477 = zext i32 %2167 to i64
  %arrayidx3478 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2166, i64 %idxprom3477
  %sName3479 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3478, i32 0, i32 0
  %call3480 = call ptr @VmExtractMemObj(ptr noundef %2165, ptr noundef %sName3479, i32 noundef 0, i32 noundef 1)
  store ptr %call3480, ptr %pObj3142, align 8
  br label %if.end3513

if.else3481:                                      ; preds = %if.then3463
  %2168 = load ptr, ptr %pFrame3141, align 8
  %hVar3482 = getelementptr inbounds nuw %struct.VmFrame, ptr %2168, i32 0, i32 5
  %2169 = load ptr, ptr %aFormalArg, align 8
  %2170 = load i32, ptr %n3143, align 4
  %idxprom3483 = zext i32 %2170 to i64
  %arrayidx3484 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2169, i64 %idxprom3483
  %sName3485 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3484, i32 0, i32 0
  %zString3486 = getelementptr inbounds nuw %struct.SyString, ptr %sName3485, i32 0, i32 0
  %2171 = load ptr, ptr %zString3486, align 8
  %2172 = load ptr, ptr %aFormalArg, align 8
  %2173 = load i32, ptr %n3143, align 4
  %idxprom3487 = zext i32 %2173 to i64
  %arrayidx3488 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2172, i64 %idxprom3487
  %sName3489 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3488, i32 0, i32 0
  %nByte3490 = getelementptr inbounds nuw %struct.SyString, ptr %sName3489, i32 0, i32 1
  %2174 = load i32, ptr %nByte3490, align 8
  %call3491 = call ptr @SyHashGet(ptr noundef %hVar3482, ptr noundef %2171, i32 noundef %2174)
  store ptr %call3491, ptr %pRefEntry, align 8
  %2175 = load ptr, ptr %pRefEntry, align 8
  %cmp3492 = icmp eq ptr %2175, null
  br i1 %cmp3492, label %if.then3494, label %if.end3512

if.then3494:                                      ; preds = %if.else3481
  %2176 = load ptr, ptr %pFrame3141, align 8
  %hVar3495 = getelementptr inbounds nuw %struct.VmFrame, ptr %2176, i32 0, i32 5
  %2177 = load ptr, ptr %aFormalArg, align 8
  %2178 = load i32, ptr %n3143, align 4
  %idxprom3496 = zext i32 %2178 to i64
  %arrayidx3497 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2177, i64 %idxprom3496
  %sName3498 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3497, i32 0, i32 0
  %zString3499 = getelementptr inbounds nuw %struct.SyString, ptr %sName3498, i32 0, i32 0
  %2179 = load ptr, ptr %zString3499, align 8
  %2180 = load ptr, ptr %aFormalArg, align 8
  %2181 = load i32, ptr %n3143, align 4
  %idxprom3500 = zext i32 %2181 to i64
  %arrayidx3501 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2180, i64 %idxprom3500
  %sName3502 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3501, i32 0, i32 0
  %nByte3503 = getelementptr inbounds nuw %struct.SyString, ptr %sName3502, i32 0, i32 1
  %2182 = load i32, ptr %nByte3503, align 8
  %2183 = load ptr, ptr %pArg3070, align 8
  %nIdx3504 = getelementptr inbounds nuw %struct.ph7_value, ptr %2183, i32 0, i32 5
  %2184 = load i32, ptr %nIdx3504, align 8
  %conv3505 = zext i32 %2184 to i64
  %2185 = inttoptr i64 %conv3505 to ptr
  %call3506 = call i32 @SyHashInsert(ptr noundef %hVar3495, ptr noundef %2179, i32 noundef %2182, ptr noundef %2185)
  %2186 = load ptr, ptr %pArg3070, align 8
  %nIdx3507 = getelementptr inbounds nuw %struct.ph7_value, ptr %2186, i32 0, i32 5
  %2187 = load i32, ptr %nIdx3507, align 8
  %nIdx3508 = getelementptr inbounds nuw %struct.VmSlot, ptr %sArg, i32 0, i32 0
  store i32 %2187, ptr %nIdx3508, align 8
  %pUserData3509 = getelementptr inbounds nuw %struct.VmSlot, ptr %sArg, i32 0, i32 1
  store ptr null, ptr %pUserData3509, align 8
  %2188 = load ptr, ptr %pFrame3141, align 8
  %sArg3510 = getelementptr inbounds nuw %struct.VmFrame, ptr %2188, i32 0, i32 6
  %call3511 = call i32 @SySetPut(ptr noundef %sArg3510, ptr noundef %sArg)
  br label %if.end3512

if.end3512:                                       ; preds = %if.then3494, %if.else3481
  store ptr null, ptr %pObj3142, align 8
  br label %if.end3513

if.end3513:                                       ; preds = %if.end3512, %if.end3476
  br label %if.end3519

if.else3514:                                      ; preds = %if.end3457
  %2189 = load ptr, ptr %pVm.addr, align 8
  %2190 = load ptr, ptr %aFormalArg, align 8
  %2191 = load i32, ptr %n3143, align 4
  %idxprom3515 = zext i32 %2191 to i64
  %arrayidx3516 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2190, i64 %idxprom3515
  %sName3517 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3516, i32 0, i32 0
  %call3518 = call ptr @VmExtractMemObj(ptr noundef %2189, ptr noundef %sName3517, i32 noundef 0, i32 noundef 1)
  store ptr %call3518, ptr %pObj3142, align 8
  br label %if.end3519

if.end3519:                                       ; preds = %if.else3514, %if.end3513
  br label %if.end3528

if.else3520:                                      ; preds = %while.body3366
  %arraydecay = getelementptr inbounds [32 x i8], ptr %zName3521, i64 0, i64 0
  %2192 = load i32, ptr %n3143, align 4
  %call3523 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %arraydecay, i32 noundef 32, ptr noundef @.str.107, i32 noundef %2192)
  %nByte3524 = getelementptr inbounds nuw %struct.SyString, ptr %sName3522, i32 0, i32 1
  store i32 %call3523, ptr %nByte3524, align 8
  %arraydecay3525 = getelementptr inbounds [32 x i8], ptr %zName3521, i64 0, i64 0
  %zString3526 = getelementptr inbounds nuw %struct.SyString, ptr %sName3522, i32 0, i32 0
  store ptr %arraydecay3525, ptr %zString3526, align 8
  %2193 = load ptr, ptr %pVm.addr, align 8
  %call3527 = call ptr @VmExtractMemObj(ptr noundef %2193, ptr noundef %sName3522, i32 noundef 1, i32 noundef 1)
  store ptr %call3527, ptr %pObj3142, align 8
  br label %if.end3528

if.end3528:                                       ; preds = %if.else3520, %if.end3519
  %2194 = load ptr, ptr %pObj3142, align 8
  %tobool3529 = icmp ne ptr %2194, null
  br i1 %tobool3529, label %if.then3530, label %if.end3537

if.then3530:                                      ; preds = %if.end3528
  %2195 = load ptr, ptr %pArg3070, align 8
  %2196 = load ptr, ptr %pObj3142, align 8
  %call3531 = call i32 @PH7_MemObjStore(ptr noundef %2195, ptr noundef %2196)
  %2197 = load ptr, ptr %pObj3142, align 8
  %nIdx3532 = getelementptr inbounds nuw %struct.ph7_value, ptr %2197, i32 0, i32 5
  %2198 = load i32, ptr %nIdx3532, align 8
  %nIdx3533 = getelementptr inbounds nuw %struct.VmSlot, ptr %sArg, i32 0, i32 0
  store i32 %2198, ptr %nIdx3533, align 8
  %pUserData3534 = getelementptr inbounds nuw %struct.VmSlot, ptr %sArg, i32 0, i32 1
  store ptr null, ptr %pUserData3534, align 8
  %2199 = load ptr, ptr %pFrame3141, align 8
  %sArg3535 = getelementptr inbounds nuw %struct.VmFrame, ptr %2199, i32 0, i32 6
  %call3536 = call i32 @SySetPut(ptr noundef %sArg3535, ptr noundef %sArg)
  br label %if.end3537

if.end3537:                                       ; preds = %if.then3530, %if.end3528
  %2200 = load ptr, ptr %pArg3070, align 8
  %call3538 = call i32 @PH7_MemObjRelease(ptr noundef %2200)
  %2201 = load ptr, ptr %pArg3070, align 8
  %incdec.ptr3539 = getelementptr inbounds nuw %struct.ph7_value, ptr %2201, i32 1
  store ptr %incdec.ptr3539, ptr %pArg3070, align 8
  %2202 = load i32, ptr %n3143, align 4
  %inc3540 = add i32 %2202, 1
  store i32 %inc3540, ptr %n3143, align 4
  br label %while.cond3363, !llvm.loop !25

while.end3541:                                    ; preds = %while.cond3363
  %2203 = load ptr, ptr %pVmFunc, align 8
  %iFlags3542 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2203, i32 0, i32 5
  %2204 = load i32, ptr %iFlags3542, align 8
  %and3543 = and i32 %2204, 16
  %tobool3544 = icmp ne i32 %and3543, 0
  br i1 %tobool3544, label %if.then3545, label %if.end3582

if.then3545:                                      ; preds = %while.end3541
  %2205 = load ptr, ptr %pVmFunc, align 8
  %aClosureEnv3550 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2205, i32 0, i32 4
  %pBase3551 = getelementptr inbounds nuw %struct.SySet, ptr %aClosureEnv3550, i32 0, i32 1
  %2206 = load ptr, ptr %pBase3551, align 8
  store ptr %2206, ptr %aEnv3546, align 8
  store i32 0, ptr %n3549, align 4
  br label %for.cond3552

for.cond3552:                                     ; preds = %for.inc3579, %if.then3545
  %2207 = load i32, ptr %n3549, align 4
  %2208 = load ptr, ptr %pVmFunc, align 8
  %aClosureEnv3553 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2208, i32 0, i32 4
  %nUsed3554 = getelementptr inbounds nuw %struct.SySet, ptr %aClosureEnv3553, i32 0, i32 2
  %2209 = load i32, ptr %nUsed3554, align 8
  %cmp3555 = icmp ult i32 %2207, %2209
  br i1 %cmp3555, label %for.body3557, label %for.end3581

for.body3557:                                     ; preds = %for.cond3552
  %2210 = load ptr, ptr %aEnv3546, align 8
  %2211 = load i32, ptr %n3549, align 4
  %idxprom3558 = zext i32 %2211 to i64
  %arrayidx3559 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %2210, i64 %idxprom3558
  store ptr %arrayidx3559, ptr %pEnv3547, align 8
  %2212 = load ptr, ptr %pEnv3547, align 8
  %iFlags3560 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %2212, i32 0, i32 1
  %2213 = load i32, ptr %iFlags3560, align 8
  %and3561 = and i32 %2213, 32
  %tobool3562 = icmp ne i32 %and3561, 0
  br i1 %tobool3562, label %land.lhs.true3563, label %if.end3569

land.lhs.true3563:                                ; preds = %for.body3557
  %2214 = load ptr, ptr %pEnv3547, align 8
  %sValue3564 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %2214, i32 0, i32 2
  %iFlags3565 = getelementptr inbounds nuw %struct.ph7_value, ptr %sValue3564, i32 0, i32 2
  %2215 = load i32, ptr %iFlags3565, align 8
  %and3566 = and i32 %2215, 32
  %tobool3567 = icmp ne i32 %and3566, 0
  br i1 %tobool3567, label %if.then3568, label %if.end3569

if.then3568:                                      ; preds = %land.lhs.true3563
  br label %for.inc3579

if.end3569:                                       ; preds = %land.lhs.true3563, %for.body3557
  %2216 = load ptr, ptr %pVm.addr, align 8
  %2217 = load ptr, ptr %pEnv3547, align 8
  %sName3570 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %2217, i32 0, i32 0
  %call3571 = call ptr @VmExtractMemObj(ptr noundef %2216, ptr noundef %sName3570, i32 noundef 0, i32 noundef 1)
  store ptr %call3571, ptr %pValue3548, align 8
  %2218 = load ptr, ptr %pValue3548, align 8
  %cmp3572 = icmp eq ptr %2218, null
  br i1 %cmp3572, label %if.then3574, label %if.end3575

if.then3574:                                      ; preds = %if.end3569
  br label %for.inc3579

if.end3575:                                       ; preds = %if.end3569
  %2219 = load ptr, ptr %pValue3548, align 8
  %call3576 = call i32 @PH7_MemObjRelease(ptr noundef %2219)
  %2220 = load ptr, ptr %pEnv3547, align 8
  %sValue3577 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %2220, i32 0, i32 2
  %2221 = load ptr, ptr %pValue3548, align 8
  %call3578 = call i32 @PH7_MemObjStore(ptr noundef %sValue3577, ptr noundef %2221)
  br label %for.inc3579

for.inc3579:                                      ; preds = %if.end3575, %if.then3574, %if.then3568
  %2222 = load i32, ptr %n3549, align 4
  %inc3580 = add i32 %2222, 1
  store i32 %inc3580, ptr %n3549, align 4
  br label %for.cond3552, !llvm.loop !26

for.end3581:                                      ; preds = %for.cond3552
  br label %if.end3582

if.end3582:                                       ; preds = %for.end3581, %while.end3541
  br label %while.cond3583

while.cond3583:                                   ; preds = %if.end3637, %if.end3582
  %2223 = load i32, ptr %n3143, align 4
  %2224 = load ptr, ptr %pVmFunc, align 8
  %aArgs3584 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2224, i32 0, i32 0
  %nUsed3585 = getelementptr inbounds nuw %struct.SySet, ptr %aArgs3584, i32 0, i32 2
  %2225 = load i32, ptr %nUsed3585, align 8
  %cmp3586 = icmp ult i32 %2223, %2225
  br i1 %cmp3586, label %while.body3588, label %while.end3639

while.body3588:                                   ; preds = %while.cond3583
  %2226 = load ptr, ptr %aFormalArg, align 8
  %2227 = load i32, ptr %n3143, align 4
  %idxprom3589 = zext i32 %2227 to i64
  %arrayidx3590 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2226, i64 %idxprom3589
  %aByteCode3591 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3590, i32 0, i32 1
  %nUsed3592 = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode3591, i32 0, i32 2
  %2228 = load i32, ptr %nUsed3592, align 8
  %cmp3593 = icmp ugt i32 %2228, 0
  br i1 %cmp3593, label %if.then3595, label %if.end3637

if.then3595:                                      ; preds = %while.body3588
  %2229 = load ptr, ptr %pVm.addr, align 8
  %2230 = load ptr, ptr %aFormalArg, align 8
  %2231 = load i32, ptr %n3143, align 4
  %idxprom3596 = zext i32 %2231 to i64
  %arrayidx3597 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2230, i64 %idxprom3596
  %sName3598 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3597, i32 0, i32 0
  %call3599 = call ptr @VmExtractMemObj(ptr noundef %2229, ptr noundef %sName3598, i32 noundef 0, i32 noundef 1)
  store ptr %call3599, ptr %pObj3142, align 8
  %2232 = load ptr, ptr %pObj3142, align 8
  %tobool3600 = icmp ne ptr %2232, null
  br i1 %tobool3600, label %if.then3601, label %if.end3636

if.then3601:                                      ; preds = %if.then3595
  %2233 = load ptr, ptr %pVm.addr, align 8
  %2234 = load ptr, ptr %aFormalArg, align 8
  %2235 = load i32, ptr %n3143, align 4
  %idxprom3602 = zext i32 %2235 to i64
  %arrayidx3603 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2234, i64 %idxprom3602
  %aByteCode3604 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3603, i32 0, i32 1
  %2236 = load ptr, ptr %pObj3142, align 8
  %call3605 = call i32 @VmLocalExec(ptr noundef %2233, ptr noundef %aByteCode3604, ptr noundef %2236)
  store i32 %call3605, ptr %rc, align 4
  %2237 = load i32, ptr %rc, align 4
  %cmp3606 = icmp eq i32 %2237, -10
  br i1 %cmp3606, label %if.then3608, label %if.end3609

if.then3608:                                      ; preds = %if.then3601
  br label %Abort

if.end3609:                                       ; preds = %if.then3601
  %2238 = load ptr, ptr %pObj3142, align 8
  %nIdx3610 = getelementptr inbounds nuw %struct.ph7_value, ptr %2238, i32 0, i32 5
  %2239 = load i32, ptr %nIdx3610, align 8
  %nIdx3611 = getelementptr inbounds nuw %struct.VmSlot, ptr %sArg, i32 0, i32 0
  store i32 %2239, ptr %nIdx3611, align 8
  %pUserData3612 = getelementptr inbounds nuw %struct.VmSlot, ptr %sArg, i32 0, i32 1
  store ptr null, ptr %pUserData3612, align 8
  %2240 = load ptr, ptr %pFrame3141, align 8
  %sArg3613 = getelementptr inbounds nuw %struct.VmFrame, ptr %2240, i32 0, i32 6
  %call3614 = call i32 @SySetPut(ptr noundef %sArg3613, ptr noundef %sArg)
  %2241 = load ptr, ptr %aFormalArg, align 8
  %2242 = load i32, ptr %n3143, align 4
  %idxprom3615 = zext i32 %2242 to i64
  %arrayidx3616 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2241, i64 %idxprom3615
  %nType3617 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3616, i32 0, i32 2
  %2243 = load i32, ptr %nType3617, align 8
  %cmp3618 = icmp ugt i32 %2243, 0
  br i1 %cmp3618, label %land.lhs.true3620, label %if.end3635

land.lhs.true3620:                                ; preds = %if.end3609
  %2244 = load ptr, ptr %pObj3142, align 8
  %iFlags3621 = getelementptr inbounds nuw %struct.ph7_value, ptr %2244, i32 0, i32 2
  %2245 = load i32, ptr %iFlags3621, align 8
  %2246 = load ptr, ptr %aFormalArg, align 8
  %2247 = load i32, ptr %n3143, align 4
  %idxprom3622 = zext i32 %2247 to i64
  %arrayidx3623 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2246, i64 %idxprom3622
  %nType3624 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3623, i32 0, i32 2
  %2248 = load i32, ptr %nType3624, align 8
  %and3625 = and i32 %2245, %2248
  %cmp3626 = icmp eq i32 %and3625, 0
  br i1 %cmp3626, label %if.then3628, label %if.end3635

if.then3628:                                      ; preds = %land.lhs.true3620
  %2249 = load ptr, ptr %aFormalArg, align 8
  %2250 = load i32, ptr %n3143, align 4
  %idxprom3630 = zext i32 %2250 to i64
  %arrayidx3631 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %2249, i64 %idxprom3630
  %nType3632 = getelementptr inbounds nuw %struct.ph7_vm_func_arg, ptr %arrayidx3631, i32 0, i32 2
  %2251 = load i32, ptr %nType3632, align 8
  %call3633 = call ptr @PH7_MemObjCastMethod(i32 noundef %2251)
  store ptr %call3633, ptr %xCast3629, align 8
  %2252 = load ptr, ptr %xCast3629, align 8
  %2253 = load ptr, ptr %pObj3142, align 8
  %call3634 = call i32 %2252(ptr noundef %2253)
  br label %if.end3635

if.end3635:                                       ; preds = %if.then3628, %land.lhs.true3620, %if.end3609
  br label %if.end3636

if.end3636:                                       ; preds = %if.end3635, %if.then3595
  br label %if.end3637

if.end3637:                                       ; preds = %if.end3636, %while.body3588
  %2254 = load i32, ptr %n3143, align 4
  %inc3638 = add i32 %2254, 1
  store i32 %inc3638, ptr %n3143, align 4
  br label %while.cond3583, !llvm.loop !27

while.end3639:                                    ; preds = %while.cond3583
  %2255 = load ptr, ptr %pTos, align 8
  %call3640 = call i32 @PH7_MemObjRelease(ptr noundef %2255)
  %2256 = load ptr, ptr %pTos, align 8
  %2257 = load ptr, ptr %pInstr, align 8
  %iP13641 = getelementptr inbounds nuw %struct.VmInstr, ptr %2257, i32 0, i32 1
  %2258 = load i32, ptr %iP13641, align 4
  %sub3642 = sub nsw i32 0, %2258
  %idxprom3643 = sext i32 %sub3642 to i64
  %arrayidx3644 = getelementptr inbounds %struct.ph7_value, ptr %2256, i64 %idxprom3643
  store ptr %arrayidx3644, ptr %pTos, align 8
  %2259 = load ptr, ptr %pVm.addr, align 8
  %2260 = load ptr, ptr %pVmFunc, align 8
  %aByteCode3645 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2260, i32 0, i32 3
  %nUsed3646 = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode3645, i32 0, i32 2
  %2261 = load i32, ptr %nUsed3646, align 8
  %call3647 = call ptr @VmNewOperandStack(ptr noundef %2259, i32 noundef %2261)
  store ptr %call3647, ptr %pFrameStack, align 8
  %2262 = load ptr, ptr %pFrameStack, align 8
  %cmp3648 = icmp eq ptr %2262, null
  br i1 %cmp3648, label %if.then3650, label %if.end3659

if.then3650:                                      ; preds = %while.end3639
  %2263 = load ptr, ptr %pVm.addr, align 8
  %2264 = load ptr, ptr %pVmFunc, align 8
  %sName3651 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2264, i32 0, i32 2
  %call3652 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2263, i32 noundef 1, ptr noundef @.str.103, ptr noundef %sName3651)
  %2265 = load ptr, ptr %pInstr, align 8
  %iP13653 = getelementptr inbounds nuw %struct.VmInstr, ptr %2265, i32 0, i32 1
  %2266 = load i32, ptr %iP13653, align 4
  %cmp3654 = icmp sgt i32 %2266, 0
  br i1 %cmp3654, label %if.then3656, label %if.end3658

if.then3656:                                      ; preds = %if.then3650
  %2267 = load ptr, ptr %pInstr, align 8
  %iP13657 = getelementptr inbounds nuw %struct.VmInstr, ptr %2267, i32 0, i32 1
  %2268 = load i32, ptr %iP13657, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %2268)
  br label %if.end3658

if.end3658:                                       ; preds = %if.then3656, %if.then3650
  br label %sw.epilog3867

if.end3659:                                       ; preds = %while.end3639
  %2269 = load ptr, ptr %pSelf, align 8
  %tobool3660 = icmp ne ptr %2269, null
  br i1 %tobool3660, label %if.then3661, label %if.end3663

if.then3661:                                      ; preds = %if.end3659
  %2270 = load ptr, ptr %pVm.addr, align 8
  %aSelf = getelementptr inbounds nuw %struct.ph7_vm, ptr %2270, i32 0, i32 50
  %call3662 = call i32 @SySetPut(ptr noundef %aSelf, ptr noundef %pSelf)
  br label %if.end3663

if.end3663:                                       ; preds = %if.then3661, %if.end3659
  %2271 = load ptr, ptr %pVm.addr, align 8
  %nRecursionDepth3664 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2271, i32 0, i32 34
  %2272 = load i32, ptr %nRecursionDepth3664, align 4
  %inc3665 = add nsw i32 %2272, 1
  store i32 %inc3665, ptr %nRecursionDepth3664, align 4
  %2273 = load ptr, ptr %pVm.addr, align 8
  %2274 = load ptr, ptr %pVmFunc, align 8
  %aByteCode3666 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2274, i32 0, i32 3
  %pBase3667 = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode3666, i32 0, i32 1
  %2275 = load ptr, ptr %pBase3667, align 8
  %2276 = load ptr, ptr %pFrameStack, align 8
  %2277 = load ptr, ptr %pTos, align 8
  %call3668 = call i32 @VmByteCodeExec(ptr noundef %2273, ptr noundef %2275, ptr noundef %2276, i32 noundef -1, ptr noundef %2277, ptr noundef %n3143, i32 noundef 0)
  store i32 %call3668, ptr %rc, align 4
  %2278 = load ptr, ptr %pVm.addr, align 8
  %nRecursionDepth3669 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2278, i32 0, i32 34
  %2279 = load i32, ptr %nRecursionDepth3669, align 4
  %dec3670 = add nsw i32 %2279, -1
  store i32 %dec3670, ptr %nRecursionDepth3669, align 4
  %2280 = load ptr, ptr %pSelf, align 8
  %tobool3671 = icmp ne ptr %2280, null
  br i1 %tobool3671, label %if.then3672, label %if.end3675

if.then3672:                                      ; preds = %if.end3663
  %2281 = load ptr, ptr %pVm.addr, align 8
  %aSelf3673 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2281, i32 0, i32 50
  %call3674 = call ptr @SySetPop(ptr noundef %aSelf3673)
  br label %if.end3675

if.end3675:                                       ; preds = %if.then3672, %if.end3663
  %2282 = load ptr, ptr %pVmFunc, align 8
  %iFlags3676 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2282, i32 0, i32 5
  %2283 = load i32, ptr %iFlags3676, align 8
  %and3677 = and i32 %2283, 4
  %tobool3678 = icmp ne i32 %and3677, 0
  br i1 %tobool3678, label %land.lhs.true3679, label %if.end3726

land.lhs.true3679:                                ; preds = %if.end3675
  %2284 = load i32, ptr %rc, align 4
  %cmp3680 = icmp eq i32 %2284, 0
  br i1 %cmp3680, label %if.then3682, label %if.end3726

if.then3682:                                      ; preds = %land.lhs.true3679
  %2285 = load i32, ptr %n3143, align 4
  %cmp3683 = icmp ne i32 %2285, -1
  br i1 %cmp3683, label %if.then3685, label %if.else3715

if.then3685:                                      ; preds = %if.then3682
  %2286 = load ptr, ptr %pFrame3141, align 8
  %sLocal = getelementptr inbounds nuw %struct.VmFrame, ptr %2286, i32 0, i32 3
  %pBase3686 = getelementptr inbounds nuw %struct.SySet, ptr %sLocal, i32 0, i32 1
  %2287 = load ptr, ptr %pBase3686, align 8
  store ptr %2287, ptr %aSlot, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond3687

for.cond3687:                                     ; preds = %for.inc3712, %if.then3685
  %2288 = load i32, ptr %i, align 4
  %2289 = load ptr, ptr %pFrame3141, align 8
  %sLocal3688 = getelementptr inbounds nuw %struct.VmFrame, ptr %2289, i32 0, i32 3
  %nUsed3689 = getelementptr inbounds nuw %struct.SySet, ptr %sLocal3688, i32 0, i32 2
  %2290 = load i32, ptr %nUsed3689, align 8
  %cmp3690 = icmp ult i32 %2288, %2290
  br i1 %cmp3690, label %for.body3692, label %for.end3714

for.body3692:                                     ; preds = %for.cond3687
  %2291 = load i32, ptr %n3143, align 4
  %2292 = load ptr, ptr %aSlot, align 8
  %2293 = load i32, ptr %i, align 4
  %idxprom3693 = zext i32 %2293 to i64
  %arrayidx3694 = getelementptr inbounds nuw %struct.VmSlot, ptr %2292, i64 %idxprom3693
  %nIdx3695 = getelementptr inbounds nuw %struct.VmSlot, ptr %arrayidx3694, i32 0, i32 0
  %2294 = load i32, ptr %nIdx3695, align 8
  %cmp3696 = icmp eq i32 %2291, %2294
  br i1 %cmp3696, label %if.then3698, label %if.end3711

if.then3698:                                      ; preds = %for.body3692
  %2295 = load ptr, ptr %pVm.addr, align 8
  %aMemObj3699 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2295, i32 0, i32 6
  %2296 = load i32, ptr %n3143, align 4
  %call3700 = call ptr @SySetAt(ptr noundef %aMemObj3699, i32 noundef %2296)
  store ptr %call3700, ptr %pObj3142, align 8
  %2297 = load ptr, ptr %pObj3142, align 8
  %tobool3701 = icmp ne ptr %2297, null
  br i1 %tobool3701, label %land.lhs.true3702, label %if.end3710

land.lhs.true3702:                                ; preds = %if.then3698
  %2298 = load ptr, ptr %pObj3142, align 8
  %iFlags3703 = getelementptr inbounds nuw %struct.ph7_value, ptr %2298, i32 0, i32 2
  %2299 = load i32, ptr %iFlags3703, align 8
  %and3704 = and i32 %2299, 480
  %cmp3705 = icmp eq i32 %and3704, 0
  br i1 %cmp3705, label %if.then3707, label %if.end3710

if.then3707:                                      ; preds = %land.lhs.true3702
  %2300 = load ptr, ptr %pVm.addr, align 8
  %2301 = load ptr, ptr %pVmFunc, align 8
  %sName3708 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2301, i32 0, i32 2
  %call3709 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2300, i32 noundef 3, ptr noundef @.str.108, ptr noundef %sName3708)
  br label %if.end3710

if.end3710:                                       ; preds = %if.then3707, %land.lhs.true3702, %if.then3698
  store i32 -1, ptr %n3143, align 4
  br label %for.end3714

if.end3711:                                       ; preds = %for.body3692
  br label %for.inc3712

for.inc3712:                                      ; preds = %if.end3711
  %2302 = load i32, ptr %i, align 4
  %inc3713 = add i32 %2302, 1
  store i32 %inc3713, ptr %i, align 4
  br label %for.cond3687, !llvm.loop !28

for.end3714:                                      ; preds = %if.end3710, %for.cond3687
  br label %if.end3724

if.else3715:                                      ; preds = %if.then3682
  %2303 = load ptr, ptr %pTos, align 8
  %iFlags3716 = getelementptr inbounds nuw %struct.ph7_value, ptr %2303, i32 0, i32 2
  %2304 = load i32, ptr %iFlags3716, align 8
  %and3717 = and i32 %2304, 480
  %cmp3718 = icmp eq i32 %and3717, 0
  br i1 %cmp3718, label %if.then3720, label %if.end3723

if.then3720:                                      ; preds = %if.else3715
  %2305 = load ptr, ptr %pVm.addr, align 8
  %2306 = load ptr, ptr %pVmFunc, align 8
  %sName3721 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %2306, i32 0, i32 2
  %call3722 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2305, i32 noundef 3, ptr noundef @.str.109, ptr noundef %sName3721)
  br label %if.end3723

if.end3723:                                       ; preds = %if.then3720, %if.else3715
  br label %if.end3724

if.end3724:                                       ; preds = %if.end3723, %for.end3714
  %2307 = load i32, ptr %n3143, align 4
  %2308 = load ptr, ptr %pTos, align 8
  %nIdx3725 = getelementptr inbounds nuw %struct.ph7_value, ptr %2308, i32 0, i32 5
  store i32 %2307, ptr %nIdx3725, align 8
  br label %if.end3726

if.end3726:                                       ; preds = %if.end3724, %land.lhs.true3679, %if.end3675
  %2309 = load i32, ptr %rc, align 4
  %cmp3727 = icmp ne i32 %2309, -10
  br i1 %cmp3727, label %land.lhs.true3729, label %if.end3760

land.lhs.true3729:                                ; preds = %if.end3726
  %2310 = load ptr, ptr %pFrame3141, align 8
  %iFlags3730 = getelementptr inbounds nuw %struct.VmFrame, ptr %2310, i32 0, i32 8
  %2311 = load i32, ptr %iFlags3730, align 8
  %and3731 = and i32 %2311, 2
  %tobool3732 = icmp ne i32 %and3731, 0
  br i1 %tobool3732, label %if.then3736, label %lor.lhs.false3733

lor.lhs.false3733:                                ; preds = %land.lhs.true3729
  %2312 = load i32, ptr %rc, align 4
  %cmp3734 = icmp eq i32 %2312, -255
  br i1 %cmp3734, label %if.then3736, label %if.end3760

if.then3736:                                      ; preds = %lor.lhs.false3733, %land.lhs.true3729
  %2313 = load ptr, ptr %pFrame3141, align 8
  %pParent3737 = getelementptr inbounds nuw %struct.VmFrame, ptr %2313, i32 0, i32 0
  %2314 = load ptr, ptr %pParent3737, align 8
  store ptr %2314, ptr %pFrame3141, align 8
  %2315 = load i32, ptr %is_callback.addr, align 4
  %tobool3738 = icmp ne i32 %2315, 0
  br i1 %tobool3738, label %if.else3753, label %land.lhs.true3739

land.lhs.true3739:                                ; preds = %if.then3736
  %2316 = load ptr, ptr %pFrame3141, align 8
  %pParent3740 = getelementptr inbounds nuw %struct.VmFrame, ptr %2316, i32 0, i32 0
  %2317 = load ptr, ptr %pParent3740, align 8
  %tobool3741 = icmp ne ptr %2317, null
  br i1 %tobool3741, label %land.lhs.true3742, label %if.else3753

land.lhs.true3742:                                ; preds = %land.lhs.true3739
  %2318 = load ptr, ptr %pFrame3141, align 8
  %iFlags3743 = getelementptr inbounds nuw %struct.VmFrame, ptr %2318, i32 0, i32 8
  %2319 = load i32, ptr %iFlags3743, align 8
  %and3744 = and i32 %2319, 1
  %tobool3745 = icmp ne i32 %and3744, 0
  br i1 %tobool3745, label %land.lhs.true3746, label %if.else3753

land.lhs.true3746:                                ; preds = %land.lhs.true3742
  %2320 = load ptr, ptr %pFrame3141, align 8
  %iExceptionJump3747 = getelementptr inbounds nuw %struct.VmFrame, ptr %2320, i32 0, i32 9
  %2321 = load i32, ptr %iExceptionJump3747, align 4
  %cmp3748 = icmp ugt i32 %2321, 0
  br i1 %cmp3748, label %if.then3750, label %if.else3753

if.then3750:                                      ; preds = %land.lhs.true3746
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef 1)
  %2322 = load ptr, ptr %pFrame3141, align 8
  %iExceptionJump3751 = getelementptr inbounds nuw %struct.VmFrame, ptr %2322, i32 0, i32 9
  %2323 = load i32, ptr %iExceptionJump3751, align 4
  %sub3752 = sub i32 %2323, 1
  store i32 %sub3752, ptr %pc, align 4
  store i32 0, ptr %rc, align 4
  br label %if.end3759

if.else3753:                                      ; preds = %land.lhs.true3746, %land.lhs.true3742, %land.lhs.true3739, %if.then3736
  %2324 = load ptr, ptr %pFrame3141, align 8
  %pParent3754 = getelementptr inbounds nuw %struct.VmFrame, ptr %2324, i32 0, i32 0
  %2325 = load ptr, ptr %pParent3754, align 8
  %tobool3755 = icmp ne ptr %2325, null
  br i1 %tobool3755, label %if.then3756, label %if.else3757

if.then3756:                                      ; preds = %if.else3753
  store i32 -255, ptr %rc, align 4
  br label %if.end3758

if.else3757:                                      ; preds = %if.else3753
  store i32 0, ptr %rc, align 4
  br label %if.end3758

if.end3758:                                       ; preds = %if.else3757, %if.then3756
  br label %if.end3759

if.end3759:                                       ; preds = %if.end3758, %if.then3750
  br label %if.end3760

if.end3760:                                       ; preds = %if.end3759, %lor.lhs.false3733, %if.end3726
  %2326 = load ptr, ptr %pVm.addr, align 8
  %sAllocator3761 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2326, i32 0, i32 0
  %2327 = load ptr, ptr %pFrameStack, align 8
  %call3762 = call i32 @SyMemBackendFree(ptr noundef %sAllocator3761, ptr noundef %2327)
  %2328 = load ptr, ptr %pVm.addr, align 8
  call void @VmLeaveFrame(ptr noundef %2328)
  %2329 = load i32, ptr %rc, align 4
  %cmp3763 = icmp eq i32 %2329, -10
  br i1 %cmp3763, label %if.then3765, label %if.else3766

if.then3765:                                      ; preds = %if.end3760
  br label %Abort

if.else3766:                                      ; preds = %if.end3760
  %2330 = load i32, ptr %rc, align 4
  %cmp3767 = icmp eq i32 %2330, -255
  br i1 %cmp3767, label %if.then3769, label %if.end3770

if.then3769:                                      ; preds = %if.else3766
  br label %Exception

if.end3770:                                       ; preds = %if.else3766
  br label %if.end3771

if.end3771:                                       ; preds = %if.end3770
  br label %if.end3815

if.else3772:                                      ; preds = %if.end3127
  %2331 = load ptr, ptr %pVm.addr, align 8
  %hHostFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %2331, i32 0, i32 12
  %zString3774 = getelementptr inbounds nuw %struct.SyString, ptr %sName3076, i32 0, i32 0
  %2332 = load ptr, ptr %zString3774, align 8
  %nByte3775 = getelementptr inbounds nuw %struct.SyString, ptr %sName3076, i32 0, i32 1
  %2333 = load i32, ptr %nByte3775, align 8
  %call3776 = call ptr @SyHashGet(ptr noundef %hHostFunction, ptr noundef %2332, i32 noundef %2333)
  store ptr %call3776, ptr %pEntry3075, align 8
  %2334 = load ptr, ptr %pEntry3075, align 8
  %cmp3777 = icmp eq ptr %2334, null
  br i1 %cmp3777, label %if.then3779, label %if.end3788

if.then3779:                                      ; preds = %if.else3772
  %2335 = load ptr, ptr %pVm.addr, align 8
  %call3780 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %2335, i32 noundef 2, ptr noundef @.str.110, ptr noundef %sName3076)
  %2336 = load ptr, ptr %pInstr, align 8
  %iP13781 = getelementptr inbounds nuw %struct.VmInstr, ptr %2336, i32 0, i32 1
  %2337 = load i32, ptr %iP13781, align 4
  %cmp3782 = icmp sgt i32 %2337, 0
  br i1 %cmp3782, label %if.then3784, label %if.end3786

if.then3784:                                      ; preds = %if.then3779
  %2338 = load ptr, ptr %pInstr, align 8
  %iP13785 = getelementptr inbounds nuw %struct.VmInstr, ptr %2338, i32 0, i32 1
  %2339 = load i32, ptr %iP13785, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %2339)
  br label %if.end3786

if.end3786:                                       ; preds = %if.then3784, %if.then3779
  %2340 = load ptr, ptr %pTos, align 8
  %call3787 = call i32 @PH7_MemObjRelease(ptr noundef %2340)
  br label %sw.epilog3867

if.end3788:                                       ; preds = %if.else3772
  %2341 = load ptr, ptr %pEntry3075, align 8
  %pUserData3789 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %2341, i32 0, i32 2
  %2342 = load ptr, ptr %pUserData3789, align 8
  store ptr %2342, ptr %pFunc3773, align 8
  %call3790 = call i32 @SySetReset(ptr noundef %aArg)
  br label %while.cond3791

while.cond3791:                                   ; preds = %while.body3794, %if.end3788
  %2343 = load ptr, ptr %pArg3070, align 8
  %2344 = load ptr, ptr %pTos, align 8
  %cmp3792 = icmp ult ptr %2343, %2344
  br i1 %cmp3792, label %while.body3794, label %while.end3797

while.body3794:                                   ; preds = %while.cond3791
  %call3795 = call i32 @SySetPut(ptr noundef %aArg, ptr noundef %pArg3070)
  %2345 = load ptr, ptr %pArg3070, align 8
  %incdec.ptr3796 = getelementptr inbounds nuw %struct.ph7_value, ptr %2345, i32 1
  store ptr %incdec.ptr3796, ptr %pArg3070, align 8
  br label %while.cond3791, !llvm.loop !29

while.end3797:                                    ; preds = %while.cond3791
  %2346 = load ptr, ptr %pVm.addr, align 8
  %call3798 = call i32 @PH7_MemObjInit(ptr noundef %2346, ptr noundef %sRet)
  %2347 = load ptr, ptr %pVm.addr, align 8
  %2348 = load ptr, ptr %pFunc3773, align 8
  %call3799 = call i32 @VmInitCallContext(ptr noundef %sCtx, ptr noundef %2347, ptr noundef %2348, ptr noundef %sRet, i32 noundef 0)
  %2349 = load ptr, ptr %pFunc3773, align 8
  %xFunc = getelementptr inbounds nuw %struct.ph7_user_func, ptr %2349, i32 0, i32 2
  %2350 = load ptr, ptr %xFunc, align 8
  %nUsed3800 = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 2
  %2351 = load i32, ptr %nUsed3800, align 8
  %pBase3801 = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 1
  %2352 = load ptr, ptr %pBase3801, align 8
  %call3802 = call i32 %2350(ptr noundef %sCtx, i32 noundef %2351, ptr noundef %2352)
  store i32 %call3802, ptr %rc, align 4
  call void @VmReleaseCallContext(ptr noundef %sCtx)
  %2353 = load i32, ptr %rc, align 4
  %cmp3803 = icmp eq i32 %2353, -10
  br i1 %cmp3803, label %if.then3805, label %if.end3806

if.then3805:                                      ; preds = %while.end3797
  br label %Abort

if.end3806:                                       ; preds = %while.end3797
  %2354 = load ptr, ptr %pInstr, align 8
  %iP13807 = getelementptr inbounds nuw %struct.VmInstr, ptr %2354, i32 0, i32 1
  %2355 = load i32, ptr %iP13807, align 4
  %cmp3808 = icmp sgt i32 %2355, 0
  br i1 %cmp3808, label %if.then3810, label %if.end3812

if.then3810:                                      ; preds = %if.end3806
  %2356 = load ptr, ptr %pInstr, align 8
  %iP13811 = getelementptr inbounds nuw %struct.VmInstr, ptr %2356, i32 0, i32 1
  %2357 = load i32, ptr %iP13811, align 4
  call void @VmPopOperand(ptr noundef %pTos, i32 noundef %2357)
  br label %if.end3812

if.end3812:                                       ; preds = %if.then3810, %if.end3806
  %2358 = load ptr, ptr %pTos, align 8
  %call3813 = call i32 @PH7_MemObjStore(ptr noundef %sRet, ptr noundef %2358)
  %call3814 = call i32 @PH7_MemObjRelease(ptr noundef %sRet)
  br label %if.end3815

if.end3815:                                       ; preds = %if.end3812, %if.end3771
  br label %sw.epilog3867

sw.bb3816:                                        ; preds = %for.cond
  %2359 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer3818 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2359, i32 0, i32 43
  store ptr %sVmConsumer3818, ptr %pCons3817, align 8
  %2360 = load ptr, ptr %pTos, align 8
  store ptr %2360, ptr %pOut, align 8
  %2361 = load ptr, ptr %pTos, align 8
  %2362 = load ptr, ptr %pInstr, align 8
  %iP13820 = getelementptr inbounds nuw %struct.VmInstr, ptr %2362, i32 0, i32 1
  %2363 = load i32, ptr %iP13820, align 4
  %sub3821 = sub nsw i32 0, %2363
  %add3822 = add nsw i32 %sub3821, 1
  %idxprom3823 = sext i32 %add3822 to i64
  %arrayidx3824 = getelementptr inbounds %struct.ph7_value, ptr %2361, i64 %idxprom3823
  store ptr %arrayidx3824, ptr %pOut, align 8
  %2364 = load ptr, ptr %pOut, align 8
  store ptr %2364, ptr %pCur3819, align 8
  br label %while.cond3825

while.cond3825:                                   ; preds = %if.end3863, %sw.bb3816
  %2365 = load ptr, ptr %pOut, align 8
  %2366 = load ptr, ptr %pTos, align 8
  %cmp3826 = icmp ule ptr %2365, %2366
  br i1 %cmp3826, label %while.body3828, label %while.end3865

while.body3828:                                   ; preds = %while.cond3825
  %2367 = load ptr, ptr %pOut, align 8
  %iFlags3829 = getelementptr inbounds nuw %struct.ph7_value, ptr %2367, i32 0, i32 2
  %2368 = load i32, ptr %iFlags3829, align 8
  %and3830 = and i32 %2368, 1
  %cmp3831 = icmp eq i32 %and3830, 0
  br i1 %cmp3831, label %if.then3833, label %if.end3835

if.then3833:                                      ; preds = %while.body3828
  %2369 = load ptr, ptr %pOut, align 8
  %call3834 = call i32 @PH7_MemObjToString(ptr noundef %2369)
  br label %if.end3835

if.end3835:                                       ; preds = %if.then3833, %while.body3828
  %2370 = load ptr, ptr %pOut, align 8
  %sBlob3836 = getelementptr inbounds nuw %struct.ph7_value, ptr %2370, i32 0, i32 4
  %nByte3837 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3836, i32 0, i32 2
  %2371 = load i32, ptr %nByte3837, align 8
  %cmp3838 = icmp ugt i32 %2371, 0
  br i1 %cmp3838, label %if.then3840, label %if.end3863

if.then3840:                                      ; preds = %if.end3835
  %2372 = load ptr, ptr %pCons3817, align 8
  %xConsumer3841 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %2372, i32 0, i32 0
  %2373 = load ptr, ptr %xConsumer3841, align 8
  %2374 = load ptr, ptr %pOut, align 8
  %sBlob3842 = getelementptr inbounds nuw %struct.ph7_value, ptr %2374, i32 0, i32 4
  %pBlob3843 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3842, i32 0, i32 1
  %2375 = load ptr, ptr %pBlob3843, align 8
  %2376 = load ptr, ptr %pOut, align 8
  %sBlob3844 = getelementptr inbounds nuw %struct.ph7_value, ptr %2376, i32 0, i32 4
  %nByte3845 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3844, i32 0, i32 2
  %2377 = load i32, ptr %nByte3845, align 8
  %2378 = load ptr, ptr %pCons3817, align 8
  %pUserData3846 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %2378, i32 0, i32 1
  %2379 = load ptr, ptr %pUserData3846, align 8
  %call3847 = call i32 %2373(ptr noundef %2375, i32 noundef %2377, ptr noundef %2379)
  store i32 %call3847, ptr %rc, align 4
  %2380 = load ptr, ptr %pCons3817, align 8
  %xConsumer3848 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %2380, i32 0, i32 0
  %2381 = load ptr, ptr %xConsumer3848, align 8
  %cmp3849 = icmp ne ptr %2381, @VmObConsumer
  br i1 %cmp3849, label %if.then3851, label %if.end3856

if.then3851:                                      ; preds = %if.then3840
  %2382 = load ptr, ptr %pOut, align 8
  %sBlob3852 = getelementptr inbounds nuw %struct.ph7_value, ptr %2382, i32 0, i32 4
  %nByte3853 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob3852, i32 0, i32 2
  %2383 = load i32, ptr %nByte3853, align 8
  %2384 = load ptr, ptr %pVm.addr, align 8
  %nOutputLen3854 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2384, i32 0, i32 42
  %2385 = load i32, ptr %nOutputLen3854, align 8
  %add3855 = add i32 %2385, %2383
  store i32 %add3855, ptr %nOutputLen3854, align 8
  br label %if.end3856

if.end3856:                                       ; preds = %if.then3851, %if.then3840
  %2386 = load ptr, ptr %pOut, align 8
  %sBlob3857 = getelementptr inbounds nuw %struct.ph7_value, ptr %2386, i32 0, i32 4
  %call3858 = call i32 @SyBlobRelease(ptr noundef %sBlob3857)
  %2387 = load i32, ptr %rc, align 4
  %cmp3859 = icmp eq i32 %2387, -10
  br i1 %cmp3859, label %if.then3861, label %if.end3862

if.then3861:                                      ; preds = %if.end3856
  br label %Abort

if.end3862:                                       ; preds = %if.end3856
  br label %if.end3863

if.end3863:                                       ; preds = %if.end3862, %if.end3835
  %2388 = load ptr, ptr %pOut, align 8
  %incdec.ptr3864 = getelementptr inbounds nuw %struct.ph7_value, ptr %2388, i32 1
  store ptr %incdec.ptr3864, ptr %pOut, align 8
  br label %while.cond3825, !llvm.loop !30

while.end3865:                                    ; preds = %while.cond3825
  %2389 = load ptr, ptr %pCur3819, align 8
  %arrayidx3866 = getelementptr inbounds %struct.ph7_value, ptr %2389, i64 -1
  store ptr %arrayidx3866, ptr %pTos, align 8
  br label %sw.epilog3867

sw.epilog3867:                                    ; preds = %while.end3865, %if.end3815, %if.end3786, %if.end3658, %if.end3294, %if.end3269, %if.end3252, %if.end3126, %if.end3068, %if.end3027, %if.then3010, %if.end3004, %if.end2931, %if.end2872, %if.end2565, %if.end2354, %if.end2222, %if.end2170, %while.end2147, %if.end2121, %if.end2084, %if.end1960, %if.end1948, %if.end1876, %if.end1844, %if.end1812, %if.end1789, %if.end1766, %if.end1728, %if.end1689, %if.end1642, %while.end1598, %if.end1550, %if.end1490, %if.end1459, %sw.epilog, %if.end1372, %if.end1321, %if.end1287, %if.end1232, %if.end1204, %if.end1140, %if.end1091, %sw.bb1068, %if.end1067, %if.end997, %if.end985, %if.end977, %if.end961, %if.end944, %if.end883, %if.end822, %if.end788, %if.end710, %if.end677, %if.end635, %if.end614, %if.end535, %if.end470, %if.end424, %if.end401, %if.then359, %if.end346, %if.end298, %if.end294, %if.end246, %if.then228, %if.end199, %sw.bb164, %if.end163, %if.end155, %sw.bb147, %sw.bb145, %if.end144, %if.end136, %if.end124, %if.end113, %if.end105, %sw.bb94, %if.end93, %if.end75, %sw.bb57, %for.cond
  %2390 = load i32, ptr %pc, align 4
  %inc3868 = add nsw i32 %2390, 1
  store i32 %inc3868, ptr %pc, align 4
  br label %for.cond

Done:                                             ; preds = %if.end16
  %call3869 = call i32 @SySetRelease(ptr noundef %aArg)
  store i32 0, ptr %retval, align 4
  br label %return

Abort:                                            ; preds = %if.then3861, %if.then3805, %if.then3765, %if.then3608, %if.then3389, %if.then2220, %if.then2213, %if.then2207, %if.then2130, %if.then2020, %if.then798, %if.then669, %if.then551, %if.then306, %if.else296, %if.end56
  %call3870 = call i32 @SySetRelease(ptr noundef %aArg)
  br label %while.cond3871

while.cond3871:                                   ; preds = %while.body3874, %Abort
  %2391 = load ptr, ptr %pTos, align 8
  %2392 = load ptr, ptr %pStack.addr, align 8
  %cmp3872 = icmp uge ptr %2391, %2392
  br i1 %cmp3872, label %while.body3874, label %while.end3877

while.body3874:                                   ; preds = %while.cond3871
  %2393 = load ptr, ptr %pTos, align 8
  %call3875 = call i32 @PH7_MemObjRelease(ptr noundef %2393)
  %2394 = load ptr, ptr %pTos, align 8
  %incdec.ptr3876 = getelementptr inbounds %struct.ph7_value, ptr %2394, i32 -1
  store ptr %incdec.ptr3876, ptr %pTos, align 8
  br label %while.cond3871, !llvm.loop !31

while.end3877:                                    ; preds = %while.cond3871
  store i32 -10, ptr %retval, align 4
  br label %return

Exception:                                        ; preds = %if.then3769
  %call3878 = call i32 @SySetRelease(ptr noundef %aArg)
  br label %while.cond3879

while.cond3879:                                   ; preds = %while.body3882, %Exception
  %2395 = load ptr, ptr %pTos, align 8
  %2396 = load ptr, ptr %pStack.addr, align 8
  %cmp3880 = icmp uge ptr %2395, %2396
  br i1 %cmp3880, label %while.body3882, label %while.end3885

while.body3882:                                   ; preds = %while.cond3879
  %2397 = load ptr, ptr %pTos, align 8
  %call3883 = call i32 @PH7_MemObjRelease(ptr noundef %2397)
  %2398 = load ptr, ptr %pTos, align 8
  %incdec.ptr3884 = getelementptr inbounds %struct.ph7_value, ptr %2398, i32 -1
  store ptr %incdec.ptr3884, ptr %pTos, align 8
  br label %while.cond3879, !llvm.loop !32

while.end3885:                                    ; preds = %while.cond3879
  store i32 -255, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end3885, %while.end3877, %Done
  %2399 = load i32, ptr %retval, align 4
  ret i32 %2399
}

; Function Attrs: nounwind uwtable
declare hidden void @VmPopOperand(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmObConsumer(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToNumeric(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToHashmap(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToObject(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmExtractClass(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmInstanceOf(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractMemObj(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmErrorFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsertByRef(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeValue(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBufferFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstallUserFunction(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjAdd(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHashmapRefInsert(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjInstall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashLastEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmFrameLink(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @VmLeaveFrame(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmUncaughtException(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmThrowException(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_HashmapGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeKey(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmClassMemberAccess(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_ClassInstanceUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassInstanceExtractAttrValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractMethod(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInstanceCallMagicMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractAttribute(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewClassInstance(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallClassMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_CloneClassInstance(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmOverload(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmReserveMemObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_MemObjCastMethod(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmInitCallContext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @VmReleaseCallContext(ptr noundef) #0

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
!32 = distinct !{!32, !7}
