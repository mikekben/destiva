; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PrintfArguments = type { i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i64 @getIntArg(ptr noundef %p) #0 {
entry:
  %retval = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %nArg = getelementptr inbounds nuw %struct.PrintfArguments, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %nArg, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.PrintfArguments, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nUsed, align 4
  %cmp = icmp sle i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %apArg = getelementptr inbounds nuw %struct.PrintfArguments, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %apArg, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %nUsed1 = getelementptr inbounds nuw %struct.PrintfArguments, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nUsed1, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %nUsed1, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @sqlite3_value_int64(ptr noundef %8)
  store i64 %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i64, ptr %retval, align 8
  ret i64 %9
}

; Function Attrs: nounwind uwtable
declare dso_local i64 @sqlite3_value_int64(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
