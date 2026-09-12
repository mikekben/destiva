; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @isDupColumn(ptr noundef %pIdx, i32 noundef %nKey, ptr noundef %pPk, i32 noundef %iCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %nKey.addr = alloca i32, align 4
  %pPk.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %nKey, ptr %nKey.addr, align 4
  store ptr %pPk, ptr %pPk.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  %0 = load ptr, ptr %pPk.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aiColumn, align 8
  %2 = load i32, ptr %iCol.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %nKey.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn2 = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %aiColumn2, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i16, ptr %7, i64 %idxprom3
  %9 = load i16, ptr %arrayidx4, align 2
  %conv5 = sext i16 %9 to i32
  %10 = load i32, ptr %j, align 4
  %cmp6 = icmp eq i32 %conv5, %10
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %pIdx.addr, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %11, i32 0, i32 8
  %12 = load ptr, ptr %azColl, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %12, i64 %idxprom8
  %14 = load ptr, ptr %arrayidx9, align 8
  %15 = load ptr, ptr %pPk.addr, align 8
  %azColl10 = getelementptr inbounds nuw %struct.Index, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %azColl10, align 8
  %17 = load i32, ptr %iCol.addr, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %16, i64 %idxprom11
  %18 = load ptr, ptr %arrayidx12, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %14, ptr noundef %18)
  %cmp13 = icmp eq i32 %call, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
