; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyLex = type { %struct.SyStream, ptr, ptr, ptr }
%struct.SyStream = type { ptr, ptr, ptr, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_TokenizePHP(ptr noundef %zInput, i32 noundef %nLen, i32 noundef %nLineStart, ptr noundef %pOut) #0 {
entry:
  %retval = alloca i32, align 4
  %zInput.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %nLineStart.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %sLexer = alloca %struct.SyLex, align 8
  %rc = alloca i32, align 4
  store ptr %zInput, ptr %zInput.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store i32 %nLineStart, ptr %nLineStart.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load ptr, ptr %pOut.addr, align 8
  %call = call i32 @SyLexInit(ptr noundef %sLexer, ptr noundef %0, ptr noundef @TokenizePHP, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nLineStart.addr, align 4
  %sStream = getelementptr inbounds nuw %struct.SyLex, ptr %sLexer, i32 0, i32 0
  %nLine = getelementptr inbounds nuw %struct.SyStream, ptr %sStream, i32 0, i32 3
  store i32 %3, ptr %nLine, align 8
  %4 = load ptr, ptr %zInput.addr, align 8
  %5 = load i32, ptr %nLen.addr, align 4
  %call1 = call i32 @SyLexTokenizeInput(ptr noundef %sLexer, ptr noundef %4, i32 noundef %5, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  %call2 = call i32 @SyLexRelease(ptr noundef %sLexer)
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexInit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @TokenizePHP(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexTokenizeInput(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLexRelease(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
