; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i64 @MemObjStringToInt(ptr noundef %pObj) #0 {
entry:
  %pObj.addr = alloca ptr, align 8
  %sVal = alloca %struct.SyString, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %1 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sVal, i32 0, i32 0
  store ptr %1, ptr %zString, align 8
  %2 = load ptr, ptr %pObj.addr, align 8
  %sBlob1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob1, i32 0, i32 2
  %3 = load i32, ptr %nByte, align 8
  %nByte2 = getelementptr inbounds nuw %struct.SyString, ptr %sVal, i32 0, i32 1
  store i32 %3, ptr %nByte2, align 8
  %call = call i64 @PH7_TokenValueToInt64(ptr noundef %sVal)
  ret i64 %call
}

; Function Attrs: nounwind uwtable
declare hidden i64 @PH7_TokenValueToInt64(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
