; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeUpdateMeta(ptr noundef %p, i32 noundef %idx, i32 noundef %iMeta) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %iMeta.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %pP1 = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  store i32 %iMeta, ptr %iMeta.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %2)
  %3 = load ptr, ptr %pBt, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %pPage1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 19
  %5 = load ptr, ptr %aData, align 8
  store ptr %5, ptr %pP1, align 8
  %6 = load ptr, ptr %pBt, align 8
  %pPage12 = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pPage12, align 8
  %pDbPage = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 23
  %8 = load ptr, ptr %pDbPage, align 8
  %call = call i32 @sqlite3PagerWrite(ptr noundef %8)
  store i32 %call, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %pP1, align 8
  %11 = load i32, ptr %idx.addr, align 4
  %mul = mul nsw i32 %11, 4
  %add = add nsw i32 36, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %12 = load i32, ptr %iMeta.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx, i32 noundef %12)
  %13 = load i32, ptr %idx.addr, align 4
  %cmp3 = icmp eq i32 %13, 7
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %14 = load i32, ptr %iMeta.addr, align 4
  %conv = trunc i32 %14 to i8
  %15 = load ptr, ptr %pBt, align 8
  %incrVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %15, i32 0, i32 6
  store i8 %conv, ptr %incrVacuum, align 2
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %16 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %16)
  %17 = load i32, ptr %rc, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
