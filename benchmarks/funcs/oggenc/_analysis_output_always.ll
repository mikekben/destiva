; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.149 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.150 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.151 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.152 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.153 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define dso_local void @_analysis_output_always(ptr noundef %base, i32 noundef %i, ptr noundef %v, i32 noundef %n, i32 noundef %bark, i32 noundef %dB, i64 noundef %off) #3 {
entry:
  %base.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %bark.addr = alloca i32, align 4
  %dB.addr = alloca i32, align 4
  %off.addr = alloca i64, align 8
  %j = alloca i32, align 4
  %of = alloca ptr, align 8
  %buffer = alloca [80 x i8], align 16
  %b = alloca float, align 4
  %val = alloca float, align 4
  store ptr %base, ptr %base.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %bark, ptr %bark.addr, align 4
  store i32 %dB, ptr %dB.addr, align 4
  store i64 %off, ptr %off.addr, align 8
  %arraydecay = getelementptr inbounds [80 x i8], ptr %buffer, i64 0, i64 0
  %0 = load ptr, ptr %base.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.149, ptr noundef %0, i32 noundef %1) #5
  %arraydecay1 = getelementptr inbounds [80 x i8], ptr %buffer, i64 0, i64 0
  %call2 = call noalias ptr @fopen(ptr noundef %arraydecay1, ptr noundef @.str.150)
  store ptr %call2, ptr %of, align 8
  %2 = load ptr, ptr %of, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @perror(ptr noundef @.str.151) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %j, align 4
  %4 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %bark.addr, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  %6 = load i32, ptr %j, align 4
  %conv = sitofp i32 %6 to float
  %mul = fmul float 4.000000e+03, %conv
  %7 = load i32, ptr %n.addr, align 4
  %conv5 = sitofp i32 %7 to float
  %div = fdiv float %mul, %conv5
  %conv6 = fpext float %div to double
  %add = fadd double %conv6, 2.500000e-01
  %mul7 = fmul double 0x3F483F91E0000000, %add
  %call8 = call double @atan(double noundef %mul7) #5
  %8 = load i32, ptr %j, align 4
  %conv10 = sitofp i32 %8 to float
  %mul11 = fmul float 4.000000e+03, %conv10
  %9 = load i32, ptr %n.addr, align 4
  %conv12 = sitofp i32 %9 to float
  %div13 = fdiv float %mul11, %conv12
  %conv14 = fpext float %div13 to double
  %add15 = fadd double %conv14, 2.500000e-01
  %10 = load i32, ptr %j, align 4
  %conv16 = sitofp i32 %10 to float
  %mul17 = fmul float 4.000000e+03, %conv16
  %11 = load i32, ptr %n.addr, align 4
  %conv18 = sitofp i32 %11 to float
  %div19 = fdiv float %mul17, %conv18
  %conv20 = fpext float %div19 to double
  %add21 = fadd double %conv20, 2.500000e-01
  %mul22 = fmul double %add15, %add21
  %mul23 = fmul double %mul22, 0x3E53DD3DC0000000
  %call24 = call double @atan(double noundef %mul23) #5
  %mul25 = fmul double 0x4001EB8520000000, %call24
  %12 = call double @llvm.fmuladd.f64(double 0x402A333340000000, double %call8, double %mul25)
  %13 = load i32, ptr %j, align 4
  %conv26 = sitofp i32 %13 to float
  %mul27 = fmul float 4.000000e+03, %conv26
  %14 = load i32, ptr %n.addr, align 4
  %conv28 = sitofp i32 %14 to float
  %div29 = fdiv float %mul27, %conv28
  %conv30 = fpext float %div29 to double
  %add31 = fadd double %conv30, 2.500000e-01
  %15 = call double @llvm.fmuladd.f64(double 0x3F1A36E2E0000000, double %add31, double %12)
  %conv33 = fptrunc double %15 to float
  store float %conv33, ptr %b, align 4
  %16 = load ptr, ptr %of, align 8
  %17 = load float, ptr %b, align 4
  %conv34 = fpext float %17 to double
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.152, double noundef %conv34) #5
  br label %if.end48

if.else:                                          ; preds = %for.body
  %18 = load i64, ptr %off.addr, align 8
  %cmp36 = icmp ne i64 %18, 0
  br i1 %cmp36, label %if.then38, label %if.else44

if.then38:                                        ; preds = %if.else
  %19 = load ptr, ptr %of, align 8
  %20 = load i32, ptr %j, align 4
  %conv39 = sext i32 %20 to i64
  %21 = load i64, ptr %off.addr, align 8
  %add40 = add nsw i64 %conv39, %21
  %conv41 = sitofp i64 %add40 to double
  %div42 = fdiv double %conv41, 8.000000e+03
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.152, double noundef %div42) #5
  br label %if.end47

if.else44:                                        ; preds = %if.else
  %22 = load ptr, ptr %of, align 8
  %23 = load i32, ptr %j, align 4
  %conv45 = sitofp i32 %23 to double
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.152, double noundef %conv45) #5
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then38
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then4
  %24 = load i32, ptr %dB.addr, align 4
  %tobool49 = icmp ne i32 %24, 0
  br i1 %tobool49, label %if.then50, label %if.else60

if.then50:                                        ; preds = %if.end48
  %25 = load ptr, ptr %v.addr, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr inbounds float, ptr %25, i64 %idxprom
  %27 = load float, ptr %arrayidx, align 4
  %conv51 = fpext float %27 to double
  %cmp52 = fcmp oeq double %conv51, 0.000000e+00
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.then50
  store float -1.400000e+02, ptr %val, align 4
  br label %if.end57

if.else55:                                        ; preds = %if.then50
  %28 = load ptr, ptr %v.addr, align 8
  %29 = load i32, ptr %j, align 4
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds float, ptr %28, i64 %idx.ext
  %call56 = call float @todB(ptr noundef %add.ptr)
  store float %call56, ptr %val, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then54
  %30 = load ptr, ptr %of, align 8
  %31 = load float, ptr %val, align 4
  %conv58 = fpext float %31 to double
  %call59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.153, double noundef %conv58) #5
  br label %if.end65

if.else60:                                        ; preds = %if.end48
  %32 = load ptr, ptr %of, align 8
  %33 = load ptr, ptr %v.addr, align 8
  %34 = load i32, ptr %j, align 4
  %idxprom61 = sext i32 %34 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %33, i64 %idxprom61
  %35 = load float, ptr %arrayidx62, align 4
  %conv63 = fpext float %35 to double
  %call64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.153, double noundef %conv63) #5
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %if.end57
  br label %for.inc

for.inc:                                          ; preds = %if.end65
  %36 = load i32, ptr %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %of, align 8
  %call66 = call i32 @fclose(ptr noundef %37)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: cold
declare void @perror(ptr noundef) #4

; Function Attrs: nounwind
declare double @atan(double noundef) #0

; Function Attrs: nounwind uwtable
declare hidden float @todB(ptr noundef) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold }

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
