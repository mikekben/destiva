; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_IsLangConstruct(i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateisLangConstruct(i32 noundef %nKeyword) #0 {
entry:
  %nKeyword.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store i32 %nKeyword, ptr %nKeyword.addr, align 4
  %0 = load i32, ptr %nKeyword.addr, align 4
  %call = call i32 @PH7_IsLangConstruct(i32 noundef %0, i8 noundef zeroext 1)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nKeyword.addr, align 4
  %cmp1 = icmp eq i32 %2, 18
  br i1 %cmp1, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, ptr %nKeyword.addr, align 4
  %cmp2 = icmp eq i32 %3, 44
  br i1 %cmp2, label %if.then5, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %nKeyword.addr, align 4
  %cmp4 = icmp eq i32 %4, 16
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.then
  store i32 1, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %lor.lhs.false3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %5 = load i32, ptr %rc, align 4
  ret i32 %5
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
