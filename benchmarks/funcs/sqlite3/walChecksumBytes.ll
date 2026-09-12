; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden void @walChecksumBytes(i32 noundef %nativeCksum, ptr noundef %a, i32 noundef %nByte, ptr noundef %aIn, ptr noundef %aOut) #0 {
entry:
  %nativeCksum.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %nByte.addr = alloca i32, align 4
  %aIn.addr = alloca ptr, align 8
  %aOut.addr = alloca ptr, align 8
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %aData = alloca ptr, align 8
  %aEnd = alloca ptr, align 8
  store i32 %nativeCksum, ptr %nativeCksum.addr, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %nByte, ptr %nByte.addr, align 4
  store ptr %aIn, ptr %aIn.addr, align 8
  store ptr %aOut, ptr %aOut.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  store ptr %0, ptr %aData, align 8
  %1 = load ptr, ptr %a.addr, align 8
  %2 = load i32, ptr %nByte.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %aEnd, align 8
  %3 = load ptr, ptr %aIn.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %aIn.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 0
  %5 = load i32, ptr %arrayidx1, align 4
  store i32 %5, ptr %s1, align 4
  %6 = load ptr, ptr %aIn.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 1
  %7 = load i32, ptr %arrayidx2, align 4
  store i32 %7, ptr %s2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %s2, align 4
  store i32 0, ptr %s1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %nativeCksum.addr, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then4
  %9 = load ptr, ptr %aData, align 8
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %aData, align 8
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %s2, align 4
  %add = add i32 %10, %11
  %12 = load i32, ptr %s1, align 4
  %add5 = add i32 %12, %add
  store i32 %add5, ptr %s1, align 4
  %13 = load ptr, ptr %aData, align 8
  %incdec.ptr6 = getelementptr inbounds nuw i32, ptr %13, i32 1
  store ptr %incdec.ptr6, ptr %aData, align 8
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %s1, align 4
  %add7 = add i32 %14, %15
  %16 = load i32, ptr %s2, align 4
  %add8 = add i32 %16, %add7
  store i32 %add8, ptr %s2, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %17 = load ptr, ptr %aData, align 8
  %18 = load ptr, ptr %aEnd, align 8
  %cmp = icmp ult ptr %17, %18
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end45

if.else9:                                         ; preds = %if.end
  br label %do.body10

do.body10:                                        ; preds = %do.cond42, %if.else9
  %19 = load ptr, ptr %aData, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 0
  %20 = load i32, ptr %arrayidx11, align 4
  %and = and i32 %20, 255
  %shl = shl i32 %and, 24
  %21 = load ptr, ptr %aData, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 0
  %22 = load i32, ptr %arrayidx12, align 4
  %and13 = and i32 %22, 65280
  %shl14 = shl i32 %and13, 8
  %add15 = add i32 %shl, %shl14
  %23 = load ptr, ptr %aData, align 8
  %arrayidx16 = getelementptr inbounds i32, ptr %23, i64 0
  %24 = load i32, ptr %arrayidx16, align 4
  %and17 = and i32 %24, 16711680
  %shr = lshr i32 %and17, 8
  %add18 = add i32 %add15, %shr
  %25 = load ptr, ptr %aData, align 8
  %arrayidx19 = getelementptr inbounds i32, ptr %25, i64 0
  %26 = load i32, ptr %arrayidx19, align 4
  %and20 = and i32 %26, -16777216
  %shr21 = lshr i32 %and20, 24
  %add22 = add i32 %add18, %shr21
  %27 = load i32, ptr %s2, align 4
  %add23 = add i32 %add22, %27
  %28 = load i32, ptr %s1, align 4
  %add24 = add i32 %28, %add23
  store i32 %add24, ptr %s1, align 4
  %29 = load ptr, ptr %aData, align 8
  %arrayidx25 = getelementptr inbounds i32, ptr %29, i64 1
  %30 = load i32, ptr %arrayidx25, align 4
  %and26 = and i32 %30, 255
  %shl27 = shl i32 %and26, 24
  %31 = load ptr, ptr %aData, align 8
  %arrayidx28 = getelementptr inbounds i32, ptr %31, i64 1
  %32 = load i32, ptr %arrayidx28, align 4
  %and29 = and i32 %32, 65280
  %shl30 = shl i32 %and29, 8
  %add31 = add i32 %shl27, %shl30
  %33 = load ptr, ptr %aData, align 8
  %arrayidx32 = getelementptr inbounds i32, ptr %33, i64 1
  %34 = load i32, ptr %arrayidx32, align 4
  %and33 = and i32 %34, 16711680
  %shr34 = lshr i32 %and33, 8
  %add35 = add i32 %add31, %shr34
  %35 = load ptr, ptr %aData, align 8
  %arrayidx36 = getelementptr inbounds i32, ptr %35, i64 1
  %36 = load i32, ptr %arrayidx36, align 4
  %and37 = and i32 %36, -16777216
  %shr38 = lshr i32 %and37, 24
  %add39 = add i32 %add35, %shr38
  %37 = load i32, ptr %s1, align 4
  %add40 = add i32 %add39, %37
  %38 = load i32, ptr %s2, align 4
  %add41 = add i32 %38, %add40
  store i32 %add41, ptr %s2, align 4
  %39 = load ptr, ptr %aData, align 8
  %add.ptr = getelementptr inbounds i32, ptr %39, i64 2
  store ptr %add.ptr, ptr %aData, align 8
  br label %do.cond42

do.cond42:                                        ; preds = %do.body10
  %40 = load ptr, ptr %aData, align 8
  %41 = load ptr, ptr %aEnd, align 8
  %cmp43 = icmp ult ptr %40, %41
  br i1 %cmp43, label %do.body10, label %do.end44, !llvm.loop !8

do.end44:                                         ; preds = %do.cond42
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %do.end
  %42 = load i32, ptr %s1, align 4
  %43 = load ptr, ptr %aOut.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, ptr %43, i64 0
  store i32 %42, ptr %arrayidx46, align 4
  %44 = load i32, ptr %s2, align 4
  %45 = load ptr, ptr %aOut.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, ptr %45, i64 1
  store i32 %44, ptr %arrayidx47, align 4
  ret void
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
