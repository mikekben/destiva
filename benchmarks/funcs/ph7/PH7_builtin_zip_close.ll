; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }
%struct.zip_raw_data = type { i32, %union.raw_data }
%union.raw_data = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.mmap_data = type { ptr, i64, ptr }
%struct.ph7_vfs = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1230 = external hidden unnamed_addr constant [24 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @ph7_context_free_chunk(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_zip_close(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pArchive = alloca ptr, align 8
  %pRaw = alloca ptr, align 8
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
  %call = call i32 @ph7_value_is_resource(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 1, ptr noundef @.str.1230)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_resource(ptr noundef %5)
  store ptr %call3, ptr %pArchive, align 8
  %6 = load ptr, ptr %pArchive, align 8
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end
  %7 = load ptr, ptr %pArchive, align 8
  %nMagic = getelementptr inbounds nuw %struct.SyArchive, ptr %7, i32 0, i32 12
  %8 = load i32, ptr %nMagic, align 8
  %cmp6 = icmp ne i32 %8, -559062182
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call i32 @ph7_context_throw_error(ptr noundef %9, i32 noundef 1, ptr noundef @.str.1230)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %lor.lhs.false5
  %10 = load ptr, ptr %pArchive, align 8
  %call10 = call i32 @SyArchiveRelease(ptr noundef %10)
  %11 = load ptr, ptr %pArchive, align 8
  %arrayidx11 = getelementptr inbounds %struct.SyArchive, ptr %11, i64 1
  store ptr %arrayidx11, ptr %pRaw, align 8
  %12 = load ptr, ptr %pRaw, align 8
  %iType = getelementptr inbounds nuw %struct.zip_raw_data, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %iType, align 8
  %cmp12 = icmp eq i32 %13, 2
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %14 = load ptr, ptr %pRaw, align 8
  %raw = getelementptr inbounds nuw %struct.zip_raw_data, ptr %14, i32 0, i32 1
  %call14 = call i32 @SyBlobRelease(ptr noundef %raw)
  br label %if.end23

if.else:                                          ; preds = %if.end9
  %15 = load ptr, ptr %pRaw, align 8
  %raw15 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %15, i32 0, i32 1
  %pVfs16 = getelementptr inbounds nuw %struct.mmap_data, ptr %raw15, i32 0, i32 2
  %16 = load ptr, ptr %pVfs16, align 8
  store ptr %16, ptr %pVfs, align 8
  %17 = load ptr, ptr %pVfs, align 8
  %xUnmap = getelementptr inbounds nuw %struct.ph7_vfs, ptr %17, i32 0, i32 34
  %18 = load ptr, ptr %xUnmap, align 8
  %tobool17 = icmp ne ptr %18, null
  br i1 %tobool17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.else
  %19 = load ptr, ptr %pVfs, align 8
  %xUnmap19 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %19, i32 0, i32 34
  %20 = load ptr, ptr %xUnmap19, align 8
  %21 = load ptr, ptr %pRaw, align 8
  %raw20 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %21, i32 0, i32 1
  %pMap = getelementptr inbounds nuw %struct.mmap_data, ptr %raw20, i32 0, i32 0
  %22 = load ptr, ptr %pMap, align 8
  %23 = load ptr, ptr %pRaw, align 8
  %raw21 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %23, i32 0, i32 1
  %nSize = getelementptr inbounds nuw %struct.mmap_data, ptr %raw21, i32 0, i32 1
  %24 = load i64, ptr %nSize, align 8
  call void %20(ptr noundef %22, i64 noundef %24)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then13
  %25 = load ptr, ptr %pCtx.addr, align 8
  %26 = load ptr, ptr %pArchive, align 8
  call void @ph7_context_free_chunk(ptr noundef %25, ptr noundef %26)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then7, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyArchiveRelease(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
