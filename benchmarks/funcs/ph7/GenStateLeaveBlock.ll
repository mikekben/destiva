; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @GenStateFreeBlock(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateLeaveBlock(ptr noundef %pGen, ptr noundef %ppBlock) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %ppBlock.addr = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %ppBlock, ptr %ppBlock.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pCurrent, align 8
  store ptr %1, ptr %pBlock, align 8
  %2 = load ptr, ptr %pBlock, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pBlock, align 8
  %pParent = getelementptr inbounds nuw %struct.GenBlock, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pParent, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pCurrent1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 4
  store ptr %4, ptr %pCurrent1, align 8
  %6 = load ptr, ptr %ppBlock.addr, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %pBlock, align 8
  %8 = load ptr, ptr %ppBlock.addr, align 8
  store ptr %7, ptr %8, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %pBlock, align 8
  call void @GenStateFreeBlock(ptr noundef %9)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then
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
