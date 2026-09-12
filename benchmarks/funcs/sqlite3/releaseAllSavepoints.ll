; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PagerSavepoint = type { i64, i64, ptr, i32, i32, [4 x i32] }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecDestroy(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3JournalIsInMemory(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @releaseAllSavepoints(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
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
  %pInSavepoint = getelementptr inbounds nuw %struct.PagerSavepoint, ptr %arrayidx, i32 0, i32 2
  %6 = load ptr, ptr %pInSavepoint, align 8
  call void @sqlite3BitvecDestroy(ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 1
  %9 = load i8, ptr %exclusiveMode, align 8
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.end
  %10 = load ptr, ptr %pPager.addr, align 8
  %sjfd = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 32
  %11 = load ptr, ptr %sjfd, align 8
  %call = call i32 @sqlite3JournalIsInMemory(ptr noundef %11)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %12 = load ptr, ptr %pPager.addr, align 8
  %sjfd2 = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 32
  %13 = load ptr, ptr %sjfd2, align 8
  call void @sqlite3OsClose(ptr noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint3 = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 36
  %15 = load ptr, ptr %aSavepoint3, align 8
  call void @sqlite3_free(ptr noundef %15)
  %16 = load ptr, ptr %pPager.addr, align 8
  %aSavepoint4 = getelementptr inbounds nuw %struct.Pager, ptr %16, i32 0, i32 36
  store ptr null, ptr %aSavepoint4, align 8
  %17 = load ptr, ptr %pPager.addr, align 8
  %nSavepoint5 = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 37
  store i32 0, ptr %nSavepoint5, align 8
  %18 = load ptr, ptr %pPager.addr, align 8
  %nSubRec = getelementptr inbounds nuw %struct.Pager, ptr %18, i32 0, i32 28
  store i32 0, ptr %nSubRec, align 8
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
