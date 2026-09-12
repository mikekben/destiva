; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }

@.str.96 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.113 = external hidden unnamed_addr constant [9 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjToObject(ptr noundef %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca ptr, align 8
  %pStd = alloca ptr, align 8
  %pCons = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %apArg = alloca [2 x ptr], align 16
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 128
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pObj.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pVm1, align 8
  store ptr %3, ptr %pVm, align 8
  %4 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_VmExtractClass(ptr noundef %4, ptr noundef @.str.113, i32 noundef 8, i32 noundef 0, i32 noundef 0)
  store ptr %call, ptr %pClass, align 8
  %5 = load ptr, ptr %pClass, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %6 = load ptr, ptr %pObj.addr, align 8
  %call4 = call i32 @PH7_MemObjRelease(ptr noundef %6)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %pVm, align 8
  %8 = load ptr, ptr %pClass, align 8
  %call5 = call ptr @PH7_NewClassInstance(ptr noundef %7, ptr noundef %8)
  store ptr %call5, ptr %pStd, align 8
  %9 = load ptr, ptr %pStd, align 8
  %cmp6 = icmp eq ptr %9, null
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %10 = load ptr, ptr %pObj.addr, align 8
  %call8 = call i32 @PH7_MemObjRelease(ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %11 = load ptr, ptr %pClass, align 8
  %call10 = call ptr @PH7_ClassExtractMethod(ptr noundef %11, ptr noundef @.str.96, i32 noundef 11)
  store ptr %call10, ptr %pCons, align 8
  %12 = load ptr, ptr %pCons, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr %pObj.addr, align 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  store ptr %13, ptr %arrayidx, align 16
  %14 = load ptr, ptr %pVm, align 8
  %15 = load ptr, ptr %pStd, align 8
  %16 = load ptr, ptr %pCons, align 8
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  %call12 = call i32 @PH7_VmCallClassMethod(ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null, i32 noundef 1, ptr noundef %arraydecay)
  %17 = load ptr, ptr %pStd, align 8
  %iRef = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %17, i32 0, i32 3
  %18 = load i32, ptr %iRef, align 8
  %cmp13 = icmp slt i32 %18, 1
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  %19 = load ptr, ptr %pStd, align 8
  %iRef15 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %19, i32 0, i32 3
  store i32 1, ptr %iRef15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end9
  %20 = load ptr, ptr %pObj.addr, align 8
  %call18 = call i32 @PH7_MemObjRelease(ptr noundef %20)
  %21 = load ptr, ptr %pStd, align 8
  %22 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 1
  store ptr %21, ptr %x, align 8
  %23 = load ptr, ptr %pObj.addr, align 8
  %iFlags19 = getelementptr inbounds nuw %struct.ph7_value, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %iFlags19, align 8
  %and20 = and i32 %24, -496
  %or = or i32 %and20, 128
  %25 = load ptr, ptr %pObj.addr, align 8
  %iFlags21 = getelementptr inbounds nuw %struct.ph7_value, ptr %25, i32 0, i32 2
  store i32 %or, ptr %iFlags21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end17, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then7, %if.then3
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmExtractClass(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractMethod(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewClassInstance(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallClassMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
