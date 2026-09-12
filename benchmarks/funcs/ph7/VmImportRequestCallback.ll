; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.extract_aux_data = type { ptr, i32, ptr, i32, i32, [1024 x i8] }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.556 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractMemObj(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBufferFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmImportRequestCallback(ptr noundef %pKey, ptr noundef %pValue, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pAux = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %sVar = alloca %struct.SyString, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pAux, align 8
  %1 = load ptr, ptr %pAux, align 8
  %pVm1 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVm1, align 8
  store ptr %2, ptr %pVm, align 8
  %3 = load ptr, ptr %pKey.addr, align 8
  %call = call i32 @PH7_MemObjToString(ptr noundef %3)
  %4 = load ptr, ptr %pKey.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %5 = load i32, ptr %nByte, align 8
  %cmp = icmp ult i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %nByte2 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 0, ptr %nByte2, align 8
  %6 = load ptr, ptr %pAux, align 8
  %Prefixlen = getelementptr inbounds nuw %struct.extract_aux_data, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %Prefixlen, align 8
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pAux, align 8
  %zWorker = getelementptr inbounds nuw %struct.extract_aux_data, ptr %8, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  %9 = load ptr, ptr %pAux, align 8
  %Prefixlen5 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %Prefixlen5, align 8
  %11 = load ptr, ptr %pAux, align 8
  %zPrefix = getelementptr inbounds nuw %struct.extract_aux_data, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %zPrefix, align 8
  %13 = load ptr, ptr %pKey.addr, align 8
  %sBlob6 = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 4
  %nByte7 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob6, i32 0, i32 2
  %14 = load i32, ptr %nByte7, align 8
  %15 = load ptr, ptr %pKey.addr, align 8
  %sBlob8 = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob8, i32 0, i32 1
  %16 = load ptr, ptr %pBlob, align 8
  %call9 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef @.str.556, i32 noundef %10, ptr noundef %12, i32 noundef %14, ptr noundef %16)
  %nByte10 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 %call9, ptr %nByte10, align 8
  br label %if.end25

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %pKey.addr, align 8
  %sBlob11 = getelementptr inbounds nuw %struct.ph7_value, ptr %17, i32 0, i32 4
  %pBlob12 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob11, i32 0, i32 1
  %18 = load ptr, ptr %pBlob12, align 8
  %19 = load ptr, ptr %pAux, align 8
  %zWorker13 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %19, i32 0, i32 5
  %arraydecay14 = getelementptr inbounds [1024 x i8], ptr %zWorker13, i64 0, i64 0
  %20 = load ptr, ptr %pKey.addr, align 8
  %sBlob15 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 4
  %nByte16 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob15, i32 0, i32 2
  %21 = load i32, ptr %nByte16, align 8
  %conv = zext i32 %21 to i64
  %cmp17 = icmp ult i64 %conv, 1024
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %22 = load ptr, ptr %pKey.addr, align 8
  %sBlob19 = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 4
  %nByte20 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob19, i32 0, i32 2
  %23 = load i32, ptr %nByte20, align 8
  %conv21 = zext i32 %23 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv21, %cond.true ], [ 1024, %cond.false ]
  %conv22 = trunc i64 %cond to i32
  %call23 = call i32 @SyMemcpy(ptr noundef %18, ptr noundef %arraydecay14, i32 noundef %conv22)
  %nByte24 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 %call23, ptr %nByte24, align 8
  br label %if.end25

if.end25:                                         ; preds = %cond.end, %if.then4
  %24 = load ptr, ptr %pAux, align 8
  %zWorker26 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %24, i32 0, i32 5
  %arraydecay27 = getelementptr inbounds [1024 x i8], ptr %zWorker26, i64 0, i64 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 0
  store ptr %arraydecay27, ptr %zString, align 8
  %25 = load ptr, ptr %pVm, align 8
  %call28 = call ptr @VmExtractMemObj(ptr noundef %25, ptr noundef %sVar, i32 noundef 1, i32 noundef 1)
  store ptr %call28, ptr %pObj, align 8
  %26 = load ptr, ptr %pObj, align 8
  %tobool = icmp ne ptr %26, null
  br i1 %tobool, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  %27 = load ptr, ptr %pValue.addr, align 8
  %28 = load ptr, ptr %pObj, align 8
  %call30 = call i32 @PH7_MemObjStore(ptr noundef %27, ptr noundef %28)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end31, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
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
