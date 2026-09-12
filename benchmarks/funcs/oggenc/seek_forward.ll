; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @seek_forward(ptr noundef %in, i32 noundef %length) #1 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %buf = alloca [1024 x i8], align 16
  %seek_needed = alloca i32, align 4
  %seeked = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  %0 = load ptr, ptr %in.addr, align 8
  %1 = load i32, ptr %length.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call i32 @fseek(ptr noundef %0, i64 noundef %conv, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %length.addr, align 4
  store i32 %2, ptr %seek_needed, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %3 = load i32, ptr %seek_needed, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  %4 = load i32, ptr %seek_needed, align 4
  %cmp2 = icmp sgt i32 %4, 1024
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  br label %cond.end

cond.false:                                       ; preds = %while.body
  %5 = load i32, ptr %seek_needed, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1024, %cond.true ], [ %5, %cond.false ]
  %conv4 = sext i32 %cond to i64
  %6 = load ptr, ptr %in.addr, align 8
  %call5 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef %conv4, ptr noundef %6)
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, ptr %seeked, align 4
  %7 = load i32, ptr %seeked, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %cond.end
  %8 = load i32, ptr %seeked, align 4
  %9 = load i32, ptr %seek_needed, align 4
  %sub = sub nsw i32 %9, %8
  store i32 %sub, ptr %seek_needed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end9

if.end9:                                          ; preds = %while.end, %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then8
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #0

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
