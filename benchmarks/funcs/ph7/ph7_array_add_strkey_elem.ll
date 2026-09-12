; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_array_add_strkey_elem(ptr noundef %pArray, ptr noundef %zKey, ptr noundef %pValue) #0 {
entry:
  %retval = alloca i32, align 4
  %pArray.addr = alloca ptr, align 8
  %zKey.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sKey = alloca %struct.ph7_value, align 8
  store ptr %pArray, ptr %pArray.addr, align 8
  store ptr %zKey, ptr %zKey.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  %0 = load ptr, ptr %pArray.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 64
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zKey.addr, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %zKey.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %5 = load ptr, ptr %pArray.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %x, align 8
  %7 = load ptr, ptr %pValue.addr, align 8
  %call = call i32 @PH7_HashmapInsert(ptr noundef %6, ptr noundef null, ptr noundef %7)
  store i32 %call, ptr %rc, align 4
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %pArray.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pVm, align 8
  %call5 = call i32 @PH7_MemObjInitFromString(ptr noundef %9, ptr noundef %sKey, ptr noundef null)
  %10 = load ptr, ptr %zKey.addr, align 8
  %11 = load ptr, ptr %zKey.addr, align 8
  %call6 = call i32 @SyStrlen(ptr noundef %11)
  %call7 = call i32 @PH7_MemObjStringAppend(ptr noundef %sKey, ptr noundef %10, i32 noundef %call6)
  %12 = load ptr, ptr %pArray.addr, align 8
  %x8 = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %x8, align 8
  %14 = load ptr, ptr %pValue.addr, align 8
  %call9 = call i32 @PH7_HashmapInsert(ptr noundef %13, ptr noundef %sKey, ptr noundef %14)
  store i32 %call9, ptr %rc, align 4
  %call10 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then4
  %15 = load i32, ptr %rc, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
