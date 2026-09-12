; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @pageReinit(ptr noundef %pData) #0 {
entry:
  %pData.addr = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  store ptr %pData, ptr %pData.addr, align 8
  %0 = load ptr, ptr %pData.addr, align 8
  %call = call ptr @sqlite3PagerGetExtra(ptr noundef %0)
  store ptr %call, ptr %pPage, align 8
  %1 = load ptr, ptr %pPage, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %isInit, align 8
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pPage, align 8
  %isInit1 = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 0
  store i8 0, ptr %isInit1, align 8
  %4 = load ptr, ptr %pData.addr, align 8
  %call2 = call i32 @sqlite3PagerPageRefcount(ptr noundef %4)
  %cmp = icmp sgt i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %pPage, align 8
  %call4 = call i32 @btreeInitPage(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetExtra(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerPageRefcount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeInitPage(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
