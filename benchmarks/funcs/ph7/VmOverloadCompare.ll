; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @VmOverloadCompare(ptr noundef %pFirst, ptr noundef %pSecond) #0 {
entry:
  %pFirst.addr = alloca ptr, align 8
  %pSecond.addr = alloca ptr, align 8
  %zSend = alloca ptr, align 8
  %zFend = alloca ptr, align 8
  %zSin = alloca ptr, align 8
  %zFin = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  store ptr %pFirst, ptr %pFirst.addr, align 8
  store ptr %pSecond, ptr %pSecond.addr, align 8
  %0 = load ptr, ptr %pSecond.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %zString, align 8
  %2 = load ptr, ptr %pSecond.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zSend, align 8
  %4 = load ptr, ptr %pFirst.addr, align 8
  %zString1 = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zString1, align 8
  %6 = load ptr, ptr %pFirst.addr, align 8
  %nByte2 = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nByte2, align 8
  %idxprom3 = zext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %5, i64 %idxprom3
  store ptr %arrayidx4, ptr %zFend, align 8
  %8 = load ptr, ptr %pSecond.addr, align 8
  %zString5 = getelementptr inbounds nuw %struct.SyString, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %zString5, align 8
  store ptr %9, ptr %zSin, align 8
  %10 = load ptr, ptr %pFirst.addr, align 8
  %zString6 = getelementptr inbounds nuw %struct.SyString, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zString6, align 8
  store ptr %11, ptr %zFin, align 8
  %12 = load ptr, ptr %zFin, align 8
  store ptr %12, ptr %zPtr, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %entry
  %13 = load ptr, ptr %zFin, align 8
  %14 = load ptr, ptr %zFend, align 8
  %cmp = icmp uge ptr %13, %14
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %15 = load ptr, ptr %zSin, align 8
  %16 = load ptr, ptr %zSend, align 8
  %cmp7 = icmp uge ptr %15, %16
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %17 = load ptr, ptr %zFin, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %17, i64 0
  %18 = load i8, ptr %arrayidx8, align 1
  %conv = sext i8 %18 to i32
  %19 = load ptr, ptr %zSin, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %19, i64 0
  %20 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %20 to i32
  %cmp11 = icmp ne i32 %conv, %conv10
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  br label %for.end

if.end14:                                         ; preds = %if.end
  %21 = load ptr, ptr %zFin, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %zFin, align 8
  %22 = load ptr, ptr %zSin, align 8
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr15, ptr %zSin, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then13, %if.then
  %23 = load ptr, ptr %zFin, align 8
  %24 = load ptr, ptr %zPtr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv16 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv16
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
