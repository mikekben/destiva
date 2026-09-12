; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csv_data = type { i32, i32, ptr, i32 }
%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.1236 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.1237 = external hidden unnamed_addr constant [90 x i8], align 1
@.str.1238 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.1250 = external hidden unnamed_addr constant [26 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_walk(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_fputcsv(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %sCsv = alloca %struct.csv_data, align 8
  %pDev = alloca ptr, align 8
  %zEol = alloca ptr, align 8
  %eolen = alloca i32, align 4
  %z = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_resource(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_is_array(ptr noundef %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_context_throw_error(ptr noundef %5, i32 noundef 2, ptr noundef @.str.1250)
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_bool(ptr noundef %6, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @ph7_value_to_resource(ptr noundef %8)
  store ptr %call8, ptr %pDev, align 8
  %9 = load ptr, ptr %pDev, align 8
  %cmp9 = icmp eq ptr %9, null
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %10 = load ptr, ptr %pDev, align 8
  %iMagic = getelementptr inbounds nuw %struct.io_private, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %iMagic, align 4
  %cmp11 = icmp ne i32 %11, 16690196
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false10, %if.end
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_context_throw_error(ptr noundef %12, i32 noundef 2, ptr noundef @.str.1236)
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_bool(ptr noundef %13, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false10
  %14 = load ptr, ptr %pDev, align 8
  %pStream16 = getelementptr inbounds nuw %struct.io_private, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pStream16, align 8
  store ptr %15, ptr %pStream, align 8
  %16 = load ptr, ptr %pStream, align 8
  %cmp17 = icmp eq ptr %16, null
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.end15
  %17 = load ptr, ptr %pStream, align 8
  %xWrite = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %xWrite, align 8
  %cmp19 = icmp eq ptr %18, null
  br i1 %cmp19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %lor.lhs.false18, %if.end15
  %19 = load ptr, ptr %pCtx.addr, align 8
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call21 = call ptr @ph7_function_name(ptr noundef %20)
  %21 = load ptr, ptr %pStream, align 8
  %tobool22 = icmp ne ptr %21, null
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then20
  %22 = load ptr, ptr %pStream, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %23, %cond.true ], [ @.str.1238, %cond.false ]
  %call23 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %19, i32 noundef 2, ptr noundef @.str.1237, ptr noundef %call21, ptr noundef %cond)
  %24 = load ptr, ptr %pCtx.addr, align 8
  %call24 = call i32 @ph7_result_bool(ptr noundef %24, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %lor.lhs.false18
  %delimiter = getelementptr inbounds nuw %struct.csv_data, ptr %sCsv, i32 0, i32 0
  store i32 44, ptr %delimiter, align 8
  %enclosure = getelementptr inbounds nuw %struct.csv_data, ptr %sCsv, i32 0, i32 1
  store i32 34, ptr %enclosure, align 4
  %25 = load ptr, ptr %pDev, align 8
  %pDev26 = getelementptr inbounds nuw %struct.csv_data, ptr %sCsv, i32 0, i32 2
  store ptr %25, ptr %pDev26, align 8
  %iCount = getelementptr inbounds nuw %struct.csv_data, ptr %sCsv, i32 0, i32 3
  store i32 0, ptr %iCount, align 8
  %26 = load i32, ptr %nArg.addr, align 4
  %cmp27 = icmp sgt i32 %26, 2
  br i1 %cmp27, label %if.then28, label %if.end49

if.then28:                                        ; preds = %if.end25
  %27 = load ptr, ptr %apArg.addr, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %27, i64 2
  %28 = load ptr, ptr %arrayidx29, align 8
  %call30 = call ptr @ph7_value_to_string(ptr noundef %28, ptr noundef %n)
  store ptr %call30, ptr %z, align 8
  %29 = load i32, ptr %n, align 4
  %cmp31 = icmp sgt i32 %29, 0
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then28
  %30 = load ptr, ptr %z, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %30, i64 0
  %31 = load i8, ptr %arrayidx33, align 1
  %conv = sext i8 %31 to i32
  %delimiter34 = getelementptr inbounds nuw %struct.csv_data, ptr %sCsv, i32 0, i32 0
  store i32 %conv, ptr %delimiter34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then28
  %32 = load i32, ptr %nArg.addr, align 4
  %cmp36 = icmp sgt i32 %32, 3
  br i1 %cmp36, label %if.then38, label %if.end48

if.then38:                                        ; preds = %if.end35
  %33 = load ptr, ptr %apArg.addr, align 8
  %arrayidx39 = getelementptr inbounds ptr, ptr %33, i64 3
  %34 = load ptr, ptr %arrayidx39, align 8
  %call40 = call ptr @ph7_value_to_string(ptr noundef %34, ptr noundef %n)
  store ptr %call40, ptr %z, align 8
  %35 = load i32, ptr %n, align 4
  %cmp41 = icmp sgt i32 %35, 0
  br i1 %cmp41, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.then38
  %36 = load ptr, ptr %z, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %37 to i32
  %enclosure46 = getelementptr inbounds nuw %struct.csv_data, ptr %sCsv, i32 0, i32 1
  store i32 %conv45, ptr %enclosure46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.then38
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end35
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end25
  %38 = load ptr, ptr %apArg.addr, align 8
  %arrayidx50 = getelementptr inbounds ptr, ptr %38, i64 1
  %39 = load ptr, ptr %arrayidx50, align 8
  %call51 = call i32 @ph7_array_walk(ptr noundef %39, ptr noundef @csv_write_callback, ptr noundef %sCsv)
  store ptr @.str.47, ptr %zEol, align 8
  store i32 1, ptr %eolen, align 4
  %40 = load ptr, ptr %pDev, align 8
  %pStream52 = getelementptr inbounds nuw %struct.io_private, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pStream52, align 8
  %xWrite53 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %41, i32 0, i32 8
  %42 = load ptr, ptr %xWrite53, align 8
  %43 = load ptr, ptr %pDev, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %pHandle, align 8
  %45 = load ptr, ptr %zEol, align 8
  %46 = load i32, ptr %eolen, align 4
  %conv54 = sext i32 %46 to i64
  %call55 = call i64 %42(ptr noundef %44, ptr noundef %45, i64 noundef %conv54)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end49, %cond.end, %if.then12, %if.then
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
declare hidden i32 @csv_write_callback(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
