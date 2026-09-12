; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.encode_aux_threshmatch = type { ptr, ptr, i32, i32 }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden i32 @local_book_besterror(ptr noundef %book, ptr noundef %a) #1 {
entry:
  %book.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %dim = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %o = alloca i32, align 4
  %best = alloca i32, align 4
  %tt = alloca ptr, align 8
  %val = alloca float, align 4
  %c57 = alloca ptr, align 8
  %i59 = alloca i32, align 4
  %j = alloca i32, align 4
  %bestf = alloca float, align 4
  %e = alloca ptr, align 8
  %this = alloca float, align 4
  %val75 = alloca float, align 4
  %ptr = alloca ptr, align 8
  store ptr %book, ptr %book.addr, align 8
  store ptr %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %book.addr, align 8
  %dim1 = getelementptr inbounds nuw %struct.codebook, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %dim1, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %dim, align 4
  store i32 0, ptr %best, align 4
  %2 = load ptr, ptr %book.addr, align 8
  %c = getelementptr inbounds nuw %struct.codebook, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %c, align 8
  %thresh_tree = getelementptr inbounds nuw %struct.static_codebook, ptr %3, i32 0, i32 10
  %4 = load ptr, ptr %thresh_tree, align 8
  store ptr %4, ptr %tt, align 8
  store i32 0, ptr %k, align 4
  %5 = load i32, ptr %dim, align 4
  store i32 %5, ptr %o, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %6 = load i32, ptr %k, align 4
  %7 = load i32, ptr %dim, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %a.addr, align 8
  %9 = load i32, ptr %o, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %o, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds float, ptr %8, i64 %idxprom
  %10 = load float, ptr %arrayidx, align 4
  store float %10, ptr %val, align 4
  %11 = load ptr, ptr %tt, align 8
  %threshvals = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %threshvals, align 4
  %shr = ashr i32 %12, 1
  store i32 %shr, ptr %i, align 4
  %13 = load float, ptr %val, align 4
  %14 = load ptr, ptr %tt, align 8
  %quantthresh = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %quantthresh, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %16 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %15, i64 %idxprom3
  %17 = load float, ptr %arrayidx4, align 4
  %cmp5 = fcmp olt float %13, %17
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %18 = load float, ptr %val, align 4
  %19 = load ptr, ptr %tt, align 8
  %quantthresh7 = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %quantthresh7, align 8
  %21 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds float, ptr %20, i64 %idxprom8
  %22 = load float, ptr %arrayidx9, align 4
  %cmp10 = fcmp olt float %18, %22
  br i1 %cmp10, label %if.then12, label %if.end26

if.then12:                                        ; preds = %if.then
  %23 = load i32, ptr %i, align 4
  %dec13 = add nsw i32 %23, -1
  store i32 %dec13, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.then12
  %24 = load i32, ptr %i, align 4
  %cmp15 = icmp sgt i32 %24, 0
  br i1 %cmp15, label %for.body17, label %for.end

for.body17:                                       ; preds = %for.cond14
  %25 = load float, ptr %val, align 4
  %26 = load ptr, ptr %tt, align 8
  %quantthresh18 = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %quantthresh18, align 8
  %28 = load i32, ptr %i, align 4
  %sub19 = sub nsw i32 %28, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds float, ptr %27, i64 %idxprom20
  %29 = load float, ptr %arrayidx21, align 4
  %cmp22 = fcmp oge float %25, %29
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %for.body17
  br label %for.end

if.end:                                           ; preds = %for.body17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, ptr %i, align 4
  %dec25 = add nsw i32 %30, -1
  store i32 %dec25, ptr %i, align 4
  br label %for.cond14, !llvm.loop !6

for.end:                                          ; preds = %if.then24, %for.cond14
  br label %if.end26

if.end26:                                         ; preds = %for.end, %if.then
  br label %if.end43

if.else:                                          ; preds = %for.body
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc40, %if.else
  %32 = load i32, ptr %i, align 4
  %33 = load ptr, ptr %tt, align 8
  %threshvals28 = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %33, i32 0, i32 3
  %34 = load i32, ptr %threshvals28, align 4
  %sub29 = sub nsw i32 %34, 1
  %cmp30 = icmp slt i32 %32, %sub29
  br i1 %cmp30, label %for.body32, label %for.end42

for.body32:                                       ; preds = %for.cond27
  %35 = load float, ptr %val, align 4
  %36 = load ptr, ptr %tt, align 8
  %quantthresh33 = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %quantthresh33, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %38 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %37, i64 %idxprom34
  %39 = load float, ptr %arrayidx35, align 4
  %cmp36 = fcmp olt float %35, %39
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body32
  br label %for.end42

if.end39:                                         ; preds = %for.body32
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %40 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %40, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond27, !llvm.loop !8

for.end42:                                        ; preds = %if.then38, %for.cond27
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %if.end26
  %41 = load i32, ptr %best, align 4
  %42 = load ptr, ptr %tt, align 8
  %quantvals = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %42, i32 0, i32 2
  %43 = load i32, ptr %quantvals, align 8
  %mul = mul nsw i32 %41, %43
  %conv44 = sext i32 %mul to i64
  %44 = load ptr, ptr %tt, align 8
  %quantmap = getelementptr inbounds nuw %struct.encode_aux_threshmatch, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %quantmap, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds i64, ptr %45, i64 %idxprom45
  %47 = load i64, ptr %arrayidx46, align 8
  %add = add nsw i64 %conv44, %47
  %conv47 = trunc i64 %add to i32
  store i32 %conv47, ptr %best, align 4
  br label %for.inc48

for.inc48:                                        ; preds = %if.end43
  %48 = load i32, ptr %k, align 4
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, ptr %k, align 4
  br label %for.cond, !llvm.loop !9

for.end50:                                        ; preds = %for.cond
  %49 = load ptr, ptr %book.addr, align 8
  %c51 = getelementptr inbounds nuw %struct.codebook, ptr %49, i32 0, i32 3
  %50 = load ptr, ptr %c51, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %lengthlist, align 8
  %52 = load i32, ptr %best, align 4
  %idxprom52 = sext i32 %52 to i64
  %arrayidx53 = getelementptr inbounds i64, ptr %51, i64 %idxprom52
  %53 = load i64, ptr %arrayidx53, align 8
  %cmp54 = icmp sle i64 %53, 0
  br i1 %cmp54, label %if.then56, label %if.end95

if.then56:                                        ; preds = %for.end50
  %54 = load ptr, ptr %book.addr, align 8
  %c58 = getelementptr inbounds nuw %struct.codebook, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %c58, align 8
  store ptr %55, ptr %c57, align 8
  store float 0.000000e+00, ptr %bestf, align 4
  %56 = load ptr, ptr %book.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %valuelist, align 8
  store ptr %57, ptr %e, align 8
  store i32 -1, ptr %best, align 4
  store i32 0, ptr %i59, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc92, %if.then56
  %58 = load i32, ptr %i59, align 4
  %conv61 = sext i32 %58 to i64
  %59 = load ptr, ptr %book.addr, align 8
  %entries = getelementptr inbounds nuw %struct.codebook, ptr %59, i32 0, i32 1
  %60 = load i64, ptr %entries, align 8
  %cmp62 = icmp slt i64 %conv61, %60
  br i1 %cmp62, label %for.body64, label %for.end94

for.body64:                                       ; preds = %for.cond60
  %61 = load ptr, ptr %c57, align 8
  %lengthlist65 = getelementptr inbounds nuw %struct.static_codebook, ptr %61, i32 0, i32 2
  %62 = load ptr, ptr %lengthlist65, align 8
  %63 = load i32, ptr %i59, align 4
  %idxprom66 = sext i32 %63 to i64
  %arrayidx67 = getelementptr inbounds i64, ptr %62, i64 %idxprom66
  %64 = load i64, ptr %arrayidx67, align 8
  %cmp68 = icmp sgt i64 %64, 0
  br i1 %cmp68, label %if.then70, label %if.end91

if.then70:                                        ; preds = %for.body64
  store float 0.000000e+00, ptr %this, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc82, %if.then70
  %65 = load i32, ptr %j, align 4
  %66 = load i32, ptr %dim, align 4
  %cmp72 = icmp slt i32 %65, %66
  br i1 %cmp72, label %for.body74, label %for.end84

for.body74:                                       ; preds = %for.cond71
  %67 = load ptr, ptr %e, align 8
  %68 = load i32, ptr %j, align 4
  %idxprom76 = sext i32 %68 to i64
  %arrayidx77 = getelementptr inbounds float, ptr %67, i64 %idxprom76
  %69 = load float, ptr %arrayidx77, align 4
  %70 = load ptr, ptr %a.addr, align 8
  %71 = load i32, ptr %j, align 4
  %idxprom78 = sext i32 %71 to i64
  %arrayidx79 = getelementptr inbounds float, ptr %70, i64 %idxprom78
  %72 = load float, ptr %arrayidx79, align 4
  %sub80 = fsub float %69, %72
  store float %sub80, ptr %val75, align 4
  %73 = load float, ptr %val75, align 4
  %74 = load float, ptr %val75, align 4
  %75 = load float, ptr %this, align 4
  %76 = call float @llvm.fmuladd.f32(float %73, float %74, float %75)
  store float %76, ptr %this, align 4
  br label %for.inc82

for.inc82:                                        ; preds = %for.body74
  %77 = load i32, ptr %j, align 4
  %inc83 = add nsw i32 %77, 1
  store i32 %inc83, ptr %j, align 4
  br label %for.cond71, !llvm.loop !10

for.end84:                                        ; preds = %for.cond71
  %78 = load i32, ptr %best, align 4
  %cmp85 = icmp eq i32 %78, -1
  br i1 %cmp85, label %if.then89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end84
  %79 = load float, ptr %this, align 4
  %80 = load float, ptr %bestf, align 4
  %cmp87 = fcmp olt float %79, %80
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %lor.lhs.false, %for.end84
  %81 = load float, ptr %this, align 4
  store float %81, ptr %bestf, align 4
  %82 = load i32, ptr %i59, align 4
  store i32 %82, ptr %best, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %lor.lhs.false
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %for.body64
  %83 = load i32, ptr %dim, align 4
  %84 = load ptr, ptr %e, align 8
  %idx.ext = sext i32 %83 to i64
  %add.ptr = getelementptr inbounds float, ptr %84, i64 %idx.ext
  store ptr %add.ptr, ptr %e, align 8
  br label %for.inc92

for.inc92:                                        ; preds = %if.end91
  %85 = load i32, ptr %i59, align 4
  %inc93 = add nsw i32 %85, 1
  store i32 %inc93, ptr %i59, align 4
  br label %for.cond60, !llvm.loop !11

for.end94:                                        ; preds = %for.cond60
  br label %if.end95

if.end95:                                         ; preds = %for.end94, %for.end50
  %86 = load ptr, ptr %book.addr, align 8
  %valuelist96 = getelementptr inbounds nuw %struct.codebook, ptr %86, i32 0, i32 4
  %87 = load ptr, ptr %valuelist96, align 8
  %88 = load i32, ptr %best, align 4
  %89 = load i32, ptr %dim, align 4
  %mul97 = mul nsw i32 %88, %89
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds float, ptr %87, i64 %idx.ext98
  store ptr %add.ptr99, ptr %ptr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc106, %if.end95
  %90 = load i32, ptr %i, align 4
  %91 = load i32, ptr %dim, align 4
  %cmp101 = icmp slt i32 %90, %91
  br i1 %cmp101, label %for.body103, label %for.end108

for.body103:                                      ; preds = %for.cond100
  %92 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds nuw float, ptr %92, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  %93 = load float, ptr %92, align 4
  %94 = load ptr, ptr %a.addr, align 8
  %incdec.ptr104 = getelementptr inbounds nuw float, ptr %94, i32 1
  store ptr %incdec.ptr104, ptr %a.addr, align 8
  %95 = load float, ptr %94, align 4
  %sub105 = fsub float %95, %93
  store float %sub105, ptr %94, align 4
  br label %for.inc106

for.inc106:                                       ; preds = %for.body103
  %96 = load i32, ptr %i, align 4
  %inc107 = add nsw i32 %96, 1
  store i32 %inc107, ptr %i, align 4
  br label %for.cond100, !llvm.loop !12

for.end108:                                       ; preds = %for.cond100
  %97 = load i32, ptr %best, align 4
  ret i32 %97
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
