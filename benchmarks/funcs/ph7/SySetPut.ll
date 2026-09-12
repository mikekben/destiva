; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @SySetPut(ptr noundef %pSet, ptr noundef %pItem) #0 {
entry:
  %retval = alloca i32, align 4
  %pSet.addr = alloca ptr, align 8
  %pItem.addr = alloca ptr, align 8
  %zbase = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %xSrc = alloca ptr, align 8
  %xDst = alloca ptr, align 8
  %xLen = alloca i32, align 4
  store ptr %pSet, ptr %pSet.addr, align 8
  store ptr %pItem, ptr %pItem.addr, align 8
  %0 = load ptr, ptr %pSet.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nUsed, align 8
  %2 = load ptr, ptr %pSet.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.SySet, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %nSize, align 4
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pSet.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SySet, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pAllocator, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 -4, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %pSet.addr, align 8
  %nSize3 = getelementptr inbounds nuw %struct.SySet, ptr %6, i32 0, i32 3
  %7 = load i32, ptr %nSize3, align 4
  %cmp4 = icmp ule i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %pSet.addr, align 8
  %nSize6 = getelementptr inbounds nuw %struct.SySet, ptr %8, i32 0, i32 3
  store i32 4, ptr %nSize6, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %9 = load ptr, ptr %pSet.addr, align 8
  %pAllocator8 = getelementptr inbounds nuw %struct.SySet, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pAllocator8, align 8
  %11 = load ptr, ptr %pSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pBase, align 8
  %13 = load ptr, ptr %pSet.addr, align 8
  %eSize = getelementptr inbounds nuw %struct.SySet, ptr %13, i32 0, i32 4
  %14 = load i32, ptr %eSize, align 8
  %15 = load ptr, ptr %pSet.addr, align 8
  %nSize9 = getelementptr inbounds nuw %struct.SySet, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %nSize9, align 4
  %mul = mul i32 %14, %16
  %mul10 = mul i32 %mul, 2
  %call = call ptr @SyMemBackendRealloc(ptr noundef %10, ptr noundef %12, i32 noundef %mul10)
  store ptr %call, ptr %pNew, align 8
  %17 = load ptr, ptr %pNew, align 8
  %cmp11 = icmp eq ptr %17, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  store i32 -1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end7
  %18 = load ptr, ptr %pNew, align 8
  %19 = load ptr, ptr %pSet.addr, align 8
  %pBase14 = getelementptr inbounds nuw %struct.SySet, ptr %19, i32 0, i32 1
  store ptr %18, ptr %pBase14, align 8
  %20 = load ptr, ptr %pSet.addr, align 8
  %nSize15 = getelementptr inbounds nuw %struct.SySet, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %nSize15, align 4
  %shl = shl i32 %21, 1
  store i32 %shl, ptr %nSize15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %entry
  %22 = load ptr, ptr %pSet.addr, align 8
  %pBase17 = getelementptr inbounds nuw %struct.SySet, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %pBase17, align 8
  store ptr %23, ptr %zbase, align 8
  %24 = load ptr, ptr %pItem.addr, align 8
  store ptr %24, ptr %xSrc, align 8
  %25 = load ptr, ptr %zbase, align 8
  %26 = load ptr, ptr %pSet.addr, align 8
  %nUsed18 = getelementptr inbounds nuw %struct.SySet, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %nUsed18, align 8
  %28 = load ptr, ptr %pSet.addr, align 8
  %eSize19 = getelementptr inbounds nuw %struct.SySet, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %eSize19, align 8
  %mul20 = mul i32 %27, %29
  %idxprom = zext i32 %mul20 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %25, i64 %idxprom
  store ptr %arrayidx, ptr %xDst, align 8
  %30 = load ptr, ptr %pSet.addr, align 8
  %eSize21 = getelementptr inbounds nuw %struct.SySet, ptr %30, i32 0, i32 4
  %31 = load i32, ptr %eSize21, align 8
  store i32 %31, ptr %xLen, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end45, %if.end16
  %32 = load i32, ptr %xLen, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.end23, label %if.then22

if.then22:                                        ; preds = %for.cond
  br label %for.end

if.end23:                                         ; preds = %for.cond
  %33 = load ptr, ptr %xSrc, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %33, i64 0
  %34 = load i8, ptr %arrayidx24, align 1
  %35 = load ptr, ptr %xDst, align 8
  %arrayidx25 = getelementptr inbounds i8, ptr %35, i64 0
  store i8 %34, ptr %arrayidx25, align 1
  %36 = load ptr, ptr %xDst, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %xDst, align 8
  %37 = load ptr, ptr %xSrc, align 8
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %37, i32 1
  store ptr %incdec.ptr26, ptr %xSrc, align 8
  %38 = load i32, ptr %xLen, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %xLen, align 4
  %39 = load i32, ptr %xLen, align 4
  %tobool27 = icmp ne i32 %39, 0
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end23
  br label %for.end

if.end29:                                         ; preds = %if.end23
  %40 = load ptr, ptr %xSrc, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %40, i64 0
  %41 = load i8, ptr %arrayidx30, align 1
  %42 = load ptr, ptr %xDst, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %42, i64 0
  store i8 %41, ptr %arrayidx31, align 1
  %43 = load ptr, ptr %xDst, align 8
  %incdec.ptr32 = getelementptr inbounds nuw i8, ptr %43, i32 1
  store ptr %incdec.ptr32, ptr %xDst, align 8
  %44 = load ptr, ptr %xSrc, align 8
  %incdec.ptr33 = getelementptr inbounds nuw i8, ptr %44, i32 1
  store ptr %incdec.ptr33, ptr %xSrc, align 8
  %45 = load i32, ptr %xLen, align 4
  %dec34 = add i32 %45, -1
  store i32 %dec34, ptr %xLen, align 4
  %46 = load i32, ptr %xLen, align 4
  %tobool35 = icmp ne i32 %46, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end29
  br label %for.end

if.end37:                                         ; preds = %if.end29
  %47 = load ptr, ptr %xSrc, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %47, i64 0
  %48 = load i8, ptr %arrayidx38, align 1
  %49 = load ptr, ptr %xDst, align 8
  %arrayidx39 = getelementptr inbounds i8, ptr %49, i64 0
  store i8 %48, ptr %arrayidx39, align 1
  %50 = load ptr, ptr %xDst, align 8
  %incdec.ptr40 = getelementptr inbounds nuw i8, ptr %50, i32 1
  store ptr %incdec.ptr40, ptr %xDst, align 8
  %51 = load ptr, ptr %xSrc, align 8
  %incdec.ptr41 = getelementptr inbounds nuw i8, ptr %51, i32 1
  store ptr %incdec.ptr41, ptr %xSrc, align 8
  %52 = load i32, ptr %xLen, align 4
  %dec42 = add i32 %52, -1
  store i32 %dec42, ptr %xLen, align 4
  %53 = load i32, ptr %xLen, align 4
  %tobool43 = icmp ne i32 %53, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end37
  br label %for.end

if.end45:                                         ; preds = %if.end37
  %54 = load ptr, ptr %xSrc, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %54, i64 0
  %55 = load i8, ptr %arrayidx46, align 1
  %56 = load ptr, ptr %xDst, align 8
  %arrayidx47 = getelementptr inbounds i8, ptr %56, i64 0
  store i8 %55, ptr %arrayidx47, align 1
  %57 = load ptr, ptr %xDst, align 8
  %incdec.ptr48 = getelementptr inbounds nuw i8, ptr %57, i32 1
  store ptr %incdec.ptr48, ptr %xDst, align 8
  %58 = load ptr, ptr %xSrc, align 8
  %incdec.ptr49 = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr49, ptr %xSrc, align 8
  %59 = load i32, ptr %xLen, align 4
  %dec50 = add i32 %59, -1
  store i32 %dec50, ptr %xLen, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then44, %if.then36, %if.then28, %if.then22
  %60 = load ptr, ptr %pSet.addr, align 8
  %nUsed51 = getelementptr inbounds nuw %struct.SySet, ptr %60, i32 0, i32 2
  %61 = load i32, ptr %nUsed51, align 8
  %inc = add i32 %61, 1
  store i32 %inc, ptr %nUsed51, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12, %if.then2
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendRealloc(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
