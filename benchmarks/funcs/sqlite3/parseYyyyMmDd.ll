; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.1015 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @computeJD(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @parseYyyyMmDd(ptr noundef %zDate, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %zDate.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %Y = alloca i32, align 4
  %M = alloca i32, align 4
  %D = alloca i32, align 4
  %neg = alloca i32, align 4
  store ptr %zDate, ptr %zDate.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %zDate.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %zDate.addr, align 8
  store i32 1, ptr %neg, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %neg, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load ptr, ptr %zDate.addr, align 8
  %call = call i32 (ptr, ptr, ...) @getDigits(ptr noundef %3, ptr noundef @.str.1015, ptr noundef %Y, ptr noundef %M, ptr noundef %D)
  %cmp2 = icmp ne i32 %call, 3
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %zDate.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 10
  store ptr %add.ptr, ptr %zDate.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %5 = load ptr, ptr %zDate.addr, align 8
  %6 = load i8, ptr %5, align 1
  %idxprom = zext i8 %6 to i64
  %arrayidx6 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %and = and i32 %conv7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %8 = load ptr, ptr %zDate.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv8 = zext i8 %9 to i32
  %cmp9 = icmp eq i32 84, %conv8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %10 = phi i1 [ true, %while.cond ], [ %cmp9, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr11, ptr %zDate.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %12 = load ptr, ptr %zDate.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %call12 = call i32 @parseHhMmSs(ptr noundef %12, ptr noundef %13)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then15, label %if.else16

if.then15:                                        ; preds = %while.end
  br label %if.end23

if.else16:                                        ; preds = %while.end
  %14 = load ptr, ptr %zDate.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.else16
  %16 = load ptr, ptr %p.addr, align 8
  %validHMS = getelementptr inbounds nuw %struct.DateTime, ptr %16, i32 0, i32 11
  store i8 0, ptr %validHMS, align 1
  br label %if.end22

if.else21:                                        ; preds = %if.else16
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then20
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then15
  %17 = load ptr, ptr %p.addr, align 8
  %validJD = getelementptr inbounds nuw %struct.DateTime, ptr %17, i32 0, i32 8
  store i8 0, ptr %validJD, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %validYMD = getelementptr inbounds nuw %struct.DateTime, ptr %18, i32 0, i32 10
  store i8 1, ptr %validYMD, align 2
  %19 = load i32, ptr %neg, align 4
  %tobool24 = icmp ne i32 %19, 0
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end23
  %20 = load i32, ptr %Y, align 4
  %sub = sub nsw i32 0, %20
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  %21 = load i32, ptr %Y, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %21, %cond.false ]
  %22 = load ptr, ptr %p.addr, align 8
  %Y25 = getelementptr inbounds nuw %struct.DateTime, ptr %22, i32 0, i32 1
  store i32 %cond, ptr %Y25, align 8
  %23 = load i32, ptr %M, align 4
  %24 = load ptr, ptr %p.addr, align 8
  %M26 = getelementptr inbounds nuw %struct.DateTime, ptr %24, i32 0, i32 2
  store i32 %23, ptr %M26, align 4
  %25 = load i32, ptr %D, align 4
  %26 = load ptr, ptr %p.addr, align 8
  %D27 = getelementptr inbounds nuw %struct.DateTime, ptr %26, i32 0, i32 3
  store i32 %25, ptr %D27, align 8
  %27 = load ptr, ptr %p.addr, align 8
  %validTZ = getelementptr inbounds nuw %struct.DateTime, ptr %27, i32 0, i32 12
  %28 = load i8, ptr %validTZ, align 4
  %tobool28 = icmp ne i8 %28, 0
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %cond.end
  %29 = load ptr, ptr %p.addr, align 8
  call void @computeJD(ptr noundef %29)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.else21, %if.then4
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind uwtable
declare hidden i32 @parseHhMmSs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getDigits(ptr noundef, ptr noundef, ...) #0

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
