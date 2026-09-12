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
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_chunk(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pChunk = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %bPreserve = alloca i32, align 4
  %nChunk = alloca i32, align 4
  %nSize = alloca i32, align 4
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
  %call = call i32 @ph7_value_is_array(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_context_new_array(ptr noundef %4)
  store ptr %call2, ptr %pArray, align 8
  %5 = load ptr, ptr %pArray, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_null(ptr noundef %6)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx7, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %x, align 8
  store ptr %9, ptr %pMap, align 8
  %10 = load ptr, ptr %apArg.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @ph7_value_to_int(ptr noundef %11)
  store i32 %call9, ptr %nSize, align 4
  %12 = load i32, ptr %nSize, align 4
  %cmp10 = icmp ult i32 %12, 1
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_result_null(ptr noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end6
  %14 = load i32, ptr %nSize, align 4
  %15 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %nEntry, align 4
  %cmp14 = icmp uge i32 %14, %16
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end13
  %17 = load ptr, ptr %pArray, align 8
  %18 = load ptr, ptr %apArg.addr, align 8
  %arrayidx16 = getelementptr inbounds ptr, ptr %18, i64 0
  %19 = load ptr, ptr %arrayidx16, align 8
  %call17 = call i32 @ph7_array_add_elem(ptr noundef %17, ptr noundef null, ptr noundef %19)
  %20 = load ptr, ptr %pCtx.addr, align 8
  %21 = load ptr, ptr %pArray, align 8
  %call18 = call i32 @ph7_result_value(ptr noundef %20, ptr noundef %21)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end13
  store i32 0, ptr %bPreserve, align 4
  %22 = load i32, ptr %nArg.addr, align 4
  %cmp20 = icmp sgt i32 %22, 2
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end19
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %23, i64 2
  %24 = load ptr, ptr %arrayidx22, align 8
  %call23 = call i32 @ph7_value_to_bool(ptr noundef %24)
  store i32 %call23, ptr %bPreserve, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19
  %25 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %pFirst, align 8
  store ptr %26, ptr %pEntry, align 8
  store i32 0, ptr %nChunk, align 4
  store ptr null, ptr %pChunk, align 8
  %27 = load ptr, ptr %pMap, align 8
  %nEntry25 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %27, i32 0, i32 6
  %28 = load i32, ptr %nEntry25, align 4
  store i32 %28, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end43, %if.end24
  %29 = load i32, ptr %n, align 4
  %cmp26 = icmp ult i32 %29, 1
  br i1 %cmp26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %for.cond
  %30 = load i32, ptr %nChunk, align 4
  %cmp28 = icmp ugt i32 %30, 0
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then27
  %31 = load ptr, ptr %pArray, align 8
  %32 = load ptr, ptr %pChunk, align 8
  %call30 = call i32 @ph7_array_add_elem(ptr noundef %31, ptr noundef null, ptr noundef %32)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then27
  br label %for.end

if.end32:                                         ; preds = %for.cond
  %33 = load i32, ptr %nChunk, align 4
  %cmp33 = icmp ult i32 %33, 1
  br i1 %cmp33, label %if.then34, label %if.end43

if.then34:                                        ; preds = %if.end32
  %34 = load ptr, ptr %pChunk, align 8
  %tobool35 = icmp ne ptr %34, null
  br i1 %tobool35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.then34
  %35 = load ptr, ptr %pArray, align 8
  %36 = load ptr, ptr %pChunk, align 8
  %call37 = call i32 @ph7_array_add_elem(ptr noundef %35, ptr noundef null, ptr noundef %36)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then34
  %37 = load ptr, ptr %pCtx.addr, align 8
  %call39 = call ptr @ph7_context_new_array(ptr noundef %37)
  store ptr %call39, ptr %pChunk, align 8
  %38 = load ptr, ptr %pChunk, align 8
  %cmp40 = icmp eq ptr %38, null
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end38
  br label %for.end

if.end42:                                         ; preds = %if.end38
  %39 = load i32, ptr %nSize, align 4
  store i32 %39, ptr %nChunk, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end32
  %40 = load ptr, ptr %pChunk, align 8
  %x44 = getelementptr inbounds nuw %struct.ph7_value, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %x44, align 8
  %42 = load ptr, ptr %pEntry, align 8
  %43 = load i32, ptr %bPreserve, align 4
  %call45 = call i32 @HashmapInsertNode(ptr noundef %41, ptr noundef %42, i32 noundef %43)
  %44 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %44, i32 0, i32 7
  %45 = load ptr, ptr %pPrev, align 8
  store ptr %45, ptr %pEntry, align 8
  %46 = load i32, ptr %nChunk, align 4
  %dec = add i32 %46, -1
  store i32 %dec, ptr %nChunk, align 4
  %47 = load i32, ptr %n, align 4
  %dec46 = add i32 %47, -1
  store i32 %dec46, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then41, %if.end31
  %48 = load ptr, ptr %pCtx.addr, align 8
  %49 = load ptr, ptr %pArray, align 8
  %call47 = call i32 @ph7_result_value(ptr noundef %48, ptr noundef %49)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then15, %if.then11, %if.then4, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertNode(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
