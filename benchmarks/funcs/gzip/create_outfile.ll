; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@ascii = external dso_local global i32, align 4
@decompress = external dso_local global i32, align 4
@quiet = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@remove_ofname = external dso_local global i32, align 4
@progname = external dso_local global ptr, align 8
@ifd = external dso_local global i32, align 4
@ofd = external dso_local global i32, align 4
@ofname = external dso_local global [1024 x i8], align 16
@.str.172 = external hidden unnamed_addr constant [33 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local i32 @xunlink(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @progerror(ptr noundef) #1

declare i32 @open(ptr noundef, i32 noundef, ...) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define hidden i32 @create_outfile() #1 {
entry:
  %retval = alloca i32, align 4, !mymd !6
  %ostat = alloca %struct.stat, align 8, !mymd !7
  %flags = alloca i32, align 4, !mymd !8
  store i32 193, ptr %flags, align 4, !mymd !9
  %0 = load i32, ptr @ascii, align 4, !mymd !10
  %tobool = icmp ne i32 %0, 0, !mymd !11
  br i1 %tobool, label %land.lhs.true, label %if.end, !mymd !12

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @decompress, align 4, !mymd !13
  %tobool1 = icmp ne i32 %1, 0, !mymd !14
  br i1 %tobool1, label %if.then, label %if.end, !mymd !15

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %flags, align 4, !mymd !16
  %and = and i32 %2, -1, !mymd !17
  store i32 %and, ptr %flags, align 4, !mymd !18
  br label %if.end, !mymd !19

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  br label %for.cond, !mymd !20

for.cond:                                         ; preds = %if.end30, %if.end
  %call = call i32 @check_ofname(), !mymd !21
  %cmp = icmp ne i32 %call, 0, !mymd !22
  br i1 %cmp, label %if.then2, label %if.end4, !mymd !23

if.then2:                                         ; preds = %for.cond
  %3 = load i32, ptr @ifd, align 4, !mymd !24
  %call3 = call i32 @close(i32 noundef %3), !mymd !25
  store i32 1, ptr %retval, align 4, !mymd !26
  br label %return, !mymd !27

if.end4:                                          ; preds = %for.cond
  store i32 1, ptr @remove_ofname, align 4, !mymd !28
  %4 = load i32, ptr %flags, align 4, !mymd !29
  %call5 = call i32 (ptr, i32, ...) @open(ptr noundef @ofname, i32 noundef %4, i32 noundef 384), !mymd !30
  store i32 %call5, ptr @ofd, align 4, !mymd !31
  %5 = load i32, ptr @ofd, align 4, !mymd !32
  %cmp6 = icmp eq i32 %5, -1, !mymd !33
  br i1 %cmp6, label %if.then7, label %if.end9, !mymd !34

if.then7:                                         ; preds = %if.end4
  call void @progerror(ptr noundef @ofname), !mymd !35
  %6 = load i32, ptr @ifd, align 4, !mymd !36
  %call8 = call i32 @close(i32 noundef %6), !mymd !37
  store i32 1, ptr %retval, align 4, !mymd !38
  br label %return, !mymd !39

if.end9:                                          ; preds = %if.end4
  %7 = load i32, ptr @ofd, align 4, !mymd !40
  %call10 = call i32 @fstat(i32 noundef %7, ptr noundef %ostat) #3, !mymd !41
  %cmp11 = icmp ne i32 %call10, 0, !mymd !42
  br i1 %cmp11, label %if.then12, label %if.end16, !mymd !43

if.then12:                                        ; preds = %if.end9
  call void @progerror(ptr noundef @ofname), !mymd !44
  %8 = load i32, ptr @ifd, align 4, !mymd !45
  %call13 = call i32 @close(i32 noundef %8), !mymd !46
  %9 = load i32, ptr @ofd, align 4, !mymd !47
  %call14 = call i32 @close(i32 noundef %9), !mymd !48
  %call15 = call i32 @xunlink(ptr noundef @ofname), !mymd !49
  store i32 1, ptr %retval, align 4, !mymd !50
  br label %return, !mymd !51

if.end16:                                         ; preds = %if.end9
  %call17 = call i32 @name_too_long(ptr noundef @ofname, ptr noundef %ostat), !mymd !52
  %tobool18 = icmp ne i32 %call17, 0, !mymd !53
  br i1 %tobool18, label %if.end20, label %if.then19, !mymd !54

if.then19:                                        ; preds = %if.end16
  store i32 0, ptr %retval, align 4, !mymd !55
  br label %return, !mymd !56

if.end20:                                         ; preds = %if.end16
  %10 = load i32, ptr @decompress, align 4, !mymd !57
  %tobool21 = icmp ne i32 %10, 0, !mymd !58
  br i1 %tobool21, label %if.then22, label %if.end30, !mymd !59

if.then22:                                        ; preds = %if.end20
  %11 = load i32, ptr @quiet, align 4, !mymd !60
  %tobool23 = icmp ne i32 %11, 0, !mymd !61
  br i1 %tobool23, label %if.end26, label %if.then24, !mymd !62

if.then24:                                        ; preds = %if.then22
  %12 = load ptr, ptr @stderr, align 8, !mymd !63
  %13 = load ptr, ptr @progname, align 8, !mymd !64
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.172, ptr noundef %13, ptr noundef @ofname) #3, !mymd !65
  br label %if.end26, !mymd !66

if.end26:                                         ; preds = %if.then24, %if.then22
  %14 = load i32, ptr @exit_code, align 4, !mymd !67
  %cmp27 = icmp eq i32 %14, 0, !mymd !68
  br i1 %cmp27, label %if.then28, label %if.end29, !mymd !69

if.then28:                                        ; preds = %if.end26
  store i32 2, ptr @exit_code, align 4, !mymd !70
  br label %if.end29, !mymd !71

if.end29:                                         ; preds = %if.then28, %if.end26
  store i32 0, ptr %retval, align 4, !mymd !72
  br label %return, !mymd !73

if.end30:                                         ; preds = %if.end20
  %15 = load i32, ptr @ofd, align 4, !mymd !74
  %call31 = call i32 @close(i32 noundef %15), !mymd !75
  %call32 = call i32 @xunlink(ptr noundef @ofname), !mymd !76
  call void @shorten_name(ptr noundef @ofname), !mymd !77
  br label %for.cond, !mymd !78

return:                                           ; preds = %if.end29, %if.then19, %if.then12, %if.then7, %if.then2
  %16 = load i32, ptr %retval, align 4, !mymd !79
  ret i32 %16, !mymd !80
}

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @check_ofname() #1

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @name_too_long(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden void @shorten_name(ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = !{!"11834"}
!7 = !{!"11835"}
!8 = !{!"11836"}
!9 = !{!"11837"}
!10 = !{!"11838"}
!11 = !{!"11839"}
!12 = !{!"11840"}
!13 = !{!"11841"}
!14 = !{!"11842"}
!15 = !{!"11843"}
!16 = !{!"11844"}
!17 = !{!"11845"}
!18 = !{!"11846"}
!19 = !{!"11847"}
!20 = !{!"11848"}
!21 = !{!"11849"}
!22 = !{!"11850"}
!23 = !{!"11851"}
!24 = !{!"11852"}
!25 = !{!"11853"}
!26 = !{!"11854"}
!27 = !{!"11855"}
!28 = !{!"11856"}
!29 = !{!"11857"}
!30 = !{!"11858"}
!31 = !{!"11859"}
!32 = !{!"11860"}
!33 = !{!"11861"}
!34 = !{!"11862"}
!35 = !{!"11863"}
!36 = !{!"11864"}
!37 = !{!"11865"}
!38 = !{!"11866"}
!39 = !{!"11867"}
!40 = !{!"11868"}
!41 = !{!"11869"}
!42 = !{!"11870"}
!43 = !{!"11871"}
!44 = !{!"11872"}
!45 = !{!"11873"}
!46 = !{!"11874"}
!47 = !{!"11875"}
!48 = !{!"11876"}
!49 = !{!"11877"}
!50 = !{!"11878"}
!51 = !{!"11879"}
!52 = !{!"11880"}
!53 = !{!"11881"}
!54 = !{!"11882"}
!55 = !{!"11883"}
!56 = !{!"11884"}
!57 = !{!"11885"}
!58 = !{!"11886"}
!59 = !{!"11887"}
!60 = !{!"11888"}
!61 = !{!"11889"}
!62 = !{!"11890"}
!63 = !{!"11891"}
!64 = !{!"11892"}
!65 = !{!"11893"}
!66 = !{!"11894"}
!67 = !{!"11895"}
!68 = !{!"11896"}
!69 = !{!"11897"}
!70 = !{!"11898"}
!71 = !{!"11899"}
!72 = !{!"11900"}
!73 = !{!"11901"}
!74 = !{!"11902"}
!75 = !{!"11903"}
!76 = !{!"11904"}
!77 = !{!"11905"}
!78 = !{!"11906"}
!79 = !{!"11907"}
!80 = !{!"11908"}
