; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optind = external dso_local global i32, align 4
@nextchar = external hidden global ptr, align 8
@last_nonopt = external hidden global i32, align 4
@first_nonopt = external hidden global i32, align 4
@ordering = external hidden global i32, align 4
@posixly_correct = external hidden global ptr, align 8
@.str.83 = external hidden unnamed_addr constant [16 x i8], align 1

; Function Attrs: noinline nounwind uwtable
define hidden ptr @_getopt_initialize(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring) #0 {
entry:
  %argc.addr = alloca i32, align 4, !mymd !6
  %argv.addr = alloca ptr, align 8, !mymd !7
  %optstring.addr = alloca ptr, align 8, !mymd !8
  store i32 %argc, ptr %argc.addr, align 4, !mymd !9
  store ptr %argv, ptr %argv.addr, align 8, !mymd !10
  store ptr %optstring, ptr %optstring.addr, align 8, !mymd !11
  %0 = load i32, ptr @optind, align 4, !mymd !12
  store i32 %0, ptr @last_nonopt, align 4, !mymd !13
  store i32 %0, ptr @first_nonopt, align 4, !mymd !14
  store ptr null, ptr @nextchar, align 8, !mymd !15
  %call = call ptr @getenv(ptr noundef @.str.83) #2, !mymd !16
  store ptr %call, ptr @posixly_correct, align 8, !mymd !17
  %1 = load ptr, ptr %optstring.addr, align 8, !mymd !18
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0, !mymd !19
  %2 = load i8, ptr %arrayidx, align 1, !mymd !20
  %conv = sext i8 %2 to i32, !mymd !21
  %cmp = icmp eq i32 %conv, 45, !mymd !22
  br i1 %cmp, label %if.then, label %if.else, !mymd !23

if.then:                                          ; preds = %entry
  store i32 2, ptr @ordering, align 4, !mymd !24
  %3 = load ptr, ptr %optstring.addr, align 8, !mymd !25
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1, !mymd !26
  store ptr %incdec.ptr, ptr %optstring.addr, align 8, !mymd !27
  br label %if.end14, !mymd !28

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %optstring.addr, align 8, !mymd !29
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 0, !mymd !30
  %5 = load i8, ptr %arrayidx2, align 1, !mymd !31
  %conv3 = sext i8 %5 to i32, !mymd !32
  %cmp4 = icmp eq i32 %conv3, 43, !mymd !33
  br i1 %cmp4, label %if.then6, label %if.else8, !mymd !34

if.then6:                                         ; preds = %if.else
  store i32 0, ptr @ordering, align 4, !mymd !35
  %6 = load ptr, ptr %optstring.addr, align 8, !mymd !36
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %6, i32 1, !mymd !37
  store ptr %incdec.ptr7, ptr %optstring.addr, align 8, !mymd !38
  br label %if.end13, !mymd !39

if.else8:                                         ; preds = %if.else
  %7 = load ptr, ptr @posixly_correct, align 8, !mymd !40
  %cmp9 = icmp ne ptr %7, null, !mymd !41
  br i1 %cmp9, label %if.then11, label %if.else12, !mymd !42

if.then11:                                        ; preds = %if.else8
  store i32 0, ptr @ordering, align 4, !mymd !43
  br label %if.end, !mymd !44

if.else12:                                        ; preds = %if.else8
  store i32 1, ptr @ordering, align 4, !mymd !45
  br label %if.end, !mymd !46

if.end:                                           ; preds = %if.else12, %if.then11
  br label %if.end13, !mymd !47

if.end13:                                         ; preds = %if.end, %if.then6
  br label %if.end14, !mymd !48

if.end14:                                         ; preds = %if.end13, %if.then
  %8 = load ptr, ptr %optstring.addr, align 8, !mymd !49
  ret ptr %8, !mymd !50
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"3090"}
!7 = !{!"3091"}
!8 = !{!"3092"}
!9 = !{!"3093"}
!10 = !{!"3094"}
!11 = !{!"3095"}
!12 = !{!"3096"}
!13 = !{!"3097"}
!14 = !{!"3098"}
!15 = !{!"3099"}
!16 = !{!"3100"}
!17 = !{!"3101"}
!18 = !{!"3102"}
!19 = !{!"3103"}
!20 = !{!"3104"}
!21 = !{!"3105"}
!22 = !{!"3106"}
!23 = !{!"3107"}
!24 = !{!"3108"}
!25 = !{!"3109"}
!26 = !{!"3110"}
!27 = !{!"3111"}
!28 = !{!"3112"}
!29 = !{!"3113"}
!30 = !{!"3114"}
!31 = !{!"3115"}
!32 = !{!"3116"}
!33 = !{!"3117"}
!34 = !{!"3118"}
!35 = !{!"3119"}
!36 = !{!"3120"}
!37 = !{!"3121"}
!38 = !{!"3122"}
!39 = !{!"3123"}
!40 = !{!"3124"}
!41 = !{!"3125"}
!42 = !{!"3126"}
!43 = !{!"3127"}
!44 = !{!"3128"}
!45 = !{!"3129"}
!46 = !{!"3130"}
!47 = !{!"3131"}
!48 = !{!"3132"}
!49 = !{!"3133"}
!50 = !{!"3134"}
