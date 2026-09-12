; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @SyLexInit(ptr noundef %pLex, ptr noundef %pSet, ptr noundef %xTokenizer, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pLex.addr = alloca ptr, align 8
  %pSet.addr = alloca ptr, align 8
  %xTokenizer.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  store ptr %pLex, ptr %pLex.addr, align 8
  store ptr %pSet, ptr %pSet.addr, align 8
  store ptr %xTokenizer, ptr %xTokenizer.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pLex.addr, align 8
  %pTokenSet = getelementptr inbounds nuw %struct.SyLex, ptr %0, i32 0, i32 3
  store ptr null, ptr %pTokenSet, align 8
  %1 = load ptr, ptr %pSet.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pSet.addr, align 8
  %eSize = getelementptr inbounds nuw %struct.SySet, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %eSize, align 8
  %conv = zext i32 %3 to i64
  %cmp = icmp ne i64 %conv, 32
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %pSet.addr, align 8
  %5 = load ptr, ptr %pLex.addr, align 8
  %pTokenSet3 = getelementptr inbounds nuw %struct.SyLex, ptr %5, i32 0, i32 3
  store ptr %4, ptr %pTokenSet3, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %pLex.addr, align 8
  %sStream = getelementptr inbounds nuw %struct.SyLex, ptr %6, i32 0, i32 0
  store ptr %sStream, ptr %pStream, align 8
  %7 = load ptr, ptr %xTokenizer.addr, align 8
  %8 = load ptr, ptr %pLex.addr, align 8
  %xTokenizer5 = getelementptr inbounds nuw %struct.SyLex, ptr %8, i32 0, i32 1
  store ptr %7, ptr %xTokenizer5, align 8
  %9 = load ptr, ptr %pUserData.addr, align 8
  %10 = load ptr, ptr %pLex.addr, align 8
  %pUserData6 = getelementptr inbounds nuw %struct.SyLex, ptr %10, i32 0, i32 2
  store ptr %9, ptr %pUserData6, align 8
  %11 = load ptr, ptr %pStream, align 8
  %nLine = getelementptr inbounds nuw %struct.SyStream, ptr %11, i32 0, i32 3
  store i32 1, ptr %nLine, align 8
  %12 = load ptr, ptr %pStream, align 8
  %nIgn = getelementptr inbounds nuw %struct.SyStream, ptr %12, i32 0, i32 4
  store i32 0, ptr %nIgn, align 4
  %13 = load ptr, ptr %pStream, align 8
  %zEnd = getelementptr inbounds nuw %struct.SyStream, ptr %13, i32 0, i32 2
  store ptr null, ptr %zEnd, align 8
  %14 = load ptr, ptr %pStream, align 8
  %zText = getelementptr inbounds nuw %struct.SyStream, ptr %14, i32 0, i32 1
  store ptr null, ptr %zText, align 8
  %15 = load ptr, ptr %pSet.addr, align 8
  %16 = load ptr, ptr %pStream, align 8
  %pSet7 = getelementptr inbounds nuw %struct.SyStream, ptr %16, i32 0, i32 5
  store ptr %15, ptr %pSet7, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then2
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
