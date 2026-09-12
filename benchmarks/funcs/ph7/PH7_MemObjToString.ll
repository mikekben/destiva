; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjToString(ptr noundef %pObj) #0 {
entry:
  %pObj.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pObj, ptr %pObj.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 1
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 4
  %call = call i32 @SyBlobReset(ptr noundef %sBlob)
  %3 = load ptr, ptr %pObj.addr, align 8
  %sBlob1 = getelementptr inbounds nuw %struct.ph7_value, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pObj.addr, align 8
  %call2 = call i32 @MemObjStringValue(ptr noundef %sBlob1, ptr noundef %4, i8 noundef zeroext 1)
  store i32 %call2, ptr %rc, align 4
  %5 = load ptr, ptr %pObj.addr, align 8
  %iFlags3 = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %iFlags3, align 8
  %and4 = and i32 %6, -496
  %or = or i32 %and4, 1
  %7 = load ptr, ptr %pObj.addr, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  store i32 %or, ptr %iFlags5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %rc, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @MemObjStringValue(ptr noundef, ptr noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
