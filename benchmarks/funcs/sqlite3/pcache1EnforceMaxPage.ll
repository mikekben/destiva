; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pcache1EnforceMaxPage(ptr noundef %pCache) #0 {
entry:
  %pCache.addr = alloca ptr, align 8
  %pGroup = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  %0 = load ptr, ptr %pCache.addr, align 8
  %pGroup1 = getelementptr inbounds nuw %struct.PCache1, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pGroup1, align 8
  store ptr %1, ptr %pGroup, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %pGroup, align 8
  %nPurgeable = getelementptr inbounds nuw %struct.PGroup, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %nPurgeable, align 4
  %4 = load ptr, ptr %pGroup, align 8
  %nMaxPage = getelementptr inbounds nuw %struct.PGroup, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nMaxPage, align 8
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %pGroup, align 8
  %lru = getelementptr inbounds nuw %struct.PGroup, ptr %6, i32 0, i32 5
  %pLruPrev = getelementptr inbounds nuw %struct.PgHdr1, ptr %lru, i32 0, i32 7
  %7 = load ptr, ptr %pLruPrev, align 8
  store ptr %7, ptr %p, align 8
  %isAnchor = getelementptr inbounds nuw %struct.PgHdr1, ptr %7, i32 0, i32 3
  %8 = load i16, ptr %isAnchor, align 2
  %conv = zext i16 %8 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load ptr, ptr %p, align 8
  %call = call ptr @pcache1PinPage(ptr noundef %10)
  %11 = load ptr, ptr %p, align 8
  call void @pcache1RemoveFromHash(ptr noundef %11, i32 noundef 1)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %pCache.addr, align 8
  %nPage = getelementptr inbounds nuw %struct.PCache1, ptr %12, i32 0, i32 12
  %13 = load i32, ptr %nPage, align 8
  %cmp4 = icmp eq i32 %13, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %14 = load ptr, ptr %pCache.addr, align 8
  %pBulk = getelementptr inbounds nuw %struct.PCache1, ptr %14, i32 0, i32 16
  %15 = load ptr, ptr %pBulk, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load ptr, ptr %pCache.addr, align 8
  %pBulk6 = getelementptr inbounds nuw %struct.PCache1, ptr %16, i32 0, i32 16
  %17 = load ptr, ptr %pBulk6, align 8
  call void @sqlite3_free(ptr noundef %17)
  %18 = load ptr, ptr %pCache.addr, align 8
  %pFree = getelementptr inbounds nuw %struct.PCache1, ptr %18, i32 0, i32 15
  store ptr null, ptr %pFree, align 8
  %19 = load ptr, ptr %pCache.addr, align 8
  %pBulk7 = getelementptr inbounds nuw %struct.PCache1, ptr %19, i32 0, i32 16
  store ptr null, ptr %pBulk7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @pcache1PinPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pcache1RemoveFromHash(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
