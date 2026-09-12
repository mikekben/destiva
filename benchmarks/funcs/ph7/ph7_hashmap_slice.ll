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
declare dso_local i32 @ph7_value_is_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_slice(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %iLength = alloca i32, align 4
  %iOfft = alloca i32, align 4
  %bPreserve = alloca i32, align 4
  %rc = alloca i32, align 4
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
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %x, align 8
  store ptr %6, ptr %pSrc, align 8
  store i32 0, ptr %bPreserve, align 4
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @ph7_value_to_int(ptr noundef %8)
  store i32 %call4, ptr %iOfft, align 4
  %9 = load i32, ptr %iOfft, align 4
  %cmp5 = icmp slt i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %pSrc, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %nEntry, align 4
  %12 = load i32, ptr %iOfft, align 4
  %add = add nsw i32 %11, %12
  store i32 %add, ptr %iOfft, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %13 = load i32, ptr %iOfft, align 4
  %cmp8 = icmp slt i32 %13, 0
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end7
  %14 = load i32, ptr %iOfft, align 4
  %15 = load ptr, ptr %pSrc, align 8
  %nEntry10 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %15, i32 0, i32 6
  %16 = load i32, ptr %nEntry10, align 4
  %cmp11 = icmp sgt i32 %14, %16
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false9, %if.end7
  %17 = load ptr, ptr %pSrc, align 8
  %nEntry13 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %nEntry13, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, ptr %iOfft, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.lhs.false9
  %19 = load ptr, ptr %pSrc, align 8
  %nEntry15 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %nEntry15, align 4
  %21 = load i32, ptr %iOfft, align 4
  %sub16 = sub nsw i32 %20, %21
  store i32 %sub16, ptr %iLength, align 4
  %22 = load i32, ptr %nArg.addr, align 4
  %cmp17 = icmp sgt i32 %22, 2
  br i1 %cmp17, label %if.then18, label %if.end44

if.then18:                                        ; preds = %if.end14
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %23, i64 2
  %24 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 @ph7_value_to_int(ptr noundef %24)
  store i32 %call20, ptr %iLength, align 4
  %25 = load i32, ptr %iLength, align 4
  %cmp21 = icmp slt i32 %25, 0
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.then18
  %26 = load ptr, ptr %pSrc, align 8
  %nEntry23 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %26, i32 0, i32 6
  %27 = load i32, ptr %nEntry23, align 4
  %28 = load i32, ptr %iLength, align 4
  %add24 = add nsw i32 %27, %28
  %29 = load i32, ptr %iOfft, align 4
  %sub25 = sub nsw i32 %add24, %29
  store i32 %sub25, ptr %iLength, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then18
  %30 = load i32, ptr %iLength, align 4
  %cmp27 = icmp slt i32 %30, 0
  br i1 %cmp27, label %if.then32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %if.end26
  %31 = load i32, ptr %iOfft, align 4
  %32 = load i32, ptr %iLength, align 4
  %add29 = add nsw i32 %31, %32
  %33 = load ptr, ptr %pSrc, align 8
  %nEntry30 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %33, i32 0, i32 6
  %34 = load i32, ptr %nEntry30, align 4
  %cmp31 = icmp sge i32 %add29, %34
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %lor.lhs.false28, %if.end26
  %35 = load ptr, ptr %pSrc, align 8
  %nEntry33 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %35, i32 0, i32 6
  %36 = load i32, ptr %nEntry33, align 4
  %37 = load i32, ptr %iOfft, align 4
  %sub34 = sub nsw i32 %36, %37
  store i32 %sub34, ptr %iLength, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %lor.lhs.false28
  %38 = load i32, ptr %nArg.addr, align 4
  %cmp36 = icmp sgt i32 %38, 3
  br i1 %cmp36, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.end35
  %39 = load ptr, ptr %apArg.addr, align 8
  %arrayidx37 = getelementptr inbounds ptr, ptr %39, i64 3
  %40 = load ptr, ptr %arrayidx37, align 8
  %call38 = call i32 @ph7_value_is_bool(ptr noundef %40)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %land.lhs.true
  %41 = load ptr, ptr %apArg.addr, align 8
  %arrayidx41 = getelementptr inbounds ptr, ptr %41, i64 3
  %42 = load ptr, ptr %arrayidx41, align 8
  %call42 = call i32 @ph7_value_to_bool(ptr noundef %42)
  store i32 %call42, ptr %bPreserve, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %land.lhs.true, %if.end35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end14
  %43 = load ptr, ptr %pCtx.addr, align 8
  %call45 = call ptr @ph7_context_new_array(ptr noundef %43)
  store ptr %call45, ptr %pArray, align 8
  %44 = load ptr, ptr %pArray, align 8
  %cmp46 = icmp eq ptr %44, null
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end44
  %45 = load ptr, ptr %pCtx.addr, align 8
  %call48 = call i32 @ph7_result_null(ptr noundef %45)
  store i32 0, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.end44
  %46 = load i32, ptr %iLength, align 4
  %cmp50 = icmp slt i32 %46, 1
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  %47 = load ptr, ptr %pCtx.addr, align 8
  %48 = load ptr, ptr %pArray, align 8
  %call52 = call i32 @ph7_result_value(ptr noundef %47, ptr noundef %48)
  store i32 0, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.end49
  %49 = load ptr, ptr %pSrc, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %pFirst, align 8
  store ptr %50, ptr %pCur, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end56, %if.end53
  %51 = load i32, ptr %iOfft, align 4
  %cmp54 = icmp slt i32 %51, 1
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.cond
  br label %for.end

if.end56:                                         ; preds = %for.cond
  %52 = load ptr, ptr %pCur, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %52, i32 0, i32 7
  %53 = load ptr, ptr %pPrev, align 8
  store ptr %53, ptr %pCur, align 8
  %54 = load i32, ptr %iOfft, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, ptr %iOfft, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then55
  %55 = load ptr, ptr %pArray, align 8
  %x57 = getelementptr inbounds nuw %struct.ph7_value, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %x57, align 8
  store ptr %56, ptr %pMap, align 8
  br label %for.cond58

for.cond58:                                       ; preds = %if.end65, %for.end
  %57 = load i32, ptr %iLength, align 4
  %cmp59 = icmp slt i32 %57, 1
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %for.cond58
  br label %for.end68

if.end61:                                         ; preds = %for.cond58
  %58 = load ptr, ptr %pMap, align 8
  %59 = load ptr, ptr %pCur, align 8
  %60 = load i32, ptr %bPreserve, align 4
  %call62 = call i32 @HashmapInsertNode(ptr noundef %58, ptr noundef %59, i32 noundef %60)
  store i32 %call62, ptr %rc, align 4
  %61 = load i32, ptr %rc, align 4
  %cmp63 = icmp ne i32 %61, 0
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  br label %for.end68

if.end65:                                         ; preds = %if.end61
  %62 = load ptr, ptr %pCur, align 8
  %pPrev66 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %62, i32 0, i32 7
  %63 = load ptr, ptr %pPrev66, align 8
  store ptr %63, ptr %pCur, align 8
  %64 = load i32, ptr %iLength, align 4
  %dec67 = add nsw i32 %64, -1
  store i32 %dec67, ptr %iLength, align 4
  br label %for.cond58

for.end68:                                        ; preds = %if.then64, %if.then60
  %65 = load ptr, ptr %pCtx.addr, align 8
  %66 = load ptr, ptr %pArray, align 8
  %call69 = call i32 @ph7_result_value(ptr noundef %65, ptr noundef %66)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end68, %if.then51, %if.then47, %if.then
  %67 = load i32, ptr %retval, align 4
  ret i32 %67
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
