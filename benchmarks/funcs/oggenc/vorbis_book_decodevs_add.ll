; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i64 @decode_packed_entry_number(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @vorbis_book_decodevs_add(ptr noundef %book, ptr noundef %a, ptr noundef %b, i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %book.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %step = alloca i32, align 4
  %entry2 = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %o = alloca i32, align 4
  store ptr %book, ptr %book.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %book.addr, align 8
  %dim = getelementptr inbounds nuw %struct.codebook, ptr %1, i32 0, i32 0
  %2 = load i64, ptr %dim, align 8
  %div = sdiv i64 %conv, %2
  %conv1 = trunc i64 %div to i32
  store i32 %conv1, ptr %step, align 4
  %3 = load i32, ptr %step, align 4
  %conv3 = sext i32 %3 to i64
  %mul = mul i64 8, %conv3
  %4 = alloca i8, i64 %mul, align 16
  store ptr %4, ptr %entry2, align 8
  %5 = load i32, ptr %step, align 4
  %conv4 = sext i32 %5 to i64
  %mul5 = mul i64 8, %conv4
  %6 = alloca i8, i64 %mul5, align 16
  store ptr %6, ptr %t, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %step, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %book.addr, align 8
  %10 = load ptr, ptr %b.addr, align 8
  %call = call i64 @decode_packed_entry_number(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %entry2, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %idxprom
  store i64 %call, ptr %arrayidx, align 8
  %13 = load ptr, ptr %entry2, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i64, ptr %13, i64 %idxprom7
  %15 = load i64, ptr %arrayidx8, align 8
  %cmp9 = icmp eq i64 %15, -1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  %16 = load ptr, ptr %book.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %valuelist, align 8
  %18 = load ptr, ptr %entry2, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds i64, ptr %18, i64 %idxprom11
  %20 = load i64, ptr %arrayidx12, align 8
  %21 = load ptr, ptr %book.addr, align 8
  %dim13 = getelementptr inbounds nuw %struct.codebook, ptr %21, i32 0, i32 0
  %22 = load i64, ptr %dim13, align 8
  %mul14 = mul nsw i64 %20, %22
  %add.ptr = getelementptr inbounds float, ptr %17, i64 %mul14
  %23 = load ptr, ptr %t, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %23, i64 %idxprom15
  store ptr %add.ptr, ptr %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  store i32 0, ptr %o, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc37, %for.end
  %26 = load i32, ptr %i, align 4
  %conv18 = sext i32 %26 to i64
  %27 = load ptr, ptr %book.addr, align 8
  %dim19 = getelementptr inbounds nuw %struct.codebook, ptr %27, i32 0, i32 0
  %28 = load i64, ptr %dim19, align 8
  %cmp20 = icmp slt i64 %conv18, %28
  br i1 %cmp20, label %for.body22, label %for.end40

for.body22:                                       ; preds = %for.cond17
  store i32 0, ptr %j, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc34, %for.body22
  %29 = load i32, ptr %j, align 4
  %30 = load i32, ptr %step, align 4
  %cmp24 = icmp slt i32 %29, %30
  br i1 %cmp24, label %for.body26, label %for.end36

for.body26:                                       ; preds = %for.cond23
  %31 = load ptr, ptr %t, align 8
  %32 = load i32, ptr %j, align 4
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %31, i64 %idxprom27
  %33 = load ptr, ptr %arrayidx28, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %arrayidx30 = getelementptr inbounds float, ptr %33, i64 %idxprom29
  %35 = load float, ptr %arrayidx30, align 4
  %36 = load ptr, ptr %a.addr, align 8
  %37 = load i32, ptr %o, align 4
  %38 = load i32, ptr %j, align 4
  %add = add nsw i32 %37, %38
  %idxprom31 = sext i32 %add to i64
  %arrayidx32 = getelementptr inbounds float, ptr %36, i64 %idxprom31
  %39 = load float, ptr %arrayidx32, align 4
  %add33 = fadd float %39, %35
  store float %add33, ptr %arrayidx32, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body26
  %40 = load i32, ptr %j, align 4
  %inc35 = add nsw i32 %40, 1
  store i32 %inc35, ptr %j, align 4
  br label %for.cond23, !llvm.loop !8

for.end36:                                        ; preds = %for.cond23
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %41 = load i32, ptr %i, align 4
  %inc38 = add nsw i32 %41, 1
  store i32 %inc38, ptr %i, align 4
  %42 = load i32, ptr %step, align 4
  %43 = load i32, ptr %o, align 4
  %add39 = add nsw i32 %43, %42
  store i32 %add39, ptr %o, align 4
  br label %for.cond17, !llvm.loop !9

for.end40:                                        ; preds = %for.cond17
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end40, %if.then
  %44 = load i64, ptr %retval, align 8
  ret i64 %44
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
