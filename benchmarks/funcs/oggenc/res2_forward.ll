; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vorbis_block_alloc(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_01forward(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_encodepart(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @res2_forward(ptr noundef %vb, ptr noundef %vl, ptr noundef %in, ptr noundef %out, ptr noundef %nonzero, i32 noundef %ch, ptr noundef %partword) #0 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %nonzero.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %partword.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %n = alloca i64, align 8
  %used = alloca i64, align 8
  %work = alloca ptr, align 8
  %pcm = alloca ptr, align 8
  %ret = alloca i32, align 4
  %pcm27 = alloca ptr, align 8
  %sofar = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %nonzero, ptr %nonzero.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %partword, ptr %partword.addr, align 8
  %0 = load ptr, ptr %vb.addr, align 8
  %pcmend = getelementptr inbounds nuw %struct.vorbis_block, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %pcmend, align 8
  %div = sdiv i32 %1, 2
  %conv = sext i32 %div to i64
  store i64 %conv, ptr %n, align 8
  store i64 0, ptr %used, align 8
  %2 = load ptr, ptr %vb.addr, align 8
  %3 = load i32, ptr %ch.addr, align 4
  %conv1 = sext i32 %3 to i64
  %4 = load i64, ptr %n, align 8
  %mul = mul nsw i64 %conv1, %4
  %mul2 = mul i64 %mul, 4
  %call = call ptr @_vorbis_block_alloc(ptr noundef %2, i64 noundef %mul2)
  store ptr %call, ptr %work, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %5 = load i64, ptr %i, align 8
  %6 = load i32, ptr %ch.addr, align 4
  %conv3 = sext i32 %6 to i64
  %cmp = icmp slt i64 %5, %conv3
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %in.addr, align 8
  %8 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %8
  %9 = load ptr, ptr %arrayidx, align 8
  store ptr %9, ptr %pcm, align 8
  %10 = load ptr, ptr %nonzero.addr, align 8
  %11 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %11
  %12 = load i32, ptr %arrayidx5, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i64, ptr %used, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %used, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i64 0, ptr %j, align 8
  %14 = load i64, ptr %i, align 8
  store i64 %14, ptr %k, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end
  %15 = load i64, ptr %j, align 8
  %16 = load i64, ptr %n, align 8
  %cmp7 = icmp slt i64 %15, %16
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond6
  %17 = load ptr, ptr %pcm, align 8
  %18 = load i64, ptr %j, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %17, i64 %18
  %19 = load float, ptr %arrayidx10, align 4
  %20 = load ptr, ptr %work, align 8
  %21 = load i64, ptr %k, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %20, i64 %21
  store float %19, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %22 = load i64, ptr %j, align 8
  %inc12 = add nsw i64 %22, 1
  store i64 %inc12, ptr %j, align 8
  %23 = load i32, ptr %ch.addr, align 4
  %conv13 = sext i32 %23 to i64
  %24 = load i64, ptr %k, align 8
  %add = add nsw i64 %24, %conv13
  store i64 %add, ptr %k, align 8
  br label %for.cond6, !llvm.loop !6

for.end:                                          ; preds = %for.cond6
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %25 = load i64, ptr %i, align 8
  %inc15 = add nsw i64 %25, 1
  store i64 %inc15, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end16:                                        ; preds = %for.cond
  %26 = load i64, ptr %used, align 8
  %tobool17 = icmp ne i64 %26, 0
  br i1 %tobool17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.end16
  %27 = load ptr, ptr %vb.addr, align 8
  %28 = load ptr, ptr %vl.addr, align 8
  %29 = load ptr, ptr %partword.addr, align 8
  %call19 = call i32 @_01forward(ptr noundef %27, ptr noundef %28, ptr noundef %work, i32 noundef 1, ptr noundef %29, ptr noundef @_encodepart)
  store i32 %call19, ptr %ret, align 4
  %30 = load ptr, ptr %out.addr, align 8
  %tobool20 = icmp ne ptr %30, null
  br i1 %tobool20, label %if.then21, label %if.end46

if.then21:                                        ; preds = %if.then18
  store i64 0, ptr %i, align 8
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc43, %if.then21
  %31 = load i64, ptr %i, align 8
  %32 = load i32, ptr %ch.addr, align 4
  %conv23 = sext i32 %32 to i64
  %cmp24 = icmp slt i64 %31, %conv23
  br i1 %cmp24, label %for.body26, label %for.end45

for.body26:                                       ; preds = %for.cond22
  %33 = load ptr, ptr %in.addr, align 8
  %34 = load i64, ptr %i, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %33, i64 %34
  %35 = load ptr, ptr %arrayidx28, align 8
  store ptr %35, ptr %pcm27, align 8
  %36 = load ptr, ptr %out.addr, align 8
  %37 = load i64, ptr %i, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %36, i64 %37
  %38 = load ptr, ptr %arrayidx29, align 8
  store ptr %38, ptr %sofar, align 8
  store i64 0, ptr %j, align 8
  %39 = load i64, ptr %i, align 8
  store i64 %39, ptr %k, align 8
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc38, %for.body26
  %40 = load i64, ptr %j, align 8
  %41 = load i64, ptr %n, align 8
  %cmp31 = icmp slt i64 %40, %41
  br i1 %cmp31, label %for.body33, label %for.end42

for.body33:                                       ; preds = %for.cond30
  %42 = load ptr, ptr %pcm27, align 8
  %43 = load i64, ptr %j, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %42, i64 %43
  %44 = load float, ptr %arrayidx34, align 4
  %45 = load ptr, ptr %work, align 8
  %46 = load i64, ptr %k, align 8
  %arrayidx35 = getelementptr inbounds float, ptr %45, i64 %46
  %47 = load float, ptr %arrayidx35, align 4
  %sub = fsub float %44, %47
  %48 = load ptr, ptr %sofar, align 8
  %49 = load i64, ptr %j, align 8
  %arrayidx36 = getelementptr inbounds float, ptr %48, i64 %49
  %50 = load float, ptr %arrayidx36, align 4
  %add37 = fadd float %50, %sub
  store float %add37, ptr %arrayidx36, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.body33
  %51 = load i64, ptr %j, align 8
  %inc39 = add nsw i64 %51, 1
  store i64 %inc39, ptr %j, align 8
  %52 = load i32, ptr %ch.addr, align 4
  %conv40 = sext i32 %52 to i64
  %53 = load i64, ptr %k, align 8
  %add41 = add nsw i64 %53, %conv40
  store i64 %add41, ptr %k, align 8
  br label %for.cond30, !llvm.loop !9

for.end42:                                        ; preds = %for.cond30
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %54 = load i64, ptr %i, align 8
  %inc44 = add nsw i64 %54, 1
  store i64 %inc44, ptr %i, align 8
  br label %for.cond22, !llvm.loop !10

for.end45:                                        ; preds = %for.cond22
  br label %if.end46

if.end46:                                         ; preds = %for.end45, %if.then18
  %55 = load i32, ptr %ret, align 4
  store i32 %55, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.end46
  %56 = load i32, ptr %retval, align 4
  ret i32 %56
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
