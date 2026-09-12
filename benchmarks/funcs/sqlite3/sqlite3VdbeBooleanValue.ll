; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden double @sqlite3VdbeRealValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeBooleanValue(ptr noundef %pMem, i32 noundef %ifNull) #0 {
entry:
  %retval = alloca i32, align 4
  %pMem.addr = alloca ptr, align 8
  %ifNull.addr = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  store i32 %ifNull, ptr %ifNull.addr, align 4
  %0 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 1
  %1 = load i16, ptr %flags, align 8
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 36
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %u, align 8
  %cmp = icmp ne i64 %3, 0
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pMem.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  %5 = load i16, ptr %flags2, align 8
  %conv3 = zext i16 %5 to i32
  %and4 = and i32 %conv3, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %6 = load i32, ptr %ifNull.addr, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %pMem.addr, align 8
  %call = call double @sqlite3VdbeRealValue(ptr noundef %7)
  %cmp8 = fcmp une double %call, 0.000000e+00
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
