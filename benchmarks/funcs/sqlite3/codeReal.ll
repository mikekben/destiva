; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AtoF(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @codeReal(ptr noundef %v, ptr noundef %z, i32 noundef %negateFlag, i32 noundef %iMem) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %negateFlag.addr = alloca i32, align 4
  %iMem.addr = alloca i32, align 4
  %value = alloca double, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %negateFlag, ptr %negateFlag.addr, align 4
  store i32 %iMem, ptr %iMem.addr, align 4
  %0 = load ptr, ptr %z.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %2 = load ptr, ptr %z.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %2)
  %call1 = call i32 @sqlite3AtoF(ptr noundef %1, ptr noundef %value, i32 noundef %call, i8 noundef zeroext 1)
  %3 = load i32, ptr %negateFlag.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load double, ptr %value, align 8
  %fneg = fneg double %4
  store double %fneg, ptr %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %v.addr, align 8
  %6 = load i32, ptr %iMem.addr, align 4
  %call3 = call i32 @sqlite3VdbeAddOp4Dup8(ptr noundef %5, i32 noundef 148, i32 noundef 0, i32 noundef %6, i32 noundef 0, ptr noundef %value, i32 noundef -13)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Dup8(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
