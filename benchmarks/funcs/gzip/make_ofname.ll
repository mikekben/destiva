; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external global ptr, align 8
@decompress = external dso_local global i32, align 4
@recursive = external dso_local global i32, align 4
@list = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@quiet = external dso_local global i32, align 4
@test = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@z_suffix = external dso_local global ptr, align 8
@z_len = external dso_local global i64, align 8
@ifname = external dso_local global [1024 x i8], align 16
@ofname = external dso_local global [1024 x i8], align 16
@save_orig_name = external dso_local global i32, align 4
@.str.160 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.161 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.162 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.169 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.170 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.171 = external hidden unnamed_addr constant [43 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local ptr @strlwr(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden i32 @make_ofname() #2 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %suff = alloca ptr, align 8, !mymd !7
  %call = call ptr @strcpy(ptr noundef @ofname, ptr noundef @ifname) #3, !mymd !8
  %call1 = call ptr @get_suffix(ptr noundef @ofname), !mymd !9
  store ptr %call1, ptr %suff, align 8, !mymd !10
  %0 = load i32, ptr @decompress, align 4, !mymd !11
  %tobool = icmp ne i32 %0, 0, !mymd !12
  br i1 %tobool, label %if.then, label %if.else31, !mymd !13

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %suff, align 8, !mymd !14
  %cmp = icmp eq ptr %1, null, !mymd !15
  br i1 %cmp, label %if.then2, label %if.end21, !mymd !16

if.then2:                                         ; preds = %if.then
  %2 = load i32, ptr @recursive, align 4, !mymd !17
  %tobool3 = icmp ne i32 %2, 0, !mymd !18
  br i1 %tobool3, label %if.end, label %land.lhs.true, !mymd !19

land.lhs.true:                                    ; preds = %if.then2
  %3 = load i32, ptr @list, align 4, !mymd !20
  %tobool4 = icmp ne i32 %3, 0, !mymd !21
  br i1 %tobool4, label %if.then6, label %lor.lhs.false, !mymd !22

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i32, ptr @test, align 4, !mymd !23
  %tobool5 = icmp ne i32 %4, 0, !mymd !24
  br i1 %tobool5, label %if.then6, label %if.end, !mymd !25

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, ptr %retval, align 4, !mymd !26
  br label %return, !mymd !27

if.end:                                           ; preds = %lor.lhs.false, %if.then2
  %5 = load i32, ptr @verbose, align 4, !mymd !28
  %tobool7 = icmp ne i32 %5, 0, !mymd !29
  br i1 %tobool7, label %if.then12, label %lor.lhs.false8, !mymd !30

lor.lhs.false8:                                   ; preds = %if.end
  %6 = load i32, ptr @recursive, align 4, !mymd !31
  %tobool9 = icmp ne i32 %6, 0, !mymd !32
  br i1 %tobool9, label %if.end20, label %land.lhs.true10, !mymd !33

land.lhs.true10:                                  ; preds = %lor.lhs.false8
  %7 = load i32, ptr @quiet, align 4, !mymd !34
  %tobool11 = icmp ne i32 %7, 0, !mymd !35
  br i1 %tobool11, label %if.end20, label %if.then12, !mymd !36

if.then12:                                        ; preds = %land.lhs.true10, %if.end
  %8 = load i32, ptr @quiet, align 4, !mymd !37
  %tobool13 = icmp ne i32 %8, 0, !mymd !38
  br i1 %tobool13, label %if.end16, label %if.then14, !mymd !39

if.then14:                                        ; preds = %if.then12
  %9 = load ptr, ptr @stderr, align 8, !mymd !40
  %10 = load ptr, ptr @progname, align 8, !mymd !41
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.169, ptr noundef %10, ptr noundef @ifname) #3, !mymd !42
  br label %if.end16, !mymd !43

if.end16:                                         ; preds = %if.then14, %if.then12
  %11 = load i32, ptr @exit_code, align 4, !mymd !44
  %cmp17 = icmp eq i32 %11, 0, !mymd !45
  br i1 %cmp17, label %if.then18, label %if.end19, !mymd !46

if.then18:                                        ; preds = %if.end16
  store i32 2, ptr @exit_code, align 4, !mymd !47
  br label %if.end19, !mymd !48

if.end19:                                         ; preds = %if.then18, %if.end16
  br label %if.end20, !mymd !49

if.end20:                                         ; preds = %if.end19, %land.lhs.true10, %lor.lhs.false8
  store i32 2, ptr %retval, align 4, !mymd !50
  br label %return, !mymd !51

if.end21:                                         ; preds = %if.then
  %12 = load ptr, ptr %suff, align 8, !mymd !52
  %call22 = call ptr @strlwr(ptr noundef %12), !mymd !53
  %13 = load ptr, ptr %suff, align 8, !mymd !54
  %call23 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.162) #4, !mymd !55
  %cmp24 = icmp eq i32 %call23, 0, !mymd !56
  br i1 %cmp24, label %if.then28, label %lor.lhs.false25, !mymd !57

lor.lhs.false25:                                  ; preds = %if.end21
  %14 = load ptr, ptr %suff, align 8, !mymd !58
  %call26 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.161) #4, !mymd !59
  %cmp27 = icmp eq i32 %call26, 0, !mymd !60
  br i1 %cmp27, label %if.then28, label %if.else, !mymd !61

if.then28:                                        ; preds = %lor.lhs.false25, %if.end21
  %15 = load ptr, ptr %suff, align 8, !mymd !62
  %call29 = call ptr @strcpy(ptr noundef %15, ptr noundef @.str.170) #3, !mymd !63
  br label %if.end30, !mymd !64

if.else:                                          ; preds = %lor.lhs.false25
  %16 = load ptr, ptr %suff, align 8, !mymd !65
  store i8 0, ptr %16, align 1, !mymd !66
  br label %if.end30, !mymd !67

if.end30:                                         ; preds = %if.else, %if.then28
  br label %if.end49, !mymd !68

if.else31:                                        ; preds = %entry
  %17 = load ptr, ptr %suff, align 8, !mymd !69
  %cmp32 = icmp ne ptr %17, null, !mymd !70
  br i1 %cmp32, label %if.then33, label %if.else42, !mymd !71

if.then33:                                        ; preds = %if.else31
  %18 = load i32, ptr @verbose, align 4, !mymd !72
  %tobool34 = icmp ne i32 %18, 0, !mymd !73
  br i1 %tobool34, label %if.then39, label %lor.lhs.false35, !mymd !74

lor.lhs.false35:                                  ; preds = %if.then33
  %19 = load i32, ptr @recursive, align 4, !mymd !75
  %tobool36 = icmp ne i32 %19, 0, !mymd !76
  br i1 %tobool36, label %if.end41, label %land.lhs.true37, !mymd !77

land.lhs.true37:                                  ; preds = %lor.lhs.false35
  %20 = load i32, ptr @quiet, align 4, !mymd !78
  %tobool38 = icmp ne i32 %20, 0, !mymd !79
  br i1 %tobool38, label %if.end41, label %if.then39, !mymd !80

if.then39:                                        ; preds = %land.lhs.true37, %if.then33
  %21 = load ptr, ptr @stderr, align 8, !mymd !81
  %22 = load ptr, ptr @progname, align 8, !mymd !82
  %23 = load ptr, ptr %suff, align 8, !mymd !83
  %call40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.171, ptr noundef %22, ptr noundef @ifname, ptr noundef %23) #3, !mymd !84
  br label %if.end41, !mymd !85

if.end41:                                         ; preds = %if.then39, %land.lhs.true37, %lor.lhs.false35
  store i32 2, ptr %retval, align 4, !mymd !86
  br label %return, !mymd !87

if.else42:                                        ; preds = %if.else31
  store i32 0, ptr @save_orig_name, align 4, !mymd !88
  %call43 = call i64 @strlen(ptr noundef @ofname) #4, !mymd !89
  %24 = load i64, ptr @z_len, align 8, !mymd !90
  %add = add i64 %call43, %24, !mymd !91
  %cmp44 = icmp ule i64 1024, %add, !mymd !92
  br i1 %cmp44, label %if.then45, label %if.end46, !mymd !93

if.then45:                                        ; preds = %if.else42
  br label %name_too_long, !mymd !94

if.end46:                                         ; preds = %if.else42
  %25 = load ptr, ptr @z_suffix, align 8, !mymd !95
  %call47 = call ptr @strcat(ptr noundef @ofname, ptr noundef %25) #3, !mymd !96
  br label %if.end48, !mymd !97

if.end48:                                         ; preds = %if.end46
  br label %if.end49, !mymd !98

if.end49:                                         ; preds = %if.end48, %if.end30
  store i32 0, ptr %retval, align 4, !mymd !99
  br label %return, !mymd !100

name_too_long:                                    ; preds = %if.then45
  %26 = load i32, ptr @quiet, align 4, !mymd !101
  %tobool50 = icmp ne i32 %26, 0, !mymd !102
  br i1 %tobool50, label %if.end53, label %if.then51, !mymd !103

if.then51:                                        ; preds = %name_too_long
  %27 = load ptr, ptr @stderr, align 8, !mymd !104
  %28 = load ptr, ptr @progname, align 8, !mymd !105
  %call52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.160, ptr noundef %28, ptr noundef @ifname) #3, !mymd !106
  br label %if.end53, !mymd !107

if.end53:                                         ; preds = %if.then51, %name_too_long
  %29 = load i32, ptr @exit_code, align 4, !mymd !108
  %cmp54 = icmp eq i32 %29, 0, !mymd !109
  br i1 %cmp54, label %if.then55, label %if.end56, !mymd !110

if.then55:                                        ; preds = %if.end53
  store i32 2, ptr @exit_code, align 4, !mymd !111
  br label %if.end56, !mymd !112

if.end56:                                         ; preds = %if.then55, %if.end53
  store i32 2, ptr %retval, align 4, !mymd !113
  br label %return, !mymd !114

return:                                           ; preds = %if.end56, %if.end49, %if.end41, %if.end20, %if.then6
  %30 = load i32, ptr %retval, align 4, !mymd !115
  ret i32 %30, !mymd !116
}

; Function Attrs: noinline nounwind uwtable
declare hidden ptr @get_suffix(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"11723"}
!7 = !{!"11724"}
!8 = !{!"11725"}
!9 = !{!"11726"}
!10 = !{!"11727"}
!11 = !{!"11728"}
!12 = !{!"11729"}
!13 = !{!"11730"}
!14 = !{!"11731"}
!15 = !{!"11732"}
!16 = !{!"11733"}
!17 = !{!"11734"}
!18 = !{!"11735"}
!19 = !{!"11736"}
!20 = !{!"11737"}
!21 = !{!"11738"}
!22 = !{!"11739"}
!23 = !{!"11740"}
!24 = !{!"11741"}
!25 = !{!"11742"}
!26 = !{!"11743"}
!27 = !{!"11744"}
!28 = !{!"11745"}
!29 = !{!"11746"}
!30 = !{!"11747"}
!31 = !{!"11748"}
!32 = !{!"11749"}
!33 = !{!"11750"}
!34 = !{!"11751"}
!35 = !{!"11752"}
!36 = !{!"11753"}
!37 = !{!"11754"}
!38 = !{!"11755"}
!39 = !{!"11756"}
!40 = !{!"11757"}
!41 = !{!"11758"}
!42 = !{!"11759"}
!43 = !{!"11760"}
!44 = !{!"11761"}
!45 = !{!"11762"}
!46 = !{!"11763"}
!47 = !{!"11764"}
!48 = !{!"11765"}
!49 = !{!"11766"}
!50 = !{!"11767"}
!51 = !{!"11768"}
!52 = !{!"11769"}
!53 = !{!"11770"}
!54 = !{!"11771"}
!55 = !{!"11772"}
!56 = !{!"11773"}
!57 = !{!"11774"}
!58 = !{!"11775"}
!59 = !{!"11776"}
!60 = !{!"11777"}
!61 = !{!"11778"}
!62 = !{!"11779"}
!63 = !{!"11780"}
!64 = !{!"11781"}
!65 = !{!"11782"}
!66 = !{!"11783"}
!67 = !{!"11784"}
!68 = !{!"11785"}
!69 = !{!"11786"}
!70 = !{!"11787"}
!71 = !{!"11788"}
!72 = !{!"11789"}
!73 = !{!"11790"}
!74 = !{!"11791"}
!75 = !{!"11792"}
!76 = !{!"11793"}
!77 = !{!"11794"}
!78 = !{!"11795"}
!79 = !{!"11796"}
!80 = !{!"11797"}
!81 = !{!"11798"}
!82 = !{!"11799"}
!83 = !{!"11800"}
!84 = !{!"11801"}
!85 = !{!"11802"}
!86 = !{!"11803"}
!87 = !{!"11804"}
!88 = !{!"11805"}
!89 = !{!"11806"}
!90 = !{!"11807"}
!91 = !{!"11808"}
!92 = !{!"11809"}
!93 = !{!"11810"}
!94 = !{!"11811"}
!95 = !{!"11812"}
!96 = !{!"11813"}
!97 = !{!"11814"}
!98 = !{!"11815"}
!99 = !{!"11816"}
!100 = !{!"11817"}
!101 = !{!"11818"}
!102 = !{!"11819"}
!103 = !{!"11820"}
!104 = !{!"11821"}
!105 = !{!"11822"}
!106 = !{!"11823"}
!107 = !{!"11824"}
!108 = !{!"11825"}
!109 = !{!"11826"}
!110 = !{!"11827"}
!111 = !{!"11828"}
!112 = !{!"11829"}
!113 = !{!"11830"}
!114 = !{!"11831"}
!115 = !{!"11832"}
!116 = !{!"11833"}
