; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

@.str.621 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobNullAppend(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmPushFilePath(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormat(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetResetCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetGetNextEntry(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_StreamOpenHandle(ptr noundef %pVm, ptr noundef %pStream, ptr noundef %zFile, i32 noundef %iFlags, i32 noundef %use_include, ptr noundef %pResource, i32 noundef %bPushInclude, ptr noundef %pNew) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pStream.addr = alloca ptr, align 8
  %zFile.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %use_include.addr = alloca i32, align 4
  %pResource.addr = alloca ptr, align 8
  %bPushInclude.addr = alloca i32, align 4
  %pNew.addr = alloca ptr, align 8
  %pHandle = alloca ptr, align 8
  %sFile = alloca %struct.SyString, align 8
  %rc = alloca i32, align 4
  %pPath = alloca ptr, align 8
  %sWorker = alloca %struct.SyBlob, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pStream, ptr %pStream.addr, align 8
  store ptr %zFile, ptr %zFile.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store i32 %use_include, ptr %use_include.addr, align 4
  store ptr %pResource, ptr %pResource.addr, align 8
  store i32 %bPushInclude, ptr %bPushInclude.addr, align 4
  store ptr %pNew, ptr %pNew.addr, align 8
  store ptr null, ptr %pHandle, align 8
  %0 = load ptr, ptr %pStream.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zFile.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  store ptr %1, ptr %zString, align 8
  %2 = load ptr, ptr %zFile.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %2)
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 1
  store i32 %call, ptr %nByte, align 8
  %3 = load i32, ptr %use_include.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then1, label %if.else80

if.then1:                                         ; preds = %if.end
  %zString2 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  %4 = load ptr, ptr %zString2, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv, 47
  br i1 %cmp3, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then1
  %nByte5 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 1
  %6 = load i32, ptr %nByte5, align 8
  %cmp6 = icmp ugt i32 %6, 1
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false19

land.lhs.true:                                    ; preds = %lor.lhs.false
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  %7 = load ptr, ptr %zString8, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv10, 46
  br i1 %cmp11, label %land.lhs.true13, label %lor.lhs.false19

land.lhs.true13:                                  ; preds = %land.lhs.true
  %zString14 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  %9 = load ptr, ptr %zString14, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %10 to i32
  %cmp17 = icmp eq i32 %conv16, 47
  br i1 %cmp17, label %if.then41, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %land.lhs.true13, %land.lhs.true, %lor.lhs.false
  %nByte20 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 1
  %11 = load i32, ptr %nByte20, align 8
  %cmp21 = icmp ugt i32 %11, 2
  br i1 %cmp21, label %land.lhs.true23, label %if.else

land.lhs.true23:                                  ; preds = %lor.lhs.false19
  %zString24 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  %12 = load ptr, ptr %zString24, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %13 to i32
  %cmp27 = icmp eq i32 %conv26, 46
  br i1 %cmp27, label %land.lhs.true29, label %if.else

land.lhs.true29:                                  ; preds = %land.lhs.true23
  %zString30 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  %14 = load ptr, ptr %zString30, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %14, i64 1
  %15 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %15 to i32
  %cmp33 = icmp eq i32 %conv32, 46
  br i1 %cmp33, label %land.lhs.true35, label %if.else

land.lhs.true35:                                  ; preds = %land.lhs.true29
  %zString36 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  %16 = load ptr, ptr %zString36, align 8
  %arrayidx37 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx37, align 1
  %conv38 = sext i8 %17 to i32
  %cmp39 = icmp eq i32 %conv38, 47
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %land.lhs.true35, %land.lhs.true13, %if.then1
  %18 = load ptr, ptr %pStream.addr, align 8
  %xOpen = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %xOpen, align 8
  %20 = load ptr, ptr %zFile.addr, align 8
  %21 = load i32, ptr %iFlags.addr, align 4
  %22 = load ptr, ptr %pResource.addr, align 8
  %call42 = call i32 %19(ptr noundef %20, i32 noundef %21, ptr noundef %22, ptr noundef %pHandle)
  store i32 %call42, ptr %rc, align 4
  br label %if.end69

if.else:                                          ; preds = %land.lhs.true35, %land.lhs.true29, %land.lhs.true23, %lor.lhs.false19
  %23 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %23, i32 0, i32 0
  %call43 = call i32 @SyBlobInit(ptr noundef %sWorker, ptr noundef %sAllocator)
  %24 = load ptr, ptr %pVm.addr, align 8
  %aPaths = getelementptr inbounds nuw %struct.ph7_vm, ptr %24, i32 0, i32 20
  %call44 = call i32 @SySetResetCursor(ptr noundef %aPaths)
  store i32 -2, ptr %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end66, %if.then53, %if.else
  %25 = load ptr, ptr %pVm.addr, align 8
  %aPaths45 = getelementptr inbounds nuw %struct.ph7_vm, ptr %25, i32 0, i32 20
  %call46 = call i32 @SySetGetNextEntry(ptr noundef %aPaths45, ptr noundef %pPath)
  %cmp47 = icmp eq i32 0, %call46
  br i1 %cmp47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load ptr, ptr %pPath, align 8
  %call49 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %sWorker, ptr noundef @.str.621, ptr noundef %26, i32 noundef 47, ptr noundef %sFile)
  %call50 = call i32 @SyBlobNullAppend(ptr noundef %sWorker)
  %cmp51 = icmp ne i32 0, %call50
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !6

if.end54:                                         ; preds = %while.body
  %27 = load ptr, ptr %pStream.addr, align 8
  %xOpen55 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %xOpen55, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 1
  %29 = load ptr, ptr %pBlob, align 8
  %30 = load i32, ptr %iFlags.addr, align 4
  %31 = load ptr, ptr %pResource.addr, align 8
  %call56 = call i32 %28(ptr noundef %29, i32 noundef %30, ptr noundef %31, ptr noundef %pHandle)
  store i32 %call56, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp57 = icmp eq i32 %32, 0
  br i1 %cmp57, label %if.then59, label %if.end66

if.then59:                                        ; preds = %if.end54
  %33 = load i32, ptr %bPushInclude.addr, align 4
  %tobool60 = icmp ne i32 %33, 0
  br i1 %tobool60, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.then59
  %34 = load ptr, ptr %pVm.addr, align 8
  %pBlob62 = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 1
  %35 = load ptr, ptr %pBlob62, align 8
  %nByte63 = getelementptr inbounds nuw %struct.SyBlob, ptr %sWorker, i32 0, i32 2
  %36 = load i32, ptr %nByte63, align 8
  %37 = load ptr, ptr %pNew.addr, align 8
  %call64 = call i32 @PH7_VmPushFilePath(ptr noundef %34, ptr noundef %35, i32 noundef %36, i8 noundef zeroext 0, ptr noundef %37)
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.then59
  br label %while.end

if.end66:                                         ; preds = %if.end54
  %call67 = call i32 @SyBlobReset(ptr noundef %sWorker)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.end65, %while.cond
  %call68 = call i32 @SyBlobRelease(ptr noundef %sWorker)
  br label %if.end69

if.end69:                                         ; preds = %while.end, %if.then41
  %38 = load i32, ptr %rc, align 4
  %cmp70 = icmp eq i32 %38, 0
  br i1 %cmp70, label %if.then72, label %if.end79

if.then72:                                        ; preds = %if.end69
  %39 = load i32, ptr %bPushInclude.addr, align 4
  %tobool73 = icmp ne i32 %39, 0
  br i1 %tobool73, label %if.then74, label %if.end78

if.then74:                                        ; preds = %if.then72
  %40 = load ptr, ptr %pVm.addr, align 8
  %zString75 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  %41 = load ptr, ptr %zString75, align 8
  %nByte76 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 1
  %42 = load i32, ptr %nByte76, align 8
  %43 = load ptr, ptr %pNew.addr, align 8
  %call77 = call i32 @PH7_VmPushFilePath(ptr noundef %40, ptr noundef %41, i32 noundef %42, i8 noundef zeroext 0, ptr noundef %43)
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.then72
  br label %if.end79

if.end79:                                         ; preds = %if.end78, %if.end69
  br label %if.end83

if.else80:                                        ; preds = %if.end
  %44 = load ptr, ptr %pStream.addr, align 8
  %xOpen81 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %xOpen81, align 8
  %46 = load ptr, ptr %zFile.addr, align 8
  %47 = load i32, ptr %iFlags.addr, align 4
  %48 = load ptr, ptr %pResource.addr, align 8
  %call82 = call i32 %45(ptr noundef %46, i32 noundef %47, ptr noundef %48, ptr noundef %pHandle)
  store i32 %call82, ptr %rc, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.else80, %if.end79
  %49 = load i32, ptr %rc, align 4
  %cmp84 = icmp ne i32 %49, 0
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end83
  store ptr null, ptr %retval, align 8
  br label %return

if.end87:                                         ; preds = %if.end83
  %50 = load ptr, ptr %pHandle, align 8
  store ptr %50, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end87, %if.then86, %if.then
  %51 = load ptr, ptr %retval, align 8
  ret ptr %51
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
