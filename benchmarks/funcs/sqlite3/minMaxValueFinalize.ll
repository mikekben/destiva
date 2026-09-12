; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @minMaxValueFinalize(ptr noundef %context, i32 noundef %bValue) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %bValue.addr = alloca i32, align 4
  %pRes = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %bValue, ptr %bValue.addr, align 4
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 0)
  store ptr %call, ptr %pRes, align 8
  %1 = load ptr, ptr %pRes, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pRes, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 1
  %3 = load i16, ptr %flags, align 8
  %tobool1 = icmp ne i16 %3, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %context.addr, align 8
  %5 = load ptr, ptr %pRes, align 8
  call void @sqlite3_result_value(ptr noundef %4, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %6 = load i32, ptr %bValue.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %pRes, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %7)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %if.end5

if.end5:                                          ; preds = %if.end4, %entry
  ret void
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
