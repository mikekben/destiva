; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3LogEstAdd.x = external hidden constant [32 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden signext i16 @sqlite3LogEstAdd(i16 noundef signext %a, i16 noundef signext %b) #0 {
entry:
  %retval = alloca i16, align 2
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, ptr %a.addr, align 2
  store i16 %b, ptr %b.addr, align 2
  %0 = load i16, ptr %a.addr, align 2
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr %b.addr, align 2
  %conv1 = sext i16 %1 to i32
  %cmp = icmp sge i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i16, ptr %a.addr, align 2
  %conv3 = sext i16 %2 to i32
  %3 = load i16, ptr %b.addr, align 2
  %conv4 = sext i16 %3 to i32
  %add = add nsw i32 %conv4, 49
  %cmp5 = icmp sgt i32 %conv3, %add
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %4 = load i16, ptr %a.addr, align 2
  store i16 %4, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i16, ptr %a.addr, align 2
  %conv8 = sext i16 %5 to i32
  %6 = load i16, ptr %b.addr, align 2
  %conv9 = sext i16 %6 to i32
  %add10 = add nsw i32 %conv9, 31
  %cmp11 = icmp sgt i32 %conv8, %add10
  br i1 %cmp11, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  %7 = load i16, ptr %a.addr, align 2
  %conv14 = sext i16 %7 to i32
  %add15 = add nsw i32 %conv14, 1
  %conv16 = trunc i32 %add15 to i16
  store i16 %conv16, ptr %retval, align 2
  br label %return

if.end17:                                         ; preds = %if.end
  %8 = load i16, ptr %a.addr, align 2
  %conv18 = sext i16 %8 to i32
  %9 = load i16, ptr %a.addr, align 2
  %conv19 = sext i16 %9 to i32
  %10 = load i16, ptr %b.addr, align 2
  %conv20 = sext i16 %10 to i32
  %sub = sub nsw i32 %conv19, %conv20
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [32 x i8], ptr @sqlite3LogEstAdd.x, i64 0, i64 %idxprom
  %11 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %11 to i32
  %add22 = add nsw i32 %conv18, %conv21
  %conv23 = trunc i32 %add22 to i16
  store i16 %conv23, ptr %retval, align 2
  br label %return

if.else:                                          ; preds = %entry
  %12 = load i16, ptr %b.addr, align 2
  %conv24 = sext i16 %12 to i32
  %13 = load i16, ptr %a.addr, align 2
  %conv25 = sext i16 %13 to i32
  %add26 = add nsw i32 %conv25, 49
  %cmp27 = icmp sgt i32 %conv24, %add26
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.else
  %14 = load i16, ptr %b.addr, align 2
  store i16 %14, ptr %retval, align 2
  br label %return

if.end30:                                         ; preds = %if.else
  %15 = load i16, ptr %b.addr, align 2
  %conv31 = sext i16 %15 to i32
  %16 = load i16, ptr %a.addr, align 2
  %conv32 = sext i16 %16 to i32
  %add33 = add nsw i32 %conv32, 31
  %cmp34 = icmp sgt i32 %conv31, %add33
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end30
  %17 = load i16, ptr %b.addr, align 2
  %conv37 = sext i16 %17 to i32
  %add38 = add nsw i32 %conv37, 1
  %conv39 = trunc i32 %add38 to i16
  store i16 %conv39, ptr %retval, align 2
  br label %return

if.end40:                                         ; preds = %if.end30
  %18 = load i16, ptr %b.addr, align 2
  %conv41 = sext i16 %18 to i32
  %19 = load i16, ptr %b.addr, align 2
  %conv42 = sext i16 %19 to i32
  %20 = load i16, ptr %a.addr, align 2
  %conv43 = sext i16 %20 to i32
  %sub44 = sub nsw i32 %conv42, %conv43
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [32 x i8], ptr @sqlite3LogEstAdd.x, i64 0, i64 %idxprom45
  %21 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %21 to i32
  %add48 = add nsw i32 %conv41, %conv47
  %conv49 = trunc i32 %add48 to i16
  store i16 %conv49, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end40, %if.then36, %if.then29, %if.end17, %if.then13, %if.then7
  %22 = load i16, ptr %retval, align 2
  ret i16 %22
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
