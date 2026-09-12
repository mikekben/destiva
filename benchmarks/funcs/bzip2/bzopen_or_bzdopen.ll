; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.16 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.64 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.65 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.66 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @BZ2_bzWriteOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @BZ2_bzReadOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @bzopen_or_bzdopen(ptr noundef %path, i32 noundef %fd, ptr noundef %mode, i32 noundef %open_mode) #0 {
entry:
  %retval = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %fd.addr = alloca i32, align 4
  %mode.addr = alloca ptr, align 8
  %open_mode.addr = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %unused = alloca [5000 x i8], align 16
  %blockSize100k = alloca i32, align 4
  %writing = alloca i32, align 4
  %mode2 = alloca [10 x i8], align 1
  %fp = alloca ptr, align 8
  %bzfp = alloca ptr, align 8
  %verbosity = alloca i32, align 4
  %workFactor = alloca i32, align 4
  %smallMode = alloca i32, align 4
  %nUnused = alloca i32, align 4
  store ptr %path, ptr %path.addr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store ptr %mode, ptr %mode.addr, align 8
  store i32 %open_mode, ptr %open_mode.addr, align 4
  store i32 9, ptr %blockSize100k, align 4
  store i32 0, ptr %writing, align 4
  call void @llvm.memset.p0.i64(ptr align 1 %mode2, i8 0, i64 10, i1 false)
  store ptr null, ptr %fp, align 8
  store ptr null, ptr %bzfp, align 8
  store i32 0, ptr %verbosity, align 4
  store i32 30, ptr %workFactor, align 4
  store i32 0, ptr %smallMode, align 4
  store i32 0, ptr %nUnused, align 4
  %0 = load ptr, ptr %mode.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %1 = load ptr, ptr %mode.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %mode.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 119, label %sw.bb1
    i32 115, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, ptr %writing, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i32 1, ptr %writing, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  store i32 1, ptr %smallMode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call = call ptr @__ctype_b_loc() #6
  %5 = load ptr, ptr %call, align 8
  %6 = load ptr, ptr %mode.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv3 = sext i8 %7 to i32
  %idxprom = sext i32 %conv3 to i64
  %arrayidx = getelementptr inbounds i16, ptr %5, i64 %idxprom
  %8 = load i16, ptr %arrayidx, align 2
  %conv4 = zext i16 %8 to i32
  %and = and i32 %conv4, 2048
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %sw.default
  %9 = load ptr, ptr %mode.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv7 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv7, 48
  store i32 %sub, ptr %blockSize100k, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %sw.bb2, %sw.bb1, %sw.bb
  %11 = load ptr, ptr %mode.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %mode.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [10 x i8], ptr %mode2, i64 0, i64 0
  %12 = load i32, ptr %writing, align 4
  %tobool9 = icmp ne i32 %12, 0
  %13 = zext i1 %tobool9 to i64
  %cond = select i1 %tobool9, ptr @.str.64, ptr @.str.65
  %call10 = call ptr @strcat(ptr noundef %arraydecay, ptr noundef %cond) #7
  %arraydecay11 = getelementptr inbounds [10 x i8], ptr %mode2, i64 0, i64 0
  %call12 = call ptr @strcat(ptr noundef %arraydecay11, ptr noundef @.str.66) #7
  %14 = load i32, ptr %open_mode.addr, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then15, label %if.else27

if.then15:                                        ; preds = %while.end
  %15 = load ptr, ptr %path.addr, align 8
  %cmp16 = icmp eq ptr %15, null
  br i1 %cmp16, label %if.then21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %16 = load ptr, ptr %path.addr, align 8
  %call18 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.16) #8
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %lor.lhs.false, %if.then15
  %17 = load i32, ptr %writing, align 4
  %tobool22 = icmp ne i32 %17, 0
  br i1 %tobool22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then21
  %18 = load ptr, ptr @stdout, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then21
  %19 = load ptr, ptr @stdin, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi ptr [ %18, %cond.true ], [ %19, %cond.false ]
  store ptr %cond23, ptr %fp, align 8
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false
  %20 = load ptr, ptr %path.addr, align 8
  %arraydecay24 = getelementptr inbounds [10 x i8], ptr %mode2, i64 0, i64 0
  %call25 = call noalias ptr @fopen(ptr noundef %20, ptr noundef %arraydecay24)
  store ptr %call25, ptr %fp, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %cond.end
  br label %if.end30

if.else27:                                        ; preds = %while.end
  %21 = load i32, ptr %fd.addr, align 4
  %arraydecay28 = getelementptr inbounds [10 x i8], ptr %mode2, i64 0, i64 0
  %call29 = call noalias ptr @fdopen(i32 noundef %21, ptr noundef %arraydecay28) #7
  store ptr %call29, ptr %fp, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.end26
  %22 = load ptr, ptr %fp, align 8
  %cmp31 = icmp eq ptr %22, null
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end30
  store ptr null, ptr %retval, align 8
  br label %return

if.end34:                                         ; preds = %if.end30
  %23 = load i32, ptr %writing, align 4
  %tobool35 = icmp ne i32 %23, 0
  br i1 %tobool35, label %if.then36, label %if.else46

if.then36:                                        ; preds = %if.end34
  %24 = load i32, ptr %blockSize100k, align 4
  %cmp37 = icmp slt i32 %24, 1
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.then36
  store i32 1, ptr %blockSize100k, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.then36
  %25 = load i32, ptr %blockSize100k, align 4
  %cmp41 = icmp sgt i32 %25, 9
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  store i32 9, ptr %blockSize100k, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %26 = load ptr, ptr %fp, align 8
  %27 = load i32, ptr %blockSize100k, align 4
  %28 = load i32, ptr %verbosity, align 4
  %29 = load i32, ptr %workFactor, align 4
  %call45 = call ptr @BZ2_bzWriteOpen(ptr noundef %bzerr, ptr noundef %26, i32 noundef %27, i32 noundef %28, i32 noundef %29)
  store ptr %call45, ptr %bzfp, align 8
  br label %if.end49

if.else46:                                        ; preds = %if.end34
  %30 = load ptr, ptr %fp, align 8
  %31 = load i32, ptr %verbosity, align 4
  %32 = load i32, ptr %smallMode, align 4
  %arraydecay47 = getelementptr inbounds [5000 x i8], ptr %unused, i64 0, i64 0
  %33 = load i32, ptr %nUnused, align 4
  %call48 = call ptr @BZ2_bzReadOpen(ptr noundef %bzerr, ptr noundef %30, i32 noundef %31, i32 noundef %32, ptr noundef %arraydecay47, i32 noundef %33)
  store ptr %call48, ptr %bzfp, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.end44
  %34 = load ptr, ptr %bzfp, align 8
  %cmp50 = icmp eq ptr %34, null
  br i1 %cmp50, label %if.then52, label %if.end60

if.then52:                                        ; preds = %if.end49
  %35 = load ptr, ptr %fp, align 8
  %36 = load ptr, ptr @stdin, align 8
  %cmp53 = icmp ne ptr %35, %36
  br i1 %cmp53, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %if.then52
  %37 = load ptr, ptr %fp, align 8
  %38 = load ptr, ptr @stdout, align 8
  %cmp55 = icmp ne ptr %37, %38
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %land.lhs.true
  %39 = load ptr, ptr %fp, align 8
  %call58 = call i32 @fclose(ptr noundef %39)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true, %if.then52
  store ptr null, ptr %retval, align 8
  br label %return

if.end60:                                         ; preds = %if.end49
  %40 = load ptr, ptr %bzfp, align 8
  store ptr %40, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end60, %if.end59, %if.then33, %if.then
  %41 = load ptr, ptr %retval, align 8
  ret ptr %41
}

declare i32 @fclose(ptr noundef) #1

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #5

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
