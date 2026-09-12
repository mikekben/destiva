; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sytime = type { i64, i64 }
%struct.timeval = type { i64, i64 }

@.str.1000 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_double(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_microtime(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %bFloat = alloca i32, align 4
  %sTime = alloca %struct.sytime, align 8
  %tv = alloca %struct.timeval, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %bFloat, align 4
  %call = call i32 @gettimeofday(ptr noundef %tv, ptr noundef null) #2
  %tv_sec = getelementptr inbounds nuw %struct.timeval, ptr %tv, i32 0, i32 0
  %0 = load i64, ptr %tv_sec, align 8
  %tm_sec = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 0
  store i64 %0, ptr %tm_sec, align 8
  %tv_usec = getelementptr inbounds nuw %struct.timeval, ptr %tv, i32 0, i32 1
  %1 = load i64, ptr %tv_usec, align 8
  %tm_usec = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 1
  store i64 %1, ptr %tm_usec, align 8
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_to_bool(ptr noundef %4)
  store i32 %call1, ptr %bFloat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %bFloat, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %tm_sec3 = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 0
  %7 = load i64, ptr %tm_sec3, align 8
  %conv = sitofp i64 %7 to double
  %call4 = call i32 @ph7_result_double(ptr noundef %6, double noundef %conv)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %tm_usec5 = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 1
  %9 = load i64, ptr %tm_usec5, align 8
  %tm_sec6 = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 0
  %10 = load i64, ptr %tm_sec6, align 8
  %call7 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %8, ptr noundef @.str.1000, i64 noundef %9, i64 noundef %10)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  ret i32 0
}

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
