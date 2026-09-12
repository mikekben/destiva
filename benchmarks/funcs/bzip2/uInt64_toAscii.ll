; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.UInt64 = type { [8 x i8] }

; Function Attrs: nounwind uwtable
define hidden void @uInt64_toAscii(ptr noundef %outbuf, ptr noundef %n) #0 {
entry:
  %outbuf.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %buf = alloca [32 x i8], align 16
  %nBuf = alloca i32, align 4
  %n_copy = alloca %struct.UInt64, align 1
  store ptr %outbuf, ptr %outbuf.addr, align 8
  store ptr %n, ptr %n.addr, align 8
  store i32 0, ptr %nBuf, align 4
  %0 = load ptr, ptr %n.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %n_copy, ptr align 1 %0, i64 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @uInt64_qrm10(ptr noundef %n_copy)
  store i32 %call, ptr %q, align 4
  %1 = load i32, ptr %q, align 4
  %add = add nsw i32 %1, 48
  %conv = trunc i32 %add to i8
  %2 = load i32, ptr %nBuf, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i32, ptr %nBuf, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %nBuf, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %call1 = call zeroext i8 @uInt64_isZero(ptr noundef %n_copy)
  %tobool = icmp ne i8 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %outbuf.addr, align 8
  %5 = load i32, ptr %nBuf, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 %idxprom2
  store i8 0, ptr %arrayidx3, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %nBuf, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %nBuf, align 4
  %9 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %8, %9
  %sub5 = sub nsw i32 %sub, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 %idxprom6
  %10 = load i8, ptr %arrayidx7, align 1
  %11 = load ptr, ptr %outbuf.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %11, i64 %idxprom8
  store i8 %10, ptr %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @uInt64_qrm10(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @uInt64_isZero(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
