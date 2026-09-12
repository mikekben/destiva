; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stat4Accum = type { i32, i32, i32, i32, i32, %struct.Stat4Sample, i32, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.Stat4Sample = type { ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_blob(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @statPush(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %iChng = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_blob(ptr noundef %1)
  store ptr %call, ptr %p, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @sqlite3_value_int(ptr noundef %3)
  store i32 %call2, ptr %iChng, align 4
  %4 = load i32, ptr %argc.addr, align 4
  %5 = load ptr, ptr %context.addr, align 8
  %6 = load ptr, ptr %p, align 8
  %nRow = getelementptr inbounds nuw %struct.Stat4Accum, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %nRow, align 8
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %p, align 8
  %nCol = getelementptr inbounds nuw %struct.Stat4Accum, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %nCol, align 8
  %cmp3 = icmp slt i32 %8, %10
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %p, align 8
  %current = getelementptr inbounds nuw %struct.Stat4Accum, ptr %11, i32 0, i32 5
  %anEq = getelementptr inbounds nuw %struct.Stat4Sample, ptr %current, i32 0, i32 0
  %12 = load ptr, ptr %anEq, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 %idxprom
  store i32 1, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load ptr, ptr %p, align 8
  %16 = load i32, ptr %iChng, align 4
  call void @samplePushPrevious(ptr noundef %15, i32 noundef %16)
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %if.else
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %iChng, align 4
  %cmp6 = icmp slt i32 %17, %18
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %19 = load ptr, ptr %p, align 8
  %current8 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %19, i32 0, i32 5
  %anEq9 = getelementptr inbounds nuw %struct.Stat4Sample, ptr %current8, i32 0, i32 0
  %20 = load ptr, ptr %anEq9, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %20, i64 %idxprom10
  %22 = load i32, ptr %arrayidx11, align 4
  %inc12 = add i32 %22, 1
  store i32 %inc12, ptr %arrayidx11, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7
  %23 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %23, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond5, !llvm.loop !8

for.end15:                                        ; preds = %for.cond5
  %24 = load i32, ptr %iChng, align 4
  store i32 %24, ptr %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc28, %for.end15
  %25 = load i32, ptr %i, align 4
  %26 = load ptr, ptr %p, align 8
  %nCol17 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %26, i32 0, i32 2
  %27 = load i32, ptr %nCol17, align 8
  %cmp18 = icmp slt i32 %25, %27
  br i1 %cmp18, label %for.body19, label %for.end30

for.body19:                                       ; preds = %for.cond16
  %28 = load ptr, ptr %p, align 8
  %current20 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %28, i32 0, i32 5
  %anDLt = getelementptr inbounds nuw %struct.Stat4Sample, ptr %current20, i32 0, i32 1
  %29 = load ptr, ptr %anDLt, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %29, i64 %idxprom21
  %31 = load i32, ptr %arrayidx22, align 4
  %inc23 = add i32 %31, 1
  store i32 %inc23, ptr %arrayidx22, align 4
  %32 = load ptr, ptr %p, align 8
  %current24 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %32, i32 0, i32 5
  %anEq25 = getelementptr inbounds nuw %struct.Stat4Sample, ptr %current24, i32 0, i32 0
  %33 = load ptr, ptr %anEq25, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %34 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %33, i64 %idxprom26
  store i32 1, ptr %arrayidx27, align 4
  br label %for.inc28

for.inc28:                                        ; preds = %for.body19
  %35 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %35, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond16, !llvm.loop !9

for.end30:                                        ; preds = %for.cond16
  br label %if.end

if.end:                                           ; preds = %for.end30, %for.end
  %36 = load ptr, ptr %p, align 8
  %nRow31 = getelementptr inbounds nuw %struct.Stat4Accum, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %nRow31, align 8
  %inc32 = add i32 %37, 1
  store i32 %inc32, ptr %nRow31, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @samplePushPrevious(ptr noundef, i32 noundef) #0

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
