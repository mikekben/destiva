; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyString = type { ptr, i32 }

@PH7_HashmapCreateSuper.azSuper = external hidden global [10 x ptr], align 16
@.str.630 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.631 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.632 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_vm_config(ptr noundef, i32 noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewHashmap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromArray(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_release_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveMemObj(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_HashmapCreateSuper(ptr noundef %pVm) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %pSuper = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %call = call ptr @PH7_NewHashmap(ptr noundef %0, ptr noundef null, ptr noundef null)
  store ptr %call, ptr %pMap, align 8
  %1 = load ptr, ptr %pMap, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pMap, align 8
  %3 = load ptr, ptr %pVm.addr, align 8
  %pGlobal = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 51
  store ptr %2, ptr %pGlobal, align 8
  %4 = load ptr, ptr %pVm.addr, align 8
  %call1 = call ptr @PH7_ReserveMemObj(ptr noundef %4)
  store ptr %call1, ptr %pObj, align 8
  %5 = load ptr, ptr %pObj, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %pVm.addr, align 8
  %7 = load ptr, ptr %pObj, align 8
  %8 = load ptr, ptr %pMap, align 8
  %call5 = call i32 @PH7_MemObjInitFromArray(ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %pObj, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %nIdx, align 8
  %11 = load ptr, ptr %pVm.addr, align 8
  %nGlobalIdx = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 52
  store i32 %10, ptr %nGlobalIdx, align 8
  %12 = load ptr, ptr %pVm.addr, align 8
  %hSuper = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %pVm.addr, align 8
  %nGlobalIdx6 = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 52
  %14 = load i32, ptr %nGlobalIdx6, align 8
  %conv = zext i32 %14 to i64
  %15 = inttoptr i64 %conv to ptr
  %call7 = call i32 @SyHashInsert(ptr noundef %hSuper, ptr noundef @.str.630, i32 noundef 7, ptr noundef %15)
  store i32 %call7, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %16, 0
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end4
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %18 = load i32, ptr %n, align 4
  %conv12 = zext i32 %18 to i64
  %cmp13 = icmp ult i64 %conv12, 10
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pVm.addr, align 8
  %call15 = call ptr @ph7_new_array(ptr noundef %19)
  store ptr %call15, ptr %pSuper, align 8
  %20 = load ptr, ptr %pSuper, align 8
  %cmp16 = icmp eq ptr %20, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %for.body
  %21 = load ptr, ptr %pVm.addr, align 8
  %22 = load i32, ptr %n, align 4
  %idxprom = zext i32 %22 to i64
  %arrayidx = getelementptr inbounds nuw [10 x ptr], ptr @PH7_HashmapCreateSuper.azSuper, i64 0, i64 %idxprom
  %23 = load ptr, ptr %arrayidx, align 8
  %24 = load ptr, ptr %pSuper, align 8
  %call20 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %21, i32 noundef 7, ptr noundef %23, ptr noundef %24)
  store i32 %call20, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp21 = icmp ne i32 %25, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  %27 = load ptr, ptr %pVm.addr, align 8
  %28 = load ptr, ptr %pSuper, align 8
  %call25 = call i32 @ph7_release_value(ptr noundef %27, ptr noundef %28)
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %29 = load i32, ptr %n, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %pVm.addr, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %30, i32 0, i32 19
  %call26 = call ptr @SySetPeek(ptr noundef %aFiles)
  store ptr %call26, ptr %pFile, align 8
  %31 = load ptr, ptr %pVm.addr, align 8
  %32 = load ptr, ptr %pFile, align 8
  %tobool = icmp ne ptr %32, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %33 = load ptr, ptr %pFile, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %33, i32 0, i32 0
  %34 = load ptr, ptr %zString, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %34, %cond.true ], [ @.str.632, %cond.false ]
  %35 = load ptr, ptr %pFile, align 8
  %tobool27 = icmp ne ptr %35, null
  br i1 %tobool27, label %cond.true28, label %cond.false30

cond.true28:                                      ; preds = %cond.end
  %36 = load ptr, ptr %pFile, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %nByte, align 8
  %conv29 = zext i32 %37 to i64
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %cond.true28
  %cond32 = phi i64 [ %conv29, %cond.true28 ], [ 8, %cond.false30 ]
  %call33 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %31, i32 noundef 10, ptr noundef @.str.631, ptr noundef %cond, i64 noundef %cond32)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end31, %if.then23, %if.then18, %if.then10, %if.then3, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
