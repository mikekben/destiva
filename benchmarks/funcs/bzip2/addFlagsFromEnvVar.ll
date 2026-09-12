; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmpName = external dso_local global [1034 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden void @addFlagsFromEnvVar(ptr noundef %argList, ptr noundef %varName) #0 {
entry:
  %argList.addr = alloca ptr, align 8
  %varName.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %envbase = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %argList, ptr %argList.addr, align 8
  store ptr %varName, ptr %varName.addr, align 8
  %0 = load ptr, ptr %varName.addr, align 8
  %call = call ptr @getenv(ptr noundef %0) #3
  store ptr %call, ptr %envbase, align 8
  %1 = load ptr, ptr %envbase, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end48

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %envbase, align 8
  store ptr %2, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %while.body

while.body:                                       ; preds = %if.end46, %if.then
  %3 = load ptr, ptr %p, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.body
  br label %while.end47

if.end:                                           ; preds = %while.body
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %p, align 8
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.body11, %if.end
  %call5 = call ptr @__ctype_b_loc() #4
  %8 = load ptr, ptr %call5, align 8
  %9 = load ptr, ptr %p, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %idxprom8 = sext i32 %conv7 to i64
  %arrayidx9 = getelementptr inbounds i16, ptr %8, i64 %idxprom8
  %11 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %11 to i32
  %and = and i32 %conv10, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body11, label %while.end

while.body11:                                     ; preds = %while.cond4
  %12 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond4, !llvm.loop !6

while.end:                                        ; preds = %while.cond4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body27, %while.end
  %13 = load ptr, ptr %p, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 %idxprom13
  %15 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %15 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond12
  %call18 = call ptr @__ctype_b_loc() #4
  %16 = load ptr, ptr %call18, align 8
  %17 = load ptr, ptr %p, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %17, i64 %idxprom19
  %19 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %19 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %arrayidx23 = getelementptr inbounds i16, ptr %16, i64 %idxprom22
  %20 = load i16, ptr %arrayidx23, align 2
  %conv24 = zext i16 %20 to i32
  %and25 = and i32 %conv24, 8192
  %tobool26 = icmp ne i32 %and25, 0
  %lnot = xor i1 %tobool26, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond12
  %21 = phi i1 [ false, %while.cond12 ], [ %lnot, %land.rhs ]
  br i1 %21, label %while.body27, label %while.end28

while.body27:                                     ; preds = %land.end
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond12, !llvm.loop !8

while.end28:                                      ; preds = %land.end
  %23 = load i32, ptr %i, align 4
  %cmp29 = icmp sgt i32 %23, 0
  br i1 %cmp29, label %if.then31, label %if.end46

if.then31:                                        ; preds = %while.end28
  %24 = load i32, ptr %i, align 4
  store i32 %24, ptr %k, align 4
  %25 = load i32, ptr %k, align 4
  %cmp32 = icmp sgt i32 %25, 1024
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then31
  store i32 1024, ptr %k, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.then31
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end35
  %26 = load i32, ptr %j, align 4
  %27 = load i32, ptr %k, align 4
  %cmp36 = icmp slt i32 %26, %27
  br i1 %cmp36, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load ptr, ptr %p, align 8
  %29 = load i32, ptr %j, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %28, i64 %idxprom38
  %30 = load i8, ptr %arrayidx39, align 1
  %31 = load i32, ptr %j, align 4
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %idxprom40
  store i8 %30, ptr %arrayidx41, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %j, align 4
  %inc42 = add nsw i32 %32, 1
  store i32 %inc42, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %k, align 4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %idxprom43
  store i8 0, ptr %arrayidx44, align 1
  %34 = load ptr, ptr %argList.addr, align 8
  %35 = load ptr, ptr %34, align 8
  %call45 = call ptr @snocString(ptr noundef %35, ptr noundef @tmpName)
  %36 = load ptr, ptr %argList.addr, align 8
  store ptr %call45, ptr %36, align 8
  br label %if.end46

if.end46:                                         ; preds = %for.end, %while.end28
  br label %while.body

while.end47:                                      ; preds = %if.then3
  br label %if.end48

if.end48:                                         ; preds = %while.end47, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @snocString(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #1

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(none) }

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
