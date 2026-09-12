; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache1 = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.PgHdr1 = type { %struct.sqlite3_pcache_page, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sqlite3_pcache_page = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
define hidden void @pcache1ResizeHash(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %apNew = alloca ptr, align 8
  %nNew = alloca i32, align 4
  %i = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %h = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %nHash = getelementptr inbounds nuw %struct.PCache1, ptr %0, i32 0, i32 13
  %1 = load i32, ptr %nHash, align 4
  %mul = mul i32 %1, 2
  store i32 %mul, ptr %nNew, align 4
  %2 = load i32, ptr %nNew, align 4
  %cmp = icmp ult i32 %2, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 256, ptr %nNew, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %p.addr, align 8
  %nHash1 = getelementptr inbounds nuw %struct.PCache1, ptr %3, i32 0, i32 13
  %4 = load i32, ptr %nHash1, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @sqlite3BeginBenignMalloc()
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i32, ptr %nNew, align 4
  %conv = zext i32 %5 to i64
  %mul4 = mul i64 8, %conv
  %call = call ptr @sqlite3MallocZero(i64 noundef %mul4)
  store ptr %call, ptr %apNew, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %nHash5 = getelementptr inbounds nuw %struct.PCache1, ptr %6, i32 0, i32 13
  %7 = load i32, ptr %nHash5, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @sqlite3EndBenignMalloc()
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  %8 = load ptr, ptr %apNew, align 8
  %tobool9 = icmp ne ptr %8, null
  br i1 %tobool9, label %if.then10, label %if.end25

if.then10:                                        ; preds = %if.end8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %nHash11 = getelementptr inbounds nuw %struct.PCache1, ptr %10, i32 0, i32 13
  %11 = load i32, ptr %nHash11, align 4
  %cmp12 = icmp ult i32 %9, %11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %p.addr, align 8
  %apHash = getelementptr inbounds nuw %struct.PCache1, ptr %12, i32 0, i32 14
  %13 = load ptr, ptr %apHash, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %arrayidx, align 8
  store ptr %15, ptr %pNext, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %16 = load ptr, ptr %pNext, align 8
  store ptr %16, ptr %pPage, align 8
  %cmp14 = icmp ne ptr %16, null
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %pPage, align 8
  %iKey = getelementptr inbounds nuw %struct.PgHdr1, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %iKey, align 8
  %19 = load i32, ptr %nNew, align 4
  %rem = urem i32 %18, %19
  store i32 %rem, ptr %h, align 4
  %20 = load ptr, ptr %pPage, align 8
  %pNext16 = getelementptr inbounds nuw %struct.PgHdr1, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %pNext16, align 8
  store ptr %21, ptr %pNext, align 8
  %22 = load ptr, ptr %apNew, align 8
  %23 = load i32, ptr %h, align 4
  %idxprom17 = zext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds nuw ptr, ptr %22, i64 %idxprom17
  %24 = load ptr, ptr %arrayidx18, align 8
  %25 = load ptr, ptr %pPage, align 8
  %pNext19 = getelementptr inbounds nuw %struct.PgHdr1, ptr %25, i32 0, i32 4
  store ptr %24, ptr %pNext19, align 8
  %26 = load ptr, ptr %pPage, align 8
  %27 = load ptr, ptr %apNew, align 8
  %28 = load i32, ptr %h, align 4
  %idxprom20 = zext i32 %28 to i64
  %arrayidx21 = getelementptr inbounds nuw ptr, ptr %27, i64 %idxprom20
  store ptr %26, ptr %arrayidx21, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %29 = load i32, ptr %i, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %p.addr, align 8
  %apHash22 = getelementptr inbounds nuw %struct.PCache1, ptr %30, i32 0, i32 14
  %31 = load ptr, ptr %apHash22, align 8
  call void @sqlite3_free(ptr noundef %31)
  %32 = load ptr, ptr %apNew, align 8
  %33 = load ptr, ptr %p.addr, align 8
  %apHash23 = getelementptr inbounds nuw %struct.PCache1, ptr %33, i32 0, i32 14
  store ptr %32, ptr %apHash23, align 8
  %34 = load i32, ptr %nNew, align 4
  %35 = load ptr, ptr %p.addr, align 8
  %nHash24 = getelementptr inbounds nuw %struct.PCache1, ptr %35, i32 0, i32 13
  store i32 %34, ptr %nHash24, align 4
  br label %if.end25

if.end25:                                         ; preds = %for.end, %if.end8
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
!8 = distinct !{!8, !7}
