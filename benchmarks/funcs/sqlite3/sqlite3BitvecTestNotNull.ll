; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Bitvec = type { i32, i32, i32, %union.anon.8 }
%union.anon.8 = type { [62 x ptr] }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BitvecTestNotNull(ptr noundef %p, i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %bin = alloca i32, align 4
  %h = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr %i.addr, align 4
  %1 = load i32, ptr %i.addr, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %iSize = getelementptr inbounds nuw %struct.Bitvec, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %iSize, align 8
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %if.end
  %4 = load ptr, ptr %p.addr, align 8
  %iDivisor = getelementptr inbounds nuw %struct.Bitvec, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iDivisor, align 8
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %i.addr, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %iDivisor1 = getelementptr inbounds nuw %struct.Bitvec, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iDivisor1, align 8
  %div = udiv i32 %6, %8
  store i32 %div, ptr %bin, align 4
  %9 = load i32, ptr %i.addr, align 4
  %10 = load ptr, ptr %p.addr, align 8
  %iDivisor2 = getelementptr inbounds nuw %struct.Bitvec, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iDivisor2, align 8
  %rem = urem i32 %9, %11
  store i32 %rem, ptr %i.addr, align 4
  %12 = load ptr, ptr %p.addr, align 8
  %u = getelementptr inbounds nuw %struct.Bitvec, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %bin, align 4
  %idxprom = zext i32 %13 to i64
  %arrayidx = getelementptr inbounds nuw [62 x ptr], ptr %u, i64 0, i64 %idxprom
  %14 = load ptr, ptr %arrayidx, align 8
  store ptr %14, ptr %p.addr, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %tobool3 = icmp ne ptr %15, null
  br i1 %tobool3, label %if.end5, label %if.then4

if.then4:                                         ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %p.addr, align 8
  %iSize6 = getelementptr inbounds nuw %struct.Bitvec, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %iSize6, align 8
  %conv = zext i32 %17 to i64
  %cmp7 = icmp ule i64 %conv, 3968
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %while.end
  %18 = load ptr, ptr %p.addr, align 8
  %u10 = getelementptr inbounds nuw %struct.Bitvec, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %i.addr, align 4
  %div11 = udiv i32 %19, 8
  %idxprom12 = zext i32 %div11 to i64
  %arrayidx13 = getelementptr inbounds nuw [496 x i8], ptr %u10, i64 0, i64 %idxprom12
  %20 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %20 to i32
  %21 = load i32, ptr %i.addr, align 4
  %and = and i32 %21, 7
  %shl = shl i32 1, %and
  %and15 = and i32 %conv14, %shl
  %cmp16 = icmp ne i32 %and15, 0
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %while.end
  %22 = load i32, ptr %i.addr, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %i.addr, align 4
  %mul = mul i32 %22, 1
  %conv18 = zext i32 %mul to i64
  %rem19 = urem i64 %conv18, 124
  %conv20 = trunc i64 %rem19 to i32
  store i32 %conv20, ptr %h, align 4
  br label %while.cond21

while.cond21:                                     ; preds = %if.end33, %if.else
  %23 = load ptr, ptr %p.addr, align 8
  %u22 = getelementptr inbounds nuw %struct.Bitvec, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %h, align 4
  %idxprom23 = zext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds nuw [124 x i32], ptr %u22, i64 0, i64 %idxprom23
  %25 = load i32, ptr %arrayidx24, align 4
  %tobool25 = icmp ne i32 %25, 0
  br i1 %tobool25, label %while.body26, label %while.end37

while.body26:                                     ; preds = %while.cond21
  %26 = load ptr, ptr %p.addr, align 8
  %u27 = getelementptr inbounds nuw %struct.Bitvec, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %h, align 4
  %idxprom28 = zext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds nuw [124 x i32], ptr %u27, i64 0, i64 %idxprom28
  %28 = load i32, ptr %arrayidx29, align 4
  %29 = load i32, ptr %i.addr, align 4
  %cmp30 = icmp eq i32 %28, %29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.body26
  store i32 1, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %while.body26
  %30 = load i32, ptr %h, align 4
  %add = add i32 %30, 1
  %conv34 = zext i32 %add to i64
  %rem35 = urem i64 %conv34, 124
  %conv36 = trunc i64 %rem35 to i32
  store i32 %conv36, ptr %h, align 4
  br label %while.cond21, !llvm.loop !8

while.end37:                                      ; preds = %while.cond21
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end37, %if.then32, %if.then9, %if.then4, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
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
