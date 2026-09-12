; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @iPatternMatch(ptr noundef %pText, i32 noundef %nLen, ptr noundef %pPattern, i32 noundef %iPatLen, ptr noundef %pOfft) #1 {
entry:
  %retval = alloca i32, align 4
  %pText.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %pPattern.addr = alloca ptr, align 8
  %iPatLen.addr = alloca i32, align 4
  %pOfft.addr = alloca ptr, align 8
  %zpIn = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zpEnd = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %zPtr2 = alloca ptr, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store ptr %pText, ptr %pText.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %pPattern, ptr %pPattern.addr, align 8
  store i32 %iPatLen, ptr %iPatLen.addr, align 4
  store ptr %pOfft, ptr %pOfft.addr, align 8
  %0 = load ptr, ptr %pPattern.addr, align 8
  store ptr %0, ptr %zpIn, align 8
  %1 = load ptr, ptr %pText.addr, align 8
  store ptr %1, ptr %zIn, align 8
  %2 = load ptr, ptr %zpIn, align 8
  %3 = load i32, ptr %iPatLen.addr, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %zpEnd, align 8
  %4 = load ptr, ptr %zIn, align 8
  %5 = load i32, ptr %nLen.addr, align 4
  %idxprom1 = zext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %4, i64 %idxprom1
  store ptr %arrayidx2, ptr %zEnd, align 8
  %6 = load i32, ptr %iPatLen.addr, align 4
  %7 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end38, %if.end
  %8 = load ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp3 = icmp uge ptr %8, %9
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.cond
  br label %for.end40

if.end5:                                          ; preds = %for.cond
  %10 = load ptr, ptr %zIn, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx6, align 1
  %conv = sext i8 %11 to i32
  %call = call i32 @tolower(i32 noundef %conv) #2
  store i32 %call, ptr %c, align 4
  %12 = load ptr, ptr %zpIn, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  %call9 = call i32 @tolower(i32 noundef %conv8) #2
  store i32 %call9, ptr %d, align 4
  %14 = load i32, ptr %c, align 4
  %15 = load i32, ptr %d, align 4
  %cmp10 = icmp eq i32 %14, %15
  br i1 %cmp10, label %if.then12, label %if.end38

if.then12:                                        ; preds = %if.end5
  %16 = load ptr, ptr %zIn, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %arrayidx13, ptr %zPtr, align 8
  %17 = load ptr, ptr %zpIn, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %arrayidx14, ptr %zPtr2, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %if.end36, %if.then12
  %18 = load ptr, ptr %zPtr2, align 8
  %19 = load ptr, ptr %zpEnd, align 8
  %cmp16 = icmp uge ptr %18, %19
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %for.cond15
  %20 = load ptr, ptr %pOfft.addr, align 8
  %tobool = icmp ne ptr %20, null
  br i1 %tobool, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then18
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %pText.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv20 = trunc i64 %sub.ptr.sub to i32
  %23 = load ptr, ptr %pOfft.addr, align 8
  store i32 %conv20, ptr %23, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then18
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %for.cond15
  %24 = load ptr, ptr %zPtr, align 8
  %25 = load ptr, ptr %zEnd, align 8
  %cmp23 = icmp uge ptr %24, %25
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  br label %for.end

if.end26:                                         ; preds = %if.end22
  %26 = load ptr, ptr %zPtr, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %26, i64 0
  %27 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %27 to i32
  %call29 = call i32 @tolower(i32 noundef %conv28) #2
  store i32 %call29, ptr %c, align 4
  %28 = load ptr, ptr %zPtr2, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %29 to i32
  %call32 = call i32 @tolower(i32 noundef %conv31) #2
  store i32 %call32, ptr %d, align 4
  %30 = load i32, ptr %c, align 4
  %31 = load i32, ptr %d, align 4
  %cmp33 = icmp ne i32 %30, %31
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end26
  br label %for.end

if.end36:                                         ; preds = %if.end26
  %32 = load ptr, ptr %zPtr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %32, i32 1
  store ptr %incdec.ptr, ptr %zPtr, align 8
  %33 = load ptr, ptr %zPtr2, align 8
  %incdec.ptr37 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr37, ptr %zPtr2, align 8
  br label %for.cond15

for.end:                                          ; preds = %if.then35, %if.then25
  br label %if.end38

if.end38:                                         ; preds = %for.end, %if.end5
  %34 = load ptr, ptr %zIn, align 8
  %incdec.ptr39 = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %incdec.ptr39, ptr %zIn, align 8
  br label %for.cond

for.end40:                                        ; preds = %if.then4
  store i32 -6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end40, %if.end21, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
