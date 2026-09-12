; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @unixDlError(ptr noundef %NotUsed, i32 noundef %nBuf, ptr noundef %zBufOut) #0 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %nBuf.addr = alloca i32, align 4
  %zBufOut.addr = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store i32 %nBuf, ptr %nBuf.addr, align 4
  store ptr %zBufOut, ptr %zBufOut.addr, align 8
  %0 = load ptr, ptr %NotUsed.addr, align 8
  call void @unixEnterMutex()
  %call = call ptr @dlerror() #2
  store ptr %call, ptr %zErr, align 8
  %1 = load ptr, ptr %zErr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nBuf.addr, align 4
  %3 = load ptr, ptr %zBufOut.addr, align 8
  %4 = load ptr, ptr %zErr, align 8
  %call1 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %2, ptr noundef %3, ptr noundef @.str.20, ptr noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @unixLeaveMutex()
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @unixEnterMutex() #0

; Function Attrs: nounwind uwtable
declare hidden void @unixLeaveMutex() #0

; Function Attrs: nounwind
declare ptr @dlerror() #1

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
