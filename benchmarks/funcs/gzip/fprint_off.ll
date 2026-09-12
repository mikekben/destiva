; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @fprint_off(ptr noundef %file, i64 noundef %offset, i32 noundef %width) #0 {
entry:
  %file.addr = alloca ptr, align 8, !mymd !6
  %offset.addr = alloca i64, align 8, !mymd !7
  %width.addr = alloca i32, align 4, !mymd !8
  %buf = alloca [64 x i8], align 16, !mymd !9
  %p = alloca ptr, align 8, !mymd !10
  store ptr %file, ptr %file.addr, align 8, !mymd !11
  store i64 %offset, ptr %offset.addr, align 8, !mymd !12
  store i32 %width, ptr %width.addr, align 4, !mymd !13
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0, !mymd !14
  %add.ptr = getelementptr inbounds nuw i8, ptr %arraydecay, i64 64, !mymd !15
  store ptr %add.ptr, ptr %p, align 8, !mymd !16
  %0 = load i64, ptr %offset.addr, align 8, !mymd !17
  %cmp = icmp slt i64 %0, 0, !mymd !18
  br i1 %cmp, label %if.then, label %if.else, !mymd !19

if.then:                                          ; preds = %entry
  br label %do.body, !mymd !20

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load i64, ptr %offset.addr, align 8, !mymd !21
  %rem = srem i64 %1, 10, !mymd !22
  %sub = sub nsw i64 48, %rem, !mymd !23
  %conv = trunc i64 %sub to i8, !mymd !24
  %2 = load ptr, ptr %p, align 8, !mymd !25
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 -1, !mymd !26
  store ptr %incdec.ptr, ptr %p, align 8, !mymd !27
  store i8 %conv, ptr %incdec.ptr, align 1, !mymd !28
  br label %do.cond, !mymd !29

do.cond:                                          ; preds = %do.body
  %3 = load i64, ptr %offset.addr, align 8, !mymd !30
  %div = sdiv i64 %3, 10, !mymd !31
  store i64 %div, ptr %offset.addr, align 8, !mymd !32
  %cmp1 = icmp ne i64 %div, 0, !mymd !33
  br i1 %cmp1, label %do.body, label %do.end, !llvm.loop !34, !mymd !36

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %p, align 8, !mymd !37
  %incdec.ptr3 = getelementptr inbounds i8, ptr %4, i32 -1, !mymd !38
  store ptr %incdec.ptr3, ptr %p, align 8, !mymd !39
  store i8 45, ptr %incdec.ptr3, align 1, !mymd !40
  br label %if.end, !mymd !41

if.else:                                          ; preds = %entry
  br label %do.body4, !mymd !42

do.body4:                                         ; preds = %do.cond8, %if.else
  %5 = load i64, ptr %offset.addr, align 8, !mymd !43
  %rem5 = srem i64 %5, 10, !mymd !44
  %add = add nsw i64 48, %rem5, !mymd !45
  %conv6 = trunc i64 %add to i8, !mymd !46
  %6 = load ptr, ptr %p, align 8, !mymd !47
  %incdec.ptr7 = getelementptr inbounds i8, ptr %6, i32 -1, !mymd !48
  store ptr %incdec.ptr7, ptr %p, align 8, !mymd !49
  store i8 %conv6, ptr %incdec.ptr7, align 1, !mymd !50
  br label %do.cond8, !mymd !51

do.cond8:                                         ; preds = %do.body4
  %7 = load i64, ptr %offset.addr, align 8, !mymd !52
  %div9 = sdiv i64 %7, 10, !mymd !53
  store i64 %div9, ptr %offset.addr, align 8, !mymd !54
  %cmp10 = icmp ne i64 %div9, 0, !mymd !55
  br i1 %cmp10, label %do.body4, label %do.end12, !llvm.loop !56, !mymd !57

do.end12:                                         ; preds = %do.cond8
  br label %if.end, !mymd !58

if.end:                                           ; preds = %do.end12, %do.end
  %arraydecay13 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0, !mymd !59
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %arraydecay13, i64 64, !mymd !60
  %8 = load ptr, ptr %p, align 8, !mymd !61
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr14 to i64, !mymd !62
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !mymd !63
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !mymd !64
  %9 = load i32, ptr %width.addr, align 4, !mymd !65
  %conv15 = sext i32 %9 to i64, !mymd !66
  %sub16 = sub nsw i64 %conv15, %sub.ptr.sub, !mymd !67
  %conv17 = trunc i64 %sub16 to i32, !mymd !68
  store i32 %conv17, ptr %width.addr, align 4, !mymd !69
  br label %while.cond, !mymd !70

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i32, ptr %width.addr, align 4, !mymd !71
  %dec = add nsw i32 %10, -1, !mymd !72
  store i32 %dec, ptr %width.addr, align 4, !mymd !73
  %cmp18 = icmp slt i32 0, %10, !mymd !74
  br i1 %cmp18, label %while.body, label %while.end, !mymd !75

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %file.addr, align 8, !mymd !76
  %call = call i32 @putc(i32 noundef 32, ptr noundef %11), !mymd !77
  br label %while.cond, !llvm.loop !78, !mymd !79

while.end:                                        ; preds = %while.cond
  br label %for.cond, !mymd !80

for.cond:                                         ; preds = %for.inc, %while.end
  %12 = load ptr, ptr %p, align 8, !mymd !81
  %arraydecay20 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0, !mymd !82
  %add.ptr21 = getelementptr inbounds nuw i8, ptr %arraydecay20, i64 64, !mymd !83
  %cmp22 = icmp ult ptr %12, %add.ptr21, !mymd !84
  br i1 %cmp22, label %for.body, label %for.end, !mymd !85

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %p, align 8, !mymd !86
  %14 = load i8, ptr %13, align 1, !mymd !87
  %conv24 = sext i8 %14 to i32, !mymd !88
  %15 = load ptr, ptr %file.addr, align 8, !mymd !89
  %call25 = call i32 @putc(i32 noundef %conv24, ptr noundef %15), !mymd !90
  br label %for.inc, !mymd !91

for.inc:                                          ; preds = %for.body
  %16 = load ptr, ptr %p, align 8, !mymd !92
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %16, i32 1, !mymd !93
  store ptr %incdec.ptr26, ptr %p, align 8, !mymd !94
  br label %for.cond, !llvm.loop !95, !mymd !96

for.end:                                          ; preds = %for.cond
  ret void, !mymd !97
}

declare i32 @putc(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10521"}
!7 = !{!"10522"}
!8 = !{!"10523"}
!9 = !{!"10524"}
!10 = !{!"10525"}
!11 = !{!"10526"}
!12 = !{!"10527"}
!13 = !{!"10528"}
!14 = !{!"10529"}
!15 = !{!"10530"}
!16 = !{!"10531"}
!17 = !{!"10532"}
!18 = !{!"10533"}
!19 = !{!"10534"}
!20 = !{!"10535"}
!21 = !{!"10536"}
!22 = !{!"10537"}
!23 = !{!"10538"}
!24 = !{!"10539"}
!25 = !{!"10540"}
!26 = !{!"10541"}
!27 = !{!"10542"}
!28 = !{!"10543"}
!29 = !{!"10544"}
!30 = !{!"10545"}
!31 = !{!"10546"}
!32 = !{!"10547"}
!33 = !{!"10548"}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"10549"}
!37 = !{!"10550"}
!38 = !{!"10551"}
!39 = !{!"10552"}
!40 = !{!"10553"}
!41 = !{!"10554"}
!42 = !{!"10555"}
!43 = !{!"10556"}
!44 = !{!"10557"}
!45 = !{!"10558"}
!46 = !{!"10559"}
!47 = !{!"10560"}
!48 = !{!"10561"}
!49 = !{!"10562"}
!50 = !{!"10563"}
!51 = !{!"10564"}
!52 = !{!"10565"}
!53 = !{!"10566"}
!54 = !{!"10567"}
!55 = !{!"10568"}
!56 = distinct !{!56, !35}
!57 = !{!"10569"}
!58 = !{!"10570"}
!59 = !{!"10571"}
!60 = !{!"10572"}
!61 = !{!"10573"}
!62 = !{!"10574"}
!63 = !{!"10575"}
!64 = !{!"10576"}
!65 = !{!"10577"}
!66 = !{!"10578"}
!67 = !{!"10579"}
!68 = !{!"10580"}
!69 = !{!"10581"}
!70 = !{!"10582"}
!71 = !{!"10583"}
!72 = !{!"10584"}
!73 = !{!"10585"}
!74 = !{!"10586"}
!75 = !{!"10587"}
!76 = !{!"10588"}
!77 = !{!"10589"}
!78 = distinct !{!78, !35}
!79 = !{!"10590"}
!80 = !{!"10591"}
!81 = !{!"10592"}
!82 = !{!"10593"}
!83 = !{!"10594"}
!84 = !{!"10595"}
!85 = !{!"10596"}
!86 = !{!"10597"}
!87 = !{!"10598"}
!88 = !{!"10599"}
!89 = !{!"10600"}
!90 = !{!"10601"}
!91 = !{!"10602"}
!92 = !{!"10603"}
!93 = !{!"10604"}
!94 = !{!"10605"}
!95 = distinct !{!95, !35}
!96 = !{!"10606"}
!97 = !{!"10607"}
