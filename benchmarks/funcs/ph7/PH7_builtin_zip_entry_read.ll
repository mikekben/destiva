; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }
%struct.zip_raw_data = type { i32, %union.raw_data }
%union.raw_data = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.mmap_data = type { ptr, i64, ptr }

@.str.1231 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_zip_entry_read(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pRaw = alloca ptr, align 8
  %zData = alloca ptr, align 8
  %iLength = alloca i32, align 4
  %zMap = alloca ptr, align 8
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
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 1, ptr noundef @.str.1231)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_resource(ptr noundef %6)
  store ptr %call4, ptr %pEntry, align 8
  %7 = load ptr, ptr %pEntry, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %8 = load ptr, ptr %pEntry, align 8
  %nMagic = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %8, i32 0, i32 17
  %9 = load i32, ptr %nMagic, align 8
  %cmp7 = icmp ne i32 %9, -559062182
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %lor.lhs.false6, %if.end
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_context_throw_error(ptr noundef %10, i32 noundef 1, ptr noundef @.str.1231)
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_bool(ptr noundef %11, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false6
  store ptr null, ptr %zData, align 8
  %12 = load ptr, ptr %pEntry, align 8
  %nReadCount = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %12, i32 0, i32 2
  %13 = load i32, ptr %nReadCount, align 8
  %14 = load ptr, ptr %pEntry, align 8
  %nByteCompr = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %nByteCompr, align 4
  %cmp12 = icmp uge i32 %13, %15
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end11
  store i32 1024, ptr %iLength, align 4
  %17 = load i32, ptr %nArg.addr, align 4
  %cmp16 = icmp sgt i32 %17, 1
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end15
  %18 = load ptr, ptr %apArg.addr, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %18, i64 1
  %19 = load ptr, ptr %arrayidx18, align 8
  %call19 = call i32 @ph7_value_to_int(ptr noundef %19)
  store i32 %call19, ptr %iLength, align 4
  %20 = load i32, ptr %iLength, align 4
  %cmp20 = icmp slt i32 %20, 1
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then17
  store i32 1024, ptr %iLength, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end15
  %21 = load i32, ptr %iLength, align 4
  %22 = load ptr, ptr %pEntry, align 8
  %nByteCompr24 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nByteCompr24, align 4
  %24 = load ptr, ptr %pEntry, align 8
  %nReadCount25 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %nReadCount25, align 8
  %sub = sub i32 %23, %25
  %cmp26 = icmp ugt i32 %21, %sub
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end23
  %26 = load ptr, ptr %pEntry, align 8
  %nByteCompr28 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %nByteCompr28, align 4
  %28 = load ptr, ptr %pEntry, align 8
  %nReadCount29 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %nReadCount29, align 8
  %sub30 = sub i32 %27, %29
  store i32 %sub30, ptr %iLength, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end23
  %30 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %30, i32 0, i32 16
  %31 = load ptr, ptr %pUserData, align 8
  store ptr %31, ptr %pRaw, align 8
  %32 = load ptr, ptr %pRaw, align 8
  %iType = getelementptr inbounds nuw %struct.zip_raw_data, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %iType, align 8
  %cmp32 = icmp eq i32 %33, 2
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  %34 = load ptr, ptr %pRaw, align 8
  %raw = getelementptr inbounds nuw %struct.zip_raw_data, ptr %34, i32 0, i32 1
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %raw, i32 0, i32 1
  %35 = load ptr, ptr %pBlob, align 8
  %36 = load ptr, ptr %pEntry, align 8
  %nOfft = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %36, i32 0, i32 5
  %37 = load i32, ptr %nOfft, align 8
  %38 = load ptr, ptr %pEntry, align 8
  %nReadCount34 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %38, i32 0, i32 2
  %39 = load i32, ptr %nReadCount34, align 8
  %add = add i32 %37, %39
  %idxprom = zext i32 %add to i64
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %35, i64 %idxprom
  store ptr %arrayidx35, ptr %zData, align 8
  br label %if.end42

if.else:                                          ; preds = %if.end31
  %40 = load ptr, ptr %pRaw, align 8
  %raw36 = getelementptr inbounds nuw %struct.zip_raw_data, ptr %40, i32 0, i32 1
  %pMap = getelementptr inbounds nuw %struct.mmap_data, ptr %raw36, i32 0, i32 0
  %41 = load ptr, ptr %pMap, align 8
  store ptr %41, ptr %zMap, align 8
  %42 = load ptr, ptr %zMap, align 8
  %43 = load ptr, ptr %pEntry, align 8
  %nOfft37 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %43, i32 0, i32 5
  %44 = load i32, ptr %nOfft37, align 8
  %45 = load ptr, ptr %pEntry, align 8
  %nReadCount38 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %nReadCount38, align 8
  %add39 = add i32 %44, %46
  %idxprom40 = zext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %42, i64 %idxprom40
  store ptr %arrayidx41, ptr %zData, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then33
  %47 = load i32, ptr %iLength, align 4
  %48 = load ptr, ptr %pEntry, align 8
  %nReadCount43 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %nReadCount43, align 8
  %add44 = add i32 %49, %47
  store i32 %add44, ptr %nReadCount43, align 8
  %50 = load ptr, ptr %pCtx.addr, align 8
  %51 = load ptr, ptr %zData, align 8
  %52 = load i32, ptr %iLength, align 4
  %call45 = call i32 @ph7_result_string(ptr noundef %50, ptr noundef %51, i32 noundef %52)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end42, %if.then13, %if.then8, %if.then
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
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
