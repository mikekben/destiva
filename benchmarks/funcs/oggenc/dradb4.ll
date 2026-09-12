; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dradb4.sqrt2 = external hidden global float, align 4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @dradb4(i32 noundef %ido, i32 noundef %l1, ptr noundef %cc, ptr noundef %ch, ptr noundef %wa1, ptr noundef %wa2, ptr noundef %wa3) #1 {
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
  %t7 = alloca i32, align 4
  %t8 = alloca i32, align 4
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
  store i32 0, ptr %t1, align 4
  %2 = load i32, ptr %ido.addr, align 4
  %shl = shl i32 %2, 2
  store i32 %shl, ptr %t2, align 4
  store i32 0, ptr %t3, align 4
  %3 = load i32, ptr %ido.addr, align 4
  %shl1 = shl i32 %3, 1
  store i32 %shl1, ptr %t6, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %k, align 4
  %5 = load i32, ptr %l1.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %t3, align 4
  %7 = load i32, ptr %t6, align 4
  %add = add nsw i32 %6, %7
  store i32 %add, ptr %t4, align 4
  %8 = load i32, ptr %t1, align 4
  store i32 %8, ptr %t5, align 4
  %9 = load ptr, ptr %cc.addr, align 8
  %10 = load i32, ptr %t4, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds float, ptr %9, i64 %idxprom
  %11 = load float, ptr %arrayidx, align 4
  %12 = load ptr, ptr %cc.addr, align 8
  %13 = load i32, ptr %t4, align 4
  %sub2 = sub nsw i32 %13, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %12, i64 %idxprom3
  %14 = load float, ptr %arrayidx4, align 4
  %add5 = fadd float %11, %14
  store float %add5, ptr %tr3, align 4
  %15 = load ptr, ptr %cc.addr, align 8
  %16 = load i32, ptr %t4, align 4
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds float, ptr %15, i64 %idxprom6
  %17 = load float, ptr %arrayidx7, align 4
  %18 = load ptr, ptr %cc.addr, align 8
  %19 = load i32, ptr %t4, align 4
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %18, i64 %idxprom8
  %20 = load float, ptr %arrayidx9, align 4
  %add10 = fadd float %17, %20
  store float %add10, ptr %tr4, align 4
  %21 = load ptr, ptr %cc.addr, align 8
  %22 = load i32, ptr %t3, align 4
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds float, ptr %21, i64 %idxprom11
  %23 = load float, ptr %arrayidx12, align 4
  %24 = load ptr, ptr %cc.addr, align 8
  %25 = load i32, ptr %t6, align 4
  %26 = load i32, ptr %t4, align 4
  %add13 = add nsw i32 %26, %25
  store i32 %add13, ptr %t4, align 4
  %sub14 = sub nsw i32 %add13, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %24, i64 %idxprom15
  %27 = load float, ptr %arrayidx16, align 4
  %sub17 = fsub float %23, %27
  store float %sub17, ptr %tr1, align 4
  %28 = load ptr, ptr %cc.addr, align 8
  %29 = load i32, ptr %t3, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds float, ptr %28, i64 %idxprom18
  %30 = load float, ptr %arrayidx19, align 4
  %31 = load ptr, ptr %cc.addr, align 8
  %32 = load i32, ptr %t4, align 4
  %sub20 = sub nsw i32 %32, 1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds float, ptr %31, i64 %idxprom21
  %33 = load float, ptr %arrayidx22, align 4
  %add23 = fadd float %30, %33
  store float %add23, ptr %tr2, align 4
  %34 = load float, ptr %tr2, align 4
  %35 = load float, ptr %tr3, align 4
  %add24 = fadd float %34, %35
  %36 = load ptr, ptr %ch.addr, align 8
  %37 = load i32, ptr %t5, align 4
  %idxprom25 = sext i32 %37 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %36, i64 %idxprom25
  store float %add24, ptr %arrayidx26, align 4
  %38 = load float, ptr %tr1, align 4
  %39 = load float, ptr %tr4, align 4
  %sub27 = fsub float %38, %39
  %40 = load ptr, ptr %ch.addr, align 8
  %41 = load i32, ptr %t0, align 4
  %42 = load i32, ptr %t5, align 4
  %add28 = add nsw i32 %42, %41
  store i32 %add28, ptr %t5, align 4
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds float, ptr %40, i64 %idxprom29
  store float %sub27, ptr %arrayidx30, align 4
  %43 = load float, ptr %tr2, align 4
  %44 = load float, ptr %tr3, align 4
  %sub31 = fsub float %43, %44
  %45 = load ptr, ptr %ch.addr, align 8
  %46 = load i32, ptr %t0, align 4
  %47 = load i32, ptr %t5, align 4
  %add32 = add nsw i32 %47, %46
  store i32 %add32, ptr %t5, align 4
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds float, ptr %45, i64 %idxprom33
  store float %sub31, ptr %arrayidx34, align 4
  %48 = load float, ptr %tr1, align 4
  %49 = load float, ptr %tr4, align 4
  %add35 = fadd float %48, %49
  %50 = load ptr, ptr %ch.addr, align 8
  %51 = load i32, ptr %t0, align 4
  %52 = load i32, ptr %t5, align 4
  %add36 = add nsw i32 %52, %51
  store i32 %add36, ptr %t5, align 4
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds float, ptr %50, i64 %idxprom37
  store float %add35, ptr %arrayidx38, align 4
  %53 = load i32, ptr %ido.addr, align 4
  %54 = load i32, ptr %t1, align 4
  %add39 = add nsw i32 %54, %53
  store i32 %add39, ptr %t1, align 4
  %55 = load i32, ptr %t2, align 4
  %56 = load i32, ptr %t3, align 4
  %add40 = add nsw i32 %56, %55
  store i32 %add40, ptr %t3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load i32, ptr %k, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %58 = load i32, ptr %ido.addr, align 4
  %cmp41 = icmp slt i32 %58, 2
  br i1 %cmp41, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  br label %for.end251

if.end:                                           ; preds = %for.end
  %59 = load i32, ptr %ido.addr, align 4
  %cmp42 = icmp eq i32 %59, 2
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end
  br label %L105

if.end44:                                         ; preds = %if.end
  store i32 0, ptr %t1, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc192, %if.end44
  %60 = load i32, ptr %k, align 4
  %61 = load i32, ptr %l1.addr, align 4
  %cmp46 = icmp slt i32 %60, %61
  br i1 %cmp46, label %for.body47, label %for.end194

for.body47:                                       ; preds = %for.cond45
  %62 = load i32, ptr %t1, align 4
  %shl48 = shl i32 %62, 2
  store i32 %shl48, ptr %t2, align 4
  %63 = load i32, ptr %t6, align 4
  %add49 = add nsw i32 %shl48, %63
  store i32 %add49, ptr %t3, align 4
  store i32 %add49, ptr %t4, align 4
  %64 = load i32, ptr %t6, align 4
  %add50 = add nsw i32 %add49, %64
  store i32 %add50, ptr %t5, align 4
  %65 = load i32, ptr %t1, align 4
  store i32 %65, ptr %t7, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc188, %for.body47
  %66 = load i32, ptr %i, align 4
  %67 = load i32, ptr %ido.addr, align 4
  %cmp52 = icmp slt i32 %66, %67
  br i1 %cmp52, label %for.body53, label %for.end190

for.body53:                                       ; preds = %for.cond51
  %68 = load i32, ptr %t2, align 4
  %add54 = add nsw i32 %68, 2
  store i32 %add54, ptr %t2, align 4
  %69 = load i32, ptr %t3, align 4
  %add55 = add nsw i32 %69, 2
  store i32 %add55, ptr %t3, align 4
  %70 = load i32, ptr %t4, align 4
  %sub56 = sub nsw i32 %70, 2
  store i32 %sub56, ptr %t4, align 4
  %71 = load i32, ptr %t5, align 4
  %sub57 = sub nsw i32 %71, 2
  store i32 %sub57, ptr %t5, align 4
  %72 = load i32, ptr %t7, align 4
  %add58 = add nsw i32 %72, 2
  store i32 %add58, ptr %t7, align 4
  %73 = load ptr, ptr %cc.addr, align 8
  %74 = load i32, ptr %t2, align 4
  %idxprom59 = sext i32 %74 to i64
  %arrayidx60 = getelementptr inbounds float, ptr %73, i64 %idxprom59
  %75 = load float, ptr %arrayidx60, align 4
  %76 = load ptr, ptr %cc.addr, align 8
  %77 = load i32, ptr %t5, align 4
  %idxprom61 = sext i32 %77 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %76, i64 %idxprom61
  %78 = load float, ptr %arrayidx62, align 4
  %add63 = fadd float %75, %78
  store float %add63, ptr %ti1, align 4
  %79 = load ptr, ptr %cc.addr, align 8
  %80 = load i32, ptr %t2, align 4
  %idxprom64 = sext i32 %80 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %79, i64 %idxprom64
  %81 = load float, ptr %arrayidx65, align 4
  %82 = load ptr, ptr %cc.addr, align 8
  %83 = load i32, ptr %t5, align 4
  %idxprom66 = sext i32 %83 to i64
  %arrayidx67 = getelementptr inbounds float, ptr %82, i64 %idxprom66
  %84 = load float, ptr %arrayidx67, align 4
  %sub68 = fsub float %81, %84
  store float %sub68, ptr %ti2, align 4
  %85 = load ptr, ptr %cc.addr, align 8
  %86 = load i32, ptr %t3, align 4
  %idxprom69 = sext i32 %86 to i64
  %arrayidx70 = getelementptr inbounds float, ptr %85, i64 %idxprom69
  %87 = load float, ptr %arrayidx70, align 4
  %88 = load ptr, ptr %cc.addr, align 8
  %89 = load i32, ptr %t4, align 4
  %idxprom71 = sext i32 %89 to i64
  %arrayidx72 = getelementptr inbounds float, ptr %88, i64 %idxprom71
  %90 = load float, ptr %arrayidx72, align 4
  %sub73 = fsub float %87, %90
  store float %sub73, ptr %ti3, align 4
  %91 = load ptr, ptr %cc.addr, align 8
  %92 = load i32, ptr %t3, align 4
  %idxprom74 = sext i32 %92 to i64
  %arrayidx75 = getelementptr inbounds float, ptr %91, i64 %idxprom74
  %93 = load float, ptr %arrayidx75, align 4
  %94 = load ptr, ptr %cc.addr, align 8
  %95 = load i32, ptr %t4, align 4
  %idxprom76 = sext i32 %95 to i64
  %arrayidx77 = getelementptr inbounds float, ptr %94, i64 %idxprom76
  %96 = load float, ptr %arrayidx77, align 4
  %add78 = fadd float %93, %96
  store float %add78, ptr %tr4, align 4
  %97 = load ptr, ptr %cc.addr, align 8
  %98 = load i32, ptr %t2, align 4
  %sub79 = sub nsw i32 %98, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %97, i64 %idxprom80
  %99 = load float, ptr %arrayidx81, align 4
  %100 = load ptr, ptr %cc.addr, align 8
  %101 = load i32, ptr %t5, align 4
  %sub82 = sub nsw i32 %101, 1
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds float, ptr %100, i64 %idxprom83
  %102 = load float, ptr %arrayidx84, align 4
  %sub85 = fsub float %99, %102
  store float %sub85, ptr %tr1, align 4
  %103 = load ptr, ptr %cc.addr, align 8
  %104 = load i32, ptr %t2, align 4
  %sub86 = sub nsw i32 %104, 1
  %idxprom87 = sext i32 %sub86 to i64
  %arrayidx88 = getelementptr inbounds float, ptr %103, i64 %idxprom87
  %105 = load float, ptr %arrayidx88, align 4
  %106 = load ptr, ptr %cc.addr, align 8
  %107 = load i32, ptr %t5, align 4
  %sub89 = sub nsw i32 %107, 1
  %idxprom90 = sext i32 %sub89 to i64
  %arrayidx91 = getelementptr inbounds float, ptr %106, i64 %idxprom90
  %108 = load float, ptr %arrayidx91, align 4
  %add92 = fadd float %105, %108
  store float %add92, ptr %tr2, align 4
  %109 = load ptr, ptr %cc.addr, align 8
  %110 = load i32, ptr %t3, align 4
  %sub93 = sub nsw i32 %110, 1
  %idxprom94 = sext i32 %sub93 to i64
  %arrayidx95 = getelementptr inbounds float, ptr %109, i64 %idxprom94
  %111 = load float, ptr %arrayidx95, align 4
  %112 = load ptr, ptr %cc.addr, align 8
  %113 = load i32, ptr %t4, align 4
  %sub96 = sub nsw i32 %113, 1
  %idxprom97 = sext i32 %sub96 to i64
  %arrayidx98 = getelementptr inbounds float, ptr %112, i64 %idxprom97
  %114 = load float, ptr %arrayidx98, align 4
  %sub99 = fsub float %111, %114
  store float %sub99, ptr %ti4, align 4
  %115 = load ptr, ptr %cc.addr, align 8
  %116 = load i32, ptr %t3, align 4
  %sub100 = sub nsw i32 %116, 1
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr inbounds float, ptr %115, i64 %idxprom101
  %117 = load float, ptr %arrayidx102, align 4
  %118 = load ptr, ptr %cc.addr, align 8
  %119 = load i32, ptr %t4, align 4
  %sub103 = sub nsw i32 %119, 1
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx105 = getelementptr inbounds float, ptr %118, i64 %idxprom104
  %120 = load float, ptr %arrayidx105, align 4
  %add106 = fadd float %117, %120
  store float %add106, ptr %tr3, align 4
  %121 = load float, ptr %tr2, align 4
  %122 = load float, ptr %tr3, align 4
  %add107 = fadd float %121, %122
  %123 = load ptr, ptr %ch.addr, align 8
  %124 = load i32, ptr %t7, align 4
  %sub108 = sub nsw i32 %124, 1
  %idxprom109 = sext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds float, ptr %123, i64 %idxprom109
  store float %add107, ptr %arrayidx110, align 4
  %125 = load float, ptr %tr2, align 4
  %126 = load float, ptr %tr3, align 4
  %sub111 = fsub float %125, %126
  store float %sub111, ptr %cr3, align 4
  %127 = load float, ptr %ti2, align 4
  %128 = load float, ptr %ti3, align 4
  %add112 = fadd float %127, %128
  %129 = load ptr, ptr %ch.addr, align 8
  %130 = load i32, ptr %t7, align 4
  %idxprom113 = sext i32 %130 to i64
  %arrayidx114 = getelementptr inbounds float, ptr %129, i64 %idxprom113
  store float %add112, ptr %arrayidx114, align 4
  %131 = load float, ptr %ti2, align 4
  %132 = load float, ptr %ti3, align 4
  %sub115 = fsub float %131, %132
  store float %sub115, ptr %ci3, align 4
  %133 = load float, ptr %tr1, align 4
  %134 = load float, ptr %tr4, align 4
  %sub116 = fsub float %133, %134
  store float %sub116, ptr %cr2, align 4
  %135 = load float, ptr %tr1, align 4
  %136 = load float, ptr %tr4, align 4
  %add117 = fadd float %135, %136
  store float %add117, ptr %cr4, align 4
  %137 = load float, ptr %ti1, align 4
  %138 = load float, ptr %ti4, align 4
  %add118 = fadd float %137, %138
  store float %add118, ptr %ci2, align 4
  %139 = load float, ptr %ti1, align 4
  %140 = load float, ptr %ti4, align 4
  %sub119 = fsub float %139, %140
  store float %sub119, ptr %ci4, align 4
  %141 = load ptr, ptr %wa1.addr, align 8
  %142 = load i32, ptr %i, align 4
  %sub120 = sub nsw i32 %142, 2
  %idxprom121 = sext i32 %sub120 to i64
  %arrayidx122 = getelementptr inbounds float, ptr %141, i64 %idxprom121
  %143 = load float, ptr %arrayidx122, align 4
  %144 = load float, ptr %cr2, align 4
  %145 = load ptr, ptr %wa1.addr, align 8
  %146 = load i32, ptr %i, align 4
  %sub124 = sub nsw i32 %146, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds float, ptr %145, i64 %idxprom125
  %147 = load float, ptr %arrayidx126, align 4
  %148 = load float, ptr %ci2, align 4
  %mul127 = fmul float %147, %148
  %neg = fneg float %mul127
  %149 = call float @llvm.fmuladd.f32(float %143, float %144, float %neg)
  %150 = load ptr, ptr %ch.addr, align 8
  %151 = load i32, ptr %t7, align 4
  %152 = load i32, ptr %t0, align 4
  %add128 = add nsw i32 %151, %152
  store i32 %add128, ptr %t8, align 4
  %sub129 = sub nsw i32 %add128, 1
  %idxprom130 = sext i32 %sub129 to i64
  %arrayidx131 = getelementptr inbounds float, ptr %150, i64 %idxprom130
  store float %149, ptr %arrayidx131, align 4
  %153 = load ptr, ptr %wa1.addr, align 8
  %154 = load i32, ptr %i, align 4
  %sub132 = sub nsw i32 %154, 2
  %idxprom133 = sext i32 %sub132 to i64
  %arrayidx134 = getelementptr inbounds float, ptr %153, i64 %idxprom133
  %155 = load float, ptr %arrayidx134, align 4
  %156 = load float, ptr %ci2, align 4
  %157 = load ptr, ptr %wa1.addr, align 8
  %158 = load i32, ptr %i, align 4
  %sub136 = sub nsw i32 %158, 1
  %idxprom137 = sext i32 %sub136 to i64
  %arrayidx138 = getelementptr inbounds float, ptr %157, i64 %idxprom137
  %159 = load float, ptr %arrayidx138, align 4
  %160 = load float, ptr %cr2, align 4
  %mul139 = fmul float %159, %160
  %161 = call float @llvm.fmuladd.f32(float %155, float %156, float %mul139)
  %162 = load ptr, ptr %ch.addr, align 8
  %163 = load i32, ptr %t8, align 4
  %idxprom140 = sext i32 %163 to i64
  %arrayidx141 = getelementptr inbounds float, ptr %162, i64 %idxprom140
  store float %161, ptr %arrayidx141, align 4
  %164 = load ptr, ptr %wa2.addr, align 8
  %165 = load i32, ptr %i, align 4
  %sub142 = sub nsw i32 %165, 2
  %idxprom143 = sext i32 %sub142 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %164, i64 %idxprom143
  %166 = load float, ptr %arrayidx144, align 4
  %167 = load float, ptr %cr3, align 4
  %168 = load ptr, ptr %wa2.addr, align 8
  %169 = load i32, ptr %i, align 4
  %sub146 = sub nsw i32 %169, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds float, ptr %168, i64 %idxprom147
  %170 = load float, ptr %arrayidx148, align 4
  %171 = load float, ptr %ci3, align 4
  %mul149 = fmul float %170, %171
  %neg150 = fneg float %mul149
  %172 = call float @llvm.fmuladd.f32(float %166, float %167, float %neg150)
  %173 = load ptr, ptr %ch.addr, align 8
  %174 = load i32, ptr %t0, align 4
  %175 = load i32, ptr %t8, align 4
  %add151 = add nsw i32 %175, %174
  store i32 %add151, ptr %t8, align 4
  %sub152 = sub nsw i32 %add151, 1
  %idxprom153 = sext i32 %sub152 to i64
  %arrayidx154 = getelementptr inbounds float, ptr %173, i64 %idxprom153
  store float %172, ptr %arrayidx154, align 4
  %176 = load ptr, ptr %wa2.addr, align 8
  %177 = load i32, ptr %i, align 4
  %sub155 = sub nsw i32 %177, 2
  %idxprom156 = sext i32 %sub155 to i64
  %arrayidx157 = getelementptr inbounds float, ptr %176, i64 %idxprom156
  %178 = load float, ptr %arrayidx157, align 4
  %179 = load float, ptr %ci3, align 4
  %180 = load ptr, ptr %wa2.addr, align 8
  %181 = load i32, ptr %i, align 4
  %sub159 = sub nsw i32 %181, 1
  %idxprom160 = sext i32 %sub159 to i64
  %arrayidx161 = getelementptr inbounds float, ptr %180, i64 %idxprom160
  %182 = load float, ptr %arrayidx161, align 4
  %183 = load float, ptr %cr3, align 4
  %mul162 = fmul float %182, %183
  %184 = call float @llvm.fmuladd.f32(float %178, float %179, float %mul162)
  %185 = load ptr, ptr %ch.addr, align 8
  %186 = load i32, ptr %t8, align 4
  %idxprom163 = sext i32 %186 to i64
  %arrayidx164 = getelementptr inbounds float, ptr %185, i64 %idxprom163
  store float %184, ptr %arrayidx164, align 4
  %187 = load ptr, ptr %wa3.addr, align 8
  %188 = load i32, ptr %i, align 4
  %sub165 = sub nsw i32 %188, 2
  %idxprom166 = sext i32 %sub165 to i64
  %arrayidx167 = getelementptr inbounds float, ptr %187, i64 %idxprom166
  %189 = load float, ptr %arrayidx167, align 4
  %190 = load float, ptr %cr4, align 4
  %191 = load ptr, ptr %wa3.addr, align 8
  %192 = load i32, ptr %i, align 4
  %sub169 = sub nsw i32 %192, 1
  %idxprom170 = sext i32 %sub169 to i64
  %arrayidx171 = getelementptr inbounds float, ptr %191, i64 %idxprom170
  %193 = load float, ptr %arrayidx171, align 4
  %194 = load float, ptr %ci4, align 4
  %mul172 = fmul float %193, %194
  %neg173 = fneg float %mul172
  %195 = call float @llvm.fmuladd.f32(float %189, float %190, float %neg173)
  %196 = load ptr, ptr %ch.addr, align 8
  %197 = load i32, ptr %t0, align 4
  %198 = load i32, ptr %t8, align 4
  %add174 = add nsw i32 %198, %197
  store i32 %add174, ptr %t8, align 4
  %sub175 = sub nsw i32 %add174, 1
  %idxprom176 = sext i32 %sub175 to i64
  %arrayidx177 = getelementptr inbounds float, ptr %196, i64 %idxprom176
  store float %195, ptr %arrayidx177, align 4
  %199 = load ptr, ptr %wa3.addr, align 8
  %200 = load i32, ptr %i, align 4
  %sub178 = sub nsw i32 %200, 2
  %idxprom179 = sext i32 %sub178 to i64
  %arrayidx180 = getelementptr inbounds float, ptr %199, i64 %idxprom179
  %201 = load float, ptr %arrayidx180, align 4
  %202 = load float, ptr %ci4, align 4
  %203 = load ptr, ptr %wa3.addr, align 8
  %204 = load i32, ptr %i, align 4
  %sub182 = sub nsw i32 %204, 1
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds float, ptr %203, i64 %idxprom183
  %205 = load float, ptr %arrayidx184, align 4
  %206 = load float, ptr %cr4, align 4
  %mul185 = fmul float %205, %206
  %207 = call float @llvm.fmuladd.f32(float %201, float %202, float %mul185)
  %208 = load ptr, ptr %ch.addr, align 8
  %209 = load i32, ptr %t8, align 4
  %idxprom186 = sext i32 %209 to i64
  %arrayidx187 = getelementptr inbounds float, ptr %208, i64 %idxprom186
  store float %207, ptr %arrayidx187, align 4
  br label %for.inc188

for.inc188:                                       ; preds = %for.body53
  %210 = load i32, ptr %i, align 4
  %add189 = add nsw i32 %210, 2
  store i32 %add189, ptr %i, align 4
  br label %for.cond51, !llvm.loop !8

for.end190:                                       ; preds = %for.cond51
  %211 = load i32, ptr %ido.addr, align 4
  %212 = load i32, ptr %t1, align 4
  %add191 = add nsw i32 %212, %211
  store i32 %add191, ptr %t1, align 4
  br label %for.inc192

for.inc192:                                       ; preds = %for.end190
  %213 = load i32, ptr %k, align 4
  %inc193 = add nsw i32 %213, 1
  store i32 %inc193, ptr %k, align 4
  br label %for.cond45, !llvm.loop !9

for.end194:                                       ; preds = %for.cond45
  %214 = load i32, ptr %ido.addr, align 4
  %rem = srem i32 %214, 2
  %cmp195 = icmp eq i32 %rem, 1
  br i1 %cmp195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %for.end194
  br label %for.end251

if.end197:                                        ; preds = %for.end194
  br label %L105

L105:                                             ; preds = %if.end197, %if.then43
  %215 = load i32, ptr %ido.addr, align 4
  store i32 %215, ptr %t1, align 4
  %216 = load i32, ptr %ido.addr, align 4
  %shl198 = shl i32 %216, 2
  store i32 %shl198, ptr %t2, align 4
  %217 = load i32, ptr %ido.addr, align 4
  %sub199 = sub nsw i32 %217, 1
  store i32 %sub199, ptr %t3, align 4
  %218 = load i32, ptr %ido.addr, align 4
  %219 = load i32, ptr %ido.addr, align 4
  %shl200 = shl i32 %219, 1
  %add201 = add nsw i32 %218, %shl200
  store i32 %add201, ptr %t4, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond202

for.cond202:                                      ; preds = %for.inc249, %L105
  %220 = load i32, ptr %k, align 4
  %221 = load i32, ptr %l1.addr, align 4
  %cmp203 = icmp slt i32 %220, %221
  br i1 %cmp203, label %for.body204, label %for.end251

for.body204:                                      ; preds = %for.cond202
  %222 = load i32, ptr %t3, align 4
  store i32 %222, ptr %t5, align 4
  %223 = load ptr, ptr %cc.addr, align 8
  %224 = load i32, ptr %t1, align 4
  %idxprom205 = sext i32 %224 to i64
  %arrayidx206 = getelementptr inbounds float, ptr %223, i64 %idxprom205
  %225 = load float, ptr %arrayidx206, align 4
  %226 = load ptr, ptr %cc.addr, align 8
  %227 = load i32, ptr %t4, align 4
  %idxprom207 = sext i32 %227 to i64
  %arrayidx208 = getelementptr inbounds float, ptr %226, i64 %idxprom207
  %228 = load float, ptr %arrayidx208, align 4
  %add209 = fadd float %225, %228
  store float %add209, ptr %ti1, align 4
  %229 = load ptr, ptr %cc.addr, align 8
  %230 = load i32, ptr %t4, align 4
  %idxprom210 = sext i32 %230 to i64
  %arrayidx211 = getelementptr inbounds float, ptr %229, i64 %idxprom210
  %231 = load float, ptr %arrayidx211, align 4
  %232 = load ptr, ptr %cc.addr, align 8
  %233 = load i32, ptr %t1, align 4
  %idxprom212 = sext i32 %233 to i64
  %arrayidx213 = getelementptr inbounds float, ptr %232, i64 %idxprom212
  %234 = load float, ptr %arrayidx213, align 4
  %sub214 = fsub float %231, %234
  store float %sub214, ptr %ti2, align 4
  %235 = load ptr, ptr %cc.addr, align 8
  %236 = load i32, ptr %t1, align 4
  %sub215 = sub nsw i32 %236, 1
  %idxprom216 = sext i32 %sub215 to i64
  %arrayidx217 = getelementptr inbounds float, ptr %235, i64 %idxprom216
  %237 = load float, ptr %arrayidx217, align 4
  %238 = load ptr, ptr %cc.addr, align 8
  %239 = load i32, ptr %t4, align 4
  %sub218 = sub nsw i32 %239, 1
  %idxprom219 = sext i32 %sub218 to i64
  %arrayidx220 = getelementptr inbounds float, ptr %238, i64 %idxprom219
  %240 = load float, ptr %arrayidx220, align 4
  %sub221 = fsub float %237, %240
  store float %sub221, ptr %tr1, align 4
  %241 = load ptr, ptr %cc.addr, align 8
  %242 = load i32, ptr %t1, align 4
  %sub222 = sub nsw i32 %242, 1
  %idxprom223 = sext i32 %sub222 to i64
  %arrayidx224 = getelementptr inbounds float, ptr %241, i64 %idxprom223
  %243 = load float, ptr %arrayidx224, align 4
  %244 = load ptr, ptr %cc.addr, align 8
  %245 = load i32, ptr %t4, align 4
  %sub225 = sub nsw i32 %245, 1
  %idxprom226 = sext i32 %sub225 to i64
  %arrayidx227 = getelementptr inbounds float, ptr %244, i64 %idxprom226
  %246 = load float, ptr %arrayidx227, align 4
  %add228 = fadd float %243, %246
  store float %add228, ptr %tr2, align 4
  %247 = load float, ptr %tr2, align 4
  %248 = load float, ptr %tr2, align 4
  %add229 = fadd float %247, %248
  %249 = load ptr, ptr %ch.addr, align 8
  %250 = load i32, ptr %t5, align 4
  %idxprom230 = sext i32 %250 to i64
  %arrayidx231 = getelementptr inbounds float, ptr %249, i64 %idxprom230
  store float %add229, ptr %arrayidx231, align 4
  %251 = load float, ptr @dradb4.sqrt2, align 4
  %252 = load float, ptr %tr1, align 4
  %253 = load float, ptr %ti1, align 4
  %sub232 = fsub float %252, %253
  %mul233 = fmul float %251, %sub232
  %254 = load ptr, ptr %ch.addr, align 8
  %255 = load i32, ptr %t0, align 4
  %256 = load i32, ptr %t5, align 4
  %add234 = add nsw i32 %256, %255
  store i32 %add234, ptr %t5, align 4
  %idxprom235 = sext i32 %add234 to i64
  %arrayidx236 = getelementptr inbounds float, ptr %254, i64 %idxprom235
  store float %mul233, ptr %arrayidx236, align 4
  %257 = load float, ptr %ti2, align 4
  %258 = load float, ptr %ti2, align 4
  %add237 = fadd float %257, %258
  %259 = load ptr, ptr %ch.addr, align 8
  %260 = load i32, ptr %t0, align 4
  %261 = load i32, ptr %t5, align 4
  %add238 = add nsw i32 %261, %260
  store i32 %add238, ptr %t5, align 4
  %idxprom239 = sext i32 %add238 to i64
  %arrayidx240 = getelementptr inbounds float, ptr %259, i64 %idxprom239
  store float %add237, ptr %arrayidx240, align 4
  %262 = load float, ptr @dradb4.sqrt2, align 4
  %fneg = fneg float %262
  %263 = load float, ptr %tr1, align 4
  %264 = load float, ptr %ti1, align 4
  %add241 = fadd float %263, %264
  %mul242 = fmul float %fneg, %add241
  %265 = load ptr, ptr %ch.addr, align 8
  %266 = load i32, ptr %t0, align 4
  %267 = load i32, ptr %t5, align 4
  %add243 = add nsw i32 %267, %266
  store i32 %add243, ptr %t5, align 4
  %idxprom244 = sext i32 %add243 to i64
  %arrayidx245 = getelementptr inbounds float, ptr %265, i64 %idxprom244
  store float %mul242, ptr %arrayidx245, align 4
  %268 = load i32, ptr %ido.addr, align 4
  %269 = load i32, ptr %t3, align 4
  %add246 = add nsw i32 %269, %268
  store i32 %add246, ptr %t3, align 4
  %270 = load i32, ptr %t2, align 4
  %271 = load i32, ptr %t1, align 4
  %add247 = add nsw i32 %271, %270
  store i32 %add247, ptr %t1, align 4
  %272 = load i32, ptr %t2, align 4
  %273 = load i32, ptr %t4, align 4
  %add248 = add nsw i32 %273, %272
  store i32 %add248, ptr %t4, align 4
  br label %for.inc249

for.inc249:                                       ; preds = %for.body204
  %274 = load i32, ptr %k, align 4
  %inc250 = add nsw i32 %274, 1
  store i32 %inc250, ptr %k, align 4
  br label %for.cond202, !llvm.loop !10

for.end251:                                       ; preds = %for.cond202, %if.then196, %if.then
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
