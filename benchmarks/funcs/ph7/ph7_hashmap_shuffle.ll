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
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ph7_hashmap_shuffle(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pMap = alloca ptr, align 8
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
  %call = call i32 @ph7_value_is_array(ptr noundef %2)
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
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %x, align 8
  store ptr %6, ptr %pMap, align 8
  %7 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %nEntry, align 4
  %cmp3 = icmp ugt i32 %8, 1
  br i1 %cmp3, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pMap, align 8
  %call5 = call i32 @HashmapMergeSort(ptr noundef %9, ptr noundef @HashmapCmpCallback7, ptr noundef null)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then4
  %10 = load ptr, ptr %pMap, align 8
  %pLast = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pLast, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %11, i32 0, i32 7
  %12 = load ptr, ptr %pPrev, align 8
  %tobool6 = icmp ne ptr %12, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %pMap, align 8
  %pLast7 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pLast7, align 8
  %pPrev8 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %pPrev8, align 8
  %16 = load ptr, ptr %pMap, align 8
  %pLast9 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %16, i32 0, i32 3
  store ptr %15, ptr %pLast9, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end10

if.end10:                                         ; preds = %while.end, %if.end
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_bool(ptr noundef %17, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapMergeSort(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapCmpCallback7(ptr noundef, ptr noundef, ptr noundef) #0

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
