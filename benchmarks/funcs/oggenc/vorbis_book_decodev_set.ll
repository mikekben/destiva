; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i64 @decode_packed_entry_number(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @vorbis_book_decodev_set(ptr noundef %book, ptr noundef %a, ptr noundef %b, i32 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %book.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %entry1 = alloca i32, align 4
  %t = alloca ptr, align 8
  store ptr %book, ptr %book.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %book.addr, align 8
  %3 = load ptr, ptr %b.addr, align 8
  %call = call i64 @decode_packed_entry_number(ptr noundef %2, ptr noundef %3)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %entry1, align 4
  %4 = load i32, ptr %entry1, align 4
  %cmp2 = icmp eq i32 %4, -1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 -1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %book.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %valuelist, align 8
  %7 = load i32, ptr %entry1, align 4
  %conv4 = sext i32 %7 to i64
  %8 = load ptr, ptr %book.addr, align 8
  %dim = getelementptr inbounds nuw %struct.codebook, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %dim, align 8
  %mul = mul nsw i64 %conv4, %9
  %add.ptr = getelementptr inbounds float, ptr %6, i64 %mul
  store ptr %add.ptr, ptr %t, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.body10, %if.end
  %10 = load i32, ptr %j, align 4
  %conv6 = sext i32 %10 to i64
  %11 = load ptr, ptr %book.addr, align 8
  %dim7 = getelementptr inbounds nuw %struct.codebook, ptr %11, i32 0, i32 0
  %12 = load i64, ptr %dim7, align 8
  %cmp8 = icmp slt i64 %conv6, %12
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond5
  %13 = load ptr, ptr %t, align 8
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds float, ptr %13, i64 %idxprom
  %15 = load float, ptr %arrayidx, align 4
  %16 = load ptr, ptr %a.addr, align 8
  %17 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, ptr %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %16, i64 %idxprom12
  store float %15, ptr %arrayidx13, align 4
  br label %for.cond5, !llvm.loop !6

for.end:                                          ; preds = %for.cond5
  br label %for.cond, !llvm.loop !8

for.end14:                                        ; preds = %for.cond
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end14, %if.then
  %18 = load i64, ptr %retval, align 8
  ret i64 %18
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
