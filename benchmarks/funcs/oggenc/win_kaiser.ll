; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.215 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.216 = external hidden unnamed_addr constant [25 x i8], align 1
@__PRETTY_FUNCTION__.win_kaiser = external hidden unnamed_addr constant [43 x i8], align 1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @win_kaiser(ptr noundef %dest, i32 noundef %N, double noundef %alpha, i32 noundef %width) #1 {
entry:
  %dest.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %I_alpha = alloca double, align 8
  %midsq = alloca double, align 8
  %x = alloca i32, align 4
  %endpoint = alloca ptr, align 8
  %base = alloca ptr, align 8
  %origdest = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store double %alpha, ptr %alpha.addr, align 8
  store i32 %width, ptr %width.addr, align 4
  %0 = load ptr, ptr %dest.addr, align 8
  %1 = load i32, ptr %N.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds float, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %endpoint, align 8
  %2 = load ptr, ptr %dest.addr, align 8
  store ptr %2, ptr %base, align 8
  %3 = load ptr, ptr %dest.addr, align 8
  store ptr %3, ptr %origdest, align 8
  %4 = load i32, ptr %width.addr, align 4
  %5 = load i32, ptr %N.addr, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(ptr noundef @.str.215, ptr noundef @.str.116, i32 noundef 3264, ptr noundef @__PRETTY_FUNCTION__.win_kaiser) #3
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load i32, ptr %N.addr, align 4
  %and = and i32 %6, 1
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then2, label %if.end8

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %dest.addr, align 8
  store float 0.000000e+00, ptr %7, align 4
  %8 = load i32, ptr %width.addr, align 4
  %9 = load ptr, ptr %dest.addr, align 8
  %idx.ext3 = sext i32 %8 to i64
  %add.ptr4 = getelementptr inbounds float, ptr %9, i64 %idx.ext3
  store ptr %add.ptr4, ptr %dest.addr, align 8
  %10 = load ptr, ptr %dest.addr, align 8
  %11 = load ptr, ptr %endpoint, align 8
  %cmp5 = icmp uge ptr %10, %11
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then2
  %12 = load ptr, ptr %base, align 8
  %incdec.ptr = getelementptr inbounds nuw float, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %base, align 8
  store ptr %incdec.ptr, ptr %dest.addr, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.then2
  %13 = load i32, ptr %N.addr, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %N.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %14 = load i32, ptr %N.addr, align 4
  %div = sdiv i32 %14, 2
  %sub = sub nsw i32 0, %div
  store i32 %sub, ptr %x, align 4
  %15 = load i32, ptr %x, align 4
  %sub9 = sub nsw i32 %15, 1
  %conv = sitofp i32 %sub9 to double
  %16 = load i32, ptr %x, align 4
  %sub10 = sub nsw i32 %16, 1
  %conv11 = sitofp i32 %sub10 to double
  %mul = fmul double %conv, %conv11
  store double %mul, ptr %midsq, align 8
  %17 = load double, ptr %alpha.addr, align 8
  %call = call double @I_zero(double noundef %17)
  store double %call, ptr %I_alpha, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end31, %if.end8
  %18 = load i32, ptr %N.addr, align 4
  %dec12 = add nsw i32 %18, -1
  store i32 %dec12, ptr %N.addr, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load double, ptr %alpha.addr, align 8
  %20 = load i32, ptr %x, align 4
  %conv13 = sitofp i32 %20 to double
  %21 = load i32, ptr %x, align 4
  %conv14 = sitofp i32 %21 to double
  %mul15 = fmul double %conv13, %conv14
  %22 = load double, ptr %midsq, align 8
  %div16 = fdiv double %mul15, %22
  %sub17 = fsub double 1.000000e+00, %div16
  %call18 = call double @sqrt(double noundef %sub17) #4
  %mul19 = fmul double %19, %call18
  %call20 = call double @I_zero(double noundef %mul19)
  %23 = load double, ptr %I_alpha, align 8
  %div21 = fdiv double %call20, %23
  %24 = load ptr, ptr %dest.addr, align 8
  %25 = load float, ptr %24, align 4
  %conv22 = fpext float %25 to double
  %mul23 = fmul double %conv22, %div21
  %conv24 = fptrunc double %mul23 to float
  store float %conv24, ptr %24, align 4
  %26 = load i32, ptr %x, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %x, align 4
  %27 = load i32, ptr %width.addr, align 4
  %28 = load ptr, ptr %dest.addr, align 8
  %idx.ext25 = sext i32 %27 to i64
  %add.ptr26 = getelementptr inbounds float, ptr %28, i64 %idx.ext25
  store ptr %add.ptr26, ptr %dest.addr, align 8
  %29 = load ptr, ptr %dest.addr, align 8
  %30 = load ptr, ptr %endpoint, align 8
  %cmp27 = icmp uge ptr %29, %30
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %while.body
  %31 = load ptr, ptr %base, align 8
  %incdec.ptr30 = getelementptr inbounds nuw float, ptr %31, i32 1
  store ptr %incdec.ptr30, ptr %base, align 8
  store ptr %incdec.ptr30, ptr %dest.addr, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %32 = load ptr, ptr %dest.addr, align 8
  %33 = load ptr, ptr %origdest, align 8
  %34 = load i32, ptr %width.addr, align 4
  %idx.ext32 = sext i32 %34 to i64
  %add.ptr33 = getelementptr inbounds float, ptr %33, i64 %idx.ext32
  %cmp34 = icmp eq ptr %32, %add.ptr33
  br i1 %cmp34, label %if.then36, label %if.else37

if.then36:                                        ; preds = %while.end
  br label %if.end38

if.else37:                                        ; preds = %while.end
  call void @__assert_fail(ptr noundef @.str.216, ptr noundef @.str.116, i32 noundef 3287, ptr noundef @__PRETTY_FUNCTION__.win_kaiser) #3
  unreachable

if.end38:                                         ; preds = %if.then36
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden double @I_zero(double noundef) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

attributes #0 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

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
