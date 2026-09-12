; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsfit_acc = type { i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #0

; Function Attrs: nounwind uwtable
define hidden void @fit_line(ptr noundef %a, i32 noundef %fits, ptr noundef %y0, ptr noundef %y1) #1 {
entry:
  %a.addr = alloca ptr, align 8
  %fits.addr = alloca i32, align 4
  %y0.addr = alloca ptr, align 8
  %y1.addr = alloca ptr, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %x2 = alloca i64, align 8
  %y2 = alloca i64, align 8
  %xy = alloca i64, align 8
  %an = alloca i64, align 8
  %i = alloca i64, align 8
  %x0 = alloca i64, align 8
  %x1 = alloca i64, align 8
  %fx = alloca double, align 8
  %fy = alloca double, align 8
  %fx2 = alloca double, align 8
  %fxy = alloca double, align 8
  %denom = alloca double, align 8
  %a54 = alloca double, align 8
  %b = alloca double, align 8
  store ptr %a, ptr %a.addr, align 8
  store i32 %fits, ptr %fits.addr, align 4
  store ptr %y0, ptr %y0.addr, align 8
  store ptr %y1, ptr %y1.addr, align 8
  store i64 0, ptr %x, align 8
  store i64 0, ptr %y, align 8
  store i64 0, ptr %x2, align 8
  store i64 0, ptr %y2, align 8
  store i64 0, ptr %xy, align 8
  store i64 0, ptr %an, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds %struct.lsfit_acc, ptr %0, i64 0
  %x01 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %arrayidx, i32 0, i32 0
  %1 = load i64, ptr %x01, align 8
  store i64 %1, ptr %x0, align 8
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load i32, ptr %fits.addr, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds %struct.lsfit_acc, ptr %2, i64 %idxprom
  %x13 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %arrayidx2, i32 0, i32 1
  %4 = load i64, ptr %x13, align 8
  store i64 %4, ptr %x1, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %i, align 8
  %6 = load i32, ptr %fits.addr, align 4
  %conv = sext i32 %6 to i64
  %cmp = icmp slt i64 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %a.addr, align 8
  %8 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds %struct.lsfit_acc, ptr %7, i64 %8
  %xa = getelementptr inbounds nuw %struct.lsfit_acc, ptr %arrayidx5, i32 0, i32 2
  %9 = load i64, ptr %xa, align 8
  %10 = load i64, ptr %x, align 8
  %add = add nsw i64 %10, %9
  store i64 %add, ptr %x, align 8
  %11 = load ptr, ptr %a.addr, align 8
  %12 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds %struct.lsfit_acc, ptr %11, i64 %12
  %ya = getelementptr inbounds nuw %struct.lsfit_acc, ptr %arrayidx6, i32 0, i32 3
  %13 = load i64, ptr %ya, align 8
  %14 = load i64, ptr %y, align 8
  %add7 = add nsw i64 %14, %13
  store i64 %add7, ptr %y, align 8
  %15 = load ptr, ptr %a.addr, align 8
  %16 = load i64, ptr %i, align 8
  %arrayidx8 = getelementptr inbounds %struct.lsfit_acc, ptr %15, i64 %16
  %x2a = getelementptr inbounds nuw %struct.lsfit_acc, ptr %arrayidx8, i32 0, i32 4
  %17 = load i64, ptr %x2a, align 8
  %18 = load i64, ptr %x2, align 8
  %add9 = add nsw i64 %18, %17
  store i64 %add9, ptr %x2, align 8
  %19 = load ptr, ptr %a.addr, align 8
  %20 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds %struct.lsfit_acc, ptr %19, i64 %20
  %y2a = getelementptr inbounds nuw %struct.lsfit_acc, ptr %arrayidx10, i32 0, i32 5
  %21 = load i64, ptr %y2a, align 8
  %22 = load i64, ptr %y2, align 8
  %add11 = add nsw i64 %22, %21
  store i64 %add11, ptr %y2, align 8
  %23 = load ptr, ptr %a.addr, align 8
  %24 = load i64, ptr %i, align 8
  %arrayidx12 = getelementptr inbounds %struct.lsfit_acc, ptr %23, i64 %24
  %xya = getelementptr inbounds nuw %struct.lsfit_acc, ptr %arrayidx12, i32 0, i32 6
  %25 = load i64, ptr %xya, align 8
  %26 = load i64, ptr %xy, align 8
  %add13 = add nsw i64 %26, %25
  store i64 %add13, ptr %xy, align 8
  %27 = load ptr, ptr %a.addr, align 8
  %28 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds %struct.lsfit_acc, ptr %27, i64 %28
  %an15 = getelementptr inbounds nuw %struct.lsfit_acc, ptr %arrayidx14, i32 0, i32 7
  %29 = load i64, ptr %an15, align 8
  %30 = load i64, ptr %an, align 8
  %add16 = add nsw i64 %30, %29
  store i64 %add16, ptr %an, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i64, ptr %i, align 8
  %inc = add nsw i64 %31, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %32 = load ptr, ptr %y0.addr, align 8
  %33 = load i32, ptr %32, align 4
  %cmp17 = icmp sge i32 %33, 0
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %34 = load i64, ptr %x0, align 8
  %35 = load i64, ptr %x, align 8
  %add19 = add nsw i64 %35, %34
  store i64 %add19, ptr %x, align 8
  %36 = load ptr, ptr %y0.addr, align 8
  %37 = load i32, ptr %36, align 4
  %conv20 = sext i32 %37 to i64
  %38 = load i64, ptr %y, align 8
  %add21 = add nsw i64 %38, %conv20
  store i64 %add21, ptr %y, align 8
  %39 = load i64, ptr %x0, align 8
  %40 = load i64, ptr %x0, align 8
  %mul = mul nsw i64 %39, %40
  %41 = load i64, ptr %x2, align 8
  %add22 = add nsw i64 %41, %mul
  store i64 %add22, ptr %x2, align 8
  %42 = load ptr, ptr %y0.addr, align 8
  %43 = load i32, ptr %42, align 4
  %44 = load ptr, ptr %y0.addr, align 8
  %45 = load i32, ptr %44, align 4
  %mul23 = mul nsw i32 %43, %45
  %conv24 = sext i32 %mul23 to i64
  %46 = load i64, ptr %y2, align 8
  %add25 = add nsw i64 %46, %conv24
  store i64 %add25, ptr %y2, align 8
  %47 = load ptr, ptr %y0.addr, align 8
  %48 = load i32, ptr %47, align 4
  %conv26 = sext i32 %48 to i64
  %49 = load i64, ptr %x0, align 8
  %mul27 = mul nsw i64 %conv26, %49
  %50 = load i64, ptr %xy, align 8
  %add28 = add nsw i64 %50, %mul27
  store i64 %add28, ptr %xy, align 8
  %51 = load i64, ptr %an, align 8
  %inc29 = add nsw i64 %51, 1
  store i64 %inc29, ptr %an, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %52 = load ptr, ptr %y1.addr, align 8
  %53 = load i32, ptr %52, align 4
  %cmp30 = icmp sge i32 %53, 0
  br i1 %cmp30, label %if.then32, label %if.end45

if.then32:                                        ; preds = %if.end
  %54 = load i64, ptr %x1, align 8
  %55 = load i64, ptr %x, align 8
  %add33 = add nsw i64 %55, %54
  store i64 %add33, ptr %x, align 8
  %56 = load ptr, ptr %y1.addr, align 8
  %57 = load i32, ptr %56, align 4
  %conv34 = sext i32 %57 to i64
  %58 = load i64, ptr %y, align 8
  %add35 = add nsw i64 %58, %conv34
  store i64 %add35, ptr %y, align 8
  %59 = load i64, ptr %x1, align 8
  %60 = load i64, ptr %x1, align 8
  %mul36 = mul nsw i64 %59, %60
  %61 = load i64, ptr %x2, align 8
  %add37 = add nsw i64 %61, %mul36
  store i64 %add37, ptr %x2, align 8
  %62 = load ptr, ptr %y1.addr, align 8
  %63 = load i32, ptr %62, align 4
  %64 = load ptr, ptr %y1.addr, align 8
  %65 = load i32, ptr %64, align 4
  %mul38 = mul nsw i32 %63, %65
  %conv39 = sext i32 %mul38 to i64
  %66 = load i64, ptr %y2, align 8
  %add40 = add nsw i64 %66, %conv39
  store i64 %add40, ptr %y2, align 8
  %67 = load ptr, ptr %y1.addr, align 8
  %68 = load i32, ptr %67, align 4
  %conv41 = sext i32 %68 to i64
  %69 = load i64, ptr %x1, align 8
  %mul42 = mul nsw i64 %conv41, %69
  %70 = load i64, ptr %xy, align 8
  %add43 = add nsw i64 %70, %mul42
  store i64 %add43, ptr %xy, align 8
  %71 = load i64, ptr %an, align 8
  %inc44 = add nsw i64 %71, 1
  store i64 %inc44, ptr %an, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then32, %if.end
  %72 = load i64, ptr %an, align 8
  %tobool = icmp ne i64 %72, 0
  br i1 %tobool, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end45
  %73 = load i64, ptr %x, align 8
  %conv47 = sitofp i64 %73 to double
  store double %conv47, ptr %fx, align 8
  %74 = load i64, ptr %y, align 8
  %conv48 = sitofp i64 %74 to double
  store double %conv48, ptr %fy, align 8
  %75 = load i64, ptr %x2, align 8
  %conv49 = sitofp i64 %75 to double
  store double %conv49, ptr %fx2, align 8
  %76 = load i64, ptr %xy, align 8
  %conv50 = sitofp i64 %76 to double
  store double %conv50, ptr %fxy, align 8
  %77 = load i64, ptr %an, align 8
  %conv51 = sitofp i64 %77 to double
  %78 = load double, ptr %fx2, align 8
  %79 = load double, ptr %fx, align 8
  %80 = load double, ptr %fx, align 8
  %mul53 = fmul double %79, %80
  %neg = fneg double %mul53
  %81 = call double @llvm.fmuladd.f64(double %conv51, double %78, double %neg)
  %div = fdiv double 1.000000e+00, %81
  store double %div, ptr %denom, align 8
  %82 = load double, ptr %fy, align 8
  %83 = load double, ptr %fx2, align 8
  %84 = load double, ptr %fxy, align 8
  %85 = load double, ptr %fx, align 8
  %mul56 = fmul double %84, %85
  %neg57 = fneg double %mul56
  %86 = call double @llvm.fmuladd.f64(double %82, double %83, double %neg57)
  %87 = load double, ptr %denom, align 8
  %mul58 = fmul double %86, %87
  store double %mul58, ptr %a54, align 8
  %88 = load i64, ptr %an, align 8
  %conv59 = sitofp i64 %88 to double
  %89 = load double, ptr %fxy, align 8
  %90 = load double, ptr %fx, align 8
  %91 = load double, ptr %fy, align 8
  %mul61 = fmul double %90, %91
  %neg62 = fneg double %mul61
  %92 = call double @llvm.fmuladd.f64(double %conv59, double %89, double %neg62)
  %93 = load double, ptr %denom, align 8
  %mul63 = fmul double %92, %93
  store double %mul63, ptr %b, align 8
  %94 = load double, ptr %a54, align 8
  %95 = load double, ptr %b, align 8
  %96 = load i64, ptr %x0, align 8
  %conv64 = sitofp i64 %96 to double
  %97 = call double @llvm.fmuladd.f64(double %95, double %conv64, double %94)
  %98 = call double @llvm.rint.f64(double %97)
  %conv66 = fptosi double %98 to i32
  %99 = load ptr, ptr %y0.addr, align 8
  store i32 %conv66, ptr %99, align 4
  %100 = load double, ptr %a54, align 8
  %101 = load double, ptr %b, align 8
  %102 = load i64, ptr %x1, align 8
  %conv67 = sitofp i64 %102 to double
  %103 = call double @llvm.fmuladd.f64(double %101, double %conv67, double %100)
  %104 = call double @llvm.rint.f64(double %103)
  %conv69 = fptosi double %104 to i32
  %105 = load ptr, ptr %y1.addr, align 8
  store i32 %conv69, ptr %105, align 4
  %106 = load ptr, ptr %y0.addr, align 8
  %107 = load i32, ptr %106, align 4
  %cmp70 = icmp sgt i32 %107, 1023
  br i1 %cmp70, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.then46
  %108 = load ptr, ptr %y0.addr, align 8
  store i32 1023, ptr %108, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.then46
  %109 = load ptr, ptr %y1.addr, align 8
  %110 = load i32, ptr %109, align 4
  %cmp74 = icmp sgt i32 %110, 1023
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end73
  %111 = load ptr, ptr %y1.addr, align 8
  store i32 1023, ptr %111, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end73
  %112 = load ptr, ptr %y0.addr, align 8
  %113 = load i32, ptr %112, align 4
  %cmp78 = icmp slt i32 %113, 0
  br i1 %cmp78, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end77
  %114 = load ptr, ptr %y0.addr, align 8
  store i32 0, ptr %114, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end77
  %115 = load ptr, ptr %y1.addr, align 8
  %116 = load i32, ptr %115, align 4
  %cmp82 = icmp slt i32 %116, 0
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.end81
  %117 = load ptr, ptr %y1.addr, align 8
  store i32 0, ptr %117, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end81
  br label %if.end86

if.else:                                          ; preds = %if.end45
  %118 = load ptr, ptr %y0.addr, align 8
  store i32 0, ptr %118, align 4
  %119 = load ptr, ptr %y1.addr, align 8
  store i32 0, ptr %119, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.end85
  ret void
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
