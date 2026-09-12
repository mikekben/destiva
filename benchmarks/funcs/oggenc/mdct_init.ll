; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #1

; Function Attrs: nounwind
declare double @log(double noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @mdct_init(ptr noundef %lookup, i32 noundef %n) #3 {
entry:
  %lookup.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %bitrev = alloca ptr, align 8
  %T = alloca ptr, align 8
  %i = alloca i32, align 4
  %n2 = alloca i32, align 4
  %log2n = alloca i32, align 4
  %mask = alloca i32, align 4
  %i99 = alloca i32, align 4
  %j = alloca i32, align 4
  %msb = alloca i32, align 4
  %acc = alloca i32, align 4
  store ptr %lookup, ptr %lookup.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %0, 4
  %conv = sext i32 %div to i64
  %mul = mul i64 4, %conv
  %call = call noalias ptr @malloc(i64 noundef %mul) #4
  store ptr %call, ptr %bitrev, align 8
  %1 = load i32, ptr %n.addr, align 4
  %2 = load i32, ptr %n.addr, align 4
  %div1 = sdiv i32 %2, 4
  %add = add nsw i32 %1, %div1
  %conv2 = sext i32 %add to i64
  %mul3 = mul i64 4, %conv2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #4
  store ptr %call4, ptr %T, align 8
  %3 = load i32, ptr %n.addr, align 4
  %shr = ashr i32 %3, 1
  store i32 %shr, ptr %n2, align 4
  %4 = load i32, ptr %n.addr, align 4
  %conv5 = sitofp i32 %4 to float
  %conv6 = fpext float %conv5 to double
  %call7 = call double @log(double noundef %conv6) #5
  %call8 = call double @log(double noundef 2.000000e+00) #5
  %div9 = fdiv double %call7, %call8
  %5 = call double @llvm.rint.f64(double %div9)
  %conv10 = fptosi double %5 to i32
  %6 = load ptr, ptr %lookup.addr, align 8
  %log2n11 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %6, i32 0, i32 1
  store i32 %conv10, ptr %log2n11, align 4
  store i32 %conv10, ptr %log2n, align 4
  %7 = load i32, ptr %n.addr, align 4
  %8 = load ptr, ptr %lookup.addr, align 8
  %n12 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %8, i32 0, i32 0
  store i32 %7, ptr %n12, align 8
  %9 = load ptr, ptr %T, align 8
  %10 = load ptr, ptr %lookup.addr, align 8
  %trig = getelementptr inbounds nuw %struct.mdct_lookup, ptr %10, i32 0, i32 2
  store ptr %9, ptr %trig, align 8
  %11 = load ptr, ptr %bitrev, align 8
  %12 = load ptr, ptr %lookup.addr, align 8
  %bitrev13 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %12, i32 0, i32 3
  store ptr %11, ptr %bitrev13, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %n.addr, align 4
  %div14 = sdiv i32 %14, 4
  %cmp = icmp slt i32 %13, %div14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %n.addr, align 4
  %conv16 = sitofp i32 %15 to double
  %div17 = fdiv double 0x400921FB54442D18, %conv16
  %16 = load i32, ptr %i, align 4
  %mul18 = mul nsw i32 4, %16
  %conv19 = sitofp i32 %mul18 to double
  %mul20 = fmul double %div17, %conv19
  %call21 = call double @cos(double noundef %mul20) #5
  %conv22 = fptrunc double %call21 to float
  %17 = load ptr, ptr %T, align 8
  %18 = load i32, ptr %i, align 4
  %mul23 = mul nsw i32 %18, 2
  %idxprom = sext i32 %mul23 to i64
  %arrayidx = getelementptr inbounds float, ptr %17, i64 %idxprom
  store float %conv22, ptr %arrayidx, align 4
  %19 = load i32, ptr %n.addr, align 4
  %conv24 = sitofp i32 %19 to double
  %div25 = fdiv double 0x400921FB54442D18, %conv24
  %20 = load i32, ptr %i, align 4
  %mul26 = mul nsw i32 4, %20
  %conv27 = sitofp i32 %mul26 to double
  %mul28 = fmul double %div25, %conv27
  %call29 = call double @sin(double noundef %mul28) #5
  %fneg = fneg double %call29
  %conv30 = fptrunc double %fneg to float
  %21 = load ptr, ptr %T, align 8
  %22 = load i32, ptr %i, align 4
  %mul31 = mul nsw i32 %22, 2
  %add32 = add nsw i32 %mul31, 1
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds float, ptr %21, i64 %idxprom33
  store float %conv30, ptr %arrayidx34, align 4
  %23 = load i32, ptr %n.addr, align 4
  %mul35 = mul nsw i32 2, %23
  %conv36 = sitofp i32 %mul35 to double
  %div37 = fdiv double 0x400921FB54442D18, %conv36
  %24 = load i32, ptr %i, align 4
  %mul38 = mul nsw i32 2, %24
  %add39 = add nsw i32 %mul38, 1
  %conv40 = sitofp i32 %add39 to double
  %mul41 = fmul double %div37, %conv40
  %call42 = call double @cos(double noundef %mul41) #5
  %conv43 = fptrunc double %call42 to float
  %25 = load ptr, ptr %T, align 8
  %26 = load i32, ptr %n2, align 4
  %27 = load i32, ptr %i, align 4
  %mul44 = mul nsw i32 %27, 2
  %add45 = add nsw i32 %26, %mul44
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds float, ptr %25, i64 %idxprom46
  store float %conv43, ptr %arrayidx47, align 4
  %28 = load i32, ptr %n.addr, align 4
  %mul48 = mul nsw i32 2, %28
  %conv49 = sitofp i32 %mul48 to double
  %div50 = fdiv double 0x400921FB54442D18, %conv49
  %29 = load i32, ptr %i, align 4
  %mul51 = mul nsw i32 2, %29
  %add52 = add nsw i32 %mul51, 1
  %conv53 = sitofp i32 %add52 to double
  %mul54 = fmul double %div50, %conv53
  %call55 = call double @sin(double noundef %mul54) #5
  %conv56 = fptrunc double %call55 to float
  %30 = load ptr, ptr %T, align 8
  %31 = load i32, ptr %n2, align 4
  %32 = load i32, ptr %i, align 4
  %mul57 = mul nsw i32 %32, 2
  %add58 = add nsw i32 %31, %mul57
  %add59 = add nsw i32 %add58, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %30, i64 %idxprom60
  store float %conv56, ptr %arrayidx61, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc95, %for.end
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %n.addr, align 4
  %div63 = sdiv i32 %35, 8
  %cmp64 = icmp slt i32 %34, %div63
  br i1 %cmp64, label %for.body66, label %for.end97

for.body66:                                       ; preds = %for.cond62
  %36 = load i32, ptr %n.addr, align 4
  %conv67 = sitofp i32 %36 to double
  %div68 = fdiv double 0x400921FB54442D18, %conv67
  %37 = load i32, ptr %i, align 4
  %mul69 = mul nsw i32 4, %37
  %add70 = add nsw i32 %mul69, 2
  %conv71 = sitofp i32 %add70 to double
  %mul72 = fmul double %div68, %conv71
  %call73 = call double @cos(double noundef %mul72) #5
  %mul74 = fmul double %call73, 5.000000e-01
  %conv75 = fptrunc double %mul74 to float
  %38 = load ptr, ptr %T, align 8
  %39 = load i32, ptr %n.addr, align 4
  %40 = load i32, ptr %i, align 4
  %mul76 = mul nsw i32 %40, 2
  %add77 = add nsw i32 %39, %mul76
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds float, ptr %38, i64 %idxprom78
  store float %conv75, ptr %arrayidx79, align 4
  %41 = load i32, ptr %n.addr, align 4
  %conv80 = sitofp i32 %41 to double
  %div81 = fdiv double 0x400921FB54442D18, %conv80
  %42 = load i32, ptr %i, align 4
  %mul82 = mul nsw i32 4, %42
  %add83 = add nsw i32 %mul82, 2
  %conv84 = sitofp i32 %add83 to double
  %mul85 = fmul double %div81, %conv84
  %call86 = call double @sin(double noundef %mul85) #5
  %fneg87 = fneg double %call86
  %mul88 = fmul double %fneg87, 5.000000e-01
  %conv89 = fptrunc double %mul88 to float
  %43 = load ptr, ptr %T, align 8
  %44 = load i32, ptr %n.addr, align 4
  %45 = load i32, ptr %i, align 4
  %mul90 = mul nsw i32 %45, 2
  %add91 = add nsw i32 %44, %mul90
  %add92 = add nsw i32 %add91, 1
  %idxprom93 = sext i32 %add92 to i64
  %arrayidx94 = getelementptr inbounds float, ptr %43, i64 %idxprom93
  store float %conv89, ptr %arrayidx94, align 4
  br label %for.inc95

for.inc95:                                        ; preds = %for.body66
  %46 = load i32, ptr %i, align 4
  %inc96 = add nsw i32 %46, 1
  store i32 %inc96, ptr %i, align 4
  br label %for.cond62, !llvm.loop !8

for.end97:                                        ; preds = %for.cond62
  %47 = load i32, ptr %log2n, align 4
  %sub = sub nsw i32 %47, 1
  %shl = shl i32 1, %sub
  %sub98 = sub nsw i32 %shl, 1
  store i32 %sub98, ptr %mask, align 4
  %48 = load i32, ptr %log2n, align 4
  %sub100 = sub nsw i32 %48, 2
  %shl101 = shl i32 1, %sub100
  store i32 %shl101, ptr %msb, align 4
  store i32 0, ptr %i99, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc125, %for.end97
  %49 = load i32, ptr %i99, align 4
  %50 = load i32, ptr %n.addr, align 4
  %div103 = sdiv i32 %50, 8
  %cmp104 = icmp slt i32 %49, %div103
  br i1 %cmp104, label %for.body106, label %for.end127

for.body106:                                      ; preds = %for.cond102
  store i32 0, ptr %acc, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc113, %for.body106
  %51 = load i32, ptr %msb, align 4
  %52 = load i32, ptr %j, align 4
  %shr108 = ashr i32 %51, %52
  %tobool = icmp ne i32 %shr108, 0
  br i1 %tobool, label %for.body109, label %for.end115

for.body109:                                      ; preds = %for.cond107
  %53 = load i32, ptr %msb, align 4
  %54 = load i32, ptr %j, align 4
  %shr110 = ashr i32 %53, %54
  %55 = load i32, ptr %i99, align 4
  %and = and i32 %shr110, %55
  %tobool111 = icmp ne i32 %and, 0
  br i1 %tobool111, label %if.then, label %if.end

if.then:                                          ; preds = %for.body109
  %56 = load i32, ptr %j, align 4
  %shl112 = shl i32 1, %56
  %57 = load i32, ptr %acc, align 4
  %or = or i32 %57, %shl112
  store i32 %or, ptr %acc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body109
  br label %for.inc113

for.inc113:                                       ; preds = %if.end
  %58 = load i32, ptr %j, align 4
  %inc114 = add nsw i32 %58, 1
  store i32 %inc114, ptr %j, align 4
  br label %for.cond107, !llvm.loop !9

for.end115:                                       ; preds = %for.cond107
  %59 = load i32, ptr %acc, align 4
  %not = xor i32 %59, -1
  %60 = load i32, ptr %mask, align 4
  %and116 = and i32 %not, %60
  %sub117 = sub nsw i32 %and116, 1
  %61 = load ptr, ptr %bitrev, align 8
  %62 = load i32, ptr %i99, align 4
  %mul118 = mul nsw i32 %62, 2
  %idxprom119 = sext i32 %mul118 to i64
  %arrayidx120 = getelementptr inbounds i32, ptr %61, i64 %idxprom119
  store i32 %sub117, ptr %arrayidx120, align 4
  %63 = load i32, ptr %acc, align 4
  %64 = load ptr, ptr %bitrev, align 8
  %65 = load i32, ptr %i99, align 4
  %mul121 = mul nsw i32 %65, 2
  %add122 = add nsw i32 %mul121, 1
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds i32, ptr %64, i64 %idxprom123
  store i32 %63, ptr %arrayidx124, align 4
  br label %for.inc125

for.inc125:                                       ; preds = %for.end115
  %66 = load i32, ptr %i99, align 4
  %inc126 = add nsw i32 %66, 1
  store i32 %inc126, ptr %i99, align 4
  br label %for.cond102, !llvm.loop !10

for.end127:                                       ; preds = %for.cond102
  %67 = load i32, ptr %n.addr, align 4
  %conv128 = sitofp i32 %67 to float
  %div129 = fdiv float 4.000000e+00, %conv128
  %68 = load ptr, ptr %lookup.addr, align 8
  %scale = getelementptr inbounds nuw %struct.mdct_lookup, ptr %68, i32 0, i32 4
  store float %div129, ptr %scale, align 8
  ret void
}

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: nounwind
declare double @sin(double noundef) #2

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
