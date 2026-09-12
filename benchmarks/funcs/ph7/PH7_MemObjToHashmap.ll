; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewHashmap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjToHashmap(ptr noundef %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 64
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pObj.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_NewHashmap(ptr noundef %3, ptr noundef null, ptr noundef null)
  store ptr %call, ptr %pMap, align 8
  %4 = load ptr, ptr %pMap, align 8
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %pObj.addr, align 8
  %iFlags3 = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %iFlags3, align 8
  %and4 = and i32 %6, 288
  %cmp5 = icmp eq i32 %and4, 0
  br i1 %cmp5, label %if.then6, label %if.end14

if.then6:                                         ; preds = %if.end
  %7 = load ptr, ptr %pObj.addr, align 8
  %iFlags7 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iFlags7, align 8
  %and8 = and i32 %8, 128
  %tobool = icmp ne i32 %and8, 0
  br i1 %tobool, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %9 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %x, align 8
  %11 = load ptr, ptr %pMap, align 8
  %call10 = call i32 @PH7_ClassInstanceToHashmap(ptr noundef %10, ptr noundef %11)
  br label %if.end12

if.else:                                          ; preds = %if.then6
  %12 = load ptr, ptr %pMap, align 8
  %13 = load ptr, ptr %pObj.addr, align 8
  %call11 = call i32 @PH7_HashmapInsert(ptr noundef %12, ptr noundef null, ptr noundef %13)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %14 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 4
  %call13 = call i32 @SyBlobRelease(ptr noundef %sBlob)
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end
  %15 = load ptr, ptr %pObj.addr, align 8
  %iFlags15 = getelementptr inbounds nuw %struct.ph7_value, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %iFlags15, align 8
  %and16 = and i32 %16, -496
  %or = or i32 %and16, 64
  %17 = load ptr, ptr %pObj.addr, align 8
  %iFlags17 = getelementptr inbounds nuw %struct.ph7_value, ptr %17, i32 0, i32 2
  store i32 %or, ptr %iFlags17, align 8
  %18 = load ptr, ptr %pMap, align 8
  %19 = load ptr, ptr %pObj.addr, align 8
  %x18 = getelementptr inbounds nuw %struct.ph7_value, ptr %19, i32 0, i32 1
  store ptr %18, ptr %x18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then2
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInstanceToHashmap(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
