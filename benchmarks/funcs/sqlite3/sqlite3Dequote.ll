; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Dequote(ptr noundef %z) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %quote = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %z, ptr %z.addr, align 8
  %0 = load ptr, ptr %z.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  store i8 %2, ptr %quote, align 1
  %3 = load i8, ptr %quote, align 1
  %idxprom = zext i8 %3 to i64
  %arrayidx1 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i8, ptr %quote, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 91
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  store i8 93, ptr %quote, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end3
  store i32 1, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end8
  %6 = load ptr, ptr %z.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %6, i64 %idxprom9
  %8 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %8 to i32
  %9 = load i8, ptr %quote, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv11, %conv12
  br i1 %cmp13, label %if.then15, label %if.else27

if.then15:                                        ; preds = %for.cond
  %10 = load ptr, ptr %z.addr, align 8
  %11 = load i32, ptr %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom16 = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %10, i64 %idxprom16
  %12 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %12 to i32
  %13 = load i8, ptr %quote, align 1
  %conv19 = sext i8 %13 to i32
  %cmp20 = icmp eq i32 %conv18, %conv19
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then15
  %14 = load i8, ptr %quote, align 1
  %15 = load ptr, ptr %z.addr, align 8
  %16 = load i32, ptr %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %j, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %15, i64 %idxprom23
  store i8 %14, ptr %arrayidx24, align 1
  %17 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, ptr %i, align 4
  br label %if.end26

if.else:                                          ; preds = %if.then15
  br label %for.end

if.end26:                                         ; preds = %if.then22
  br label %if.end33

if.else27:                                        ; preds = %for.cond
  %18 = load ptr, ptr %z.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %18, i64 %idxprom28
  %20 = load i8, ptr %arrayidx29, align 1
  %21 = load ptr, ptr %z.addr, align 8
  %22 = load i32, ptr %j, align 4
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, ptr %j, align 4
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds i8, ptr %21, i64 %idxprom31
  store i8 %20, ptr %arrayidx32, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.else27, %if.end26
  br label %for.inc

for.inc:                                          ; preds = %if.end33
  %23 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %23, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else
  %24 = load ptr, ptr %z.addr, align 8
  %25 = load i32, ptr %j, align 4
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %24, i64 %idxprom35
  store i8 0, ptr %arrayidx36, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then2, %if.then
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
