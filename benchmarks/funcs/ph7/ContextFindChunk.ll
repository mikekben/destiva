; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_aux_data = type { ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @ContextFindChunk(ptr noundef %pCtx, ptr noundef %pChunk) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %pChunk.addr = alloca ptr, align 8
  %aAux = alloca ptr, align 8
  %pAux = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pChunk, ptr %pChunk.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %sChunk = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 3
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sChunk, i32 0, i32 2
  %1 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCtx.addr, align 8
  %sChunk1 = getelementptr inbounds nuw %struct.ph7_context, ptr %2, i32 0, i32 3
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sChunk1, i32 0, i32 1
  %3 = load ptr, ptr %pBase, align 8
  store ptr %3, ptr %aAux, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %pCtx.addr, align 8
  %sChunk2 = getelementptr inbounds nuw %struct.ph7_context, ptr %5, i32 0, i32 3
  %nUsed3 = getelementptr inbounds nuw %struct.SySet, ptr %sChunk2, i32 0, i32 2
  %6 = load i32, ptr %nUsed3, align 8
  %cmp4 = icmp ult i32 %4, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %aAux, align 8
  %8 = load i32, ptr %n, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds nuw %struct.ph7_aux_data, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %pAux, align 8
  %9 = load ptr, ptr %pAux, align 8
  %pAuxData = getelementptr inbounds nuw %struct.ph7_aux_data, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pAuxData, align 8
  %11 = load ptr, ptr %pChunk.addr, align 8
  %cmp5 = icmp eq ptr %10, %11
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %12 = load ptr, ptr %pAux, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %13 = load i32, ptr %n, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then6, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
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
