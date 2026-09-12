; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.With = type { i32, ptr, [1 x %struct.Cte] }
%struct.Cte = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SelectDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @withDup(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pRet = alloca ptr, align 8
  %nByte = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr null, ptr %pRet, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %nCte = getelementptr inbounds nuw %struct.With, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nCte, align 8
  %sub = sub nsw i32 %2, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 32, %conv
  %add = add i64 48, %mul
  store i64 %add, ptr %nByte, align 8
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load i64, ptr %nByte, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %3, i64 noundef %4)
  store ptr %call, ptr %pRet, align 8
  %5 = load ptr, ptr %pRet, align 8
  %tobool1 = icmp ne ptr %5, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %p.addr, align 8
  %nCte3 = getelementptr inbounds nuw %struct.With, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nCte3, align 8
  %8 = load ptr, ptr %pRet, align 8
  %nCte4 = getelementptr inbounds nuw %struct.With, ptr %8, i32 0, i32 0
  store i32 %7, ptr %nCte4, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %9 = load i32, ptr %i, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %nCte5 = getelementptr inbounds nuw %struct.With, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %nCte5, align 8
  %cmp = icmp slt i32 %9, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds nuw %struct.With, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.Cte], ptr %a, i64 0, i64 %idxprom
  %pSelect = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx, i32 0, i32 2
  %15 = load ptr, ptr %pSelect, align 8
  %call7 = call ptr @sqlite3SelectDup(ptr noundef %12, ptr noundef %15, i32 noundef 0)
  %16 = load ptr, ptr %pRet, align 8
  %a8 = getelementptr inbounds nuw %struct.With, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds [1 x %struct.Cte], ptr %a8, i64 0, i64 %idxprom9
  %pSelect11 = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx10, i32 0, i32 2
  store ptr %call7, ptr %pSelect11, align 8
  %18 = load ptr, ptr %db.addr, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %a12 = getelementptr inbounds nuw %struct.With, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [1 x %struct.Cte], ptr %a12, i64 0, i64 %idxprom13
  %pCols = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx14, i32 0, i32 1
  %21 = load ptr, ptr %pCols, align 8
  %call15 = call ptr @sqlite3ExprListDup(ptr noundef %18, ptr noundef %21, i32 noundef 0)
  %22 = load ptr, ptr %pRet, align 8
  %a16 = getelementptr inbounds nuw %struct.With, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [1 x %struct.Cte], ptr %a16, i64 0, i64 %idxprom17
  %pCols19 = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx18, i32 0, i32 1
  store ptr %call15, ptr %pCols19, align 8
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load ptr, ptr %p.addr, align 8
  %a20 = getelementptr inbounds nuw %struct.With, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds [1 x %struct.Cte], ptr %a20, i64 0, i64 %idxprom21
  %zName = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx22, i32 0, i32 0
  %27 = load ptr, ptr %zName, align 8
  %call23 = call ptr @sqlite3DbStrDup(ptr noundef %24, ptr noundef %27)
  %28 = load ptr, ptr %pRet, align 8
  %a24 = getelementptr inbounds nuw %struct.With, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [1 x %struct.Cte], ptr %a24, i64 0, i64 %idxprom25
  %zName27 = getelementptr inbounds nuw %struct.Cte, ptr %arrayidx26, i32 0, i32 0
  store ptr %call23, ptr %zName27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end28

if.end28:                                         ; preds = %if.end, %entry
  %31 = load ptr, ptr %pRet, align 8
  ret ptr %31
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
