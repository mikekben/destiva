; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3StrICmp(ptr noundef %zLeft, ptr noundef %zRight) #0 {
entry:
  %zLeft.addr = alloca ptr, align 8
  %zRight.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %zLeft, ptr %zLeft.addr, align 8
  store ptr %zRight, ptr %zRight.addr, align 8
  %0 = load ptr, ptr %zLeft.addr, align 8
  store ptr %0, ptr %a, align 8
  %1 = load ptr, ptr %zRight.addr, align 8
  store ptr %1, ptr %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end12, %entry
  %2 = load ptr, ptr %a, align 8
  %3 = load i8, ptr %2, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, ptr %c, align 4
  %4 = load ptr, ptr %b, align 8
  %5 = load i8, ptr %4, align 1
  %conv1 = zext i8 %5 to i32
  store i32 %conv1, ptr %x, align 4
  %6 = load i32, ptr %c, align 4
  %7 = load i32, ptr %x, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %8 = load i32, ptr %c, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end12

if.else:                                          ; preds = %for.cond
  %9 = load i32, ptr %c, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %10 to i32
  %11 = load i32, ptr %x, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom7
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %sub = sub nsw i32 %conv6, %conv9
  store i32 %sub, ptr %c, align 4
  %13 = load i32, ptr %c, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.else
  br label %for.end

if.end11:                                         ; preds = %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  %14 = load ptr, ptr %a, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %a, align 8
  %15 = load ptr, ptr %b, align 8
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr13, ptr %b, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then10, %if.then5
  %16 = load i32, ptr %c, align 4
  ret i32 %16
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
