; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@z_suffix = external dso_local global ptr, align 8
@get_suffix.known_suffixes = external hidden global [9 x ptr], align 16
@.str.165 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local ptr @strlwr(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden ptr @get_suffix(ptr noundef %name) #1 {
entry:
  %retval = alloca ptr, align 8, !mymd !6
  %name.addr = alloca ptr, align 8, !mymd !7
  %nlen = alloca i32, align 4, !mymd !8
  %slen = alloca i32, align 4, !mymd !9
  %suffix = alloca [33 x i8], align 16, !mymd !10
  %suf = alloca ptr, align 8, !mymd !11
  %s = alloca i32, align 4, !mymd !12
  store ptr %name, ptr %name.addr, align 8, !mymd !13
  store ptr @get_suffix.known_suffixes, ptr %suf, align 8, !mymd !14
  %0 = load ptr, ptr @z_suffix, align 8, !mymd !15
  %1 = load ptr, ptr %suf, align 8, !mymd !16
  store ptr %0, ptr %1, align 8, !mymd !17
  %2 = load ptr, ptr @z_suffix, align 8, !mymd !18
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef @.str.165) #3, !mymd !19
  %cmp = icmp eq i32 %call, 0, !mymd !20
  br i1 %cmp, label %if.then, label %if.end, !mymd !21

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %suf, align 8, !mymd !22
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %3, i32 1, !mymd !23
  store ptr %incdec.ptr, ptr %suf, align 8, !mymd !24
  br label %if.end, !mymd !25

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %name.addr, align 8, !mymd !26
  %call1 = call i64 @strlen(ptr noundef %4) #3, !mymd !27
  %conv = trunc i64 %call1 to i32, !mymd !28
  store i32 %conv, ptr %nlen, align 4, !mymd !29
  %5 = load i32, ptr %nlen, align 4, !mymd !30
  %cmp2 = icmp sle i32 %5, 32, !mymd !31
  br i1 %cmp2, label %if.then4, label %if.else, !mymd !32

if.then4:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [33 x i8], ptr %suffix, i64 0, i64 0, !mymd !33
  %6 = load ptr, ptr %name.addr, align 8, !mymd !34
  %call5 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef %6) #4, !mymd !35
  br label %if.end10, !mymd !36

if.else:                                          ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [33 x i8], ptr %suffix, i64 0, i64 0, !mymd !37
  %7 = load ptr, ptr %name.addr, align 8, !mymd !38
  %8 = load i32, ptr %nlen, align 4, !mymd !39
  %idx.ext = sext i32 %8 to i64, !mymd !40
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext, !mymd !41
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr, i64 -30, !mymd !42
  %add.ptr8 = getelementptr inbounds i8, ptr %add.ptr7, i64 -2, !mymd !43
  %call9 = call ptr @strcpy(ptr noundef %arraydecay6, ptr noundef %add.ptr8) #4, !mymd !44
  br label %if.end10, !mymd !45

if.end10:                                         ; preds = %if.else, %if.then4
  %arraydecay11 = getelementptr inbounds [33 x i8], ptr %suffix, i64 0, i64 0, !mymd !46
  %call12 = call ptr @strlwr(ptr noundef %arraydecay11), !mymd !47
  %arraydecay13 = getelementptr inbounds [33 x i8], ptr %suffix, i64 0, i64 0, !mymd !48
  %call14 = call i64 @strlen(ptr noundef %arraydecay13) #3, !mymd !49
  %conv15 = trunc i64 %call14 to i32, !mymd !50
  store i32 %conv15, ptr %slen, align 4, !mymd !51
  br label %do.body, !mymd !52

do.body:                                          ; preds = %do.cond, %if.end10
  %9 = load ptr, ptr %suf, align 8, !mymd !53
  %10 = load ptr, ptr %9, align 8, !mymd !54
  %call16 = call i64 @strlen(ptr noundef %10) #3, !mymd !55
  %conv17 = trunc i64 %call16 to i32, !mymd !56
  store i32 %conv17, ptr %s, align 4, !mymd !57
  %11 = load i32, ptr %slen, align 4, !mymd !58
  %12 = load i32, ptr %s, align 4, !mymd !59
  %cmp18 = icmp sgt i32 %11, %12, !mymd !60
  br i1 %cmp18, label %land.lhs.true, label %if.end39, !mymd !61

land.lhs.true:                                    ; preds = %do.body
  %13 = load i32, ptr %slen, align 4, !mymd !62
  %14 = load i32, ptr %s, align 4, !mymd !63
  %sub = sub nsw i32 %13, %14, !mymd !64
  %sub20 = sub nsw i32 %sub, 1, !mymd !65
  %idxprom = sext i32 %sub20 to i64, !mymd !66
  %arrayidx = getelementptr inbounds [33 x i8], ptr %suffix, i64 0, i64 %idxprom, !mymd !67
  %15 = load i8, ptr %arrayidx, align 1, !mymd !68
  %conv21 = sext i8 %15 to i32, !mymd !69
  %cmp22 = icmp ne i32 %conv21, 47, !mymd !70
  br i1 %cmp22, label %land.lhs.true24, label %if.end39, !mymd !71

land.lhs.true24:                                  ; preds = %land.lhs.true
  %arraydecay25 = getelementptr inbounds [33 x i8], ptr %suffix, i64 0, i64 0, !mymd !72
  %16 = load i32, ptr %slen, align 4, !mymd !73
  %idx.ext26 = sext i32 %16 to i64, !mymd !74
  %add.ptr27 = getelementptr inbounds i8, ptr %arraydecay25, i64 %idx.ext26, !mymd !75
  %17 = load i32, ptr %s, align 4, !mymd !76
  %idx.ext28 = sext i32 %17 to i64, !mymd !77
  %idx.neg = sub i64 0, %idx.ext28, !mymd !78
  %add.ptr29 = getelementptr inbounds i8, ptr %add.ptr27, i64 %idx.neg, !mymd !79
  %18 = load ptr, ptr %suf, align 8, !mymd !80
  %19 = load ptr, ptr %18, align 8, !mymd !81
  %call30 = call i32 @strcmp(ptr noundef %add.ptr29, ptr noundef %19) #3, !mymd !82
  %cmp31 = icmp eq i32 %call30, 0, !mymd !83
  br i1 %cmp31, label %if.then33, label %if.end39, !mymd !84

if.then33:                                        ; preds = %land.lhs.true24
  %20 = load ptr, ptr %name.addr, align 8, !mymd !85
  %21 = load i32, ptr %nlen, align 4, !mymd !86
  %idx.ext34 = sext i32 %21 to i64, !mymd !87
  %add.ptr35 = getelementptr inbounds i8, ptr %20, i64 %idx.ext34, !mymd !88
  %22 = load i32, ptr %s, align 4, !mymd !89
  %idx.ext36 = sext i32 %22 to i64, !mymd !90
  %idx.neg37 = sub i64 0, %idx.ext36, !mymd !91
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr35, i64 %idx.neg37, !mymd !92
  store ptr %add.ptr38, ptr %retval, align 8, !mymd !93
  br label %return, !mymd !94

if.end39:                                         ; preds = %land.lhs.true24, %land.lhs.true, %do.body
  br label %do.cond, !mymd !95

do.cond:                                          ; preds = %if.end39
  %23 = load ptr, ptr %suf, align 8, !mymd !96
  %incdec.ptr40 = getelementptr inbounds nuw ptr, ptr %23, i32 1, !mymd !97
  store ptr %incdec.ptr40, ptr %suf, align 8, !mymd !98
  %24 = load ptr, ptr %incdec.ptr40, align 8, !mymd !99
  %cmp41 = icmp ne ptr %24, null, !mymd !100
  br i1 %cmp41, label %do.body, label %do.end, !llvm.loop !101, !mymd !103

do.end:                                           ; preds = %do.cond
  store ptr null, ptr %retval, align 8, !mymd !104
  br label %return, !mymd !105

return:                                           ; preds = %do.end, %if.then33
  %25 = load ptr, ptr %retval, align 8, !mymd !106
  ret ptr %25, !mymd !107
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"12034"}
!7 = !{!"12035"}
!8 = !{!"12036"}
!9 = !{!"12037"}
!10 = !{!"12038"}
!11 = !{!"12039"}
!12 = !{!"12040"}
!13 = !{!"12041"}
!14 = !{!"12042"}
!15 = !{!"12043"}
!16 = !{!"12044"}
!17 = !{!"12045"}
!18 = !{!"12046"}
!19 = !{!"12047"}
!20 = !{!"12048"}
!21 = !{!"12049"}
!22 = !{!"12050"}
!23 = !{!"12051"}
!24 = !{!"12052"}
!25 = !{!"12053"}
!26 = !{!"12054"}
!27 = !{!"12055"}
!28 = !{!"12056"}
!29 = !{!"12057"}
!30 = !{!"12058"}
!31 = !{!"12059"}
!32 = !{!"12060"}
!33 = !{!"12061"}
!34 = !{!"12062"}
!35 = !{!"12063"}
!36 = !{!"12064"}
!37 = !{!"12065"}
!38 = !{!"12066"}
!39 = !{!"12067"}
!40 = !{!"12068"}
!41 = !{!"12069"}
!42 = !{!"12070"}
!43 = !{!"12071"}
!44 = !{!"12072"}
!45 = !{!"12073"}
!46 = !{!"12074"}
!47 = !{!"12075"}
!48 = !{!"12076"}
!49 = !{!"12077"}
!50 = !{!"12078"}
!51 = !{!"12079"}
!52 = !{!"12080"}
!53 = !{!"12081"}
!54 = !{!"12082"}
!55 = !{!"12083"}
!56 = !{!"12084"}
!57 = !{!"12085"}
!58 = !{!"12086"}
!59 = !{!"12087"}
!60 = !{!"12088"}
!61 = !{!"12089"}
!62 = !{!"12090"}
!63 = !{!"12091"}
!64 = !{!"12092"}
!65 = !{!"12093"}
!66 = !{!"12094"}
!67 = !{!"12095"}
!68 = !{!"12096"}
!69 = !{!"12097"}
!70 = !{!"12098"}
!71 = !{!"12099"}
!72 = !{!"12100"}
!73 = !{!"12101"}
!74 = !{!"12102"}
!75 = !{!"12103"}
!76 = !{!"12104"}
!77 = !{!"12105"}
!78 = !{!"12106"}
!79 = !{!"12107"}
!80 = !{!"12108"}
!81 = !{!"12109"}
!82 = !{!"12110"}
!83 = !{!"12111"}
!84 = !{!"12112"}
!85 = !{!"12113"}
!86 = !{!"12114"}
!87 = !{!"12115"}
!88 = !{!"12116"}
!89 = !{!"12117"}
!90 = !{!"12118"}
!91 = !{!"12119"}
!92 = !{!"12120"}
!93 = !{!"12121"}
!94 = !{!"12122"}
!95 = !{!"12123"}
!96 = !{!"12124"}
!97 = !{!"12125"}
!98 = !{!"12126"}
!99 = !{!"12127"}
!100 = !{!"12128"}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"12129"}
!104 = !{!"12130"}
!105 = !{!"12131"}
!106 = !{!"12132"}
!107 = !{!"12133"}
