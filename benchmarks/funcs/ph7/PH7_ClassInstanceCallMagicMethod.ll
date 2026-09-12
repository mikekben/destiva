; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractMethod(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ClassInstanceCallMagicMethod(ptr noundef %pVm, ptr noundef %pClass, ptr noundef %pThis, ptr noundef %zMethod, i32 noundef %nByte, ptr noundef %pAttrName) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pClass.addr = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %zMethod.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pAttrName.addr = alloca ptr, align 8
  %apArg = alloca [2 x ptr], align 16
  %pMeth = alloca ptr, align 8
  %sAttr = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  %nArg = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pClass, ptr %pClass.addr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  store ptr %zMethod, ptr %zMethod.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %pAttrName, ptr %pAttrName.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %apArg, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %pClass.addr, align 8
  %1 = load ptr, ptr %zMethod.addr, align 8
  %2 = load i32, ptr %nByte.addr, align 4
  %call = call ptr @PH7_ClassExtractMethod(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  store ptr %call, ptr %pMeth, align 8
  %3 = load ptr, ptr %pMeth, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %nArg, align 4
  %4 = load ptr, ptr %pAttrName.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %pVm.addr, align 8
  %6 = load ptr, ptr %pAttrName.addr, align 8
  %call2 = call i32 @PH7_MemObjInitFromString(ptr noundef %5, ptr noundef %sAttr, ptr noundef %6)
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sAttr, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  store ptr %sAttr, ptr %arrayidx, align 16
  store i32 1, ptr %nArg, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end
  %7 = load ptr, ptr %pVm.addr, align 8
  %8 = load ptr, ptr %pThis.addr, align 8
  %9 = load ptr, ptr %pMeth, align 8
  %10 = load i32, ptr %nArg, align 4
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  %call4 = call i32 @PH7_VmCallClassMethod(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef null, i32 noundef %10, ptr noundef %arraydecay)
  store i32 %call4, ptr %rc, align 4
  %11 = load ptr, ptr %pAttrName.addr, align 8
  %tobool5 = icmp ne ptr %11, null
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %call7 = call i32 @PH7_MemObjRelease(ptr noundef %sAttr)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end3
  %12 = load i32, ptr %rc, align 4
  store i32 %12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallClassMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

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
