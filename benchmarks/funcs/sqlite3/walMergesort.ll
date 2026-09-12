; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sublist = type { i32, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden void @walMergesort(ptr noundef %aContent, ptr noundef %aBuffer, ptr noundef %aList, ptr noundef %pnList) #1 {
entry:
  %aContent.addr = alloca ptr, align 8
  %aBuffer.addr = alloca ptr, align 8
  %aList.addr = alloca ptr, align 8
  %pnList.addr = alloca ptr, align 8
  %nList = alloca i32, align 4
  %nMerge = alloca i32, align 4
  %aMerge = alloca ptr, align 8
  %iList = alloca i32, align 4
  %iSub = alloca i32, align 4
  %aSub = alloca [13 x %struct.Sublist], align 16
  %p = alloca ptr, align 8
  %p23 = alloca ptr, align 8
  store ptr %aContent, ptr %aContent.addr, align 8
  store ptr %aBuffer, ptr %aBuffer.addr, align 8
  store ptr %aList, ptr %aList.addr, align 8
  store ptr %pnList, ptr %pnList.addr, align 8
  %0 = load ptr, ptr %pnList.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %nList, align 4
  store i32 0, ptr %nMerge, align 4
  store ptr null, ptr %aMerge, align 8
  store i32 0, ptr %iSub, align 4
  %arraydecay = getelementptr inbounds [13 x %struct.Sublist], ptr %aSub, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 208, i1 false)
  store i32 0, ptr %iList, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %2 = load i32, ptr %iList, align 4
  %3 = load i32, ptr %nList, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %nMerge, align 4
  %4 = load ptr, ptr %aList.addr, align 8
  %5 = load i32, ptr %iList, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i16, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %aMerge, align 8
  store i32 0, ptr %iSub, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %iList, align 4
  %7 = load i32, ptr %iSub, align 4
  %shl = shl i32 1, %7
  %and = and i32 %6, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %8 = load i32, ptr %iSub, align 4
  %idxprom3 = zext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds nuw [13 x %struct.Sublist], ptr %aSub, i64 0, i64 %idxprom3
  store ptr %arrayidx4, ptr %p, align 8
  %9 = load ptr, ptr %aContent.addr, align 8
  %10 = load ptr, ptr %p, align 8
  %aList5 = getelementptr inbounds nuw %struct.Sublist, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %aList5, align 8
  %12 = load ptr, ptr %p, align 8
  %nList6 = getelementptr inbounds nuw %struct.Sublist, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nList6, align 8
  %14 = load ptr, ptr %aBuffer.addr, align 8
  call void @walMerge(ptr noundef %9, ptr noundef %11, i32 noundef %13, ptr noundef %aMerge, ptr noundef %nMerge, ptr noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body2
  %15 = load i32, ptr %iSub, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %iSub, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  %16 = load ptr, ptr %aMerge, align 8
  %17 = load i32, ptr %iSub, align 4
  %idxprom7 = zext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds nuw [13 x %struct.Sublist], ptr %aSub, i64 0, i64 %idxprom7
  %aList9 = getelementptr inbounds nuw %struct.Sublist, ptr %arrayidx8, i32 0, i32 1
  store ptr %16, ptr %aList9, align 8
  %18 = load i32, ptr %nMerge, align 4
  %19 = load i32, ptr %iSub, align 4
  %idxprom10 = zext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds nuw [13 x %struct.Sublist], ptr %aSub, i64 0, i64 %idxprom10
  %nList12 = getelementptr inbounds nuw %struct.Sublist, ptr %arrayidx11, i32 0, i32 0
  store i32 %18, ptr %nList12, align 16
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %20 = load i32, ptr %iList, align 4
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, ptr %iList, align 4
  br label %for.cond, !llvm.loop !8

for.end15:                                        ; preds = %for.cond
  %21 = load i32, ptr %iSub, align 4
  %inc16 = add i32 %21, 1
  store i32 %inc16, ptr %iSub, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc28, %for.end15
  %22 = load i32, ptr %iSub, align 4
  %cmp18 = icmp ult i32 %22, 13
  br i1 %cmp18, label %for.body19, label %for.end30

for.body19:                                       ; preds = %for.cond17
  %23 = load i32, ptr %nList, align 4
  %24 = load i32, ptr %iSub, align 4
  %shl20 = shl i32 1, %24
  %and21 = and i32 %23, %shl20
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body19
  %25 = load i32, ptr %iSub, align 4
  %idxprom24 = zext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds nuw [13 x %struct.Sublist], ptr %aSub, i64 0, i64 %idxprom24
  store ptr %arrayidx25, ptr %p23, align 8
  %26 = load ptr, ptr %aContent.addr, align 8
  %27 = load ptr, ptr %p23, align 8
  %aList26 = getelementptr inbounds nuw %struct.Sublist, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %aList26, align 8
  %29 = load ptr, ptr %p23, align 8
  %nList27 = getelementptr inbounds nuw %struct.Sublist, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %nList27, align 8
  %31 = load ptr, ptr %aBuffer.addr, align 8
  call void @walMerge(ptr noundef %26, ptr noundef %28, i32 noundef %30, ptr noundef %aMerge, ptr noundef %nMerge, ptr noundef %31)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body19
  br label %for.inc28

for.inc28:                                        ; preds = %if.end
  %32 = load i32, ptr %iSub, align 4
  %inc29 = add i32 %32, 1
  store i32 %inc29, ptr %iSub, align 4
  br label %for.cond17, !llvm.loop !9

for.end30:                                        ; preds = %for.cond17
  %33 = load i32, ptr %nMerge, align 4
  %34 = load ptr, ptr %pnList.addr, align 8
  store i32 %33, ptr %34, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @walMerge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !7}
