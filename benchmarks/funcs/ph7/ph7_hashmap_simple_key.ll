; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_simple_key(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_is_array(ptr noundef %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_null(ptr noundef %4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx5, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %x, align 8
  store ptr %7, ptr %pMap, align 8
  %8 = load ptr, ptr %pMap, align 8
  %pCur6 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pCur6, align 8
  store ptr %9, ptr %pCur, align 8
  %10 = load ptr, ptr %pCur, align 8
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_null(ptr noundef %11)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end4
  %12 = load ptr, ptr %pCur, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %iType, align 8
  %cmp11 = icmp eq i32 %13, 1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end10
  %14 = load ptr, ptr %pCtx.addr, align 8
  %15 = load ptr, ptr %pCur, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %15, i32 0, i32 2
  %16 = load i64, ptr %xKey, align 8
  %call13 = call i32 @ph7_result_int64(ptr noundef %14, i64 noundef %16)
  br label %if.end17

if.else:                                          ; preds = %if.end10
  %17 = load ptr, ptr %pCtx.addr, align 8
  %18 = load ptr, ptr %pCur, align 8
  %xKey14 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey14, i32 0, i32 1
  %19 = load ptr, ptr %pBlob, align 8
  %20 = load ptr, ptr %pCur, align 8
  %xKey15 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %20, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey15, i32 0, i32 2
  %21 = load i32, ptr %nByte, align 8
  %call16 = call i32 @ph7_result_string(ptr noundef %17, ptr noundef %19, i32 noundef %21)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then8, %if.then2, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
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
