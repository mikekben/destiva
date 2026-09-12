; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local double @read_IEEE80(ptr noundef %buf) #0 {
entry:
  %retval = alloca double, align 8
  %buf.addr = alloca ptr, align 8
  %s = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca double, align 8
  store ptr %buf, ptr %buf.addr, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 255
  store i32 %and, ptr %s, align 4
  %2 = load ptr, ptr %buf.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 0
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %and3 = and i32 %conv2, 127
  %shl = shl i32 %and3, 8
  %4 = load ptr, ptr %buf.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 1
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %and6 = and i32 %conv5, 255
  %or = or i32 %shl, %and6
  store i32 %or, ptr %e, align 4
  %6 = load ptr, ptr %buf.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 2
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %and9 = and i32 %conv8, 255
  %conv10 = sext i32 %and9 to i64
  %shl11 = shl i64 %conv10, 24
  %8 = load ptr, ptr %buf.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %8, i64 3
  %9 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %9 to i32
  %and14 = and i32 %conv13, 255
  %shl15 = shl i32 %and14, 16
  %conv16 = sext i32 %shl15 to i64
  %or17 = or i64 %shl11, %conv16
  %10 = load ptr, ptr %buf.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %10, i64 4
  %11 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %11 to i32
  %and20 = and i32 %conv19, 255
  %shl21 = shl i32 %and20, 8
  %conv22 = sext i32 %shl21 to i64
  %or23 = or i64 %or17, %conv22
  %12 = load ptr, ptr %buf.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %12, i64 5
  %13 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %13 to i32
  %and26 = and i32 %conv25, 255
  %conv27 = sext i32 %and26 to i64
  %or28 = or i64 %or23, %conv27
  %conv29 = uitofp i64 %or28 to double
  store double %conv29, ptr %f, align 8
  %14 = load i32, ptr %e, align 4
  %cmp = icmp eq i32 %14, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %buf.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %15, i64 2
  %16 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %16 to i32
  %and33 = and i32 %conv32, 128
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.then
  store double 0x7FF0000000000000, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %17 = load i32, ptr %s, align 4
  %tobool35 = icmp ne i32 %17, 0
  br i1 %tobool35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else
  store double 0xFFF0000000000000, ptr %retval, align 8
  br label %return

if.else37:                                        ; preds = %if.else
  store double 0x7FF0000000000000, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %18 = load double, ptr %f, align 8
  %call = call double @ldexp(double noundef %18, i32 noundef 32) #2
  store double %call, ptr %f, align 8
  %19 = load ptr, ptr %buf.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %19, i64 6
  %20 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %20 to i32
  %and40 = and i32 %conv39, 255
  %shl41 = shl i32 %and40, 24
  %21 = load ptr, ptr %buf.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, ptr %21, i64 7
  %22 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %22 to i32
  %and44 = and i32 %conv43, 255
  %shl45 = shl i32 %and44, 16
  %or46 = or i32 %shl41, %shl45
  %23 = load ptr, ptr %buf.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %23, i64 8
  %24 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %24 to i32
  %and49 = and i32 %conv48, 255
  %shl50 = shl i32 %and49, 8
  %or51 = or i32 %or46, %shl50
  %25 = load ptr, ptr %buf.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %25, i64 9
  %26 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %26 to i32
  %and54 = and i32 %conv53, 255
  %or55 = or i32 %or51, %and54
  %conv56 = sitofp i32 %or55 to double
  %27 = load double, ptr %f, align 8
  %add = fadd double %27, %conv56
  store double %add, ptr %f, align 8
  %28 = load double, ptr %f, align 8
  %29 = load i32, ptr %e, align 4
  %sub = sub nsw i32 %29, 16446
  %call57 = call double @ldexp(double noundef %28, i32 noundef %sub) #2
  store double %call57, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.else37, %if.then36, %if.then34
  %30 = load double, ptr %retval, align 8
  ret double %30
}

; Function Attrs: nounwind
declare double @ldexp(double noundef, i32 noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
