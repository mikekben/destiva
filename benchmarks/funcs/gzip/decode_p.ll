; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev = external dso_local global [65536 x i16], align 16
@io_bitbuf = external hidden global i16, align 2
@pt_len = external hidden global [19 x i8], align 16
@pt_table = external hidden global [256 x i16], align 16

; Function Attrs: noinline nounwind uwtable
declare hidden void @fillbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden i32 @decode_p() #0 {
entry:
  %j = alloca i32, align 4, !mymd !6
  %mask = alloca i32, align 4, !mymd !7
  %0 = load i16, ptr @io_bitbuf, align 2, !mymd !8
  %conv = zext i16 %0 to i32, !mymd !9
  %shr = ashr i32 %conv, 8, !mymd !10
  %idxprom = sext i32 %shr to i64, !mymd !11
  %arrayidx = getelementptr inbounds [256 x i16], ptr @pt_table, i64 0, i64 %idxprom, !mymd !12
  %1 = load i16, ptr %arrayidx, align 2, !mymd !13
  %conv1 = zext i16 %1 to i32, !mymd !14
  store i32 %conv1, ptr %j, align 4, !mymd !15
  %2 = load i32, ptr %j, align 4, !mymd !16
  %cmp = icmp uge i32 %2, 14, !mymd !17
  br i1 %cmp, label %if.then, label %if.end14, !mymd !18

if.then:                                          ; preds = %entry
  store i32 128, ptr %mask, align 4, !mymd !19
  br label %do.body, !mymd !20

do.body:                                          ; preds = %do.cond, %if.then
  %3 = load i16, ptr @io_bitbuf, align 2, !mymd !21
  %conv3 = zext i16 %3 to i32, !mymd !22
  %4 = load i32, ptr %mask, align 4, !mymd !23
  %and = and i32 %conv3, %4, !mymd !24
  %tobool = icmp ne i32 %and, 0, !mymd !25
  br i1 %tobool, label %if.then4, label %if.else, !mymd !26

if.then4:                                         ; preds = %do.body
  %5 = load i32, ptr %j, align 4, !mymd !27
  %idxprom5 = zext i32 %5 to i64, !mymd !28
  %arrayidx6 = getelementptr inbounds nuw i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom5, !mymd !29
  %6 = load i16, ptr %arrayidx6, align 2, !mymd !30
  %conv7 = zext i16 %6 to i32, !mymd !31
  store i32 %conv7, ptr %j, align 4, !mymd !32
  br label %if.end, !mymd !33

if.else:                                          ; preds = %do.body
  %7 = load i32, ptr %j, align 4, !mymd !34
  %idxprom8 = zext i32 %7 to i64, !mymd !35
  %arrayidx9 = getelementptr inbounds nuw [65536 x i16], ptr @prev, i64 0, i64 %idxprom8, !mymd !36
  %8 = load i16, ptr %arrayidx9, align 2, !mymd !37
  %conv10 = zext i16 %8 to i32, !mymd !38
  store i32 %conv10, ptr %j, align 4, !mymd !39
  br label %if.end, !mymd !40

if.end:                                           ; preds = %if.else, %if.then4
  %9 = load i32, ptr %mask, align 4, !mymd !41
  %shr11 = lshr i32 %9, 1, !mymd !42
  store i32 %shr11, ptr %mask, align 4, !mymd !43
  br label %do.cond, !mymd !44

do.cond:                                          ; preds = %if.end
  %10 = load i32, ptr %j, align 4, !mymd !45
  %cmp12 = icmp uge i32 %10, 14, !mymd !46
  br i1 %cmp12, label %do.body, label %do.end, !llvm.loop !47, !mymd !49

do.end:                                           ; preds = %do.cond
  br label %if.end14, !mymd !50

if.end14:                                         ; preds = %do.end, %entry
  %11 = load i32, ptr %j, align 4, !mymd !51
  %idxprom15 = zext i32 %11 to i64, !mymd !52
  %arrayidx16 = getelementptr inbounds nuw [19 x i8], ptr @pt_len, i64 0, i64 %idxprom15, !mymd !53
  %12 = load i8, ptr %arrayidx16, align 1, !mymd !54
  %conv17 = zext i8 %12 to i32, !mymd !55
  call void @fillbuf(i32 noundef %conv17), !mymd !56
  %13 = load i32, ptr %j, align 4, !mymd !57
  %cmp18 = icmp ne i32 %13, 0, !mymd !58
  br i1 %cmp18, label %if.then20, label %if.end22, !mymd !59

if.then20:                                        ; preds = %if.end14
  %14 = load i32, ptr %j, align 4, !mymd !60
  %sub = sub i32 %14, 1, !mymd !61
  %shl = shl i32 1, %sub, !mymd !62
  %15 = load i32, ptr %j, align 4, !mymd !63
  %sub21 = sub i32 %15, 1, !mymd !64
  %call = call i32 @getbits(i32 noundef %sub21), !mymd !65
  %add = add i32 %shl, %call, !mymd !66
  store i32 %add, ptr %j, align 4, !mymd !67
  br label %if.end22, !mymd !68

if.end22:                                         ; preds = %if.then20, %if.end14
  %16 = load i32, ptr %j, align 4, !mymd !69
  ret i32 %16, !mymd !70
}

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @getbits(i32 noundef) #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"13366"}
!7 = !{!"13367"}
!8 = !{!"13368"}
!9 = !{!"13369"}
!10 = !{!"13370"}
!11 = !{!"13371"}
!12 = !{!"13372"}
!13 = !{!"13373"}
!14 = !{!"13374"}
!15 = !{!"13375"}
!16 = !{!"13376"}
!17 = !{!"13377"}
!18 = !{!"13378"}
!19 = !{!"13379"}
!20 = !{!"13380"}
!21 = !{!"13381"}
!22 = !{!"13382"}
!23 = !{!"13383"}
!24 = !{!"13384"}
!25 = !{!"13385"}
!26 = !{!"13386"}
!27 = !{!"13387"}
!28 = !{!"13388"}
!29 = !{!"13389"}
!30 = !{!"13390"}
!31 = !{!"13391"}
!32 = !{!"13392"}
!33 = !{!"13393"}
!34 = !{!"13394"}
!35 = !{!"13395"}
!36 = !{!"13396"}
!37 = !{!"13397"}
!38 = !{!"13398"}
!39 = !{!"13399"}
!40 = !{!"13400"}
!41 = !{!"13401"}
!42 = !{!"13402"}
!43 = !{!"13403"}
!44 = !{!"13404"}
!45 = !{!"13405"}
!46 = !{!"13406"}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"13407"}
!50 = !{!"13408"}
!51 = !{!"13409"}
!52 = !{!"13410"}
!53 = !{!"13411"}
!54 = !{!"13412"}
!55 = !{!"13413"}
!56 = !{!"13414"}
!57 = !{!"13415"}
!58 = !{!"13416"}
!59 = !{!"13417"}
!60 = !{!"13418"}
!61 = !{!"13419"}
!62 = !{!"13420"}
!63 = !{!"13421"}
!64 = !{!"13422"}
!65 = !{!"13423"}
!66 = !{!"13424"}
!67 = !{!"13425"}
!68 = !{!"13426"}
!69 = !{!"13427"}
!70 = !{!"13428"}
