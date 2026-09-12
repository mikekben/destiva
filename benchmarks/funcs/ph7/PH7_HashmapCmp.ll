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
declare hidden i32 @HashmapLookupIntKey(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapNodeCmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_HashmapCmp(ptr noundef %pLeft, ptr noundef %pRight, i32 noundef %bStrict) #0 {
entry:
  %retval = alloca i32, align 4
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %bStrict.addr = alloca i32, align 4
  %pLe = alloca ptr, align 8
  %pRe = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  %pKey = alloca ptr, align 8
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  store i32 %bStrict, ptr %bStrict.addr, align 4
  %0 = load ptr, ptr %pLeft.addr, align 8
  %1 = load ptr, ptr %pRight.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pLeft.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %nEntry, align 4
  %4 = load ptr, ptr %pRight.addr, align 8
  %nEntry1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %nEntry1, align 4
  %cmp2 = icmp ne i32 %3, %5
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %pLeft.addr, align 8
  %nEntry4 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %6, i32 0, i32 6
  %7 = load i32, ptr %nEntry4, align 4
  %8 = load ptr, ptr %pRight.addr, align 8
  %nEntry5 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %nEntry5, align 4
  %cmp6 = icmp ugt i32 %7, %9
  %10 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i32 1, i32 -1
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %pLeft.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pFirst, align 8
  store ptr %12, ptr %pLe, align 8
  store ptr null, ptr %pRe, align 8
  %13 = load ptr, ptr %pLeft.addr, align 8
  %nEntry8 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %nEntry8, align 4
  store i32 %14, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end33, %if.end7
  %15 = load i32, ptr %n, align 4
  %cmp9 = icmp ult i32 %15, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.cond
  br label %for.end

if.end11:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pLe, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %iType, align 8
  %cmp12 = icmp eq i32 %17, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %18 = load ptr, ptr %pRight.addr, align 8
  %19 = load ptr, ptr %pLe, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %19, i32 0, i32 2
  %20 = load i64, ptr %xKey, align 8
  %call = call i32 @HashmapLookupIntKey(ptr noundef %18, i64 noundef %20, ptr noundef %pRe)
  store i32 %call, ptr %rc, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end11
  %21 = load ptr, ptr %pLe, align 8
  %xKey14 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %21, i32 0, i32 2
  store ptr %xKey14, ptr %pKey, align 8
  %22 = load ptr, ptr %pRight.addr, align 8
  %23 = load ptr, ptr %pKey, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pBlob, align 8
  %25 = load ptr, ptr %pKey, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %nByte, align 8
  %call15 = call i32 @HashmapLookupBlobKey(ptr noundef %22, ptr noundef %24, i32 noundef %26, ptr noundef %pRe)
  store i32 %call15, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %27 = load i32, ptr %rc, align 4
  %cmp17 = icmp ne i32 %27, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end16
  store i32 0, ptr %rc, align 4
  %28 = load i32, ptr %bStrict.addr, align 4
  %tobool = icmp ne i32 %28, 0
  br i1 %tobool, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end19
  %29 = load ptr, ptr %pLe, align 8
  %iType21 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %iType21, align 8
  %31 = load ptr, ptr %pRe, align 8
  %iType22 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %31, i32 0, i32 1
  %32 = load i32, ptr %iType22, align 8
  %cmp23 = icmp ne i32 %30, %32
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.then20
  store i32 1, ptr %rc, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end19
  %33 = load i32, ptr %rc, align 4
  %tobool27 = icmp ne i32 %33, 0
  br i1 %tobool27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end26
  %34 = load ptr, ptr %pLe, align 8
  %35 = load ptr, ptr %pRe, align 8
  %36 = load i32, ptr %bStrict.addr, align 4
  %call29 = call i32 @HashmapNodeCmp(ptr noundef %34, ptr noundef %35, i32 noundef %36)
  store i32 %call29, ptr %rc, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26
  %37 = load i32, ptr %rc, align 4
  %cmp31 = icmp ne i32 %37, 0
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end30
  %38 = load i32, ptr %rc, align 4
  store i32 %38, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end30
  %39 = load ptr, ptr %pLe, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %39, i32 0, i32 7
  %40 = load ptr, ptr %pPrev, align 8
  store ptr %40, ptr %pLe, align 8
  %41 = load i32, ptr %n, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then32, %if.then18, %if.then3, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
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
