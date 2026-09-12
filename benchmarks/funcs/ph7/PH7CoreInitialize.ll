; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Global_Data = type { %struct.SyMemBackend, ptr, i32, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }

@sMPGlobal = external hidden global { { ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8], [15 x ptr] }, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_lib_config(i32 noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7CoreInitialize() #0 {
entry:
  %retval = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 4), align 8
  %cmp = icmp eq i32 %0, -367749702
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call ptr @PH7_ExportBuiltinVfs()
  store ptr %call, ptr %pVfs, align 8
  %1 = load ptr, ptr %pVfs, align 8
  %call1 = call i32 (i32, ...) @ph7_lib_config(i32 noundef 6, ptr noundef %1)
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.SyMemBackend, ptr @sMPGlobal, i32 0, i32 1), align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i32, ...) @ph7_lib_config(i32 noundef 1, i32 noundef 0)
  store i32 %call4, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp5 = icmp ne i32 %3, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then3
  br label %End

if.end7:                                          ; preds = %if.then3
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  store i32 -367749702, ptr getelementptr inbounds nuw (%struct.Global_Data, ptr @sMPGlobal, i32 0, i32 4), align 8
  store i32 0, ptr %rc, align 4
  br label %End

End:                                              ; preds = %if.end8, %if.then6
  %4 = load i32, ptr %rc, align 4
  store i32 %4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %End, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ExportBuiltinVfs() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
