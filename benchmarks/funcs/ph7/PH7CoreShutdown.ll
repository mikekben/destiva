; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Global_Data = type { %struct.SyMemBackend, ptr, i32, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@sMPGlobal = external hidden global { { ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8], [15 x ptr] }, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
define hidden void @PH7CoreShutdown() #0 {
entry:
  %pEngine = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %0 = load ptr, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  store ptr %0, ptr %pEngine, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load i32, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 2), align 8
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %2 = load ptr, ptr %pEngine, align 8
  %pNext1 = getelementptr inbounds nuw %struct.ph7, ptr %2, i32 0, i32 5
  %3 = load ptr, ptr %pNext1, align 8
  store ptr %3, ptr %pNext, align 8
  %4 = load ptr, ptr %pEngine, align 8
  %call = call i32 @EngineRelease(ptr noundef %4)
  %5 = load ptr, ptr %pNext, align 8
  store ptr %5, ptr %pEngine, align 8
  %6 = load i32, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 2), align 8
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 2), align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.SyMemBackend, ptr @sMPGlobal, i32 0, i32 1), align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %for.end
  %call3 = call i32 @SyMemBackendRelease(ptr noundef @sMPGlobal)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %for.end
  store i32 6440, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 4), align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @EngineRelease(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
