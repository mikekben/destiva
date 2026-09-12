; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyhttpUri = type { %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString }
%struct.SyString = type { ptr, i32 }

@.str.209 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.495 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.557 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.558 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.559 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.560 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.561 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.562 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.563 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_strkey_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_parse_url(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zStr = alloca ptr, align 8
  %pComp = alloca ptr, align 8
  %sURI = alloca %struct.SyhttpUri, align 8
  %nLen = alloca i32, align 4
  %rc = alloca i32, align 4
  %nComponent = alloca i32, align 4
  %iPort = alloca i32, align 4
  %pArray = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %iPort129 = alloca i32, align 4
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
  %call1 = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nLen)
  store ptr %call3, ptr %zStr, align 8
  %6 = load i32, ptr %nLen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_bool(ptr noundef %7, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %zStr, align 8
  %9 = load i32, ptr %nLen, align 4
  %call8 = call i32 @VmHttpSplitURI(ptr noundef %sURI, ptr noundef %8, i32 noundef %9)
  store i32 %call8, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %10, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_bool(ptr noundef %11, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %12 = load i32, ptr %nArg.addr, align 4
  %cmp13 = icmp sgt i32 %12, 1
  br i1 %cmp13, label %if.then14, label %if.else95

if.then14:                                        ; preds = %if.end12
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %13, i64 1
  %14 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @ph7_value_to_int(ptr noundef %14)
  store i32 %call16, ptr %nComponent, align 4
  %15 = load i32, ptr %nComponent, align 4
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %sw.bb33
    i32 4, label %sw.bb44
    i32 5, label %sw.bb54
    i32 7, label %sw.bb64
    i32 8, label %sw.bb74
    i32 6, label %sw.bb84
  ]

sw.bb:                                            ; preds = %if.then14
  %sScheme = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 5
  store ptr %sScheme, ptr %pComp, align 8
  %16 = load ptr, ptr %pComp, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %nByte, align 8
  %cmp17 = icmp ult i32 %17, 1
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %sw.bb
  %18 = load ptr, ptr %pCtx.addr, align 8
  %call19 = call i32 @ph7_result_null(ptr noundef %18)
  br label %if.end22

if.else:                                          ; preds = %sw.bb
  %19 = load ptr, ptr %pCtx.addr, align 8
  %20 = load ptr, ptr %pComp, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %zString, align 8
  %22 = load ptr, ptr %pComp, align 8
  %nByte20 = getelementptr inbounds nuw %struct.SyString, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nByte20, align 8
  %call21 = call i32 @ph7_result_string(ptr noundef %19, ptr noundef %21, i32 noundef %23)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.then14
  %sHost = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 0
  store ptr %sHost, ptr %pComp, align 8
  %24 = load ptr, ptr %pComp, align 8
  %nByte24 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nByte24, align 8
  %cmp25 = icmp ult i32 %25, 1
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %sw.bb23
  %26 = load ptr, ptr %pCtx.addr, align 8
  %call27 = call i32 @ph7_result_null(ptr noundef %26)
  br label %if.end32

if.else28:                                        ; preds = %sw.bb23
  %27 = load ptr, ptr %pCtx.addr, align 8
  %28 = load ptr, ptr %pComp, align 8
  %zString29 = getelementptr inbounds nuw %struct.SyString, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %zString29, align 8
  %30 = load ptr, ptr %pComp, align 8
  %nByte30 = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nByte30, align 8
  %call31 = call i32 @ph7_result_string(ptr noundef %27, ptr noundef %29, i32 noundef %31)
  br label %if.end32

if.end32:                                         ; preds = %if.else28, %if.then26
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then14
  %sPort = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 1
  store ptr %sPort, ptr %pComp, align 8
  %32 = load ptr, ptr %pComp, align 8
  %nByte34 = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %nByte34, align 8
  %cmp35 = icmp ult i32 %33, 1
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %sw.bb33
  %34 = load ptr, ptr %pCtx.addr, align 8
  %call37 = call i32 @ph7_result_null(ptr noundef %34)
  br label %if.end43

if.else38:                                        ; preds = %sw.bb33
  store i32 0, ptr %iPort, align 4
  %35 = load ptr, ptr %pComp, align 8
  %zString39 = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %zString39, align 8
  %37 = load ptr, ptr %pComp, align 8
  %nByte40 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte40, align 8
  %call41 = call i32 @SyStrToInt32(ptr noundef %36, i32 noundef %38, ptr noundef %iPort, ptr noundef null)
  %39 = load ptr, ptr %pCtx.addr, align 8
  %40 = load i32, ptr %iPort, align 4
  %call42 = call i32 @ph7_result_int(ptr noundef %39, i32 noundef %40)
  br label %if.end43

if.end43:                                         ; preds = %if.else38, %if.then36
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.then14
  %sUser = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 6
  store ptr %sUser, ptr %pComp, align 8
  %41 = load ptr, ptr %pComp, align 8
  %nByte45 = getelementptr inbounds nuw %struct.SyString, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %nByte45, align 8
  %cmp46 = icmp ult i32 %42, 1
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %sw.bb44
  %43 = load ptr, ptr %pCtx.addr, align 8
  %call48 = call i32 @ph7_result_null(ptr noundef %43)
  br label %if.end53

if.else49:                                        ; preds = %sw.bb44
  %44 = load ptr, ptr %pCtx.addr, align 8
  %45 = load ptr, ptr %pComp, align 8
  %zString50 = getelementptr inbounds nuw %struct.SyString, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %zString50, align 8
  %47 = load ptr, ptr %pComp, align 8
  %nByte51 = getelementptr inbounds nuw %struct.SyString, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %nByte51, align 8
  %call52 = call i32 @ph7_result_string(ptr noundef %44, ptr noundef %46, i32 noundef %48)
  br label %if.end53

if.end53:                                         ; preds = %if.else49, %if.then47
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.then14
  %sPass = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 7
  store ptr %sPass, ptr %pComp, align 8
  %49 = load ptr, ptr %pComp, align 8
  %nByte55 = getelementptr inbounds nuw %struct.SyString, ptr %49, i32 0, i32 1
  %50 = load i32, ptr %nByte55, align 8
  %cmp56 = icmp ult i32 %50, 1
  br i1 %cmp56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %sw.bb54
  %51 = load ptr, ptr %pCtx.addr, align 8
  %call58 = call i32 @ph7_result_null(ptr noundef %51)
  br label %if.end63

if.else59:                                        ; preds = %sw.bb54
  %52 = load ptr, ptr %pCtx.addr, align 8
  %53 = load ptr, ptr %pComp, align 8
  %zString60 = getelementptr inbounds nuw %struct.SyString, ptr %53, i32 0, i32 0
  %54 = load ptr, ptr %zString60, align 8
  %55 = load ptr, ptr %pComp, align 8
  %nByte61 = getelementptr inbounds nuw %struct.SyString, ptr %55, i32 0, i32 1
  %56 = load i32, ptr %nByte61, align 8
  %call62 = call i32 @ph7_result_string(ptr noundef %52, ptr noundef %54, i32 noundef %56)
  br label %if.end63

if.end63:                                         ; preds = %if.else59, %if.then57
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.then14
  %sQuery = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 3
  store ptr %sQuery, ptr %pComp, align 8
  %57 = load ptr, ptr %pComp, align 8
  %nByte65 = getelementptr inbounds nuw %struct.SyString, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %nByte65, align 8
  %cmp66 = icmp ult i32 %58, 1
  br i1 %cmp66, label %if.then67, label %if.else69

if.then67:                                        ; preds = %sw.bb64
  %59 = load ptr, ptr %pCtx.addr, align 8
  %call68 = call i32 @ph7_result_null(ptr noundef %59)
  br label %if.end73

if.else69:                                        ; preds = %sw.bb64
  %60 = load ptr, ptr %pCtx.addr, align 8
  %61 = load ptr, ptr %pComp, align 8
  %zString70 = getelementptr inbounds nuw %struct.SyString, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %zString70, align 8
  %63 = load ptr, ptr %pComp, align 8
  %nByte71 = getelementptr inbounds nuw %struct.SyString, ptr %63, i32 0, i32 1
  %64 = load i32, ptr %nByte71, align 8
  %call72 = call i32 @ph7_result_string(ptr noundef %60, ptr noundef %62, i32 noundef %64)
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then67
  br label %sw.epilog

sw.bb74:                                          ; preds = %if.then14
  %sFragment = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 4
  store ptr %sFragment, ptr %pComp, align 8
  %65 = load ptr, ptr %pComp, align 8
  %nByte75 = getelementptr inbounds nuw %struct.SyString, ptr %65, i32 0, i32 1
  %66 = load i32, ptr %nByte75, align 8
  %cmp76 = icmp ult i32 %66, 1
  br i1 %cmp76, label %if.then77, label %if.else79

if.then77:                                        ; preds = %sw.bb74
  %67 = load ptr, ptr %pCtx.addr, align 8
  %call78 = call i32 @ph7_result_null(ptr noundef %67)
  br label %if.end83

if.else79:                                        ; preds = %sw.bb74
  %68 = load ptr, ptr %pCtx.addr, align 8
  %69 = load ptr, ptr %pComp, align 8
  %zString80 = getelementptr inbounds nuw %struct.SyString, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %zString80, align 8
  %71 = load ptr, ptr %pComp, align 8
  %nByte81 = getelementptr inbounds nuw %struct.SyString, ptr %71, i32 0, i32 1
  %72 = load i32, ptr %nByte81, align 8
  %call82 = call i32 @ph7_result_string(ptr noundef %68, ptr noundef %70, i32 noundef %72)
  br label %if.end83

if.end83:                                         ; preds = %if.else79, %if.then77
  br label %sw.epilog

sw.bb84:                                          ; preds = %if.then14
  %sPath = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 2
  store ptr %sPath, ptr %pComp, align 8
  %73 = load ptr, ptr %pComp, align 8
  %nByte85 = getelementptr inbounds nuw %struct.SyString, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %nByte85, align 8
  %cmp86 = icmp ult i32 %74, 1
  br i1 %cmp86, label %if.then87, label %if.else89

if.then87:                                        ; preds = %sw.bb84
  %75 = load ptr, ptr %pCtx.addr, align 8
  %call88 = call i32 @ph7_result_null(ptr noundef %75)
  br label %if.end93

if.else89:                                        ; preds = %sw.bb84
  %76 = load ptr, ptr %pCtx.addr, align 8
  %77 = load ptr, ptr %pComp, align 8
  %zString90 = getelementptr inbounds nuw %struct.SyString, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %zString90, align 8
  %79 = load ptr, ptr %pComp, align 8
  %nByte91 = getelementptr inbounds nuw %struct.SyString, ptr %79, i32 0, i32 1
  %80 = load i32, ptr %nByte91, align 8
  %call92 = call i32 @ph7_result_string(ptr noundef %76, ptr noundef %78, i32 noundef %80)
  br label %if.end93

if.end93:                                         ; preds = %if.else89, %if.then87
  br label %sw.epilog

sw.default:                                       ; preds = %if.then14
  %81 = load ptr, ptr %pCtx.addr, align 8
  %call94 = call i32 @ph7_result_null(ptr noundef %81)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end93, %if.end83, %if.end73, %if.end63, %if.end53, %if.end43, %if.end32, %if.end22
  br label %if.end187

if.else95:                                        ; preds = %if.end12
  %82 = load ptr, ptr %pCtx.addr, align 8
  %call96 = call ptr @ph7_context_new_array(ptr noundef %82)
  store ptr %call96, ptr %pArray, align 8
  %83 = load ptr, ptr %pCtx.addr, align 8
  %call97 = call ptr @ph7_context_new_scalar(ptr noundef %83)
  store ptr %call97, ptr %pValue, align 8
  %84 = load ptr, ptr %pArray, align 8
  %cmp98 = icmp eq ptr %84, null
  br i1 %cmp98, label %if.then101, label %lor.lhs.false99

lor.lhs.false99:                                  ; preds = %if.else95
  %85 = load ptr, ptr %pValue, align 8
  %cmp100 = icmp eq ptr %85, null
  br i1 %cmp100, label %if.then101, label %if.end104

if.then101:                                       ; preds = %lor.lhs.false99, %if.else95
  %86 = load ptr, ptr %pCtx.addr, align 8
  %call102 = call i32 @ph7_context_throw_error(ptr noundef %86, i32 noundef 1, ptr noundef @.str.209)
  %87 = load ptr, ptr %pCtx.addr, align 8
  %call103 = call i32 @ph7_result_bool(ptr noundef %87, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %lor.lhs.false99
  %sScheme105 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 5
  store ptr %sScheme105, ptr %pComp, align 8
  %88 = load ptr, ptr %pComp, align 8
  %nByte106 = getelementptr inbounds nuw %struct.SyString, ptr %88, i32 0, i32 1
  %89 = load i32, ptr %nByte106, align 8
  %cmp107 = icmp ugt i32 %89, 0
  br i1 %cmp107, label %if.then108, label %if.end113

if.then108:                                       ; preds = %if.end104
  %90 = load ptr, ptr %pValue, align 8
  %91 = load ptr, ptr %pComp, align 8
  %zString109 = getelementptr inbounds nuw %struct.SyString, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %zString109, align 8
  %93 = load ptr, ptr %pComp, align 8
  %nByte110 = getelementptr inbounds nuw %struct.SyString, ptr %93, i32 0, i32 1
  %94 = load i32, ptr %nByte110, align 8
  %call111 = call i32 @ph7_value_string(ptr noundef %90, ptr noundef %92, i32 noundef %94)
  %95 = load ptr, ptr %pArray, align 8
  %96 = load ptr, ptr %pValue, align 8
  %call112 = call i32 @ph7_array_add_strkey_elem(ptr noundef %95, ptr noundef @.str.557, ptr noundef %96)
  br label %if.end113

if.end113:                                        ; preds = %if.then108, %if.end104
  %97 = load ptr, ptr %pValue, align 8
  %call114 = call i32 @ph7_value_reset_string_cursor(ptr noundef %97)
  %sHost115 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 0
  store ptr %sHost115, ptr %pComp, align 8
  %98 = load ptr, ptr %pComp, align 8
  %nByte116 = getelementptr inbounds nuw %struct.SyString, ptr %98, i32 0, i32 1
  %99 = load i32, ptr %nByte116, align 8
  %cmp117 = icmp ugt i32 %99, 0
  br i1 %cmp117, label %if.then118, label %if.end123

if.then118:                                       ; preds = %if.end113
  %100 = load ptr, ptr %pValue, align 8
  %101 = load ptr, ptr %pComp, align 8
  %zString119 = getelementptr inbounds nuw %struct.SyString, ptr %101, i32 0, i32 0
  %102 = load ptr, ptr %zString119, align 8
  %103 = load ptr, ptr %pComp, align 8
  %nByte120 = getelementptr inbounds nuw %struct.SyString, ptr %103, i32 0, i32 1
  %104 = load i32, ptr %nByte120, align 8
  %call121 = call i32 @ph7_value_string(ptr noundef %100, ptr noundef %102, i32 noundef %104)
  %105 = load ptr, ptr %pArray, align 8
  %106 = load ptr, ptr %pValue, align 8
  %call122 = call i32 @ph7_array_add_strkey_elem(ptr noundef %105, ptr noundef @.str.558, ptr noundef %106)
  br label %if.end123

if.end123:                                        ; preds = %if.then118, %if.end113
  %107 = load ptr, ptr %pValue, align 8
  %call124 = call i32 @ph7_value_reset_string_cursor(ptr noundef %107)
  %sPort125 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 1
  store ptr %sPort125, ptr %pComp, align 8
  %108 = load ptr, ptr %pComp, align 8
  %nByte126 = getelementptr inbounds nuw %struct.SyString, ptr %108, i32 0, i32 1
  %109 = load i32, ptr %nByte126, align 8
  %cmp127 = icmp ugt i32 %109, 0
  br i1 %cmp127, label %if.then128, label %if.end135

if.then128:                                       ; preds = %if.end123
  store i32 0, ptr %iPort129, align 4
  %110 = load ptr, ptr %pComp, align 8
  %zString130 = getelementptr inbounds nuw %struct.SyString, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %zString130, align 8
  %112 = load ptr, ptr %pComp, align 8
  %nByte131 = getelementptr inbounds nuw %struct.SyString, ptr %112, i32 0, i32 1
  %113 = load i32, ptr %nByte131, align 8
  %call132 = call i32 @SyStrToInt32(ptr noundef %111, i32 noundef %113, ptr noundef %iPort129, ptr noundef null)
  %114 = load ptr, ptr %pValue, align 8
  %115 = load i32, ptr %iPort129, align 4
  %call133 = call i32 @ph7_value_int(ptr noundef %114, i32 noundef %115)
  %116 = load ptr, ptr %pArray, align 8
  %117 = load ptr, ptr %pValue, align 8
  %call134 = call i32 @ph7_array_add_strkey_elem(ptr noundef %116, ptr noundef @.str.559, ptr noundef %117)
  br label %if.end135

if.end135:                                        ; preds = %if.then128, %if.end123
  %118 = load ptr, ptr %pValue, align 8
  %call136 = call i32 @ph7_value_reset_string_cursor(ptr noundef %118)
  %sUser137 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 6
  store ptr %sUser137, ptr %pComp, align 8
  %119 = load ptr, ptr %pComp, align 8
  %nByte138 = getelementptr inbounds nuw %struct.SyString, ptr %119, i32 0, i32 1
  %120 = load i32, ptr %nByte138, align 8
  %cmp139 = icmp ugt i32 %120, 0
  br i1 %cmp139, label %if.then140, label %if.end145

if.then140:                                       ; preds = %if.end135
  %121 = load ptr, ptr %pValue, align 8
  %122 = load ptr, ptr %pComp, align 8
  %zString141 = getelementptr inbounds nuw %struct.SyString, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %zString141, align 8
  %124 = load ptr, ptr %pComp, align 8
  %nByte142 = getelementptr inbounds nuw %struct.SyString, ptr %124, i32 0, i32 1
  %125 = load i32, ptr %nByte142, align 8
  %call143 = call i32 @ph7_value_string(ptr noundef %121, ptr noundef %123, i32 noundef %125)
  %126 = load ptr, ptr %pArray, align 8
  %127 = load ptr, ptr %pValue, align 8
  %call144 = call i32 @ph7_array_add_strkey_elem(ptr noundef %126, ptr noundef @.str.495, ptr noundef %127)
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %if.end135
  %128 = load ptr, ptr %pValue, align 8
  %call146 = call i32 @ph7_value_reset_string_cursor(ptr noundef %128)
  %sPass147 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 7
  store ptr %sPass147, ptr %pComp, align 8
  %129 = load ptr, ptr %pComp, align 8
  %nByte148 = getelementptr inbounds nuw %struct.SyString, ptr %129, i32 0, i32 1
  %130 = load i32, ptr %nByte148, align 8
  %cmp149 = icmp ugt i32 %130, 0
  br i1 %cmp149, label %if.then150, label %if.end155

if.then150:                                       ; preds = %if.end145
  %131 = load ptr, ptr %pValue, align 8
  %132 = load ptr, ptr %pComp, align 8
  %zString151 = getelementptr inbounds nuw %struct.SyString, ptr %132, i32 0, i32 0
  %133 = load ptr, ptr %zString151, align 8
  %134 = load ptr, ptr %pComp, align 8
  %nByte152 = getelementptr inbounds nuw %struct.SyString, ptr %134, i32 0, i32 1
  %135 = load i32, ptr %nByte152, align 8
  %call153 = call i32 @ph7_value_string(ptr noundef %131, ptr noundef %133, i32 noundef %135)
  %136 = load ptr, ptr %pArray, align 8
  %137 = load ptr, ptr %pValue, align 8
  %call154 = call i32 @ph7_array_add_strkey_elem(ptr noundef %136, ptr noundef @.str.560, ptr noundef %137)
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %if.end145
  %138 = load ptr, ptr %pValue, align 8
  %call156 = call i32 @ph7_value_reset_string_cursor(ptr noundef %138)
  %sPath157 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 2
  store ptr %sPath157, ptr %pComp, align 8
  %139 = load ptr, ptr %pComp, align 8
  %nByte158 = getelementptr inbounds nuw %struct.SyString, ptr %139, i32 0, i32 1
  %140 = load i32, ptr %nByte158, align 8
  %cmp159 = icmp ugt i32 %140, 0
  br i1 %cmp159, label %if.then160, label %if.end165

if.then160:                                       ; preds = %if.end155
  %141 = load ptr, ptr %pValue, align 8
  %142 = load ptr, ptr %pComp, align 8
  %zString161 = getelementptr inbounds nuw %struct.SyString, ptr %142, i32 0, i32 0
  %143 = load ptr, ptr %zString161, align 8
  %144 = load ptr, ptr %pComp, align 8
  %nByte162 = getelementptr inbounds nuw %struct.SyString, ptr %144, i32 0, i32 1
  %145 = load i32, ptr %nByte162, align 8
  %call163 = call i32 @ph7_value_string(ptr noundef %141, ptr noundef %143, i32 noundef %145)
  %146 = load ptr, ptr %pArray, align 8
  %147 = load ptr, ptr %pValue, align 8
  %call164 = call i32 @ph7_array_add_strkey_elem(ptr noundef %146, ptr noundef @.str.561, ptr noundef %147)
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %if.end155
  %148 = load ptr, ptr %pValue, align 8
  %call166 = call i32 @ph7_value_reset_string_cursor(ptr noundef %148)
  %sQuery167 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 3
  store ptr %sQuery167, ptr %pComp, align 8
  %149 = load ptr, ptr %pComp, align 8
  %nByte168 = getelementptr inbounds nuw %struct.SyString, ptr %149, i32 0, i32 1
  %150 = load i32, ptr %nByte168, align 8
  %cmp169 = icmp ugt i32 %150, 0
  br i1 %cmp169, label %if.then170, label %if.end175

if.then170:                                       ; preds = %if.end165
  %151 = load ptr, ptr %pValue, align 8
  %152 = load ptr, ptr %pComp, align 8
  %zString171 = getelementptr inbounds nuw %struct.SyString, ptr %152, i32 0, i32 0
  %153 = load ptr, ptr %zString171, align 8
  %154 = load ptr, ptr %pComp, align 8
  %nByte172 = getelementptr inbounds nuw %struct.SyString, ptr %154, i32 0, i32 1
  %155 = load i32, ptr %nByte172, align 8
  %call173 = call i32 @ph7_value_string(ptr noundef %151, ptr noundef %153, i32 noundef %155)
  %156 = load ptr, ptr %pArray, align 8
  %157 = load ptr, ptr %pValue, align 8
  %call174 = call i32 @ph7_array_add_strkey_elem(ptr noundef %156, ptr noundef @.str.562, ptr noundef %157)
  br label %if.end175

if.end175:                                        ; preds = %if.then170, %if.end165
  %158 = load ptr, ptr %pValue, align 8
  %call176 = call i32 @ph7_value_reset_string_cursor(ptr noundef %158)
  %sFragment177 = getelementptr inbounds nuw %struct.SyhttpUri, ptr %sURI, i32 0, i32 4
  store ptr %sFragment177, ptr %pComp, align 8
  %159 = load ptr, ptr %pComp, align 8
  %nByte178 = getelementptr inbounds nuw %struct.SyString, ptr %159, i32 0, i32 1
  %160 = load i32, ptr %nByte178, align 8
  %cmp179 = icmp ugt i32 %160, 0
  br i1 %cmp179, label %if.then180, label %if.end185

if.then180:                                       ; preds = %if.end175
  %161 = load ptr, ptr %pValue, align 8
  %162 = load ptr, ptr %pComp, align 8
  %zString181 = getelementptr inbounds nuw %struct.SyString, ptr %162, i32 0, i32 0
  %163 = load ptr, ptr %zString181, align 8
  %164 = load ptr, ptr %pComp, align 8
  %nByte182 = getelementptr inbounds nuw %struct.SyString, ptr %164, i32 0, i32 1
  %165 = load i32, ptr %nByte182, align 8
  %call183 = call i32 @ph7_value_string(ptr noundef %161, ptr noundef %163, i32 noundef %165)
  %166 = load ptr, ptr %pArray, align 8
  %167 = load ptr, ptr %pValue, align 8
  %call184 = call i32 @ph7_array_add_strkey_elem(ptr noundef %166, ptr noundef @.str.563, ptr noundef %167)
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %if.end175
  %168 = load ptr, ptr %pCtx.addr, align 8
  %169 = load ptr, ptr %pArray, align 8
  %call186 = call i32 @ph7_result_value(ptr noundef %168, ptr noundef %169)
  br label %if.end187

if.end187:                                        ; preds = %if.end185, %sw.epilog
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end187, %if.then101, %if.then10, %if.then5, %if.then
  %170 = load i32, ptr %retval, align 4
  ret i32 %170
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmHttpSplitURI(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrToInt32(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
