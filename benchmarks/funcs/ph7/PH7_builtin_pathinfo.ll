; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_info = type { %struct.SyString, %struct.SyString, %struct.SyString, %struct.SyString }
%struct.SyString = type { ptr, i32 }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.1170 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1171 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.1222 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.1223 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

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
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_pathinfo(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zPath = alloca ptr, align 8
  %sInfo = alloca %struct.path_info, align 8
  %pComp = alloca ptr, align 8
  %iLen = alloca i32, align 4
  %nComp = alloca i32, align 4
  %pArray = alloca ptr, align 8
  %pValue = alloca ptr, align 8
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
  %call1 = call i32 @ph7_result_string(ptr noundef %3, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %iLen)
  store ptr %call3, ptr %zPath, align 8
  %6 = load i32, ptr %iLen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_string(ptr noundef %7, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %zPath, align 8
  %9 = load i32, ptr %iLen, align 4
  %call8 = call i32 @ExtractPathInfo(ptr noundef %8, i32 noundef %9, ptr noundef %sInfo)
  %10 = load i32, ptr %nArg.addr, align 4
  %cmp9 = icmp sgt i32 %10, 1
  br i1 %cmp9, label %land.lhs.true, label %if.else53

land.lhs.true:                                    ; preds = %if.end7
  %11 = load ptr, ptr %apArg.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %11, i64 1
  %12 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @ph7_value_is_int(ptr noundef %12)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.else53

if.then13:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %13, i64 1
  %14 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i32 @ph7_value_to_int(ptr noundef %14)
  store i32 %call15, ptr %nComp, align 4
  %15 = load i32, ptr %nComp, align 4
  switch i32 %15, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb22
    i32 3, label %sw.bb32
    i32 4, label %sw.bb42
  ]

sw.bb:                                            ; preds = %if.then13
  %sDir = getelementptr inbounds nuw %struct.path_info, ptr %sInfo, i32 0, i32 0
  store ptr %sDir, ptr %pComp, align 8
  %16 = load ptr, ptr %pComp, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %nByte, align 8
  %cmp16 = icmp ugt i32 %17, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb
  %18 = load ptr, ptr %pCtx.addr, align 8
  %19 = load ptr, ptr %pComp, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %zString, align 8
  %21 = load ptr, ptr %pComp, align 8
  %nByte18 = getelementptr inbounds nuw %struct.SyString, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %nByte18, align 8
  %call19 = call i32 @ph7_result_string(ptr noundef %18, ptr noundef %20, i32 noundef %22)
  br label %if.end21

if.else:                                          ; preds = %sw.bb
  %23 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_result_string(ptr noundef %23, ptr noundef @.str.4, i32 noundef 0)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.then13
  %sBasename = getelementptr inbounds nuw %struct.path_info, ptr %sInfo, i32 0, i32 1
  store ptr %sBasename, ptr %pComp, align 8
  %24 = load ptr, ptr %pComp, align 8
  %nByte23 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nByte23, align 8
  %cmp24 = icmp ugt i32 %25, 0
  br i1 %cmp24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %sw.bb22
  %26 = load ptr, ptr %pCtx.addr, align 8
  %27 = load ptr, ptr %pComp, align 8
  %zString26 = getelementptr inbounds nuw %struct.SyString, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %zString26, align 8
  %29 = load ptr, ptr %pComp, align 8
  %nByte27 = getelementptr inbounds nuw %struct.SyString, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %nByte27, align 8
  %call28 = call i32 @ph7_result_string(ptr noundef %26, ptr noundef %28, i32 noundef %30)
  br label %if.end31

if.else29:                                        ; preds = %sw.bb22
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call30 = call i32 @ph7_result_string(ptr noundef %31, ptr noundef @.str.4, i32 noundef 0)
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then25
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.then13
  %sExtension = getelementptr inbounds nuw %struct.path_info, ptr %sInfo, i32 0, i32 2
  store ptr %sExtension, ptr %pComp, align 8
  %32 = load ptr, ptr %pComp, align 8
  %nByte33 = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %nByte33, align 8
  %cmp34 = icmp ugt i32 %33, 0
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %sw.bb32
  %34 = load ptr, ptr %pCtx.addr, align 8
  %35 = load ptr, ptr %pComp, align 8
  %zString36 = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %zString36, align 8
  %37 = load ptr, ptr %pComp, align 8
  %nByte37 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte37, align 8
  %call38 = call i32 @ph7_result_string(ptr noundef %34, ptr noundef %36, i32 noundef %38)
  br label %if.end41

if.else39:                                        ; preds = %sw.bb32
  %39 = load ptr, ptr %pCtx.addr, align 8
  %call40 = call i32 @ph7_result_string(ptr noundef %39, ptr noundef @.str.4, i32 noundef 0)
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then35
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.then13
  %sFilename = getelementptr inbounds nuw %struct.path_info, ptr %sInfo, i32 0, i32 3
  store ptr %sFilename, ptr %pComp, align 8
  %40 = load ptr, ptr %pComp, align 8
  %nByte43 = getelementptr inbounds nuw %struct.SyString, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %nByte43, align 8
  %cmp44 = icmp ugt i32 %41, 0
  br i1 %cmp44, label %if.then45, label %if.else49

if.then45:                                        ; preds = %sw.bb42
  %42 = load ptr, ptr %pCtx.addr, align 8
  %43 = load ptr, ptr %pComp, align 8
  %zString46 = getelementptr inbounds nuw %struct.SyString, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %zString46, align 8
  %45 = load ptr, ptr %pComp, align 8
  %nByte47 = getelementptr inbounds nuw %struct.SyString, ptr %45, i32 0, i32 1
  %46 = load i32, ptr %nByte47, align 8
  %call48 = call i32 @ph7_result_string(ptr noundef %42, ptr noundef %44, i32 noundef %46)
  br label %if.end51

if.else49:                                        ; preds = %sw.bb42
  %47 = load ptr, ptr %pCtx.addr, align 8
  %call50 = call i32 @ph7_result_string(ptr noundef %47, ptr noundef @.str.4, i32 noundef 0)
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then45
  br label %sw.epilog

sw.default:                                       ; preds = %if.then13
  %48 = load ptr, ptr %pCtx.addr, align 8
  %call52 = call i32 @ph7_result_string(ptr noundef %48, ptr noundef @.str.4, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end51, %if.end41, %if.end31, %if.end21
  br label %if.end102

if.else53:                                        ; preds = %land.lhs.true, %if.end7
  %49 = load ptr, ptr %pCtx.addr, align 8
  %call54 = call ptr @ph7_context_new_array(ptr noundef %49)
  store ptr %call54, ptr %pArray, align 8
  %50 = load ptr, ptr %pCtx.addr, align 8
  %call55 = call ptr @ph7_context_new_scalar(ptr noundef %50)
  store ptr %call55, ptr %pValue, align 8
  %51 = load ptr, ptr %pArray, align 8
  %cmp56 = icmp eq ptr %51, null
  br i1 %cmp56, label %if.then59, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.else53
  %52 = load ptr, ptr %pValue, align 8
  %cmp58 = icmp eq ptr %52, null
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %lor.lhs.false57, %if.else53
  %53 = load ptr, ptr %pCtx.addr, align 8
  %call60 = call i32 @ph7_result_bool(ptr noundef %53, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %lor.lhs.false57
  %sDir62 = getelementptr inbounds nuw %struct.path_info, ptr %sInfo, i32 0, i32 0
  store ptr %sDir62, ptr %pComp, align 8
  %54 = load ptr, ptr %pComp, align 8
  %nByte63 = getelementptr inbounds nuw %struct.SyString, ptr %54, i32 0, i32 1
  %55 = load i32, ptr %nByte63, align 8
  %cmp64 = icmp ugt i32 %55, 0
  br i1 %cmp64, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end61
  %56 = load ptr, ptr %pValue, align 8
  %57 = load ptr, ptr %pComp, align 8
  %zString66 = getelementptr inbounds nuw %struct.SyString, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %zString66, align 8
  %59 = load ptr, ptr %pComp, align 8
  %nByte67 = getelementptr inbounds nuw %struct.SyString, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %nByte67, align 8
  %call68 = call i32 @ph7_value_string(ptr noundef %56, ptr noundef %58, i32 noundef %60)
  %61 = load ptr, ptr %pArray, align 8
  %62 = load ptr, ptr %pValue, align 8
  %call69 = call i32 @ph7_array_add_strkey_elem(ptr noundef %61, ptr noundef @.str.1170, ptr noundef %62)
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.end61
  %63 = load ptr, ptr %pValue, align 8
  %call71 = call i32 @ph7_value_reset_string_cursor(ptr noundef %63)
  %sBasename72 = getelementptr inbounds nuw %struct.path_info, ptr %sInfo, i32 0, i32 1
  store ptr %sBasename72, ptr %pComp, align 8
  %64 = load ptr, ptr %pComp, align 8
  %nByte73 = getelementptr inbounds nuw %struct.SyString, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %nByte73, align 8
  %cmp74 = icmp ugt i32 %65, 0
  br i1 %cmp74, label %if.then75, label %if.end80

if.then75:                                        ; preds = %if.end70
  %66 = load ptr, ptr %pValue, align 8
  %67 = load ptr, ptr %pComp, align 8
  %zString76 = getelementptr inbounds nuw %struct.SyString, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %zString76, align 8
  %69 = load ptr, ptr %pComp, align 8
  %nByte77 = getelementptr inbounds nuw %struct.SyString, ptr %69, i32 0, i32 1
  %70 = load i32, ptr %nByte77, align 8
  %call78 = call i32 @ph7_value_string(ptr noundef %66, ptr noundef %68, i32 noundef %70)
  %71 = load ptr, ptr %pArray, align 8
  %72 = load ptr, ptr %pValue, align 8
  %call79 = call i32 @ph7_array_add_strkey_elem(ptr noundef %71, ptr noundef @.str.1171, ptr noundef %72)
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end70
  %73 = load ptr, ptr %pValue, align 8
  %call81 = call i32 @ph7_value_reset_string_cursor(ptr noundef %73)
  %sExtension82 = getelementptr inbounds nuw %struct.path_info, ptr %sInfo, i32 0, i32 2
  store ptr %sExtension82, ptr %pComp, align 8
  %74 = load ptr, ptr %pComp, align 8
  %nByte83 = getelementptr inbounds nuw %struct.SyString, ptr %74, i32 0, i32 1
  %75 = load i32, ptr %nByte83, align 8
  %cmp84 = icmp ugt i32 %75, 0
  br i1 %cmp84, label %if.then85, label %if.end90

if.then85:                                        ; preds = %if.end80
  %76 = load ptr, ptr %pValue, align 8
  %77 = load ptr, ptr %pComp, align 8
  %zString86 = getelementptr inbounds nuw %struct.SyString, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %zString86, align 8
  %79 = load ptr, ptr %pComp, align 8
  %nByte87 = getelementptr inbounds nuw %struct.SyString, ptr %79, i32 0, i32 1
  %80 = load i32, ptr %nByte87, align 8
  %call88 = call i32 @ph7_value_string(ptr noundef %76, ptr noundef %78, i32 noundef %80)
  %81 = load ptr, ptr %pArray, align 8
  %82 = load ptr, ptr %pValue, align 8
  %call89 = call i32 @ph7_array_add_strkey_elem(ptr noundef %81, ptr noundef @.str.1222, ptr noundef %82)
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end80
  %83 = load ptr, ptr %pValue, align 8
  %call91 = call i32 @ph7_value_reset_string_cursor(ptr noundef %83)
  %sFilename92 = getelementptr inbounds nuw %struct.path_info, ptr %sInfo, i32 0, i32 3
  store ptr %sFilename92, ptr %pComp, align 8
  %84 = load ptr, ptr %pComp, align 8
  %nByte93 = getelementptr inbounds nuw %struct.SyString, ptr %84, i32 0, i32 1
  %85 = load i32, ptr %nByte93, align 8
  %cmp94 = icmp ugt i32 %85, 0
  br i1 %cmp94, label %if.then95, label %if.end100

if.then95:                                        ; preds = %if.end90
  %86 = load ptr, ptr %pValue, align 8
  %87 = load ptr, ptr %pComp, align 8
  %zString96 = getelementptr inbounds nuw %struct.SyString, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %zString96, align 8
  %89 = load ptr, ptr %pComp, align 8
  %nByte97 = getelementptr inbounds nuw %struct.SyString, ptr %89, i32 0, i32 1
  %90 = load i32, ptr %nByte97, align 8
  %call98 = call i32 @ph7_value_string(ptr noundef %86, ptr noundef %88, i32 noundef %90)
  %91 = load ptr, ptr %pArray, align 8
  %92 = load ptr, ptr %pValue, align 8
  %call99 = call i32 @ph7_array_add_strkey_elem(ptr noundef %91, ptr noundef @.str.1223, ptr noundef %92)
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %if.end90
  %93 = load ptr, ptr %pCtx.addr, align 8
  %94 = load ptr, ptr %pArray, align 8
  %call101 = call i32 @ph7_result_value(ptr noundef %93, ptr noundef %94)
  br label %if.end102

if.end102:                                        ; preds = %if.end100, %sw.epilog
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end102, %if.then59, %if.then5, %if.then
  %95 = load i32, ptr %retval, align 4
  ret i32 %95
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ExtractPathInfo(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
