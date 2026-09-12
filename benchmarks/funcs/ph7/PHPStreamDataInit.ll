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
%struct.ph7_stream_data = type { ptr, i32, %union.anon.3 }
%union.anon.3 = type { %struct.ph7_output_consumer }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden ptr @PHPStreamDataInit(ptr noundef %pVm, i32 noundef %iType) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %iType.addr = alloca i32, align 4
  %pData = alloca ptr, align 8
  %ifd = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store i32 %iType, ptr %iType.addr, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 0
  %call = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef 48)
  store ptr %call, ptr %pData, align 8
  %2 = load ptr, ptr %pData, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %pData, align 8
  call void @SyZero(ptr noundef %3, i32 noundef 48)
  %4 = load i32, ptr %iType.addr, align 4
  %5 = load ptr, ptr %pData, align 8
  %iType4 = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %5, i32 0, i32 1
  store i32 %4, ptr %iType4, align 8
  %6 = load i32, ptr %iType.addr, align 4
  %cmp5 = icmp eq i32 %6, 4
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %7 = load ptr, ptr %pData, align 8
  %x = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %8, i32 0, i32 43
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %x, ptr align 8 %sVmConsumer, i64 32, i1 false)
  br label %if.end9

if.else:                                          ; preds = %if.end3
  store i32 0, ptr %ifd, align 4
  %9 = load i32, ptr %iType.addr, align 4
  switch i32 %9, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.else
  store i32 1, ptr %ifd, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.else
  store i32 2, ptr %ifd, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  %10 = load i32, ptr %ifd, align 4
  %conv = sext i32 %10 to i64
  %11 = inttoptr i64 %conv to ptr
  %12 = load ptr, ptr %pData, align 8
  %x8 = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %12, i32 0, i32 2
  store ptr %11, ptr %x8, align 8
  br label %if.end9

if.end9:                                          ; preds = %sw.epilog, %if.then6
  %13 = load ptr, ptr %pVm.addr, align 8
  %14 = load ptr, ptr %pData, align 8
  %pVm10 = getelementptr inbounds nuw %struct.ph7_stream_data, ptr %14, i32 0, i32 0
  store ptr %13, ptr %pVm10, align 8
  %15 = load ptr, ptr %pData, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then2, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
