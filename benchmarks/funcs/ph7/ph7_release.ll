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
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_release(ptr noundef %pEngine) #0 {
entry:
  %retval = alloca i32, align 4
  %pEngine.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pEngine, ptr %pEngine.addr, align 8
  %0 = load ptr, ptr %pEngine.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pEngine.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7, ptr %1, i32 0, i32 7
  %2 = load i32, ptr %nMagic, align 8
  %cmp1 = icmp ne i32 %2, -126567209
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pEngine.addr, align 8
  %call = call i32 @EngineRelease(ptr noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  %5 = load ptr, ptr %pEngine.addr, align 8
  %cmp2 = icmp eq ptr %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  %pNext = getelementptr inbounds nuw %struct.ph7, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %pNext, align 8
  store ptr %7, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 3), align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %pEngine.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7, ptr %8, i32 0, i32 6
  %9 = load ptr, ptr %pPrev, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end4
  %10 = load ptr, ptr %pEngine.addr, align 8
  %pNext6 = getelementptr inbounds nuw %struct.ph7, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %pNext6, align 8
  %12 = load ptr, ptr %pEngine.addr, align 8
  %pPrev7 = getelementptr inbounds nuw %struct.ph7, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %pPrev7, align 8
  %pNext8 = getelementptr inbounds nuw %struct.ph7, ptr %13, i32 0, i32 5
  store ptr %11, ptr %pNext8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end4
  %14 = load ptr, ptr %pEngine.addr, align 8
  %pNext10 = getelementptr inbounds nuw %struct.ph7, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr %pNext10, align 8
  %tobool11 = icmp ne ptr %15, null
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end9
  %16 = load ptr, ptr %pEngine.addr, align 8
  %pPrev13 = getelementptr inbounds nuw %struct.ph7, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %pPrev13, align 8
  %18 = load ptr, ptr %pEngine.addr, align 8
  %pNext14 = getelementptr inbounds nuw %struct.ph7, ptr %18, i32 0, i32 5
  %19 = load ptr, ptr %pNext14, align 8
  %pPrev15 = getelementptr inbounds nuw %struct.ph7, ptr %19, i32 0, i32 6
  store ptr %17, ptr %pPrev15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end9
  %20 = load i32, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 2), align 8
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 2), align 8
  %21 = load ptr, ptr %pEngine.addr, align 8
  %call17 = call i32 @SyMemBackendPoolFree(ptr noundef @sMPGlobal, ptr noundef %21)
  %22 = load i32, ptr %rc, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

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
