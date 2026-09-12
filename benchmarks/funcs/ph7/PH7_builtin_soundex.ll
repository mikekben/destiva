; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@PH7_builtin_soundex.iCode = external hidden constant [128 x i8], align 16
@.str.998 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_soundex(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zIn = alloca ptr, align 8
  %zResult = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %prevcode = alloca i8, align 1
  %code = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_string(ptr noundef %1, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef null)
  store ptr %call1, ptr %zIn, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load ptr, ptr %zIn, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %7 = load ptr, ptr %zIn, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %idxprom3
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp slt i32 %conv5, 192
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %call8 = call ptr @__ctype_b_loc() #3
  %10 = load ptr, ptr %call8, align 8
  %11 = load ptr, ptr %zIn, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 %idxprom9
  %13 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %arrayidx13 = getelementptr inbounds i16, ptr %10, i64 %idxprom12
  %14 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %14 to i32
  %and = and i32 %conv14, 1024
  %tobool15 = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool15, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %17 = load ptr, ptr %zIn, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %17, i64 %idxprom16
  %19 = load i8, ptr %arrayidx17, align 1
  %tobool18 = icmp ne i8 %19, 0
  br i1 %tobool18, label %if.then19, label %if.else74

if.then19:                                        ; preds = %for.end
  %20 = load ptr, ptr %zIn, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %20, i64 %idxprom20
  %22 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %22 to i32
  %and23 = and i32 %conv22, 127
  %idxprom24 = sext i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds [128 x i8], ptr @PH7_builtin_soundex.iCode, i64 0, i64 %idxprom24
  %23 = load i8, ptr %arrayidx25, align 1
  store i8 %23, ptr %prevcode, align 1
  %24 = load ptr, ptr %zIn, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i64 %idxprom26
  %26 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %26 to i32
  %call29 = call i32 @toupper(i32 noundef %conv28) #4
  %conv30 = trunc i32 %call29 to i8
  %arrayidx31 = getelementptr inbounds [8 x i8], ptr %zResult, i64 0, i64 0
  store i8 %conv30, ptr %arrayidx31, align 1
  store i32 1, ptr %j, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc65, %if.then19
  %27 = load i32, ptr %j, align 4
  %cmp33 = icmp slt i32 %27, 4
  br i1 %cmp33, label %land.rhs35, label %land.end40

land.rhs35:                                       ; preds = %for.cond32
  %28 = load ptr, ptr %zIn, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %28, i64 %idxprom36
  %30 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %30 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  br label %land.end40

land.end40:                                       ; preds = %land.rhs35, %for.cond32
  %31 = phi i1 [ false, %for.cond32 ], [ %tobool39, %land.rhs35 ]
  br i1 %31, label %for.body41, label %for.end67

for.body41:                                       ; preds = %land.end40
  %32 = load ptr, ptr %zIn, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %32, i64 %idxprom42
  %34 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %34 to i32
  %and45 = and i32 %conv44, 127
  %idxprom46 = sext i32 %and45 to i64
  %arrayidx47 = getelementptr inbounds [128 x i8], ptr @PH7_builtin_soundex.iCode, i64 0, i64 %idxprom46
  %35 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %35 to i32
  store i32 %conv48, ptr %code, align 4
  %36 = load i32, ptr %code, align 4
  %cmp49 = icmp sgt i32 %36, 0
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %for.body41
  %37 = load i32, ptr %code, align 4
  %38 = load i8, ptr %prevcode, align 1
  %conv52 = zext i8 %38 to i32
  %cmp53 = icmp ne i32 %37, %conv52
  br i1 %cmp53, label %if.then55, label %if.end63

if.then55:                                        ; preds = %if.then51
  %39 = load i32, ptr %code, align 4
  %conv56 = trunc i32 %39 to i8
  store i8 %conv56, ptr %prevcode, align 1
  %40 = load i32, ptr %code, align 4
  %conv57 = trunc i32 %40 to i8
  %conv58 = sext i8 %conv57 to i32
  %add = add nsw i32 %conv58, 48
  %conv59 = trunc i32 %add to i8
  %41 = load i32, ptr %j, align 4
  %inc60 = add nsw i32 %41, 1
  store i32 %inc60, ptr %j, align 4
  %idxprom61 = sext i32 %41 to i64
  %arrayidx62 = getelementptr inbounds [8 x i8], ptr %zResult, i64 0, i64 %idxprom61
  store i8 %conv59, ptr %arrayidx62, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then55, %if.then51
  br label %if.end64

if.else:                                          ; preds = %for.body41
  store i8 0, ptr %prevcode, align 1
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.end63
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %42 = load i32, ptr %i, align 4
  %inc66 = add nsw i32 %42, 1
  store i32 %inc66, ptr %i, align 4
  br label %for.cond32, !llvm.loop !8

for.end67:                                        ; preds = %land.end40
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end67
  %43 = load i32, ptr %j, align 4
  %cmp68 = icmp slt i32 %43, 4
  br i1 %cmp68, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i32, ptr %j, align 4
  %inc70 = add nsw i32 %44, 1
  store i32 %inc70, ptr %j, align 4
  %idxprom71 = sext i32 %44 to i64
  %arrayidx72 = getelementptr inbounds [8 x i8], ptr %zResult, i64 0, i64 %idxprom71
  store i8 48, ptr %arrayidx72, align 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %45 = load ptr, ptr %pCtx.addr, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %zResult, i64 0, i64 0
  %call73 = call i32 @ph7_result_string(ptr noundef %45, ptr noundef %arraydecay, i32 noundef 4)
  br label %if.end76

if.else74:                                        ; preds = %for.end
  %46 = load ptr, ptr %pCtx.addr, align 8
  %call75 = call i32 @ph7_result_string(ptr noundef %46, ptr noundef @.str.998, i32 noundef 4)
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %if.then
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) #2

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

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
