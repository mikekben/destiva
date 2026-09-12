; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_strnicmp(ptr noundef %zLeft, ptr noundef %zRight, i32 noundef %N) #0 {
entry:
  %retval = alloca i32, align 4
  %zLeft.addr = alloca ptr, align 8
  %zRight.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %zLeft, ptr %zLeft.addr, align 8
  store ptr %zRight, ptr %zRight.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %zLeft.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zRight.addr, align 8
  %tobool = icmp ne ptr %1, null
  %2 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 -1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %zRight.addr, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %zLeft.addr, align 8
  store ptr %4, ptr %a, align 8
  %5 = load ptr, ptr %zRight.addr, align 8
  store ptr %5, ptr %b, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %6 = load i32, ptr %N.addr, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %N.addr, align 4
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %7 = load ptr, ptr %a, align 8
  %8 = load i8, ptr %7, align 1
  %conv = zext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %a, align 8
  %10 = load i8, ptr %9, align 1
  %idxprom = zext i8 %10 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom
  %11 = load i8, ptr %arrayidx, align 1
  %conv7 = zext i8 %11 to i32
  %12 = load ptr, ptr %b, align 8
  %13 = load i8, ptr %12, align 1
  %idxprom8 = zext i8 %13 to i64
  %arrayidx9 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom8
  %14 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %14 to i32
  %cmp11 = icmp eq i32 %conv7, %conv10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load ptr, ptr %a, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %a, align 8
  %17 = load ptr, ptr %b, align 8
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr13, ptr %b, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %18 = load i32, ptr %N.addr, align 4
  %cmp14 = icmp slt i32 %18, 0
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %19 = load ptr, ptr %a, align 8
  %20 = load i8, ptr %19, align 1
  %idxprom16 = zext i8 %20 to i64
  %arrayidx17 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom16
  %21 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %21 to i32
  %22 = load ptr, ptr %b, align 8
  %23 = load i8, ptr %22, align 1
  %idxprom19 = zext i8 %23 to i64
  %arrayidx20 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom19
  %24 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %24 to i32
  %sub = sub nsw i32 %conv18, %conv21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond22, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then2, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
