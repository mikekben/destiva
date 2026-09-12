; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @PH7_HashmapExtractNodeKey(ptr noundef %pNode, ptr noundef %pKey) #0 {
entry:
  %pNode.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  store ptr %pNode, ptr %pNode.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  %0 = load ptr, ptr %pNode.addr, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %iType, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pKey.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %3 = load i32, ptr %nByte, align 8
  %cmp1 = icmp ugt i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %pKey.addr, align 8
  %sBlob3 = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 4
  %call = call i32 @SyBlobRelease(ptr noundef %sBlob3)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %pNode.addr, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %5, i32 0, i32 2
  %6 = load i64, ptr %xKey, align 8
  %7 = load ptr, ptr %pKey.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 1
  store i64 %6, ptr %x, align 8
  %8 = load ptr, ptr %pKey.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iFlags, align 8
  %and = and i32 %9, -496
  %or = or i32 %and, 2
  %10 = load ptr, ptr %pKey.addr, align 8
  %iFlags4 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  store i32 %or, ptr %iFlags4, align 8
  br label %if.end16

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %pKey.addr, align 8
  %sBlob5 = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 4
  %call6 = call i32 @SyBlobReset(ptr noundef %sBlob5)
  %12 = load ptr, ptr %pKey.addr, align 8
  %sBlob7 = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pNode.addr, align 8
  %xKey8 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %13, i32 0, i32 2
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey8, i32 0, i32 1
  %14 = load ptr, ptr %pBlob, align 8
  %15 = load ptr, ptr %pNode.addr, align 8
  %xKey9 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %15, i32 0, i32 2
  %nByte10 = getelementptr inbounds nuw %struct.SyBlob, ptr %xKey9, i32 0, i32 2
  %16 = load i32, ptr %nByte10, align 8
  %call11 = call i32 @SyBlobAppend(ptr noundef %sBlob7, ptr noundef %14, i32 noundef %16)
  %17 = load ptr, ptr %pKey.addr, align 8
  %iFlags12 = getelementptr inbounds nuw %struct.ph7_value, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %iFlags12, align 8
  %and13 = and i32 %18, -496
  %or14 = or i32 %and13, 1
  %19 = load ptr, ptr %pKey.addr, align 8
  %iFlags15 = getelementptr inbounds nuw %struct.ph7_value, ptr %19, i32 0, i32 2
  store i32 %or14, ptr %iFlags15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end
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
