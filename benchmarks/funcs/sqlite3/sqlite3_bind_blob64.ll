; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @invokeValueDestructor(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @bindText(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_bind_blob64(ptr noundef %pStmt, i32 noundef %i, ptr noundef %zData, i64 noundef %nData, ptr noundef %xDel) #0 {
entry:
  %retval = alloca i32, align 4
  %pStmt.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %zData.addr = alloca ptr, align 8
  %nData.addr = alloca i64, align 8
  %xDel.addr = alloca ptr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %zData, ptr %zData.addr, align 8
  store i64 %nData, ptr %nData.addr, align 8
  store ptr %xDel, ptr %xDel.addr, align 8
  %0 = load i64, ptr %nData.addr, align 8
  %cmp = icmp ugt i64 %0, 2147483647
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zData.addr, align 8
  %2 = load ptr, ptr %xDel.addr, align 8
  %call = call i32 @invokeValueDestructor(ptr noundef %1, ptr noundef %2, ptr noundef null)
  store i32 %call, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %pStmt.addr, align 8
  %4 = load i32, ptr %i.addr, align 4
  %5 = load ptr, ptr %zData.addr, align 8
  %6 = load i64, ptr %nData.addr, align 8
  %conv = trunc i64 %6 to i32
  %7 = load ptr, ptr %xDel.addr, align 8
  %call1 = call i32 @bindText(ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %conv, ptr noundef %7, i8 noundef zeroext 0)
  store i32 %call1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
