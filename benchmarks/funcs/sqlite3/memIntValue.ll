; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }

; Function Attrs: nounwind uwtable
define hidden i64 @memIntValue(ptr noundef %pMem) #0 {
entry:
  %pMem.addr = alloca ptr, align 8
  %value = alloca i64, align 8
  store ptr %pMem, ptr %pMem.addr, align 8
  store i64 0, ptr %value, align 8
  %0 = load ptr, ptr %pMem.addr, align 8
  %z = getelementptr inbounds nuw %struct.sqlite3_value, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %z, align 8
  %2 = load ptr, ptr %pMem.addr, align 8
  %n = getelementptr inbounds nuw %struct.sqlite3_value, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %n, align 4
  %4 = load ptr, ptr %pMem.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 2
  %5 = load i8, ptr %enc, align 2
  %call = call i32 @sqlite3Atoi64(ptr noundef %1, ptr noundef %value, i32 noundef %3, i8 noundef zeroext %5)
  %6 = load i64, ptr %value, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi64(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
