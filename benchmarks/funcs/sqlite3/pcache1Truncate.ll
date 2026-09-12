; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @pcache1Truncate(ptr noundef %p, i32 noundef %iLimit) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iLimit.addr = alloca i32, align 4
  %pCache = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iLimit, ptr %iLimit.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pCache, align 8
  %1 = load i32, ptr %iLimit.addr, align 4
  %2 = load ptr, ptr %pCache, align 8
  %iMaxKey = getelementptr inbounds nuw %struct.PCache1, ptr %2, i32 0, i32 9
  %3 = load i32, ptr %iMaxKey, align 4
  %cmp = icmp ule i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pCache, align 8
  %5 = load i32, ptr %iLimit.addr, align 4
  call void @pcache1TruncateUnsafe(ptr noundef %4, i32 noundef %5)
  %6 = load i32, ptr %iLimit.addr, align 4
  %sub = sub i32 %6, 1
  %7 = load ptr, ptr %pCache, align 8
  %iMaxKey1 = getelementptr inbounds nuw %struct.PCache1, ptr %7, i32 0, i32 9
  store i32 %sub, ptr %iMaxKey1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @pcache1TruncateUnsafe(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
