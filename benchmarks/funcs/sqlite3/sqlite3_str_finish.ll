; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3OomStr = external hidden global { ptr, ptr, i32, i32, i32, i8, i8, [2 x i8] }, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_str_finish(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %cmp1 = icmp ne ptr %1, @sqlite3OomStr
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %p.addr, align 8
  %call = call ptr @sqlite3StrAccumFinish(ptr noundef %2)
  store ptr %call, ptr %z, align 8
  %3 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %3)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store ptr null, ptr %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %z, align 8
  ret ptr %4
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
