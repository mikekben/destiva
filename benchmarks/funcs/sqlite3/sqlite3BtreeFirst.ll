; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeFirst(ptr noundef %pCur, ptr noundef %pRes) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pRes.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCur, ptr %pCur.addr, align 8
  store ptr %pRes, ptr %pRes.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %call = call i32 @moveToRoot(ptr noundef %0)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pRes.addr, align 8
  store i32 0, ptr %2, align 4
  %3 = load ptr, ptr %pCur.addr, align 8
  %call1 = call i32 @moveToLeftmost(ptr noundef %3)
  store i32 %call1, ptr %rc, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %4, 16
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %5 = load ptr, ptr %pRes.addr, align 8
  store i32 1, ptr %5, align 4
  store i32 0, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %6 = load i32, ptr %rc, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToRoot(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToLeftmost(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
