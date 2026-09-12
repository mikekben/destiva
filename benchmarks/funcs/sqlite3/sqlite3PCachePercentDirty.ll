; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @numberOfCachePages(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PCachePercentDirty(ptr noundef %pCache) #0 {
entry:
  %pCache.addr = alloca ptr, align 8
  %pDirty = alloca ptr, align 8
  %nDirty = alloca i32, align 4
  %nCache = alloca i32, align 4
  store ptr %pCache, ptr %pCache.addr, align 8
  store i32 0, ptr %nDirty, align 4
  %0 = load ptr, ptr %pCache.addr, align 8
  %call = call i32 @numberOfCachePages(ptr noundef %0)
  store i32 %call, ptr %nCache, align 4
  %1 = load ptr, ptr %pCache.addr, align 8
  %pDirty1 = getelementptr inbounds nuw %struct.PCache, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pDirty1, align 8
  store ptr %2, ptr %pDirty, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pDirty, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %nDirty, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %nDirty, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %pDirty, align 8
  %pDirtyNext = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %pDirtyNext, align 8
  store ptr %6, ptr %pDirty, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %nCache, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %8 = load i32, ptr %nDirty, align 4
  %conv = sext i32 %8 to i64
  %mul = mul nsw i64 %conv, 100
  %9 = load i32, ptr %nCache, align 4
  %conv3 = sext i32 %9 to i64
  %div = sdiv i64 %mul, %conv3
  %conv4 = trunc i64 %div to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv4, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
