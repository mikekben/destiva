; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToInteger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjToReal(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_MemObjToNumeric(ptr noundef %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pObj.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %bReal = alloca i8, align 1
  %sString = alloca %struct.SyString, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 46
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pObj.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags1, align 8
  %and2 = and i32 %3, 40
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.then
  %4 = load ptr, ptr %pObj.addr, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iFlags5, align 8
  %and6 = and i32 %5, 32
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then4
  %6 = load ptr, ptr %pObj.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 1
  store i64 0, ptr %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then4
  %7 = load ptr, ptr %pObj.addr, align 8
  %iFlags9 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iFlags9, align 8
  %and10 = and i32 %8, -496
  %or = or i32 %and10, 2
  %9 = load ptr, ptr %pObj.addr, align 8
  %iFlags11 = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 2
  store i32 %or, ptr %iFlags11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %entry
  %10 = load ptr, ptr %pObj.addr, align 8
  %iFlags14 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iFlags14, align 8
  %and15 = and i32 %11, 1
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.else42

if.then17:                                        ; preds = %if.end13
  store i32 -9, ptr %rc, align 4
  store i8 0, ptr %bReal, align 1
  %12 = load ptr, ptr %pObj.addr, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %13 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  store ptr %13, ptr %zString, align 8
  %14 = load ptr, ptr %pObj.addr, align 8
  %sBlob18 = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob18, i32 0, i32 2
  %15 = load i32, ptr %nByte, align 8
  %nByte19 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  store i32 %15, ptr %nByte19, align 8
  %nByte20 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %16 = load i32, ptr %nByte20, align 8
  %cmp = icmp ugt i32 %16, 0
  br i1 %cmp, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then17
  %zString22 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 0
  %17 = load ptr, ptr %zString22, align 8
  %nByte23 = getelementptr inbounds nuw %struct.SyString, ptr %sString, i32 0, i32 1
  %18 = load i32, ptr %nByte23, align 8
  %call = call i32 @SyStrIsNumeric(ptr noundef %17, i32 noundef %18, ptr noundef %bReal, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then17
  %19 = load i8, ptr %bReal, align 1
  %tobool25 = icmp ne i8 %19, 0
  br i1 %tobool25, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end24
  %20 = load ptr, ptr %pObj.addr, align 8
  %call27 = call i32 @PH7_MemObjToReal(ptr noundef %20)
  br label %if.end41

if.else:                                          ; preds = %if.end24
  %21 = load i32, ptr %rc, align 4
  %cmp28 = icmp ne i32 %21, 0
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else
  %22 = load ptr, ptr %pObj.addr, align 8
  %x30 = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 1
  store i64 0, ptr %x30, align 8
  br label %if.end34

if.else31:                                        ; preds = %if.else
  %23 = load ptr, ptr %pObj.addr, align 8
  %call32 = call i64 @MemObjStringToInt(ptr noundef %23)
  %24 = load ptr, ptr %pObj.addr, align 8
  %x33 = getelementptr inbounds nuw %struct.ph7_value, ptr %24, i32 0, i32 1
  store i64 %call32, ptr %x33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then29
  %25 = load ptr, ptr %pObj.addr, align 8
  %iFlags35 = getelementptr inbounds nuw %struct.ph7_value, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %iFlags35, align 8
  %and36 = and i32 %26, -496
  %or37 = or i32 %and36, 2
  %27 = load ptr, ptr %pObj.addr, align 8
  %iFlags38 = getelementptr inbounds nuw %struct.ph7_value, ptr %27, i32 0, i32 2
  store i32 %or37, ptr %iFlags38, align 8
  %28 = load ptr, ptr %pObj.addr, align 8
  %sBlob39 = getelementptr inbounds nuw %struct.ph7_value, ptr %28, i32 0, i32 4
  %call40 = call i32 @SyBlobRelease(ptr noundef %sBlob39)
  br label %if.end41

if.end41:                                         ; preds = %if.end34, %if.then26
  br label %if.end51

if.else42:                                        ; preds = %if.end13
  %29 = load ptr, ptr %pObj.addr, align 8
  %iFlags43 = getelementptr inbounds nuw %struct.ph7_value, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %iFlags43, align 8
  %and44 = and i32 %30, 448
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.else48

if.then46:                                        ; preds = %if.else42
  %31 = load ptr, ptr %pObj.addr, align 8
  %call47 = call i32 @PH7_MemObjToInteger(ptr noundef %31)
  br label %if.end50

if.else48:                                        ; preds = %if.else42
  %32 = load ptr, ptr %pObj.addr, align 8
  %call49 = call i32 @PH7_MemObjToReal(ptr noundef %32)
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.then46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end41
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.end12
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrIsNumeric(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @MemObjStringToInt(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
