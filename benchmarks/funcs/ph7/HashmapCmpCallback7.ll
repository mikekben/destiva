; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRandomNum(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapCmpCallback7(ptr noundef %pA, ptr noundef %pB, ptr noundef %pCmpData) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %pCmpData.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %pCmpData, ptr %pCmpData.addr, align 8
  store ptr null, ptr %pB.addr, align 8
  store ptr null, ptr %pCmpData.addr, align 8
  %0 = load ptr, ptr %pA.addr, align 8
  %pMap = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmRandomNum(ptr noundef %2)
  store i32 %call, ptr %n, align 4
  %3 = load i32, ptr %n, align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 -1
  ret i32 %cond
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
