; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@decompress = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@.str.44 = external hidden unnamed_addr constant [4 x i8], align 1
@z_suffix = external dso_local global ptr, align 8
@ifname = external dso_local global [1024 x i8], align 16
@get_istat.suffixes = external hidden global [6 x ptr], align 16
@.str.160 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden void @progerror(ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define hidden i32 @get_istat(ptr noundef %iname, ptr noundef %sbuf) #3 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %iname.addr = alloca ptr, align 8, !mymd !7
  %sbuf.addr = alloca ptr, align 8, !mymd !8
  %ilen = alloca i32, align 4, !mymd !9
  %z_suffix_errno = alloca i32, align 4, !mymd !10
  %suf = alloca ptr, align 8, !mymd !11
  %s = alloca ptr, align 8, !mymd !12
  %s0 = alloca ptr, align 8, !mymd !13
  store ptr %iname, ptr %iname.addr, align 8, !mymd !14
  store ptr %sbuf, ptr %sbuf.addr, align 8, !mymd !15
  store i32 0, ptr %z_suffix_errno, align 4, !mymd !16
  store ptr @get_istat.suffixes, ptr %suf, align 8, !mymd !17
  %0 = load ptr, ptr @z_suffix, align 8, !mymd !18
  %1 = load ptr, ptr %suf, align 8, !mymd !19
  store ptr %0, ptr %1, align 8, !mymd !20
  %2 = load ptr, ptr %iname.addr, align 8, !mymd !21
  %call = call i64 @strlen(ptr noundef %2) #4, !mymd !22
  %cmp = icmp ule i64 1023, %call, !mymd !23
  br i1 %cmp, label %if.then, label %if.end, !mymd !24

if.then:                                          ; preds = %entry
  br label %name_too_long, !mymd !25

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %iname.addr, align 8, !mymd !26
  %call1 = call ptr @strcpy(ptr noundef @ifname, ptr noundef %3) #5, !mymd !27
  %4 = load ptr, ptr %sbuf.addr, align 8, !mymd !28
  %call2 = call i32 @do_stat(ptr noundef @ifname, ptr noundef %4), !mymd !29
  %cmp3 = icmp eq i32 %call2, 0, !mymd !30
  br i1 %cmp3, label %if.then4, label %if.end5, !mymd !31

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !mymd !32
  br label %return, !mymd !33

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr @decompress, align 4, !mymd !34
  %tobool = icmp ne i32 %5, 0, !mymd !35
  br i1 %tobool, label %lor.lhs.false, label %if.then8, !mymd !36

lor.lhs.false:                                    ; preds = %if.end5
  %call6 = call ptr @__errno_location() #6, !mymd !37
  %6 = load i32, ptr %call6, align 4, !mymd !38
  %cmp7 = icmp ne i32 %6, 2, !mymd !39
  br i1 %cmp7, label %if.then8, label %if.end9, !mymd !40

if.then8:                                         ; preds = %lor.lhs.false, %if.end5
  call void @progerror(ptr noundef @ifname), !mymd !41
  store i32 1, ptr %retval, align 4, !mymd !42
  br label %return, !mymd !43

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = call ptr @get_suffix(ptr noundef @ifname), !mymd !44
  store ptr %call10, ptr %s, align 8, !mymd !45
  %7 = load ptr, ptr %s, align 8, !mymd !46
  %cmp11 = icmp ne ptr %7, null, !mymd !47
  br i1 %cmp11, label %if.then12, label %if.end13, !mymd !48

if.then12:                                        ; preds = %if.end9
  call void @progerror(ptr noundef @ifname), !mymd !49
  store i32 1, ptr %retval, align 4, !mymd !50
  br label %return, !mymd !51

if.end13:                                         ; preds = %if.end9
  %call14 = call i64 @strlen(ptr noundef @ifname) #4, !mymd !52
  %conv = trunc i64 %call14 to i32, !mymd !53
  store i32 %conv, ptr %ilen, align 4, !mymd !54
  %8 = load ptr, ptr @z_suffix, align 8, !mymd !55
  %call15 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.44) #4, !mymd !56
  %cmp16 = icmp eq i32 %call15, 0, !mymd !57
  br i1 %cmp16, label %if.then18, label %if.end19, !mymd !58

if.then18:                                        ; preds = %if.end13
  %9 = load ptr, ptr %suf, align 8, !mymd !59
  %incdec.ptr = getelementptr inbounds nuw ptr, ptr %9, i32 1, !mymd !60
  store ptr %incdec.ptr, ptr %suf, align 8, !mymd !61
  br label %if.end19, !mymd !62

if.end19:                                         ; preds = %if.then18, %if.end13
  br label %do.body, !mymd !63

do.body:                                          ; preds = %do.cond, %if.end19
  %10 = load ptr, ptr %suf, align 8, !mymd !64
  %11 = load ptr, ptr %10, align 8, !mymd !65
  store ptr %11, ptr %s, align 8, !mymd !66
  store ptr %11, ptr %s0, align 8, !mymd !67
  %12 = load ptr, ptr %iname.addr, align 8, !mymd !68
  %call20 = call ptr @strcpy(ptr noundef @ifname, ptr noundef %12) #5, !mymd !69
  %13 = load i32, ptr %ilen, align 4, !mymd !70
  %conv21 = sext i32 %13 to i64, !mymd !71
  %14 = load ptr, ptr %s, align 8, !mymd !72
  %call22 = call i64 @strlen(ptr noundef %14) #4, !mymd !73
  %add = add i64 %conv21, %call22, !mymd !74
  %cmp23 = icmp ule i64 1024, %add, !mymd !75
  br i1 %cmp23, label %if.then25, label %if.end26, !mymd !76

if.then25:                                        ; preds = %do.body
  br label %name_too_long, !mymd !77

if.end26:                                         ; preds = %do.body
  %15 = load ptr, ptr %s, align 8, !mymd !78
  %call27 = call ptr @strcat(ptr noundef @ifname, ptr noundef %15) #5, !mymd !79
  %16 = load ptr, ptr %sbuf.addr, align 8, !mymd !80
  %call28 = call i32 @do_stat(ptr noundef @ifname, ptr noundef %16), !mymd !81
  %cmp29 = icmp eq i32 %call28, 0, !mymd !82
  br i1 %cmp29, label %if.then31, label %if.end32, !mymd !83

if.then31:                                        ; preds = %if.end26
  store i32 0, ptr %retval, align 4, !mymd !84
  br label %return, !mymd !85

if.end32:                                         ; preds = %if.end26
  %17 = load ptr, ptr %s0, align 8, !mymd !86
  %18 = load ptr, ptr @z_suffix, align 8, !mymd !87
  %call33 = call i32 @strcmp(ptr noundef %17, ptr noundef %18) #4, !mymd !88
  %cmp34 = icmp eq i32 %call33, 0, !mymd !89
  br i1 %cmp34, label %if.then36, label %if.end38, !mymd !90

if.then36:                                        ; preds = %if.end32
  %call37 = call ptr @__errno_location() #6, !mymd !91
  %19 = load i32, ptr %call37, align 4, !mymd !92
  store i32 %19, ptr %z_suffix_errno, align 4, !mymd !93
  br label %if.end38, !mymd !94

if.end38:                                         ; preds = %if.then36, %if.end32
  br label %do.cond, !mymd !95

do.cond:                                          ; preds = %if.end38
  %20 = load ptr, ptr %suf, align 8, !mymd !96
  %incdec.ptr39 = getelementptr inbounds nuw ptr, ptr %20, i32 1, !mymd !97
  store ptr %incdec.ptr39, ptr %suf, align 8, !mymd !98
  %21 = load ptr, ptr %incdec.ptr39, align 8, !mymd !99
  %cmp40 = icmp ne ptr %21, null, !mymd !100
  br i1 %cmp40, label %do.body, label %do.end, !llvm.loop !101, !mymd !103

do.end:                                           ; preds = %do.cond
  %22 = load ptr, ptr %iname.addr, align 8, !mymd !104
  %call42 = call ptr @strcpy(ptr noundef @ifname, ptr noundef %22) #5, !mymd !105
  %23 = load ptr, ptr @z_suffix, align 8, !mymd !106
  %call43 = call ptr @strcat(ptr noundef @ifname, ptr noundef %23) #5, !mymd !107
  %24 = load i32, ptr %z_suffix_errno, align 4, !mymd !108
  %call44 = call ptr @__errno_location() #6, !mymd !109
  store i32 %24, ptr %call44, align 4, !mymd !110
  call void @progerror(ptr noundef @ifname), !mymd !111
  store i32 1, ptr %retval, align 4, !mymd !112
  br label %return, !mymd !113

name_too_long:                                    ; preds = %if.then25, %if.then
  %25 = load ptr, ptr @stderr, align 8, !mymd !114
  %26 = load ptr, ptr @progname, align 8, !mymd !115
  %27 = load ptr, ptr %iname.addr, align 8, !mymd !116
  %call45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.160, ptr noundef %26, ptr noundef %27) #5, !mymd !117
  store i32 1, ptr @exit_code, align 4, !mymd !118
  store i32 1, ptr %retval, align 4, !mymd !119
  br label %return, !mymd !120

return:                                           ; preds = %name_too_long, %do.end, %if.then31, %if.then12, %if.then8, %if.then4
  %28 = load i32, ptr %retval, align 4, !mymd !121
  ret i32 %28, !mymd !122
}

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @do_stat(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
declare hidden ptr @get_suffix(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"11456"}
!7 = !{!"11457"}
!8 = !{!"11458"}
!9 = !{!"11459"}
!10 = !{!"11460"}
!11 = !{!"11461"}
!12 = !{!"11462"}
!13 = !{!"11463"}
!14 = !{!"11464"}
!15 = !{!"11465"}
!16 = !{!"11466"}
!17 = !{!"11467"}
!18 = !{!"11468"}
!19 = !{!"11469"}
!20 = !{!"11470"}
!21 = !{!"11471"}
!22 = !{!"11472"}
!23 = !{!"11473"}
!24 = !{!"11474"}
!25 = !{!"11475"}
!26 = !{!"11476"}
!27 = !{!"11477"}
!28 = !{!"11478"}
!29 = !{!"11479"}
!30 = !{!"11480"}
!31 = !{!"11481"}
!32 = !{!"11482"}
!33 = !{!"11483"}
!34 = !{!"11484"}
!35 = !{!"11485"}
!36 = !{!"11486"}
!37 = !{!"11487"}
!38 = !{!"11488"}
!39 = !{!"11489"}
!40 = !{!"11490"}
!41 = !{!"11491"}
!42 = !{!"11492"}
!43 = !{!"11493"}
!44 = !{!"11494"}
!45 = !{!"11495"}
!46 = !{!"11496"}
!47 = !{!"11497"}
!48 = !{!"11498"}
!49 = !{!"11499"}
!50 = !{!"11500"}
!51 = !{!"11501"}
!52 = !{!"11502"}
!53 = !{!"11503"}
!54 = !{!"11504"}
!55 = !{!"11505"}
!56 = !{!"11506"}
!57 = !{!"11507"}
!58 = !{!"11508"}
!59 = !{!"11509"}
!60 = !{!"11510"}
!61 = !{!"11511"}
!62 = !{!"11512"}
!63 = !{!"11513"}
!64 = !{!"11514"}
!65 = !{!"11515"}
!66 = !{!"11516"}
!67 = !{!"11517"}
!68 = !{!"11518"}
!69 = !{!"11519"}
!70 = !{!"11520"}
!71 = !{!"11521"}
!72 = !{!"11522"}
!73 = !{!"11523"}
!74 = !{!"11524"}
!75 = !{!"11525"}
!76 = !{!"11526"}
!77 = !{!"11527"}
!78 = !{!"11528"}
!79 = !{!"11529"}
!80 = !{!"11530"}
!81 = !{!"11531"}
!82 = !{!"11532"}
!83 = !{!"11533"}
!84 = !{!"11534"}
!85 = !{!"11535"}
!86 = !{!"11536"}
!87 = !{!"11537"}
!88 = !{!"11538"}
!89 = !{!"11539"}
!90 = !{!"11540"}
!91 = !{!"11541"}
!92 = !{!"11542"}
!93 = !{!"11543"}
!94 = !{!"11544"}
!95 = !{!"11545"}
!96 = !{!"11546"}
!97 = !{!"11547"}
!98 = !{!"11548"}
!99 = !{!"11549"}
!100 = !{!"11550"}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"11551"}
!104 = !{!"11552"}
!105 = !{!"11553"}
!106 = !{!"11554"}
!107 = !{!"11555"}
!108 = !{!"11556"}
!109 = !{!"11557"}
!110 = !{!"11558"}
!111 = !{!"11559"}
!112 = !{!"11560"}
!113 = !{!"11561"}
!114 = !{!"11562"}
!115 = !{!"11563"}
!116 = !{!"11564"}
!117 = !{!"11565"}
!118 = !{!"11566"}
!119 = !{!"11567"}
!120 = !{!"11568"}
!121 = !{!"11569"}
!122 = !{!"11570"}
