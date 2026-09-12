; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerReadFileheader(ptr noundef %pPager, i32 noundef %N, ptr noundef %pDest) #1 {
entry:
  %pPager.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %pDest.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store ptr %pDest, ptr %pDest.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pDest.addr, align 8
  %1 = load i32, ptr %N.addr, align 4
  %conv = sext i32 %1 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %conv, i1 false)
  %2 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 30
  %3 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pMethods, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pPager.addr, align 8
  %fd2 = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 30
  %6 = load ptr, ptr %fd2, align 8
  %7 = load ptr, ptr %pDest.addr, align 8
  %8 = load i32, ptr %N.addr, align 4
  %call = call i32 @sqlite3OsRead(ptr noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef 0)
  store i32 %call, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %9, 522
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 0, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry
  %10 = load i32, ptr %rc, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
