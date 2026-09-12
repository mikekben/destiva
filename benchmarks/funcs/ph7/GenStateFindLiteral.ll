; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateFindLiteral(ptr noundef %pGen, ptr noundef %pValue, ptr noundef %pIdx) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pIdx, ptr %pIdx.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %hLiteral = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pValue.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %zString, align 8
  %3 = load ptr, ptr %pValue.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nByte, align 8
  %call = call ptr @SyHashGet(ptr noundef %hLiteral, ptr noundef %2, i32 noundef %4)
  store ptr %call, ptr %pEntry, align 8
  %5 = load ptr, ptr %pEntry, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pUserData, align 8
  %8 = ptrtoint ptr %7 to i64
  %conv = trunc i64 %8 to i32
  %9 = load ptr, ptr %pIdx.addr, align 8
  store i32 %conv, ptr %9, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
