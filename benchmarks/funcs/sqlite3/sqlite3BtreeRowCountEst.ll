; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i64 @sqlite3BtreeRowCountEst(ptr noundef %pCur) #0 {
entry:
  %retval = alloca i64, align 8
  %pCur.addr = alloca ptr, align 8
  %n = alloca i64, align 8
  %i = alloca i8, align 1
  store ptr %pCur, ptr %pCur.addr, align 8
  %0 = load ptr, ptr %pCur.addr, align 8
  %eState = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %eState, align 8
  %conv = zext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pCur.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 18
  %3 = load ptr, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 5
  %4 = load i8, ptr %leaf, align 8
  %conv2 = zext i8 %4 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i64 -1, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %pCur.addr, align 8
  %pPage7 = getelementptr inbounds nuw %struct.BtCursor, ptr %5, i32 0, i32 18
  %6 = load ptr, ptr %pPage7, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %6, i32 0, i32 14
  %7 = load i16, ptr %nCell, align 8
  %conv8 = zext i16 %7 to i64
  store i64 %conv8, ptr %n, align 8
  store i8 0, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %8 = load i8, ptr %i, align 1
  %conv9 = zext i8 %8 to i32
  %9 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 13
  %10 = load i8, ptr %iPage, align 4
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp slt i32 %conv9, %conv10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pCur.addr, align 8
  %apPage = getelementptr inbounds nuw %struct.BtCursor, ptr %11, i32 0, i32 19
  %12 = load i8, ptr %i, align 1
  %idxprom = zext i8 %12 to i64
  %arrayidx = getelementptr inbounds nuw [19 x ptr], ptr %apPage, i64 0, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  %nCell13 = getelementptr inbounds nuw %struct.MemPage, ptr %13, i32 0, i32 14
  %14 = load i16, ptr %nCell13, align 8
  %conv14 = zext i16 %14 to i64
  %15 = load i64, ptr %n, align 8
  %mul = mul nsw i64 %15, %conv14
  store i64 %mul, ptr %n, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8, ptr %i, align 1
  %inc = add i8 %16, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load i64, ptr %n, align 8
  store i64 %17, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %18 = load i64, ptr %retval, align 8
  ret i64 %18
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
