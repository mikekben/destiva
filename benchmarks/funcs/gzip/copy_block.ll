; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@outbuf = external dso_local global [18432 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local void @flush_outbuf() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @bi_windup() #0

; Function Attrs: noinline nounwind uwtable
define dso_local void @copy_block(ptr noundef %buf, i32 noundef %len, i32 noundef %header) #0 {
entry:
  %buf.addr = alloca ptr, align 8, !mymd !6
  %len.addr = alloca i32, align 4, !mymd !7
  %header.addr = alloca i32, align 4, !mymd !8
  store ptr %buf, ptr %buf.addr, align 8, !mymd !9
  store i32 %len, ptr %len.addr, align 4, !mymd !10
  store i32 %header, ptr %header.addr, align 4, !mymd !11
  call void @bi_windup(), !mymd !12
  %0 = load i32, ptr %header.addr, align 4, !mymd !13
  %tobool = icmp ne i32 %0, 0, !mymd !14
  br i1 %tobool, label %if.then, label %if.end76, !mymd !15

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @outcnt, align 4, !mymd !16
  %cmp = icmp ult i32 %1, 16382, !mymd !17
  br i1 %cmp, label %if.then1, label %if.else, !mymd !18

if.then1:                                         ; preds = %if.then
  %2 = load i32, ptr %len.addr, align 4, !mymd !19
  %conv = trunc i32 %2 to i16, !mymd !20
  %conv2 = zext i16 %conv to i32, !mymd !21
  %and = and i32 %conv2, 255, !mymd !22
  %conv3 = trunc i32 %and to i8, !mymd !23
  %3 = load i32, ptr @outcnt, align 4, !mymd !24
  %inc = add i32 %3, 1, !mymd !25
  store i32 %inc, ptr @outcnt, align 4, !mymd !26
  %idxprom = zext i32 %3 to i64, !mymd !27
  %arrayidx = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom, !mymd !28
  store i8 %conv3, ptr %arrayidx, align 1, !mymd !29
  %4 = load i32, ptr %len.addr, align 4, !mymd !30
  %conv4 = trunc i32 %4 to i16, !mymd !31
  %conv5 = zext i16 %conv4 to i32, !mymd !32
  %shr = ashr i32 %conv5, 8, !mymd !33
  %conv6 = trunc i32 %shr to i8, !mymd !34
  %5 = load i32, ptr @outcnt, align 4, !mymd !35
  %inc7 = add i32 %5, 1, !mymd !36
  store i32 %inc7, ptr @outcnt, align 4, !mymd !37
  %idxprom8 = zext i32 %5 to i64, !mymd !38
  %arrayidx9 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom8, !mymd !39
  store i8 %conv6, ptr %arrayidx9, align 1, !mymd !40
  br label %if.end31, !mymd !41

if.else:                                          ; preds = %if.then
  %6 = load i32, ptr %len.addr, align 4, !mymd !42
  %conv10 = trunc i32 %6 to i16, !mymd !43
  %conv11 = zext i16 %conv10 to i32, !mymd !44
  %and12 = and i32 %conv11, 255, !mymd !45
  %conv13 = trunc i32 %and12 to i8, !mymd !46
  %7 = load i32, ptr @outcnt, align 4, !mymd !47
  %inc14 = add i32 %7, 1, !mymd !48
  store i32 %inc14, ptr @outcnt, align 4, !mymd !49
  %idxprom15 = zext i32 %7 to i64, !mymd !50
  %arrayidx16 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom15, !mymd !51
  store i8 %conv13, ptr %arrayidx16, align 1, !mymd !52
  %8 = load i32, ptr @outcnt, align 4, !mymd !53
  %cmp17 = icmp eq i32 %8, 16384, !mymd !54
  br i1 %cmp17, label %if.then19, label %if.end, !mymd !55

if.then19:                                        ; preds = %if.else
  call void @flush_outbuf(), !mymd !56
  br label %if.end, !mymd !57

if.end:                                           ; preds = %if.then19, %if.else
  %9 = load i32, ptr %len.addr, align 4, !mymd !58
  %conv20 = trunc i32 %9 to i16, !mymd !59
  %conv21 = zext i16 %conv20 to i32, !mymd !60
  %shr22 = ashr i32 %conv21, 8, !mymd !61
  %conv23 = trunc i32 %shr22 to i8, !mymd !62
  %10 = load i32, ptr @outcnt, align 4, !mymd !63
  %inc24 = add i32 %10, 1, !mymd !64
  store i32 %inc24, ptr @outcnt, align 4, !mymd !65
  %idxprom25 = zext i32 %10 to i64, !mymd !66
  %arrayidx26 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom25, !mymd !67
  store i8 %conv23, ptr %arrayidx26, align 1, !mymd !68
  %11 = load i32, ptr @outcnt, align 4, !mymd !69
  %cmp27 = icmp eq i32 %11, 16384, !mymd !70
  br i1 %cmp27, label %if.then29, label %if.end30, !mymd !71

if.then29:                                        ; preds = %if.end
  call void @flush_outbuf(), !mymd !72
  br label %if.end30, !mymd !73

if.end30:                                         ; preds = %if.then29, %if.end
  br label %if.end31, !mymd !74

if.end31:                                         ; preds = %if.end30, %if.then1
  %12 = load i32, ptr @outcnt, align 4, !mymd !75
  %cmp32 = icmp ult i32 %12, 16382, !mymd !76
  br i1 %cmp32, label %if.then34, label %if.else50, !mymd !77

if.then34:                                        ; preds = %if.end31
  %13 = load i32, ptr %len.addr, align 4, !mymd !78
  %not = xor i32 %13, -1, !mymd !79
  %conv35 = trunc i32 %not to i16, !mymd !80
  %conv36 = zext i16 %conv35 to i32, !mymd !81
  %and37 = and i32 %conv36, 255, !mymd !82
  %conv38 = trunc i32 %and37 to i8, !mymd !83
  %14 = load i32, ptr @outcnt, align 4, !mymd !84
  %inc39 = add i32 %14, 1, !mymd !85
  store i32 %inc39, ptr @outcnt, align 4, !mymd !86
  %idxprom40 = zext i32 %14 to i64, !mymd !87
  %arrayidx41 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom40, !mymd !88
  store i8 %conv38, ptr %arrayidx41, align 1, !mymd !89
  %15 = load i32, ptr %len.addr, align 4, !mymd !90
  %not42 = xor i32 %15, -1, !mymd !91
  %conv43 = trunc i32 %not42 to i16, !mymd !92
  %conv44 = zext i16 %conv43 to i32, !mymd !93
  %shr45 = ashr i32 %conv44, 8, !mymd !94
  %conv46 = trunc i32 %shr45 to i8, !mymd !95
  %16 = load i32, ptr @outcnt, align 4, !mymd !96
  %inc47 = add i32 %16, 1, !mymd !97
  store i32 %inc47, ptr @outcnt, align 4, !mymd !98
  %idxprom48 = zext i32 %16 to i64, !mymd !99
  %arrayidx49 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom48, !mymd !100
  store i8 %conv46, ptr %arrayidx49, align 1, !mymd !101
  br label %if.end75, !mymd !102

if.else50:                                        ; preds = %if.end31
  %17 = load i32, ptr %len.addr, align 4, !mymd !103
  %not51 = xor i32 %17, -1, !mymd !104
  %conv52 = trunc i32 %not51 to i16, !mymd !105
  %conv53 = zext i16 %conv52 to i32, !mymd !106
  %and54 = and i32 %conv53, 255, !mymd !107
  %conv55 = trunc i32 %and54 to i8, !mymd !108
  %18 = load i32, ptr @outcnt, align 4, !mymd !109
  %inc56 = add i32 %18, 1, !mymd !110
  store i32 %inc56, ptr @outcnt, align 4, !mymd !111
  %idxprom57 = zext i32 %18 to i64, !mymd !112
  %arrayidx58 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom57, !mymd !113
  store i8 %conv55, ptr %arrayidx58, align 1, !mymd !114
  %19 = load i32, ptr @outcnt, align 4, !mymd !115
  %cmp59 = icmp eq i32 %19, 16384, !mymd !116
  br i1 %cmp59, label %if.then61, label %if.end62, !mymd !117

if.then61:                                        ; preds = %if.else50
  call void @flush_outbuf(), !mymd !118
  br label %if.end62, !mymd !119

if.end62:                                         ; preds = %if.then61, %if.else50
  %20 = load i32, ptr %len.addr, align 4, !mymd !120
  %not63 = xor i32 %20, -1, !mymd !121
  %conv64 = trunc i32 %not63 to i16, !mymd !122
  %conv65 = zext i16 %conv64 to i32, !mymd !123
  %shr66 = ashr i32 %conv65, 8, !mymd !124
  %conv67 = trunc i32 %shr66 to i8, !mymd !125
  %21 = load i32, ptr @outcnt, align 4, !mymd !126
  %inc68 = add i32 %21, 1, !mymd !127
  store i32 %inc68, ptr @outcnt, align 4, !mymd !128
  %idxprom69 = zext i32 %21 to i64, !mymd !129
  %arrayidx70 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom69, !mymd !130
  store i8 %conv67, ptr %arrayidx70, align 1, !mymd !131
  %22 = load i32, ptr @outcnt, align 4, !mymd !132
  %cmp71 = icmp eq i32 %22, 16384, !mymd !133
  br i1 %cmp71, label %if.then73, label %if.end74, !mymd !134

if.then73:                                        ; preds = %if.end62
  call void @flush_outbuf(), !mymd !135
  br label %if.end74, !mymd !136

if.end74:                                         ; preds = %if.then73, %if.end62
  br label %if.end75, !mymd !137

if.end75:                                         ; preds = %if.end74, %if.then34
  br label %if.end76, !mymd !138

if.end76:                                         ; preds = %if.end75, %entry
  br label %while.cond, !mymd !139

while.cond:                                       ; preds = %if.end84, %if.end76
  %23 = load i32, ptr %len.addr, align 4, !mymd !140
  %dec = add i32 %23, -1, !mymd !141
  store i32 %dec, ptr %len.addr, align 4, !mymd !142
  %tobool77 = icmp ne i32 %23, 0, !mymd !143
  br i1 %tobool77, label %while.body, label %while.end, !mymd !144

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %buf.addr, align 8, !mymd !145
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %24, i32 1, !mymd !146
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !mymd !147
  %25 = load i8, ptr %24, align 1, !mymd !148
  %26 = load i32, ptr @outcnt, align 4, !mymd !149
  %inc78 = add i32 %26, 1, !mymd !150
  store i32 %inc78, ptr @outcnt, align 4, !mymd !151
  %idxprom79 = zext i32 %26 to i64, !mymd !152
  %arrayidx80 = getelementptr inbounds nuw [0 x i8], ptr @outbuf, i64 0, i64 %idxprom79, !mymd !153
  store i8 %25, ptr %arrayidx80, align 1, !mymd !154
  %27 = load i32, ptr @outcnt, align 4, !mymd !155
  %cmp81 = icmp eq i32 %27, 16384, !mymd !156
  br i1 %cmp81, label %if.then83, label %if.end84, !mymd !157

if.then83:                                        ; preds = %while.body
  call void @flush_outbuf(), !mymd !158
  br label %if.end84, !mymd !159

if.end84:                                         ; preds = %if.then83, %while.body
  br label %while.cond, !llvm.loop !160, !mymd !162

while.end:                                        ; preds = %while.cond
  ret void, !mymd !163
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
!6 = !{!"278"}
!7 = !{!"279"}
!8 = !{!"280"}
!9 = !{!"281"}
!10 = !{!"282"}
!11 = !{!"283"}
!12 = !{!"284"}
!13 = !{!"285"}
!14 = !{!"286"}
!15 = !{!"287"}
!16 = !{!"288"}
!17 = !{!"289"}
!18 = !{!"290"}
!19 = !{!"291"}
!20 = !{!"292"}
!21 = !{!"293"}
!22 = !{!"294"}
!23 = !{!"295"}
!24 = !{!"296"}
!25 = !{!"297"}
!26 = !{!"298"}
!27 = !{!"299"}
!28 = !{!"300"}
!29 = !{!"301"}
!30 = !{!"302"}
!31 = !{!"303"}
!32 = !{!"304"}
!33 = !{!"305"}
!34 = !{!"306"}
!35 = !{!"307"}
!36 = !{!"308"}
!37 = !{!"309"}
!38 = !{!"310"}
!39 = !{!"311"}
!40 = !{!"312"}
!41 = !{!"313"}
!42 = !{!"314"}
!43 = !{!"315"}
!44 = !{!"316"}
!45 = !{!"317"}
!46 = !{!"318"}
!47 = !{!"319"}
!48 = !{!"320"}
!49 = !{!"321"}
!50 = !{!"322"}
!51 = !{!"323"}
!52 = !{!"324"}
!53 = !{!"325"}
!54 = !{!"326"}
!55 = !{!"327"}
!56 = !{!"328"}
!57 = !{!"329"}
!58 = !{!"330"}
!59 = !{!"331"}
!60 = !{!"332"}
!61 = !{!"333"}
!62 = !{!"334"}
!63 = !{!"335"}
!64 = !{!"336"}
!65 = !{!"337"}
!66 = !{!"338"}
!67 = !{!"339"}
!68 = !{!"340"}
!69 = !{!"341"}
!70 = !{!"342"}
!71 = !{!"343"}
!72 = !{!"344"}
!73 = !{!"345"}
!74 = !{!"346"}
!75 = !{!"347"}
!76 = !{!"348"}
!77 = !{!"349"}
!78 = !{!"350"}
!79 = !{!"351"}
!80 = !{!"352"}
!81 = !{!"353"}
!82 = !{!"354"}
!83 = !{!"355"}
!84 = !{!"356"}
!85 = !{!"357"}
!86 = !{!"358"}
!87 = !{!"359"}
!88 = !{!"360"}
!89 = !{!"361"}
!90 = !{!"362"}
!91 = !{!"363"}
!92 = !{!"364"}
!93 = !{!"365"}
!94 = !{!"366"}
!95 = !{!"367"}
!96 = !{!"368"}
!97 = !{!"369"}
!98 = !{!"370"}
!99 = !{!"371"}
!100 = !{!"372"}
!101 = !{!"373"}
!102 = !{!"374"}
!103 = !{!"375"}
!104 = !{!"376"}
!105 = !{!"377"}
!106 = !{!"378"}
!107 = !{!"379"}
!108 = !{!"380"}
!109 = !{!"381"}
!110 = !{!"382"}
!111 = !{!"383"}
!112 = !{!"384"}
!113 = !{!"385"}
!114 = !{!"386"}
!115 = !{!"387"}
!116 = !{!"388"}
!117 = !{!"389"}
!118 = !{!"390"}
!119 = !{!"391"}
!120 = !{!"392"}
!121 = !{!"393"}
!122 = !{!"394"}
!123 = !{!"395"}
!124 = !{!"396"}
!125 = !{!"397"}
!126 = !{!"398"}
!127 = !{!"399"}
!128 = !{!"400"}
!129 = !{!"401"}
!130 = !{!"402"}
!131 = !{!"403"}
!132 = !{!"404"}
!133 = !{!"405"}
!134 = !{!"406"}
!135 = !{!"407"}
!136 = !{!"408"}
!137 = !{!"409"}
!138 = !{!"410"}
!139 = !{!"411"}
!140 = !{!"412"}
!141 = !{!"413"}
!142 = !{!"414"}
!143 = !{!"415"}
!144 = !{!"416"}
!145 = !{!"417"}
!146 = !{!"418"}
!147 = !{!"419"}
!148 = !{!"420"}
!149 = !{!"421"}
!150 = !{!"422"}
!151 = !{!"423"}
!152 = !{!"424"}
!153 = !{!"425"}
!154 = !{!"426"}
!155 = !{!"427"}
!156 = !{!"428"}
!157 = !{!"429"}
!158 = !{!"430"}
!159 = !{!"431"}
!160 = distinct !{!160, !161}
!161 = !{!"llvm.loop.mustprogress"}
!162 = !{!"432"}
!163 = !{!"433"}
