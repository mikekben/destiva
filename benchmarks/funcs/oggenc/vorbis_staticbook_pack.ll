; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_codebook = type { i64, i64, ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @_ilog(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @_book_maptype1_quantvals(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_staticbook_pack(ptr noundef %c, ptr noundef %opb) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %opb.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %ordered = alloca i32, align 4
  %count = alloca i64, align 8
  %this = alloca i64, align 8
  %last = alloca i64, align 8
  %quantvals = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  store ptr %opb, ptr %opb.addr, align 8
  store i32 0, ptr %ordered, align 4
  %0 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %0, i64 noundef 5653314, i32 noundef 24)
  %1 = load ptr, ptr %opb.addr, align 8
  %2 = load ptr, ptr %c.addr, align 8
  %dim = getelementptr inbounds nuw %struct.static_codebook, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %dim, align 8
  call void @oggpack_write(ptr noundef %1, i64 noundef %3, i32 noundef 16)
  %4 = load ptr, ptr %opb.addr, align 8
  %5 = load ptr, ptr %c.addr, align 8
  %entries = getelementptr inbounds nuw %struct.static_codebook, ptr %5, i32 0, i32 1
  %6 = load i64, ptr %entries, align 8
  call void @oggpack_write(ptr noundef %4, i64 noundef %6, i32 noundef 24)
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8
  %8 = load ptr, ptr %c.addr, align 8
  %entries1 = getelementptr inbounds nuw %struct.static_codebook, ptr %8, i32 0, i32 1
  %9 = load i64, ptr %entries1, align 8
  %cmp = icmp slt i64 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %c.addr, align 8
  %lengthlist = getelementptr inbounds nuw %struct.static_codebook, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %lengthlist, align 8
  %12 = load i64, ptr %i, align 8
  %sub = sub nsw i64 %12, 1
  %arrayidx = getelementptr inbounds i64, ptr %11, i64 %sub
  %13 = load i64, ptr %arrayidx, align 8
  %cmp2 = icmp eq i64 %13, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %14 = load ptr, ptr %c.addr, align 8
  %lengthlist3 = getelementptr inbounds nuw %struct.static_codebook, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %lengthlist3, align 8
  %16 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %15, i64 %16
  %17 = load i64, ptr %arrayidx4, align 8
  %18 = load ptr, ptr %c.addr, align 8
  %lengthlist5 = getelementptr inbounds nuw %struct.static_codebook, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %lengthlist5, align 8
  %20 = load i64, ptr %i, align 8
  %sub6 = sub nsw i64 %20, 1
  %arrayidx7 = getelementptr inbounds i64, ptr %19, i64 %sub6
  %21 = load i64, ptr %arrayidx7, align 8
  %cmp8 = icmp slt i64 %17, %21
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %23 = load i64, ptr %i, align 8
  %24 = load ptr, ptr %c.addr, align 8
  %entries9 = getelementptr inbounds nuw %struct.static_codebook, ptr %24, i32 0, i32 1
  %25 = load i64, ptr %entries9, align 8
  %cmp10 = icmp eq i64 %23, %25
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.end
  store i32 1, ptr %ordered, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end
  %26 = load i32, ptr %ordered, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end12
  store i64 0, ptr %count, align 8
  %27 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %27, i64 noundef 1, i32 noundef 1)
  %28 = load ptr, ptr %opb.addr, align 8
  %29 = load ptr, ptr %c.addr, align 8
  %lengthlist14 = getelementptr inbounds nuw %struct.static_codebook, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %lengthlist14, align 8
  %arrayidx15 = getelementptr inbounds i64, ptr %30, i64 0
  %31 = load i64, ptr %arrayidx15, align 8
  %sub16 = sub nsw i64 %31, 1
  call void @oggpack_write(ptr noundef %28, i64 noundef %sub16, i32 noundef 5)
  store i64 1, ptr %i, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc38, %if.then13
  %32 = load i64, ptr %i, align 8
  %33 = load ptr, ptr %c.addr, align 8
  %entries18 = getelementptr inbounds nuw %struct.static_codebook, ptr %33, i32 0, i32 1
  %34 = load i64, ptr %entries18, align 8
  %cmp19 = icmp slt i64 %32, %34
  br i1 %cmp19, label %for.body20, label %for.end40

for.body20:                                       ; preds = %for.cond17
  %35 = load ptr, ptr %c.addr, align 8
  %lengthlist21 = getelementptr inbounds nuw %struct.static_codebook, ptr %35, i32 0, i32 2
  %36 = load ptr, ptr %lengthlist21, align 8
  %37 = load i64, ptr %i, align 8
  %arrayidx22 = getelementptr inbounds i64, ptr %36, i64 %37
  %38 = load i64, ptr %arrayidx22, align 8
  store i64 %38, ptr %this, align 8
  %39 = load ptr, ptr %c.addr, align 8
  %lengthlist23 = getelementptr inbounds nuw %struct.static_codebook, ptr %39, i32 0, i32 2
  %40 = load ptr, ptr %lengthlist23, align 8
  %41 = load i64, ptr %i, align 8
  %sub24 = sub nsw i64 %41, 1
  %arrayidx25 = getelementptr inbounds i64, ptr %40, i64 %sub24
  %42 = load i64, ptr %arrayidx25, align 8
  store i64 %42, ptr %last, align 8
  %43 = load i64, ptr %this, align 8
  %44 = load i64, ptr %last, align 8
  %cmp26 = icmp sgt i64 %43, %44
  br i1 %cmp26, label %if.then27, label %if.end37

if.then27:                                        ; preds = %for.body20
  %45 = load i64, ptr %last, align 8
  store i64 %45, ptr %j, align 8
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %if.then27
  %46 = load i64, ptr %j, align 8
  %47 = load i64, ptr %this, align 8
  %cmp29 = icmp slt i64 %46, %47
  br i1 %cmp29, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond28
  %48 = load ptr, ptr %opb.addr, align 8
  %49 = load i64, ptr %i, align 8
  %50 = load i64, ptr %count, align 8
  %sub31 = sub nsw i64 %49, %50
  %51 = load ptr, ptr %c.addr, align 8
  %entries32 = getelementptr inbounds nuw %struct.static_codebook, ptr %51, i32 0, i32 1
  %52 = load i64, ptr %entries32, align 8
  %53 = load i64, ptr %count, align 8
  %sub33 = sub nsw i64 %52, %53
  %conv = trunc i64 %sub33 to i32
  %call = call i32 @_ilog(i32 noundef %conv)
  call void @oggpack_write(ptr noundef %48, i64 noundef %sub31, i32 noundef %call)
  %54 = load i64, ptr %i, align 8
  store i64 %54, ptr %count, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %55 = load i64, ptr %j, align 8
  %inc35 = add nsw i64 %55, 1
  store i64 %inc35, ptr %j, align 8
  br label %for.cond28, !llvm.loop !8

for.end36:                                        ; preds = %for.cond28
  br label %if.end37

if.end37:                                         ; preds = %for.end36, %for.body20
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %56 = load i64, ptr %i, align 8
  %inc39 = add nsw i64 %56, 1
  store i64 %inc39, ptr %i, align 8
  br label %for.cond17, !llvm.loop !9

for.end40:                                        ; preds = %for.cond17
  %57 = load ptr, ptr %opb.addr, align 8
  %58 = load i64, ptr %i, align 8
  %59 = load i64, ptr %count, align 8
  %sub41 = sub nsw i64 %58, %59
  %60 = load ptr, ptr %c.addr, align 8
  %entries42 = getelementptr inbounds nuw %struct.static_codebook, ptr %60, i32 0, i32 1
  %61 = load i64, ptr %entries42, align 8
  %62 = load i64, ptr %count, align 8
  %sub43 = sub nsw i64 %61, %62
  %conv44 = trunc i64 %sub43 to i32
  %call45 = call i32 @_ilog(i32 noundef %conv44)
  call void @oggpack_write(ptr noundef %57, i64 noundef %sub41, i32 noundef %call45)
  br label %if.end95

if.else:                                          ; preds = %if.end12
  %63 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %63, i64 noundef 0, i32 noundef 1)
  store i64 0, ptr %i, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc57, %if.else
  %64 = load i64, ptr %i, align 8
  %65 = load ptr, ptr %c.addr, align 8
  %entries47 = getelementptr inbounds nuw %struct.static_codebook, ptr %65, i32 0, i32 1
  %66 = load i64, ptr %entries47, align 8
  %cmp48 = icmp slt i64 %64, %66
  br i1 %cmp48, label %for.body50, label %for.end59

for.body50:                                       ; preds = %for.cond46
  %67 = load ptr, ptr %c.addr, align 8
  %lengthlist51 = getelementptr inbounds nuw %struct.static_codebook, ptr %67, i32 0, i32 2
  %68 = load ptr, ptr %lengthlist51, align 8
  %69 = load i64, ptr %i, align 8
  %arrayidx52 = getelementptr inbounds i64, ptr %68, i64 %69
  %70 = load i64, ptr %arrayidx52, align 8
  %cmp53 = icmp eq i64 %70, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.body50
  br label %for.end59

if.end56:                                         ; preds = %for.body50
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %71 = load i64, ptr %i, align 8
  %inc58 = add nsw i64 %71, 1
  store i64 %inc58, ptr %i, align 8
  br label %for.cond46, !llvm.loop !10

for.end59:                                        ; preds = %if.then55, %for.cond46
  %72 = load i64, ptr %i, align 8
  %73 = load ptr, ptr %c.addr, align 8
  %entries60 = getelementptr inbounds nuw %struct.static_codebook, ptr %73, i32 0, i32 1
  %74 = load i64, ptr %entries60, align 8
  %cmp61 = icmp eq i64 %72, %74
  br i1 %cmp61, label %if.then63, label %if.else75

if.then63:                                        ; preds = %for.end59
  %75 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %75, i64 noundef 0, i32 noundef 1)
  store i64 0, ptr %i, align 8
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc72, %if.then63
  %76 = load i64, ptr %i, align 8
  %77 = load ptr, ptr %c.addr, align 8
  %entries65 = getelementptr inbounds nuw %struct.static_codebook, ptr %77, i32 0, i32 1
  %78 = load i64, ptr %entries65, align 8
  %cmp66 = icmp slt i64 %76, %78
  br i1 %cmp66, label %for.body68, label %for.end74

for.body68:                                       ; preds = %for.cond64
  %79 = load ptr, ptr %opb.addr, align 8
  %80 = load ptr, ptr %c.addr, align 8
  %lengthlist69 = getelementptr inbounds nuw %struct.static_codebook, ptr %80, i32 0, i32 2
  %81 = load ptr, ptr %lengthlist69, align 8
  %82 = load i64, ptr %i, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %81, i64 %82
  %83 = load i64, ptr %arrayidx70, align 8
  %sub71 = sub nsw i64 %83, 1
  call void @oggpack_write(ptr noundef %79, i64 noundef %sub71, i32 noundef 5)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body68
  %84 = load i64, ptr %i, align 8
  %inc73 = add nsw i64 %84, 1
  store i64 %inc73, ptr %i, align 8
  br label %for.cond64, !llvm.loop !11

for.end74:                                        ; preds = %for.cond64
  br label %if.end94

if.else75:                                        ; preds = %for.end59
  %85 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %85, i64 noundef 1, i32 noundef 1)
  store i64 0, ptr %i, align 8
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc91, %if.else75
  %86 = load i64, ptr %i, align 8
  %87 = load ptr, ptr %c.addr, align 8
  %entries77 = getelementptr inbounds nuw %struct.static_codebook, ptr %87, i32 0, i32 1
  %88 = load i64, ptr %entries77, align 8
  %cmp78 = icmp slt i64 %86, %88
  br i1 %cmp78, label %for.body80, label %for.end93

for.body80:                                       ; preds = %for.cond76
  %89 = load ptr, ptr %c.addr, align 8
  %lengthlist81 = getelementptr inbounds nuw %struct.static_codebook, ptr %89, i32 0, i32 2
  %90 = load ptr, ptr %lengthlist81, align 8
  %91 = load i64, ptr %i, align 8
  %arrayidx82 = getelementptr inbounds i64, ptr %90, i64 %91
  %92 = load i64, ptr %arrayidx82, align 8
  %cmp83 = icmp eq i64 %92, 0
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %for.body80
  %93 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %93, i64 noundef 0, i32 noundef 1)
  br label %if.end90

if.else86:                                        ; preds = %for.body80
  %94 = load ptr, ptr %opb.addr, align 8
  call void @oggpack_write(ptr noundef %94, i64 noundef 1, i32 noundef 1)
  %95 = load ptr, ptr %opb.addr, align 8
  %96 = load ptr, ptr %c.addr, align 8
  %lengthlist87 = getelementptr inbounds nuw %struct.static_codebook, ptr %96, i32 0, i32 2
  %97 = load ptr, ptr %lengthlist87, align 8
  %98 = load i64, ptr %i, align 8
  %arrayidx88 = getelementptr inbounds i64, ptr %97, i64 %98
  %99 = load i64, ptr %arrayidx88, align 8
  %sub89 = sub nsw i64 %99, 1
  call void @oggpack_write(ptr noundef %95, i64 noundef %sub89, i32 noundef 5)
  br label %if.end90

if.end90:                                         ; preds = %if.else86, %if.then85
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %100 = load i64, ptr %i, align 8
  %inc92 = add nsw i64 %100, 1
  store i64 %inc92, ptr %i, align 8
  br label %for.cond76, !llvm.loop !12

for.end93:                                        ; preds = %for.cond76
  br label %if.end94

if.end94:                                         ; preds = %for.end93, %for.end74
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %for.end40
  %101 = load ptr, ptr %opb.addr, align 8
  %102 = load ptr, ptr %c.addr, align 8
  %maptype = getelementptr inbounds nuw %struct.static_codebook, ptr %102, i32 0, i32 3
  %103 = load i32, ptr %maptype, align 8
  %conv96 = sext i32 %103 to i64
  call void @oggpack_write(ptr noundef %101, i64 noundef %conv96, i32 noundef 4)
  %104 = load ptr, ptr %c.addr, align 8
  %maptype97 = getelementptr inbounds nuw %struct.static_codebook, ptr %104, i32 0, i32 3
  %105 = load i32, ptr %maptype97, align 8
  switch i32 %105, label %sw.default124 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb98
    i32 2, label %sw.bb98
  ]

sw.bb:                                            ; preds = %if.end95
  br label %sw.epilog125

sw.bb98:                                          ; preds = %if.end95, %if.end95
  %106 = load ptr, ptr %c.addr, align 8
  %quantlist = getelementptr inbounds nuw %struct.static_codebook, ptr %106, i32 0, i32 8
  %107 = load ptr, ptr %quantlist, align 8
  %tobool99 = icmp ne ptr %107, null
  br i1 %tobool99, label %if.end101, label %if.then100

if.then100:                                       ; preds = %sw.bb98
  store i32 -1, ptr %retval, align 4
  br label %return

if.end101:                                        ; preds = %sw.bb98
  %108 = load ptr, ptr %opb.addr, align 8
  %109 = load ptr, ptr %c.addr, align 8
  %q_min = getelementptr inbounds nuw %struct.static_codebook, ptr %109, i32 0, i32 4
  %110 = load i64, ptr %q_min, align 8
  call void @oggpack_write(ptr noundef %108, i64 noundef %110, i32 noundef 32)
  %111 = load ptr, ptr %opb.addr, align 8
  %112 = load ptr, ptr %c.addr, align 8
  %q_delta = getelementptr inbounds nuw %struct.static_codebook, ptr %112, i32 0, i32 5
  %113 = load i64, ptr %q_delta, align 8
  call void @oggpack_write(ptr noundef %111, i64 noundef %113, i32 noundef 32)
  %114 = load ptr, ptr %opb.addr, align 8
  %115 = load ptr, ptr %c.addr, align 8
  %q_quant = getelementptr inbounds nuw %struct.static_codebook, ptr %115, i32 0, i32 6
  %116 = load i32, ptr %q_quant, align 8
  %sub102 = sub nsw i32 %116, 1
  %conv103 = sext i32 %sub102 to i64
  call void @oggpack_write(ptr noundef %114, i64 noundef %conv103, i32 noundef 4)
  %117 = load ptr, ptr %opb.addr, align 8
  %118 = load ptr, ptr %c.addr, align 8
  %q_sequencep = getelementptr inbounds nuw %struct.static_codebook, ptr %118, i32 0, i32 7
  %119 = load i32, ptr %q_sequencep, align 4
  %conv104 = sext i32 %119 to i64
  call void @oggpack_write(ptr noundef %117, i64 noundef %conv104, i32 noundef 1)
  %120 = load ptr, ptr %c.addr, align 8
  %maptype105 = getelementptr inbounds nuw %struct.static_codebook, ptr %120, i32 0, i32 3
  %121 = load i32, ptr %maptype105, align 8
  switch i32 %121, label %sw.default [
    i32 1, label %sw.bb106
    i32 2, label %sw.bb109
  ]

sw.bb106:                                         ; preds = %if.end101
  %122 = load ptr, ptr %c.addr, align 8
  %call107 = call i64 @_book_maptype1_quantvals(ptr noundef %122)
  %conv108 = trunc i64 %call107 to i32
  store i32 %conv108, ptr %quantvals, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end101
  %123 = load ptr, ptr %c.addr, align 8
  %entries110 = getelementptr inbounds nuw %struct.static_codebook, ptr %123, i32 0, i32 1
  %124 = load i64, ptr %entries110, align 8
  %125 = load ptr, ptr %c.addr, align 8
  %dim111 = getelementptr inbounds nuw %struct.static_codebook, ptr %125, i32 0, i32 0
  %126 = load i64, ptr %dim111, align 8
  %mul = mul nsw i64 %124, %126
  %conv112 = trunc i64 %mul to i32
  store i32 %conv112, ptr %quantvals, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end101
  store i32 -1, ptr %quantvals, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb109, %sw.bb106
  store i64 0, ptr %i, align 8
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc121, %sw.epilog
  %127 = load i64, ptr %i, align 8
  %128 = load i32, ptr %quantvals, align 4
  %conv114 = sext i32 %128 to i64
  %cmp115 = icmp slt i64 %127, %conv114
  br i1 %cmp115, label %for.body117, label %for.end123

for.body117:                                      ; preds = %for.cond113
  %129 = load ptr, ptr %opb.addr, align 8
  %130 = load ptr, ptr %c.addr, align 8
  %quantlist118 = getelementptr inbounds nuw %struct.static_codebook, ptr %130, i32 0, i32 8
  %131 = load ptr, ptr %quantlist118, align 8
  %132 = load i64, ptr %i, align 8
  %arrayidx119 = getelementptr inbounds i64, ptr %131, i64 %132
  %133 = load i64, ptr %arrayidx119, align 8
  %134 = call i64 @llvm.abs.i64(i64 %133, i1 true)
  %135 = load ptr, ptr %c.addr, align 8
  %q_quant120 = getelementptr inbounds nuw %struct.static_codebook, ptr %135, i32 0, i32 6
  %136 = load i32, ptr %q_quant120, align 8
  call void @oggpack_write(ptr noundef %129, i64 noundef %134, i32 noundef %136)
  br label %for.inc121

for.inc121:                                       ; preds = %for.body117
  %137 = load i64, ptr %i, align 8
  %inc122 = add nsw i64 %137, 1
  store i64 %inc122, ptr %i, align 8
  br label %for.cond113, !llvm.loop !13

for.end123:                                       ; preds = %for.cond113
  br label %sw.epilog125

sw.default124:                                    ; preds = %if.end95
  store i32 -1, ptr %retval, align 4
  br label %return

sw.epilog125:                                     ; preds = %for.end123, %sw.bb
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog125, %sw.default124, %if.then100
  %138 = load i32, ptr %retval, align 4
  ret i32 %138
}

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_write(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
