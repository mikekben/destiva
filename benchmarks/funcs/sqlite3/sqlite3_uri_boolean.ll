; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_uri_parameter(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_uri_boolean(ptr noundef %zFilename, ptr noundef %zParam, i32 noundef %bDflt) #0 {
entry:
  %zFilename.addr = alloca ptr, align 8
  %zParam.addr = alloca ptr, align 8
  %bDflt.addr = alloca i32, align 4
  %z = alloca ptr, align 8
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store ptr %zParam, ptr %zParam.addr, align 8
  store i32 %bDflt, ptr %bDflt.addr, align 4
  %0 = load ptr, ptr %zFilename.addr, align 8
  %1 = load ptr, ptr %zParam.addr, align 8
  %call = call ptr @sqlite3_uri_parameter(ptr noundef %0, ptr noundef %1)
  store ptr %call, ptr %z, align 8
  %2 = load i32, ptr %bDflt.addr, align 4
  %cmp = icmp ne i32 %2, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %bDflt.addr, align 4
  %3 = load ptr, ptr %z, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %z, align 8
  %5 = load i32, ptr %bDflt.addr, align 4
  %conv1 = trunc i32 %5 to i8
  %call2 = call zeroext i8 @sqlite3GetBoolean(ptr noundef %4, i8 noundef zeroext %conv1)
  %conv3 = zext i8 %call2 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load i32, ptr %bDflt.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %6, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3GetBoolean(ptr noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
