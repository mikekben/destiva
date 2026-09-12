; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@bl_tree = external hidden global [39 x %struct.ct_data], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local void @send_bits(i32 noundef, i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
define hidden void @send_tree(ptr noundef %tree, i32 noundef %max_code) #0 {
entry:
  %tree.addr = alloca ptr, align 8, !mymd !6
  %max_code.addr = alloca i32, align 4, !mymd !7
  %n = alloca i32, align 4, !mymd !8
  %prevlen = alloca i32, align 4, !mymd !9
  %curlen = alloca i32, align 4, !mymd !10
  %nextlen = alloca i32, align 4, !mymd !11
  %count = alloca i32, align 4, !mymd !12
  %max_count = alloca i32, align 4, !mymd !13
  %min_count = alloca i32, align 4, !mymd !14
  store ptr %tree, ptr %tree.addr, align 8, !mymd !15
  store i32 %max_code, ptr %max_code.addr, align 4, !mymd !16
  store i32 -1, ptr %prevlen, align 4, !mymd !17
  %0 = load ptr, ptr %tree.addr, align 8, !mymd !18
  %arrayidx = getelementptr inbounds %struct.ct_data, ptr %0, i64 0, !mymd !19
  %dl = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx, i32 0, i32 1, !mymd !20
  %1 = load i16, ptr %dl, align 2, !mymd !21
  %conv = zext i16 %1 to i32, !mymd !22
  store i32 %conv, ptr %nextlen, align 4, !mymd !23
  store i32 0, ptr %count, align 4, !mymd !24
  store i32 7, ptr %max_count, align 4, !mymd !25
  store i32 4, ptr %min_count, align 4, !mymd !26
  %2 = load i32, ptr %nextlen, align 4, !mymd !27
  %cmp = icmp eq i32 %2, 0, !mymd !28
  br i1 %cmp, label %if.then, label %if.end, !mymd !29

if.then:                                          ; preds = %entry
  store i32 138, ptr %max_count, align 4, !mymd !30
  store i32 3, ptr %min_count, align 4, !mymd !31
  br label %if.end, !mymd !32

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %n, align 4, !mymd !33
  br label %for.cond, !mymd !34

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %n, align 4, !mymd !35
  %4 = load i32, ptr %max_code.addr, align 4, !mymd !36
  %cmp2 = icmp sle i32 %3, %4, !mymd !37
  br i1 %cmp2, label %for.body, label %for.end, !mymd !38

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %nextlen, align 4, !mymd !39
  store i32 %5, ptr %curlen, align 4, !mymd !40
  %6 = load ptr, ptr %tree.addr, align 8, !mymd !41
  %7 = load i32, ptr %n, align 4, !mymd !42
  %add = add nsw i32 %7, 1, !mymd !43
  %idxprom = sext i32 %add to i64, !mymd !44
  %arrayidx4 = getelementptr inbounds %struct.ct_data, ptr %6, i64 %idxprom, !mymd !45
  %dl5 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx4, i32 0, i32 1, !mymd !46
  %8 = load i16, ptr %dl5, align 2, !mymd !47
  %conv6 = zext i16 %8 to i32, !mymd !48
  store i32 %conv6, ptr %nextlen, align 4, !mymd !49
  %9 = load i32, ptr %count, align 4, !mymd !50
  %inc = add nsw i32 %9, 1, !mymd !51
  store i32 %inc, ptr %count, align 4, !mymd !52
  %10 = load i32, ptr %max_count, align 4, !mymd !53
  %cmp7 = icmp slt i32 %inc, %10, !mymd !54
  br i1 %cmp7, label %land.lhs.true, label %if.else, !mymd !55

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, ptr %curlen, align 4, !mymd !56
  %12 = load i32, ptr %nextlen, align 4, !mymd !57
  %cmp9 = icmp eq i32 %11, %12, !mymd !58
  br i1 %cmp9, label %if.then11, label %if.else, !mymd !59

if.then11:                                        ; preds = %land.lhs.true
  br label %for.inc, !mymd !60

if.else:                                          ; preds = %land.lhs.true, %for.body
  %13 = load i32, ptr %count, align 4, !mymd !61
  %14 = load i32, ptr %min_count, align 4, !mymd !62
  %cmp12 = icmp slt i32 %13, %14, !mymd !63
  br i1 %cmp12, label %if.then14, label %if.else24, !mymd !64

if.then14:                                        ; preds = %if.else
  br label %do.body, !mymd !65

do.body:                                          ; preds = %do.cond, %if.then14
  %15 = load i32, ptr %curlen, align 4, !mymd !66
  %idxprom15 = sext i32 %15 to i64, !mymd !67
  %arrayidx16 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom15, !mymd !68
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx16, i32 0, i32 0, !mymd !69
  %16 = load i16, ptr %fc, align 4, !mymd !70
  %conv17 = zext i16 %16 to i32, !mymd !71
  %17 = load i32, ptr %curlen, align 4, !mymd !72
  %idxprom18 = sext i32 %17 to i64, !mymd !73
  %arrayidx19 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom18, !mymd !74
  %dl20 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx19, i32 0, i32 1, !mymd !75
  %18 = load i16, ptr %dl20, align 2, !mymd !76
  %conv21 = zext i16 %18 to i32, !mymd !77
  call void @send_bits(i32 noundef %conv17, i32 noundef %conv21), !mymd !78
  br label %do.cond, !mymd !79

do.cond:                                          ; preds = %do.body
  %19 = load i32, ptr %count, align 4, !mymd !80
  %dec = add nsw i32 %19, -1, !mymd !81
  store i32 %dec, ptr %count, align 4, !mymd !82
  %cmp22 = icmp ne i32 %dec, 0, !mymd !83
  br i1 %cmp22, label %do.body, label %do.end, !llvm.loop !84, !mymd !86

do.end:                                           ; preds = %do.cond
  br label %if.end56, !mymd !87

if.else24:                                        ; preds = %if.else
  %20 = load i32, ptr %curlen, align 4, !mymd !88
  %cmp25 = icmp ne i32 %20, 0, !mymd !89
  br i1 %cmp25, label %if.then27, label %if.else43, !mymd !90

if.then27:                                        ; preds = %if.else24
  %21 = load i32, ptr %curlen, align 4, !mymd !91
  %22 = load i32, ptr %prevlen, align 4, !mymd !92
  %cmp28 = icmp ne i32 %21, %22, !mymd !93
  br i1 %cmp28, label %if.then30, label %if.end40, !mymd !94

if.then30:                                        ; preds = %if.then27
  %23 = load i32, ptr %curlen, align 4, !mymd !95
  %idxprom31 = sext i32 %23 to i64, !mymd !96
  %arrayidx32 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom31, !mymd !97
  %fc33 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx32, i32 0, i32 0, !mymd !98
  %24 = load i16, ptr %fc33, align 4, !mymd !99
  %conv34 = zext i16 %24 to i32, !mymd !100
  %25 = load i32, ptr %curlen, align 4, !mymd !101
  %idxprom35 = sext i32 %25 to i64, !mymd !102
  %arrayidx36 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom35, !mymd !103
  %dl37 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx36, i32 0, i32 1, !mymd !104
  %26 = load i16, ptr %dl37, align 2, !mymd !105
  %conv38 = zext i16 %26 to i32, !mymd !106
  call void @send_bits(i32 noundef %conv34, i32 noundef %conv38), !mymd !107
  %27 = load i32, ptr %count, align 4, !mymd !108
  %dec39 = add nsw i32 %27, -1, !mymd !109
  store i32 %dec39, ptr %count, align 4, !mymd !110
  br label %if.end40, !mymd !111

if.end40:                                         ; preds = %if.then30, %if.then27
  %28 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), align 16, !mymd !112
  %conv41 = zext i16 %28 to i32, !mymd !113
  %29 = load i16, ptr getelementptr inbounds nuw (%struct.ct_data, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), i32 0, i32 1), align 2, !mymd !114
  %conv42 = zext i16 %29 to i32, !mymd !115
  call void @send_bits(i32 noundef %conv41, i32 noundef %conv42), !mymd !116
  %30 = load i32, ptr %count, align 4, !mymd !117
  %sub = sub nsw i32 %30, 3, !mymd !118
  call void @send_bits(i32 noundef %sub, i32 noundef 2), !mymd !119
  br label %if.end55, !mymd !120

if.else43:                                        ; preds = %if.else24
  %31 = load i32, ptr %count, align 4, !mymd !121
  %cmp44 = icmp sle i32 %31, 10, !mymd !122
  br i1 %cmp44, label %if.then46, label %if.else50, !mymd !123

if.then46:                                        ; preds = %if.else43
  %32 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), align 4, !mymd !124
  %conv47 = zext i16 %32 to i32, !mymd !125
  %33 = load i16, ptr getelementptr inbounds nuw (%struct.ct_data, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), i32 0, i32 1), align 2, !mymd !126
  %conv48 = zext i16 %33 to i32, !mymd !127
  call void @send_bits(i32 noundef %conv47, i32 noundef %conv48), !mymd !128
  %34 = load i32, ptr %count, align 4, !mymd !129
  %sub49 = sub nsw i32 %34, 3, !mymd !130
  call void @send_bits(i32 noundef %sub49, i32 noundef 3), !mymd !131
  br label %if.end54, !mymd !132

if.else50:                                        ; preds = %if.else43
  %35 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), align 8, !mymd !133
  %conv51 = zext i16 %35 to i32, !mymd !134
  %36 = load i16, ptr getelementptr inbounds nuw (%struct.ct_data, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), i32 0, i32 1), align 2, !mymd !135
  %conv52 = zext i16 %36 to i32, !mymd !136
  call void @send_bits(i32 noundef %conv51, i32 noundef %conv52), !mymd !137
  %37 = load i32, ptr %count, align 4, !mymd !138
  %sub53 = sub nsw i32 %37, 11, !mymd !139
  call void @send_bits(i32 noundef %sub53, i32 noundef 7), !mymd !140
  br label %if.end54, !mymd !141

if.end54:                                         ; preds = %if.else50, %if.then46
  br label %if.end55, !mymd !142

if.end55:                                         ; preds = %if.end54, %if.end40
  br label %if.end56, !mymd !143

if.end56:                                         ; preds = %if.end55, %do.end
  br label %if.end57, !mymd !144

if.end57:                                         ; preds = %if.end56
  store i32 0, ptr %count, align 4, !mymd !145
  %38 = load i32, ptr %curlen, align 4, !mymd !146
  store i32 %38, ptr %prevlen, align 4, !mymd !147
  %39 = load i32, ptr %nextlen, align 4, !mymd !148
  %cmp58 = icmp eq i32 %39, 0, !mymd !149
  br i1 %cmp58, label %if.then60, label %if.else61, !mymd !150

if.then60:                                        ; preds = %if.end57
  store i32 138, ptr %max_count, align 4, !mymd !151
  store i32 3, ptr %min_count, align 4, !mymd !152
  br label %if.end67, !mymd !153

if.else61:                                        ; preds = %if.end57
  %40 = load i32, ptr %curlen, align 4, !mymd !154
  %41 = load i32, ptr %nextlen, align 4, !mymd !155
  %cmp62 = icmp eq i32 %40, %41, !mymd !156
  br i1 %cmp62, label %if.then64, label %if.else65, !mymd !157

if.then64:                                        ; preds = %if.else61
  store i32 6, ptr %max_count, align 4, !mymd !158
  store i32 3, ptr %min_count, align 4, !mymd !159
  br label %if.end66, !mymd !160

if.else65:                                        ; preds = %if.else61
  store i32 7, ptr %max_count, align 4, !mymd !161
  store i32 4, ptr %min_count, align 4, !mymd !162
  br label %if.end66, !mymd !163

if.end66:                                         ; preds = %if.else65, %if.then64
  br label %if.end67, !mymd !164

if.end67:                                         ; preds = %if.end66, %if.then60
  br label %for.inc, !mymd !165

for.inc:                                          ; preds = %if.end67, %if.then11
  %42 = load i32, ptr %n, align 4, !mymd !166
  %inc68 = add nsw i32 %42, 1, !mymd !167
  store i32 %inc68, ptr %n, align 4, !mymd !168
  br label %for.cond, !llvm.loop !169, !mymd !170

for.end:                                          ; preds = %for.cond
  ret void, !mymd !171
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
!6 = !{!"13064"}
!7 = !{!"13065"}
!8 = !{!"13066"}
!9 = !{!"13067"}
!10 = !{!"13068"}
!11 = !{!"13069"}
!12 = !{!"13070"}
!13 = !{!"13071"}
!14 = !{!"13072"}
!15 = !{!"13073"}
!16 = !{!"13074"}
!17 = !{!"13075"}
!18 = !{!"13076"}
!19 = !{!"13077"}
!20 = !{!"13078"}
!21 = !{!"13079"}
!22 = !{!"13080"}
!23 = !{!"13081"}
!24 = !{!"13082"}
!25 = !{!"13083"}
!26 = !{!"13084"}
!27 = !{!"13085"}
!28 = !{!"13086"}
!29 = !{!"13087"}
!30 = !{!"13088"}
!31 = !{!"13089"}
!32 = !{!"13090"}
!33 = !{!"13091"}
!34 = !{!"13092"}
!35 = !{!"13093"}
!36 = !{!"13094"}
!37 = !{!"13095"}
!38 = !{!"13096"}
!39 = !{!"13097"}
!40 = !{!"13098"}
!41 = !{!"13099"}
!42 = !{!"13100"}
!43 = !{!"13101"}
!44 = !{!"13102"}
!45 = !{!"13103"}
!46 = !{!"13104"}
!47 = !{!"13105"}
!48 = !{!"13106"}
!49 = !{!"13107"}
!50 = !{!"13108"}
!51 = !{!"13109"}
!52 = !{!"13110"}
!53 = !{!"13111"}
!54 = !{!"13112"}
!55 = !{!"13113"}
!56 = !{!"13114"}
!57 = !{!"13115"}
!58 = !{!"13116"}
!59 = !{!"13117"}
!60 = !{!"13118"}
!61 = !{!"13119"}
!62 = !{!"13120"}
!63 = !{!"13121"}
!64 = !{!"13122"}
!65 = !{!"13123"}
!66 = !{!"13124"}
!67 = !{!"13125"}
!68 = !{!"13126"}
!69 = !{!"13127"}
!70 = !{!"13128"}
!71 = !{!"13129"}
!72 = !{!"13130"}
!73 = !{!"13131"}
!74 = !{!"13132"}
!75 = !{!"13133"}
!76 = !{!"13134"}
!77 = !{!"13135"}
!78 = !{!"13136"}
!79 = !{!"13137"}
!80 = !{!"13138"}
!81 = !{!"13139"}
!82 = !{!"13140"}
!83 = !{!"13141"}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"13142"}
!87 = !{!"13143"}
!88 = !{!"13144"}
!89 = !{!"13145"}
!90 = !{!"13146"}
!91 = !{!"13147"}
!92 = !{!"13148"}
!93 = !{!"13149"}
!94 = !{!"13150"}
!95 = !{!"13151"}
!96 = !{!"13152"}
!97 = !{!"13153"}
!98 = !{!"13154"}
!99 = !{!"13155"}
!100 = !{!"13156"}
!101 = !{!"13157"}
!102 = !{!"13158"}
!103 = !{!"13159"}
!104 = !{!"13160"}
!105 = !{!"13161"}
!106 = !{!"13162"}
!107 = !{!"13163"}
!108 = !{!"13164"}
!109 = !{!"13165"}
!110 = !{!"13166"}
!111 = !{!"13167"}
!112 = !{!"13168"}
!113 = !{!"13169"}
!114 = !{!"13170"}
!115 = !{!"13171"}
!116 = !{!"13172"}
!117 = !{!"13173"}
!118 = !{!"13174"}
!119 = !{!"13175"}
!120 = !{!"13176"}
!121 = !{!"13177"}
!122 = !{!"13178"}
!123 = !{!"13179"}
!124 = !{!"13180"}
!125 = !{!"13181"}
!126 = !{!"13182"}
!127 = !{!"13183"}
!128 = !{!"13184"}
!129 = !{!"13185"}
!130 = !{!"13186"}
!131 = !{!"13187"}
!132 = !{!"13188"}
!133 = !{!"13189"}
!134 = !{!"13190"}
!135 = !{!"13191"}
!136 = !{!"13192"}
!137 = !{!"13193"}
!138 = !{!"13194"}
!139 = !{!"13195"}
!140 = !{!"13196"}
!141 = !{!"13197"}
!142 = !{!"13198"}
!143 = !{!"13199"}
!144 = !{!"13200"}
!145 = !{!"13201"}
!146 = !{!"13202"}
!147 = !{!"13203"}
!148 = !{!"13204"}
!149 = !{!"13205"}
!150 = !{!"13206"}
!151 = !{!"13207"}
!152 = !{!"13208"}
!153 = !{!"13209"}
!154 = !{!"13210"}
!155 = !{!"13211"}
!156 = !{!"13212"}
!157 = !{!"13213"}
!158 = !{!"13214"}
!159 = !{!"13215"}
!160 = !{!"13216"}
!161 = !{!"13217"}
!162 = !{!"13218"}
!163 = !{!"13219"}
!164 = !{!"13220"}
!165 = !{!"13221"}
!166 = !{!"13222"}
!167 = !{!"13223"}
!168 = !{!"13224"}
!169 = distinct !{!169, !85}
!170 = !{!"13225"}
!171 = !{!"13226"}
