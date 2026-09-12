; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }

; Function Attrs: nounwind uwtable
define hidden void @mdct_butterflies(ptr noundef %init, ptr noundef %x, i32 noundef %points) #0 {
entry:
  %init.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %points.addr = alloca i32, align 4
  %T = alloca ptr, align 8
  %stages = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %init, ptr %init.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %points, ptr %points.addr, align 4
  %0 = load ptr, ptr %init.addr, align 8
  %trig = getelementptr inbounds nuw %struct.mdct_lookup, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %trig, align 8
  store ptr %1, ptr %T, align 8
  %2 = load ptr, ptr %init.addr, align 8
  %log2n = getelementptr inbounds nuw %struct.mdct_lookup, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %log2n, align 4
  %sub = sub nsw i32 %3, 5
  store i32 %sub, ptr %stages, align 4
  %4 = load i32, ptr %stages, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %stages, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %T, align 8
  %6 = load ptr, ptr %x.addr, align 8
  %7 = load i32, ptr %points.addr, align 4
  call void @mdct_butterfly_first(ptr noundef %5, ptr noundef %6, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %if.end
  %8 = load i32, ptr %stages, align 4
  %dec1 = add nsw i32 %8, -1
  store i32 %dec1, ptr %stages, align 4
  %cmp2 = icmp sgt i32 %dec1, 0
  br i1 %cmp2, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4
  %10 = load i32, ptr %i, align 4
  %shl = shl i32 1, %10
  %cmp4 = icmp slt i32 %9, %shl
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %11 = load ptr, ptr %T, align 8
  %12 = load ptr, ptr %x.addr, align 8
  %13 = load i32, ptr %points.addr, align 4
  %14 = load i32, ptr %i, align 4
  %shr = ashr i32 %13, %14
  %15 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %shr, %15
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, ptr %12, i64 %idx.ext
  %16 = load i32, ptr %points.addr, align 4
  %17 = load i32, ptr %i, align 4
  %shr6 = ashr i32 %16, %17
  %18 = load i32, ptr %i, align 4
  %shl7 = shl i32 4, %18
  call void @mdct_butterfly_generic(ptr noundef %11, ptr noundef %add.ptr, i32 noundef %shr6, i32 noundef %shl7)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %19 = load i32, ptr %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !6

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %20 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %20, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end10:                                        ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc16, %for.end10
  %21 = load i32, ptr %j, align 4
  %22 = load i32, ptr %points.addr, align 4
  %cmp12 = icmp slt i32 %21, %22
  br i1 %cmp12, label %for.body13, label %for.end17

for.body13:                                       ; preds = %for.cond11
  %23 = load ptr, ptr %x.addr, align 8
  %24 = load i32, ptr %j, align 4
  %idx.ext14 = sext i32 %24 to i64
  %add.ptr15 = getelementptr inbounds float, ptr %23, i64 %idx.ext14
  call void @mdct_butterfly_32(ptr noundef %add.ptr15)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body13
  %25 = load i32, ptr %j, align 4
  %add = add nsw i32 %25, 32
  store i32 %add, ptr %j, align 4
  br label %for.cond11, !llvm.loop !9

for.end17:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @mdct_butterfly_first(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @mdct_butterfly_generic(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @mdct_butterfly_32(ptr noundef) #0

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
