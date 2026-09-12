; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }

@optind = external dso_local global i32, align 4
@stderr = external global ptr, align 8
@.str.103 = external hidden unnamed_addr constant [1 x i8], align 1
@opterr = external dso_local global i32, align 4
@optopt = external dso_local global i32, align 4
@optarg = external dso_local global ptr, align 8
@__getopt_initialized = external dso_local global i32, align 4
@nextchar = external hidden global ptr, align 8
@last_nonopt = external hidden global i32, align 4
@first_nonopt = external hidden global i32, align 4
@ordering = external hidden global i32, align 4
@.str.133 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.134 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.135 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.136 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.137 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.138 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.139 = external hidden unnamed_addr constant [32 x i8], align 1
@posixly_correct = external hidden global ptr, align 8
@.str.140 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.141 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.142 = external hidden unnamed_addr constant [39 x i8], align 1
@.str.143 = external hidden unnamed_addr constant [33 x i8], align 1
@.str.144 = external hidden unnamed_addr constant [46 x i8], align 1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @_getopt_internal(i32 noundef %argc, ptr noundef %argv, ptr noundef %optstring, ptr noundef %longopts, ptr noundef %longind, i32 noundef %long_only) #2 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %optstring.addr = alloca ptr, align 8
  %longopts.addr = alloca ptr, align 8
  %longind.addr = alloca ptr, align 8
  %long_only.addr = alloca i32, align 4
  %nameend = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pfound = alloca ptr, align 8
  %exact = alloca i32, align 4
  %ambig = alloca i32, align 4
  %indfound = alloca i32, align 4
  %option_index = alloca i32, align 4
  %c = alloca i8, align 1
  %temp = alloca ptr, align 8
  %nameend343 = alloca ptr, align 8
  %p344 = alloca ptr, align 8
  %pfound345 = alloca ptr, align 8
  %exact346 = alloca i32, align 4
  %ambig347 = alloca i32, align 4
  %indfound348 = alloca i32, align 4
  %option_index349 = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %optstring, ptr %optstring.addr, align 8
  store ptr %longopts, ptr %longopts.addr, align 8
  store ptr %longind, ptr %longind.addr, align 8
  store i32 %long_only, ptr %long_only.addr, align 4
  store ptr null, ptr @optarg, align 8
  %0 = load i32, ptr @optind, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @__getopt_initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr @optind, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 1, ptr @optind, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = load i32, ptr %argc.addr, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load ptr, ptr %optstring.addr, align 8
  %call = call ptr @_getopt_initialize(i32 noundef %3, ptr noundef %4, ptr noundef %5)
  store ptr %call, ptr %optstring.addr, align 8
  store i32 1, ptr @__getopt_initialized, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %lor.lhs.false
  %6 = load ptr, ptr @nextchar, align 8
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %if.end3
  %7 = load ptr, ptr @nextchar, align 8
  %8 = load i8, ptr %7, align 1
  %conv = sext i8 %8 to i32
  %cmp6 = icmp eq i32 %conv, 0
  br i1 %cmp6, label %if.then8, label %if.end108

if.then8:                                         ; preds = %lor.lhs.false5, %if.end3
  %9 = load i32, ptr @last_nonopt, align 4
  %10 = load i32, ptr @optind, align 4
  %cmp9 = icmp sgt i32 %9, %10
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  %11 = load i32, ptr @optind, align 4
  store i32 %11, ptr @last_nonopt, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then8
  %12 = load i32, ptr @first_nonopt, align 4
  %13 = load i32, ptr @optind, align 4
  %cmp13 = icmp sgt i32 %12, %13
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  %14 = load i32, ptr @optind, align 4
  store i32 %14, ptr @first_nonopt, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %15 = load i32, ptr @ordering, align 4
  %cmp17 = icmp eq i32 %15, 1
  br i1 %cmp17, label %if.then19, label %if.end42

if.then19:                                        ; preds = %if.end16
  %16 = load i32, ptr @first_nonopt, align 4
  %17 = load i32, ptr @last_nonopt, align 4
  %cmp20 = icmp ne i32 %16, %17
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then19
  %18 = load i32, ptr @last_nonopt, align 4
  %19 = load i32, ptr @optind, align 4
  %cmp22 = icmp ne i32 %18, %19
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %argv.addr, align 8
  call void @exchange(ptr noundef %20)
  br label %if.end29

if.else:                                          ; preds = %land.lhs.true, %if.then19
  %21 = load i32, ptr @last_nonopt, align 4
  %22 = load i32, ptr @optind, align 4
  %cmp25 = icmp ne i32 %21, %22
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else
  %23 = load i32, ptr @optind, align 4
  store i32 %23, ptr @first_nonopt, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then24
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end29
  %24 = load i32, ptr @optind, align 4
  %25 = load i32, ptr %argc.addr, align 4
  %cmp30 = icmp slt i32 %24, %25
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load ptr, ptr %argv.addr, align 8
  %27 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %26, i64 %idxprom
  %28 = load ptr, ptr %arrayidx, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %29 to i32
  %cmp34 = icmp ne i32 %conv33, 45
  br i1 %cmp34, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %30 = load ptr, ptr %argv.addr, align 8
  %31 = load i32, ptr @optind, align 4
  %idxprom36 = sext i32 %31 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %30, i64 %idxprom36
  %32 = load ptr, ptr %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i8, ptr %32, i64 1
  %33 = load i8, ptr %arrayidx38, align 1
  %conv39 = sext i8 %33 to i32
  %cmp40 = icmp eq i32 %conv39, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %34 = phi i1 [ true, %land.rhs ], [ %cmp40, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %34, %lor.end ]
  br i1 %35, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %36 = load i32, ptr @optind, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr @optind, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %37 = load i32, ptr @optind, align 4
  store i32 %37, ptr @last_nonopt, align 4
  br label %if.end42

if.end42:                                         ; preds = %while.end, %if.end16
  %38 = load i32, ptr @optind, align 4
  %39 = load i32, ptr %argc.addr, align 4
  %cmp43 = icmp ne i32 %38, %39
  br i1 %cmp43, label %land.lhs.true45, label %if.end64

land.lhs.true45:                                  ; preds = %if.end42
  %40 = load ptr, ptr %argv.addr, align 8
  %41 = load i32, ptr @optind, align 4
  %idxprom46 = sext i32 %41 to i64
  %arrayidx47 = getelementptr inbounds ptr, ptr %40, i64 %idxprom46
  %42 = load ptr, ptr %arrayidx47, align 8
  %call48 = call i32 @strcmp(ptr noundef %42, ptr noundef @.str.133) #3
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end64, label %if.then50

if.then50:                                        ; preds = %land.lhs.true45
  %43 = load i32, ptr @optind, align 4
  %inc51 = add nsw i32 %43, 1
  store i32 %inc51, ptr @optind, align 4
  %44 = load i32, ptr @first_nonopt, align 4
  %45 = load i32, ptr @last_nonopt, align 4
  %cmp52 = icmp ne i32 %44, %45
  br i1 %cmp52, label %land.lhs.true54, label %if.else58

land.lhs.true54:                                  ; preds = %if.then50
  %46 = load i32, ptr @last_nonopt, align 4
  %47 = load i32, ptr @optind, align 4
  %cmp55 = icmp ne i32 %46, %47
  br i1 %cmp55, label %if.then57, label %if.else58

if.then57:                                        ; preds = %land.lhs.true54
  %48 = load ptr, ptr %argv.addr, align 8
  call void @exchange(ptr noundef %48)
  br label %if.end63

if.else58:                                        ; preds = %land.lhs.true54, %if.then50
  %49 = load i32, ptr @first_nonopt, align 4
  %50 = load i32, ptr @last_nonopt, align 4
  %cmp59 = icmp eq i32 %49, %50
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.else58
  %51 = load i32, ptr @optind, align 4
  store i32 %51, ptr @first_nonopt, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.else58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then57
  %52 = load i32, ptr %argc.addr, align 4
  store i32 %52, ptr @last_nonopt, align 4
  %53 = load i32, ptr %argc.addr, align 4
  store i32 %53, ptr @optind, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %land.lhs.true45, %if.end42
  %54 = load i32, ptr @optind, align 4
  %55 = load i32, ptr %argc.addr, align 4
  %cmp65 = icmp eq i32 %54, %55
  br i1 %cmp65, label %if.then67, label %if.end72

if.then67:                                        ; preds = %if.end64
  %56 = load i32, ptr @first_nonopt, align 4
  %57 = load i32, ptr @last_nonopt, align 4
  %cmp68 = icmp ne i32 %56, %57
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then67
  %58 = load i32, ptr @first_nonopt, align 4
  store i32 %58, ptr @optind, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.then67
  store i32 -1, ptr %retval, align 4
  br label %return

if.end72:                                         ; preds = %if.end64
  %59 = load ptr, ptr %argv.addr, align 8
  %60 = load i32, ptr @optind, align 4
  %idxprom73 = sext i32 %60 to i64
  %arrayidx74 = getelementptr inbounds ptr, ptr %59, i64 %idxprom73
  %61 = load ptr, ptr %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %61, i64 0
  %62 = load i8, ptr %arrayidx75, align 1
  %conv76 = sext i8 %62 to i32
  %cmp77 = icmp ne i32 %conv76, 45
  br i1 %cmp77, label %if.then86, label %lor.lhs.false79

lor.lhs.false79:                                  ; preds = %if.end72
  %63 = load ptr, ptr %argv.addr, align 8
  %64 = load i32, ptr @optind, align 4
  %idxprom80 = sext i32 %64 to i64
  %arrayidx81 = getelementptr inbounds ptr, ptr %63, i64 %idxprom80
  %65 = load ptr, ptr %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i8, ptr %65, i64 1
  %66 = load i8, ptr %arrayidx82, align 1
  %conv83 = sext i8 %66 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %if.then86, label %if.end94

if.then86:                                        ; preds = %lor.lhs.false79, %if.end72
  %67 = load i32, ptr @ordering, align 4
  %cmp87 = icmp eq i32 %67, 0
  br i1 %cmp87, label %if.then89, label %if.end90

if.then89:                                        ; preds = %if.then86
  store i32 -1, ptr %retval, align 4
  br label %return

if.end90:                                         ; preds = %if.then86
  %68 = load ptr, ptr %argv.addr, align 8
  %69 = load i32, ptr @optind, align 4
  %inc91 = add nsw i32 %69, 1
  store i32 %inc91, ptr @optind, align 4
  %idxprom92 = sext i32 %69 to i64
  %arrayidx93 = getelementptr inbounds ptr, ptr %68, i64 %idxprom92
  %70 = load ptr, ptr %arrayidx93, align 8
  store ptr %70, ptr @optarg, align 8
  store i32 1, ptr %retval, align 4
  br label %return

if.end94:                                         ; preds = %lor.lhs.false79
  %71 = load ptr, ptr %argv.addr, align 8
  %72 = load i32, ptr @optind, align 4
  %idxprom95 = sext i32 %72 to i64
  %arrayidx96 = getelementptr inbounds ptr, ptr %71, i64 %idxprom95
  %73 = load ptr, ptr %arrayidx96, align 8
  %add.ptr = getelementptr inbounds i8, ptr %73, i64 1
  %74 = load ptr, ptr %longopts.addr, align 8
  %cmp97 = icmp ne ptr %74, null
  br i1 %cmp97, label %land.rhs99, label %land.end106

land.rhs99:                                       ; preds = %if.end94
  %75 = load ptr, ptr %argv.addr, align 8
  %76 = load i32, ptr @optind, align 4
  %idxprom100 = sext i32 %76 to i64
  %arrayidx101 = getelementptr inbounds ptr, ptr %75, i64 %idxprom100
  %77 = load ptr, ptr %arrayidx101, align 8
  %arrayidx102 = getelementptr inbounds i8, ptr %77, i64 1
  %78 = load i8, ptr %arrayidx102, align 1
  %conv103 = sext i8 %78 to i32
  %cmp104 = icmp eq i32 %conv103, 45
  br label %land.end106

land.end106:                                      ; preds = %land.rhs99, %if.end94
  %79 = phi i1 [ false, %if.end94 ], [ %cmp104, %land.rhs99 ]
  %land.ext = zext i1 %79 to i32
  %idx.ext = sext i32 %land.ext to i64
  %add.ptr107 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext
  store ptr %add.ptr107, ptr @nextchar, align 8
  br label %if.end108

if.end108:                                        ; preds = %land.end106, %lor.lhs.false5
  %80 = load ptr, ptr %longopts.addr, align 8
  %cmp109 = icmp ne ptr %80, null
  br i1 %cmp109, label %land.lhs.true111, label %if.end301

land.lhs.true111:                                 ; preds = %if.end108
  %81 = load ptr, ptr %argv.addr, align 8
  %82 = load i32, ptr @optind, align 4
  %idxprom112 = sext i32 %82 to i64
  %arrayidx113 = getelementptr inbounds ptr, ptr %81, i64 %idxprom112
  %83 = load ptr, ptr %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i8, ptr %83, i64 1
  %84 = load i8, ptr %arrayidx114, align 1
  %conv115 = sext i8 %84 to i32
  %cmp116 = icmp eq i32 %conv115, 45
  br i1 %cmp116, label %if.then133, label %lor.lhs.false118

lor.lhs.false118:                                 ; preds = %land.lhs.true111
  %85 = load i32, ptr %long_only.addr, align 4
  %tobool119 = icmp ne i32 %85, 0
  br i1 %tobool119, label %land.lhs.true120, label %if.end301

land.lhs.true120:                                 ; preds = %lor.lhs.false118
  %86 = load ptr, ptr %argv.addr, align 8
  %87 = load i32, ptr @optind, align 4
  %idxprom121 = sext i32 %87 to i64
  %arrayidx122 = getelementptr inbounds ptr, ptr %86, i64 %idxprom121
  %88 = load ptr, ptr %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, ptr %88, i64 2
  %89 = load i8, ptr %arrayidx123, align 1
  %conv124 = sext i8 %89 to i32
  %tobool125 = icmp ne i32 %conv124, 0
  br i1 %tobool125, label %if.then133, label %lor.lhs.false126

lor.lhs.false126:                                 ; preds = %land.lhs.true120
  %90 = load ptr, ptr %optstring.addr, align 8
  %91 = load ptr, ptr %argv.addr, align 8
  %92 = load i32, ptr @optind, align 4
  %idxprom127 = sext i32 %92 to i64
  %arrayidx128 = getelementptr inbounds ptr, ptr %91, i64 %idxprom127
  %93 = load ptr, ptr %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i8, ptr %93, i64 1
  %94 = load i8, ptr %arrayidx129, align 1
  %conv130 = sext i8 %94 to i32
  %call131 = call ptr @strchr(ptr noundef %90, i32 noundef %conv130) #3
  %tobool132 = icmp ne ptr %call131, null
  br i1 %tobool132, label %if.end301, label %if.then133

if.then133:                                       ; preds = %lor.lhs.false126, %land.lhs.true120, %land.lhs.true111
  store ptr null, ptr %pfound, align 8
  store i32 0, ptr %exact, align 4
  store i32 0, ptr %ambig, align 4
  store i32 -1, ptr %indfound, align 4
  %95 = load ptr, ptr @nextchar, align 8
  store ptr %95, ptr %nameend, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then133
  %96 = load ptr, ptr %nameend, align 8
  %97 = load i8, ptr %96, align 1
  %conv134 = sext i8 %97 to i32
  %tobool135 = icmp ne i32 %conv134, 0
  br i1 %tobool135, label %land.rhs136, label %land.end140

land.rhs136:                                      ; preds = %for.cond
  %98 = load ptr, ptr %nameend, align 8
  %99 = load i8, ptr %98, align 1
  %conv137 = sext i8 %99 to i32
  %cmp138 = icmp ne i32 %conv137, 61
  br label %land.end140

land.end140:                                      ; preds = %land.rhs136, %for.cond
  %100 = phi i1 [ false, %for.cond ], [ %cmp138, %land.rhs136 ]
  br i1 %100, label %for.body, label %for.end

for.body:                                         ; preds = %land.end140
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %101 = load ptr, ptr %nameend, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %101, i32 1
  store ptr %incdec.ptr, ptr %nameend, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.end140
  %102 = load ptr, ptr %longopts.addr, align 8
  store ptr %102, ptr %p, align 8
  store i32 0, ptr %option_index, align 4
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc167, %for.end
  %103 = load ptr, ptr %p, align 8
  %name = getelementptr inbounds nuw %struct.option, ptr %103, i32 0, i32 0
  %104 = load ptr, ptr %name, align 8
  %tobool143 = icmp ne ptr %104, null
  br i1 %tobool143, label %for.body144, label %for.end170

for.body144:                                      ; preds = %for.cond142
  %105 = load ptr, ptr %p, align 8
  %name145 = getelementptr inbounds nuw %struct.option, ptr %105, i32 0, i32 0
  %106 = load ptr, ptr %name145, align 8
  %107 = load ptr, ptr @nextchar, align 8
  %108 = load ptr, ptr %nameend, align 8
  %109 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %108 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %109 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call146 = call i32 @strncmp(ptr noundef %106, ptr noundef %107, i64 noundef %sub.ptr.sub) #3
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.end166, label %if.then148

if.then148:                                       ; preds = %for.body144
  %110 = load ptr, ptr %nameend, align 8
  %111 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast149 = ptrtoint ptr %110 to i64
  %sub.ptr.rhs.cast150 = ptrtoint ptr %111 to i64
  %sub.ptr.sub151 = sub i64 %sub.ptr.lhs.cast149, %sub.ptr.rhs.cast150
  %conv152 = trunc i64 %sub.ptr.sub151 to i32
  %112 = load ptr, ptr %p, align 8
  %name153 = getelementptr inbounds nuw %struct.option, ptr %112, i32 0, i32 0
  %113 = load ptr, ptr %name153, align 8
  %call154 = call i64 @strlen(ptr noundef %113) #3
  %conv155 = trunc i64 %call154 to i32
  %cmp156 = icmp eq i32 %conv152, %conv155
  br i1 %cmp156, label %if.then158, label %if.else159

if.then158:                                       ; preds = %if.then148
  %114 = load ptr, ptr %p, align 8
  store ptr %114, ptr %pfound, align 8
  %115 = load i32, ptr %option_index, align 4
  store i32 %115, ptr %indfound, align 4
  store i32 1, ptr %exact, align 4
  br label %for.end170

if.else159:                                       ; preds = %if.then148
  %116 = load ptr, ptr %pfound, align 8
  %cmp160 = icmp eq ptr %116, null
  br i1 %cmp160, label %if.then162, label %if.else163

if.then162:                                       ; preds = %if.else159
  %117 = load ptr, ptr %p, align 8
  store ptr %117, ptr %pfound, align 8
  %118 = load i32, ptr %option_index, align 4
  store i32 %118, ptr %indfound, align 4
  br label %if.end164

if.else163:                                       ; preds = %if.else159
  store i32 1, ptr %ambig, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.else163, %if.then162
  br label %if.end165

if.end165:                                        ; preds = %if.end164
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %for.body144
  br label %for.inc167

for.inc167:                                       ; preds = %if.end166
  %119 = load ptr, ptr %p, align 8
  %incdec.ptr168 = getelementptr inbounds nuw %struct.option, ptr %119, i32 1
  store ptr %incdec.ptr168, ptr %p, align 8
  %120 = load i32, ptr %option_index, align 4
  %inc169 = add nsw i32 %120, 1
  store i32 %inc169, ptr %option_index, align 4
  br label %for.cond142, !llvm.loop !9

for.end170:                                       ; preds = %if.then158, %for.cond142
  %121 = load i32, ptr %ambig, align 4
  %tobool171 = icmp ne i32 %121, 0
  br i1 %tobool171, label %land.lhs.true172, label %if.end185

land.lhs.true172:                                 ; preds = %for.end170
  %122 = load i32, ptr %exact, align 4
  %tobool173 = icmp ne i32 %122, 0
  br i1 %tobool173, label %if.end185, label %if.then174

if.then174:                                       ; preds = %land.lhs.true172
  %123 = load i32, ptr @opterr, align 4
  %tobool175 = icmp ne i32 %123, 0
  br i1 %tobool175, label %if.then176, label %if.end181

if.then176:                                       ; preds = %if.then174
  %124 = load ptr, ptr @stderr, align 8
  %125 = load ptr, ptr %argv.addr, align 8
  %arrayidx177 = getelementptr inbounds ptr, ptr %125, i64 0
  %126 = load ptr, ptr %arrayidx177, align 8
  %127 = load ptr, ptr %argv.addr, align 8
  %128 = load i32, ptr @optind, align 4
  %idxprom178 = sext i32 %128 to i64
  %arrayidx179 = getelementptr inbounds ptr, ptr %127, i64 %idxprom178
  %129 = load ptr, ptr %arrayidx179, align 8
  %call180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.134, ptr noundef %126, ptr noundef %129) #4
  br label %if.end181

if.end181:                                        ; preds = %if.then176, %if.then174
  %130 = load ptr, ptr @nextchar, align 8
  %call182 = call i64 @strlen(ptr noundef %130) #3
  %131 = load ptr, ptr @nextchar, align 8
  %add.ptr183 = getelementptr inbounds nuw i8, ptr %131, i64 %call182
  store ptr %add.ptr183, ptr @nextchar, align 8
  %132 = load i32, ptr @optind, align 4
  %inc184 = add nsw i32 %132, 1
  store i32 %inc184, ptr @optind, align 4
  store i32 0, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end185:                                        ; preds = %land.lhs.true172, %for.end170
  %133 = load ptr, ptr %pfound, align 8
  %cmp186 = icmp ne ptr %133, null
  br i1 %cmp186, label %if.then188, label %if.end264

if.then188:                                       ; preds = %if.end185
  %134 = load i32, ptr %indfound, align 4
  store i32 %134, ptr %option_index, align 4
  %135 = load i32, ptr @optind, align 4
  %inc189 = add nsw i32 %135, 1
  store i32 %inc189, ptr @optind, align 4
  %136 = load ptr, ptr %nameend, align 8
  %137 = load i8, ptr %136, align 1
  %tobool190 = icmp ne i8 %137, 0
  br i1 %tobool190, label %if.then191, label %if.else222

if.then191:                                       ; preds = %if.then188
  %138 = load ptr, ptr %pfound, align 8
  %has_arg = getelementptr inbounds nuw %struct.option, ptr %138, i32 0, i32 1
  %139 = load i32, ptr %has_arg, align 8
  %tobool192 = icmp ne i32 %139, 0
  br i1 %tobool192, label %if.then193, label %if.else195

if.then193:                                       ; preds = %if.then191
  %140 = load ptr, ptr %nameend, align 8
  %add.ptr194 = getelementptr inbounds i8, ptr %140, i64 1
  store ptr %add.ptr194, ptr @optarg, align 8
  br label %if.end221

if.else195:                                       ; preds = %if.then191
  %141 = load i32, ptr @opterr, align 4
  %tobool196 = icmp ne i32 %141, 0
  br i1 %tobool196, label %if.then197, label %if.end218

if.then197:                                       ; preds = %if.else195
  %142 = load ptr, ptr %argv.addr, align 8
  %143 = load i32, ptr @optind, align 4
  %sub = sub nsw i32 %143, 1
  %idxprom198 = sext i32 %sub to i64
  %arrayidx199 = getelementptr inbounds ptr, ptr %142, i64 %idxprom198
  %144 = load ptr, ptr %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i8, ptr %144, i64 1
  %145 = load i8, ptr %arrayidx200, align 1
  %conv201 = sext i8 %145 to i32
  %cmp202 = icmp eq i32 %conv201, 45
  br i1 %cmp202, label %if.then204, label %if.else208

if.then204:                                       ; preds = %if.then197
  %146 = load ptr, ptr @stderr, align 8
  %147 = load ptr, ptr %argv.addr, align 8
  %arrayidx205 = getelementptr inbounds ptr, ptr %147, i64 0
  %148 = load ptr, ptr %arrayidx205, align 8
  %149 = load ptr, ptr %pfound, align 8
  %name206 = getelementptr inbounds nuw %struct.option, ptr %149, i32 0, i32 0
  %150 = load ptr, ptr %name206, align 8
  %call207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.135, ptr noundef %148, ptr noundef %150) #4
  br label %if.end217

if.else208:                                       ; preds = %if.then197
  %151 = load ptr, ptr @stderr, align 8
  %152 = load ptr, ptr %argv.addr, align 8
  %arrayidx209 = getelementptr inbounds ptr, ptr %152, i64 0
  %153 = load ptr, ptr %arrayidx209, align 8
  %154 = load ptr, ptr %argv.addr, align 8
  %155 = load i32, ptr @optind, align 4
  %sub210 = sub nsw i32 %155, 1
  %idxprom211 = sext i32 %sub210 to i64
  %arrayidx212 = getelementptr inbounds ptr, ptr %154, i64 %idxprom211
  %156 = load ptr, ptr %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds i8, ptr %156, i64 0
  %157 = load i8, ptr %arrayidx213, align 1
  %conv214 = sext i8 %157 to i32
  %158 = load ptr, ptr %pfound, align 8
  %name215 = getelementptr inbounds nuw %struct.option, ptr %158, i32 0, i32 0
  %159 = load ptr, ptr %name215, align 8
  %call216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef @.str.136, ptr noundef %153, i32 noundef %conv214, ptr noundef %159) #4
  br label %if.end217

if.end217:                                        ; preds = %if.else208, %if.then204
  br label %if.end218

if.end218:                                        ; preds = %if.end217, %if.else195
  %160 = load ptr, ptr @nextchar, align 8
  %call219 = call i64 @strlen(ptr noundef %160) #3
  %161 = load ptr, ptr @nextchar, align 8
  %add.ptr220 = getelementptr inbounds nuw i8, ptr %161, i64 %call219
  store ptr %add.ptr220, ptr @nextchar, align 8
  %162 = load ptr, ptr %pfound, align 8
  %val = getelementptr inbounds nuw %struct.option, ptr %162, i32 0, i32 3
  %163 = load i32, ptr %val, align 8
  store i32 %163, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end221:                                        ; preds = %if.then193
  br label %if.end251

if.else222:                                       ; preds = %if.then188
  %164 = load ptr, ptr %pfound, align 8
  %has_arg223 = getelementptr inbounds nuw %struct.option, ptr %164, i32 0, i32 1
  %165 = load i32, ptr %has_arg223, align 8
  %cmp224 = icmp eq i32 %165, 1
  br i1 %cmp224, label %if.then226, label %if.end250

if.then226:                                       ; preds = %if.else222
  %166 = load i32, ptr @optind, align 4
  %167 = load i32, ptr %argc.addr, align 4
  %cmp227 = icmp slt i32 %166, %167
  br i1 %cmp227, label %if.then229, label %if.else233

if.then229:                                       ; preds = %if.then226
  %168 = load ptr, ptr %argv.addr, align 8
  %169 = load i32, ptr @optind, align 4
  %inc230 = add nsw i32 %169, 1
  store i32 %inc230, ptr @optind, align 4
  %idxprom231 = sext i32 %169 to i64
  %arrayidx232 = getelementptr inbounds ptr, ptr %168, i64 %idxprom231
  %170 = load ptr, ptr %arrayidx232, align 8
  store ptr %170, ptr @optarg, align 8
  br label %if.end249

if.else233:                                       ; preds = %if.then226
  %171 = load i32, ptr @opterr, align 4
  %tobool234 = icmp ne i32 %171, 0
  br i1 %tobool234, label %if.then235, label %if.end241

if.then235:                                       ; preds = %if.else233
  %172 = load ptr, ptr @stderr, align 8
  %173 = load ptr, ptr %argv.addr, align 8
  %arrayidx236 = getelementptr inbounds ptr, ptr %173, i64 0
  %174 = load ptr, ptr %arrayidx236, align 8
  %175 = load ptr, ptr %argv.addr, align 8
  %176 = load i32, ptr @optind, align 4
  %sub237 = sub nsw i32 %176, 1
  %idxprom238 = sext i32 %sub237 to i64
  %arrayidx239 = getelementptr inbounds ptr, ptr %175, i64 %idxprom238
  %177 = load ptr, ptr %arrayidx239, align 8
  %call240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef @.str.137, ptr noundef %174, ptr noundef %177) #4
  br label %if.end241

if.end241:                                        ; preds = %if.then235, %if.else233
  %178 = load ptr, ptr @nextchar, align 8
  %call242 = call i64 @strlen(ptr noundef %178) #3
  %179 = load ptr, ptr @nextchar, align 8
  %add.ptr243 = getelementptr inbounds nuw i8, ptr %179, i64 %call242
  store ptr %add.ptr243, ptr @nextchar, align 8
  %180 = load ptr, ptr %pfound, align 8
  %val244 = getelementptr inbounds nuw %struct.option, ptr %180, i32 0, i32 3
  %181 = load i32, ptr %val244, align 8
  store i32 %181, ptr @optopt, align 4
  %182 = load ptr, ptr %optstring.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, ptr %182, i64 0
  %183 = load i8, ptr %arrayidx245, align 1
  %conv246 = sext i8 %183 to i32
  %cmp247 = icmp eq i32 %conv246, 58
  %184 = zext i1 %cmp247 to i64
  %cond = select i1 %cmp247, i32 58, i32 63
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end249:                                        ; preds = %if.then229
  br label %if.end250

if.end250:                                        ; preds = %if.end249, %if.else222
  br label %if.end251

if.end251:                                        ; preds = %if.end250, %if.end221
  %185 = load ptr, ptr @nextchar, align 8
  %call252 = call i64 @strlen(ptr noundef %185) #3
  %186 = load ptr, ptr @nextchar, align 8
  %add.ptr253 = getelementptr inbounds nuw i8, ptr %186, i64 %call252
  store ptr %add.ptr253, ptr @nextchar, align 8
  %187 = load ptr, ptr %longind.addr, align 8
  %cmp254 = icmp ne ptr %187, null
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %if.end251
  %188 = load i32, ptr %option_index, align 4
  %189 = load ptr, ptr %longind.addr, align 8
  store i32 %188, ptr %189, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.then256, %if.end251
  %190 = load ptr, ptr %pfound, align 8
  %flag = getelementptr inbounds nuw %struct.option, ptr %190, i32 0, i32 2
  %191 = load ptr, ptr %flag, align 8
  %tobool258 = icmp ne ptr %191, null
  br i1 %tobool258, label %if.then259, label %if.end262

if.then259:                                       ; preds = %if.end257
  %192 = load ptr, ptr %pfound, align 8
  %val260 = getelementptr inbounds nuw %struct.option, ptr %192, i32 0, i32 3
  %193 = load i32, ptr %val260, align 8
  %194 = load ptr, ptr %pfound, align 8
  %flag261 = getelementptr inbounds nuw %struct.option, ptr %194, i32 0, i32 2
  %195 = load ptr, ptr %flag261, align 8
  store i32 %193, ptr %195, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end262:                                        ; preds = %if.end257
  %196 = load ptr, ptr %pfound, align 8
  %val263 = getelementptr inbounds nuw %struct.option, ptr %196, i32 0, i32 3
  %197 = load i32, ptr %val263, align 8
  store i32 %197, ptr %retval, align 4
  br label %return

if.end264:                                        ; preds = %if.end185
  %198 = load i32, ptr %long_only.addr, align 4
  %tobool265 = icmp ne i32 %198, 0
  br i1 %tobool265, label %lor.lhs.false266, label %if.then278

lor.lhs.false266:                                 ; preds = %if.end264
  %199 = load ptr, ptr %argv.addr, align 8
  %200 = load i32, ptr @optind, align 4
  %idxprom267 = sext i32 %200 to i64
  %arrayidx268 = getelementptr inbounds ptr, ptr %199, i64 %idxprom267
  %201 = load ptr, ptr %arrayidx268, align 8
  %arrayidx269 = getelementptr inbounds i8, ptr %201, i64 1
  %202 = load i8, ptr %arrayidx269, align 1
  %conv270 = sext i8 %202 to i32
  %cmp271 = icmp eq i32 %conv270, 45
  br i1 %cmp271, label %if.then278, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %lor.lhs.false266
  %203 = load ptr, ptr %optstring.addr, align 8
  %204 = load ptr, ptr @nextchar, align 8
  %205 = load i8, ptr %204, align 1
  %conv274 = sext i8 %205 to i32
  %call275 = call ptr @strchr(ptr noundef %203, i32 noundef %conv274) #3
  %cmp276 = icmp eq ptr %call275, null
  br i1 %cmp276, label %if.then278, label %if.end300

if.then278:                                       ; preds = %lor.lhs.false273, %lor.lhs.false266, %if.end264
  %206 = load i32, ptr @opterr, align 4
  %tobool279 = icmp ne i32 %206, 0
  br i1 %tobool279, label %if.then280, label %if.end298

if.then280:                                       ; preds = %if.then278
  %207 = load ptr, ptr %argv.addr, align 8
  %208 = load i32, ptr @optind, align 4
  %idxprom281 = sext i32 %208 to i64
  %arrayidx282 = getelementptr inbounds ptr, ptr %207, i64 %idxprom281
  %209 = load ptr, ptr %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i8, ptr %209, i64 1
  %210 = load i8, ptr %arrayidx283, align 1
  %conv284 = sext i8 %210 to i32
  %cmp285 = icmp eq i32 %conv284, 45
  br i1 %cmp285, label %if.then287, label %if.else290

if.then287:                                       ; preds = %if.then280
  %211 = load ptr, ptr @stderr, align 8
  %212 = load ptr, ptr %argv.addr, align 8
  %arrayidx288 = getelementptr inbounds ptr, ptr %212, i64 0
  %213 = load ptr, ptr %arrayidx288, align 8
  %214 = load ptr, ptr @nextchar, align 8
  %call289 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef @.str.138, ptr noundef %213, ptr noundef %214) #4
  br label %if.end297

if.else290:                                       ; preds = %if.then280
  %215 = load ptr, ptr @stderr, align 8
  %216 = load ptr, ptr %argv.addr, align 8
  %arrayidx291 = getelementptr inbounds ptr, ptr %216, i64 0
  %217 = load ptr, ptr %arrayidx291, align 8
  %218 = load ptr, ptr %argv.addr, align 8
  %219 = load i32, ptr @optind, align 4
  %idxprom292 = sext i32 %219 to i64
  %arrayidx293 = getelementptr inbounds ptr, ptr %218, i64 %idxprom292
  %220 = load ptr, ptr %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i8, ptr %220, i64 0
  %221 = load i8, ptr %arrayidx294, align 1
  %conv295 = sext i8 %221 to i32
  %222 = load ptr, ptr @nextchar, align 8
  %call296 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef @.str.139, ptr noundef %217, i32 noundef %conv295, ptr noundef %222) #4
  br label %if.end297

if.end297:                                        ; preds = %if.else290, %if.then287
  br label %if.end298

if.end298:                                        ; preds = %if.end297, %if.then278
  store ptr @.str.103, ptr @nextchar, align 8
  %223 = load i32, ptr @optind, align 4
  %inc299 = add nsw i32 %223, 1
  store i32 %inc299, ptr @optind, align 4
  store i32 0, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end300:                                        ; preds = %lor.lhs.false273
  br label %if.end301

if.end301:                                        ; preds = %if.end300, %lor.lhs.false126, %lor.lhs.false118, %if.end108
  %224 = load ptr, ptr @nextchar, align 8
  %incdec.ptr302 = getelementptr inbounds nuw i8, ptr %224, i32 1
  store ptr %incdec.ptr302, ptr @nextchar, align 8
  %225 = load i8, ptr %224, align 1
  store i8 %225, ptr %c, align 1
  %226 = load ptr, ptr %optstring.addr, align 8
  %227 = load i8, ptr %c, align 1
  %conv303 = sext i8 %227 to i32
  %call304 = call ptr @strchr(ptr noundef %226, i32 noundef %conv303) #3
  store ptr %call304, ptr %temp, align 8
  %228 = load ptr, ptr @nextchar, align 8
  %229 = load i8, ptr %228, align 1
  %conv305 = sext i8 %229 to i32
  %cmp306 = icmp eq i32 %conv305, 0
  br i1 %cmp306, label %if.then308, label %if.end310

if.then308:                                       ; preds = %if.end301
  %230 = load i32, ptr @optind, align 4
  %inc309 = add nsw i32 %230, 1
  store i32 %inc309, ptr @optind, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.then308, %if.end301
  %231 = load ptr, ptr %temp, align 8
  %cmp311 = icmp eq ptr %231, null
  br i1 %cmp311, label %if.then317, label %lor.lhs.false313

lor.lhs.false313:                                 ; preds = %if.end310
  %232 = load i8, ptr %c, align 1
  %conv314 = sext i8 %232 to i32
  %cmp315 = icmp eq i32 %conv314, 58
  br i1 %cmp315, label %if.then317, label %if.end332

if.then317:                                       ; preds = %lor.lhs.false313, %if.end310
  %233 = load i32, ptr @opterr, align 4
  %tobool318 = icmp ne i32 %233, 0
  br i1 %tobool318, label %if.then319, label %if.end330

if.then319:                                       ; preds = %if.then317
  %234 = load ptr, ptr @posixly_correct, align 8
  %tobool320 = icmp ne ptr %234, null
  br i1 %tobool320, label %if.then321, label %if.else325

if.then321:                                       ; preds = %if.then319
  %235 = load ptr, ptr @stderr, align 8
  %236 = load ptr, ptr %argv.addr, align 8
  %arrayidx322 = getelementptr inbounds ptr, ptr %236, i64 0
  %237 = load ptr, ptr %arrayidx322, align 8
  %238 = load i8, ptr %c, align 1
  %conv323 = sext i8 %238 to i32
  %call324 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %235, ptr noundef @.str.140, ptr noundef %237, i32 noundef %conv323) #4
  br label %if.end329

if.else325:                                       ; preds = %if.then319
  %239 = load ptr, ptr @stderr, align 8
  %240 = load ptr, ptr %argv.addr, align 8
  %arrayidx326 = getelementptr inbounds ptr, ptr %240, i64 0
  %241 = load ptr, ptr %arrayidx326, align 8
  %242 = load i8, ptr %c, align 1
  %conv327 = sext i8 %242 to i32
  %call328 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef @.str.141, ptr noundef %241, i32 noundef %conv327) #4
  br label %if.end329

if.end329:                                        ; preds = %if.else325, %if.then321
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %if.then317
  %243 = load i8, ptr %c, align 1
  %conv331 = sext i8 %243 to i32
  store i32 %conv331, ptr @optopt, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end332:                                        ; preds = %lor.lhs.false313
  %244 = load ptr, ptr %temp, align 8
  %arrayidx333 = getelementptr inbounds i8, ptr %244, i64 0
  %245 = load i8, ptr %arrayidx333, align 1
  %conv334 = sext i8 %245 to i32
  %cmp335 = icmp eq i32 %conv334, 87
  br i1 %cmp335, label %land.lhs.true337, label %if.end504

land.lhs.true337:                                 ; preds = %if.end332
  %246 = load ptr, ptr %temp, align 8
  %arrayidx338 = getelementptr inbounds i8, ptr %246, i64 1
  %247 = load i8, ptr %arrayidx338, align 1
  %conv339 = sext i8 %247 to i32
  %cmp340 = icmp eq i32 %conv339, 59
  br i1 %cmp340, label %if.then342, label %if.end504

if.then342:                                       ; preds = %land.lhs.true337
  store ptr null, ptr %pfound345, align 8
  store i32 0, ptr %exact346, align 4
  store i32 0, ptr %ambig347, align 4
  store i32 0, ptr %indfound348, align 4
  %248 = load ptr, ptr @nextchar, align 8
  %249 = load i8, ptr %248, align 1
  %conv350 = sext i8 %249 to i32
  %cmp351 = icmp ne i32 %conv350, 0
  br i1 %cmp351, label %if.then353, label %if.else355

if.then353:                                       ; preds = %if.then342
  %250 = load ptr, ptr @nextchar, align 8
  store ptr %250, ptr @optarg, align 8
  %251 = load i32, ptr @optind, align 4
  %inc354 = add nsw i32 %251, 1
  store i32 %inc354, ptr @optind, align 4
  br label %if.end379

if.else355:                                       ; preds = %if.then342
  %252 = load i32, ptr @optind, align 4
  %253 = load i32, ptr %argc.addr, align 4
  %cmp356 = icmp eq i32 %252, %253
  br i1 %cmp356, label %if.then358, label %if.else374

if.then358:                                       ; preds = %if.else355
  %254 = load i32, ptr @opterr, align 4
  %tobool359 = icmp ne i32 %254, 0
  br i1 %tobool359, label %if.then360, label %if.end364

if.then360:                                       ; preds = %if.then358
  %255 = load ptr, ptr @stderr, align 8
  %256 = load ptr, ptr %argv.addr, align 8
  %arrayidx361 = getelementptr inbounds ptr, ptr %256, i64 0
  %257 = load ptr, ptr %arrayidx361, align 8
  %258 = load i8, ptr %c, align 1
  %conv362 = sext i8 %258 to i32
  %call363 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %255, ptr noundef @.str.142, ptr noundef %257, i32 noundef %conv362) #4
  br label %if.end364

if.end364:                                        ; preds = %if.then360, %if.then358
  %259 = load i8, ptr %c, align 1
  %conv365 = sext i8 %259 to i32
  store i32 %conv365, ptr @optopt, align 4
  %260 = load ptr, ptr %optstring.addr, align 8
  %arrayidx366 = getelementptr inbounds i8, ptr %260, i64 0
  %261 = load i8, ptr %arrayidx366, align 1
  %conv367 = sext i8 %261 to i32
  %cmp368 = icmp eq i32 %conv367, 58
  br i1 %cmp368, label %if.then370, label %if.else371

if.then370:                                       ; preds = %if.end364
  store i8 58, ptr %c, align 1
  br label %if.end372

if.else371:                                       ; preds = %if.end364
  store i8 63, ptr %c, align 1
  br label %if.end372

if.end372:                                        ; preds = %if.else371, %if.then370
  %262 = load i8, ptr %c, align 1
  %conv373 = sext i8 %262 to i32
  store i32 %conv373, ptr %retval, align 4
  br label %return

if.else374:                                       ; preds = %if.else355
  %263 = load ptr, ptr %argv.addr, align 8
  %264 = load i32, ptr @optind, align 4
  %inc375 = add nsw i32 %264, 1
  store i32 %inc375, ptr @optind, align 4
  %idxprom376 = sext i32 %264 to i64
  %arrayidx377 = getelementptr inbounds ptr, ptr %263, i64 %idxprom376
  %265 = load ptr, ptr %arrayidx377, align 8
  store ptr %265, ptr @optarg, align 8
  br label %if.end378

if.end378:                                        ; preds = %if.else374
  br label %if.end379

if.end379:                                        ; preds = %if.end378, %if.then353
  %266 = load ptr, ptr @optarg, align 8
  store ptr %266, ptr %nameend343, align 8
  store ptr %266, ptr @nextchar, align 8
  br label %for.cond380

for.cond380:                                      ; preds = %for.inc390, %if.end379
  %267 = load ptr, ptr %nameend343, align 8
  %268 = load i8, ptr %267, align 1
  %conv381 = sext i8 %268 to i32
  %tobool382 = icmp ne i32 %conv381, 0
  br i1 %tobool382, label %land.rhs383, label %land.end387

land.rhs383:                                      ; preds = %for.cond380
  %269 = load ptr, ptr %nameend343, align 8
  %270 = load i8, ptr %269, align 1
  %conv384 = sext i8 %270 to i32
  %cmp385 = icmp ne i32 %conv384, 61
  br label %land.end387

land.end387:                                      ; preds = %land.rhs383, %for.cond380
  %271 = phi i1 [ false, %for.cond380 ], [ %cmp385, %land.rhs383 ]
  br i1 %271, label %for.body389, label %for.end392

for.body389:                                      ; preds = %land.end387
  br label %for.inc390

for.inc390:                                       ; preds = %for.body389
  %272 = load ptr, ptr %nameend343, align 8
  %incdec.ptr391 = getelementptr inbounds nuw i8, ptr %272, i32 1
  store ptr %incdec.ptr391, ptr %nameend343, align 8
  br label %for.cond380, !llvm.loop !10

for.end392:                                       ; preds = %land.end387
  %273 = load ptr, ptr %longopts.addr, align 8
  store ptr %273, ptr %p344, align 8
  store i32 0, ptr %option_index349, align 4
  br label %for.cond393

for.cond393:                                      ; preds = %for.inc422, %for.end392
  %274 = load ptr, ptr %p344, align 8
  %name394 = getelementptr inbounds nuw %struct.option, ptr %274, i32 0, i32 0
  %275 = load ptr, ptr %name394, align 8
  %tobool395 = icmp ne ptr %275, null
  br i1 %tobool395, label %for.body396, label %for.end425

for.body396:                                      ; preds = %for.cond393
  %276 = load ptr, ptr %p344, align 8
  %name397 = getelementptr inbounds nuw %struct.option, ptr %276, i32 0, i32 0
  %277 = load ptr, ptr %name397, align 8
  %278 = load ptr, ptr @nextchar, align 8
  %279 = load ptr, ptr %nameend343, align 8
  %280 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast398 = ptrtoint ptr %279 to i64
  %sub.ptr.rhs.cast399 = ptrtoint ptr %280 to i64
  %sub.ptr.sub400 = sub i64 %sub.ptr.lhs.cast398, %sub.ptr.rhs.cast399
  %call401 = call i32 @strncmp(ptr noundef %277, ptr noundef %278, i64 noundef %sub.ptr.sub400) #3
  %tobool402 = icmp ne i32 %call401, 0
  br i1 %tobool402, label %if.end421, label %if.then403

if.then403:                                       ; preds = %for.body396
  %281 = load ptr, ptr %nameend343, align 8
  %282 = load ptr, ptr @nextchar, align 8
  %sub.ptr.lhs.cast404 = ptrtoint ptr %281 to i64
  %sub.ptr.rhs.cast405 = ptrtoint ptr %282 to i64
  %sub.ptr.sub406 = sub i64 %sub.ptr.lhs.cast404, %sub.ptr.rhs.cast405
  %conv407 = trunc i64 %sub.ptr.sub406 to i32
  %conv408 = zext i32 %conv407 to i64
  %283 = load ptr, ptr %p344, align 8
  %name409 = getelementptr inbounds nuw %struct.option, ptr %283, i32 0, i32 0
  %284 = load ptr, ptr %name409, align 8
  %call410 = call i64 @strlen(ptr noundef %284) #3
  %cmp411 = icmp eq i64 %conv408, %call410
  br i1 %cmp411, label %if.then413, label %if.else414

if.then413:                                       ; preds = %if.then403
  %285 = load ptr, ptr %p344, align 8
  store ptr %285, ptr %pfound345, align 8
  %286 = load i32, ptr %option_index349, align 4
  store i32 %286, ptr %indfound348, align 4
  store i32 1, ptr %exact346, align 4
  br label %for.end425

if.else414:                                       ; preds = %if.then403
  %287 = load ptr, ptr %pfound345, align 8
  %cmp415 = icmp eq ptr %287, null
  br i1 %cmp415, label %if.then417, label %if.else418

if.then417:                                       ; preds = %if.else414
  %288 = load ptr, ptr %p344, align 8
  store ptr %288, ptr %pfound345, align 8
  %289 = load i32, ptr %option_index349, align 4
  store i32 %289, ptr %indfound348, align 4
  br label %if.end419

if.else418:                                       ; preds = %if.else414
  store i32 1, ptr %ambig347, align 4
  br label %if.end419

if.end419:                                        ; preds = %if.else418, %if.then417
  br label %if.end420

if.end420:                                        ; preds = %if.end419
  br label %if.end421

if.end421:                                        ; preds = %if.end420, %for.body396
  br label %for.inc422

for.inc422:                                       ; preds = %if.end421
  %290 = load ptr, ptr %p344, align 8
  %incdec.ptr423 = getelementptr inbounds nuw %struct.option, ptr %290, i32 1
  store ptr %incdec.ptr423, ptr %p344, align 8
  %291 = load i32, ptr %option_index349, align 4
  %inc424 = add nsw i32 %291, 1
  store i32 %inc424, ptr %option_index349, align 4
  br label %for.cond393, !llvm.loop !11

for.end425:                                       ; preds = %if.then413, %for.cond393
  %292 = load i32, ptr %ambig347, align 4
  %tobool426 = icmp ne i32 %292, 0
  br i1 %tobool426, label %land.lhs.true427, label %if.end440

land.lhs.true427:                                 ; preds = %for.end425
  %293 = load i32, ptr %exact346, align 4
  %tobool428 = icmp ne i32 %293, 0
  br i1 %tobool428, label %if.end440, label %if.then429

if.then429:                                       ; preds = %land.lhs.true427
  %294 = load i32, ptr @opterr, align 4
  %tobool430 = icmp ne i32 %294, 0
  br i1 %tobool430, label %if.then431, label %if.end436

if.then431:                                       ; preds = %if.then429
  %295 = load ptr, ptr @stderr, align 8
  %296 = load ptr, ptr %argv.addr, align 8
  %arrayidx432 = getelementptr inbounds ptr, ptr %296, i64 0
  %297 = load ptr, ptr %arrayidx432, align 8
  %298 = load ptr, ptr %argv.addr, align 8
  %299 = load i32, ptr @optind, align 4
  %idxprom433 = sext i32 %299 to i64
  %arrayidx434 = getelementptr inbounds ptr, ptr %298, i64 %idxprom433
  %300 = load ptr, ptr %arrayidx434, align 8
  %call435 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef @.str.143, ptr noundef %297, ptr noundef %300) #4
  br label %if.end436

if.end436:                                        ; preds = %if.then431, %if.then429
  %301 = load ptr, ptr @nextchar, align 8
  %call437 = call i64 @strlen(ptr noundef %301) #3
  %302 = load ptr, ptr @nextchar, align 8
  %add.ptr438 = getelementptr inbounds nuw i8, ptr %302, i64 %call437
  store ptr %add.ptr438, ptr @nextchar, align 8
  %303 = load i32, ptr @optind, align 4
  %inc439 = add nsw i32 %303, 1
  store i32 %inc439, ptr @optind, align 4
  store i32 63, ptr %retval, align 4
  br label %return

if.end440:                                        ; preds = %land.lhs.true427, %for.end425
  %304 = load ptr, ptr %pfound345, align 8
  %cmp441 = icmp ne ptr %304, null
  br i1 %cmp441, label %if.then443, label %if.end503

if.then443:                                       ; preds = %if.end440
  %305 = load i32, ptr %indfound348, align 4
  store i32 %305, ptr %option_index349, align 4
  %306 = load ptr, ptr %nameend343, align 8
  %307 = load i8, ptr %306, align 1
  %tobool444 = icmp ne i8 %307, 0
  br i1 %tobool444, label %if.then445, label %if.else460

if.then445:                                       ; preds = %if.then443
  %308 = load ptr, ptr %pfound345, align 8
  %has_arg446 = getelementptr inbounds nuw %struct.option, ptr %308, i32 0, i32 1
  %309 = load i32, ptr %has_arg446, align 8
  %tobool447 = icmp ne i32 %309, 0
  br i1 %tobool447, label %if.then448, label %if.else450

if.then448:                                       ; preds = %if.then445
  %310 = load ptr, ptr %nameend343, align 8
  %add.ptr449 = getelementptr inbounds i8, ptr %310, i64 1
  store ptr %add.ptr449, ptr @optarg, align 8
  br label %if.end459

if.else450:                                       ; preds = %if.then445
  %311 = load i32, ptr @opterr, align 4
  %tobool451 = icmp ne i32 %311, 0
  br i1 %tobool451, label %if.then452, label %if.end456

if.then452:                                       ; preds = %if.else450
  %312 = load ptr, ptr @stderr, align 8
  %313 = load ptr, ptr %argv.addr, align 8
  %arrayidx453 = getelementptr inbounds ptr, ptr %313, i64 0
  %314 = load ptr, ptr %arrayidx453, align 8
  %315 = load ptr, ptr %pfound345, align 8
  %name454 = getelementptr inbounds nuw %struct.option, ptr %315, i32 0, i32 0
  %316 = load ptr, ptr %name454, align 8
  %call455 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef @.str.144, ptr noundef %314, ptr noundef %316) #4
  br label %if.end456

if.end456:                                        ; preds = %if.then452, %if.else450
  %317 = load ptr, ptr @nextchar, align 8
  %call457 = call i64 @strlen(ptr noundef %317) #3
  %318 = load ptr, ptr @nextchar, align 8
  %add.ptr458 = getelementptr inbounds nuw i8, ptr %318, i64 %call457
  store ptr %add.ptr458, ptr @nextchar, align 8
  store i32 63, ptr %retval, align 4
  br label %return

if.end459:                                        ; preds = %if.then448
  br label %if.end489

if.else460:                                       ; preds = %if.then443
  %319 = load ptr, ptr %pfound345, align 8
  %has_arg461 = getelementptr inbounds nuw %struct.option, ptr %319, i32 0, i32 1
  %320 = load i32, ptr %has_arg461, align 8
  %cmp462 = icmp eq i32 %320, 1
  br i1 %cmp462, label %if.then464, label %if.end488

if.then464:                                       ; preds = %if.else460
  %321 = load i32, ptr @optind, align 4
  %322 = load i32, ptr %argc.addr, align 4
  %cmp465 = icmp slt i32 %321, %322
  br i1 %cmp465, label %if.then467, label %if.else471

if.then467:                                       ; preds = %if.then464
  %323 = load ptr, ptr %argv.addr, align 8
  %324 = load i32, ptr @optind, align 4
  %inc468 = add nsw i32 %324, 1
  store i32 %inc468, ptr @optind, align 4
  %idxprom469 = sext i32 %324 to i64
  %arrayidx470 = getelementptr inbounds ptr, ptr %323, i64 %idxprom469
  %325 = load ptr, ptr %arrayidx470, align 8
  store ptr %325, ptr @optarg, align 8
  br label %if.end487

if.else471:                                       ; preds = %if.then464
  %326 = load i32, ptr @opterr, align 4
  %tobool472 = icmp ne i32 %326, 0
  br i1 %tobool472, label %if.then473, label %if.end479

if.then473:                                       ; preds = %if.else471
  %327 = load ptr, ptr @stderr, align 8
  %328 = load ptr, ptr %argv.addr, align 8
  %arrayidx474 = getelementptr inbounds ptr, ptr %328, i64 0
  %329 = load ptr, ptr %arrayidx474, align 8
  %330 = load ptr, ptr %argv.addr, align 8
  %331 = load i32, ptr @optind, align 4
  %sub475 = sub nsw i32 %331, 1
  %idxprom476 = sext i32 %sub475 to i64
  %arrayidx477 = getelementptr inbounds ptr, ptr %330, i64 %idxprom476
  %332 = load ptr, ptr %arrayidx477, align 8
  %call478 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %327, ptr noundef @.str.137, ptr noundef %329, ptr noundef %332) #4
  br label %if.end479

if.end479:                                        ; preds = %if.then473, %if.else471
  %333 = load ptr, ptr @nextchar, align 8
  %call480 = call i64 @strlen(ptr noundef %333) #3
  %334 = load ptr, ptr @nextchar, align 8
  %add.ptr481 = getelementptr inbounds nuw i8, ptr %334, i64 %call480
  store ptr %add.ptr481, ptr @nextchar, align 8
  %335 = load ptr, ptr %optstring.addr, align 8
  %arrayidx482 = getelementptr inbounds i8, ptr %335, i64 0
  %336 = load i8, ptr %arrayidx482, align 1
  %conv483 = sext i8 %336 to i32
  %cmp484 = icmp eq i32 %conv483, 58
  %337 = zext i1 %cmp484 to i64
  %cond486 = select i1 %cmp484, i32 58, i32 63
  store i32 %cond486, ptr %retval, align 4
  br label %return

if.end487:                                        ; preds = %if.then467
  br label %if.end488

if.end488:                                        ; preds = %if.end487, %if.else460
  br label %if.end489

if.end489:                                        ; preds = %if.end488, %if.end459
  %338 = load ptr, ptr @nextchar, align 8
  %call490 = call i64 @strlen(ptr noundef %338) #3
  %339 = load ptr, ptr @nextchar, align 8
  %add.ptr491 = getelementptr inbounds nuw i8, ptr %339, i64 %call490
  store ptr %add.ptr491, ptr @nextchar, align 8
  %340 = load ptr, ptr %longind.addr, align 8
  %cmp492 = icmp ne ptr %340, null
  br i1 %cmp492, label %if.then494, label %if.end495

if.then494:                                       ; preds = %if.end489
  %341 = load i32, ptr %option_index349, align 4
  %342 = load ptr, ptr %longind.addr, align 8
  store i32 %341, ptr %342, align 4
  br label %if.end495

if.end495:                                        ; preds = %if.then494, %if.end489
  %343 = load ptr, ptr %pfound345, align 8
  %flag496 = getelementptr inbounds nuw %struct.option, ptr %343, i32 0, i32 2
  %344 = load ptr, ptr %flag496, align 8
  %tobool497 = icmp ne ptr %344, null
  br i1 %tobool497, label %if.then498, label %if.end501

if.then498:                                       ; preds = %if.end495
  %345 = load ptr, ptr %pfound345, align 8
  %val499 = getelementptr inbounds nuw %struct.option, ptr %345, i32 0, i32 3
  %346 = load i32, ptr %val499, align 8
  %347 = load ptr, ptr %pfound345, align 8
  %flag500 = getelementptr inbounds nuw %struct.option, ptr %347, i32 0, i32 2
  %348 = load ptr, ptr %flag500, align 8
  store i32 %346, ptr %348, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end501:                                        ; preds = %if.end495
  %349 = load ptr, ptr %pfound345, align 8
  %val502 = getelementptr inbounds nuw %struct.option, ptr %349, i32 0, i32 3
  %350 = load i32, ptr %val502, align 8
  store i32 %350, ptr %retval, align 4
  br label %return

if.end503:                                        ; preds = %if.end440
  store ptr null, ptr @nextchar, align 8
  store i32 87, ptr %retval, align 4
  br label %return

if.end504:                                        ; preds = %land.lhs.true337, %if.end332
  %351 = load ptr, ptr %temp, align 8
  %arrayidx505 = getelementptr inbounds i8, ptr %351, i64 1
  %352 = load i8, ptr %arrayidx505, align 1
  %conv506 = sext i8 %352 to i32
  %cmp507 = icmp eq i32 %conv506, 58
  br i1 %cmp507, label %if.then509, label %if.end553

if.then509:                                       ; preds = %if.end504
  %353 = load ptr, ptr %temp, align 8
  %arrayidx510 = getelementptr inbounds i8, ptr %353, i64 2
  %354 = load i8, ptr %arrayidx510, align 1
  %conv511 = sext i8 %354 to i32
  %cmp512 = icmp eq i32 %conv511, 58
  br i1 %cmp512, label %if.then514, label %if.else522

if.then514:                                       ; preds = %if.then509
  %355 = load ptr, ptr @nextchar, align 8
  %356 = load i8, ptr %355, align 1
  %conv515 = sext i8 %356 to i32
  %cmp516 = icmp ne i32 %conv515, 0
  br i1 %cmp516, label %if.then518, label %if.else520

if.then518:                                       ; preds = %if.then514
  %357 = load ptr, ptr @nextchar, align 8
  store ptr %357, ptr @optarg, align 8
  %358 = load i32, ptr @optind, align 4
  %inc519 = add nsw i32 %358, 1
  store i32 %inc519, ptr @optind, align 4
  br label %if.end521

if.else520:                                       ; preds = %if.then514
  store ptr null, ptr @optarg, align 8
  br label %if.end521

if.end521:                                        ; preds = %if.else520, %if.then518
  store ptr null, ptr @nextchar, align 8
  br label %if.end552

if.else522:                                       ; preds = %if.then509
  %359 = load ptr, ptr @nextchar, align 8
  %360 = load i8, ptr %359, align 1
  %conv523 = sext i8 %360 to i32
  %cmp524 = icmp ne i32 %conv523, 0
  br i1 %cmp524, label %if.then526, label %if.else528

if.then526:                                       ; preds = %if.else522
  %361 = load ptr, ptr @nextchar, align 8
  store ptr %361, ptr @optarg, align 8
  %362 = load i32, ptr @optind, align 4
  %inc527 = add nsw i32 %362, 1
  store i32 %inc527, ptr @optind, align 4
  br label %if.end551

if.else528:                                       ; preds = %if.else522
  %363 = load i32, ptr @optind, align 4
  %364 = load i32, ptr %argc.addr, align 4
  %cmp529 = icmp eq i32 %363, %364
  br i1 %cmp529, label %if.then531, label %if.else546

if.then531:                                       ; preds = %if.else528
  %365 = load i32, ptr @opterr, align 4
  %tobool532 = icmp ne i32 %365, 0
  br i1 %tobool532, label %if.then533, label %if.end537

if.then533:                                       ; preds = %if.then531
  %366 = load ptr, ptr @stderr, align 8
  %367 = load ptr, ptr %argv.addr, align 8
  %arrayidx534 = getelementptr inbounds ptr, ptr %367, i64 0
  %368 = load ptr, ptr %arrayidx534, align 8
  %369 = load i8, ptr %c, align 1
  %conv535 = sext i8 %369 to i32
  %call536 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %366, ptr noundef @.str.142, ptr noundef %368, i32 noundef %conv535) #4
  br label %if.end537

if.end537:                                        ; preds = %if.then533, %if.then531
  %370 = load i8, ptr %c, align 1
  %conv538 = sext i8 %370 to i32
  store i32 %conv538, ptr @optopt, align 4
  %371 = load ptr, ptr %optstring.addr, align 8
  %arrayidx539 = getelementptr inbounds i8, ptr %371, i64 0
  %372 = load i8, ptr %arrayidx539, align 1
  %conv540 = sext i8 %372 to i32
  %cmp541 = icmp eq i32 %conv540, 58
  br i1 %cmp541, label %if.then543, label %if.else544

if.then543:                                       ; preds = %if.end537
  store i8 58, ptr %c, align 1
  br label %if.end545

if.else544:                                       ; preds = %if.end537
  store i8 63, ptr %c, align 1
  br label %if.end545

if.end545:                                        ; preds = %if.else544, %if.then543
  br label %if.end550

if.else546:                                       ; preds = %if.else528
  %373 = load ptr, ptr %argv.addr, align 8
  %374 = load i32, ptr @optind, align 4
  %inc547 = add nsw i32 %374, 1
  store i32 %inc547, ptr @optind, align 4
  %idxprom548 = sext i32 %374 to i64
  %arrayidx549 = getelementptr inbounds ptr, ptr %373, i64 %idxprom548
  %375 = load ptr, ptr %arrayidx549, align 8
  store ptr %375, ptr @optarg, align 8
  br label %if.end550

if.end550:                                        ; preds = %if.else546, %if.end545
  br label %if.end551

if.end551:                                        ; preds = %if.end550, %if.then526
  store ptr null, ptr @nextchar, align 8
  br label %if.end552

if.end552:                                        ; preds = %if.end551, %if.end521
  br label %if.end553

if.end553:                                        ; preds = %if.end552, %if.end504
  %376 = load i8, ptr %c, align 1
  %conv554 = sext i8 %376 to i32
  store i32 %conv554, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end553, %if.end503, %if.end501, %if.then498, %if.end479, %if.end456, %if.end436, %if.end372, %if.end330, %if.end298, %if.end262, %if.then259, %if.end241, %if.end218, %if.end181, %if.end90, %if.then89, %if.end71
  %377 = load i32, ptr %retval, align 4
  ret i32 %377
}

; Function Attrs: nounwind uwtable
declare hidden ptr @_getopt_initialize(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @exchange(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
