; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3AtoF(ptr noundef %z, ptr noundef %pResult, i32 noundef %length, i8 noundef zeroext %enc) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca ptr, align 8
  %pResult.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %enc.addr = alloca i8, align 1
  %incr = alloca i32, align 4
  %zEnd = alloca ptr, align 8
  %sign = alloca i32, align 4
  %s = alloca i64, align 8
  %d = alloca i32, align 4
  %esign = alloca i32, align 4
  %e = alloca i32, align 4
  %eValid = alloca i32, align 4
  %result = alloca double, align 8
  %nDigit = alloca i32, align 4
  %eType = alloca i32, align 4
  %i = alloca i32, align 4
  %scale = alloca x86_fp80, align 16
  %scale267 = alloca x86_fp80, align 16
  store ptr %z, ptr %z.addr, align 8
  store ptr %pResult, ptr %pResult.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i8 %enc, ptr %enc.addr, align 1
  %0 = load ptr, ptr %z.addr, align 8
  %1 = load i32, ptr %length.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %zEnd, align 8
  store i32 1, ptr %sign, align 4
  store i64 0, ptr %s, align 8
  store i32 0, ptr %d, align 4
  store i32 1, ptr %esign, align 4
  store i32 0, ptr %e, align 4
  store i32 1, ptr %eValid, align 4
  store i32 0, ptr %nDigit, align 4
  store i32 1, ptr %eType, align 4
  %2 = load ptr, ptr %pResult.addr, align 8
  store double 0.000000e+00, ptr %2, align 8
  %3 = load i8, ptr %enc.addr, align 1
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %incr, align 4
  br label %if.end16

if.else:                                          ; preds = %entry
  store i32 2, ptr %incr, align 4
  %4 = load i8, ptr %enc.addr, align 1
  %conv2 = zext i8 %4 to i32
  %sub = sub nsw i32 3, %conv2
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %length.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load ptr, ptr %z.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i8, ptr %7, i64 %idxprom
  %9 = load i8, ptr %arrayidx, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %add = add nsw i32 %11, 2
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %length.addr, align 4
  %cmp8 = icmp slt i32 %12, %13
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %for.end
  store i32 -100, ptr %eType, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %for.end
  %14 = load ptr, ptr %z.addr, align 8
  %15 = load i32, ptr %i, align 4
  %xor = xor i32 %15, 1
  %idxprom11 = sext i32 %xor to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %14, i64 %idxprom11
  store ptr %arrayidx12, ptr %zEnd, align 8
  %16 = load i8, ptr %enc.addr, align 1
  %conv13 = zext i8 %16 to i32
  %and = and i32 %conv13, 1
  %17 = load ptr, ptr %z.addr, align 8
  %idx.ext14 = sext i32 %and to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %17, i64 %idx.ext14
  store ptr %add.ptr15, ptr %z.addr, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end16
  %18 = load ptr, ptr %z.addr, align 8
  %19 = load ptr, ptr %zEnd, align 8
  %cmp17 = icmp ult ptr %18, %19
  br i1 %cmp17, label %land.rhs19, label %land.end24

land.rhs19:                                       ; preds = %while.cond
  %20 = load ptr, ptr %z.addr, align 8
  %21 = load i8, ptr %20, align 1
  %idxprom20 = zext i8 %21 to i64
  %arrayidx21 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom20
  %22 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %22 to i32
  %and23 = and i32 %conv22, 1
  %tobool = icmp ne i32 %and23, 0
  br label %land.end24

land.end24:                                       ; preds = %land.rhs19, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs19 ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end24
  %24 = load i32, ptr %incr, align 4
  %25 = load ptr, ptr %z.addr, align 8
  %idx.ext25 = sext i32 %24 to i64
  %add.ptr26 = getelementptr inbounds i8, ptr %25, i64 %idx.ext25
  store ptr %add.ptr26, ptr %z.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end24
  %26 = load ptr, ptr %z.addr, align 8
  %27 = load ptr, ptr %zEnd, align 8
  %cmp27 = icmp uge ptr %26, %27
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %while.end
  %28 = load ptr, ptr %z.addr, align 8
  %29 = load i8, ptr %28, align 1
  %conv31 = sext i8 %29 to i32
  %cmp32 = icmp eq i32 %conv31, 45
  br i1 %cmp32, label %if.then34, label %if.else37

if.then34:                                        ; preds = %if.end30
  store i32 -1, ptr %sign, align 4
  %30 = load i32, ptr %incr, align 4
  %31 = load ptr, ptr %z.addr, align 8
  %idx.ext35 = sext i32 %30 to i64
  %add.ptr36 = getelementptr inbounds i8, ptr %31, i64 %idx.ext35
  store ptr %add.ptr36, ptr %z.addr, align 8
  br label %if.end45

if.else37:                                        ; preds = %if.end30
  %32 = load ptr, ptr %z.addr, align 8
  %33 = load i8, ptr %32, align 1
  %conv38 = sext i8 %33 to i32
  %cmp39 = icmp eq i32 %conv38, 43
  br i1 %cmp39, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.else37
  %34 = load i32, ptr %incr, align 4
  %35 = load ptr, ptr %z.addr, align 8
  %idx.ext42 = sext i32 %34 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %35, i64 %idx.ext42
  store ptr %add.ptr43, ptr %z.addr, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.else37
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.then34
  br label %while.cond46

while.cond46:                                     ; preds = %if.end81, %if.end45
  %36 = load ptr, ptr %z.addr, align 8
  %37 = load ptr, ptr %zEnd, align 8
  %cmp47 = icmp ult ptr %36, %37
  br i1 %cmp47, label %land.rhs49, label %land.end55

land.rhs49:                                       ; preds = %while.cond46
  %38 = load ptr, ptr %z.addr, align 8
  %39 = load i8, ptr %38, align 1
  %idxprom50 = zext i8 %39 to i64
  %arrayidx51 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom50
  %40 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %40 to i32
  %and53 = and i32 %conv52, 4
  %tobool54 = icmp ne i32 %and53, 0
  br label %land.end55

land.end55:                                       ; preds = %land.rhs49, %while.cond46
  %41 = phi i1 [ false, %while.cond46 ], [ %tobool54, %land.rhs49 ]
  br i1 %41, label %while.body56, label %while.end82

while.body56:                                     ; preds = %land.end55
  %42 = load i64, ptr %s, align 8
  %mul = mul nsw i64 %42, 10
  %43 = load ptr, ptr %z.addr, align 8
  %44 = load i8, ptr %43, align 1
  %conv57 = sext i8 %44 to i32
  %sub58 = sub nsw i32 %conv57, 48
  %conv59 = sext i32 %sub58 to i64
  %add60 = add nsw i64 %mul, %conv59
  store i64 %add60, ptr %s, align 8
  %45 = load i32, ptr %incr, align 4
  %46 = load ptr, ptr %z.addr, align 8
  %idx.ext61 = sext i32 %45 to i64
  %add.ptr62 = getelementptr inbounds i8, ptr %46, i64 %idx.ext61
  store ptr %add.ptr62, ptr %z.addr, align 8
  %47 = load i32, ptr %nDigit, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %nDigit, align 4
  %48 = load i64, ptr %s, align 8
  %cmp63 = icmp sge i64 %48, 922337203685477579
  br i1 %cmp63, label %if.then65, label %if.end81

if.then65:                                        ; preds = %while.body56
  br label %while.cond66

while.cond66:                                     ; preds = %while.body76, %if.then65
  %49 = load ptr, ptr %z.addr, align 8
  %50 = load ptr, ptr %zEnd, align 8
  %cmp67 = icmp ult ptr %49, %50
  br i1 %cmp67, label %land.rhs69, label %land.end75

land.rhs69:                                       ; preds = %while.cond66
  %51 = load ptr, ptr %z.addr, align 8
  %52 = load i8, ptr %51, align 1
  %idxprom70 = zext i8 %52 to i64
  %arrayidx71 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom70
  %53 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %53 to i32
  %and73 = and i32 %conv72, 4
  %tobool74 = icmp ne i32 %and73, 0
  br label %land.end75

land.end75:                                       ; preds = %land.rhs69, %while.cond66
  %54 = phi i1 [ false, %while.cond66 ], [ %tobool74, %land.rhs69 ]
  br i1 %54, label %while.body76, label %while.end80

while.body76:                                     ; preds = %land.end75
  %55 = load i32, ptr %incr, align 4
  %56 = load ptr, ptr %z.addr, align 8
  %idx.ext77 = sext i32 %55 to i64
  %add.ptr78 = getelementptr inbounds i8, ptr %56, i64 %idx.ext77
  store ptr %add.ptr78, ptr %z.addr, align 8
  %57 = load i32, ptr %d, align 4
  %inc79 = add nsw i32 %57, 1
  store i32 %inc79, ptr %d, align 4
  br label %while.cond66, !llvm.loop !9

while.end80:                                      ; preds = %land.end75
  br label %if.end81

if.end81:                                         ; preds = %while.end80, %while.body56
  br label %while.cond46, !llvm.loop !10

while.end82:                                      ; preds = %land.end55
  %58 = load ptr, ptr %z.addr, align 8
  %59 = load ptr, ptr %zEnd, align 8
  %cmp83 = icmp uge ptr %58, %59
  br i1 %cmp83, label %if.then85, label %if.end86

if.then85:                                        ; preds = %while.end82
  br label %do_atof_calc

if.end86:                                         ; preds = %while.end82
  %60 = load ptr, ptr %z.addr, align 8
  %61 = load i8, ptr %60, align 1
  %conv87 = sext i8 %61 to i32
  %cmp88 = icmp eq i32 %conv87, 46
  br i1 %cmp88, label %if.then90, label %if.end118

if.then90:                                        ; preds = %if.end86
  %62 = load i32, ptr %incr, align 4
  %63 = load ptr, ptr %z.addr, align 8
  %idx.ext91 = sext i32 %62 to i64
  %add.ptr92 = getelementptr inbounds i8, ptr %63, i64 %idx.ext91
  store ptr %add.ptr92, ptr %z.addr, align 8
  %64 = load i32, ptr %eType, align 4
  %inc93 = add nsw i32 %64, 1
  store i32 %inc93, ptr %eType, align 4
  br label %while.cond94

while.cond94:                                     ; preds = %if.end114, %if.then90
  %65 = load ptr, ptr %z.addr, align 8
  %66 = load ptr, ptr %zEnd, align 8
  %cmp95 = icmp ult ptr %65, %66
  br i1 %cmp95, label %land.rhs97, label %land.end103

land.rhs97:                                       ; preds = %while.cond94
  %67 = load ptr, ptr %z.addr, align 8
  %68 = load i8, ptr %67, align 1
  %idxprom98 = zext i8 %68 to i64
  %arrayidx99 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom98
  %69 = load i8, ptr %arrayidx99, align 1
  %conv100 = zext i8 %69 to i32
  %and101 = and i32 %conv100, 4
  %tobool102 = icmp ne i32 %and101, 0
  br label %land.end103

land.end103:                                      ; preds = %land.rhs97, %while.cond94
  %70 = phi i1 [ false, %while.cond94 ], [ %tobool102, %land.rhs97 ]
  br i1 %70, label %while.body104, label %while.end117

while.body104:                                    ; preds = %land.end103
  %71 = load i64, ptr %s, align 8
  %cmp105 = icmp slt i64 %71, 922337203685477579
  br i1 %cmp105, label %if.then107, label %if.end114

if.then107:                                       ; preds = %while.body104
  %72 = load i64, ptr %s, align 8
  %mul108 = mul nsw i64 %72, 10
  %73 = load ptr, ptr %z.addr, align 8
  %74 = load i8, ptr %73, align 1
  %conv109 = sext i8 %74 to i32
  %sub110 = sub nsw i32 %conv109, 48
  %conv111 = sext i32 %sub110 to i64
  %add112 = add nsw i64 %mul108, %conv111
  store i64 %add112, ptr %s, align 8
  %75 = load i32, ptr %d, align 4
  %dec = add nsw i32 %75, -1
  store i32 %dec, ptr %d, align 4
  %76 = load i32, ptr %nDigit, align 4
  %inc113 = add nsw i32 %76, 1
  store i32 %inc113, ptr %nDigit, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then107, %while.body104
  %77 = load i32, ptr %incr, align 4
  %78 = load ptr, ptr %z.addr, align 8
  %idx.ext115 = sext i32 %77 to i64
  %add.ptr116 = getelementptr inbounds i8, ptr %78, i64 %idx.ext115
  store ptr %add.ptr116, ptr %z.addr, align 8
  br label %while.cond94, !llvm.loop !11

while.end117:                                     ; preds = %land.end103
  br label %if.end118

if.end118:                                        ; preds = %while.end117, %if.end86
  %79 = load ptr, ptr %z.addr, align 8
  %80 = load ptr, ptr %zEnd, align 8
  %cmp119 = icmp uge ptr %79, %80
  br i1 %cmp119, label %if.then121, label %if.end122

if.then121:                                       ; preds = %if.end118
  br label %do_atof_calc

if.end122:                                        ; preds = %if.end118
  %81 = load ptr, ptr %z.addr, align 8
  %82 = load i8, ptr %81, align 1
  %conv123 = sext i8 %82 to i32
  %cmp124 = icmp eq i32 %conv123, 101
  br i1 %cmp124, label %if.then129, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end122
  %83 = load ptr, ptr %z.addr, align 8
  %84 = load i8, ptr %83, align 1
  %conv126 = sext i8 %84 to i32
  %cmp127 = icmp eq i32 %conv126, 69
  br i1 %cmp127, label %if.then129, label %if.end172

if.then129:                                       ; preds = %lor.lhs.false, %if.end122
  %85 = load i32, ptr %incr, align 4
  %86 = load ptr, ptr %z.addr, align 8
  %idx.ext130 = sext i32 %85 to i64
  %add.ptr131 = getelementptr inbounds i8, ptr %86, i64 %idx.ext130
  store ptr %add.ptr131, ptr %z.addr, align 8
  store i32 0, ptr %eValid, align 4
  %87 = load i32, ptr %eType, align 4
  %inc132 = add nsw i32 %87, 1
  store i32 %inc132, ptr %eType, align 4
  %88 = load ptr, ptr %z.addr, align 8
  %89 = load ptr, ptr %zEnd, align 8
  %cmp133 = icmp uge ptr %88, %89
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.then129
  br label %do_atof_calc

if.end136:                                        ; preds = %if.then129
  %90 = load ptr, ptr %z.addr, align 8
  %91 = load i8, ptr %90, align 1
  %conv137 = sext i8 %91 to i32
  %cmp138 = icmp eq i32 %conv137, 45
  br i1 %cmp138, label %if.then140, label %if.else143

if.then140:                                       ; preds = %if.end136
  store i32 -1, ptr %esign, align 4
  %92 = load i32, ptr %incr, align 4
  %93 = load ptr, ptr %z.addr, align 8
  %idx.ext141 = sext i32 %92 to i64
  %add.ptr142 = getelementptr inbounds i8, ptr %93, i64 %idx.ext141
  store ptr %add.ptr142, ptr %z.addr, align 8
  br label %if.end151

if.else143:                                       ; preds = %if.end136
  %94 = load ptr, ptr %z.addr, align 8
  %95 = load i8, ptr %94, align 1
  %conv144 = sext i8 %95 to i32
  %cmp145 = icmp eq i32 %conv144, 43
  br i1 %cmp145, label %if.then147, label %if.end150

if.then147:                                       ; preds = %if.else143
  %96 = load i32, ptr %incr, align 4
  %97 = load ptr, ptr %z.addr, align 8
  %idx.ext148 = sext i32 %96 to i64
  %add.ptr149 = getelementptr inbounds i8, ptr %97, i64 %idx.ext148
  store ptr %add.ptr149, ptr %z.addr, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %if.else143
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %if.then140
  br label %while.cond152

while.cond152:                                    ; preds = %cond.end, %if.end151
  %98 = load ptr, ptr %z.addr, align 8
  %99 = load ptr, ptr %zEnd, align 8
  %cmp153 = icmp ult ptr %98, %99
  br i1 %cmp153, label %land.rhs155, label %land.end161

land.rhs155:                                      ; preds = %while.cond152
  %100 = load ptr, ptr %z.addr, align 8
  %101 = load i8, ptr %100, align 1
  %idxprom156 = zext i8 %101 to i64
  %arrayidx157 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom156
  %102 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %102 to i32
  %and159 = and i32 %conv158, 4
  %tobool160 = icmp ne i32 %and159, 0
  br label %land.end161

land.end161:                                      ; preds = %land.rhs155, %while.cond152
  %103 = phi i1 [ false, %while.cond152 ], [ %tobool160, %land.rhs155 ]
  br i1 %103, label %while.body162, label %while.end171

while.body162:                                    ; preds = %land.end161
  %104 = load i32, ptr %e, align 4
  %cmp163 = icmp slt i32 %104, 10000
  br i1 %cmp163, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body162
  %105 = load i32, ptr %e, align 4
  %mul165 = mul nsw i32 %105, 10
  %106 = load ptr, ptr %z.addr, align 8
  %107 = load i8, ptr %106, align 1
  %conv166 = sext i8 %107 to i32
  %sub167 = sub nsw i32 %conv166, 48
  %add168 = add nsw i32 %mul165, %sub167
  br label %cond.end

cond.false:                                       ; preds = %while.body162
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add168, %cond.true ], [ 10000, %cond.false ]
  store i32 %cond, ptr %e, align 4
  %108 = load i32, ptr %incr, align 4
  %109 = load ptr, ptr %z.addr, align 8
  %idx.ext169 = sext i32 %108 to i64
  %add.ptr170 = getelementptr inbounds i8, ptr %109, i64 %idx.ext169
  store ptr %add.ptr170, ptr %z.addr, align 8
  store i32 1, ptr %eValid, align 4
  br label %while.cond152, !llvm.loop !12

while.end171:                                     ; preds = %land.end161
  br label %if.end172

if.end172:                                        ; preds = %while.end171, %lor.lhs.false
  br label %while.cond173

while.cond173:                                    ; preds = %while.body183, %if.end172
  %110 = load ptr, ptr %z.addr, align 8
  %111 = load ptr, ptr %zEnd, align 8
  %cmp174 = icmp ult ptr %110, %111
  br i1 %cmp174, label %land.rhs176, label %land.end182

land.rhs176:                                      ; preds = %while.cond173
  %112 = load ptr, ptr %z.addr, align 8
  %113 = load i8, ptr %112, align 1
  %idxprom177 = zext i8 %113 to i64
  %arrayidx178 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom177
  %114 = load i8, ptr %arrayidx178, align 1
  %conv179 = zext i8 %114 to i32
  %and180 = and i32 %conv179, 1
  %tobool181 = icmp ne i32 %and180, 0
  br label %land.end182

land.end182:                                      ; preds = %land.rhs176, %while.cond173
  %115 = phi i1 [ false, %while.cond173 ], [ %tobool181, %land.rhs176 ]
  br i1 %115, label %while.body183, label %while.end186

while.body183:                                    ; preds = %land.end182
  %116 = load i32, ptr %incr, align 4
  %117 = load ptr, ptr %z.addr, align 8
  %idx.ext184 = sext i32 %116 to i64
  %add.ptr185 = getelementptr inbounds i8, ptr %117, i64 %idx.ext184
  store ptr %add.ptr185, ptr %z.addr, align 8
  br label %while.cond173, !llvm.loop !13

while.end186:                                     ; preds = %land.end182
  br label %do_atof_calc

do_atof_calc:                                     ; preds = %while.end186, %if.then135, %if.then121, %if.then85
  %118 = load i32, ptr %e, align 4
  %119 = load i32, ptr %esign, align 4
  %mul187 = mul nsw i32 %118, %119
  %120 = load i32, ptr %d, align 4
  %add188 = add nsw i32 %mul187, %120
  store i32 %add188, ptr %e, align 4
  %121 = load i32, ptr %e, align 4
  %cmp189 = icmp slt i32 %121, 0
  br i1 %cmp189, label %if.then191, label %if.else193

if.then191:                                       ; preds = %do_atof_calc
  store i32 -1, ptr %esign, align 4
  %122 = load i32, ptr %e, align 4
  %mul192 = mul nsw i32 %122, -1
  store i32 %mul192, ptr %e, align 4
  br label %if.end194

if.else193:                                       ; preds = %do_atof_calc
  store i32 1, ptr %esign, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.else193, %if.then191
  %123 = load i64, ptr %s, align 8
  %cmp195 = icmp eq i64 %123, 0
  br i1 %cmp195, label %if.then197, label %if.else201

if.then197:                                       ; preds = %if.end194
  %124 = load i32, ptr %sign, align 4
  %cmp198 = icmp slt i32 %124, 0
  %125 = zext i1 %cmp198 to i64
  %cond200 = select i1 %cmp198, double -0.000000e+00, double 0.000000e+00
  store double %cond200, ptr %result, align 8
  br label %if.end282

if.else201:                                       ; preds = %if.end194
  br label %while.cond202

while.cond202:                                    ; preds = %if.end219, %if.else201
  %126 = load i32, ptr %e, align 4
  %cmp203 = icmp sgt i32 %126, 0
  br i1 %cmp203, label %while.body205, label %while.end221

while.body205:                                    ; preds = %while.cond202
  %127 = load i32, ptr %esign, align 4
  %cmp206 = icmp sgt i32 %127, 0
  br i1 %cmp206, label %if.then208, label %if.else214

if.then208:                                       ; preds = %while.body205
  %128 = load i64, ptr %s, align 8
  %cmp209 = icmp sge i64 %128, 922337203685477580
  br i1 %cmp209, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.then208
  br label %while.end221

if.end212:                                        ; preds = %if.then208
  %129 = load i64, ptr %s, align 8
  %mul213 = mul nsw i64 %129, 10
  store i64 %mul213, ptr %s, align 8
  br label %if.end219

if.else214:                                       ; preds = %while.body205
  %130 = load i64, ptr %s, align 8
  %rem = srem i64 %130, 10
  %cmp215 = icmp ne i64 %rem, 0
  br i1 %cmp215, label %if.then217, label %if.end218

if.then217:                                       ; preds = %if.else214
  br label %while.end221

if.end218:                                        ; preds = %if.else214
  %131 = load i64, ptr %s, align 8
  %div = sdiv i64 %131, 10
  store i64 %div, ptr %s, align 8
  br label %if.end219

if.end219:                                        ; preds = %if.end218, %if.end212
  %132 = load i32, ptr %e, align 4
  %dec220 = add nsw i32 %132, -1
  store i32 %dec220, ptr %e, align 4
  br label %while.cond202, !llvm.loop !14

while.end221:                                     ; preds = %if.then217, %if.then211, %while.cond202
  %133 = load i32, ptr %sign, align 4
  %cmp222 = icmp slt i32 %133, 0
  br i1 %cmp222, label %cond.true224, label %cond.false226

cond.true224:                                     ; preds = %while.end221
  %134 = load i64, ptr %s, align 8
  %sub225 = sub nsw i64 0, %134
  br label %cond.end227

cond.false226:                                    ; preds = %while.end221
  %135 = load i64, ptr %s, align 8
  br label %cond.end227

cond.end227:                                      ; preds = %cond.false226, %cond.true224
  %cond228 = phi i64 [ %sub225, %cond.true224 ], [ %135, %cond.false226 ]
  store i64 %cond228, ptr %s, align 8
  %136 = load i32, ptr %e, align 4
  %cmp229 = icmp eq i32 %136, 0
  br i1 %cmp229, label %if.then231, label %if.else233

if.then231:                                       ; preds = %cond.end227
  %137 = load i64, ptr %s, align 8
  %conv232 = sitofp i64 %137 to double
  store double %conv232, ptr %result, align 8
  br label %if.end281

if.else233:                                       ; preds = %cond.end227
  %138 = load i32, ptr %e, align 4
  %cmp234 = icmp sgt i32 %138, 307
  br i1 %cmp234, label %if.then236, label %if.else266

if.then236:                                       ; preds = %if.else233
  %139 = load i32, ptr %e, align 4
  %cmp237 = icmp slt i32 %139, 342
  br i1 %cmp237, label %if.then239, label %if.else254

if.then239:                                       ; preds = %if.then236
  %140 = load i32, ptr %e, align 4
  %sub240 = sub nsw i32 %140, 308
  %call = call x86_fp80 @sqlite3Pow10(i32 noundef %sub240)
  store x86_fp80 %call, ptr %scale, align 16
  %141 = load i32, ptr %esign, align 4
  %cmp241 = icmp slt i32 %141, 0
  br i1 %cmp241, label %if.then243, label %if.else248

if.then243:                                       ; preds = %if.then239
  %142 = load i64, ptr %s, align 8
  %conv244 = sitofp i64 %142 to x86_fp80
  %143 = load x86_fp80, ptr %scale, align 16
  %div245 = fdiv x86_fp80 %conv244, %143
  %conv246 = fptrunc x86_fp80 %div245 to double
  store double %conv246, ptr %result, align 8
  %144 = load double, ptr %result, align 8
  %div247 = fdiv double %144, 1.000000e+308
  store double %div247, ptr %result, align 8
  br label %if.end253

if.else248:                                       ; preds = %if.then239
  %145 = load i64, ptr %s, align 8
  %conv249 = sitofp i64 %145 to x86_fp80
  %146 = load x86_fp80, ptr %scale, align 16
  %mul250 = fmul x86_fp80 %conv249, %146
  %conv251 = fptrunc x86_fp80 %mul250 to double
  store double %conv251, ptr %result, align 8
  %147 = load double, ptr %result, align 8
  %mul252 = fmul double %147, 1.000000e+308
  store double %mul252, ptr %result, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.else248, %if.then243
  br label %if.end265

if.else254:                                       ; preds = %if.then236
  %148 = load i32, ptr %esign, align 4
  %cmp255 = icmp slt i32 %148, 0
  br i1 %cmp255, label %if.then257, label %if.else260

if.then257:                                       ; preds = %if.else254
  %149 = load i64, ptr %s, align 8
  %conv258 = sitofp i64 %149 to double
  %mul259 = fmul double 0.000000e+00, %conv258
  store double %mul259, ptr %result, align 8
  br label %if.end264

if.else260:                                       ; preds = %if.else254
  %150 = load i64, ptr %s, align 8
  %conv261 = sitofp i64 %150 to float
  %mul262 = fmul float 0x7FF0000000000000, %conv261
  %conv263 = fpext float %mul262 to double
  store double %conv263, ptr %result, align 8
  br label %if.end264

if.end264:                                        ; preds = %if.else260, %if.then257
  br label %if.end265

if.end265:                                        ; preds = %if.end264, %if.end253
  br label %if.end280

if.else266:                                       ; preds = %if.else233
  %151 = load i32, ptr %e, align 4
  %call268 = call x86_fp80 @sqlite3Pow10(i32 noundef %151)
  store x86_fp80 %call268, ptr %scale267, align 16
  %152 = load i32, ptr %esign, align 4
  %cmp269 = icmp slt i32 %152, 0
  br i1 %cmp269, label %if.then271, label %if.else275

if.then271:                                       ; preds = %if.else266
  %153 = load i64, ptr %s, align 8
  %conv272 = sitofp i64 %153 to x86_fp80
  %154 = load x86_fp80, ptr %scale267, align 16
  %div273 = fdiv x86_fp80 %conv272, %154
  %conv274 = fptrunc x86_fp80 %div273 to double
  store double %conv274, ptr %result, align 8
  br label %if.end279

if.else275:                                       ; preds = %if.else266
  %155 = load i64, ptr %s, align 8
  %conv276 = sitofp i64 %155 to x86_fp80
  %156 = load x86_fp80, ptr %scale267, align 16
  %mul277 = fmul x86_fp80 %conv276, %156
  %conv278 = fptrunc x86_fp80 %mul277 to double
  store double %conv278, ptr %result, align 8
  br label %if.end279

if.end279:                                        ; preds = %if.else275, %if.then271
  br label %if.end280

if.end280:                                        ; preds = %if.end279, %if.end265
  br label %if.end281

if.end281:                                        ; preds = %if.end280, %if.then231
  br label %if.end282

if.end282:                                        ; preds = %if.end281, %if.then197
  %157 = load double, ptr %result, align 8
  %158 = load ptr, ptr %pResult.addr, align 8
  store double %157, ptr %158, align 8
  %159 = load ptr, ptr %z.addr, align 8
  %160 = load ptr, ptr %zEnd, align 8
  %cmp283 = icmp eq ptr %159, %160
  br i1 %cmp283, label %land.lhs.true, label %if.else293

land.lhs.true:                                    ; preds = %if.end282
  %161 = load i32, ptr %nDigit, align 4
  %cmp285 = icmp sgt i32 %161, 0
  br i1 %cmp285, label %land.lhs.true287, label %if.else293

land.lhs.true287:                                 ; preds = %land.lhs.true
  %162 = load i32, ptr %eValid, align 4
  %tobool288 = icmp ne i32 %162, 0
  br i1 %tobool288, label %land.lhs.true289, label %if.else293

land.lhs.true289:                                 ; preds = %land.lhs.true287
  %163 = load i32, ptr %eType, align 4
  %cmp290 = icmp sgt i32 %163, 0
  br i1 %cmp290, label %if.then292, label %if.else293

if.then292:                                       ; preds = %land.lhs.true289
  %164 = load i32, ptr %eType, align 4
  store i32 %164, ptr %retval, align 4
  br label %return

if.else293:                                       ; preds = %land.lhs.true289, %land.lhs.true287, %land.lhs.true, %if.end282
  %165 = load i32, ptr %eType, align 4
  %cmp294 = icmp sge i32 %165, 2
  br i1 %cmp294, label %land.lhs.true296, label %if.else305

land.lhs.true296:                                 ; preds = %if.else293
  %166 = load i32, ptr %eType, align 4
  %cmp297 = icmp eq i32 %166, 3
  br i1 %cmp297, label %land.lhs.true301, label %lor.lhs.false299

lor.lhs.false299:                                 ; preds = %land.lhs.true296
  %167 = load i32, ptr %eValid, align 4
  %tobool300 = icmp ne i32 %167, 0
  br i1 %tobool300, label %land.lhs.true301, label %if.else305

land.lhs.true301:                                 ; preds = %lor.lhs.false299, %land.lhs.true296
  %168 = load i32, ptr %nDigit, align 4
  %cmp302 = icmp sgt i32 %168, 0
  br i1 %cmp302, label %if.then304, label %if.else305

if.then304:                                       ; preds = %land.lhs.true301
  store i32 -1, ptr %retval, align 4
  br label %return

if.else305:                                       ; preds = %land.lhs.true301, %lor.lhs.false299, %if.else293
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else305, %if.then304, %if.then292, %if.then29
  %169 = load i32, ptr %retval, align 4
  ret i32 %169
}

; Function Attrs: nounwind uwtable
declare hidden x86_fp80 @sqlite3Pow10(i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
