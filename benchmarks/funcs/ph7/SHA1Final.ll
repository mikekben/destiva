; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA1Context = type { [5 x i32], [2 x i32], [64 x i8] }

@.str.119 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.502 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SHA1Update(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @SHA1Final(ptr noundef %context, ptr noundef %digest) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %digest.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %finalcount = alloca [8 x i8], align 1
  store ptr %context, ptr %context.addr, align 8
  store ptr %digest, ptr %digest.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %context.addr, align 8
  %count = getelementptr inbounds nuw %struct.SHA1Context, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp uge i32 %2, 4
  %3 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 0, i32 1
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr %count, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i32, ptr %i, align 4
  %and = and i32 %5, 3
  %sub = sub i32 3, %and
  %mul = mul i32 %sub, 8
  %shr = lshr i32 %4, %mul
  %and2 = and i32 %shr, 255
  %conv = trunc i32 %and2 to i8
  %6 = load i32, ptr %i, align 4
  %idxprom3 = zext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds nuw [8 x i8], ptr %finalcount, i64 0, i64 %idxprom3
  store i8 %conv, ptr %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %context.addr, align 8
  call void @SHA1Update(ptr noundef %8, ptr noundef @.str.502, i32 noundef 1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load ptr, ptr %context.addr, align 8
  %count5 = getelementptr inbounds nuw %struct.SHA1Context, ptr %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr %count5, i64 0, i64 0
  %10 = load i32, ptr %arrayidx6, align 4
  %and7 = and i32 %10, 504
  %cmp8 = icmp ne i32 %and7, 448
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %context.addr, align 8
  call void @SHA1Update(ptr noundef %11, ptr noundef @.str.119, i32 noundef 1)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %context.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %finalcount, i64 0, i64 0
  call void @SHA1Update(ptr noundef %12, ptr noundef %arraydecay, i32 noundef 8)
  %13 = load ptr, ptr %digest.addr, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc25, %if.then
  %14 = load i32, ptr %i, align 4
  %cmp11 = icmp ult i32 %14, 20
  br i1 %cmp11, label %for.body13, label %for.end27

for.body13:                                       ; preds = %for.cond10
  %15 = load ptr, ptr %context.addr, align 8
  %state = getelementptr inbounds nuw %struct.SHA1Context, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %i, align 4
  %shr14 = lshr i32 %16, 2
  %idxprom15 = zext i32 %shr14 to i64
  %arrayidx16 = getelementptr inbounds nuw [5 x i32], ptr %state, i64 0, i64 %idxprom15
  %17 = load i32, ptr %arrayidx16, align 4
  %18 = load i32, ptr %i, align 4
  %and17 = and i32 %18, 3
  %sub18 = sub i32 3, %and17
  %mul19 = mul i32 %sub18, 8
  %shr20 = lshr i32 %17, %mul19
  %and21 = and i32 %shr20, 255
  %conv22 = trunc i32 %and21 to i8
  %19 = load ptr, ptr %digest.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom23 = zext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds nuw i8, ptr %19, i64 %idxprom23
  store i8 %conv22, ptr %arrayidx24, align 1
  br label %for.inc25

for.inc25:                                        ; preds = %for.body13
  %21 = load i32, ptr %i, align 4
  %inc26 = add i32 %21, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond10, !llvm.loop !9

for.end27:                                        ; preds = %for.cond10
  br label %if.end

if.end:                                           ; preds = %for.end27, %while.end
  ret void
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
