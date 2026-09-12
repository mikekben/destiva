; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outcnt = external dso_local global i32, align 4
@bb = external dso_local global i64, align 8
@bk = external dso_local global i32, align 4
@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @fill_inbuf(i32 noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @inflate_stored() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @inflate_fixed() #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @inflate_dynamic() #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @inflate_block(ptr noundef %e) #0 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %e.addr = alloca ptr, align 8, !mymd !7
  %t = alloca i32, align 4, !mymd !8
  %w = alloca i32, align 4, !mymd !9
  %b = alloca i64, align 8, !mymd !10
  %k = alloca i32, align 4, !mymd !11
  store ptr %e, ptr %e.addr, align 8, !mymd !12
  %0 = load i64, ptr @bb, align 8, !mymd !13
  store i64 %0, ptr %b, align 8, !mymd !14
  %1 = load i32, ptr @bk, align 4, !mymd !15
  store i32 %1, ptr %k, align 4, !mymd !16
  %2 = load i32, ptr @outcnt, align 4, !mymd !17
  store i32 %2, ptr %w, align 4, !mymd !18
  br label %while.cond, !mymd !19

while.cond:                                       ; preds = %cond.end, %entry
  %3 = load i32, ptr %k, align 4, !mymd !20
  %cmp = icmp ult i32 %3, 1, !mymd !21
  br i1 %cmp, label %while.body, label %while.end, !mymd !22

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr @inptr, align 4, !mymd !23
  %5 = load i32, ptr @insize, align 4, !mymd !24
  %cmp1 = icmp ult i32 %4, %5, !mymd !25
  br i1 %cmp1, label %cond.true, label %cond.false, !mymd !26

cond.true:                                        ; preds = %while.body
  %6 = load i32, ptr @inptr, align 4, !mymd !27
  %inc = add i32 %6, 1, !mymd !28
  store i32 %inc, ptr @inptr, align 4, !mymd !29
  %idxprom = zext i32 %6 to i64, !mymd !30
  %arrayidx = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom, !mymd !31
  %7 = load i8, ptr %arrayidx, align 1, !mymd !32
  %conv = zext i8 %7 to i32, !mymd !33
  br label %cond.end, !mymd !34

cond.false:                                       ; preds = %while.body
  %8 = load i32, ptr %w, align 4, !mymd !35
  store i32 %8, ptr @outcnt, align 4, !mymd !36
  %call = call i32 @fill_inbuf(i32 noundef 0), !mymd !37
  br label %cond.end, !mymd !38

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %call, %cond.false ], !mymd !39
  %conv2 = trunc i32 %cond to i8, !mymd !40
  %conv3 = zext i8 %conv2 to i64, !mymd !41
  %9 = load i32, ptr %k, align 4, !mymd !42
  %sh_prom = zext i32 %9 to i64, !mymd !43
  %shl = shl i64 %conv3, %sh_prom, !mymd !44
  %10 = load i64, ptr %b, align 8, !mymd !45
  %or = or i64 %10, %shl, !mymd !46
  store i64 %or, ptr %b, align 8, !mymd !47
  %11 = load i32, ptr %k, align 4, !mymd !48
  %add = add i32 %11, 8, !mymd !49
  store i32 %add, ptr %k, align 4, !mymd !50
  br label %while.cond, !llvm.loop !51, !mymd !53

while.end:                                        ; preds = %while.cond
  %12 = load i64, ptr %b, align 8, !mymd !54
  %conv4 = trunc i64 %12 to i32, !mymd !55
  %and = and i32 %conv4, 1, !mymd !56
  %13 = load ptr, ptr %e.addr, align 8, !mymd !57
  store i32 %and, ptr %13, align 4, !mymd !58
  %14 = load i64, ptr %b, align 8, !mymd !59
  %shr = lshr i64 %14, 1, !mymd !60
  store i64 %shr, ptr %b, align 8, !mymd !61
  %15 = load i32, ptr %k, align 4, !mymd !62
  %sub = sub i32 %15, 1, !mymd !63
  store i32 %sub, ptr %k, align 4, !mymd !64
  br label %while.cond5, !mymd !65

while.cond5:                                      ; preds = %cond.end18, %while.end
  %16 = load i32, ptr %k, align 4, !mymd !66
  %cmp6 = icmp ult i32 %16, 2, !mymd !67
  br i1 %cmp6, label %while.body8, label %while.end26, !mymd !68

while.body8:                                      ; preds = %while.cond5
  %17 = load i32, ptr @inptr, align 4, !mymd !69
  %18 = load i32, ptr @insize, align 4, !mymd !70
  %cmp9 = icmp ult i32 %17, %18, !mymd !71
  br i1 %cmp9, label %cond.true11, label %cond.false16, !mymd !72

cond.true11:                                      ; preds = %while.body8
  %19 = load i32, ptr @inptr, align 4, !mymd !73
  %inc12 = add i32 %19, 1, !mymd !74
  store i32 %inc12, ptr @inptr, align 4, !mymd !75
  %idxprom13 = zext i32 %19 to i64, !mymd !76
  %arrayidx14 = getelementptr inbounds nuw [32832 x i8], ptr @inbuf, i64 0, i64 %idxprom13, !mymd !77
  %20 = load i8, ptr %arrayidx14, align 1, !mymd !78
  %conv15 = zext i8 %20 to i32, !mymd !79
  br label %cond.end18, !mymd !80

cond.false16:                                     ; preds = %while.body8
  %21 = load i32, ptr %w, align 4, !mymd !81
  store i32 %21, ptr @outcnt, align 4, !mymd !82
  %call17 = call i32 @fill_inbuf(i32 noundef 0), !mymd !83
  br label %cond.end18, !mymd !84

cond.end18:                                       ; preds = %cond.false16, %cond.true11
  %cond19 = phi i32 [ %conv15, %cond.true11 ], [ %call17, %cond.false16 ], !mymd !85
  %conv20 = trunc i32 %cond19 to i8, !mymd !86
  %conv21 = zext i8 %conv20 to i64, !mymd !87
  %22 = load i32, ptr %k, align 4, !mymd !88
  %sh_prom22 = zext i32 %22 to i64, !mymd !89
  %shl23 = shl i64 %conv21, %sh_prom22, !mymd !90
  %23 = load i64, ptr %b, align 8, !mymd !91
  %or24 = or i64 %23, %shl23, !mymd !92
  store i64 %or24, ptr %b, align 8, !mymd !93
  %24 = load i32, ptr %k, align 4, !mymd !94
  %add25 = add i32 %24, 8, !mymd !95
  store i32 %add25, ptr %k, align 4, !mymd !96
  br label %while.cond5, !llvm.loop !97, !mymd !98

while.end26:                                      ; preds = %while.cond5
  %25 = load i64, ptr %b, align 8, !mymd !99
  %conv27 = trunc i64 %25 to i32, !mymd !100
  %and28 = and i32 %conv27, 3, !mymd !101
  store i32 %and28, ptr %t, align 4, !mymd !102
  %26 = load i64, ptr %b, align 8, !mymd !103
  %shr29 = lshr i64 %26, 2, !mymd !104
  store i64 %shr29, ptr %b, align 8, !mymd !105
  %27 = load i32, ptr %k, align 4, !mymd !106
  %sub30 = sub i32 %27, 2, !mymd !107
  store i32 %sub30, ptr %k, align 4, !mymd !108
  %28 = load i64, ptr %b, align 8, !mymd !109
  store i64 %28, ptr @bb, align 8, !mymd !110
  %29 = load i32, ptr %k, align 4, !mymd !111
  store i32 %29, ptr @bk, align 4, !mymd !112
  %30 = load i32, ptr %t, align 4, !mymd !113
  %cmp31 = icmp eq i32 %30, 2, !mymd !114
  br i1 %cmp31, label %if.then, label %if.end, !mymd !115

if.then:                                          ; preds = %while.end26
  %call33 = call i32 @inflate_dynamic(), !mymd !116
  store i32 %call33, ptr %retval, align 4, !mymd !117
  br label %return, !mymd !118

if.end:                                           ; preds = %while.end26
  %31 = load i32, ptr %t, align 4, !mymd !119
  %cmp34 = icmp eq i32 %31, 0, !mymd !120
  br i1 %cmp34, label %if.then36, label %if.end38, !mymd !121

if.then36:                                        ; preds = %if.end
  %call37 = call i32 @inflate_stored(), !mymd !122
  store i32 %call37, ptr %retval, align 4, !mymd !123
  br label %return, !mymd !124

if.end38:                                         ; preds = %if.end
  %32 = load i32, ptr %t, align 4, !mymd !125
  %cmp39 = icmp eq i32 %32, 1, !mymd !126
  br i1 %cmp39, label %if.then41, label %if.end43, !mymd !127

if.then41:                                        ; preds = %if.end38
  %call42 = call i32 @inflate_fixed(), !mymd !128
  store i32 %call42, ptr %retval, align 4, !mymd !129
  br label %return, !mymd !130

if.end43:                                         ; preds = %if.end38
  store i32 2, ptr %retval, align 4, !mymd !131
  br label %return, !mymd !132

return:                                           ; preds = %if.end43, %if.then41, %if.then36, %if.then
  %33 = load i32, ptr %retval, align 4, !mymd !133
  ret i32 %33, !mymd !134
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
!6 = !{!"7323"}
!7 = !{!"7324"}
!8 = !{!"7325"}
!9 = !{!"7326"}
!10 = !{!"7327"}
!11 = !{!"7328"}
!12 = !{!"7329"}
!13 = !{!"7330"}
!14 = !{!"7331"}
!15 = !{!"7332"}
!16 = !{!"7333"}
!17 = !{!"7334"}
!18 = !{!"7335"}
!19 = !{!"7336"}
!20 = !{!"7337"}
!21 = !{!"7338"}
!22 = !{!"7339"}
!23 = !{!"7340"}
!24 = !{!"7341"}
!25 = !{!"7342"}
!26 = !{!"7343"}
!27 = !{!"7344"}
!28 = !{!"7345"}
!29 = !{!"7346"}
!30 = !{!"7347"}
!31 = !{!"7348"}
!32 = !{!"7349"}
!33 = !{!"7350"}
!34 = !{!"7351"}
!35 = !{!"7352"}
!36 = !{!"7353"}
!37 = !{!"7354"}
!38 = !{!"7355"}
!39 = !{!"7356"}
!40 = !{!"7357"}
!41 = !{!"7358"}
!42 = !{!"7359"}
!43 = !{!"7360"}
!44 = !{!"7361"}
!45 = !{!"7362"}
!46 = !{!"7363"}
!47 = !{!"7364"}
!48 = !{!"7365"}
!49 = !{!"7366"}
!50 = !{!"7367"}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"7368"}
!54 = !{!"7369"}
!55 = !{!"7370"}
!56 = !{!"7371"}
!57 = !{!"7372"}
!58 = !{!"7373"}
!59 = !{!"7374"}
!60 = !{!"7375"}
!61 = !{!"7376"}
!62 = !{!"7377"}
!63 = !{!"7378"}
!64 = !{!"7379"}
!65 = !{!"7380"}
!66 = !{!"7381"}
!67 = !{!"7382"}
!68 = !{!"7383"}
!69 = !{!"7384"}
!70 = !{!"7385"}
!71 = !{!"7386"}
!72 = !{!"7387"}
!73 = !{!"7388"}
!74 = !{!"7389"}
!75 = !{!"7390"}
!76 = !{!"7391"}
!77 = !{!"7392"}
!78 = !{!"7393"}
!79 = !{!"7394"}
!80 = !{!"7395"}
!81 = !{!"7396"}
!82 = !{!"7397"}
!83 = !{!"7398"}
!84 = !{!"7399"}
!85 = !{!"7400"}
!86 = !{!"7401"}
!87 = !{!"7402"}
!88 = !{!"7403"}
!89 = !{!"7404"}
!90 = !{!"7405"}
!91 = !{!"7406"}
!92 = !{!"7407"}
!93 = !{!"7408"}
!94 = !{!"7409"}
!95 = !{!"7410"}
!96 = !{!"7411"}
!97 = distinct !{!97, !52}
!98 = !{!"7412"}
!99 = !{!"7413"}
!100 = !{!"7414"}
!101 = !{!"7415"}
!102 = !{!"7416"}
!103 = !{!"7417"}
!104 = !{!"7418"}
!105 = !{!"7419"}
!106 = !{!"7420"}
!107 = !{!"7421"}
!108 = !{!"7422"}
!109 = !{!"7423"}
!110 = !{!"7424"}
!111 = !{!"7425"}
!112 = !{!"7426"}
!113 = !{!"7427"}
!114 = !{!"7428"}
!115 = !{!"7429"}
!116 = !{!"7430"}
!117 = !{!"7431"}
!118 = !{!"7432"}
!119 = !{!"7433"}
!120 = !{!"7434"}
!121 = !{!"7435"}
!122 = !{!"7436"}
!123 = !{!"7437"}
!124 = !{!"7438"}
!125 = !{!"7439"}
!126 = !{!"7440"}
!127 = !{!"7441"}
!128 = !{!"7442"}
!129 = !{!"7443"}
!130 = !{!"7444"}
!131 = !{!"7445"}
!132 = !{!"7446"}
!133 = !{!"7447"}
!134 = !{!"7448"}
