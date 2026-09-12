; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.72 = external hidden unnamed_addr constant [31 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixLogErrorAtLine(i32 noundef %errcode, ptr noundef %zFunc, ptr noundef %zPath, i32 noundef %iLine) #0 {
entry:
  %errcode.addr = alloca i32, align 4
  %zFunc.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %iLine.addr = alloca i32, align 4
  %zErr = alloca ptr, align 8
  %iErrno = alloca i32, align 4
  store i32 %errcode, ptr %errcode.addr, align 4
  store ptr %zFunc, ptr %zFunc.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %iLine, ptr %iLine.addr, align 4
  %call = call ptr @__errno_location() #2
  %0 = load i32, ptr %call, align 4
  store i32 %0, ptr %iErrno, align 4
  store ptr @.str.3, ptr %zErr, align 8
  %1 = load ptr, ptr %zPath.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @.str.3, ptr %zPath.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %errcode.addr, align 4
  %3 = load i32, ptr %iLine.addr, align 4
  %4 = load i32, ptr %iErrno, align 4
  %5 = load ptr, ptr %zFunc.addr, align 8
  %6 = load ptr, ptr %zPath.addr, align 8
  %7 = load ptr, ptr %zErr, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef %2, ptr noundef @.str.72, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %8 = load i32, ptr %errcode.addr, align 4
  ret i32 %8
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
