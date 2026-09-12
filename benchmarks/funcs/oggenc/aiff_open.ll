; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiff_fmt = type { i16, i32, i16, i32, i32, i32 }
%struct.wavfile = type { i16, i16, i64, i64, ptr, i16 }
%struct.oe_enc_opt = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, ptr, i32, ptr, ptr, ptr }

@stderr = external global ptr, align 8
@.str.58 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.59 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.60 = external hidden unnamed_addr constant [48 x i8], align 1
@.str.61 = external hidden unnamed_addr constant [48 x i8], align 1
@.str.62 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.63 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.64 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.65 = external hidden unnamed_addr constant [52 x i8], align 1
@.str.66 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.67 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.68 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.69 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.70 = external hidden unnamed_addr constant [93 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @aiff_open(ptr noundef %in, ptr noundef %opt, ptr noundef %buf, i32 noundef %buflen) #2 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca ptr, align 8
  %opt.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i32, align 4
  %aifc = alloca i32, align 4
  %len = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %buf2 = alloca [8 x i8], align 1
  %format = alloca %struct.aiff_fmt, align 4
  %aiff = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %opt, ptr %opt.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %buflen, ptr %buflen.addr, align 4
  %call = call noalias ptr @malloc(i64 noundef 40) #5
  store ptr %call, ptr %aiff, align 8
  %0 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 11
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 67
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %aifc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr %aifc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load ptr, ptr %in.addr, align 8
  %call2 = call i32 @find_aiff_chunk(ptr noundef %2, ptr noundef @.str.58, ptr noundef %len)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.59) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i32, ptr %len, align 4
  %cmp6 = icmp ult i32 %4, 18
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %5 = load ptr, ptr @stderr, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.60) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end5
  %6 = load i32, ptr %len, align 4
  %conv11 = zext i32 %6 to i64
  %7 = alloca i8, i64 %conv11, align 16
  store ptr %7, ptr %buffer, align 8
  %8 = load ptr, ptr %buffer, align 8
  %9 = load i32, ptr %len, align 4
  %conv12 = zext i32 %9 to i64
  %10 = load ptr, ptr %in.addr, align 8
  %call13 = call i64 @fread(ptr noundef %8, i64 noundef 1, i64 noundef %conv12, ptr noundef %10)
  %11 = load i32, ptr %len, align 4
  %conv14 = zext i32 %11 to i64
  %cmp15 = icmp ult i64 %call13, %conv14
  br i1 %cmp15, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end10
  %12 = load ptr, ptr @stderr, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.61) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end10
  %13 = load ptr, ptr %buffer, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %13, i64 0
  %14 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %14 to i32
  %shl = shl i32 %conv21, 8
  %15 = load ptr, ptr %buffer, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 1
  %16 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %16 to i32
  %and = and i32 %conv23, 255
  %or = or i32 %shl, %and
  %conv24 = trunc i32 %or to i16
  %channels = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 0
  store i16 %conv24, ptr %channels, align 4
  %17 = load ptr, ptr %buffer, align 8
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 2
  %arrayidx25 = getelementptr inbounds i8, ptr %add.ptr, i64 0
  %18 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %18 to i32
  %shl27 = shl i32 %conv26, 24
  %19 = load ptr, ptr %buffer, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %19, i64 2
  %arrayidx29 = getelementptr inbounds i8, ptr %add.ptr28, i64 1
  %20 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %20 to i32
  %shl31 = shl i32 %conv30, 16
  %or32 = or i32 %shl27, %shl31
  %21 = load ptr, ptr %buffer, align 8
  %add.ptr33 = getelementptr inbounds i8, ptr %21, i64 2
  %arrayidx34 = getelementptr inbounds i8, ptr %add.ptr33, i64 2
  %22 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %22 to i32
  %shl36 = shl i32 %conv35, 8
  %or37 = or i32 %or32, %shl36
  %23 = load ptr, ptr %buffer, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %23, i64 2
  %arrayidx39 = getelementptr inbounds i8, ptr %add.ptr38, i64 3
  %24 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %24 to i32
  %and41 = and i32 %conv40, 255
  %or42 = or i32 %or37, %and41
  %totalframes = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 1
  store i32 %or42, ptr %totalframes, align 4
  %25 = load ptr, ptr %buffer, align 8
  %add.ptr43 = getelementptr inbounds i8, ptr %25, i64 6
  %arrayidx44 = getelementptr inbounds i8, ptr %add.ptr43, i64 0
  %26 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %26 to i32
  %shl46 = shl i32 %conv45, 8
  %27 = load ptr, ptr %buffer, align 8
  %add.ptr47 = getelementptr inbounds i8, ptr %27, i64 6
  %arrayidx48 = getelementptr inbounds i8, ptr %add.ptr47, i64 1
  %28 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %28 to i32
  %and50 = and i32 %conv49, 255
  %or51 = or i32 %shl46, %and50
  %conv52 = trunc i32 %or51 to i16
  %samplesize = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 2
  store i16 %conv52, ptr %samplesize, align 4
  %29 = load ptr, ptr %buffer, align 8
  %add.ptr53 = getelementptr inbounds i8, ptr %29, i64 8
  %call54 = call double @read_IEEE80(ptr noundef %add.ptr53)
  %conv55 = fptosi double %call54 to i32
  %rate = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 3
  store i32 %conv55, ptr %rate, align 4
  %30 = load ptr, ptr %aiff, align 8
  %bigendian = getelementptr inbounds nuw %struct.wavfile, ptr %30, i32 0, i32 5
  store i16 1, ptr %bigendian, align 8
  %31 = load i32, ptr %aifc, align 4
  %tobool56 = icmp ne i32 %31, 0
  br i1 %tobool56, label %if.then57, label %if.end86

if.then57:                                        ; preds = %if.end19
  %32 = load i32, ptr %len, align 4
  %cmp58 = icmp ult i32 %32, 22
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.then57
  %33 = load ptr, ptr @stderr, align 8
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.62) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end62:                                         ; preds = %if.then57
  %34 = load ptr, ptr %buffer, align 8
  %add.ptr63 = getelementptr inbounds i8, ptr %34, i64 18
  %call64 = call i32 @memcmp(ptr noundef %add.ptr63, ptr noundef @.str.63, i64 noundef 4) #7
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else68, label %if.then66

if.then66:                                        ; preds = %if.end62
  %35 = load ptr, ptr %aiff, align 8
  %bigendian67 = getelementptr inbounds nuw %struct.wavfile, ptr %35, i32 0, i32 5
  store i16 1, ptr %bigendian67, align 8
  br label %if.end85

if.else68:                                        ; preds = %if.end62
  %36 = load ptr, ptr %buffer, align 8
  %add.ptr69 = getelementptr inbounds i8, ptr %36, i64 18
  %call70 = call i32 @memcmp(ptr noundef %add.ptr69, ptr noundef @.str.64, i64 noundef 4) #7
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.else74, label %if.then72

if.then72:                                        ; preds = %if.else68
  %37 = load ptr, ptr %aiff, align 8
  %bigendian73 = getelementptr inbounds nuw %struct.wavfile, ptr %37, i32 0, i32 5
  store i16 0, ptr %bigendian73, align 8
  br label %if.end84

if.else74:                                        ; preds = %if.else68
  %38 = load ptr, ptr @stderr, align 8
  %39 = load ptr, ptr %buffer, align 8
  %add.ptr75 = getelementptr inbounds i8, ptr %39, i64 18
  %40 = load i8, ptr %add.ptr75, align 1
  %conv76 = zext i8 %40 to i32
  %41 = load ptr, ptr %buffer, align 8
  %add.ptr77 = getelementptr inbounds i8, ptr %41, i64 19
  %42 = load i8, ptr %add.ptr77, align 1
  %conv78 = zext i8 %42 to i32
  %43 = load ptr, ptr %buffer, align 8
  %add.ptr79 = getelementptr inbounds i8, ptr %43, i64 20
  %44 = load i8, ptr %add.ptr79, align 1
  %conv80 = zext i8 %44 to i32
  %45 = load ptr, ptr %buffer, align 8
  %add.ptr81 = getelementptr inbounds i8, ptr %45, i64 21
  %46 = load i8, ptr %add.ptr81, align 1
  %conv82 = zext i8 %46 to i32
  %call83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.65, i32 noundef %conv76, i32 noundef %conv78, i32 noundef %conv80, i32 noundef %conv82) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.then72
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then66
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.end19
  %47 = load ptr, ptr %in.addr, align 8
  %call87 = call i32 @find_aiff_chunk(ptr noundef %47, ptr noundef @.str.66, ptr noundef %len)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end91, label %if.then89

if.then89:                                        ; preds = %if.end86
  %48 = load ptr, ptr @stderr, align 8
  %call90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.67) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end91:                                         ; preds = %if.end86
  %49 = load i32, ptr %len, align 4
  %cmp92 = icmp ult i32 %49, 8
  br i1 %cmp92, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end91
  %50 = load ptr, ptr @stderr, align 8
  %call95 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.68) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end91
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %51 = load ptr, ptr %in.addr, align 8
  %call97 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 8, ptr noundef %51)
  %cmp98 = icmp ult i64 %call97, 8
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.end96
  %52 = load ptr, ptr @stderr, align 8
  %call101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.69) #6
  store i32 0, ptr %retval, align 4
  br label %return

if.end102:                                        ; preds = %if.end96
  %arrayidx103 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %53 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %53 to i32
  %shl105 = shl i32 %conv104, 24
  %arrayidx106 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 1
  %54 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %54 to i32
  %shl108 = shl i32 %conv107, 16
  %or109 = or i32 %shl105, %shl108
  %arrayidx110 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 2
  %55 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %55 to i32
  %shl112 = shl i32 %conv111, 8
  %or113 = or i32 %or109, %shl112
  %arrayidx114 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 3
  %56 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %56 to i32
  %and116 = and i32 %conv115, 255
  %or117 = or i32 %or113, %and116
  %offset = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 4
  store i32 %or117, ptr %offset, align 4
  %arraydecay118 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %add.ptr119 = getelementptr inbounds i8, ptr %arraydecay118, i64 4
  %arrayidx120 = getelementptr inbounds i8, ptr %add.ptr119, i64 0
  %57 = load i8, ptr %arrayidx120, align 1
  %conv121 = zext i8 %57 to i32
  %shl122 = shl i32 %conv121, 24
  %arraydecay123 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %add.ptr124 = getelementptr inbounds i8, ptr %arraydecay123, i64 4
  %arrayidx125 = getelementptr inbounds i8, ptr %add.ptr124, i64 1
  %58 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %58 to i32
  %shl127 = shl i32 %conv126, 16
  %or128 = or i32 %shl122, %shl127
  %arraydecay129 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %add.ptr130 = getelementptr inbounds i8, ptr %arraydecay129, i64 4
  %arrayidx131 = getelementptr inbounds i8, ptr %add.ptr130, i64 2
  %59 = load i8, ptr %arrayidx131, align 1
  %conv132 = zext i8 %59 to i32
  %shl133 = shl i32 %conv132, 8
  %or134 = or i32 %or128, %shl133
  %arraydecay135 = getelementptr inbounds [8 x i8], ptr %buf2, i64 0, i64 0
  %add.ptr136 = getelementptr inbounds i8, ptr %arraydecay135, i64 4
  %arrayidx137 = getelementptr inbounds i8, ptr %add.ptr136, i64 3
  %60 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %60 to i32
  %and139 = and i32 %conv138, 255
  %or140 = or i32 %or134, %and139
  %blocksize = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 5
  store i32 %or140, ptr %blocksize, align 4
  %blocksize141 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 5
  %61 = load i32, ptr %blocksize141, align 4
  %cmp142 = icmp eq i32 %61, 0
  br i1 %cmp142, label %land.lhs.true, label %if.else169

land.lhs.true:                                    ; preds = %if.end102
  %samplesize144 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 2
  %62 = load i16, ptr %samplesize144, align 4
  %conv145 = sext i16 %62 to i32
  %cmp146 = icmp eq i32 %conv145, 16
  br i1 %cmp146, label %if.then152, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %samplesize148 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 2
  %63 = load i16, ptr %samplesize148, align 4
  %conv149 = sext i16 %63 to i32
  %cmp150 = icmp eq i32 %conv149, 8
  br i1 %cmp150, label %if.then152, label %if.else169

if.then152:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %rate153 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 3
  %64 = load i32, ptr %rate153, align 4
  %conv154 = sext i32 %64 to i64
  %65 = load ptr, ptr %opt.addr, align 8
  %rate155 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %65, i32 0, i32 10
  store i64 %conv154, ptr %rate155, align 8
  %channels156 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 0
  %66 = load i16, ptr %channels156, align 4
  %conv157 = sext i16 %66 to i32
  %67 = load ptr, ptr %opt.addr, align 8
  %channels158 = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %67, i32 0, i32 9
  store i32 %conv157, ptr %channels158, align 8
  %68 = load ptr, ptr %opt.addr, align 8
  %read_samples = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %68, i32 0, i32 2
  store ptr @wav_read, ptr %read_samples, align 8
  %totalframes159 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 1
  %69 = load i32, ptr %totalframes159, align 4
  %conv160 = sext i32 %69 to i64
  %70 = load ptr, ptr %opt.addr, align 8
  %total_samples_per_channel = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %70, i32 0, i32 8
  store i64 %conv160, ptr %total_samples_per_channel, align 8
  %71 = load ptr, ptr %in.addr, align 8
  %72 = load ptr, ptr %aiff, align 8
  %f = getelementptr inbounds nuw %struct.wavfile, ptr %72, i32 0, i32 4
  store ptr %71, ptr %f, align 8
  %73 = load ptr, ptr %aiff, align 8
  %samplesread = getelementptr inbounds nuw %struct.wavfile, ptr %73, i32 0, i32 3
  store i64 0, ptr %samplesread, align 8
  %channels161 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 0
  %74 = load i16, ptr %channels161, align 4
  %75 = load ptr, ptr %aiff, align 8
  %channels162 = getelementptr inbounds nuw %struct.wavfile, ptr %75, i32 0, i32 0
  store i16 %74, ptr %channels162, align 8
  %samplesize163 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 2
  %76 = load i16, ptr %samplesize163, align 4
  %77 = load ptr, ptr %aiff, align 8
  %samplesize164 = getelementptr inbounds nuw %struct.wavfile, ptr %77, i32 0, i32 1
  store i16 %76, ptr %samplesize164, align 2
  %totalframes165 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 1
  %78 = load i32, ptr %totalframes165, align 4
  %conv166 = sext i32 %78 to i64
  %79 = load ptr, ptr %aiff, align 8
  %totalsamples = getelementptr inbounds nuw %struct.wavfile, ptr %79, i32 0, i32 2
  store i64 %conv166, ptr %totalsamples, align 8
  %80 = load ptr, ptr %aiff, align 8
  %81 = load ptr, ptr %opt.addr, align 8
  %readdata = getelementptr inbounds nuw %struct.oe_enc_opt, ptr %81, i32 0, i32 7
  store ptr %80, ptr %readdata, align 8
  %82 = load ptr, ptr %in.addr, align 8
  %offset167 = getelementptr inbounds nuw %struct.aiff_fmt, ptr %format, i32 0, i32 4
  %83 = load i32, ptr %offset167, align 4
  %call168 = call i32 @seek_forward(ptr noundef %82, i32 noundef %83)
  store i32 1, ptr %retval, align 4
  br label %return

if.else169:                                       ; preds = %lor.lhs.false, %if.end102
  %84 = load ptr, ptr @stderr, align 8
  %call170 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef @.str.70) #6
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else169, %if.then152, %if.then100, %if.then94, %if.then89, %if.else74, %if.then60, %if.then17, %if.then8, %if.then3
  %85 = load i32, ptr %retval, align 4
  ret i32 %85
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local double @read_IEEE80(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
declare hidden i32 @find_aiff_chunk(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @wav_read(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @seek_forward(ptr noundef, i32 noundef) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) }
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
