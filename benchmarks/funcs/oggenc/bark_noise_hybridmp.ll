; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @bark_noise_hybridmp(i32 noundef %n, ptr noundef %b, ptr noundef %f, ptr noundef %noise, float noundef %offset, i32 noundef %fixed) #1 {
entry:
  %n.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %noise.addr = alloca ptr, align 8
  %offset.addr = alloca float, align 4
  %fixed.addr = alloca i32, align 4
  %N = alloca ptr, align 8
  %X = alloca ptr, align 8
  %XX = alloca ptr, align 8
  %Y = alloca ptr, align 8
  %XY = alloca ptr, align 8
  %tN = alloca float, align 4
  %tX = alloca float, align 4
  %tXX = alloca float, align 4
  %tY = alloca float, align 4
  %tXY = alloca float, align 4
  %i = alloca i32, align 4
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %R = alloca float, align 4
  %A = alloca float, align 4
  %B = alloca float, align 4
  %D = alloca float, align 4
  %w = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %f, ptr %f.addr, align 8
  store ptr %noise, ptr %noise.addr, align 8
  store float %offset, ptr %offset.addr, align 4
  store i32 %fixed, ptr %fixed.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %1 = alloca i8, i64 %mul, align 16
  store ptr %1, ptr %N, align 8
  %2 = load i32, ptr %n.addr, align 4
  %conv1 = sext i32 %2 to i64
  %mul2 = mul i64 %conv1, 4
  %3 = alloca i8, i64 %mul2, align 16
  store ptr %3, ptr %X, align 8
  %4 = load i32, ptr %n.addr, align 4
  %conv3 = sext i32 %4 to i64
  %mul4 = mul i64 %conv3, 4
  %5 = alloca i8, i64 %mul4, align 16
  store ptr %5, ptr %XX, align 8
  %6 = load i32, ptr %n.addr, align 4
  %conv5 = sext i32 %6 to i64
  %mul6 = mul i64 %conv5, 4
  %7 = alloca i8, i64 %mul6, align 16
  store ptr %7, ptr %Y, align 8
  %8 = load i32, ptr %n.addr, align 4
  %conv7 = sext i32 %8 to i64
  %mul8 = mul i64 %conv7, 4
  %9 = alloca i8, i64 %mul8, align 16
  store ptr %9, ptr %XY, align 8
  store float 0.000000e+00, ptr %tXY, align 4
  store float 0.000000e+00, ptr %tY, align 4
  store float 0.000000e+00, ptr %tXX, align 4
  store float 0.000000e+00, ptr %tX, align 4
  store float 0.000000e+00, ptr %tN, align 4
  %10 = load ptr, ptr %f.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %10, i64 0
  %11 = load float, ptr %arrayidx, align 4
  %12 = load float, ptr %offset.addr, align 4
  %add = fadd float %11, %12
  store float %add, ptr %y, align 4
  %13 = load float, ptr %y, align 4
  %cmp = fcmp olt float %13, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 1.000000e+00, ptr %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load float, ptr %y, align 4
  %15 = load float, ptr %y, align 4
  %mul10 = fmul float %14, %15
  %conv11 = fpext float %mul10 to double
  %mul12 = fmul double %conv11, 5.000000e-01
  %conv13 = fptrunc double %mul12 to float
  store float %conv13, ptr %w, align 4
  %16 = load float, ptr %w, align 4
  %17 = load float, ptr %tN, align 4
  %add14 = fadd float %17, %16
  store float %add14, ptr %tN, align 4
  %18 = load float, ptr %w, align 4
  %19 = load float, ptr %tX, align 4
  %add15 = fadd float %19, %18
  store float %add15, ptr %tX, align 4
  %20 = load float, ptr %w, align 4
  %21 = load float, ptr %y, align 4
  %22 = load float, ptr %tY, align 4
  %23 = call float @llvm.fmuladd.f32(float %20, float %21, float %22)
  store float %23, ptr %tY, align 4
  %24 = load float, ptr %tN, align 4
  %25 = load ptr, ptr %N, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %25, i64 0
  store float %24, ptr %arrayidx17, align 4
  %26 = load float, ptr %tX, align 4
  %27 = load ptr, ptr %X, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %27, i64 0
  store float %26, ptr %arrayidx18, align 4
  %28 = load float, ptr %tXX, align 4
  %29 = load ptr, ptr %XX, align 8
  %arrayidx19 = getelementptr inbounds float, ptr %29, i64 0
  store float %28, ptr %arrayidx19, align 4
  %30 = load float, ptr %tY, align 4
  %31 = load ptr, ptr %Y, align 8
  %arrayidx20 = getelementptr inbounds float, ptr %31, i64 0
  store float %30, ptr %arrayidx20, align 4
  %32 = load float, ptr %tXY, align 4
  %33 = load ptr, ptr %XY, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %33, i64 0
  store float %32, ptr %arrayidx21, align 4
  store i32 1, ptr %i, align 4
  store float 1.000000e+00, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %34 = load i32, ptr %i, align 4
  %35 = load i32, ptr %n.addr, align 4
  %cmp22 = icmp slt i32 %34, %35
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %f.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %36, i64 %idxprom
  %38 = load float, ptr %arrayidx24, align 4
  %39 = load float, ptr %offset.addr, align 4
  %add25 = fadd float %38, %39
  store float %add25, ptr %y, align 4
  %40 = load float, ptr %y, align 4
  %cmp26 = fcmp olt float %40, 1.000000e+00
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body
  store float 1.000000e+00, ptr %y, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.body
  %41 = load float, ptr %y, align 4
  %42 = load float, ptr %y, align 4
  %mul30 = fmul float %41, %42
  store float %mul30, ptr %w, align 4
  %43 = load float, ptr %w, align 4
  %44 = load float, ptr %tN, align 4
  %add31 = fadd float %44, %43
  store float %add31, ptr %tN, align 4
  %45 = load float, ptr %w, align 4
  %46 = load float, ptr %x, align 4
  %47 = load float, ptr %tX, align 4
  %48 = call float @llvm.fmuladd.f32(float %45, float %46, float %47)
  store float %48, ptr %tX, align 4
  %49 = load float, ptr %w, align 4
  %50 = load float, ptr %x, align 4
  %mul33 = fmul float %49, %50
  %51 = load float, ptr %x, align 4
  %52 = load float, ptr %tXX, align 4
  %53 = call float @llvm.fmuladd.f32(float %mul33, float %51, float %52)
  store float %53, ptr %tXX, align 4
  %54 = load float, ptr %w, align 4
  %55 = load float, ptr %y, align 4
  %56 = load float, ptr %tY, align 4
  %57 = call float @llvm.fmuladd.f32(float %54, float %55, float %56)
  store float %57, ptr %tY, align 4
  %58 = load float, ptr %w, align 4
  %59 = load float, ptr %x, align 4
  %mul36 = fmul float %58, %59
  %60 = load float, ptr %y, align 4
  %61 = load float, ptr %tXY, align 4
  %62 = call float @llvm.fmuladd.f32(float %mul36, float %60, float %61)
  store float %62, ptr %tXY, align 4
  %63 = load float, ptr %tN, align 4
  %64 = load ptr, ptr %N, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %65 to i64
  %arrayidx39 = getelementptr inbounds float, ptr %64, i64 %idxprom38
  store float %63, ptr %arrayidx39, align 4
  %66 = load float, ptr %tX, align 4
  %67 = load ptr, ptr %X, align 8
  %68 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %68 to i64
  %arrayidx41 = getelementptr inbounds float, ptr %67, i64 %idxprom40
  store float %66, ptr %arrayidx41, align 4
  %69 = load float, ptr %tXX, align 4
  %70 = load ptr, ptr %XX, align 8
  %71 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %71 to i64
  %arrayidx43 = getelementptr inbounds float, ptr %70, i64 %idxprom42
  store float %69, ptr %arrayidx43, align 4
  %72 = load float, ptr %tY, align 4
  %73 = load ptr, ptr %Y, align 8
  %74 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %74 to i64
  %arrayidx45 = getelementptr inbounds float, ptr %73, i64 %idxprom44
  store float %72, ptr %arrayidx45, align 4
  %75 = load float, ptr %tXY, align 4
  %76 = load ptr, ptr %XY, align 8
  %77 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %77 to i64
  %arrayidx47 = getelementptr inbounds float, ptr %76, i64 %idxprom46
  store float %75, ptr %arrayidx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %78 = load i32, ptr %i, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %i, align 4
  %79 = load float, ptr %x, align 4
  %add48 = fadd float %79, 1.000000e+00
  store float %add48, ptr %x, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  store float 0.000000e+00, ptr %x, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc105, %for.end
  %80 = load ptr, ptr %b.addr, align 8
  %81 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %81 to i64
  %arrayidx51 = getelementptr inbounds i64, ptr %80, i64 %idxprom50
  %82 = load i64, ptr %arrayidx51, align 8
  %shr = ashr i64 %82, 16
  %conv52 = trunc i64 %shr to i32
  store i32 %conv52, ptr %lo, align 4
  %83 = load i32, ptr %lo, align 4
  %cmp53 = icmp sge i32 %83, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.cond49
  br label %for.end108

if.end56:                                         ; preds = %for.cond49
  %84 = load ptr, ptr %b.addr, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %85 to i64
  %arrayidx58 = getelementptr inbounds i64, ptr %84, i64 %idxprom57
  %86 = load i64, ptr %arrayidx58, align 8
  %and = and i64 %86, 65535
  %conv59 = trunc i64 %and to i32
  store i32 %conv59, ptr %hi, align 4
  %87 = load ptr, ptr %N, align 8
  %88 = load i32, ptr %hi, align 4
  %idxprom60 = sext i32 %88 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %87, i64 %idxprom60
  %89 = load float, ptr %arrayidx61, align 4
  %90 = load ptr, ptr %N, align 8
  %91 = load i32, ptr %lo, align 4
  %sub = sub nsw i32 0, %91
  %idxprom62 = sext i32 %sub to i64
  %arrayidx63 = getelementptr inbounds float, ptr %90, i64 %idxprom62
  %92 = load float, ptr %arrayidx63, align 4
  %add64 = fadd float %89, %92
  store float %add64, ptr %tN, align 4
  %93 = load ptr, ptr %X, align 8
  %94 = load i32, ptr %hi, align 4
  %idxprom65 = sext i32 %94 to i64
  %arrayidx66 = getelementptr inbounds float, ptr %93, i64 %idxprom65
  %95 = load float, ptr %arrayidx66, align 4
  %96 = load ptr, ptr %X, align 8
  %97 = load i32, ptr %lo, align 4
  %sub67 = sub nsw i32 0, %97
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds float, ptr %96, i64 %idxprom68
  %98 = load float, ptr %arrayidx69, align 4
  %sub70 = fsub float %95, %98
  store float %sub70, ptr %tX, align 4
  %99 = load ptr, ptr %XX, align 8
  %100 = load i32, ptr %hi, align 4
  %idxprom71 = sext i32 %100 to i64
  %arrayidx72 = getelementptr inbounds float, ptr %99, i64 %idxprom71
  %101 = load float, ptr %arrayidx72, align 4
  %102 = load ptr, ptr %XX, align 8
  %103 = load i32, ptr %lo, align 4
  %sub73 = sub nsw i32 0, %103
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds float, ptr %102, i64 %idxprom74
  %104 = load float, ptr %arrayidx75, align 4
  %add76 = fadd float %101, %104
  store float %add76, ptr %tXX, align 4
  %105 = load ptr, ptr %Y, align 8
  %106 = load i32, ptr %hi, align 4
  %idxprom77 = sext i32 %106 to i64
  %arrayidx78 = getelementptr inbounds float, ptr %105, i64 %idxprom77
  %107 = load float, ptr %arrayidx78, align 4
  %108 = load ptr, ptr %Y, align 8
  %109 = load i32, ptr %lo, align 4
  %sub79 = sub nsw i32 0, %109
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %108, i64 %idxprom80
  %110 = load float, ptr %arrayidx81, align 4
  %add82 = fadd float %107, %110
  store float %add82, ptr %tY, align 4
  %111 = load ptr, ptr %XY, align 8
  %112 = load i32, ptr %hi, align 4
  %idxprom83 = sext i32 %112 to i64
  %arrayidx84 = getelementptr inbounds float, ptr %111, i64 %idxprom83
  %113 = load float, ptr %arrayidx84, align 4
  %114 = load ptr, ptr %XY, align 8
  %115 = load i32, ptr %lo, align 4
  %sub85 = sub nsw i32 0, %115
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds float, ptr %114, i64 %idxprom86
  %116 = load float, ptr %arrayidx87, align 4
  %sub88 = fsub float %113, %116
  store float %sub88, ptr %tXY, align 4
  %117 = load float, ptr %tY, align 4
  %118 = load float, ptr %tXX, align 4
  %119 = load float, ptr %tX, align 4
  %120 = load float, ptr %tXY, align 4
  %mul90 = fmul float %119, %120
  %neg = fneg float %mul90
  %121 = call float @llvm.fmuladd.f32(float %117, float %118, float %neg)
  store float %121, ptr %A, align 4
  %122 = load float, ptr %tN, align 4
  %123 = load float, ptr %tXY, align 4
  %124 = load float, ptr %tX, align 4
  %125 = load float, ptr %tY, align 4
  %mul92 = fmul float %124, %125
  %neg93 = fneg float %mul92
  %126 = call float @llvm.fmuladd.f32(float %122, float %123, float %neg93)
  store float %126, ptr %B, align 4
  %127 = load float, ptr %tN, align 4
  %128 = load float, ptr %tXX, align 4
  %129 = load float, ptr %tX, align 4
  %130 = load float, ptr %tX, align 4
  %mul95 = fmul float %129, %130
  %neg96 = fneg float %mul95
  %131 = call float @llvm.fmuladd.f32(float %127, float %128, float %neg96)
  store float %131, ptr %D, align 4
  %132 = load float, ptr %A, align 4
  %133 = load float, ptr %x, align 4
  %134 = load float, ptr %B, align 4
  %135 = call float @llvm.fmuladd.f32(float %133, float %134, float %132)
  %136 = load float, ptr %D, align 4
  %div = fdiv float %135, %136
  store float %div, ptr %R, align 4
  %137 = load float, ptr %R, align 4
  %cmp98 = fcmp olt float %137, 0.000000e+00
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end56
  store float 0.000000e+00, ptr %R, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.end56
  %138 = load float, ptr %R, align 4
  %139 = load float, ptr %offset.addr, align 4
  %sub102 = fsub float %138, %139
  %140 = load ptr, ptr %noise.addr, align 8
  %141 = load i32, ptr %i, align 4
  %idxprom103 = sext i32 %141 to i64
  %arrayidx104 = getelementptr inbounds float, ptr %140, i64 %idxprom103
  store float %sub102, ptr %arrayidx104, align 4
  br label %for.inc105

for.inc105:                                       ; preds = %if.end101
  %142 = load i32, ptr %i, align 4
  %inc106 = add nsw i32 %142, 1
  store i32 %inc106, ptr %i, align 4
  %143 = load float, ptr %x, align 4
  %add107 = fadd float %143, 1.000000e+00
  store float %add107, ptr %x, align 4
  br label %for.cond49

for.end108:                                       ; preds = %if.then55
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc165, %for.end108
  %144 = load ptr, ptr %b.addr, align 8
  %145 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %145 to i64
  %arrayidx111 = getelementptr inbounds i64, ptr %144, i64 %idxprom110
  %146 = load i64, ptr %arrayidx111, align 8
  %shr112 = ashr i64 %146, 16
  %conv113 = trunc i64 %shr112 to i32
  store i32 %conv113, ptr %lo, align 4
  %147 = load ptr, ptr %b.addr, align 8
  %148 = load i32, ptr %i, align 4
  %idxprom114 = sext i32 %148 to i64
  %arrayidx115 = getelementptr inbounds i64, ptr %147, i64 %idxprom114
  %149 = load i64, ptr %arrayidx115, align 8
  %and116 = and i64 %149, 65535
  %conv117 = trunc i64 %and116 to i32
  store i32 %conv117, ptr %hi, align 4
  %150 = load i32, ptr %hi, align 4
  %151 = load i32, ptr %n.addr, align 4
  %cmp118 = icmp sge i32 %150, %151
  br i1 %cmp118, label %if.then120, label %if.end121

if.then120:                                       ; preds = %for.cond109
  br label %for.end168

if.end121:                                        ; preds = %for.cond109
  %152 = load ptr, ptr %N, align 8
  %153 = load i32, ptr %hi, align 4
  %idxprom122 = sext i32 %153 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %152, i64 %idxprom122
  %154 = load float, ptr %arrayidx123, align 4
  %155 = load ptr, ptr %N, align 8
  %156 = load i32, ptr %lo, align 4
  %idxprom124 = sext i32 %156 to i64
  %arrayidx125 = getelementptr inbounds float, ptr %155, i64 %idxprom124
  %157 = load float, ptr %arrayidx125, align 4
  %sub126 = fsub float %154, %157
  store float %sub126, ptr %tN, align 4
  %158 = load ptr, ptr %X, align 8
  %159 = load i32, ptr %hi, align 4
  %idxprom127 = sext i32 %159 to i64
  %arrayidx128 = getelementptr inbounds float, ptr %158, i64 %idxprom127
  %160 = load float, ptr %arrayidx128, align 4
  %161 = load ptr, ptr %X, align 8
  %162 = load i32, ptr %lo, align 4
  %idxprom129 = sext i32 %162 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %161, i64 %idxprom129
  %163 = load float, ptr %arrayidx130, align 4
  %sub131 = fsub float %160, %163
  store float %sub131, ptr %tX, align 4
  %164 = load ptr, ptr %XX, align 8
  %165 = load i32, ptr %hi, align 4
  %idxprom132 = sext i32 %165 to i64
  %arrayidx133 = getelementptr inbounds float, ptr %164, i64 %idxprom132
  %166 = load float, ptr %arrayidx133, align 4
  %167 = load ptr, ptr %XX, align 8
  %168 = load i32, ptr %lo, align 4
  %idxprom134 = sext i32 %168 to i64
  %arrayidx135 = getelementptr inbounds float, ptr %167, i64 %idxprom134
  %169 = load float, ptr %arrayidx135, align 4
  %sub136 = fsub float %166, %169
  store float %sub136, ptr %tXX, align 4
  %170 = load ptr, ptr %Y, align 8
  %171 = load i32, ptr %hi, align 4
  %idxprom137 = sext i32 %171 to i64
  %arrayidx138 = getelementptr inbounds float, ptr %170, i64 %idxprom137
  %172 = load float, ptr %arrayidx138, align 4
  %173 = load ptr, ptr %Y, align 8
  %174 = load i32, ptr %lo, align 4
  %idxprom139 = sext i32 %174 to i64
  %arrayidx140 = getelementptr inbounds float, ptr %173, i64 %idxprom139
  %175 = load float, ptr %arrayidx140, align 4
  %sub141 = fsub float %172, %175
  store float %sub141, ptr %tY, align 4
  %176 = load ptr, ptr %XY, align 8
  %177 = load i32, ptr %hi, align 4
  %idxprom142 = sext i32 %177 to i64
  %arrayidx143 = getelementptr inbounds float, ptr %176, i64 %idxprom142
  %178 = load float, ptr %arrayidx143, align 4
  %179 = load ptr, ptr %XY, align 8
  %180 = load i32, ptr %lo, align 4
  %idxprom144 = sext i32 %180 to i64
  %arrayidx145 = getelementptr inbounds float, ptr %179, i64 %idxprom144
  %181 = load float, ptr %arrayidx145, align 4
  %sub146 = fsub float %178, %181
  store float %sub146, ptr %tXY, align 4
  %182 = load float, ptr %tY, align 4
  %183 = load float, ptr %tXX, align 4
  %184 = load float, ptr %tX, align 4
  %185 = load float, ptr %tXY, align 4
  %mul148 = fmul float %184, %185
  %neg149 = fneg float %mul148
  %186 = call float @llvm.fmuladd.f32(float %182, float %183, float %neg149)
  store float %186, ptr %A, align 4
  %187 = load float, ptr %tN, align 4
  %188 = load float, ptr %tXY, align 4
  %189 = load float, ptr %tX, align 4
  %190 = load float, ptr %tY, align 4
  %mul151 = fmul float %189, %190
  %neg152 = fneg float %mul151
  %191 = call float @llvm.fmuladd.f32(float %187, float %188, float %neg152)
  store float %191, ptr %B, align 4
  %192 = load float, ptr %tN, align 4
  %193 = load float, ptr %tXX, align 4
  %194 = load float, ptr %tX, align 4
  %195 = load float, ptr %tX, align 4
  %mul154 = fmul float %194, %195
  %neg155 = fneg float %mul154
  %196 = call float @llvm.fmuladd.f32(float %192, float %193, float %neg155)
  store float %196, ptr %D, align 4
  %197 = load float, ptr %A, align 4
  %198 = load float, ptr %x, align 4
  %199 = load float, ptr %B, align 4
  %200 = call float @llvm.fmuladd.f32(float %198, float %199, float %197)
  %201 = load float, ptr %D, align 4
  %div157 = fdiv float %200, %201
  store float %div157, ptr %R, align 4
  %202 = load float, ptr %R, align 4
  %cmp158 = fcmp olt float %202, 0.000000e+00
  br i1 %cmp158, label %if.then160, label %if.end161

if.then160:                                       ; preds = %if.end121
  store float 0.000000e+00, ptr %R, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end121
  %203 = load float, ptr %R, align 4
  %204 = load float, ptr %offset.addr, align 4
  %sub162 = fsub float %203, %204
  %205 = load ptr, ptr %noise.addr, align 8
  %206 = load i32, ptr %i, align 4
  %idxprom163 = sext i32 %206 to i64
  %arrayidx164 = getelementptr inbounds float, ptr %205, i64 %idxprom163
  store float %sub162, ptr %arrayidx164, align 4
  br label %for.inc165

for.inc165:                                       ; preds = %if.end161
  %207 = load i32, ptr %i, align 4
  %inc166 = add nsw i32 %207, 1
  store i32 %inc166, ptr %i, align 4
  %208 = load float, ptr %x, align 4
  %add167 = fadd float %208, 1.000000e+00
  store float %add167, ptr %x, align 4
  br label %for.cond109

for.end168:                                       ; preds = %if.then120
  br label %for.cond169

for.cond169:                                      ; preds = %for.inc182, %for.end168
  %209 = load i32, ptr %i, align 4
  %210 = load i32, ptr %n.addr, align 4
  %cmp170 = icmp slt i32 %209, %210
  br i1 %cmp170, label %for.body172, label %for.end185

for.body172:                                      ; preds = %for.cond169
  %211 = load float, ptr %A, align 4
  %212 = load float, ptr %x, align 4
  %213 = load float, ptr %B, align 4
  %214 = call float @llvm.fmuladd.f32(float %212, float %213, float %211)
  %215 = load float, ptr %D, align 4
  %div174 = fdiv float %214, %215
  store float %div174, ptr %R, align 4
  %216 = load float, ptr %R, align 4
  %cmp175 = fcmp olt float %216, 0.000000e+00
  br i1 %cmp175, label %if.then177, label %if.end178

if.then177:                                       ; preds = %for.body172
  store float 0.000000e+00, ptr %R, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then177, %for.body172
  %217 = load float, ptr %R, align 4
  %218 = load float, ptr %offset.addr, align 4
  %sub179 = fsub float %217, %218
  %219 = load ptr, ptr %noise.addr, align 8
  %220 = load i32, ptr %i, align 4
  %idxprom180 = sext i32 %220 to i64
  %arrayidx181 = getelementptr inbounds float, ptr %219, i64 %idxprom180
  store float %sub179, ptr %arrayidx181, align 4
  br label %for.inc182

for.inc182:                                       ; preds = %if.end178
  %221 = load i32, ptr %i, align 4
  %inc183 = add nsw i32 %221, 1
  store i32 %inc183, ptr %i, align 4
  %222 = load float, ptr %x, align 4
  %add184 = fadd float %222, 1.000000e+00
  store float %add184, ptr %x, align 4
  br label %for.cond169, !llvm.loop !8

for.end185:                                       ; preds = %for.cond169
  %223 = load i32, ptr %fixed.addr, align 4
  %cmp186 = icmp sle i32 %223, 0
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %for.end185
  br label %for.end330

if.end189:                                        ; preds = %for.end185
  store i32 0, ptr %i, align 4
  store float 0.000000e+00, ptr %x, align 4
  br label %for.cond190

for.cond190:                                      ; preds = %for.inc249, %if.end189
  %224 = load i32, ptr %i, align 4
  %225 = load i32, ptr %fixed.addr, align 4
  %div191 = sdiv i32 %225, 2
  %add192 = add nsw i32 %224, %div191
  store i32 %add192, ptr %hi, align 4
  %226 = load i32, ptr %hi, align 4
  %227 = load i32, ptr %fixed.addr, align 4
  %sub193 = sub nsw i32 %226, %227
  store i32 %sub193, ptr %lo, align 4
  %228 = load i32, ptr %lo, align 4
  %cmp194 = icmp sge i32 %228, 0
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %for.cond190
  br label %for.end252

if.end197:                                        ; preds = %for.cond190
  %229 = load ptr, ptr %N, align 8
  %230 = load i32, ptr %hi, align 4
  %idxprom198 = sext i32 %230 to i64
  %arrayidx199 = getelementptr inbounds float, ptr %229, i64 %idxprom198
  %231 = load float, ptr %arrayidx199, align 4
  %232 = load ptr, ptr %N, align 8
  %233 = load i32, ptr %lo, align 4
  %sub200 = sub nsw i32 0, %233
  %idxprom201 = sext i32 %sub200 to i64
  %arrayidx202 = getelementptr inbounds float, ptr %232, i64 %idxprom201
  %234 = load float, ptr %arrayidx202, align 4
  %add203 = fadd float %231, %234
  store float %add203, ptr %tN, align 4
  %235 = load ptr, ptr %X, align 8
  %236 = load i32, ptr %hi, align 4
  %idxprom204 = sext i32 %236 to i64
  %arrayidx205 = getelementptr inbounds float, ptr %235, i64 %idxprom204
  %237 = load float, ptr %arrayidx205, align 4
  %238 = load ptr, ptr %X, align 8
  %239 = load i32, ptr %lo, align 4
  %sub206 = sub nsw i32 0, %239
  %idxprom207 = sext i32 %sub206 to i64
  %arrayidx208 = getelementptr inbounds float, ptr %238, i64 %idxprom207
  %240 = load float, ptr %arrayidx208, align 4
  %sub209 = fsub float %237, %240
  store float %sub209, ptr %tX, align 4
  %241 = load ptr, ptr %XX, align 8
  %242 = load i32, ptr %hi, align 4
  %idxprom210 = sext i32 %242 to i64
  %arrayidx211 = getelementptr inbounds float, ptr %241, i64 %idxprom210
  %243 = load float, ptr %arrayidx211, align 4
  %244 = load ptr, ptr %XX, align 8
  %245 = load i32, ptr %lo, align 4
  %sub212 = sub nsw i32 0, %245
  %idxprom213 = sext i32 %sub212 to i64
  %arrayidx214 = getelementptr inbounds float, ptr %244, i64 %idxprom213
  %246 = load float, ptr %arrayidx214, align 4
  %add215 = fadd float %243, %246
  store float %add215, ptr %tXX, align 4
  %247 = load ptr, ptr %Y, align 8
  %248 = load i32, ptr %hi, align 4
  %idxprom216 = sext i32 %248 to i64
  %arrayidx217 = getelementptr inbounds float, ptr %247, i64 %idxprom216
  %249 = load float, ptr %arrayidx217, align 4
  %250 = load ptr, ptr %Y, align 8
  %251 = load i32, ptr %lo, align 4
  %sub218 = sub nsw i32 0, %251
  %idxprom219 = sext i32 %sub218 to i64
  %arrayidx220 = getelementptr inbounds float, ptr %250, i64 %idxprom219
  %252 = load float, ptr %arrayidx220, align 4
  %add221 = fadd float %249, %252
  store float %add221, ptr %tY, align 4
  %253 = load ptr, ptr %XY, align 8
  %254 = load i32, ptr %hi, align 4
  %idxprom222 = sext i32 %254 to i64
  %arrayidx223 = getelementptr inbounds float, ptr %253, i64 %idxprom222
  %255 = load float, ptr %arrayidx223, align 4
  %256 = load ptr, ptr %XY, align 8
  %257 = load i32, ptr %lo, align 4
  %sub224 = sub nsw i32 0, %257
  %idxprom225 = sext i32 %sub224 to i64
  %arrayidx226 = getelementptr inbounds float, ptr %256, i64 %idxprom225
  %258 = load float, ptr %arrayidx226, align 4
  %sub227 = fsub float %255, %258
  store float %sub227, ptr %tXY, align 4
  %259 = load float, ptr %tY, align 4
  %260 = load float, ptr %tXX, align 4
  %261 = load float, ptr %tX, align 4
  %262 = load float, ptr %tXY, align 4
  %mul229 = fmul float %261, %262
  %neg230 = fneg float %mul229
  %263 = call float @llvm.fmuladd.f32(float %259, float %260, float %neg230)
  store float %263, ptr %A, align 4
  %264 = load float, ptr %tN, align 4
  %265 = load float, ptr %tXY, align 4
  %266 = load float, ptr %tX, align 4
  %267 = load float, ptr %tY, align 4
  %mul232 = fmul float %266, %267
  %neg233 = fneg float %mul232
  %268 = call float @llvm.fmuladd.f32(float %264, float %265, float %neg233)
  store float %268, ptr %B, align 4
  %269 = load float, ptr %tN, align 4
  %270 = load float, ptr %tXX, align 4
  %271 = load float, ptr %tX, align 4
  %272 = load float, ptr %tX, align 4
  %mul235 = fmul float %271, %272
  %neg236 = fneg float %mul235
  %273 = call float @llvm.fmuladd.f32(float %269, float %270, float %neg236)
  store float %273, ptr %D, align 4
  %274 = load float, ptr %A, align 4
  %275 = load float, ptr %x, align 4
  %276 = load float, ptr %B, align 4
  %277 = call float @llvm.fmuladd.f32(float %275, float %276, float %274)
  %278 = load float, ptr %D, align 4
  %div238 = fdiv float %277, %278
  store float %div238, ptr %R, align 4
  %279 = load float, ptr %R, align 4
  %280 = load float, ptr %offset.addr, align 4
  %sub239 = fsub float %279, %280
  %281 = load ptr, ptr %noise.addr, align 8
  %282 = load i32, ptr %i, align 4
  %idxprom240 = sext i32 %282 to i64
  %arrayidx241 = getelementptr inbounds float, ptr %281, i64 %idxprom240
  %283 = load float, ptr %arrayidx241, align 4
  %cmp242 = fcmp olt float %sub239, %283
  br i1 %cmp242, label %if.then244, label %if.end248

if.then244:                                       ; preds = %if.end197
  %284 = load float, ptr %R, align 4
  %285 = load float, ptr %offset.addr, align 4
  %sub245 = fsub float %284, %285
  %286 = load ptr, ptr %noise.addr, align 8
  %287 = load i32, ptr %i, align 4
  %idxprom246 = sext i32 %287 to i64
  %arrayidx247 = getelementptr inbounds float, ptr %286, i64 %idxprom246
  store float %sub245, ptr %arrayidx247, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.then244, %if.end197
  br label %for.inc249

for.inc249:                                       ; preds = %if.end248
  %288 = load i32, ptr %i, align 4
  %inc250 = add nsw i32 %288, 1
  store i32 %inc250, ptr %i, align 4
  %289 = load float, ptr %x, align 4
  %add251 = fadd float %289, 1.000000e+00
  store float %add251, ptr %x, align 4
  br label %for.cond190

for.end252:                                       ; preds = %if.then196
  br label %for.cond253

for.cond253:                                      ; preds = %for.inc307, %for.end252
  %290 = load i32, ptr %i, align 4
  %291 = load i32, ptr %fixed.addr, align 4
  %div254 = sdiv i32 %291, 2
  %add255 = add nsw i32 %290, %div254
  store i32 %add255, ptr %hi, align 4
  %292 = load i32, ptr %hi, align 4
  %293 = load i32, ptr %fixed.addr, align 4
  %sub256 = sub nsw i32 %292, %293
  store i32 %sub256, ptr %lo, align 4
  %294 = load i32, ptr %hi, align 4
  %295 = load i32, ptr %n.addr, align 4
  %cmp257 = icmp sge i32 %294, %295
  br i1 %cmp257, label %if.then259, label %if.end260

if.then259:                                       ; preds = %for.cond253
  br label %for.end310

if.end260:                                        ; preds = %for.cond253
  %296 = load ptr, ptr %N, align 8
  %297 = load i32, ptr %hi, align 4
  %idxprom261 = sext i32 %297 to i64
  %arrayidx262 = getelementptr inbounds float, ptr %296, i64 %idxprom261
  %298 = load float, ptr %arrayidx262, align 4
  %299 = load ptr, ptr %N, align 8
  %300 = load i32, ptr %lo, align 4
  %idxprom263 = sext i32 %300 to i64
  %arrayidx264 = getelementptr inbounds float, ptr %299, i64 %idxprom263
  %301 = load float, ptr %arrayidx264, align 4
  %sub265 = fsub float %298, %301
  store float %sub265, ptr %tN, align 4
  %302 = load ptr, ptr %X, align 8
  %303 = load i32, ptr %hi, align 4
  %idxprom266 = sext i32 %303 to i64
  %arrayidx267 = getelementptr inbounds float, ptr %302, i64 %idxprom266
  %304 = load float, ptr %arrayidx267, align 4
  %305 = load ptr, ptr %X, align 8
  %306 = load i32, ptr %lo, align 4
  %idxprom268 = sext i32 %306 to i64
  %arrayidx269 = getelementptr inbounds float, ptr %305, i64 %idxprom268
  %307 = load float, ptr %arrayidx269, align 4
  %sub270 = fsub float %304, %307
  store float %sub270, ptr %tX, align 4
  %308 = load ptr, ptr %XX, align 8
  %309 = load i32, ptr %hi, align 4
  %idxprom271 = sext i32 %309 to i64
  %arrayidx272 = getelementptr inbounds float, ptr %308, i64 %idxprom271
  %310 = load float, ptr %arrayidx272, align 4
  %311 = load ptr, ptr %XX, align 8
  %312 = load i32, ptr %lo, align 4
  %idxprom273 = sext i32 %312 to i64
  %arrayidx274 = getelementptr inbounds float, ptr %311, i64 %idxprom273
  %313 = load float, ptr %arrayidx274, align 4
  %sub275 = fsub float %310, %313
  store float %sub275, ptr %tXX, align 4
  %314 = load ptr, ptr %Y, align 8
  %315 = load i32, ptr %hi, align 4
  %idxprom276 = sext i32 %315 to i64
  %arrayidx277 = getelementptr inbounds float, ptr %314, i64 %idxprom276
  %316 = load float, ptr %arrayidx277, align 4
  %317 = load ptr, ptr %Y, align 8
  %318 = load i32, ptr %lo, align 4
  %idxprom278 = sext i32 %318 to i64
  %arrayidx279 = getelementptr inbounds float, ptr %317, i64 %idxprom278
  %319 = load float, ptr %arrayidx279, align 4
  %sub280 = fsub float %316, %319
  store float %sub280, ptr %tY, align 4
  %320 = load ptr, ptr %XY, align 8
  %321 = load i32, ptr %hi, align 4
  %idxprom281 = sext i32 %321 to i64
  %arrayidx282 = getelementptr inbounds float, ptr %320, i64 %idxprom281
  %322 = load float, ptr %arrayidx282, align 4
  %323 = load ptr, ptr %XY, align 8
  %324 = load i32, ptr %lo, align 4
  %idxprom283 = sext i32 %324 to i64
  %arrayidx284 = getelementptr inbounds float, ptr %323, i64 %idxprom283
  %325 = load float, ptr %arrayidx284, align 4
  %sub285 = fsub float %322, %325
  store float %sub285, ptr %tXY, align 4
  %326 = load float, ptr %tY, align 4
  %327 = load float, ptr %tXX, align 4
  %328 = load float, ptr %tX, align 4
  %329 = load float, ptr %tXY, align 4
  %mul287 = fmul float %328, %329
  %neg288 = fneg float %mul287
  %330 = call float @llvm.fmuladd.f32(float %326, float %327, float %neg288)
  store float %330, ptr %A, align 4
  %331 = load float, ptr %tN, align 4
  %332 = load float, ptr %tXY, align 4
  %333 = load float, ptr %tX, align 4
  %334 = load float, ptr %tY, align 4
  %mul290 = fmul float %333, %334
  %neg291 = fneg float %mul290
  %335 = call float @llvm.fmuladd.f32(float %331, float %332, float %neg291)
  store float %335, ptr %B, align 4
  %336 = load float, ptr %tN, align 4
  %337 = load float, ptr %tXX, align 4
  %338 = load float, ptr %tX, align 4
  %339 = load float, ptr %tX, align 4
  %mul293 = fmul float %338, %339
  %neg294 = fneg float %mul293
  %340 = call float @llvm.fmuladd.f32(float %336, float %337, float %neg294)
  store float %340, ptr %D, align 4
  %341 = load float, ptr %A, align 4
  %342 = load float, ptr %x, align 4
  %343 = load float, ptr %B, align 4
  %344 = call float @llvm.fmuladd.f32(float %342, float %343, float %341)
  %345 = load float, ptr %D, align 4
  %div296 = fdiv float %344, %345
  store float %div296, ptr %R, align 4
  %346 = load float, ptr %R, align 4
  %347 = load float, ptr %offset.addr, align 4
  %sub297 = fsub float %346, %347
  %348 = load ptr, ptr %noise.addr, align 8
  %349 = load i32, ptr %i, align 4
  %idxprom298 = sext i32 %349 to i64
  %arrayidx299 = getelementptr inbounds float, ptr %348, i64 %idxprom298
  %350 = load float, ptr %arrayidx299, align 4
  %cmp300 = fcmp olt float %sub297, %350
  br i1 %cmp300, label %if.then302, label %if.end306

if.then302:                                       ; preds = %if.end260
  %351 = load float, ptr %R, align 4
  %352 = load float, ptr %offset.addr, align 4
  %sub303 = fsub float %351, %352
  %353 = load ptr, ptr %noise.addr, align 8
  %354 = load i32, ptr %i, align 4
  %idxprom304 = sext i32 %354 to i64
  %arrayidx305 = getelementptr inbounds float, ptr %353, i64 %idxprom304
  store float %sub303, ptr %arrayidx305, align 4
  br label %if.end306

if.end306:                                        ; preds = %if.then302, %if.end260
  br label %for.inc307

for.inc307:                                       ; preds = %if.end306
  %355 = load i32, ptr %i, align 4
  %inc308 = add nsw i32 %355, 1
  store i32 %inc308, ptr %i, align 4
  %356 = load float, ptr %x, align 4
  %add309 = fadd float %356, 1.000000e+00
  store float %add309, ptr %x, align 4
  br label %for.cond253

for.end310:                                       ; preds = %if.then259
  br label %for.cond311

for.cond311:                                      ; preds = %for.inc327, %for.end310
  %357 = load i32, ptr %i, align 4
  %358 = load i32, ptr %n.addr, align 4
  %cmp312 = icmp slt i32 %357, %358
  br i1 %cmp312, label %for.body314, label %for.end330

for.body314:                                      ; preds = %for.cond311
  %359 = load float, ptr %A, align 4
  %360 = load float, ptr %x, align 4
  %361 = load float, ptr %B, align 4
  %362 = call float @llvm.fmuladd.f32(float %360, float %361, float %359)
  %363 = load float, ptr %D, align 4
  %div316 = fdiv float %362, %363
  store float %div316, ptr %R, align 4
  %364 = load float, ptr %R, align 4
  %365 = load float, ptr %offset.addr, align 4
  %sub317 = fsub float %364, %365
  %366 = load ptr, ptr %noise.addr, align 8
  %367 = load i32, ptr %i, align 4
  %idxprom318 = sext i32 %367 to i64
  %arrayidx319 = getelementptr inbounds float, ptr %366, i64 %idxprom318
  %368 = load float, ptr %arrayidx319, align 4
  %cmp320 = fcmp olt float %sub317, %368
  br i1 %cmp320, label %if.then322, label %if.end326

if.then322:                                       ; preds = %for.body314
  %369 = load float, ptr %R, align 4
  %370 = load float, ptr %offset.addr, align 4
  %sub323 = fsub float %369, %370
  %371 = load ptr, ptr %noise.addr, align 8
  %372 = load i32, ptr %i, align 4
  %idxprom324 = sext i32 %372 to i64
  %arrayidx325 = getelementptr inbounds float, ptr %371, i64 %idxprom324
  store float %sub323, ptr %arrayidx325, align 4
  br label %if.end326

if.end326:                                        ; preds = %if.then322, %for.body314
  br label %for.inc327

for.inc327:                                       ; preds = %if.end326
  %373 = load i32, ptr %i, align 4
  %inc328 = add nsw i32 %373, 1
  store i32 %inc328, ptr %i, align 4
  %374 = load float, ptr %x, align 4
  %add329 = fadd float %374, 1.000000e+00
  store float %add329, ptr %x, align 4
  br label %for.cond311, !llvm.loop !9

for.end330:                                       ; preds = %for.cond311, %if.then188
  ret void
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
