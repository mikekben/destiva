; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i64 @PH7_TokenValueToInt64(ptr noundef %pVal) #0 {
entry:
  %retval = alloca i64, align 8
  %pVal.addr = alloca ptr, align 8
  %iVal = alloca i64, align 8
  %c = alloca i32, align 4
  store ptr %pVal, ptr %pVal.addr, align 8
  store i64 0, ptr %iVal, align 8
  %0 = load ptr, ptr %pVal.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %nByte, align 8
  %cmp = icmp ule i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pVal.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 48
  br i1 %cmp1, label %if.then3, label %if.else35

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pVal.addr, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nByte4, align 8
  %conv5 = zext i32 %6 to i64
  %cmp6 = icmp eq i64 %conv5, 1
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then3
  store i64 0, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %if.then3
  %7 = load ptr, ptr %pVal.addr, align 8
  %zString10 = getelementptr inbounds nuw %struct.SyString, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %zString10, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %8, i64 1
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %9 to i32
  store i32 %conv12, ptr %c, align 4
  %10 = load i32, ptr %c, align 4
  %cmp13 = icmp eq i32 %10, 120
  br i1 %cmp13, label %if.then17, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %11 = load i32, ptr %c, align 4
  %cmp15 = icmp eq i32 %11, 88
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %lor.lhs.false, %if.end9
  %12 = load ptr, ptr %pVal.addr, align 8
  %zString18 = getelementptr inbounds nuw %struct.SyString, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %zString18, align 8
  %14 = load ptr, ptr %pVal.addr, align 8
  %nByte19 = getelementptr inbounds nuw %struct.SyString, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %nByte19, align 8
  %call = call i32 @SyHexStrToInt64(ptr noundef %13, i32 noundef %15, ptr noundef %iVal, ptr noundef null)
  br label %if.end34

if.else:                                          ; preds = %lor.lhs.false
  %16 = load i32, ptr %c, align 4
  %cmp20 = icmp eq i32 %16, 98
  br i1 %cmp20, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.else
  %17 = load i32, ptr %c, align 4
  %cmp23 = icmp eq i32 %17, 66
  br i1 %cmp23, label %if.then25, label %if.else29

if.then25:                                        ; preds = %lor.lhs.false22, %if.else
  %18 = load ptr, ptr %pVal.addr, align 8
  %zString26 = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zString26, align 8
  %20 = load ptr, ptr %pVal.addr, align 8
  %nByte27 = getelementptr inbounds nuw %struct.SyString, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %nByte27, align 8
  %call28 = call i32 @SyBinaryStrToInt64(ptr noundef %19, i32 noundef %21, ptr noundef %iVal, ptr noundef null)
  br label %if.end33

if.else29:                                        ; preds = %lor.lhs.false22
  %22 = load ptr, ptr %pVal.addr, align 8
  %zString30 = getelementptr inbounds nuw %struct.SyString, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %zString30, align 8
  %24 = load ptr, ptr %pVal.addr, align 8
  %nByte31 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nByte31, align 8
  %call32 = call i32 @SyOctalStrToInt64(ptr noundef %23, i32 noundef %25, ptr noundef %iVal, ptr noundef null)
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then25
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then17
  br label %if.end39

if.else35:                                        ; preds = %if.end
  %26 = load ptr, ptr %pVal.addr, align 8
  %zString36 = getelementptr inbounds nuw %struct.SyString, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %zString36, align 8
  %28 = load ptr, ptr %pVal.addr, align 8
  %nByte37 = getelementptr inbounds nuw %struct.SyString, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nByte37, align 8
  %call38 = call i32 @SyStrToInt64(ptr noundef %27, i32 noundef %29, ptr noundef %iVal, ptr noundef null)
  br label %if.end39

if.end39:                                         ; preds = %if.else35, %if.end34
  %30 = load i64, ptr %iVal, align 8
  store i64 %30, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end39, %if.then8, %if.then
  %31 = load i64, ptr %retval, align 8
  ret i64 %31
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHexStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBinaryStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyOctalStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
