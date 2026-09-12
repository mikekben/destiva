; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @numberOfCachePages(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PcacheSetSpillsize(ptr noundef %p, i32 noundef %mxPage) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %mxPage.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %mxPage, ptr %mxPage.addr, align 4
  %0 = load i32, ptr %mxPage.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %mxPage.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %2 = load i32, ptr %mxPage.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul nsw i64 -1024, %conv
  %3 = load ptr, ptr %p.addr, align 8
  %szPage = getelementptr inbounds nuw %struct.PCache, ptr %3, i32 0, i32 6
  %4 = load i32, ptr %szPage, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %szExtra = getelementptr inbounds nuw %struct.PCache, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %szExtra, align 8
  %add = add nsw i32 %4, %6
  %conv2 = sext i32 %add to i64
  %div = sdiv i64 %mul, %conv2
  %conv3 = trunc i64 %div to i32
  store i32 %conv3, ptr %mxPage.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %7 = load i32, ptr %mxPage.addr, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %szSpill = getelementptr inbounds nuw %struct.PCache, ptr %8, i32 0, i32 5
  store i32 %7, ptr %szSpill, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %p.addr, align 8
  %call = call i32 @numberOfCachePages(ptr noundef %9)
  store i32 %call, ptr %res, align 4
  %10 = load i32, ptr %res, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %szSpill5 = getelementptr inbounds nuw %struct.PCache, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %szSpill5, align 8
  %cmp6 = icmp slt i32 %10, %12
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end4
  %13 = load ptr, ptr %p.addr, align 8
  %szSpill9 = getelementptr inbounds nuw %struct.PCache, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %szSpill9, align 8
  store i32 %14, ptr %res, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4
  %15 = load i32, ptr %res, align 4
  ret i32 %15
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
