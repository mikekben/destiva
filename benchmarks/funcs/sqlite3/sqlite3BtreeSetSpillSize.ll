; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeSetSpillSize(ptr noundef %p, i32 noundef %mxPage) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %mxPage.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %res = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %mxPage, ptr %mxPage.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pPager, align 8
  %5 = load i32, ptr %mxPage.addr, align 4
  %call = call i32 @sqlite3PagerSetSpillsize(ptr noundef %4, i32 noundef %5)
  store i32 %call, ptr %res, align 4
  %6 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %6)
  %7 = load i32, ptr %res, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSetSpillsize(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
