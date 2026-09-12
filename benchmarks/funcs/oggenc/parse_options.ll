; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.oe_options = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, float, i32, i32, i32, float, i32 }
%struct.adv_opt = type { ptr, ptr }

@.str.16 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.24 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.25 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.26 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.27 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.28 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.29 = external hidden unnamed_addr constant [17 x i8], align 1
@long_options = external dso_local global [31 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }], align 16
@.str.30 = external hidden unnamed_addr constant [2 x i8], align 1
@stderr = external global ptr, align 8
@.str.32 = external hidden unnamed_addr constant [33 x i8], align 1
@stdout = external global ptr, align 8
@optarg = external dso_local global ptr, align 8
@.str.160 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.161 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.162 = external hidden unnamed_addr constant [76 x i8], align 1
@.str.163 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.164 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.165 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.166 = external hidden unnamed_addr constant [64 x i8], align 1
@.str.167 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.168 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.169 = external hidden unnamed_addr constant [44 x i8], align 1
@.str.170 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.171 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.172 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.173 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.174 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.175 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.176 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.177 = external hidden unnamed_addr constant [64 x i8], align 1
@.str.178 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.179 = external hidden unnamed_addr constant [62 x i8], align 1
@.str.180 = external hidden unnamed_addr constant [74 x i8], align 1
@.str.181 = external hidden unnamed_addr constant [60 x i8], align 1
@.str.182 = external hidden unnamed_addr constant [77 x i8], align 1
@.str.183 = external hidden unnamed_addr constant [54 x i8], align 1
@.str.184 = external hidden unnamed_addr constant [79 x i8], align 1
@.str.185 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.186 = external hidden unnamed_addr constant [77 x i8], align 1
@.str.187 = external hidden unnamed_addr constant [57 x i8], align 1
@.str.188 = external hidden unnamed_addr constant [47 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden void @parse_options(i32 noundef %argc, ptr noundef %argv, ptr noundef %opt) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %option_index = alloca i32, align 4
  %arg = alloca ptr, align 8
  %val = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  store i32 1, ptr %option_index, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.then80, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef @.str.160, ptr noundef @long_options, ptr noundef %option_index)
  store i32 %call, ptr %ret, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %ret, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 97, label %sw.bb115
    i32 99, label %sw.bb127
    i32 100, label %sw.bb145
    i32 71, label %sw.bb157
    i32 104, label %sw.bb169
    i32 108, label %sw.bb170
    i32 115, label %sw.bb182
    i32 116, label %sw.bb189
    i32 98, label %sw.bb201
    i32 109, label %sw.bb209
    i32 77, label %sw.bb227
    i32 113, label %sw.bb245
    i32 110, label %sw.bb263
    i32 88, label %sw.bb271
    i32 80, label %sw.bb282
    i32 111, label %sw.bb294
    i32 81, label %sw.bb302
    i32 114, label %sw.bb304
    i32 118, label %sw.bb306
    i32 66, label %sw.bb308
    i32 67, label %sw.bb333
    i32 78, label %sw.bb348
    i32 82, label %sw.bb360
    i32 63, label %sw.bb375
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i32, ptr %option_index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [31 x %struct.option], ptr @long_options, i64 0, i64 %idxprom
  %name = getelementptr inbounds nuw %struct.option, ptr %arrayidx, i32 0, i32 0
  %4 = load ptr, ptr %name, align 16
  %call1 = call i32 @strcmp(ptr noundef %4, ptr noundef @.str.24) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  %5 = load ptr, ptr %opt.addr, align 8
  %managed = getelementptr inbounds nuw %struct.oe_options, ptr %5, i32 0, i32 27
  %6 = load i32, ptr %managed, align 8
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %opt.addr, align 8
  %quiet = getelementptr inbounds nuw %struct.oe_options, ptr %7, i32 0, i32 17
  %8 = load i32, ptr %quiet, align 8
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  %9 = load ptr, ptr @stderr, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.161) #6
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %10 = load ptr, ptr %opt.addr, align 8
  %managed7 = getelementptr inbounds nuw %struct.oe_options, ptr %10, i32 0, i32 27
  store i32 1, ptr %managed7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %if.end114

if.else:                                          ; preds = %sw.bb
  %11 = load i32, ptr %option_index, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [31 x %struct.option], ptr @long_options, i64 0, i64 %idxprom9
  %name11 = getelementptr inbounds nuw %struct.option, ptr %arrayidx10, i32 0, i32 0
  %12 = load ptr, ptr %name11, align 16
  %call12 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.16) #5
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else26, label %if.then14

if.then14:                                        ; preds = %if.else
  %13 = load ptr, ptr %opt.addr, align 8
  %rawmode = getelementptr inbounds nuw %struct.oe_options, ptr %13, i32 0, i32 18
  %14 = load i32, ptr %rawmode, align 4
  %cmp15 = icmp ne i32 %14, 1
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then14
  %15 = load ptr, ptr %opt.addr, align 8
  %rawmode17 = getelementptr inbounds nuw %struct.oe_options, ptr %15, i32 0, i32 18
  store i32 1, ptr %rawmode17, align 4
  %16 = load ptr, ptr @stderr, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.162) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then14
  %17 = load ptr, ptr @optarg, align 8
  %18 = load ptr, ptr %opt.addr, align 8
  %raw_endianness = getelementptr inbounds nuw %struct.oe_options, ptr %18, i32 0, i32 22
  %call20 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %17, ptr noundef @.str.163, ptr noundef %raw_endianness) #6
  %cmp21 = icmp ne i32 %call20, 1
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end19
  %19 = load ptr, ptr @stderr, align 8
  %20 = load ptr, ptr @optarg, align 8
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.164, ptr noundef %20) #6
  %21 = load ptr, ptr %opt.addr, align 8
  %raw_endianness24 = getelementptr inbounds nuw %struct.oe_options, ptr %21, i32 0, i32 22
  store i32 0, ptr %raw_endianness24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19
  br label %if.end113

if.else26:                                        ; preds = %if.else
  %22 = load i32, ptr %option_index, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [31 x %struct.option], ptr @long_options, i64 0, i64 %idxprom27
  %name29 = getelementptr inbounds nuw %struct.option, ptr %arrayidx28, i32 0, i32 0
  %23 = load ptr, ptr %name29, align 16
  %call30 = call i32 @strcmp(ptr noundef %23, ptr noundef @.str.25) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.else46, label %if.then32

if.then32:                                        ; preds = %if.else26
  %24 = load ptr, ptr @optarg, align 8
  %25 = load ptr, ptr %opt.addr, align 8
  %resamplefreq = getelementptr inbounds nuw %struct.oe_options, ptr %25, i32 0, i32 33
  %call33 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %24, ptr noundef @.str.163, ptr noundef %resamplefreq) #6
  %cmp34 = icmp ne i32 %call33, 1
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.then32
  %26 = load ptr, ptr @stderr, align 8
  %27 = load ptr, ptr @optarg, align 8
  %call36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.165, ptr noundef %27) #6
  %28 = load ptr, ptr %opt.addr, align 8
  %resamplefreq37 = getelementptr inbounds nuw %struct.oe_options, ptr %28, i32 0, i32 33
  store i32 0, ptr %resamplefreq37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.then32
  %29 = load ptr, ptr %opt.addr, align 8
  %resamplefreq39 = getelementptr inbounds nuw %struct.oe_options, ptr %29, i32 0, i32 33
  %30 = load i32, ptr %resamplefreq39, align 8
  %cmp40 = icmp slt i32 %30, 100
  br i1 %cmp40, label %if.then41, label %if.end45

if.then41:                                        ; preds = %if.end38
  %31 = load ptr, ptr @stderr, align 8
  %32 = load ptr, ptr %opt.addr, align 8
  %resamplefreq42 = getelementptr inbounds nuw %struct.oe_options, ptr %32, i32 0, i32 33
  %33 = load i32, ptr %resamplefreq42, align 8
  %34 = load ptr, ptr %opt.addr, align 8
  %resamplefreq43 = getelementptr inbounds nuw %struct.oe_options, ptr %34, i32 0, i32 33
  %35 = load i32, ptr %resamplefreq43, align 8
  %mul = mul nsw i32 %35, 1000
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str.166, i32 noundef %33, i32 noundef %mul) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end38
  br label %if.end112

if.else46:                                        ; preds = %if.else26
  %36 = load i32, ptr %option_index, align 4
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds [31 x %struct.option], ptr @long_options, i64 0, i64 %idxprom47
  %name49 = getelementptr inbounds nuw %struct.option, ptr %arrayidx48, i32 0, i32 0
  %37 = load ptr, ptr %name49, align 16
  %call50 = call i32 @strcmp(ptr noundef %37, ptr noundef @.str.26) #5
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else53, label %if.then52

if.then52:                                        ; preds = %if.else46
  %38 = load ptr, ptr %opt.addr, align 8
  %downmix = getelementptr inbounds nuw %struct.oe_options, ptr %38, i32 0, i32 34
  store i32 1, ptr %downmix, align 4
  br label %if.end111

if.else53:                                        ; preds = %if.else46
  %39 = load i32, ptr %option_index, align 4
  %idxprom54 = sext i32 %39 to i64
  %arrayidx55 = getelementptr inbounds [31 x %struct.option], ptr @long_options, i64 0, i64 %idxprom54
  %name56 = getelementptr inbounds nuw %struct.option, ptr %arrayidx55, i32 0, i32 0
  %40 = load ptr, ptr %name56, align 16
  %call57 = call i32 @strcmp(ptr noundef %40, ptr noundef @.str.27) #5
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.else69, label %if.then59

if.then59:                                        ; preds = %if.else53
  %41 = load ptr, ptr @optarg, align 8
  %call60 = call double @atof(ptr noundef %41) #5
  %conv = fptrunc double %call60 to float
  %42 = load ptr, ptr %opt.addr, align 8
  %scale = getelementptr inbounds nuw %struct.oe_options, ptr %42, i32 0, i32 35
  store float %conv, ptr %scale, align 8
  %43 = load ptr, ptr @optarg, align 8
  %44 = load ptr, ptr %opt.addr, align 8
  %scale61 = getelementptr inbounds nuw %struct.oe_options, ptr %44, i32 0, i32 35
  %call62 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %43, ptr noundef @.str.167, ptr noundef %scale61) #6
  %cmp63 = icmp ne i32 %call62, 1
  br i1 %cmp63, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.then59
  %45 = load ptr, ptr %opt.addr, align 8
  %scale66 = getelementptr inbounds nuw %struct.oe_options, ptr %45, i32 0, i32 35
  store float 0.000000e+00, ptr %scale66, align 8
  %46 = load ptr, ptr @stderr, align 8
  %47 = load ptr, ptr @optarg, align 8
  %call67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.168, ptr noundef %47) #6
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.then59
  br label %if.end110

if.else69:                                        ; preds = %if.else53
  %48 = load i32, ptr %option_index, align 4
  %idxprom70 = sext i32 %48 to i64
  %arrayidx71 = getelementptr inbounds [31 x %struct.option], ptr @long_options, i64 0, i64 %idxprom70
  %name72 = getelementptr inbounds nuw %struct.option, ptr %arrayidx71, i32 0, i32 0
  %49 = load ptr, ptr %name72, align 16
  %call73 = call i32 @strcmp(ptr noundef %49, ptr noundef @.str.28) #5
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.else99, label %if.then75

if.then75:                                        ; preds = %if.else69
  %50 = load ptr, ptr @optarg, align 8
  %call76 = call noalias ptr @strdup(ptr noundef %50) #6
  store ptr %call76, ptr %arg, align 8
  %51 = load ptr, ptr %arg, align 8
  %call77 = call ptr @strchr(ptr noundef %51, i32 noundef 61) #5
  store ptr %call77, ptr %val, align 8
  %52 = load ptr, ptr %val, align 8
  %cmp78 = icmp eq ptr %52, null
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.then75
  %53 = load ptr, ptr @stderr, align 8
  %call81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef @.str.169) #6
  br label %while.cond, !llvm.loop !6

if.else82:                                        ; preds = %if.then75
  %54 = load ptr, ptr %val, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %54, i32 1
  store ptr %incdec.ptr, ptr %val, align 8
  store i8 0, ptr %54, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.else82
  %55 = load ptr, ptr %opt.addr, align 8
  %advopt = getelementptr inbounds nuw %struct.oe_options, ptr %55, i32 0, i32 14
  %56 = load ptr, ptr %advopt, align 8
  %57 = load ptr, ptr %opt.addr, align 8
  %advopt_count = getelementptr inbounds nuw %struct.oe_options, ptr %57, i32 0, i32 15
  %58 = load i32, ptr %advopt_count, align 8
  %inc = add nsw i32 %58, 1
  store i32 %inc, ptr %advopt_count, align 8
  %conv84 = sext i32 %inc to i64
  %mul85 = mul i64 %conv84, 16
  %call86 = call ptr @realloc(ptr noundef %56, i64 noundef %mul85) #7
  %59 = load ptr, ptr %opt.addr, align 8
  %advopt87 = getelementptr inbounds nuw %struct.oe_options, ptr %59, i32 0, i32 14
  store ptr %call86, ptr %advopt87, align 8
  %60 = load ptr, ptr %arg, align 8
  %61 = load ptr, ptr %opt.addr, align 8
  %advopt88 = getelementptr inbounds nuw %struct.oe_options, ptr %61, i32 0, i32 14
  %62 = load ptr, ptr %advopt88, align 8
  %63 = load ptr, ptr %opt.addr, align 8
  %advopt_count89 = getelementptr inbounds nuw %struct.oe_options, ptr %63, i32 0, i32 15
  %64 = load i32, ptr %advopt_count89, align 8
  %sub = sub nsw i32 %64, 1
  %idxprom90 = sext i32 %sub to i64
  %arrayidx91 = getelementptr inbounds %struct.adv_opt, ptr %62, i64 %idxprom90
  %arg92 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx91, i32 0, i32 0
  store ptr %60, ptr %arg92, align 8
  %65 = load ptr, ptr %val, align 8
  %66 = load ptr, ptr %opt.addr, align 8
  %advopt93 = getelementptr inbounds nuw %struct.oe_options, ptr %66, i32 0, i32 14
  %67 = load ptr, ptr %advopt93, align 8
  %68 = load ptr, ptr %opt.addr, align 8
  %advopt_count94 = getelementptr inbounds nuw %struct.oe_options, ptr %68, i32 0, i32 15
  %69 = load i32, ptr %advopt_count94, align 8
  %sub95 = sub nsw i32 %69, 1
  %idxprom96 = sext i32 %sub95 to i64
  %arrayidx97 = getelementptr inbounds %struct.adv_opt, ptr %67, i64 %idxprom96
  %val98 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx97, i32 0, i32 1
  store ptr %65, ptr %val98, align 8
  br label %if.end109

if.else99:                                        ; preds = %if.else69
  %70 = load i32, ptr %option_index, align 4
  %idxprom100 = sext i32 %70 to i64
  %arrayidx101 = getelementptr inbounds [31 x %struct.option], ptr @long_options, i64 0, i64 %idxprom100
  %name102 = getelementptr inbounds nuw %struct.option, ptr %arrayidx101, i32 0, i32 0
  %71 = load ptr, ptr %name102, align 16
  %call103 = call i32 @strcmp(ptr noundef %71, ptr noundef @.str.29) #5
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.else106, label %if.then105

if.then105:                                       ; preds = %if.else99
  %72 = load ptr, ptr %opt.addr, align 8
  %copy_comments = getelementptr inbounds nuw %struct.oe_options, ptr %72, i32 0, i32 16
  store i32 0, ptr %copy_comments, align 4
  br label %if.end108

if.else106:                                       ; preds = %if.else99
  %73 = load ptr, ptr @stderr, align 8
  %call107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.170) #6
  call void @exit(i32 noundef 1) #8
  unreachable

if.end108:                                        ; preds = %if.then105
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %if.end83
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end68
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.then52
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end45
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.end25
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end8
  br label %sw.epilog

sw.bb115:                                         ; preds = %while.body
  %74 = load ptr, ptr %opt.addr, align 8
  %artist = getelementptr inbounds nuw %struct.oe_options, ptr %74, i32 0, i32 2
  %75 = load ptr, ptr %artist, align 8
  %76 = load ptr, ptr %opt.addr, align 8
  %artist_count = getelementptr inbounds nuw %struct.oe_options, ptr %76, i32 0, i32 3
  %77 = load i32, ptr %artist_count, align 8
  %inc116 = add nsw i32 %77, 1
  store i32 %inc116, ptr %artist_count, align 8
  %conv117 = sext i32 %inc116 to i64
  %mul118 = mul i64 %conv117, 8
  %call119 = call ptr @realloc(ptr noundef %75, i64 noundef %mul118) #7
  %78 = load ptr, ptr %opt.addr, align 8
  %artist120 = getelementptr inbounds nuw %struct.oe_options, ptr %78, i32 0, i32 2
  store ptr %call119, ptr %artist120, align 8
  %79 = load ptr, ptr @optarg, align 8
  %call121 = call noalias ptr @strdup(ptr noundef %79) #6
  %80 = load ptr, ptr %opt.addr, align 8
  %artist122 = getelementptr inbounds nuw %struct.oe_options, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %artist122, align 8
  %82 = load ptr, ptr %opt.addr, align 8
  %artist_count123 = getelementptr inbounds nuw %struct.oe_options, ptr %82, i32 0, i32 3
  %83 = load i32, ptr %artist_count123, align 8
  %sub124 = sub nsw i32 %83, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds ptr, ptr %81, i64 %idxprom125
  store ptr %call121, ptr %arrayidx126, align 8
  br label %sw.epilog

sw.bb127:                                         ; preds = %while.body
  %84 = load ptr, ptr @optarg, align 8
  %call128 = call ptr @strchr(ptr noundef %84, i32 noundef 61) #5
  %cmp129 = icmp eq ptr %call128, null
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %sw.bb127
  %85 = load ptr, ptr @stderr, align 8
  %86 = load ptr, ptr @optarg, align 8
  %call132 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str.171, ptr noundef %86) #6
  br label %sw.epilog

if.end133:                                        ; preds = %sw.bb127
  %87 = load ptr, ptr %opt.addr, align 8
  %comments = getelementptr inbounds nuw %struct.oe_options, ptr %87, i32 0, i32 6
  %88 = load ptr, ptr %comments, align 8
  %89 = load ptr, ptr %opt.addr, align 8
  %comment_count = getelementptr inbounds nuw %struct.oe_options, ptr %89, i32 0, i32 7
  %90 = load i32, ptr %comment_count, align 8
  %inc134 = add nsw i32 %90, 1
  store i32 %inc134, ptr %comment_count, align 8
  %conv135 = sext i32 %inc134 to i64
  %mul136 = mul i64 %conv135, 8
  %call137 = call ptr @realloc(ptr noundef %88, i64 noundef %mul136) #7
  %91 = load ptr, ptr %opt.addr, align 8
  %comments138 = getelementptr inbounds nuw %struct.oe_options, ptr %91, i32 0, i32 6
  store ptr %call137, ptr %comments138, align 8
  %92 = load ptr, ptr @optarg, align 8
  %call139 = call noalias ptr @strdup(ptr noundef %92) #6
  %93 = load ptr, ptr %opt.addr, align 8
  %comments140 = getelementptr inbounds nuw %struct.oe_options, ptr %93, i32 0, i32 6
  %94 = load ptr, ptr %comments140, align 8
  %95 = load ptr, ptr %opt.addr, align 8
  %comment_count141 = getelementptr inbounds nuw %struct.oe_options, ptr %95, i32 0, i32 7
  %96 = load i32, ptr %comment_count141, align 8
  %sub142 = sub nsw i32 %96, 1
  %idxprom143 = sext i32 %sub142 to i64
  %arrayidx144 = getelementptr inbounds ptr, ptr %94, i64 %idxprom143
  store ptr %call139, ptr %arrayidx144, align 8
  br label %sw.epilog

sw.bb145:                                         ; preds = %while.body
  %97 = load ptr, ptr %opt.addr, align 8
  %dates = getelementptr inbounds nuw %struct.oe_options, ptr %97, i32 0, i32 10
  %98 = load ptr, ptr %dates, align 8
  %99 = load ptr, ptr %opt.addr, align 8
  %date_count = getelementptr inbounds nuw %struct.oe_options, ptr %99, i32 0, i32 11
  %100 = load i32, ptr %date_count, align 8
  %inc146 = add nsw i32 %100, 1
  store i32 %inc146, ptr %date_count, align 8
  %conv147 = sext i32 %inc146 to i64
  %mul148 = mul i64 %conv147, 8
  %call149 = call ptr @realloc(ptr noundef %98, i64 noundef %mul148) #7
  %101 = load ptr, ptr %opt.addr, align 8
  %dates150 = getelementptr inbounds nuw %struct.oe_options, ptr %101, i32 0, i32 10
  store ptr %call149, ptr %dates150, align 8
  %102 = load ptr, ptr @optarg, align 8
  %call151 = call noalias ptr @strdup(ptr noundef %102) #6
  %103 = load ptr, ptr %opt.addr, align 8
  %dates152 = getelementptr inbounds nuw %struct.oe_options, ptr %103, i32 0, i32 10
  %104 = load ptr, ptr %dates152, align 8
  %105 = load ptr, ptr %opt.addr, align 8
  %date_count153 = getelementptr inbounds nuw %struct.oe_options, ptr %105, i32 0, i32 11
  %106 = load i32, ptr %date_count153, align 8
  %sub154 = sub nsw i32 %106, 1
  %idxprom155 = sext i32 %sub154 to i64
  %arrayidx156 = getelementptr inbounds ptr, ptr %104, i64 %idxprom155
  store ptr %call151, ptr %arrayidx156, align 8
  br label %sw.epilog

sw.bb157:                                         ; preds = %while.body
  %107 = load ptr, ptr %opt.addr, align 8
  %genre = getelementptr inbounds nuw %struct.oe_options, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %genre, align 8
  %109 = load ptr, ptr %opt.addr, align 8
  %genre_count = getelementptr inbounds nuw %struct.oe_options, ptr %109, i32 0, i32 13
  %110 = load i32, ptr %genre_count, align 8
  %inc158 = add nsw i32 %110, 1
  store i32 %inc158, ptr %genre_count, align 8
  %conv159 = sext i32 %inc158 to i64
  %mul160 = mul i64 %conv159, 8
  %call161 = call ptr @realloc(ptr noundef %108, i64 noundef %mul160) #7
  %111 = load ptr, ptr %opt.addr, align 8
  %genre162 = getelementptr inbounds nuw %struct.oe_options, ptr %111, i32 0, i32 12
  store ptr %call161, ptr %genre162, align 8
  %112 = load ptr, ptr @optarg, align 8
  %call163 = call noalias ptr @strdup(ptr noundef %112) #6
  %113 = load ptr, ptr %opt.addr, align 8
  %genre164 = getelementptr inbounds nuw %struct.oe_options, ptr %113, i32 0, i32 12
  %114 = load ptr, ptr %genre164, align 8
  %115 = load ptr, ptr %opt.addr, align 8
  %genre_count165 = getelementptr inbounds nuw %struct.oe_options, ptr %115, i32 0, i32 13
  %116 = load i32, ptr %genre_count165, align 8
  %sub166 = sub nsw i32 %116, 1
  %idxprom167 = sext i32 %sub166 to i64
  %arrayidx168 = getelementptr inbounds ptr, ptr %114, i64 %idxprom167
  store ptr %call163, ptr %arrayidx168, align 8
  br label %sw.epilog

sw.bb169:                                         ; preds = %while.body
  call void @usage()
  call void @exit(i32 noundef 0) #8
  unreachable

sw.bb170:                                         ; preds = %while.body
  %117 = load ptr, ptr %opt.addr, align 8
  %album = getelementptr inbounds nuw %struct.oe_options, ptr %117, i32 0, i32 4
  %118 = load ptr, ptr %album, align 8
  %119 = load ptr, ptr %opt.addr, align 8
  %album_count = getelementptr inbounds nuw %struct.oe_options, ptr %119, i32 0, i32 5
  %120 = load i32, ptr %album_count, align 8
  %inc171 = add nsw i32 %120, 1
  store i32 %inc171, ptr %album_count, align 8
  %conv172 = sext i32 %inc171 to i64
  %mul173 = mul i64 %conv172, 8
  %call174 = call ptr @realloc(ptr noundef %118, i64 noundef %mul173) #7
  %121 = load ptr, ptr %opt.addr, align 8
  %album175 = getelementptr inbounds nuw %struct.oe_options, ptr %121, i32 0, i32 4
  store ptr %call174, ptr %album175, align 8
  %122 = load ptr, ptr @optarg, align 8
  %call176 = call noalias ptr @strdup(ptr noundef %122) #6
  %123 = load ptr, ptr %opt.addr, align 8
  %album177 = getelementptr inbounds nuw %struct.oe_options, ptr %123, i32 0, i32 4
  %124 = load ptr, ptr %album177, align 8
  %125 = load ptr, ptr %opt.addr, align 8
  %album_count178 = getelementptr inbounds nuw %struct.oe_options, ptr %125, i32 0, i32 5
  %126 = load i32, ptr %album_count178, align 8
  %sub179 = sub nsw i32 %126, 1
  %idxprom180 = sext i32 %sub179 to i64
  %arrayidx181 = getelementptr inbounds ptr, ptr %124, i64 %idxprom180
  store ptr %call176, ptr %arrayidx181, align 8
  br label %sw.epilog

sw.bb182:                                         ; preds = %while.body
  %127 = load ptr, ptr @optarg, align 8
  %128 = load ptr, ptr %opt.addr, align 8
  %serial = getelementptr inbounds nuw %struct.oe_options, ptr %128, i32 0, i32 36
  %call183 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %127, ptr noundef @.str.172, ptr noundef %serial) #6
  %cmp184 = icmp ne i32 %call183, 1
  br i1 %cmp184, label %if.then186, label %if.end188

if.then186:                                       ; preds = %sw.bb182
  %129 = load ptr, ptr %opt.addr, align 8
  %serial187 = getelementptr inbounds nuw %struct.oe_options, ptr %129, i32 0, i32 36
  store i32 0, ptr %serial187, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then186, %sw.bb182
  br label %sw.epilog

sw.bb189:                                         ; preds = %while.body
  %130 = load ptr, ptr %opt.addr, align 8
  %title = getelementptr inbounds nuw %struct.oe_options, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %title, align 8
  %132 = load ptr, ptr %opt.addr, align 8
  %title_count = getelementptr inbounds nuw %struct.oe_options, ptr %132, i32 0, i32 1
  %133 = load i32, ptr %title_count, align 8
  %inc190 = add nsw i32 %133, 1
  store i32 %inc190, ptr %title_count, align 8
  %conv191 = sext i32 %inc190 to i64
  %mul192 = mul i64 %conv191, 8
  %call193 = call ptr @realloc(ptr noundef %131, i64 noundef %mul192) #7
  %134 = load ptr, ptr %opt.addr, align 8
  %title194 = getelementptr inbounds nuw %struct.oe_options, ptr %134, i32 0, i32 0
  store ptr %call193, ptr %title194, align 8
  %135 = load ptr, ptr @optarg, align 8
  %call195 = call noalias ptr @strdup(ptr noundef %135) #6
  %136 = load ptr, ptr %opt.addr, align 8
  %title196 = getelementptr inbounds nuw %struct.oe_options, ptr %136, i32 0, i32 0
  %137 = load ptr, ptr %title196, align 8
  %138 = load ptr, ptr %opt.addr, align 8
  %title_count197 = getelementptr inbounds nuw %struct.oe_options, ptr %138, i32 0, i32 1
  %139 = load i32, ptr %title_count197, align 8
  %sub198 = sub nsw i32 %139, 1
  %idxprom199 = sext i32 %sub198 to i64
  %arrayidx200 = getelementptr inbounds ptr, ptr %137, i64 %idxprom199
  store ptr %call195, ptr %arrayidx200, align 8
  br label %sw.epilog

sw.bb201:                                         ; preds = %while.body
  %140 = load ptr, ptr @optarg, align 8
  %141 = load ptr, ptr %opt.addr, align 8
  %nominal_bitrate = getelementptr inbounds nuw %struct.oe_options, ptr %141, i32 0, i32 29
  %call202 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %140, ptr noundef @.str.163, ptr noundef %nominal_bitrate) #6
  %cmp203 = icmp ne i32 %call202, 1
  br i1 %cmp203, label %if.then205, label %if.end208

if.then205:                                       ; preds = %sw.bb201
  %142 = load ptr, ptr @stderr, align 8
  %143 = load ptr, ptr @optarg, align 8
  %call206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str.173, ptr noundef %143) #6
  %144 = load ptr, ptr %opt.addr, align 8
  %nominal_bitrate207 = getelementptr inbounds nuw %struct.oe_options, ptr %144, i32 0, i32 29
  store i32 -1, ptr %nominal_bitrate207, align 8
  br label %if.end208

if.end208:                                        ; preds = %if.then205, %sw.bb201
  br label %sw.epilog

sw.bb209:                                         ; preds = %while.body
  %145 = load ptr, ptr @optarg, align 8
  %146 = load ptr, ptr %opt.addr, align 8
  %min_bitrate = getelementptr inbounds nuw %struct.oe_options, ptr %146, i32 0, i32 28
  %call210 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %145, ptr noundef @.str.163, ptr noundef %min_bitrate) #6
  %cmp211 = icmp ne i32 %call210, 1
  br i1 %cmp211, label %if.then213, label %if.end216

if.then213:                                       ; preds = %sw.bb209
  %147 = load ptr, ptr @stderr, align 8
  %148 = load ptr, ptr @optarg, align 8
  %call214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.174, ptr noundef %148) #6
  %149 = load ptr, ptr %opt.addr, align 8
  %min_bitrate215 = getelementptr inbounds nuw %struct.oe_options, ptr %149, i32 0, i32 28
  store i32 -1, ptr %min_bitrate215, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then213, %sw.bb209
  %150 = load ptr, ptr %opt.addr, align 8
  %managed217 = getelementptr inbounds nuw %struct.oe_options, ptr %150, i32 0, i32 27
  %151 = load i32, ptr %managed217, align 8
  %tobool218 = icmp ne i32 %151, 0
  br i1 %tobool218, label %if.end226, label %if.then219

if.then219:                                       ; preds = %if.end216
  %152 = load ptr, ptr %opt.addr, align 8
  %quiet220 = getelementptr inbounds nuw %struct.oe_options, ptr %152, i32 0, i32 17
  %153 = load i32, ptr %quiet220, align 8
  %tobool221 = icmp ne i32 %153, 0
  br i1 %tobool221, label %if.end224, label %if.then222

if.then222:                                       ; preds = %if.then219
  %154 = load ptr, ptr @stderr, align 8
  %call223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.161) #6
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %if.then219
  %155 = load ptr, ptr %opt.addr, align 8
  %managed225 = getelementptr inbounds nuw %struct.oe_options, ptr %155, i32 0, i32 27
  store i32 1, ptr %managed225, align 8
  br label %if.end226

if.end226:                                        ; preds = %if.end224, %if.end216
  br label %sw.epilog

sw.bb227:                                         ; preds = %while.body
  %156 = load ptr, ptr @optarg, align 8
  %157 = load ptr, ptr %opt.addr, align 8
  %max_bitrate = getelementptr inbounds nuw %struct.oe_options, ptr %157, i32 0, i32 30
  %call228 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %156, ptr noundef @.str.163, ptr noundef %max_bitrate) #6
  %cmp229 = icmp ne i32 %call228, 1
  br i1 %cmp229, label %if.then231, label %if.end234

if.then231:                                       ; preds = %sw.bb227
  %158 = load ptr, ptr @stderr, align 8
  %159 = load ptr, ptr @optarg, align 8
  %call232 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef @.str.175, ptr noundef %159) #6
  %160 = load ptr, ptr %opt.addr, align 8
  %max_bitrate233 = getelementptr inbounds nuw %struct.oe_options, ptr %160, i32 0, i32 30
  store i32 -1, ptr %max_bitrate233, align 4
  br label %if.end234

if.end234:                                        ; preds = %if.then231, %sw.bb227
  %161 = load ptr, ptr %opt.addr, align 8
  %managed235 = getelementptr inbounds nuw %struct.oe_options, ptr %161, i32 0, i32 27
  %162 = load i32, ptr %managed235, align 8
  %tobool236 = icmp ne i32 %162, 0
  br i1 %tobool236, label %if.end244, label %if.then237

if.then237:                                       ; preds = %if.end234
  %163 = load ptr, ptr %opt.addr, align 8
  %quiet238 = getelementptr inbounds nuw %struct.oe_options, ptr %163, i32 0, i32 17
  %164 = load i32, ptr %quiet238, align 8
  %tobool239 = icmp ne i32 %164, 0
  br i1 %tobool239, label %if.end242, label %if.then240

if.then240:                                       ; preds = %if.then237
  %165 = load ptr, ptr @stderr, align 8
  %call241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str.161) #6
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %if.then237
  %166 = load ptr, ptr %opt.addr, align 8
  %managed243 = getelementptr inbounds nuw %struct.oe_options, ptr %166, i32 0, i32 27
  store i32 1, ptr %managed243, align 8
  br label %if.end244

if.end244:                                        ; preds = %if.end242, %if.end234
  br label %sw.epilog

sw.bb245:                                         ; preds = %while.body
  %167 = load ptr, ptr @optarg, align 8
  %168 = load ptr, ptr %opt.addr, align 8
  %quality = getelementptr inbounds nuw %struct.oe_options, ptr %168, i32 0, i32 31
  %call246 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %167, ptr noundef @.str.167, ptr noundef %quality) #6
  %cmp247 = icmp ne i32 %call246, 1
  br i1 %cmp247, label %if.then249, label %if.end251

if.then249:                                       ; preds = %sw.bb245
  %169 = load ptr, ptr @stderr, align 8
  %170 = load ptr, ptr @optarg, align 8
  %call250 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef @.str.176, ptr noundef %170) #6
  br label %sw.epilog

if.end251:                                        ; preds = %sw.bb245
  %171 = load ptr, ptr %opt.addr, align 8
  %quality_set = getelementptr inbounds nuw %struct.oe_options, ptr %171, i32 0, i32 32
  store i32 1, ptr %quality_set, align 4
  %172 = load ptr, ptr %opt.addr, align 8
  %quality252 = getelementptr inbounds nuw %struct.oe_options, ptr %172, i32 0, i32 31
  %173 = load float, ptr %quality252, align 8
  %conv253 = fpext float %173 to double
  %mul254 = fmul double %conv253, 1.000000e-01
  %conv255 = fptrunc double %mul254 to float
  store float %conv255, ptr %quality252, align 8
  %174 = load ptr, ptr %opt.addr, align 8
  %quality256 = getelementptr inbounds nuw %struct.oe_options, ptr %174, i32 0, i32 31
  %175 = load float, ptr %quality256, align 8
  %cmp257 = fcmp ogt float %175, 1.000000e+00
  br i1 %cmp257, label %if.then259, label %if.end262

if.then259:                                       ; preds = %if.end251
  %176 = load ptr, ptr %opt.addr, align 8
  %quality260 = getelementptr inbounds nuw %struct.oe_options, ptr %176, i32 0, i32 31
  store float 1.000000e+00, ptr %quality260, align 8
  %177 = load ptr, ptr @stderr, align 8
  %call261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.177) #6
  br label %if.end262

if.end262:                                        ; preds = %if.then259, %if.end251
  br label %sw.epilog

sw.bb263:                                         ; preds = %while.body
  %178 = load ptr, ptr %opt.addr, align 8
  %namefmt = getelementptr inbounds nuw %struct.oe_options, ptr %178, i32 0, i32 23
  %179 = load ptr, ptr %namefmt, align 8
  %tobool264 = icmp ne ptr %179, null
  br i1 %tobool264, label %if.then265, label %if.end268

if.then265:                                       ; preds = %sw.bb263
  %180 = load ptr, ptr @stderr, align 8
  %call266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef @.str.178) #6
  %181 = load ptr, ptr %opt.addr, align 8
  %namefmt267 = getelementptr inbounds nuw %struct.oe_options, ptr %181, i32 0, i32 23
  %182 = load ptr, ptr %namefmt267, align 8
  call void @free(ptr noundef %182) #6
  br label %if.end268

if.end268:                                        ; preds = %if.then265, %sw.bb263
  %183 = load ptr, ptr @optarg, align 8
  %call269 = call noalias ptr @strdup(ptr noundef %183) #6
  %184 = load ptr, ptr %opt.addr, align 8
  %namefmt270 = getelementptr inbounds nuw %struct.oe_options, ptr %184, i32 0, i32 23
  store ptr %call269, ptr %namefmt270, align 8
  br label %sw.epilog

sw.bb271:                                         ; preds = %while.body
  %185 = load ptr, ptr %opt.addr, align 8
  %namefmt_remove = getelementptr inbounds nuw %struct.oe_options, ptr %185, i32 0, i32 24
  %186 = load ptr, ptr %namefmt_remove, align 8
  %tobool272 = icmp ne ptr %186, null
  br i1 %tobool272, label %land.lhs.true, label %if.end279

land.lhs.true:                                    ; preds = %sw.bb271
  %187 = load ptr, ptr %opt.addr, align 8
  %namefmt_remove273 = getelementptr inbounds nuw %struct.oe_options, ptr %187, i32 0, i32 24
  %188 = load ptr, ptr %namefmt_remove273, align 8
  %cmp274 = icmp ne ptr %188, @.str.30
  br i1 %cmp274, label %if.then276, label %if.end279

if.then276:                                       ; preds = %land.lhs.true
  %189 = load ptr, ptr @stderr, align 8
  %call277 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef @.str.179) #6
  %190 = load ptr, ptr %opt.addr, align 8
  %namefmt_remove278 = getelementptr inbounds nuw %struct.oe_options, ptr %190, i32 0, i32 24
  %191 = load ptr, ptr %namefmt_remove278, align 8
  call void @free(ptr noundef %191) #6
  br label %if.end279

if.end279:                                        ; preds = %if.then276, %land.lhs.true, %sw.bb271
  %192 = load ptr, ptr @optarg, align 8
  %call280 = call noalias ptr @strdup(ptr noundef %192) #6
  %193 = load ptr, ptr %opt.addr, align 8
  %namefmt_remove281 = getelementptr inbounds nuw %struct.oe_options, ptr %193, i32 0, i32 24
  store ptr %call280, ptr %namefmt_remove281, align 8
  br label %sw.epilog

sw.bb282:                                         ; preds = %while.body
  %194 = load ptr, ptr %opt.addr, align 8
  %namefmt_replace = getelementptr inbounds nuw %struct.oe_options, ptr %194, i32 0, i32 25
  %195 = load ptr, ptr %namefmt_replace, align 8
  %tobool283 = icmp ne ptr %195, null
  br i1 %tobool283, label %land.lhs.true284, label %if.end291

land.lhs.true284:                                 ; preds = %sw.bb282
  %196 = load ptr, ptr %opt.addr, align 8
  %namefmt_replace285 = getelementptr inbounds nuw %struct.oe_options, ptr %196, i32 0, i32 25
  %197 = load ptr, ptr %namefmt_replace285, align 8
  %cmp286 = icmp ne ptr %197, null
  br i1 %cmp286, label %if.then288, label %if.end291

if.then288:                                       ; preds = %land.lhs.true284
  %198 = load ptr, ptr @stderr, align 8
  %call289 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef @.str.180) #6
  %199 = load ptr, ptr %opt.addr, align 8
  %namefmt_replace290 = getelementptr inbounds nuw %struct.oe_options, ptr %199, i32 0, i32 25
  %200 = load ptr, ptr %namefmt_replace290, align 8
  call void @free(ptr noundef %200) #6
  br label %if.end291

if.end291:                                        ; preds = %if.then288, %land.lhs.true284, %sw.bb282
  %201 = load ptr, ptr @optarg, align 8
  %call292 = call noalias ptr @strdup(ptr noundef %201) #6
  %202 = load ptr, ptr %opt.addr, align 8
  %namefmt_replace293 = getelementptr inbounds nuw %struct.oe_options, ptr %202, i32 0, i32 25
  store ptr %call292, ptr %namefmt_replace293, align 8
  br label %sw.epilog

sw.bb294:                                         ; preds = %while.body
  %203 = load ptr, ptr %opt.addr, align 8
  %outfile = getelementptr inbounds nuw %struct.oe_options, ptr %203, i32 0, i32 26
  %204 = load ptr, ptr %outfile, align 8
  %tobool295 = icmp ne ptr %204, null
  br i1 %tobool295, label %if.then296, label %if.end299

if.then296:                                       ; preds = %sw.bb294
  %205 = load ptr, ptr @stderr, align 8
  %call297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.181) #6
  %206 = load ptr, ptr %opt.addr, align 8
  %outfile298 = getelementptr inbounds nuw %struct.oe_options, ptr %206, i32 0, i32 26
  %207 = load ptr, ptr %outfile298, align 8
  call void @free(ptr noundef %207) #6
  br label %if.end299

if.end299:                                        ; preds = %if.then296, %sw.bb294
  %208 = load ptr, ptr @optarg, align 8
  %call300 = call noalias ptr @strdup(ptr noundef %208) #6
  %209 = load ptr, ptr %opt.addr, align 8
  %outfile301 = getelementptr inbounds nuw %struct.oe_options, ptr %209, i32 0, i32 26
  store ptr %call300, ptr %outfile301, align 8
  br label %sw.epilog

sw.bb302:                                         ; preds = %while.body
  %210 = load ptr, ptr %opt.addr, align 8
  %quiet303 = getelementptr inbounds nuw %struct.oe_options, ptr %210, i32 0, i32 17
  store i32 1, ptr %quiet303, align 8
  br label %sw.epilog

sw.bb304:                                         ; preds = %while.body
  %211 = load ptr, ptr %opt.addr, align 8
  %rawmode305 = getelementptr inbounds nuw %struct.oe_options, ptr %211, i32 0, i32 18
  store i32 1, ptr %rawmode305, align 4
  br label %sw.epilog

sw.bb306:                                         ; preds = %while.body
  %212 = load ptr, ptr @stdout, align 8
  %call307 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.32) #6
  call void @exit(i32 noundef 0) #8
  unreachable

sw.bb308:                                         ; preds = %while.body
  %213 = load ptr, ptr %opt.addr, align 8
  %rawmode309 = getelementptr inbounds nuw %struct.oe_options, ptr %213, i32 0, i32 18
  %214 = load i32, ptr %rawmode309, align 4
  %cmp310 = icmp ne i32 %214, 1
  br i1 %cmp310, label %if.then312, label %if.end315

if.then312:                                       ; preds = %sw.bb308
  %215 = load ptr, ptr %opt.addr, align 8
  %rawmode313 = getelementptr inbounds nuw %struct.oe_options, ptr %215, i32 0, i32 18
  store i32 1, ptr %rawmode313, align 4
  %216 = load ptr, ptr @stderr, align 8
  %call314 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef @.str.182) #6
  br label %if.end315

if.end315:                                        ; preds = %if.then312, %sw.bb308
  %217 = load ptr, ptr @optarg, align 8
  %218 = load ptr, ptr %opt.addr, align 8
  %raw_samplesize = getelementptr inbounds nuw %struct.oe_options, ptr %218, i32 0, i32 19
  %call316 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %217, ptr noundef @.str.172, ptr noundef %raw_samplesize) #6
  %cmp317 = icmp ne i32 %call316, 1
  br i1 %cmp317, label %if.then319, label %if.end322

if.then319:                                       ; preds = %if.end315
  %219 = load ptr, ptr %opt.addr, align 8
  %raw_samplesize320 = getelementptr inbounds nuw %struct.oe_options, ptr %219, i32 0, i32 19
  store i32 16, ptr %raw_samplesize320, align 8
  %220 = load ptr, ptr @stderr, align 8
  %call321 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.183) #6
  br label %if.end322

if.end322:                                        ; preds = %if.then319, %if.end315
  %221 = load ptr, ptr %opt.addr, align 8
  %raw_samplesize323 = getelementptr inbounds nuw %struct.oe_options, ptr %221, i32 0, i32 19
  %222 = load i32, ptr %raw_samplesize323, align 8
  %cmp324 = icmp ne i32 %222, 8
  br i1 %cmp324, label %land.lhs.true326, label %if.end332

land.lhs.true326:                                 ; preds = %if.end322
  %223 = load ptr, ptr %opt.addr, align 8
  %raw_samplesize327 = getelementptr inbounds nuw %struct.oe_options, ptr %223, i32 0, i32 19
  %224 = load i32, ptr %raw_samplesize327, align 8
  %cmp328 = icmp ne i32 %224, 16
  br i1 %cmp328, label %if.then330, label %if.end332

if.then330:                                       ; preds = %land.lhs.true326
  %225 = load ptr, ptr @stderr, align 8
  %call331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.183) #6
  br label %if.end332

if.end332:                                        ; preds = %if.then330, %land.lhs.true326, %if.end322
  br label %sw.epilog

sw.bb333:                                         ; preds = %while.body
  %226 = load ptr, ptr %opt.addr, align 8
  %rawmode334 = getelementptr inbounds nuw %struct.oe_options, ptr %226, i32 0, i32 18
  %227 = load i32, ptr %rawmode334, align 4
  %cmp335 = icmp ne i32 %227, 1
  br i1 %cmp335, label %if.then337, label %if.end340

if.then337:                                       ; preds = %sw.bb333
  %228 = load ptr, ptr %opt.addr, align 8
  %rawmode338 = getelementptr inbounds nuw %struct.oe_options, ptr %228, i32 0, i32 18
  store i32 1, ptr %rawmode338, align 4
  %229 = load ptr, ptr @stderr, align 8
  %call339 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %229, ptr noundef @.str.184) #6
  br label %if.end340

if.end340:                                        ; preds = %if.then337, %sw.bb333
  %230 = load ptr, ptr @optarg, align 8
  %231 = load ptr, ptr %opt.addr, align 8
  %raw_channels = getelementptr inbounds nuw %struct.oe_options, ptr %231, i32 0, i32 21
  %call341 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %230, ptr noundef @.str.172, ptr noundef %raw_channels) #6
  %cmp342 = icmp ne i32 %call341, 1
  br i1 %cmp342, label %if.then344, label %if.end347

if.then344:                                       ; preds = %if.end340
  %232 = load ptr, ptr %opt.addr, align 8
  %raw_channels345 = getelementptr inbounds nuw %struct.oe_options, ptr %232, i32 0, i32 21
  store i32 2, ptr %raw_channels345, align 8
  %233 = load ptr, ptr @stderr, align 8
  %call346 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %233, ptr noundef @.str.185) #6
  br label %if.end347

if.end347:                                        ; preds = %if.then344, %if.end340
  br label %sw.epilog

sw.bb348:                                         ; preds = %while.body
  %234 = load ptr, ptr %opt.addr, align 8
  %tracknum = getelementptr inbounds nuw %struct.oe_options, ptr %234, i32 0, i32 8
  %235 = load ptr, ptr %tracknum, align 8
  %236 = load ptr, ptr %opt.addr, align 8
  %track_count = getelementptr inbounds nuw %struct.oe_options, ptr %236, i32 0, i32 9
  %237 = load i32, ptr %track_count, align 8
  %inc349 = add nsw i32 %237, 1
  store i32 %inc349, ptr %track_count, align 8
  %conv350 = sext i32 %inc349 to i64
  %mul351 = mul i64 %conv350, 8
  %call352 = call ptr @realloc(ptr noundef %235, i64 noundef %mul351) #7
  %238 = load ptr, ptr %opt.addr, align 8
  %tracknum353 = getelementptr inbounds nuw %struct.oe_options, ptr %238, i32 0, i32 8
  store ptr %call352, ptr %tracknum353, align 8
  %239 = load ptr, ptr @optarg, align 8
  %call354 = call noalias ptr @strdup(ptr noundef %239) #6
  %240 = load ptr, ptr %opt.addr, align 8
  %tracknum355 = getelementptr inbounds nuw %struct.oe_options, ptr %240, i32 0, i32 8
  %241 = load ptr, ptr %tracknum355, align 8
  %242 = load ptr, ptr %opt.addr, align 8
  %track_count356 = getelementptr inbounds nuw %struct.oe_options, ptr %242, i32 0, i32 9
  %243 = load i32, ptr %track_count356, align 8
  %sub357 = sub nsw i32 %243, 1
  %idxprom358 = sext i32 %sub357 to i64
  %arrayidx359 = getelementptr inbounds ptr, ptr %241, i64 %idxprom358
  store ptr %call354, ptr %arrayidx359, align 8
  br label %sw.epilog

sw.bb360:                                         ; preds = %while.body
  %244 = load ptr, ptr %opt.addr, align 8
  %rawmode361 = getelementptr inbounds nuw %struct.oe_options, ptr %244, i32 0, i32 18
  %245 = load i32, ptr %rawmode361, align 4
  %cmp362 = icmp ne i32 %245, 1
  br i1 %cmp362, label %if.then364, label %if.end367

if.then364:                                       ; preds = %sw.bb360
  %246 = load ptr, ptr %opt.addr, align 8
  %rawmode365 = getelementptr inbounds nuw %struct.oe_options, ptr %246, i32 0, i32 18
  store i32 1, ptr %rawmode365, align 4
  %247 = load ptr, ptr @stderr, align 8
  %call366 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef @.str.186) #6
  br label %if.end367

if.end367:                                        ; preds = %if.then364, %sw.bb360
  %248 = load ptr, ptr @optarg, align 8
  %249 = load ptr, ptr %opt.addr, align 8
  %raw_samplerate = getelementptr inbounds nuw %struct.oe_options, ptr %249, i32 0, i32 20
  %call368 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %248, ptr noundef @.str.172, ptr noundef %raw_samplerate) #6
  %cmp369 = icmp ne i32 %call368, 1
  br i1 %cmp369, label %if.then371, label %if.end374

if.then371:                                       ; preds = %if.end367
  %250 = load ptr, ptr %opt.addr, align 8
  %raw_samplerate372 = getelementptr inbounds nuw %struct.oe_options, ptr %250, i32 0, i32 20
  store i32 44100, ptr %raw_samplerate372, align 4
  %251 = load ptr, ptr @stderr, align 8
  %call373 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %251, ptr noundef @.str.187) #6
  br label %if.end374

if.end374:                                        ; preds = %if.then371, %if.end367
  br label %sw.epilog

sw.bb375:                                         ; preds = %while.body
  %252 = load ptr, ptr @stderr, align 8
  %call376 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %252, ptr noundef @.str.188) #6
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @usage()
  call void @exit(i32 noundef 0) #8
  unreachable

sw.epilog:                                        ; preds = %sw.bb375, %if.end374, %sw.bb348, %if.end347, %if.end332, %sw.bb304, %sw.bb302, %if.end299, %if.end291, %if.end279, %if.end268, %if.end262, %if.then249, %if.end244, %if.end226, %if.end208, %sw.bb189, %if.end188, %sw.bb170, %sw.bb157, %sw.bb145, %if.end133, %if.then131, %sw.bb115, %if.end114
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #1

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(read)
declare double @atof(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @usage() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(1) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
