; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optind = external dso_local global i32, align 4
@nextchar = external hidden global ptr, align 8
@last_nonopt = external hidden global i32, align 4
@first_nonopt = external hidden global i32, align 4
@ordering = external hidden global i32, align 4
@posixly_correct = external hidden global ptr, align 8
@.str.223 = external hidden unnamed_addr constant [16 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden ptr @_getopt_initialize(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %optstring.addr = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %optstring, ptr %optstring.addr, align 8
  %0 = load i32, ptr @optind, align 4
  store i32 %0, ptr @last_nonopt, align 4
  store i32 %0, ptr @first_nonopt, align 4
  store ptr null, ptr @nextchar, align 8
  %call = call ptr @getenv(ptr noundef @.str.223) #2
  store ptr %call, ptr @posixly_correct, align 8
  %1 = load ptr, ptr %optstring.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, ptr @ordering, align 4
  %3 = load ptr, ptr %optstring.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %optstring.addr, align 8
  br label %if.end14

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %optstring.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 0
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 43
  br i1 %cmp4, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else
  store i32 0, ptr @ordering, align 4
  %6 = load ptr, ptr %optstring.addr, align 8
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %6, i32 1
  store ptr %incdec.ptr7, ptr %optstring.addr, align 8
  br label %if.end13

if.else8:                                         ; preds = %if.else
  %7 = load ptr, ptr @posixly_correct, align 8
  %cmp9 = icmp ne ptr %7, null
  br i1 %cmp9, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else8
  store i32 0, ptr @ordering, align 4
  br label %if.end

if.else12:                                        ; preds = %if.else8
  store i32 1, ptr @ordering, align 4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then6
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  %8 = load ptr, ptr %optstring.addr, align 8
  ret ptr %8
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
