; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_result_pointer(ptr noundef %pCtx, ptr noundef %pPtr, ptr noundef %zPType, ptr noundef %xDestructor) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %pPtr.addr = alloca ptr, align 8
  %zPType.addr = alloca ptr, align 8
  %xDestructor.addr = alloca ptr, align 8
  %pOut = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pPtr, ptr %pPtr.addr, align 8
  store ptr %zPType, ptr %zPType.addr, align 8
  store ptr %xDestructor, ptr %xDestructor.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pOut1 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pOut1, align 8
  store ptr %1, ptr %pOut, align 8
  %2 = load ptr, ptr %pOut, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %2)
  %3 = load ptr, ptr %pOut, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %3, i32 0, i32 1
  store i16 1, ptr %flags, align 8
  %4 = load ptr, ptr %pOut, align 8
  %5 = load ptr, ptr %pPtr.addr, align 8
  %6 = load ptr, ptr %zPType.addr, align 8
  %7 = load ptr, ptr %xDestructor.addr, align 8
  call void @sqlite3VdbeMemSetPointer(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemSetPointer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
