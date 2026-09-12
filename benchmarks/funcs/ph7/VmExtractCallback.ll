; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.extract_aux_data = type { ptr, i32, ptr, i32, i32, [1024 x i8] }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.551 = external hidden unnamed_addr constant [10 x i8], align 1

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
define hidden i32 @VmExtractCallback(ptr noundef %pKey, ptr noundef %pValue, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pKey.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pAux = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %pVm = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %sVar = alloca %struct.SyString, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pAux, align 8
  %1 = load ptr, ptr %pAux, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %1, i32 0, i32 4
  %2 = load i32, ptr %iFlags1, align 4
  store i32 %2, ptr %iFlags, align 4
  %3 = load ptr, ptr %pAux, align 8
  %pVm2 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pVm2, align 8
  store ptr %4, ptr %pVm, align 8
  %5 = load i32, ptr %iFlags, align 4
  %and = and i32 %5, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %pKey.addr, align 8
  %iFlags3 = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %iFlags3, align 8
  %and4 = and i32 %7, 14
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i32, ptr %iFlags, align 4
  %or = or i32 %8, 8
  store i32 %or, ptr %iFlags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load ptr, ptr %pKey.addr, align 8
  %call = call i32 @PH7_MemObjToString(ptr noundef %9)
  %10 = load ptr, ptr %pKey.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %11 = load i32, ptr %nByte, align 8
  %cmp = icmp ult i32 %11, 1
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %nByte8 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 0, ptr %nByte8, align 8
  %12 = load i32, ptr %iFlags, align 4
  %and9 = and i32 %12, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %land.lhs.true11, label %if.else

land.lhs.true11:                                  ; preds = %if.end7
  %13 = load ptr, ptr %pAux, align 8
  %Prefixlen = getelementptr inbounds nuw %struct.extract_aux_data, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %Prefixlen, align 8
  %cmp12 = icmp sgt i32 %14, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %land.lhs.true11
  %15 = load ptr, ptr %pAux, align 8
  %zWorker = getelementptr inbounds nuw %struct.extract_aux_data, ptr %15, i32 0, i32 5
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %zWorker, i64 0, i64 0
  %16 = load ptr, ptr %pAux, align 8
  %Prefixlen14 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %Prefixlen14, align 8
  %18 = load ptr, ptr %pAux, align 8
  %zPrefix = getelementptr inbounds nuw %struct.extract_aux_data, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %zPrefix, align 8
  %20 = load ptr, ptr %pKey.addr, align 8
  %sBlob15 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 4
  %nByte16 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob15, i32 0, i32 2
  %21 = load i32, ptr %nByte16, align 8
  %22 = load ptr, ptr %pKey.addr, align 8
  %sBlob17 = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob17, i32 0, i32 1
  %23 = load ptr, ptr %pBlob, align 8
  %call18 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %arraydecay, i32 noundef 1024, ptr noundef @.str.551, i32 noundef %17, ptr noundef %19, i32 noundef %21, ptr noundef %23)
  %nByte19 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 %call18, ptr %nByte19, align 8
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true11, %if.end7
  %24 = load ptr, ptr %pKey.addr, align 8
  %sBlob20 = getelementptr inbounds nuw %struct.ph7_value, ptr %24, i32 0, i32 4
  %pBlob21 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob20, i32 0, i32 1
  %25 = load ptr, ptr %pBlob21, align 8
  %26 = load ptr, ptr %pAux, align 8
  %zWorker22 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %26, i32 0, i32 5
  %arraydecay23 = getelementptr inbounds [1024 x i8], ptr %zWorker22, i64 0, i64 0
  %27 = load ptr, ptr %pKey.addr, align 8
  %sBlob24 = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 4
  %nByte25 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob24, i32 0, i32 2
  %28 = load i32, ptr %nByte25, align 8
  %conv = zext i32 %28 to i64
  %cmp26 = icmp ult i64 %conv, 1024
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %29 = load ptr, ptr %pKey.addr, align 8
  %sBlob28 = getelementptr inbounds nuw %struct.ph7_value, ptr %29, i32 0, i32 4
  %nByte29 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob28, i32 0, i32 2
  %30 = load i32, ptr %nByte29, align 8
  %conv30 = zext i32 %30 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv30, %cond.true ], [ 1024, %cond.false ]
  %conv31 = trunc i64 %cond to i32
  %call32 = call i32 @SyMemcpy(ptr noundef %25, ptr noundef %arraydecay23, i32 noundef %conv31)
  %nByte33 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 %call32, ptr %nByte33, align 8
  br label %if.end34

if.end34:                                         ; preds = %cond.end, %if.then13
  %31 = load ptr, ptr %pAux, align 8
  %zWorker35 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %31, i32 0, i32 5
  %arraydecay36 = getelementptr inbounds [1024 x i8], ptr %zWorker35, i64 0, i64 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 0
  store ptr %arraydecay36, ptr %zString, align 8
  %32 = load ptr, ptr %pVm, align 8
  %call37 = call ptr @VmExtractMemObj(ptr noundef %32, ptr noundef %sVar, i32 noundef 1, i32 noundef 0)
  store ptr %call37, ptr %pObj, align 8
  %33 = load ptr, ptr %pObj, align 8
  %tobool38 = icmp ne ptr %33, null
  br i1 %tobool38, label %if.then39, label %if.else66

if.then39:                                        ; preds = %if.end34
  %34 = load i32, ptr %iFlags, align 4
  %and40 = and i32 %34, 2
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.then39
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.then39
  %35 = load i32, ptr %iFlags, align 4
  %and44 = and i32 %35, 4
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.end65

if.then46:                                        ; preds = %if.end43
  %36 = load i32, ptr %iFlags, align 4
  %and47 = and i32 %36, 8
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then46
  %37 = load ptr, ptr %pAux, align 8
  %Prefixlen49 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %37, i32 0, i32 3
  %38 = load i32, ptr %Prefixlen49, align 8
  %cmp50 = icmp slt i32 %38, 1
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %lor.lhs.false, %if.then46
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %lor.lhs.false
  %39 = load ptr, ptr %pAux, align 8
  %zWorker54 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %39, i32 0, i32 5
  %arraydecay55 = getelementptr inbounds [1024 x i8], ptr %zWorker54, i64 0, i64 0
  %40 = load ptr, ptr %pAux, align 8
  %Prefixlen56 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %Prefixlen56, align 8
  %42 = load ptr, ptr %pAux, align 8
  %zPrefix57 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %zPrefix57, align 8
  %44 = load ptr, ptr %pKey.addr, align 8
  %sBlob58 = getelementptr inbounds nuw %struct.ph7_value, ptr %44, i32 0, i32 4
  %nByte59 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob58, i32 0, i32 2
  %45 = load i32, ptr %nByte59, align 8
  %46 = load ptr, ptr %pKey.addr, align 8
  %sBlob60 = getelementptr inbounds nuw %struct.ph7_value, ptr %46, i32 0, i32 4
  %pBlob61 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob60, i32 0, i32 1
  %47 = load ptr, ptr %pBlob61, align 8
  %call62 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %arraydecay55, i32 noundef 1024, ptr noundef @.str.551, i32 noundef %41, ptr noundef %43, i32 noundef %45, ptr noundef %47)
  %nByte63 = getelementptr inbounds nuw %struct.SyString, ptr %sVar, i32 0, i32 1
  store i32 %call62, ptr %nByte63, align 8
  %48 = load ptr, ptr %pVm, align 8
  %call64 = call ptr @VmExtractMemObj(ptr noundef %48, ptr noundef %sVar, i32 noundef 1, i32 noundef 1)
  store ptr %call64, ptr %pObj, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.end53, %if.end43
  br label %if.end68

if.else66:                                        ; preds = %if.end34
  %49 = load ptr, ptr %pVm, align 8
  %call67 = call ptr @VmExtractMemObj(ptr noundef %49, ptr noundef %sVar, i32 noundef 1, i32 noundef 1)
  store ptr %call67, ptr %pObj, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.end65
  %50 = load ptr, ptr %pObj, align 8
  %tobool69 = icmp ne ptr %50, null
  br i1 %tobool69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end68
  %51 = load ptr, ptr %pValue.addr, align 8
  %52 = load ptr, ptr %pObj, align 8
  %call71 = call i32 @PH7_MemObjStore(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %pAux, align 8
  %iCount = getelementptr inbounds nuw %struct.extract_aux_data, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %iCount, align 8
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %iCount, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end68
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.then52, %if.then42, %if.then6
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
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
