; ModuleID = '/data2/ben/alive-decomp/bench/gzip.ll'
source_filename = "bench/gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stderr = external global ptr, align 8
@.str.8 = external hidden unnamed_addr constant [1 x i8], align 1
@ascii = external dso_local global i32, align 4
@to_stdout = external dso_local global i32, align 4
@decompress = external dso_local global i32, align 4
@force = external dso_local global i32, align 4
@no_time = external dso_local global i32, align 4
@list = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@test = external dso_local global i32, align 4
@method = external dso_local global i32, align 4
@exit_code = external dso_local global i32, align 4
@.str.16 = external hidden unnamed_addr constant [7 x i8], align 1
@work = external dso_local global ptr, align 8
@progname = external dso_local global ptr, align 8
@ifd = external dso_local global i32, align 4
@ifname = external dso_local global [1024 x i8], align 16
@bytes_in = external dso_local global i64, align 8
@bytes_out = external dso_local global i64, align 8
@ofname = external dso_local global [1024 x i8], align 16
@time_stamp = external dso_local global i64, align 8
@header_bytes = external dso_local global i64, align 8
@part_nb = external dso_local global i32, align 4
@ifile_size = external dso_local global i64, align 8
@istat = external dso_local global %struct.stat, align 8
@.str.123 = external hidden unnamed_addr constant [2 x i8], align 1
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.125 = external hidden unnamed_addr constant [71 x i8], align 1
@.str.126 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.127 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.128 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.129 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.130 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.131 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.132 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @do_exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define hidden void @treat_stdin() #1 {
entry:
  %0 = load i32, ptr @force, align 4, !mymd !6
  %tobool = icmp ne i32 %0, 0, !mymd !7
  br i1 %tobool, label %if.end, label %land.lhs.true, !mymd !8

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @list, align 4, !mymd !9
  %tobool1 = icmp ne i32 %1, 0, !mymd !10
  br i1 %tobool1, label %if.end, label %land.lhs.true2, !mymd !11

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr @decompress, align 4, !mymd !12
  %tobool3 = icmp ne i32 %2, 0, !mymd !13
  br i1 %tobool3, label %cond.true, label %cond.false, !mymd !14

cond.true:                                        ; preds = %land.lhs.true2
  %3 = load ptr, ptr @stdin, align 8, !mymd !15
  br label %cond.end, !mymd !16

cond.false:                                       ; preds = %land.lhs.true2
  %4 = load ptr, ptr @stdout, align 8, !mymd !17
  br label %cond.end, !mymd !18

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %4, %cond.false ], !mymd !19
  %call = call i32 @fileno(ptr noundef %cond) #2, !mymd !20
  %call4 = call i32 @isatty(i32 noundef %call) #2, !mymd !21
  %tobool5 = icmp ne i32 %call4, 0, !mymd !22
  br i1 %tobool5, label %if.then, label %if.end, !mymd !23

if.then:                                          ; preds = %cond.end
  %5 = load ptr, ptr @stderr, align 8, !mymd !24
  %6 = load ptr, ptr @progname, align 8, !mymd !25
  %7 = load i32, ptr @decompress, align 4, !mymd !26
  %tobool6 = icmp ne i32 %7, 0, !mymd !27
  %8 = zext i1 %tobool6 to i64, !mymd !28
  %cond7 = select i1 %tobool6, ptr @.str.126, ptr @.str.127, !mymd !29
  %9 = load i32, ptr @decompress, align 4, !mymd !30
  %tobool8 = icmp ne i32 %9, 0, !mymd !31
  %10 = zext i1 %tobool8 to i64, !mymd !32
  %cond9 = select i1 %tobool8, ptr @.str.128, ptr @.str.8, !mymd !33
  %call10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.125, ptr noundef %6, ptr noundef %cond7, ptr noundef %cond9) #2, !mymd !34
  %11 = load ptr, ptr @stderr, align 8, !mymd !35
  %12 = load ptr, ptr @progname, align 8, !mymd !36
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.129, ptr noundef %12) #2, !mymd !37
  call void @do_exit(i32 noundef 1), !mymd !38
  br label %if.end, !mymd !39

if.end:                                           ; preds = %if.then, %cond.end, %land.lhs.true, %entry
  %13 = load i32, ptr @decompress, align 4, !mymd !40
  %tobool12 = icmp ne i32 %13, 0, !mymd !41
  br i1 %tobool12, label %if.then14, label %lor.lhs.false, !mymd !42

lor.lhs.false:                                    ; preds = %if.end
  %14 = load i32, ptr @ascii, align 4, !mymd !43
  %tobool13 = icmp ne i32 %14, 0, !mymd !44
  br i1 %tobool13, label %if.end15, label %if.then14, !mymd !45

if.then14:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end15, !mymd !46

if.end15:                                         ; preds = %if.then14, %lor.lhs.false
  %15 = load i32, ptr @test, align 4, !mymd !47
  %tobool16 = icmp ne i32 %15, 0, !mymd !48
  br i1 %tobool16, label %if.end24, label %land.lhs.true17, !mymd !49

land.lhs.true17:                                  ; preds = %if.end15
  %16 = load i32, ptr @list, align 4, !mymd !50
  %tobool18 = icmp ne i32 %16, 0, !mymd !51
  br i1 %tobool18, label %if.end24, label %land.lhs.true19, !mymd !52

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %17 = load i32, ptr @decompress, align 4, !mymd !53
  %tobool20 = icmp ne i32 %17, 0, !mymd !54
  br i1 %tobool20, label %lor.lhs.false21, label %if.then23, !mymd !55

lor.lhs.false21:                                  ; preds = %land.lhs.true19
  %18 = load i32, ptr @ascii, align 4, !mymd !56
  %tobool22 = icmp ne i32 %18, 0, !mymd !57
  br i1 %tobool22, label %if.end24, label %if.then23, !mymd !58

if.then23:                                        ; preds = %lor.lhs.false21, %land.lhs.true19
  br label %if.end24, !mymd !59

if.end24:                                         ; preds = %if.then23, %lor.lhs.false21, %land.lhs.true17, %if.end15
  %call25 = call ptr @strcpy(ptr noundef @ifname, ptr noundef @.str.130) #2, !mymd !60
  %call26 = call ptr @strcpy(ptr noundef @ofname, ptr noundef @.str.16) #2, !mymd !61
  store i64 0, ptr @time_stamp, align 8, !mymd !62
  %19 = load i32, ptr @list, align 4, !mymd !63
  %tobool27 = icmp ne i32 %19, 0, !mymd !64
  br i1 %tobool27, label %if.then30, label %lor.lhs.false28, !mymd !65

lor.lhs.false28:                                  ; preds = %if.end24
  %20 = load i32, ptr @no_time, align 4, !mymd !66
  %tobool29 = icmp ne i32 %20, 0, !mymd !67
  br i1 %tobool29, label %if.end35, label %if.then30, !mymd !68

if.then30:                                        ; preds = %lor.lhs.false28, %if.end24
  %21 = load ptr, ptr @stdin, align 8, !mymd !69
  %call31 = call i32 @fileno(ptr noundef %21) #2, !mymd !70
  %call32 = call i32 @fstat(i32 noundef %call31, ptr noundef @istat) #2, !mymd !71
  %cmp = icmp ne i32 %call32, 0, !mymd !72
  br i1 %cmp, label %if.then33, label %if.end34, !mymd !73

if.then33:                                        ; preds = %if.then30
  call void @progerror(ptr noundef @.str.131), !mymd !74
  call void @do_exit(i32 noundef 1), !mymd !75
  br label %if.end34, !mymd !76

if.end34:                                         ; preds = %if.then33, %if.then30
  %22 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @istat, i32 0, i32 12), align 8, !mymd !77
  store i64 %22, ptr @time_stamp, align 8, !mymd !78
  br label %if.end35, !mymd !79

if.end35:                                         ; preds = %if.end34, %lor.lhs.false28
  store i64 -1, ptr @ifile_size, align 8, !mymd !80
  call void @clear_bufs(), !mymd !81
  store i32 1, ptr @to_stdout, align 4, !mymd !82
  store i32 0, ptr @part_nb, align 4, !mymd !83
  %23 = load i32, ptr @decompress, align 4, !mymd !84
  %tobool36 = icmp ne i32 %23, 0, !mymd !85
  br i1 %tobool36, label %if.then37, label %if.end42, !mymd !86

if.then37:                                        ; preds = %if.end35
  %24 = load i32, ptr @ifd, align 4, !mymd !87
  %call38 = call i32 @get_method(i32 noundef %24), !mymd !88
  store i32 %call38, ptr @method, align 4, !mymd !89
  %25 = load i32, ptr @method, align 4, !mymd !90
  %cmp39 = icmp slt i32 %25, 0, !mymd !91
  br i1 %cmp39, label %if.then40, label %if.end41, !mymd !92

if.then40:                                        ; preds = %if.then37
  %26 = load i32, ptr @exit_code, align 4, !mymd !93
  call void @do_exit(i32 noundef %26), !mymd !94
  br label %if.end41, !mymd !95

if.end41:                                         ; preds = %if.then40, %if.then37
  br label %if.end42, !mymd !96

if.end42:                                         ; preds = %if.end41, %if.end35
  %27 = load i32, ptr @list, align 4, !mymd !97
  %tobool43 = icmp ne i32 %27, 0, !mymd !98
  br i1 %tobool43, label %if.then44, label %if.end45, !mymd !99

if.then44:                                        ; preds = %if.end42
  %28 = load i32, ptr @ifd, align 4, !mymd !100
  %29 = load i32, ptr @method, align 4, !mymd !101
  call void @do_list(i32 noundef %28, i32 noundef %29), !mymd !102
  br label %if.end71, !mymd !103

if.end45:                                         ; preds = %if.end42
  br label %for.cond, !mymd !104

for.cond:                                         ; preds = %if.end59, %if.end45
  %30 = load ptr, ptr @work, align 8, !mymd !105
  %31 = load ptr, ptr @stdin, align 8, !mymd !106
  %call46 = call i32 @fileno(ptr noundef %31) #2, !mymd !107
  %32 = load ptr, ptr @stdout, align 8, !mymd !108
  %call47 = call i32 @fileno(ptr noundef %32) #2, !mymd !109
  %call48 = call i32 %30(i32 noundef %call46, i32 noundef %call47), !mymd !110
  %cmp49 = icmp ne i32 %call48, 0, !mymd !111
  br i1 %cmp49, label %if.then50, label %if.end51, !mymd !112

if.then50:                                        ; preds = %for.cond
  br label %if.end71, !mymd !113

if.end51:                                         ; preds = %for.cond
  %call52 = call i32 @input_eof(), !mymd !114
  %tobool53 = icmp ne i32 %call52, 0, !mymd !115
  br i1 %tobool53, label %if.then54, label %if.end55, !mymd !116

if.then54:                                        ; preds = %if.end51
  br label %for.end, !mymd !117

if.end55:                                         ; preds = %if.end51
  %33 = load i32, ptr @ifd, align 4, !mymd !118
  %call56 = call i32 @get_method(i32 noundef %33), !mymd !119
  store i32 %call56, ptr @method, align 4, !mymd !120
  %34 = load i32, ptr @method, align 4, !mymd !121
  %cmp57 = icmp slt i32 %34, 0, !mymd !122
  br i1 %cmp57, label %if.then58, label %if.end59, !mymd !123

if.then58:                                        ; preds = %if.end55
  br label %if.end71, !mymd !124

if.end59:                                         ; preds = %if.end55
  store i64 0, ptr @bytes_out, align 8, !mymd !125
  br label %for.cond, !mymd !126

for.end:                                          ; preds = %if.then54
  %35 = load i32, ptr @verbose, align 4, !mymd !127
  %tobool60 = icmp ne i32 %35, 0, !mymd !128
  br i1 %tobool60, label %if.then61, label %if.end71, !mymd !129

if.then61:                                        ; preds = %for.end
  %36 = load i32, ptr @test, align 4, !mymd !130
  %tobool62 = icmp ne i32 %36, 0, !mymd !131
  br i1 %tobool62, label %if.then63, label %if.else, !mymd !132

if.then63:                                        ; preds = %if.then61
  %37 = load ptr, ptr @stderr, align 8, !mymd !133
  %call64 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.132) #2, !mymd !134
  br label %if.end70, !mymd !135

if.else:                                          ; preds = %if.then61
  %38 = load i32, ptr @decompress, align 4, !mymd !136
  %tobool65 = icmp ne i32 %38, 0, !mymd !137
  br i1 %tobool65, label %if.end69, label %if.then66, !mymd !138

if.then66:                                        ; preds = %if.else
  %39 = load i64, ptr @bytes_in, align 8, !mymd !139
  %40 = load i64, ptr @bytes_out, align 8, !mymd !140
  %41 = load i64, ptr @header_bytes, align 8, !mymd !141
  %sub = sub nsw i64 %40, %41, !mymd !142
  %sub67 = sub nsw i64 %39, %sub, !mymd !143
  %42 = load i64, ptr @bytes_in, align 8, !mymd !144
  %43 = load ptr, ptr @stderr, align 8, !mymd !145
  call void @display_ratio(i64 noundef %sub67, i64 noundef %42, ptr noundef %43), !mymd !146
  %44 = load ptr, ptr @stderr, align 8, !mymd !147
  %call68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.123) #2, !mymd !148
  br label %if.end69, !mymd !149

if.end69:                                         ; preds = %if.then66, %if.else
  br label %if.end70, !mymd !150

if.end70:                                         ; preds = %if.end69, %if.then63
  br label %if.end71, !mymd !151

if.end71:                                         ; preds = %if.end70, %for.end, %if.then58, %if.then50, %if.then44
  ret void, !mymd !152
}

; Function Attrs: noinline nounwind uwtable
declare hidden void @do_list(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
declare dso_local void @clear_bufs() #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare dso_local void @display_ratio(i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #0

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #0

; Function Attrs: noinline nounwind uwtable
declare hidden void @progerror(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @get_method(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
declare hidden i32 @input_eof() #1

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
!6 = !{!"4777"}
!7 = !{!"4778"}
!8 = !{!"4779"}
!9 = !{!"4780"}
!10 = !{!"4781"}
!11 = !{!"4782"}
!12 = !{!"4783"}
!13 = !{!"4784"}
!14 = !{!"4785"}
!15 = !{!"4786"}
!16 = !{!"4787"}
!17 = !{!"4788"}
!18 = !{!"4789"}
!19 = !{!"4790"}
!20 = !{!"4791"}
!21 = !{!"4792"}
!22 = !{!"4793"}
!23 = !{!"4794"}
!24 = !{!"4795"}
!25 = !{!"4796"}
!26 = !{!"4797"}
!27 = !{!"4798"}
!28 = !{!"4799"}
!29 = !{!"4800"}
!30 = !{!"4801"}
!31 = !{!"4802"}
!32 = !{!"4803"}
!33 = !{!"4804"}
!34 = !{!"4805"}
!35 = !{!"4806"}
!36 = !{!"4807"}
!37 = !{!"4808"}
!38 = !{!"4809"}
!39 = !{!"4810"}
!40 = !{!"4811"}
!41 = !{!"4812"}
!42 = !{!"4813"}
!43 = !{!"4814"}
!44 = !{!"4815"}
!45 = !{!"4816"}
!46 = !{!"4817"}
!47 = !{!"4818"}
!48 = !{!"4819"}
!49 = !{!"4820"}
!50 = !{!"4821"}
!51 = !{!"4822"}
!52 = !{!"4823"}
!53 = !{!"4824"}
!54 = !{!"4825"}
!55 = !{!"4826"}
!56 = !{!"4827"}
!57 = !{!"4828"}
!58 = !{!"4829"}
!59 = !{!"4830"}
!60 = !{!"4831"}
!61 = !{!"4832"}
!62 = !{!"4833"}
!63 = !{!"4834"}
!64 = !{!"4835"}
!65 = !{!"4836"}
!66 = !{!"4837"}
!67 = !{!"4838"}
!68 = !{!"4839"}
!69 = !{!"4840"}
!70 = !{!"4841"}
!71 = !{!"4842"}
!72 = !{!"4843"}
!73 = !{!"4844"}
!74 = !{!"4845"}
!75 = !{!"4846"}
!76 = !{!"4847"}
!77 = !{!"4848"}
!78 = !{!"4849"}
!79 = !{!"4850"}
!80 = !{!"4851"}
!81 = !{!"4852"}
!82 = !{!"4853"}
!83 = !{!"4854"}
!84 = !{!"4855"}
!85 = !{!"4856"}
!86 = !{!"4857"}
!87 = !{!"4858"}
!88 = !{!"4859"}
!89 = !{!"4860"}
!90 = !{!"4861"}
!91 = !{!"4862"}
!92 = !{!"4863"}
!93 = !{!"4864"}
!94 = !{!"4865"}
!95 = !{!"4866"}
!96 = !{!"4867"}
!97 = !{!"4868"}
!98 = !{!"4869"}
!99 = !{!"4870"}
!100 = !{!"4871"}
!101 = !{!"4872"}
!102 = !{!"4873"}
!103 = !{!"4874"}
!104 = !{!"4875"}
!105 = !{!"4876"}
!106 = !{!"4877"}
!107 = !{!"4878"}
!108 = !{!"4879"}
!109 = !{!"4880"}
!110 = !{!"4881"}
!111 = !{!"4882"}
!112 = !{!"4883"}
!113 = !{!"4884"}
!114 = !{!"4885"}
!115 = !{!"4886"}
!116 = !{!"4887"}
!117 = !{!"4888"}
!118 = !{!"4889"}
!119 = !{!"4890"}
!120 = !{!"4891"}
!121 = !{!"4892"}
!122 = !{!"4893"}
!123 = !{!"4894"}
!124 = !{!"4895"}
!125 = !{!"4896"}
!126 = !{!"4897"}
!127 = !{!"4898"}
!128 = !{!"4899"}
!129 = !{!"4900"}
!130 = !{!"4901"}
!131 = !{!"4902"}
!132 = !{!"4903"}
!133 = !{!"4904"}
!134 = !{!"4905"}
!135 = !{!"4906"}
!136 = !{!"4907"}
!137 = !{!"4908"}
!138 = !{!"4909"}
!139 = !{!"4910"}
!140 = !{!"4911"}
!141 = !{!"4912"}
!142 = !{!"4913"}
!143 = !{!"4914"}
!144 = !{!"4915"}
!145 = !{!"4916"}
!146 = !{!"4917"}
!147 = !{!"4918"}
!148 = !{!"4919"}
!149 = !{!"4920"}
!150 = !{!"4921"}
!151 = !{!"4922"}
!152 = !{!"4923"}
