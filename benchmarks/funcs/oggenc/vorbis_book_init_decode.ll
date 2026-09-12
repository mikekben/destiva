; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.codebook = type { i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_book_clear(ptr noundef) #4

; Function Attrs: nounwind uwtable
declare dso_local i32 @_ilog(i32 noundef) #4

; Function Attrs: nounwind uwtable
declare dso_local ptr @_make_words(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind uwtable
declare dso_local ptr @_book_unquantize(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_book_init_decode(ptr noundef %c, ptr noundef %s) #4 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %tabn = alloca i32, align 4
  %sortindex = alloca ptr, align 8
  %codes = alloca ptr, align 8
  %codep = alloca ptr, align 8
  %position = alloca i32, align 4
  %orig = alloca i32, align 4
  %mask = alloca i32, align 4
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %word = alloca i32, align 4
  %loval = alloca i64, align 8
  %hival = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %n, align 4
  %0 = load ptr, ptr %c.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 80, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %s.addr, align 8
  %entries = getelementptr inbounds nuw %struct.static_codebook, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %entries, align 8
  %cmp = icmp slt i64 %conv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %s.addr, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %lengthlist, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %idxprom
  %7 = load i64, ptr %arrayidx, align 8
  %cmp2 = icmp sgt i64 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %n, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc4 = add nsw i32 %9, 1
  store i32 %inc4, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %s.addr, align 8
  %entries5 = getelementptr inbounds nuw %struct.static_codebook, ptr %10, i32 0, i32 1
  %11 = load i64, ptr %entries5, align 8
  %12 = load ptr, ptr %c.addr, align 8
  %entries6 = getelementptr inbounds nuw %struct.codebook, ptr %12, i32 0, i32 1
  store i64 %11, ptr %entries6, align 8
  %13 = load i32, ptr %n, align 4
  %conv7 = sext i32 %13 to i64
  %14 = load ptr, ptr %c.addr, align 8
  %used_entries = getelementptr inbounds nuw %struct.codebook, ptr %14, i32 0, i32 2
  store i64 %conv7, ptr %used_entries, align 8
  %15 = load ptr, ptr %s.addr, align 8
  %dim = getelementptr inbounds nuw %struct.static_codebook, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %dim, align 8
  %17 = load ptr, ptr %c.addr, align 8
  %dim8 = getelementptr inbounds nuw %struct.codebook, ptr %17, i32 0, i32 0
  store i64 %16, ptr %dim8, align 8
  %18 = load ptr, ptr %s.addr, align 8
  %lengthlist9 = getelementptr inbounds nuw %struct.static_codebook, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %lengthlist9, align 8
  %20 = load ptr, ptr %s.addr, align 8
  %entries10 = getelementptr inbounds nuw %struct.static_codebook, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %entries10, align 8
  %22 = load ptr, ptr %c.addr, align 8
  %used_entries11 = getelementptr inbounds nuw %struct.codebook, ptr %22, i32 0, i32 2
  %23 = load i64, ptr %used_entries11, align 8
  %call = call ptr @_make_words(ptr noundef %19, i64 noundef %21, i64 noundef %23)
  store ptr %call, ptr %codes, align 8
  %24 = load i32, ptr %n, align 4
  %conv12 = sext i32 %24 to i64
  %mul = mul i64 8, %conv12
  %25 = alloca i8, i64 %mul, align 16
  store ptr %25, ptr %codep, align 8
  %26 = load ptr, ptr %codes, align 8
  %cmp13 = icmp eq ptr %26, null
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.end
  br label %err_out

if.end16:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc28, %if.end16
  %27 = load i32, ptr %i, align 4
  %28 = load i32, ptr %n, align 4
  %cmp18 = icmp slt i32 %27, %28
  br i1 %cmp18, label %for.body20, label %for.end30

for.body20:                                       ; preds = %for.cond17
  %29 = load ptr, ptr %codes, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %29, i64 %idxprom21
  %31 = load i32, ptr %arrayidx22, align 4
  %call23 = call i32 @bitreverse(i32 noundef %31)
  %32 = load ptr, ptr %codes, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %33 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %32, i64 %idxprom24
  store i32 %call23, ptr %arrayidx25, align 4
  %34 = load ptr, ptr %codes, align 8
  %35 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %35 to i64
  %add.ptr = getelementptr inbounds i32, ptr %34, i64 %idx.ext
  %36 = load ptr, ptr %codep, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %37 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %36, i64 %idxprom26
  store ptr %add.ptr, ptr %arrayidx27, align 8
  br label %for.inc28

for.inc28:                                        ; preds = %for.body20
  %38 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %38, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond17, !llvm.loop !8

for.end30:                                        ; preds = %for.cond17
  %39 = load ptr, ptr %codep, align 8
  %40 = load i32, ptr %n, align 4
  %conv31 = sext i32 %40 to i64
  call void @qsort(ptr noundef %39, i64 noundef %conv31, i64 noundef 8, ptr noundef @sort32a)
  %41 = load i32, ptr %n, align 4
  %conv32 = sext i32 %41 to i64
  %mul33 = mul i64 %conv32, 4
  %42 = alloca i8, i64 %mul33, align 16
  store ptr %42, ptr %sortindex, align 8
  %43 = load i32, ptr %n, align 4
  %conv34 = sext i32 %43 to i64
  %mul35 = mul i64 %conv34, 4
  %call36 = call noalias ptr @malloc(i64 noundef %mul35) #6
  %44 = load ptr, ptr %c.addr, align 8
  %codelist = getelementptr inbounds nuw %struct.codebook, ptr %44, i32 0, i32 5
  store ptr %call36, ptr %codelist, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc46, %for.end30
  %45 = load i32, ptr %i, align 4
  %46 = load i32, ptr %n, align 4
  %cmp38 = icmp slt i32 %45, %46
  br i1 %cmp38, label %for.body40, label %for.end48

for.body40:                                       ; preds = %for.cond37
  %47 = load ptr, ptr %codep, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %48 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %47, i64 %idxprom41
  %49 = load ptr, ptr %arrayidx42, align 8
  %50 = load ptr, ptr %codes, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %49 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %50 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv43 = trunc i64 %sub.ptr.div to i32
  store i32 %conv43, ptr %position, align 4
  %51 = load i32, ptr %i, align 4
  %52 = load ptr, ptr %sortindex, align 8
  %53 = load i32, ptr %position, align 4
  %idxprom44 = sext i32 %53 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %52, i64 %idxprom44
  store i32 %51, ptr %arrayidx45, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %for.body40
  %54 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %54, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond37, !llvm.loop !9

for.end48:                                        ; preds = %for.cond37
  store i32 0, ptr %i, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc60, %for.end48
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %n, align 4
  %cmp50 = icmp slt i32 %55, %56
  br i1 %cmp50, label %for.body52, label %for.end62

for.body52:                                       ; preds = %for.cond49
  %57 = load ptr, ptr %codes, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %58 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %57, i64 %idxprom53
  %59 = load i32, ptr %arrayidx54, align 4
  %60 = load ptr, ptr %c.addr, align 8
  %codelist55 = getelementptr inbounds nuw %struct.codebook, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %codelist55, align 8
  %62 = load ptr, ptr %sortindex, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %63 to i64
  %arrayidx57 = getelementptr inbounds i32, ptr %62, i64 %idxprom56
  %64 = load i32, ptr %arrayidx57, align 4
  %idxprom58 = sext i32 %64 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %61, i64 %idxprom58
  store i32 %59, ptr %arrayidx59, align 4
  br label %for.inc60

for.inc60:                                        ; preds = %for.body52
  %65 = load i32, ptr %i, align 4
  %inc61 = add nsw i32 %65, 1
  store i32 %inc61, ptr %i, align 4
  br label %for.cond49, !llvm.loop !10

for.end62:                                        ; preds = %for.cond49
  %66 = load ptr, ptr %codes, align 8
  call void @free(ptr noundef %66) #7
  %67 = load ptr, ptr %s.addr, align 8
  %68 = load i32, ptr %n, align 4
  %69 = load ptr, ptr %sortindex, align 8
  %call63 = call ptr @_book_unquantize(ptr noundef %67, i32 noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %c.addr, align 8
  %valuelist = getelementptr inbounds nuw %struct.codebook, ptr %70, i32 0, i32 4
  store ptr %call63, ptr %valuelist, align 8
  %71 = load i32, ptr %n, align 4
  %conv64 = sext i32 %71 to i64
  %mul65 = mul i64 %conv64, 4
  %call66 = call noalias ptr @malloc(i64 noundef %mul65) #6
  %72 = load ptr, ptr %c.addr, align 8
  %dec_index = getelementptr inbounds nuw %struct.codebook, ptr %72, i32 0, i32 6
  store ptr %call66, ptr %dec_index, align 8
  store i32 0, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond67

for.cond67:                                       ; preds = %for.inc86, %for.end62
  %73 = load i32, ptr %i, align 4
  %conv68 = sext i32 %73 to i64
  %74 = load ptr, ptr %s.addr, align 8
  %entries69 = getelementptr inbounds nuw %struct.static_codebook, ptr %74, i32 0, i32 1
  %75 = load i64, ptr %entries69, align 8
  %cmp70 = icmp slt i64 %conv68, %75
  br i1 %cmp70, label %for.body72, label %for.end88

for.body72:                                       ; preds = %for.cond67
  %76 = load ptr, ptr %s.addr, align 8
  %lengthlist73 = getelementptr inbounds nuw %struct.static_codebook, ptr %76, i32 0, i32 2
  %77 = load ptr, ptr %lengthlist73, align 8
  %78 = load i32, ptr %i, align 4
  %idxprom74 = sext i32 %78 to i64
  %arrayidx75 = getelementptr inbounds i64, ptr %77, i64 %idxprom74
  %79 = load i64, ptr %arrayidx75, align 8
  %cmp76 = icmp sgt i64 %79, 0
  br i1 %cmp76, label %if.then78, label %if.end85

if.then78:                                        ; preds = %for.body72
  %80 = load i32, ptr %i, align 4
  %81 = load ptr, ptr %c.addr, align 8
  %dec_index79 = getelementptr inbounds nuw %struct.codebook, ptr %81, i32 0, i32 6
  %82 = load ptr, ptr %dec_index79, align 8
  %83 = load ptr, ptr %sortindex, align 8
  %84 = load i32, ptr %n, align 4
  %inc80 = add nsw i32 %84, 1
  store i32 %inc80, ptr %n, align 4
  %idxprom81 = sext i32 %84 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %83, i64 %idxprom81
  %85 = load i32, ptr %arrayidx82, align 4
  %idxprom83 = sext i32 %85 to i64
  %arrayidx84 = getelementptr inbounds i32, ptr %82, i64 %idxprom83
  store i32 %80, ptr %arrayidx84, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then78, %for.body72
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %86 = load i32, ptr %i, align 4
  %inc87 = add nsw i32 %86, 1
  store i32 %inc87, ptr %i, align 4
  br label %for.cond67, !llvm.loop !11

for.end88:                                        ; preds = %for.cond67
  %87 = load i32, ptr %n, align 4
  %conv89 = sext i32 %87 to i64
  %mul90 = mul i64 %conv89, 1
  %call91 = call noalias ptr @malloc(i64 noundef %mul90) #6
  %88 = load ptr, ptr %c.addr, align 8
  %dec_codelengths = getelementptr inbounds nuw %struct.codebook, ptr %88, i32 0, i32 7
  store ptr %call91, ptr %dec_codelengths, align 8
  store i32 0, ptr %n, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc115, %for.end88
  %89 = load i32, ptr %i, align 4
  %conv93 = sext i32 %89 to i64
  %90 = load ptr, ptr %s.addr, align 8
  %entries94 = getelementptr inbounds nuw %struct.static_codebook, ptr %90, i32 0, i32 1
  %91 = load i64, ptr %entries94, align 8
  %cmp95 = icmp slt i64 %conv93, %91
  br i1 %cmp95, label %for.body97, label %for.end117

for.body97:                                       ; preds = %for.cond92
  %92 = load ptr, ptr %s.addr, align 8
  %lengthlist98 = getelementptr inbounds nuw %struct.static_codebook, ptr %92, i32 0, i32 2
  %93 = load ptr, ptr %lengthlist98, align 8
  %94 = load i32, ptr %i, align 4
  %idxprom99 = sext i32 %94 to i64
  %arrayidx100 = getelementptr inbounds i64, ptr %93, i64 %idxprom99
  %95 = load i64, ptr %arrayidx100, align 8
  %cmp101 = icmp sgt i64 %95, 0
  br i1 %cmp101, label %if.then103, label %if.end114

if.then103:                                       ; preds = %for.body97
  %96 = load ptr, ptr %s.addr, align 8
  %lengthlist104 = getelementptr inbounds nuw %struct.static_codebook, ptr %96, i32 0, i32 2
  %97 = load ptr, ptr %lengthlist104, align 8
  %98 = load i32, ptr %i, align 4
  %idxprom105 = sext i32 %98 to i64
  %arrayidx106 = getelementptr inbounds i64, ptr %97, i64 %idxprom105
  %99 = load i64, ptr %arrayidx106, align 8
  %conv107 = trunc i64 %99 to i8
  %100 = load ptr, ptr %c.addr, align 8
  %dec_codelengths108 = getelementptr inbounds nuw %struct.codebook, ptr %100, i32 0, i32 7
  %101 = load ptr, ptr %dec_codelengths108, align 8
  %102 = load ptr, ptr %sortindex, align 8
  %103 = load i32, ptr %n, align 4
  %inc109 = add nsw i32 %103, 1
  store i32 %inc109, ptr %n, align 4
  %idxprom110 = sext i32 %103 to i64
  %arrayidx111 = getelementptr inbounds i32, ptr %102, i64 %idxprom110
  %104 = load i32, ptr %arrayidx111, align 4
  %idxprom112 = sext i32 %104 to i64
  %arrayidx113 = getelementptr inbounds i8, ptr %101, i64 %idxprom112
  store i8 %conv107, ptr %arrayidx113, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then103, %for.body97
  br label %for.inc115

for.inc115:                                       ; preds = %if.end114
  %105 = load i32, ptr %i, align 4
  %inc116 = add nsw i32 %105, 1
  store i32 %inc116, ptr %i, align 4
  br label %for.cond92, !llvm.loop !12

for.end117:                                       ; preds = %for.cond92
  %106 = load ptr, ptr %c.addr, align 8
  %used_entries118 = getelementptr inbounds nuw %struct.codebook, ptr %106, i32 0, i32 2
  %107 = load i64, ptr %used_entries118, align 8
  %conv119 = trunc i64 %107 to i32
  %call120 = call i32 @_ilog(i32 noundef %conv119)
  %sub = sub nsw i32 %call120, 4
  %108 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen = getelementptr inbounds nuw %struct.codebook, ptr %108, i32 0, i32 9
  store i32 %sub, ptr %dec_firsttablen, align 8
  %109 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen121 = getelementptr inbounds nuw %struct.codebook, ptr %109, i32 0, i32 9
  %110 = load i32, ptr %dec_firsttablen121, align 8
  %cmp122 = icmp slt i32 %110, 5
  br i1 %cmp122, label %if.then124, label %if.end126

if.then124:                                       ; preds = %for.end117
  %111 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen125 = getelementptr inbounds nuw %struct.codebook, ptr %111, i32 0, i32 9
  store i32 5, ptr %dec_firsttablen125, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %for.end117
  %112 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen127 = getelementptr inbounds nuw %struct.codebook, ptr %112, i32 0, i32 9
  %113 = load i32, ptr %dec_firsttablen127, align 8
  %cmp128 = icmp sgt i32 %113, 8
  br i1 %cmp128, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.end126
  %114 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen131 = getelementptr inbounds nuw %struct.codebook, ptr %114, i32 0, i32 9
  store i32 8, ptr %dec_firsttablen131, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.end126
  %115 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen133 = getelementptr inbounds nuw %struct.codebook, ptr %115, i32 0, i32 9
  %116 = load i32, ptr %dec_firsttablen133, align 8
  %shl = shl i32 1, %116
  store i32 %shl, ptr %tabn, align 4
  %117 = load i32, ptr %tabn, align 4
  %conv134 = sext i32 %117 to i64
  %call135 = call noalias ptr @calloc(i64 noundef %conv134, i64 noundef 4) #8
  %118 = load ptr, ptr %c.addr, align 8
  %dec_firsttable = getelementptr inbounds nuw %struct.codebook, ptr %118, i32 0, i32 8
  store ptr %call135, ptr %dec_firsttable, align 8
  %119 = load ptr, ptr %c.addr, align 8
  %dec_maxlength = getelementptr inbounds nuw %struct.codebook, ptr %119, i32 0, i32 10
  store i32 0, ptr %dec_maxlength, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond136

for.cond136:                                      ; preds = %for.inc189, %if.end132
  %120 = load i32, ptr %i, align 4
  %121 = load i32, ptr %n, align 4
  %cmp137 = icmp slt i32 %120, %121
  br i1 %cmp137, label %for.body139, label %for.end191

for.body139:                                      ; preds = %for.cond136
  %122 = load ptr, ptr %c.addr, align 8
  %dec_maxlength140 = getelementptr inbounds nuw %struct.codebook, ptr %122, i32 0, i32 10
  %123 = load i32, ptr %dec_maxlength140, align 4
  %124 = load ptr, ptr %c.addr, align 8
  %dec_codelengths141 = getelementptr inbounds nuw %struct.codebook, ptr %124, i32 0, i32 7
  %125 = load ptr, ptr %dec_codelengths141, align 8
  %126 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %126 to i64
  %arrayidx143 = getelementptr inbounds i8, ptr %125, i64 %idxprom142
  %127 = load i8, ptr %arrayidx143, align 1
  %conv144 = sext i8 %127 to i32
  %cmp145 = icmp slt i32 %123, %conv144
  br i1 %cmp145, label %if.then147, label %if.end153

if.then147:                                       ; preds = %for.body139
  %128 = load ptr, ptr %c.addr, align 8
  %dec_codelengths148 = getelementptr inbounds nuw %struct.codebook, ptr %128, i32 0, i32 7
  %129 = load ptr, ptr %dec_codelengths148, align 8
  %130 = load i32, ptr %i, align 4
  %idxprom149 = sext i32 %130 to i64
  %arrayidx150 = getelementptr inbounds i8, ptr %129, i64 %idxprom149
  %131 = load i8, ptr %arrayidx150, align 1
  %conv151 = sext i8 %131 to i32
  %132 = load ptr, ptr %c.addr, align 8
  %dec_maxlength152 = getelementptr inbounds nuw %struct.codebook, ptr %132, i32 0, i32 10
  store i32 %conv151, ptr %dec_maxlength152, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then147, %for.body139
  %133 = load ptr, ptr %c.addr, align 8
  %dec_codelengths154 = getelementptr inbounds nuw %struct.codebook, ptr %133, i32 0, i32 7
  %134 = load ptr, ptr %dec_codelengths154, align 8
  %135 = load i32, ptr %i, align 4
  %idxprom155 = sext i32 %135 to i64
  %arrayidx156 = getelementptr inbounds i8, ptr %134, i64 %idxprom155
  %136 = load i8, ptr %arrayidx156, align 1
  %conv157 = sext i8 %136 to i32
  %137 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen158 = getelementptr inbounds nuw %struct.codebook, ptr %137, i32 0, i32 9
  %138 = load i32, ptr %dec_firsttablen158, align 8
  %cmp159 = icmp sle i32 %conv157, %138
  br i1 %cmp159, label %if.then161, label %if.end188

if.then161:                                       ; preds = %if.end153
  %139 = load ptr, ptr %c.addr, align 8
  %codelist162 = getelementptr inbounds nuw %struct.codebook, ptr %139, i32 0, i32 5
  %140 = load ptr, ptr %codelist162, align 8
  %141 = load i32, ptr %i, align 4
  %idxprom163 = sext i32 %141 to i64
  %arrayidx164 = getelementptr inbounds i32, ptr %140, i64 %idxprom163
  %142 = load i32, ptr %arrayidx164, align 4
  %call165 = call i32 @bitreverse(i32 noundef %142)
  store i32 %call165, ptr %orig, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc185, %if.then161
  %143 = load i32, ptr %j, align 4
  %144 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen167 = getelementptr inbounds nuw %struct.codebook, ptr %144, i32 0, i32 9
  %145 = load i32, ptr %dec_firsttablen167, align 8
  %146 = load ptr, ptr %c.addr, align 8
  %dec_codelengths168 = getelementptr inbounds nuw %struct.codebook, ptr %146, i32 0, i32 7
  %147 = load ptr, ptr %dec_codelengths168, align 8
  %148 = load i32, ptr %i, align 4
  %idxprom169 = sext i32 %148 to i64
  %arrayidx170 = getelementptr inbounds i8, ptr %147, i64 %idxprom169
  %149 = load i8, ptr %arrayidx170, align 1
  %conv171 = sext i8 %149 to i32
  %sub172 = sub nsw i32 %145, %conv171
  %shl173 = shl i32 1, %sub172
  %cmp174 = icmp slt i32 %143, %shl173
  br i1 %cmp174, label %for.body176, label %for.end187

for.body176:                                      ; preds = %for.cond166
  %150 = load i32, ptr %i, align 4
  %add = add nsw i32 %150, 1
  %151 = load ptr, ptr %c.addr, align 8
  %dec_firsttable177 = getelementptr inbounds nuw %struct.codebook, ptr %151, i32 0, i32 8
  %152 = load ptr, ptr %dec_firsttable177, align 8
  %153 = load i32, ptr %orig, align 4
  %154 = load i32, ptr %j, align 4
  %155 = load ptr, ptr %c.addr, align 8
  %dec_codelengths178 = getelementptr inbounds nuw %struct.codebook, ptr %155, i32 0, i32 7
  %156 = load ptr, ptr %dec_codelengths178, align 8
  %157 = load i32, ptr %i, align 4
  %idxprom179 = sext i32 %157 to i64
  %arrayidx180 = getelementptr inbounds i8, ptr %156, i64 %idxprom179
  %158 = load i8, ptr %arrayidx180, align 1
  %conv181 = sext i8 %158 to i32
  %shl182 = shl i32 %154, %conv181
  %or = or i32 %153, %shl182
  %idxprom183 = zext i32 %or to i64
  %arrayidx184 = getelementptr inbounds nuw i32, ptr %152, i64 %idxprom183
  store i32 %add, ptr %arrayidx184, align 4
  br label %for.inc185

for.inc185:                                       ; preds = %for.body176
  %159 = load i32, ptr %j, align 4
  %inc186 = add nsw i32 %159, 1
  store i32 %inc186, ptr %j, align 4
  br label %for.cond166, !llvm.loop !13

for.end187:                                       ; preds = %for.cond166
  br label %if.end188

if.end188:                                        ; preds = %for.end187, %if.end153
  br label %for.inc189

for.inc189:                                       ; preds = %if.end188
  %160 = load i32, ptr %i, align 4
  %inc190 = add nsw i32 %160, 1
  store i32 %inc190, ptr %i, align 4
  br label %for.cond136, !llvm.loop !14

for.end191:                                       ; preds = %for.cond136
  %161 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen192 = getelementptr inbounds nuw %struct.codebook, ptr %161, i32 0, i32 9
  %162 = load i32, ptr %dec_firsttablen192, align 8
  %sub193 = sub nsw i32 31, %162
  %sh_prom = zext i32 %sub193 to i64
  %shl194 = shl i64 4294967294, %sh_prom
  %conv195 = trunc i64 %shl194 to i32
  store i32 %conv195, ptr %mask, align 4
  store i64 0, ptr %lo, align 8
  store i64 0, ptr %hi, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc252, %for.end191
  %163 = load i32, ptr %i, align 4
  %164 = load i32, ptr %tabn, align 4
  %cmp197 = icmp slt i32 %163, %164
  br i1 %cmp197, label %for.body199, label %for.end254

for.body199:                                      ; preds = %for.cond196
  %165 = load i32, ptr %i, align 4
  %166 = load ptr, ptr %c.addr, align 8
  %dec_firsttablen200 = getelementptr inbounds nuw %struct.codebook, ptr %166, i32 0, i32 9
  %167 = load i32, ptr %dec_firsttablen200, align 8
  %sub201 = sub nsw i32 32, %167
  %shl202 = shl i32 %165, %sub201
  store i32 %shl202, ptr %word, align 4
  %168 = load ptr, ptr %c.addr, align 8
  %dec_firsttable203 = getelementptr inbounds nuw %struct.codebook, ptr %168, i32 0, i32 8
  %169 = load ptr, ptr %dec_firsttable203, align 8
  %170 = load i32, ptr %word, align 4
  %call204 = call i32 @bitreverse(i32 noundef %170)
  %idxprom205 = zext i32 %call204 to i64
  %arrayidx206 = getelementptr inbounds nuw i32, ptr %169, i64 %idxprom205
  %171 = load i32, ptr %arrayidx206, align 4
  %cmp207 = icmp eq i32 %171, 0
  br i1 %cmp207, label %if.then209, label %if.end251

if.then209:                                       ; preds = %for.body199
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then209
  %172 = load i64, ptr %lo, align 8
  %add210 = add nsw i64 %172, 1
  %173 = load i32, ptr %n, align 4
  %conv211 = sext i32 %173 to i64
  %cmp212 = icmp slt i64 %add210, %conv211
  br i1 %cmp212, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %174 = load ptr, ptr %c.addr, align 8
  %codelist214 = getelementptr inbounds nuw %struct.codebook, ptr %174, i32 0, i32 5
  %175 = load ptr, ptr %codelist214, align 8
  %176 = load i64, ptr %lo, align 8
  %add215 = add nsw i64 %176, 1
  %arrayidx216 = getelementptr inbounds i32, ptr %175, i64 %add215
  %177 = load i32, ptr %arrayidx216, align 4
  %178 = load i32, ptr %word, align 4
  %cmp217 = icmp ule i32 %177, %178
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %179 = phi i1 [ false, %while.cond ], [ %cmp217, %land.rhs ]
  br i1 %179, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %180 = load i64, ptr %lo, align 8
  %inc219 = add nsw i64 %180, 1
  store i64 %inc219, ptr %lo, align 8
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %land.end
  br label %while.cond220

while.cond220:                                    ; preds = %while.body230, %while.end
  %181 = load i64, ptr %hi, align 8
  %182 = load i32, ptr %n, align 4
  %conv221 = sext i32 %182 to i64
  %cmp222 = icmp slt i64 %181, %conv221
  br i1 %cmp222, label %land.rhs224, label %land.end229

land.rhs224:                                      ; preds = %while.cond220
  %183 = load i32, ptr %word, align 4
  %184 = load ptr, ptr %c.addr, align 8
  %codelist225 = getelementptr inbounds nuw %struct.codebook, ptr %184, i32 0, i32 5
  %185 = load ptr, ptr %codelist225, align 8
  %186 = load i64, ptr %hi, align 8
  %arrayidx226 = getelementptr inbounds i32, ptr %185, i64 %186
  %187 = load i32, ptr %arrayidx226, align 4
  %188 = load i32, ptr %mask, align 4
  %and = and i32 %187, %188
  %cmp227 = icmp uge i32 %183, %and
  br label %land.end229

land.end229:                                      ; preds = %land.rhs224, %while.cond220
  %189 = phi i1 [ false, %while.cond220 ], [ %cmp227, %land.rhs224 ]
  br i1 %189, label %while.body230, label %while.end232

while.body230:                                    ; preds = %land.end229
  %190 = load i64, ptr %hi, align 8
  %inc231 = add nsw i64 %190, 1
  store i64 %inc231, ptr %hi, align 8
  br label %while.cond220, !llvm.loop !16

while.end232:                                     ; preds = %land.end229
  %191 = load i64, ptr %lo, align 8
  store i64 %191, ptr %loval, align 8
  %192 = load i32, ptr %n, align 4
  %conv233 = sext i32 %192 to i64
  %193 = load i64, ptr %hi, align 8
  %sub234 = sub nsw i64 %conv233, %193
  store i64 %sub234, ptr %hival, align 8
  %194 = load i64, ptr %loval, align 8
  %cmp235 = icmp ugt i64 %194, 32767
  br i1 %cmp235, label %if.then237, label %if.end238

if.then237:                                       ; preds = %while.end232
  store i64 32767, ptr %loval, align 8
  br label %if.end238

if.end238:                                        ; preds = %if.then237, %while.end232
  %195 = load i64, ptr %hival, align 8
  %cmp239 = icmp ugt i64 %195, 32767
  br i1 %cmp239, label %if.then241, label %if.end242

if.then241:                                       ; preds = %if.end238
  store i64 32767, ptr %hival, align 8
  br label %if.end242

if.end242:                                        ; preds = %if.then241, %if.end238
  %196 = load i64, ptr %loval, align 8
  %shl243 = shl i64 %196, 15
  %or244 = or i64 2147483648, %shl243
  %197 = load i64, ptr %hival, align 8
  %or245 = or i64 %or244, %197
  %conv246 = trunc i64 %or245 to i32
  %198 = load ptr, ptr %c.addr, align 8
  %dec_firsttable247 = getelementptr inbounds nuw %struct.codebook, ptr %198, i32 0, i32 8
  %199 = load ptr, ptr %dec_firsttable247, align 8
  %200 = load i32, ptr %word, align 4
  %call248 = call i32 @bitreverse(i32 noundef %200)
  %idxprom249 = zext i32 %call248 to i64
  %arrayidx250 = getelementptr inbounds nuw i32, ptr %199, i64 %idxprom249
  store i32 %conv246, ptr %arrayidx250, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.end242, %for.body199
  br label %for.inc252

for.inc252:                                       ; preds = %if.end251
  %201 = load i32, ptr %i, align 4
  %inc253 = add nsw i32 %201, 1
  store i32 %inc253, ptr %i, align 4
  br label %for.cond196, !llvm.loop !17

for.end254:                                       ; preds = %for.cond196
  store i32 0, ptr %retval, align 4
  br label %return

err_out:                                          ; preds = %if.then15
  %202 = load ptr, ptr %c.addr, align 8
  call void @vorbis_book_clear(ptr noundef %202)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %err_out, %for.end254
  %203 = load i32, ptr %retval, align 4
  ret i32 %203
}

; Function Attrs: nounwind uwtable
declare hidden i32 @bitreverse(i32 noundef) #4

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
declare hidden i32 @sort32a(ptr noundef, ptr noundef) #4

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
