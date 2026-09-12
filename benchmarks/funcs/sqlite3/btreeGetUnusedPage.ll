; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerPageRefcount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeGetUnusedPage(ptr noundef %pBt, i32 noundef %pgno, ptr noundef %ppPage, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %pBt.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %ppPage.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %ppPage, ptr %ppPage.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %1 = load i32, ptr %pgno.addr, align 4
  %2 = load ptr, ptr %ppPage.addr, align 8
  %3 = load i32, ptr %flags.addr, align 4
  %call = call i32 @btreeGetPage(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %ppPage.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 23
  %7 = load ptr, ptr %pDbPage, align 8
  %call1 = call i32 @sqlite3PagerPageRefcount(ptr noundef %7)
  %cmp2 = icmp sgt i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %ppPage.addr, align 8
  %9 = load ptr, ptr %8, align 8
  call void @releasePage(ptr noundef %9)
  %10 = load ptr, ptr %ppPage.addr, align 8
  store ptr null, ptr %10, align 8
  %call4 = call i32 @sqlite3CorruptError(i32 noundef 65657)
  store i32 %call4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %ppPage.addr, align 8
  %12 = load ptr, ptr %11, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %12, i32 0, i32 0
  store i8 0, ptr %isInit, align 8
  br label %if.end5

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %ppPage.addr, align 8
  store ptr null, ptr %13, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end
  %14 = load i32, ptr %rc, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then3
  %15 = load i32, ptr %retval, align 4
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
