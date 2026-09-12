; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: nounwind uwtable
define hidden i32 @unixCurrentTimeInt64(ptr noundef %NotUsed, ptr noundef %piNow) #0 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %piNow.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sNow = alloca %struct.timeval, align 8
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store ptr %piNow, ptr %piNow.addr, align 8
  store i32 0, ptr %rc, align 4
  %call = call i32 @gettimeofday(ptr noundef %sNow, ptr noundef null) #2
  %tv_sec = getelementptr inbounds nuw %struct.timeval, ptr %sNow, i32 0, i32 0
  %0 = load i64, ptr %tv_sec, align 8
  %mul = mul nsw i64 1000, %0
  %add = add nsw i64 210866760000000, %mul
  %tv_usec = getelementptr inbounds nuw %struct.timeval, ptr %sNow, i32 0, i32 1
  %1 = load i64, ptr %tv_usec, align 8
  %div = sdiv i64 %1, 1000
  %add1 = add nsw i64 %add, %div
  %2 = load ptr, ptr %piNow.addr, align 8
  store i64 %add1, ptr %2, align 8
  %3 = load ptr, ptr %NotUsed.addr, align 8
  %4 = load i32, ptr %rc, align 4
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
