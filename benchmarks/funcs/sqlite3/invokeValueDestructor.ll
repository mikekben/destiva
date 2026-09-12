; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @invokeValueDestructor(ptr noundef %p, ptr noundef %xDel, ptr noundef %pCtx) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %xDel.addr = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %xDel, ptr %xDel.addr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  %0 = load ptr, ptr %xDel.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end4

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %xDel.addr, align 8
  %cmp1 = icmp eq ptr %1, inttoptr (i64 -1 to ptr)
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  br label %if.end

if.else3:                                         ; preds = %if.else
  %2 = load ptr, ptr %xDel.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  call void %2(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %4 = load ptr, ptr %pCtx.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  %5 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_toobig(ptr noundef %5)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end4
  ret i32 18
}

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_toobig(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
