; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerFlush(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pList = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 25
  %1 = load i32, ptr %errCode, align 4
  store i32 %1, ptr %rc, align 4
  %2 = load ptr, ptr %pPager.addr, align 8
  %memDb = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 12
  %3 = load i8, ptr %memDb, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 58
  %5 = load ptr, ptr %pPCache, align 8
  %call = call ptr @sqlite3PcacheDirtyList(ptr noundef %5)
  store ptr %call, ptr %pList, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %pList, align 8
  %tobool1 = icmp ne ptr %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %pList, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pDirty, align 8
  store ptr %10, ptr %pNext, align 8
  %11 = load ptr, ptr %pList, align 8
  %nRef = getelementptr inbounds nuw %struct.PgHdr, ptr %11, i32 0, i32 8
  %12 = load i16, ptr %nRef, align 2
  %conv = sext i16 %12 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %while.body
  %13 = load ptr, ptr %pPager.addr, align 8
  %14 = load ptr, ptr %pList, align 8
  %call5 = call i32 @pagerStress(ptr noundef %13, ptr noundef %14)
  store i32 %call5, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %while.body
  %15 = load ptr, ptr %pNext, align 8
  store ptr %15, ptr %pList, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %if.end6

if.end6:                                          ; preds = %while.end, %entry
  %16 = load i32, ptr %rc, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerStress(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PcacheDirtyList(ptr noundef) #0

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
