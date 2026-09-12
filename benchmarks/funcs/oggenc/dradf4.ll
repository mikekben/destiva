; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dradf4.hsqt2 = external hidden global float, align 4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @dradf4(i32 noundef %ido, i32 noundef %l1, ptr noundef %cc, ptr noundef %ch, ptr noundef %wa1, ptr noundef %wa2, ptr noundef %wa3) #1 {
entry:
  %ido.addr = alloca i32, align 4
  %l1.addr = alloca i32, align 4
  %cc.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  %wa1.addr = alloca ptr, align 8
  %wa2.addr = alloca ptr, align 8
  %wa3.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %t0 = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %t4 = alloca i32, align 4
  %t5 = alloca i32, align 4
  %t6 = alloca i32, align 4
  %ci2 = alloca float, align 4
  %ci3 = alloca float, align 4
  %ci4 = alloca float, align 4
  %cr2 = alloca float, align 4
  %cr3 = alloca float, align 4
  %cr4 = alloca float, align 4
  %ti1 = alloca float, align 4
  %ti2 = alloca float, align 4
  %ti3 = alloca float, align 4
  %ti4 = alloca float, align 4
  %tr1 = alloca float, align 4
  %tr2 = alloca float, align 4
  %tr3 = alloca float, align 4
  %tr4 = alloca float, align 4
  store i32 %ido, ptr %ido.addr, align 4
  store i32 %l1, ptr %l1.addr, align 4
  store ptr %cc, ptr %cc.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  store ptr %wa1, ptr %wa1.addr, align 8
  store ptr %wa2, ptr %wa2.addr, align 8
  store ptr %wa3, ptr %wa3.addr, align 8
  %0 = load i32, ptr %l1.addr, align 4
  %1 = load i32, ptr %ido.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, ptr %t0, align 4
  %2 = load i32, ptr %t0, align 4
  store i32 %2, ptr %t1, align 4
  %3 = load i32, ptr %t1, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, ptr %t4, align 4
  %4 = load i32, ptr %t1, align 4
  %5 = load i32, ptr %t1, align 4
  %shl1 = shl i32 %5, 1
  %add = add nsw i32 %4, %shl1
  store i32 %add, ptr %t2, align 4
  store i32 0, ptr %t3, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %k, align 4
  %7 = load i32, ptr %l1.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %cc.addr, align 8
  %9 = load i32, ptr %t1, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds float, ptr %8, i64 %idxprom
  %10 = load float, ptr %arrayidx, align 4
  %11 = load ptr, ptr %cc.addr, align 8
  %12 = load i32, ptr %t2, align 4
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds float, ptr %11, i64 %idxprom2
  %13 = load float, ptr %arrayidx3, align 4
  %add4 = fadd float %10, %13
  store float %add4, ptr %tr1, align 4
  %14 = load ptr, ptr %cc.addr, align 8
  %15 = load i32, ptr %t3, align 4
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds float, ptr %14, i64 %idxprom5
  %16 = load float, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %cc.addr, align 8
  %18 = load i32, ptr %t4, align 4
  %idxprom7 = sext i32 %18 to i64
  %arrayidx8 = getelementptr inbounds float, ptr %17, i64 %idxprom7
  %19 = load float, ptr %arrayidx8, align 4
  %add9 = fadd float %16, %19
  store float %add9, ptr %tr2, align 4
  %20 = load float, ptr %tr1, align 4
  %21 = load float, ptr %tr2, align 4
  %add10 = fadd float %20, %21
  %22 = load ptr, ptr %ch.addr, align 8
  %23 = load i32, ptr %t3, align 4
  %shl11 = shl i32 %23, 2
  store i32 %shl11, ptr %t5, align 4
  %idxprom12 = sext i32 %shl11 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %22, i64 %idxprom12
  store float %add10, ptr %arrayidx13, align 4
  %24 = load float, ptr %tr2, align 4
  %25 = load float, ptr %tr1, align 4
  %sub = fsub float %24, %25
  %26 = load ptr, ptr %ch.addr, align 8
  %27 = load i32, ptr %ido.addr, align 4
  %shl14 = shl i32 %27, 2
  %28 = load i32, ptr %t5, align 4
  %add15 = add nsw i32 %shl14, %28
  %sub16 = sub nsw i32 %add15, 1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds float, ptr %26, i64 %idxprom17
  store float %sub, ptr %arrayidx18, align 4
  %29 = load ptr, ptr %cc.addr, align 8
  %30 = load i32, ptr %t3, align 4
  %idxprom19 = sext i32 %30 to i64
  %arrayidx20 = getelementptr inbounds float, ptr %29, i64 %idxprom19
  %31 = load float, ptr %arrayidx20, align 4
  %32 = load ptr, ptr %cc.addr, align 8
  %33 = load i32, ptr %t4, align 4
  %idxprom21 = sext i32 %33 to i64
  %arrayidx22 = getelementptr inbounds float, ptr %32, i64 %idxprom21
  %34 = load float, ptr %arrayidx22, align 4
  %sub23 = fsub float %31, %34
  %35 = load ptr, ptr %ch.addr, align 8
  %36 = load i32, ptr %ido.addr, align 4
  %shl24 = shl i32 %36, 1
  %37 = load i32, ptr %t5, align 4
  %add25 = add nsw i32 %37, %shl24
  store i32 %add25, ptr %t5, align 4
  %sub26 = sub nsw i32 %add25, 1
  %idxprom27 = sext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %35, i64 %idxprom27
  store float %sub23, ptr %arrayidx28, align 4
  %38 = load ptr, ptr %cc.addr, align 8
  %39 = load i32, ptr %t2, align 4
  %idxprom29 = sext i32 %39 to i64
  %arrayidx30 = getelementptr inbounds float, ptr %38, i64 %idxprom29
  %40 = load float, ptr %arrayidx30, align 4
  %41 = load ptr, ptr %cc.addr, align 8
  %42 = load i32, ptr %t1, align 4
  %idxprom31 = sext i32 %42 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %41, i64 %idxprom31
  %43 = load float, ptr %arrayidx32, align 4
  %sub33 = fsub float %40, %43
  %44 = load ptr, ptr %ch.addr, align 8
  %45 = load i32, ptr %t5, align 4
  %idxprom34 = sext i32 %45 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %44, i64 %idxprom34
  store float %sub33, ptr %arrayidx35, align 4
  %46 = load i32, ptr %ido.addr, align 4
  %47 = load i32, ptr %t1, align 4
  %add36 = add nsw i32 %47, %46
  store i32 %add36, ptr %t1, align 4
  %48 = load i32, ptr %ido.addr, align 4
  %49 = load i32, ptr %t2, align 4
  %add37 = add nsw i32 %49, %48
  store i32 %add37, ptr %t2, align 4
  %50 = load i32, ptr %ido.addr, align 4
  %51 = load i32, ptr %t3, align 4
  %add38 = add nsw i32 %51, %50
  store i32 %add38, ptr %t3, align 4
  %52 = load i32, ptr %ido.addr, align 4
  %53 = load i32, ptr %t4, align 4
  %add39 = add nsw i32 %53, %52
  store i32 %add39, ptr %t4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, ptr %k, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %55 = load i32, ptr %ido.addr, align 4
  %cmp40 = icmp slt i32 %55, 2
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %for.end253

if.end:                                           ; preds = %for.end
  %56 = load i32, ptr %ido.addr, align 4
  %cmp41 = icmp eq i32 %56, 2
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end
  br label %L105

if.end43:                                         ; preds = %if.end
  store i32 0, ptr %t1, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc193, %if.end43
  %57 = load i32, ptr %k, align 4
  %58 = load i32, ptr %l1.addr, align 4
  %cmp45 = icmp slt i32 %57, %58
  br i1 %cmp45, label %for.body46, label %for.end195

for.body46:                                       ; preds = %for.cond44
  %59 = load i32, ptr %t1, align 4
  store i32 %59, ptr %t2, align 4
  %60 = load i32, ptr %t1, align 4
  %shl47 = shl i32 %60, 2
  store i32 %shl47, ptr %t4, align 4
  %61 = load i32, ptr %ido.addr, align 4
  %shl48 = shl i32 %61, 1
  store i32 %shl48, ptr %t6, align 4
  %62 = load i32, ptr %t4, align 4
  %add49 = add nsw i32 %shl48, %62
  store i32 %add49, ptr %t5, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc189, %for.body46
  %63 = load i32, ptr %i, align 4
  %64 = load i32, ptr %ido.addr, align 4
  %cmp51 = icmp slt i32 %63, %64
  br i1 %cmp51, label %for.body52, label %for.end191

for.body52:                                       ; preds = %for.cond50
  %65 = load i32, ptr %t2, align 4
  %add53 = add nsw i32 %65, 2
  store i32 %add53, ptr %t2, align 4
  store i32 %add53, ptr %t3, align 4
  %66 = load i32, ptr %t4, align 4
  %add54 = add nsw i32 %66, 2
  store i32 %add54, ptr %t4, align 4
  %67 = load i32, ptr %t5, align 4
  %sub55 = sub nsw i32 %67, 2
  store i32 %sub55, ptr %t5, align 4
  %68 = load i32, ptr %t0, align 4
  %69 = load i32, ptr %t3, align 4
  %add56 = add nsw i32 %69, %68
  store i32 %add56, ptr %t3, align 4
  %70 = load ptr, ptr %wa1.addr, align 8
  %71 = load i32, ptr %i, align 4
  %sub57 = sub nsw i32 %71, 2
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds float, ptr %70, i64 %idxprom58
  %72 = load float, ptr %arrayidx59, align 4
  %73 = load ptr, ptr %cc.addr, align 8
  %74 = load i32, ptr %t3, align 4
  %sub60 = sub nsw i32 %74, 1
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %73, i64 %idxprom61
  %75 = load float, ptr %arrayidx62, align 4
  %76 = load ptr, ptr %wa1.addr, align 8
  %77 = load i32, ptr %i, align 4
  %sub64 = sub nsw i32 %77, 1
  %idxprom65 = sext i32 %sub64 to i64
  %arrayidx66 = getelementptr inbounds float, ptr %76, i64 %idxprom65
  %78 = load float, ptr %arrayidx66, align 4
  %79 = load ptr, ptr %cc.addr, align 8
  %80 = load i32, ptr %t3, align 4
  %idxprom67 = sext i32 %80 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %79, i64 %idxprom67
  %81 = load float, ptr %arrayidx68, align 4
  %mul69 = fmul float %78, %81
  %82 = call float @llvm.fmuladd.f32(float %72, float %75, float %mul69)
  store float %82, ptr %cr2, align 4
  %83 = load ptr, ptr %wa1.addr, align 8
  %84 = load i32, ptr %i, align 4
  %sub70 = sub nsw i32 %84, 2
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds float, ptr %83, i64 %idxprom71
  %85 = load float, ptr %arrayidx72, align 4
  %86 = load ptr, ptr %cc.addr, align 8
  %87 = load i32, ptr %t3, align 4
  %idxprom73 = sext i32 %87 to i64
  %arrayidx74 = getelementptr inbounds float, ptr %86, i64 %idxprom73
  %88 = load float, ptr %arrayidx74, align 4
  %89 = load ptr, ptr %wa1.addr, align 8
  %90 = load i32, ptr %i, align 4
  %sub76 = sub nsw i32 %90, 1
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds float, ptr %89, i64 %idxprom77
  %91 = load float, ptr %arrayidx78, align 4
  %92 = load ptr, ptr %cc.addr, align 8
  %93 = load i32, ptr %t3, align 4
  %sub79 = sub nsw i32 %93, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %92, i64 %idxprom80
  %94 = load float, ptr %arrayidx81, align 4
  %mul82 = fmul float %91, %94
  %neg = fneg float %mul82
  %95 = call float @llvm.fmuladd.f32(float %85, float %88, float %neg)
  store float %95, ptr %ci2, align 4
  %96 = load i32, ptr %t0, align 4
  %97 = load i32, ptr %t3, align 4
  %add83 = add nsw i32 %97, %96
  store i32 %add83, ptr %t3, align 4
  %98 = load ptr, ptr %wa2.addr, align 8
  %99 = load i32, ptr %i, align 4
  %sub84 = sub nsw i32 %99, 2
  %idxprom85 = sext i32 %sub84 to i64
  %arrayidx86 = getelementptr inbounds float, ptr %98, i64 %idxprom85
  %100 = load float, ptr %arrayidx86, align 4
  %101 = load ptr, ptr %cc.addr, align 8
  %102 = load i32, ptr %t3, align 4
  %sub87 = sub nsw i32 %102, 1
  %idxprom88 = sext i32 %sub87 to i64
  %arrayidx89 = getelementptr inbounds float, ptr %101, i64 %idxprom88
  %103 = load float, ptr %arrayidx89, align 4
  %104 = load ptr, ptr %wa2.addr, align 8
  %105 = load i32, ptr %i, align 4
  %sub91 = sub nsw i32 %105, 1
  %idxprom92 = sext i32 %sub91 to i64
  %arrayidx93 = getelementptr inbounds float, ptr %104, i64 %idxprom92
  %106 = load float, ptr %arrayidx93, align 4
  %107 = load ptr, ptr %cc.addr, align 8
  %108 = load i32, ptr %t3, align 4
  %idxprom94 = sext i32 %108 to i64
  %arrayidx95 = getelementptr inbounds float, ptr %107, i64 %idxprom94
  %109 = load float, ptr %arrayidx95, align 4
  %mul96 = fmul float %106, %109
  %110 = call float @llvm.fmuladd.f32(float %100, float %103, float %mul96)
  store float %110, ptr %cr3, align 4
  %111 = load ptr, ptr %wa2.addr, align 8
  %112 = load i32, ptr %i, align 4
  %sub97 = sub nsw i32 %112, 2
  %idxprom98 = sext i32 %sub97 to i64
  %arrayidx99 = getelementptr inbounds float, ptr %111, i64 %idxprom98
  %113 = load float, ptr %arrayidx99, align 4
  %114 = load ptr, ptr %cc.addr, align 8
  %115 = load i32, ptr %t3, align 4
  %idxprom100 = sext i32 %115 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %114, i64 %idxprom100
  %116 = load float, ptr %arrayidx101, align 4
  %117 = load ptr, ptr %wa2.addr, align 8
  %118 = load i32, ptr %i, align 4
  %sub103 = sub nsw i32 %118, 1
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds float, ptr %117, i64 %idxprom104
  %119 = load float, ptr %arrayidx105, align 4
  %120 = load ptr, ptr %cc.addr, align 8
  %121 = load i32, ptr %t3, align 4
  %sub106 = sub nsw i32 %121, 1
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds float, ptr %120, i64 %idxprom107
  %122 = load float, ptr %arrayidx108, align 4
  %mul109 = fmul float %119, %122
  %neg110 = fneg float %mul109
  %123 = call float @llvm.fmuladd.f32(float %113, float %116, float %neg110)
  store float %123, ptr %ci3, align 4
  %124 = load i32, ptr %t0, align 4
  %125 = load i32, ptr %t3, align 4
  %add111 = add nsw i32 %125, %124
  store i32 %add111, ptr %t3, align 4
  %126 = load ptr, ptr %wa3.addr, align 8
  %127 = load i32, ptr %i, align 4
  %sub112 = sub nsw i32 %127, 2
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds float, ptr %126, i64 %idxprom113
  %128 = load float, ptr %arrayidx114, align 4
  %129 = load ptr, ptr %cc.addr, align 8
  %130 = load i32, ptr %t3, align 4
  %sub115 = sub nsw i32 %130, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds float, ptr %129, i64 %idxprom116
  %131 = load float, ptr %arrayidx117, align 4
  %132 = load ptr, ptr %wa3.addr, align 8
  %133 = load i32, ptr %i, align 4
  %sub119 = sub nsw i32 %133, 1
  %idxprom120 = sext i32 %sub119 to i64
  %arrayidx121 = getelementptr inbounds float, ptr %132, i64 %idxprom120
  %134 = load float, ptr %arrayidx121, align 4
  %135 = load ptr, ptr %cc.addr, align 8
  %136 = load i32, ptr %t3, align 4
  %idxprom122 = sext i32 %136 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %135, i64 %idxprom122
  %137 = load float, ptr %arrayidx123, align 4
  %mul124 = fmul float %134, %137
  %138 = call float @llvm.fmuladd.f32(float %128, float %131, float %mul124)
  store float %138, ptr %cr4, align 4
  %139 = load ptr, ptr %wa3.addr, align 8
  %140 = load i32, ptr %i, align 4
  %sub125 = sub nsw i32 %140, 2
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds float, ptr %139, i64 %idxprom126
  %141 = load float, ptr %arrayidx127, align 4
  %142 = load ptr, ptr %cc.addr, align 8
  %143 = load i32, ptr %t3, align 4
  %idxprom128 = sext i32 %143 to i64
  %arrayidx129 = getelementptr inbounds float, ptr %142, i64 %idxprom128
  %144 = load float, ptr %arrayidx129, align 4
  %145 = load ptr, ptr %wa3.addr, align 8
  %146 = load i32, ptr %i, align 4
  %sub131 = sub nsw i32 %146, 1
  %idxprom132 = sext i32 %sub131 to i64
  %arrayidx133 = getelementptr inbounds float, ptr %145, i64 %idxprom132
  %147 = load float, ptr %arrayidx133, align 4
  %148 = load ptr, ptr %cc.addr, align 8
  %149 = load i32, ptr %t3, align 4
  %sub134 = sub nsw i32 %149, 1
  %idxprom135 = sext i32 %sub134 to i64
  %arrayidx136 = getelementptr inbounds float, ptr %148, i64 %idxprom135
  %150 = load float, ptr %arrayidx136, align 4
  %mul137 = fmul float %147, %150
  %neg138 = fneg float %mul137
  %151 = call float @llvm.fmuladd.f32(float %141, float %144, float %neg138)
  store float %151, ptr %ci4, align 4
  %152 = load float, ptr %cr2, align 4
  %153 = load float, ptr %cr4, align 4
  %add139 = fadd float %152, %153
  store float %add139, ptr %tr1, align 4
  %154 = load float, ptr %cr4, align 4
  %155 = load float, ptr %cr2, align 4
  %sub140 = fsub float %154, %155
  store float %sub140, ptr %tr4, align 4
  %156 = load float, ptr %ci2, align 4
  %157 = load float, ptr %ci4, align 4
  %add141 = fadd float %156, %157
  store float %add141, ptr %ti1, align 4
  %158 = load float, ptr %ci2, align 4
  %159 = load float, ptr %ci4, align 4
  %sub142 = fsub float %158, %159
  store float %sub142, ptr %ti4, align 4
  %160 = load ptr, ptr %cc.addr, align 8
  %161 = load i32, ptr %t2, align 4
  %idxprom143 = sext i32 %161 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %160, i64 %idxprom143
  %162 = load float, ptr %arrayidx144, align 4
  %163 = load float, ptr %ci3, align 4
  %add145 = fadd float %162, %163
  store float %add145, ptr %ti2, align 4
  %164 = load ptr, ptr %cc.addr, align 8
  %165 = load i32, ptr %t2, align 4
  %idxprom146 = sext i32 %165 to i64
  %arrayidx147 = getelementptr inbounds float, ptr %164, i64 %idxprom146
  %166 = load float, ptr %arrayidx147, align 4
  %167 = load float, ptr %ci3, align 4
  %sub148 = fsub float %166, %167
  store float %sub148, ptr %ti3, align 4
  %168 = load ptr, ptr %cc.addr, align 8
  %169 = load i32, ptr %t2, align 4
  %sub149 = sub nsw i32 %169, 1
  %idxprom150 = sext i32 %sub149 to i64
  %arrayidx151 = getelementptr inbounds float, ptr %168, i64 %idxprom150
  %170 = load float, ptr %arrayidx151, align 4
  %171 = load float, ptr %cr3, align 4
  %add152 = fadd float %170, %171
  store float %add152, ptr %tr2, align 4
  %172 = load ptr, ptr %cc.addr, align 8
  %173 = load i32, ptr %t2, align 4
  %sub153 = sub nsw i32 %173, 1
  %idxprom154 = sext i32 %sub153 to i64
  %arrayidx155 = getelementptr inbounds float, ptr %172, i64 %idxprom154
  %174 = load float, ptr %arrayidx155, align 4
  %175 = load float, ptr %cr3, align 4
  %sub156 = fsub float %174, %175
  store float %sub156, ptr %tr3, align 4
  %176 = load float, ptr %tr1, align 4
  %177 = load float, ptr %tr2, align 4
  %add157 = fadd float %176, %177
  %178 = load ptr, ptr %ch.addr, align 8
  %179 = load i32, ptr %t4, align 4
  %sub158 = sub nsw i32 %179, 1
  %idxprom159 = sext i32 %sub158 to i64
  %arrayidx160 = getelementptr inbounds float, ptr %178, i64 %idxprom159
  store float %add157, ptr %arrayidx160, align 4
  %180 = load float, ptr %ti1, align 4
  %181 = load float, ptr %ti2, align 4
  %add161 = fadd float %180, %181
  %182 = load ptr, ptr %ch.addr, align 8
  %183 = load i32, ptr %t4, align 4
  %idxprom162 = sext i32 %183 to i64
  %arrayidx163 = getelementptr inbounds float, ptr %182, i64 %idxprom162
  store float %add161, ptr %arrayidx163, align 4
  %184 = load float, ptr %tr3, align 4
  %185 = load float, ptr %ti4, align 4
  %sub164 = fsub float %184, %185
  %186 = load ptr, ptr %ch.addr, align 8
  %187 = load i32, ptr %t5, align 4
  %sub165 = sub nsw i32 %187, 1
  %idxprom166 = sext i32 %sub165 to i64
  %arrayidx167 = getelementptr inbounds float, ptr %186, i64 %idxprom166
  store float %sub164, ptr %arrayidx167, align 4
  %188 = load float, ptr %tr4, align 4
  %189 = load float, ptr %ti3, align 4
  %sub168 = fsub float %188, %189
  %190 = load ptr, ptr %ch.addr, align 8
  %191 = load i32, ptr %t5, align 4
  %idxprom169 = sext i32 %191 to i64
  %arrayidx170 = getelementptr inbounds float, ptr %190, i64 %idxprom169
  store float %sub168, ptr %arrayidx170, align 4
  %192 = load float, ptr %ti4, align 4
  %193 = load float, ptr %tr3, align 4
  %add171 = fadd float %192, %193
  %194 = load ptr, ptr %ch.addr, align 8
  %195 = load i32, ptr %t4, align 4
  %196 = load i32, ptr %t6, align 4
  %add172 = add nsw i32 %195, %196
  %sub173 = sub nsw i32 %add172, 1
  %idxprom174 = sext i32 %sub173 to i64
  %arrayidx175 = getelementptr inbounds float, ptr %194, i64 %idxprom174
  store float %add171, ptr %arrayidx175, align 4
  %197 = load float, ptr %tr4, align 4
  %198 = load float, ptr %ti3, align 4
  %add176 = fadd float %197, %198
  %199 = load ptr, ptr %ch.addr, align 8
  %200 = load i32, ptr %t4, align 4
  %201 = load i32, ptr %t6, align 4
  %add177 = add nsw i32 %200, %201
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds float, ptr %199, i64 %idxprom178
  store float %add176, ptr %arrayidx179, align 4
  %202 = load float, ptr %tr2, align 4
  %203 = load float, ptr %tr1, align 4
  %sub180 = fsub float %202, %203
  %204 = load ptr, ptr %ch.addr, align 8
  %205 = load i32, ptr %t5, align 4
  %206 = load i32, ptr %t6, align 4
  %add181 = add nsw i32 %205, %206
  %sub182 = sub nsw i32 %add181, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds float, ptr %204, i64 %idxprom183
  store float %sub180, ptr %arrayidx184, align 4
  %207 = load float, ptr %ti1, align 4
  %208 = load float, ptr %ti2, align 4
  %sub185 = fsub float %207, %208
  %209 = load ptr, ptr %ch.addr, align 8
  %210 = load i32, ptr %t5, align 4
  %211 = load i32, ptr %t6, align 4
  %add186 = add nsw i32 %210, %211
  %idxprom187 = sext i32 %add186 to i64
  %arrayidx188 = getelementptr inbounds float, ptr %209, i64 %idxprom187
  store float %sub185, ptr %arrayidx188, align 4
  br label %for.inc189

for.inc189:                                       ; preds = %for.body52
  %212 = load i32, ptr %i, align 4
  %add190 = add nsw i32 %212, 2
  store i32 %add190, ptr %i, align 4
  br label %for.cond50, !llvm.loop !8

for.end191:                                       ; preds = %for.cond50
  %213 = load i32, ptr %ido.addr, align 4
  %214 = load i32, ptr %t1, align 4
  %add192 = add nsw i32 %214, %213
  store i32 %add192, ptr %t1, align 4
  br label %for.inc193

for.inc193:                                       ; preds = %for.end191
  %215 = load i32, ptr %k, align 4
  %inc194 = add nsw i32 %215, 1
  store i32 %inc194, ptr %k, align 4
  br label %for.cond44, !llvm.loop !9

for.end195:                                       ; preds = %for.cond44
  %216 = load i32, ptr %ido.addr, align 4
  %and = and i32 %216, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then196, label %if.end197

if.then196:                                       ; preds = %for.end195
  br label %for.end253

if.end197:                                        ; preds = %for.end195
  br label %L105

L105:                                             ; preds = %if.end197, %if.then42
  %217 = load i32, ptr %t0, align 4
  %218 = load i32, ptr %ido.addr, align 4
  %add198 = add nsw i32 %217, %218
  %sub199 = sub nsw i32 %add198, 1
  store i32 %sub199, ptr %t1, align 4
  %219 = load i32, ptr %t0, align 4
  %shl200 = shl i32 %219, 1
  %add201 = add nsw i32 %sub199, %shl200
  store i32 %add201, ptr %t2, align 4
  %220 = load i32, ptr %ido.addr, align 4
  %shl202 = shl i32 %220, 2
  store i32 %shl202, ptr %t3, align 4
  %221 = load i32, ptr %ido.addr, align 4
  store i32 %221, ptr %t4, align 4
  %222 = load i32, ptr %ido.addr, align 4
  %shl203 = shl i32 %222, 1
  store i32 %shl203, ptr %t5, align 4
  %223 = load i32, ptr %ido.addr, align 4
  store i32 %223, ptr %t6, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond204

for.cond204:                                      ; preds = %for.inc251, %L105
  %224 = load i32, ptr %k, align 4
  %225 = load i32, ptr %l1.addr, align 4
  %cmp205 = icmp slt i32 %224, %225
  br i1 %cmp205, label %for.body206, label %for.end253

for.body206:                                      ; preds = %for.cond204
  %226 = load float, ptr @dradf4.hsqt2, align 4
  %fneg = fneg float %226
  %227 = load ptr, ptr %cc.addr, align 8
  %228 = load i32, ptr %t1, align 4
  %idxprom207 = sext i32 %228 to i64
  %arrayidx208 = getelementptr inbounds float, ptr %227, i64 %idxprom207
  %229 = load float, ptr %arrayidx208, align 4
  %230 = load ptr, ptr %cc.addr, align 8
  %231 = load i32, ptr %t2, align 4
  %idxprom209 = sext i32 %231 to i64
  %arrayidx210 = getelementptr inbounds float, ptr %230, i64 %idxprom209
  %232 = load float, ptr %arrayidx210, align 4
  %add211 = fadd float %229, %232
  %mul212 = fmul float %fneg, %add211
  store float %mul212, ptr %ti1, align 4
  %233 = load float, ptr @dradf4.hsqt2, align 4
  %234 = load ptr, ptr %cc.addr, align 8
  %235 = load i32, ptr %t1, align 4
  %idxprom213 = sext i32 %235 to i64
  %arrayidx214 = getelementptr inbounds float, ptr %234, i64 %idxprom213
  %236 = load float, ptr %arrayidx214, align 4
  %237 = load ptr, ptr %cc.addr, align 8
  %238 = load i32, ptr %t2, align 4
  %idxprom215 = sext i32 %238 to i64
  %arrayidx216 = getelementptr inbounds float, ptr %237, i64 %idxprom215
  %239 = load float, ptr %arrayidx216, align 4
  %sub217 = fsub float %236, %239
  %mul218 = fmul float %233, %sub217
  store float %mul218, ptr %tr1, align 4
  %240 = load float, ptr %tr1, align 4
  %241 = load ptr, ptr %cc.addr, align 8
  %242 = load i32, ptr %t6, align 4
  %sub219 = sub nsw i32 %242, 1
  %idxprom220 = sext i32 %sub219 to i64
  %arrayidx221 = getelementptr inbounds float, ptr %241, i64 %idxprom220
  %243 = load float, ptr %arrayidx221, align 4
  %add222 = fadd float %240, %243
  %244 = load ptr, ptr %ch.addr, align 8
  %245 = load i32, ptr %t4, align 4
  %sub223 = sub nsw i32 %245, 1
  %idxprom224 = sext i32 %sub223 to i64
  %arrayidx225 = getelementptr inbounds float, ptr %244, i64 %idxprom224
  store float %add222, ptr %arrayidx225, align 4
  %246 = load ptr, ptr %cc.addr, align 8
  %247 = load i32, ptr %t6, align 4
  %sub226 = sub nsw i32 %247, 1
  %idxprom227 = sext i32 %sub226 to i64
  %arrayidx228 = getelementptr inbounds float, ptr %246, i64 %idxprom227
  %248 = load float, ptr %arrayidx228, align 4
  %249 = load float, ptr %tr1, align 4
  %sub229 = fsub float %248, %249
  %250 = load ptr, ptr %ch.addr, align 8
  %251 = load i32, ptr %t4, align 4
  %252 = load i32, ptr %t5, align 4
  %add230 = add nsw i32 %251, %252
  %sub231 = sub nsw i32 %add230, 1
  %idxprom232 = sext i32 %sub231 to i64
  %arrayidx233 = getelementptr inbounds float, ptr %250, i64 %idxprom232
  store float %sub229, ptr %arrayidx233, align 4
  %253 = load float, ptr %ti1, align 4
  %254 = load ptr, ptr %cc.addr, align 8
  %255 = load i32, ptr %t1, align 4
  %256 = load i32, ptr %t0, align 4
  %add234 = add nsw i32 %255, %256
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds float, ptr %254, i64 %idxprom235
  %257 = load float, ptr %arrayidx236, align 4
  %sub237 = fsub float %253, %257
  %258 = load ptr, ptr %ch.addr, align 8
  %259 = load i32, ptr %t4, align 4
  %idxprom238 = sext i32 %259 to i64
  %arrayidx239 = getelementptr inbounds float, ptr %258, i64 %idxprom238
  store float %sub237, ptr %arrayidx239, align 4
  %260 = load float, ptr %ti1, align 4
  %261 = load ptr, ptr %cc.addr, align 8
  %262 = load i32, ptr %t1, align 4
  %263 = load i32, ptr %t0, align 4
  %add240 = add nsw i32 %262, %263
  %idxprom241 = sext i32 %add240 to i64
  %arrayidx242 = getelementptr inbounds float, ptr %261, i64 %idxprom241
  %264 = load float, ptr %arrayidx242, align 4
  %add243 = fadd float %260, %264
  %265 = load ptr, ptr %ch.addr, align 8
  %266 = load i32, ptr %t4, align 4
  %267 = load i32, ptr %t5, align 4
  %add244 = add nsw i32 %266, %267
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds float, ptr %265, i64 %idxprom245
  store float %add243, ptr %arrayidx246, align 4
  %268 = load i32, ptr %ido.addr, align 4
  %269 = load i32, ptr %t1, align 4
  %add247 = add nsw i32 %269, %268
  store i32 %add247, ptr %t1, align 4
  %270 = load i32, ptr %ido.addr, align 4
  %271 = load i32, ptr %t2, align 4
  %add248 = add nsw i32 %271, %270
  store i32 %add248, ptr %t2, align 4
  %272 = load i32, ptr %t3, align 4
  %273 = load i32, ptr %t4, align 4
  %add249 = add nsw i32 %273, %272
  store i32 %add249, ptr %t4, align 4
  %274 = load i32, ptr %ido.addr, align 4
  %275 = load i32, ptr %t6, align 4
  %add250 = add nsw i32 %275, %274
  store i32 %add250, ptr %t6, align 4
  br label %for.inc251

for.inc251:                                       ; preds = %for.body206
  %276 = load i32, ptr %k, align 4
  %inc252 = add nsw i32 %276, 1
  store i32 %inc252, ptr %k, align 4
  br label %for.cond204, !llvm.loop !10

for.end253:                                       ; preds = %for.cond204, %if.then196, %if.then
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
!10 = distinct !{!10, !7}
