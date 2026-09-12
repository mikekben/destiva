; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }

@.str.1382 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_ClassInstanceUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @MemObjStringToInt(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @MemObjRealToInt(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @MemObjCallClassCastMethod(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @MemObjIntValue(ptr noundef %pObj) #0 {
entry:
  %retval = alloca i64, align 8
  %pObj.addr = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %pMap = alloca ptr, align 8
  %n = alloca i32, align 4
  %sResult = alloca %struct.ph7_value, align 8
  %iVal = alloca i64, align 8
  %rc = alloca i32, align 4
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags1, align 8
  store i32 %1, ptr %iFlags, align 4
  %2 = load i32, ptr %iFlags, align 4
  %and = and i32 %2, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pObj.addr, align 8
  %call = call i64 @MemObjRealToInt(ptr noundef %3)
  store i64 %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %iFlags, align 4
  %and2 = and i32 %4, 10
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %5 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %x, align 8
  store i64 %6, ptr %retval, align 8
  br label %return

if.else5:                                         ; preds = %if.else
  %7 = load i32, ptr %iFlags, align 4
  %and6 = and i32 %7, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %8 = load ptr, ptr %pObj.addr, align 8
  %call9 = call i64 @MemObjStringToInt(ptr noundef %8)
  store i64 %call9, ptr %retval, align 8
  br label %return

if.else10:                                        ; preds = %if.else5
  %9 = load i32, ptr %iFlags, align 4
  %and11 = and i32 %9, 32
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.else10
  store i64 0, ptr %retval, align 8
  br label %return

if.else14:                                        ; preds = %if.else10
  %10 = load i32, ptr %iFlags, align 4
  %and15 = and i32 %10, 64
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else14
  %11 = load ptr, ptr %pObj.addr, align 8
  %x18 = getelementptr inbounds nuw %struct.ph7_value, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %x18, align 8
  store ptr %12, ptr %pMap, align 8
  %13 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 6
  %14 = load i32, ptr %nEntry, align 4
  store i32 %14, ptr %n, align 4
  %15 = load ptr, ptr %pMap, align 8
  call void @PH7_HashmapUnref(ptr noundef %15)
  %16 = load i32, ptr %n, align 4
  %conv = zext i32 %16 to i64
  store i64 %conv, ptr %retval, align 8
  br label %return

if.else19:                                        ; preds = %if.else14
  %17 = load i32, ptr %iFlags, align 4
  %and20 = and i32 %17, 128
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.else35

if.then22:                                        ; preds = %if.else19
  store i64 1, ptr %iVal, align 8
  %18 = load ptr, ptr %pObj.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_value, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %pVm, align 8
  %call23 = call i32 @PH7_MemObjInit(ptr noundef %19, ptr noundef %sResult)
  %20 = load ptr, ptr %pObj.addr, align 8
  %pVm24 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 3
  %21 = load ptr, ptr %pVm24, align 8
  %22 = load ptr, ptr %pObj.addr, align 8
  %x25 = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %x25, align 8
  %call26 = call i32 @MemObjCallClassCastMethod(ptr noundef %21, ptr noundef %23, ptr noundef @.str.1382, i32 noundef 7, ptr noundef %sResult)
  store i32 %call26, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %24, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then22
  %iFlags28 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %25 = load i32, ptr %iFlags28, align 8
  %and29 = and i32 %25, 2
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.end

if.then31:                                        ; preds = %land.lhs.true
  %x32 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 1
  %26 = load i64, ptr %x32, align 8
  store i64 %26, ptr %iVal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then31, %land.lhs.true, %if.then22
  %27 = load ptr, ptr %pObj.addr, align 8
  %x33 = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %x33, align 8
  call void @PH7_ClassInstanceUnref(ptr noundef %28)
  %call34 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  %29 = load i64, ptr %iVal, align 8
  store i64 %29, ptr %retval, align 8
  br label %return

if.else35:                                        ; preds = %if.else19
  %30 = load i32, ptr %iFlags, align 4
  %and36 = and i32 %30, 256
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.else35
  %31 = load ptr, ptr %pObj.addr, align 8
  %x39 = getelementptr inbounds nuw %struct.ph7_value, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %x39, align 8
  %cmp40 = icmp ne ptr %32, null
  %conv41 = zext i1 %cmp40 to i32
  %conv42 = sext i32 %conv41 to i64
  store i64 %conv42, ptr %retval, align 8
  br label %return

if.end43:                                         ; preds = %if.else35
  br label %if.end44

if.end44:                                         ; preds = %if.end43
  br label %if.end45

if.end45:                                         ; preds = %if.end44
  br label %if.end46

if.end46:                                         ; preds = %if.end45
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  br label %if.end49

if.end49:                                         ; preds = %if.end48
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end49, %if.then38, %if.end, %if.then17, %if.then13, %if.then8, %if.then4, %if.then
  %33 = load i64, ptr %retval, align 8
  ret i64 %33
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
