; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden void @computeJD(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %Y = alloca i32, align 4
  %M = alloca i32, align 4
  %D = alloca i32, align 4
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %X1 = alloca i32, align 4
  %X2 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %validJD = getelementptr inbounds nuw %struct.DateTime, ptr %0, i32 0, i32 8
  %1 = load i8, ptr %validJD, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end52

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %validYMD = getelementptr inbounds nuw %struct.DateTime, ptr %2, i32 0, i32 10
  %3 = load i8, ptr %validYMD, align 2
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %p.addr, align 8
  %Y3 = getelementptr inbounds nuw %struct.DateTime, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %Y3, align 8
  store i32 %5, ptr %Y, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %M4 = getelementptr inbounds nuw %struct.DateTime, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %M4, align 4
  store i32 %7, ptr %M, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %D5 = getelementptr inbounds nuw %struct.DateTime, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %D5, align 8
  store i32 %9, ptr %D, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  store i32 2000, ptr %Y, align 4
  store i32 1, ptr %M, align 4
  store i32 1, ptr %D, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %10 = load i32, ptr %Y, align 4
  %cmp = icmp slt i32 %10, -4713
  br i1 %cmp, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %11 = load i32, ptr %Y, align 4
  %cmp7 = icmp sgt i32 %11, 9999
  br i1 %cmp7, label %if.then10, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %12 = load ptr, ptr %p.addr, align 8
  %rawS = getelementptr inbounds nuw %struct.DateTime, ptr %12, i32 0, i32 9
  %13 = load i8, ptr %rawS, align 1
  %conv = sext i8 %13 to i32
  %tobool9 = icmp ne i32 %conv, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false8, %lor.lhs.false, %if.end6
  %14 = load ptr, ptr %p.addr, align 8
  call void @datetimeError(ptr noundef %14)
  br label %if.end52

if.end11:                                         ; preds = %lor.lhs.false8
  %15 = load i32, ptr %M, align 4
  %cmp12 = icmp sle i32 %15, 2
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  %16 = load i32, ptr %Y, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %Y, align 4
  %17 = load i32, ptr %M, align 4
  %add = add nsw i32 %17, 12
  store i32 %add, ptr %M, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11
  %18 = load i32, ptr %Y, align 4
  %div = sdiv i32 %18, 100
  store i32 %div, ptr %A, align 4
  %19 = load i32, ptr %A, align 4
  %sub = sub nsw i32 2, %19
  %20 = load i32, ptr %A, align 4
  %div16 = sdiv i32 %20, 4
  %add17 = add nsw i32 %sub, %div16
  store i32 %add17, ptr %B, align 4
  %21 = load i32, ptr %Y, align 4
  %add18 = add nsw i32 %21, 4716
  %mul = mul nsw i32 36525, %add18
  %div19 = sdiv i32 %mul, 100
  store i32 %div19, ptr %X1, align 4
  %22 = load i32, ptr %M, align 4
  %add20 = add nsw i32 %22, 1
  %mul21 = mul nsw i32 306001, %add20
  %div22 = sdiv i32 %mul21, 10000
  store i32 %div22, ptr %X2, align 4
  %23 = load i32, ptr %X1, align 4
  %24 = load i32, ptr %X2, align 4
  %add23 = add nsw i32 %23, %24
  %25 = load i32, ptr %D, align 4
  %add24 = add nsw i32 %add23, %25
  %26 = load i32, ptr %B, align 4
  %add25 = add nsw i32 %add24, %26
  %conv26 = sitofp i32 %add25 to double
  %sub27 = fsub double %conv26, 1.524500e+03
  %mul28 = fmul double %sub27, 8.640000e+07
  %conv29 = fptosi double %mul28 to i64
  %27 = load ptr, ptr %p.addr, align 8
  %iJD = getelementptr inbounds nuw %struct.DateTime, ptr %27, i32 0, i32 0
  store i64 %conv29, ptr %iJD, align 8
  %28 = load ptr, ptr %p.addr, align 8
  %validJD30 = getelementptr inbounds nuw %struct.DateTime, ptr %28, i32 0, i32 8
  store i8 1, ptr %validJD30, align 8
  %29 = load ptr, ptr %p.addr, align 8
  %validHMS = getelementptr inbounds nuw %struct.DateTime, ptr %29, i32 0, i32 11
  %30 = load i8, ptr %validHMS, align 1
  %tobool31 = icmp ne i8 %30, 0
  br i1 %tobool31, label %if.then32, label %if.end52

if.then32:                                        ; preds = %if.end15
  %31 = load ptr, ptr %p.addr, align 8
  %h = getelementptr inbounds nuw %struct.DateTime, ptr %31, i32 0, i32 4
  %32 = load i32, ptr %h, align 4
  %mul33 = mul nsw i32 %32, 3600000
  %33 = load ptr, ptr %p.addr, align 8
  %m = getelementptr inbounds nuw %struct.DateTime, ptr %33, i32 0, i32 5
  %34 = load i32, ptr %m, align 8
  %mul34 = mul nsw i32 %34, 60000
  %add35 = add nsw i32 %mul33, %mul34
  %conv36 = sext i32 %add35 to i64
  %35 = load ptr, ptr %p.addr, align 8
  %s = getelementptr inbounds nuw %struct.DateTime, ptr %35, i32 0, i32 7
  %36 = load double, ptr %s, align 8
  %mul37 = fmul double %36, 1.000000e+03
  %conv38 = fptosi double %mul37 to i64
  %add39 = add nsw i64 %conv36, %conv38
  %37 = load ptr, ptr %p.addr, align 8
  %iJD40 = getelementptr inbounds nuw %struct.DateTime, ptr %37, i32 0, i32 0
  %38 = load i64, ptr %iJD40, align 8
  %add41 = add nsw i64 %38, %add39
  store i64 %add41, ptr %iJD40, align 8
  %39 = load ptr, ptr %p.addr, align 8
  %validTZ = getelementptr inbounds nuw %struct.DateTime, ptr %39, i32 0, i32 12
  %40 = load i8, ptr %validTZ, align 4
  %tobool42 = icmp ne i8 %40, 0
  br i1 %tobool42, label %if.then43, label %if.end51

if.then43:                                        ; preds = %if.then32
  %41 = load ptr, ptr %p.addr, align 8
  %tz = getelementptr inbounds nuw %struct.DateTime, ptr %41, i32 0, i32 6
  %42 = load i32, ptr %tz, align 4
  %mul44 = mul nsw i32 %42, 60000
  %conv45 = sext i32 %mul44 to i64
  %43 = load ptr, ptr %p.addr, align 8
  %iJD46 = getelementptr inbounds nuw %struct.DateTime, ptr %43, i32 0, i32 0
  %44 = load i64, ptr %iJD46, align 8
  %sub47 = sub nsw i64 %44, %conv45
  store i64 %sub47, ptr %iJD46, align 8
  %45 = load ptr, ptr %p.addr, align 8
  %validYMD48 = getelementptr inbounds nuw %struct.DateTime, ptr %45, i32 0, i32 10
  store i8 0, ptr %validYMD48, align 2
  %46 = load ptr, ptr %p.addr, align 8
  %validHMS49 = getelementptr inbounds nuw %struct.DateTime, ptr %46, i32 0, i32 11
  store i8 0, ptr %validHMS49, align 1
  %47 = load ptr, ptr %p.addr, align 8
  %validTZ50 = getelementptr inbounds nuw %struct.DateTime, ptr %47, i32 0, i32 12
  store i8 0, ptr %validTZ50, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.then32
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end15, %if.then10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @datetimeError(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
