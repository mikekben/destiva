; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_buf = external dso_local global ptr, align 8
@window_size = external dso_local global i64, align 8
@rsync_chunk_end = external hidden global i64, align 8
@strstart = external dso_local global i32, align 4
@block_start = external dso_local global i64, align 8
@lookahead = external hidden global i32, align 4
@eofile = external hidden global i32, align 4
@match_start = external dso_local global i32, align 4
@window = external dso_local global [65536 x i8], align 16
@prev = external dso_local global [65536 x i16], align 16

; Function Attrs: noinline nounwind uwtable
define hidden void @fill_window() #0 {
entry:
  %n = alloca i32, align 4, !mymd !6
  %m = alloca i32, align 4, !mymd !7
  %more = alloca i32, align 4, !mymd !8
  %0 = load i64, ptr @window_size, align 8, !mymd !9
  %1 = load i32, ptr @lookahead, align 4, !mymd !10
  %conv = zext i32 %1 to i64, !mymd !11
  %sub = sub i64 %0, %conv, !mymd !12
  %2 = load i32, ptr @strstart, align 4, !mymd !13
  %conv1 = zext i32 %2 to i64, !mymd !14
  %sub2 = sub i64 %sub, %conv1, !mymd !15
  %conv3 = trunc i64 %sub2 to i32, !mymd !16
  store i32 %conv3, ptr %more, align 4, !mymd !17
  %3 = load i32, ptr %more, align 4, !mymd !18
  %cmp = icmp eq i32 %3, -1, !mymd !19
  br i1 %cmp, label %if.then, label %if.else, !mymd !20

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %more, align 4, !mymd !21
  %dec = add i32 %4, -1, !mymd !22
  store i32 %dec, ptr %more, align 4, !mymd !23
  br label %if.end45, !mymd !24

if.else:                                          ; preds = %entry
  %5 = load i32, ptr @strstart, align 4, !mymd !25
  %cmp5 = icmp uge i32 %5, 65274, !mymd !26
  br i1 %cmp5, label %if.then7, label %if.end44, !mymd !27

if.then7:                                         ; preds = %if.else
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @window, ptr align 1 getelementptr inbounds (i8, ptr @window, i64 32768), i64 32768, i1 false), !mymd !28
  %6 = load i32, ptr @match_start, align 4, !mymd !29
  %sub8 = sub i32 %6, 32768, !mymd !30
  store i32 %sub8, ptr @match_start, align 4, !mymd !31
  %7 = load i32, ptr @strstart, align 4, !mymd !32
  %sub9 = sub i32 %7, 32768, !mymd !33
  store i32 %sub9, ptr @strstart, align 4, !mymd !34
  %8 = load i64, ptr @rsync_chunk_end, align 8, !mymd !35
  %cmp10 = icmp ne i64 %8, 4294967295, !mymd !36
  br i1 %cmp10, label %if.then12, label %if.end, !mymd !37

if.then12:                                        ; preds = %if.then7
  %9 = load i64, ptr @rsync_chunk_end, align 8, !mymd !38
  %sub13 = sub i64 %9, 32768, !mymd !39
  store i64 %sub13, ptr @rsync_chunk_end, align 8, !mymd !40
  br label %if.end, !mymd !41

if.end:                                           ; preds = %if.then12, %if.then7
  %10 = load i64, ptr @block_start, align 8, !mymd !42
  %sub14 = sub nsw i64 %10, 32768, !mymd !43
  store i64 %sub14, ptr @block_start, align 8, !mymd !44
  store i32 0, ptr %n, align 4, !mymd !45
  br label %for.cond, !mymd !46

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %n, align 4, !mymd !47
  %cmp15 = icmp ult i32 %11, 32768, !mymd !48
  br i1 %cmp15, label %for.body, label %for.end, !mymd !49

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %n, align 4, !mymd !50
  %idxprom = zext i32 %12 to i64, !mymd !51
  %arrayidx = getelementptr inbounds nuw i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom, !mymd !52
  %13 = load i16, ptr %arrayidx, align 2, !mymd !53
  %conv17 = zext i16 %13 to i32, !mymd !54
  store i32 %conv17, ptr %m, align 4, !mymd !55
  %14 = load i32, ptr %m, align 4, !mymd !56
  %cmp18 = icmp uge i32 %14, 32768, !mymd !57
  br i1 %cmp18, label %cond.true, label %cond.false, !mymd !58

cond.true:                                        ; preds = %for.body
  %15 = load i32, ptr %m, align 4, !mymd !59
  %sub20 = sub i32 %15, 32768, !mymd !60
  br label %cond.end, !mymd !61

cond.false:                                       ; preds = %for.body
  br label %cond.end, !mymd !62

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub20, %cond.true ], [ 0, %cond.false ], !mymd !63
  %conv21 = trunc i32 %cond to i16, !mymd !64
  %16 = load i32, ptr %n, align 4, !mymd !65
  %idxprom22 = zext i32 %16 to i64, !mymd !66
  %arrayidx23 = getelementptr inbounds nuw i16, ptr getelementptr inbounds (i16, ptr @prev, i64 32768), i64 %idxprom22, !mymd !67
  store i16 %conv21, ptr %arrayidx23, align 2, !mymd !68
  br label %for.inc, !mymd !69

for.inc:                                          ; preds = %cond.end
  %17 = load i32, ptr %n, align 4, !mymd !70
  %inc = add i32 %17, 1, !mymd !71
  store i32 %inc, ptr %n, align 4, !mymd !72
  br label %for.cond, !llvm.loop !73, !mymd !75

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4, !mymd !76
  br label %for.cond24, !mymd !77

for.cond24:                                       ; preds = %for.inc41, %for.end
  %18 = load i32, ptr %n, align 4, !mymd !78
  %cmp25 = icmp ult i32 %18, 32768, !mymd !79
  br i1 %cmp25, label %for.body27, label %for.end43, !mymd !80

for.body27:                                       ; preds = %for.cond24
  %19 = load i32, ptr %n, align 4, !mymd !81
  %idxprom28 = zext i32 %19 to i64, !mymd !82
  %arrayidx29 = getelementptr inbounds nuw [0 x i16], ptr @prev, i64 0, i64 %idxprom28, !mymd !83
  %20 = load i16, ptr %arrayidx29, align 2, !mymd !84
  %conv30 = zext i16 %20 to i32, !mymd !85
  store i32 %conv30, ptr %m, align 4, !mymd !86
  %21 = load i32, ptr %m, align 4, !mymd !87
  %cmp31 = icmp uge i32 %21, 32768, !mymd !88
  br i1 %cmp31, label %cond.true33, label %cond.false35, !mymd !89

cond.true33:                                      ; preds = %for.body27
  %22 = load i32, ptr %m, align 4, !mymd !90
  %sub34 = sub i32 %22, 32768, !mymd !91
  br label %cond.end36, !mymd !92

cond.false35:                                     ; preds = %for.body27
  br label %cond.end36, !mymd !93

cond.end36:                                       ; preds = %cond.false35, %cond.true33
  %cond37 = phi i32 [ %sub34, %cond.true33 ], [ 0, %cond.false35 ], !mymd !94
  %conv38 = trunc i32 %cond37 to i16, !mymd !95
  %23 = load i32, ptr %n, align 4, !mymd !96
  %idxprom39 = zext i32 %23 to i64, !mymd !97
  %arrayidx40 = getelementptr inbounds nuw [0 x i16], ptr @prev, i64 0, i64 %idxprom39, !mymd !98
  store i16 %conv38, ptr %arrayidx40, align 2, !mymd !99
  br label %for.inc41, !mymd !100

for.inc41:                                        ; preds = %cond.end36
  %24 = load i32, ptr %n, align 4, !mymd !101
  %inc42 = add i32 %24, 1, !mymd !102
  store i32 %inc42, ptr %n, align 4, !mymd !103
  br label %for.cond24, !llvm.loop !104, !mymd !105

for.end43:                                        ; preds = %for.cond24
  %25 = load i32, ptr %more, align 4, !mymd !106
  %add = add i32 %25, 32768, !mymd !107
  store i32 %add, ptr %more, align 4, !mymd !108
  br label %if.end44, !mymd !109

if.end44:                                         ; preds = %for.end43, %if.else
  br label %if.end45, !mymd !110

if.end45:                                         ; preds = %if.end44, %if.then
  %26 = load i32, ptr @eofile, align 4, !mymd !111
  %tobool = icmp ne i32 %26, 0, !mymd !112
  br i1 %tobool, label %if.end57, label %if.then46, !mymd !113

if.then46:                                        ; preds = %if.end45
  %27 = load ptr, ptr @read_buf, align 8, !mymd !114
  %28 = load i32, ptr @strstart, align 4, !mymd !115
  %idx.ext = zext i32 %28 to i64, !mymd !116
  %add.ptr = getelementptr inbounds nuw i8, ptr @window, i64 %idx.ext, !mymd !117
  %29 = load i32, ptr @lookahead, align 4, !mymd !118
  %idx.ext47 = zext i32 %29 to i64, !mymd !119
  %add.ptr48 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %idx.ext47, !mymd !120
  %30 = load i32, ptr %more, align 4, !mymd !121
  %call = call i32 %27(ptr noundef %add.ptr48, i32 noundef %30), !mymd !122
  store i32 %call, ptr %n, align 4, !mymd !123
  %31 = load i32, ptr %n, align 4, !mymd !124
  %cmp49 = icmp eq i32 %31, 0, !mymd !125
  br i1 %cmp49, label %if.then53, label %lor.lhs.false, !mymd !126

lor.lhs.false:                                    ; preds = %if.then46
  %32 = load i32, ptr %n, align 4, !mymd !127
  %cmp51 = icmp eq i32 %32, -1, !mymd !128
  br i1 %cmp51, label %if.then53, label %if.else54, !mymd !129

if.then53:                                        ; preds = %lor.lhs.false, %if.then46
  store i32 1, ptr @eofile, align 4, !mymd !130
  br label %if.end56, !mymd !131

if.else54:                                        ; preds = %lor.lhs.false
  %33 = load i32, ptr %n, align 4, !mymd !132
  %34 = load i32, ptr @lookahead, align 4, !mymd !133
  %add55 = add i32 %34, %33, !mymd !134
  store i32 %add55, ptr @lookahead, align 4, !mymd !135
  br label %if.end56, !mymd !136

if.end56:                                         ; preds = %if.else54, %if.then53
  br label %if.end57, !mymd !137

if.end57:                                         ; preds = %if.end56, %if.end45
  ret void, !mymd !138
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"558"}
!7 = !{!"559"}
!8 = !{!"560"}
!9 = !{!"561"}
!10 = !{!"562"}
!11 = !{!"563"}
!12 = !{!"564"}
!13 = !{!"565"}
!14 = !{!"566"}
!15 = !{!"567"}
!16 = !{!"568"}
!17 = !{!"569"}
!18 = !{!"570"}
!19 = !{!"571"}
!20 = !{!"572"}
!21 = !{!"573"}
!22 = !{!"574"}
!23 = !{!"575"}
!24 = !{!"576"}
!25 = !{!"577"}
!26 = !{!"578"}
!27 = !{!"579"}
!28 = !{!"580"}
!29 = !{!"581"}
!30 = !{!"582"}
!31 = !{!"583"}
!32 = !{!"584"}
!33 = !{!"585"}
!34 = !{!"586"}
!35 = !{!"587"}
!36 = !{!"588"}
!37 = !{!"589"}
!38 = !{!"590"}
!39 = !{!"591"}
!40 = !{!"592"}
!41 = !{!"593"}
!42 = !{!"594"}
!43 = !{!"595"}
!44 = !{!"596"}
!45 = !{!"597"}
!46 = !{!"598"}
!47 = !{!"599"}
!48 = !{!"600"}
!49 = !{!"601"}
!50 = !{!"602"}
!51 = !{!"603"}
!52 = !{!"604"}
!53 = !{!"605"}
!54 = !{!"606"}
!55 = !{!"607"}
!56 = !{!"608"}
!57 = !{!"609"}
!58 = !{!"610"}
!59 = !{!"611"}
!60 = !{!"612"}
!61 = !{!"613"}
!62 = !{!"614"}
!63 = !{!"615"}
!64 = !{!"616"}
!65 = !{!"617"}
!66 = !{!"618"}
!67 = !{!"619"}
!68 = !{!"620"}
!69 = !{!"621"}
!70 = !{!"622"}
!71 = !{!"623"}
!72 = !{!"624"}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"625"}
!76 = !{!"626"}
!77 = !{!"627"}
!78 = !{!"628"}
!79 = !{!"629"}
!80 = !{!"630"}
!81 = !{!"631"}
!82 = !{!"632"}
!83 = !{!"633"}
!84 = !{!"634"}
!85 = !{!"635"}
!86 = !{!"636"}
!87 = !{!"637"}
!88 = !{!"638"}
!89 = !{!"639"}
!90 = !{!"640"}
!91 = !{!"641"}
!92 = !{!"642"}
!93 = !{!"643"}
!94 = !{!"644"}
!95 = !{!"645"}
!96 = !{!"646"}
!97 = !{!"647"}
!98 = !{!"648"}
!99 = !{!"649"}
!100 = !{!"650"}
!101 = !{!"651"}
!102 = !{!"652"}
!103 = !{!"653"}
!104 = distinct !{!104, !74}
!105 = !{!"654"}
!106 = !{!"655"}
!107 = !{!"656"}
!108 = !{!"657"}
!109 = !{!"658"}
!110 = !{!"659"}
!111 = !{!"660"}
!112 = !{!"661"}
!113 = !{!"662"}
!114 = !{!"663"}
!115 = !{!"664"}
!116 = !{!"665"}
!117 = !{!"666"}
!118 = !{!"667"}
!119 = !{!"668"}
!120 = !{!"669"}
!121 = !{!"670"}
!122 = !{!"671"}
!123 = !{!"672"}
!124 = !{!"673"}
!125 = !{!"674"}
!126 = !{!"675"}
!127 = !{!"676"}
!128 = !{!"677"}
!129 = !{!"678"}
!130 = !{!"679"}
!131 = !{!"680"}
!132 = !{!"681"}
!133 = !{!"682"}
!134 = !{!"683"}
!135 = !{!"684"}
!136 = !{!"685"}
!137 = !{!"686"}
!138 = !{!"687"}
