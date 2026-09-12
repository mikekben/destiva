; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_xml_engine = type { ptr, ptr, %struct.SyXMLParser, [10 x %struct.ph7_value], %struct.ph7_value, i32, %struct.SyBlob, i32, i32, i32, i32 }
%struct.SyXMLParser = type { ptr, ptr, %struct.SyHash, %struct.SySet, %struct.SyLex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @VmReleaseXMLEngine(ptr noundef %pEngine) #0 {
entry:
  %pEngine.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pEngine, ptr %pEngine.addr, align 8
  %0 = load ptr, ptr %pEngine.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pEngine.addr, align 8
  %sErr = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %2, i32 0, i32 6
  %call = call i32 @SyBlobRelease(ptr noundef %sErr)
  %3 = load ptr, ptr %pEngine.addr, align 8
  %sParser = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %3, i32 0, i32 2
  %call2 = call i32 @SyXMLParserRelease(ptr noundef %sParser)
  %4 = load ptr, ptr %pEngine.addr, align 8
  %sParserValue = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %4, i32 0, i32 4
  %call3 = call i32 @PH7_MemObjRelease(ptr noundef %sParserValue)
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %n, align 4
  %conv = zext i32 %5 to i64
  %cmp = icmp ult i64 %conv, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pEngine.addr, align 8
  %aCB = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %n, align 4
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds nuw [10 x %struct.ph7_value], ptr %aCB, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pValue, align 8
  %8 = load ptr, ptr %pValue, align 8
  %call5 = call i32 @PH7_MemObjRelease(ptr noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %n, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %pEngine.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7_xml_engine, ptr %10, i32 0, i32 10
  store i32 9761, ptr %nMagic, align 4
  %11 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pEngine.addr, align 8
  %call6 = call i32 @SyMemBackendFree(ptr noundef %sAllocator, ptr noundef %12)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyXMLParserRelease(ptr noundef) #0

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
