; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3PrngType = type { i8, i8, i8, [256 x i8] }

@sqlite3Prng = external hidden global %struct.sqlite3PrngType, align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_vfs_find(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_initialize() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_randomness(i32 noundef %N, ptr noundef %pBuf) #0 {
entry:
  %N.addr = alloca i32, align 4
  %pBuf.addr = alloca ptr, align 8
  %t = alloca i8, align 1
  %zBuf = alloca ptr, align 8
  %mutex = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca [256 x i8], align 16
  store i32 %N, ptr %N.addr, align 4
  store ptr %pBuf, ptr %pBuf.addr, align 8
  %0 = load ptr, ptr %pBuf.addr, align 8
  store ptr %0, ptr %zBuf, align 8
  %call = call i32 @sqlite3_initialize()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call ptr @sqlite3MutexAlloc(i32 noundef 5)
  store ptr %call1, ptr %mutex, align 8
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load i32, ptr %N.addr, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %pBuf.addr, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i8 0, ptr @sqlite3Prng, align 1
  %4 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %4)
  br label %return

if.end4:                                          ; preds = %lor.lhs.false
  %5 = load i8, ptr @sqlite3Prng, align 1
  %tobool5 = icmp ne i8 %5, 0
  br i1 %tobool5, label %if.end34, label %if.then6

if.then6:                                         ; preds = %if.end4
  store i8 0, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 1), align 1
  %call7 = call ptr @sqlite3_vfs_find(ptr noundef null)
  %arraydecay = getelementptr inbounds [256 x i8], ptr %k, i64 0, i64 0
  %call8 = call i32 @sqlite3OsRandomness(ptr noundef %call7, i32 noundef 256, ptr noundef %arraydecay)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %6 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %6, 256
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4
  %conv = trunc i32 %7 to i8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end
  %10 = load i32, ptr %i, align 4
  %cmp11 = icmp slt i32 %10, 256
  br i1 %cmp11, label %for.body13, label %for.end33

for.body13:                                       ; preds = %for.cond10
  %11 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom14
  %12 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %12 to i32
  %13 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], ptr %k, i64 0, i64 %idxprom17
  %14 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %14 to i32
  %add = add nsw i32 %conv16, %conv19
  %15 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  %conv20 = zext i8 %15 to i32
  %add21 = add nsw i32 %conv20, %add
  %conv22 = trunc i32 %add21 to i8
  store i8 %conv22, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  %16 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  %idxprom23 = zext i8 %16 to i64
  %arrayidx24 = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom23
  %17 = load i8, ptr %arrayidx24, align 1
  store i8 %17, ptr %t, align 1
  %18 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom25
  %19 = load i8, ptr %arrayidx26, align 1
  %20 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  %idxprom27 = zext i8 %20 to i64
  %arrayidx28 = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom27
  store i8 %19, ptr %arrayidx28, align 1
  %21 = load i8, ptr %t, align 1
  %22 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %22 to i64
  %arrayidx30 = getelementptr inbounds [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom29
  store i8 %21, ptr %arrayidx30, align 1
  br label %for.inc31

for.inc31:                                        ; preds = %for.body13
  %23 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %23, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond10, !llvm.loop !8

for.end33:                                        ; preds = %for.cond10
  store i8 1, ptr @sqlite3Prng, align 1
  br label %if.end34

if.end34:                                         ; preds = %for.end33, %if.end4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end34
  %24 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 1), align 1
  %inc35 = add i8 %24, 1
  store i8 %inc35, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 1), align 1
  %25 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 1), align 1
  %idxprom36 = zext i8 %25 to i64
  %arrayidx37 = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom36
  %26 = load i8, ptr %arrayidx37, align 1
  store i8 %26, ptr %t, align 1
  %27 = load i8, ptr %t, align 1
  %conv38 = zext i8 %27 to i32
  %28 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  %conv39 = zext i8 %28 to i32
  %add40 = add nsw i32 %conv39, %conv38
  %conv41 = trunc i32 %add40 to i8
  store i8 %conv41, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  %29 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  %idxprom42 = zext i8 %29 to i64
  %arrayidx43 = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom42
  %30 = load i8, ptr %arrayidx43, align 1
  %31 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 1), align 1
  %idxprom44 = zext i8 %31 to i64
  %arrayidx45 = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom44
  store i8 %30, ptr %arrayidx45, align 1
  %32 = load i8, ptr %t, align 1
  %33 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 2), align 1
  %idxprom46 = zext i8 %33 to i64
  %arrayidx47 = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom46
  store i8 %32, ptr %arrayidx47, align 1
  %34 = load i8, ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 1), align 1
  %idxprom48 = zext i8 %34 to i64
  %arrayidx49 = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom48
  %35 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %35 to i32
  %36 = load i8, ptr %t, align 1
  %conv51 = zext i8 %36 to i32
  %add52 = add nsw i32 %conv51, %conv50
  %conv53 = trunc i32 %add52 to i8
  store i8 %conv53, ptr %t, align 1
  %37 = load i8, ptr %t, align 1
  %idxprom54 = zext i8 %37 to i64
  %arrayidx55 = getelementptr inbounds nuw [256 x i8], ptr getelementptr inbounds nuw (%struct.sqlite3PrngType, ptr @sqlite3Prng, i32 0, i32 3), i64 0, i64 %idxprom54
  %38 = load i8, ptr %arrayidx55, align 1
  %39 = load ptr, ptr %zBuf, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %zBuf, align 8
  store i8 %38, ptr %39, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %40 = load i32, ptr %N.addr, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, ptr %N.addr, align 4
  %tobool56 = icmp ne i32 %dec, 0
  br i1 %tobool56, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  %41 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_leave(ptr noundef %41)
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRandomness(ptr noundef, i32 noundef, ptr noundef) #0

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
