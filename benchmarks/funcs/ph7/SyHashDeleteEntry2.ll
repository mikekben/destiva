; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHashEntry_Pr = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @SyHashDeleteEntry2(ptr noundef %pEntry) #0 {
entry:
  %pEntry.addr = alloca ptr, align 8
  %pPtr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pEntry, ptr %pEntry.addr, align 8
  %0 = load ptr, ptr %pEntry.addr, align 8
  store ptr %0, ptr %pPtr, align 8
  %1 = load ptr, ptr %pPtr, align 8
  %pHash = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pHash, align 8
  %3 = load ptr, ptr %pPtr, align 8
  %call = call i32 @HashDeleteEntry(ptr noundef %2, ptr noundef %3, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashDeleteEntry(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
