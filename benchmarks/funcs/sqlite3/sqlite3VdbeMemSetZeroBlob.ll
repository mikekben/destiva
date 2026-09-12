; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeMemSetZeroBlob(ptr noundef %pMem, i32 noundef %n) #0 {
entry:
  %pMem.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %pMem, ptr %pMem.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %pMem.addr, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %0)
  %1 = load ptr, ptr %pMem.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %1, i32 0, i32 1
  store i16 16400, ptr %flags, align 8
  %2 = load ptr, ptr %pMem.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 4
  store i32 0, ptr %n1, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %n.addr, align 4
  %5 = load ptr, ptr %pMem.addr, align 8
  %u = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 0
  store i32 %4, ptr %u, align 8
  %6 = load ptr, ptr %pMem.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %6, i32 0, i32 2
  store i8 1, ptr %enc, align 2
  %7 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %7, i32 0, i32 5
  store ptr null, ptr %z, align 8
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
