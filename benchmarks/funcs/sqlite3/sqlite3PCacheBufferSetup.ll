; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCacheGlobal = type { %struct.PGroup, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32 }
%struct.PGroup = type { ptr, i32, i32, i32, i32, %struct.PgHdr1 }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }
%struct.PgFreeslot = type { ptr }

@pcache1_g = external hidden global %struct.PCacheGlobal, align 8

; Function Attrs: nounwind uwtable
define hidden void @sqlite3PCacheBufferSetup(ptr noundef %pBuf, i32 noundef %sz, i32 noundef %n) #0 {
entry:
  %pBuf.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %sz, ptr %sz.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 1), align 8
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pBuf.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 0, ptr %n.addr, align 4
  store i32 0, ptr %sz.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %2 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %sz.addr, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %sz.addr, align 4
  %and = and i32 %3, -8
  store i32 %and, ptr %sz.addr, align 4
  %4 = load i32, ptr %sz.addr, align 4
  store i32 %4, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 4), align 4
  %5 = load i32, ptr %n.addr, align 4
  store i32 %5, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 11), align 8
  store i32 %5, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 5), align 8
  %6 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp sgt i32 %6, 90
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  %7 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %7, 10
  %add = add nsw i32 %div, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 10, %cond.true ], [ %add, %cond.false ]
  store i32 %cond, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 6), align 4
  %8 = load ptr, ptr %pBuf.addr, align 8
  store ptr %8, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 7), align 8
  store ptr null, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 10), align 8
  store i32 0, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 12), align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %9 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %n.addr, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %pBuf.addr, align 8
  store ptr %10, ptr %p, align 8
  %11 = load ptr, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 10), align 8
  %12 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.PgFreeslot, ptr %12, i32 0, i32 0
  store ptr %11, ptr %pNext, align 8
  %13 = load ptr, ptr %p, align 8
  store ptr %13, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 10), align 8
  %14 = load ptr, ptr %pBuf.addr, align 8
  %15 = load i32, ptr %sz.addr, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %idxprom
  store ptr %arrayidx, ptr %pBuf.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %pBuf.addr, align 8
  store ptr %16, ptr getelementptr inbounds nuw (%struct.PCacheGlobal, ptr @pcache1_g, i32 0, i32 8), align 8
  br label %if.end7

if.end7:                                          ; preds = %while.end, %entry
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
