; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupIntKey(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertIntKey(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_HashmapUnion(ptr noundef %pLeft, ptr noundef %pRight) #0 {
entry:
  %retval = alloca i32, align 4
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pObj = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pLeft.addr, align 8
  %1 = load ptr, ptr %pRight.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pRight.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pFirst, align 8
  store ptr %3, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %pRight.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %nEntry, align 4
  %cmp1 = icmp ult i32 %4, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pEntry, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %iType, align 8
  %cmp2 = icmp eq i32 %8, 2
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %for.body
  %9 = load ptr, ptr %pLeft.addr, align 8
  %10 = load ptr, ptr %pEntry, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %10, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey, i32 0, i32 1
  %11 = load ptr, ptr %pBlob, align 8
  %12 = load ptr, ptr %pEntry, align 8
  %xKey4 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey4, i32 0, i32 2
  %13 = load i32, ptr %nByte, align 8
  %call = call i32 @HashmapLookupBlobKey(ptr noundef %9, ptr noundef %11, i32 noundef %13, ptr noundef null)
  %cmp5 = icmp ne i32 0, %call
  br i1 %cmp5, label %if.then6, label %if.end18

if.then6:                                         ; preds = %if.then3
  %14 = load ptr, ptr %pEntry, align 8
  %call7 = call ptr @HashmapExtractNodeValue(ptr noundef %14)
  store ptr %call7, ptr %pObj, align 8
  %15 = load ptr, ptr %pObj, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.then6
  %16 = load ptr, ptr %pLeft.addr, align 8
  %17 = load ptr, ptr %pEntry, align 8
  %xKey9 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %17, i32 0, i32 2
  %pBlob10 = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey9, i32 0, i32 1
  %18 = load ptr, ptr %pBlob10, align 8
  %19 = load ptr, ptr %pEntry, align 8
  %xKey11 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %19, i32 0, i32 2
  %nByte12 = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey11, i32 0, i32 2
  %20 = load i32, ptr %nByte12, align 8
  %21 = load ptr, ptr %pObj, align 8
  %call13 = call i32 @HashmapInsertBlobKey(ptr noundef %16, ptr noundef %18, i32 noundef %20, ptr noundef %21, i32 noundef 0, i32 noundef 0)
  store i32 %call13, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %22, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.then8
  %23 = load i32, ptr %rc, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then6
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then3
  br label %if.end33

if.else:                                          ; preds = %for.body
  %24 = load ptr, ptr %pLeft.addr, align 8
  %25 = load ptr, ptr %pEntry, align 8
  %xKey19 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %25, i32 0, i32 2
  %26 = load i64, ptr %xKey19, align 8
  %call20 = call i32 @HashmapLookupIntKey(ptr noundef %24, i64 noundef %26, ptr noundef null)
  %cmp21 = icmp ne i32 0, %call20
  br i1 %cmp21, label %if.then22, label %if.end32

if.then22:                                        ; preds = %if.else
  %27 = load ptr, ptr %pEntry, align 8
  %call23 = call ptr @HashmapExtractNodeValue(ptr noundef %27)
  store ptr %call23, ptr %pObj, align 8
  %28 = load ptr, ptr %pObj, align 8
  %tobool24 = icmp ne ptr %28, null
  br i1 %tobool24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.then22
  %29 = load ptr, ptr %pLeft.addr, align 8
  %30 = load ptr, ptr %pEntry, align 8
  %xKey26 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %30, i32 0, i32 2
  %31 = load i64, ptr %xKey26, align 8
  %32 = load ptr, ptr %pObj, align 8
  %call27 = call i32 @HashmapInsertIntKey(ptr noundef %29, i64 noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 0)
  store i32 %call27, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp28 = icmp ne i32 %33, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then25
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.end18
  %35 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %pPrev, align 8
  store ptr %36, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %37 = load i32, ptr %n, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then29, %if.then15, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
