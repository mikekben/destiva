; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjRelease(ptr noundef %pObj) #0 {
entry:
  %pObj.addr = alloca ptr, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 32
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pObj.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %3, 64
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %x, align 8
  call void @PH7_HashmapUnref(ptr noundef %5)
  br label %if.end9

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %pObj.addr, align 8
  %iFlags4 = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %iFlags4, align 8
  %and5 = and i32 %7, 128
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  %8 = load ptr, ptr %pObj.addr, align 8
  %x8 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %x8, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then3
  %10 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 4
  %call = call i32 @SyBlobRelease(ptr noundef %sBlob)
  %11 = load ptr, ptr %pObj.addr, align 8
  %iFlags10 = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 2
  store i32 32, ptr %iFlags10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_ClassInstanceUnref(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
