; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_builtin_func = type { ptr, ptr }

@aBuiltInFunc = external hidden constant [131 x %struct.ph7_builtin_func], align 16

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_create_function(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @PH7_RegisterBuiltInFunction(ptr noundef %pVm) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 131
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pVm.addr, align 8
  %2 = load i32, ptr %n, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw [131 x %struct.ph7_builtin_func], ptr @aBuiltInFunc, i64 0, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.ph7_builtin_func, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %zName, align 16
  %4 = load i32, ptr %n, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds nuw [131 x %struct.ph7_builtin_func], ptr @aBuiltInFunc, i64 0, i64 %idxprom2
  %xFunc = getelementptr inbounds nuw %struct.ph7_builtin_func, ptr %arrayidx3, i32 0, i32 1
  %5 = load ptr, ptr %xFunc, align 8
  %call = call i32 @ph7_create_function(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %n, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %pVm.addr, align 8
  call void @PH7_RegisterHashmapFunctions(ptr noundef %7)
  %8 = load ptr, ptr %pVm.addr, align 8
  %call4 = call i32 @PH7_RegisterIORoutine(ptr noundef %8)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @PH7_RegisterHashmapFunctions(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_RegisterIORoutine(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
