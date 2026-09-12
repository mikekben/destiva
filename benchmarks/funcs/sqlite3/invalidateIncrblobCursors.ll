; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
define hidden void @invalidateIncrblobCursors(ptr noundef %pBtree, i32 noundef %pgnoRoot, i64 noundef %iRow, i32 noundef %isClearTable) #0 {
entry:
  %pBtree.addr = alloca ptr, align 8
  %pgnoRoot.addr = alloca i32, align 4
  %iRow.addr = alloca i64, align 8
  %isClearTable.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %pBtree, ptr %pBtree.addr, align 8
  store i32 %pgnoRoot, ptr %pgnoRoot.addr, align 4
  store i64 %iRow, ptr %iRow.addr, align 8
  store i32 %isClearTable, ptr %isClearTable.addr, align 4
  %0 = load ptr, ptr %pBtree.addr, align 8
  %hasIncrblobCur = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %hasIncrblobCur, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pBtree.addr, align 8
  %hasIncrblobCur2 = getelementptr inbounds nuw %struct.Btree, ptr %2, i32 0, i32 5
  store i8 0, ptr %hasIncrblobCur2, align 1
  %3 = load ptr, ptr %pBtree.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.Btree, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pBt, align 8
  %pCursor = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pCursor, align 8
  store ptr %5, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %p, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 1
  %8 = load i8, ptr %curFlags, align 1
  %conv3 = zext i8 %8 to i32
  %and = and i32 %conv3, 16
  %cmp4 = icmp ne i32 %and, 0
  br i1 %cmp4, label %if.then6, label %if.end16

if.then6:                                         ; preds = %for.body
  %9 = load ptr, ptr %pBtree.addr, align 8
  %hasIncrblobCur7 = getelementptr inbounds nuw %struct.Btree, ptr %9, i32 0, i32 5
  store i8 1, ptr %hasIncrblobCur7, align 1
  %10 = load ptr, ptr %p, align 8
  %pgnoRoot8 = getelementptr inbounds nuw %struct.BtCursor, ptr %10, i32 0, i32 12
  %11 = load i32, ptr %pgnoRoot8, align 8
  %12 = load i32, ptr %pgnoRoot.addr, align 4
  %cmp9 = icmp eq i32 %11, %12
  br i1 %cmp9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.then6
  %13 = load i32, ptr %isClearTable.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load ptr, ptr %p, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 10
  %nKey = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 0
  %15 = load i64, ptr %nKey, align 8
  %16 = load i64, ptr %iRow.addr, align 8
  %cmp12 = icmp eq i64 %15, %16
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load ptr, ptr %p, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %17, i32 0, i32 0
  store i8 1, ptr %eState, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false, %if.then6
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %18 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.BtCursor, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %pNext, align 8
  store ptr %19, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond, %if.then
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
