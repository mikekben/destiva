; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PagerSavepoint = type { i64, i64, ptr, i32, i32, [4 x i32] }

; Function Attrs: nounwind uwtable
define hidden i32 @subjRequiresPage(ptr noundef %pPg) #0 {
entry:
  %retval = alloca i32, align 4
  %pPg.addr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pgno = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pPg, ptr %pPg.addr, align 8
  %0 = load ptr, ptr %pPg.addr, align 8
  %pPager1 = getelementptr inbounds nuw %struct.PgHdr, ptr %0, i32 0, i32 5
  %1 = load ptr, ptr %pPager1, align 8
  store ptr %1, ptr %pPager, align 8
  %2 = load ptr, ptr %pPg.addr, align 8
  %pgno2 = getelementptr inbounds nuw %struct.PgHdr, ptr %2, i32 0, i32 6
  %3 = load i32, ptr %pgno2, align 8
  store i32 %3, ptr %pgno, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %pPager, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 37
  %6 = load i32, ptr %nSavepoint, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pPager, align 8
  %aSavepoint = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 36
  %8 = load ptr, ptr %aSavepoint, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.PagerSavepoint, ptr %8, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  %nOrig = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %nOrig, align 8
  %12 = load i32, ptr %pgno, align 4
  %cmp3 = icmp uge i32 %11, %12
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %p, align 8
  %pInSavepoint = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %pInSavepoint, align 8
  %15 = load i32, ptr %pgno, align 4
  %call = call i32 @sqlite3BitvecTestNotNull(ptr noundef %14, i32 noundef %15)
  %cmp4 = icmp eq i32 0, %call
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BitvecTestNotNull(ptr noundef, i32 noundef) #0

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
