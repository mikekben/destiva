; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @SyByteFind2(ptr noundef %zStr, i32 noundef %nLen, i32 noundef %c, ptr noundef %pPos) #0 {
entry:
  %retval = alloca i32, align 4
  %zStr.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %pPos.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  store ptr %zStr, ptr %zStr.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  store ptr %pPos, ptr %pPos.addr, align 8
  %0 = load ptr, ptr %zStr.addr, align 8
  store ptr %0, ptr %zIn, align 8
  %1 = load ptr, ptr %zIn, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %sub = sub i32 %2, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end61, %entry
  %3 = load ptr, ptr %zEnd, align 8
  %4 = load ptr, ptr %zIn, align 8
  %cmp = icmp ult ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %zEnd, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  %7 = load i32, ptr %c.addr, align 4
  %cmp2 = icmp eq i32 %conv, %7
  br i1 %cmp2, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pPos.addr, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then4
  %9 = load ptr, ptr %zEnd, align 8
  %10 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv6 = trunc i64 %sub.ptr.sub to i32
  %11 = load ptr, ptr %pPos.addr, align 8
  store i32 %conv6, ptr %11, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then4
  store i32 0, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %12 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  %13 = load ptr, ptr %zEnd, align 8
  %14 = load ptr, ptr %zIn, align 8
  %cmp9 = icmp ult ptr %13, %14
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  br label %for.end

if.end12:                                         ; preds = %if.end8
  %15 = load ptr, ptr %zEnd, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %15, i64 0
  %16 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %16 to i32
  %17 = load i32, ptr %c.addr, align 4
  %cmp15 = icmp eq i32 %conv14, %17
  br i1 %cmp15, label %if.then17, label %if.end25

if.then17:                                        ; preds = %if.end12
  %18 = load ptr, ptr %pPos.addr, align 8
  %tobool18 = icmp ne ptr %18, null
  br i1 %tobool18, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.then17
  %19 = load ptr, ptr %zEnd, align 8
  %20 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast20 = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast21 = ptrtoint ptr %20 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %conv23 = trunc i64 %sub.ptr.sub22 to i32
  %21 = load ptr, ptr %pPos.addr, align 8
  store i32 %conv23, ptr %21, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then17
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end12
  %22 = load ptr, ptr %zEnd, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %22, i32 -1
  store ptr %incdec.ptr26, ptr %zEnd, align 8
  %23 = load ptr, ptr %zEnd, align 8
  %24 = load ptr, ptr %zIn, align 8
  %cmp27 = icmp ult ptr %23, %24
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end25
  br label %for.end

if.end30:                                         ; preds = %if.end25
  %25 = load ptr, ptr %zEnd, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %25, i64 0
  %26 = load i8, ptr %arrayidx31, align 1
  %conv32 = sext i8 %26 to i32
  %27 = load i32, ptr %c.addr, align 4
  %cmp33 = icmp eq i32 %conv32, %27
  br i1 %cmp33, label %if.then35, label %if.end43

if.then35:                                        ; preds = %if.end30
  %28 = load ptr, ptr %pPos.addr, align 8
  %tobool36 = icmp ne ptr %28, null
  br i1 %tobool36, label %if.then37, label %if.end42

if.then37:                                        ; preds = %if.then35
  %29 = load ptr, ptr %zEnd, align 8
  %30 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast38 = ptrtoint ptr %29 to i64
  %sub.ptr.rhs.cast39 = ptrtoint ptr %30 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %conv41 = trunc i64 %sub.ptr.sub40 to i32
  %31 = load ptr, ptr %pPos.addr, align 8
  store i32 %conv41, ptr %31, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %if.then35
  store i32 0, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end30
  %32 = load ptr, ptr %zEnd, align 8
  %incdec.ptr44 = getelementptr inbounds i8, ptr %32, i32 -1
  store ptr %incdec.ptr44, ptr %zEnd, align 8
  %33 = load ptr, ptr %zEnd, align 8
  %34 = load ptr, ptr %zIn, align 8
  %cmp45 = icmp ult ptr %33, %34
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end43
  br label %for.end

if.end48:                                         ; preds = %if.end43
  %35 = load ptr, ptr %zEnd, align 8
  %arrayidx49 = getelementptr inbounds i8, ptr %35, i64 0
  %36 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %36 to i32
  %37 = load i32, ptr %c.addr, align 4
  %cmp51 = icmp eq i32 %conv50, %37
  br i1 %cmp51, label %if.then53, label %if.end61

if.then53:                                        ; preds = %if.end48
  %38 = load ptr, ptr %pPos.addr, align 8
  %tobool54 = icmp ne ptr %38, null
  br i1 %tobool54, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.then53
  %39 = load ptr, ptr %zEnd, align 8
  %40 = load ptr, ptr %zIn, align 8
  %sub.ptr.lhs.cast56 = ptrtoint ptr %39 to i64
  %sub.ptr.rhs.cast57 = ptrtoint ptr %40 to i64
  %sub.ptr.sub58 = sub i64 %sub.ptr.lhs.cast56, %sub.ptr.rhs.cast57
  %conv59 = trunc i64 %sub.ptr.sub58 to i32
  %41 = load ptr, ptr %pPos.addr, align 8
  store i32 %conv59, ptr %41, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.then53
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %if.end48
  %42 = load ptr, ptr %zEnd, align 8
  %incdec.ptr62 = getelementptr inbounds i8, ptr %42, i32 -1
  store ptr %incdec.ptr62, ptr %zEnd, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then47, %if.then29, %if.then11, %if.then
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end60, %if.end42, %if.end24, %if.end7
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
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
