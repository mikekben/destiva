; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @MemObjTryIntger(ptr noundef %pObj) #0 {
entry:
  %pObj.addr = alloca ptr, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %call = call i64 @MemObjRealToInt(ptr noundef %0)
  %1 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %1, i32 0, i32 1
  store i64 %call, ptr %x, align 8
  %2 = load ptr, ptr %pObj.addr, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 0
  %3 = load double, ptr %rVal, align 8
  %4 = load ptr, ptr %pObj.addr, align 8
  %x1 = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 1
  %5 = load i64, ptr %x1, align 8
  %conv = sitofp i64 %5 to double
  %cmp = fcmp oeq double %3, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %pObj.addr, align 8
  %x3 = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 1
  %7 = load i64, ptr %x3, align 8
  %cmp4 = icmp sgt i64 %7, -9223372036854775808
  br i1 %cmp4, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %pObj.addr, align 8
  %x7 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %x7, align 8
  %cmp8 = icmp slt i64 %9, 9223372036854775807
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true6
  %10 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iFlags, align 8
  %or = or i32 %11, 2
  store i32 %or, ptr %iFlags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true6, %land.lhs.true, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i64 @MemObjRealToInt(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
