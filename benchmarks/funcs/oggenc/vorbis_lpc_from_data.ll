; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local float @vorbis_lpc_from_data(ptr noundef %data, ptr noundef %lpci, i32 noundef %n, i32 noundef %m) #2 {
entry:
  %retval = alloca float, align 4
  %data.addr = alloca ptr, align 8
  %lpci.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %aut = alloca ptr, align 8
  %lpc = alloca ptr, align 8
  %error = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca double, align 8
  %r = alloca double, align 8
  %tmp = alloca double, align 8
  store ptr %data, ptr %data.addr, align 8
  store ptr %lpci, ptr %lpci.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %1 = alloca i8, i64 %mul, align 16
  store ptr %1, ptr %aut, align 8
  %2 = load i32, ptr %m.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 8, %conv1
  %3 = alloca i8, i64 %mul2, align 16
  store ptr %3, ptr %lpc, align 8
  %4 = load i32, ptr %m.addr, align 4
  %add3 = add nsw i32 %4, 1
  store i32 %add3, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %5 = load i32, ptr %j, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %j, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store double 0.000000e+00, ptr %d, align 8
  %6 = load i32, ptr %j, align 4
  store i32 %6, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %data.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds float, ptr %9, i64 %idxprom
  %11 = load float, ptr %arrayidx, align 4
  %conv5 = fpext float %11 to double
  %12 = load ptr, ptr %data.addr, align 8
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %13, %14
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds float, ptr %12, i64 %idxprom6
  %15 = load float, ptr %arrayidx7, align 4
  %conv8 = fpext float %15 to double
  %16 = load double, ptr %d, align 8
  %17 = call double @llvm.fmuladd.f64(double %conv5, double %conv8, double %16)
  store double %17, ptr %d, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load double, ptr %d, align 8
  %20 = load ptr, ptr %aut, align 8
  %21 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds double, ptr %20, i64 %idxprom10
  store double %19, ptr %arrayidx11, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %aut, align 8
  %arrayidx12 = getelementptr inbounds double, ptr %22, i64 0
  %23 = load double, ptr %arrayidx12, align 8
  store double %23, ptr %error, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc72, %while.end
  %24 = load i32, ptr %i, align 4
  %25 = load i32, ptr %m.addr, align 4
  %cmp14 = icmp slt i32 %24, %25
  br i1 %cmp14, label %for.body16, label %for.end74

for.body16:                                       ; preds = %for.cond13
  %26 = load ptr, ptr %aut, align 8
  %27 = load i32, ptr %i, align 4
  %add17 = add nsw i32 %27, 1
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds double, ptr %26, i64 %idxprom18
  %28 = load double, ptr %arrayidx19, align 8
  %fneg = fneg double %28
  store double %fneg, ptr %r, align 8
  %29 = load double, ptr %error, align 8
  %cmp20 = fcmp oeq double %29, 0.000000e+00
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body16
  %30 = load ptr, ptr %lpci.addr, align 8
  %31 = load i32, ptr %m.addr, align 4
  %conv22 = sext i32 %31 to i64
  %mul23 = mul i64 %conv22, 4
  call void @llvm.memset.p0.i64(ptr align 4 %30, i8 0, i64 %mul23, i1 false)
  store float 0.000000e+00, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body16
  store i32 0, ptr %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc34, %if.end
  %32 = load i32, ptr %j, align 4
  %33 = load i32, ptr %i, align 4
  %cmp25 = icmp slt i32 %32, %33
  br i1 %cmp25, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond24
  %34 = load ptr, ptr %lpc, align 8
  %35 = load i32, ptr %j, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds double, ptr %34, i64 %idxprom28
  %36 = load double, ptr %arrayidx29, align 8
  %37 = load ptr, ptr %aut, align 8
  %38 = load i32, ptr %i, align 4
  %39 = load i32, ptr %j, align 4
  %sub30 = sub nsw i32 %38, %39
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds double, ptr %37, i64 %idxprom31
  %40 = load double, ptr %arrayidx32, align 8
  %41 = load double, ptr %r, align 8
  %neg = fneg double %36
  %42 = call double @llvm.fmuladd.f64(double %neg, double %40, double %41)
  store double %42, ptr %r, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %43 = load i32, ptr %j, align 4
  %inc35 = add nsw i32 %43, 1
  store i32 %inc35, ptr %j, align 4
  br label %for.cond24, !llvm.loop !9

for.end36:                                        ; preds = %for.cond24
  %44 = load double, ptr %error, align 8
  %45 = load double, ptr %r, align 8
  %div = fdiv double %45, %44
  store double %div, ptr %r, align 8
  %46 = load double, ptr %r, align 8
  %47 = load ptr, ptr %lpc, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %48 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %47, i64 %idxprom37
  store double %46, ptr %arrayidx38, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc58, %for.end36
  %49 = load i32, ptr %j, align 4
  %50 = load i32, ptr %i, align 4
  %div40 = sdiv i32 %50, 2
  %cmp41 = icmp slt i32 %49, %div40
  br i1 %cmp41, label %for.body43, label %for.end60

for.body43:                                       ; preds = %for.cond39
  %51 = load ptr, ptr %lpc, align 8
  %52 = load i32, ptr %j, align 4
  %idxprom44 = sext i32 %52 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %51, i64 %idxprom44
  %53 = load double, ptr %arrayidx45, align 8
  store double %53, ptr %tmp, align 8
  %54 = load double, ptr %r, align 8
  %55 = load ptr, ptr %lpc, align 8
  %56 = load i32, ptr %i, align 4
  %sub46 = sub nsw i32 %56, 1
  %57 = load i32, ptr %j, align 4
  %sub47 = sub nsw i32 %sub46, %57
  %idxprom48 = sext i32 %sub47 to i64
  %arrayidx49 = getelementptr inbounds double, ptr %55, i64 %idxprom48
  %58 = load double, ptr %arrayidx49, align 8
  %59 = load ptr, ptr %lpc, align 8
  %60 = load i32, ptr %j, align 4
  %idxprom51 = sext i32 %60 to i64
  %arrayidx52 = getelementptr inbounds double, ptr %59, i64 %idxprom51
  %61 = load double, ptr %arrayidx52, align 8
  %62 = call double @llvm.fmuladd.f64(double %54, double %58, double %61)
  store double %62, ptr %arrayidx52, align 8
  %63 = load double, ptr %r, align 8
  %64 = load double, ptr %tmp, align 8
  %65 = load ptr, ptr %lpc, align 8
  %66 = load i32, ptr %i, align 4
  %sub54 = sub nsw i32 %66, 1
  %67 = load i32, ptr %j, align 4
  %sub55 = sub nsw i32 %sub54, %67
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds double, ptr %65, i64 %idxprom56
  %68 = load double, ptr %arrayidx57, align 8
  %69 = call double @llvm.fmuladd.f64(double %63, double %64, double %68)
  store double %69, ptr %arrayidx57, align 8
  br label %for.inc58

for.inc58:                                        ; preds = %for.body43
  %70 = load i32, ptr %j, align 4
  %inc59 = add nsw i32 %70, 1
  store i32 %inc59, ptr %j, align 4
  br label %for.cond39, !llvm.loop !10

for.end60:                                        ; preds = %for.cond39
  %71 = load i32, ptr %i, align 4
  %rem = srem i32 %71, 2
  %tobool61 = icmp ne i32 %rem, 0
  br i1 %tobool61, label %if.then62, label %if.end68

if.then62:                                        ; preds = %for.end60
  %72 = load ptr, ptr %lpc, align 8
  %73 = load i32, ptr %j, align 4
  %idxprom63 = sext i32 %73 to i64
  %arrayidx64 = getelementptr inbounds double, ptr %72, i64 %idxprom63
  %74 = load double, ptr %arrayidx64, align 8
  %75 = load double, ptr %r, align 8
  %76 = load ptr, ptr %lpc, align 8
  %77 = load i32, ptr %j, align 4
  %idxprom66 = sext i32 %77 to i64
  %arrayidx67 = getelementptr inbounds double, ptr %76, i64 %idxprom66
  %78 = load double, ptr %arrayidx67, align 8
  %79 = call double @llvm.fmuladd.f64(double %74, double %75, double %78)
  store double %79, ptr %arrayidx67, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %for.end60
  %80 = load double, ptr %r, align 8
  %81 = load double, ptr %r, align 8
  %neg70 = fneg double %80
  %82 = call double @llvm.fmuladd.f64(double %neg70, double %81, double 1.000000e+00)
  %83 = load double, ptr %error, align 8
  %mul71 = fmul double %83, %82
  store double %mul71, ptr %error, align 8
  br label %for.inc72

for.inc72:                                        ; preds = %if.end68
  %84 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %84, 1
  store i32 %inc73, ptr %i, align 4
  br label %for.cond13, !llvm.loop !11

for.end74:                                        ; preds = %for.cond13
  store i32 0, ptr %j, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc84, %for.end74
  %85 = load i32, ptr %j, align 4
  %86 = load i32, ptr %m.addr, align 4
  %cmp76 = icmp slt i32 %85, %86
  br i1 %cmp76, label %for.body78, label %for.end86

for.body78:                                       ; preds = %for.cond75
  %87 = load ptr, ptr %lpc, align 8
  %88 = load i32, ptr %j, align 4
  %idxprom79 = sext i32 %88 to i64
  %arrayidx80 = getelementptr inbounds double, ptr %87, i64 %idxprom79
  %89 = load double, ptr %arrayidx80, align 8
  %conv81 = fptrunc double %89 to float
  %90 = load ptr, ptr %lpci.addr, align 8
  %91 = load i32, ptr %j, align 4
  %idxprom82 = sext i32 %91 to i64
  %arrayidx83 = getelementptr inbounds float, ptr %90, i64 %idxprom82
  store float %conv81, ptr %arrayidx83, align 4
  br label %for.inc84

for.inc84:                                        ; preds = %for.body78
  %92 = load i32, ptr %j, align 4
  %inc85 = add nsw i32 %92, 1
  store i32 %inc85, ptr %j, align 4
  br label %for.cond75, !llvm.loop !12

for.end86:                                        ; preds = %for.cond75
  %93 = load double, ptr %error, align 8
  %conv87 = fptrunc double %93 to float
  store float %conv87, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end86, %if.then
  %94 = load float, ptr %retval, align 4
  ret float %94
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
