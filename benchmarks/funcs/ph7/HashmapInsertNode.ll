; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertIntKey(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapInsertNode(ptr noundef %pMap, ptr noundef %pNode, i32 noundef %bPreserve) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pNode.addr = alloca ptr, align 8
  %bPreserve.addr = alloca i32, align 4
  %pObj = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store i32 %bPreserve, ptr %bPreserve.addr, align 4
  %0 = load ptr, ptr %pNode.addr, align 8
  %call = call ptr @HashmapExtractNodeValue(ptr noundef %0)
  store ptr %call, ptr %pObj, align 8
  %1 = load ptr, ptr %pObj, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pNode.addr, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %iType, align 8
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %bPreserve.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then2
  %5 = load ptr, ptr %pMap.addr, align 8
  %6 = load ptr, ptr %pObj, align 8
  %call4 = call i32 @HashmapInsert(ptr noundef %5, ptr noundef null, ptr noundef %6)
  store i32 %call4, ptr %rc, align 4
  br label %if.end6

if.else:                                          ; preds = %if.then2
  %7 = load ptr, ptr %pMap.addr, align 8
  %8 = load ptr, ptr %pNode.addr, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %xKey, align 8
  %10 = load ptr, ptr %pObj, align 8
  %call5 = call i32 @HashmapInsertIntKey(ptr noundef %7, i64 noundef %9, ptr noundef %10, i32 noundef 0, i32 noundef 0)
  store i32 %call5, ptr %rc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  br label %if.end11

if.else7:                                         ; preds = %if.end
  %11 = load ptr, ptr %pMap.addr, align 8
  %12 = load ptr, ptr %pNode.addr, align 8
  %xKey8 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey8, i32 0, i32 1
  %13 = load ptr, ptr %pBlob, align 8
  %14 = load ptr, ptr %pNode.addr, align 8
  %xKey9 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %14, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey9, i32 0, i32 2
  %15 = load i32, ptr %nByte, align 8
  %16 = load ptr, ptr %pObj, align 8
  %call10 = call i32 @HashmapInsertBlobKey(ptr noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %16, i32 noundef 0, i32 noundef 0)
  store i32 %call10, ptr %rc, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.end6
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
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
