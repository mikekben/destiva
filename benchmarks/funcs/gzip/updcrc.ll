; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@updcrc.crc = external hidden global i64, align 8
@crc_32_tab = external dso_local global [256 x i64], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @updcrc(ptr noundef %s, i32 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8, !mymd !6
  %n.addr = alloca i32, align 4, !mymd !7
  %c = alloca i64, align 8, !mymd !8
  store ptr %s, ptr %s.addr, align 8, !mymd !9
  store i32 %n, ptr %n.addr, align 4, !mymd !10
  %0 = load ptr, ptr %s.addr, align 8, !mymd !11
  %cmp = icmp eq ptr %0, null, !mymd !12
  br i1 %cmp, label %if.then, label %if.else, !mymd !13

if.then:                                          ; preds = %entry
  store i64 4294967295, ptr %c, align 8, !mymd !14
  br label %if.end5, !mymd !15

if.else:                                          ; preds = %entry
  %1 = load i64, ptr @updcrc.crc, align 8, !mymd !16
  store i64 %1, ptr %c, align 8, !mymd !17
  %2 = load i32, ptr %n.addr, align 4, !mymd !18
  %tobool = icmp ne i32 %2, 0, !mymd !19
  br i1 %tobool, label %if.then1, label %if.end, !mymd !20

if.then1:                                         ; preds = %if.else
  br label %do.body, !mymd !21

do.body:                                          ; preds = %do.cond, %if.then1
  %3 = load i64, ptr %c, align 8, !mymd !22
  %conv = trunc i64 %3 to i32, !mymd !23
  %4 = load ptr, ptr %s.addr, align 8, !mymd !24
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %4, i32 1, !mymd !25
  store ptr %incdec.ptr, ptr %s.addr, align 8, !mymd !26
  %5 = load i8, ptr %4, align 1, !mymd !27
  %conv2 = zext i8 %5 to i32, !mymd !28
  %xor = xor i32 %conv, %conv2, !mymd !29
  %and = and i32 %xor, 255, !mymd !30
  %idxprom = sext i32 %and to i64, !mymd !31
  %arrayidx = getelementptr inbounds [0 x i64], ptr @crc_32_tab, i64 0, i64 %idxprom, !mymd !32
  %6 = load i64, ptr %arrayidx, align 8, !mymd !33
  %7 = load i64, ptr %c, align 8, !mymd !34
  %shr = lshr i64 %7, 8, !mymd !35
  %xor3 = xor i64 %6, %shr, !mymd !36
  store i64 %xor3, ptr %c, align 8, !mymd !37
  br label %do.cond, !mymd !38

do.cond:                                          ; preds = %do.body
  %8 = load i32, ptr %n.addr, align 4, !mymd !39
  %dec = add i32 %8, -1, !mymd !40
  store i32 %dec, ptr %n.addr, align 4, !mymd !41
  %tobool4 = icmp ne i32 %dec, 0, !mymd !42
  br i1 %tobool4, label %do.body, label %do.end, !llvm.loop !43, !mymd !45

do.end:                                           ; preds = %do.cond
  br label %if.end, !mymd !46

if.end:                                           ; preds = %do.end, %if.else
  br label %if.end5, !mymd !47

if.end5:                                          ; preds = %if.end, %if.then
  %9 = load i64, ptr %c, align 8, !mymd !48
  store i64 %9, ptr @updcrc.crc, align 8, !mymd !49
  %10 = load i64, ptr %c, align 8, !mymd !50
  %xor6 = xor i64 %10, 4294967295, !mymd !51
  ret i64 %xor6, !mymd !52
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"10285"}
!7 = !{!"10286"}
!8 = !{!"10287"}
!9 = !{!"10288"}
!10 = !{!"10289"}
!11 = !{!"10290"}
!12 = !{!"10291"}
!13 = !{!"10292"}
!14 = !{!"10293"}
!15 = !{!"10294"}
!16 = !{!"10295"}
!17 = !{!"10296"}
!18 = !{!"10297"}
!19 = !{!"10298"}
!20 = !{!"10299"}
!21 = !{!"10300"}
!22 = !{!"10301"}
!23 = !{!"10302"}
!24 = !{!"10303"}
!25 = !{!"10304"}
!26 = !{!"10305"}
!27 = !{!"10306"}
!28 = !{!"10307"}
!29 = !{!"10308"}
!30 = !{!"10309"}
!31 = !{!"10310"}
!32 = !{!"10311"}
!33 = !{!"10312"}
!34 = !{!"10313"}
!35 = !{!"10314"}
!36 = !{!"10315"}
!37 = !{!"10316"}
!38 = !{!"10317"}
!39 = !{!"10318"}
!40 = !{!"10319"}
!41 = !{!"10320"}
!42 = !{!"10321"}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"10322"}
!46 = !{!"10323"}
!47 = !{!"10324"}
!48 = !{!"10325"}
!49 = !{!"10326"}
!50 = !{!"10327"}
!51 = !{!"10328"}
!52 = !{!"10329"}
