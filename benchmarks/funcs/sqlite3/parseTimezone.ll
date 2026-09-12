; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DateTime = type { i64, i32, i32, i32, i32, i32, i32, double, i8, i8, i8, i8, i8, i8, i8 }

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@.str.1018 = external hidden unnamed_addr constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @getDigits(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @parseTimezone(ptr noundef %zDate, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %zDate.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %sgn = alloca i32, align 4
  %nHr = alloca i32, align 4
  %nMn = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %zDate, ptr %zDate.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %sgn, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %zDate.addr, align 8
  %1 = load i8, ptr %0, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %zDate.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %p.addr, align 8
  %tz = getelementptr inbounds nuw %struct.DateTime, ptr %4, i32 0, i32 6
  store i32 0, ptr %tz, align 4
  %5 = load ptr, ptr %zDate.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv1 = sext i8 %6 to i32
  store i32 %conv1, ptr %c, align 4
  %7 = load i32, ptr %c, align 4
  %cmp = icmp eq i32 %7, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 -1, ptr %sgn, align 4
  br label %if.end16

if.else:                                          ; preds = %while.end
  %8 = load i32, ptr %c, align 4
  %cmp3 = icmp eq i32 %8, 43
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  store i32 1, ptr %sgn, align 4
  br label %if.end

if.else6:                                         ; preds = %if.else
  %9 = load i32, ptr %c, align 4
  %cmp7 = icmp eq i32 %9, 90
  br i1 %cmp7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else6
  %10 = load i32, ptr %c, align 4
  %cmp9 = icmp eq i32 %10, 122
  br i1 %cmp9, label %if.then11, label %if.else13

if.then11:                                        ; preds = %lor.lhs.false, %if.else6
  %11 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr12, ptr %zDate.addr, align 8
  br label %zulu_time

if.else13:                                        ; preds = %lor.lhs.false
  %12 = load i32, ptr %c, align 4
  %cmp14 = icmp ne i32 %12, 0
  %conv15 = zext i1 %cmp14 to i32
  store i32 %conv15, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then5
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  %13 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr17, ptr %zDate.addr, align 8
  %14 = load ptr, ptr %zDate.addr, align 8
  %call = call i32 (ptr, ptr, ...) @getDigits(ptr noundef %14, ptr noundef @.str.1018, ptr noundef %nHr, ptr noundef %nMn)
  %cmp18 = icmp ne i32 %call, 2
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  %15 = load ptr, ptr %zDate.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %15, i64 5
  store ptr %add.ptr, ptr %zDate.addr, align 8
  %16 = load i32, ptr %sgn, align 4
  %17 = load i32, ptr %nMn, align 4
  %18 = load i32, ptr %nHr, align 4
  %mul = mul nsw i32 %18, 60
  %add = add nsw i32 %17, %mul
  %mul22 = mul nsw i32 %16, %add
  %19 = load ptr, ptr %p.addr, align 8
  %tz23 = getelementptr inbounds nuw %struct.DateTime, ptr %19, i32 0, i32 6
  store i32 %mul22, ptr %tz23, align 4
  br label %zulu_time

zulu_time:                                        ; preds = %if.end21, %if.then11
  br label %while.cond24

while.cond24:                                     ; preds = %while.body30, %zulu_time
  %20 = load ptr, ptr %zDate.addr, align 8
  %21 = load i8, ptr %20, align 1
  %idxprom25 = zext i8 %21 to i64
  %arrayidx26 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom25
  %22 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %22 to i32
  %and28 = and i32 %conv27, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %while.body30, label %while.end32

while.body30:                                     ; preds = %while.cond24
  %23 = load ptr, ptr %zDate.addr, align 8
  %incdec.ptr31 = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr31, ptr %zDate.addr, align 8
  br label %while.cond24, !llvm.loop !8

while.end32:                                      ; preds = %while.cond24
  %24 = load ptr, ptr %p.addr, align 8
  %tzSet = getelementptr inbounds nuw %struct.DateTime, ptr %24, i32 0, i32 13
  store i8 1, ptr %tzSet, align 1
  %25 = load ptr, ptr %zDate.addr, align 8
  %26 = load i8, ptr %25, align 1
  %conv33 = sext i8 %26 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  %conv35 = zext i1 %cmp34 to i32
  store i32 %conv35, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end32, %if.then20, %if.else13
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
