; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @analyzeOverKeyword(ptr noundef %z, i32 noundef %lastToken) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %lastToken.addr = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 %lastToken, ptr %lastToken.addr, align 4
  %0 = load i32, ptr %lastToken.addr, align 4
  %cmp = icmp eq i32 %0, 23
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = call i32 @getToken(ptr noundef %z.addr)
  store i32 %call, ptr %t, align 4
  %1 = load i32, ptr %t, align 4
  %cmp1 = icmp eq i32 %1, 22
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, ptr %t, align 4
  %cmp2 = icmp eq i32 %2, 59
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  store i32 160, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  store i32 59, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then3
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
declare hidden i32 @getToken(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
