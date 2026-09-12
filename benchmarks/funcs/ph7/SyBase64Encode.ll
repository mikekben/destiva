; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SyBase64Encode.zBase64 = external hidden constant [65 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @SyBase64Encode(ptr noundef %zSrc, i32 noundef %nLen, ptr noundef %xConsumer, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %zSrc.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %xConsumer.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %z64 = alloca [4 x i8], align 1
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zSrc, ptr %zSrc.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %zSrc.addr, align 8
  store ptr %0, ptr %zIn, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %add = add i32 %1, 2
  %2 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp ult i32 %add, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %zIn, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shr = ashr i32 %conv, 2
  %and = and i32 %shr, 63
  %idxprom1 = sext i32 %and to i64
  %arrayidx2 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom1
  %6 = load i8, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 0
  store i8 %6, ptr %arrayidx3, align 1
  %7 = load ptr, ptr %zIn, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %7, i64 %idxprom4
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %and7 = and i32 %conv6, 3
  %shl = shl i32 %and7, 4
  %10 = load ptr, ptr %zIn, align 8
  %11 = load i32, ptr %i, align 4
  %add8 = add i32 %11, 1
  %idxprom9 = zext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %10, i64 %idxprom9
  %12 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  %shr12 = ashr i32 %conv11, 4
  %or = or i32 %shl, %shr12
  %and13 = and i32 %or, 63
  %idxprom14 = sext i32 %and13 to i64
  %arrayidx15 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom14
  %13 = load i8, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 1
  store i8 %13, ptr %arrayidx16, align 1
  %14 = load ptr, ptr %zIn, align 8
  %15 = load i32, ptr %i, align 4
  %add17 = add i32 %15, 1
  %idxprom18 = zext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %14, i64 %idxprom18
  %16 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %16 to i32
  %and21 = and i32 %conv20, 15
  %shl22 = shl i32 %and21, 2
  %17 = load ptr, ptr %zIn, align 8
  %18 = load i32, ptr %i, align 4
  %add23 = add i32 %18, 2
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %17, i64 %idxprom24
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %shr27 = ashr i32 %conv26, 6
  %or28 = or i32 %shl22, %shr27
  %and29 = and i32 %or28, 63
  %idxprom30 = sext i32 %and29 to i64
  %arrayidx31 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom30
  %20 = load i8, ptr %arrayidx31, align 1
  %arrayidx32 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 2
  store i8 %20, ptr %arrayidx32, align 1
  %21 = load ptr, ptr %zIn, align 8
  %22 = load i32, ptr %i, align 4
  %add33 = add i32 %22, 2
  %idxprom34 = zext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %21, i64 %idxprom34
  %23 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %23 to i32
  %and37 = and i32 %conv36, 63
  %idxprom38 = sext i32 %and37 to i64
  %arrayidx39 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom38
  %24 = load i8, ptr %arrayidx39, align 1
  %arrayidx40 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 3
  store i8 %24, ptr %arrayidx40, align 1
  %25 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 0
  %26 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %25(ptr noundef %arraydecay, i32 noundef 4, ptr noundef %26)
  store i32 %call, ptr %rc, align 4
  %27 = load i32, ptr %rc, align 4
  %cmp41 = icmp ne i32 %27, 0
  br i1 %cmp41, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %i, align 4
  %add43 = add i32 %28, 3
  store i32 %add43, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %i, align 4
  %add44 = add i32 %29, 1
  %30 = load i32, ptr %nLen.addr, align 4
  %cmp45 = icmp ult i32 %add44, %30
  br i1 %cmp45, label %if.then47, label %if.else

if.then47:                                        ; preds = %for.end
  %31 = load ptr, ptr %zIn, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom48 = zext i32 %32 to i64
  %arrayidx49 = getelementptr inbounds nuw i8, ptr %31, i64 %idxprom48
  %33 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %33 to i32
  %shr51 = ashr i32 %conv50, 2
  %and52 = and i32 %shr51, 63
  %idxprom53 = sext i32 %and52 to i64
  %arrayidx54 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom53
  %34 = load i8, ptr %arrayidx54, align 1
  %arrayidx55 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 0
  store i8 %34, ptr %arrayidx55, align 1
  %35 = load ptr, ptr %zIn, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom56 = zext i32 %36 to i64
  %arrayidx57 = getelementptr inbounds nuw i8, ptr %35, i64 %idxprom56
  %37 = load i8, ptr %arrayidx57, align 1
  %conv58 = zext i8 %37 to i32
  %and59 = and i32 %conv58, 3
  %shl60 = shl i32 %and59, 4
  %38 = load ptr, ptr %zIn, align 8
  %39 = load i32, ptr %i, align 4
  %add61 = add i32 %39, 1
  %idxprom62 = zext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %38, i64 %idxprom62
  %40 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %40 to i32
  %shr65 = ashr i32 %conv64, 4
  %or66 = or i32 %shl60, %shr65
  %and67 = and i32 %or66, 63
  %idxprom68 = sext i32 %and67 to i64
  %arrayidx69 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom68
  %41 = load i8, ptr %arrayidx69, align 1
  %arrayidx70 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 1
  store i8 %41, ptr %arrayidx70, align 1
  %42 = load ptr, ptr %zIn, align 8
  %43 = load i32, ptr %i, align 4
  %add71 = add i32 %43, 1
  %idxprom72 = zext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %42, i64 %idxprom72
  %44 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %44 to i32
  %and75 = and i32 %conv74, 15
  %shl76 = shl i32 %and75, 2
  %idxprom77 = sext i32 %shl76 to i64
  %arrayidx78 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom77
  %45 = load i8, ptr %arrayidx78, align 1
  %arrayidx79 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 2
  store i8 %45, ptr %arrayidx79, align 1
  %arrayidx80 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 3
  store i8 61, ptr %arrayidx80, align 1
  %46 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay81 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 0
  %47 = load ptr, ptr %pUserData.addr, align 8
  %call82 = call i32 %46(ptr noundef %arraydecay81, i32 noundef 4, ptr noundef %47)
  store i32 %call82, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  %cmp83 = icmp ne i32 %48, 0
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %if.then47
  store i32 -10, ptr %retval, align 4
  br label %return

if.end86:                                         ; preds = %if.then47
  br label %if.end115

if.else:                                          ; preds = %for.end
  %49 = load i32, ptr %i, align 4
  %50 = load i32, ptr %nLen.addr, align 4
  %cmp87 = icmp ult i32 %49, %50
  br i1 %cmp87, label %if.then89, label %if.end114

if.then89:                                        ; preds = %if.else
  %51 = load ptr, ptr %zIn, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom90 = zext i32 %52 to i64
  %arrayidx91 = getelementptr inbounds nuw i8, ptr %51, i64 %idxprom90
  %53 = load i8, ptr %arrayidx91, align 1
  %conv92 = zext i8 %53 to i32
  %shr93 = ashr i32 %conv92, 2
  %and94 = and i32 %shr93, 63
  %idxprom95 = sext i32 %and94 to i64
  %arrayidx96 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom95
  %54 = load i8, ptr %arrayidx96, align 1
  %arrayidx97 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 0
  store i8 %54, ptr %arrayidx97, align 1
  %55 = load ptr, ptr %zIn, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom98 = zext i32 %56 to i64
  %arrayidx99 = getelementptr inbounds nuw i8, ptr %55, i64 %idxprom98
  %57 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %57 to i32
  %and101 = and i32 %conv100, 3
  %shl102 = shl i32 %and101, 4
  %idxprom103 = sext i32 %shl102 to i64
  %arrayidx104 = getelementptr inbounds [65 x i8], ptr @SyBase64Encode.zBase64, i64 0, i64 %idxprom103
  %58 = load i8, ptr %arrayidx104, align 1
  %arrayidx105 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 1
  store i8 %58, ptr %arrayidx105, align 1
  %arrayidx106 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 2
  store i8 61, ptr %arrayidx106, align 1
  %arrayidx107 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 3
  store i8 61, ptr %arrayidx107, align 1
  %59 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay108 = getelementptr inbounds [4 x i8], ptr %z64, i64 0, i64 0
  %60 = load ptr, ptr %pUserData.addr, align 8
  %call109 = call i32 %59(ptr noundef %arraydecay108, i32 noundef 4, ptr noundef %60)
  store i32 %call109, ptr %rc, align 4
  %61 = load i32, ptr %rc, align 4
  %cmp110 = icmp ne i32 %61, 0
  br i1 %cmp110, label %if.then112, label %if.end113

if.then112:                                       ; preds = %if.then89
  store i32 -10, ptr %retval, align 4
  br label %return

if.end113:                                        ; preds = %if.then89
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.else
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.end86
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end115, %if.then112, %if.then85, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
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
