; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @InitIOPrivate(ptr noundef %pVm, ptr noundef %pStream, ptr noundef %pOut) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pStream.addr = alloca ptr, align 8
  %pOut.addr = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pStream, ptr %pStream.addr, align 8
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %pStream.addr, align 8
  %1 = load ptr, ptr %pOut.addr, align 8
  %pStream1 = getelementptr inbounds nuw %struct.io_private, ptr %1, i32 0, i32 0
  store ptr %0, ptr %pStream1, align 8
  %2 = load ptr, ptr %pOut.addr, align 8
  %sBuffer = getelementptr inbounds nuw %struct.io_private, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 0
  %call = call i32 @SyBlobInit(ptr noundef %sBuffer, ptr noundef %sAllocator)
  %4 = load ptr, ptr %pOut.addr, align 8
  %nOfft = getelementptr inbounds nuw %struct.io_private, ptr %4, i32 0, i32 3
  store i32 0, ptr %nOfft, align 8
  %5 = load ptr, ptr %pOut.addr, align 8
  %iMagic = getelementptr inbounds nuw %struct.io_private, ptr %5, i32 0, i32 4
  store i32 16690196, ptr %iMagic, align 4
  ret void
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
