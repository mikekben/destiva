; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yyFallback = external hidden constant <{ [98 x i16], [81 x i16] }>, align 16
@yy_shift_ofst = external hidden constant [543 x i16], align 16
@yy_lookahead = external hidden constant [2092 x i16], align 16
@yy_action = external hidden constant [1913 x i16], align 16
@yy_default = external hidden constant [543 x i16], align 16

; Function Attrs: nounwind uwtable
define hidden zeroext i16 @yy_find_shift_action(i16 noundef zeroext %iLookAhead, i16 noundef zeroext %stateno) #0 {
entry:
  %retval = alloca i16, align 2
  %iLookAhead.addr = alloca i16, align 2
  %stateno.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %iFallback = alloca i16, align 2
  %j = alloca i32, align 4
  store i16 %iLookAhead, ptr %iLookAhead.addr, align 2
  store i16 %stateno, ptr %stateno.addr, align 2
  %0 = load i16, ptr %stateno.addr, align 2
  %conv = zext i16 %0 to i32
  %cmp = icmp sgt i32 %conv, 542
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i16, ptr %stateno.addr, align 2
  store i16 %1, ptr %retval, align 2
  br label %do.end

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load i16, ptr %stateno.addr, align 2
  %idxprom = zext i16 %2 to i64
  %arrayidx = getelementptr inbounds nuw [543 x i16], ptr @yy_shift_ofst, i64 0, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %3 to i32
  store i32 %conv2, ptr %i, align 4
  %4 = load i16, ptr %iLookAhead.addr, align 2
  %conv3 = zext i16 %4 to i32
  %5 = load i32, ptr %i, align 4
  %add = add nsw i32 %5, %conv3
  store i32 %add, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [2092 x i16], ptr @yy_lookahead, i64 0, i64 %idxprom4
  %7 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %8 = load i16, ptr %iLookAhead.addr, align 2
  %conv7 = zext i16 %8 to i32
  %cmp8 = icmp ne i32 %conv6, %conv7
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.body
  %9 = load i16, ptr %iLookAhead.addr, align 2
  %idxprom11 = zext i16 %9 to i64
  %arrayidx12 = getelementptr inbounds nuw [179 x i16], ptr @yyFallback, i64 0, i64 %idxprom11
  %10 = load i16, ptr %arrayidx12, align 2
  store i16 %10, ptr %iFallback, align 2
  %11 = load i16, ptr %iFallback, align 2
  %conv13 = zext i16 %11 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then10
  %12 = load i16, ptr %iFallback, align 2
  store i16 %12, ptr %iLookAhead.addr, align 2
  br label %do.cond

if.end17:                                         ; preds = %if.then10
  %13 = load i32, ptr %i, align 4
  %14 = load i16, ptr %iLookAhead.addr, align 2
  %conv18 = zext i16 %14 to i32
  %sub = sub nsw i32 %13, %conv18
  %add19 = add nsw i32 %sub, 98
  store i32 %add19, ptr %j, align 4
  %15 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [2092 x i16], ptr @yy_lookahead, i64 0, i64 %idxprom20
  %16 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %16 to i32
  %cmp23 = icmp eq i32 %conv22, 98
  br i1 %cmp23, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end17
  %17 = load i16, ptr %iLookAhead.addr, align 2
  %conv25 = zext i16 %17 to i32
  %cmp26 = icmp sgt i32 %conv25, 0
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %land.lhs.true
  %18 = load i32, ptr %j, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [1913 x i16], ptr @yy_action, i64 0, i64 %idxprom29
  %19 = load i16, ptr %arrayidx30, align 2
  store i16 %19, ptr %retval, align 2
  br label %do.end

if.end31:                                         ; preds = %land.lhs.true, %if.end17
  %20 = load i16, ptr %stateno.addr, align 2
  %idxprom32 = zext i16 %20 to i64
  %arrayidx33 = getelementptr inbounds nuw [543 x i16], ptr @yy_default, i64 0, i64 %idxprom32
  %21 = load i16, ptr %arrayidx33, align 2
  store i16 %21, ptr %retval, align 2
  br label %do.end

if.else:                                          ; preds = %do.body
  %22 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %22 to i64
  %arrayidx35 = getelementptr inbounds [1913 x i16], ptr @yy_action, i64 0, i64 %idxprom34
  %23 = load i16, ptr %arrayidx35, align 2
  store i16 %23, ptr %retval, align 2
  br label %do.end

do.cond:                                          ; preds = %if.then16
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.else, %if.end31, %if.then28, %if.then
  %24 = load i16, ptr %retval, align 2
  ret i16 %24
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
