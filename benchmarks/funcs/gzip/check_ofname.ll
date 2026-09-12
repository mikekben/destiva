; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@.str.8 = external hidden unnamed_addr constant [1 x i8], align 1
@decompress = external dso_local global i32, align 4
@force = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@foreground = external dso_local global i32, align 4
@ifname = external dso_local global [1024 x i8], align 16
@ofname = external dso_local global [1024 x i8], align 16
@istat = external dso_local global %struct.stat, align 8
@stdin = external global ptr, align 8
@.str.128 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.173 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.174 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.175 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.176 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.177 = external hidden unnamed_addr constant [18 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #2

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @xunlink(ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @yesno() #3

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #1

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden void @progerror(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden i32 @check_ofname() #3 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %ostat = alloca %struct.stat, align 8, !mymd !7
  %ok = alloca i32, align 4, !mymd !8
  %call = call ptr @__errno_location() #5, !mymd !9
  store i32 0, ptr %call, align 4, !mymd !10
  br label %while.cond, !mymd !11

while.cond:                                       ; preds = %if.end, %entry
  %call1 = call i32 @lstat(ptr noundef @ofname, ptr noundef %ostat) #6, !mymd !12
  %cmp = icmp ne i32 %call1, 0, !mymd !13
  br i1 %cmp, label %while.body, label %while.end, !mymd !14

while.body:                                       ; preds = %while.cond
  %call2 = call ptr @__errno_location() #5, !mymd !15
  %0 = load i32, ptr %call2, align 4, !mymd !16
  %cmp3 = icmp ne i32 %0, 36, !mymd !17
  br i1 %cmp3, label %if.then, label %if.end, !mymd !18

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !mymd !19
  br label %return, !mymd !20

if.end:                                           ; preds = %while.body
  call void @shorten_name(ptr noundef @ofname), !mymd !21
  br label %while.cond, !llvm.loop !22, !mymd !24

while.end:                                        ; preds = %while.cond
  %1 = load i32, ptr @decompress, align 4, !mymd !25
  %tobool = icmp ne i32 %1, 0, !mymd !26
  br i1 %tobool, label %if.end11, label %land.lhs.true, !mymd !27

land.lhs.true:                                    ; preds = %while.end
  %call4 = call i32 @name_too_long(ptr noundef @ofname, ptr noundef %ostat), !mymd !28
  %tobool5 = icmp ne i32 %call4, 0, !mymd !29
  br i1 %tobool5, label %if.then6, label %if.end11, !mymd !30

if.then6:                                         ; preds = %land.lhs.true
  call void @shorten_name(ptr noundef @ofname), !mymd !31
  %call7 = call i32 @lstat(ptr noundef @ofname, ptr noundef %ostat) #6, !mymd !32
  %cmp8 = icmp ne i32 %call7, 0, !mymd !33
  br i1 %cmp8, label %if.then9, label %if.end10, !mymd !34

if.then9:                                         ; preds = %if.then6
  store i32 0, ptr %retval, align 4, !mymd !35
  br label %return, !mymd !36

if.end10:                                         ; preds = %if.then6
  br label %if.end11, !mymd !37

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %while.end
  %call12 = call i32 @same_file(ptr noundef @istat, ptr noundef %ostat), !mymd !38
  %tobool13 = icmp ne i32 %call12, 0, !mymd !39
  br i1 %tobool13, label %if.then14, label %if.end22, !mymd !40

if.then14:                                        ; preds = %if.end11
  %call15 = call i32 @strcmp(ptr noundef @ifname, ptr noundef @ofname) #7, !mymd !41
  %cmp16 = icmp eq i32 %call15, 0, !mymd !42
  br i1 %cmp16, label %if.then17, label %if.else, !mymd !43

if.then17:                                        ; preds = %if.then14
  %2 = load ptr, ptr @stderr, align 8, !mymd !44
  %3 = load ptr, ptr @progname, align 8, !mymd !45
  %4 = load i32, ptr @decompress, align 4, !mymd !46
  %tobool18 = icmp ne i32 %4, 0, !mymd !47
  %5 = zext i1 %tobool18 to i64, !mymd !48
  %cond = select i1 %tobool18, ptr @.str.128, ptr @.str.8, !mymd !49
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.173, ptr noundef %3, ptr noundef @ifname, ptr noundef %cond) #6, !mymd !50
  br label %if.end21, !mymd !51

if.else:                                          ; preds = %if.then14
  %6 = load ptr, ptr @stderr, align 8, !mymd !52
  %7 = load ptr, ptr @progname, align 8, !mymd !53
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.174, ptr noundef %7, ptr noundef @ifname, ptr noundef @ofname) #6, !mymd !54
  br label %if.end21, !mymd !55

if.end21:                                         ; preds = %if.else, %if.then17
  store i32 1, ptr @exit_code, align 4, !mymd !56
  store i32 1, ptr %retval, align 4, !mymd !57
  br label %return, !mymd !58

if.end22:                                         ; preds = %if.end11
  %8 = load i32, ptr @force, align 4, !mymd !59
  %tobool23 = icmp ne i32 %8, 0, !mymd !60
  br i1 %tobool23, label %if.end43, label %if.then24, !mymd !61

if.then24:                                        ; preds = %if.end22
  store i32 0, ptr %ok, align 4, !mymd !62
  %9 = load ptr, ptr @stderr, align 8, !mymd !63
  %10 = load ptr, ptr @progname, align 8, !mymd !64
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.175, ptr noundef %10, ptr noundef @ofname) #6, !mymd !65
  %11 = load i32, ptr @foreground, align 4, !mymd !66
  %tobool26 = icmp ne i32 %11, 0, !mymd !67
  br i1 %tobool26, label %land.lhs.true27, label %if.end35, !mymd !68

land.lhs.true27:                                  ; preds = %if.then24
  %12 = load ptr, ptr @stdin, align 8, !mymd !69
  %call28 = call i32 @fileno(ptr noundef %12) #6, !mymd !70
  %call29 = call i32 @isatty(i32 noundef %call28) #6, !mymd !71
  %tobool30 = icmp ne i32 %call29, 0, !mymd !72
  br i1 %tobool30, label %if.then31, label %if.end35, !mymd !73

if.then31:                                        ; preds = %land.lhs.true27
  %13 = load ptr, ptr @stderr, align 8, !mymd !74
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.176) #6, !mymd !75
  %14 = load ptr, ptr @stderr, align 8, !mymd !76
  %call33 = call i32 @fflush(ptr noundef %14), !mymd !77
  %call34 = call i32 @yesno(), !mymd !78
  store i32 %call34, ptr %ok, align 4, !mymd !79
  br label %if.end35, !mymd !80

if.end35:                                         ; preds = %if.then31, %land.lhs.true27, %if.then24
  %15 = load i32, ptr %ok, align 4, !mymd !81
  %tobool36 = icmp ne i32 %15, 0, !mymd !82
  br i1 %tobool36, label %if.end42, label %if.then37, !mymd !83

if.then37:                                        ; preds = %if.end35
  %16 = load ptr, ptr @stderr, align 8, !mymd !84
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.177) #6, !mymd !85
  %17 = load i32, ptr @exit_code, align 4, !mymd !86
  %cmp39 = icmp eq i32 %17, 0, !mymd !87
  br i1 %cmp39, label %if.then40, label %if.end41, !mymd !88

if.then40:                                        ; preds = %if.then37
  store i32 2, ptr @exit_code, align 4, !mymd !89
  br label %if.end41, !mymd !90

if.end41:                                         ; preds = %if.then40, %if.then37
  store i32 1, ptr %retval, align 4, !mymd !91
  br label %return, !mymd !92

if.end42:                                         ; preds = %if.end35
  br label %if.end43, !mymd !93

if.end43:                                         ; preds = %if.end42, %if.end22
  %call44 = call i32 @xunlink(ptr noundef @ofname), !mymd !94
  %tobool45 = icmp ne i32 %call44, 0, !mymd !95
  br i1 %tobool45, label %if.then46, label %if.end47, !mymd !96

if.then46:                                        ; preds = %if.end43
  call void @progerror(ptr noundef @ofname), !mymd !97
  store i32 1, ptr %retval, align 4, !mymd !98
  br label %return, !mymd !99

if.end47:                                         ; preds = %if.end43
  store i32 0, ptr %retval, align 4, !mymd !100
  br label %return, !mymd !101

return:                                           ; preds = %if.end47, %if.then46, %if.end41, %if.end21, %if.then9, %if.then
  %18 = load i32, ptr %retval, align 4, !mymd !102
  ret i32 %18, !mymd !103
}

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @name_too_long(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
declare hidden void @shorten_name(ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @same_file(ptr noundef, ptr noundef) #3

declare i32 @fflush(ptr noundef) #4

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"12134"}
!7 = !{!"12135"}
!8 = !{!"12136"}
!9 = !{!"12137"}
!10 = !{!"12138"}
!11 = !{!"12139"}
!12 = !{!"12140"}
!13 = !{!"12141"}
!14 = !{!"12142"}
!15 = !{!"12143"}
!16 = !{!"12144"}
!17 = !{!"12145"}
!18 = !{!"12146"}
!19 = !{!"12147"}
!20 = !{!"12148"}
!21 = !{!"12149"}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"12150"}
!25 = !{!"12151"}
!26 = !{!"12152"}
!27 = !{!"12153"}
!28 = !{!"12154"}
!29 = !{!"12155"}
!30 = !{!"12156"}
!31 = !{!"12157"}
!32 = !{!"12158"}
!33 = !{!"12159"}
!34 = !{!"12160"}
!35 = !{!"12161"}
!36 = !{!"12162"}
!37 = !{!"12163"}
!38 = !{!"12164"}
!39 = !{!"12165"}
!40 = !{!"12166"}
!41 = !{!"12167"}
!42 = !{!"12168"}
!43 = !{!"12169"}
!44 = !{!"12170"}
!45 = !{!"12171"}
!46 = !{!"12172"}
!47 = !{!"12173"}
!48 = !{!"12174"}
!49 = !{!"12175"}
!50 = !{!"12176"}
!51 = !{!"12177"}
!52 = !{!"12178"}
!53 = !{!"12179"}
!54 = !{!"12180"}
!55 = !{!"12181"}
!56 = !{!"12182"}
!57 = !{!"12183"}
!58 = !{!"12184"}
!59 = !{!"12185"}
!60 = !{!"12186"}
!61 = !{!"12187"}
!62 = !{!"12188"}
!63 = !{!"12189"}
!64 = !{!"12190"}
!65 = !{!"12191"}
!66 = !{!"12192"}
!67 = !{!"12193"}
!68 = !{!"12194"}
!69 = !{!"12195"}
!70 = !{!"12196"}
!71 = !{!"12197"}
!72 = !{!"12198"}
!73 = !{!"12199"}
!74 = !{!"12200"}
!75 = !{!"12201"}
!76 = !{!"12202"}
!77 = !{!"12203"}
!78 = !{!"12204"}
!79 = !{!"12205"}
!80 = !{!"12206"}
!81 = !{!"12207"}
!82 = !{!"12208"}
!83 = !{!"12209"}
!84 = !{!"12210"}
!85 = !{!"12211"}
!86 = !{!"12212"}
!87 = !{!"12213"}
!88 = !{!"12214"}
!89 = !{!"12215"}
!90 = !{!"12216"}
!91 = !{!"12217"}
!92 = !{!"12218"}
!93 = !{!"12219"}
!94 = !{!"12220"}
!95 = !{!"12221"}
!96 = !{!"12222"}
!97 = !{!"12223"}
!98 = !{!"12224"}
!99 = !{!"12225"}
!100 = !{!"12226"}
!101 = !{!"12227"}
!102 = !{!"12228"}
!103 = !{!"12229"}
