; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@method = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@inptr = external dso_local global i32, align 4
@insize = external dso_local global i32, align 4
@inbuf = external dso_local global [32832 x i8], align 16
@ifd = external dso_local global i32, align 4
@ifname = external dso_local global [1024 x i8], align 16
@pkzip = external dso_local global i32, align 4
@ext_header = external dso_local global i32, align 4
@.str.59 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.60 = external hidden unnamed_addr constant [58 x i8], align 1
@decrypt = external dso_local global i32, align 4
@.str.61 = external hidden unnamed_addr constant [38 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_zipfile(i32 noundef %in) #1 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %in.addr = alloca i32, align 4, !mymd !7
  %h = alloca ptr, align 8, !mymd !8
  store i32 %in, ptr %in.addr, align 4, !mymd !9
  %0 = load i32, ptr @inptr, align 4, !mymd !10
  %idx.ext = zext i32 %0 to i64, !mymd !11
  %add.ptr = getelementptr inbounds nuw i8, ptr @inbuf, i64 %idx.ext, !mymd !12
  store ptr %add.ptr, ptr %h, align 8, !mymd !13
  %1 = load i32, ptr %in.addr, align 4, !mymd !14
  store i32 %1, ptr @ifd, align 4, !mymd !15
  %2 = load ptr, ptr %h, align 8, !mymd !16
  %add.ptr1 = getelementptr inbounds i8, ptr %2, i64 26, !mymd !17
  %arrayidx = getelementptr inbounds i8, ptr %add.ptr1, i64 0, !mymd !18
  %3 = load i8, ptr %arrayidx, align 1, !mymd !19
  %conv = zext i8 %3 to i16, !mymd !20
  %conv2 = zext i16 %conv to i32, !mymd !21
  %4 = load ptr, ptr %h, align 8, !mymd !22
  %add.ptr3 = getelementptr inbounds i8, ptr %4, i64 26, !mymd !23
  %arrayidx4 = getelementptr inbounds i8, ptr %add.ptr3, i64 1, !mymd !24
  %5 = load i8, ptr %arrayidx4, align 1, !mymd !25
  %conv5 = zext i8 %5 to i16, !mymd !26
  %conv6 = zext i16 %conv5 to i32, !mymd !27
  %shl = shl i32 %conv6, 8, !mymd !28
  %or = or i32 %conv2, %shl, !mymd !29
  %add = add nsw i32 30, %or, !mymd !30
  %6 = load ptr, ptr %h, align 8, !mymd !31
  %add.ptr7 = getelementptr inbounds i8, ptr %6, i64 28, !mymd !32
  %arrayidx8 = getelementptr inbounds i8, ptr %add.ptr7, i64 0, !mymd !33
  %7 = load i8, ptr %arrayidx8, align 1, !mymd !34
  %conv9 = zext i8 %7 to i16, !mymd !35
  %conv10 = zext i16 %conv9 to i32, !mymd !36
  %8 = load ptr, ptr %h, align 8, !mymd !37
  %add.ptr11 = getelementptr inbounds i8, ptr %8, i64 28, !mymd !38
  %arrayidx12 = getelementptr inbounds i8, ptr %add.ptr11, i64 1, !mymd !39
  %9 = load i8, ptr %arrayidx12, align 1, !mymd !40
  %conv13 = zext i8 %9 to i16, !mymd !41
  %conv14 = zext i16 %conv13 to i32, !mymd !42
  %shl15 = shl i32 %conv14, 8, !mymd !43
  %or16 = or i32 %conv10, %shl15, !mymd !44
  %add17 = add nsw i32 %add, %or16, !mymd !45
  %10 = load i32, ptr @inptr, align 4, !mymd !46
  %add18 = add i32 %10, %add17, !mymd !47
  store i32 %add18, ptr @inptr, align 4, !mymd !48
  %11 = load i32, ptr @inptr, align 4, !mymd !49
  %12 = load i32, ptr @insize, align 4, !mymd !50
  %cmp = icmp ugt i32 %11, %12, !mymd !51
  br i1 %cmp, label %if.then, label %lor.lhs.false, !mymd !52

lor.lhs.false:                                    ; preds = %entry
  %13 = load ptr, ptr %h, align 8, !mymd !53
  %arrayidx20 = getelementptr inbounds i8, ptr %13, i64 0, !mymd !54
  %14 = load i8, ptr %arrayidx20, align 1, !mymd !55
  %conv21 = zext i8 %14 to i16, !mymd !56
  %conv22 = zext i16 %conv21 to i32, !mymd !57
  %15 = load ptr, ptr %h, align 8, !mymd !58
  %arrayidx23 = getelementptr inbounds i8, ptr %15, i64 1, !mymd !59
  %16 = load i8, ptr %arrayidx23, align 1, !mymd !60
  %conv24 = zext i8 %16 to i16, !mymd !61
  %conv25 = zext i16 %conv24 to i32, !mymd !62
  %shl26 = shl i32 %conv25, 8, !mymd !63
  %or27 = or i32 %conv22, %shl26, !mymd !64
  %conv28 = sext i32 %or27 to i64, !mymd !65
  %17 = load ptr, ptr %h, align 8, !mymd !66
  %add.ptr29 = getelementptr inbounds i8, ptr %17, i64 2, !mymd !67
  %arrayidx30 = getelementptr inbounds i8, ptr %add.ptr29, i64 0, !mymd !68
  %18 = load i8, ptr %arrayidx30, align 1, !mymd !69
  %conv31 = zext i8 %18 to i16, !mymd !70
  %conv32 = zext i16 %conv31 to i32, !mymd !71
  %19 = load ptr, ptr %h, align 8, !mymd !72
  %add.ptr33 = getelementptr inbounds i8, ptr %19, i64 2, !mymd !73
  %arrayidx34 = getelementptr inbounds i8, ptr %add.ptr33, i64 1, !mymd !74
  %20 = load i8, ptr %arrayidx34, align 1, !mymd !75
  %conv35 = zext i8 %20 to i16, !mymd !76
  %conv36 = zext i16 %conv35 to i32, !mymd !77
  %shl37 = shl i32 %conv36, 8, !mymd !78
  %or38 = or i32 %conv32, %shl37, !mymd !79
  %conv39 = sext i32 %or38 to i64, !mymd !80
  %shl40 = shl i64 %conv39, 16, !mymd !81
  %or41 = or i64 %conv28, %shl40, !mymd !82
  %cmp42 = icmp ne i64 %or41, 67324752, !mymd !83
  br i1 %cmp42, label %if.then, label %if.end, !mymd !84

if.then:                                          ; preds = %lor.lhs.false, %entry
  %21 = load ptr, ptr @stderr, align 8, !mymd !85
  %22 = load ptr, ptr @progname, align 8, !mymd !86
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.59, ptr noundef %22, ptr noundef @ifname) #2, !mymd !87
  store i32 1, ptr @exit_code, align 4, !mymd !88
  store i32 1, ptr %retval, align 4, !mymd !89
  br label %return, !mymd !90

if.end:                                           ; preds = %lor.lhs.false
  %23 = load ptr, ptr %h, align 8, !mymd !91
  %arrayidx44 = getelementptr inbounds i8, ptr %23, i64 8, !mymd !92
  %24 = load i8, ptr %arrayidx44, align 1, !mymd !93
  %conv45 = zext i8 %24 to i32, !mymd !94
  store i32 %conv45, ptr @method, align 4, !mymd !95
  %25 = load i32, ptr @method, align 4, !mymd !96
  %cmp46 = icmp ne i32 %25, 0, !mymd !97
  br i1 %cmp46, label %land.lhs.true, label %if.end52, !mymd !98

land.lhs.true:                                    ; preds = %if.end
  %26 = load i32, ptr @method, align 4, !mymd !99
  %cmp48 = icmp ne i32 %26, 8, !mymd !100
  br i1 %cmp48, label %if.then50, label %if.end52, !mymd !101

if.then50:                                        ; preds = %land.lhs.true
  %27 = load ptr, ptr @stderr, align 8, !mymd !102
  %28 = load ptr, ptr @progname, align 8, !mymd !103
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.60, ptr noundef %28, ptr noundef @ifname) #2, !mymd !104
  store i32 1, ptr @exit_code, align 4, !mymd !105
  store i32 1, ptr %retval, align 4, !mymd !106
  br label %return, !mymd !107

if.end52:                                         ; preds = %land.lhs.true, %if.end
  %29 = load ptr, ptr %h, align 8, !mymd !108
  %arrayidx53 = getelementptr inbounds i8, ptr %29, i64 6, !mymd !109
  %30 = load i8, ptr %arrayidx53, align 1, !mymd !110
  %conv54 = zext i8 %30 to i32, !mymd !111
  %and = and i32 %conv54, 1, !mymd !112
  store i32 %and, ptr @decrypt, align 4, !mymd !113
  %cmp55 = icmp ne i32 %and, 0, !mymd !114
  br i1 %cmp55, label %if.then57, label %if.end59, !mymd !115

if.then57:                                        ; preds = %if.end52
  %31 = load ptr, ptr @stderr, align 8, !mymd !116
  %32 = load ptr, ptr @progname, align 8, !mymd !117
  %call58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.61, ptr noundef %32, ptr noundef @ifname) #2, !mymd !118
  store i32 1, ptr @exit_code, align 4, !mymd !119
  store i32 1, ptr %retval, align 4, !mymd !120
  br label %return, !mymd !121

if.end59:                                         ; preds = %if.end52
  %33 = load ptr, ptr %h, align 8, !mymd !122
  %arrayidx60 = getelementptr inbounds i8, ptr %33, i64 6, !mymd !123
  %34 = load i8, ptr %arrayidx60, align 1, !mymd !124
  %conv61 = zext i8 %34 to i32, !mymd !125
  %and62 = and i32 %conv61, 8, !mymd !126
  %cmp63 = icmp ne i32 %and62, 0, !mymd !127
  %conv64 = zext i1 %cmp63 to i32, !mymd !128
  store i32 %conv64, ptr @ext_header, align 4, !mymd !129
  store i32 1, ptr @pkzip, align 4, !mymd !130
  store i32 0, ptr %retval, align 4, !mymd !131
  br label %return, !mymd !132

return:                                           ; preds = %if.end59, %if.then57, %if.then50, %if.then
  %35 = load i32, ptr %retval, align 4, !mymd !133
  ret i32 %35, !mymd !134
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"9637"}
!7 = !{!"9638"}
!8 = !{!"9639"}
!9 = !{!"9640"}
!10 = !{!"9641"}
!11 = !{!"9642"}
!12 = !{!"9643"}
!13 = !{!"9644"}
!14 = !{!"9645"}
!15 = !{!"9646"}
!16 = !{!"9647"}
!17 = !{!"9648"}
!18 = !{!"9649"}
!19 = !{!"9650"}
!20 = !{!"9651"}
!21 = !{!"9652"}
!22 = !{!"9653"}
!23 = !{!"9654"}
!24 = !{!"9655"}
!25 = !{!"9656"}
!26 = !{!"9657"}
!27 = !{!"9658"}
!28 = !{!"9659"}
!29 = !{!"9660"}
!30 = !{!"9661"}
!31 = !{!"9662"}
!32 = !{!"9663"}
!33 = !{!"9664"}
!34 = !{!"9665"}
!35 = !{!"9666"}
!36 = !{!"9667"}
!37 = !{!"9668"}
!38 = !{!"9669"}
!39 = !{!"9670"}
!40 = !{!"9671"}
!41 = !{!"9672"}
!42 = !{!"9673"}
!43 = !{!"9674"}
!44 = !{!"9675"}
!45 = !{!"9676"}
!46 = !{!"9677"}
!47 = !{!"9678"}
!48 = !{!"9679"}
!49 = !{!"9680"}
!50 = !{!"9681"}
!51 = !{!"9682"}
!52 = !{!"9683"}
!53 = !{!"9684"}
!54 = !{!"9685"}
!55 = !{!"9686"}
!56 = !{!"9687"}
!57 = !{!"9688"}
!58 = !{!"9689"}
!59 = !{!"9690"}
!60 = !{!"9691"}
!61 = !{!"9692"}
!62 = !{!"9693"}
!63 = !{!"9694"}
!64 = !{!"9695"}
!65 = !{!"9696"}
!66 = !{!"9697"}
!67 = !{!"9698"}
!68 = !{!"9699"}
!69 = !{!"9700"}
!70 = !{!"9701"}
!71 = !{!"9702"}
!72 = !{!"9703"}
!73 = !{!"9704"}
!74 = !{!"9705"}
!75 = !{!"9706"}
!76 = !{!"9707"}
!77 = !{!"9708"}
!78 = !{!"9709"}
!79 = !{!"9710"}
!80 = !{!"9711"}
!81 = !{!"9712"}
!82 = !{!"9713"}
!83 = !{!"9714"}
!84 = !{!"9715"}
!85 = !{!"9716"}
!86 = !{!"9717"}
!87 = !{!"9718"}
!88 = !{!"9719"}
!89 = !{!"9720"}
!90 = !{!"9721"}
!91 = !{!"9722"}
!92 = !{!"9723"}
!93 = !{!"9724"}
!94 = !{!"9725"}
!95 = !{!"9726"}
!96 = !{!"9727"}
!97 = !{!"9728"}
!98 = !{!"9729"}
!99 = !{!"9730"}
!100 = !{!"9731"}
!101 = !{!"9732"}
!102 = !{!"9733"}
!103 = !{!"9734"}
!104 = !{!"9735"}
!105 = !{!"9736"}
!106 = !{!"9737"}
!107 = !{!"9738"}
!108 = !{!"9739"}
!109 = !{!"9740"}
!110 = !{!"9741"}
!111 = !{!"9742"}
!112 = !{!"9743"}
!113 = !{!"9744"}
!114 = !{!"9745"}
!115 = !{!"9746"}
!116 = !{!"9747"}
!117 = !{!"9748"}
!118 = !{!"9749"}
!119 = !{!"9750"}
!120 = !{!"9751"}
!121 = !{!"9752"}
!122 = !{!"9753"}
!123 = !{!"9754"}
!124 = !{!"9755"}
!125 = !{!"9756"}
!126 = !{!"9757"}
!127 = !{!"9758"}
!128 = !{!"9759"}
!129 = !{!"9760"}
!130 = !{!"9761"}
!131 = !{!"9762"}
!132 = !{!"9763"}
!133 = !{!"9764"}
!134 = !{!"9765"}
