; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@decompress = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@quiet = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@remove_ofname = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@ofd = external dso_local global i32, align 4
@ifname = external dso_local global [1024 x i8], align 16
@ofname = external dso_local global [1024 x i8], align 16
@time_stamp = external dso_local global i64, align 8
@.str.133 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.181 = external hidden unnamed_addr constant [25 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @xunlink(ptr noundef) #2

; Function Attrs: cold
declare void @perror(ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
declare hidden void @reset_times(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden void @copy_stat(ptr noundef %ifstat) #2 {
entry:
  %ifstat.addr = alloca ptr, align 8, !mymd !6
  %e = alloca i32, align 4, !mymd !7
  %e28 = alloca i32, align 4, !mymd !8
  store ptr %ifstat, ptr %ifstat.addr, align 8, !mymd !9
  %0 = load i32, ptr @decompress, align 4, !mymd !10
  %tobool = icmp ne i32 %0, 0, !mymd !11
  br i1 %tobool, label %land.lhs.true, label %if.end7, !mymd !12

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr @time_stamp, align 8, !mymd !13
  %cmp = icmp ne i64 %1, 0, !mymd !14
  br i1 %cmp, label %land.lhs.true1, label %if.end7, !mymd !15

land.lhs.true1:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %ifstat.addr, align 8, !mymd !16
  %st_mtim = getelementptr inbounds nuw %struct.stat, ptr %2, i32 0, i32 12, !mymd !17
  %tv_sec = getelementptr inbounds nuw %struct.timespec, ptr %st_mtim, i32 0, i32 0, !mymd !18
  %3 = load i64, ptr %tv_sec, align 8, !mymd !19
  %4 = load i64, ptr @time_stamp, align 8, !mymd !20
  %cmp2 = icmp ne i64 %3, %4, !mymd !21
  br i1 %cmp2, label %if.then, label %if.end7, !mymd !22

if.then:                                          ; preds = %land.lhs.true1
  %5 = load i64, ptr @time_stamp, align 8, !mymd !23
  %6 = load ptr, ptr %ifstat.addr, align 8, !mymd !24
  %st_mtim3 = getelementptr inbounds nuw %struct.stat, ptr %6, i32 0, i32 12, !mymd !25
  %tv_sec4 = getelementptr inbounds nuw %struct.timespec, ptr %st_mtim3, i32 0, i32 0, !mymd !26
  store i64 %5, ptr %tv_sec4, align 8, !mymd !27
  %7 = load i32, ptr @verbose, align 4, !mymd !28
  %cmp5 = icmp sgt i32 %7, 1, !mymd !29
  br i1 %cmp5, label %if.then6, label %if.end, !mymd !30

if.then6:                                         ; preds = %if.then
  %8 = load ptr, ptr @stderr, align 8, !mymd !31
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.181, ptr noundef @ofname) #4, !mymd !32
  br label %if.end, !mymd !33

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7, !mymd !34

if.end7:                                          ; preds = %if.end, %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %ifstat.addr, align 8, !mymd !35
  call void @reset_times(ptr noundef @ofname, ptr noundef %9), !mymd !36
  %10 = load i32, ptr @ofd, align 4, !mymd !37
  %11 = load ptr, ptr %ifstat.addr, align 8, !mymd !38
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %11, i32 0, i32 3, !mymd !39
  %12 = load i32, ptr %st_mode, align 8, !mymd !40
  %and = and i32 %12, 4095, !mymd !41
  %call8 = call i32 @fchmod(i32 noundef %10, i32 noundef %and) #4, !mymd !42
  %tobool9 = icmp ne i32 %call8, 0, !mymd !43
  br i1 %tobool9, label %if.then10, label %if.end23, !mymd !44

if.then10:                                        ; preds = %if.end7
  %call11 = call ptr @__errno_location() #5, !mymd !45
  %13 = load i32, ptr %call11, align 4, !mymd !46
  store i32 %13, ptr %e, align 4, !mymd !47
  %14 = load i32, ptr @quiet, align 4, !mymd !48
  %tobool12 = icmp ne i32 %14, 0, !mymd !49
  br i1 %tobool12, label %if.end15, label %if.then13, !mymd !50

if.then13:                                        ; preds = %if.then10
  %15 = load ptr, ptr @stderr, align 8, !mymd !51
  %16 = load ptr, ptr @progname, align 8, !mymd !52
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.133, ptr noundef %16) #4, !mymd !53
  br label %if.end15, !mymd !54

if.end15:                                         ; preds = %if.then13, %if.then10
  %17 = load i32, ptr @exit_code, align 4, !mymd !55
  %cmp16 = icmp eq i32 %17, 0, !mymd !56
  br i1 %cmp16, label %if.then17, label %if.end18, !mymd !57

if.then17:                                        ; preds = %if.end15
  store i32 2, ptr @exit_code, align 4, !mymd !58
  br label %if.end18, !mymd !59

if.end18:                                         ; preds = %if.then17, %if.end15
  %18 = load i32, ptr @quiet, align 4, !mymd !60
  %tobool19 = icmp ne i32 %18, 0, !mymd !61
  br i1 %tobool19, label %if.end22, label %if.then20, !mymd !62

if.then20:                                        ; preds = %if.end18
  %19 = load i32, ptr %e, align 4, !mymd !63
  %call21 = call ptr @__errno_location() #5, !mymd !64
  store i32 %19, ptr %call21, align 4, !mymd !65
  call void @perror(ptr noundef @ofname) #6, !mymd !66
  br label %if.end22, !mymd !67

if.end22:                                         ; preds = %if.then20, %if.end18
  br label %if.end23, !mymd !68

if.end23:                                         ; preds = %if.end22, %if.end7
  %20 = load i32, ptr @ofd, align 4, !mymd !69
  %21 = load ptr, ptr %ifstat.addr, align 8, !mymd !70
  %st_uid = getelementptr inbounds nuw %struct.stat, ptr %21, i32 0, i32 4, !mymd !71
  %22 = load i32, ptr %st_uid, align 4, !mymd !72
  %23 = load ptr, ptr %ifstat.addr, align 8, !mymd !73
  %st_gid = getelementptr inbounds nuw %struct.stat, ptr %23, i32 0, i32 5, !mymd !74
  %24 = load i32, ptr %st_gid, align 8, !mymd !75
  %call24 = call i32 @fchown(i32 noundef %20, i32 noundef %22, i32 noundef %24) #4, !mymd !76
  store i32 0, ptr @remove_ofname, align 4, !mymd !77
  %call25 = call i32 @xunlink(ptr noundef @ifname), !mymd !78
  %tobool26 = icmp ne i32 %call25, 0, !mymd !79
  br i1 %tobool26, label %if.then27, label %if.end41, !mymd !80

if.then27:                                        ; preds = %if.end23
  %call29 = call ptr @__errno_location() #5, !mymd !81
  %25 = load i32, ptr %call29, align 4, !mymd !82
  store i32 %25, ptr %e28, align 4, !mymd !83
  %26 = load i32, ptr @quiet, align 4, !mymd !84
  %tobool30 = icmp ne i32 %26, 0, !mymd !85
  br i1 %tobool30, label %if.end33, label %if.then31, !mymd !86

if.then31:                                        ; preds = %if.then27
  %27 = load ptr, ptr @stderr, align 8, !mymd !87
  %28 = load ptr, ptr @progname, align 8, !mymd !88
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.133, ptr noundef %28) #4, !mymd !89
  br label %if.end33, !mymd !90

if.end33:                                         ; preds = %if.then31, %if.then27
  %29 = load i32, ptr @exit_code, align 4, !mymd !91
  %cmp34 = icmp eq i32 %29, 0, !mymd !92
  br i1 %cmp34, label %if.then35, label %if.end36, !mymd !93

if.then35:                                        ; preds = %if.end33
  store i32 2, ptr @exit_code, align 4, !mymd !94
  br label %if.end36, !mymd !95

if.end36:                                         ; preds = %if.then35, %if.end33
  %30 = load i32, ptr @quiet, align 4, !mymd !96
  %tobool37 = icmp ne i32 %30, 0, !mymd !97
  br i1 %tobool37, label %if.end40, label %if.then38, !mymd !98

if.then38:                                        ; preds = %if.end36
  %31 = load i32, ptr %e28, align 4, !mymd !99
  %call39 = call ptr @__errno_location() #5, !mymd !100
  store i32 %31, ptr %call39, align 4, !mymd !101
  call void @perror(ptr noundef @ifname) #6, !mymd !102
  br label %if.end40, !mymd !103

if.end40:                                         ; preds = %if.then38, %if.end36
  br label %if.end41, !mymd !104

if.end41:                                         ; preds = %if.end40, %if.end23
  ret void, !mymd !105
}

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) #0

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"11909"}
!7 = !{!"11910"}
!8 = !{!"11911"}
!9 = !{!"11912"}
!10 = !{!"11913"}
!11 = !{!"11914"}
!12 = !{!"11915"}
!13 = !{!"11916"}
!14 = !{!"11917"}
!15 = !{!"11918"}
!16 = !{!"11919"}
!17 = !{!"11920"}
!18 = !{!"11921"}
!19 = !{!"11922"}
!20 = !{!"11923"}
!21 = !{!"11924"}
!22 = !{!"11925"}
!23 = !{!"11926"}
!24 = !{!"11927"}
!25 = !{!"11928"}
!26 = !{!"11929"}
!27 = !{!"11930"}
!28 = !{!"11931"}
!29 = !{!"11932"}
!30 = !{!"11933"}
!31 = !{!"11934"}
!32 = !{!"11935"}
!33 = !{!"11936"}
!34 = !{!"11937"}
!35 = !{!"11938"}
!36 = !{!"11939"}
!37 = !{!"11940"}
!38 = !{!"11941"}
!39 = !{!"11942"}
!40 = !{!"11943"}
!41 = !{!"11944"}
!42 = !{!"11945"}
!43 = !{!"11946"}
!44 = !{!"11947"}
!45 = !{!"11948"}
!46 = !{!"11949"}
!47 = !{!"11950"}
!48 = !{!"11951"}
!49 = !{!"11952"}
!50 = !{!"11953"}
!51 = !{!"11954"}
!52 = !{!"11955"}
!53 = !{!"11956"}
!54 = !{!"11957"}
!55 = !{!"11958"}
!56 = !{!"11959"}
!57 = !{!"11960"}
!58 = !{!"11961"}
!59 = !{!"11962"}
!60 = !{!"11963"}
!61 = !{!"11964"}
!62 = !{!"11965"}
!63 = !{!"11966"}
!64 = !{!"11967"}
!65 = !{!"11968"}
!66 = !{!"11969"}
!67 = !{!"11970"}
!68 = !{!"11971"}
!69 = !{!"11972"}
!70 = !{!"11973"}
!71 = !{!"11974"}
!72 = !{!"11975"}
!73 = !{!"11976"}
!74 = !{!"11977"}
!75 = !{!"11978"}
!76 = !{!"11979"}
!77 = !{!"11980"}
!78 = !{!"11981"}
!79 = !{!"11982"}
!80 = !{!"11983"}
!81 = !{!"11984"}
!82 = !{!"11985"}
!83 = !{!"11986"}
!84 = !{!"11987"}
!85 = !{!"11988"}
!86 = !{!"11989"}
!87 = !{!"11990"}
!88 = !{!"11991"}
!89 = !{!"11992"}
!90 = !{!"11993"}
!91 = !{!"11994"}
!92 = !{!"11995"}
!93 = !{!"11996"}
!94 = !{!"11997"}
!95 = !{!"11998"}
!96 = !{!"11999"}
!97 = !{!"12000"}
!98 = !{!"12001"}
!99 = !{!"12002"}
!100 = !{!"12003"}
!101 = !{!"12004"}
!102 = !{!"12005"}
!103 = !{!"12006"}
!104 = !{!"12007"}
!105 = !{!"12008"}
