; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@stderr = external global ptr, align 8
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@.str.166 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.167 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.168 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
declare hidden void @treat_file(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden void @progerror(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden void @treat_dir(ptr noundef %dir) #2 {
entry:
  %dir.addr = alloca ptr, align 8, !mymd !6
  %dp = alloca ptr, align 8, !mymd !7
  %dirp = alloca ptr, align 8, !mymd !8
  %nbuf = alloca [1024 x i8], align 16, !mymd !9
  %len = alloca i32, align 4, !mymd !10
  store ptr %dir, ptr %dir.addr, align 8, !mymd !11
  %0 = load ptr, ptr %dir.addr, align 8, !mymd !12
  %call = call noalias ptr @opendir(ptr noundef %0), !mymd !13
  store ptr %call, ptr %dirp, align 8, !mymd !14
  %1 = load ptr, ptr %dirp, align 8, !mymd !15
  %cmp = icmp eq ptr %1, null, !mymd !16
  br i1 %cmp, label %if.then, label %if.end, !mymd !17

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dir.addr, align 8, !mymd !18
  call void @progerror(ptr noundef %2), !mymd !19
  br label %if.end45, !mymd !20

if.end:                                           ; preds = %entry
  br label %while.cond, !mymd !21

while.cond:                                       ; preds = %if.end35, %if.then10, %if.end
  %call1 = call ptr @__errno_location() #5, !mymd !22
  store i32 0, ptr %call1, align 4, !mymd !23
  %3 = load ptr, ptr %dirp, align 8, !mymd !24
  %call2 = call ptr @readdir(ptr noundef %3), !mymd !25
  store ptr %call2, ptr %dp, align 8, !mymd !26
  %cmp3 = icmp ne ptr %call2, null, !mymd !27
  br i1 %cmp3, label %while.body, label %while.end, !mymd !28

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %dp, align 8, !mymd !29
  %d_name = getelementptr inbounds nuw %struct.dirent, ptr %4, i32 0, i32 4, !mymd !30
  %arraydecay = getelementptr inbounds [256 x i8], ptr %d_name, i64 0, i64 0, !mymd !31
  %call4 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef @.str.166) #6, !mymd !32
  %cmp5 = icmp eq i32 %call4, 0, !mymd !33
  br i1 %cmp5, label %if.then10, label %lor.lhs.false, !mymd !34

lor.lhs.false:                                    ; preds = %while.body
  %5 = load ptr, ptr %dp, align 8, !mymd !35
  %d_name6 = getelementptr inbounds nuw %struct.dirent, ptr %5, i32 0, i32 4, !mymd !36
  %arraydecay7 = getelementptr inbounds [256 x i8], ptr %d_name6, i64 0, i64 0, !mymd !37
  %call8 = call i32 @strcmp(ptr noundef %arraydecay7, ptr noundef @.str.167) #6, !mymd !38
  %cmp9 = icmp eq i32 %call8, 0, !mymd !39
  br i1 %cmp9, label %if.then10, label %if.end11, !mymd !40

if.then10:                                        ; preds = %lor.lhs.false, %while.body
  br label %while.cond, !llvm.loop !41, !mymd !43

if.end11:                                         ; preds = %lor.lhs.false
  %6 = load ptr, ptr %dir.addr, align 8, !mymd !44
  %call12 = call i64 @strlen(ptr noundef %6) #6, !mymd !45
  %conv = trunc i64 %call12 to i32, !mymd !46
  store i32 %conv, ptr %len, align 4, !mymd !47
  %7 = load i32, ptr %len, align 4, !mymd !48
  %conv13 = sext i32 %7 to i64, !mymd !49
  %8 = load ptr, ptr %dp, align 8, !mymd !50
  %d_name14 = getelementptr inbounds nuw %struct.dirent, ptr %8, i32 0, i32 4, !mymd !51
  %arraydecay15 = getelementptr inbounds [256 x i8], ptr %d_name14, i64 0, i64 0, !mymd !52
  %call16 = call i64 @strlen(ptr noundef %arraydecay15) #6, !mymd !53
  %add = add i64 %conv13, %call16, !mymd !54
  %add17 = add i64 %add, 1, !mymd !55
  %cmp18 = icmp ult i64 %add17, 1023, !mymd !56
  br i1 %cmp18, label %if.then20, label %if.else, !mymd !57

if.then20:                                        ; preds = %if.end11
  %arraydecay21 = getelementptr inbounds [1024 x i8], ptr %nbuf, i64 0, i64 0, !mymd !58
  %9 = load ptr, ptr %dir.addr, align 8, !mymd !59
  %call22 = call ptr @strcpy(ptr noundef %arraydecay21, ptr noundef %9) #7, !mymd !60
  %10 = load i32, ptr %len, align 4, !mymd !61
  %cmp23 = icmp ne i32 %10, 0, !mymd !62
  br i1 %cmp23, label %if.then25, label %if.end26, !mymd !63

if.then25:                                        ; preds = %if.then20
  %11 = load i32, ptr %len, align 4, !mymd !64
  %inc = add nsw i32 %11, 1, !mymd !65
  store i32 %inc, ptr %len, align 4, !mymd !66
  %idxprom = sext i32 %11 to i64, !mymd !67
  %arrayidx = getelementptr inbounds [1024 x i8], ptr %nbuf, i64 0, i64 %idxprom, !mymd !68
  store i8 47, ptr %arrayidx, align 1, !mymd !69
  br label %if.end26, !mymd !70

if.end26:                                         ; preds = %if.then25, %if.then20
  %arraydecay27 = getelementptr inbounds [1024 x i8], ptr %nbuf, i64 0, i64 0, !mymd !71
  %12 = load i32, ptr %len, align 4, !mymd !72
  %idx.ext = sext i32 %12 to i64, !mymd !73
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay27, i64 %idx.ext, !mymd !74
  %13 = load ptr, ptr %dp, align 8, !mymd !75
  %d_name28 = getelementptr inbounds nuw %struct.dirent, ptr %13, i32 0, i32 4, !mymd !76
  %arraydecay29 = getelementptr inbounds [256 x i8], ptr %d_name28, i64 0, i64 0, !mymd !77
  %call30 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %arraydecay29) #7, !mymd !78
  %arraydecay31 = getelementptr inbounds [1024 x i8], ptr %nbuf, i64 0, i64 0, !mymd !79
  call void @treat_file(ptr noundef %arraydecay31), !mymd !80
  br label %if.end35, !mymd !81

if.else:                                          ; preds = %if.end11
  %14 = load ptr, ptr @stderr, align 8, !mymd !82
  %15 = load ptr, ptr @progname, align 8, !mymd !83
  %16 = load ptr, ptr %dir.addr, align 8, !mymd !84
  %17 = load ptr, ptr %dp, align 8, !mymd !85
  %d_name32 = getelementptr inbounds nuw %struct.dirent, ptr %17, i32 0, i32 4, !mymd !86
  %arraydecay33 = getelementptr inbounds [256 x i8], ptr %d_name32, i64 0, i64 0, !mymd !87
  %call34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.168, ptr noundef %15, ptr noundef %16, ptr noundef %arraydecay33) #7, !mymd !88
  store i32 1, ptr @exit_code, align 4, !mymd !89
  br label %if.end35, !mymd !90

if.end35:                                         ; preds = %if.else, %if.end26
  br label %while.cond, !llvm.loop !41, !mymd !91

while.end:                                        ; preds = %while.cond
  %call36 = call ptr @__errno_location() #5, !mymd !92
  %18 = load i32, ptr %call36, align 4, !mymd !93
  %cmp37 = icmp ne i32 %18, 0, !mymd !94
  br i1 %cmp37, label %if.then39, label %if.end40, !mymd !95

if.then39:                                        ; preds = %while.end
  %19 = load ptr, ptr %dir.addr, align 8, !mymd !96
  call void @progerror(ptr noundef %19), !mymd !97
  br label %if.end40, !mymd !98

if.end40:                                         ; preds = %if.then39, %while.end
  %20 = load ptr, ptr %dirp, align 8, !mymd !99
  %call41 = call i32 @closedir(ptr noundef %20), !mymd !100
  %cmp42 = icmp ne i32 %call41, 0, !mymd !101
  br i1 %cmp42, label %if.then44, label %if.end45, !mymd !102

if.then44:                                        ; preds = %if.end40
  %21 = load ptr, ptr %dir.addr, align 8, !mymd !103
  call void @progerror(ptr noundef %21), !mymd !104
  br label %if.end45, !mymd !105

if.end45:                                         ; preds = %if.then44, %if.end40, %if.then
  ret void, !mymd !106
}

declare noalias ptr @opendir(ptr noundef) #4

declare ptr @readdir(ptr noundef) #4

declare i32 @closedir(ptr noundef) #4

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"11571"}
!7 = !{!"11572"}
!8 = !{!"11573"}
!9 = !{!"11574"}
!10 = !{!"11575"}
!11 = !{!"11576"}
!12 = !{!"11577"}
!13 = !{!"11578"}
!14 = !{!"11579"}
!15 = !{!"11580"}
!16 = !{!"11581"}
!17 = !{!"11582"}
!18 = !{!"11583"}
!19 = !{!"11584"}
!20 = !{!"11585"}
!21 = !{!"11586"}
!22 = !{!"11587"}
!23 = !{!"11588"}
!24 = !{!"11589"}
!25 = !{!"11590"}
!26 = !{!"11591"}
!27 = !{!"11592"}
!28 = !{!"11593"}
!29 = !{!"11594"}
!30 = !{!"11595"}
!31 = !{!"11596"}
!32 = !{!"11597"}
!33 = !{!"11598"}
!34 = !{!"11599"}
!35 = !{!"11600"}
!36 = !{!"11601"}
!37 = !{!"11602"}
!38 = !{!"11603"}
!39 = !{!"11604"}
!40 = !{!"11605"}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"11606"}
!44 = !{!"11607"}
!45 = !{!"11608"}
!46 = !{!"11609"}
!47 = !{!"11610"}
!48 = !{!"11611"}
!49 = !{!"11612"}
!50 = !{!"11613"}
!51 = !{!"11614"}
!52 = !{!"11615"}
!53 = !{!"11616"}
!54 = !{!"11617"}
!55 = !{!"11618"}
!56 = !{!"11619"}
!57 = !{!"11620"}
!58 = !{!"11621"}
!59 = !{!"11622"}
!60 = !{!"11623"}
!61 = !{!"11624"}
!62 = !{!"11625"}
!63 = !{!"11626"}
!64 = !{!"11627"}
!65 = !{!"11628"}
!66 = !{!"11629"}
!67 = !{!"11630"}
!68 = !{!"11631"}
!69 = !{!"11632"}
!70 = !{!"11633"}
!71 = !{!"11634"}
!72 = !{!"11635"}
!73 = !{!"11636"}
!74 = !{!"11637"}
!75 = !{!"11638"}
!76 = !{!"11639"}
!77 = !{!"11640"}
!78 = !{!"11641"}
!79 = !{!"11642"}
!80 = !{!"11643"}
!81 = !{!"11644"}
!82 = !{!"11645"}
!83 = !{!"11646"}
!84 = !{!"11647"}
!85 = !{!"11648"}
!86 = !{!"11649"}
!87 = !{!"11650"}
!88 = !{!"11651"}
!89 = !{!"11652"}
!90 = !{!"11653"}
!91 = !{!"11654"}
!92 = !{!"11655"}
!93 = !{!"11656"}
!94 = !{!"11657"}
!95 = !{!"11658"}
!96 = !{!"11659"}
!97 = !{!"11660"}
!98 = !{!"11661"}
!99 = !{!"11662"}
!100 = !{!"11663"}
!101 = !{!"11664"}
!102 = !{!"11665"}
!103 = !{!"11666"}
!104 = !{!"11667"}
!105 = !{!"11668"}
!106 = !{!"11669"}
