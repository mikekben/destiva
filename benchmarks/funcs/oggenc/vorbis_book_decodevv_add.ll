; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i64 @decode_packed_entry_number(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @vorbis_book_decodevv_add(ptr noundef %book, ptr noundef %a, i64 noundef %offset, i32 noundef %ch, ptr noundef %b, i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %book.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %ch.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %entry1 = alloca i64, align 8
  %chptr = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %book, ptr %book.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i64 %offset, ptr %offset.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %chptr, align 4
  %0 = load i64, ptr %offset.addr, align 8
  %1 = load i32, ptr %ch.addr, align 4
  %conv = sext i32 %1 to i64
  %div = sdiv i64 %0, %conv
  store i64 %div, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %offset.addr, align 8
  %4 = load i32, ptr %n.addr, align 4
  %conv2 = sext i32 %4 to i64
  %add = add nsw i64 %3, %conv2
  %5 = load i32, ptr %ch.addr, align 4
  %conv3 = sext i32 %5 to i64
  %div4 = sdiv i64 %add, %conv3
  %cmp = icmp slt i64 %2, %div4
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %book.addr, align 8
  %7 = load ptr, ptr %b.addr, align 8
  %call = call i64 @decode_packed_entry_number(ptr noundef %6, ptr noundef %7)
  store i64 %call, ptr %entry1, align 8
  %8 = load i64, ptr %entry1, align 8
  %cmp6 = icmp eq i64 %8, -1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %book.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %valuelist, align 8
  %11 = load i64, ptr %entry1, align 8
  %12 = load ptr, ptr %book.addr, align 8
  %dim = getelementptr inbounds nuw %struct.codebook, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %dim, align 8
  %mul = mul nsw i64 %11, %13
  %add.ptr = getelementptr inbounds float, ptr %10, i64 %mul
  store ptr %add.ptr, ptr %t, align 8
  store i64 0, ptr %j, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.end
  %14 = load i64, ptr %j, align 8
  %15 = load ptr, ptr %book.addr, align 8
  %dim9 = getelementptr inbounds nuw %struct.codebook, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %dim9, align 8
  %cmp10 = icmp slt i64 %14, %16
  br i1 %cmp10, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond8
  %17 = load ptr, ptr %t, align 8
  %18 = load i64, ptr %j, align 8
  %arrayidx = getelementptr inbounds float, ptr %17, i64 %18
  %19 = load float, ptr %arrayidx, align 4
  %20 = load ptr, ptr %a.addr, align 8
  %21 = load i32, ptr %chptr, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %chptr, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %20, i64 %idxprom
  %22 = load ptr, ptr %arrayidx13, align 8
  %23 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %22, i64 %23
  %24 = load float, ptr %arrayidx14, align 4
  %add15 = fadd float %24, %19
  store float %add15, ptr %arrayidx14, align 4
  %25 = load i32, ptr %chptr, align 4
  %26 = load i32, ptr %ch.addr, align 4
  %cmp16 = icmp eq i32 %25, %26
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %for.body12
  store i32 0, ptr %chptr, align 4
  %27 = load i64, ptr %i, align 8
  %inc19 = add nsw i64 %27, 1
  store i64 %inc19, ptr %i, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.body12
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %28 = load i64, ptr %j, align 8
  %inc21 = add nsw i64 %28, 1
  store i64 %inc21, ptr %j, align 8
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %for.cond8
  br label %for.cond, !llvm.loop !8

for.end22:                                        ; preds = %for.cond
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end22, %if.then
  %29 = load i64, ptr %retval, align 8
  ret i64 %29
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
