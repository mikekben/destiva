; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PcacheFetchFinish(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden ptr @pcacheFetchFinishWithInit(ptr noundef %pCache, i32 noundef %pgno, ptr noundef %pPage) #1 {
entry:
  %pCache.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %pPgHdr = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %pExtra = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pExtra, align 8
  store ptr %1, ptr %pPgHdr, align 8
  %2 = load ptr, ptr %pPgHdr, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %2, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr align 8 %pDirty, i8 0, i64 40, i1 false)
  %3 = load ptr, ptr %pPage.addr, align 8
  %4 = load ptr, ptr %pPgHdr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.PgHdr, ptr %4, i32 0, i32 0
  store ptr %3, ptr %pPage1, align 8
  %5 = load ptr, ptr %pPage.addr, align 8
  %pBuf = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pBuf, align 8
  %7 = load ptr, ptr %pPgHdr, align 8
  %pData = getelementptr inbounds nuw %struct.PgHdr, ptr %7, i32 0, i32 1
  store ptr %6, ptr %pData, align 8
  %8 = load ptr, ptr %pPgHdr, align 8
  %arrayidx = getelementptr inbounds %struct.PgHdr, ptr %8, i64 1
  %9 = load ptr, ptr %pPgHdr, align 8
  %pExtra2 = getelementptr inbounds nuw %struct.PgHdr, ptr %9, i32 0, i32 2
  store ptr %arrayidx, ptr %pExtra2, align 8
  %10 = load ptr, ptr %pPgHdr, align 8
  %pExtra3 = getelementptr inbounds nuw %struct.PgHdr, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pExtra3, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 8, i1 false)
  %12 = load ptr, ptr %pCache.addr, align 8
  %13 = load ptr, ptr %pPgHdr, align 8
  %pCache4 = getelementptr inbounds nuw %struct.PgHdr, ptr %13, i32 0, i32 3
  store ptr %12, ptr %pCache4, align 8
  %14 = load i32, ptr %pgno.addr, align 4
  %15 = load ptr, ptr %pPgHdr, align 8
  %pgno5 = getelementptr inbounds nuw %struct.PgHdr, ptr %15, i32 0, i32 6
  store i32 %14, ptr %pgno5, align 8
  %16 = load ptr, ptr %pPgHdr, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %16, i32 0, i32 7
  store i16 1, ptr %flags, align 4
  %17 = load ptr, ptr %pCache.addr, align 8
  %18 = load i32, ptr %pgno.addr, align 4
  %19 = load ptr, ptr %pPage.addr, align 8
  %call = call ptr @sqlite3PcacheFetchFinish(ptr noundef %17, i32 noundef %18, ptr noundef %19)
  ret ptr %call
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
