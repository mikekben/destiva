; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bi_buf = external hidden global i16, align 2
@bi_valid = external hidden global i32, align 4
@outcnt = external dso_local global i32, align 4
@outbuf = external dso_local global [18432 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @send_bits(i32 noundef %value, i32 noundef %length) #0 {
entry:
  %value.addr = alloca i32, align 4, !mymd !6
  %length.addr = alloca i32, align 4, !mymd !7
  store i32 %value, ptr %value.addr, align 4, !mymd !8
  store i32 %length, ptr %length.addr, align 4, !mymd !9
  %0 = load i32, ptr @bi_valid, align 4, !mymd !10
  %1 = load i32, ptr %length.addr, align 4, !mymd !11
  %sub = sub nsw i32 16, %1, !mymd !12
  %cmp = icmp sgt i32 %0, %sub, !mymd !13
  br i1 %cmp, label %if.then, label %if.else42, !mymd !14

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %value.addr, align 4, !mymd !15
  %3 = load i32, ptr @bi_valid, align 4, !mymd !16
  %shl = shl i32 %2, %3, !mymd !17
  %4 = load i16, ptr @bi_buf, align 2, !mymd !18
  %conv = zext i16 %4 to i32, !mymd !19
  %or = or i32 %conv, %shl, !mymd !20
  %conv1 = trunc i32 %or to i16, !mymd !21
  store i16 %conv1, ptr @bi_buf, align 2, !mymd !22
  %5 = load i32, ptr @outcnt, align 4, !mymd !23
  %cmp2 = icmp ult i32 %5, 16382, !mymd !24
  br i1 %cmp2, label %if.then4, label %if.else, !mymd !25

if.then4:                                         ; preds = %if.then
  %6 = load i16, ptr @bi_buf, align 2, !mymd !26
  %conv5 = zext i16 %6 to i32, !mymd !27
  %and = and i32 %conv5, 255, !mymd !28
  %conv6 = trunc i32 %and to i8, !mymd !29
  %7 = load i32, ptr @outcnt, align 4, !mymd !30
  %inc = add i32 %7, 1, !mymd !31
  store i32 %inc, ptr @outcnt, align 4, !mymd !32
  %idxprom = zext i32 %7 to i64, !mymd !33
  %arrayidx = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom, !mymd !34
  store i8 %conv6, ptr %arrayidx, align 1, !mymd !35
  %8 = load i16, ptr @bi_buf, align 2, !mymd !36
  %conv7 = zext i16 %8 to i32, !mymd !37
  %shr = ashr i32 %conv7, 8, !mymd !38
  %conv8 = trunc i32 %shr to i8, !mymd !39
  %9 = load i32, ptr @outcnt, align 4, !mymd !40
  %inc9 = add i32 %9, 1, !mymd !41
  store i32 %inc9, ptr @outcnt, align 4, !mymd !42
  %idxprom10 = zext i32 %9 to i64, !mymd !43
  %arrayidx11 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom10, !mymd !44
  store i8 %conv8, ptr %arrayidx11, align 1, !mymd !45
  br label %if.end31, !mymd !46

if.else:                                          ; preds = %if.then
  %10 = load i16, ptr @bi_buf, align 2, !mymd !47
  %conv12 = zext i16 %10 to i32, !mymd !48
  %and13 = and i32 %conv12, 255, !mymd !49
  %conv14 = trunc i32 %and13 to i8, !mymd !50
  %11 = load i32, ptr @outcnt, align 4, !mymd !51
  %inc15 = add i32 %11, 1, !mymd !52
  store i32 %inc15, ptr @outcnt, align 4, !mymd !53
  %idxprom16 = zext i32 %11 to i64, !mymd !54
  %arrayidx17 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom16, !mymd !55
  store i8 %conv14, ptr %arrayidx17, align 1, !mymd !56
  %12 = load i32, ptr @outcnt, align 4, !mymd !57
  %cmp18 = icmp eq i32 %12, 16384, !mymd !58
  br i1 %cmp18, label %if.then20, label %if.end, !mymd !59

if.then20:                                        ; preds = %if.else
  call void @flush_outbuf(), !mymd !60
  br label %if.end, !mymd !61

if.end:                                           ; preds = %if.then20, %if.else
  %13 = load i16, ptr @bi_buf, align 2, !mymd !62
  %conv21 = zext i16 %13 to i32, !mymd !63
  %shr22 = ashr i32 %conv21, 8, !mymd !64
  %conv23 = trunc i32 %shr22 to i8, !mymd !65
  %14 = load i32, ptr @outcnt, align 4, !mymd !66
  %inc24 = add i32 %14, 1, !mymd !67
  store i32 %inc24, ptr @outcnt, align 4, !mymd !68
  %idxprom25 = zext i32 %14 to i64, !mymd !69
  %arrayidx26 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom25, !mymd !70
  store i8 %conv23, ptr %arrayidx26, align 1, !mymd !71
  %15 = load i32, ptr @outcnt, align 4, !mymd !72
  %cmp27 = icmp eq i32 %15, 16384, !mymd !73
  br i1 %cmp27, label %if.then29, label %if.end30, !mymd !74

if.then29:                                        ; preds = %if.end
  call void @flush_outbuf(), !mymd !75
  br label %if.end30, !mymd !76

if.end30:                                         ; preds = %if.then29, %if.end
  br label %if.end31, !mymd !77

if.end31:                                         ; preds = %if.end30, %if.then4
  %16 = load i32, ptr %value.addr, align 4, !mymd !78
  %conv32 = trunc i32 %16 to i16, !mymd !79
  %conv33 = zext i16 %conv32 to i32, !mymd !80
  %17 = load i32, ptr @bi_valid, align 4, !mymd !81
  %conv34 = sext i32 %17 to i64, !mymd !82
  %sub35 = sub i64 16, %conv34, !mymd !83
  %sh_prom = trunc i64 %sub35 to i32, !mymd !84
  %shr36 = ashr i32 %conv33, %sh_prom, !mymd !85
  %conv37 = trunc i32 %shr36 to i16, !mymd !86
  store i16 %conv37, ptr @bi_buf, align 2, !mymd !87
  %18 = load i32, ptr %length.addr, align 4, !mymd !88
  %conv38 = sext i32 %18 to i64, !mymd !89
  %sub39 = sub i64 %conv38, 16, !mymd !90
  %19 = load i32, ptr @bi_valid, align 4, !mymd !91
  %conv40 = sext i32 %19 to i64, !mymd !92
  %add = add i64 %conv40, %sub39, !mymd !93
  %conv41 = trunc i64 %add to i32, !mymd !94
  store i32 %conv41, ptr @bi_valid, align 4, !mymd !95
  br label %if.end48, !mymd !96

if.else42:                                        ; preds = %entry
  %20 = load i32, ptr %value.addr, align 4, !mymd !97
  %21 = load i32, ptr @bi_valid, align 4, !mymd !98
  %shl43 = shl i32 %20, %21, !mymd !99
  %22 = load i16, ptr @bi_buf, align 2, !mymd !100
  %conv44 = zext i16 %22 to i32, !mymd !101
  %or45 = or i32 %conv44, %shl43, !mymd !102
  %conv46 = trunc i32 %or45 to i16, !mymd !103
  store i16 %conv46, ptr @bi_buf, align 2, !mymd !104
  %23 = load i32, ptr %length.addr, align 4, !mymd !105
  %24 = load i32, ptr @bi_valid, align 4, !mymd !106
  %add47 = add nsw i32 %24, %23, !mymd !107
  store i32 %add47, ptr @bi_valid, align 4, !mymd !108
  br label %if.end48, !mymd !109

if.end48:                                         ; preds = %if.else42, %if.end31
  ret void, !mymd !110
}

; Function Attrs: noinline nounwind uwtable
declare dso_local void @flush_outbuf() #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"51"}
!7 = !{!"52"}
!8 = !{!"53"}
!9 = !{!"54"}
!10 = !{!"55"}
!11 = !{!"56"}
!12 = !{!"57"}
!13 = !{!"58"}
!14 = !{!"59"}
!15 = !{!"60"}
!16 = !{!"61"}
!17 = !{!"62"}
!18 = !{!"63"}
!19 = !{!"64"}
!20 = !{!"65"}
!21 = !{!"66"}
!22 = !{!"67"}
!23 = !{!"68"}
!24 = !{!"69"}
!25 = !{!"70"}
!26 = !{!"71"}
!27 = !{!"72"}
!28 = !{!"73"}
!29 = !{!"74"}
!30 = !{!"75"}
!31 = !{!"76"}
!32 = !{!"77"}
!33 = !{!"78"}
!34 = !{!"79"}
!35 = !{!"80"}
!36 = !{!"81"}
!37 = !{!"82"}
!38 = !{!"83"}
!39 = !{!"84"}
!40 = !{!"85"}
!41 = !{!"86"}
!42 = !{!"87"}
!43 = !{!"88"}
!44 = !{!"89"}
!45 = !{!"90"}
!46 = !{!"91"}
!47 = !{!"92"}
!48 = !{!"93"}
!49 = !{!"94"}
!50 = !{!"95"}
!51 = !{!"96"}
!52 = !{!"97"}
!53 = !{!"98"}
!54 = !{!"99"}
!55 = !{!"100"}
!56 = !{!"101"}
!57 = !{!"102"}
!58 = !{!"103"}
!59 = !{!"104"}
!60 = !{!"105"}
!61 = !{!"106"}
!62 = !{!"107"}
!63 = !{!"108"}
!64 = !{!"109"}
!65 = !{!"110"}
!66 = !{!"111"}
!67 = !{!"112"}
!68 = !{!"113"}
!69 = !{!"114"}
!70 = !{!"115"}
!71 = !{!"116"}
!72 = !{!"117"}
!73 = !{!"118"}
!74 = !{!"119"}
!75 = !{!"120"}
!76 = !{!"121"}
!77 = !{!"122"}
!78 = !{!"123"}
!79 = !{!"124"}
!80 = !{!"125"}
!81 = !{!"126"}
!82 = !{!"127"}
!83 = !{!"128"}
!84 = !{!"129"}
!85 = !{!"130"}
!86 = !{!"131"}
!87 = !{!"132"}
!88 = !{!"133"}
!89 = !{!"134"}
!90 = !{!"135"}
!91 = !{!"136"}
!92 = !{!"137"}
!93 = !{!"138"}
!94 = !{!"139"}
!95 = !{!"140"}
!96 = !{!"141"}
!97 = !{!"142"}
!98 = !{!"143"}
!99 = !{!"144"}
!100 = !{!"145"}
!101 = !{!"146"}
!102 = !{!"147"}
!103 = !{!"148"}
!104 = !{!"149"}
!105 = !{!"150"}
!106 = !{!"151"}
!107 = !{!"152"}
!108 = !{!"153"}
!109 = !{!"154"}
!110 = !{!"155"}
