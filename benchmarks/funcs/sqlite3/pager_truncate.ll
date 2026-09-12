; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsTruncate(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pager_truncate(ptr noundef %pPager, i32 noundef %nPage) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %nPage.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %currentSize = alloca i64, align 8
  %newSize = alloca i64, align 8
  %szPage = alloca i32, align 4
  %pTmp = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %nPage, ptr %nPage.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 30
  %1 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pMethods, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 13
  %4 = load i8, ptr %eState, align 4
  %conv = zext i8 %4 to i32
  %cmp1 = icmp sge i32 %conv, 4
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load ptr, ptr %pPager.addr, align 8
  %eState3 = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 13
  %6 = load i8, ptr %eState3, align 4
  %conv4 = zext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.end35

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 47
  %8 = load i32, ptr %pageSize, align 4
  store i32 %8, ptr %szPage, align 4
  %9 = load ptr, ptr %pPager.addr, align 8
  %fd7 = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 30
  %10 = load ptr, ptr %fd7, align 8
  %call = call i32 @sqlite3OsFileSize(ptr noundef %10, ptr noundef %currentSize)
  store i32 %call, ptr %rc, align 4
  %11 = load i32, ptr %szPage, align 4
  %conv8 = sext i32 %11 to i64
  %12 = load i32, ptr %nPage.addr, align 4
  %conv9 = zext i32 %12 to i64
  %mul = mul nsw i64 %conv8, %conv9
  store i64 %mul, ptr %newSize, align 8
  %13 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %land.lhs.true12, label %if.end34

land.lhs.true12:                                  ; preds = %if.then
  %14 = load i64, ptr %currentSize, align 8
  %15 = load i64, ptr %newSize, align 8
  %cmp13 = icmp ne i64 %14, %15
  br i1 %cmp13, label %if.then15, label %if.end34

if.then15:                                        ; preds = %land.lhs.true12
  %16 = load i64, ptr %currentSize, align 8
  %17 = load i64, ptr %newSize, align 8
  %cmp16 = icmp sgt i64 %16, %17
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then15
  %18 = load ptr, ptr %pPager.addr, align 8
  %fd19 = getelementptr inbounds nuw %struct.Pager, ptr %18, i32 0, i32 30
  %19 = load ptr, ptr %fd19, align 8
  %20 = load i64, ptr %newSize, align 8
  %call20 = call i32 @sqlite3OsTruncate(ptr noundef %19, i64 noundef %20)
  store i32 %call20, ptr %rc, align 4
  br label %if.end29

if.else:                                          ; preds = %if.then15
  %21 = load i64, ptr %currentSize, align 8
  %22 = load i32, ptr %szPage, align 4
  %conv21 = sext i32 %22 to i64
  %add = add nsw i64 %21, %conv21
  %23 = load i64, ptr %newSize, align 8
  %cmp22 = icmp sle i64 %add, %23
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %if.else
  %24 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 57
  %25 = load ptr, ptr %pTmpSpace, align 8
  store ptr %25, ptr %pTmp, align 8
  %26 = load ptr, ptr %pTmp, align 8
  %27 = load i32, ptr %szPage, align 4
  %conv25 = sext i32 %27 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %26, i8 0, i64 %conv25, i1 false)
  %28 = load ptr, ptr %pPager.addr, align 8
  %fd26 = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 30
  %29 = load ptr, ptr %fd26, align 8
  %30 = load ptr, ptr %pTmp, align 8
  %31 = load i32, ptr %szPage, align 4
  %32 = load i64, ptr %newSize, align 8
  %33 = load i32, ptr %szPage, align 4
  %conv27 = sext i32 %33 to i64
  %sub = sub nsw i64 %32, %conv27
  %call28 = call i32 @sqlite3OsWrite(ptr noundef %29, ptr noundef %30, i32 noundef %31, i64 noundef %sub)
  store i32 %call28, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then24, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then18
  %34 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %34, 0
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end29
  %35 = load i32, ptr %nPage.addr, align 4
  %36 = load ptr, ptr %pPager.addr, align 8
  %dbFileSize = getelementptr inbounds nuw %struct.Pager, ptr %36, i32 0, i32 23
  store i32 %35, ptr %dbFileSize, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %land.lhs.true12, %if.then
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %lor.lhs.false, %entry
  %37 = load i32, ptr %rc, align 4
  ret i32 %37
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
