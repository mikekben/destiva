; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_value_bool(ptr noundef %pVal, i32 noundef %iBool) #0 {
entry:
  %pVal.addr = alloca ptr, align 8
  %iBool.addr = alloca i32, align 4
  store ptr %pVal, ptr %pVal.addr, align 8
  store i32 %iBool, ptr %iBool.addr, align 4
  %0 = load ptr, ptr %pVal.addr, align 8
  %call = call i32 @PH7_MemObjRelease(ptr noundef %0)
  %1 = load i32, ptr %iBool.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %conv = sext i32 %cond to i64
  %3 = load ptr, ptr %pVal.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 1
  store i64 %conv, ptr %x, align 8
  %4 = load ptr, ptr %pVal.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iFlags, align 8
  %and = and i32 %5, -496
  %or = or i32 %and, 8
  %6 = load ptr, ptr %pVal.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 2
  store i32 %or, ptr %iFlags1, align 8
  ret i32 0
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
