; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyByteListFind(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %zList, ptr noundef %pFirstPos) #0 {
entry:
  %retval = alloca i32, align 4
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %zList.addr = alloca ptr, align 8
  %pFirstPos.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %zList, ptr %zList.addr, align 8
  store ptr %pFirstPos, ptr %pFirstPos.addr, align 8
  %0 = load ptr, ptr %zSrc.addr, align 8
  store ptr %0, ptr %zIn, align 8
  %1 = load ptr, ptr %zSrc.addr, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end94, %entry
  %3 = load ptr, ptr %zIn, align 8
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end96

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %zList.addr, align 8
  store ptr %5, ptr %zPtr, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %zPtr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %6, i64 0
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %7 to i32
  store i32 %conv, ptr %c, align 4
  %cmp3 = icmp ne i32 %conv, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  %8 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %10 = load i32, ptr %c, align 4
  %cmp7 = icmp eq i32 %conv6, %10
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %for.body
  %11 = load ptr, ptr %pFirstPos.addr, align 8
  %tobool = icmp ne ptr %11, null
  br i1 %tobool, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then9
  %12 = load ptr, ptr %zIn, align 8
  %13 = load ptr, ptr %zSrc.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv11 = trunc i64 %sub.ptr.sub to i32
  %14 = load ptr, ptr %pFirstPos.addr, align 8
  store i32 %conv11, ptr %14, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then9
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %15 = load ptr, ptr %zPtr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %zPtr, align 8
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  %16 = load ptr, ptr %zIn, align 8
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr14, ptr %zIn, align 8
  %17 = load ptr, ptr %zIn, align 8
  %18 = load ptr, ptr %zEnd, align 8
  %cmp15 = icmp uge ptr %17, %18
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.end
  br label %for.end96

if.end18:                                         ; preds = %for.end
  %19 = load ptr, ptr %zList.addr, align 8
  store ptr %19, ptr %zPtr, align 8
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc38, %if.end18
  %20 = load ptr, ptr %zPtr, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %21 to i32
  store i32 %conv21, ptr %c, align 4
  %cmp22 = icmp ne i32 %conv21, 0
  br i1 %cmp22, label %for.body24, label %for.end40

for.body24:                                       ; preds = %for.cond19
  %22 = load ptr, ptr %zIn, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %23 to i32
  %24 = load i32, ptr %c, align 4
  %cmp27 = icmp eq i32 %conv26, %24
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %for.body24
  %25 = load ptr, ptr %pFirstPos.addr, align 8
  %tobool30 = icmp ne ptr %25, null
  br i1 %tobool30, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.then29
  %26 = load ptr, ptr %zIn, align 8
  %27 = load ptr, ptr %zSrc.addr, align 8
  %sub.ptr.lhs.cast32 = ptrtoint ptr %26 to i64
  %sub.ptr.rhs.cast33 = ptrtoint ptr %27 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %conv35 = trunc i64 %sub.ptr.sub34 to i32
  %28 = load ptr, ptr %pFirstPos.addr, align 8
  store i32 %conv35, ptr %28, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.then29
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %for.body24
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %29 = load ptr, ptr %zPtr, align 8
  %incdec.ptr39 = getelementptr inbounds nuw i8, ptr %29, i32 1
  store ptr %incdec.ptr39, ptr %zPtr, align 8
  br label %for.cond19, !llvm.loop !8

for.end40:                                        ; preds = %for.cond19
  %30 = load ptr, ptr %zIn, align 8
  %incdec.ptr41 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr41, ptr %zIn, align 8
  %31 = load ptr, ptr %zIn, align 8
  %32 = load ptr, ptr %zEnd, align 8
  %cmp42 = icmp uge ptr %31, %32
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.end40
  br label %for.end96

if.end45:                                         ; preds = %for.end40
  %33 = load ptr, ptr %zList.addr, align 8
  store ptr %33, ptr %zPtr, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc65, %if.end45
  %34 = load ptr, ptr %zPtr, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %34, i64 0
  %35 = load i8, ptr %arrayidx47, align 1
  %conv48 = sext i8 %35 to i32
  store i32 %conv48, ptr %c, align 4
  %cmp49 = icmp ne i32 %conv48, 0
  br i1 %cmp49, label %for.body51, label %for.end67

for.body51:                                       ; preds = %for.cond46
  %36 = load ptr, ptr %zIn, align 8
  %arrayidx52 = getelementptr inbounds i8, ptr %36, i64 0
  %37 = load i8, ptr %arrayidx52, align 1
  %conv53 = sext i8 %37 to i32
  %38 = load i32, ptr %c, align 4
  %cmp54 = icmp eq i32 %conv53, %38
  br i1 %cmp54, label %if.then56, label %if.end64

if.then56:                                        ; preds = %for.body51
  %39 = load ptr, ptr %pFirstPos.addr, align 8
  %tobool57 = icmp ne ptr %39, null
  br i1 %tobool57, label %if.then58, label %if.end63

if.then58:                                        ; preds = %if.then56
  %40 = load ptr, ptr %zIn, align 8
  %41 = load ptr, ptr %zSrc.addr, align 8
  %sub.ptr.lhs.cast59 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast60 = ptrtoint ptr %41 to i64
  %sub.ptr.sub61 = sub i64 %sub.ptr.lhs.cast59, %sub.ptr.rhs.cast60
  %conv62 = trunc i64 %sub.ptr.sub61 to i32
  %42 = load ptr, ptr %pFirstPos.addr, align 8
  store i32 %conv62, ptr %42, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %if.then56
  store i32 0, ptr %retval, align 4
  br label %return

if.end64:                                         ; preds = %for.body51
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %43 = load ptr, ptr %zPtr, align 8
  %incdec.ptr66 = getelementptr inbounds nuw i8, ptr %43, i32 1
  store ptr %incdec.ptr66, ptr %zPtr, align 8
  br label %for.cond46, !llvm.loop !9

for.end67:                                        ; preds = %for.cond46
  %44 = load ptr, ptr %zIn, align 8
  %incdec.ptr68 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr68, ptr %zIn, align 8
  %45 = load ptr, ptr %zIn, align 8
  %46 = load ptr, ptr %zEnd, align 8
  %cmp69 = icmp uge ptr %45, %46
  br i1 %cmp69, label %if.then71, label %if.end72

if.then71:                                        ; preds = %for.end67
  br label %for.end96

if.end72:                                         ; preds = %for.end67
  %47 = load ptr, ptr %zList.addr, align 8
  store ptr %47, ptr %zPtr, align 8
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc92, %if.end72
  %48 = load ptr, ptr %zPtr, align 8
  %arrayidx74 = getelementptr inbounds i8, ptr %48, i64 0
  %49 = load i8, ptr %arrayidx74, align 1
  %conv75 = sext i8 %49 to i32
  store i32 %conv75, ptr %c, align 4
  %cmp76 = icmp ne i32 %conv75, 0
  br i1 %cmp76, label %for.body78, label %for.end94

for.body78:                                       ; preds = %for.cond73
  %50 = load ptr, ptr %zIn, align 8
  %arrayidx79 = getelementptr inbounds i8, ptr %50, i64 0
  %51 = load i8, ptr %arrayidx79, align 1
  %conv80 = sext i8 %51 to i32
  %52 = load i32, ptr %c, align 4
  %cmp81 = icmp eq i32 %conv80, %52
  br i1 %cmp81, label %if.then83, label %if.end91

if.then83:                                        ; preds = %for.body78
  %53 = load ptr, ptr %pFirstPos.addr, align 8
  %tobool84 = icmp ne ptr %53, null
  br i1 %tobool84, label %if.then85, label %if.end90

if.then85:                                        ; preds = %if.then83
  %54 = load ptr, ptr %zIn, align 8
  %55 = load ptr, ptr %zSrc.addr, align 8
  %sub.ptr.lhs.cast86 = ptrtoint ptr %54 to i64
  %sub.ptr.rhs.cast87 = ptrtoint ptr %55 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.rhs.cast87
  %conv89 = trunc i64 %sub.ptr.sub88 to i32
  %56 = load ptr, ptr %pFirstPos.addr, align 8
  store i32 %conv89, ptr %56, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.then83
  store i32 0, ptr %retval, align 4
  br label %return

if.end91:                                         ; preds = %for.body78
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %57 = load ptr, ptr %zPtr, align 8
  %incdec.ptr93 = getelementptr inbounds nuw i8, ptr %57, i32 1
  store ptr %incdec.ptr93, ptr %zPtr, align 8
  br label %for.cond73, !llvm.loop !10

for.end94:                                        ; preds = %for.cond73
  %58 = load ptr, ptr %zIn, align 8
  %incdec.ptr95 = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr95, ptr %zIn, align 8
  br label %for.cond

for.end96:                                        ; preds = %if.then71, %if.then44, %if.then17, %if.then
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end96, %if.end90, %if.end63, %if.end36, %if.end12
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
