; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjInstall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapInsertByRef(ptr noundef %pMap, ptr noundef %pKey, i32 noundef %nRefIdx) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %nRefIdx.addr = alloca i32, align 4
  %pNode = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store i32 %nRefIdx, ptr %nRefIdx.addr, align 4
  store ptr null, ptr %pNode, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pKey.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %pKey.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %iFlags, align 8
  %and = and i32 %2, 449
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end32

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
  br i1 %cmp20, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end15
  %16 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pVm, align 8
  %18 = load ptr, ptr %pNode, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %nValIdx, align 8
  %20 = load ptr, ptr %pNode, align 8
  %call22 = call i32 @PH7_VmRefObjRemove(ptr noundef %17, i32 noundef %19, ptr noundef null, ptr noundef %20)
  %21 = load i32, ptr %nRefIdx.addr, align 4
  %22 = load ptr, ptr %pNode, align 8
  %nValIdx23 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %22, i32 0, i32 5
  store i32 %21, ptr %nValIdx23, align 8
  %23 = load ptr, ptr %pMap.addr, align 8
  %pVm24 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pVm24, align 8
  %25 = load i32, ptr %nRefIdx.addr, align 4
  %26 = load ptr, ptr %pNode, align 8
  %call25 = call i32 @PH7_VmRefObjInstall(ptr noundef %24, i32 noundef %25, ptr noundef null, ptr noundef %26, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end15
  %27 = load ptr, ptr %pMap.addr, align 8
  %28 = load ptr, ptr %pKey.addr, align 8
  %sBlob27 = getelementptr inbounds nuw %struct.ph7_value, ptr %28, i32 0, i32 4
  %pBlob28 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob27, i32 0, i32 1
  %29 = load ptr, ptr %pBlob28, align 8
  %30 = load ptr, ptr %pKey.addr, align 8
  %sBlob29 = getelementptr inbounds nuw %struct.ph7_value, ptr %30, i32 0, i32 4
  %nByte30 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob29, i32 0, i32 2
  %31 = load i32, ptr %nByte30, align 8
  %32 = load i32, ptr %nRefIdx.addr, align 4
  %call31 = call i32 @HashmapInsertBlobKey(ptr noundef %27, ptr noundef %29, i32 noundef %31, ptr noundef null, i32 noundef %32, i32 noundef 1)
  store i32 %call31, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  store i32 %33, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %land.lhs.true, %entry
  br label %IntKey

IntKey:                                           ; preds = %if.end32, %if.end14
  %34 = load ptr, ptr %pKey.addr, align 8
  %tobool33 = icmp ne ptr %34, null
  br i1 %tobool33, label %if.then34, label %if.else

if.then34:                                        ; preds = %IntKey
  %35 = load ptr, ptr %pKey.addr, align 8
  %iFlags35 = getelementptr inbounds nuw %struct.ph7_value, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %iFlags35, align 8
  %and36 = and i32 %36, 2
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then34
  %37 = load ptr, ptr %pKey.addr, align 8
  %call39 = call i32 @PH7_MemObjToInteger(ptr noundef %37)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then34
  %38 = load ptr, ptr %pMap.addr, align 8
  %39 = load ptr, ptr %pKey.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %39, i32 0, i32 1
  %40 = load i64, ptr %x, align 8
  %call41 = call i32 @HashmapLookupIntKey(ptr noundef %38, i64 noundef %40, ptr noundef %pNode)
  %cmp42 = icmp eq i32 0, %call41
  br i1 %cmp42, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.end40
  %41 = load ptr, ptr %pMap.addr, align 8
  %pVm44 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %pVm44, align 8
  %43 = load ptr, ptr %pNode, align 8
  %nValIdx45 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %nValIdx45, align 8
  %45 = load ptr, ptr %pNode, align 8
  %call46 = call i32 @PH7_VmRefObjRemove(ptr noundef %42, i32 noundef %44, ptr noundef null, ptr noundef %45)
  %46 = load i32, ptr %nRefIdx.addr, align 4
  %47 = load ptr, ptr %pNode, align 8
  %nValIdx47 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %47, i32 0, i32 5
  store i32 %46, ptr %nValIdx47, align 8
  %48 = load ptr, ptr %pMap.addr, align 8
  %pVm48 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %pVm48, align 8
  %50 = load i32, ptr %nRefIdx.addr, align 4
  %51 = load ptr, ptr %pNode, align 8
  %call49 = call i32 @PH7_VmRefObjInstall(ptr noundef %49, i32 noundef %50, ptr noundef null, ptr noundef %51, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end50:                                         ; preds = %if.end40
  %52 = load ptr, ptr %pMap.addr, align 8
  %53 = load ptr, ptr %pKey.addr, align 8
  %x51 = getelementptr inbounds nuw %struct.ph7_value, ptr %53, i32 0, i32 1
  %54 = load i64, ptr %x51, align 8
  %55 = load i32, ptr %nRefIdx.addr, align 4
  %call52 = call i32 @HashmapInsertIntKey(ptr noundef %52, i64 noundef %54, ptr noundef null, i32 noundef %55, i32 noundef 1)
  store i32 %call52, ptr %rc, align 4
  %56 = load i32, ptr %rc, align 4
  %cmp53 = icmp eq i32 %56, 0
  br i1 %cmp53, label %if.then54, label %if.end65

if.then54:                                        ; preds = %if.end50
  %57 = load ptr, ptr %pKey.addr, align 8
  %x55 = getelementptr inbounds nuw %struct.ph7_value, ptr %57, i32 0, i32 1
  %58 = load i64, ptr %x55, align 8
  %59 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %59, i32 0, i32 9
  %60 = load i64, ptr %iNextIdx, align 8
  %cmp56 = icmp sge i64 %58, %60
  br i1 %cmp56, label %if.then57, label %if.end64

if.then57:                                        ; preds = %if.then54
  %61 = load ptr, ptr %pKey.addr, align 8
  %x58 = getelementptr inbounds nuw %struct.ph7_value, ptr %61, i32 0, i32 1
  %62 = load i64, ptr %x58, align 8
  %add = add nsw i64 %62, 1
  %63 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx59 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %63, i32 0, i32 9
  store i64 %add, ptr %iNextIdx59, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then57
  %64 = load ptr, ptr %pMap.addr, align 8
  %65 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx60 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %65, i32 0, i32 9
  %66 = load i64, ptr %iNextIdx60, align 8
  %call61 = call i32 @HashmapLookupIntKey(ptr noundef %64, i64 noundef %66, ptr noundef null)
  %cmp62 = icmp eq i32 0, %call61
  br i1 %cmp62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %67 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx63 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %67, i32 0, i32 9
  %68 = load i64, ptr %iNextIdx63, align 8
  %inc = add nsw i64 %68, 1
  store i64 %inc, ptr %iNextIdx63, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end64

if.end64:                                         ; preds = %while.end, %if.then54
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end50
  br label %if.end73

if.else:                                          ; preds = %IntKey
  %69 = load ptr, ptr %pMap.addr, align 8
  %70 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx66 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %70, i32 0, i32 9
  %71 = load i64, ptr %iNextIdx66, align 8
  %72 = load i32, ptr %nRefIdx.addr, align 4
  %call67 = call i32 @HashmapInsertIntKey(ptr noundef %69, i64 noundef %71, ptr noundef null, i32 noundef %72, i32 noundef 1)
  store i32 %call67, ptr %rc, align 4
  %73 = load i32, ptr %rc, align 4
  %cmp68 = icmp eq i32 %73, 0
  br i1 %cmp68, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.else
  %74 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx70 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %74, i32 0, i32 9
  %75 = load i64, ptr %iNextIdx70, align 8
  %inc71 = add nsw i64 %75, 1
  store i64 %inc71, ptr %iNextIdx70, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.else
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end65
  %76 = load i32, ptr %rc, align 4
  store i32 %76, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.then43, %if.end26, %if.then21
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapIsIntKey(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjRemove(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupIntKey(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertIntKey(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #0

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
