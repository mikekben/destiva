; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Utf16ByteLen(ptr noundef %zIn, i32 noundef %nChar) #0 {
entry:
  %zIn.addr = alloca ptr, align 8
  %nChar.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %z = alloca ptr, align 8
  %n = alloca i32, align 4
  %c2 = alloca i32, align 4
  store ptr %zIn, ptr %zIn.addr, align 8
  store i32 %nChar, ptr %nChar.addr, align 4
  %0 = load ptr, ptr %zIn.addr, align 8
  store ptr %0, ptr %z, align 8
  store i32 0, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, ptr %n, align 4
  %2 = load i32, ptr %nChar.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %z, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %z, align 8
  %4 = load i8, ptr %3, align 1
  %conv = zext i8 %4 to i32
  store i32 %conv, ptr %c, align 4
  %5 = load ptr, ptr %z, align 8
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr1, ptr %z, align 8
  %6 = load i8, ptr %5, align 1
  %conv2 = zext i8 %6 to i32
  %shl = shl i32 %conv2, 8
  %7 = load i32, ptr %c, align 4
  %add = add nsw i32 %7, %shl
  store i32 %add, ptr %c, align 4
  %8 = load i32, ptr %c, align 4
  %cmp3 = icmp sge i32 %8, 55296
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = load i32, ptr %c, align 4
  %cmp5 = icmp slt i32 %9, 57344
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %z, align 8
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr7, ptr %z, align 8
  %11 = load i8, ptr %10, align 1
  %conv8 = zext i8 %11 to i32
  store i32 %conv8, ptr %c2, align 4
  %12 = load ptr, ptr %z, align 8
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr9, ptr %z, align 8
  %13 = load i8, ptr %12, align 1
  %conv10 = zext i8 %13 to i32
  %shl11 = shl i32 %conv10, 8
  %14 = load i32, ptr %c2, align 4
  %add12 = add nsw i32 %14, %shl11
  store i32 %add12, ptr %c2, align 4
  %15 = load i32, ptr %c2, align 4
  %and = and i32 %15, 1023
  %16 = load i32, ptr %c, align 4
  %and13 = and i32 %16, 63
  %shl14 = shl i32 %and13, 10
  %add15 = add nsw i32 %and, %shl14
  %17 = load i32, ptr %c, align 4
  %and16 = and i32 %17, 960
  %add17 = add nsw i32 %and16, 64
  %shl18 = shl i32 %add17, 10
  %add19 = add nsw i32 %add15, %shl18
  store i32 %add19, ptr %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %18 = load i32, ptr %n, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %n, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %19 = load ptr, ptr %z, align 8
  %20 = load ptr, ptr %zIn.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv20 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv20
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
