; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_decoder = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
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
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexInit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexTokenizeInput(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_json_decode(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %sDecoder = alloca %struct.json_decoder, align 8
  %zIn = alloca ptr, align 8
  %sToken = alloca %struct.SySet, align 8
  %sLex = alloca %struct.SyLex, align 8
  %nByte = alloca i32, align 4
  %rc = alloca i32, align 4
  %nDepth = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_null(ptr noundef %5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_string(ptr noundef %7, ptr noundef %nByte)
  store ptr %call4, ptr %zIn, align 8
  %8 = load i32, ptr %nByte, align 4
  %cmp5 = icmp slt i32 %8, 1
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call i32 @ph7_result_null(ptr noundef %9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %pVm, align 8
  %json_rc = getelementptr inbounds nuw %struct.ph7_vm, ptr %10, i32 0, i32 39
  store i32 0, ptr %json_rc, align 8
  %11 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 0
  %call9 = call i32 @SySetInit(ptr noundef %sToken, ptr noundef %sAllocator, i32 noundef 32)
  %12 = load ptr, ptr %pVm, align 8
  %json_rc10 = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 39
  %call11 = call i32 @SyLexInit(ptr noundef %sLex, ptr noundef %sToken, ptr noundef @VmJsonTokenize, ptr noundef %json_rc10)
  %13 = load ptr, ptr %zIn, align 8
  %14 = load i32, ptr %nByte, align 4
  %call12 = call i32 @SyLexTokenizeInput(ptr noundef %sLex, ptr noundef %13, i32 noundef %14, ptr noundef null, ptr noundef null, ptr noundef null)
  %15 = load ptr, ptr %pVm, align 8
  %json_rc13 = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 39
  %16 = load i32, ptr %json_rc13, align 8
  %cmp14 = icmp ne i32 %16, 0
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end8
  %call16 = call i32 @SyLexRelease(ptr noundef %sLex)
  %call17 = call i32 @SySetRelease(ptr noundef %sToken)
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_null(ptr noundef %17)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end8
  %18 = load ptr, ptr %pCtx.addr, align 8
  %pCtx20 = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 0
  store ptr %18, ptr %pCtx20, align 8
  %19 = load ptr, ptr %pVm, align 8
  %json_rc21 = getelementptr inbounds nuw %struct.ph7_vm, ptr %19, i32 0, i32 39
  %pErr = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 8
  store ptr %json_rc21, ptr %pErr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sToken, i32 0, i32 1
  %20 = load ptr, ptr %pBase, align 8
  %pIn = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 4
  store ptr %20, ptr %pIn, align 8
  %pIn22 = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 4
  %21 = load ptr, ptr %pIn22, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sToken, i32 0, i32 2
  %22 = load i32, ptr %nUsed, align 8
  %idxprom = zext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds nuw %struct.SyToken, ptr %21, i64 %idxprom
  %pEnd = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 5
  store ptr %arrayidx23, ptr %pEnd, align 8
  %iFlags = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 3
  store i32 0, ptr %iFlags, align 8
  %23 = load i32, ptr %nArg.addr, align 4
  %cmp24 = icmp sgt i32 %23, 1
  br i1 %cmp24, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end19
  %24 = load ptr, ptr %apArg.addr, align 8
  %arrayidx25 = getelementptr inbounds ptr, ptr %24, i64 1
  %25 = load ptr, ptr %arrayidx25, align 8
  %call26 = call i32 @ph7_value_to_bool(ptr noundef %25)
  %cmp27 = icmp ne i32 %call26, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %land.lhs.true
  %iFlags29 = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 3
  %26 = load i32, ptr %iFlags29, align 8
  %or = or i32 %26, 1
  store i32 %or, ptr %iFlags29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %land.lhs.true, %if.end19
  %rec_depth = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 6
  store i32 32, ptr %rec_depth, align 8
  %27 = load i32, ptr %nArg.addr, align 4
  %cmp31 = icmp sgt i32 %27, 2
  br i1 %cmp31, label %land.lhs.true32, label %if.end45

land.lhs.true32:                                  ; preds = %if.end30
  %28 = load ptr, ptr %apArg.addr, align 8
  %arrayidx33 = getelementptr inbounds ptr, ptr %28, i64 2
  %29 = load ptr, ptr %arrayidx33, align 8
  %call34 = call i32 @ph7_value_is_int(ptr noundef %29)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then36, label %if.end45

if.then36:                                        ; preds = %land.lhs.true32
  %30 = load ptr, ptr %apArg.addr, align 8
  %arrayidx37 = getelementptr inbounds ptr, ptr %30, i64 2
  %31 = load ptr, ptr %arrayidx37, align 8
  %call38 = call i32 @ph7_value_to_int(ptr noundef %31)
  store i32 %call38, ptr %nDepth, align 4
  %32 = load i32, ptr %nDepth, align 4
  %cmp39 = icmp sgt i32 %32, 1
  br i1 %cmp39, label %land.lhs.true40, label %if.end44

land.lhs.true40:                                  ; preds = %if.then36
  %33 = load i32, ptr %nDepth, align 4
  %cmp41 = icmp slt i32 %33, 32
  br i1 %cmp41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %land.lhs.true40
  %34 = load i32, ptr %nDepth, align 4
  %rec_depth43 = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 6
  store i32 %34, ptr %rec_depth43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.lhs.true40, %if.then36
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %land.lhs.true32, %if.end30
  %rec_count = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 7
  store i32 0, ptr %rec_count, align 4
  %xConsumer = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 1
  store ptr @VmJsonDefaultDecoder, ptr %xConsumer, align 8
  %pUserData = getelementptr inbounds nuw %struct.json_decoder, ptr %sDecoder, i32 0, i32 2
  store ptr null, ptr %pUserData, align 8
  %call46 = call i32 @VmJsonDecode(ptr noundef %sDecoder, ptr noundef null)
  store i32 %call46, ptr %rc, align 4
  %35 = load i32, ptr %rc, align 4
  %cmp47 = icmp eq i32 %35, -10
  br i1 %cmp47, label %if.then51, label %lor.lhs.false48

lor.lhs.false48:                                  ; preds = %if.end45
  %36 = load ptr, ptr %pVm, align 8
  %json_rc49 = getelementptr inbounds nuw %struct.ph7_vm, ptr %36, i32 0, i32 39
  %37 = load i32, ptr %json_rc49, align 8
  %cmp50 = icmp ne i32 %37, 0
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %lor.lhs.false48, %if.end45
  %38 = load ptr, ptr %pCtx.addr, align 8
  %call52 = call i32 @ph7_result_null(ptr noundef %38)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %lor.lhs.false48
  %call54 = call i32 @SyLexRelease(ptr noundef %sLex)
  %call55 = call i32 @SySetRelease(ptr noundef %sToken)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end53, %if.then15, %if.then6, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonTokenize(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonDefaultDecoder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonDecode(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
