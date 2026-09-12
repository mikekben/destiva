; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_GetNextExpr(ptr noundef %pStart, ptr noundef %pEnd, ptr noundef %ppNext) #0 {
entry:
  %retval = alloca i32, align 4
  %pStart.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %ppNext.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %iNest = alloca i32, align 4
  store ptr %pStart, ptr %pStart.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  store ptr %ppNext, ptr %ppNext.addr, align 8
  %0 = load ptr, ptr %pStart.addr, align 8
  store ptr %0, ptr %pCur, align 8
  store i32 0, ptr %iNest, align 4
  %1 = load ptr, ptr %pCur, align 8
  %2 = load ptr, ptr %pEnd.addr, align 8
  %cmp = icmp uge ptr %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pCur, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nType, align 8
  %and = and i32 %4, 262144
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %if.end
  %5 = load ptr, ptr %pCur, align 8
  %6 = load ptr, ptr %pEnd.addr, align 8
  %cmp1 = icmp ult ptr %5, %6
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %pCur, align 8
  %nType2 = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nType2, align 8
  %and3 = and i32 %8, 393216
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %while.body
  %9 = load i32, ptr %iNest, align 4
  %cmp5 = icmp sle i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  br label %while.end

if.end7:                                          ; preds = %land.lhs.true, %while.body
  %10 = load ptr, ptr %pCur, align 8
  %nType8 = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType8, align 8
  %and9 = and i32 %11, 2624
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %12 = load i32, ptr %iNest, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %iNest, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end7
  %13 = load ptr, ptr %pCur, align 8
  %nType12 = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nType12, align 8
  %and13 = and i32 %14, 5248
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.else
  %15 = load i32, ptr %iNest, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %iNest, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then11
  %16 = load ptr, ptr %pCur, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %pCur, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then6, %while.cond
  %17 = load ptr, ptr %pCur, align 8
  %18 = load ptr, ptr %ppNext.addr, align 8
  store ptr %17, ptr %18, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
