; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

@.str.203 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.204 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.205 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateIsReservedConstant(ptr noundef %pName) #0 {
entry:
  %retval = alloca i32, align 4
  %pName.addr = alloca ptr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  %0 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %nByte, align 8
  %conv = zext i32 %1 to i64
  %cmp = icmp eq i64 %conv, 4
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString, align 8
  %call = call i32 @SyStrnicmp(ptr noundef %3, ptr noundef @.str.203, i32 noundef 4)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %pName.addr, align 8
  %zString5 = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zString5, align 8
  %call6 = call i32 @SyStrnicmp(ptr noundef %5, ptr noundef @.str.204, i32 noundef 4)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end
  br label %if.end24

if.else11:                                        ; preds = %entry
  %6 = load ptr, ptr %pName.addr, align 8
  %nByte12 = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nByte12, align 8
  %conv13 = zext i32 %7 to i64
  %cmp14 = icmp eq i64 %conv13, 5
  br i1 %cmp14, label %if.then16, label %if.end23

if.then16:                                        ; preds = %if.else11
  %8 = load ptr, ptr %pName.addr, align 8
  %zString17 = getelementptr inbounds nuw %struct.SyString, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %zString17, align 8
  %call18 = call i32 @SyStrnicmp(ptr noundef %9, ptr noundef @.str.205, i32 noundef 5)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then16
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then16
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.else11
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end10
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then21, %if.then9, %if.then4
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
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
