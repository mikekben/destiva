; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetData(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetExtra(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @btreePageFromDbPage(ptr noundef %pDbPage, i32 noundef %pgno, ptr noundef %pBt) #0 {
entry:
  %pDbPage.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  store ptr %pDbPage, ptr %pDbPage.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  %0 = load ptr, ptr %pDbPage.addr, align 8
  %call = call ptr @sqlite3PagerGetExtra(ptr noundef %0)
  store ptr %call, ptr %pPage, align 8
  %1 = load i32, ptr %pgno.addr, align 4
  %2 = load ptr, ptr %pPage, align 8
  %pgno1 = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %pgno1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pDbPage.addr, align 8
  %call2 = call ptr @sqlite3PagerGetData(ptr noundef %4)
  %5 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 19
  store ptr %call2, ptr %aData, align 8
  %6 = load ptr, ptr %pDbPage.addr, align 8
  %7 = load ptr, ptr %pPage, align 8
  %pDbPage3 = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 23
  store ptr %6, ptr %pDbPage3, align 8
  %8 = load ptr, ptr %pBt.addr, align 8
  %9 = load ptr, ptr %pPage, align 8
  %pBt4 = getelementptr inbounds nuw %struct.MemPage, ptr %9, i32 0, i32 18
  store ptr %8, ptr %pBt4, align 8
  %10 = load i32, ptr %pgno.addr, align 4
  %11 = load ptr, ptr %pPage, align 8
  %pgno5 = getelementptr inbounds nuw %struct.MemPage, ptr %11, i32 0, i32 4
  store i32 %10, ptr %pgno5, align 4
  %12 = load i32, ptr %pgno.addr, align 4
  %cmp6 = icmp eq i32 %12, 1
  %13 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, i32 100, i32 0
  %conv = trunc i32 %cond to i8
  %14 = load ptr, ptr %pPage, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 6
  store i8 %conv, ptr %hdrOffset, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %pPage, align 8
  ret ptr %15
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
