; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utimbuf = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@quiet = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@ofname = external dso_local global [1024 x i8], align 16
@.str.133 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: cold
declare void @perror(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden void @reset_times(ptr noundef %name, ptr noundef %statb) #3 {
entry:
  %name.addr = alloca ptr, align 8, !mymd !6
  %statb.addr = alloca ptr, align 8, !mymd !7
  %timep = alloca %struct.utimbuf, align 8, !mymd !8
  %e = alloca i32, align 4, !mymd !9
  store ptr %name, ptr %name.addr, align 8, !mymd !10
  store ptr %statb, ptr %statb.addr, align 8, !mymd !11
  %0 = load ptr, ptr %statb.addr, align 8, !mymd !12
  %st_atim = getelementptr inbounds nuw %struct.stat, ptr %0, i32 0, i32 11, !mymd !13
  %tv_sec = getelementptr inbounds nuw %struct.timespec, ptr %st_atim, i32 0, i32 0, !mymd !14
  %1 = load i64, ptr %tv_sec, align 8, !mymd !15
  %actime = getelementptr inbounds nuw %struct.utimbuf, ptr %timep, i32 0, i32 0, !mymd !16
  store i64 %1, ptr %actime, align 8, !mymd !17
  %2 = load ptr, ptr %statb.addr, align 8, !mymd !18
  %st_mtim = getelementptr inbounds nuw %struct.stat, ptr %2, i32 0, i32 12, !mymd !19
  %tv_sec1 = getelementptr inbounds nuw %struct.timespec, ptr %st_mtim, i32 0, i32 0, !mymd !20
  %3 = load i64, ptr %tv_sec1, align 8, !mymd !21
  %modtime = getelementptr inbounds nuw %struct.utimbuf, ptr %timep, i32 0, i32 1, !mymd !22
  store i64 %3, ptr %modtime, align 8, !mymd !23
  %4 = load ptr, ptr %name.addr, align 8, !mymd !24
  %call = call i32 @utime(ptr noundef %4, ptr noundef %timep) #4, !mymd !25
  %tobool = icmp ne i32 %call, 0, !mymd !26
  br i1 %tobool, label %land.lhs.true, label %if.end13, !mymd !27

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %statb.addr, align 8, !mymd !28
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 3, !mymd !29
  %6 = load i32, ptr %st_mode, align 8, !mymd !30
  %and = and i32 %6, 61440, !mymd !31
  %cmp = icmp eq i32 %and, 16384, !mymd !32
  br i1 %cmp, label %if.end13, label %if.then, !mymd !33

if.then:                                          ; preds = %land.lhs.true
  %call2 = call ptr @__errno_location() #5, !mymd !34
  %7 = load i32, ptr %call2, align 4, !mymd !35
  store i32 %7, ptr %e, align 4, !mymd !36
  %8 = load i32, ptr @quiet, align 4, !mymd !37
  %tobool3 = icmp ne i32 %8, 0, !mymd !38
  br i1 %tobool3, label %if.end, label %if.then4, !mymd !39

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr @stderr, align 8, !mymd !40
  %10 = load ptr, ptr @progname, align 8, !mymd !41
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.133, ptr noundef %10) #4, !mymd !42
  br label %if.end, !mymd !43

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i32, ptr @exit_code, align 4, !mymd !44
  %cmp6 = icmp eq i32 %11, 0, !mymd !45
  br i1 %cmp6, label %if.then7, label %if.end8, !mymd !46

if.then7:                                         ; preds = %if.end
  store i32 2, ptr @exit_code, align 4, !mymd !47
  br label %if.end8, !mymd !48

if.end8:                                          ; preds = %if.then7, %if.end
  %12 = load i32, ptr @quiet, align 4, !mymd !49
  %tobool9 = icmp ne i32 %12, 0, !mymd !50
  br i1 %tobool9, label %if.end12, label %if.then10, !mymd !51

if.then10:                                        ; preds = %if.end8
  %13 = load i32, ptr %e, align 4, !mymd !52
  %call11 = call ptr @__errno_location() #5, !mymd !53
  store i32 %13, ptr %call11, align 4, !mymd !54
  call void @perror(ptr noundef @ofname) #6, !mymd !55
  br label %if.end12, !mymd !56

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %if.end13, !mymd !57

if.end13:                                         ; preds = %if.end12, %land.lhs.true, %entry
  ret void, !mymd !58
}

; Function Attrs: nounwind
declare i32 @utime(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"11670"}
!7 = !{!"11671"}
!8 = !{!"11672"}
!9 = !{!"11673"}
!10 = !{!"11674"}
!11 = !{!"11675"}
!12 = !{!"11676"}
!13 = !{!"11677"}
!14 = !{!"11678"}
!15 = !{!"11679"}
!16 = !{!"11680"}
!17 = !{!"11681"}
!18 = !{!"11682"}
!19 = !{!"11683"}
!20 = !{!"11684"}
!21 = !{!"11685"}
!22 = !{!"11686"}
!23 = !{!"11687"}
!24 = !{!"11688"}
!25 = !{!"11689"}
!26 = !{!"11690"}
!27 = !{!"11691"}
!28 = !{!"11692"}
!29 = !{!"11693"}
!30 = !{!"11694"}
!31 = !{!"11695"}
!32 = !{!"11696"}
!33 = !{!"11697"}
!34 = !{!"11698"}
!35 = !{!"11699"}
!36 = !{!"11700"}
!37 = !{!"11701"}
!38 = !{!"11702"}
!39 = !{!"11703"}
!40 = !{!"11704"}
!41 = !{!"11705"}
!42 = !{!"11706"}
!43 = !{!"11707"}
!44 = !{!"11708"}
!45 = !{!"11709"}
!46 = !{!"11710"}
!47 = !{!"11711"}
!48 = !{!"11712"}
!49 = !{!"11713"}
!50 = !{!"11714"}
!51 = !{!"11715"}
!52 = !{!"11716"}
!53 = !{!"11717"}
!54 = !{!"11718"}
!55 = !{!"11719"}
!56 = !{!"11720"}
!57 = !{!"11721"}
!58 = !{!"11722"}
