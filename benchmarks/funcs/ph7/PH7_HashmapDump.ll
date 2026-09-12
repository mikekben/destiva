; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.513 = external hidden unnamed_addr constant [2 x i8], align 1
@PH7_HashmapDump.zInfinite = external hidden constant [43 x i8], align 16
@.str.514 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.515 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.516 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.517 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.518 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormat(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjDump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_HashmapDump(ptr noundef %pOut, ptr noundef %pMap, i32 noundef %ShowType, i32 noundef %nTab, i32 noundef %nDepth) #0 {
entry:
  %retval = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %pMap.addr = alloca ptr, align 8
  %ShowType.addr = alloca i32, align 4
  %nTab.addr = alloca i32, align 4
  %nDepth.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %n = alloca i32, align 4
  %isRef = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr %pMap, ptr %pMap.addr, align 8
  store i32 %ShowType, ptr %ShowType.addr, align 4
  store i32 %nTab, ptr %nTab.addr, align 4
  store i32 %nDepth, ptr %nDepth.addr, align 4
  store i32 0, ptr %n, align 4
  %0 = load i32, ptr %nDepth.addr, align 4
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pOut.addr, align 8
  %call = call i32 @SyBlobAppend(ptr noundef %1, ptr noundef @PH7_HashmapDump.zInfinite, i32 noundef 42)
  %2 = load i32, ptr %ShowType.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %pOut.addr, align 8
  %call2 = call i32 @SyBlobAppend(ptr noundef %3, ptr noundef @.str.513, i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -7, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %entry
  %4 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pFirst, align 8
  store ptr %5, ptr %pEntry, align 8
  store i32 0, ptr %rc, align 4
  %6 = load i32, ptr %ShowType.addr, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr %pOut.addr, align 8
  %call6 = call i32 @SyBlobAppend(ptr noundef %7, ptr noundef @.str.514, i32 noundef 6)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3
  %8 = load ptr, ptr %pOut.addr, align 8
  %9 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %9, i32 0, i32 6
  %10 = load i32, ptr %nEntry, align 4
  %call8 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %8, ptr noundef @.str.515, i32 noundef %10)
  %11 = load ptr, ptr %pOut.addr, align 8
  %call9 = call i32 @SyBlobAppend(ptr noundef %11, ptr noundef @.str.47, i32 noundef 1)
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %if.end7
  %12 = load i32, ptr %n, align 4
  %13 = load ptr, ptr %pMap.addr, align 8
  %nEntry10 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %nEntry10, align 4
  %cmp11 = icmp uge i32 %12, %14
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.cond
  br label %for.end37

if.end13:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.end13
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %nTab.addr, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond14
  %17 = load ptr, ptr %pOut.addr, align 8
  %call16 = call i32 @SyBlobAppend(ptr noundef %17, ptr noundef @.str.61, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond14, !llvm.loop !6

for.end:                                          ; preds = %for.cond14
  %19 = load ptr, ptr %pEntry, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %iType, align 8
  %cmp17 = icmp eq i32 %20, 1
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.end
  %21 = load ptr, ptr %pOut.addr, align 8
  %22 = load ptr, ptr %pEntry, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %xKey, align 8
  %call19 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %21, ptr noundef @.str.516, i64 noundef %23)
  br label %if.end23

if.else:                                          ; preds = %for.end
  %24 = load ptr, ptr %pOut.addr, align 8
  %25 = load ptr, ptr %pEntry, align 8
  %xKey20 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %25, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey20, i32 0, i32 2
  %26 = load i32, ptr %nByte, align 8
  %27 = load ptr, ptr %pEntry, align 8
  %xKey21 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %27, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey21, i32 0, i32 1
  %28 = load ptr, ptr %pBlob, align 8
  %call22 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %24, ptr noundef @.str.517, i32 noundef %26, ptr noundef %28)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then18
  %29 = load ptr, ptr %pOut.addr, align 8
  %call24 = call i32 @SyBlobAppend(ptr noundef %29, ptr noundef @.str.47, i32 noundef 1)
  %30 = load ptr, ptr %pEntry, align 8
  %call25 = call ptr @HashmapExtractNodeValue(ptr noundef %30)
  store ptr %call25, ptr %pObj, align 8
  store i32 0, ptr %isRef, align 4
  %31 = load ptr, ptr %pObj, align 8
  %tobool26 = icmp ne ptr %31, null
  br i1 %tobool26, label %if.then27, label %if.end35

if.then27:                                        ; preds = %if.end23
  %32 = load ptr, ptr %pEntry, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %iFlags, align 8
  %and = and i32 %33, 1
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then27
  store i32 1, ptr %isRef, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then27
  %34 = load ptr, ptr %pOut.addr, align 8
  %35 = load ptr, ptr %pObj, align 8
  %36 = load i32, ptr %ShowType.addr, align 4
  %37 = load i32, ptr %nTab.addr, align 4
  %add = add nsw i32 %37, 1
  %38 = load i32, ptr %nDepth.addr, align 4
  %39 = load i32, ptr %isRef, align 4
  %call31 = call i32 @PH7_MemObjDump(ptr noundef %34, ptr noundef %35, i32 noundef %36, i32 noundef %add, i32 noundef %38, i32 noundef %39)
  store i32 %call31, ptr %rc, align 4
  %40 = load i32, ptr %rc, align 4
  %cmp32 = icmp eq i32 %40, -7
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  br label %for.end37

if.end34:                                         ; preds = %if.end30
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end23
  %41 = load i32, ptr %n, align 4
  %inc36 = add i32 %41, 1
  store i32 %inc36, ptr %n, align 4
  %42 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %42, i32 0, i32 7
  %43 = load ptr, ptr %pPrev, align 8
  store ptr %43, ptr %pEntry, align 8
  br label %for.cond

for.end37:                                        ; preds = %if.then33, %if.then12
  store i32 0, ptr %i, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc42, %for.end37
  %44 = load i32, ptr %i, align 4
  %45 = load i32, ptr %nTab.addr, align 4
  %cmp39 = icmp slt i32 %44, %45
  br i1 %cmp39, label %for.body40, label %for.end44

for.body40:                                       ; preds = %for.cond38
  %46 = load ptr, ptr %pOut.addr, align 8
  %call41 = call i32 @SyBlobAppend(ptr noundef %46, ptr noundef @.str.61, i32 noundef 1)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body40
  %47 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %47, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond38, !llvm.loop !8

for.end44:                                        ; preds = %for.cond38
  %48 = load ptr, ptr %pOut.addr, align 8
  %call45 = call i32 @SyBlobAppend(ptr noundef %48, ptr noundef @.str.518, i32 noundef 1)
  %49 = load i32, ptr %rc, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end44, %if.end
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
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
!8 = distinct !{!8, !7}
