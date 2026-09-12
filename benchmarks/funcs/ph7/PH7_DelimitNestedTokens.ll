; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @PH7_DelimitNestedTokens(ptr noundef %pIn, ptr noundef %pEnd, i32 noundef %nTokStart, i32 noundef %nTokEnd, ptr noundef %ppEnd) #0 {
entry:
  %pIn.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %nTokStart.addr = alloca i32, align 4
  %nTokEnd.addr = alloca i32, align 4
  %ppEnd.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %iNest = alloca i32, align 4
  store ptr %pIn, ptr %pIn.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  store i32 %nTokStart, ptr %nTokStart.addr, align 4
  store i32 %nTokEnd, ptr %nTokEnd.addr, align 4
  store ptr %ppEnd, ptr %ppEnd.addr, align 8
  %0 = load ptr, ptr %pIn.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store i32 1, ptr %iNest, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end10, %entry
  %1 = load ptr, ptr %pCur, align 8
  %2 = load ptr, ptr %pEnd.addr, align 8
  %cmp = icmp uge ptr %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %3 = load ptr, ptr %pCur, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nType, align 8
  %5 = load i32, ptr %nTokStart.addr, align 4
  %and = and i32 %4, %5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %6 = load i32, ptr %iNest, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %iNest, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %pCur, align 8
  %nType2 = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nType2, align 8
  %9 = load i32, ptr %nTokEnd.addr, align 4
  %and3 = and i32 %8, %9
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.else
  %10 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %iNest, align 4
  %11 = load i32, ptr %iNest, align 4
  %cmp6 = icmp sle i32 %11, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  br label %for.end

if.end8:                                          ; preds = %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then1
  %12 = load ptr, ptr %pCur, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %pCur, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then7, %if.then
  %13 = load ptr, ptr %pCur, align 8
  %14 = load ptr, ptr %ppEnd.addr, align 8
  store ptr %13, ptr %14, align 8
  ret void
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
