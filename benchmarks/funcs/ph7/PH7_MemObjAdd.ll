; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.120 = external hidden unnamed_addr constant [50 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewHashmap(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToReal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToNumeric(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToHashmap(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjAdd(ptr noundef %pObj1, ptr noundef %pObj2, i32 noundef %bAddStore) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj1.addr = alloca ptr, align 8
  %pObj2.addr = alloca ptr, align 8
  %bAddStore.addr = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %a26 = alloca i64, align 8
  %b27 = alloca i64, align 8
  %pMap = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pObj1, ptr %pObj1.addr, align 8
  store ptr %pObj2, ptr %pObj2.addr, align 8
  store i32 %bAddStore, ptr %bAddStore.addr, align 4
  %0 = load ptr, ptr %pObj1.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %2 = load ptr, ptr %pObj2.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags1, align 8
  %or = or i32 %1, %3
  %and = and i32 %or, 64
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.else36

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pObj1.addr, align 8
  %call = call i32 @PH7_MemObjToNumeric(ptr noundef %4)
  %5 = load ptr, ptr %pObj2.addr, align 8
  %call2 = call i32 @PH7_MemObjToNumeric(ptr noundef %5)
  %6 = load ptr, ptr %pObj1.addr, align 8
  %iFlags3 = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %iFlags3, align 8
  %8 = load ptr, ptr %pObj2.addr, align 8
  %iFlags4 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iFlags4, align 8
  %or5 = or i32 %7, %9
  %and6 = and i32 %or5, 4
  %tobool = icmp ne i32 %and6, 0
  br i1 %tobool, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %10 = load ptr, ptr %pObj1.addr, align 8
  %iFlags8 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iFlags8, align 8
  %and9 = and i32 %11, 4
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then7
  %12 = load ptr, ptr %pObj1.addr, align 8
  %call12 = call i32 @PH7_MemObjToReal(ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then7
  %13 = load ptr, ptr %pObj2.addr, align 8
  %iFlags13 = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %iFlags13, align 8
  %and14 = and i32 %14, 4
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %15 = load ptr, ptr %pObj2.addr, align 8
  %call17 = call i32 @PH7_MemObjToReal(ptr noundef %15)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end
  %16 = load ptr, ptr %pObj1.addr, align 8
  %rVal = getelementptr inbounds nuw %struct.ph7_value, ptr %16, i32 0, i32 0
  %17 = load double, ptr %rVal, align 8
  store double %17, ptr %a, align 8
  %18 = load ptr, ptr %pObj2.addr, align 8
  %rVal19 = getelementptr inbounds nuw %struct.ph7_value, ptr %18, i32 0, i32 0
  %19 = load double, ptr %rVal19, align 8
  store double %19, ptr %b, align 8
  %20 = load double, ptr %a, align 8
  %21 = load double, ptr %b, align 8
  %add = fadd double %20, %21
  %22 = load ptr, ptr %pObj1.addr, align 8
  %rVal20 = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 0
  store double %add, ptr %rVal20, align 8
  %23 = load ptr, ptr %pObj1.addr, align 8
  %iFlags21 = getelementptr inbounds nuw %struct.ph7_value, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %iFlags21, align 8
  %and22 = and i32 %24, -496
  %or23 = or i32 %and22, 4
  %25 = load ptr, ptr %pObj1.addr, align 8
  %iFlags24 = getelementptr inbounds nuw %struct.ph7_value, ptr %25, i32 0, i32 2
  store i32 %or23, ptr %iFlags24, align 8
  %26 = load ptr, ptr %pObj1.addr, align 8
  %call25 = call i32 @MemObjTryIntger(ptr noundef %26)
  br label %if.end35

if.else:                                          ; preds = %if.then
  %27 = load ptr, ptr %pObj1.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 1
  %28 = load i64, ptr %x, align 8
  store i64 %28, ptr %a26, align 8
  %29 = load ptr, ptr %pObj2.addr, align 8
  %x28 = getelementptr inbounds nuw %struct.ph7_value, ptr %29, i32 0, i32 1
  %30 = load i64, ptr %x28, align 8
  store i64 %30, ptr %b27, align 8
  %31 = load i64, ptr %a26, align 8
  %32 = load i64, ptr %b27, align 8
  %add29 = add nsw i64 %31, %32
  %33 = load ptr, ptr %pObj1.addr, align 8
  %x30 = getelementptr inbounds nuw %struct.ph7_value, ptr %33, i32 0, i32 1
  store i64 %add29, ptr %x30, align 8
  %34 = load ptr, ptr %pObj1.addr, align 8
  %iFlags31 = getelementptr inbounds nuw %struct.ph7_value, ptr %34, i32 0, i32 2
  %35 = load i32, ptr %iFlags31, align 8
  %and32 = and i32 %35, -496
  %or33 = or i32 %and32, 2
  %36 = load ptr, ptr %pObj1.addr, align 8
  %iFlags34 = getelementptr inbounds nuw %struct.ph7_value, ptr %36, i32 0, i32 2
  store i32 %or33, ptr %iFlags34, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.end18
  br label %if.end108

if.else36:                                        ; preds = %entry
  %37 = load ptr, ptr %pObj1.addr, align 8
  %iFlags37 = getelementptr inbounds nuw %struct.ph7_value, ptr %37, i32 0, i32 2
  %38 = load i32, ptr %iFlags37, align 8
  %39 = load ptr, ptr %pObj2.addr, align 8
  %iFlags38 = getelementptr inbounds nuw %struct.ph7_value, ptr %39, i32 0, i32 2
  %40 = load i32, ptr %iFlags38, align 8
  %or39 = or i32 %38, %40
  %and40 = and i32 %or39, 64
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end107

if.then42:                                        ; preds = %if.else36
  %41 = load i32, ptr %bAddStore.addr, align 4
  %tobool43 = icmp ne i32 %41, 0
  br i1 %tobool43, label %if.then44, label %if.else56

if.then44:                                        ; preds = %if.then42
  %42 = load ptr, ptr %pObj1.addr, align 8
  %iFlags45 = getelementptr inbounds nuw %struct.ph7_value, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %iFlags45, align 8
  %and46 = and i32 %43, 64
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.then44
  %44 = load ptr, ptr %pObj1.addr, align 8
  %call49 = call i32 @PH7_MemObjToHashmap(ptr noundef %44)
  store i32 %call49, ptr %rc, align 4
  %45 = load i32, ptr %rc, align 4
  %cmp50 = icmp ne i32 %45, 0
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.then48
  %46 = load ptr, ptr %pObj1.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %pVm, align 8
  %call52 = call i32 @PH7_VmThrowError(ptr noundef %47, ptr noundef null, i32 noundef 1, ptr noundef @.str.120)
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %if.then48
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then44
  %49 = load ptr, ptr %pObj1.addr, align 8
  %x55 = getelementptr inbounds nuw %struct.ph7_value, ptr %49, i32 0, i32 1
  %50 = load ptr, ptr %x55, align 8
  store ptr %50, ptr %pMap, align 8
  br label %if.end64

if.else56:                                        ; preds = %if.then42
  %51 = load ptr, ptr %pObj1.addr, align 8
  %pVm57 = getelementptr inbounds nuw %struct.ph7_value, ptr %51, i32 0, i32 3
  %52 = load ptr, ptr %pVm57, align 8
  %call58 = call ptr @PH7_NewHashmap(ptr noundef %52, ptr noundef null, ptr noundef null)
  store ptr %call58, ptr %pMap, align 8
  %53 = load ptr, ptr %pMap, align 8
  %cmp59 = icmp eq ptr %53, null
  br i1 %cmp59, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.else56
  %54 = load ptr, ptr %pObj1.addr, align 8
  %pVm61 = getelementptr inbounds nuw %struct.ph7_value, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %pVm61, align 8
  %call62 = call i32 @PH7_VmThrowError(ptr noundef %55, ptr noundef null, i32 noundef 1, ptr noundef @.str.120)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.else56
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end54
  %56 = load i32, ptr %bAddStore.addr, align 4
  %tobool65 = icmp ne i32 %56, 0
  br i1 %tobool65, label %if.end81, label %if.then66

if.then66:                                        ; preds = %if.end64
  %57 = load ptr, ptr %pObj1.addr, align 8
  %iFlags67 = getelementptr inbounds nuw %struct.ph7_value, ptr %57, i32 0, i32 2
  %58 = load i32, ptr %iFlags67, align 8
  %and68 = and i32 %58, 64
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then70, label %if.else73

if.then70:                                        ; preds = %if.then66
  %59 = load ptr, ptr %pObj1.addr, align 8
  %x71 = getelementptr inbounds nuw %struct.ph7_value, ptr %59, i32 0, i32 1
  %60 = load ptr, ptr %x71, align 8
  %61 = load ptr, ptr %pMap, align 8
  %call72 = call i32 @PH7_HashmapDup(ptr noundef %60, ptr noundef %61)
  br label %if.end80

if.else73:                                        ; preds = %if.then66
  %62 = load ptr, ptr %pObj1.addr, align 8
  %iFlags74 = getelementptr inbounds nuw %struct.ph7_value, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %iFlags74, align 8
  %and75 = and i32 %63, 32
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %if.else73
  %64 = load ptr, ptr %pMap, align 8
  %65 = load ptr, ptr %pObj1.addr, align 8
  %call78 = call i32 @PH7_HashmapInsert(ptr noundef %64, ptr noundef null, ptr noundef %65)
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.else73
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.then70
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end64
  %66 = load ptr, ptr %pObj2.addr, align 8
  %iFlags82 = getelementptr inbounds nuw %struct.ph7_value, ptr %66, i32 0, i32 2
  %67 = load i32, ptr %iFlags82, align 8
  %and83 = and i32 %67, 64
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.else88

if.then85:                                        ; preds = %if.end81
  %68 = load ptr, ptr %pMap, align 8
  %69 = load ptr, ptr %pObj2.addr, align 8
  %x86 = getelementptr inbounds nuw %struct.ph7_value, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %x86, align 8
  %call87 = call i32 @PH7_HashmapUnion(ptr noundef %68, ptr noundef %70)
  br label %if.end95

if.else88:                                        ; preds = %if.end81
  %71 = load ptr, ptr %pObj2.addr, align 8
  %iFlags89 = getelementptr inbounds nuw %struct.ph7_value, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %iFlags89, align 8
  %and90 = and i32 %72, 32
  %cmp91 = icmp eq i32 %and90, 0
  br i1 %cmp91, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.else88
  %73 = load ptr, ptr %pMap, align 8
  %74 = load ptr, ptr %pObj2.addr, align 8
  %call93 = call i32 @PH7_HashmapInsert(ptr noundef %73, ptr noundef null, ptr noundef %74)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.else88
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then85
  %75 = load ptr, ptr %pObj1.addr, align 8
  %iFlags96 = getelementptr inbounds nuw %struct.ph7_value, ptr %75, i32 0, i32 2
  %76 = load i32, ptr %iFlags96, align 8
  %and97 = and i32 %76, 1
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then99, label %if.end101

if.then99:                                        ; preds = %if.end95
  %77 = load ptr, ptr %pObj1.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %77, i32 0, i32 4
  %call100 = call i32 @SyBlobRelease(ptr noundef %sBlob)
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %if.end95
  %78 = load ptr, ptr %pMap, align 8
  %79 = load ptr, ptr %pObj1.addr, align 8
  %x102 = getelementptr inbounds nuw %struct.ph7_value, ptr %79, i32 0, i32 1
  store ptr %78, ptr %x102, align 8
  %80 = load ptr, ptr %pObj1.addr, align 8
  %iFlags103 = getelementptr inbounds nuw %struct.ph7_value, ptr %80, i32 0, i32 2
  %81 = load i32, ptr %iFlags103, align 8
  %and104 = and i32 %81, -496
  %or105 = or i32 %and104, 64
  %82 = load ptr, ptr %pObj1.addr, align 8
  %iFlags106 = getelementptr inbounds nuw %struct.ph7_value, ptr %82, i32 0, i32 2
  store i32 %or105, ptr %iFlags106, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.end101, %if.else36
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end35
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end108, %if.then60, %if.then51
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @MemObjTryIntger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapUnion(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
