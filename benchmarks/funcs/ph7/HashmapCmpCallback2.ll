; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapCmpCallback2(ptr noundef %pA, ptr noundef %pB, ptr noundef %pCmpData) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %pCmpData.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sStr = alloca %struct.SyString, align 8
  %iA = alloca i64, align 8
  %iB = alloca i64, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %pCmpData, ptr %pCmpData.addr, align 8
  store ptr null, ptr %pCmpData.addr, align 8
  %0 = load ptr, ptr %pA.addr, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %iType, align 8
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pB.addr, align 8
  %iType1 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %iType1, align 8
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %pA.addr, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pB.addr, align 8
  %xKey3 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %5, i32 0, i32 2
  %call = call i32 @SyBlobCmp(ptr noundef %xKey, ptr noundef %xKey3)
  store i32 %call, ptr %rc, align 4
  br label %if.end40

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %pA.addr, align 8
  %iType4 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %iType4, align 8
  %cmp5 = icmp eq i32 %7, 2
  br i1 %cmp5, label %if.then6, label %if.else17

if.then6:                                         ; preds = %if.else
  %8 = load ptr, ptr %pA.addr, align 8
  %xKey7 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %8, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey7, i32 0, i32 1
  %9 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  store ptr %9, ptr %zString, align 8
  %10 = load ptr, ptr %pA.addr, align 8
  %xKey8 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %10, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey8, i32 0, i32 2
  %11 = load i32, ptr %nByte, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  store i32 %11, ptr %nByte9, align 8
  %nByte10 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %12 = load i32, ptr %nByte10, align 8
  %cmp11 = icmp ult i32 %12, 1
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then6
  store i64 0, ptr %iA, align 8
  br label %if.end

if.else13:                                        ; preds = %if.then6
  %zString14 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %13 = load ptr, ptr %zString14, align 8
  %nByte15 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %14 = load i32, ptr %nByte15, align 8
  %call16 = call i32 @SyStrToInt64(ptr noundef %13, i32 noundef %14, ptr noundef %iA, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end19

if.else17:                                        ; preds = %if.else
  %15 = load ptr, ptr %pA.addr, align 8
  %xKey18 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %15, i32 0, i32 2
  %16 = load i64, ptr %xKey18, align 8
  store i64 %16, ptr %iA, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.end
  %17 = load ptr, ptr %pB.addr, align 8
  %iType20 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %iType20, align 8
  %cmp21 = icmp eq i32 %18, 2
  br i1 %cmp21, label %if.then22, label %if.else37

if.then22:                                        ; preds = %if.end19
  %19 = load ptr, ptr %pB.addr, align 8
  %xKey23 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %19, i32 0, i32 2
  %pBlob24 = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey23, i32 0, i32 1
  %20 = load ptr, ptr %pBlob24, align 8
  %zString25 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  store ptr %20, ptr %zString25, align 8
  %21 = load ptr, ptr %pB.addr, align 8
  %xKey26 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %21, i32 0, i32 2
  %nByte27 = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey26, i32 0, i32 2
  %22 = load i32, ptr %nByte27, align 8
  %nByte28 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  store i32 %22, ptr %nByte28, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %23 = load i32, ptr %nByte29, align 8
  %cmp30 = icmp ult i32 %23, 1
  br i1 %cmp30, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.then22
  store i64 0, ptr %iB, align 8
  br label %if.end36

if.else32:                                        ; preds = %if.then22
  %zString33 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 0
  %24 = load ptr, ptr %zString33, align 8
  %nByte34 = getelementptr inbounds nuw %struct.SyString, ptr %sStr, i32 0, i32 1
  %25 = load i32, ptr %nByte34, align 8
  %call35 = call i32 @SyStrToInt64(ptr noundef %24, i32 noundef %25, ptr noundef %iB, ptr noundef null)
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then31
  br label %if.end39

if.else37:                                        ; preds = %if.end19
  %26 = load ptr, ptr %pB.addr, align 8
  %xKey38 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %26, i32 0, i32 2
  %27 = load i64, ptr %xKey38, align 8
  store i64 %27, ptr %iB, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.end36
  %28 = load i64, ptr %iA, align 8
  %29 = load i64, ptr %iB, align 8
  %sub = sub nsw i64 %28, %29
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %rc, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then
  %30 = load i32, ptr %rc, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobCmp(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
