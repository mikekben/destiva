; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovectl_ratemanage_arg = type { i32, i64, i64, double, i64, i64, double, double }
%struct.adv_opt = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str.195 = external hidden unnamed_addr constant [44 x i8], align 1
@.str.196 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.197 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.198 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.199 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.200 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.201 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.202 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.203 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.204 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.205 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.206 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.207 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.208 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.209 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.210 = external hidden unnamed_addr constant [35 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_encode_ctl(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @set_advanced_encoder_options(ptr noundef %opts, i32 noundef %count, ptr noundef %vi) #2 {
entry:
  %opts.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %hard = alloca i32, align 4
  %avg = alloca i32, align 4
  %ai = alloca %struct.ovectl_ratemanage_arg, align 8
  %i = alloca i32, align 4
  %dval = alloca double, align 8
  %lval = alloca i64, align 8
  %val172 = alloca double, align 8
  %prev = alloca double, align 8
  %new = alloca double, align 8
  store ptr %opts, ptr %opts.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store i32 0, ptr %hard, align 4
  store i32 0, ptr %avg, align 4
  %0 = load ptr, ptr %vi.addr, align 8
  %call = call i32 @vorbis_encode_ctl(ptr noundef %0, i32 noundef 16, ptr noundef %ai)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @stderr, align 8
  %4 = load ptr, ptr %opts.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.adv_opt, ptr %4, i64 %idxprom
  %arg = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx, i32 0, i32 0
  %6 = load ptr, ptr %arg, align 8
  %7 = load ptr, ptr %opts.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds %struct.adv_opt, ptr %7, i64 %idxprom1
  %val = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx2, i32 0, i32 1
  %9 = load ptr, ptr %val, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.195, ptr noundef %6, ptr noundef %9) #3
  %10 = load ptr, ptr %opts.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds %struct.adv_opt, ptr %10, i64 %idxprom4
  %arg6 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx5, i32 0, i32 0
  %12 = load ptr, ptr %arg6, align 8
  %call7 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.196) #4
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.else21, label %if.then

if.then:                                          ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %13 = load ptr, ptr %opts.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.adv_opt, ptr %13, i64 %idxprom8
  %val10 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx9, i32 0, i32 1
  %15 = load ptr, ptr %val10, align 8
  %call11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %15, ptr noundef @.str.197, ptr noundef %dval) #3
  %cmp12 = icmp ne i32 %call11, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %do.body
  %16 = load ptr, ptr @stderr, align 8
  %17 = load ptr, ptr %opts.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds %struct.adv_opt, ptr %17, i64 %idxprom14
  %arg16 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx15, i32 0, i32 0
  %19 = load ptr, ptr %arg16, align 8
  %20 = load ptr, ptr %opts.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds %struct.adv_opt, ptr %20, i64 %idxprom17
  %val19 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx18, i32 0, i32 1
  %22 = load ptr, ptr %val19, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.198, ptr noundef %19, ptr noundef %22) #3
  br label %if.end

if.else:                                          ; preds = %do.body
  %23 = load double, ptr %dval, align 8
  %bitrate_av_window = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 6
  store double %23, ptr %bitrate_av_window, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then13
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 1, ptr %avg, align 4
  br label %if.end231

if.else21:                                        ; preds = %for.body
  %24 = load ptr, ptr %opts.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds %struct.adv_opt, ptr %24, i64 %idxprom22
  %arg24 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx23, i32 0, i32 0
  %26 = load ptr, ptr %arg24, align 8
  %call25 = call i32 @strcmp(ptr noundef %26, ptr noundef @.str.199) #4
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.else45, label %if.then27

if.then27:                                        ; preds = %if.else21
  br label %do.body28

do.body28:                                        ; preds = %if.then27
  %27 = load ptr, ptr %opts.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds %struct.adv_opt, ptr %27, i64 %idxprom29
  %val31 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx30, i32 0, i32 1
  %29 = load ptr, ptr %val31, align 8
  %call32 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %29, ptr noundef @.str.197, ptr noundef %dval) #3
  %cmp33 = icmp ne i32 %call32, 1
  br i1 %cmp33, label %if.then34, label %if.else42

if.then34:                                        ; preds = %do.body28
  %30 = load ptr, ptr @stderr, align 8
  %31 = load ptr, ptr %opts.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds %struct.adv_opt, ptr %31, i64 %idxprom35
  %arg37 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx36, i32 0, i32 0
  %33 = load ptr, ptr %arg37, align 8
  %34 = load ptr, ptr %opts.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %35 to i64
  %arrayidx39 = getelementptr inbounds %struct.adv_opt, ptr %34, i64 %idxprom38
  %val40 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx39, i32 0, i32 1
  %36 = load ptr, ptr %val40, align 8
  %call41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.198, ptr noundef %33, ptr noundef %36) #3
  br label %if.end43

if.else42:                                        ; preds = %do.body28
  %37 = load double, ptr %dval, align 8
  %bitrate_av_window_center = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 7
  store double %37, ptr %bitrate_av_window_center, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then34
  br label %do.end44

do.end44:                                         ; preds = %if.end43
  store i32 1, ptr %avg, align 4
  br label %if.end230

if.else45:                                        ; preds = %if.else21
  %38 = load ptr, ptr %opts.addr, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %39 to i64
  %arrayidx47 = getelementptr inbounds %struct.adv_opt, ptr %38, i64 %idxprom46
  %arg48 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx47, i32 0, i32 0
  %40 = load ptr, ptr %arg48, align 8
  %call49 = call i32 @strcmp(ptr noundef %40, ptr noundef @.str.200) #4
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else69, label %if.then51

if.then51:                                        ; preds = %if.else45
  br label %do.body52

do.body52:                                        ; preds = %if.then51
  %41 = load ptr, ptr %opts.addr, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %42 to i64
  %arrayidx54 = getelementptr inbounds %struct.adv_opt, ptr %41, i64 %idxprom53
  %val55 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx54, i32 0, i32 1
  %43 = load ptr, ptr %val55, align 8
  %call56 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %43, ptr noundef @.str.201, ptr noundef %lval) #3
  %cmp57 = icmp ne i32 %call56, 1
  br i1 %cmp57, label %if.then58, label %if.else66

if.then58:                                        ; preds = %do.body52
  %44 = load ptr, ptr @stderr, align 8
  %45 = load ptr, ptr %opts.addr, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds %struct.adv_opt, ptr %45, i64 %idxprom59
  %arg61 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx60, i32 0, i32 0
  %47 = load ptr, ptr %arg61, align 8
  %48 = load ptr, ptr %opts.addr, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %49 to i64
  %arrayidx63 = getelementptr inbounds %struct.adv_opt, ptr %48, i64 %idxprom62
  %val64 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx63, i32 0, i32 1
  %50 = load ptr, ptr %val64, align 8
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.202, ptr noundef %47, ptr noundef %50) #3
  br label %if.end67

if.else66:                                        ; preds = %do.body52
  %51 = load i64, ptr %lval, align 8
  %bitrate_av_lo = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 4
  store i64 %51, ptr %bitrate_av_lo, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.else66, %if.then58
  br label %do.end68

do.end68:                                         ; preds = %if.end67
  store i32 1, ptr %avg, align 4
  br label %if.end229

if.else69:                                        ; preds = %if.else45
  %52 = load ptr, ptr %opts.addr, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %53 to i64
  %arrayidx71 = getelementptr inbounds %struct.adv_opt, ptr %52, i64 %idxprom70
  %arg72 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx71, i32 0, i32 0
  %54 = load ptr, ptr %arg72, align 8
  %call73 = call i32 @strcmp(ptr noundef %54, ptr noundef @.str.203) #4
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.else93, label %if.then75

if.then75:                                        ; preds = %if.else69
  br label %do.body76

do.body76:                                        ; preds = %if.then75
  %55 = load ptr, ptr %opts.addr, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom77 = sext i32 %56 to i64
  %arrayidx78 = getelementptr inbounds %struct.adv_opt, ptr %55, i64 %idxprom77
  %val79 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx78, i32 0, i32 1
  %57 = load ptr, ptr %val79, align 8
  %call80 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %57, ptr noundef @.str.201, ptr noundef %lval) #3
  %cmp81 = icmp ne i32 %call80, 1
  br i1 %cmp81, label %if.then82, label %if.else90

if.then82:                                        ; preds = %do.body76
  %58 = load ptr, ptr @stderr, align 8
  %59 = load ptr, ptr %opts.addr, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom83 = sext i32 %60 to i64
  %arrayidx84 = getelementptr inbounds %struct.adv_opt, ptr %59, i64 %idxprom83
  %arg85 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx84, i32 0, i32 0
  %61 = load ptr, ptr %arg85, align 8
  %62 = load ptr, ptr %opts.addr, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %63 to i64
  %arrayidx87 = getelementptr inbounds %struct.adv_opt, ptr %62, i64 %idxprom86
  %val88 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx87, i32 0, i32 1
  %64 = load ptr, ptr %val88, align 8
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.202, ptr noundef %61, ptr noundef %64) #3
  br label %if.end91

if.else90:                                        ; preds = %do.body76
  %65 = load i64, ptr %lval, align 8
  %bitrate_av_hi = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 5
  store i64 %65, ptr %bitrate_av_hi, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.else90, %if.then82
  br label %do.end92

do.end92:                                         ; preds = %if.end91
  store i32 1, ptr %avg, align 4
  br label %if.end228

if.else93:                                        ; preds = %if.else69
  %66 = load ptr, ptr %opts.addr, align 8
  %67 = load i32, ptr %i, align 4
  %idxprom94 = sext i32 %67 to i64
  %arrayidx95 = getelementptr inbounds %struct.adv_opt, ptr %66, i64 %idxprom94
  %arg96 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx95, i32 0, i32 0
  %68 = load ptr, ptr %arg96, align 8
  %call97 = call i32 @strcmp(ptr noundef %68, ptr noundef @.str.204) #4
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.else117, label %if.then99

if.then99:                                        ; preds = %if.else93
  br label %do.body100

do.body100:                                       ; preds = %if.then99
  %69 = load ptr, ptr %opts.addr, align 8
  %70 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %70 to i64
  %arrayidx102 = getelementptr inbounds %struct.adv_opt, ptr %69, i64 %idxprom101
  %val103 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx102, i32 0, i32 1
  %71 = load ptr, ptr %val103, align 8
  %call104 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %71, ptr noundef @.str.201, ptr noundef %lval) #3
  %cmp105 = icmp ne i32 %call104, 1
  br i1 %cmp105, label %if.then106, label %if.else114

if.then106:                                       ; preds = %do.body100
  %72 = load ptr, ptr @stderr, align 8
  %73 = load ptr, ptr %opts.addr, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom107 = sext i32 %74 to i64
  %arrayidx108 = getelementptr inbounds %struct.adv_opt, ptr %73, i64 %idxprom107
  %arg109 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx108, i32 0, i32 0
  %75 = load ptr, ptr %arg109, align 8
  %76 = load ptr, ptr %opts.addr, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %77 to i64
  %arrayidx111 = getelementptr inbounds %struct.adv_opt, ptr %76, i64 %idxprom110
  %val112 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx111, i32 0, i32 1
  %78 = load ptr, ptr %val112, align 8
  %call113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.202, ptr noundef %75, ptr noundef %78) #3
  br label %if.end115

if.else114:                                       ; preds = %do.body100
  %79 = load i64, ptr %lval, align 8
  %bitrate_hard_min = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 1
  store i64 %79, ptr %bitrate_hard_min, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.else114, %if.then106
  br label %do.end116

do.end116:                                        ; preds = %if.end115
  store i32 1, ptr %hard, align 4
  br label %if.end227

if.else117:                                       ; preds = %if.else93
  %80 = load ptr, ptr %opts.addr, align 8
  %81 = load i32, ptr %i, align 4
  %idxprom118 = sext i32 %81 to i64
  %arrayidx119 = getelementptr inbounds %struct.adv_opt, ptr %80, i64 %idxprom118
  %arg120 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx119, i32 0, i32 0
  %82 = load ptr, ptr %arg120, align 8
  %call121 = call i32 @strcmp(ptr noundef %82, ptr noundef @.str.205) #4
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.else141, label %if.then123

if.then123:                                       ; preds = %if.else117
  br label %do.body124

do.body124:                                       ; preds = %if.then123
  %83 = load ptr, ptr %opts.addr, align 8
  %84 = load i32, ptr %i, align 4
  %idxprom125 = sext i32 %84 to i64
  %arrayidx126 = getelementptr inbounds %struct.adv_opt, ptr %83, i64 %idxprom125
  %val127 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx126, i32 0, i32 1
  %85 = load ptr, ptr %val127, align 8
  %call128 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %85, ptr noundef @.str.201, ptr noundef %lval) #3
  %cmp129 = icmp ne i32 %call128, 1
  br i1 %cmp129, label %if.then130, label %if.else138

if.then130:                                       ; preds = %do.body124
  %86 = load ptr, ptr @stderr, align 8
  %87 = load ptr, ptr %opts.addr, align 8
  %88 = load i32, ptr %i, align 4
  %idxprom131 = sext i32 %88 to i64
  %arrayidx132 = getelementptr inbounds %struct.adv_opt, ptr %87, i64 %idxprom131
  %arg133 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx132, i32 0, i32 0
  %89 = load ptr, ptr %arg133, align 8
  %90 = load ptr, ptr %opts.addr, align 8
  %91 = load i32, ptr %i, align 4
  %idxprom134 = sext i32 %91 to i64
  %arrayidx135 = getelementptr inbounds %struct.adv_opt, ptr %90, i64 %idxprom134
  %val136 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx135, i32 0, i32 1
  %92 = load ptr, ptr %val136, align 8
  %call137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.202, ptr noundef %89, ptr noundef %92) #3
  br label %if.end139

if.else138:                                       ; preds = %do.body124
  %93 = load i64, ptr %lval, align 8
  %bitrate_hard_max = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 2
  store i64 %93, ptr %bitrate_hard_max, align 8
  br label %if.end139

if.end139:                                        ; preds = %if.else138, %if.then130
  br label %do.end140

do.end140:                                        ; preds = %if.end139
  store i32 1, ptr %hard, align 4
  br label %if.end226

if.else141:                                       ; preds = %if.else117
  %94 = load ptr, ptr %opts.addr, align 8
  %95 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %95 to i64
  %arrayidx143 = getelementptr inbounds %struct.adv_opt, ptr %94, i64 %idxprom142
  %arg144 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx143, i32 0, i32 0
  %96 = load ptr, ptr %arg144, align 8
  %call145 = call i32 @strcmp(ptr noundef %96, ptr noundef @.str.206) #4
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.else165, label %if.then147

if.then147:                                       ; preds = %if.else141
  br label %do.body148

do.body148:                                       ; preds = %if.then147
  %97 = load ptr, ptr %opts.addr, align 8
  %98 = load i32, ptr %i, align 4
  %idxprom149 = sext i32 %98 to i64
  %arrayidx150 = getelementptr inbounds %struct.adv_opt, ptr %97, i64 %idxprom149
  %val151 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx150, i32 0, i32 1
  %99 = load ptr, ptr %val151, align 8
  %call152 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %99, ptr noundef @.str.197, ptr noundef %dval) #3
  %cmp153 = icmp ne i32 %call152, 1
  br i1 %cmp153, label %if.then154, label %if.else162

if.then154:                                       ; preds = %do.body148
  %100 = load ptr, ptr @stderr, align 8
  %101 = load ptr, ptr %opts.addr, align 8
  %102 = load i32, ptr %i, align 4
  %idxprom155 = sext i32 %102 to i64
  %arrayidx156 = getelementptr inbounds %struct.adv_opt, ptr %101, i64 %idxprom155
  %arg157 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx156, i32 0, i32 0
  %103 = load ptr, ptr %arg157, align 8
  %104 = load ptr, ptr %opts.addr, align 8
  %105 = load i32, ptr %i, align 4
  %idxprom158 = sext i32 %105 to i64
  %arrayidx159 = getelementptr inbounds %struct.adv_opt, ptr %104, i64 %idxprom158
  %val160 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx159, i32 0, i32 1
  %106 = load ptr, ptr %val160, align 8
  %call161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.198, ptr noundef %103, ptr noundef %106) #3
  br label %if.end163

if.else162:                                       ; preds = %do.body148
  %107 = load double, ptr %dval, align 8
  %bitrate_hard_window = getelementptr inbounds nuw %struct.ovectl_ratemanage_arg, ptr %ai, i32 0, i32 3
  store double %107, ptr %bitrate_hard_window, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.else162, %if.then154
  br label %do.end164

do.end164:                                        ; preds = %if.end163
  store i32 1, ptr %hard, align 4
  br label %if.end225

if.else165:                                       ; preds = %if.else141
  %108 = load ptr, ptr %opts.addr, align 8
  %109 = load i32, ptr %i, align 4
  %idxprom166 = sext i32 %109 to i64
  %arrayidx167 = getelementptr inbounds %struct.adv_opt, ptr %108, i64 %idxprom166
  %arg168 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx167, i32 0, i32 0
  %110 = load ptr, ptr %arg168, align 8
  %call169 = call i32 @strcmp(ptr noundef %110, ptr noundef @.str.207) #4
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.else191, label %if.then171

if.then171:                                       ; preds = %if.else165
  br label %do.body173

do.body173:                                       ; preds = %if.then171
  %111 = load ptr, ptr %opts.addr, align 8
  %112 = load i32, ptr %i, align 4
  %idxprom174 = sext i32 %112 to i64
  %arrayidx175 = getelementptr inbounds %struct.adv_opt, ptr %111, i64 %idxprom174
  %val176 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx175, i32 0, i32 1
  %113 = load ptr, ptr %val176, align 8
  %call177 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %113, ptr noundef @.str.197, ptr noundef %dval) #3
  %cmp178 = icmp ne i32 %call177, 1
  br i1 %cmp178, label %if.then179, label %if.else187

if.then179:                                       ; preds = %do.body173
  %114 = load ptr, ptr @stderr, align 8
  %115 = load ptr, ptr %opts.addr, align 8
  %116 = load i32, ptr %i, align 4
  %idxprom180 = sext i32 %116 to i64
  %arrayidx181 = getelementptr inbounds %struct.adv_opt, ptr %115, i64 %idxprom180
  %arg182 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx181, i32 0, i32 0
  %117 = load ptr, ptr %arg182, align 8
  %118 = load ptr, ptr %opts.addr, align 8
  %119 = load i32, ptr %i, align 4
  %idxprom183 = sext i32 %119 to i64
  %arrayidx184 = getelementptr inbounds %struct.adv_opt, ptr %118, i64 %idxprom183
  %val185 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx184, i32 0, i32 1
  %120 = load ptr, ptr %val185, align 8
  %call186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.198, ptr noundef %117, ptr noundef %120) #3
  br label %if.end188

if.else187:                                       ; preds = %do.body173
  %121 = load double, ptr %dval, align 8
  store double %121, ptr %val172, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.else187, %if.then179
  br label %do.end189

do.end189:                                        ; preds = %if.end188
  %122 = load ptr, ptr %vi.addr, align 8
  %call190 = call i32 @vorbis_encode_ctl(ptr noundef %122, i32 noundef 49, ptr noundef %val172)
  br label %if.end224

if.else191:                                       ; preds = %if.else165
  %123 = load ptr, ptr %opts.addr, align 8
  %124 = load i32, ptr %i, align 4
  %idxprom192 = sext i32 %124 to i64
  %arrayidx193 = getelementptr inbounds %struct.adv_opt, ptr %123, i64 %idxprom192
  %arg194 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx193, i32 0, i32 0
  %125 = load ptr, ptr %arg194, align 8
  %call195 = call i32 @strcmp(ptr noundef %125, ptr noundef @.str.208) #4
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.else218, label %if.then197

if.then197:                                       ; preds = %if.else191
  br label %do.body198

do.body198:                                       ; preds = %if.then197
  %126 = load ptr, ptr %opts.addr, align 8
  %127 = load i32, ptr %i, align 4
  %idxprom199 = sext i32 %127 to i64
  %arrayidx200 = getelementptr inbounds %struct.adv_opt, ptr %126, i64 %idxprom199
  %val201 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx200, i32 0, i32 1
  %128 = load ptr, ptr %val201, align 8
  %call202 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %128, ptr noundef @.str.197, ptr noundef %dval) #3
  %cmp203 = icmp ne i32 %call202, 1
  br i1 %cmp203, label %if.then204, label %if.else212

if.then204:                                       ; preds = %do.body198
  %129 = load ptr, ptr @stderr, align 8
  %130 = load ptr, ptr %opts.addr, align 8
  %131 = load i32, ptr %i, align 4
  %idxprom205 = sext i32 %131 to i64
  %arrayidx206 = getelementptr inbounds %struct.adv_opt, ptr %130, i64 %idxprom205
  %arg207 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx206, i32 0, i32 0
  %132 = load ptr, ptr %arg207, align 8
  %133 = load ptr, ptr %opts.addr, align 8
  %134 = load i32, ptr %i, align 4
  %idxprom208 = sext i32 %134 to i64
  %arrayidx209 = getelementptr inbounds %struct.adv_opt, ptr %133, i64 %idxprom208
  %val210 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx209, i32 0, i32 1
  %135 = load ptr, ptr %val210, align 8
  %call211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str.198, ptr noundef %132, ptr noundef %135) #3
  br label %if.end213

if.else212:                                       ; preds = %do.body198
  %136 = load double, ptr %dval, align 8
  store double %136, ptr %new, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.else212, %if.then204
  br label %do.end214

do.end214:                                        ; preds = %if.end213
  %137 = load ptr, ptr %vi.addr, align 8
  %call215 = call i32 @vorbis_encode_ctl(ptr noundef %137, i32 noundef 32, ptr noundef %prev)
  %138 = load ptr, ptr %vi.addr, align 8
  %call216 = call i32 @vorbis_encode_ctl(ptr noundef %138, i32 noundef 33, ptr noundef %new)
  %139 = load ptr, ptr @stderr, align 8
  %140 = load double, ptr %prev, align 8
  %141 = load double, ptr %new, align 8
  %call217 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.209, double noundef %140, double noundef %141) #3
  br label %if.end223

if.else218:                                       ; preds = %if.else191
  %142 = load ptr, ptr @stderr, align 8
  %143 = load ptr, ptr %opts.addr, align 8
  %144 = load i32, ptr %i, align 4
  %idxprom219 = sext i32 %144 to i64
  %arrayidx220 = getelementptr inbounds %struct.adv_opt, ptr %143, i64 %idxprom219
  %arg221 = getelementptr inbounds nuw %struct.adv_opt, ptr %arrayidx220, i32 0, i32 0
  %145 = load ptr, ptr %arg221, align 8
  %call222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef @.str.210, ptr noundef %145) #3
  br label %if.end223

if.end223:                                        ; preds = %if.else218, %do.end214
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %do.end189
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %do.end164
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %do.end140
  br label %if.end227

if.end227:                                        ; preds = %if.end226, %do.end116
  br label %if.end228

if.end228:                                        ; preds = %if.end227, %do.end92
  br label %if.end229

if.end229:                                        ; preds = %if.end228, %do.end68
  br label %if.end230

if.end230:                                        ; preds = %if.end229, %do.end44
  br label %if.end231

if.end231:                                        ; preds = %if.end230, %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end231
  %146 = load i32, ptr %i, align 4
  %inc = add nsw i32 %146, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %147 = load i32, ptr %hard, align 4
  %tobool232 = icmp ne i32 %147, 0
  br i1 %tobool232, label %if.then233, label %if.end235

if.then233:                                       ; preds = %for.end
  %148 = load ptr, ptr %vi.addr, align 8
  %call234 = call i32 @vorbis_encode_ctl(ptr noundef %148, i32 noundef 19, ptr noundef %ai)
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %for.end
  %149 = load i32, ptr %avg, align 4
  %tobool236 = icmp ne i32 %149, 0
  br i1 %tobool236, label %if.then237, label %if.end239

if.then237:                                       ; preds = %if.end235
  %150 = load ptr, ptr %vi.addr, align 8
  %call238 = call i32 @vorbis_encode_ctl(ptr noundef %150, i32 noundef 18, ptr noundef %ai)
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %if.end235
  ret void
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #0

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
