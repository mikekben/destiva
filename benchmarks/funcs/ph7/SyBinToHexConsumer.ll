; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SyBinToHexConsumer.zHexTab = external hidden constant [17 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @SyBinToHexConsumer(ptr noundef %pIn, i32 noundef %nLen, ptr noundef %xConsumer, ptr noundef %pConsumerData) #0 {
entry:
  %retval = alloca i32, align 4
  %pIn.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %xConsumer.addr = alloca ptr, align 8
  %pConsumerData.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zOut = alloca [3 x i8], align 1
  %rc = alloca i32, align 4
  store ptr %pIn, ptr %pIn.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pConsumerData, ptr %pConsumerData.addr, align 8
  %0 = load ptr, ptr %pIn.addr, align 8
  store ptr %0, ptr %zIn, align 8
  %1 = load ptr, ptr %zIn, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end13, %entry
  %3 = load ptr, ptr %zIn, align 8
  %4 = load ptr, ptr %zEnd, align 8
  %cmp = icmp uge ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %zIn, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %6 to i32
  %shr = ashr i32 %conv, 4
  %idxprom2 = sext i32 %shr to i64
  %arrayidx3 = getelementptr inbounds [17 x i8], ptr @SyBinToHexConsumer.zHexTab, i64 0, i64 %idxprom2
  %7 = load i8, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [3 x i8], ptr %zOut, i64 0, i64 0
  store i8 %7, ptr %arrayidx4, align 1
  %8 = load ptr, ptr %zIn, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 0
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %and = and i32 %conv6, 15
  %idxprom7 = sext i32 %and to i64
  %arrayidx8 = getelementptr inbounds [17 x i8], ptr @SyBinToHexConsumer.zHexTab, i64 0, i64 %idxprom7
  %10 = load i8, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [3 x i8], ptr %zOut, i64 0, i64 1
  store i8 %10, ptr %arrayidx9, align 1
  %11 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8], ptr %zOut, i64 0, i64 0
  %12 = load ptr, ptr %pConsumerData.addr, align 8
  %call = call i32 %11(ptr noundef %arraydecay, i32 noundef 2, ptr noundef %12)
  store i32 %call, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %13, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  %14 = load i32, ptr %rc, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end
  %15 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then12
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
