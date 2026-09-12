; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapIsIntKey(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupBlobKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapLookupIntKey(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapLookup(ptr noundef %pMap, ptr noundef %pKey, ptr noundef %ppNode) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %ppNode.addr = alloca ptr, align 8
  %pNode = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store ptr %ppNode, ptr %ppNode.addr, align 8
  store ptr null, ptr %pNode, align 8
  %0 = load ptr, ptr %pKey.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 449
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pKey.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %3, 1
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %pKey.addr, align 8
  %call = call i32 @PH7_MemObjToString(ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %5 = load ptr, ptr %pKey.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %6 = load i32, ptr %nByte, align 8
  %cmp4 = icmp ugt i32 %6, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %pKey.addr, align 8
  %sBlob5 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 4
  %call6 = call i32 @HashmapIsIntKey(ptr noundef %sBlob5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end13, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %pMap.addr, align 8
  %9 = load ptr, ptr %pKey.addr, align 8
  %sBlob9 = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob9, i32 0, i32 1
  %10 = load ptr, ptr %pBlob, align 8
  %11 = load ptr, ptr %pKey.addr, align 8
  %sBlob10 = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 4
  %nByte11 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob10, i32 0, i32 2
  %12 = load i32, ptr %nByte11, align 8
  %call12 = call i32 @HashmapLookupBlobKey(ptr noundef %8, ptr noundef %10, i32 noundef %12, ptr noundef %pNode)
  store i32 %call12, ptr %rc, align 4
  br label %result

if.end13:                                         ; preds = %land.lhs.true, %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %13 = load ptr, ptr %pKey.addr, align 8
  %iFlags15 = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %iFlags15, align 8
  %and16 = and i32 %14, 2
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %15 = load ptr, ptr %pKey.addr, align 8
  %call19 = call i32 @PH7_MemObjToInteger(ptr noundef %15)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14
  %16 = load ptr, ptr %pMap.addr, align 8
  %17 = load ptr, ptr %pKey.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %17, i32 0, i32 1
  %18 = load i64, ptr %x, align 8
  %call21 = call i32 @HashmapLookupIntKey(ptr noundef %16, i64 noundef %18, ptr noundef %pNode)
  store i32 %call21, ptr %rc, align 4
  br label %result

result:                                           ; preds = %if.end20, %if.then8
  %19 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %19, 0
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %result
  %20 = load ptr, ptr %ppNode.addr, align 8
  %tobool24 = icmp ne ptr %20, null
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then23
  %21 = load ptr, ptr %pNode, align 8
  %22 = load ptr, ptr %ppNode.addr, align 8
  store ptr %21, ptr %22, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %result
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.end26
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
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
