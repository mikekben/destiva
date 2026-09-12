; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_double(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrToReal(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @DoubleSum(ptr noundef %pCtx, ptr noundef %pMap) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %pMap.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %dSum = alloca double, align 8
  %n = alloca i32, align 4
  %dv = alloca double, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pMap, ptr %pMap.addr, align 8
  store double 0.000000e+00, ptr %dSum, align 8
  %0 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pFirst, align 8
  store ptr %1, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %n, align 4
  %3 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %nEntry, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pEntry, align 8
  %call = call ptr @HashmapExtractNodeValue(ptr noundef %5)
  store ptr %call, ptr %pObj, align 8
  %6 = load ptr, ptr %pObj, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %pObj, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iFlags, align 8
  %and = and i32 %8, 480
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end27

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %pObj, align 8
  %iFlags2 = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %iFlags2, align 8
  %and3 = and i32 %10, 4
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %11 = load ptr, ptr %pObj, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 0
  %12 = load double, ptr %rVal, align 8
  %13 = load double, ptr %dSum, align 8
  %add = fadd double %13, %12
  store double %add, ptr %dSum, align 8
  br label %if.end26

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr %pObj, align 8
  %iFlags6 = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %iFlags6, align 8
  %and7 = and i32 %15, 10
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %16 = load ptr, ptr %pObj, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %x, align 8
  %conv = sitofp i64 %17 to double
  %18 = load double, ptr %dSum, align 8
  %add10 = fadd double %18, %conv
  store double %add10, ptr %dSum, align 8
  br label %if.end25

if.else11:                                        ; preds = %if.else
  %19 = load ptr, ptr %pObj, align 8
  %iFlags12 = getelementptr inbounds nuw %struct.ph7_value, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %iFlags12, align 8
  %and13 = and i32 %20, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end24

if.then15:                                        ; preds = %if.else11
  %21 = load ptr, ptr %pObj, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %21, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %22 = load i32, ptr %nByte, align 8
  %cmp16 = icmp ugt i32 %22, 0
  br i1 %cmp16, label %if.then18, label %if.end

if.then18:                                        ; preds = %if.then15
  store double 0.000000e+00, ptr %dv, align 8
  %23 = load ptr, ptr %pObj, align 8
  %sBlob19 = getelementptr inbounds nuw %struct.ph7_value, ptr %23, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob19, i32 0, i32 1
  %24 = load ptr, ptr %pBlob, align 8
  %25 = load ptr, ptr %pObj, align 8
  %sBlob20 = getelementptr inbounds nuw %struct.ph7_value, ptr %25, i32 0, i32 4
  %nByte21 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob20, i32 0, i32 2
  %26 = load i32, ptr %nByte21, align 8
  %call22 = call i32 @SyStrToReal(ptr noundef %24, i32 noundef %26, ptr noundef %dv, ptr noundef null)
  %27 = load double, ptr %dv, align 8
  %28 = load double, ptr %dSum, align 8
  %add23 = fadd double %28, %27
  store double %add23, ptr %dSum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then15
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.else11
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then9
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then5
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %land.lhs.true, %for.body
  %29 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %29, i32 0, i32 7
  %30 = load ptr, ptr %pPrev, align 8
  store ptr %30, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %31 = load i32, ptr %n, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %pCtx.addr, align 8
  %33 = load double, ptr %dSum, align 8
  %call28 = call i32 @ph7_result_double(ptr noundef %32, double noundef %33)
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
