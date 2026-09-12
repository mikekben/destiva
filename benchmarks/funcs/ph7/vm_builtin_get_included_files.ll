; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_get_included_files(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pFiles = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pWorker = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %zBase = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %iLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 19
  store ptr %aFiles, ptr %pFiles, align 8
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @ph7_context_new_array(ptr noundef %2)
  store ptr %call, ptr %pArray, align 8
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call ptr @ph7_context_new_scalar(ptr noundef %3)
  store ptr %call1, ptr %pWorker, align 8
  %4 = load ptr, ptr %pArray, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %pWorker, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_null(ptr noundef %6)
  store i32 0, ptr %nArg.addr, align 4
  store ptr null, ptr %apArg.addr, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 47, ptr %d, align 4
  store i32 47, ptr %c, align 4
  %7 = load ptr, ptr %pFiles, align 8
  %call4 = call i32 @SySetResetCursor(ptr noundef %7)
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.end
  %8 = load ptr, ptr %pFiles, align 8
  %call5 = call i32 @SySetGetNextEntry(ptr noundef %8, ptr noundef %pEntry)
  %cmp6 = icmp eq i32 0, %call5
  br i1 %cmp6, label %while.body, label %while.end55

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %pWorker, align 8
  %call7 = call i32 @ph7_value_reset_string_cursor(ptr noundef %9)
  %10 = load ptr, ptr %pEntry, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zString, align 8
  %12 = load ptr, ptr %pEntry, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nByte, align 8
  %sub = sub i32 %13, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %11, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %while.cond8

while.cond8:                                      ; preds = %while.body18, %while.body
  %14 = load ptr, ptr %zEnd, align 8
  %15 = load ptr, ptr %pEntry, align 8
  %zString9 = getelementptr inbounds nuw %struct.SyString, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %zString9, align 8
  %cmp10 = icmp ugt ptr %14, %16
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond8
  %17 = load ptr, ptr %zEnd, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx11, align 1
  %conv = sext i8 %18 to i32
  %19 = load i32, ptr %c, align 4
  %cmp12 = icmp eq i32 %conv, %19
  br i1 %cmp12, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %20 = load ptr, ptr %zEnd, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %21 to i32
  %22 = load i32, ptr %d, align 4
  %cmp16 = icmp eq i32 %conv15, %22
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %23 = phi i1 [ true, %land.rhs ], [ %cmp16, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond8
  %24 = phi i1 [ false, %while.cond8 ], [ %23, %lor.end ]
  br i1 %24, label %while.body18, label %while.end

while.body18:                                     ; preds = %land.end
  %25 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %25, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  br label %while.cond8, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %26 = load ptr, ptr %zEnd, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %26, i64 1
  %27 = load ptr, ptr %pEntry, align 8
  %zString20 = getelementptr inbounds nuw %struct.SyString, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %zString20, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx19 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %28 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv21 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv21, ptr %iLen, align 4
  br label %while.cond22

while.cond22:                                     ; preds = %while.body38, %while.end
  %29 = load ptr, ptr %zEnd, align 8
  %30 = load ptr, ptr %pEntry, align 8
  %zString23 = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %zString23, align 8
  %cmp24 = icmp ugt ptr %29, %31
  br i1 %cmp24, label %land.rhs26, label %land.end37

land.rhs26:                                       ; preds = %while.cond22
  %32 = load ptr, ptr %zEnd, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %32, i64 0
  %33 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %33 to i32
  %34 = load i32, ptr %c, align 4
  %cmp29 = icmp ne i32 %conv28, %34
  br i1 %cmp29, label %land.rhs31, label %land.end36

land.rhs31:                                       ; preds = %land.rhs26
  %35 = load ptr, ptr %zEnd, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %36 to i32
  %37 = load i32, ptr %d, align 4
  %cmp34 = icmp ne i32 %conv33, %37
  br label %land.end36

land.end36:                                       ; preds = %land.rhs31, %land.rhs26
  %38 = phi i1 [ false, %land.rhs26 ], [ %cmp34, %land.rhs31 ]
  br label %land.end37

land.end37:                                       ; preds = %land.end36, %while.cond22
  %39 = phi i1 [ false, %while.cond22 ], [ %38, %land.end36 ]
  br i1 %39, label %while.body38, label %while.end40

while.body38:                                     ; preds = %land.end37
  %40 = load ptr, ptr %zEnd, align 8
  %incdec.ptr39 = getelementptr inbounds i8, ptr %40, i32 -1
  store ptr %incdec.ptr39, ptr %zEnd, align 8
  br label %while.cond22, !llvm.loop !8

while.end40:                                      ; preds = %land.end37
  %41 = load ptr, ptr %zEnd, align 8
  %42 = load ptr, ptr %pEntry, align 8
  %zString41 = getelementptr inbounds nuw %struct.SyString, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %zString41, align 8
  %cmp42 = icmp ugt ptr %41, %43
  br i1 %cmp42, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end40
  %44 = load ptr, ptr %zEnd, align 8
  %arrayidx44 = getelementptr inbounds i8, ptr %44, i64 1
  br label %cond.end

cond.false:                                       ; preds = %while.end40
  %45 = load ptr, ptr %pEntry, align 8
  %zString45 = getelementptr inbounds nuw %struct.SyString, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %zString45, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx44, %cond.true ], [ %46, %cond.false ]
  store ptr %cond, ptr %zBase, align 8
  %47 = load ptr, ptr %pEntry, align 8
  %zString46 = getelementptr inbounds nuw %struct.SyString, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %zString46, align 8
  %49 = load i32, ptr %iLen, align 4
  %idxprom47 = sext i32 %49 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %48, i64 %idxprom47
  store ptr %arrayidx48, ptr %zEnd, align 8
  %50 = load ptr, ptr %pWorker, align 8
  %51 = load ptr, ptr %zBase, align 8
  %52 = load ptr, ptr %zEnd, align 8
  %53 = load ptr, ptr %zBase, align 8
  %sub.ptr.lhs.cast49 = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast50 = ptrtoint ptr %53 to i64
  %sub.ptr.sub51 = sub i64 %sub.ptr.lhs.cast49, %sub.ptr.rhs.cast50
  %conv52 = trunc i64 %sub.ptr.sub51 to i32
  %call53 = call i32 @ph7_value_string(ptr noundef %50, ptr noundef %51, i32 noundef %conv52)
  %54 = load ptr, ptr %pArray, align 8
  %55 = load ptr, ptr %pWorker, align 8
  %call54 = call i32 @ph7_array_add_elem(ptr noundef %54, ptr noundef null, ptr noundef %55)
  br label %while.cond, !llvm.loop !9

while.end55:                                      ; preds = %while.cond
  %56 = load ptr, ptr %pCtx.addr, align 8
  %57 = load ptr, ptr %pArray, align 8
  %call56 = call i32 @ph7_result_value(ptr noundef %56, ptr noundef %57)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end55, %if.then
  %58 = load i32, ptr %retval, align 4
  ret i32 %58
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetResetCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetGetNextEntry(ptr noundef, ptr noundef) #0

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
!9 = distinct !{!9, !7}
