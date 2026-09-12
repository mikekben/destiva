; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @UnixFile_Read(ptr noundef %pUserData, ptr noundef %pBuffer, i64 noundef %nDatatoRead) #1 {
entry:
  %retval = alloca i64, align 8
  %pUserData.addr = alloca ptr, align 8
  %pBuffer.addr = alloca ptr, align 8
  %nDatatoRead.addr = alloca i64, align 8
  %nRd = alloca i64, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pBuffer, ptr %pBuffer.addr, align 8
  store i64 %nDatatoRead, ptr %nDatatoRead.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  %1 = ptrtoint ptr %0 to i64
  %conv = trunc i64 %1 to i32
  %2 = load ptr, ptr %pBuffer.addr, align 8
  %3 = load i64, ptr %nDatatoRead.addr, align 8
  %call = call i64 @read(i32 noundef %conv, ptr noundef %2, i64 noundef %3)
  store i64 %call, ptr %nRd, align 8
  %4 = load i64, ptr %nRd, align 8
  %cmp = icmp slt i64 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %nRd, align 8
  store i64 %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
