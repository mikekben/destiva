; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.encode_aux_threshmatch = type { ptr, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @_best(ptr noundef %book, ptr noundef %a, i32 noundef %step) #0 {
entry:
  %retval = alloca i32, align 4
  %book.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %step.addr = alloca i32, align 4
  %tt = alloca ptr, align 8
  %dim = alloca i32, align 4
  %k = alloca i32, align 4
  %o = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %c57 = alloca ptr, align 8
  %i59 = alloca i32, align 4
  %besti = alloca i32, align 4
  %best = alloca float, align 4
  %e = alloca ptr, align 8
  %this = alloca float, align 4
  store ptr %book, ptr %book.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %step, ptr %step.addr, align 4
  %0 = load ptr, ptr %book.addr, align 8
  %c = getelementptr inbounds nuw %struct.codebook, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %c, align 8
  %thresh_tree = getelementptr inbounds nuw %struct.static_codebook, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %thresh_tree, align 8
  store ptr %2, ptr %tt, align 8
  %3 = load ptr, ptr %book.addr, align 8
  %dim1 = getelementptr inbounds nuw %struct.codebook, ptr %3, i32 0, i32 0
  %4 = load i64, ptr %dim1, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, ptr %dim, align 4
  %5 = load ptr, ptr %tt, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end56

if.then:                                          ; preds = %entry
  store i32 0, ptr %index, align 4
  store i32 0, ptr %k, align 4
  %6 = load i32, ptr %step.addr, align 4
  %7 = load i32, ptr %dim, align 4
  %sub = sub nsw i32 %7, 1
  %mul = mul nsw i32 %6, %sub
  store i32 %mul, ptr %o, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %if.then
  %8 = load i32, ptr %k, align 4
  %9 = load i32, ptr %dim, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %tt, align 8
  %threshvals = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %threshvals, align 4
  %shr = ashr i32 %11, 1
  store i32 %shr, ptr %i, align 4
  %12 = load ptr, ptr %a.addr, align 8
  %13 = load i32, ptr %o, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds float, ptr %12, i64 %idxprom
  %14 = load float, ptr %arrayidx, align 4
  %15 = load ptr, ptr %tt, align 8
  %quantthresh = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %quantthresh, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %17 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %16, i64 %idxprom3
  %18 = load float, ptr %arrayidx4, align 4
  %cmp5 = fcmp olt float %14, %18
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.then7
  %19 = load i32, ptr %i, align 4
  %cmp9 = icmp sgt i32 %19, 0
  br i1 %cmp9, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %20 = load ptr, ptr %a.addr, align 8
  %21 = load i32, ptr %o, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %20, i64 %idxprom12
  %22 = load float, ptr %arrayidx13, align 4
  %23 = load ptr, ptr %tt, align 8
  %quantthresh14 = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %quantthresh14, align 8
  %25 = load i32, ptr %i, align 4
  %sub15 = sub nsw i32 %25, 1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds float, ptr %24, i64 %idxprom16
  %26 = load float, ptr %arrayidx17, align 4
  %cmp18 = fcmp oge float %22, %26
  br i1 %cmp18, label %if.then20, label %if.end

if.then20:                                        ; preds = %for.body11
  br label %for.end

if.end:                                           ; preds = %for.body11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, ptr %i, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %if.then20, %for.cond8
  br label %if.end39

if.else:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc36, %if.else
  %29 = load i32, ptr %i, align 4
  %30 = load ptr, ptr %tt, align 8
  %threshvals22 = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %30, i32 0, i32 3
  %31 = load i32, ptr %threshvals22, align 4
  %sub23 = sub nsw i32 %31, 1
  %cmp24 = icmp slt i32 %29, %sub23
  br i1 %cmp24, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.cond21
  %32 = load ptr, ptr %a.addr, align 8
  %33 = load i32, ptr %o, align 4
  %idxprom27 = sext i32 %33 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %32, i64 %idxprom27
  %34 = load float, ptr %arrayidx28, align 4
  %35 = load ptr, ptr %tt, align 8
  %quantthresh29 = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %quantthresh29, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds float, ptr %36, i64 %idxprom30
  %38 = load float, ptr %arrayidx31, align 4
  %cmp32 = fcmp olt float %34, %38
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body26
  br label %for.end38

if.end35:                                         ; preds = %for.body26
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %39 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %39, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond21, !llvm.loop !8

for.end38:                                        ; preds = %if.then34, %for.cond21
  br label %if.end39

if.end39:                                         ; preds = %for.end38, %for.end
  %40 = load i32, ptr %index, align 4
  %41 = load ptr, ptr %tt, align 8
  %quantvals = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %quantvals, align 8
  %mul40 = mul nsw i32 %40, %42
  %conv41 = sext i32 %mul40 to i64
  %43 = load ptr, ptr %tt, align 8
  %quantmap = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %43, i32 0, i32 1
  %44 = load ptr, ptr %quantmap, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %45 to i64
  %arrayidx43 = getelementptr inbounds i64, ptr %44, i64 %idxprom42
  %46 = load i64, ptr %arrayidx43, align 8
  %add = add nsw i64 %conv41, %46
  %conv44 = trunc i64 %add to i32
  store i32 %conv44, ptr %index, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %if.end39
  %47 = load i32, ptr %k, align 4
  %inc46 = add nsw i32 %47, 1
  store i32 %inc46, ptr %k, align 4
  %48 = load i32, ptr %step.addr, align 4
  %49 = load i32, ptr %o, align 4
  %sub47 = sub nsw i32 %49, %48
  store i32 %sub47, ptr %o, align 4
  br label %for.cond, !llvm.loop !9

for.end48:                                        ; preds = %for.cond
  %50 = load ptr, ptr %book.addr, align 8
  %c49 = getelementptr inbounds nuw %struct.codebook, ptr %50, i32 0, i32 3
  %51 = load ptr, ptr %c49, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %51, i32 0, i32 2
  %52 = load ptr, ptr %lengthlist, align 8
  %53 = load i32, ptr %index, align 4
  %idxprom50 = sext i32 %53 to i64
  %arrayidx51 = getelementptr inbounds i64, ptr %52, i64 %idxprom50
  %54 = load i64, ptr %arrayidx51, align 8
  %cmp52 = icmp sgt i64 %54, 0
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.end48
  %55 = load i32, ptr %index, align 4
  store i32 %55, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %for.end48
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %entry
  %56 = load ptr, ptr %book.addr, align 8
  %c58 = getelementptr inbounds nuw %struct.codebook, ptr %56, i32 0, i32 3
  %57 = load ptr, ptr %c58, align 8
  store ptr %57, ptr %c57, align 8
  store i32 -1, ptr %besti, align 4
  store float 0.000000e+00, ptr %best, align 4
  %58 = load ptr, ptr %book.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %58, i32 0, i32 4
  %59 = load ptr, ptr %valuelist, align 8
  store ptr %59, ptr %e, align 8
  store i32 0, ptr %i59, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc78, %if.end56
  %60 = load i32, ptr %i59, align 4
  %conv61 = sext i32 %60 to i64
  %61 = load ptr, ptr %book.addr, align 8
  %entries = getelementptr inbounds nuw %struct.codebook, ptr %61, i32 0, i32 1
  %62 = load i64, ptr %entries, align 8
  %cmp62 = icmp slt i64 %conv61, %62
  br i1 %cmp62, label %for.body64, label %for.end80

for.body64:                                       ; preds = %for.cond60
  %63 = load ptr, ptr %c57, align 8
  %lengthlist65 = getelementptr inbounds nuw %struct.static_codebook, ptr %63, i32 0, i32 2
  %64 = load ptr, ptr %lengthlist65, align 8
  %65 = load i32, ptr %i59, align 4
  %idxprom66 = sext i32 %65 to i64
  %arrayidx67 = getelementptr inbounds i64, ptr %64, i64 %idxprom66
  %66 = load i64, ptr %arrayidx67, align 8
  %cmp68 = icmp sgt i64 %66, 0
  br i1 %cmp68, label %if.then70, label %if.end77

if.then70:                                        ; preds = %for.body64
  %67 = load i32, ptr %dim, align 4
  %68 = load ptr, ptr %e, align 8
  %69 = load ptr, ptr %a.addr, align 8
  %70 = load i32, ptr %step.addr, align 4
  %call = call float @_dist(i32 noundef %67, ptr noundef %68, ptr noundef %69, i32 noundef %70)
  store float %call, ptr %this, align 4
  %71 = load i32, ptr %besti, align 4
  %cmp71 = icmp eq i32 %71, -1
  br i1 %cmp71, label %if.then75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then70
  %72 = load float, ptr %this, align 4
  %73 = load float, ptr %best, align 4
  %cmp73 = fcmp olt float %72, %73
  br i1 %cmp73, label %if.then75, label %if.end76

if.then75:                                        ; preds = %lor.lhs.false, %if.then70
  %74 = load float, ptr %this, align 4
  store float %74, ptr %best, align 4
  %75 = load i32, ptr %i59, align 4
  store i32 %75, ptr %besti, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %lor.lhs.false
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %for.body64
  %76 = load i32, ptr %dim, align 4
  %77 = load ptr, ptr %e, align 8
  %idx.ext = sext i32 %76 to i64
  %add.ptr = getelementptr inbounds float, ptr %77, i64 %idx.ext
  store ptr %add.ptr, ptr %e, align 8
  br label %for.inc78

for.inc78:                                        ; preds = %if.end77
  %78 = load i32, ptr %i59, align 4
  %inc79 = add nsw i32 %78, 1
  store i32 %inc79, ptr %i59, align 4
  br label %for.cond60, !llvm.loop !10

for.end80:                                        ; preds = %for.cond60
  %79 = load i32, ptr %besti, align 4
  store i32 %79, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end80, %if.then54
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

; Function Attrs: nounwind uwtable
declare hidden float @_dist(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

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
!10 = distinct !{!10, !7}
