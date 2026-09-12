; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @whereInfoFree(ptr noundef %db, ptr noundef %pWInfo) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pWInfo.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pLevel = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pWInfo, ptr %pWInfo.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %pWInfo.addr, align 8
  %nLevel = getelementptr inbounds nuw %struct.WhereInfo, ptr %1, i32 0, i32 11
  %2 = load i8, ptr %nLevel, align 2
  %conv = zext i8 %2 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pWInfo.addr, align 8
  %a = getelementptr inbounds nuw %struct.WhereInfo, ptr %3, i32 0, i32 24
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pLevel, align 8
  %5 = load ptr, ptr %pLevel, align 8
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %5, i32 0, i32 20
  %6 = load ptr, ptr %pWLoop, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %pLevel, align 8
  %pWLoop2 = getelementptr inbounds nuw %struct.WhereLevel, ptr %7, i32 0, i32 20
  %8 = load ptr, ptr %pWLoop2, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %wsFlags, align 8
  %and = and i32 %9, 2048
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %db.addr, align 8
  %11 = load ptr, ptr %pLevel, align 8
  %u = getelementptr inbounds nuw %struct.WhereLevel, ptr %11, i32 0, i32 19
  %aInLoop = getelementptr inbounds nuw %struct.anon.17, ptr %u, i32 0, i32 1
  %12 = load ptr, ptr %aInLoop, align 8
  call void @sqlite3DbFree(ptr noundef %10, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %pWInfo.addr, align 8
  %sWC = getelementptr inbounds nuw %struct.WhereInfo, ptr %14, i32 0, i32 22
  call void @sqlite3WhereClauseClear(ptr noundef %sWC)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %15 = load ptr, ptr %pWInfo.addr, align 8
  %pLoops = getelementptr inbounds nuw %struct.WhereInfo, ptr %15, i32 0, i32 19
  %16 = load ptr, ptr %pLoops, align 8
  %tobool4 = icmp ne ptr %16, null
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %pWInfo.addr, align 8
  %pLoops5 = getelementptr inbounds nuw %struct.WhereInfo, ptr %17, i32 0, i32 19
  %18 = load ptr, ptr %pLoops5, align 8
  store ptr %18, ptr %p, align 8
  %19 = load ptr, ptr %p, align 8
  %pNextLoop = getelementptr inbounds nuw %struct.WhereLoop, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pNextLoop, align 8
  %21 = load ptr, ptr %pWInfo.addr, align 8
  %pLoops6 = getelementptr inbounds nuw %struct.WhereInfo, ptr %21, i32 0, i32 19
  store ptr %20, ptr %pLoops6, align 8
  %22 = load ptr, ptr %db.addr, align 8
  %23 = load ptr, ptr %p, align 8
  call void @whereLoopDelete(ptr noundef %22, ptr noundef %23)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load ptr, ptr %pWInfo.addr, align 8
  call void @sqlite3DbFreeNN(ptr noundef %24, ptr noundef %25)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereClauseClear(ptr noundef) #0

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
