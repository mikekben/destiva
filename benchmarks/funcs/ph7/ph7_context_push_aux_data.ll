; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_aux_data = type { ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_user_func = type { ptr, %struct.SyString, ptr, ptr, %struct.SySet }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_context_push_aux_data(ptr noundef %pCtx, ptr noundef %pUserData) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %sAux = alloca %struct.ph7_aux_data, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  %pAuxData = getelementptr inbounds nuw %struct.ph7_aux_data, ptr %sAux, i32 0, i32 0
  store ptr %0, ptr %pAuxData, align 8
  %1 = load ptr, ptr %pCtx.addr, align 8
  %pFunc = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pFunc, align 8
  %aAux = getelementptr inbounds nuw %struct.ph7_user_func, ptr %2, i32 0, i32 4
  %call = call i32 @SySetPut(ptr noundef %aAux, ptr noundef %sAux)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  ret i32 %3
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
