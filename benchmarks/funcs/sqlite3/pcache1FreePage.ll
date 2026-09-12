; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @pcache1Free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pcache1FreePage(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pCache = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pCache1 = getelementptr inbounds nuw %struct.PgHdr1, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pCache1, align 8
  store ptr %1, ptr %pCache, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %isBulkLocal = getelementptr inbounds nuw %struct.PgHdr1, ptr %2, i32 0, i32 2
  %3 = load i16, ptr %isBulkLocal, align 4
  %tobool = icmp ne i16 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pCache, align 8
  %pFree = getelementptr inbounds nuw %struct.PCache1, ptr %4, i32 0, i32 15
  %5 = load ptr, ptr %pFree, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %6, i32 0, i32 4
  store ptr %5, ptr %pNext, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %8 = load ptr, ptr %pCache, align 8
  %pFree2 = getelementptr inbounds nuw %struct.PCache1, ptr %8, i32 0, i32 15
  store ptr %7, ptr %pFree2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %p.addr, align 8
  %page = getelementptr inbounds nuw %struct.PgHdr1, ptr %9, i32 0, i32 0
  %pBuf = getelementptr inbounds nuw %struct.sqlite3_pcache_page, ptr %page, i32 0, i32 0
  %10 = load ptr, ptr %pBuf, align 8
  call void @pcache1Free(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %pCache, align 8
  %pnPurgeable = getelementptr inbounds nuw %struct.PCache1, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pnPurgeable, align 8
  %13 = load i32, ptr %12, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %12, align 4
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
