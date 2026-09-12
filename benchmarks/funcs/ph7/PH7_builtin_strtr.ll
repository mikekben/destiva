; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_replace_data = type { ptr, ptr, ptr, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_walk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strtr(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %sRepData = alloca %struct.str_replace_data, align 8
  %sWorker = alloca %struct.SyBlob, align 8
  %i = alloca i32, align 4
  %flen = alloca i32, align 4
  %tlen = alloca i32, align 4
  %c = alloca i32, align 4
  %iOfft = alloca i32, align 4
  %zFrom = alloca ptr, align 8
  %zTo = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nLen)
  store ptr %call1, ptr %zIn, align 8
  %4 = load i32, ptr %nLen, align 4
  %cmp2 = icmp slt i32 %4, 1
  br i1 %cmp2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp3 = icmp slt i32 %5, 2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %7 = load ptr, ptr %zIn, align 8
  %8 = load i32, ptr %nLen, align 4
  %call5 = call i32 @ph7_result_string(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load i32, ptr %nArg.addr, align 4
  %cmp7 = icmp eq i32 %9, 2
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @ph7_value_is_array(ptr noundef %11)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 0
  %call11 = call i32 @SyBlobInit(ptr noundef %sWorker, ptr noundef %sAllocator)
  %14 = load ptr, ptr %zIn, align 8
  %15 = load i32, ptr %nLen, align 4
  %call12 = call i32 @SyBlobAppend(ptr noundef %sWorker, ptr noundef %14, i32 noundef %15)
  %pWorker = getelementptr inbounds nuw %struct.str_replace_data, ptr %sRepData, i32 0, i32 0
  store ptr %sWorker, ptr %pWorker, align 8
  %xMatch = getelementptr inbounds nuw %struct.str_replace_data, ptr %sRepData, i32 0, i32 1
  store ptr @SyBlobSearch, ptr %xMatch, align 8
  %16 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %16, i64 1
  %17 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @ph7_array_walk(ptr noundef %17, ptr noundef @StringReplaceWalker, ptr noundef %sRepData)
  %18 = load ptr, ptr %pCtx.addr, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 1
  %19 = load ptr, ptr %pBlob, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 2
  %20 = load i32, ptr %nByte, align 8
  %call15 = call i32 @ph7_result_string(ptr noundef %18, ptr noundef %19, i32 noundef %20)
  %call16 = call i32 @SyBlobRelease(ptr noundef %sWorker)
  br label %if.end45

if.else:                                          ; preds = %land.lhs.true, %if.end6
  %21 = load i32, ptr %nArg.addr, align 4
  %cmp17 = icmp slt i32 %21, 3
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.else
  %22 = load ptr, ptr %pCtx.addr, align 8
  %23 = load ptr, ptr %zIn, align 8
  %24 = load i32, ptr %nLen, align 4
  %call19 = call i32 @ph7_result_string(ptr noundef %22, ptr noundef %23, i32 noundef %24)
  store i32 0, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.else
  %25 = load ptr, ptr %apArg.addr, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %25, i64 1
  %26 = load ptr, ptr %arrayidx21, align 8
  %call22 = call ptr @ph7_value_to_string(ptr noundef %26, ptr noundef %flen)
  store ptr %call22, ptr %zFrom, align 8
  %27 = load ptr, ptr %apArg.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %27, i64 2
  %28 = load ptr, ptr %arrayidx23, align 8
  %call24 = call ptr @ph7_value_to_string(ptr noundef %28, ptr noundef %tlen)
  store ptr %call24, ptr %zTo, align 8
  %29 = load i32, ptr %flen, align 4
  %cmp25 = icmp slt i32 %29, 1
  br i1 %cmp25, label %if.then28, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.end20
  %30 = load i32, ptr %tlen, align 4
  %cmp27 = icmp slt i32 %30, 1
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %lor.lhs.false26, %if.end20
  %31 = load ptr, ptr %pCtx.addr, align 8
  %32 = load ptr, ptr %zIn, align 8
  %33 = load i32, ptr %nLen, align 4
  %call29 = call i32 @ph7_result_string(ptr noundef %31, ptr noundef %32, i32 noundef %33)
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %lor.lhs.false26
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end30
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %nLen, align 4
  %cmp31 = icmp slt i32 %34, %35
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %zIn, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %36, i64 %idxprom
  %38 = load i8, ptr %arrayidx32, align 1
  %conv = sext i8 %38 to i32
  store i32 %conv, ptr %c, align 4
  %39 = load i32, ptr %c, align 4
  %40 = load ptr, ptr %zFrom, align 8
  %41 = load i32, ptr %flen, align 4
  %call33 = call i32 @CheckMask(i32 noundef %39, ptr noundef %40, i32 noundef %41, ptr noundef %iOfft)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.end43

if.then35:                                        ; preds = %for.body
  %42 = load i32, ptr %iOfft, align 4
  %43 = load i32, ptr %tlen, align 4
  %cmp36 = icmp slt i32 %42, %43
  br i1 %cmp36, label %if.then38, label %if.end42

if.then38:                                        ; preds = %if.then35
  %44 = load ptr, ptr %zTo, align 8
  %45 = load i32, ptr %iOfft, align 4
  %idxprom39 = sext i32 %45 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %44, i64 %idxprom39
  %46 = load i8, ptr %arrayidx40, align 1
  %conv41 = sext i8 %46 to i32
  store i32 %conv41, ptr %c, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.then35
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %for.body
  %47 = load ptr, ptr %pCtx.addr, align 8
  %call44 = call i32 @ph7_result_string(ptr noundef %47, ptr noundef %c, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %48 = load i32, ptr %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end45

if.end45:                                         ; preds = %for.end, %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then28, %if.then18, %if.then4, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobSearch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @CheckMask(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @StringReplaceWalker(ptr noundef, ptr noundef, ptr noundef) #0

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
