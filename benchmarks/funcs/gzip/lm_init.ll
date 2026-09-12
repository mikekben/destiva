; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i16, i16, i16, i16 }

@read_buf = external dso_local global ptr, align 8
@.str = external hidden unnamed_addr constant [15 x i8], align 1
@compr_level = external hidden global i32, align 4
@rsync_chunk_end = external hidden global i64, align 8
@rsync_sum = external hidden global i64, align 8
@configuration_table = external hidden global [10 x %struct.config], align 16
@max_lazy_match = external hidden global i32, align 4
@good_match = external dso_local global i32, align 4
@nice_match = external dso_local global i32, align 4
@max_chain_length = external dso_local global i32, align 4
@strstart = external dso_local global i32, align 4
@block_start = external dso_local global i64, align 8
@lookahead = external hidden global i32, align 4
@eofile = external hidden global i32, align 4
@ins_h = external hidden global i32, align 4
@window = external dso_local global [65536 x i8], align 16
@prev = external dso_local global [65536 x i16], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @lm_init(i32 noundef %pack_level, ptr noundef %flags) #0 {
entry:
  %pack_level.addr = alloca i32, align 4, !mymd !6
  %flags.addr = alloca ptr, align 8, !mymd !7
  %j = alloca i32, align 4, !mymd !8
  store i32 %pack_level, ptr %pack_level.addr, align 4, !mymd !9
  store ptr %flags, ptr %flags.addr, align 8, !mymd !10
  %0 = load i32, ptr %pack_level.addr, align 4, !mymd !11
  %cmp = icmp slt i32 %0, 1, !mymd !12
  br i1 %cmp, label %if.then, label %lor.lhs.false, !mymd !13

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %pack_level.addr, align 4, !mymd !14
  %cmp1 = icmp sgt i32 %1, 9, !mymd !15
  br i1 %cmp1, label %if.then, label %if.end, !mymd !16

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @error(ptr noundef @.str), !mymd !17
  br label %if.end, !mymd !18

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %2 = load i32, ptr %pack_level.addr, align 4, !mymd !19
  store i32 %2, ptr @compr_level, align 4, !mymd !20
  call void @llvm.memset.p0.i64(ptr align 2 getelementptr inbounds (i16, ptr @prev, i64 32768), i8 0, i64 65536, i1 false), !mymd !21
  store i64 4294967295, ptr @rsync_chunk_end, align 8, !mymd !22
  store i64 0, ptr @rsync_sum, align 8, !mymd !23
  %3 = load i32, ptr %pack_level.addr, align 4, !mymd !24
  %idxprom = sext i32 %3 to i64, !mymd !25
  %arrayidx = getelementptr inbounds [10 x %struct.config], ptr @configuration_table, i64 0, i64 %idxprom, !mymd !26
  %max_lazy = getelementptr inbounds nuw %struct.config, ptr %arrayidx, i32 0, i32 1, !mymd !27
  %4 = load i16, ptr %max_lazy, align 2, !mymd !28
  %conv = zext i16 %4 to i32, !mymd !29
  store i32 %conv, ptr @max_lazy_match, align 4, !mymd !30
  %5 = load i32, ptr %pack_level.addr, align 4, !mymd !31
  %idxprom2 = sext i32 %5 to i64, !mymd !32
  %arrayidx3 = getelementptr inbounds [10 x %struct.config], ptr @configuration_table, i64 0, i64 %idxprom2, !mymd !33
  %good_length = getelementptr inbounds nuw %struct.config, ptr %arrayidx3, i32 0, i32 0, !mymd !34
  %6 = load i16, ptr %good_length, align 8, !mymd !35
  %conv4 = zext i16 %6 to i32, !mymd !36
  store i32 %conv4, ptr @good_match, align 4, !mymd !37
  %7 = load i32, ptr %pack_level.addr, align 4, !mymd !38
  %idxprom5 = sext i32 %7 to i64, !mymd !39
  %arrayidx6 = getelementptr inbounds [10 x %struct.config], ptr @configuration_table, i64 0, i64 %idxprom5, !mymd !40
  %nice_length = getelementptr inbounds nuw %struct.config, ptr %arrayidx6, i32 0, i32 2, !mymd !41
  %8 = load i16, ptr %nice_length, align 4, !mymd !42
  %conv7 = zext i16 %8 to i32, !mymd !43
  store i32 %conv7, ptr @nice_match, align 4, !mymd !44
  %9 = load i32, ptr %pack_level.addr, align 4, !mymd !45
  %idxprom8 = sext i32 %9 to i64, !mymd !46
  %arrayidx9 = getelementptr inbounds [10 x %struct.config], ptr @configuration_table, i64 0, i64 %idxprom8, !mymd !47
  %max_chain = getelementptr inbounds nuw %struct.config, ptr %arrayidx9, i32 0, i32 3, !mymd !48
  %10 = load i16, ptr %max_chain, align 2, !mymd !49
  %conv10 = zext i16 %10 to i32, !mymd !50
  store i32 %conv10, ptr @max_chain_length, align 4, !mymd !51
  %11 = load i32, ptr %pack_level.addr, align 4, !mymd !52
  %cmp11 = icmp eq i32 %11, 1, !mymd !53
  br i1 %cmp11, label %if.then13, label %if.else, !mymd !54

if.then13:                                        ; preds = %if.end
  %12 = load ptr, ptr %flags.addr, align 8, !mymd !55
  %13 = load i16, ptr %12, align 2, !mymd !56
  %conv14 = zext i16 %13 to i32, !mymd !57
  %or = or i32 %conv14, 4, !mymd !58
  %conv15 = trunc i32 %or to i16, !mymd !59
  store i16 %conv15, ptr %12, align 2, !mymd !60
  br label %if.end23, !mymd !61

if.else:                                          ; preds = %if.end
  %14 = load i32, ptr %pack_level.addr, align 4, !mymd !62
  %cmp16 = icmp eq i32 %14, 9, !mymd !63
  br i1 %cmp16, label %if.then18, label %if.end22, !mymd !64

if.then18:                                        ; preds = %if.else
  %15 = load ptr, ptr %flags.addr, align 8, !mymd !65
  %16 = load i16, ptr %15, align 2, !mymd !66
  %conv19 = zext i16 %16 to i32, !mymd !67
  %or20 = or i32 %conv19, 2, !mymd !68
  %conv21 = trunc i32 %or20 to i16, !mymd !69
  store i16 %conv21, ptr %15, align 2, !mymd !70
  br label %if.end22, !mymd !71

if.end22:                                         ; preds = %if.then18, %if.else
  br label %if.end23, !mymd !72

if.end23:                                         ; preds = %if.end22, %if.then13
  store i32 0, ptr @strstart, align 4, !mymd !73
  store i64 0, ptr @block_start, align 8, !mymd !74
  %17 = load ptr, ptr @read_buf, align 8, !mymd !75
  %call = call i32 %17(ptr noundef @window, i32 noundef 65536), !mymd !76
  store i32 %call, ptr @lookahead, align 4, !mymd !77
  %18 = load i32, ptr @lookahead, align 4, !mymd !78
  %cmp24 = icmp eq i32 %18, 0, !mymd !79
  br i1 %cmp24, label %if.then29, label %lor.lhs.false26, !mymd !80

lor.lhs.false26:                                  ; preds = %if.end23
  %19 = load i32, ptr @lookahead, align 4, !mymd !81
  %cmp27 = icmp eq i32 %19, -1, !mymd !82
  br i1 %cmp27, label %if.then29, label %if.end30, !mymd !83

if.then29:                                        ; preds = %lor.lhs.false26, %if.end23
  store i32 1, ptr @eofile, align 4, !mymd !84
  store i32 0, ptr @lookahead, align 4, !mymd !85
  br label %for.end, !mymd !86

if.end30:                                         ; preds = %lor.lhs.false26
  store i32 0, ptr @eofile, align 4, !mymd !87
  br label %while.cond, !mymd !88

while.cond:                                       ; preds = %while.body, %if.end30
  %20 = load i32, ptr @lookahead, align 4, !mymd !89
  %cmp31 = icmp ult i32 %20, 262, !mymd !90
  br i1 %cmp31, label %land.rhs, label %land.end, !mymd !91

land.rhs:                                         ; preds = %while.cond
  %21 = load i32, ptr @eofile, align 4, !mymd !92
  %tobool = icmp ne i32 %21, 0, !mymd !93
  %lnot = xor i1 %tobool, true, !mymd !94
  br label %land.end, !mymd !95

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !mymd !96
  br i1 %22, label %while.body, label %while.end, !mymd !97

while.body:                                       ; preds = %land.end
  call void @fill_window(), !mymd !98
  br label %while.cond, !llvm.loop !99, !mymd !101

while.end:                                        ; preds = %land.end
  store i32 0, ptr @ins_h, align 4, !mymd !102
  store i32 0, ptr %j, align 4, !mymd !103
  br label %for.cond, !mymd !104

for.cond:                                         ; preds = %for.inc, %while.end
  %23 = load i32, ptr %j, align 4, !mymd !105
  %cmp33 = icmp ult i32 %23, 2, !mymd !106
  br i1 %cmp33, label %for.body, label %for.end, !mymd !107

for.body:                                         ; preds = %for.cond
  %24 = load i32, ptr @ins_h, align 4, !mymd !108
  %shl = shl i32 %24, 5, !mymd !109
  %25 = load i32, ptr %j, align 4, !mymd !110
  %idxprom35 = zext i32 %25 to i64, !mymd !111
  %arrayidx36 = getelementptr inbounds nuw [0 x i8], ptr @window, i64 0, i64 %idxprom35, !mymd !112
  %26 = load i8, ptr %arrayidx36, align 1, !mymd !113
  %conv37 = zext i8 %26 to i32, !mymd !114
  %xor = xor i32 %shl, %conv37, !mymd !115
  %and = and i32 %xor, 32767, !mymd !116
  store i32 %and, ptr @ins_h, align 4, !mymd !117
  br label %for.inc, !mymd !118

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %j, align 4, !mymd !119
  %inc = add i32 %27, 1, !mymd !120
  store i32 %inc, ptr %j, align 4, !mymd !121
  br label %for.cond, !llvm.loop !122, !mymd !123

for.end:                                          ; preds = %for.cond, %if.then29
  ret void, !mymd !124
}

; Function Attrs: noinline nounwind uwtable
declare dso_local void @error(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
declare hidden void @fill_window() #0

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"434"}
!7 = !{!"435"}
!8 = !{!"436"}
!9 = !{!"437"}
!10 = !{!"438"}
!11 = !{!"439"}
!12 = !{!"440"}
!13 = !{!"441"}
!14 = !{!"442"}
!15 = !{!"443"}
!16 = !{!"444"}
!17 = !{!"445"}
!18 = !{!"446"}
!19 = !{!"447"}
!20 = !{!"448"}
!21 = !{!"449"}
!22 = !{!"450"}
!23 = !{!"451"}
!24 = !{!"452"}
!25 = !{!"453"}
!26 = !{!"454"}
!27 = !{!"455"}
!28 = !{!"456"}
!29 = !{!"457"}
!30 = !{!"458"}
!31 = !{!"459"}
!32 = !{!"460"}
!33 = !{!"461"}
!34 = !{!"462"}
!35 = !{!"463"}
!36 = !{!"464"}
!37 = !{!"465"}
!38 = !{!"466"}
!39 = !{!"467"}
!40 = !{!"468"}
!41 = !{!"469"}
!42 = !{!"470"}
!43 = !{!"471"}
!44 = !{!"472"}
!45 = !{!"473"}
!46 = !{!"474"}
!47 = !{!"475"}
!48 = !{!"476"}
!49 = !{!"477"}
!50 = !{!"478"}
!51 = !{!"479"}
!52 = !{!"480"}
!53 = !{!"481"}
!54 = !{!"482"}
!55 = !{!"483"}
!56 = !{!"484"}
!57 = !{!"485"}
!58 = !{!"486"}
!59 = !{!"487"}
!60 = !{!"488"}
!61 = !{!"489"}
!62 = !{!"490"}
!63 = !{!"491"}
!64 = !{!"492"}
!65 = !{!"493"}
!66 = !{!"494"}
!67 = !{!"495"}
!68 = !{!"496"}
!69 = !{!"497"}
!70 = !{!"498"}
!71 = !{!"499"}
!72 = !{!"500"}
!73 = !{!"501"}
!74 = !{!"502"}
!75 = !{!"503"}
!76 = !{!"504"}
!77 = !{!"505"}
!78 = !{!"506"}
!79 = !{!"507"}
!80 = !{!"508"}
!81 = !{!"509"}
!82 = !{!"510"}
!83 = !{!"511"}
!84 = !{!"512"}
!85 = !{!"513"}
!86 = !{!"514"}
!87 = !{!"515"}
!88 = !{!"516"}
!89 = !{!"517"}
!90 = !{!"518"}
!91 = !{!"519"}
!92 = !{!"520"}
!93 = !{!"521"}
!94 = !{!"522"}
!95 = !{!"523"}
!96 = !{!"524"}
!97 = !{!"525"}
!98 = !{!"526"}
!99 = distinct !{!99, !100}
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"527"}
!102 = !{!"528"}
!103 = !{!"529"}
!104 = !{!"530"}
!105 = !{!"531"}
!106 = !{!"532"}
!107 = !{!"533"}
!108 = !{!"534"}
!109 = !{!"535"}
!110 = !{!"536"}
!111 = !{!"537"}
!112 = !{!"538"}
!113 = !{!"539"}
!114 = !{!"540"}
!115 = !{!"541"}
!116 = !{!"542"}
!117 = !{!"543"}
!118 = !{!"544"}
!119 = !{!"545"}
!120 = !{!"546"}
!121 = !{!"547"}
!122 = distinct !{!122, !100}
!123 = !{!"548"}
!124 = !{!"549"}
