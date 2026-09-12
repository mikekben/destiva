; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @UnixFile_Write(ptr noundef %pUserData, ptr noundef %pBuffer, i64 noundef %nWrite) #1 {
entry:
  %retval = alloca i64, align 8
  %pUserData.addr = alloca ptr, align 8
  %pBuffer.addr = alloca ptr, align 8
  %nWrite.addr = alloca i64, align 8
  %zData = alloca ptr, align 8
  %fd = alloca i32, align 4
  %nCount = alloca i64, align 8
  %nWr = alloca i64, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pBuffer, ptr %pBuffer.addr, align 8
  store i64 %nWrite, ptr %nWrite.addr, align 8
  %0 = load ptr, ptr %pBuffer.addr, align 8
  store ptr %0, ptr %zData, align 8
  %1 = load ptr, ptr %pUserData.addr, align 8
  %2 = ptrtoint ptr %1 to i64
  %conv = trunc i64 %2 to i32
  store i32 %conv, ptr %fd, align 4
  store i64 0, ptr %nCount, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end5, %entry
  %3 = load i64, ptr %nWrite.addr, align 8
  %cmp = icmp slt i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load i32, ptr %fd, align 4
  %5 = load ptr, ptr %zData, align 8
  %6 = load i64, ptr %nWrite.addr, align 8
  %call = call i64 @write(i32 noundef %4, ptr noundef %5, i64 noundef %6)
  store i64 %call, ptr %nWr, align 8
  %7 = load i64, ptr %nWr, align 8
  %cmp2 = icmp slt i64 %7, 1
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %for.end

if.end5:                                          ; preds = %if.end
  %8 = load i64, ptr %nWr, align 8
  %9 = load i64, ptr %nWrite.addr, align 8
  %sub = sub nsw i64 %9, %8
  store i64 %sub, ptr %nWrite.addr, align 8
  %10 = load i64, ptr %nWr, align 8
  %11 = load i64, ptr %nCount, align 8
  %add = add nsw i64 %11, %10
  store i64 %add, ptr %nCount, align 8
  %12 = load i64, ptr %nWr, align 8
  %13 = load ptr, ptr %zData, align 8
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %12
  store ptr %add.ptr, ptr %zData, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then4, %if.then
  %14 = load i64, ptr %nWrite.addr, align 8
  %cmp6 = icmp sgt i64 %14, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.end9:                                          ; preds = %for.end
  %15 = load i64, ptr %nCount, align 8
  store i64 %15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end9, %if.then8
  %16 = load i64, ptr %retval, align 8
  ret i64 %16
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
