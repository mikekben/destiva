; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_IsLangConstruct(i32 noundef %nKeyID, i8 noundef zeroext %bCheckFunc) #0 {
entry:
  %retval = alloca i32, align 4
  %nKeyID.addr = alloca i32, align 4
  %bCheckFunc.addr = alloca i8, align 1
  store i32 %nKeyID, ptr %nKeyID.addr, align 4
  store i8 %bCheckFunc, ptr %bCheckFunc.addr, align 1
  %0 = load i32, ptr %nKeyID.addr, align 4
  %cmp = icmp eq i32 %0, 37
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %nKeyID.addr, align 4
  %cmp1 = icmp eq i32 %1, 4
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %nKeyID.addr, align 4
  %cmp3 = icmp eq i32 %2, 41
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %nKeyID.addr, align 4
  %cmp5 = icmp eq i32 %3, 40
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %4 = load i32, ptr %nKeyID.addr, align 4
  %cmp7 = icmp eq i32 %4, 10
  br i1 %cmp7, label %if.then, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %5 = load i32, ptr %nKeyID.addr, align 4
  %cmp9 = icmp eq i32 %5, 9
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false6, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false8
  %6 = load i8, ptr %bCheckFunc.addr, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then10, label %if.end28

if.then10:                                        ; preds = %if.end
  %7 = load i32, ptr %nKeyID.addr, align 4
  %cmp11 = icmp eq i32 %7, 43
  br i1 %cmp11, label %if.then26, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %if.then10
  %8 = load i32, ptr %nKeyID.addr, align 4
  %cmp13 = icmp eq i32 %8, 8192
  br i1 %cmp13, label %if.then26, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %9 = load i32, ptr %nKeyID.addr, align 4
  %cmp15 = icmp eq i32 %9, 27
  br i1 %cmp15, label %if.then26, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %10 = load i32, ptr %nKeyID.addr, align 4
  %cmp17 = icmp eq i32 %10, 42
  br i1 %cmp17, label %if.then26, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %11 = load i32, ptr %nKeyID.addr, align 4
  %cmp19 = icmp eq i32 %11, 512
  br i1 %cmp19, label %if.then26, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %12 = load i32, ptr %nKeyID.addr, align 4
  %cmp21 = icmp eq i32 %12, 15
  br i1 %cmp21, label %if.then26, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %13 = load i32, ptr %nKeyID.addr, align 4
  %cmp23 = icmp eq i32 %13, 256
  br i1 %cmp23, label %if.then26, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %14 = load i32, ptr %nKeyID.addr, align 4
  %cmp25 = icmp eq i32 %14, 128
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %lor.lhs.false24, %lor.lhs.false22, %lor.lhs.false20, %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %if.then10
  store i32 1, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %lor.lhs.false24
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then26, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
