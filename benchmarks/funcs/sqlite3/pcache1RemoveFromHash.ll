; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @pcache1RemoveFromHash(ptr noundef %pPage, i32 noundef %freeFlag) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %freeFlag.addr = alloca i32, align 4
  %h = alloca i32, align 4
  %pCache = alloca ptr, align 8
  %pp = alloca ptr, align 8
  store ptr %pPage, ptr %pPage.addr, align 8
  store i32 %freeFlag, ptr %freeFlag.addr, align 4
  %0 = load ptr, ptr %pPage.addr, align 8
  %pCache1 = getelementptr inbounds nuw %struct.PgHdr1, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pCache1, align 8
  store ptr %1, ptr %pCache, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %iKey = getelementptr inbounds nuw %struct.PgHdr1, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %iKey, align 8
  %4 = load ptr, ptr %pCache, align 8
  %nHash = getelementptr inbounds nuw %struct.PCache1, ptr %4, i32 0, i32 13
  %5 = load i32, ptr %nHash, align 4
  %rem = urem i32 %3, %5
  store i32 %rem, ptr %h, align 4
  %6 = load ptr, ptr %pCache, align 8
  %apHash = getelementptr inbounds nuw %struct.PCache1, ptr %6, i32 0, i32 14
  %7 = load ptr, ptr %apHash, align 8
  %8 = load i32, ptr %h, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %7, i64 %idxprom
  store ptr %arrayidx, ptr %pp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %pp, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %pPage.addr, align 8
  %cmp = icmp ne ptr %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %pp, align 8
  %13 = load ptr, ptr %12, align 8
  %pNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %13, i32 0, i32 4
  store ptr %pNext, ptr %pp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %pp, align 8
  %15 = load ptr, ptr %14, align 8
  %pNext2 = getelementptr inbounds nuw %struct.PgHdr1, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %pNext2, align 8
  %17 = load ptr, ptr %pp, align 8
  store ptr %16, ptr %17, align 8
  %18 = load ptr, ptr %pCache, align 8
  %nPage = getelementptr inbounds nuw %struct.PCache1, ptr %18, i32 0, i32 12
  %19 = load i32, ptr %nPage, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %nPage, align 8
  %20 = load i32, ptr %freeFlag.addr, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %21 = load ptr, ptr %pPage.addr, align 8
  call void @pcache1FreePage(ptr noundef %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @pcache1FreePage(ptr noundef) #0

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
