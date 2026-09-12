; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.Global_Data = type { %struct.SyMemBackend, ptr, i32, ptr, i32 }

@sMPGlobal = external hidden global { { ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8], [15 x ptr] }, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7CoreInitialize() #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_config(ptr noundef, i32 noundef, ...) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_init(ptr noundef %ppEngine) #0 {
entry:
  %retval = alloca i32, align 4
  %ppEngine.addr = alloca ptr, align 8
  %pEngine = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %ppEngine, ptr %ppEngine.addr, align 8
  %0 = load ptr, ptr %ppEngine.addr, align 8
  store ptr null, ptr %0, align 8
  %call = call i32 @PH7CoreInitialize()
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @SyMemBackendPoolAlloc(ptr noundef @sMPGlobal, i32 noundef 280)
  store ptr %call1, ptr %pEngine, align 8
  %3 = load ptr, ptr %pEngine, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %pEngine, align 8
  call void @SyZero(ptr noundef %4, i32 noundef 280)
  %5 = load ptr, ptr %pEngine, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7, ptr %5, i32 0, i32 7
  store i32 -126567209, ptr %nMagic, align 8
  %6 = load ptr, ptr %pEngine, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7, ptr %6, i32 0, i32 0
  %call5 = call i32 @SyMemBackendInitFromParent(ptr noundef %sAllocator, ptr noundef @sMPGlobal)
  store i32 %call5, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  br label %Release

if.end8:                                          ; preds = %if.end4
  %8 = load ptr, ptr %pEngine, align 8
  %xConf = getelementptr inbounds nuw %struct.ph7, ptr %8, i32 0, i32 2
  %sErrConsumer = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf, i32 0, i32 2
  %9 = load ptr, ptr %pEngine, align 8
  %sAllocator9 = getelementptr inbounds nuw %struct.ph7, ptr %9, i32 0, i32 0
  %call10 = call i32 @SyBlobInit(ptr noundef %sErrConsumer, ptr noundef %sAllocator9)
  %10 = load ptr, ptr %pEngine, align 8
  %11 = load ptr, ptr %pEngine, align 8
  %xConf11 = getelementptr inbounds nuw %struct.ph7, ptr %11, i32 0, i32 2
  %sErrConsumer12 = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf11, i32 0, i32 2
  %call13 = call i32 (ptr, i32, ...) @ph7_config(ptr noundef %10, i32 noundef 1, ptr noundef @PH7_VmBlobConsumer, ptr noundef %sErrConsumer12)
  %12 = load ptr, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 1), align 8
  %13 = load ptr, ptr %pEngine, align 8
  %pVfs = getelementptr inbounds nuw %struct.ph7, ptr %13, i32 0, i32 1
  store ptr %12, ptr %pVfs, align 8
  %14 = load ptr, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  %cmp14 = icmp eq ptr %14, null
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end8
  %15 = load ptr, ptr %pEngine, align 8
  store ptr %15, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  br label %if.end16

if.else:                                          ; preds = %if.end8
  %16 = load ptr, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  %17 = load ptr, ptr %pEngine, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7, ptr %17, i32 0, i32 5
  store ptr %16, ptr %pNext, align 8
  %18 = load ptr, ptr %pEngine, align 8
  %19 = load ptr, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7, ptr %19, i32 0, i32 6
  store ptr %18, ptr %pPrev, align 8
  %20 = load ptr, ptr %pEngine, align 8
  store ptr %20, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %21 = load i32, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 2), align 8
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 2), align 8
  %22 = load ptr, ptr %pEngine, align 8
  %23 = load ptr, ptr %ppEngine.addr, align 8
  store ptr %22, ptr %23, align 8
  store i32 0, ptr %retval, align 4
  br label %return

Release:                                          ; preds = %if.then7
  %24 = load ptr, ptr %pEngine, align 8
  %sAllocator17 = getelementptr inbounds nuw %struct.ph7, ptr %24, i32 0, i32 0
  %call18 = call i32 @SyMemBackendRelease(ptr noundef %sAllocator17)
  %25 = load ptr, ptr %pEngine, align 8
  %call19 = call i32 @SyMemBackendPoolFree(ptr noundef @sMPGlobal, ptr noundef %25)
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

return:                                           ; preds = %Release, %if.end16, %if.then3, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendInitFromParent(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmBlobConsumer(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
