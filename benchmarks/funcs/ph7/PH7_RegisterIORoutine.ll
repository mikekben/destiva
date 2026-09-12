; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_builtin_func = type { ptr, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }

@sPHP_Stream = external hidden constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
@PH7_RegisterIORoutine.aVfsFunc = external hidden constant [64 x %struct.ph7_builtin_func], align 16
@PH7_RegisterIORoutine.aIOFunc = external hidden constant [33 x %struct.ph7_builtin_func], align 16
@sUnixFileStream = external hidden constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_vm_config(ptr noundef, i32 noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_create_function(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_RegisterIORoutine(ptr noundef %pVm) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pFileStream = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr null, ptr %pFileStream, align 8
  store i32 0, ptr %n, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %pVm.addr, align 8
  %2 = load i32, ptr %n, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw [64 x %struct.ph7_builtin_func], ptr @PH7_RegisterIORoutine.aVfsFunc, i64 0, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.ph7_builtin_func, ptr %arrayidx, i32 0, i32 0
  %3 = load ptr, ptr %zName, align 16
  %4 = load i32, ptr %n, align 4
  %idxprom2 = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds nuw [64 x %struct.ph7_builtin_func], ptr @PH7_RegisterIORoutine.aVfsFunc, i64 0, i64 %idxprom2
  %xFunc = getelementptr inbounds nuw %struct.ph7_builtin_func, ptr %arrayidx3, i32 0, i32 1
  %5 = load ptr, ptr %xFunc, align 8
  %6 = load ptr, ptr %pVm.addr, align 8
  %pEngine = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pEngine, align 8
  %pVfs = getelementptr inbounds nuw %struct.ph7, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pVfs, align 8
  %call = call i32 @ph7_create_function(ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %n, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc16, %for.end
  %10 = load i32, ptr %n, align 4
  %conv5 = zext i32 %10 to i64
  %cmp6 = icmp ult i64 %conv5, 33
  br i1 %cmp6, label %for.body8, label %for.end18

for.body8:                                        ; preds = %for.cond4
  %11 = load ptr, ptr %pVm.addr, align 8
  %12 = load i32, ptr %n, align 4
  %idxprom9 = zext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds nuw [33 x %struct.ph7_builtin_func], ptr @PH7_RegisterIORoutine.aIOFunc, i64 0, i64 %idxprom9
  %zName11 = getelementptr inbounds nuw %struct.ph7_builtin_func, ptr %arrayidx10, i32 0, i32 0
  %13 = load ptr, ptr %zName11, align 16
  %14 = load i32, ptr %n, align 4
  %idxprom12 = zext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds nuw [33 x %struct.ph7_builtin_func], ptr @PH7_RegisterIORoutine.aIOFunc, i64 0, i64 %idxprom12
  %xFunc14 = getelementptr inbounds nuw %struct.ph7_builtin_func, ptr %arrayidx13, i32 0, i32 1
  %15 = load ptr, ptr %xFunc14, align 8
  %16 = load ptr, ptr %pVm.addr, align 8
  %call15 = call i32 @ph7_create_function(ptr noundef %11, ptr noundef %13, ptr noundef %15, ptr noundef %16)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body8
  %17 = load i32, ptr %n, align 4
  %inc17 = add i32 %17, 1
  store i32 %inc17, ptr %n, align 4
  br label %for.cond4, !llvm.loop !8

for.end18:                                        ; preds = %for.cond4
  store ptr @sUnixFileStream, ptr %pFileStream, align 8
  %18 = load ptr, ptr %pVm.addr, align 8
  %call19 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %18, i32 noundef 18, ptr noundef @sPHP_Stream)
  %19 = load ptr, ptr %pFileStream, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end18
  %20 = load ptr, ptr %pVm.addr, align 8
  %21 = load ptr, ptr %pFileStream, align 8
  %call20 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %20, i32 noundef 18, ptr noundef %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end18
  ret i32 0
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
