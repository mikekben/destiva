; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsFileControlHint(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setGetterMethod(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pagerFixMaplimit(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %fd = alloca ptr, align 8
  %sz = alloca i64, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %fd1 = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 30
  %1 = load ptr, ptr %fd1, align 8
  store ptr %1, ptr %fd, align 8
  %2 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pMethods, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %fd, align 8
  %pMethods2 = getelementptr inbounds nuw %struct.sqlite3_file, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pMethods2, align 8
  %iVersion = getelementptr inbounds nuw %struct.sqlite3_io_methods, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %iVersion, align 8
  %cmp3 = icmp sge i32 %6, 3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %pPager.addr, align 8
  %szMmap = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 41
  %8 = load i64, ptr %szMmap, align 8
  store i64 %8, ptr %sz, align 8
  %9 = load i64, ptr %sz, align 8
  %cmp4 = icmp sgt i64 %9, 0
  %conv = zext i1 %cmp4 to i32
  %conv5 = trunc i32 %conv to i8
  %10 = load ptr, ptr %pPager.addr, align 8
  %bUseFetch = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 19
  store i8 %conv5, ptr %bUseFetch, align 2
  %11 = load ptr, ptr %pPager.addr, align 8
  call void @setGetterMethod(ptr noundef %11)
  %12 = load ptr, ptr %pPager.addr, align 8
  %fd6 = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 30
  %13 = load ptr, ptr %fd6, align 8
  call void @sqlite3OsFileControlHint(ptr noundef %13, i32 noundef 18, ptr noundef %sz)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
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
