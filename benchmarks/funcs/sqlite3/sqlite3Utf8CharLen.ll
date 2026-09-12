; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Utf8CharLen(ptr noundef %zIn, i32 noundef %nByte) #0 {
entry:
  %zIn.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %z = alloca ptr, align 8
  %zTerm = alloca ptr, align 8
  store ptr %zIn, ptr %zIn.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store i32 0, ptr %r, align 4
  %0 = load ptr, ptr %zIn.addr, align 8
  store ptr %0, ptr %z, align 8
  %1 = load i32, ptr %nByte.addr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %z, align 8
  %3 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %zTerm, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %zTerm, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end
  %4 = load ptr, ptr %z, align 8
  %5 = load i8, ptr %4, align 1
  %conv = zext i8 %5 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %z, align 8
  %7 = load ptr, ptr %zTerm, align 8
  %cmp3 = icmp ult ptr %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end16

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %10 = load i8, ptr %9, align 1
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp sge i32 %conv5, 192
  br i1 %cmp6, label %if.then8, label %if.end15

if.then8:                                         ; preds = %while.body
  br label %while.cond9

while.cond9:                                      ; preds = %while.body13, %if.then8
  %11 = load ptr, ptr %z, align 8
  %12 = load i8, ptr %11, align 1
  %conv10 = zext i8 %12 to i32
  %and = and i32 %conv10, 192
  %cmp11 = icmp eq i32 %and, 128
  br i1 %cmp11, label %while.body13, label %while.end

while.body13:                                     ; preds = %while.cond9
  %13 = load ptr, ptr %z, align 8
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr14, ptr %z, align 8
  br label %while.cond9, !llvm.loop !6

while.end:                                        ; preds = %while.cond9
  br label %if.end15

if.end15:                                         ; preds = %while.end, %while.body
  %14 = load i32, ptr %r, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %r, align 4
  br label %while.cond, !llvm.loop !8

while.end16:                                      ; preds = %land.end
  %15 = load i32, ptr %r, align 4
  ret i32 %15
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
!8 = distinct !{!8, !7}
