; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @pcache1PinPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @pcache1FetchNoMutex(ptr noundef %p, i32 noundef %iKey, i32 noundef %createFlag) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %iKey.addr = alloca i32, align 4
  %createFlag.addr = alloca i32, align 4
  %pCache = alloca ptr, align 8
  %pPage = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iKey, ptr %iKey.addr, align 4
  store i32 %createFlag, ptr %createFlag.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %pCache, align 8
  store ptr null, ptr %pPage, align 8
  %1 = load ptr, ptr %pCache, align 8
  %apHash = getelementptr inbounds nuw %struct.PCache1, ptr %1, i32 0, i32 14
  %2 = load ptr, ptr %apHash, align 8
  %3 = load i32, ptr %iKey.addr, align 4
  %4 = load ptr, ptr %pCache, align 8
  %nHash = getelementptr inbounds nuw %struct.PCache1, ptr %4, i32 0, i32 13
  %5 = load i32, ptr %nHash, align 4
  %rem = urem i32 %3, %5
  %idxprom = zext i32 %rem to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %2, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %pPage, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %pPage, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %pPage, align 8
  %iKey1 = getelementptr inbounds nuw %struct.PgHdr1, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %iKey1, align 8
  %10 = load i32, ptr %iKey.addr, align 4
  %cmp = icmp ne i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %pPage, align 8
  %pNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pNext, align 8
  store ptr %13, ptr %pPage, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %pPage, align 8
  %tobool2 = icmp ne ptr %14, null
  br i1 %tobool2, label %if.then, label %if.else5

if.then:                                          ; preds = %while.end
  %15 = load ptr, ptr %pPage, align 8
  %pLruNext = getelementptr inbounds nuw %struct.PgHdr1, ptr %15, i32 0, i32 6
  %16 = load ptr, ptr %pLruNext, align 8
  %cmp3 = icmp ne ptr %16, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %17 = load ptr, ptr %pPage, align 8
  %call = call ptr @pcache1PinPage(ptr noundef %17)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.then
  %18 = load ptr, ptr %pPage, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

if.else5:                                         ; preds = %while.end
  %19 = load i32, ptr %createFlag.addr, align 4
  %tobool6 = icmp ne i32 %19, 0
  br i1 %tobool6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  %20 = load ptr, ptr %pCache, align 8
  %21 = load i32, ptr %iKey.addr, align 4
  %22 = load i32, ptr %createFlag.addr, align 4
  %call8 = call ptr @pcache1FetchStage2(ptr noundef %20, i32 noundef %21, i32 noundef %22)
  store ptr %call8, ptr %retval, align 8
  br label %return

if.else9:                                         ; preds = %if.else5
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else9, %if.then7, %if.else, %if.then4
  %23 = load ptr, ptr %retval, align 8
  ret ptr %23
}

; Function Attrs: nounwind uwtable
declare hidden ptr @pcache1FetchStage2(ptr noundef, i32 noundef, i32 noundef) #0

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
