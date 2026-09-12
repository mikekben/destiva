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
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_udiff(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pSrc = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pCallback = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pVal = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
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
  %5 = load i32, ptr %nArg.addr, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx2, align 8
  store ptr %6, ptr %pCallback, align 8
  %7 = load i32, ptr %nArg.addr, align 4
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @ph7_result_value(ptr noundef %8, ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call ptr @ph7_context_new_array(ptr noundef %11)
  store ptr %call8, ptr %pArray, align 8
  %12 = load ptr, ptr %pArray, align 8
  %cmp9 = icmp eq ptr %12, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_null(ptr noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 0
  %15 = load ptr, ptr %arrayidx13, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %x, align 8
  store ptr %16, ptr %pSrc, align 8
  %17 = load ptr, ptr %pSrc, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pFirst, align 8
  store ptr %18, ptr %pEntry, align 8
  %19 = load ptr, ptr %pSrc, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %nEntry, align 4
  store i32 %20, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end42, %if.end12
  %21 = load i32, ptr %n, align 4
  %cmp14 = icmp ult i32 %21, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.cond
  br label %for.end43

if.end16:                                         ; preds = %for.cond
  %22 = load ptr, ptr %pEntry, align 8
  %call17 = call ptr @HashmapExtractNodeValue(ptr noundef %22)
  store ptr %call17, ptr %pVal, align 8
  %23 = load ptr, ptr %pVal, align 8
  %tobool18 = icmp ne ptr %23, null
  br i1 %tobool18, label %if.then19, label %if.end42

if.then19:                                        ; preds = %if.end16
  store i32 1, ptr %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc, %if.then19
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %nArg.addr, align 4
  %sub21 = sub nsw i32 %25, 1
  %cmp22 = icmp slt i32 %24, %sub21
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond20
  %26 = load ptr, ptr %apArg.addr, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %26, i64 %idxprom23
  %28 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 @ph7_value_is_array(ptr noundef %28)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %for.body
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %29 = load ptr, ptr %apArg.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds ptr, ptr %29, i64 %idxprom29
  %31 = load ptr, ptr %arrayidx30, align 8
  %x31 = getelementptr inbounds nuw %struct.ph7_value, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %x31, align 8
  store ptr %32, ptr %pMap, align 8
  %33 = load ptr, ptr %pMap, align 8
  %34 = load ptr, ptr %pVal, align 8
  %35 = load ptr, ptr %pCallback, align 8
  %call32 = call i32 @HashmapFindValueByCallback(ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef null)
  store i32 %call32, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %36, 0
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  br label %for.end

if.end35:                                         ; preds = %if.end28
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %if.then27
  %37 = load i32, ptr %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond20, !llvm.loop !6

for.end:                                          ; preds = %if.then34, %for.cond20
  %38 = load i32, ptr %i, align 4
  %39 = load i32, ptr %nArg.addr, align 4
  %sub36 = sub nsw i32 %39, 1
  %cmp37 = icmp sge i32 %38, %sub36
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %for.end
  %40 = load ptr, ptr %pArray, align 8
  %x39 = getelementptr inbounds nuw %struct.ph7_value, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %x39, align 8
  %42 = load ptr, ptr %pEntry, align 8
  %call40 = call i32 @HashmapInsertNode(ptr noundef %41, ptr noundef %42, i32 noundef 1)
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %for.end
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end16
  %43 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %43, i32 0, i32 7
  %44 = load ptr, ptr %pPrev, align 8
  store ptr %44, ptr %pEntry, align 8
  %45 = load i32, ptr %n, align 4
  %dec = add i32 %45, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end43:                                        ; preds = %if.then15
  %46 = load ptr, ptr %pCtx.addr, align 8
  %47 = load ptr, ptr %pArray, align 8
  %call44 = call i32 @ph7_result_value(ptr noundef %46, ptr noundef %47)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end43, %if.then10, %if.then4, %if.then
  %48 = load i32, ptr %retval, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertNode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapFindValueByCallback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
