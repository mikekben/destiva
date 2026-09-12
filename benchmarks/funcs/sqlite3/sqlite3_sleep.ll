; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_vfs_find(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_sleep(i32 noundef %ms) #0 {
entry:
  %retval = alloca i32, align 4
  %ms.addr = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  store i32 %ms, ptr %ms.addr, align 4
  %call = call ptr @sqlite3_vfs_find(ptr noundef null)
  store ptr %call, ptr %pVfs, align 8
  %0 = load ptr, ptr %pVfs, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pVfs, align 8
  %2 = load i32, ptr %ms.addr, align 4
  %mul = mul nsw i32 1000, %2
  %call1 = call i32 @sqlite3OsSleep(ptr noundef %1, i32 noundef %mul)
  %div = sdiv i32 %call1, 1000
  store i32 %div, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSleep(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
