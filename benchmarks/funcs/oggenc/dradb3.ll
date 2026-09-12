; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dradb3.taur = external hidden global float, align 4
@dradb3.taui = external hidden global float, align 4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @dradb3(i32 noundef %ido, i32 noundef %l1, ptr noundef %cc, ptr noundef %ch, ptr noundef %wa1, ptr noundef %wa2) #1 {
entry:
  %ido.addr = alloca i32, align 4
  %l1.addr = alloca i32, align 4
  %cc.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  %wa1.addr = alloca ptr, align 8
  %wa2.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %t4 = alloca i32, align 4
  %t5 = alloca i32, align 4
  %t6 = alloca i32, align 4
  %t7 = alloca i32, align 4
  %t8 = alloca i32, align 4
  %t9 = alloca i32, align 4
  %t10 = alloca i32, align 4
  %ci2 = alloca float, align 4
  %ci3 = alloca float, align 4
  %di2 = alloca float, align 4
  %di3 = alloca float, align 4
  %cr2 = alloca float, align 4
  %cr3 = alloca float, align 4
  %dr2 = alloca float, align 4
  %dr3 = alloca float, align 4
  %ti2 = alloca float, align 4
  %tr2 = alloca float, align 4
  store i32 %ido, ptr %ido.addr, align 4
  store i32 %l1, ptr %l1.addr, align 4
  store ptr %cc, ptr %cc.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  store ptr %wa1, ptr %wa1.addr, align 8
  store ptr %wa2, ptr %wa2.addr, align 8
  %0 = load i32, ptr %l1.addr, align 4
  %1 = load i32, ptr %ido.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, ptr %t0, align 4
  store i32 0, ptr %t1, align 4
  %2 = load i32, ptr %t0, align 4
  %shl = shl i32 %2, 1
  store i32 %shl, ptr %t2, align 4
  %3 = load i32, ptr %ido.addr, align 4
  %shl1 = shl i32 %3, 1
  store i32 %shl1, ptr %t3, align 4
  %4 = load i32, ptr %ido.addr, align 4
  %5 = load i32, ptr %ido.addr, align 4
  %shl2 = shl i32 %5, 1
  %add = add nsw i32 %4, %shl2
  store i32 %add, ptr %t4, align 4
  store i32 0, ptr %t5, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %k, align 4
  %7 = load i32, ptr %l1.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cc.addr, align 8
  %9 = load i32, ptr %t3, align 4
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds float, ptr %8, i64 %idxprom
  %10 = load float, ptr %arrayidx, align 4
  %11 = load ptr, ptr %cc.addr, align 8
  %12 = load i32, ptr %t3, align 4
  %sub3 = sub nsw i32 %12, 1
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds float, ptr %11, i64 %idxprom4
  %13 = load float, ptr %arrayidx5, align 4
  %add6 = fadd float %10, %13
  store float %add6, ptr %tr2, align 4
  %14 = load ptr, ptr %cc.addr, align 8
  %15 = load i32, ptr %t5, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds float, ptr %14, i64 %idxprom7
  %16 = load float, ptr %arrayidx8, align 4
  %17 = load float, ptr @dradb3.taur, align 4
  %18 = load float, ptr %tr2, align 4
  %19 = call float @llvm.fmuladd.f32(float %17, float %18, float %16)
  store float %19, ptr %cr2, align 4
  %20 = load ptr, ptr %cc.addr, align 8
  %21 = load i32, ptr %t5, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds float, ptr %20, i64 %idxprom10
  %22 = load float, ptr %arrayidx11, align 4
  %23 = load float, ptr %tr2, align 4
  %add12 = fadd float %22, %23
  %24 = load ptr, ptr %ch.addr, align 8
  %25 = load i32, ptr %t1, align 4
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds float, ptr %24, i64 %idxprom13
  store float %add12, ptr %arrayidx14, align 4
  %26 = load float, ptr @dradb3.taui, align 4
  %27 = load ptr, ptr %cc.addr, align 8
  %28 = load i32, ptr %t3, align 4
  %idxprom15 = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %27, i64 %idxprom15
  %29 = load float, ptr %arrayidx16, align 4
  %30 = load ptr, ptr %cc.addr, align 8
  %31 = load i32, ptr %t3, align 4
  %idxprom17 = sext i32 %31 to i64
  %arrayidx18 = getelementptr inbounds float, ptr %30, i64 %idxprom17
  %32 = load float, ptr %arrayidx18, align 4
  %add19 = fadd float %29, %32
  %mul20 = fmul float %26, %add19
  store float %mul20, ptr %ci3, align 4
  %33 = load float, ptr %cr2, align 4
  %34 = load float, ptr %ci3, align 4
  %sub21 = fsub float %33, %34
  %35 = load ptr, ptr %ch.addr, align 8
  %36 = load i32, ptr %t1, align 4
  %37 = load i32, ptr %t0, align 4
  %add22 = add nsw i32 %36, %37
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %35, i64 %idxprom23
  store float %sub21, ptr %arrayidx24, align 4
  %38 = load float, ptr %cr2, align 4
  %39 = load float, ptr %ci3, align 4
  %add25 = fadd float %38, %39
  %40 = load ptr, ptr %ch.addr, align 8
  %41 = load i32, ptr %t1, align 4
  %42 = load i32, ptr %t2, align 4
  %add26 = add nsw i32 %41, %42
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %40, i64 %idxprom27
  store float %add25, ptr %arrayidx28, align 4
  %43 = load i32, ptr %ido.addr, align 4
  %44 = load i32, ptr %t1, align 4
  %add29 = add nsw i32 %44, %43
  store i32 %add29, ptr %t1, align 4
  %45 = load i32, ptr %t4, align 4
  %46 = load i32, ptr %t3, align 4
  %add30 = add nsw i32 %46, %45
  store i32 %add30, ptr %t3, align 4
  %47 = load i32, ptr %t4, align 4
  %48 = load i32, ptr %t5, align 4
  %add31 = add nsw i32 %48, %47
  store i32 %add31, ptr %t5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, ptr %k, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %50 = load i32, ptr %ido.addr, align 4
  %cmp32 = icmp eq i32 %50, 1
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %for.end149

if.end:                                           ; preds = %for.end
  store i32 0, ptr %t1, align 4
  %51 = load i32, ptr %ido.addr, align 4
  %shl33 = shl i32 %51, 1
  store i32 %shl33, ptr %t3, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc147, %if.end
  %52 = load i32, ptr %k, align 4
  %53 = load i32, ptr %l1.addr, align 4
  %cmp35 = icmp slt i32 %52, %53
  br i1 %cmp35, label %for.body36, label %for.end149

for.body36:                                       ; preds = %for.cond34
  %54 = load i32, ptr %t1, align 4
  %55 = load i32, ptr %t1, align 4
  %shl37 = shl i32 %55, 1
  %add38 = add nsw i32 %54, %shl37
  store i32 %add38, ptr %t7, align 4
  %56 = load i32, ptr %t7, align 4
  %57 = load i32, ptr %t3, align 4
  %add39 = add nsw i32 %56, %57
  store i32 %add39, ptr %t5, align 4
  store i32 %add39, ptr %t6, align 4
  %58 = load i32, ptr %t1, align 4
  store i32 %58, ptr %t8, align 4
  %59 = load i32, ptr %t1, align 4
  %60 = load i32, ptr %t0, align 4
  %add40 = add nsw i32 %59, %60
  store i32 %add40, ptr %t9, align 4
  %61 = load i32, ptr %t0, align 4
  %add41 = add nsw i32 %add40, %61
  store i32 %add41, ptr %t10, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc143, %for.body36
  %62 = load i32, ptr %i, align 4
  %63 = load i32, ptr %ido.addr, align 4
  %cmp43 = icmp slt i32 %62, %63
  br i1 %cmp43, label %for.body44, label %for.end145

for.body44:                                       ; preds = %for.cond42
  %64 = load i32, ptr %t5, align 4
  %add45 = add nsw i32 %64, 2
  store i32 %add45, ptr %t5, align 4
  %65 = load i32, ptr %t6, align 4
  %sub46 = sub nsw i32 %65, 2
  store i32 %sub46, ptr %t6, align 4
  %66 = load i32, ptr %t7, align 4
  %add47 = add nsw i32 %66, 2
  store i32 %add47, ptr %t7, align 4
  %67 = load i32, ptr %t8, align 4
  %add48 = add nsw i32 %67, 2
  store i32 %add48, ptr %t8, align 4
  %68 = load i32, ptr %t9, align 4
  %add49 = add nsw i32 %68, 2
  store i32 %add49, ptr %t9, align 4
  %69 = load i32, ptr %t10, align 4
  %add50 = add nsw i32 %69, 2
  store i32 %add50, ptr %t10, align 4
  %70 = load ptr, ptr %cc.addr, align 8
  %71 = load i32, ptr %t5, align 4
  %sub51 = sub nsw i32 %71, 1
  %idxprom52 = sext i32 %sub51 to i64
  %arrayidx53 = getelementptr inbounds float, ptr %70, i64 %idxprom52
  %72 = load float, ptr %arrayidx53, align 4
  %73 = load ptr, ptr %cc.addr, align 8
  %74 = load i32, ptr %t6, align 4
  %sub54 = sub nsw i32 %74, 1
  %idxprom55 = sext i32 %sub54 to i64
  %arrayidx56 = getelementptr inbounds float, ptr %73, i64 %idxprom55
  %75 = load float, ptr %arrayidx56, align 4
  %add57 = fadd float %72, %75
  store float %add57, ptr %tr2, align 4
  %76 = load ptr, ptr %cc.addr, align 8
  %77 = load i32, ptr %t7, align 4
  %sub58 = sub nsw i32 %77, 1
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds float, ptr %76, i64 %idxprom59
  %78 = load float, ptr %arrayidx60, align 4
  %79 = load float, ptr @dradb3.taur, align 4
  %80 = load float, ptr %tr2, align 4
  %81 = call float @llvm.fmuladd.f32(float %79, float %80, float %78)
  store float %81, ptr %cr2, align 4
  %82 = load ptr, ptr %cc.addr, align 8
  %83 = load i32, ptr %t7, align 4
  %sub62 = sub nsw i32 %83, 1
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %82, i64 %idxprom63
  %84 = load float, ptr %arrayidx64, align 4
  %85 = load float, ptr %tr2, align 4
  %add65 = fadd float %84, %85
  %86 = load ptr, ptr %ch.addr, align 8
  %87 = load i32, ptr %t8, align 4
  %sub66 = sub nsw i32 %87, 1
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %86, i64 %idxprom67
  store float %add65, ptr %arrayidx68, align 4
  %88 = load ptr, ptr %cc.addr, align 8
  %89 = load i32, ptr %t5, align 4
  %idxprom69 = sext i32 %89 to i64
  %arrayidx70 = getelementptr inbounds float, ptr %88, i64 %idxprom69
  %90 = load float, ptr %arrayidx70, align 4
  %91 = load ptr, ptr %cc.addr, align 8
  %92 = load i32, ptr %t6, align 4
  %idxprom71 = sext i32 %92 to i64
  %arrayidx72 = getelementptr inbounds float, ptr %91, i64 %idxprom71
  %93 = load float, ptr %arrayidx72, align 4
  %sub73 = fsub float %90, %93
  store float %sub73, ptr %ti2, align 4
  %94 = load ptr, ptr %cc.addr, align 8
  %95 = load i32, ptr %t7, align 4
  %idxprom74 = sext i32 %95 to i64
  %arrayidx75 = getelementptr inbounds float, ptr %94, i64 %idxprom74
  %96 = load float, ptr %arrayidx75, align 4
  %97 = load float, ptr @dradb3.taur, align 4
  %98 = load float, ptr %ti2, align 4
  %99 = call float @llvm.fmuladd.f32(float %97, float %98, float %96)
  store float %99, ptr %ci2, align 4
  %100 = load ptr, ptr %cc.addr, align 8
  %101 = load i32, ptr %t7, align 4
  %idxprom77 = sext i32 %101 to i64
  %arrayidx78 = getelementptr inbounds float, ptr %100, i64 %idxprom77
  %102 = load float, ptr %arrayidx78, align 4
  %103 = load float, ptr %ti2, align 4
  %add79 = fadd float %102, %103
  %104 = load ptr, ptr %ch.addr, align 8
  %105 = load i32, ptr %t8, align 4
  %idxprom80 = sext i32 %105 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %104, i64 %idxprom80
  store float %add79, ptr %arrayidx81, align 4
  %106 = load float, ptr @dradb3.taui, align 4
  %107 = load ptr, ptr %cc.addr, align 8
  %108 = load i32, ptr %t5, align 4
  %sub82 = sub nsw i32 %108, 1
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds float, ptr %107, i64 %idxprom83
  %109 = load float, ptr %arrayidx84, align 4
  %110 = load ptr, ptr %cc.addr, align 8
  %111 = load i32, ptr %t6, align 4
  %sub85 = sub nsw i32 %111, 1
  %idxprom86 = sext i32 %sub85 to i64
  %arrayidx87 = getelementptr inbounds float, ptr %110, i64 %idxprom86
  %112 = load float, ptr %arrayidx87, align 4
  %sub88 = fsub float %109, %112
  %mul89 = fmul float %106, %sub88
  store float %mul89, ptr %cr3, align 4
  %113 = load float, ptr @dradb3.taui, align 4
  %114 = load ptr, ptr %cc.addr, align 8
  %115 = load i32, ptr %t5, align 4
  %idxprom90 = sext i32 %115 to i64
  %arrayidx91 = getelementptr inbounds float, ptr %114, i64 %idxprom90
  %116 = load float, ptr %arrayidx91, align 4
  %117 = load ptr, ptr %cc.addr, align 8
  %118 = load i32, ptr %t6, align 4
  %idxprom92 = sext i32 %118 to i64
  %arrayidx93 = getelementptr inbounds float, ptr %117, i64 %idxprom92
  %119 = load float, ptr %arrayidx93, align 4
  %add94 = fadd float %116, %119
  %mul95 = fmul float %113, %add94
  store float %mul95, ptr %ci3, align 4
  %120 = load float, ptr %cr2, align 4
  %121 = load float, ptr %ci3, align 4
  %sub96 = fsub float %120, %121
  store float %sub96, ptr %dr2, align 4
  %122 = load float, ptr %cr2, align 4
  %123 = load float, ptr %ci3, align 4
  %add97 = fadd float %122, %123
  store float %add97, ptr %dr3, align 4
  %124 = load float, ptr %ci2, align 4
  %125 = load float, ptr %cr3, align 4
  %add98 = fadd float %124, %125
  store float %add98, ptr %di2, align 4
  %126 = load float, ptr %ci2, align 4
  %127 = load float, ptr %cr3, align 4
  %sub99 = fsub float %126, %127
  store float %sub99, ptr %di3, align 4
  %128 = load ptr, ptr %wa1.addr, align 8
  %129 = load i32, ptr %i, align 4
  %sub100 = sub nsw i32 %129, 2
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds float, ptr %128, i64 %idxprom101
  %130 = load float, ptr %arrayidx102, align 4
  %131 = load float, ptr %dr2, align 4
  %132 = load ptr, ptr %wa1.addr, align 8
  %133 = load i32, ptr %i, align 4
  %sub104 = sub nsw i32 %133, 1
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds float, ptr %132, i64 %idxprom105
  %134 = load float, ptr %arrayidx106, align 4
  %135 = load float, ptr %di2, align 4
  %mul107 = fmul float %134, %135
  %neg = fneg float %mul107
  %136 = call float @llvm.fmuladd.f32(float %130, float %131, float %neg)
  %137 = load ptr, ptr %ch.addr, align 8
  %138 = load i32, ptr %t9, align 4
  %sub108 = sub nsw i32 %138, 1
  %idxprom109 = sext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds float, ptr %137, i64 %idxprom109
  store float %136, ptr %arrayidx110, align 4
  %139 = load ptr, ptr %wa1.addr, align 8
  %140 = load i32, ptr %i, align 4
  %sub111 = sub nsw i32 %140, 2
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds float, ptr %139, i64 %idxprom112
  %141 = load float, ptr %arrayidx113, align 4
  %142 = load float, ptr %di2, align 4
  %143 = load ptr, ptr %wa1.addr, align 8
  %144 = load i32, ptr %i, align 4
  %sub115 = sub nsw i32 %144, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds float, ptr %143, i64 %idxprom116
  %145 = load float, ptr %arrayidx117, align 4
  %146 = load float, ptr %dr2, align 4
  %mul118 = fmul float %145, %146
  %147 = call float @llvm.fmuladd.f32(float %141, float %142, float %mul118)
  %148 = load ptr, ptr %ch.addr, align 8
  %149 = load i32, ptr %t9, align 4
  %idxprom119 = sext i32 %149 to i64
  %arrayidx120 = getelementptr inbounds float, ptr %148, i64 %idxprom119
  store float %147, ptr %arrayidx120, align 4
  %150 = load ptr, ptr %wa2.addr, align 8
  %151 = load i32, ptr %i, align 4
  %sub121 = sub nsw i32 %151, 2
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %150, i64 %idxprom122
  %152 = load float, ptr %arrayidx123, align 4
  %153 = load float, ptr %dr3, align 4
  %154 = load ptr, ptr %wa2.addr, align 8
  %155 = load i32, ptr %i, align 4
  %sub125 = sub nsw i32 %155, 1
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds float, ptr %154, i64 %idxprom126
  %156 = load float, ptr %arrayidx127, align 4
  %157 = load float, ptr %di3, align 4
  %mul128 = fmul float %156, %157
  %neg129 = fneg float %mul128
  %158 = call float @llvm.fmuladd.f32(float %152, float %153, float %neg129)
  %159 = load ptr, ptr %ch.addr, align 8
  %160 = load i32, ptr %t10, align 4
  %sub130 = sub nsw i32 %160, 1
  %idxprom131 = sext i32 %sub130 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %159, i64 %idxprom131
  store float %158, ptr %arrayidx132, align 4
  %161 = load ptr, ptr %wa2.addr, align 8
  %162 = load i32, ptr %i, align 4
  %sub133 = sub nsw i32 %162, 2
  %idxprom134 = sext i32 %sub133 to i64
  %arrayidx135 = getelementptr inbounds float, ptr %161, i64 %idxprom134
  %163 = load float, ptr %arrayidx135, align 4
  %164 = load float, ptr %di3, align 4
  %165 = load ptr, ptr %wa2.addr, align 8
  %166 = load i32, ptr %i, align 4
  %sub137 = sub nsw i32 %166, 1
  %idxprom138 = sext i32 %sub137 to i64
  %arrayidx139 = getelementptr inbounds float, ptr %165, i64 %idxprom138
  %167 = load float, ptr %arrayidx139, align 4
  %168 = load float, ptr %dr3, align 4
  %mul140 = fmul float %167, %168
  %169 = call float @llvm.fmuladd.f32(float %163, float %164, float %mul140)
  %170 = load ptr, ptr %ch.addr, align 8
  %171 = load i32, ptr %t10, align 4
  %idxprom141 = sext i32 %171 to i64
  %arrayidx142 = getelementptr inbounds float, ptr %170, i64 %idxprom141
  store float %169, ptr %arrayidx142, align 4
  br label %for.inc143

for.inc143:                                       ; preds = %for.body44
  %172 = load i32, ptr %i, align 4
  %add144 = add nsw i32 %172, 2
  store i32 %add144, ptr %i, align 4
  br label %for.cond42, !llvm.loop !8

for.end145:                                       ; preds = %for.cond42
  %173 = load i32, ptr %ido.addr, align 4
  %174 = load i32, ptr %t1, align 4
  %add146 = add nsw i32 %174, %173
  store i32 %add146, ptr %t1, align 4
  br label %for.inc147

for.inc147:                                       ; preds = %for.end145
  %175 = load i32, ptr %k, align 4
  %inc148 = add nsw i32 %175, 1
  store i32 %inc148, ptr %k, align 4
  br label %for.cond34, !llvm.loop !9

for.end149:                                       ; preds = %for.cond34, %if.then
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
