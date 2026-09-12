; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@heap_len = external hidden global i32, align 4
@heap = external hidden global [573 x i32], align 16
@depth = external hidden global [573 x i8], align 16

; Function Attrs: noinline nounwind uwtable
define hidden void @pqdownheap(ptr noundef %tree, i32 noundef %k) #0 {
entry:
  %tree.addr = alloca ptr, align 8, !mymd !6
  %k.addr = alloca i32, align 4, !mymd !7
  %v = alloca i32, align 4, !mymd !8
  %j = alloca i32, align 4, !mymd !9
  store ptr %tree, ptr %tree.addr, align 8, !mymd !10
  store i32 %k, ptr %k.addr, align 4, !mymd !11
  %0 = load i32, ptr %k.addr, align 4, !mymd !12
  %idxprom = sext i32 %0 to i64, !mymd !13
  %arrayidx = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom, !mymd !14
  %1 = load i32, ptr %arrayidx, align 4, !mymd !15
  store i32 %1, ptr %v, align 4, !mymd !16
  %2 = load i32, ptr %k.addr, align 4, !mymd !17
  %shl = shl i32 %2, 1, !mymd !18
  store i32 %shl, ptr %j, align 4, !mymd !19
  br label %while.cond, !mymd !20

while.cond:                                       ; preds = %if.end80, %entry
  %3 = load i32, ptr %j, align 4, !mymd !21
  %4 = load i32, ptr @heap_len, align 4, !mymd !22
  %cmp = icmp sle i32 %3, %4, !mymd !23
  br i1 %cmp, label %while.body, label %while.end, !mymd !24

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %j, align 4, !mymd !25
  %6 = load i32, ptr @heap_len, align 4, !mymd !26
  %cmp1 = icmp slt i32 %5, %6, !mymd !27
  br i1 %cmp1, label %land.lhs.true, label %if.end, !mymd !28

land.lhs.true:                                    ; preds = %while.body
  %7 = load ptr, ptr %tree.addr, align 8, !mymd !29
  %8 = load i32, ptr %j, align 4, !mymd !30
  %add = add nsw i32 %8, 1, !mymd !31
  %idxprom2 = sext i32 %add to i64, !mymd !32
  %arrayidx3 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom2, !mymd !33
  %9 = load i32, ptr %arrayidx3, align 4, !mymd !34
  %idxprom4 = sext i32 %9 to i64, !mymd !35
  %arrayidx5 = getelementptr inbounds %struct.ct_data, ptr %7, i64 %idxprom4, !mymd !36
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx5, i32 0, i32 0, !mymd !37
  %10 = load i16, ptr %fc, align 2, !mymd !38
  %conv = zext i16 %10 to i32, !mymd !39
  %11 = load ptr, ptr %tree.addr, align 8, !mymd !40
  %12 = load i32, ptr %j, align 4, !mymd !41
  %idxprom6 = sext i32 %12 to i64, !mymd !42
  %arrayidx7 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom6, !mymd !43
  %13 = load i32, ptr %arrayidx7, align 4, !mymd !44
  %idxprom8 = sext i32 %13 to i64, !mymd !45
  %arrayidx9 = getelementptr inbounds %struct.ct_data, ptr %11, i64 %idxprom8, !mymd !46
  %fc10 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx9, i32 0, i32 0, !mymd !47
  %14 = load i16, ptr %fc10, align 2, !mymd !48
  %conv11 = zext i16 %14 to i32, !mymd !49
  %cmp12 = icmp slt i32 %conv, %conv11, !mymd !50
  br i1 %cmp12, label %if.then, label %lor.lhs.false, !mymd !51

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load ptr, ptr %tree.addr, align 8, !mymd !52
  %16 = load i32, ptr %j, align 4, !mymd !53
  %add14 = add nsw i32 %16, 1, !mymd !54
  %idxprom15 = sext i32 %add14 to i64, !mymd !55
  %arrayidx16 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom15, !mymd !56
  %17 = load i32, ptr %arrayidx16, align 4, !mymd !57
  %idxprom17 = sext i32 %17 to i64, !mymd !58
  %arrayidx18 = getelementptr inbounds %struct.ct_data, ptr %15, i64 %idxprom17, !mymd !59
  %fc19 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx18, i32 0, i32 0, !mymd !60
  %18 = load i16, ptr %fc19, align 2, !mymd !61
  %conv20 = zext i16 %18 to i32, !mymd !62
  %19 = load ptr, ptr %tree.addr, align 8, !mymd !63
  %20 = load i32, ptr %j, align 4, !mymd !64
  %idxprom21 = sext i32 %20 to i64, !mymd !65
  %arrayidx22 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom21, !mymd !66
  %21 = load i32, ptr %arrayidx22, align 4, !mymd !67
  %idxprom23 = sext i32 %21 to i64, !mymd !68
  %arrayidx24 = getelementptr inbounds %struct.ct_data, ptr %19, i64 %idxprom23, !mymd !69
  %fc25 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx24, i32 0, i32 0, !mymd !70
  %22 = load i16, ptr %fc25, align 2, !mymd !71
  %conv26 = zext i16 %22 to i32, !mymd !72
  %cmp27 = icmp eq i32 %conv20, %conv26, !mymd !73
  br i1 %cmp27, label %land.lhs.true29, label %if.end, !mymd !74

land.lhs.true29:                                  ; preds = %lor.lhs.false
  %23 = load i32, ptr %j, align 4, !mymd !75
  %add30 = add nsw i32 %23, 1, !mymd !76
  %idxprom31 = sext i32 %add30 to i64, !mymd !77
  %arrayidx32 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom31, !mymd !78
  %24 = load i32, ptr %arrayidx32, align 4, !mymd !79
  %idxprom33 = sext i32 %24 to i64, !mymd !80
  %arrayidx34 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %idxprom33, !mymd !81
  %25 = load i8, ptr %arrayidx34, align 1, !mymd !82
  %conv35 = zext i8 %25 to i32, !mymd !83
  %26 = load i32, ptr %j, align 4, !mymd !84
  %idxprom36 = sext i32 %26 to i64, !mymd !85
  %arrayidx37 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom36, !mymd !86
  %27 = load i32, ptr %arrayidx37, align 4, !mymd !87
  %idxprom38 = sext i32 %27 to i64, !mymd !88
  %arrayidx39 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %idxprom38, !mymd !89
  %28 = load i8, ptr %arrayidx39, align 1, !mymd !90
  %conv40 = zext i8 %28 to i32, !mymd !91
  %cmp41 = icmp sle i32 %conv35, %conv40, !mymd !92
  br i1 %cmp41, label %if.then, label %if.end, !mymd !93

if.then:                                          ; preds = %land.lhs.true29, %land.lhs.true
  %29 = load i32, ptr %j, align 4, !mymd !94
  %inc = add nsw i32 %29, 1, !mymd !95
  store i32 %inc, ptr %j, align 4, !mymd !96
  br label %if.end, !mymd !97

if.end:                                           ; preds = %if.then, %land.lhs.true29, %lor.lhs.false, %while.body
  %30 = load ptr, ptr %tree.addr, align 8, !mymd !98
  %31 = load i32, ptr %v, align 4, !mymd !99
  %idxprom43 = sext i32 %31 to i64, !mymd !100
  %arrayidx44 = getelementptr inbounds %struct.ct_data, ptr %30, i64 %idxprom43, !mymd !101
  %fc45 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx44, i32 0, i32 0, !mymd !102
  %32 = load i16, ptr %fc45, align 2, !mymd !103
  %conv46 = zext i16 %32 to i32, !mymd !104
  %33 = load ptr, ptr %tree.addr, align 8, !mymd !105
  %34 = load i32, ptr %j, align 4, !mymd !106
  %idxprom47 = sext i32 %34 to i64, !mymd !107
  %arrayidx48 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom47, !mymd !108
  %35 = load i32, ptr %arrayidx48, align 4, !mymd !109
  %idxprom49 = sext i32 %35 to i64, !mymd !110
  %arrayidx50 = getelementptr inbounds %struct.ct_data, ptr %33, i64 %idxprom49, !mymd !111
  %fc51 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx50, i32 0, i32 0, !mymd !112
  %36 = load i16, ptr %fc51, align 2, !mymd !113
  %conv52 = zext i16 %36 to i32, !mymd !114
  %cmp53 = icmp slt i32 %conv46, %conv52, !mymd !115
  br i1 %cmp53, label %if.then79, label %lor.lhs.false55, !mymd !116

lor.lhs.false55:                                  ; preds = %if.end
  %37 = load ptr, ptr %tree.addr, align 8, !mymd !117
  %38 = load i32, ptr %v, align 4, !mymd !118
  %idxprom56 = sext i32 %38 to i64, !mymd !119
  %arrayidx57 = getelementptr inbounds %struct.ct_data, ptr %37, i64 %idxprom56, !mymd !120
  %fc58 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx57, i32 0, i32 0, !mymd !121
  %39 = load i16, ptr %fc58, align 2, !mymd !122
  %conv59 = zext i16 %39 to i32, !mymd !123
  %40 = load ptr, ptr %tree.addr, align 8, !mymd !124
  %41 = load i32, ptr %j, align 4, !mymd !125
  %idxprom60 = sext i32 %41 to i64, !mymd !126
  %arrayidx61 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom60, !mymd !127
  %42 = load i32, ptr %arrayidx61, align 4, !mymd !128
  %idxprom62 = sext i32 %42 to i64, !mymd !129
  %arrayidx63 = getelementptr inbounds %struct.ct_data, ptr %40, i64 %idxprom62, !mymd !130
  %fc64 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx63, i32 0, i32 0, !mymd !131
  %43 = load i16, ptr %fc64, align 2, !mymd !132
  %conv65 = zext i16 %43 to i32, !mymd !133
  %cmp66 = icmp eq i32 %conv59, %conv65, !mymd !134
  br i1 %cmp66, label %land.lhs.true68, label %if.end80, !mymd !135

land.lhs.true68:                                  ; preds = %lor.lhs.false55
  %44 = load i32, ptr %v, align 4, !mymd !136
  %idxprom69 = sext i32 %44 to i64, !mymd !137
  %arrayidx70 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %idxprom69, !mymd !138
  %45 = load i8, ptr %arrayidx70, align 1, !mymd !139
  %conv71 = zext i8 %45 to i32, !mymd !140
  %46 = load i32, ptr %j, align 4, !mymd !141
  %idxprom72 = sext i32 %46 to i64, !mymd !142
  %arrayidx73 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom72, !mymd !143
  %47 = load i32, ptr %arrayidx73, align 4, !mymd !144
  %idxprom74 = sext i32 %47 to i64, !mymd !145
  %arrayidx75 = getelementptr inbounds [573 x i8], ptr @depth, i64 0, i64 %idxprom74, !mymd !146
  %48 = load i8, ptr %arrayidx75, align 1, !mymd !147
  %conv76 = zext i8 %48 to i32, !mymd !148
  %cmp77 = icmp sle i32 %conv71, %conv76, !mymd !149
  br i1 %cmp77, label %if.then79, label %if.end80, !mymd !150

if.then79:                                        ; preds = %land.lhs.true68, %if.end
  br label %while.end, !mymd !151

if.end80:                                         ; preds = %land.lhs.true68, %lor.lhs.false55
  %49 = load i32, ptr %j, align 4, !mymd !152
  %idxprom81 = sext i32 %49 to i64, !mymd !153
  %arrayidx82 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom81, !mymd !154
  %50 = load i32, ptr %arrayidx82, align 4, !mymd !155
  %51 = load i32, ptr %k.addr, align 4, !mymd !156
  %idxprom83 = sext i32 %51 to i64, !mymd !157
  %arrayidx84 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom83, !mymd !158
  store i32 %50, ptr %arrayidx84, align 4, !mymd !159
  %52 = load i32, ptr %j, align 4, !mymd !160
  store i32 %52, ptr %k.addr, align 4, !mymd !161
  %53 = load i32, ptr %j, align 4, !mymd !162
  %shl85 = shl i32 %53, 1, !mymd !163
  store i32 %shl85, ptr %j, align 4, !mymd !164
  br label %while.cond, !llvm.loop !165, !mymd !167

while.end:                                        ; preds = %if.then79, %while.cond
  %54 = load i32, ptr %v, align 4, !mymd !168
  %55 = load i32, ptr %k.addr, align 4, !mymd !169
  %idxprom86 = sext i32 %55 to i64, !mymd !170
  %arrayidx87 = getelementptr inbounds [573 x i32], ptr @heap, i64 0, i64 %idxprom86, !mymd !171
  store i32 %54, ptr %arrayidx87, align 4, !mymd !172
  ret void, !mymd !173
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
!6 = !{!"12462"}
!7 = !{!"12463"}
!8 = !{!"12464"}
!9 = !{!"12465"}
!10 = !{!"12466"}
!11 = !{!"12467"}
!12 = !{!"12468"}
!13 = !{!"12469"}
!14 = !{!"12470"}
!15 = !{!"12471"}
!16 = !{!"12472"}
!17 = !{!"12473"}
!18 = !{!"12474"}
!19 = !{!"12475"}
!20 = !{!"12476"}
!21 = !{!"12477"}
!22 = !{!"12478"}
!23 = !{!"12479"}
!24 = !{!"12480"}
!25 = !{!"12481"}
!26 = !{!"12482"}
!27 = !{!"12483"}
!28 = !{!"12484"}
!29 = !{!"12485"}
!30 = !{!"12486"}
!31 = !{!"12487"}
!32 = !{!"12488"}
!33 = !{!"12489"}
!34 = !{!"12490"}
!35 = !{!"12491"}
!36 = !{!"12492"}
!37 = !{!"12493"}
!38 = !{!"12494"}
!39 = !{!"12495"}
!40 = !{!"12496"}
!41 = !{!"12497"}
!42 = !{!"12498"}
!43 = !{!"12499"}
!44 = !{!"12500"}
!45 = !{!"12501"}
!46 = !{!"12502"}
!47 = !{!"12503"}
!48 = !{!"12504"}
!49 = !{!"12505"}
!50 = !{!"12506"}
!51 = !{!"12507"}
!52 = !{!"12508"}
!53 = !{!"12509"}
!54 = !{!"12510"}
!55 = !{!"12511"}
!56 = !{!"12512"}
!57 = !{!"12513"}
!58 = !{!"12514"}
!59 = !{!"12515"}
!60 = !{!"12516"}
!61 = !{!"12517"}
!62 = !{!"12518"}
!63 = !{!"12519"}
!64 = !{!"12520"}
!65 = !{!"12521"}
!66 = !{!"12522"}
!67 = !{!"12523"}
!68 = !{!"12524"}
!69 = !{!"12525"}
!70 = !{!"12526"}
!71 = !{!"12527"}
!72 = !{!"12528"}
!73 = !{!"12529"}
!74 = !{!"12530"}
!75 = !{!"12531"}
!76 = !{!"12532"}
!77 = !{!"12533"}
!78 = !{!"12534"}
!79 = !{!"12535"}
!80 = !{!"12536"}
!81 = !{!"12537"}
!82 = !{!"12538"}
!83 = !{!"12539"}
!84 = !{!"12540"}
!85 = !{!"12541"}
!86 = !{!"12542"}
!87 = !{!"12543"}
!88 = !{!"12544"}
!89 = !{!"12545"}
!90 = !{!"12546"}
!91 = !{!"12547"}
!92 = !{!"12548"}
!93 = !{!"12549"}
!94 = !{!"12550"}
!95 = !{!"12551"}
!96 = !{!"12552"}
!97 = !{!"12553"}
!98 = !{!"12554"}
!99 = !{!"12555"}
!100 = !{!"12556"}
!101 = !{!"12557"}
!102 = !{!"12558"}
!103 = !{!"12559"}
!104 = !{!"12560"}
!105 = !{!"12561"}
!106 = !{!"12562"}
!107 = !{!"12563"}
!108 = !{!"12564"}
!109 = !{!"12565"}
!110 = !{!"12566"}
!111 = !{!"12567"}
!112 = !{!"12568"}
!113 = !{!"12569"}
!114 = !{!"12570"}
!115 = !{!"12571"}
!116 = !{!"12572"}
!117 = !{!"12573"}
!118 = !{!"12574"}
!119 = !{!"12575"}
!120 = !{!"12576"}
!121 = !{!"12577"}
!122 = !{!"12578"}
!123 = !{!"12579"}
!124 = !{!"12580"}
!125 = !{!"12581"}
!126 = !{!"12582"}
!127 = !{!"12583"}
!128 = !{!"12584"}
!129 = !{!"12585"}
!130 = !{!"12586"}
!131 = !{!"12587"}
!132 = !{!"12588"}
!133 = !{!"12589"}
!134 = !{!"12590"}
!135 = !{!"12591"}
!136 = !{!"12592"}
!137 = !{!"12593"}
!138 = !{!"12594"}
!139 = !{!"12595"}
!140 = !{!"12596"}
!141 = !{!"12597"}
!142 = !{!"12598"}
!143 = !{!"12599"}
!144 = !{!"12600"}
!145 = !{!"12601"}
!146 = !{!"12602"}
!147 = !{!"12603"}
!148 = !{!"12604"}
!149 = !{!"12605"}
!150 = !{!"12606"}
!151 = !{!"12607"}
!152 = !{!"12608"}
!153 = !{!"12609"}
!154 = !{!"12610"}
!155 = !{!"12611"}
!156 = !{!"12612"}
!157 = !{!"12613"}
!158 = !{!"12614"}
!159 = !{!"12615"}
!160 = !{!"12616"}
!161 = !{!"12617"}
!162 = !{!"12618"}
!163 = !{!"12619"}
!164 = !{!"12620"}
!165 = distinct !{!165, !166}
!166 = !{!"llvm.loop.mustprogress"}
!167 = !{!"12621"}
!168 = !{!"12622"}
!169 = !{!"12623"}
!170 = !{!"12624"}
!171 = !{!"12625"}
!172 = !{!"12626"}
!173 = !{!"12627"}
