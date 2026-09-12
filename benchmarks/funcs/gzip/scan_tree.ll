; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_data = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }

@bl_tree = external hidden global [39 x %struct.ct_data], align 16

; Function Attrs: noinline nounwind uwtable
define hidden void @scan_tree(ptr noundef %tree, i32 noundef %max_code) #0 {
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
  %3 = load ptr, ptr %tree.addr, align 8, !mymd !33
  %4 = load i32, ptr %max_code.addr, align 4, !mymd !34
  %add = add nsw i32 %4, 1, !mymd !35
  %idxprom = sext i32 %add to i64, !mymd !36
  %arrayidx2 = getelementptr inbounds %struct.ct_data, ptr %3, i64 %idxprom, !mymd !37
  %dl3 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx2, i32 0, i32 1, !mymd !38
  store i16 -1, ptr %dl3, align 2, !mymd !39
  store i32 0, ptr %n, align 4, !mymd !40
  br label %for.cond, !mymd !41

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %n, align 4, !mymd !42
  %6 = load i32, ptr %max_code.addr, align 4, !mymd !43
  %cmp4 = icmp sle i32 %5, %6, !mymd !44
  br i1 %cmp4, label %for.body, label %for.end, !mymd !45

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %nextlen, align 4, !mymd !46
  store i32 %7, ptr %curlen, align 4, !mymd !47
  %8 = load ptr, ptr %tree.addr, align 8, !mymd !48
  %9 = load i32, ptr %n, align 4, !mymd !49
  %add6 = add nsw i32 %9, 1, !mymd !50
  %idxprom7 = sext i32 %add6 to i64, !mymd !51
  %arrayidx8 = getelementptr inbounds %struct.ct_data, ptr %8, i64 %idxprom7, !mymd !52
  %dl9 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx8, i32 0, i32 1, !mymd !53
  %10 = load i16, ptr %dl9, align 2, !mymd !54
  %conv10 = zext i16 %10 to i32, !mymd !55
  store i32 %conv10, ptr %nextlen, align 4, !mymd !56
  %11 = load i32, ptr %count, align 4, !mymd !57
  %inc = add nsw i32 %11, 1, !mymd !58
  store i32 %inc, ptr %count, align 4, !mymd !59
  %12 = load i32, ptr %max_count, align 4, !mymd !60
  %cmp11 = icmp slt i32 %inc, %12, !mymd !61
  br i1 %cmp11, label %land.lhs.true, label %if.else, !mymd !62

land.lhs.true:                                    ; preds = %for.body
  %13 = load i32, ptr %curlen, align 4, !mymd !63
  %14 = load i32, ptr %nextlen, align 4, !mymd !64
  %cmp13 = icmp eq i32 %13, %14, !mymd !65
  br i1 %cmp13, label %if.then15, label %if.else, !mymd !66

if.then15:                                        ; preds = %land.lhs.true
  br label %for.inc, !mymd !67

if.else:                                          ; preds = %land.lhs.true, %for.body
  %15 = load i32, ptr %count, align 4, !mymd !68
  %16 = load i32, ptr %min_count, align 4, !mymd !69
  %cmp16 = icmp slt i32 %15, %16, !mymd !70
  br i1 %cmp16, label %if.then18, label %if.else24, !mymd !71

if.then18:                                        ; preds = %if.else
  %17 = load i32, ptr %count, align 4, !mymd !72
  %18 = load i32, ptr %curlen, align 4, !mymd !73
  %idxprom19 = sext i32 %18 to i64, !mymd !74
  %arrayidx20 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom19, !mymd !75
  %fc = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx20, i32 0, i32 0, !mymd !76
  %19 = load i16, ptr %fc, align 4, !mymd !77
  %conv21 = zext i16 %19 to i32, !mymd !78
  %add22 = add nsw i32 %conv21, %17, !mymd !79
  %conv23 = trunc i32 %add22 to i16, !mymd !80
  store i16 %conv23, ptr %fc, align 4, !mymd !81
  br label %if.end46, !mymd !82

if.else24:                                        ; preds = %if.else
  %20 = load i32, ptr %curlen, align 4, !mymd !83
  %cmp25 = icmp ne i32 %20, 0, !mymd !84
  br i1 %cmp25, label %if.then27, label %if.else37, !mymd !85

if.then27:                                        ; preds = %if.else24
  %21 = load i32, ptr %curlen, align 4, !mymd !86
  %22 = load i32, ptr %prevlen, align 4, !mymd !87
  %cmp28 = icmp ne i32 %21, %22, !mymd !88
  br i1 %cmp28, label %if.then30, label %if.end35, !mymd !89

if.then30:                                        ; preds = %if.then27
  %23 = load i32, ptr %curlen, align 4, !mymd !90
  %idxprom31 = sext i32 %23 to i64, !mymd !91
  %arrayidx32 = getelementptr inbounds [39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 %idxprom31, !mymd !92
  %fc33 = getelementptr inbounds nuw %struct.ct_data, ptr %arrayidx32, i32 0, i32 0, !mymd !93
  %24 = load i16, ptr %fc33, align 4, !mymd !94
  %inc34 = add i16 %24, 1, !mymd !95
  store i16 %inc34, ptr %fc33, align 4, !mymd !96
  br label %if.end35, !mymd !97

if.end35:                                         ; preds = %if.then30, %if.then27
  %25 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), align 16, !mymd !98
  %inc36 = add i16 %25, 1, !mymd !99
  store i16 %inc36, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 16), align 16, !mymd !100
  br label %if.end45, !mymd !101

if.else37:                                        ; preds = %if.else24
  %26 = load i32, ptr %count, align 4, !mymd !102
  %cmp38 = icmp sle i32 %26, 10, !mymd !103
  br i1 %cmp38, label %if.then40, label %if.else42, !mymd !104

if.then40:                                        ; preds = %if.else37
  %27 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), align 4, !mymd !105
  %inc41 = add i16 %27, 1, !mymd !106
  store i16 %inc41, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 17), align 4, !mymd !107
  br label %if.end44, !mymd !108

if.else42:                                        ; preds = %if.else37
  %28 = load i16, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), align 8, !mymd !109
  %inc43 = add i16 %28, 1, !mymd !110
  store i16 %inc43, ptr getelementptr inbounds ([39 x %struct.ct_data], ptr @bl_tree, i64 0, i64 18), align 8, !mymd !111
  br label %if.end44, !mymd !112

if.end44:                                         ; preds = %if.else42, %if.then40
  br label %if.end45, !mymd !113

if.end45:                                         ; preds = %if.end44, %if.end35
  br label %if.end46, !mymd !114

if.end46:                                         ; preds = %if.end45, %if.then18
  br label %if.end47, !mymd !115

if.end47:                                         ; preds = %if.end46
  store i32 0, ptr %count, align 4, !mymd !116
  %29 = load i32, ptr %curlen, align 4, !mymd !117
  store i32 %29, ptr %prevlen, align 4, !mymd !118
  %30 = load i32, ptr %nextlen, align 4, !mymd !119
  %cmp48 = icmp eq i32 %30, 0, !mymd !120
  br i1 %cmp48, label %if.then50, label %if.else51, !mymd !121

if.then50:                                        ; preds = %if.end47
  store i32 138, ptr %max_count, align 4, !mymd !122
  store i32 3, ptr %min_count, align 4, !mymd !123
  br label %if.end57, !mymd !124

if.else51:                                        ; preds = %if.end47
  %31 = load i32, ptr %curlen, align 4, !mymd !125
  %32 = load i32, ptr %nextlen, align 4, !mymd !126
  %cmp52 = icmp eq i32 %31, %32, !mymd !127
  br i1 %cmp52, label %if.then54, label %if.else55, !mymd !128

if.then54:                                        ; preds = %if.else51
  store i32 6, ptr %max_count, align 4, !mymd !129
  store i32 3, ptr %min_count, align 4, !mymd !130
  br label %if.end56, !mymd !131

if.else55:                                        ; preds = %if.else51
  store i32 7, ptr %max_count, align 4, !mymd !132
  store i32 4, ptr %min_count, align 4, !mymd !133
  br label %if.end56, !mymd !134

if.end56:                                         ; preds = %if.else55, %if.then54
  br label %if.end57, !mymd !135

if.end57:                                         ; preds = %if.end56, %if.then50
  br label %for.inc, !mymd !136

for.inc:                                          ; preds = %if.end57, %if.then15
  %33 = load i32, ptr %n, align 4, !mymd !137
  %inc58 = add nsw i32 %33, 1, !mymd !138
  store i32 %inc58, ptr %n, align 4, !mymd !139
  br label %for.cond, !llvm.loop !140, !mymd !142

for.end:                                          ; preds = %for.cond
  ret void, !mymd !143
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
!6 = !{!"12928"}
!7 = !{!"12929"}
!8 = !{!"12930"}
!9 = !{!"12931"}
!10 = !{!"12932"}
!11 = !{!"12933"}
!12 = !{!"12934"}
!13 = !{!"12935"}
!14 = !{!"12936"}
!15 = !{!"12937"}
!16 = !{!"12938"}
!17 = !{!"12939"}
!18 = !{!"12940"}
!19 = !{!"12941"}
!20 = !{!"12942"}
!21 = !{!"12943"}
!22 = !{!"12944"}
!23 = !{!"12945"}
!24 = !{!"12946"}
!25 = !{!"12947"}
!26 = !{!"12948"}
!27 = !{!"12949"}
!28 = !{!"12950"}
!29 = !{!"12951"}
!30 = !{!"12952"}
!31 = !{!"12953"}
!32 = !{!"12954"}
!33 = !{!"12955"}
!34 = !{!"12956"}
!35 = !{!"12957"}
!36 = !{!"12958"}
!37 = !{!"12959"}
!38 = !{!"12960"}
!39 = !{!"12961"}
!40 = !{!"12962"}
!41 = !{!"12963"}
!42 = !{!"12964"}
!43 = !{!"12965"}
!44 = !{!"12966"}
!45 = !{!"12967"}
!46 = !{!"12968"}
!47 = !{!"12969"}
!48 = !{!"12970"}
!49 = !{!"12971"}
!50 = !{!"12972"}
!51 = !{!"12973"}
!52 = !{!"12974"}
!53 = !{!"12975"}
!54 = !{!"12976"}
!55 = !{!"12977"}
!56 = !{!"12978"}
!57 = !{!"12979"}
!58 = !{!"12980"}
!59 = !{!"12981"}
!60 = !{!"12982"}
!61 = !{!"12983"}
!62 = !{!"12984"}
!63 = !{!"12985"}
!64 = !{!"12986"}
!65 = !{!"12987"}
!66 = !{!"12988"}
!67 = !{!"12989"}
!68 = !{!"12990"}
!69 = !{!"12991"}
!70 = !{!"12992"}
!71 = !{!"12993"}
!72 = !{!"12994"}
!73 = !{!"12995"}
!74 = !{!"12996"}
!75 = !{!"12997"}
!76 = !{!"12998"}
!77 = !{!"12999"}
!78 = !{!"13000"}
!79 = !{!"13001"}
!80 = !{!"13002"}
!81 = !{!"13003"}
!82 = !{!"13004"}
!83 = !{!"13005"}
!84 = !{!"13006"}
!85 = !{!"13007"}
!86 = !{!"13008"}
!87 = !{!"13009"}
!88 = !{!"13010"}
!89 = !{!"13011"}
!90 = !{!"13012"}
!91 = !{!"13013"}
!92 = !{!"13014"}
!93 = !{!"13015"}
!94 = !{!"13016"}
!95 = !{!"13017"}
!96 = !{!"13018"}
!97 = !{!"13019"}
!98 = !{!"13020"}
!99 = !{!"13021"}
!100 = !{!"13022"}
!101 = !{!"13023"}
!102 = !{!"13024"}
!103 = !{!"13025"}
!104 = !{!"13026"}
!105 = !{!"13027"}
!106 = !{!"13028"}
!107 = !{!"13029"}
!108 = !{!"13030"}
!109 = !{!"13031"}
!110 = !{!"13032"}
!111 = !{!"13033"}
!112 = !{!"13034"}
!113 = !{!"13035"}
!114 = !{!"13036"}
!115 = !{!"13037"}
!116 = !{!"13038"}
!117 = !{!"13039"}
!118 = !{!"13040"}
!119 = !{!"13041"}
!120 = !{!"13042"}
!121 = !{!"13043"}
!122 = !{!"13044"}
!123 = !{!"13045"}
!124 = !{!"13046"}
!125 = !{!"13047"}
!126 = !{!"13048"}
!127 = !{!"13049"}
!128 = !{!"13050"}
!129 = !{!"13051"}
!130 = !{!"13052"}
!131 = !{!"13053"}
!132 = !{!"13054"}
!133 = !{!"13055"}
!134 = !{!"13056"}
!135 = !{!"13057"}
!136 = !{!"13058"}
!137 = !{!"13059"}
!138 = !{!"13060"}
!139 = !{!"13061"}
!140 = distinct !{!140, !141}
!141 = !{!"llvm.loop.mustprogress"}
!142 = !{!"13062"}
!143 = !{!"13063"}
