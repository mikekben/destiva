; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.str_replace_data = type { ptr, ptr, ptr, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.927 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_walk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetResetCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetGetNextEntry(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_str_replace(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sTemp = alloca %struct.SyString, align 8
  %pSearch = alloca ptr, align 8
  %pReplace = alloca ptr, align 8
  %xMatch = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zFunc = alloca ptr, align 8
  %sRep = alloca %struct.str_replace_data, align 8
  %sWorker = alloca %struct.SyBlob, align 8
  %sReplace = alloca %struct.SySet, align 8
  %sSearch = alloca %struct.SySet, align 8
  %rep_str = alloca i32, align 4
  %nByte = alloca i32, align 4
  %rc = alloca i32, align 4
  %nCount = alloca i32, align 4
  %nOfft = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 0
  %call1 = call i32 @SySetInit(ptr noundef %sSearch, ptr noundef %sAllocator, i32 noundef 16)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_context, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pVm2, align 8
  %sAllocator3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 0
  %call4 = call i32 @SySetInit(ptr noundef %sReplace, ptr noundef %sAllocator3, i32 noundef 16)
  %6 = load ptr, ptr %pCtx.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_context, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pVm5, align 8
  %sAllocator6 = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 0
  %call7 = call i32 @SyBlobInit(ptr noundef %sWorker, ptr noundef %sAllocator6)
  call void @SyZero(ptr noundef %sRep, i32 noundef 32)
  %8 = load ptr, ptr %pCtx.addr, align 8
  %pCtx8 = getelementptr inbounds nuw %struct.str_replace_data, ptr %sRep, i32 0, i32 3
  store ptr %8, ptr %pCtx8, align 8
  %pCollector = getelementptr inbounds nuw %struct.str_replace_data, ptr %sRep, i32 0, i32 2
  store ptr %sSearch, ptr %pCollector, align 8
  store i32 0, ptr %rep_str, align 4
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 2
  %10 = load ptr, ptr %arrayidx, align 8
  %call9 = call ptr @ph7_value_to_string(ptr noundef %10, ptr noundef %nByte)
  store ptr %call9, ptr %zIn, align 8
  %11 = load i32, ptr %nByte, align 4
  %cmp10 = icmp slt i32 %11, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_result_string(ptr noundef %12, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %13 = load ptr, ptr %zIn, align 8
  %14 = load i32, ptr %nByte, align 4
  %call14 = call i32 @SyBlobAppend(ptr noundef %sWorker, ptr noundef %13, i32 noundef %14)
  %15 = load ptr, ptr %apArg.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @ph7_value_is_array(ptr noundef %16)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end13
  %17 = load ptr, ptr %apArg.addr, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %17, i64 0
  %18 = load ptr, ptr %arrayidx18, align 8
  %call19 = call i32 @ph7_array_walk(ptr noundef %18, ptr noundef @StrReplaceWalker, ptr noundef %sRep)
  br label %if.end29

if.else:                                          ; preds = %if.end13
  %19 = load ptr, ptr %apArg.addr, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %19, i64 0
  %20 = load ptr, ptr %arrayidx20, align 8
  %call21 = call ptr @ph7_value_to_string(ptr noundef %20, ptr noundef %nByte)
  store ptr %call21, ptr %zIn, align 8
  %21 = load i32, ptr %nByte, align 4
  %cmp22 = icmp slt i32 %21, 1
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.else
  %22 = load ptr, ptr %pCtx.addr, align 8
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %23, i64 2
  %24 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 @ph7_result_value(ptr noundef %22, ptr noundef %24)
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.else
  %25 = load ptr, ptr %zIn, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sTemp, i32 0, i32 0
  store ptr %25, ptr %zString, align 8
  %26 = load i32, ptr %nByte, align 4
  %nByte27 = getelementptr inbounds nuw %struct.SyString, ptr %sTemp, i32 0, i32 1
  store i32 %26, ptr %nByte27, align 8
  %call28 = call i32 @SySetPut(ptr noundef %sSearch, ptr noundef %sTemp)
  br label %if.end29

if.end29:                                         ; preds = %if.end26, %if.then17
  %27 = load ptr, ptr %apArg.addr, align 8
  %arrayidx30 = getelementptr inbounds ptr, ptr %27, i64 1
  %28 = load ptr, ptr %arrayidx30, align 8
  %call31 = call i32 @ph7_value_is_array(ptr noundef %28)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.end29
  %pCollector34 = getelementptr inbounds nuw %struct.str_replace_data, ptr %sRep, i32 0, i32 2
  store ptr %sReplace, ptr %pCollector34, align 8
  %29 = load ptr, ptr %apArg.addr, align 8
  %arrayidx35 = getelementptr inbounds ptr, ptr %29, i64 1
  %30 = load ptr, ptr %arrayidx35, align 8
  %call36 = call i32 @ph7_array_walk(ptr noundef %30, ptr noundef @StrReplaceWalker, ptr noundef %sRep)
  br label %if.end43

if.else37:                                        ; preds = %if.end29
  %31 = load ptr, ptr %apArg.addr, align 8
  %arrayidx38 = getelementptr inbounds ptr, ptr %31, i64 1
  %32 = load ptr, ptr %arrayidx38, align 8
  %call39 = call ptr @ph7_value_to_string(ptr noundef %32, ptr noundef %nByte)
  store ptr %call39, ptr %zIn, align 8
  store i32 1, ptr %rep_str, align 4
  %33 = load ptr, ptr %zIn, align 8
  %zString40 = getelementptr inbounds nuw %struct.SyString, ptr %sTemp, i32 0, i32 0
  store ptr %33, ptr %zString40, align 8
  %34 = load i32, ptr %nByte, align 4
  %nByte41 = getelementptr inbounds nuw %struct.SyString, ptr %sTemp, i32 0, i32 1
  store i32 %34, ptr %nByte41, align 8
  %call42 = call i32 @SySetPut(ptr noundef %sReplace, ptr noundef %sTemp)
  br label %if.end43

if.end43:                                         ; preds = %if.else37, %if.then33
  %call44 = call i32 @SySetResetCursor(ptr noundef %sSearch)
  %call45 = call i32 @SySetResetCursor(ptr noundef %sReplace)
  store ptr null, ptr %pSearch, align 8
  store ptr null, ptr %pReplace, align 8
  %zString46 = getelementptr inbounds nuw %struct.SyString, ptr %sTemp, i32 0, i32 0
  store ptr @.str.4, ptr %zString46, align 8
  %nByte47 = getelementptr inbounds nuw %struct.SyString, ptr %sTemp, i32 0, i32 1
  store i32 0, ptr %nByte47, align 8
  %35 = load ptr, ptr %pCtx.addr, align 8
  %call48 = call ptr @ph7_function_name(ptr noundef %35)
  store ptr %call48, ptr %zFunc, align 8
  store ptr @SyBlobSearch, ptr %xMatch, align 8
  %36 = load ptr, ptr %zFunc, align 8
  %call49 = call i32 @SyStrncmp(ptr noundef %36, ptr noundef @.str.927, i32 noundef 12)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end43
  store ptr @iPatternMatch, ptr %xMatch, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end43
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then57, %if.end52
  %call53 = call i32 @SySetGetNextEntry(ptr noundef %sSearch, ptr noundef %pSearch)
  %cmp54 = icmp eq i32 0, %call53
  br i1 %cmp54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load ptr, ptr %pSearch, align 8
  %nByte55 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte55, align 8
  %cmp56 = icmp ult i32 %38, 1
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !6

if.end58:                                         ; preds = %while.body
  %39 = load i32, ptr %rep_str, align 4
  %tobool59 = icmp ne i32 %39, 0
  br i1 %tobool59, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.end58
  %call61 = call ptr @SySetPeek(ptr noundef %sReplace)
  store ptr %call61, ptr %pReplace, align 8
  br label %if.end67

if.else62:                                        ; preds = %if.end58
  %call63 = call i32 @SySetGetNextEntry(ptr noundef %sReplace, ptr noundef %pReplace)
  %cmp64 = icmp ne i32 0, %call63
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.else62
  store ptr null, ptr %pReplace, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.else62
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then60
  %40 = load ptr, ptr %pReplace, align 8
  %cmp68 = icmp eq ptr %40, null
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end67
  store ptr %sTemp, ptr %pReplace, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67
  store i32 0, ptr %nCount, align 4
  store i32 0, ptr %nOfft, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end82, %if.end70
  %41 = load i32, ptr %nCount, align 4
  %nByte71 = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 2
  %42 = load i32, ptr %nByte71, align 8
  %cmp72 = icmp uge i32 %41, %42
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.cond
  br label %for.end

if.end74:                                         ; preds = %for.cond
  %43 = load ptr, ptr %xMatch, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 1
  %44 = load ptr, ptr %pBlob, align 8
  %45 = load i32, ptr %nCount, align 4
  %idxprom = zext i32 %45 to i64
  %arrayidx75 = getelementptr inbounds nuw i8, ptr %44, i64 %idxprom
  %nByte76 = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 2
  %46 = load i32, ptr %nByte76, align 8
  %47 = load i32, ptr %nCount, align 4
  %sub = sub i32 %46, %47
  %48 = load ptr, ptr %pSearch, align 8
  %zString77 = getelementptr inbounds nuw %struct.SyString, ptr %48, i32 0, i32 0
  %49 = load ptr, ptr %zString77, align 8
  %50 = load ptr, ptr %pSearch, align 8
  %nByte78 = getelementptr inbounds nuw %struct.SyString, ptr %50, i32 0, i32 1
  %51 = load i32, ptr %nByte78, align 8
  %call79 = call i32 %43(ptr noundef %arrayidx75, i32 noundef %sub, ptr noundef %49, i32 noundef %51, ptr noundef %nOfft)
  store i32 %call79, ptr %rc, align 4
  %52 = load i32, ptr %rc, align 4
  %cmp80 = icmp ne i32 %52, 0
  br i1 %cmp80, label %if.then81, label %if.end82

if.then81:                                        ; preds = %if.end74
  br label %for.end

if.end82:                                         ; preds = %if.end74
  %53 = load i32, ptr %nCount, align 4
  %54 = load i32, ptr %nOfft, align 4
  %add = add i32 %53, %54
  %55 = load ptr, ptr %pSearch, align 8
  %nByte83 = getelementptr inbounds nuw %struct.SyString, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %nByte83, align 8
  %57 = load ptr, ptr %pReplace, align 8
  %zString84 = getelementptr inbounds nuw %struct.SyString, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %zString84, align 8
  %59 = load ptr, ptr %pReplace, align 8
  %nByte85 = getelementptr inbounds nuw %struct.SyString, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %nByte85, align 8
  %call86 = call i32 @StringReplace(ptr noundef %sWorker, i32 noundef %add, i32 noundef %56, ptr noundef %58, i32 noundef %60)
  %61 = load i32, ptr %nOfft, align 4
  %62 = load ptr, ptr %pReplace, align 8
  %nByte87 = getelementptr inbounds nuw %struct.SyString, ptr %62, i32 0, i32 1
  %63 = load i32, ptr %nByte87, align 8
  %add88 = add i32 %61, %63
  %64 = load i32, ptr %nCount, align 4
  %add89 = add i32 %64, %add88
  store i32 %add89, ptr %nCount, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then81, %if.then73
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %65 = load ptr, ptr %pCtx.addr, align 8
  %pBlob90 = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 1
  %66 = load ptr, ptr %pBlob90, align 8
  %nByte91 = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 2
  %67 = load i32, ptr %nByte91, align 8
  %call92 = call i32 @ph7_result_string(ptr noundef %65, ptr noundef %66, i32 noundef %67)
  %call93 = call i32 @SySetRelease(ptr noundef %sSearch)
  %call94 = call i32 @SySetRelease(ptr noundef %sReplace)
  %call95 = call i32 @SyBlobRelease(ptr noundef %sWorker)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then23, %if.then11, %if.then
  %68 = load i32, ptr %retval, align 4
  ret i32 %68
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrncmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobSearch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @iPatternMatch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @StrReplaceWalker(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @StringReplace(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

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
