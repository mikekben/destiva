; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #0

; Function Attrs: nounwind uwtable
define dso_local i64 @_book_maptype1_quantvals(ptr noundef %b) #1 {
entry:
  %b.addr = alloca ptr, align 8
  %vals = alloca i64, align 8
  %acc = alloca i64, align 8
  %acc1 = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %entries = getelementptr inbounds nuw %struct.static_codebook, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %entries, align 8
  %conv = sitofp i64 %1 to float
  %conv1 = fpext float %conv to double
  %2 = load ptr, ptr %b.addr, align 8
  %dim = getelementptr inbounds nuw %struct.static_codebook, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %dim, align 8
  %conv2 = sitofp i64 %3 to float
  %div = fdiv float 1.000000e+00, %conv2
  %conv3 = fpext float %div to double
  %call = call double @pow(double noundef %conv1, double noundef %conv3) #3
  %4 = call double @llvm.floor.f64(double %call)
  %conv4 = fptosi double %4 to i64
  store i64 %conv4, ptr %vals, align 8
  br label %while.body

while.body:                                       ; preds = %if.end21, %entry
  store i64 1, ptr %acc, align 8
  store i64 1, ptr %acc1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load i32, ptr %i, align 4
  %conv5 = sext i32 %5 to i64
  %6 = load ptr, ptr %b.addr, align 8
  %dim6 = getelementptr inbounds nuw %struct.static_codebook, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %dim6, align 8
  %cmp = icmp slt i64 %conv5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %vals, align 8
  %9 = load i64, ptr %acc, align 8
  %mul = mul nsw i64 %9, %8
  store i64 %mul, ptr %acc, align 8
  %10 = load i64, ptr %vals, align 8
  %add = add nsw i64 %10, 1
  %11 = load i64, ptr %acc1, align 8
  %mul8 = mul nsw i64 %11, %add
  store i64 %mul8, ptr %acc1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load i64, ptr %acc, align 8
  %14 = load ptr, ptr %b.addr, align 8
  %entries9 = getelementptr inbounds nuw %struct.static_codebook, ptr %14, i32 0, i32 1
  %15 = load i64, ptr %entries9, align 8
  %cmp10 = icmp sle i64 %13, %15
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end
  %16 = load i64, ptr %acc1, align 8
  %17 = load ptr, ptr %b.addr, align 8
  %entries12 = getelementptr inbounds nuw %struct.static_codebook, ptr %17, i32 0, i32 1
  %18 = load i64, ptr %entries12, align 8
  %cmp13 = icmp sgt i64 %16, %18
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %19 = load i64, ptr %vals, align 8
  ret i64 %19

if.else:                                          ; preds = %land.lhs.true, %for.end
  %20 = load i64, ptr %acc, align 8
  %21 = load ptr, ptr %b.addr, align 8
  %entries15 = getelementptr inbounds nuw %struct.static_codebook, ptr %21, i32 0, i32 1
  %22 = load i64, ptr %entries15, align 8
  %cmp16 = icmp sgt i64 %20, %22
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.else
  %23 = load i64, ptr %vals, align 8
  %dec = add nsw i64 %23, -1
  store i64 %dec, ptr %vals, align 8
  br label %if.end

if.else19:                                        ; preds = %if.else
  %24 = load i64, ptr %vals, align 8
  %inc20 = add nsw i64 %24, 1
  store i64 %inc20, ptr %vals, align 8
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end
  br label %while.body
}

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #2

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
