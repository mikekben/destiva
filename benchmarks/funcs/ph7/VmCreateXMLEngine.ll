; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_xml_engine = type { ptr, ptr, %struct.SyXMLParser, [10 x %struct.ph7_value], %struct.ph7_value, i32, %struct.SyBlob, i32, i32, i32, i32 }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_resource(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @VmCreateXMLEngine(ptr noundef %pCtx, i32 noundef %process_ns, i32 noundef %ns_sep) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %process_ns.addr = alloca i32, align 4
  %ns_sep.addr = alloca i32, align 4
  %pEngine = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %process_ns, ptr %process_ns.addr, align 4
  store i32 %ns_sep, ptr %ns_sep.addr, align 4
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 0
  %call = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef 1136)
  store ptr %call, ptr %pEngine, align 8
  %3 = load ptr, ptr %pEngine, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pEngine, align 8
  call void @SyZero(ptr noundef %4, i32 noundef 1136)
  %5 = load ptr, ptr %pVm, align 8
  %6 = load ptr, ptr %pEngine, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %6, i32 0, i32 0
  store ptr %5, ptr %pVm2, align 8
  %7 = load ptr, ptr %pEngine, align 8
  %pCtx3 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %7, i32 0, i32 1
  store ptr null, ptr %pCtx3, align 8
  %8 = load i32, ptr %ns_sep.addr, align 4
  %9 = load ptr, ptr %pEngine, align 8
  %ns_sep4 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %9, i32 0, i32 5
  store i32 %8, ptr %ns_sep4, align 8
  %10 = load ptr, ptr %pEngine, align 8
  %sParser = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pVm, align 8
  %sAllocator5 = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %process_ns.addr, align 4
  %tobool = icmp ne i32 %12, 0
  %13 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %call6 = call i32 @SyXMLParserInit(ptr noundef %sParser, ptr noundef %sAllocator5, i32 noundef %cond)
  %14 = load ptr, ptr %pEngine, align 8
  %sErr = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %pVm, align 8
  %sAllocator7 = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 0
  %call8 = call i32 @SyBlobInit(ptr noundef %sErr, ptr noundef %sAllocator7)
  %16 = load ptr, ptr %pVm, align 8
  %17 = load ptr, ptr %pEngine, align 8
  %sParserValue = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %17, i32 0, i32 4
  %call9 = call i32 @PH7_MemObjInit(ptr noundef %16, ptr noundef %sParserValue)
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, ptr %n, align 4
  %conv = zext i32 %18 to i64
  %cmp10 = icmp ult i64 %conv, 10
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pEngine, align 8
  %aCB = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %n, align 4
  %idxprom = zext i32 %20 to i64
  %arrayidx = getelementptr inbounds nuw [10 x %struct.ph7_value], ptr %aCB, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pValue, align 8
  %21 = load ptr, ptr %pVm, align 8
  %22 = load ptr, ptr %pValue, align 8
  %call12 = call i32 @PH7_MemObjInit(ptr noundef %21, ptr noundef %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %n, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %pEngine, align 8
  %sParserValue13 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pEngine, align 8
  %call14 = call i32 @ph7_value_resource(ptr noundef %sParserValue13, ptr noundef %25)
  %26 = load ptr, ptr %pEngine, align 8
  %iErrCode = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %26, i32 0, i32 7
  store i32 1, ptr %iErrCode, align 8
  %27 = load ptr, ptr %pEngine, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %27, i32 0, i32 10
  store i32 -2061566894, ptr %nMagic, align 4
  %28 = load ptr, ptr %pEngine, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyXMLParserInit(ptr noundef, ptr noundef, i32 noundef) #0

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
