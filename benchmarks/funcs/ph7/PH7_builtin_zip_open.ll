; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }
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
%struct.ph7_vfs = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zip_raw_data = type { i32, %union.raw_data }
%union.raw_data = type { %struct.SyBlob }
%struct.mmap_data = type { ptr, i64, ptr }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.1224 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.1225 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.1226 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_resource(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_alloc_chunk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @ph7_context_free_chunk(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ExportBuiltinVfs() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetStreamDevice(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_StreamOpenHandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_StreamReadWholeFile(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_StreamCloseHandle(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_zip_open(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %pArchive = alloca ptr, align 8
  %pRaw = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %pContents = alloca ptr, align 8
  %pHandle = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %rc = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 2, ptr noundef @.str.1224)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %nLen)
  store ptr %call4, ptr %zFile, align 8
  %7 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pVm, align 8
  %9 = load i32, ptr %nLen, align 4
  %call5 = call ptr @PH7_VmGetStreamDevice(ptr noundef %8, ptr noundef %zFile, i32 noundef %9)
  store ptr %call5, ptr %pStream, align 8
  %10 = load ptr, ptr %pStream, align 8
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call i32 @ph7_context_throw_error(ptr noundef %11, i32 noundef 2, ptr noundef @.str.1225)
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_bool(ptr noundef %12, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call ptr @ph7_context_alloc_chunk(ptr noundef %13, i32 noundef 128, i32 noundef 1, i32 noundef 0)
  store ptr %call11, ptr %pArchive, align 8
  %14 = load ptr, ptr %pArchive, align 8
  %cmp12 = icmp eq ptr %14, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_context_throw_error(ptr noundef %15, i32 noundef 2, ptr noundef @.str.536)
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %17 = load ptr, ptr %pArchive, align 8
  %arrayidx17 = getelementptr inbounds %struct.SyArchive, ptr %17, i64 1
  store ptr %arrayidx17, ptr %pRaw, align 8
  %18 = load ptr, ptr %pArchive, align 8
  %19 = load ptr, ptr %pCtx.addr, align 8
  %pVm18 = getelementptr inbounds nuw %struct.ph7_context, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %pVm18, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %20, i32 0, i32 0
  %call19 = call i32 @SyArchiveInit(ptr noundef %18, ptr noundef %sAllocator, ptr noundef null, ptr noundef null)
  %21 = load ptr, ptr %pStream, align 8
  %22 = load ptr, ptr %pCtx.addr, align 8
  %pVm20 = getelementptr inbounds nuw %struct.ph7_context, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %pVm20, align 8
  %pDefStream = getelementptr inbounds nuw %struct.ph7_vm, ptr %23, i32 0, i32 26
  %24 = load ptr, ptr %pDefStream, align 8
  %cmp21 = icmp eq ptr %21, %24
  br i1 %cmp21, label %if.then22, label %if.end54

if.then22:                                        ; preds = %if.end16
  %call23 = call ptr @PH7_ExportBuiltinVfs()
  store ptr %call23, ptr %pVfs, align 8
  %25 = load ptr, ptr %pVfs, align 8
  %tobool24 = icmp ne ptr %25, null
  br i1 %tobool24, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.then22
  %26 = load ptr, ptr %pVfs, align 8
  %xMmap = getelementptr inbounds nuw %struct.ph7_vfs, ptr %26, i32 0, i32 33
  %27 = load ptr, ptr %xMmap, align 8
  %tobool25 = icmp ne ptr %27, null
  br i1 %tobool25, label %if.then26, label %if.end53

if.then26:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %pVfs, align 8
  %xMmap27 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %28, i32 0, i32 33
  %29 = load ptr, ptr %xMmap27, align 8
  %30 = load ptr, ptr %zFile, align 8
  %31 = load ptr, ptr %pRaw, align 8
  %raw = getelementptr inbounds nuw %struct.zip_raw_data, ptr %31, i32 0, i32 1
  %pMap = getelementptr inbounds nuw %struct.mmap_data, ptr %raw, i32 0, i32 0
  %32 = load ptr, ptr %pRaw, align 8
  %raw28 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %32, i32 0, i32 1
  %nSize = getelementptr inbounds nuw %struct.mmap_data, ptr %raw28, i32 0, i32 1
  %call29 = call i32 %29(ptr noundef %30, ptr noundef %pMap, ptr noundef %nSize)
  store i32 %call29, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %33, 0
  br i1 %cmp30, label %if.then31, label %if.end52

if.then31:                                        ; preds = %if.then26
  %34 = load ptr, ptr %pArchive, align 8
  %35 = load ptr, ptr %pRaw, align 8
  %raw32 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %35, i32 0, i32 1
  %pMap33 = getelementptr inbounds nuw %struct.mmap_data, ptr %raw32, i32 0, i32 0
  %36 = load ptr, ptr %pMap33, align 8
  %37 = load ptr, ptr %pRaw, align 8
  %raw34 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %37, i32 0, i32 1
  %nSize35 = getelementptr inbounds nuw %struct.mmap_data, ptr %raw34, i32 0, i32 1
  %38 = load i64, ptr %nSize35, align 8
  %conv = trunc i64 %38 to i32
  %call36 = call i32 @SyZipExtractFromBuf(ptr noundef %34, ptr noundef %36, i32 noundef %conv)
  store i32 %call36, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %cmp37 = icmp ne i32 %39, 0
  br i1 %cmp37, label %if.then39, label %if.end49

if.then39:                                        ; preds = %if.then31
  %40 = load ptr, ptr %pVfs, align 8
  %xUnmap = getelementptr inbounds nuw %struct.ph7_vfs, ptr %40, i32 0, i32 34
  %41 = load ptr, ptr %xUnmap, align 8
  %tobool40 = icmp ne ptr %41, null
  br i1 %tobool40, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.then39
  %42 = load ptr, ptr %pVfs, align 8
  %xUnmap42 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %42, i32 0, i32 34
  %43 = load ptr, ptr %xUnmap42, align 8
  %44 = load ptr, ptr %pRaw, align 8
  %raw43 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %44, i32 0, i32 1
  %pMap44 = getelementptr inbounds nuw %struct.mmap_data, ptr %raw43, i32 0, i32 0
  %45 = load ptr, ptr %pMap44, align 8
  %46 = load ptr, ptr %pRaw, align 8
  %raw45 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %46, i32 0, i32 1
  %nSize46 = getelementptr inbounds nuw %struct.mmap_data, ptr %raw45, i32 0, i32 1
  %47 = load i64, ptr %nSize46, align 8
  call void %43(ptr noundef %45, i64 noundef %47)
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.then39
  %48 = load ptr, ptr %pCtx.addr, align 8
  %49 = load ptr, ptr %pArchive, align 8
  call void @ph7_context_free_chunk(ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %pCtx.addr, align 8
  %call48 = call i32 @ph7_result_bool(ptr noundef %50, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.then31
  %51 = load ptr, ptr %pRaw, align 8
  %iType = getelementptr inbounds nuw %struct.zip_raw_data, ptr %51, i32 0, i32 0
  store i32 1, ptr %iType, align 8
  %52 = load ptr, ptr %pVfs, align 8
  %53 = load ptr, ptr %pRaw, align 8
  %raw50 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %53, i32 0, i32 1
  %pVfs51 = getelementptr inbounds nuw %struct.mmap_data, ptr %raw50, i32 0, i32 2
  store ptr %52, ptr %pVfs51, align 8
  br label %success

if.end52:                                         ; preds = %if.then26
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %land.lhs.true, %if.then22
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end16
  %54 = load ptr, ptr %pCtx.addr, align 8
  %pVm55 = getelementptr inbounds nuw %struct.ph7_context, ptr %54, i32 0, i32 4
  %55 = load ptr, ptr %pVm55, align 8
  %56 = load ptr, ptr %pStream, align 8
  %57 = load ptr, ptr %zFile, align 8
  %call56 = call ptr @PH7_StreamOpenHandle(ptr noundef %55, ptr noundef %56, ptr noundef %57, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
  store ptr %call56, ptr %pHandle, align 8
  %58 = load ptr, ptr %pHandle, align 8
  %cmp57 = icmp eq ptr %58, null
  br i1 %cmp57, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end54
  %59 = load ptr, ptr %pCtx.addr, align 8
  %60 = load ptr, ptr %zFile, align 8
  %call60 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %59, i32 noundef 1, ptr noundef @.str.1226, ptr noundef %60)
  %61 = load ptr, ptr %pCtx.addr, align 8
  %call61 = call i32 @ph7_result_bool(ptr noundef %61, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.end54
  %62 = load ptr, ptr %pRaw, align 8
  %raw63 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %62, i32 0, i32 1
  store ptr %raw63, ptr %pContents, align 8
  %63 = load ptr, ptr %pContents, align 8
  %64 = load ptr, ptr %pCtx.addr, align 8
  %pVm64 = getelementptr inbounds nuw %struct.ph7_context, ptr %64, i32 0, i32 4
  %65 = load ptr, ptr %pVm64, align 8
  %sAllocator65 = getelementptr inbounds nuw %struct.ph7_vm, ptr %65, i32 0, i32 0
  %call66 = call i32 @SyBlobInit(ptr noundef %63, ptr noundef %sAllocator65)
  %66 = load ptr, ptr %pHandle, align 8
  %67 = load ptr, ptr %pStream, align 8
  %68 = load ptr, ptr %pContents, align 8
  %call67 = call i32 @PH7_StreamReadWholeFile(ptr noundef %66, ptr noundef %67, ptr noundef %68)
  store i32 -9, ptr %rc, align 4
  %69 = load ptr, ptr %pContents, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %nByte, align 8
  %cmp68 = icmp ugt i32 %70, 0
  br i1 %cmp68, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end62
  %71 = load ptr, ptr %pArchive, align 8
  %72 = load ptr, ptr %pContents, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %72, i32 0, i32 1
  %73 = load ptr, ptr %pBlob, align 8
  %74 = load ptr, ptr %pContents, align 8
  %nByte71 = getelementptr inbounds nuw %struct.SyBlob, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %nByte71, align 8
  %call72 = call i32 @SyZipExtractFromBuf(ptr noundef %71, ptr noundef %73, i32 noundef %75)
  store i32 %call72, ptr %rc, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end62
  %76 = load ptr, ptr %pRaw, align 8
  %iType74 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %76, i32 0, i32 0
  store i32 2, ptr %iType74, align 8
  %77 = load ptr, ptr %pStream, align 8
  %78 = load ptr, ptr %pHandle, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %77, ptr noundef %78)
  %79 = load i32, ptr %rc, align 4
  %cmp75 = icmp ne i32 %79, 0
  br i1 %cmp75, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end73
  %80 = load ptr, ptr %pContents, align 8
  %call78 = call i32 @SyBlobRelease(ptr noundef %80)
  %81 = load ptr, ptr %pCtx.addr, align 8
  %82 = load ptr, ptr %pArchive, align 8
  call void @ph7_context_free_chunk(ptr noundef %81, ptr noundef %82)
  %83 = load ptr, ptr %pCtx.addr, align 8
  %call79 = call i32 @ph7_result_bool(ptr noundef %83, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %if.end73
  br label %success

success:                                          ; preds = %if.end80, %if.end49
  %84 = load ptr, ptr %pArchive, align 8
  %call81 = call i32 @SyArchiveResetLoopCursor(ptr noundef %84)
  %85 = load ptr, ptr %pCtx.addr, align 8
  %86 = load ptr, ptr %pArchive, align 8
  %call82 = call i32 @ph7_result_resource(ptr noundef %85, ptr noundef %86)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %success, %if.then77, %if.then59, %if.end47, %if.then13, %if.then7, %if.then
  %87 = load i32, ptr %retval, align 4
  ret i32 %87
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyArchiveInit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyZipExtractFromBuf(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyArchiveResetLoopCursor(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
