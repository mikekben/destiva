; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerPagecount(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @btreeSetNPage(ptr noundef %pBt, ptr noundef %pPage1) #0 {
entry:
  %pBt.addr = alloca ptr, align 8
  %pPage1.addr = alloca ptr, align 8
  %nPage = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store ptr %pPage1, ptr %pPage1.addr, align 8
  %0 = load ptr, ptr %pPage1.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 19
  %1 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 28
  %call = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call, ptr %nPage, align 4
  %2 = load i32, ptr %nPage, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pBt.addr, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pPager, align 8
  call void @sqlite3PagerPagecount(ptr noundef %4, ptr noundef %nPage)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %nPage, align 4
  %6 = load ptr, ptr %pBt.addr, align 8
  %nPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 18
  store i32 %5, ptr %nPage1, align 4
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
