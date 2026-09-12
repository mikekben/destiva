; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_decoder = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.619 = external hidden unnamed_addr constant [57 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @ph7_context_release_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToNumeric(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmJsonDecode(ptr noundef %pDecoder, ptr noundef %pArrayKey) #0 {
entry:
  %retval = alloca i32, align 4
  %pDecoder.addr = alloca ptr, align 8
  %pArrayKey.addr = alloca ptr, align 8
  %pWorker = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pStr = alloca ptr, align 8
  %xOld = alloca ptr, align 8
  %pOld = alloca ptr, align 8
  %xOld113 = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %pOld114 = alloca ptr, align 8
  store ptr %pDecoder, ptr %pDecoder.addr, align 8
  store ptr %pArrayKey, ptr %pArrayKey.addr, align 8
  %0 = load ptr, ptr %pDecoder.addr, align 8
  %rec_count = getelementptr inbounds nuw %struct.json_decoder, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %rec_count, align 4
  %2 = load ptr, ptr %pDecoder.addr, align 8
  %rec_depth = getelementptr inbounds nuw %struct.json_decoder, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %rec_depth, align 8
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pDecoder.addr, align 8
  %pErr = getelementptr inbounds nuw %struct.json_decoder, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %pErr, align 8
  store i32 1, ptr %5, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pDecoder.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.json_decoder, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pIn, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nType, align 8
  %and = and i32 %8, 31
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else44

if.then1:                                         ; preds = %if.end
  %9 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx = getelementptr inbounds nuw %struct.json_decoder, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pCtx, align 8
  %call = call ptr @ph7_context_new_scalar(ptr noundef %10)
  store ptr %call, ptr %pWorker, align 8
  %11 = load ptr, ptr %pWorker, align 8
  %cmp2 = icmp eq ptr %11, null
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then1
  %12 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx4 = getelementptr inbounds nuw %struct.json_decoder, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pCtx4, align 8
  %call5 = call i32 @ph7_context_throw_error(ptr noundef %13, i32 noundef 1, ptr noundef @.str.536)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then1
  %14 = load ptr, ptr %pDecoder.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.json_decoder, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pIn7, align 8
  %nType8 = getelementptr inbounds nuw %struct.SyToken, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nType8, align 8
  %and9 = and i32 %16, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  %17 = load ptr, ptr %pWorker, align 8
  %call12 = call i32 @ph7_value_null(ptr noundef %17)
  br label %if.end37

if.else:                                          ; preds = %if.end6
  %18 = load ptr, ptr %pDecoder.addr, align 8
  %pIn13 = getelementptr inbounds nuw %struct.json_decoder, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %pIn13, align 8
  %nType14 = getelementptr inbounds nuw %struct.SyToken, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nType14, align 8
  %and15 = and i32 %20, 3
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else23

if.then17:                                        ; preds = %if.else
  %21 = load ptr, ptr %pWorker, align 8
  %22 = load ptr, ptr %pDecoder.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.json_decoder, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %pIn18, align 8
  %nType19 = getelementptr inbounds nuw %struct.SyToken, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %nType19, align 8
  %and20 = and i32 %24, 1
  %tobool21 = icmp ne i32 %and20, 0
  %25 = zext i1 %tobool21 to i64
  %cond = select i1 %tobool21, i32 1, i32 0
  %call22 = call i32 @ph7_value_bool(ptr noundef %21, i32 noundef %cond)
  br label %if.end36

if.else23:                                        ; preds = %if.else
  %26 = load ptr, ptr %pDecoder.addr, align 8
  %pIn24 = getelementptr inbounds nuw %struct.json_decoder, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pIn24, align 8
  %nType25 = getelementptr inbounds nuw %struct.SyToken, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nType25, align 8
  %and26 = and i32 %28, 16
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.else32

if.then28:                                        ; preds = %if.else23
  %29 = load ptr, ptr %pDecoder.addr, align 8
  %pIn29 = getelementptr inbounds nuw %struct.json_decoder, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %pIn29, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 0
  store ptr %sData, ptr %pStr, align 8
  %31 = load ptr, ptr %pWorker, align 8
  %32 = load ptr, ptr %pStr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %zString, align 8
  %34 = load ptr, ptr %pStr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %nByte, align 8
  %call30 = call i32 @ph7_value_string(ptr noundef %31, ptr noundef %33, i32 noundef %35)
  %36 = load ptr, ptr %pWorker, align 8
  %call31 = call i32 @PH7_MemObjToNumeric(ptr noundef %36)
  br label %if.end35

if.else32:                                        ; preds = %if.else23
  %37 = load ptr, ptr %pDecoder.addr, align 8
  %pIn33 = getelementptr inbounds nuw %struct.json_decoder, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %pIn33, align 8
  %sData34 = getelementptr inbounds nuw %struct.SyToken, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %pWorker, align 8
  call void @VmJsonDequoteString(ptr noundef %sData34, ptr noundef %39)
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.then28
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then17
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then11
  %40 = load ptr, ptr %pDecoder.addr, align 8
  %xConsumer = getelementptr inbounds nuw %struct.json_decoder, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %xConsumer, align 8
  %42 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx38 = getelementptr inbounds nuw %struct.json_decoder, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %pCtx38, align 8
  %44 = load ptr, ptr %pArrayKey.addr, align 8
  %45 = load ptr, ptr %pWorker, align 8
  %46 = load ptr, ptr %pDecoder.addr, align 8
  %pUserData = getelementptr inbounds nuw %struct.json_decoder, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %pUserData, align 8
  %call39 = call i32 %41(ptr noundef %43, ptr noundef %44, ptr noundef %45, ptr noundef %47)
  store i32 %call39, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  %cmp40 = icmp eq i32 %48, -10
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i32 -10, ptr %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end37
  %49 = load ptr, ptr %pDecoder.addr, align 8
  %pIn43 = getelementptr inbounds nuw %struct.json_decoder, ptr %49, i32 0, i32 4
  %50 = load ptr, ptr %pIn43, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %50, i32 1
  store ptr %incdec.ptr, ptr %pIn43, align 8
  br label %if.end208

if.else44:                                        ; preds = %if.end
  %51 = load ptr, ptr %pDecoder.addr, align 8
  %pIn45 = getelementptr inbounds nuw %struct.json_decoder, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %pIn45, align 8
  %nType46 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 0, i32 1
  %53 = load i32, ptr %nType46, align 8
  %and47 = and i32 %53, 128
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.else107

if.then49:                                        ; preds = %if.else44
  %54 = load ptr, ptr %pDecoder.addr, align 8
  %pIn50 = getelementptr inbounds nuw %struct.json_decoder, ptr %54, i32 0, i32 4
  %55 = load ptr, ptr %pIn50, align 8
  %incdec.ptr51 = getelementptr inbounds nuw %struct.SyToken, ptr %55, i32 1
  store ptr %incdec.ptr51, ptr %pIn50, align 8
  %56 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx52 = getelementptr inbounds nuw %struct.json_decoder, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %pCtx52, align 8
  %call53 = call ptr @ph7_context_new_array(ptr noundef %57)
  store ptr %call53, ptr %pWorker, align 8
  %58 = load ptr, ptr %pWorker, align 8
  %cmp54 = icmp eq ptr %58, null
  br i1 %cmp54, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.then49
  %59 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx56 = getelementptr inbounds nuw %struct.json_decoder, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %pCtx56, align 8
  %call57 = call i32 @ph7_context_throw_error(ptr noundef %60, i32 noundef 1, ptr noundef @.str.536)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.then49
  %61 = load ptr, ptr %pDecoder.addr, align 8
  %xConsumer59 = getelementptr inbounds nuw %struct.json_decoder, ptr %61, i32 0, i32 1
  %62 = load ptr, ptr %xConsumer59, align 8
  store ptr %62, ptr %xOld, align 8
  %63 = load ptr, ptr %pDecoder.addr, align 8
  %pUserData60 = getelementptr inbounds nuw %struct.json_decoder, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %pUserData60, align 8
  store ptr %64, ptr %pOld, align 8
  %65 = load ptr, ptr %pDecoder.addr, align 8
  %xConsumer61 = getelementptr inbounds nuw %struct.json_decoder, ptr %65, i32 0, i32 1
  store ptr @VmJsonArrayDecoder, ptr %xConsumer61, align 8
  %66 = load ptr, ptr %pWorker, align 8
  %67 = load ptr, ptr %pDecoder.addr, align 8
  %pUserData62 = getelementptr inbounds nuw %struct.json_decoder, ptr %67, i32 0, i32 2
  store ptr %66, ptr %pUserData62, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end102, %if.end58
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %68 = load ptr, ptr %pDecoder.addr, align 8
  %pIn63 = getelementptr inbounds nuw %struct.json_decoder, ptr %68, i32 0, i32 4
  %69 = load ptr, ptr %pIn63, align 8
  %70 = load ptr, ptr %pDecoder.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.json_decoder, ptr %70, i32 0, i32 5
  %71 = load ptr, ptr %pEnd, align 8
  %cmp64 = icmp ult ptr %69, %71
  br i1 %cmp64, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %72 = load ptr, ptr %pDecoder.addr, align 8
  %pIn65 = getelementptr inbounds nuw %struct.json_decoder, ptr %72, i32 0, i32 4
  %73 = load ptr, ptr %pIn65, align 8
  %nType66 = getelementptr inbounds nuw %struct.SyToken, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %nType66, align 8
  %and67 = and i32 %74, 1024
  %tobool68 = icmp ne i32 %and67, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %75 = phi i1 [ false, %while.cond ], [ %tobool68, %land.rhs ]
  br i1 %75, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %76 = load ptr, ptr %pDecoder.addr, align 8
  %pIn69 = getelementptr inbounds nuw %struct.json_decoder, ptr %76, i32 0, i32 4
  %77 = load ptr, ptr %pIn69, align 8
  %incdec.ptr70 = getelementptr inbounds nuw %struct.SyToken, ptr %77, i32 1
  store ptr %incdec.ptr70, ptr %pIn69, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %78 = load ptr, ptr %pDecoder.addr, align 8
  %pIn71 = getelementptr inbounds nuw %struct.json_decoder, ptr %78, i32 0, i32 4
  %79 = load ptr, ptr %pIn71, align 8
  %80 = load ptr, ptr %pDecoder.addr, align 8
  %pEnd72 = getelementptr inbounds nuw %struct.json_decoder, ptr %80, i32 0, i32 5
  %81 = load ptr, ptr %pEnd72, align 8
  %cmp73 = icmp uge ptr %79, %81
  br i1 %cmp73, label %if.then78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %82 = load ptr, ptr %pDecoder.addr, align 8
  %pIn74 = getelementptr inbounds nuw %struct.json_decoder, ptr %82, i32 0, i32 4
  %83 = load ptr, ptr %pIn74, align 8
  %nType75 = getelementptr inbounds nuw %struct.SyToken, ptr %83, i32 0, i32 1
  %84 = load i32, ptr %nType75, align 8
  %and76 = and i32 %84, 256
  %tobool77 = icmp ne i32 %and76, 0
  br i1 %tobool77, label %if.then78, label %if.end86

if.then78:                                        ; preds = %lor.lhs.false, %while.end
  %85 = load ptr, ptr %pDecoder.addr, align 8
  %pIn79 = getelementptr inbounds nuw %struct.json_decoder, ptr %85, i32 0, i32 4
  %86 = load ptr, ptr %pIn79, align 8
  %87 = load ptr, ptr %pDecoder.addr, align 8
  %pEnd80 = getelementptr inbounds nuw %struct.json_decoder, ptr %87, i32 0, i32 5
  %88 = load ptr, ptr %pEnd80, align 8
  %cmp81 = icmp ult ptr %86, %88
  br i1 %cmp81, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.then78
  %89 = load ptr, ptr %pDecoder.addr, align 8
  %pIn83 = getelementptr inbounds nuw %struct.json_decoder, ptr %89, i32 0, i32 4
  %90 = load ptr, ptr %pIn83, align 8
  %incdec.ptr84 = getelementptr inbounds nuw %struct.SyToken, ptr %90, i32 1
  store ptr %incdec.ptr84, ptr %pIn83, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.then78
  br label %for.end

if.end86:                                         ; preds = %lor.lhs.false
  %91 = load ptr, ptr %pDecoder.addr, align 8
  %rec_count87 = getelementptr inbounds nuw %struct.json_decoder, ptr %91, i32 0, i32 7
  %92 = load i32, ptr %rec_count87, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, ptr %rec_count87, align 4
  %93 = load ptr, ptr %pDecoder.addr, align 8
  %call88 = call i32 @VmJsonDecode(ptr noundef %93, ptr noundef null)
  store i32 %call88, ptr %rc, align 4
  %94 = load ptr, ptr %pDecoder.addr, align 8
  %rec_count89 = getelementptr inbounds nuw %struct.json_decoder, ptr %94, i32 0, i32 7
  %95 = load i32, ptr %rec_count89, align 4
  %dec = add nsw i32 %95, -1
  store i32 %dec, ptr %rec_count89, align 4
  %96 = load i32, ptr %rc, align 4
  %cmp90 = icmp eq i32 %96, -10
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %if.end86
  store i32 -10, ptr %retval, align 4
  br label %return

if.end92:                                         ; preds = %if.end86
  %97 = load ptr, ptr %pDecoder.addr, align 8
  %pIn93 = getelementptr inbounds nuw %struct.json_decoder, ptr %97, i32 0, i32 4
  %98 = load ptr, ptr %pIn93, align 8
  %99 = load ptr, ptr %pDecoder.addr, align 8
  %pEnd94 = getelementptr inbounds nuw %struct.json_decoder, ptr %99, i32 0, i32 5
  %100 = load ptr, ptr %pEnd94, align 8
  %cmp95 = icmp ult ptr %98, %100
  br i1 %cmp95, label %land.lhs.true, label %if.end102

land.lhs.true:                                    ; preds = %if.end92
  %101 = load ptr, ptr %pDecoder.addr, align 8
  %pIn96 = getelementptr inbounds nuw %struct.json_decoder, ptr %101, i32 0, i32 4
  %102 = load ptr, ptr %pIn96, align 8
  %nType97 = getelementptr inbounds nuw %struct.SyToken, ptr %102, i32 0, i32 1
  %103 = load i32, ptr %nType97, align 8
  %and98 = and i32 %103, 1280
  %cmp99 = icmp eq i32 %and98, 0
  br i1 %cmp99, label %if.then100, label %if.end102

if.then100:                                       ; preds = %land.lhs.true
  %104 = load ptr, ptr %pDecoder.addr, align 8
  %pErr101 = getelementptr inbounds nuw %struct.json_decoder, ptr %104, i32 0, i32 8
  %105 = load ptr, ptr %pErr101, align 8
  store i32 4, ptr %105, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end102:                                        ; preds = %land.lhs.true, %if.end92
  br label %for.cond

for.end:                                          ; preds = %if.end85
  %106 = load ptr, ptr %xOld, align 8
  %107 = load ptr, ptr %pDecoder.addr, align 8
  %xConsumer103 = getelementptr inbounds nuw %struct.json_decoder, ptr %107, i32 0, i32 1
  store ptr %106, ptr %xConsumer103, align 8
  %108 = load ptr, ptr %pOld, align 8
  %109 = load ptr, ptr %pDecoder.addr, align 8
  %pUserData104 = getelementptr inbounds nuw %struct.json_decoder, ptr %109, i32 0, i32 2
  store ptr %108, ptr %pUserData104, align 8
  %110 = load ptr, ptr %xOld, align 8
  %111 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx105 = getelementptr inbounds nuw %struct.json_decoder, ptr %111, i32 0, i32 0
  %112 = load ptr, ptr %pCtx105, align 8
  %113 = load ptr, ptr %pArrayKey.addr, align 8
  %114 = load ptr, ptr %pWorker, align 8
  %115 = load ptr, ptr %pOld, align 8
  %call106 = call i32 %110(ptr noundef %112, ptr noundef %113, ptr noundef %114, ptr noundef %115)
  br label %if.end207

if.else107:                                       ; preds = %if.else44
  %116 = load ptr, ptr %pDecoder.addr, align 8
  %pIn108 = getelementptr inbounds nuw %struct.json_decoder, ptr %116, i32 0, i32 4
  %117 = load ptr, ptr %pIn108, align 8
  %nType109 = getelementptr inbounds nuw %struct.SyToken, ptr %117, i32 0, i32 1
  %118 = load i32, ptr %nType109, align 8
  %and110 = and i32 %118, 32
  %tobool111 = icmp ne i32 %and110, 0
  br i1 %tobool111, label %if.then112, label %if.else205

if.then112:                                       ; preds = %if.else107
  %119 = load ptr, ptr %pDecoder.addr, align 8
  %pIn115 = getelementptr inbounds nuw %struct.json_decoder, ptr %119, i32 0, i32 4
  %120 = load ptr, ptr %pIn115, align 8
  %incdec.ptr116 = getelementptr inbounds nuw %struct.SyToken, ptr %120, i32 1
  store ptr %incdec.ptr116, ptr %pIn115, align 8
  %121 = load ptr, ptr %pDecoder.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.json_decoder, ptr %121, i32 0, i32 3
  %122 = load i32, ptr %iFlags, align 8
  %and117 = and i32 %122, 1
  %cmp118 = icmp eq i32 %and117, 0
  br i1 %cmp118, label %if.then119, label %if.end122

if.then119:                                       ; preds = %if.then112
  %123 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx120 = getelementptr inbounds nuw %struct.json_decoder, ptr %123, i32 0, i32 0
  %124 = load ptr, ptr %pCtx120, align 8
  %call121 = call i32 @ph7_context_throw_error(ptr noundef %124, i32 noundef 2, ptr noundef @.str.619)
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.then112
  %125 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx123 = getelementptr inbounds nuw %struct.json_decoder, ptr %125, i32 0, i32 0
  %126 = load ptr, ptr %pCtx123, align 8
  %call124 = call ptr @ph7_context_new_array(ptr noundef %126)
  store ptr %call124, ptr %pWorker, align 8
  %127 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx125 = getelementptr inbounds nuw %struct.json_decoder, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %pCtx125, align 8
  %call126 = call ptr @ph7_context_new_scalar(ptr noundef %128)
  store ptr %call126, ptr %pKey, align 8
  %129 = load ptr, ptr %pWorker, align 8
  %cmp127 = icmp eq ptr %129, null
  br i1 %cmp127, label %if.then130, label %lor.lhs.false128

lor.lhs.false128:                                 ; preds = %if.end122
  %130 = load ptr, ptr %pKey, align 8
  %cmp129 = icmp eq ptr %130, null
  br i1 %cmp129, label %if.then130, label %if.end133

if.then130:                                       ; preds = %lor.lhs.false128, %if.end122
  %131 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx131 = getelementptr inbounds nuw %struct.json_decoder, ptr %131, i32 0, i32 0
  %132 = load ptr, ptr %pCtx131, align 8
  %call132 = call i32 @ph7_context_throw_error(ptr noundef %132, i32 noundef 1, ptr noundef @.str.536)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end133:                                        ; preds = %lor.lhs.false128
  %133 = load ptr, ptr %pDecoder.addr, align 8
  %xConsumer134 = getelementptr inbounds nuw %struct.json_decoder, ptr %133, i32 0, i32 1
  %134 = load ptr, ptr %xConsumer134, align 8
  store ptr %134, ptr %xOld113, align 8
  %135 = load ptr, ptr %pDecoder.addr, align 8
  %pUserData135 = getelementptr inbounds nuw %struct.json_decoder, ptr %135, i32 0, i32 2
  %136 = load ptr, ptr %pUserData135, align 8
  store ptr %136, ptr %pOld114, align 8
  %137 = load ptr, ptr %pDecoder.addr, align 8
  %xConsumer136 = getelementptr inbounds nuw %struct.json_decoder, ptr %137, i32 0, i32 1
  store ptr @VmJsonArrayDecoder, ptr %xConsumer136, align 8
  %138 = load ptr, ptr %pWorker, align 8
  %139 = load ptr, ptr %pDecoder.addr, align 8
  %pUserData137 = getelementptr inbounds nuw %struct.json_decoder, ptr %139, i32 0, i32 2
  store ptr %138, ptr %pUserData137, align 8
  br label %for.cond138

for.cond138:                                      ; preds = %if.end197, %if.end133
  br label %while.cond139

while.cond139:                                    ; preds = %while.body149, %for.cond138
  %140 = load ptr, ptr %pDecoder.addr, align 8
  %pIn140 = getelementptr inbounds nuw %struct.json_decoder, ptr %140, i32 0, i32 4
  %141 = load ptr, ptr %pIn140, align 8
  %142 = load ptr, ptr %pDecoder.addr, align 8
  %pEnd141 = getelementptr inbounds nuw %struct.json_decoder, ptr %142, i32 0, i32 5
  %143 = load ptr, ptr %pEnd141, align 8
  %cmp142 = icmp ult ptr %141, %143
  br i1 %cmp142, label %land.rhs143, label %land.end148

land.rhs143:                                      ; preds = %while.cond139
  %144 = load ptr, ptr %pDecoder.addr, align 8
  %pIn144 = getelementptr inbounds nuw %struct.json_decoder, ptr %144, i32 0, i32 4
  %145 = load ptr, ptr %pIn144, align 8
  %nType145 = getelementptr inbounds nuw %struct.SyToken, ptr %145, i32 0, i32 1
  %146 = load i32, ptr %nType145, align 8
  %and146 = and i32 %146, 1024
  %tobool147 = icmp ne i32 %and146, 0
  br label %land.end148

land.end148:                                      ; preds = %land.rhs143, %while.cond139
  %147 = phi i1 [ false, %while.cond139 ], [ %tobool147, %land.rhs143 ]
  br i1 %147, label %while.body149, label %while.end152

while.body149:                                    ; preds = %land.end148
  %148 = load ptr, ptr %pDecoder.addr, align 8
  %pIn150 = getelementptr inbounds nuw %struct.json_decoder, ptr %148, i32 0, i32 4
  %149 = load ptr, ptr %pIn150, align 8
  %incdec.ptr151 = getelementptr inbounds nuw %struct.SyToken, ptr %149, i32 1
  store ptr %incdec.ptr151, ptr %pIn150, align 8
  br label %while.cond139, !llvm.loop !8

while.end152:                                     ; preds = %land.end148
  %150 = load ptr, ptr %pDecoder.addr, align 8
  %pIn153 = getelementptr inbounds nuw %struct.json_decoder, ptr %150, i32 0, i32 4
  %151 = load ptr, ptr %pIn153, align 8
  %152 = load ptr, ptr %pDecoder.addr, align 8
  %pEnd154 = getelementptr inbounds nuw %struct.json_decoder, ptr %152, i32 0, i32 5
  %153 = load ptr, ptr %pEnd154, align 8
  %cmp155 = icmp uge ptr %151, %153
  br i1 %cmp155, label %if.then161, label %lor.lhs.false156

lor.lhs.false156:                                 ; preds = %while.end152
  %154 = load ptr, ptr %pDecoder.addr, align 8
  %pIn157 = getelementptr inbounds nuw %struct.json_decoder, ptr %154, i32 0, i32 4
  %155 = load ptr, ptr %pIn157, align 8
  %nType158 = getelementptr inbounds nuw %struct.SyToken, ptr %155, i32 0, i32 1
  %156 = load i32, ptr %nType158, align 8
  %and159 = and i32 %156, 64
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then161, label %if.end169

if.then161:                                       ; preds = %lor.lhs.false156, %while.end152
  %157 = load ptr, ptr %pDecoder.addr, align 8
  %pIn162 = getelementptr inbounds nuw %struct.json_decoder, ptr %157, i32 0, i32 4
  %158 = load ptr, ptr %pIn162, align 8
  %159 = load ptr, ptr %pDecoder.addr, align 8
  %pEnd163 = getelementptr inbounds nuw %struct.json_decoder, ptr %159, i32 0, i32 5
  %160 = load ptr, ptr %pEnd163, align 8
  %cmp164 = icmp ult ptr %158, %160
  br i1 %cmp164, label %if.then165, label %if.end168

if.then165:                                       ; preds = %if.then161
  %161 = load ptr, ptr %pDecoder.addr, align 8
  %pIn166 = getelementptr inbounds nuw %struct.json_decoder, ptr %161, i32 0, i32 4
  %162 = load ptr, ptr %pIn166, align 8
  %incdec.ptr167 = getelementptr inbounds nuw %struct.SyToken, ptr %162, i32 1
  store ptr %incdec.ptr167, ptr %pIn166, align 8
  br label %if.end168

if.end168:                                        ; preds = %if.then165, %if.then161
  br label %for.end199

if.end169:                                        ; preds = %lor.lhs.false156
  %163 = load ptr, ptr %pDecoder.addr, align 8
  %pIn170 = getelementptr inbounds nuw %struct.json_decoder, ptr %163, i32 0, i32 4
  %164 = load ptr, ptr %pIn170, align 8
  %nType171 = getelementptr inbounds nuw %struct.SyToken, ptr %164, i32 0, i32 1
  %165 = load i32, ptr %nType171, align 8
  %and172 = and i32 %165, 4
  %cmp173 = icmp eq i32 %and172, 0
  br i1 %cmp173, label %if.then184, label %lor.lhs.false174

lor.lhs.false174:                                 ; preds = %if.end169
  %166 = load ptr, ptr %pDecoder.addr, align 8
  %pIn175 = getelementptr inbounds nuw %struct.json_decoder, ptr %166, i32 0, i32 4
  %167 = load ptr, ptr %pIn175, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %167, i64 1
  %168 = load ptr, ptr %pDecoder.addr, align 8
  %pEnd176 = getelementptr inbounds nuw %struct.json_decoder, ptr %168, i32 0, i32 5
  %169 = load ptr, ptr %pEnd176, align 8
  %cmp177 = icmp uge ptr %arrayidx, %169
  br i1 %cmp177, label %if.then184, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %lor.lhs.false174
  %170 = load ptr, ptr %pDecoder.addr, align 8
  %pIn179 = getelementptr inbounds nuw %struct.json_decoder, ptr %170, i32 0, i32 4
  %171 = load ptr, ptr %pIn179, align 8
  %arrayidx180 = getelementptr inbounds %struct.SyToken, ptr %171, i64 1
  %nType181 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx180, i32 0, i32 1
  %172 = load i32, ptr %nType181, align 8
  %and182 = and i32 %172, 512
  %cmp183 = icmp eq i32 %and182, 0
  br i1 %cmp183, label %if.then184, label %if.end186

if.then184:                                       ; preds = %lor.lhs.false178, %lor.lhs.false174, %if.end169
  %173 = load ptr, ptr %pDecoder.addr, align 8
  %pErr185 = getelementptr inbounds nuw %struct.json_decoder, ptr %173, i32 0, i32 8
  %174 = load ptr, ptr %pErr185, align 8
  store i32 4, ptr %174, align 4
  store i32 -10, ptr %retval, align 4
  br label %return

if.end186:                                        ; preds = %lor.lhs.false178
  %175 = load ptr, ptr %pDecoder.addr, align 8
  %pIn187 = getelementptr inbounds nuw %struct.json_decoder, ptr %175, i32 0, i32 4
  %176 = load ptr, ptr %pIn187, align 8
  %sData188 = getelementptr inbounds nuw %struct.SyToken, ptr %176, i32 0, i32 0
  %177 = load ptr, ptr %pKey, align 8
  call void @VmJsonDequoteString(ptr noundef %sData188, ptr noundef %177)
  %178 = load ptr, ptr %pDecoder.addr, align 8
  %pIn189 = getelementptr inbounds nuw %struct.json_decoder, ptr %178, i32 0, i32 4
  %179 = load ptr, ptr %pIn189, align 8
  %add.ptr = getelementptr inbounds %struct.SyToken, ptr %179, i64 2
  store ptr %add.ptr, ptr %pIn189, align 8
  %180 = load ptr, ptr %pDecoder.addr, align 8
  %rec_count190 = getelementptr inbounds nuw %struct.json_decoder, ptr %180, i32 0, i32 7
  %181 = load i32, ptr %rec_count190, align 4
  %inc191 = add nsw i32 %181, 1
  store i32 %inc191, ptr %rec_count190, align 4
  %182 = load ptr, ptr %pDecoder.addr, align 8
  %183 = load ptr, ptr %pKey, align 8
  %call192 = call i32 @VmJsonDecode(ptr noundef %182, ptr noundef %183)
  store i32 %call192, ptr %rc, align 4
  %184 = load ptr, ptr %pDecoder.addr, align 8
  %rec_count193 = getelementptr inbounds nuw %struct.json_decoder, ptr %184, i32 0, i32 7
  %185 = load i32, ptr %rec_count193, align 4
  %dec194 = add nsw i32 %185, -1
  store i32 %dec194, ptr %rec_count193, align 4
  %186 = load i32, ptr %rc, align 4
  %cmp195 = icmp eq i32 %186, -10
  br i1 %cmp195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end186
  store i32 -10, ptr %retval, align 4
  br label %return

if.end197:                                        ; preds = %if.end186
  %187 = load ptr, ptr %pKey, align 8
  %call198 = call i32 @ph7_value_reset_string_cursor(ptr noundef %187)
  br label %for.cond138

for.end199:                                       ; preds = %if.end168
  %188 = load ptr, ptr %xOld113, align 8
  %189 = load ptr, ptr %pDecoder.addr, align 8
  %xConsumer200 = getelementptr inbounds nuw %struct.json_decoder, ptr %189, i32 0, i32 1
  store ptr %188, ptr %xConsumer200, align 8
  %190 = load ptr, ptr %pOld114, align 8
  %191 = load ptr, ptr %pDecoder.addr, align 8
  %pUserData201 = getelementptr inbounds nuw %struct.json_decoder, ptr %191, i32 0, i32 2
  store ptr %190, ptr %pUserData201, align 8
  %192 = load ptr, ptr %xOld113, align 8
  %193 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx202 = getelementptr inbounds nuw %struct.json_decoder, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %pCtx202, align 8
  %195 = load ptr, ptr %pArrayKey.addr, align 8
  %196 = load ptr, ptr %pWorker, align 8
  %197 = load ptr, ptr %pOld114, align 8
  %call203 = call i32 %192(ptr noundef %194, ptr noundef %195, ptr noundef %196, ptr noundef %197)
  %198 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx204 = getelementptr inbounds nuw %struct.json_decoder, ptr %198, i32 0, i32 0
  %199 = load ptr, ptr %pCtx204, align 8
  %200 = load ptr, ptr %pKey, align 8
  call void @ph7_context_release_value(ptr noundef %199, ptr noundef %200)
  br label %if.end206

if.else205:                                       ; preds = %if.else107
  store i32 -10, ptr %retval, align 4
  br label %return

if.end206:                                        ; preds = %for.end199
  br label %if.end207

if.end207:                                        ; preds = %if.end206, %for.end
  br label %if.end208

if.end208:                                        ; preds = %if.end207, %if.end42
  %201 = load ptr, ptr %pDecoder.addr, align 8
  %pCtx209 = getelementptr inbounds nuw %struct.json_decoder, ptr %201, i32 0, i32 0
  %202 = load ptr, ptr %pCtx209, align 8
  %203 = load ptr, ptr %pWorker, align 8
  call void @ph7_context_release_value(ptr noundef %202, ptr noundef %203)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end208, %if.else205, %if.then196, %if.then184, %if.then130, %if.then100, %if.then91, %if.then55, %if.then41, %if.then3, %if.then
  %204 = load i32, ptr %retval, align 4
  ret i32 %204
}

; Function Attrs: nounwind uwtable
declare hidden void @VmJsonDequoteString(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmJsonArrayDecoder(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
