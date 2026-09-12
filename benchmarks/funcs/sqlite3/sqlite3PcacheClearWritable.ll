; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PcacheClearWritable(ptr noundef %pCache) #0 {
entry:
  %pCache.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pCache, ptr %pCache.addr, align 8
  %0 = load ptr, ptr %pCache.addr, align 8
  %pDirty = getelementptr inbounds nuw %struct.PCache, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pDirty, align 8
  store ptr %1, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8
  %flags = getelementptr inbounds nuw %struct.PgHdr, ptr %3, i32 0, i32 7
  %4 = load i16, ptr %flags, align 4
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, -13
  %conv1 = trunc i32 %and to i16
  store i16 %conv1, ptr %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %p, align 8
  %pDirtyNext = getelementptr inbounds nuw %struct.PgHdr, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %pDirtyNext, align 8
  store ptr %6, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %pCache.addr, align 8
  %pDirtyTail = getelementptr inbounds nuw %struct.PCache, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pDirtyTail, align 8
  %9 = load ptr, ptr %pCache.addr, align 8
  %pSynced = getelementptr inbounds nuw %struct.PCache, ptr %9, i32 0, i32 2
  store ptr %8, ptr %pSynced, align 8
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
