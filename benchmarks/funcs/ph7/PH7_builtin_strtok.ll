; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.strtok_aux_data = type { ptr, ptr, ptr }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.999 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_alloc_chunk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @ph7_context_free_chunk(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_push_aux_data(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_peek_aux_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_pop_aux_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_strtok(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pAux = alloca ptr, align 8
  %zMask = alloca ptr, align 8
  %sToken = alloca %struct.SyString, align 8
  %nMasklen = alloca i32, align 4
  %rc = alloca i32, align 4
  %zInput = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %zDup22 = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else21

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @ph7_context_peek_aux_data(ptr noundef %1)
  store ptr %call, ptr %pAux, align 8
  %2 = load ptr, ptr %pAux, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, ptr %nMasklen, align 4
  store ptr @.str.4, ptr %zMask, align 8
  %4 = load i32, ptr %nArg.addr, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8
  %call6 = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %nMasklen)
  store ptr %call6, ptr %zMask, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %7 = load i32, ptr %nMasklen, align 4
  %cmp8 = icmp slt i32 %7, 1
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %8 = load ptr, ptr %pCtx.addr, align 8
  %9 = load ptr, ptr %pAux, align 8
  %zDup = getelementptr inbounds nuw %struct.strtok_aux_data, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zDup, align 8
  call void @ph7_context_free_chunk(ptr noundef %8, ptr noundef %10)
  %11 = load ptr, ptr %pCtx.addr, align 8
  %12 = load ptr, ptr %pAux, align 8
  call void @ph7_context_free_chunk(ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call ptr @ph7_context_pop_aux_data(ptr noundef %13)
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_bool(ptr noundef %14, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %15 = load ptr, ptr %pAux, align 8
  %zIn = getelementptr inbounds nuw %struct.strtok_aux_data, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pAux, align 8
  %zEnd = getelementptr inbounds nuw %struct.strtok_aux_data, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %zEnd, align 8
  %18 = load ptr, ptr %zMask, align 8
  %19 = load i32, ptr %nMasklen, align 4
  %call13 = call i32 @ExtractToken(ptr noundef %zIn, ptr noundef %17, ptr noundef %18, i32 noundef %19, ptr noundef %sToken)
  store i32 %call13, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %20, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load ptr, ptr %pAux, align 8
  %zDup16 = getelementptr inbounds nuw %struct.strtok_aux_data, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zDup16, align 8
  call void @ph7_context_free_chunk(ptr noundef %21, ptr noundef %23)
  %24 = load ptr, ptr %pCtx.addr, align 8
  %25 = load ptr, ptr %pAux, align 8
  call void @ph7_context_free_chunk(ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %pCtx.addr, align 8
  %call17 = call ptr @ph7_context_pop_aux_data(ptr noundef %26)
  %27 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_bool(ptr noundef %27, i32 noundef 0)
  br label %if.end20

if.else:                                          ; preds = %if.end12
  %28 = load ptr, ptr %pCtx.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %29 = load ptr, ptr %zString, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %30 = load i32, ptr %nByte, align 8
  %call19 = call i32 @ph7_result_string(ptr noundef %28, ptr noundef %29, i32 noundef %30)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  br label %if.end62

if.else21:                                        ; preds = %entry
  %31 = load ptr, ptr %apArg.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %31, i64 0
  %32 = load ptr, ptr %arrayidx23, align 8
  %call24 = call ptr @ph7_value_to_string(ptr noundef %32, ptr noundef %nLen)
  store ptr %call24, ptr %zInput, align 8
  store ptr %call24, ptr %zCur, align 8
  %33 = load i32, ptr %nLen, align 4
  %cmp25 = icmp slt i32 %33, 1
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.else21
  %34 = load ptr, ptr %pCtx.addr, align 8
  %call27 = call i32 @ph7_result_bool(ptr noundef %34, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.else21
  %35 = load ptr, ptr %apArg.addr, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %35, i64 1
  %36 = load ptr, ptr %arrayidx29, align 8
  %call30 = call ptr @ph7_value_to_string(ptr noundef %36, ptr noundef %nMasklen)
  store ptr %call30, ptr %zMask, align 8
  %37 = load i32, ptr %nMasklen, align 4
  %cmp31 = icmp slt i32 %37, 1
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store ptr @.str.999, ptr %zMask, align 8
  store i32 5, ptr %nMasklen, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %38 = load ptr, ptr %zInput, align 8
  %39 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %38, i64 %idxprom
  %40 = load ptr, ptr %zMask, align 8
  %41 = load i32, ptr %nMasklen, align 4
  %call35 = call i32 @ExtractToken(ptr noundef %zInput, ptr noundef %arrayidx34, ptr noundef %40, i32 noundef %41, ptr noundef %sToken)
  store i32 %call35, ptr %rc, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp36 = icmp ne i32 %42, 0
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %if.end33
  %43 = load ptr, ptr %pCtx.addr, align 8
  %call38 = call i32 @ph7_result_bool(ptr noundef %43, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.else39:                                        ; preds = %if.end33
  %44 = load ptr, ptr %pCtx.addr, align 8
  %zString40 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 0
  %45 = load ptr, ptr %zString40, align 8
  %nByte41 = getelementptr inbounds nuw %struct.SyString, ptr %sToken, i32 0, i32 1
  %46 = load i32, ptr %nByte41, align 8
  %call42 = call i32 @ph7_result_string(ptr noundef %44, ptr noundef %45, i32 noundef %46)
  br label %if.end43

if.end43:                                         ; preds = %if.else39
  %47 = load ptr, ptr %pCtx.addr, align 8
  %call44 = call ptr @ph7_context_alloc_chunk(ptr noundef %47, i32 noundef 24, i32 noundef 1, i32 noundef 0)
  store ptr %call44, ptr %pAux, align 8
  %48 = load ptr, ptr %pAux, align 8
  %tobool = icmp ne ptr %48, null
  br i1 %tobool, label %if.then45, label %if.end61

if.then45:                                        ; preds = %if.end43
  %49 = load ptr, ptr %zInput, align 8
  %50 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %49 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %51 = load i32, ptr %nLen, align 4
  %sub = sub nsw i32 %51, %conv
  store i32 %sub, ptr %nLen, align 4
  %52 = load i32, ptr %nLen, align 4
  %cmp46 = icmp slt i32 %52, 1
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.then45
  %53 = load ptr, ptr %pCtx.addr, align 8
  %54 = load ptr, ptr %pAux, align 8
  call void @ph7_context_free_chunk(ptr noundef %53, ptr noundef %54)
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then45
  %55 = load ptr, ptr %pCtx.addr, align 8
  %56 = load i32, ptr %nLen, align 4
  %add = add nsw i32 %56, 1
  %call50 = call ptr @ph7_context_alloc_chunk(ptr noundef %55, i32 noundef %add, i32 noundef 1, i32 noundef 0)
  store ptr %call50, ptr %zDup22, align 8
  %57 = load ptr, ptr %zDup22, align 8
  %tobool51 = icmp ne ptr %57, null
  br i1 %tobool51, label %if.then52, label %if.end60

if.then52:                                        ; preds = %if.end49
  %58 = load ptr, ptr %zInput, align 8
  %59 = load ptr, ptr %zDup22, align 8
  %60 = load i32, ptr %nLen, align 4
  %call53 = call i32 @SyMemcpy(ptr noundef %58, ptr noundef %59, i32 noundef %60)
  %61 = load ptr, ptr %zDup22, align 8
  %62 = load ptr, ptr %pAux, align 8
  %zIn54 = getelementptr inbounds nuw %struct.strtok_aux_data, ptr %62, i32 0, i32 1
  store ptr %61, ptr %zIn54, align 8
  %63 = load ptr, ptr %pAux, align 8
  %zDup55 = getelementptr inbounds nuw %struct.strtok_aux_data, ptr %63, i32 0, i32 0
  store ptr %61, ptr %zDup55, align 8
  %64 = load ptr, ptr %zDup22, align 8
  %65 = load i32, ptr %nLen, align 4
  %idxprom56 = sext i32 %65 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %64, i64 %idxprom56
  %66 = load ptr, ptr %pAux, align 8
  %zEnd58 = getelementptr inbounds nuw %struct.strtok_aux_data, ptr %66, i32 0, i32 2
  store ptr %arrayidx57, ptr %zEnd58, align 8
  %67 = load ptr, ptr %pCtx.addr, align 8
  %68 = load ptr, ptr %pAux, align 8
  %call59 = call i32 @ph7_context_push_aux_data(ptr noundef %67, ptr noundef %68)
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %if.end49
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end43
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end20
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end62, %if.then48, %if.then37, %if.then26, %if.then9, %if.then2
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ExtractToken(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
