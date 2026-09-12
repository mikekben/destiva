; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3IndexAffinityOk(ptr noundef %pExpr, i8 noundef signext %idx_affinity) #0 {
entry:
  %retval = alloca i32, align 4
  %pExpr.addr = alloca ptr, align 8
  %idx_affinity.addr = alloca i8, align 1
  %aff = alloca i8, align 1
  store ptr %pExpr, ptr %pExpr.addr, align 8
  store i8 %idx_affinity, ptr %idx_affinity.addr, align 1
  %0 = load ptr, ptr %pExpr.addr, align 8
  %call = call signext i8 @comparisonAffinity(ptr noundef %0)
  store i8 %call, ptr %aff, align 1
  %1 = load i8, ptr %aff, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8, ptr %aff, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 66
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %3 = load i8, ptr %idx_affinity.addr, align 1
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp eq i32 %conv6, 66
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end
  %4 = load i8, ptr %idx_affinity.addr, align 1
  %conv10 = sext i8 %4 to i32
  %cmp11 = icmp sge i32 %conv10, 67
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then5, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
declare hidden signext i8 @comparisonAffinity(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
