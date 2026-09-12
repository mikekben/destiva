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

@.str.156 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.819 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @PH7_DIR_Const(ptr noundef %pVal, ptr noundef %pUserData) #0 {
entry:
  %pVal.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  %zDir = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pVal, ptr %pVal.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pVm, align 8
  %1 = load ptr, ptr %pVm, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 19
  %call = call ptr @SySetPeek(ptr noundef %aFiles)
  store ptr %call, ptr %pFile, align 8
  %2 = load ptr, ptr %pFile, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pVal.addr, align 8
  %call1 = call i32 @ph7_value_string(ptr noundef %3, ptr noundef @.str.819, i32 noundef 8)
  br label %if.end9

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %pFile, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nByte, align 8
  %cmp2 = icmp ugt i32 %5, 0
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  %6 = load ptr, ptr %pFile, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zString, align 8
  %8 = load ptr, ptr %pFile, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyString, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nByte4, align 8
  %call5 = call ptr @PH7_ExtractDirName(ptr noundef %7, i32 noundef %9, ptr noundef %nLen)
  store ptr %call5, ptr %zDir, align 8
  %10 = load ptr, ptr %pVal.addr, align 8
  %11 = load ptr, ptr %zDir, align 8
  %12 = load i32, ptr %nLen, align 4
  %call6 = call i32 @ph7_value_string(ptr noundef %10, ptr noundef %11, i32 noundef %12)
  br label %if.end

if.else7:                                         ; preds = %if.else
  %13 = load ptr, ptr %pVal.addr, align 8
  %call8 = call i32 @ph7_value_string(ptr noundef %13, ptr noundef @.str.156, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ExtractDirName(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
