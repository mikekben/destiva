; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }

; Function Attrs: nounwind uwtable
define hidden i32 @SyRandomnessInit(ptr noundef %pCtx, ptr noundef %xSeed, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %xSeed.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %zSeed = alloca [256 x i8], align 16
  %t = alloca i8, align 1
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %xSeed, ptr %xSeed.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %0, i32 0, i32 3
  %1 = load i16, ptr %nMagic, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 5060
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %xSeed.addr, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr @SyOSUtilRandomSeed, ptr %xSeed.addr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load ptr, ptr %xSeed.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], ptr %zSeed, i64 0, i64 0
  %4 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %3(ptr noundef %arraydecay, i32 noundef 256, ptr noundef %4)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end5
  %7 = load ptr, ptr %pCtx.addr, align 8
  %j = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %7, i32 0, i32 1
  store i8 0, ptr %j, align 1
  %8 = load ptr, ptr %pCtx.addr, align 8
  %i10 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %8, i32 0, i32 0
  store i8 0, ptr %i10, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %9 = load i32, ptr %i, align 4
  %conv11 = zext i32 %9 to i64
  %cmp12 = icmp ult i64 %conv11, 256
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %i, align 4
  %conv14 = trunc i32 %10 to i8
  %11 = load ptr, ptr %pCtx.addr, align 8
  %s = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %i, align 4
  %idxprom = zext i32 %12 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %s, i64 0, i64 %idxprom
  store i8 %conv14, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc45, %for.end
  %14 = load i32, ptr %i, align 4
  %conv16 = zext i32 %14 to i64
  %cmp17 = icmp ult i64 %conv16, 256
  br i1 %cmp17, label %for.body19, label %for.end47

for.body19:                                       ; preds = %for.cond15
  %15 = load ptr, ptr %pCtx.addr, align 8
  %s20 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %i, align 4
  %idxprom21 = zext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds nuw [256 x i8], ptr %s20, i64 0, i64 %idxprom21
  %17 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %17 to i32
  %18 = load i32, ptr %i, align 4
  %idxprom24 = zext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds nuw [256 x i8], ptr %zSeed, i64 0, i64 %idxprom24
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %19 to i32
  %add = add nsw i32 %conv23, %conv26
  %20 = load ptr, ptr %pCtx.addr, align 8
  %j27 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %20, i32 0, i32 1
  %21 = load i8, ptr %j27, align 1
  %conv28 = zext i8 %21 to i32
  %add29 = add nsw i32 %conv28, %add
  %conv30 = trunc i32 %add29 to i8
  store i8 %conv30, ptr %j27, align 1
  %22 = load ptr, ptr %pCtx.addr, align 8
  %s31 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %pCtx.addr, align 8
  %j32 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %23, i32 0, i32 1
  %24 = load i8, ptr %j32, align 1
  %idxprom33 = zext i8 %24 to i64
  %arrayidx34 = getelementptr inbounds nuw [256 x i8], ptr %s31, i64 0, i64 %idxprom33
  %25 = load i8, ptr %arrayidx34, align 1
  store i8 %25, ptr %t, align 1
  %26 = load ptr, ptr %pCtx.addr, align 8
  %s35 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %i, align 4
  %idxprom36 = zext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds nuw [256 x i8], ptr %s35, i64 0, i64 %idxprom36
  %28 = load i8, ptr %arrayidx37, align 1
  %29 = load ptr, ptr %pCtx.addr, align 8
  %s38 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %pCtx.addr, align 8
  %j39 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %30, i32 0, i32 1
  %31 = load i8, ptr %j39, align 1
  %idxprom40 = zext i8 %31 to i64
  %arrayidx41 = getelementptr inbounds nuw [256 x i8], ptr %s38, i64 0, i64 %idxprom40
  store i8 %28, ptr %arrayidx41, align 1
  %32 = load i8, ptr %t, align 1
  %33 = load ptr, ptr %pCtx.addr, align 8
  %s42 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %i, align 4
  %idxprom43 = zext i32 %34 to i64
  %arrayidx44 = getelementptr inbounds nuw [256 x i8], ptr %s42, i64 0, i64 %idxprom43
  store i8 %32, ptr %arrayidx44, align 1
  br label %for.inc45

for.inc45:                                        ; preds = %for.body19
  %35 = load i32, ptr %i, align 4
  %inc46 = add i32 %35, 1
  store i32 %inc46, ptr %i, align 4
  br label %for.cond15, !llvm.loop !8

for.end47:                                        ; preds = %for.cond15
  %36 = load ptr, ptr %pCtx.addr, align 8
  %nMagic48 = getelementptr inbounds nuw %struct.SyPRNGCtx, ptr %36, i32 0, i32 3
  store i16 5060, ptr %nMagic48, align 2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end47, %if.then8, %if.then
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyOSUtilRandomSeed(ptr noundef, i32 noundef, ptr noundef) #0

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
