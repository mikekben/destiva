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
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @btreeCursor(ptr noundef %p, i32 noundef %iTable, i32 noundef %wrFlag, ptr noundef %pKeyInfo, ptr noundef %pCur) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %iTable.addr = alloca i32, align 4
  %wrFlag.addr = alloca i32, align 4
  %pKeyInfo.addr = alloca ptr, align 8
  %pCur.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %pX = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTable, ptr %iTable.addr, align 4
  store i32 %wrFlag, ptr %wrFlag.addr, align 4
  store ptr %pKeyInfo, ptr %pKeyInfo.addr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load i32, ptr %wrFlag.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pBt, align 8
  call void @allocateTempSpace(ptr noundef %3)
  %4 = load ptr, ptr %pBt, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 27
  %5 = load ptr, ptr %pTmpSpace, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %6 = load i32, ptr %iTable.addr, align 4
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %7 = load ptr, ptr %pBt, align 8
  %call = call i32 @btreePagecount(ptr noundef %7)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %iTable.addr, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end3
  %8 = load i32, ptr %iTable.addr, align 4
  %9 = load ptr, ptr %pCur.addr, align 8
  %pgnoRoot = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 12
  store i32 %8, ptr %pgnoRoot, align 8
  %10 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %10, i32 0, i32 13
  store i8 -1, ptr %iPage, align 4
  %11 = load ptr, ptr %pKeyInfo.addr, align 8
  %12 = load ptr, ptr %pCur.addr, align 8
  %pKeyInfo8 = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 17
  store ptr %11, ptr %pKeyInfo8, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 5
  store ptr %13, ptr %pBtree, align 8
  %15 = load ptr, ptr %pBt, align 8
  %16 = load ptr, ptr %pCur.addr, align 8
  %pBt9 = getelementptr inbounds nuw %struct.BtCursor, ptr %16, i32 0, i32 8
  store ptr %15, ptr %pBt9, align 8
  %17 = load i32, ptr %wrFlag.addr, align 4
  %tobool10 = icmp ne i32 %17, 0
  %18 = zext i1 %tobool10 to i64
  %cond = select i1 %tobool10, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %19 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %19, i32 0, i32 1
  store i8 %conv, ptr %curFlags, align 1
  %20 = load i32, ptr %wrFlag.addr, align 4
  %tobool11 = icmp ne i32 %20, 0
  %21 = zext i1 %tobool11 to i64
  %cond12 = select i1 %tobool11, i32 0, i32 2
  %conv13 = trunc i32 %cond12 to i8
  %22 = load ptr, ptr %pCur.addr, align 8
  %curPagerFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %22, i32 0, i32 2
  store i8 %conv13, ptr %curPagerFlags, align 2
  %23 = load ptr, ptr %pBt, align 8
  %pCursor = getelementptr inbounds nuw %struct.BtShared, ptr %23, i32 0, i32 2
  %24 = load ptr, ptr %pCursor, align 8
  store ptr %24, ptr %pX, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %25 = load ptr, ptr %pX, align 8
  %tobool14 = icmp ne ptr %25, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %pX, align 8
  %pgnoRoot15 = getelementptr inbounds nuw %struct.BtCursor, ptr %26, i32 0, i32 12
  %27 = load i32, ptr %pgnoRoot15, align 8
  %28 = load i32, ptr %iTable.addr, align 4
  %cmp16 = icmp eq i32 %27, %28
  br i1 %cmp16, label %if.then18, label %if.end26

if.then18:                                        ; preds = %for.body
  %29 = load ptr, ptr %pX, align 8
  %curFlags19 = getelementptr inbounds nuw %struct.BtCursor, ptr %29, i32 0, i32 1
  %30 = load i8, ptr %curFlags19, align 1
  %conv20 = zext i8 %30 to i32
  %or = or i32 %conv20, 32
  %conv21 = trunc i32 %or to i8
  store i8 %conv21, ptr %curFlags19, align 1
  %31 = load ptr, ptr %pCur.addr, align 8
  %curFlags22 = getelementptr inbounds nuw %struct.BtCursor, ptr %31, i32 0, i32 1
  %32 = load i8, ptr %curFlags22, align 1
  %conv23 = zext i8 %32 to i32
  %or24 = or i32 %conv23, 32
  %conv25 = trunc i32 %or24 to i8
  store i8 %conv25, ptr %curFlags22, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %33 = load ptr, ptr %pX, align 8
  %pNext = getelementptr inbounds nuw %struct.BtCursor, ptr %33, i32 0, i32 9
  %34 = load ptr, ptr %pNext, align 8
  store ptr %34, ptr %pX, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %pBt, align 8
  %pCursor27 = getelementptr inbounds nuw %struct.BtShared, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %pCursor27, align 8
  %37 = load ptr, ptr %pCur.addr, align 8
  %pNext28 = getelementptr inbounds nuw %struct.BtCursor, ptr %37, i32 0, i32 9
  store ptr %36, ptr %pNext28, align 8
  %38 = load ptr, ptr %pCur.addr, align 8
  %39 = load ptr, ptr %pBt, align 8
  %pCursor29 = getelementptr inbounds nuw %struct.BtShared, ptr %39, i32 0, i32 2
  store ptr %38, ptr %pCursor29, align 8
  %40 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %40, i32 0, i32 0
  store i8 1, ptr %eState, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then2
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
declare hidden void @allocateTempSpace(ptr noundef) #0

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
