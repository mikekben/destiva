; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d_buf = external dso_local global [32768 x i16], align 16
@outbuf = external dso_local global [18432 x i8], align 16
@prev = external dso_local global [65536 x i16], align 16
@blocksize = external hidden global i32, align 4
@io_bitbuf = external hidden global i16, align 2

; Function Attrs: noinline nounwind uwtable
declare hidden void @fillbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden i32 @decode_c() #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %j = alloca i32, align 4, !mymd !7
  %mask = alloca i32, align 4, !mymd !8
  %0 = load i32, ptr @blocksize, align 4, !mymd !9
  %cmp = icmp eq i32 %0, 0, !mymd !10
  br i1 %cmp, label %if.then, label %if.end3, !mymd !11

if.then:                                          ; preds = %entry
  %call = call i32 @getbits(i32 noundef 16), !mymd !12
  store i32 %call, ptr @blocksize, align 4, !mymd !13
  %1 = load i32, ptr @blocksize, align 4, !mymd !14
  %cmp1 = icmp eq i32 %1, 0, !mymd !15
  br i1 %cmp1, label %if.then2, label %if.end, !mymd !16

if.then2:                                         ; preds = %if.then
  store i32 510, ptr %retval, align 4, !mymd !17
  br label %return, !mymd !18

if.end:                                           ; preds = %if.then
  call void @read_pt_len(i32 noundef 19, i32 noundef 5, i32 noundef 3), !mymd !19
  call void @read_c_len(), !mymd !20
  call void @read_pt_len(i32 noundef 14, i32 noundef 4, i32 noundef -1), !mymd !21
  br label %if.end3, !mymd !22

if.end3:                                          ; preds = %if.end, %entry
  %2 = load i32, ptr @blocksize, align 4, !mymd !23
  %dec = add i32 %2, -1, !mymd !24
  store i32 %dec, ptr @blocksize, align 4, !mymd !25
  %3 = load i16, ptr @io_bitbuf, align 2, !mymd !26
  %conv = zext i16 %3 to i32, !mymd !27
  %shr = ashr i32 %conv, 4, !mymd !28
  %idxprom = sext i32 %shr to i64, !mymd !29
  %arrayidx = getelementptr inbounds [32768 x i16], ptr @d_buf, i64 0, i64 %idxprom, !mymd !30
  %4 = load i16, ptr %arrayidx, align 2, !mymd !31
  %conv4 = zext i16 %4 to i32, !mymd !32
  store i32 %conv4, ptr %j, align 4, !mymd !33
  %5 = load i32, ptr %j, align 4, !mymd !34
  %cmp5 = icmp uge i32 %5, 510, !mymd !35
  br i1 %cmp5, label %if.then7, label %if.end20, !mymd !36

if.then7:                                         ; preds = %if.end3
  store i32 8, ptr %mask, align 4, !mymd !37
  br label %do.body, !mymd !38

do.body:                                          ; preds = %do.cond, %if.then7
  %6 = load i16, ptr @io_bitbuf, align 2, !mymd !39
  %conv8 = zext i16 %6 to i32, !mymd !40
  %7 = load i32, ptr %mask, align 4, !mymd !41
  %and = and i32 %conv8, %7, !mymd !42
  %tobool = icmp ne i32 %and, 0, !mymd !43
  br i1 %tobool, label %if.then9, label %if.else, !mymd !44

if.then9:                                         ; preds = %do.body
  %8 = load i32, ptr %j, align 4, !mymd !45
  %idxprom10 = zext i32 %8 to i64, !mymd !46
  %arrayidx11 = getelementptr inbounds nuw i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom10, !mymd !47
  %9 = load i16, ptr %arrayidx11, align 2, !mymd !48
  %conv12 = zext i16 %9 to i32, !mymd !49
  store i32 %conv12, ptr %j, align 4, !mymd !50
  br label %if.end16, !mymd !51

if.else:                                          ; preds = %do.body
  %10 = load i32, ptr %j, align 4, !mymd !52
  %idxprom13 = zext i32 %10 to i64, !mymd !53
  %arrayidx14 = getelementptr inbounds nuw [65536 x i16], ptr @prev, i64 0, i64 %idxprom13, !mymd !54
  %11 = load i16, ptr %arrayidx14, align 2, !mymd !55
  %conv15 = zext i16 %11 to i32, !mymd !56
  store i32 %conv15, ptr %j, align 4, !mymd !57
  br label %if.end16, !mymd !58

if.end16:                                         ; preds = %if.else, %if.then9
  %12 = load i32, ptr %mask, align 4, !mymd !59
  %shr17 = lshr i32 %12, 1, !mymd !60
  store i32 %shr17, ptr %mask, align 4, !mymd !61
  br label %do.cond, !mymd !62

do.cond:                                          ; preds = %if.end16
  %13 = load i32, ptr %j, align 4, !mymd !63
  %cmp18 = icmp uge i32 %13, 510, !mymd !64
  br i1 %cmp18, label %do.body, label %do.end, !llvm.loop !65, !mymd !67

do.end:                                           ; preds = %do.cond
  br label %if.end20, !mymd !68

if.end20:                                         ; preds = %do.end, %if.end3
  %14 = load i32, ptr %j, align 4, !mymd !69
  %idxprom21 = zext i32 %14 to i64, !mymd !70
  %arrayidx22 = getelementptr inbounds nuw [18432 x i8], ptr @outbuf, i64 0, i64 %idxprom21, !mymd !71
  %15 = load i8, ptr %arrayidx22, align 1, !mymd !72
  %conv23 = zext i8 %15 to i32, !mymd !73
  call void @fillbuf(i32 noundef %conv23), !mymd !74
  %16 = load i32, ptr %j, align 4, !mymd !75
  store i32 %16, ptr %retval, align 4, !mymd !76
  br label %return, !mymd !77

return:                                           ; preds = %if.end20, %if.then2
  %17 = load i32, ptr %retval, align 4, !mymd !78
  ret i32 %17, !mymd !79
}

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @getbits(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @read_pt_len(i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @read_c_len() #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"13294"}
!7 = !{!"13295"}
!8 = !{!"13296"}
!9 = !{!"13297"}
!10 = !{!"13298"}
!11 = !{!"13299"}
!12 = !{!"13300"}
!13 = !{!"13301"}
!14 = !{!"13302"}
!15 = !{!"13303"}
!16 = !{!"13304"}
!17 = !{!"13305"}
!18 = !{!"13306"}
!19 = !{!"13307"}
!20 = !{!"13308"}
!21 = !{!"13309"}
!22 = !{!"13310"}
!23 = !{!"13311"}
!24 = !{!"13312"}
!25 = !{!"13313"}
!26 = !{!"13314"}
!27 = !{!"13315"}
!28 = !{!"13316"}
!29 = !{!"13317"}
!30 = !{!"13318"}
!31 = !{!"13319"}
!32 = !{!"13320"}
!33 = !{!"13321"}
!34 = !{!"13322"}
!35 = !{!"13323"}
!36 = !{!"13324"}
!37 = !{!"13325"}
!38 = !{!"13326"}
!39 = !{!"13327"}
!40 = !{!"13328"}
!41 = !{!"13329"}
!42 = !{!"13330"}
!43 = !{!"13331"}
!44 = !{!"13332"}
!45 = !{!"13333"}
!46 = !{!"13334"}
!47 = !{!"13335"}
!48 = !{!"13336"}
!49 = !{!"13337"}
!50 = !{!"13338"}
!51 = !{!"13339"}
!52 = !{!"13340"}
!53 = !{!"13341"}
!54 = !{!"13342"}
!55 = !{!"13343"}
!56 = !{!"13344"}
!57 = !{!"13345"}
!58 = !{!"13346"}
!59 = !{!"13347"}
!60 = !{!"13348"}
!61 = !{!"13349"}
!62 = !{!"13350"}
!63 = !{!"13351"}
!64 = !{!"13352"}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"13353"}
!68 = !{!"13354"}
!69 = !{!"13355"}
!70 = !{!"13356"}
!71 = !{!"13357"}
!72 = !{!"13358"}
!73 = !{!"13359"}
!74 = !{!"13360"}
!75 = !{!"13361"}
!76 = !{!"13362"}
!77 = !{!"13363"}
!78 = !{!"13364"}
!79 = !{!"13365"}
