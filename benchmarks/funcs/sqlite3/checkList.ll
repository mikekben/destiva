; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IntegrityCk = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.sqlite3_str, ptr }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

@.str.353 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.354 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.355 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.356 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.357 = external hidden unnamed_addr constant [21 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerGetData(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @checkList(ptr noundef %pCheck, i32 noundef %isFreeList, i32 noundef %iPage, i32 noundef %N) #0 {
entry:
  %pCheck.addr = alloca ptr, align 8
  %isFreeList.addr = alloca i32, align 4
  %iPage.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %expected = alloca i32, align 4
  %nErrAtStart = alloca i32, align 4
  %pOvflPage = alloca ptr, align 8
  %pOvflData = alloca ptr, align 8
  %n = alloca i32, align 4
  %iFreePage = alloca i32, align 4
  store ptr %pCheck, ptr %pCheck.addr, align 8
  store i32 %isFreeList, ptr %isFreeList.addr, align 4
  store i32 %iPage, ptr %iPage.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  %0 = load i32, ptr %N.addr, align 4
  store i32 %0, ptr %expected, align 4
  %1 = load ptr, ptr %pCheck.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.IntegrityCk, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %nErr, align 8
  store i32 %2, ptr %nErrAtStart, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %entry
  %3 = load i32, ptr %iPage.addr, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %pCheck.addr, align 8
  %mxErr = getelementptr inbounds nuw %struct.IntegrityCk, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %mxErr, align 4
  %tobool = icmp ne i32 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %pCheck.addr, align 8
  %8 = load i32, ptr %iPage.addr, align 4
  %call = call i32 @checkRef(ptr noundef %7, i32 noundef %8)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load i32, ptr %N.addr, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %N.addr, align 4
  %10 = load ptr, ptr %pCheck.addr, align 8
  %pPager = getelementptr inbounds nuw %struct.IntegrityCk, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pPager, align 8
  %12 = load i32, ptr %iPage.addr, align 4
  %call2 = call i32 @sqlite3PagerGet(ptr noundef %11, i32 noundef %12, ptr noundef %pOvflPage, i32 noundef 0)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %13 = load ptr, ptr %pCheck.addr, align 8
  %14 = load i32, ptr %iPage.addr, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %13, ptr noundef @.str.353, i32 noundef %14)
  br label %while.end

if.end5:                                          ; preds = %if.end
  %15 = load ptr, ptr %pOvflPage, align 8
  %call6 = call ptr @sqlite3PagerGetData(ptr noundef %15)
  store ptr %call6, ptr %pOvflData, align 8
  %16 = load i32, ptr %isFreeList.addr, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then8, label %if.else28

if.then8:                                         ; preds = %if.end5
  %17 = load ptr, ptr %pOvflData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %17, i64 4
  %call9 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call9, ptr %n, align 4
  %18 = load ptr, ptr %pCheck.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.IntegrityCk, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %19, i32 0, i32 5
  %20 = load i8, ptr %autoVacuum, align 1
  %tobool10 = icmp ne i8 %20, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  %21 = load ptr, ptr %pCheck.addr, align 8
  %22 = load i32, ptr %iPage.addr, align 4
  call void @checkPtrmap(ptr noundef %21, i32 noundef %22, i8 noundef zeroext 2, i32 noundef 0)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then8
  %23 = load i32, ptr %n, align 4
  %24 = load ptr, ptr %pCheck.addr, align 8
  %pBt13 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pBt13, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %25, i32 0, i32 16
  %26 = load i32, ptr %usableSize, align 4
  %div = udiv i32 %26, 4
  %sub = sub i32 %div, 2
  %cmp14 = icmp ugt i32 %23, %sub
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %27 = load ptr, ptr %pCheck.addr, align 8
  %28 = load i32, ptr %iPage.addr, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %27, ptr noundef @.str.354, i32 noundef %28)
  %29 = load i32, ptr %N.addr, align 4
  %dec16 = add i32 %29, -1
  store i32 %dec16, ptr %N.addr, align 4
  br label %if.end27

if.else:                                          ; preds = %if.end12
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %n, align 4
  %cmp17 = icmp slt i32 %30, %31
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %pOvflData, align 8
  %33 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %33, 4
  %add = add nsw i32 8, %mul
  %idxprom = sext i32 %add to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %32, i64 %idxprom
  %call19 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx18)
  store i32 %call19, ptr %iFreePage, align 4
  %34 = load ptr, ptr %pCheck.addr, align 8
  %pBt20 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pBt20, align 8
  %autoVacuum21 = getelementptr inbounds nuw %struct.BtShared, ptr %35, i32 0, i32 5
  %36 = load i8, ptr %autoVacuum21, align 1
  %tobool22 = icmp ne i8 %36, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body
  %37 = load ptr, ptr %pCheck.addr, align 8
  %38 = load i32, ptr %iFreePage, align 4
  call void @checkPtrmap(ptr noundef %37, i32 noundef %38, i8 noundef zeroext 2, i32 noundef 0)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.body
  %39 = load ptr, ptr %pCheck.addr, align 8
  %40 = load i32, ptr %iFreePage, align 4
  %call25 = call i32 @checkRef(ptr noundef %39, i32 noundef %40)
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %41 = load i32, ptr %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %42 = load i32, ptr %n, align 4
  %43 = load i32, ptr %N.addr, align 4
  %sub26 = sub i32 %43, %42
  store i32 %sub26, ptr %N.addr, align 4
  br label %if.end27

if.end27:                                         ; preds = %for.end, %if.then15
  br label %if.end37

if.else28:                                        ; preds = %if.end5
  %44 = load ptr, ptr %pCheck.addr, align 8
  %pBt29 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %pBt29, align 8
  %autoVacuum30 = getelementptr inbounds nuw %struct.BtShared, ptr %45, i32 0, i32 5
  %46 = load i8, ptr %autoVacuum30, align 1
  %conv = zext i8 %46 to i32
  %tobool31 = icmp ne i32 %conv, 0
  br i1 %tobool31, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %if.else28
  %47 = load i32, ptr %N.addr, align 4
  %cmp32 = icmp ugt i32 %47, 0
  br i1 %cmp32, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true
  %48 = load ptr, ptr %pOvflData, align 8
  %call35 = call i32 @sqlite3Get4byte(ptr noundef %48)
  store i32 %call35, ptr %i, align 4
  %49 = load ptr, ptr %pCheck.addr, align 8
  %50 = load i32, ptr %i, align 4
  %51 = load i32, ptr %iPage.addr, align 4
  call void @checkPtrmap(ptr noundef %49, i32 noundef %50, i8 noundef zeroext 4, i32 noundef %51)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %land.lhs.true, %if.else28
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end27
  %52 = load ptr, ptr %pOvflData, align 8
  %call38 = call i32 @sqlite3Get4byte(ptr noundef %52)
  store i32 %call38, ptr %iPage.addr, align 4
  %53 = load ptr, ptr %pOvflPage, align 8
  call void @sqlite3PagerUnref(ptr noundef %53)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then4, %if.then, %land.end
  %54 = load i32, ptr %N.addr, align 4
  %tobool39 = icmp ne i32 %54, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.end47

land.lhs.true40:                                  ; preds = %while.end
  %55 = load i32, ptr %nErrAtStart, align 4
  %56 = load ptr, ptr %pCheck.addr, align 8
  %nErr41 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %56, i32 0, i32 5
  %57 = load i32, ptr %nErr41, align 8
  %cmp42 = icmp eq i32 %55, %57
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %land.lhs.true40
  %58 = load ptr, ptr %pCheck.addr, align 8
  %59 = load i32, ptr %isFreeList.addr, align 4
  %tobool45 = icmp ne i32 %59, 0
  %60 = zext i1 %tobool45 to i64
  %cond = select i1 %tobool45, ptr @.str.356, ptr @.str.357
  %61 = load i32, ptr %expected, align 4
  %62 = load i32, ptr %N.addr, align 4
  %sub46 = sub i32 %61, %62
  %63 = load i32, ptr %expected, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %58, ptr noundef @.str.355, ptr noundef %cond, i32 noundef %sub46, i32 noundef %63)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %land.lhs.true40, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @checkAppendMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkPtrmap(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @checkRef(ptr noundef, i32 noundef) #0

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
