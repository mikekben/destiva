; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden void @computeJD(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @computeHMS(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %s = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %validHMS = getelementptr inbounds nuw %struct.DateTime, ptr %0, i32 0, i32 11
  %1 = load i8, ptr %validHMS, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %2)
  %3 = load ptr, ptr %p.addr, align 8
  %iJD = getelementptr inbounds nuw %struct.DateTime, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %iJD, align 8
  %add = add nsw i64 %4, 43200000
  %rem = srem i64 %add, 86400000
  %conv = trunc i64 %rem to i32
  store i32 %conv, ptr %s, align 4
  %5 = load i32, ptr %s, align 4
  %conv1 = sitofp i32 %5 to double
  %div = fdiv double %conv1, 1.000000e+03
  %6 = load ptr, ptr %p.addr, align 8
  %s2 = getelementptr inbounds nuw %struct.DateTime, ptr %6, i32 0, i32 7
  store double %div, ptr %s2, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %s3 = getelementptr inbounds nuw %struct.DateTime, ptr %7, i32 0, i32 7
  %8 = load double, ptr %s3, align 8
  %conv4 = fptosi double %8 to i32
  store i32 %conv4, ptr %s, align 4
  %9 = load i32, ptr %s, align 4
  %conv5 = sitofp i32 %9 to double
  %10 = load ptr, ptr %p.addr, align 8
  %s6 = getelementptr inbounds nuw %struct.DateTime, ptr %10, i32 0, i32 7
  %11 = load double, ptr %s6, align 8
  %sub = fsub double %11, %conv5
  store double %sub, ptr %s6, align 8
  %12 = load i32, ptr %s, align 4
  %div7 = sdiv i32 %12, 3600
  %13 = load ptr, ptr %p.addr, align 8
  %h = getelementptr inbounds nuw %struct.DateTime, ptr %13, i32 0, i32 4
  store i32 %div7, ptr %h, align 4
  %14 = load ptr, ptr %p.addr, align 8
  %h8 = getelementptr inbounds nuw %struct.DateTime, ptr %14, i32 0, i32 4
  %15 = load i32, ptr %h8, align 4
  %mul = mul nsw i32 %15, 3600
  %16 = load i32, ptr %s, align 4
  %sub9 = sub nsw i32 %16, %mul
  store i32 %sub9, ptr %s, align 4
  %17 = load i32, ptr %s, align 4
  %div10 = sdiv i32 %17, 60
  %18 = load ptr, ptr %p.addr, align 8
  %m = getelementptr inbounds nuw %struct.DateTime, ptr %18, i32 0, i32 5
  store i32 %div10, ptr %m, align 8
  %19 = load i32, ptr %s, align 4
  %20 = load ptr, ptr %p.addr, align 8
  %m11 = getelementptr inbounds nuw %struct.DateTime, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %m11, align 8
  %mul12 = mul nsw i32 %21, 60
  %sub13 = sub nsw i32 %19, %mul12
  %conv14 = sitofp i32 %sub13 to double
  %22 = load ptr, ptr %p.addr, align 8
  %s15 = getelementptr inbounds nuw %struct.DateTime, ptr %22, i32 0, i32 7
  %23 = load double, ptr %s15, align 8
  %add16 = fadd double %23, %conv14
  store double %add16, ptr %s15, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %rawS = getelementptr inbounds nuw %struct.DateTime, ptr %24, i32 0, i32 9
  store i8 0, ptr %rawS, align 1
  %25 = load ptr, ptr %p.addr, align 8
  %validHMS17 = getelementptr inbounds nuw %struct.DateTime, ptr %25, i32 0, i32 11
  store i8 1, ptr %validHMS17, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
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
