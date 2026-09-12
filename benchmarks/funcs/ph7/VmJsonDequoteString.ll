; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.237 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.238 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.239 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @VmJsonDequoteString(ptr noundef %pStr, ptr noundef %pWorker) #0 {
entry:
  %pStr.addr = alloca ptr, align 8
  %pWorker.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zCur = alloca ptr, align 8
  %c = alloca i32, align 4
  store ptr %pStr, ptr %pStr.addr, align 8
  store ptr %pWorker, ptr %pWorker.addr, align 8
  %0 = load ptr, ptr %pStr.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %zString, align 8
  store ptr %1, ptr %zIn, align 8
  %2 = load ptr, ptr %pStr.addr, align 8
  %zString1 = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zString1, align 8
  %4 = load ptr, ptr %pStr.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %nByte, align 8
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %3, i64 %idxprom
  store ptr %arrayidx, ptr %zEnd, align 8
  %6 = load ptr, ptr %pWorker.addr, align 8
  %call = call i32 @ph7_value_string(ptr noundef %6, ptr noundef @.str.4, i32 noundef 0)
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %7 = load ptr, ptr %zIn, align 8
  store ptr %7, ptr %zCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %8 = load ptr, ptr %zIn, align 8
  %9 = load ptr, ptr %zEnd, align 8
  %cmp = icmp ult ptr %8, %9
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %10 = load ptr, ptr %zIn, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %11 to i32
  %cmp3 = icmp ne i32 %conv, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %zIn, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %zIn, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %zIn, align 8
  %15 = load ptr, ptr %zCur, align 8
  %cmp5 = icmp ugt ptr %14, %15
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %16 = load ptr, ptr %pWorker.addr, align 8
  %17 = load ptr, ptr %zCur, align 8
  %18 = load ptr, ptr %zIn, align 8
  %19 = load ptr, ptr %zCur, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i64 %sub.ptr.sub to i32
  %call8 = call i32 @ph7_value_string(ptr noundef %16, ptr noundef %17, i32 noundef %conv7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %20 = load ptr, ptr %zIn, align 8
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %20, i32 1
  store ptr %incdec.ptr9, ptr %zIn, align 8
  %21 = load ptr, ptr %zIn, align 8
  %22 = load ptr, ptr %zEnd, align 8
  %cmp10 = icmp uge ptr %21, %22
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  br label %for.end

if.end13:                                         ; preds = %if.end
  %23 = load ptr, ptr %zIn, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %24 to i32
  store i32 %conv15, ptr %c, align 4
  %25 = load i32, ptr %c, align 4
  switch i32 %25, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb17
    i32 110, label %sw.bb19
    i32 114, label %sw.bb21
    i32 116, label %sw.bb23
    i32 102, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end13
  %26 = load ptr, ptr %pWorker.addr, align 8
  %call16 = call i32 @ph7_value_string(ptr noundef %26, ptr noundef %c, i32 noundef 1)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end13
  %27 = load ptr, ptr %pWorker.addr, align 8
  %call18 = call i32 @ph7_value_string(ptr noundef %27, ptr noundef %c, i32 noundef 1)
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end13
  %28 = load ptr, ptr %pWorker.addr, align 8
  %call20 = call i32 @ph7_value_string(ptr noundef %28, ptr noundef @.str.47, i32 noundef 1)
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end13
  %29 = load ptr, ptr %pWorker.addr, align 8
  %call22 = call i32 @ph7_value_string(ptr noundef %29, ptr noundef @.str.238, i32 noundef 1)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end13
  %30 = load ptr, ptr %pWorker.addr, align 8
  %call24 = call i32 @ph7_value_string(ptr noundef %30, ptr noundef @.str.239, i32 noundef 1)
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end13
  %31 = load ptr, ptr %pWorker.addr, align 8
  %call26 = call i32 @ph7_value_string(ptr noundef %31, ptr noundef @.str.237, i32 noundef 1)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end13
  %32 = load ptr, ptr %pWorker.addr, align 8
  %call27 = call i32 @ph7_value_string(ptr noundef %32, ptr noundef %c, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb
  %33 = load ptr, ptr %zIn, align 8
  %incdec.ptr28 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr28, ptr %zIn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then12
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
