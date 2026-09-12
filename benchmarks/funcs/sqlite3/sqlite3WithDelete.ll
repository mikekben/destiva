; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.With = type { i32, ptr, [1 x %struct.Cte] }
%struct.Cte = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WithDelete(ptr noundef %db, ptr noundef %pWith) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pWith.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pCte = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pWith, ptr %pWith.addr, align 8
  %0 = load ptr, ptr %pWith.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %pWith.addr, align 8
  %nCte = getelementptr inbounds nuw %struct.With, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nCte, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pWith.addr, align 8
  %a = getelementptr inbounds nuw %struct.With, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.Cte], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pCte, align 8
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %pCte, align 8
  %pCols = getelementptr inbounds nuw %struct.Cte, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pCols, align 8
  call void @sqlite3ExprListDelete(ptr noundef %6, ptr noundef %8)
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %pCte, align 8
  %pSelect = getelementptr inbounds nuw %struct.Cte, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pSelect, align 8
  call void @sqlite3SelectDelete(ptr noundef %9, ptr noundef %11)
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %pCte, align 8
  %zName = getelementptr inbounds nuw %struct.Cte, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %12, ptr noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %db.addr, align 8
  %17 = load ptr, ptr %pWith.addr, align 8
  call void @sqlite3DbFree(ptr noundef %16, ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
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
