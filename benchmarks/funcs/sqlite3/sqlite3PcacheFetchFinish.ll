; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3PcacheFetchFinish(ptr noundef %pCache, i32 noundef %pgno, ptr noundef %pPage) #0 {
entry:
  %retval = alloca ptr, align 8
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
  %pPage1 = getelementptr inbounds nuw %struct.PgHdr, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pPage1, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pCache.addr, align 8
  %5 = load i32, ptr %pgno.addr, align 4
  %6 = load ptr, ptr %pPage.addr, align 8
  %call = call ptr @pcacheFetchFinishWithInit(ptr noundef %4, i32 noundef %5, ptr noundef %6)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pCache.addr, align 8
  %nRefSum = getelementptr inbounds nuw %struct.PCache, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %nRefSum, align 8
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %nRefSum, align 8
  %9 = load ptr, ptr %pPgHdr, align 8
  %nRef = getelementptr inbounds nuw %struct.PgHdr, ptr %9, i32 0, i32 8
  %10 = load i16, ptr %nRef, align 2
  %inc2 = add i16 %10, 1
  store i16 %inc2, ptr %nRef, align 2
  %11 = load ptr, ptr %pPgHdr, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

; Function Attrs: nounwind uwtable
declare hidden ptr @pcacheFetchFinishWithInit(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
