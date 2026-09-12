; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden void @initMemArray(ptr noundef %p, i32 noundef %N, ptr noundef %db, i16 noundef zeroext %flags) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %flags.addr = alloca i16, align 2
  store ptr %p, ptr %p.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store ptr %db, ptr %db.addr, align 8
  store i16 %flags, ptr %flags.addr, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %N.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %N.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 9
  store ptr %1, ptr %db1, align 8
  %3 = load i16, ptr %flags.addr, align 2
  %4 = load ptr, ptr %p.addr, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 1
  store i16 %3, ptr %flags2, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 7
  store i32 0, ptr %szMalloc, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
