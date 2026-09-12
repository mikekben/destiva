; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SyBase64Decode.aBase64Trans = external hidden constant [128 x i32], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @SyBase64Decode(ptr noundef %zB64, i32 noundef %nLen, ptr noundef %xConsumer, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %zB64.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %xConsumer.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %w = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %rc = alloca i32, align 4
  %zOut = alloca [10 x i8], align 1
  store ptr %zB64, ptr %zB64.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store ptr %xConsumer, ptr %xConsumer.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %zB64.addr, align 8
  %2 = load i32, ptr %nLen.addr, align 4
  %sub = sub i32 %2, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %nLen.addr, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %nLen.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %6 = load i32, ptr %n, align 4
  %add = add i32 %6, 3
  %7 = load i32, ptr %nLen.addr, align 4
  %cmp3 = icmp ult i32 %add, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %zB64.addr, align 8
  %9 = load i32, ptr %n, align 4
  %idxprom5 = zext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %8, i64 %idxprom5
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %and = and i32 %conv7, 127
  %idxprom8 = sext i32 %and to i64
  %arrayidx9 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom8
  %11 = load i32, ptr %arrayidx9, align 4
  store i32 %11, ptr %w, align 4
  %12 = load ptr, ptr %zB64.addr, align 8
  %13 = load i32, ptr %n, align 4
  %add10 = add i32 %13, 1
  %idxprom11 = zext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds nuw i8, ptr %12, i64 %idxprom11
  %14 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %and14 = and i32 %conv13, 127
  %idxprom15 = sext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom15
  %15 = load i32, ptr %arrayidx16, align 4
  store i32 %15, ptr %x, align 4
  %16 = load ptr, ptr %zB64.addr, align 8
  %17 = load i32, ptr %n, align 4
  %add17 = add i32 %17, 2
  %idxprom18 = zext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %16, i64 %idxprom18
  %18 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %18 to i32
  %and21 = and i32 %conv20, 127
  %idxprom22 = sext i32 %and21 to i64
  %arrayidx23 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom22
  %19 = load i32, ptr %arrayidx23, align 4
  store i32 %19, ptr %y, align 4
  %20 = load ptr, ptr %zB64.addr, align 8
  %21 = load i32, ptr %n, align 4
  %add24 = add i32 %21, 3
  %idxprom25 = zext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %20, i64 %idxprom25
  %22 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %and28 = and i32 %conv27, 127
  %idxprom29 = sext i32 %and28 to i64
  %arrayidx30 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom29
  %23 = load i32, ptr %arrayidx30, align 4
  store i32 %23, ptr %z, align 4
  %24 = load i32, ptr %w, align 4
  %shl = shl i32 %24, 2
  %and31 = and i32 %shl, 252
  %25 = load i32, ptr %x, align 4
  %shr = lshr i32 %25, 4
  %and32 = and i32 %shr, 3
  %or = or i32 %and31, %and32
  %conv33 = trunc i32 %or to i8
  %arrayidx34 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  store i8 %conv33, ptr %arrayidx34, align 1
  %26 = load i32, ptr %x, align 4
  %shl35 = shl i32 %26, 4
  %and36 = and i32 %shl35, 240
  %27 = load i32, ptr %y, align 4
  %shr37 = lshr i32 %27, 2
  %and38 = and i32 %shr37, 15
  %or39 = or i32 %and36, %and38
  %conv40 = trunc i32 %or39 to i8
  %arrayidx41 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 1
  store i8 %conv40, ptr %arrayidx41, align 1
  %28 = load i32, ptr %y, align 4
  %shl42 = shl i32 %28, 6
  %and43 = and i32 %shl42, 192
  %29 = load i32, ptr %z, align 4
  %and44 = and i32 %29, 63
  %or45 = or i32 %and43, %and44
  %conv46 = trunc i32 %or45 to i8
  %arrayidx47 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 2
  store i8 %conv46, ptr %arrayidx47, align 1
  %30 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  %31 = load ptr, ptr %pUserData.addr, align 8
  %call = call i32 %30(ptr noundef %arraydecay, i32 noundef 3, ptr noundef %31)
  store i32 %call, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp48 = icmp ne i32 %32, 0
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, ptr %n, align 4
  %add50 = add i32 %33, 4
  store i32 %add50, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %34 = load i32, ptr %n, align 4
  %add51 = add i32 %34, 2
  %35 = load i32, ptr %nLen.addr, align 4
  %cmp52 = icmp ult i32 %add51, %35
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %for.end
  %36 = load ptr, ptr %zB64.addr, align 8
  %37 = load i32, ptr %n, align 4
  %idxprom55 = zext i32 %37 to i64
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %36, i64 %idxprom55
  %38 = load i8, ptr %arrayidx56, align 1
  %conv57 = sext i8 %38 to i32
  %and58 = and i32 %conv57, 127
  %idxprom59 = sext i32 %and58 to i64
  %arrayidx60 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom59
  %39 = load i32, ptr %arrayidx60, align 4
  store i32 %39, ptr %w, align 4
  %40 = load ptr, ptr %zB64.addr, align 8
  %41 = load i32, ptr %n, align 4
  %add61 = add i32 %41, 1
  %idxprom62 = zext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %40, i64 %idxprom62
  %42 = load i8, ptr %arrayidx63, align 1
  %conv64 = sext i8 %42 to i32
  %and65 = and i32 %conv64, 127
  %idxprom66 = sext i32 %and65 to i64
  %arrayidx67 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom66
  %43 = load i32, ptr %arrayidx67, align 4
  store i32 %43, ptr %x, align 4
  %44 = load ptr, ptr %zB64.addr, align 8
  %45 = load i32, ptr %n, align 4
  %add68 = add i32 %45, 2
  %idxprom69 = zext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %44, i64 %idxprom69
  %46 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %46 to i32
  %and72 = and i32 %conv71, 127
  %idxprom73 = sext i32 %and72 to i64
  %arrayidx74 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom73
  %47 = load i32, ptr %arrayidx74, align 4
  store i32 %47, ptr %y, align 4
  %48 = load i32, ptr %w, align 4
  %shl75 = shl i32 %48, 2
  %and76 = and i32 %shl75, 252
  %49 = load i32, ptr %x, align 4
  %shr77 = lshr i32 %49, 4
  %and78 = and i32 %shr77, 3
  %or79 = or i32 %and76, %and78
  %conv80 = trunc i32 %or79 to i8
  %arrayidx81 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  store i8 %conv80, ptr %arrayidx81, align 1
  %50 = load i32, ptr %x, align 4
  %shl82 = shl i32 %50, 4
  %and83 = and i32 %shl82, 240
  %51 = load i32, ptr %y, align 4
  %shr84 = lshr i32 %51, 2
  %and85 = and i32 %shr84, 15
  %or86 = or i32 %and83, %and85
  %conv87 = trunc i32 %or86 to i8
  %arrayidx88 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 1
  store i8 %conv87, ptr %arrayidx88, align 1
  %52 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay89 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  %53 = load ptr, ptr %pUserData.addr, align 8
  %call90 = call i32 %52(ptr noundef %arraydecay89, i32 noundef 2, ptr noundef %53)
  store i32 %call90, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %cmp91 = icmp ne i32 %54, 0
  br i1 %cmp91, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.then54
  store i32 -10, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %if.then54
  br label %if.end126

if.else:                                          ; preds = %for.end
  %55 = load i32, ptr %n, align 4
  %add95 = add i32 %55, 1
  %56 = load i32, ptr %nLen.addr, align 4
  %cmp96 = icmp ult i32 %add95, %56
  br i1 %cmp96, label %if.then98, label %if.end125

if.then98:                                        ; preds = %if.else
  %57 = load ptr, ptr %zB64.addr, align 8
  %58 = load i32, ptr %n, align 4
  %idxprom99 = zext i32 %58 to i64
  %arrayidx100 = getelementptr inbounds nuw i8, ptr %57, i64 %idxprom99
  %59 = load i8, ptr %arrayidx100, align 1
  %conv101 = sext i8 %59 to i32
  %and102 = and i32 %conv101, 127
  %idxprom103 = sext i32 %and102 to i64
  %arrayidx104 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom103
  %60 = load i32, ptr %arrayidx104, align 4
  store i32 %60, ptr %w, align 4
  %61 = load ptr, ptr %zB64.addr, align 8
  %62 = load i32, ptr %n, align 4
  %add105 = add i32 %62, 1
  %idxprom106 = zext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds nuw i8, ptr %61, i64 %idxprom106
  %63 = load i8, ptr %arrayidx107, align 1
  %conv108 = sext i8 %63 to i32
  %and109 = and i32 %conv108, 127
  %idxprom110 = sext i32 %and109 to i64
  %arrayidx111 = getelementptr inbounds [128 x i32], ptr @SyBase64Decode.aBase64Trans, i64 0, i64 %idxprom110
  %64 = load i32, ptr %arrayidx111, align 4
  store i32 %64, ptr %x, align 4
  %65 = load i32, ptr %w, align 4
  %shl112 = shl i32 %65, 2
  %and113 = and i32 %shl112, 252
  %66 = load i32, ptr %x, align 4
  %shr114 = lshr i32 %66, 4
  %and115 = and i32 %shr114, 3
  %or116 = or i32 %and113, %and115
  %conv117 = trunc i32 %or116 to i8
  %arrayidx118 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  store i8 %conv117, ptr %arrayidx118, align 1
  %67 = load ptr, ptr %xConsumer.addr, align 8
  %arraydecay119 = getelementptr inbounds [10 x i8], ptr %zOut, i64 0, i64 0
  %68 = load ptr, ptr %pUserData.addr, align 8
  %call120 = call i32 %67(ptr noundef %arraydecay119, i32 noundef 1, ptr noundef %68)
  store i32 %call120, ptr %rc, align 4
  %69 = load i32, ptr %rc, align 4
  %cmp121 = icmp ne i32 %69, 0
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.then98
  store i32 -10, ptr %retval, align 4
  br label %return

if.end124:                                        ; preds = %if.then98
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.else
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end94
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end126, %if.then123, %if.then93, %if.then
  %70 = load i32, ptr %retval, align 4
  ret i32 %70
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
