; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @pagerAcquireMapPage(ptr noundef %pPager, i32 noundef %pgno, ptr noundef %pData, ptr noundef %ppPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %pData.addr = alloca ptr, align 8
  %ppPage.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %pData, ptr %pData.addr, align 8
  store ptr %ppPage, ptr %ppPage.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %pMmapFreelist = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 42
  %1 = load ptr, ptr %pMmapFreelist, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %pMmapFreelist1 = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 42
  %3 = load ptr, ptr %pMmapFreelist1, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %ppPage.addr, align 8
  store ptr %3, ptr %4, align 8
  %5 = load ptr, ptr %p, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pDirty, align 8
  %7 = load ptr, ptr %pPager.addr, align 8
  %pMmapFreelist2 = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 42
  store ptr %6, ptr %pMmapFreelist2, align 8
  %8 = load ptr, ptr %p, align 8
  %pDirty3 = getelementptr inbounds nuw %struct.PgHdr, ptr %8, i32 0, i32 4
  store ptr null, ptr %pDirty3, align 8
  %9 = load ptr, ptr %p, align 8
  %pExtra = getelementptr inbounds nuw %struct.PgHdr, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pExtra, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 8, i1 false)
  br label %if.end11

if.else:                                          ; preds = %entry
  %11 = load ptr, ptr %pPager.addr, align 8
  %nExtra = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 43
  %12 = load i16, ptr %nExtra, align 8
  %conv = zext i16 %12 to i64
  %add = add i64 72, %conv
  %call = call ptr @sqlite3MallocZero(i64 noundef %add)
  store ptr %call, ptr %p, align 8
  %13 = load ptr, ptr %ppPage.addr, align 8
  store ptr %call, ptr %13, align 8
  %14 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %14, null
  br i1 %cmp, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %15 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 30
  %16 = load ptr, ptr %fd, align 8
  %17 = load i32, ptr %pgno.addr, align 4
  %sub = sub i32 %17, 1
  %conv6 = zext i32 %sub to i64
  %18 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %18, i32 0, i32 47
  %19 = load i32, ptr %pageSize, align 4
  %conv7 = sext i32 %19 to i64
  %mul = mul nsw i64 %conv6, %conv7
  %20 = load ptr, ptr %pData.addr, align 8
  %call8 = call i32 @sqlite3OsUnfetch(ptr noundef %16, i64 noundef %mul, ptr noundef %20)
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %21 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds %struct.PgHdr, ptr %21, i64 1
  %22 = load ptr, ptr %p, align 8
  %pExtra9 = getelementptr inbounds nuw %struct.PgHdr, ptr %22, i32 0, i32 2
  store ptr %arrayidx, ptr %pExtra9, align 8
  %23 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %23, i32 0, i32 7
  store i16 32, ptr %flags, align 4
  %24 = load ptr, ptr %p, align 8
  %nRef = getelementptr inbounds nuw %struct.PgHdr, ptr %24, i32 0, i32 8
  store i16 1, ptr %nRef, align 2
  %25 = load ptr, ptr %pPager.addr, align 8
  %26 = load ptr, ptr %p, align 8
  %pPager10 = getelementptr inbounds nuw %struct.PgHdr, ptr %26, i32 0, i32 5
  store ptr %25, ptr %pPager10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  %27 = load i32, ptr %pgno.addr, align 4
  %28 = load ptr, ptr %p, align 8
  %pgno12 = getelementptr inbounds nuw %struct.PgHdr, ptr %28, i32 0, i32 6
  store i32 %27, ptr %pgno12, align 8
  %29 = load ptr, ptr %pData.addr, align 8
  %30 = load ptr, ptr %p, align 8
  %pData13 = getelementptr inbounds nuw %struct.PgHdr, ptr %30, i32 0, i32 1
  store ptr %29, ptr %pData13, align 8
  %31 = load ptr, ptr %pPager.addr, align 8
  %nMmapOut = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 40
  %32 = load i32, ptr %nMmapOut, align 8
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %nMmapOut, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then5
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #0

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
