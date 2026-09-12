; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@getSafetyLevel.zText = external hidden constant [25 x i8], align 16
@getSafetyLevel.iOffset = external hidden constant [8 x i8], align 1
@getSafetyLevel.iLength = external hidden constant [8 x i8], align 1
@getSafetyLevel.iValue = external hidden constant [8 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Atoi(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden zeroext i8 @getSafetyLevel(ptr noundef %z, i32 noundef %omitFull, i8 noundef zeroext %dflt) #0 {
entry:
  %retval = alloca i8, align 1
  %z.addr = alloca ptr, align 8
  %omitFull.addr = alloca i32, align 4
  %dflt.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  store i32 %omitFull, ptr %omitFull.addr, align 4
  store i8 %dflt, ptr %dflt.addr, align 1
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load i8, ptr %0, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %z.addr, align 8
  %call = call i32 @sqlite3Atoi(ptr noundef %3)
  %conv1 = trunc i32 %call to i8
  store i8 %conv1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %z.addr, align 8
  %call2 = call i32 @sqlite3Strlen30(ptr noundef %4)
  store i32 %call2, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %5, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [8 x i8], ptr @getSafetyLevel.iLength, i64 0, i64 %idxprom4
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %8 = load i32, ptr %n, align 4
  %cmp7 = icmp eq i32 %conv6, %8
  br i1 %cmp7, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [8 x i8], ptr @getSafetyLevel.iOffset, i64 0, i64 %idxprom9
  %10 = load i8, ptr %arrayidx10, align 1
  %idxprom11 = zext i8 %10 to i64
  %arrayidx12 = getelementptr inbounds nuw [25 x i8], ptr @getSafetyLevel.zText, i64 0, i64 %idxprom11
  %11 = load ptr, ptr %z.addr, align 8
  %12 = load i32, ptr %n, align 4
  %call13 = call i32 @sqlite3_strnicmp(ptr noundef %arrayidx12, ptr noundef %11, i32 noundef %12)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %land.lhs.true16, label %if.end26

land.lhs.true16:                                  ; preds = %land.lhs.true
  %13 = load i32, ptr %omitFull.addr, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %lor.lhs.false, label %if.then23

lor.lhs.false:                                    ; preds = %land.lhs.true16
  %14 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [8 x i8], ptr @getSafetyLevel.iValue, i64 0, i64 %idxprom18
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %cmp21 = icmp sle i32 %conv20, 1
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %lor.lhs.false, %land.lhs.true16
  %16 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [8 x i8], ptr @getSafetyLevel.iValue, i64 0, i64 %idxprom24
  %17 = load i8, ptr %arrayidx25, align 1
  store i8 %17, ptr %retval, align 1
  br label %return

if.end26:                                         ; preds = %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load i8, ptr %dflt.addr, align 1
  store i8 %19, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then23, %if.then
  %20 = load i8, ptr %retval, align 1
  ret i8 %20
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
