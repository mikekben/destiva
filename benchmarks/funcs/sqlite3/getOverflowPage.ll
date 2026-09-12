; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeGetPage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @getOverflowPage(ptr noundef %pBt, i32 noundef %ovfl, ptr noundef %ppPage, ptr noundef %pPgnoNext) #0 {
entry:
  %pBt.addr = alloca ptr, align 8
  %ovfl.addr = alloca i32, align 4
  %ppPage.addr = alloca ptr, align 8
  %pPgnoNext.addr = alloca ptr, align 8
  %next = alloca i32, align 4
  %pPage = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pgno = alloca i32, align 4
  %iGuess = alloca i32, align 4
  %eType = alloca i8, align 1
  store ptr %pBt, ptr %pBt.addr, align 8
  store i32 %ovfl, ptr %ovfl.addr, align 4
  store ptr %ppPage, ptr %ppPage.addr, align 8
  store ptr %pPgnoNext, ptr %pPgnoNext.addr, align 8
  store i32 0, ptr %next, align 4
  store ptr null, ptr %pPage, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pBt.addr, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %0, i32 0, i32 5
  %1 = load i8, ptr %autoVacuum, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ovfl.addr, align 4
  %add = add i32 %2, 1
  store i32 %add, ptr %iGuess, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load ptr, ptr %pBt.addr, align 8
  %4 = load i32, ptr %iGuess, align 4
  %call = call i32 @ptrmapPageno(ptr noundef %3, i32 noundef %4)
  %5 = load i32, ptr %iGuess, align 4
  %cmp = icmp eq i32 %call, %5
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %6 = load i32, ptr %iGuess, align 4
  %7 = load i32, ptr @sqlite3PendingByte, align 4
  %8 = load ptr, ptr %pBt.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %8, i32 0, i32 15
  %9 = load i32, ptr %pageSize, align 8
  %div = udiv i32 %7, %9
  %add1 = add i32 %div, 1
  %cmp2 = icmp eq i32 %6, %add1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %10 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load i32, ptr %iGuess, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %iGuess, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %lor.end
  %12 = load i32, ptr %iGuess, align 4
  %13 = load ptr, ptr %pBt.addr, align 8
  %call3 = call i32 @btreePagecount(ptr noundef %13)
  %cmp4 = icmp ule i32 %12, %call3
  br i1 %cmp4, label %if.then5, label %if.end14

if.then5:                                         ; preds = %while.end
  %14 = load ptr, ptr %pBt.addr, align 8
  %15 = load i32, ptr %iGuess, align 4
  %call6 = call i32 @ptrmapGet(ptr noundef %14, i32 noundef %15, ptr noundef %eType, ptr noundef %pgno)
  store i32 %call6, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %16, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then5
  %17 = load i8, ptr %eType, align 1
  %conv = zext i8 %17 to i32
  %cmp8 = icmp eq i32 %conv, 4
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %18 = load i32, ptr %pgno, align 4
  %19 = load i32, ptr %ovfl.addr, align 4
  %cmp11 = icmp eq i32 %18, %19
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %land.lhs.true10
  %20 = load i32, ptr %iGuess, align 4
  store i32 %20, ptr %next, align 4
  store i32 101, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true10, %land.lhs.true, %if.then5
  br label %if.end14

if.end14:                                         ; preds = %if.end, %while.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry
  %21 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %21, 0
  br i1 %cmp16, label %if.then18, label %if.end27

if.then18:                                        ; preds = %if.end15
  %22 = load ptr, ptr %pBt.addr, align 8
  %23 = load i32, ptr %ovfl.addr, align 4
  %24 = load ptr, ptr %ppPage.addr, align 8
  %cmp19 = icmp eq ptr %24, null
  %25 = zext i1 %cmp19 to i64
  %cond = select i1 %cmp19, i32 2, i32 0
  %call21 = call i32 @btreeGetPage(ptr noundef %22, i32 noundef %23, ptr noundef %pPage, i32 noundef %cond)
  store i32 %call21, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp22 = icmp eq i32 %26, 0
  br i1 %cmp22, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.then18
  %27 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %27, i32 0, i32 19
  %28 = load ptr, ptr %aData, align 8
  %call25 = call i32 @sqlite3Get4byte(ptr noundef %28)
  store i32 %call25, ptr %next, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then18
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end15
  %29 = load i32, ptr %next, align 4
  %30 = load ptr, ptr %pPgnoNext.addr, align 8
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %ppPage.addr, align 8
  %tobool28 = icmp ne ptr %31, null
  br i1 %tobool28, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  %32 = load ptr, ptr %pPage, align 8
  %33 = load ptr, ptr %ppPage.addr, align 8
  store ptr %32, ptr %33, align 8
  br label %if.end30

if.else:                                          ; preds = %if.end27
  %34 = load ptr, ptr %pPage, align 8
  call void @releasePage(ptr noundef %34)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %35 = load i32, ptr %rc, align 4
  %cmp31 = icmp eq i32 %35, 101
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end30
  br label %cond.end

cond.false:                                       ; preds = %if.end30
  %36 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond33 = phi i32 [ 0, %cond.true ], [ %36, %cond.false ]
  ret i32 %cond33
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapGet(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releasePage(ptr noundef) #0

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
