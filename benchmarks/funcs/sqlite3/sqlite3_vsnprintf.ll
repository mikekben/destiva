; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_vappendf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_vsnprintf(i32 noundef %n, ptr noundef %zBuf, ptr noundef %zFormat, ptr noundef %ap) #0 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %zFormat.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %acc = alloca %struct.sqlite3_str, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zBuf.addr, align 8
  store ptr %1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %zBuf.addr, align 8
  %3 = load i32, ptr %n.addr, align 4
  call void @sqlite3StrAccumInit(ptr noundef %acc, ptr noundef null, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  %4 = load ptr, ptr %zFormat.addr, align 8
  %5 = load ptr, ptr %ap.addr, align 8
  call void @sqlite3_str_vappendf(ptr noundef %acc, ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %zBuf.addr, align 8
  %nChar = getelementptr inbounds nuw %struct.sqlite3_str, ptr %acc, i32 0, i32 4
  %7 = load i32, ptr %nChar, align 8
  %idxprom = zext i32 %7 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %6, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  %8 = load ptr, ptr %zBuf.addr, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load ptr, ptr %retval, align 8
  ret ptr %9
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
