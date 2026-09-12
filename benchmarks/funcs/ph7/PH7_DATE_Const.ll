; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str.818 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @PH7_DATE_Const(ptr noundef %pVal, ptr noundef %pUnused) #0 {
entry:
  %pVal.addr = alloca ptr, align 8
  %pUnused.addr = alloca ptr, align 8
  %sTm = alloca %struct.Sytm, align 8
  %pTm = alloca ptr, align 8
  %t = alloca i64, align 8
  store ptr %pVal, ptr %pVal.addr, align 8
  store ptr %pUnused, ptr %pUnused.addr, align 8
  %call = call i64 @time(ptr noundef %t) #2
  %call1 = call ptr @gmtime(ptr noundef %t) #2
  store ptr %call1, ptr %pTm, align 8
  %0 = load ptr, ptr %pTm, align 8
  %tm_hour = getelementptr inbounds nuw %struct.tm, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %tm_hour, align 8
  %tm_hour2 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 2
  store i32 %1, ptr %tm_hour2, align 8
  %2 = load ptr, ptr %pTm, align 8
  %tm_min = getelementptr inbounds nuw %struct.tm, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %tm_min, align 4
  %tm_min3 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 1
  store i32 %3, ptr %tm_min3, align 4
  %4 = load ptr, ptr %pTm, align 8
  %tm_sec = getelementptr inbounds nuw %struct.tm, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %tm_sec, align 8
  %tm_sec4 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 0
  store i32 %5, ptr %tm_sec4, align 8
  %6 = load ptr, ptr %pTm, align 8
  %tm_mon = getelementptr inbounds nuw %struct.tm, ptr %6, i32 0, i32 4
  %7 = load i32, ptr %tm_mon, align 8
  %tm_mon5 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  store i32 %7, ptr %tm_mon5, align 8
  %8 = load ptr, ptr %pTm, align 8
  %tm_mday = getelementptr inbounds nuw %struct.tm, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %tm_mday, align 4
  %tm_mday6 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  store i32 %9, ptr %tm_mday6, align 4
  %10 = load ptr, ptr %pTm, align 8
  %tm_year = getelementptr inbounds nuw %struct.tm, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %tm_year, align 4
  %add = add nsw i32 %11, 1900
  %tm_year7 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  store i32 %add, ptr %tm_year7, align 4
  %12 = load ptr, ptr %pTm, align 8
  %tm_yday = getelementptr inbounds nuw %struct.tm, ptr %12, i32 0, i32 7
  %13 = load i32, ptr %tm_yday, align 4
  %tm_yday8 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 7
  store i32 %13, ptr %tm_yday8, align 4
  %14 = load ptr, ptr %pTm, align 8
  %tm_wday = getelementptr inbounds nuw %struct.tm, ptr %14, i32 0, i32 6
  %15 = load i32, ptr %tm_wday, align 8
  %tm_wday9 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 6
  store i32 %15, ptr %tm_wday9, align 8
  %16 = load ptr, ptr %pTm, align 8
  %tm_isdst = getelementptr inbounds nuw %struct.tm, ptr %16, i32 0, i32 8
  %17 = load i32, ptr %tm_isdst, align 8
  %tm_isdst10 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 8
  store i32 %17, ptr %tm_isdst10, align 8
  %tm_gmtoff = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 10
  store i64 0, ptr %tm_gmtoff, align 8
  %tm_zone = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 9
  store ptr null, ptr %tm_zone, align 8
  store ptr null, ptr %pUnused.addr, align 8
  %18 = load ptr, ptr %pVal.addr, align 8
  %tm_year11 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 5
  %19 = load i32, ptr %tm_year11, align 4
  %tm_mon12 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 4
  %20 = load i32, ptr %tm_mon12, align 8
  %add13 = add nsw i32 %20, 1
  %tm_mday14 = getelementptr inbounds nuw %struct.Sytm, ptr %sTm, i32 0, i32 3
  %21 = load i32, ptr %tm_mday14, align 4
  %call15 = call i32 (ptr, ptr, ...) @ph7_value_string_format(ptr noundef %18, ptr noundef @.str.818, i32 noundef %19, i32 noundef %add13, i32 noundef %21)
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) #1

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
