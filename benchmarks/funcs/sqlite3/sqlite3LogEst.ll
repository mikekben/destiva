; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3LogEst.a = external hidden global [8 x i16], align 16

; Function Attrs: nounwind uwtable
define hidden signext i16 @sqlite3LogEst(i64 noundef %x) #0 {
entry:
  %retval = alloca i16, align 2
  %x.addr = alloca i64, align 8
  %y = alloca i16, align 2
  store i64 %x, ptr %x.addr, align 8
  store i16 40, ptr %y, align 2
  %0 = load i64, ptr %x.addr, align 8
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %x.addr, align 8
  %cmp1 = icmp ult i64 %1, 2
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i16 0, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i64, ptr %x.addr, align 8
  %cmp3 = icmp ult i64 %2, 8
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i16, ptr %y, align 2
  %conv = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, 10
  %conv4 = trunc i32 %sub to i16
  store i16 %conv4, ptr %y, align 2
  %4 = load i64, ptr %x.addr, align 8
  %shl = shl i64 %4, 1
  store i64 %shl, ptr %x.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end21

if.else:                                          ; preds = %entry
  br label %while.cond5

while.cond5:                                      ; preds = %while.body8, %if.else
  %5 = load i64, ptr %x.addr, align 8
  %cmp6 = icmp ugt i64 %5, 255
  br i1 %cmp6, label %while.body8, label %while.end11

while.body8:                                      ; preds = %while.cond5
  %6 = load i16, ptr %y, align 2
  %conv9 = sext i16 %6 to i32
  %add = add nsw i32 %conv9, 40
  %conv10 = trunc i32 %add to i16
  store i16 %conv10, ptr %y, align 2
  %7 = load i64, ptr %x.addr, align 8
  %shr = lshr i64 %7, 4
  store i64 %shr, ptr %x.addr, align 8
  br label %while.cond5, !llvm.loop !8

while.end11:                                      ; preds = %while.cond5
  br label %while.cond12

while.cond12:                                     ; preds = %while.body15, %while.end11
  %8 = load i64, ptr %x.addr, align 8
  %cmp13 = icmp ugt i64 %8, 15
  br i1 %cmp13, label %while.body15, label %while.end20

while.body15:                                     ; preds = %while.cond12
  %9 = load i16, ptr %y, align 2
  %conv16 = sext i16 %9 to i32
  %add17 = add nsw i32 %conv16, 10
  %conv18 = trunc i32 %add17 to i16
  store i16 %conv18, ptr %y, align 2
  %10 = load i64, ptr %x.addr, align 8
  %shr19 = lshr i64 %10, 1
  store i64 %shr19, ptr %x.addr, align 8
  br label %while.cond12, !llvm.loop !9

while.end20:                                      ; preds = %while.cond12
  br label %if.end21

if.end21:                                         ; preds = %while.end20, %while.end
  %11 = load i64, ptr %x.addr, align 8
  %and = and i64 %11, 7
  %arrayidx = getelementptr inbounds nuw [8 x i16], ptr @sqlite3LogEst.a, i64 0, i64 %and
  %12 = load i16, ptr %arrayidx, align 2
  %conv22 = sext i16 %12 to i32
  %13 = load i16, ptr %y, align 2
  %conv23 = sext i16 %13 to i32
  %add24 = add nsw i32 %conv22, %conv23
  %sub25 = sub nsw i32 %add24, 10
  %conv26 = trunc i32 %sub25 to i16
  store i16 %conv26, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end21, %if.then2
  %14 = load i16, ptr %retval, align 2
  ret i16 %14
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
!9 = distinct !{!9, !7}
