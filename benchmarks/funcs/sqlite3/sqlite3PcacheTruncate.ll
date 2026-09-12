; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_page = type { ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheMakeClean(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PcacheTruncate(ptr noundef %pCache, i32 noundef %pgno) #1 {
entry:
  %pCache.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %pPage1 = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  %0 = load ptr, ptr %pCache.addr, align 8
  %pCache1 = getelementptr inbounds nuw %struct.PCache, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pCache1, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pCache.addr, align 8
  %pDirty = getelementptr inbounds nuw %struct.PCache, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pDirty, align 8
  store ptr %3, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %p, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %p, align 8
  %pDirtyNext = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %pDirtyNext, align 8
  store ptr %6, ptr %pNext, align 8
  %7 = load ptr, ptr %p, align 8
  %pgno3 = getelementptr inbounds nuw %struct.PgHdr, ptr %7, i32 0, i32 6
  %8 = load i32, ptr %pgno3, align 8
  %9 = load i32, ptr %pgno.addr, align 4
  %cmp = icmp ugt i32 %8, %9
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  %10 = load ptr, ptr %p, align 8
  call void @sqlite3PcacheMakeClean(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load ptr, ptr %pNext, align 8
  store ptr %11, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %pgno.addr, align 4
  %cmp5 = icmp eq i32 %12, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %for.end
  %13 = load ptr, ptr %pCache.addr, align 8
  %nRefSum = getelementptr inbounds nuw %struct.PCache, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %nRefSum, align 8
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_pcache_methods2, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i32 0, i32 7), align 8
  %16 = load ptr, ptr %pCache.addr, align 8
  %pCache8 = getelementptr inbounds nuw %struct.PCache, ptr %16, i32 0, i32 12
  %17 = load ptr, ptr %pCache8, align 8
  %call = call ptr %15(ptr noundef %17, i32 noundef 1, i32 noundef 0)
  store ptr %call, ptr %pPage1, align 8
  %18 = load ptr, ptr %pPage1, align 8
  %tobool9 = icmp ne ptr %18, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.then7
  %19 = load ptr, ptr %pPage1, align 8
  %pBuf = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pBuf, align 8
  %21 = load ptr, ptr %pCache.addr, align 8
  %szPage = getelementptr inbounds nuw %struct.PCache, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %szPage, align 4
  %conv = sext i32 %22 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %20, i8 0, i64 %conv, i1 false)
  store i32 1, ptr %pgno.addr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then7
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %land.lhs.true, %for.end
  %23 = load ptr, ptr getelementptr inbounds nuw (%struct.sqlite3_pcache_methods2, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 14), i32 0, i32 10), align 8
  %24 = load ptr, ptr %pCache.addr, align 8
  %pCache13 = getelementptr inbounds nuw %struct.PCache, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %pCache13, align 8
  %26 = load i32, ptr %pgno.addr, align 4
  %add = add i32 %26, 1
  call void %23(ptr noundef %25, i32 noundef %add)
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %entry
  ret void
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
