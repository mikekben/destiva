; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.1236 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.1237 = external hidden unnamed_addr constant [90 x i8], align 1
@.str.1238 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ProcessCsv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CsvConsumer(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_fgetcsv(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %zLine = alloca ptr, align 8
  %pDev = alloca ptr, align 8
  %n = alloca i64, align 8
  %nLen = alloca i64, align 8
  %pArray = alloca ptr, align 8
  %delim = alloca i32, align 4
  %encl = alloca i32, align 4
  %escape = alloca i32, align 4
  %zPtr = alloca ptr, align 8
  %i = alloca i32, align 4
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
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 2, ptr noundef @.str.1236)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_resource(ptr noundef %6)
  store ptr %call4, ptr %pDev, align 8
  %7 = load ptr, ptr %pDev, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %8 = load ptr, ptr %pDev, align 8
  %iMagic = getelementptr inbounds nuw %struct.io_private, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %iMagic, align 4
  %cmp7 = icmp ne i32 %9, 16690196
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %lor.lhs.false6, %if.end
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_context_throw_error(ptr noundef %10, i32 noundef 2, ptr noundef @.str.1236)
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_bool(ptr noundef %11, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %pDev, align 8
  %pStream12 = getelementptr inbounds nuw %struct.io_private, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pStream12, align 8
  store ptr %13, ptr %pStream, align 8
  %14 = load ptr, ptr %pStream, align 8
  %cmp13 = icmp eq ptr %14, null
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end11
  %15 = load ptr, ptr %pCtx.addr, align 8
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call ptr @ph7_function_name(ptr noundef %16)
  %17 = load ptr, ptr %pStream, align 8
  %tobool16 = icmp ne ptr %17, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then14
  %18 = load ptr, ptr %pStream, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %19, %cond.true ], [ @.str.1238, %cond.false ]
  %call17 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %15, i32 noundef 2, ptr noundef @.str.1237, ptr noundef %call15, ptr noundef %cond)
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_bool(ptr noundef %20, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end11
  store i64 -1, ptr %nLen, align 8
  %21 = load i32, ptr %nArg.addr, align 4
  %cmp20 = icmp sgt i32 %21, 1
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end19
  %22 = load ptr, ptr %apArg.addr, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx22, align 8
  %call23 = call i64 @ph7_value_to_int64(ptr noundef %23)
  store i64 %call23, ptr %nLen, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19
  %24 = load ptr, ptr %pDev, align 8
  %25 = load i64, ptr %nLen, align 8
  %call25 = call i64 @StreamReadLine(ptr noundef %24, ptr noundef %zLine, i64 noundef %25)
  store i64 %call25, ptr %n, align 8
  %26 = load i64, ptr %n, align 8
  %cmp26 = icmp slt i64 %26, 1
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  %27 = load ptr, ptr %pCtx.addr, align 8
  %call28 = call i32 @ph7_result_bool(ptr noundef %27, i32 noundef 0)
  br label %if.end87

if.else:                                          ; preds = %if.end24
  store i32 44, ptr %delim, align 4
  store i32 34, ptr %encl, align 4
  store i32 92, ptr %escape, align 4
  %28 = load i32, ptr %nArg.addr, align 4
  %cmp29 = icmp sgt i32 %28, 2
  br i1 %cmp29, label %if.then30, label %if.end76

if.then30:                                        ; preds = %if.else
  %29 = load ptr, ptr %apArg.addr, align 8
  %arrayidx31 = getelementptr inbounds ptr, ptr %29, i64 2
  %30 = load ptr, ptr %arrayidx31, align 8
  %call32 = call i32 @ph7_value_is_string(ptr noundef %30)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end41

if.then34:                                        ; preds = %if.then30
  %31 = load ptr, ptr %apArg.addr, align 8
  %arrayidx35 = getelementptr inbounds ptr, ptr %31, i64 2
  %32 = load ptr, ptr %arrayidx35, align 8
  %call36 = call ptr @ph7_value_to_string(ptr noundef %32, ptr noundef %i)
  store ptr %call36, ptr %zPtr, align 8
  %33 = load i32, ptr %i, align 4
  %cmp37 = icmp sgt i32 %33, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.then34
  %34 = load ptr, ptr %zPtr, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx39, align 1
  %conv = sext i8 %35 to i32
  store i32 %conv, ptr %delim, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.then34
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then30
  %36 = load i32, ptr %nArg.addr, align 4
  %cmp42 = icmp sgt i32 %36, 3
  br i1 %cmp42, label %if.then44, label %if.end75

if.then44:                                        ; preds = %if.end41
  %37 = load ptr, ptr %apArg.addr, align 8
  %arrayidx45 = getelementptr inbounds ptr, ptr %37, i64 3
  %38 = load ptr, ptr %arrayidx45, align 8
  %call46 = call i32 @ph7_value_is_string(ptr noundef %38)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.end57

if.then48:                                        ; preds = %if.then44
  %39 = load ptr, ptr %apArg.addr, align 8
  %arrayidx49 = getelementptr inbounds ptr, ptr %39, i64 3
  %40 = load ptr, ptr %arrayidx49, align 8
  %call50 = call ptr @ph7_value_to_string(ptr noundef %40, ptr noundef %i)
  store ptr %call50, ptr %zPtr, align 8
  %41 = load i32, ptr %i, align 4
  %cmp51 = icmp sgt i32 %41, 0
  br i1 %cmp51, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.then48
  %42 = load ptr, ptr %zPtr, align 8
  %arrayidx54 = getelementptr inbounds i8, ptr %42, i64 0
  %43 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %43 to i32
  store i32 %conv55, ptr %encl, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then48
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then44
  %44 = load i32, ptr %nArg.addr, align 4
  %cmp58 = icmp sgt i32 %44, 4
  br i1 %cmp58, label %if.then60, label %if.end74

if.then60:                                        ; preds = %if.end57
  %45 = load ptr, ptr %apArg.addr, align 8
  %arrayidx61 = getelementptr inbounds ptr, ptr %45, i64 4
  %46 = load ptr, ptr %arrayidx61, align 8
  %call62 = call i32 @ph7_value_is_string(ptr noundef %46)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then64, label %if.end73

if.then64:                                        ; preds = %if.then60
  %47 = load ptr, ptr %apArg.addr, align 8
  %arrayidx65 = getelementptr inbounds ptr, ptr %47, i64 4
  %48 = load ptr, ptr %arrayidx65, align 8
  %call66 = call ptr @ph7_value_to_string(ptr noundef %48, ptr noundef %i)
  store ptr %call66, ptr %zPtr, align 8
  %49 = load i32, ptr %i, align 4
  %cmp67 = icmp sgt i32 %49, 0
  br i1 %cmp67, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.then64
  %50 = load ptr, ptr %zPtr, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %51 to i32
  store i32 %conv71, ptr %escape, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then64
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then60
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end57
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.end41
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.else
  %52 = load ptr, ptr %pCtx.addr, align 8
  %call77 = call ptr @ph7_context_new_array(ptr noundef %52)
  store ptr %call77, ptr %pArray, align 8
  %53 = load ptr, ptr %pArray, align 8
  %cmp78 = icmp eq ptr %53, null
  br i1 %cmp78, label %if.then80, label %if.end83

if.then80:                                        ; preds = %if.end76
  %54 = load ptr, ptr %pCtx.addr, align 8
  %call81 = call i32 @ph7_context_throw_error(ptr noundef %54, i32 noundef 1, ptr noundef @.str.536)
  %55 = load ptr, ptr %pCtx.addr, align 8
  %call82 = call i32 @ph7_result_null(ptr noundef %55)
  store i32 0, ptr %retval, align 4
  br label %return

if.end83:                                         ; preds = %if.end76
  %56 = load ptr, ptr %zLine, align 8
  %57 = load i64, ptr %n, align 8
  %conv84 = trunc i64 %57 to i32
  %58 = load i32, ptr %delim, align 4
  %59 = load i32, ptr %encl, align 4
  %60 = load i32, ptr %escape, align 4
  %61 = load ptr, ptr %pArray, align 8
  %call85 = call i32 @PH7_ProcessCsv(ptr noundef %56, i32 noundef %conv84, i32 noundef %58, i32 noundef %59, i32 noundef %60, ptr noundef @PH7_CsvConsumer, ptr noundef %61)
  %62 = load ptr, ptr %pCtx.addr, align 8
  %63 = load ptr, ptr %pArray, align 8
  %call86 = call i32 @ph7_result_value(ptr noundef %62, ptr noundef %63)
  br label %if.end87

if.end87:                                         ; preds = %if.end83, %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end87, %if.then80, %cond.end, %if.then8, %if.then
  %64 = load i32, ptr %retval, align 4
  ret i32 %64
}

; Function Attrs: nounwind uwtable
declare hidden i64 @StreamReadLine(ptr noundef, ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
