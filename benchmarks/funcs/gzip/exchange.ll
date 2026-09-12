; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optind = external dso_local global i32, align 4
@last_nonopt = external hidden global i32, align 4
@first_nonopt = external hidden global i32, align 4

; Function Attrs: noinline nounwind uwtable
define hidden void @exchange(ptr noundef %argv) #0 {
entry:
  %argv.addr = alloca ptr, align 8, !mymd !6
  %bottom = alloca i32, align 4, !mymd !7
  %middle = alloca i32, align 4, !mymd !8
  %top = alloca i32, align 4, !mymd !9
  %tem = alloca ptr, align 8, !mymd !10
  %len = alloca i32, align 4, !mymd !11
  %i = alloca i32, align 4, !mymd !12
  %len20 = alloca i32, align 4, !mymd !13
  %i22 = alloca i32, align 4, !mymd !14
  store ptr %argv, ptr %argv.addr, align 8, !mymd !15
  %0 = load i32, ptr @first_nonopt, align 4, !mymd !16
  store i32 %0, ptr %bottom, align 4, !mymd !17
  %1 = load i32, ptr @last_nonopt, align 4, !mymd !18
  store i32 %1, ptr %middle, align 4, !mymd !19
  %2 = load i32, ptr @optind, align 4, !mymd !20
  store i32 %2, ptr %top, align 4, !mymd !21
  br label %while.cond, !mymd !22

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, ptr %top, align 4, !mymd !23
  %4 = load i32, ptr %middle, align 4, !mymd !24
  %cmp = icmp sgt i32 %3, %4, !mymd !25
  br i1 %cmp, label %land.rhs, label %land.end, !mymd !26

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, ptr %middle, align 4, !mymd !27
  %6 = load i32, ptr %bottom, align 4, !mymd !28
  %cmp1 = icmp sgt i32 %5, %6, !mymd !29
  br label %land.end, !mymd !30

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !mymd !31
  br i1 %7, label %while.body, label %while.end, !mymd !32

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %top, align 4, !mymd !33
  %9 = load i32, ptr %middle, align 4, !mymd !34
  %sub = sub nsw i32 %8, %9, !mymd !35
  %10 = load i32, ptr %middle, align 4, !mymd !36
  %11 = load i32, ptr %bottom, align 4, !mymd !37
  %sub2 = sub nsw i32 %10, %11, !mymd !38
  %cmp3 = icmp sgt i32 %sub, %sub2, !mymd !39
  br i1 %cmp3, label %if.then, label %if.else, !mymd !40

if.then:                                          ; preds = %while.body
  %12 = load i32, ptr %middle, align 4, !mymd !41
  %13 = load i32, ptr %bottom, align 4, !mymd !42
  %sub4 = sub nsw i32 %12, %13, !mymd !43
  store i32 %sub4, ptr %len, align 4, !mymd !44
  store i32 0, ptr %i, align 4, !mymd !45
  br label %for.cond, !mymd !46

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, ptr %i, align 4, !mymd !47
  %15 = load i32, ptr %len, align 4, !mymd !48
  %cmp5 = icmp slt i32 %14, %15, !mymd !49
  br i1 %cmp5, label %for.body, label %for.end, !mymd !50

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %argv.addr, align 8, !mymd !51
  %17 = load i32, ptr %bottom, align 4, !mymd !52
  %18 = load i32, ptr %i, align 4, !mymd !53
  %add = add nsw i32 %17, %18, !mymd !54
  %idxprom = sext i32 %add to i64, !mymd !55
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 %idxprom, !mymd !56
  %19 = load ptr, ptr %arrayidx, align 8, !mymd !57
  store ptr %19, ptr %tem, align 8, !mymd !58
  %20 = load ptr, ptr %argv.addr, align 8, !mymd !59
  %21 = load i32, ptr %top, align 4, !mymd !60
  %22 = load i32, ptr %middle, align 4, !mymd !61
  %23 = load i32, ptr %bottom, align 4, !mymd !62
  %sub6 = sub nsw i32 %22, %23, !mymd !63
  %sub7 = sub nsw i32 %21, %sub6, !mymd !64
  %24 = load i32, ptr %i, align 4, !mymd !65
  %add8 = add nsw i32 %sub7, %24, !mymd !66
  %idxprom9 = sext i32 %add8 to i64, !mymd !67
  %arrayidx10 = getelementptr inbounds ptr, ptr %20, i64 %idxprom9, !mymd !68
  %25 = load ptr, ptr %arrayidx10, align 8, !mymd !69
  %26 = load ptr, ptr %argv.addr, align 8, !mymd !70
  %27 = load i32, ptr %bottom, align 4, !mymd !71
  %28 = load i32, ptr %i, align 4, !mymd !72
  %add11 = add nsw i32 %27, %28, !mymd !73
  %idxprom12 = sext i32 %add11 to i64, !mymd !74
  %arrayidx13 = getelementptr inbounds ptr, ptr %26, i64 %idxprom12, !mymd !75
  store ptr %25, ptr %arrayidx13, align 8, !mymd !76
  %29 = load ptr, ptr %tem, align 8, !mymd !77
  %30 = load ptr, ptr %argv.addr, align 8, !mymd !78
  %31 = load i32, ptr %top, align 4, !mymd !79
  %32 = load i32, ptr %middle, align 4, !mymd !80
  %33 = load i32, ptr %bottom, align 4, !mymd !81
  %sub14 = sub nsw i32 %32, %33, !mymd !82
  %sub15 = sub nsw i32 %31, %sub14, !mymd !83
  %34 = load i32, ptr %i, align 4, !mymd !84
  %add16 = add nsw i32 %sub15, %34, !mymd !85
  %idxprom17 = sext i32 %add16 to i64, !mymd !86
  %arrayidx18 = getelementptr inbounds ptr, ptr %30, i64 %idxprom17, !mymd !87
  store ptr %29, ptr %arrayidx18, align 8, !mymd !88
  br label %for.inc, !mymd !89

for.inc:                                          ; preds = %for.body
  %35 = load i32, ptr %i, align 4, !mymd !90
  %inc = add nsw i32 %35, 1, !mymd !91
  store i32 %inc, ptr %i, align 4, !mymd !92
  br label %for.cond, !llvm.loop !93, !mymd !95

for.end:                                          ; preds = %for.cond
  %36 = load i32, ptr %len, align 4, !mymd !96
  %37 = load i32, ptr %top, align 4, !mymd !97
  %sub19 = sub nsw i32 %37, %36, !mymd !98
  store i32 %sub19, ptr %top, align 4, !mymd !99
  br label %if.end, !mymd !100

if.else:                                          ; preds = %while.body
  %38 = load i32, ptr %top, align 4, !mymd !101
  %39 = load i32, ptr %middle, align 4, !mymd !102
  %sub21 = sub nsw i32 %38, %39, !mymd !103
  store i32 %sub21, ptr %len20, align 4, !mymd !104
  store i32 0, ptr %i22, align 4, !mymd !105
  br label %for.cond23, !mymd !106

for.cond23:                                       ; preds = %for.inc38, %if.else
  %40 = load i32, ptr %i22, align 4, !mymd !107
  %41 = load i32, ptr %len20, align 4, !mymd !108
  %cmp24 = icmp slt i32 %40, %41, !mymd !109
  br i1 %cmp24, label %for.body25, label %for.end40, !mymd !110

for.body25:                                       ; preds = %for.cond23
  %42 = load ptr, ptr %argv.addr, align 8, !mymd !111
  %43 = load i32, ptr %bottom, align 4, !mymd !112
  %44 = load i32, ptr %i22, align 4, !mymd !113
  %add26 = add nsw i32 %43, %44, !mymd !114
  %idxprom27 = sext i32 %add26 to i64, !mymd !115
  %arrayidx28 = getelementptr inbounds ptr, ptr %42, i64 %idxprom27, !mymd !116
  %45 = load ptr, ptr %arrayidx28, align 8, !mymd !117
  store ptr %45, ptr %tem, align 8, !mymd !118
  %46 = load ptr, ptr %argv.addr, align 8, !mymd !119
  %47 = load i32, ptr %middle, align 4, !mymd !120
  %48 = load i32, ptr %i22, align 4, !mymd !121
  %add29 = add nsw i32 %47, %48, !mymd !122
  %idxprom30 = sext i32 %add29 to i64, !mymd !123
  %arrayidx31 = getelementptr inbounds ptr, ptr %46, i64 %idxprom30, !mymd !124
  %49 = load ptr, ptr %arrayidx31, align 8, !mymd !125
  %50 = load ptr, ptr %argv.addr, align 8, !mymd !126
  %51 = load i32, ptr %bottom, align 4, !mymd !127
  %52 = load i32, ptr %i22, align 4, !mymd !128
  %add32 = add nsw i32 %51, %52, !mymd !129
  %idxprom33 = sext i32 %add32 to i64, !mymd !130
  %arrayidx34 = getelementptr inbounds ptr, ptr %50, i64 %idxprom33, !mymd !131
  store ptr %49, ptr %arrayidx34, align 8, !mymd !132
  %53 = load ptr, ptr %tem, align 8, !mymd !133
  %54 = load ptr, ptr %argv.addr, align 8, !mymd !134
  %55 = load i32, ptr %middle, align 4, !mymd !135
  %56 = load i32, ptr %i22, align 4, !mymd !136
  %add35 = add nsw i32 %55, %56, !mymd !137
  %idxprom36 = sext i32 %add35 to i64, !mymd !138
  %arrayidx37 = getelementptr inbounds ptr, ptr %54, i64 %idxprom36, !mymd !139
  store ptr %53, ptr %arrayidx37, align 8, !mymd !140
  br label %for.inc38, !mymd !141

for.inc38:                                        ; preds = %for.body25
  %57 = load i32, ptr %i22, align 4, !mymd !142
  %inc39 = add nsw i32 %57, 1, !mymd !143
  store i32 %inc39, ptr %i22, align 4, !mymd !144
  br label %for.cond23, !llvm.loop !145, !mymd !146

for.end40:                                        ; preds = %for.cond23
  %58 = load i32, ptr %len20, align 4, !mymd !147
  %59 = load i32, ptr %bottom, align 4, !mymd !148
  %add41 = add nsw i32 %59, %58, !mymd !149
  store i32 %add41, ptr %bottom, align 4, !mymd !150
  br label %if.end, !mymd !151

if.end:                                           ; preds = %for.end40, %for.end
  br label %while.cond, !llvm.loop !152, !mymd !153

while.end:                                        ; preds = %land.end
  %60 = load i32, ptr @optind, align 4, !mymd !154
  %61 = load i32, ptr @last_nonopt, align 4, !mymd !155
  %sub42 = sub nsw i32 %60, %61, !mymd !156
  %62 = load i32, ptr @first_nonopt, align 4, !mymd !157
  %add43 = add nsw i32 %62, %sub42, !mymd !158
  store i32 %add43, ptr @first_nonopt, align 4, !mymd !159
  %63 = load i32, ptr @optind, align 4, !mymd !160
  store i32 %63, ptr @last_nonopt, align 4, !mymd !161
  ret void, !mymd !162
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
!6 = !{!"3135"}
!7 = !{!"3136"}
!8 = !{!"3137"}
!9 = !{!"3138"}
!10 = !{!"3139"}
!11 = !{!"3140"}
!12 = !{!"3141"}
!13 = !{!"3142"}
!14 = !{!"3143"}
!15 = !{!"3144"}
!16 = !{!"3145"}
!17 = !{!"3146"}
!18 = !{!"3147"}
!19 = !{!"3148"}
!20 = !{!"3149"}
!21 = !{!"3150"}
!22 = !{!"3151"}
!23 = !{!"3152"}
!24 = !{!"3153"}
!25 = !{!"3154"}
!26 = !{!"3155"}
!27 = !{!"3156"}
!28 = !{!"3157"}
!29 = !{!"3158"}
!30 = !{!"3159"}
!31 = !{!"3160"}
!32 = !{!"3161"}
!33 = !{!"3162"}
!34 = !{!"3163"}
!35 = !{!"3164"}
!36 = !{!"3165"}
!37 = !{!"3166"}
!38 = !{!"3167"}
!39 = !{!"3168"}
!40 = !{!"3169"}
!41 = !{!"3170"}
!42 = !{!"3171"}
!43 = !{!"3172"}
!44 = !{!"3173"}
!45 = !{!"3174"}
!46 = !{!"3175"}
!47 = !{!"3176"}
!48 = !{!"3177"}
!49 = !{!"3178"}
!50 = !{!"3179"}
!51 = !{!"3180"}
!52 = !{!"3181"}
!53 = !{!"3182"}
!54 = !{!"3183"}
!55 = !{!"3184"}
!56 = !{!"3185"}
!57 = !{!"3186"}
!58 = !{!"3187"}
!59 = !{!"3188"}
!60 = !{!"3189"}
!61 = !{!"3190"}
!62 = !{!"3191"}
!63 = !{!"3192"}
!64 = !{!"3193"}
!65 = !{!"3194"}
!66 = !{!"3195"}
!67 = !{!"3196"}
!68 = !{!"3197"}
!69 = !{!"3198"}
!70 = !{!"3199"}
!71 = !{!"3200"}
!72 = !{!"3201"}
!73 = !{!"3202"}
!74 = !{!"3203"}
!75 = !{!"3204"}
!76 = !{!"3205"}
!77 = !{!"3206"}
!78 = !{!"3207"}
!79 = !{!"3208"}
!80 = !{!"3209"}
!81 = !{!"3210"}
!82 = !{!"3211"}
!83 = !{!"3212"}
!84 = !{!"3213"}
!85 = !{!"3214"}
!86 = !{!"3215"}
!87 = !{!"3216"}
!88 = !{!"3217"}
!89 = !{!"3218"}
!90 = !{!"3219"}
!91 = !{!"3220"}
!92 = !{!"3221"}
!93 = distinct !{!93, !94}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"3222"}
!96 = !{!"3223"}
!97 = !{!"3224"}
!98 = !{!"3225"}
!99 = !{!"3226"}
!100 = !{!"3227"}
!101 = !{!"3228"}
!102 = !{!"3229"}
!103 = !{!"3230"}
!104 = !{!"3231"}
!105 = !{!"3232"}
!106 = !{!"3233"}
!107 = !{!"3234"}
!108 = !{!"3235"}
!109 = !{!"3236"}
!110 = !{!"3237"}
!111 = !{!"3238"}
!112 = !{!"3239"}
!113 = !{!"3240"}
!114 = !{!"3241"}
!115 = !{!"3242"}
!116 = !{!"3243"}
!117 = !{!"3244"}
!118 = !{!"3245"}
!119 = !{!"3246"}
!120 = !{!"3247"}
!121 = !{!"3248"}
!122 = !{!"3249"}
!123 = !{!"3250"}
!124 = !{!"3251"}
!125 = !{!"3252"}
!126 = !{!"3253"}
!127 = !{!"3254"}
!128 = !{!"3255"}
!129 = !{!"3256"}
!130 = !{!"3257"}
!131 = !{!"3258"}
!132 = !{!"3259"}
!133 = !{!"3260"}
!134 = !{!"3261"}
!135 = !{!"3262"}
!136 = !{!"3263"}
!137 = !{!"3264"}
!138 = !{!"3265"}
!139 = !{!"3266"}
!140 = !{!"3267"}
!141 = !{!"3268"}
!142 = !{!"3269"}
!143 = !{!"3270"}
!144 = !{!"3271"}
!145 = distinct !{!145, !94}
!146 = !{!"3272"}
!147 = !{!"3273"}
!148 = !{!"3274"}
!149 = !{!"3275"}
!150 = !{!"3276"}
!151 = !{!"3277"}
!152 = distinct !{!152, !94}
!153 = !{!"3278"}
!154 = !{!"3279"}
!155 = !{!"3280"}
!156 = !{!"3281"}
!157 = !{!"3282"}
!158 = !{!"3283"}
!159 = !{!"3284"}
!160 = !{!"3285"}
!161 = !{!"3286"}
!162 = !{!"3287"}
