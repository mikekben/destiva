; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oe_options = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, float, i32, i32, i32, float, i32 }
%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }
%struct.vorbis_comment = type { ptr, ptr, i32, ptr }
%struct.input_format = type { ptr, i32, ptr, ptr, ptr, ptr }

@__const.main.opt = external hidden unnamed_addr constant { ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, [4 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, float, i32, i32, i32, float, i32 }, align 8
@optind = external dso_local global i32, align 4
@stderr = external global ptr, align 8
@.str.31 = external hidden unnamed_addr constant [56 x i8], align 1
@.str.32 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.33 = external hidden unnamed_addr constant [47 x i8], align 1
@.str.34 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.35 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.36 = external hidden unnamed_addr constant [78 x i8], align 1
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.37 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.38 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.39 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.40 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.41 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.42 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.43 = external hidden unnamed_addr constant [51 x i8], align 1
@.str.44 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.45 = external hidden unnamed_addr constant [74 x i8], align 1
@.str.46 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.47 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.48 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.49 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.50 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.51 = external hidden unnamed_addr constant [21 x i8], align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %opt = alloca %struct.oe_options, align 8
  %i = alloca i32, align 4
  %infiles = alloca ptr, align 8
  %numfiles = alloca i32, align 4
  %errors = alloca i32, align 4
  %enc_opts = alloca %struct.oe_enc_opt, align 8
  %vc = alloca %struct.vorbis_comment, align 8
  %out_fn = alloca ptr, align 8
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  %foundformat = alloca i32, align 4
  %closeout = alloca i32, align 4
  %closein = alloca i32, align 4
  %artist = alloca ptr, align 8
  %album = alloca ptr, align 8
  %title = alloca ptr, align 8
  %track = alloca ptr, align 8
  %date = alloca ptr, align 8
  %genre = alloca ptr, align 8
  %format = alloca ptr, align 8
  %start = alloca ptr, align 8
  %end = alloca ptr, align 8
  %fromrate = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %opt, ptr align 8 @__const.main.opt, i64 224, i1 false)
  store i32 0, ptr %errors, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  call void @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %opt)
  %2 = load i32, ptr @optind, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.31, ptr noundef @.str.32, ptr noundef @.str.33) #8
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %argv.addr, align 8
  %6 = load i32, ptr @optind, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %infiles, align 8
  %7 = load i32, ptr %argc.addr, align 4
  %8 = load i32, ptr @optind, align 4
  %sub = sub nsw i32 %7, %8
  store i32 %sub, ptr %numfiles, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %numfiles, align 4
  %cmp1 = icmp slt i32 %9, %10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %infiles, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %11, i64 %idxprom
  %13 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 @strcmp(ptr noundef %13, ptr noundef @.str.34) #9
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %14 = load i32, ptr %numfiles, align 4
  %cmp3 = icmp sgt i32 %14, 1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr @stderr, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.35) #8
  call void @exit(i32 noundef 1) #10
  unreachable

if.end6:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %numfiles, align 4
  %cmp7 = icmp sgt i32 %17, 1
  br i1 %cmp7, label %land.lhs.true8, label %if.end12

land.lhs.true8:                                   ; preds = %for.end
  %outfile = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 26
  %18 = load ptr, ptr %outfile, align 8
  %tobool9 = icmp ne ptr %18, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %land.lhs.true8
  %19 = load ptr, ptr @stderr, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.36) #8
  call void @exit(i32 noundef 1) #10
  unreachable

if.end12:                                         ; preds = %land.lhs.true8, %for.end
  %serial = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 36
  %20 = load i32, ptr %serial, align 4
  %cmp13 = icmp eq i32 %20, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end12
  %call15 = call i64 @time(ptr noundef null) #8
  %conv = trunc i64 %call15 to i32
  call void @srand(i32 noundef %conv) #8
  %call16 = call i32 @rand() #8
  %serial17 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 36
  store i32 %call16, ptr %serial17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end12
  store i32 0, ptr %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc292, %if.end18
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %numfiles, align 4
  %cmp20 = icmp slt i32 %21, %22
  br i1 %cmp20, label %for.body22, label %for.end294

for.body22:                                       ; preds = %for.cond19
  store ptr null, ptr %out_fn, align 8
  store ptr null, ptr %out, align 8
  store i32 0, ptr %foundformat, align 4
  store i32 0, ptr %closeout, align 4
  store i32 0, ptr %closein, align 4
  store ptr null, ptr %artist, align 8
  store ptr null, ptr %album, align 8
  store ptr null, ptr %title, align 8
  store ptr null, ptr %track, align 8
  store ptr null, ptr %date, align 8
  store ptr null, ptr %genre, align 8
  %serial23 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 36
  %23 = load i32, ptr %serial23, align 4
  %inc24 = add i32 %23, 1
  store i32 %inc24, ptr %serial23, align 4
  %serialno = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 1
  store i32 %23, ptr %serialno, align 8
  %progress_update = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 3
  store ptr @update_statistics_full, ptr %progress_update, align 8
  %start_encode = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 5
  store ptr @start_encode_full, ptr %start_encode, align 8
  %end_encode = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 4
  store ptr @final_statistics, ptr %end_encode, align 8
  %error = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 6
  store ptr @encode_error, ptr %error, align 8
  %comments = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 0
  store ptr %vc, ptr %comments, align 8
  %copy_comments = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 16
  %24 = load i32, ptr %copy_comments, align 4
  %copy_comments25 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 14
  store i32 %24, ptr %copy_comments25, align 4
  %25 = load i32, ptr %i, align 4
  call void @build_comments(ptr noundef %vc, ptr noundef %opt, i32 noundef %25, ptr noundef %artist, ptr noundef %album, ptr noundef %title, ptr noundef %track, ptr noundef %date, ptr noundef %genre)
  %26 = load ptr, ptr %infiles, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %26, i64 %idxprom26
  %28 = load ptr, ptr %arrayidx27, align 8
  %call28 = call i32 @strcmp(ptr noundef %28, ptr noundef @.str.34) #9
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else37, label %if.then30

if.then30:                                        ; preds = %for.body22
  %29 = load ptr, ptr @stdin, align 8
  store ptr %29, ptr %in, align 8
  %30 = load ptr, ptr %infiles, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %31 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %30, i64 %idxprom31
  store ptr null, ptr %arrayidx32, align 8
  %outfile33 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 26
  %32 = load ptr, ptr %outfile33, align 8
  %tobool34 = icmp ne ptr %32, null
  br i1 %tobool34, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.then30
  %33 = load ptr, ptr @stdout, align 8
  store ptr %33, ptr %out, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.then30
  br label %if.end51

if.else37:                                        ; preds = %for.body22
  %34 = load ptr, ptr %infiles, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %35 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %34, i64 %idxprom38
  %36 = load ptr, ptr %arrayidx39, align 8
  %call40 = call noalias ptr @fopen(ptr noundef %36, ptr noundef @.str.37)
  store ptr %call40, ptr %in, align 8
  %37 = load ptr, ptr %in, align 8
  %cmp41 = icmp eq ptr %37, null
  br i1 %cmp41, label %if.then43, label %if.end50

if.then43:                                        ; preds = %if.else37
  %38 = load ptr, ptr @stderr, align 8
  %39 = load ptr, ptr %infiles, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %40 to i64
  %arrayidx45 = getelementptr inbounds ptr, ptr %39, i64 %idxprom44
  %41 = load ptr, ptr %arrayidx45, align 8
  %call46 = call ptr @__errno_location() #11
  %42 = load i32, ptr %call46, align 4
  %call47 = call ptr @strerror(i32 noundef %42) #8
  %call48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.38, ptr noundef %41, ptr noundef %call47) #8
  %43 = load ptr, ptr %out_fn, align 8
  call void @free(ptr noundef %43) #8
  %44 = load i32, ptr %errors, align 4
  %inc49 = add nsw i32 %44, 1
  store i32 %inc49, ptr %errors, align 4
  br label %for.inc292

if.end50:                                         ; preds = %if.else37
  store i32 1, ptr %closein, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end36
  %rawmode = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 18
  %45 = load i32, ptr %rawmode, align 4
  %tobool52 = icmp ne i32 %45, 0
  br i1 %tobool52, label %if.then53, label %if.else56

if.then53:                                        ; preds = %if.end51
  %raw_samplerate = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 20
  %46 = load i32, ptr %raw_samplerate, align 4
  %conv54 = sext i32 %46 to i64
  %rate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 10
  store i64 %conv54, ptr %rate, align 8
  %raw_channels = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 21
  %47 = load i32, ptr %raw_channels, align 8
  %channels = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 9
  store i32 %47, ptr %channels, align 8
  %raw_samplesize = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 19
  %48 = load i32, ptr %raw_samplesize, align 8
  %samplesize = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 11
  store i32 %48, ptr %samplesize, align 8
  %raw_endianness = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 22
  %49 = load i32, ptr %raw_endianness, align 4
  %endianness = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 12
  store i32 %49, ptr %endianness, align 4
  %50 = load ptr, ptr %in, align 8
  %call55 = call i32 @raw_open(ptr noundef %50, ptr noundef %enc_opts)
  store i32 1, ptr %foundformat, align 4
  br label %if.end66

if.else56:                                        ; preds = %if.end51
  %51 = load ptr, ptr %in, align 8
  %call57 = call ptr @open_audio_file(ptr noundef %51, ptr noundef %enc_opts)
  store ptr %call57, ptr %format, align 8
  %52 = load ptr, ptr %format, align 8
  %tobool58 = icmp ne ptr %52, null
  br i1 %tobool58, label %if.then59, label %if.end65

if.then59:                                        ; preds = %if.else56
  %quiet = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 17
  %53 = load i32, ptr %quiet, align 8
  %tobool60 = icmp ne i32 %53, 0
  br i1 %tobool60, label %if.end64, label %if.then61

if.then61:                                        ; preds = %if.then59
  %54 = load ptr, ptr @stderr, align 8
  %55 = load ptr, ptr %format, align 8
  %format62 = getelementptr inbounds nuw %struct.input_format, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %format62, align 8
  %57 = load ptr, ptr %format, align 8
  %description = getelementptr inbounds nuw %struct.input_format, ptr %57, i32 0, i32 5
  %58 = load ptr, ptr %description, align 8
  %call63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.39, ptr noundef %56, ptr noundef %58) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then59
  store i32 1, ptr %foundformat, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.else56
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then53
  %59 = load i32, ptr %foundformat, align 4
  %tobool67 = icmp ne i32 %59, 0
  br i1 %tobool67, label %if.end80, label %if.then68

if.then68:                                        ; preds = %if.end66
  %60 = load ptr, ptr @stderr, align 8
  %61 = load ptr, ptr %infiles, align 8
  %62 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %62 to i64
  %arrayidx70 = getelementptr inbounds ptr, ptr %61, i64 %idxprom69
  %63 = load ptr, ptr %arrayidx70, align 8
  %tobool71 = icmp ne ptr %63, null
  br i1 %tobool71, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then68
  %64 = load ptr, ptr %infiles, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %65 to i64
  %arrayidx73 = getelementptr inbounds ptr, ptr %64, i64 %idxprom72
  %66 = load ptr, ptr %arrayidx73, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then68
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %66, %cond.true ], [ @.str.41, %cond.false ]
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.40, ptr noundef %cond) #8
  %67 = load i32, ptr %closein, align 4
  %tobool75 = icmp ne i32 %67, 0
  br i1 %tobool75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %cond.end
  %68 = load ptr, ptr %in, align 8
  %call77 = call i32 @fclose(ptr noundef %68)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %cond.end
  %69 = load i32, ptr %errors, align 4
  %inc79 = add nsw i32 %69, 1
  store i32 %inc79, ptr %errors, align 4
  br label %for.inc292

if.end80:                                         ; preds = %if.end66
  %outfile81 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 26
  %70 = load ptr, ptr %outfile81, align 8
  %tobool82 = icmp ne ptr %70, null
  br i1 %tobool82, label %land.lhs.true83, label %if.else88

land.lhs.true83:                                  ; preds = %if.end80
  %outfile84 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 26
  %71 = load ptr, ptr %outfile84, align 8
  %call85 = call i32 @strcmp(ptr noundef %71, ptr noundef @.str.34) #9
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.else88, label %if.then87

if.then87:                                        ; preds = %land.lhs.true83
  %72 = load ptr, ptr @stdout, align 8
  store ptr %72, ptr %out, align 8
  br label %if.end162

if.else88:                                        ; preds = %land.lhs.true83, %if.end80
  %73 = load ptr, ptr %out, align 8
  %cmp89 = icmp eq ptr %73, null
  br i1 %cmp89, label %if.then91, label %if.end161

if.then91:                                        ; preds = %if.else88
  %outfile92 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 26
  %74 = load ptr, ptr %outfile92, align 8
  %tobool93 = icmp ne ptr %74, null
  br i1 %tobool93, label %if.then94, label %if.else97

if.then94:                                        ; preds = %if.then91
  %outfile95 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 26
  %75 = load ptr, ptr %outfile95, align 8
  %call96 = call noalias ptr @strdup(ptr noundef %75) #8
  store ptr %call96, ptr %out_fn, align 8
  br label %if.end137

if.else97:                                        ; preds = %if.then91
  %namefmt = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 23
  %76 = load ptr, ptr %namefmt, align 8
  %tobool98 = icmp ne ptr %76, null
  br i1 %tobool98, label %if.then99, label %if.else102

if.then99:                                        ; preds = %if.else97
  %namefmt100 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 23
  %77 = load ptr, ptr %namefmt100, align 8
  %namefmt_remove = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 24
  %78 = load ptr, ptr %namefmt_remove, align 8
  %namefmt_replace = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 25
  %79 = load ptr, ptr %namefmt_replace, align 8
  %80 = load ptr, ptr %artist, align 8
  %81 = load ptr, ptr %title, align 8
  %82 = load ptr, ptr %album, align 8
  %83 = load ptr, ptr %track, align 8
  %84 = load ptr, ptr %date, align 8
  %85 = load ptr, ptr %genre, align 8
  %call101 = call ptr @generate_name_string(ptr noundef %77, ptr noundef %78, ptr noundef %79, ptr noundef %80, ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %85)
  store ptr %call101, ptr %out_fn, align 8
  br label %if.end136

if.else102:                                       ; preds = %if.else97
  %86 = load ptr, ptr %infiles, align 8
  %87 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %87 to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %86, i64 %idxprom103
  %88 = load ptr, ptr %arrayidx104, align 8
  %tobool105 = icmp ne ptr %88, null
  br i1 %tobool105, label %if.then106, label %if.else132

if.then106:                                       ; preds = %if.else102
  %89 = load ptr, ptr %infiles, align 8
  %90 = load i32, ptr %i, align 4
  %idxprom107 = sext i32 %90 to i64
  %arrayidx108 = getelementptr inbounds ptr, ptr %89, i64 %idxprom107
  %91 = load ptr, ptr %arrayidx108, align 8
  store ptr %91, ptr %start, align 8
  %92 = load ptr, ptr %infiles, align 8
  %93 = load i32, ptr %i, align 4
  %idxprom109 = sext i32 %93 to i64
  %arrayidx110 = getelementptr inbounds ptr, ptr %92, i64 %idxprom109
  %94 = load ptr, ptr %arrayidx110, align 8
  %call111 = call ptr @strrchr(ptr noundef %94, i32 noundef 46) #9
  store ptr %call111, ptr %end, align 8
  %95 = load ptr, ptr %end, align 8
  %tobool112 = icmp ne ptr %95, null
  br i1 %tobool112, label %cond.true113, label %cond.false114

cond.true113:                                     ; preds = %if.then106
  %96 = load ptr, ptr %end, align 8
  br label %cond.end120

cond.false114:                                    ; preds = %if.then106
  %97 = load ptr, ptr %start, align 8
  %98 = load ptr, ptr %infiles, align 8
  %99 = load i32, ptr %i, align 4
  %idxprom115 = sext i32 %99 to i64
  %arrayidx116 = getelementptr inbounds ptr, ptr %98, i64 %idxprom115
  %100 = load ptr, ptr %arrayidx116, align 8
  %call117 = call i64 @strlen(ptr noundef %100) #9
  %add.ptr118 = getelementptr inbounds nuw i8, ptr %97, i64 %call117
  %add.ptr119 = getelementptr inbounds i8, ptr %add.ptr118, i64 1
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false114, %cond.true113
  %cond121 = phi ptr [ %96, %cond.true113 ], [ %add.ptr119, %cond.false114 ]
  store ptr %cond121, ptr %end, align 8
  %101 = load ptr, ptr %end, align 8
  %102 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %101 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %102 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 5
  %call122 = call noalias ptr @malloc(i64 noundef %add) #12
  store ptr %call122, ptr %out_fn, align 8
  %103 = load ptr, ptr %out_fn, align 8
  %104 = load ptr, ptr %start, align 8
  %105 = load ptr, ptr %end, align 8
  %106 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast123 = ptrtoint ptr %105 to i64
  %sub.ptr.rhs.cast124 = ptrtoint ptr %106 to i64
  %sub.ptr.sub125 = sub i64 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124
  %call126 = call ptr @strncpy(ptr noundef %103, ptr noundef %104, i64 noundef %sub.ptr.sub125) #8
  %107 = load ptr, ptr %out_fn, align 8
  %108 = load ptr, ptr %end, align 8
  %109 = load ptr, ptr %start, align 8
  %sub.ptr.lhs.cast127 = ptrtoint ptr %108 to i64
  %sub.ptr.rhs.cast128 = ptrtoint ptr %109 to i64
  %sub.ptr.sub129 = sub i64 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128
  %arrayidx130 = getelementptr inbounds i8, ptr %107, i64 %sub.ptr.sub129
  store i8 0, ptr %arrayidx130, align 1
  %110 = load ptr, ptr %out_fn, align 8
  %call131 = call ptr @strcat(ptr noundef %110, ptr noundef @.str.42) #8
  br label %if.end135

if.else132:                                       ; preds = %if.else102
  %111 = load ptr, ptr @stderr, align 8
  %call133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef @.str.43) #8
  %call134 = call noalias ptr @strdup(ptr noundef @.str.44) #8
  store ptr %call134, ptr %out_fn, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.else132, %cond.end120
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then99
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.then94
  %112 = load ptr, ptr %out_fn, align 8
  %call138 = call i32 @create_directories(ptr noundef %112)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then140, label %if.end147

if.then140:                                       ; preds = %if.end137
  %113 = load i32, ptr %closein, align 4
  %tobool141 = icmp ne i32 %113, 0
  br i1 %tobool141, label %if.then142, label %if.end144

if.then142:                                       ; preds = %if.then140
  %114 = load ptr, ptr %in, align 8
  %call143 = call i32 @fclose(ptr noundef %114)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.then140
  %115 = load ptr, ptr @stderr, align 8
  %116 = load ptr, ptr %out_fn, align 8
  %call145 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef @.str.45, ptr noundef %116) #8
  %117 = load i32, ptr %errors, align 4
  %inc146 = add nsw i32 %117, 1
  store i32 %inc146, ptr %errors, align 4
  %118 = load ptr, ptr %out_fn, align 8
  call void @free(ptr noundef %118) #8
  br label %for.inc292

if.end147:                                        ; preds = %if.end137
  %119 = load ptr, ptr %out_fn, align 8
  %call148 = call noalias ptr @fopen(ptr noundef %119, ptr noundef @.str.46)
  store ptr %call148, ptr %out, align 8
  %120 = load ptr, ptr %out, align 8
  %cmp149 = icmp eq ptr %120, null
  br i1 %cmp149, label %if.then151, label %if.end160

if.then151:                                       ; preds = %if.end147
  %121 = load i32, ptr %closein, align 4
  %tobool152 = icmp ne i32 %121, 0
  br i1 %tobool152, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.then151
  %122 = load ptr, ptr %in, align 8
  %call154 = call i32 @fclose(ptr noundef %122)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.then151
  %123 = load ptr, ptr @stderr, align 8
  %124 = load ptr, ptr %out_fn, align 8
  %call156 = call ptr @__errno_location() #11
  %125 = load i32, ptr %call156, align 4
  %call157 = call ptr @strerror(i32 noundef %125) #8
  %call158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.47, ptr noundef %124, ptr noundef %call157) #8
  %126 = load i32, ptr %errors, align 4
  %inc159 = add nsw i32 %126, 1
  store i32 %inc159, ptr %errors, align 4
  %127 = load ptr, ptr %out_fn, align 8
  call void @free(ptr noundef %127) #8
  br label %for.inc292

if.end160:                                        ; preds = %if.end147
  store i32 1, ptr %closeout, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.end160, %if.else88
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %if.then87
  %128 = load ptr, ptr %out, align 8
  %out163 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 23
  store ptr %128, ptr %out163, align 8
  %comments164 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 0
  store ptr %vc, ptr %comments164, align 8
  %129 = load ptr, ptr %out_fn, align 8
  %filename = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 24
  store ptr %129, ptr %filename, align 8
  %130 = load ptr, ptr %infiles, align 8
  %131 = load i32, ptr %i, align 4
  %idxprom165 = sext i32 %131 to i64
  %arrayidx166 = getelementptr inbounds ptr, ptr %130, i64 %idxprom165
  %132 = load ptr, ptr %arrayidx166, align 8
  %infilename = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 25
  store ptr %132, ptr %infilename, align 8
  %managed = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 27
  %133 = load i32, ptr %managed, align 8
  %managed167 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 15
  store i32 %133, ptr %managed167, align 8
  %nominal_bitrate = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 29
  %134 = load i32, ptr %nominal_bitrate, align 8
  %bitrate = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 16
  store i32 %134, ptr %bitrate, align 4
  %min_bitrate = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 28
  %135 = load i32, ptr %min_bitrate, align 4
  %min_bitrate168 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 17
  store i32 %135, ptr %min_bitrate168, align 8
  %max_bitrate = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 30
  %136 = load i32, ptr %max_bitrate, align 4
  %max_bitrate169 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 18
  store i32 %136, ptr %max_bitrate169, align 4
  %quality = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 31
  %137 = load float, ptr %quality, align 8
  %quality170 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 19
  store float %137, ptr %quality170, align 8
  %quality_set = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 32
  %138 = load i32, ptr %quality_set, align 4
  %quality_set171 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 20
  store i32 %138, ptr %quality_set171, align 4
  %advopt = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 14
  %139 = load ptr, ptr %advopt, align 8
  %advopt172 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 21
  store ptr %139, ptr %advopt172, align 8
  %advopt_count = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 15
  %140 = load i32, ptr %advopt_count, align 8
  %advopt_count173 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 22
  store i32 %140, ptr %advopt_count173, align 8
  %resamplefreq = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 33
  %141 = load i32, ptr %resamplefreq, align 8
  %tobool174 = icmp ne i32 %141, 0
  br i1 %tobool174, label %land.lhs.true175, label %if.end198

land.lhs.true175:                                 ; preds = %if.end162
  %resamplefreq176 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 33
  %142 = load i32, ptr %resamplefreq176, align 8
  %conv177 = sext i32 %142 to i64
  %rate178 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 10
  %143 = load i64, ptr %rate178, align 8
  %cmp179 = icmp ne i64 %conv177, %143
  br i1 %cmp179, label %if.then181, label %if.end198

if.then181:                                       ; preds = %land.lhs.true175
  %rate182 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 10
  %144 = load i64, ptr %rate182, align 8
  %conv183 = trunc i64 %144 to i32
  store i32 %conv183, ptr %fromrate, align 4
  %resamplefreq184 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 33
  %145 = load i32, ptr %resamplefreq184, align 8
  %resamplefreq185 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 13
  store i32 %145, ptr %resamplefreq185, align 8
  %call186 = call i32 @setup_resample(ptr noundef %enc_opts)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then188, label %if.else190

if.then188:                                       ; preds = %if.then181
  %146 = load i32, ptr %errors, align 4
  %inc189 = add nsw i32 %146, 1
  store i32 %inc189, ptr %errors, align 4
  br label %clear_all

if.else190:                                       ; preds = %if.then181
  %quiet191 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 17
  %147 = load i32, ptr %quiet191, align 8
  %tobool192 = icmp ne i32 %147, 0
  br i1 %tobool192, label %if.end196, label %if.then193

if.then193:                                       ; preds = %if.else190
  %148 = load ptr, ptr @stderr, align 8
  %149 = load i32, ptr %fromrate, align 4
  %resamplefreq194 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 33
  %150 = load i32, ptr %resamplefreq194, align 8
  %call195 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef @.str.48, i32 noundef %149, i32 noundef %150) #8
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %if.else190
  br label %if.end197

if.end197:                                        ; preds = %if.end196
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %land.lhs.true175, %if.end162
  %downmix = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 34
  %151 = load i32, ptr %downmix, align 4
  %tobool199 = icmp ne i32 %151, 0
  br i1 %tobool199, label %if.then200, label %if.end224

if.then200:                                       ; preds = %if.end198
  %channels201 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 9
  %152 = load i32, ptr %channels201, align 8
  %cmp202 = icmp eq i32 %152, 2
  br i1 %cmp202, label %if.then204, label %if.else210

if.then204:                                       ; preds = %if.then200
  call void @setup_downmix(ptr noundef %enc_opts)
  %quiet205 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 17
  %153 = load i32, ptr %quiet205, align 8
  %tobool206 = icmp ne i32 %153, 0
  br i1 %tobool206, label %if.end209, label %if.then207

if.then207:                                       ; preds = %if.then204
  %154 = load ptr, ptr @stderr, align 8
  %call208 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.49) #8
  br label %if.end209

if.end209:                                        ; preds = %if.then207, %if.then204
  br label %if.end223

if.else210:                                       ; preds = %if.then200
  %155 = load ptr, ptr @stderr, align 8
  %call211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.50) #8
  %156 = load i32, ptr %errors, align 4
  %inc212 = add nsw i32 %156, 1
  store i32 %inc212, ptr %errors, align 4
  %resamplefreq213 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 33
  %157 = load i32, ptr %resamplefreq213, align 8
  %tobool214 = icmp ne i32 %157, 0
  br i1 %tobool214, label %land.lhs.true215, label %if.end222

land.lhs.true215:                                 ; preds = %if.else210
  %resamplefreq216 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 33
  %158 = load i32, ptr %resamplefreq216, align 8
  %conv217 = sext i32 %158 to i64
  %rate218 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 10
  %159 = load i64, ptr %rate218, align 8
  %cmp219 = icmp ne i64 %conv217, %159
  br i1 %cmp219, label %if.then221, label %if.end222

if.then221:                                       ; preds = %land.lhs.true215
  call void @clear_resample(ptr noundef %enc_opts)
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %land.lhs.true215, %if.else210
  br label %clear_all

if.end223:                                        ; preds = %if.end209
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.end198
  %scale = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 35
  %160 = load float, ptr %scale, align 8
  %cmp225 = fcmp ogt float %160, 0.000000e+00
  br i1 %cmp225, label %if.then227, label %if.end236

if.then227:                                       ; preds = %if.end224
  %scale228 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 35
  %161 = load float, ptr %scale228, align 8
  call void @setup_scaler(ptr noundef %enc_opts, float noundef %161)
  %quiet229 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 17
  %162 = load i32, ptr %quiet229, align 8
  %tobool230 = icmp ne i32 %162, 0
  br i1 %tobool230, label %if.end235, label %if.then231

if.then231:                                       ; preds = %if.then227
  %163 = load ptr, ptr @stderr, align 8
  %scale232 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 35
  %164 = load float, ptr %scale232, align 8
  %conv233 = fpext float %164 to double
  %call234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.51, double noundef %conv233) #8
  br label %if.end235

if.end235:                                        ; preds = %if.then231, %if.then227
  br label %if.end236

if.end236:                                        ; preds = %if.end235, %if.end224
  %total_samples_per_channel = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 8
  %165 = load i64, ptr %total_samples_per_channel, align 8
  %tobool237 = icmp ne i64 %165, 0
  br i1 %tobool237, label %if.end240, label %if.then238

if.then238:                                       ; preds = %if.end236
  %progress_update239 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 3
  store ptr @update_statistics_notime, ptr %progress_update239, align 8
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %if.end236
  %quiet241 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 17
  %166 = load i32, ptr %quiet241, align 8
  %tobool242 = icmp ne i32 %166, 0
  br i1 %tobool242, label %if.then243, label %if.end247

if.then243:                                       ; preds = %if.end240
  %start_encode244 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 5
  store ptr @start_encode_null, ptr %start_encode244, align 8
  %progress_update245 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 3
  store ptr @update_statistics_null, ptr %progress_update245, align 8
  %end_encode246 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 4
  store ptr @final_statistics_null, ptr %end_encode246, align 8
  br label %if.end247

if.end247:                                        ; preds = %if.then243, %if.end240
  %call248 = call i32 @oe_encode(ptr noundef %enc_opts)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.then250, label %if.end252

if.then250:                                       ; preds = %if.end247
  %167 = load i32, ptr %errors, align 4
  %inc251 = add nsw i32 %167, 1
  store i32 %inc251, ptr %errors, align 4
  br label %if.end252

if.end252:                                        ; preds = %if.then250, %if.end247
  %scale253 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 35
  %168 = load float, ptr %scale253, align 8
  %cmp254 = fcmp ogt float %168, 0.000000e+00
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end252
  call void @clear_scaler(ptr noundef %enc_opts)
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %if.end252
  %downmix258 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 34
  %169 = load i32, ptr %downmix258, align 4
  %tobool259 = icmp ne i32 %169, 0
  br i1 %tobool259, label %if.then260, label %if.end261

if.then260:                                       ; preds = %if.end257
  call void @clear_downmix(ptr noundef %enc_opts)
  br label %if.end261

if.end261:                                        ; preds = %if.then260, %if.end257
  %resamplefreq262 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 33
  %170 = load i32, ptr %resamplefreq262, align 8
  %tobool263 = icmp ne i32 %170, 0
  br i1 %tobool263, label %land.lhs.true264, label %if.end271

land.lhs.true264:                                 ; preds = %if.end261
  %resamplefreq265 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 33
  %171 = load i32, ptr %resamplefreq265, align 8
  %conv266 = sext i32 %171 to i64
  %rate267 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 10
  %172 = load i64, ptr %rate267, align 8
  %cmp268 = icmp ne i64 %conv266, %172
  br i1 %cmp268, label %if.then270, label %if.end271

if.then270:                                       ; preds = %land.lhs.true264
  call void @clear_resample(ptr noundef %enc_opts)
  br label %if.end271

if.end271:                                        ; preds = %if.then270, %land.lhs.true264, %if.end261
  br label %clear_all

clear_all:                                        ; preds = %if.end271, %if.end222, %if.then188
  %173 = load ptr, ptr %out_fn, align 8
  %tobool272 = icmp ne ptr %173, null
  br i1 %tobool272, label %if.then273, label %if.end274

if.then273:                                       ; preds = %clear_all
  %174 = load ptr, ptr %out_fn, align 8
  call void @free(ptr noundef %174) #8
  br label %if.end274

if.end274:                                        ; preds = %if.then273, %clear_all
  %outfile275 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 26
  %175 = load ptr, ptr %outfile275, align 8
  %tobool276 = icmp ne ptr %175, null
  br i1 %tobool276, label %if.then277, label %if.end279

if.then277:                                       ; preds = %if.end274
  %outfile278 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 26
  %176 = load ptr, ptr %outfile278, align 8
  call void @free(ptr noundef %176) #8
  br label %if.end279

if.end279:                                        ; preds = %if.then277, %if.end274
  call void @vorbis_comment_clear(ptr noundef %vc)
  %rawmode280 = getelementptr inbounds nuw %struct.oe_options, ptr %opt, i32 0, i32 18
  %177 = load i32, ptr %rawmode280, align 4
  %tobool281 = icmp ne i32 %177, 0
  br i1 %tobool281, label %if.end283, label %if.then282

if.then282:                                       ; preds = %if.end279
  %178 = load ptr, ptr %format, align 8
  %close_func = getelementptr inbounds nuw %struct.input_format, ptr %178, i32 0, i32 3
  %179 = load ptr, ptr %close_func, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %enc_opts, i32 0, i32 7
  %180 = load ptr, ptr %readdata, align 8
  call void %179(ptr noundef %180)
  br label %if.end283

if.end283:                                        ; preds = %if.then282, %if.end279
  %181 = load i32, ptr %closein, align 4
  %tobool284 = icmp ne i32 %181, 0
  br i1 %tobool284, label %if.then285, label %if.end287

if.then285:                                       ; preds = %if.end283
  %182 = load ptr, ptr %in, align 8
  %call286 = call i32 @fclose(ptr noundef %182)
  br label %if.end287

if.end287:                                        ; preds = %if.then285, %if.end283
  %183 = load i32, ptr %closeout, align 4
  %tobool288 = icmp ne i32 %183, 0
  br i1 %tobool288, label %if.then289, label %if.end291

if.then289:                                       ; preds = %if.end287
  %184 = load ptr, ptr %out, align 8
  %call290 = call i32 @fclose(ptr noundef %184)
  br label %if.end291

if.end291:                                        ; preds = %if.then289, %if.end287
  br label %for.inc292

for.inc292:                                       ; preds = %if.end291, %if.end155, %if.end144, %if.end78, %if.then43
  %185 = load i32, ptr %i, align 4
  %inc293 = add nsw i32 %185, 1
  store i32 %inc293, ptr %i, align 4
  br label %for.cond19, !llvm.loop !8

for.end294:                                       ; preds = %for.cond19
  %186 = load i32, ptr %errors, align 4
  %tobool295 = icmp ne i32 %186, 0
  %187 = zext i1 %tobool295 to i64
  %cond296 = select i1 %tobool295, i32 1, i32 0
  store i32 %cond296, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end294, %if.then
  %188 = load i32, ptr %retval, align 4
  ret i32 %188
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @parse_options(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare void @srand(i32 noundef) #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @rand() #2

; Function Attrs: nounwind uwtable
declare dso_local void @update_statistics_full(ptr noundef, i64 noundef, i64 noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @start_encode_full(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @final_statistics(ptr noundef, double noundef, i32 noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @encode_error(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @build_comments(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare noalias ptr @fopen(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @raw_open(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @open_audio_file(ptr noundef, ptr noundef) #0

declare i32 @fclose(ptr noundef) #5

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @generate_name_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @create_directories(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @setup_resample(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @setup_downmix(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @clear_resample(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @setup_scaler(ptr noundef, float noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @update_statistics_notime(ptr noundef, i64 noundef, i64 noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @start_encode_null(ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @update_statistics_null(ptr noundef, i64 noundef, i64 noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @final_statistics_null(ptr noundef, double noundef, i32 noundef, i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @oe_encode(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @clear_scaler(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @clear_downmix(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_comment_clear(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind allocsize(0) }

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
!8 = distinct !{!8, !7}
