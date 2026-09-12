; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.1016 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.1017 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nounwind uwtable
define hidden i32 @parseHhMmSs(ptr noundef %zDate, ptr noundef %p) #1 {
entry:
  %retval = alloca i32, align 4
  %zDate.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %h = alloca i32, align 4
  %m = alloca i32, align 4
  %s = alloca i32, align 4
  %ms = alloca double, align 8
  %rScale = alloca double, align 8
  store ptr %zDate, ptr %zDate.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store double 0.000000e+00, ptr %ms, align 8
  %0 = load ptr, ptr %zDate.addr, align 8
  %call = call i32 (ptr, ptr, ...) @getDigits(ptr noundef %0, ptr noundef @.str.1016, ptr noundef %h, ptr noundef %m)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %zDate.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 5
  store ptr %add.ptr, ptr %zDate.addr, align 8
  %2 = load ptr, ptr %zDate.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 58
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %zDate.addr, align 8
  %5 = load ptr, ptr %zDate.addr, align 8
  %call4 = call i32 (ptr, ptr, ...) @getDigits(ptr noundef %5, ptr noundef @.str.1017, ptr noundef %s)
  %cmp5 = icmp ne i32 %call4, 1
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then3
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.then3
  %6 = load ptr, ptr %zDate.addr, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %add.ptr9, ptr %zDate.addr, align 8
  %7 = load ptr, ptr %zDate.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv10, 46
  br i1 %cmp11, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end8
  %9 = load ptr, ptr %zDate.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 1
  %10 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx13 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %and = and i32 %conv14, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then15, label %if.end25

if.then15:                                        ; preds = %land.lhs.true
  store double 1.000000e+00, ptr %rScale, align 8
  %12 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr16, ptr %zDate.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then15
  %13 = load ptr, ptr %zDate.addr, align 8
  %14 = load i8, ptr %13, align 1
  %idxprom17 = zext i8 %14 to i64
  %arrayidx18 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom17
  %15 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %15 to i32
  %and20 = and i32 %conv19, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load double, ptr %ms, align 8
  %17 = load ptr, ptr %zDate.addr, align 8
  %18 = load i8, ptr %17, align 1
  %conv22 = sext i8 %18 to i32
  %conv23 = sitofp i32 %conv22 to double
  %19 = call double @llvm.fmuladd.f64(double %16, double 1.000000e+01, double %conv23)
  %sub = fsub double %19, 4.800000e+01
  store double %sub, ptr %ms, align 8
  %20 = load double, ptr %rScale, align 8
  %mul = fmul double %20, 1.000000e+01
  store double %mul, ptr %rScale, align 8
  %21 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %21, i32 1
  store ptr %incdec.ptr24, ptr %zDate.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %22 = load double, ptr %rScale, align 8
  %23 = load double, ptr %ms, align 8
  %div = fdiv double %23, %22
  store double %div, ptr %ms, align 8
  br label %if.end25

if.end25:                                         ; preds = %while.end, %land.lhs.true, %if.end8
  br label %if.end26

if.else:                                          ; preds = %if.end
  store i32 0, ptr %s, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end25
  %24 = load ptr, ptr %p.addr, align 8
  %validJD = getelementptr inbounds nuw %struct.DateTime, ptr %24, i32 0, i32 8
  store i8 0, ptr %validJD, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %rawS = getelementptr inbounds nuw %struct.DateTime, ptr %25, i32 0, i32 9
  store i8 0, ptr %rawS, align 1
  %26 = load ptr, ptr %p.addr, align 8
  %validHMS = getelementptr inbounds nuw %struct.DateTime, ptr %26, i32 0, i32 11
  store i8 1, ptr %validHMS, align 1
  %27 = load i32, ptr %h, align 4
  %28 = load ptr, ptr %p.addr, align 8
  %h27 = getelementptr inbounds nuw %struct.DateTime, ptr %28, i32 0, i32 4
  store i32 %27, ptr %h27, align 4
  %29 = load i32, ptr %m, align 4
  %30 = load ptr, ptr %p.addr, align 8
  %m28 = getelementptr inbounds nuw %struct.DateTime, ptr %30, i32 0, i32 5
  store i32 %29, ptr %m28, align 8
  %31 = load i32, ptr %s, align 4
  %conv29 = sitofp i32 %31 to double
  %32 = load double, ptr %ms, align 8
  %add = fadd double %conv29, %32
  %33 = load ptr, ptr %p.addr, align 8
  %s30 = getelementptr inbounds nuw %struct.DateTime, ptr %33, i32 0, i32 7
  store double %add, ptr %s30, align 8
  %34 = load ptr, ptr %zDate.addr, align 8
  %35 = load ptr, ptr %p.addr, align 8
  %call31 = call i32 @parseTimezone(ptr noundef %34, ptr noundef %35)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end26
  store i32 1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.end26
  %36 = load ptr, ptr %p.addr, align 8
  %tz = getelementptr inbounds nuw %struct.DateTime, ptr %36, i32 0, i32 6
  %37 = load i32, ptr %tz, align 4
  %cmp35 = icmp ne i32 %37, 0
  %38 = zext i1 %cmp35 to i64
  %cond = select i1 %cmp35, i32 1, i32 0
  %conv37 = trunc i32 %cond to i8
  %39 = load ptr, ptr %p.addr, align 8
  %validTZ = getelementptr inbounds nuw %struct.DateTime, ptr %39, i32 0, i32 12
  store i8 %conv37, ptr %validTZ, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end34, %if.then33, %if.then7, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
declare hidden i32 @getDigits(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @parseTimezone(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
