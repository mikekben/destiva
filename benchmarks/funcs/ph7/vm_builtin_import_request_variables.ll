; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extract_aux_data = type { ptr, i32, ptr, i32, i32, [1024 x i8] }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

@.str.552 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.553 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.554 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.555 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_walk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_import_request_variables(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zPrefix = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zImport = alloca ptr, align 8
  %sAux = alloca %struct.extract_aux_data, align 8
  %nLen = alloca i32, align 4
  %nPrefixLen = alloca i32, align 4
  %pSuper = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr @.str.552, ptr %zImport, align 8
  store i32 1, ptr %nLen, align 4
  store ptr null, ptr %zPrefix, align 8
  store i32 0, ptr %nPrefixLen, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %4, ptr noundef %nLen)
  store ptr %call3, ptr %zImport, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp4 = icmp sgt i32 %5, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @ph7_value_is_string(ptr noundef %7)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx9, align 8
  %call10 = call ptr @ph7_value_to_string(ptr noundef %9, ptr noundef %nPrefixLen)
  store ptr %call10, ptr %zPrefix, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %land.lhs.true, %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  %10 = load ptr, ptr %pCtx.addr, align 8
  %pVm13 = getelementptr inbounds nuw %struct.ph7_context, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pVm13, align 8
  store ptr %11, ptr %pVm, align 8
  call void @SyZero(ptr noundef %sAux, i32 noundef 32)
  %12 = load ptr, ptr %zPrefix, align 8
  %zPrefix14 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %sAux, i32 0, i32 2
  store ptr %12, ptr %zPrefix14, align 8
  %13 = load i32, ptr %nPrefixLen, align 4
  %Prefixlen = getelementptr inbounds nuw %struct.extract_aux_data, ptr %sAux, i32 0, i32 3
  store i32 %13, ptr %Prefixlen, align 8
  %14 = load ptr, ptr %pVm, align 8
  %pVm15 = getelementptr inbounds nuw %struct.extract_aux_data, ptr %sAux, i32 0, i32 0
  store ptr %14, ptr %pVm15, align 8
  %15 = load ptr, ptr %zImport, align 8
  %16 = load i32, ptr %nLen, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %15, i64 %idxprom
  store ptr %arrayidx16, ptr %zEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %if.end12
  %17 = load ptr, ptr %zImport, align 8
  %18 = load ptr, ptr %zEnd, align 8
  %cmp17 = icmp ult ptr %17, %18
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %zImport, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx18, align 1
  %conv = sext i8 %20 to i32
  store i32 %conv, ptr %c, align 4
  store ptr null, ptr %pSuper, align 8
  %21 = load i32, ptr %c, align 4
  %cmp19 = icmp eq i32 %21, 71
  br i1 %cmp19, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %22 = load i32, ptr %c, align 4
  %cmp21 = icmp eq i32 %22, 103
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %lor.lhs.false, %while.body
  %23 = load ptr, ptr %pVm, align 8
  %call24 = call ptr @VmExtractSuper(ptr noundef %23, ptr noundef @.str.553, i32 noundef 4)
  store ptr %call24, ptr %pSuper, align 8
  br label %if.end42

if.else:                                          ; preds = %lor.lhs.false
  %24 = load i32, ptr %c, align 4
  %cmp25 = icmp eq i32 %24, 80
  br i1 %cmp25, label %if.then30, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.else
  %25 = load i32, ptr %c, align 4
  %cmp28 = icmp eq i32 %25, 112
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %lor.lhs.false27, %if.else
  %26 = load ptr, ptr %pVm, align 8
  %call31 = call ptr @VmExtractSuper(ptr noundef %26, ptr noundef @.str.554, i32 noundef 5)
  store ptr %call31, ptr %pSuper, align 8
  br label %if.end41

if.else32:                                        ; preds = %lor.lhs.false27
  %27 = load i32, ptr %c, align 4
  %cmp33 = icmp eq i32 %27, 99
  br i1 %cmp33, label %if.then38, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.else32
  %28 = load i32, ptr %c, align 4
  %cmp36 = icmp eq i32 %28, 67
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %lor.lhs.false35, %if.else32
  %29 = load ptr, ptr %pVm, align 8
  %call39 = call ptr @VmExtractSuper(ptr noundef %29, ptr noundef @.str.555, i32 noundef 7)
  store ptr %call39, ptr %pSuper, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %lor.lhs.false35
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then30
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then23
  %30 = load ptr, ptr %pSuper, align 8
  %tobool43 = icmp ne ptr %30, null
  br i1 %tobool43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.end42
  %31 = load ptr, ptr %pSuper, align 8
  %call45 = call i32 @ph7_array_walk(ptr noundef %31, ptr noundef @VmImportRequestCallback, ptr noundef %sAux)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.end42
  %32 = load ptr, ptr %zImport, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %zImport, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %33 = load ptr, ptr %pCtx.addr, align 8
  %call47 = call i32 @ph7_result_bool(ptr noundef %33, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractSuper(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmImportRequestCallback(ptr noundef, ptr noundef, ptr noundef) #0

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
