; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unique_id_data = type { ptr, i32 }
%struct.SHA1Context = type { [5 x i32], [2 x i32], [64 x i8] }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_VmRandomString(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_uniqid(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sUniq = alloca %struct.unique_id_data, align 8
  %zDigest = alloca [20 x i8], align 16
  %pVm = alloca ptr, align 8
  %zPrefix = alloca ptr, align 8
  %sCtx = alloca %struct.SHA1Context, align 4
  %zRandom = alloca [7 x i8], align 1
  %nPrefix = alloca i32, align 4
  %entropy = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pVm, align 8
  %arraydecay = getelementptr inbounds [7 x i8], ptr %zRandom, i64 0, i64 0
  call void @PH7_VmRandomString(ptr noundef %2, ptr noundef %arraydecay, i32 noundef 7)
  store ptr null, ptr %zPrefix, align 8
  store i32 0, ptr %nPrefix, align 4
  store i32 0, ptr %entropy, align 4
  %3 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nPrefix)
  store ptr %call, ptr %zPrefix, align 8
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp2 = icmp sgt i32 %6, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @ph7_value_to_bool(ptr noundef %8)
  store i32 %call5, ptr %entropy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  call void @SHA1Init(ptr noundef %sCtx)
  %9 = load i32, ptr %nPrefix, align 4
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr %zPrefix, align 8
  %11 = load i32, ptr %nPrefix, align 4
  call void @SHA1Update(ptr noundef %sCtx, ptr noundef %10, i32 noundef %11)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %12 = load ptr, ptr %pVm, align 8
  %unique_id = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 40
  call void @SHA1Update(ptr noundef %sCtx, ptr noundef %unique_id, i32 noundef 4)
  %arraydecay10 = getelementptr inbounds [7 x i8], ptr %zRandom, i64 0, i64 0
  call void @SHA1Update(ptr noundef %sCtx, ptr noundef %arraydecay10, i32 noundef 7)
  %13 = load ptr, ptr %pVm, align 8
  %unique_id11 = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 40
  %14 = load i32, ptr %unique_id11, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %unique_id11, align 4
  %arraydecay12 = getelementptr inbounds [20 x i8], ptr %zDigest, i64 0, i64 0
  call void @SHA1Final(ptr noundef %sCtx, ptr noundef %arraydecay12)
  %15 = load ptr, ptr %pCtx.addr, align 8
  %pCtx13 = getelementptr inbounds nuw %struct.unique_id_data, ptr %sUniq, i32 0, i32 0
  store ptr %15, ptr %pCtx13, align 8
  %16 = load i32, ptr %entropy, align 4
  %entropy14 = getelementptr inbounds nuw %struct.unique_id_data, ptr %sUniq, i32 0, i32 1
  store i32 %16, ptr %entropy14, align 8
  %arraydecay15 = getelementptr inbounds [20 x i8], ptr %zDigest, i64 0, i64 0
  %call16 = call i32 @SyBinToHexConsumer(ptr noundef %arraydecay15, i32 noundef 20, ptr noundef @HexConsumer, ptr noundef %sUniq)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden void @SHA1Init(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SHA1Update(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SHA1Final(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBinToHexConsumer(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HexConsumer(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
