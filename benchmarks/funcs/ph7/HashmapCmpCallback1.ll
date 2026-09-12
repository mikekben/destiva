; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToString(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjCmp(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToNumeric(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeValue(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapCmpCallback1(ptr noundef %pA, ptr noundef %pB, ptr noundef %pCmpData) #0 {
entry:
  %retval = alloca i32, align 4
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %pCmpData.addr = alloca ptr, align 8
  %sA = alloca %struct.ph7_value, align 8
  %sB = alloca %struct.ph7_value, align 8
  %iFlags = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %pCmpData, ptr %pCmpData.addr, align 8
  %0 = load ptr, ptr %pCmpData.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pA.addr, align 8
  %2 = load ptr, ptr %pB.addr, align 8
  %call = call i32 @HashmapNodeCmp(ptr noundef %1, ptr noundef %2, i32 noundef 0)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pCmpData.addr, align 8
  %5 = ptrtoint ptr %4 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, ptr %iFlags, align 4
  %6 = load ptr, ptr %pA.addr, align 8
  %pMap = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pMap, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pVm, align 8
  %call1 = call i32 @PH7_MemObjInit(ptr noundef %8, ptr noundef %sA)
  %9 = load ptr, ptr %pA.addr, align 8
  %pMap2 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pMap2, align 8
  %pVm3 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pVm3, align 8
  %call4 = call i32 @PH7_MemObjInit(ptr noundef %11, ptr noundef %sB)
  %12 = load ptr, ptr %pA.addr, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %12, ptr noundef %sA, i32 noundef 0)
  %13 = load ptr, ptr %pB.addr, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %13, ptr noundef %sB, i32 noundef 0)
  %14 = load i32, ptr %iFlags, align 4
  %cmp5 = icmp eq i32 %14, 5
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %iFlags8 = getelementptr inbounds nuw %struct.ph7_value, ptr %sA, i32 0, i32 2
  %15 = load i32, ptr %iFlags8, align 8
  %and = and i32 %15, 1
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then7
  %call12 = call i32 @PH7_MemObjToString(ptr noundef %sA)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then7
  %iFlags14 = getelementptr inbounds nuw %struct.ph7_value, ptr %sB, i32 0, i32 2
  %16 = load i32, ptr %iFlags14, align 8
  %and15 = and i32 %16, 1
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  %call19 = call i32 @PH7_MemObjToString(ptr noundef %sB)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end13
  br label %if.end23

if.else:                                          ; preds = %if.end
  %call21 = call i32 @PH7_MemObjToNumeric(ptr noundef %sA)
  %call22 = call i32 @PH7_MemObjToNumeric(ptr noundef %sB)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end20
  %call24 = call i32 @PH7_MemObjCmp(ptr noundef %sA, ptr noundef %sB, i32 noundef 0, i32 noundef 0)
  store i32 %call24, ptr %rc, align 4
  %call25 = call i32 @PH7_MemObjRelease(ptr noundef %sA)
  %call26 = call i32 @PH7_MemObjRelease(ptr noundef %sB)
  %17 = load i32, ptr %rc, align 4
  store i32 %17, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapNodeCmp(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
