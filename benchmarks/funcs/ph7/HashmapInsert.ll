; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

@.str.118 = external hidden unnamed_addr constant [53 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapIsIntKey(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupIntKey(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertIntKey(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToNull(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapInsert(ptr noundef %pMap, ptr noundef %pKey, ptr noundef %pVal) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %pVal.addr = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pElem = alloca ptr, align 8
  %pElem55 = alloca ptr, align 8
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pVal, ptr %pVal.addr, align 8
  store ptr null, ptr %pNode, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pKey.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pKey.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %iFlags, align 8
  %and = and i32 %2, 449
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end43

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %pKey.addr, align 8
  %iFlags2 = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 2
  %4 = load i32, ptr %iFlags2, align 8
  %and3 = and i32 %4, 1
  %cmp = icmp eq i32 %and3, 0
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %pKey.addr, align 8
  %call = call i32 @PH7_MemObjToString(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %6 = load ptr, ptr %pKey.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %7 = load i32, ptr %nByte, align 8
  %cmp5 = icmp ult i32 %7, 1
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %pKey.addr, align 8
  %sBlob6 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 4
  %call7 = call i32 @HashmapIsIntKey(ptr noundef %sBlob6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load ptr, ptr %pKey.addr, align 8
  %sBlob10 = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 4
  %nByte11 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob10, i32 0, i32 2
  %10 = load i32, ptr %nByte11, align 8
  %cmp12 = icmp ult i32 %10, 1
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then9
  store ptr null, ptr %pKey.addr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then9
  br label %IntKey

if.end15:                                         ; preds = %lor.lhs.false
  %11 = load ptr, ptr %pMap.addr, align 8
  %12 = load ptr, ptr %pKey.addr, align 8
  %sBlob16 = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob16, i32 0, i32 1
  %13 = load ptr, ptr %pBlob, align 8
  %14 = load ptr, ptr %pKey.addr, align 8
  %sBlob17 = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 4
  %nByte18 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob17, i32 0, i32 2
  %15 = load i32, ptr %nByte18, align 8
  %call19 = call i32 @HashmapLookupBlobKey(ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %pNode)
  %cmp20 = icmp eq i32 0, %call19
  br i1 %cmp20, label %if.then21, label %if.end31

if.then21:                                        ; preds = %if.end15
  %16 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pVm, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %pNode, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %nValIdx, align 8
  %call22 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %19)
  store ptr %call22, ptr %pElem, align 8
  %20 = load ptr, ptr %pElem, align 8
  %tobool23 = icmp ne ptr %20, null
  br i1 %tobool23, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.then21
  %21 = load ptr, ptr %pVal.addr, align 8
  %tobool25 = icmp ne ptr %21, null
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then24
  %22 = load ptr, ptr %pVal.addr, align 8
  %23 = load ptr, ptr %pElem, align 8
  %call27 = call i32 @PH7_MemObjStore(ptr noundef %22, ptr noundef %23)
  br label %if.end29

if.else:                                          ; preds = %if.then24
  %24 = load ptr, ptr %pElem, align 8
  %call28 = call i32 @PH7_MemObjToNull(ptr noundef %24)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then21
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end15
  %25 = load ptr, ptr %pMap.addr, align 8
  %26 = load ptr, ptr %pMap.addr, align 8
  %pVm32 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pVm32, align 8
  %pGlobal = getelementptr inbounds nuw %struct.ph7_vm, ptr %27, i32 0, i32 51
  %28 = load ptr, ptr %pGlobal, align 8
  %cmp33 = icmp eq ptr %25, %28
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end31
  %29 = load ptr, ptr %pMap.addr, align 8
  %pVm35 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pVm35, align 8
  %call36 = call i32 @PH7_VmThrowError(ptr noundef %30, ptr noundef null, i32 noundef 3, ptr noundef @.str.118)
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end31
  %31 = load ptr, ptr %pMap.addr, align 8
  %32 = load ptr, ptr %pKey.addr, align 8
  %sBlob38 = getelementptr inbounds nuw %struct.ph7_value, ptr %32, i32 0, i32 4
  %pBlob39 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob38, i32 0, i32 1
  %33 = load ptr, ptr %pBlob39, align 8
  %34 = load ptr, ptr %pKey.addr, align 8
  %sBlob40 = getelementptr inbounds nuw %struct.ph7_value, ptr %34, i32 0, i32 4
  %nByte41 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob40, i32 0, i32 2
  %35 = load i32, ptr %nByte41, align 8
  %36 = load ptr, ptr %pVal.addr, align 8
  %call42 = call i32 @HashmapInsertBlobKey(ptr noundef %31, ptr noundef %33, i32 noundef %35, ptr noundef %36, i32 noundef 0, i32 noundef 0)
  store i32 %call42, ptr %rc, align 4
  %37 = load i32, ptr %rc, align 4
  store i32 %37, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %land.lhs.true, %entry
  br label %IntKey

IntKey:                                           ; preds = %if.end43, %if.end14
  %38 = load ptr, ptr %pKey.addr, align 8
  %tobool44 = icmp ne ptr %38, null
  br i1 %tobool44, label %if.then45, label %if.else92

if.then45:                                        ; preds = %IntKey
  %39 = load ptr, ptr %pKey.addr, align 8
  %iFlags46 = getelementptr inbounds nuw %struct.ph7_value, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %iFlags46, align 8
  %and47 = and i32 %40, 2
  %cmp48 = icmp eq i32 %and47, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.then45
  %41 = load ptr, ptr %pKey.addr, align 8
  %call50 = call i32 @PH7_MemObjToInteger(ptr noundef %41)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.then45
  %42 = load ptr, ptr %pMap.addr, align 8
  %43 = load ptr, ptr %pKey.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %43, i32 0, i32 1
  %44 = load i64, ptr %x, align 8
  %call52 = call i32 @HashmapLookupIntKey(ptr noundef %42, i64 noundef %44, ptr noundef %pNode)
  %cmp53 = icmp eq i32 0, %call52
  br i1 %cmp53, label %if.then54, label %if.end69

if.then54:                                        ; preds = %if.end51
  %45 = load ptr, ptr %pMap.addr, align 8
  %pVm56 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %pVm56, align 8
  %aMemObj57 = getelementptr inbounds nuw %struct.ph7_vm, ptr %46, i32 0, i32 6
  %47 = load ptr, ptr %pNode, align 8
  %nValIdx58 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %47, i32 0, i32 5
  %48 = load i32, ptr %nValIdx58, align 8
  %call59 = call ptr @SySetAt(ptr noundef %aMemObj57, i32 noundef %48)
  store ptr %call59, ptr %pElem55, align 8
  %49 = load ptr, ptr %pElem55, align 8
  %tobool60 = icmp ne ptr %49, null
  br i1 %tobool60, label %if.then61, label %if.end68

if.then61:                                        ; preds = %if.then54
  %50 = load ptr, ptr %pVal.addr, align 8
  %tobool62 = icmp ne ptr %50, null
  br i1 %tobool62, label %if.then63, label %if.else65

if.then63:                                        ; preds = %if.then61
  %51 = load ptr, ptr %pVal.addr, align 8
  %52 = load ptr, ptr %pElem55, align 8
  %call64 = call i32 @PH7_MemObjStore(ptr noundef %51, ptr noundef %52)
  br label %if.end67

if.else65:                                        ; preds = %if.then61
  %53 = load ptr, ptr %pElem55, align 8
  %call66 = call i32 @PH7_MemObjToNull(ptr noundef %53)
  br label %if.end67

if.end67:                                         ; preds = %if.else65, %if.then63
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then54
  store i32 0, ptr %retval, align 4
  br label %return

if.end69:                                         ; preds = %if.end51
  %54 = load ptr, ptr %pMap.addr, align 8
  %55 = load ptr, ptr %pMap.addr, align 8
  %pVm70 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %pVm70, align 8
  %pGlobal71 = getelementptr inbounds nuw %struct.ph7_vm, ptr %56, i32 0, i32 51
  %57 = load ptr, ptr %pGlobal71, align 8
  %cmp72 = icmp eq ptr %54, %57
  br i1 %cmp72, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end69
  %58 = load ptr, ptr %pMap.addr, align 8
  %pVm74 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %pVm74, align 8
  %call75 = call i32 @PH7_VmThrowError(ptr noundef %59, ptr noundef null, i32 noundef 3, ptr noundef @.str.118)
  store i32 0, ptr %retval, align 4
  br label %return

if.end76:                                         ; preds = %if.end69
  %60 = load ptr, ptr %pMap.addr, align 8
  %61 = load ptr, ptr %pKey.addr, align 8
  %x77 = getelementptr inbounds nuw %struct.ph7_value, ptr %61, i32 0, i32 1
  %62 = load i64, ptr %x77, align 8
  %63 = load ptr, ptr %pVal.addr, align 8
  %call78 = call i32 @HashmapInsertIntKey(ptr noundef %60, i64 noundef %62, ptr noundef %63, i32 noundef 0, i32 noundef 0)
  store i32 %call78, ptr %rc, align 4
  %64 = load i32, ptr %rc, align 4
  %cmp79 = icmp eq i32 %64, 0
  br i1 %cmp79, label %if.then80, label %if.end91

if.then80:                                        ; preds = %if.end76
  %65 = load ptr, ptr %pKey.addr, align 8
  %x81 = getelementptr inbounds nuw %struct.ph7_value, ptr %65, i32 0, i32 1
  %66 = load i64, ptr %x81, align 8
  %67 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %67, i32 0, i32 9
  %68 = load i64, ptr %iNextIdx, align 8
  %cmp82 = icmp sge i64 %66, %68
  br i1 %cmp82, label %if.then83, label %if.end90

if.then83:                                        ; preds = %if.then80
  %69 = load ptr, ptr %pKey.addr, align 8
  %x84 = getelementptr inbounds nuw %struct.ph7_value, ptr %69, i32 0, i32 1
  %70 = load i64, ptr %x84, align 8
  %add = add nsw i64 %70, 1
  %71 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx85 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %71, i32 0, i32 9
  store i64 %add, ptr %iNextIdx85, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then83
  %72 = load ptr, ptr %pMap.addr, align 8
  %73 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx86 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %73, i32 0, i32 9
  %74 = load i64, ptr %iNextIdx86, align 8
  %call87 = call i32 @HashmapLookupIntKey(ptr noundef %72, i64 noundef %74, ptr noundef null)
  %cmp88 = icmp eq i32 0, %call87
  br i1 %cmp88, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %75 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx89 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %75, i32 0, i32 9
  %76 = load i64, ptr %iNextIdx89, align 8
  %inc = add nsw i64 %76, 1
  store i64 %inc, ptr %iNextIdx89, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end90

if.end90:                                         ; preds = %while.end, %if.then80
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end76
  br label %if.end107

if.else92:                                        ; preds = %IntKey
  %77 = load ptr, ptr %pMap.addr, align 8
  %78 = load ptr, ptr %pMap.addr, align 8
  %pVm93 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %pVm93, align 8
  %pGlobal94 = getelementptr inbounds nuw %struct.ph7_vm, ptr %79, i32 0, i32 51
  %80 = load ptr, ptr %pGlobal94, align 8
  %cmp95 = icmp eq ptr %77, %80
  br i1 %cmp95, label %if.then96, label %if.end99

if.then96:                                        ; preds = %if.else92
  %81 = load ptr, ptr %pMap.addr, align 8
  %pVm97 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %pVm97, align 8
  %call98 = call i32 @PH7_VmThrowError(ptr noundef %82, ptr noundef null, i32 noundef 3, ptr noundef @.str.118)
  store i32 0, ptr %retval, align 4
  br label %return

if.end99:                                         ; preds = %if.else92
  %83 = load ptr, ptr %pMap.addr, align 8
  %84 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx100 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %84, i32 0, i32 9
  %85 = load i64, ptr %iNextIdx100, align 8
  %86 = load ptr, ptr %pVal.addr, align 8
  %call101 = call i32 @HashmapInsertIntKey(ptr noundef %83, i64 noundef %85, ptr noundef %86, i32 noundef 0, i32 noundef 0)
  store i32 %call101, ptr %rc, align 4
  %87 = load i32, ptr %rc, align 4
  %cmp102 = icmp eq i32 %87, 0
  br i1 %cmp102, label %if.then103, label %if.end106

if.then103:                                       ; preds = %if.end99
  %88 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx104 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %88, i32 0, i32 9
  %89 = load i64, ptr %iNextIdx104, align 8
  %inc105 = add nsw i64 %89, 1
  store i64 %inc105, ptr %iNextIdx104, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end99
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %if.end91
  %90 = load i32, ptr %rc, align 4
  store i32 %90, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end107, %if.then96, %if.then73, %if.end68, %if.end37, %if.then34, %if.end30
  %91 = load i32, ptr %retval, align 4
  ret i32 %91
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
