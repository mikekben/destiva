; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i32 @res1_forward(ptr noundef %vb, ptr noundef %vl, ptr noundef %in, ptr noundef %out, ptr noundef %nonzero, i32 noundef %ch, ptr noundef %partword) #0 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %vl.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %nonzero.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %partword.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %used = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %vl, ptr %vl.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store ptr %nonzero, ptr %nonzero.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store ptr %partword, ptr %partword.addr, align 8
  store i32 0, ptr %used, align 4
  %0 = load ptr, ptr %vb.addr, align 8
  %pcmend = getelementptr inbounds nuw %struct.vorbis_block, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %pcmend, align 8
  %div = sdiv i32 %1, 2
  store i32 %div, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %ch.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %nonzero.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %out.addr, align 8
  %tobool1 = icmp ne ptr %7, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then2
  %8 = load i32, ptr %j, align 4
  %9 = load i32, ptr %n, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %10 = load ptr, ptr %in.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %10, i64 %idxprom6
  %12 = load ptr, ptr %arrayidx7, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %12, i64 %idxprom8
  %14 = load float, ptr %arrayidx9, align 4
  %15 = load ptr, ptr %out.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %15, i64 %idxprom10
  %17 = load ptr, ptr %arrayidx11, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %17, i64 %idxprom12
  %19 = load float, ptr %arrayidx13, align 4
  %add = fadd float %19, %14
  store float %add, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !6

for.end:                                          ; preds = %for.cond3
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %21 = load ptr, ptr %in.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %21, i64 %idxprom14
  %23 = load ptr, ptr %arrayidx15, align 8
  %24 = load ptr, ptr %in.addr, align 8
  %25 = load i32, ptr %used, align 4
  %inc16 = add nsw i32 %25, 1
  store i32 %inc16, ptr %used, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %24, i64 %idxprom17
  store ptr %23, ptr %arrayidx18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.end, %for.body
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %26 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end22:                                        ; preds = %for.cond
  %27 = load i32, ptr %used, align 4
  %tobool23 = icmp ne i32 %27, 0
  br i1 %tobool23, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.end22
  %28 = load ptr, ptr %vb.addr, align 8
  %29 = load ptr, ptr %vl.addr, align 8
  %30 = load ptr, ptr %in.addr, align 8
  %31 = load i32, ptr %used, align 4
  %32 = load ptr, ptr %partword.addr, align 8
  %call = call i32 @_01forward(ptr noundef %28, ptr noundef %29, ptr noundef %30, i32 noundef %31, ptr noundef %32, ptr noundef @_encodepart)
  store i32 %call, ptr %ret, align 4
  %33 = load ptr, ptr %out.addr, align 8
  %tobool25 = icmp ne ptr %33, null
  br i1 %tobool25, label %if.then26, label %if.end53

if.then26:                                        ; preds = %if.then24
  store i32 0, ptr %used, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc50, %if.then26
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %ch.addr, align 4
  %cmp28 = icmp slt i32 %34, %35
  br i1 %cmp28, label %for.body29, label %for.end52

for.body29:                                       ; preds = %for.cond27
  %36 = load ptr, ptr %nonzero.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %36, i64 %idxprom30
  %38 = load i32, ptr %arrayidx31, align 4
  %tobool32 = icmp ne i32 %38, 0
  br i1 %tobool32, label %if.then33, label %if.end49

if.then33:                                        ; preds = %for.body29
  store i32 0, ptr %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc45, %if.then33
  %39 = load i32, ptr %j, align 4
  %40 = load i32, ptr %n, align 4
  %cmp35 = icmp slt i32 %39, %40
  br i1 %cmp35, label %for.body36, label %for.end47

for.body36:                                       ; preds = %for.cond34
  %41 = load ptr, ptr %in.addr, align 8
  %42 = load i32, ptr %used, align 4
  %idxprom37 = sext i32 %42 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %41, i64 %idxprom37
  %43 = load ptr, ptr %arrayidx38, align 8
  %44 = load i32, ptr %j, align 4
  %idxprom39 = sext i32 %44 to i64
  %arrayidx40 = getelementptr inbounds float, ptr %43, i64 %idxprom39
  %45 = load float, ptr %arrayidx40, align 4
  %46 = load ptr, ptr %out.addr, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %47 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %46, i64 %idxprom41
  %48 = load ptr, ptr %arrayidx42, align 8
  %49 = load i32, ptr %j, align 4
  %idxprom43 = sext i32 %49 to i64
  %arrayidx44 = getelementptr inbounds float, ptr %48, i64 %idxprom43
  %50 = load float, ptr %arrayidx44, align 4
  %sub = fsub float %50, %45
  store float %sub, ptr %arrayidx44, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %for.body36
  %51 = load i32, ptr %j, align 4
  %inc46 = add nsw i32 %51, 1
  store i32 %inc46, ptr %j, align 4
  br label %for.cond34, !llvm.loop !9

for.end47:                                        ; preds = %for.cond34
  %52 = load i32, ptr %used, align 4
  %inc48 = add nsw i32 %52, 1
  store i32 %inc48, ptr %used, align 4
  br label %if.end49

if.end49:                                         ; preds = %for.end47, %for.body29
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %53 = load i32, ptr %i, align 4
  %inc51 = add nsw i32 %53, 1
  store i32 %inc51, ptr %i, align 4
  br label %for.cond27, !llvm.loop !10

for.end52:                                        ; preds = %for.cond27
  br label %if.end53

if.end53:                                         ; preds = %for.end52, %if.then24
  %54 = load i32, ptr %ret, align 4
  store i32 %54, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %for.end22
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.end53
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
declare hidden i32 @_01forward(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @_encodepart(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

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
