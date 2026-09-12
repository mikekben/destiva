; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeInitPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @setChildPtrmaps(ptr noundef %pPage) #0 {
entry:
  %retval = alloca i32, align 4
  %pPage.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nCell = alloca i32, align 4
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %pgno = alloca i32, align 4
  %pCell = alloca ptr, align 8
  %childPgno = alloca i32, align 4
  %childPgno24 = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pPage.addr, align 8
  %pgno2 = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %pgno2, align 4
  store i32 %3, ptr %pgno, align 4
  %4 = load ptr, ptr %pPage.addr, align 8
  %isInit = getelementptr inbounds nuw %struct.MemPage, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %isInit, align 8
  %conv = zext i8 %5 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load ptr, ptr %pPage.addr, align 8
  %call = call i32 @btreeInitPage(ptr noundef %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i32, ptr %rc, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load ptr, ptr %pPage.addr, align 8
  %nCell4 = getelementptr inbounds nuw %struct.MemPage, ptr %9, i32 0, i32 14
  %10 = load i16, ptr %nCell4, align 8
  %conv5 = zext i16 %10 to i32
  store i32 %conv5, ptr %nCell, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %nCell, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pPage.addr, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 19
  %14 = load ptr, ptr %aData, align 8
  %15 = load ptr, ptr %pPage.addr, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %15, i32 0, i32 15
  %16 = load i16, ptr %maskPage, align 2
  %conv8 = zext i16 %16 to i32
  %17 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %17, i32 0, i32 21
  %18 = load ptr, ptr %aCellIdx, align 8
  %19 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %19
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %18, i64 %idxprom
  %arrayidx9 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %20 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %20 to i32
  %shl = shl i32 %conv10, 8
  %21 = load ptr, ptr %pPage.addr, align 8
  %aCellIdx11 = getelementptr inbounds nuw %struct.MemPage, ptr %21, i32 0, i32 21
  %22 = load ptr, ptr %aCellIdx11, align 8
  %23 = load i32, ptr %i, align 4
  %mul12 = mul nsw i32 2, %23
  %idxprom13 = sext i32 %mul12 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %22, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds i8, ptr %arrayidx14, i64 1
  %24 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %24 to i32
  %or = or i32 %shl, %conv16
  %and = and i32 %conv8, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  store ptr %add.ptr, ptr %pCell, align 8
  %25 = load ptr, ptr %pPage.addr, align 8
  %26 = load ptr, ptr %pPage.addr, align 8
  %27 = load ptr, ptr %pCell, align 8
  call void @ptrmapPutOvflPtr(ptr noundef %25, ptr noundef %26, ptr noundef %27, ptr noundef %rc)
  %28 = load ptr, ptr %pPage.addr, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %28, i32 0, i32 5
  %29 = load i8, ptr %leaf, align 8
  %tobool17 = icmp ne i8 %29, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %for.body
  %30 = load ptr, ptr %pCell, align 8
  %call19 = call i32 @sqlite3Get4byte(ptr noundef %30)
  store i32 %call19, ptr %childPgno, align 4
  %31 = load ptr, ptr %pBt, align 8
  %32 = load i32, ptr %childPgno, align 4
  %33 = load i32, ptr %pgno, align 4
  call void @ptrmapPut(ptr noundef %31, i32 noundef %32, i8 noundef zeroext 5, i32 noundef %33, ptr noundef %rc)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %pPage.addr, align 8
  %leaf21 = getelementptr inbounds nuw %struct.MemPage, ptr %35, i32 0, i32 5
  %36 = load i8, ptr %leaf21, align 8
  %tobool22 = icmp ne i8 %36, 0
  br i1 %tobool22, label %if.end30, label %if.then23

if.then23:                                        ; preds = %for.end
  %37 = load ptr, ptr %pPage.addr, align 8
  %aData25 = getelementptr inbounds nuw %struct.MemPage, ptr %37, i32 0, i32 19
  %38 = load ptr, ptr %aData25, align 8
  %39 = load ptr, ptr %pPage.addr, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %39, i32 0, i32 6
  %40 = load i8, ptr %hdrOffset, align 1
  %conv26 = zext i8 %40 to i32
  %add = add nsw i32 %conv26, 8
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %38, i64 %idxprom27
  %call29 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx28)
  store i32 %call29, ptr %childPgno24, align 4
  %41 = load ptr, ptr %pBt, align 8
  %42 = load i32, ptr %childPgno24, align 4
  %43 = load i32, ptr %pgno, align 4
  call void @ptrmapPut(ptr noundef %41, i32 noundef %42, i8 noundef zeroext 5, i32 noundef %43, ptr noundef %rc)
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %for.end
  %44 = load i32, ptr %rc, align 4
  store i32 %44, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPut(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @ptrmapPutOvflPtr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
