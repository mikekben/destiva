; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.35 = external hidden unnamed_addr constant [13 x i8], align 1

declare i32 @open(ptr noundef, i32 noundef, ...) #0

; Function Attrs: nounwind
declare i32 @getpid() #1

; Function Attrs: nounwind uwtable
define hidden i32 @SyOSUtilRandomSeed(ptr noundef %pBuf, i32 noundef %nLen, ptr noundef %pUnused) #2 {
entry:
  %retval = alloca i32, align 4
  %pBuf.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pUnused.addr = alloca ptr, align 8
  %zBuf = alloca ptr, align 8
  %pid = alloca i32, align 4
  %fd = alloca i32, align 4
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pUnused, ptr %pUnused.addr, align 8
  %0 = load ptr, ptr %pBuf.addr, align 8
  store ptr %0, ptr %zBuf, align 8
  store ptr null, ptr %pUnused.addr, align 8
  %call = call i32 (ptr, i32, ...) @open(ptr noundef @.str.35, i32 noundef 0)
  store i32 %call, ptr %fd, align 4
  %1 = load i32, ptr %fd, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %fd, align 4
  %3 = load ptr, ptr %zBuf, align 8
  %4 = load i32, ptr %nLen.addr, align 4
  %conv = zext i32 %4 to i64
  %call1 = call i64 @read(i32 noundef %2, ptr noundef %3, i64 noundef %conv)
  %cmp2 = icmp sgt i64 %call1, 0
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %call6 = call i32 @getpid() #3
  store i32 %call6, ptr %pid, align 4
  %5 = load ptr, ptr %zBuf, align 8
  %6 = load i32, ptr %nLen.addr, align 4
  %conv7 = zext i32 %6 to i64
  %cmp8 = icmp ult i64 %conv7, 4
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end5
  %7 = load i32, ptr %nLen.addr, align 4
  %conv10 = zext i32 %7 to i64
  br label %cond.end

cond.false:                                       ; preds = %if.end5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv10, %cond.true ], [ 4, %cond.false ]
  %conv11 = trunc i64 %cond to i32
  %call12 = call i32 @SyMemcpy(ptr noundef %pid, ptr noundef %5, i32 noundef %conv11)
  %8 = load ptr, ptr %zBuf, align 8
  %9 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %zBuf, align 8
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx13 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp14 = icmp sge i64 %sub.ptr.sub, 16
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %cond.end
  %11 = load ptr, ptr %zBuf, align 8
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %11, i64 4
  %call18 = call i32 @gettimeofday(ptr noundef %arrayidx17, ptr noundef null) #3
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %cond.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then4
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #1

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
