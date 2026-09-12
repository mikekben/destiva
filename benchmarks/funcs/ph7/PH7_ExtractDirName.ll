; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.155 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.156 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_ExtractDirName(ptr noundef %zPath, i32 noundef %nByte, ptr noundef %pLen) #0 {
entry:
  %retval = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %pLen.addr = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %pLen, ptr %pLen.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  store i32 47, ptr %d, align 4
  store i32 47, ptr %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %zEnd, align 8
  %3 = load ptr, ptr %zPath.addr, align 8
  %cmp = icmp ugt ptr %2, %3
  br i1 %cmp, label %land.rhs, label %land.end9

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %zEnd, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %6 = load i32, ptr %c, align 4
  %cmp2 = icmp ne i32 %conv, %6
  br i1 %cmp2, label %land.rhs4, label %land.end

land.rhs4:                                        ; preds = %land.rhs
  %7 = load ptr, ptr %zEnd, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %7, i64 0
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  %9 = load i32, ptr %d, align 4
  %cmp7 = icmp ne i32 %conv6, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs4, %land.rhs
  %10 = phi i1 [ false, %land.rhs ], [ %cmp7, %land.rhs4 ]
  br label %land.end9

land.end9:                                        ; preds = %land.end, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %10, %land.end ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end9
  %12 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end9
  %13 = load ptr, ptr %zEnd, align 8
  %14 = load ptr, ptr %zPath.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv10 = trunc i64 %sub.ptr.sub to i32
  %15 = load ptr, ptr %pLen.addr, align 8
  store i32 %conv10, ptr %15, align 4
  %16 = load ptr, ptr %zEnd, align 8
  %17 = load ptr, ptr %zPath.addr, align 8
  %cmp11 = icmp eq ptr %16, %17
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %18 = load ptr, ptr %zEnd, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %18, i64 0
  %19 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %19 to i32
  %20 = load i32, ptr %c, align 4
  %cmp15 = icmp ne i32 %conv14, %20
  br i1 %cmp15, label %land.lhs.true17, label %if.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %21 = load ptr, ptr %zEnd, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %21, i64 0
  %22 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %22 to i32
  %23 = load i32, ptr %d, align 4
  %cmp20 = icmp ne i32 %conv19, %23
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true17
  %24 = load ptr, ptr %pLen.addr, align 8
  store i32 1, ptr %24, align 4
  store ptr @.str.156, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true17, %land.lhs.true, %while.end
  %25 = load ptr, ptr %pLen.addr, align 8
  %26 = load i32, ptr %25, align 4
  %cmp22 = icmp eq i32 %26, 0
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  %27 = load ptr, ptr %pLen.addr, align 8
  store i32 1, ptr %27, align 4
  store ptr @.str.155, ptr %retval, align 8
  br label %return

if.end25:                                         ; preds = %if.end
  %28 = load ptr, ptr %zPath.addr, align 8
  store ptr %28, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %if.then24, %if.then
  %29 = load ptr, ptr %retval, align 8
  ret ptr %29
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
