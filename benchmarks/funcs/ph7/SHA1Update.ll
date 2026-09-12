; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA1Context = type { [5 x i32], [2 x i32], [64 x i8] }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcpy(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @SHA1Update(ptr noundef %context, ptr noundef %data, i32 noundef %len) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %context.addr, align 8
  %count = getelementptr inbounds nuw %struct.SHA1Context, ptr %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], ptr %count, i64 0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %j, align 4
  %2 = load i32, ptr %len.addr, align 4
  %shl = shl i32 %2, 3
  %3 = load ptr, ptr %context.addr, align 8
  %count1 = getelementptr inbounds nuw %struct.SHA1Context, ptr %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %count1, i64 0, i64 0
  %4 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %4, %shl
  store i32 %add, ptr %arrayidx2, align 4
  %5 = load i32, ptr %j, align 4
  %cmp = icmp ult i32 %add, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %len.addr, align 4
  %shr = lshr i32 %6, 29
  %add3 = add i32 %shr, 1
  %7 = load ptr, ptr %context.addr, align 8
  %count4 = getelementptr inbounds nuw %struct.SHA1Context, ptr %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [2 x i32], ptr %count4, i64 0, i64 1
  %8 = load i32, ptr %arrayidx5, align 4
  %add6 = add i32 %8, %add3
  store i32 %add6, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %j, align 4
  %shr7 = lshr i32 %9, 3
  %and = and i32 %shr7, 63
  store i32 %and, ptr %j, align 4
  %10 = load i32, ptr %j, align 4
  %11 = load i32, ptr %len.addr, align 4
  %add8 = add i32 %10, %11
  %cmp9 = icmp ugt i32 %add8, 63
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %12 = load ptr, ptr %data.addr, align 8
  %13 = load ptr, ptr %context.addr, align 8
  %buffer = getelementptr inbounds nuw %struct.SHA1Context, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %j, align 4
  %idxprom = zext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds nuw [64 x i8], ptr %buffer, i64 0, i64 %idxprom
  %15 = load i32, ptr %j, align 4
  %sub = sub i32 64, %15
  store i32 %sub, ptr %i, align 4
  %call = call i32 @SyMemcpy(ptr noundef %12, ptr noundef %arrayidx11, i32 noundef %sub)
  %16 = load ptr, ptr %context.addr, align 8
  %state = getelementptr inbounds nuw %struct.SHA1Context, ptr %16, i32 0, i32 0
  %arraydecay = getelementptr inbounds [5 x i32], ptr %state, i64 0, i64 0
  %17 = load ptr, ptr %context.addr, align 8
  %buffer12 = getelementptr inbounds nuw %struct.SHA1Context, ptr %17, i32 0, i32 2
  %arraydecay13 = getelementptr inbounds [64 x i8], ptr %buffer12, i64 0, i64 0
  call void @SHA1Transform(ptr noundef %arraydecay, ptr noundef %arraydecay13)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %18 = load i32, ptr %i, align 4
  %add14 = add i32 %18, 63
  %19 = load i32, ptr %len.addr, align 4
  %cmp15 = icmp ult i32 %add14, %19
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %context.addr, align 8
  %state16 = getelementptr inbounds nuw %struct.SHA1Context, ptr %20, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [5 x i32], ptr %state16, i64 0, i64 0
  %21 = load ptr, ptr %data.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom18 = zext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %21, i64 %idxprom18
  call void @SHA1Transform(ptr noundef %arraydecay17, ptr noundef %arrayidx19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4
  %add20 = add i32 %23, 64
  store i32 %add20, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else, %for.end
  %24 = load ptr, ptr %data.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom22 = zext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %24, i64 %idxprom22
  %26 = load ptr, ptr %context.addr, align 8
  %buffer24 = getelementptr inbounds nuw %struct.SHA1Context, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %j, align 4
  %idxprom25 = zext i32 %27 to i64
  %arrayidx26 = getelementptr inbounds nuw [64 x i8], ptr %buffer24, i64 0, i64 %idxprom25
  %28 = load i32, ptr %len.addr, align 4
  %29 = load i32, ptr %i, align 4
  %sub27 = sub i32 %28, %29
  %call28 = call i32 @SyMemcpy(ptr noundef %arrayidx23, ptr noundef %arrayidx26, i32 noundef %sub27)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @SHA1Transform(ptr noundef, ptr noundef) #0

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
