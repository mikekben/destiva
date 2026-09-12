; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_aux_data = type { ptr }
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

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @ph7_context_alloc_chunk(ptr noundef %pCtx, i32 noundef %nByte, i32 noundef %ZeroChunk, i32 noundef %AutoRelease) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %ZeroChunk.addr = alloca i32, align 4
  %AutoRelease.addr = alloca i32, align 4
  %pChunk = alloca ptr, align 8
  %sAux = alloca %struct.ph7_aux_data, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i32 %ZeroChunk, ptr %ZeroChunk.addr, align 4
  store i32 %AutoRelease, ptr %AutoRelease.addr, align 4
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nByte.addr, align 4
  %call = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef %2)
  store ptr %call, ptr %pChunk, align 8
  %3 = load ptr, ptr %pChunk, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ZeroChunk.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %pChunk, align 8
  %6 = load i32, ptr %nByte.addr, align 4
  call void @SyZero(ptr noundef %5, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %7 = load i32, ptr %AutoRelease.addr, align 4
  %tobool3 = icmp ne i32 %7, 0
  br i1 %tobool3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pChunk, align 8
  %pAuxData = getelementptr inbounds nuw %struct.ph7_aux_data, ptr %sAux, i32 0, i32 0
  store ptr %8, ptr %pAuxData, align 8
  %9 = load ptr, ptr %pCtx.addr, align 8
  %sChunk = getelementptr inbounds nuw %struct.ph7_context, ptr %9, i32 0, i32 3
  %call5 = call i32 @SySetPut(ptr noundef %sChunk, ptr noundef %sAux)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %10 = load ptr, ptr %pChunk, align 8
  ret ptr %10
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
