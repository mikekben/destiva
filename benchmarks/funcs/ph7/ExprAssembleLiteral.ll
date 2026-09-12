; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @ExprAssembleLiteral(ptr noundef %ppCur, ptr noundef %pEnd) #0 {
entry:
  %ppCur.addr = alloca ptr, align 8
  %pEnd.addr = alloca ptr, align 8
  %pIn = alloca ptr, align 8
  store ptr %ppCur, ptr %ppCur.addr, align 8
  store ptr %pEnd, ptr %pEnd.addr, align 8
  %0 = load ptr, ptr %ppCur.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %pIn, align 8
  %2 = load ptr, ptr %pIn, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nType, align 8
  %and = and i32 %3, 256
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %if.end
  %5 = load ptr, ptr %pIn, align 8
  %6 = load ptr, ptr %pEnd.addr, align 8
  %cmp1 = icmp ult ptr %5, %6
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.cond
  %7 = load ptr, ptr %pIn, align 8
  %nType2 = getelementptr inbounds nuw %struct.SyToken, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nType2, align 8
  %and3 = and i32 %8, 256
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %pIn, align 8
  %incdec.ptr5 = getelementptr inbounds nuw %struct.SyToken, ptr %9, i32 1
  store ptr %incdec.ptr5, ptr %pIn, align 8
  %10 = load ptr, ptr %pIn, align 8
  %11 = load ptr, ptr %pEnd.addr, align 8
  %cmp6 = icmp ult ptr %10, %11
  br i1 %cmp6, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %if.then4
  %12 = load ptr, ptr %pIn, align 8
  %nType8 = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nType8, align 8
  %and9 = and i32 %13, 12
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %land.lhs.true7
  %14 = load ptr, ptr %pIn, align 8
  %incdec.ptr12 = getelementptr inbounds nuw %struct.SyToken, ptr %14, i32 1
  store ptr %incdec.ptr12, ptr %pIn, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %land.lhs.true7, %if.then4
  br label %if.end14

if.else:                                          ; preds = %land.lhs.true, %for.cond
  br label %for.end

if.end14:                                         ; preds = %if.end13
  br label %for.cond

for.end:                                          ; preds = %if.else
  %15 = load ptr, ptr %pIn, align 8
  %16 = load ptr, ptr %ppCur.addr, align 8
  store ptr %15, ptr %16, align 8
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
