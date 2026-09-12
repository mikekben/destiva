; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PagerSavepoint = type { i64, i64, ptr, i32, i32, [4 x i32] }

; Function Attrs: nounwind uwtable
define hidden i32 @addToSavepointBitvecs(ptr noundef %pPager, i32 noundef %pgno) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %pgno.addr = alloca i32, align 4
  %ii = alloca i32, align 4
  %rc = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %pgno, ptr %pgno.addr, align 4
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ii, align 4
  %1 = load ptr, ptr %pPager.addr, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %1, i32 0, i32 37
  %2 = load i32, ptr %nSavepoint, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 36
  %4 = load ptr, ptr %aSavepoint, align 8
  %5 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.PagerSavepoint, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %6 = load i32, ptr %pgno.addr, align 4
  %7 = load ptr, ptr %p, align 8
  %nOrig = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %nOrig, align 8
  %cmp1 = icmp ule i32 %6, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %p, align 8
  %pInSavepoint = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pInSavepoint, align 8
  %11 = load i32, ptr %pgno.addr, align 4
  %call = call i32 @sqlite3BitvecSet(ptr noundef %10, i32 noundef %11)
  %12 = load i32, ptr %rc, align 4
  %or = or i32 %12, %call
  store i32 %or, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecSet(ptr noundef, i32 noundef) #0

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
