; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_uri_parameter(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @sqlite3_uri_int64(ptr noundef %zFilename, ptr noundef %zParam, i64 noundef %bDflt) #0 {
entry:
  %zFilename.addr = alloca ptr, align 8
  %zParam.addr = alloca ptr, align 8
  %bDflt.addr = alloca i64, align 8
  %z = alloca ptr, align 8
  %v = alloca i64, align 8
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store ptr %zParam, ptr %zParam.addr, align 8
  store i64 %bDflt, ptr %bDflt.addr, align 8
  %0 = load ptr, ptr %zFilename.addr, align 8
  %1 = load ptr, ptr %zParam.addr, align 8
  %call = call ptr @sqlite3_uri_parameter(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %z, align 8
  %2 = load ptr, ptr %z, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %z, align 8
  %call1 = call i32 @sqlite3DecOrHexToI64(ptr noundef %3, ptr noundef %v)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i64, ptr %v, align 8
  store i64 %4, ptr %bDflt.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load i64, ptr %bDflt.addr, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DecOrHexToI64(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
