; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_config(ptr noundef %pEngine, i32 noundef %nConfigOp, ...) #1 {
entry:
  %retval = alloca i32, align 4
  %pEngine.addr = alloca ptr, align 8
  %nConfigOp.addr = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %rc = alloca i32, align 4
  store ptr %pEngine, ptr %pEngine.addr, align 8
  store i32 %nConfigOp, ptr %nConfigOp.addr, align 4
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
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %3 = load ptr, ptr %pEngine.addr, align 8
  %4 = load i32, ptr %nConfigOp.addr, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call = call i32 @EngineConfig(ptr noundef %3, i32 noundef %4, ptr noundef %arraydecay2)
  store i32 %call, ptr %rc, align 4
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay3)
  %5 = load i32, ptr %rc, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @EngineConfig(ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
