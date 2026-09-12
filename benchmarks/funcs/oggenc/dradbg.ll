; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dradbg.tpi = external hidden global float, align 4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind
declare double @cos(double noundef) #1

; Function Attrs: nounwind
declare double @sin(double noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @dradbg(i32 noundef %ido, i32 noundef %ip, i32 noundef %l1, i32 noundef %idl1, ptr noundef %cc, ptr noundef %c1, ptr noundef %c2, ptr noundef %ch, ptr noundef %ch2, ptr noundef %wa) #2 {
entry:
  %ido.addr = alloca i32, align 4
  %ip.addr = alloca i32, align 4
  %l1.addr = alloca i32, align 4
  %idl1.addr = alloca i32, align 4
  %cc.addr = alloca ptr, align 8
  %c1.addr = alloca ptr, align 8
  %c2.addr = alloca ptr, align 8
  %ch.addr = alloca ptr, align 8
  %ch2.addr = alloca ptr, align 8
  %wa.addr = alloca ptr, align 8
  %idij = alloca i32, align 4
  %ipph = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %ik = alloca i32, align 4
  %is = alloca i32, align 4
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
  %t11 = alloca i32, align 4
  %t12 = alloca i32, align 4
  %dc2 = alloca float, align 4
  %ai1 = alloca float, align 4
  %ai2 = alloca float, align 4
  %ar1 = alloca float, align 4
  %ar2 = alloca float, align 4
  %ds2 = alloca float, align 4
  %nbd = alloca i32, align 4
  %dcp = alloca float, align 4
  %arg = alloca float, align 4
  %dsp = alloca float, align 4
  %ar1h = alloca float, align 4
  %ar2h = alloca float, align 4
  %ipp2 = alloca i32, align 4
  store i32 %ido, ptr %ido.addr, align 4
  store i32 %ip, ptr %ip.addr, align 4
  store i32 %l1, ptr %l1.addr, align 4
  store i32 %idl1, ptr %idl1.addr, align 4
  store ptr %cc, ptr %cc.addr, align 8
  store ptr %c1, ptr %c1.addr, align 8
  store ptr %c2, ptr %c2.addr, align 8
  store ptr %ch, ptr %ch.addr, align 8
  store ptr %ch2, ptr %ch2.addr, align 8
  store ptr %wa, ptr %wa.addr, align 8
  %0 = load i32, ptr %ip.addr, align 4
  %1 = load i32, ptr %ido.addr, align 4
  %mul = mul nsw i32 %0, %1
  store i32 %mul, ptr %t10, align 4
  %2 = load i32, ptr %l1.addr, align 4
  %3 = load i32, ptr %ido.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  store i32 %mul1, ptr %t0, align 4
  %4 = load float, ptr @dradbg.tpi, align 4
  %5 = load i32, ptr %ip.addr, align 4
  %conv = sitofp i32 %5 to float
  %div = fdiv float %4, %conv
  store float %div, ptr %arg, align 4
  %6 = load float, ptr %arg, align 4
  %conv2 = fpext float %6 to double
  %call = call double @cos(double noundef %conv2) #3
  %conv3 = fptrunc double %call to float
  store float %conv3, ptr %dcp, align 4
  %7 = load float, ptr %arg, align 4
  %conv4 = fpext float %7 to double
  %call5 = call double @sin(double noundef %conv4) #3
  %conv6 = fptrunc double %call5 to float
  store float %conv6, ptr %dsp, align 4
  %8 = load i32, ptr %ido.addr, align 4
  %sub = sub nsw i32 %8, 1
  %shr = ashr i32 %sub, 1
  store i32 %shr, ptr %nbd, align 4
  %9 = load i32, ptr %ip.addr, align 4
  store i32 %9, ptr %ipp2, align 4
  %10 = load i32, ptr %ip.addr, align 4
  %add = add nsw i32 %10, 1
  %shr7 = ashr i32 %add, 1
  store i32 %shr7, ptr %ipph, align 4
  %11 = load i32, ptr %ido.addr, align 4
  %12 = load i32, ptr %l1.addr, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %L103

if.end:                                           ; preds = %entry
  store i32 0, ptr %t1, align 4
  store i32 0, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %if.end
  %13 = load i32, ptr %k, align 4
  %14 = load i32, ptr %l1.addr, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %15 = load i32, ptr %t1, align 4
  store i32 %15, ptr %t3, align 4
  %16 = load i32, ptr %t2, align 4
  store i32 %16, ptr %t4, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %ido.addr, align 4
  %cmp12 = icmp slt i32 %17, %18
  br i1 %cmp12, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond11
  %19 = load ptr, ptr %cc.addr, align 8
  %20 = load i32, ptr %t4, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds float, ptr %19, i64 %idxprom
  %21 = load float, ptr %arrayidx, align 4
  %22 = load ptr, ptr %ch.addr, align 8
  %23 = load i32, ptr %t3, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %22, i64 %idxprom15
  store float %21, ptr %arrayidx16, align 4
  %24 = load i32, ptr %t3, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %t3, align 4
  %25 = load i32, ptr %t4, align 4
  %inc17 = add nsw i32 %25, 1
  store i32 %inc17, ptr %t4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %26 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond11, !llvm.loop !6

for.end:                                          ; preds = %for.cond11
  %27 = load i32, ptr %ido.addr, align 4
  %28 = load i32, ptr %t1, align 4
  %add19 = add nsw i32 %28, %27
  store i32 %add19, ptr %t1, align 4
  %29 = load i32, ptr %t10, align 4
  %30 = load i32, ptr %t2, align 4
  %add20 = add nsw i32 %30, %29
  store i32 %add20, ptr %t2, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %31 = load i32, ptr %k, align 4
  %inc22 = add nsw i32 %31, 1
  store i32 %inc22, ptr %k, align 4
  br label %for.cond, !llvm.loop !8

for.end23:                                        ; preds = %for.cond
  br label %L106

L103:                                             ; preds = %if.then
  store i32 0, ptr %t1, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc42, %L103
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %ido.addr, align 4
  %cmp25 = icmp slt i32 %32, %33
  br i1 %cmp25, label %for.body27, label %for.end44

for.body27:                                       ; preds = %for.cond24
  %34 = load i32, ptr %t1, align 4
  store i32 %34, ptr %t2, align 4
  %35 = load i32, ptr %t1, align 4
  store i32 %35, ptr %t3, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc38, %for.body27
  %36 = load i32, ptr %k, align 4
  %37 = load i32, ptr %l1.addr, align 4
  %cmp29 = icmp slt i32 %36, %37
  br i1 %cmp29, label %for.body31, label %for.end40

for.body31:                                       ; preds = %for.cond28
  %38 = load ptr, ptr %cc.addr, align 8
  %39 = load i32, ptr %t3, align 4
  %idxprom32 = sext i32 %39 to i64
  %arrayidx33 = getelementptr inbounds float, ptr %38, i64 %idxprom32
  %40 = load float, ptr %arrayidx33, align 4
  %41 = load ptr, ptr %ch.addr, align 8
  %42 = load i32, ptr %t2, align 4
  %idxprom34 = sext i32 %42 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %41, i64 %idxprom34
  store float %40, ptr %arrayidx35, align 4
  %43 = load i32, ptr %ido.addr, align 4
  %44 = load i32, ptr %t2, align 4
  %add36 = add nsw i32 %44, %43
  store i32 %add36, ptr %t2, align 4
  %45 = load i32, ptr %t10, align 4
  %46 = load i32, ptr %t3, align 4
  %add37 = add nsw i32 %46, %45
  store i32 %add37, ptr %t3, align 4
  br label %for.inc38

for.inc38:                                        ; preds = %for.body31
  %47 = load i32, ptr %k, align 4
  %inc39 = add nsw i32 %47, 1
  store i32 %inc39, ptr %k, align 4
  br label %for.cond28, !llvm.loop !9

for.end40:                                        ; preds = %for.cond28
  %48 = load i32, ptr %t1, align 4
  %inc41 = add nsw i32 %48, 1
  store i32 %inc41, ptr %t1, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.end40
  %49 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %49, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond24, !llvm.loop !10

for.end44:                                        ; preds = %for.cond24
  br label %L106

L106:                                             ; preds = %for.end44, %for.end23
  store i32 0, ptr %t1, align 4
  %50 = load i32, ptr %ipp2, align 4
  %51 = load i32, ptr %t0, align 4
  %mul45 = mul nsw i32 %50, %51
  store i32 %mul45, ptr %t2, align 4
  %52 = load i32, ptr %ido.addr, align 4
  %shl = shl i32 %52, 1
  store i32 %shl, ptr %t5, align 4
  store i32 %shl, ptr %t7, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc79, %L106
  %53 = load i32, ptr %j, align 4
  %54 = load i32, ptr %ipph, align 4
  %cmp47 = icmp slt i32 %53, %54
  br i1 %cmp47, label %for.body49, label %for.end81

for.body49:                                       ; preds = %for.cond46
  %55 = load i32, ptr %t0, align 4
  %56 = load i32, ptr %t1, align 4
  %add50 = add nsw i32 %56, %55
  store i32 %add50, ptr %t1, align 4
  %57 = load i32, ptr %t0, align 4
  %58 = load i32, ptr %t2, align 4
  %sub51 = sub nsw i32 %58, %57
  store i32 %sub51, ptr %t2, align 4
  %59 = load i32, ptr %t1, align 4
  store i32 %59, ptr %t3, align 4
  %60 = load i32, ptr %t2, align 4
  store i32 %60, ptr %t4, align 4
  %61 = load i32, ptr %t5, align 4
  store i32 %61, ptr %t6, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc75, %for.body49
  %62 = load i32, ptr %k, align 4
  %63 = load i32, ptr %l1.addr, align 4
  %cmp53 = icmp slt i32 %62, %63
  br i1 %cmp53, label %for.body55, label %for.end77

for.body55:                                       ; preds = %for.cond52
  %64 = load ptr, ptr %cc.addr, align 8
  %65 = load i32, ptr %t6, align 4
  %sub56 = sub nsw i32 %65, 1
  %idxprom57 = sext i32 %sub56 to i64
  %arrayidx58 = getelementptr inbounds float, ptr %64, i64 %idxprom57
  %66 = load float, ptr %arrayidx58, align 4
  %67 = load ptr, ptr %cc.addr, align 8
  %68 = load i32, ptr %t6, align 4
  %sub59 = sub nsw i32 %68, 1
  %idxprom60 = sext i32 %sub59 to i64
  %arrayidx61 = getelementptr inbounds float, ptr %67, i64 %idxprom60
  %69 = load float, ptr %arrayidx61, align 4
  %add62 = fadd float %66, %69
  %70 = load ptr, ptr %ch.addr, align 8
  %71 = load i32, ptr %t3, align 4
  %idxprom63 = sext i32 %71 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %70, i64 %idxprom63
  store float %add62, ptr %arrayidx64, align 4
  %72 = load ptr, ptr %cc.addr, align 8
  %73 = load i32, ptr %t6, align 4
  %idxprom65 = sext i32 %73 to i64
  %arrayidx66 = getelementptr inbounds float, ptr %72, i64 %idxprom65
  %74 = load float, ptr %arrayidx66, align 4
  %75 = load ptr, ptr %cc.addr, align 8
  %76 = load i32, ptr %t6, align 4
  %idxprom67 = sext i32 %76 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %75, i64 %idxprom67
  %77 = load float, ptr %arrayidx68, align 4
  %add69 = fadd float %74, %77
  %78 = load ptr, ptr %ch.addr, align 8
  %79 = load i32, ptr %t4, align 4
  %idxprom70 = sext i32 %79 to i64
  %arrayidx71 = getelementptr inbounds float, ptr %78, i64 %idxprom70
  store float %add69, ptr %arrayidx71, align 4
  %80 = load i32, ptr %ido.addr, align 4
  %81 = load i32, ptr %t3, align 4
  %add72 = add nsw i32 %81, %80
  store i32 %add72, ptr %t3, align 4
  %82 = load i32, ptr %ido.addr, align 4
  %83 = load i32, ptr %t4, align 4
  %add73 = add nsw i32 %83, %82
  store i32 %add73, ptr %t4, align 4
  %84 = load i32, ptr %t10, align 4
  %85 = load i32, ptr %t6, align 4
  %add74 = add nsw i32 %85, %84
  store i32 %add74, ptr %t6, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %for.body55
  %86 = load i32, ptr %k, align 4
  %inc76 = add nsw i32 %86, 1
  store i32 %inc76, ptr %k, align 4
  br label %for.cond52, !llvm.loop !11

for.end77:                                        ; preds = %for.cond52
  %87 = load i32, ptr %t7, align 4
  %88 = load i32, ptr %t5, align 4
  %add78 = add nsw i32 %88, %87
  store i32 %add78, ptr %t5, align 4
  br label %for.inc79

for.inc79:                                        ; preds = %for.end77
  %89 = load i32, ptr %j, align 4
  %inc80 = add nsw i32 %89, 1
  store i32 %inc80, ptr %j, align 4
  br label %for.cond46, !llvm.loop !12

for.end81:                                        ; preds = %for.cond46
  %90 = load i32, ptr %ido.addr, align 4
  %cmp82 = icmp eq i32 %90, 1
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %for.end81
  br label %L116

if.end85:                                         ; preds = %for.end81
  %91 = load i32, ptr %nbd, align 4
  %92 = load i32, ptr %l1.addr, align 4
  %cmp86 = icmp slt i32 %91, %92
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end85
  br label %L112

if.end89:                                         ; preds = %if.end85
  store i32 0, ptr %t1, align 4
  %93 = load i32, ptr %ipp2, align 4
  %94 = load i32, ptr %t0, align 4
  %mul90 = mul nsw i32 %93, %94
  store i32 %mul90, ptr %t2, align 4
  store i32 0, ptr %t7, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc154, %if.end89
  %95 = load i32, ptr %j, align 4
  %96 = load i32, ptr %ipph, align 4
  %cmp92 = icmp slt i32 %95, %96
  br i1 %cmp92, label %for.body94, label %for.end156

for.body94:                                       ; preds = %for.cond91
  %97 = load i32, ptr %t0, align 4
  %98 = load i32, ptr %t1, align 4
  %add95 = add nsw i32 %98, %97
  store i32 %add95, ptr %t1, align 4
  %99 = load i32, ptr %t0, align 4
  %100 = load i32, ptr %t2, align 4
  %sub96 = sub nsw i32 %100, %99
  store i32 %sub96, ptr %t2, align 4
  %101 = load i32, ptr %t1, align 4
  store i32 %101, ptr %t3, align 4
  %102 = load i32, ptr %t2, align 4
  store i32 %102, ptr %t4, align 4
  %103 = load i32, ptr %ido.addr, align 4
  %shl97 = shl i32 %103, 1
  %104 = load i32, ptr %t7, align 4
  %add98 = add nsw i32 %104, %shl97
  store i32 %add98, ptr %t7, align 4
  %105 = load i32, ptr %t7, align 4
  store i32 %105, ptr %t8, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc151, %for.body94
  %106 = load i32, ptr %k, align 4
  %107 = load i32, ptr %l1.addr, align 4
  %cmp100 = icmp slt i32 %106, %107
  br i1 %cmp100, label %for.body102, label %for.end153

for.body102:                                      ; preds = %for.cond99
  %108 = load i32, ptr %t3, align 4
  store i32 %108, ptr %t5, align 4
  %109 = load i32, ptr %t4, align 4
  store i32 %109, ptr %t6, align 4
  %110 = load i32, ptr %t8, align 4
  store i32 %110, ptr %t9, align 4
  %111 = load i32, ptr %t8, align 4
  store i32 %111, ptr %t11, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc145, %for.body102
  %112 = load i32, ptr %i, align 4
  %113 = load i32, ptr %ido.addr, align 4
  %cmp104 = icmp slt i32 %112, %113
  br i1 %cmp104, label %for.body106, label %for.end147

for.body106:                                      ; preds = %for.cond103
  %114 = load i32, ptr %t5, align 4
  %add107 = add nsw i32 %114, 2
  store i32 %add107, ptr %t5, align 4
  %115 = load i32, ptr %t6, align 4
  %add108 = add nsw i32 %115, 2
  store i32 %add108, ptr %t6, align 4
  %116 = load i32, ptr %t9, align 4
  %add109 = add nsw i32 %116, 2
  store i32 %add109, ptr %t9, align 4
  %117 = load i32, ptr %t11, align 4
  %sub110 = sub nsw i32 %117, 2
  store i32 %sub110, ptr %t11, align 4
  %118 = load ptr, ptr %cc.addr, align 8
  %119 = load i32, ptr %t9, align 4
  %sub111 = sub nsw i32 %119, 1
  %idxprom112 = sext i32 %sub111 to i64
  %arrayidx113 = getelementptr inbounds float, ptr %118, i64 %idxprom112
  %120 = load float, ptr %arrayidx113, align 4
  %121 = load ptr, ptr %cc.addr, align 8
  %122 = load i32, ptr %t11, align 4
  %sub114 = sub nsw i32 %122, 1
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds float, ptr %121, i64 %idxprom115
  %123 = load float, ptr %arrayidx116, align 4
  %add117 = fadd float %120, %123
  %124 = load ptr, ptr %ch.addr, align 8
  %125 = load i32, ptr %t5, align 4
  %sub118 = sub nsw i32 %125, 1
  %idxprom119 = sext i32 %sub118 to i64
  %arrayidx120 = getelementptr inbounds float, ptr %124, i64 %idxprom119
  store float %add117, ptr %arrayidx120, align 4
  %126 = load ptr, ptr %cc.addr, align 8
  %127 = load i32, ptr %t9, align 4
  %sub121 = sub nsw i32 %127, 1
  %idxprom122 = sext i32 %sub121 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %126, i64 %idxprom122
  %128 = load float, ptr %arrayidx123, align 4
  %129 = load ptr, ptr %cc.addr, align 8
  %130 = load i32, ptr %t11, align 4
  %sub124 = sub nsw i32 %130, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds float, ptr %129, i64 %idxprom125
  %131 = load float, ptr %arrayidx126, align 4
  %sub127 = fsub float %128, %131
  %132 = load ptr, ptr %ch.addr, align 8
  %133 = load i32, ptr %t6, align 4
  %sub128 = sub nsw i32 %133, 1
  %idxprom129 = sext i32 %sub128 to i64
  %arrayidx130 = getelementptr inbounds float, ptr %132, i64 %idxprom129
  store float %sub127, ptr %arrayidx130, align 4
  %134 = load ptr, ptr %cc.addr, align 8
  %135 = load i32, ptr %t9, align 4
  %idxprom131 = sext i32 %135 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %134, i64 %idxprom131
  %136 = load float, ptr %arrayidx132, align 4
  %137 = load ptr, ptr %cc.addr, align 8
  %138 = load i32, ptr %t11, align 4
  %idxprom133 = sext i32 %138 to i64
  %arrayidx134 = getelementptr inbounds float, ptr %137, i64 %idxprom133
  %139 = load float, ptr %arrayidx134, align 4
  %sub135 = fsub float %136, %139
  %140 = load ptr, ptr %ch.addr, align 8
  %141 = load i32, ptr %t5, align 4
  %idxprom136 = sext i32 %141 to i64
  %arrayidx137 = getelementptr inbounds float, ptr %140, i64 %idxprom136
  store float %sub135, ptr %arrayidx137, align 4
  %142 = load ptr, ptr %cc.addr, align 8
  %143 = load i32, ptr %t9, align 4
  %idxprom138 = sext i32 %143 to i64
  %arrayidx139 = getelementptr inbounds float, ptr %142, i64 %idxprom138
  %144 = load float, ptr %arrayidx139, align 4
  %145 = load ptr, ptr %cc.addr, align 8
  %146 = load i32, ptr %t11, align 4
  %idxprom140 = sext i32 %146 to i64
  %arrayidx141 = getelementptr inbounds float, ptr %145, i64 %idxprom140
  %147 = load float, ptr %arrayidx141, align 4
  %add142 = fadd float %144, %147
  %148 = load ptr, ptr %ch.addr, align 8
  %149 = load i32, ptr %t6, align 4
  %idxprom143 = sext i32 %149 to i64
  %arrayidx144 = getelementptr inbounds float, ptr %148, i64 %idxprom143
  store float %add142, ptr %arrayidx144, align 4
  br label %for.inc145

for.inc145:                                       ; preds = %for.body106
  %150 = load i32, ptr %i, align 4
  %add146 = add nsw i32 %150, 2
  store i32 %add146, ptr %i, align 4
  br label %for.cond103, !llvm.loop !13

for.end147:                                       ; preds = %for.cond103
  %151 = load i32, ptr %ido.addr, align 4
  %152 = load i32, ptr %t3, align 4
  %add148 = add nsw i32 %152, %151
  store i32 %add148, ptr %t3, align 4
  %153 = load i32, ptr %ido.addr, align 4
  %154 = load i32, ptr %t4, align 4
  %add149 = add nsw i32 %154, %153
  store i32 %add149, ptr %t4, align 4
  %155 = load i32, ptr %t10, align 4
  %156 = load i32, ptr %t8, align 4
  %add150 = add nsw i32 %156, %155
  store i32 %add150, ptr %t8, align 4
  br label %for.inc151

for.inc151:                                       ; preds = %for.end147
  %157 = load i32, ptr %k, align 4
  %inc152 = add nsw i32 %157, 1
  store i32 %inc152, ptr %k, align 4
  br label %for.cond99, !llvm.loop !14

for.end153:                                       ; preds = %for.cond99
  br label %for.inc154

for.inc154:                                       ; preds = %for.end153
  %158 = load i32, ptr %j, align 4
  %inc155 = add nsw i32 %158, 1
  store i32 %inc155, ptr %j, align 4
  br label %for.cond91, !llvm.loop !15

for.end156:                                       ; preds = %for.cond91
  br label %L116

L112:                                             ; preds = %if.then88
  store i32 0, ptr %t1, align 4
  %159 = load i32, ptr %ipp2, align 4
  %160 = load i32, ptr %t0, align 4
  %mul157 = mul nsw i32 %159, %160
  store i32 %mul157, ptr %t2, align 4
  store i32 0, ptr %t7, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond158

for.cond158:                                      ; preds = %for.inc222, %L112
  %161 = load i32, ptr %j, align 4
  %162 = load i32, ptr %ipph, align 4
  %cmp159 = icmp slt i32 %161, %162
  br i1 %cmp159, label %for.body161, label %for.end224

for.body161:                                      ; preds = %for.cond158
  %163 = load i32, ptr %t0, align 4
  %164 = load i32, ptr %t1, align 4
  %add162 = add nsw i32 %164, %163
  store i32 %add162, ptr %t1, align 4
  %165 = load i32, ptr %t0, align 4
  %166 = load i32, ptr %t2, align 4
  %sub163 = sub nsw i32 %166, %165
  store i32 %sub163, ptr %t2, align 4
  %167 = load i32, ptr %t1, align 4
  store i32 %167, ptr %t3, align 4
  %168 = load i32, ptr %t2, align 4
  store i32 %168, ptr %t4, align 4
  %169 = load i32, ptr %ido.addr, align 4
  %shl164 = shl i32 %169, 1
  %170 = load i32, ptr %t7, align 4
  %add165 = add nsw i32 %170, %shl164
  store i32 %add165, ptr %t7, align 4
  %171 = load i32, ptr %t7, align 4
  store i32 %171, ptr %t8, align 4
  %172 = load i32, ptr %t7, align 4
  store i32 %172, ptr %t9, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond166

for.cond166:                                      ; preds = %for.inc219, %for.body161
  %173 = load i32, ptr %i, align 4
  %174 = load i32, ptr %ido.addr, align 4
  %cmp167 = icmp slt i32 %173, %174
  br i1 %cmp167, label %for.body169, label %for.end221

for.body169:                                      ; preds = %for.cond166
  %175 = load i32, ptr %t3, align 4
  %add170 = add nsw i32 %175, 2
  store i32 %add170, ptr %t3, align 4
  %176 = load i32, ptr %t4, align 4
  %add171 = add nsw i32 %176, 2
  store i32 %add171, ptr %t4, align 4
  %177 = load i32, ptr %t8, align 4
  %add172 = add nsw i32 %177, 2
  store i32 %add172, ptr %t8, align 4
  %178 = load i32, ptr %t9, align 4
  %sub173 = sub nsw i32 %178, 2
  store i32 %sub173, ptr %t9, align 4
  %179 = load i32, ptr %t3, align 4
  store i32 %179, ptr %t5, align 4
  %180 = load i32, ptr %t4, align 4
  store i32 %180, ptr %t6, align 4
  %181 = load i32, ptr %t8, align 4
  store i32 %181, ptr %t11, align 4
  %182 = load i32, ptr %t9, align 4
  store i32 %182, ptr %t12, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond174

for.cond174:                                      ; preds = %for.inc216, %for.body169
  %183 = load i32, ptr %k, align 4
  %184 = load i32, ptr %l1.addr, align 4
  %cmp175 = icmp slt i32 %183, %184
  br i1 %cmp175, label %for.body177, label %for.end218

for.body177:                                      ; preds = %for.cond174
  %185 = load ptr, ptr %cc.addr, align 8
  %186 = load i32, ptr %t11, align 4
  %sub178 = sub nsw i32 %186, 1
  %idxprom179 = sext i32 %sub178 to i64
  %arrayidx180 = getelementptr inbounds float, ptr %185, i64 %idxprom179
  %187 = load float, ptr %arrayidx180, align 4
  %188 = load ptr, ptr %cc.addr, align 8
  %189 = load i32, ptr %t12, align 4
  %sub181 = sub nsw i32 %189, 1
  %idxprom182 = sext i32 %sub181 to i64
  %arrayidx183 = getelementptr inbounds float, ptr %188, i64 %idxprom182
  %190 = load float, ptr %arrayidx183, align 4
  %add184 = fadd float %187, %190
  %191 = load ptr, ptr %ch.addr, align 8
  %192 = load i32, ptr %t5, align 4
  %sub185 = sub nsw i32 %192, 1
  %idxprom186 = sext i32 %sub185 to i64
  %arrayidx187 = getelementptr inbounds float, ptr %191, i64 %idxprom186
  store float %add184, ptr %arrayidx187, align 4
  %193 = load ptr, ptr %cc.addr, align 8
  %194 = load i32, ptr %t11, align 4
  %sub188 = sub nsw i32 %194, 1
  %idxprom189 = sext i32 %sub188 to i64
  %arrayidx190 = getelementptr inbounds float, ptr %193, i64 %idxprom189
  %195 = load float, ptr %arrayidx190, align 4
  %196 = load ptr, ptr %cc.addr, align 8
  %197 = load i32, ptr %t12, align 4
  %sub191 = sub nsw i32 %197, 1
  %idxprom192 = sext i32 %sub191 to i64
  %arrayidx193 = getelementptr inbounds float, ptr %196, i64 %idxprom192
  %198 = load float, ptr %arrayidx193, align 4
  %sub194 = fsub float %195, %198
  %199 = load ptr, ptr %ch.addr, align 8
  %200 = load i32, ptr %t6, align 4
  %sub195 = sub nsw i32 %200, 1
  %idxprom196 = sext i32 %sub195 to i64
  %arrayidx197 = getelementptr inbounds float, ptr %199, i64 %idxprom196
  store float %sub194, ptr %arrayidx197, align 4
  %201 = load ptr, ptr %cc.addr, align 8
  %202 = load i32, ptr %t11, align 4
  %idxprom198 = sext i32 %202 to i64
  %arrayidx199 = getelementptr inbounds float, ptr %201, i64 %idxprom198
  %203 = load float, ptr %arrayidx199, align 4
  %204 = load ptr, ptr %cc.addr, align 8
  %205 = load i32, ptr %t12, align 4
  %idxprom200 = sext i32 %205 to i64
  %arrayidx201 = getelementptr inbounds float, ptr %204, i64 %idxprom200
  %206 = load float, ptr %arrayidx201, align 4
  %sub202 = fsub float %203, %206
  %207 = load ptr, ptr %ch.addr, align 8
  %208 = load i32, ptr %t5, align 4
  %idxprom203 = sext i32 %208 to i64
  %arrayidx204 = getelementptr inbounds float, ptr %207, i64 %idxprom203
  store float %sub202, ptr %arrayidx204, align 4
  %209 = load ptr, ptr %cc.addr, align 8
  %210 = load i32, ptr %t11, align 4
  %idxprom205 = sext i32 %210 to i64
  %arrayidx206 = getelementptr inbounds float, ptr %209, i64 %idxprom205
  %211 = load float, ptr %arrayidx206, align 4
  %212 = load ptr, ptr %cc.addr, align 8
  %213 = load i32, ptr %t12, align 4
  %idxprom207 = sext i32 %213 to i64
  %arrayidx208 = getelementptr inbounds float, ptr %212, i64 %idxprom207
  %214 = load float, ptr %arrayidx208, align 4
  %add209 = fadd float %211, %214
  %215 = load ptr, ptr %ch.addr, align 8
  %216 = load i32, ptr %t6, align 4
  %idxprom210 = sext i32 %216 to i64
  %arrayidx211 = getelementptr inbounds float, ptr %215, i64 %idxprom210
  store float %add209, ptr %arrayidx211, align 4
  %217 = load i32, ptr %ido.addr, align 4
  %218 = load i32, ptr %t5, align 4
  %add212 = add nsw i32 %218, %217
  store i32 %add212, ptr %t5, align 4
  %219 = load i32, ptr %ido.addr, align 4
  %220 = load i32, ptr %t6, align 4
  %add213 = add nsw i32 %220, %219
  store i32 %add213, ptr %t6, align 4
  %221 = load i32, ptr %t10, align 4
  %222 = load i32, ptr %t11, align 4
  %add214 = add nsw i32 %222, %221
  store i32 %add214, ptr %t11, align 4
  %223 = load i32, ptr %t10, align 4
  %224 = load i32, ptr %t12, align 4
  %add215 = add nsw i32 %224, %223
  store i32 %add215, ptr %t12, align 4
  br label %for.inc216

for.inc216:                                       ; preds = %for.body177
  %225 = load i32, ptr %k, align 4
  %inc217 = add nsw i32 %225, 1
  store i32 %inc217, ptr %k, align 4
  br label %for.cond174, !llvm.loop !16

for.end218:                                       ; preds = %for.cond174
  br label %for.inc219

for.inc219:                                       ; preds = %for.end218
  %226 = load i32, ptr %i, align 4
  %add220 = add nsw i32 %226, 2
  store i32 %add220, ptr %i, align 4
  br label %for.cond166, !llvm.loop !17

for.end221:                                       ; preds = %for.cond166
  br label %for.inc222

for.inc222:                                       ; preds = %for.end221
  %227 = load i32, ptr %j, align 4
  %inc223 = add nsw i32 %227, 1
  store i32 %inc223, ptr %j, align 4
  br label %for.cond158, !llvm.loop !18

for.end224:                                       ; preds = %for.cond158
  br label %L116

L116:                                             ; preds = %for.end224, %for.end156, %if.then84
  store float 1.000000e+00, ptr %ar1, align 4
  store float 0.000000e+00, ptr %ai1, align 4
  store i32 0, ptr %t1, align 4
  %228 = load i32, ptr %ipp2, align 4
  %229 = load i32, ptr %idl1.addr, align 4
  %mul225 = mul nsw i32 %228, %229
  store i32 %mul225, ptr %t2, align 4
  store i32 %mul225, ptr %t9, align 4
  %230 = load i32, ptr %ip.addr, align 4
  %sub226 = sub nsw i32 %230, 1
  %231 = load i32, ptr %idl1.addr, align 4
  %mul227 = mul nsw i32 %sub226, %231
  store i32 %mul227, ptr %t3, align 4
  store i32 1, ptr %l, align 4
  br label %for.cond228

for.cond228:                                      ; preds = %for.inc298, %L116
  %232 = load i32, ptr %l, align 4
  %233 = load i32, ptr %ipph, align 4
  %cmp229 = icmp slt i32 %232, %233
  br i1 %cmp229, label %for.body231, label %for.end300

for.body231:                                      ; preds = %for.cond228
  %234 = load i32, ptr %idl1.addr, align 4
  %235 = load i32, ptr %t1, align 4
  %add232 = add nsw i32 %235, %234
  store i32 %add232, ptr %t1, align 4
  %236 = load i32, ptr %idl1.addr, align 4
  %237 = load i32, ptr %t2, align 4
  %sub233 = sub nsw i32 %237, %236
  store i32 %sub233, ptr %t2, align 4
  %238 = load float, ptr %dcp, align 4
  %239 = load float, ptr %ar1, align 4
  %240 = load float, ptr %dsp, align 4
  %241 = load float, ptr %ai1, align 4
  %mul235 = fmul float %240, %241
  %neg = fneg float %mul235
  %242 = call float @llvm.fmuladd.f32(float %238, float %239, float %neg)
  store float %242, ptr %ar1h, align 4
  %243 = load float, ptr %dcp, align 4
  %244 = load float, ptr %ai1, align 4
  %245 = load float, ptr %dsp, align 4
  %246 = load float, ptr %ar1, align 4
  %mul237 = fmul float %245, %246
  %247 = call float @llvm.fmuladd.f32(float %243, float %244, float %mul237)
  store float %247, ptr %ai1, align 4
  %248 = load float, ptr %ar1h, align 4
  store float %248, ptr %ar1, align 4
  %249 = load i32, ptr %t1, align 4
  store i32 %249, ptr %t4, align 4
  %250 = load i32, ptr %t2, align 4
  store i32 %250, ptr %t5, align 4
  store i32 0, ptr %t6, align 4
  %251 = load i32, ptr %idl1.addr, align 4
  store i32 %251, ptr %t7, align 4
  %252 = load i32, ptr %t3, align 4
  store i32 %252, ptr %t8, align 4
  store i32 0, ptr %ik, align 4
  br label %for.cond238

for.cond238:                                      ; preds = %for.inc259, %for.body231
  %253 = load i32, ptr %ik, align 4
  %254 = load i32, ptr %idl1.addr, align 4
  %cmp239 = icmp slt i32 %253, %254
  br i1 %cmp239, label %for.body241, label %for.end261

for.body241:                                      ; preds = %for.cond238
  %255 = load ptr, ptr %ch2.addr, align 8
  %256 = load i32, ptr %t6, align 4
  %inc242 = add nsw i32 %256, 1
  store i32 %inc242, ptr %t6, align 4
  %idxprom243 = sext i32 %256 to i64
  %arrayidx244 = getelementptr inbounds float, ptr %255, i64 %idxprom243
  %257 = load float, ptr %arrayidx244, align 4
  %258 = load float, ptr %ar1, align 4
  %259 = load ptr, ptr %ch2.addr, align 8
  %260 = load i32, ptr %t7, align 4
  %inc245 = add nsw i32 %260, 1
  store i32 %inc245, ptr %t7, align 4
  %idxprom246 = sext i32 %260 to i64
  %arrayidx247 = getelementptr inbounds float, ptr %259, i64 %idxprom246
  %261 = load float, ptr %arrayidx247, align 4
  %262 = call float @llvm.fmuladd.f32(float %258, float %261, float %257)
  %263 = load ptr, ptr %c2.addr, align 8
  %264 = load i32, ptr %t4, align 4
  %inc249 = add nsw i32 %264, 1
  store i32 %inc249, ptr %t4, align 4
  %idxprom250 = sext i32 %264 to i64
  %arrayidx251 = getelementptr inbounds float, ptr %263, i64 %idxprom250
  store float %262, ptr %arrayidx251, align 4
  %265 = load float, ptr %ai1, align 4
  %266 = load ptr, ptr %ch2.addr, align 8
  %267 = load i32, ptr %t8, align 4
  %inc252 = add nsw i32 %267, 1
  store i32 %inc252, ptr %t8, align 4
  %idxprom253 = sext i32 %267 to i64
  %arrayidx254 = getelementptr inbounds float, ptr %266, i64 %idxprom253
  %268 = load float, ptr %arrayidx254, align 4
  %mul255 = fmul float %265, %268
  %269 = load ptr, ptr %c2.addr, align 8
  %270 = load i32, ptr %t5, align 4
  %inc256 = add nsw i32 %270, 1
  store i32 %inc256, ptr %t5, align 4
  %idxprom257 = sext i32 %270 to i64
  %arrayidx258 = getelementptr inbounds float, ptr %269, i64 %idxprom257
  store float %mul255, ptr %arrayidx258, align 4
  br label %for.inc259

for.inc259:                                       ; preds = %for.body241
  %271 = load i32, ptr %ik, align 4
  %inc260 = add nsw i32 %271, 1
  store i32 %inc260, ptr %ik, align 4
  br label %for.cond238, !llvm.loop !19

for.end261:                                       ; preds = %for.cond238
  %272 = load float, ptr %ar1, align 4
  store float %272, ptr %dc2, align 4
  %273 = load float, ptr %ai1, align 4
  store float %273, ptr %ds2, align 4
  %274 = load float, ptr %ar1, align 4
  store float %274, ptr %ar2, align 4
  %275 = load float, ptr %ai1, align 4
  store float %275, ptr %ai2, align 4
  %276 = load i32, ptr %idl1.addr, align 4
  store i32 %276, ptr %t6, align 4
  %277 = load i32, ptr %t9, align 4
  %278 = load i32, ptr %idl1.addr, align 4
  %sub262 = sub nsw i32 %277, %278
  store i32 %sub262, ptr %t7, align 4
  store i32 2, ptr %j, align 4
  br label %for.cond263

for.cond263:                                      ; preds = %for.inc295, %for.end261
  %279 = load i32, ptr %j, align 4
  %280 = load i32, ptr %ipph, align 4
  %cmp264 = icmp slt i32 %279, %280
  br i1 %cmp264, label %for.body266, label %for.end297

for.body266:                                      ; preds = %for.cond263
  %281 = load i32, ptr %idl1.addr, align 4
  %282 = load i32, ptr %t6, align 4
  %add267 = add nsw i32 %282, %281
  store i32 %add267, ptr %t6, align 4
  %283 = load i32, ptr %idl1.addr, align 4
  %284 = load i32, ptr %t7, align 4
  %sub268 = sub nsw i32 %284, %283
  store i32 %sub268, ptr %t7, align 4
  %285 = load float, ptr %dc2, align 4
  %286 = load float, ptr %ar2, align 4
  %287 = load float, ptr %ds2, align 4
  %288 = load float, ptr %ai2, align 4
  %mul270 = fmul float %287, %288
  %neg271 = fneg float %mul270
  %289 = call float @llvm.fmuladd.f32(float %285, float %286, float %neg271)
  store float %289, ptr %ar2h, align 4
  %290 = load float, ptr %dc2, align 4
  %291 = load float, ptr %ai2, align 4
  %292 = load float, ptr %ds2, align 4
  %293 = load float, ptr %ar2, align 4
  %mul273 = fmul float %292, %293
  %294 = call float @llvm.fmuladd.f32(float %290, float %291, float %mul273)
  store float %294, ptr %ai2, align 4
  %295 = load float, ptr %ar2h, align 4
  store float %295, ptr %ar2, align 4
  %296 = load i32, ptr %t1, align 4
  store i32 %296, ptr %t4, align 4
  %297 = load i32, ptr %t2, align 4
  store i32 %297, ptr %t5, align 4
  %298 = load i32, ptr %t6, align 4
  store i32 %298, ptr %t11, align 4
  %299 = load i32, ptr %t7, align 4
  store i32 %299, ptr %t12, align 4
  store i32 0, ptr %ik, align 4
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc292, %for.body266
  %300 = load i32, ptr %ik, align 4
  %301 = load i32, ptr %idl1.addr, align 4
  %cmp275 = icmp slt i32 %300, %301
  br i1 %cmp275, label %for.body277, label %for.end294

for.body277:                                      ; preds = %for.cond274
  %302 = load float, ptr %ar2, align 4
  %303 = load ptr, ptr %ch2.addr, align 8
  %304 = load i32, ptr %t11, align 4
  %inc278 = add nsw i32 %304, 1
  store i32 %inc278, ptr %t11, align 4
  %idxprom279 = sext i32 %304 to i64
  %arrayidx280 = getelementptr inbounds float, ptr %303, i64 %idxprom279
  %305 = load float, ptr %arrayidx280, align 4
  %306 = load ptr, ptr %c2.addr, align 8
  %307 = load i32, ptr %t4, align 4
  %inc282 = add nsw i32 %307, 1
  store i32 %inc282, ptr %t4, align 4
  %idxprom283 = sext i32 %307 to i64
  %arrayidx284 = getelementptr inbounds float, ptr %306, i64 %idxprom283
  %308 = load float, ptr %arrayidx284, align 4
  %309 = call float @llvm.fmuladd.f32(float %302, float %305, float %308)
  store float %309, ptr %arrayidx284, align 4
  %310 = load float, ptr %ai2, align 4
  %311 = load ptr, ptr %ch2.addr, align 8
  %312 = load i32, ptr %t12, align 4
  %inc285 = add nsw i32 %312, 1
  store i32 %inc285, ptr %t12, align 4
  %idxprom286 = sext i32 %312 to i64
  %arrayidx287 = getelementptr inbounds float, ptr %311, i64 %idxprom286
  %313 = load float, ptr %arrayidx287, align 4
  %314 = load ptr, ptr %c2.addr, align 8
  %315 = load i32, ptr %t5, align 4
  %inc289 = add nsw i32 %315, 1
  store i32 %inc289, ptr %t5, align 4
  %idxprom290 = sext i32 %315 to i64
  %arrayidx291 = getelementptr inbounds float, ptr %314, i64 %idxprom290
  %316 = load float, ptr %arrayidx291, align 4
  %317 = call float @llvm.fmuladd.f32(float %310, float %313, float %316)
  store float %317, ptr %arrayidx291, align 4
  br label %for.inc292

for.inc292:                                       ; preds = %for.body277
  %318 = load i32, ptr %ik, align 4
  %inc293 = add nsw i32 %318, 1
  store i32 %inc293, ptr %ik, align 4
  br label %for.cond274, !llvm.loop !20

for.end294:                                       ; preds = %for.cond274
  br label %for.inc295

for.inc295:                                       ; preds = %for.end294
  %319 = load i32, ptr %j, align 4
  %inc296 = add nsw i32 %319, 1
  store i32 %inc296, ptr %j, align 4
  br label %for.cond263, !llvm.loop !21

for.end297:                                       ; preds = %for.cond263
  br label %for.inc298

for.inc298:                                       ; preds = %for.end297
  %320 = load i32, ptr %l, align 4
  %inc299 = add nsw i32 %320, 1
  store i32 %inc299, ptr %l, align 4
  br label %for.cond228, !llvm.loop !22

for.end300:                                       ; preds = %for.cond228
  store i32 0, ptr %t1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond301

for.cond301:                                      ; preds = %for.inc319, %for.end300
  %321 = load i32, ptr %j, align 4
  %322 = load i32, ptr %ipph, align 4
  %cmp302 = icmp slt i32 %321, %322
  br i1 %cmp302, label %for.body304, label %for.end321

for.body304:                                      ; preds = %for.cond301
  %323 = load i32, ptr %idl1.addr, align 4
  %324 = load i32, ptr %t1, align 4
  %add305 = add nsw i32 %324, %323
  store i32 %add305, ptr %t1, align 4
  %325 = load i32, ptr %t1, align 4
  store i32 %325, ptr %t2, align 4
  store i32 0, ptr %ik, align 4
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc316, %for.body304
  %326 = load i32, ptr %ik, align 4
  %327 = load i32, ptr %idl1.addr, align 4
  %cmp307 = icmp slt i32 %326, %327
  br i1 %cmp307, label %for.body309, label %for.end318

for.body309:                                      ; preds = %for.cond306
  %328 = load ptr, ptr %ch2.addr, align 8
  %329 = load i32, ptr %t2, align 4
  %inc310 = add nsw i32 %329, 1
  store i32 %inc310, ptr %t2, align 4
  %idxprom311 = sext i32 %329 to i64
  %arrayidx312 = getelementptr inbounds float, ptr %328, i64 %idxprom311
  %330 = load float, ptr %arrayidx312, align 4
  %331 = load ptr, ptr %ch2.addr, align 8
  %332 = load i32, ptr %ik, align 4
  %idxprom313 = sext i32 %332 to i64
  %arrayidx314 = getelementptr inbounds float, ptr %331, i64 %idxprom313
  %333 = load float, ptr %arrayidx314, align 4
  %add315 = fadd float %333, %330
  store float %add315, ptr %arrayidx314, align 4
  br label %for.inc316

for.inc316:                                       ; preds = %for.body309
  %334 = load i32, ptr %ik, align 4
  %inc317 = add nsw i32 %334, 1
  store i32 %inc317, ptr %ik, align 4
  br label %for.cond306, !llvm.loop !23

for.end318:                                       ; preds = %for.cond306
  br label %for.inc319

for.inc319:                                       ; preds = %for.end318
  %335 = load i32, ptr %j, align 4
  %inc320 = add nsw i32 %335, 1
  store i32 %inc320, ptr %j, align 4
  br label %for.cond301, !llvm.loop !24

for.end321:                                       ; preds = %for.cond301
  store i32 0, ptr %t1, align 4
  %336 = load i32, ptr %ipp2, align 4
  %337 = load i32, ptr %t0, align 4
  %mul322 = mul nsw i32 %336, %337
  store i32 %mul322, ptr %t2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond323

for.cond323:                                      ; preds = %for.inc352, %for.end321
  %338 = load i32, ptr %j, align 4
  %339 = load i32, ptr %ipph, align 4
  %cmp324 = icmp slt i32 %338, %339
  br i1 %cmp324, label %for.body326, label %for.end354

for.body326:                                      ; preds = %for.cond323
  %340 = load i32, ptr %t0, align 4
  %341 = load i32, ptr %t1, align 4
  %add327 = add nsw i32 %341, %340
  store i32 %add327, ptr %t1, align 4
  %342 = load i32, ptr %t0, align 4
  %343 = load i32, ptr %t2, align 4
  %sub328 = sub nsw i32 %343, %342
  store i32 %sub328, ptr %t2, align 4
  %344 = load i32, ptr %t1, align 4
  store i32 %344, ptr %t3, align 4
  %345 = load i32, ptr %t2, align 4
  store i32 %345, ptr %t4, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond329

for.cond329:                                      ; preds = %for.inc349, %for.body326
  %346 = load i32, ptr %k, align 4
  %347 = load i32, ptr %l1.addr, align 4
  %cmp330 = icmp slt i32 %346, %347
  br i1 %cmp330, label %for.body332, label %for.end351

for.body332:                                      ; preds = %for.cond329
  %348 = load ptr, ptr %c1.addr, align 8
  %349 = load i32, ptr %t3, align 4
  %idxprom333 = sext i32 %349 to i64
  %arrayidx334 = getelementptr inbounds float, ptr %348, i64 %idxprom333
  %350 = load float, ptr %arrayidx334, align 4
  %351 = load ptr, ptr %c1.addr, align 8
  %352 = load i32, ptr %t4, align 4
  %idxprom335 = sext i32 %352 to i64
  %arrayidx336 = getelementptr inbounds float, ptr %351, i64 %idxprom335
  %353 = load float, ptr %arrayidx336, align 4
  %sub337 = fsub float %350, %353
  %354 = load ptr, ptr %ch.addr, align 8
  %355 = load i32, ptr %t3, align 4
  %idxprom338 = sext i32 %355 to i64
  %arrayidx339 = getelementptr inbounds float, ptr %354, i64 %idxprom338
  store float %sub337, ptr %arrayidx339, align 4
  %356 = load ptr, ptr %c1.addr, align 8
  %357 = load i32, ptr %t3, align 4
  %idxprom340 = sext i32 %357 to i64
  %arrayidx341 = getelementptr inbounds float, ptr %356, i64 %idxprom340
  %358 = load float, ptr %arrayidx341, align 4
  %359 = load ptr, ptr %c1.addr, align 8
  %360 = load i32, ptr %t4, align 4
  %idxprom342 = sext i32 %360 to i64
  %arrayidx343 = getelementptr inbounds float, ptr %359, i64 %idxprom342
  %361 = load float, ptr %arrayidx343, align 4
  %add344 = fadd float %358, %361
  %362 = load ptr, ptr %ch.addr, align 8
  %363 = load i32, ptr %t4, align 4
  %idxprom345 = sext i32 %363 to i64
  %arrayidx346 = getelementptr inbounds float, ptr %362, i64 %idxprom345
  store float %add344, ptr %arrayidx346, align 4
  %364 = load i32, ptr %ido.addr, align 4
  %365 = load i32, ptr %t3, align 4
  %add347 = add nsw i32 %365, %364
  store i32 %add347, ptr %t3, align 4
  %366 = load i32, ptr %ido.addr, align 4
  %367 = load i32, ptr %t4, align 4
  %add348 = add nsw i32 %367, %366
  store i32 %add348, ptr %t4, align 4
  br label %for.inc349

for.inc349:                                       ; preds = %for.body332
  %368 = load i32, ptr %k, align 4
  %inc350 = add nsw i32 %368, 1
  store i32 %inc350, ptr %k, align 4
  br label %for.cond329, !llvm.loop !25

for.end351:                                       ; preds = %for.cond329
  br label %for.inc352

for.inc352:                                       ; preds = %for.end351
  %369 = load i32, ptr %j, align 4
  %inc353 = add nsw i32 %369, 1
  store i32 %inc353, ptr %j, align 4
  br label %for.cond323, !llvm.loop !26

for.end354:                                       ; preds = %for.cond323
  %370 = load i32, ptr %ido.addr, align 4
  %cmp355 = icmp eq i32 %370, 1
  br i1 %cmp355, label %if.then357, label %if.end358

if.then357:                                       ; preds = %for.end354
  br label %L132

if.end358:                                        ; preds = %for.end354
  %371 = load i32, ptr %nbd, align 4
  %372 = load i32, ptr %l1.addr, align 4
  %cmp359 = icmp slt i32 %371, %372
  br i1 %cmp359, label %if.then361, label %if.end362

if.then361:                                       ; preds = %if.end358
  br label %L128

if.end362:                                        ; preds = %if.end358
  store i32 0, ptr %t1, align 4
  %373 = load i32, ptr %ipp2, align 4
  %374 = load i32, ptr %t0, align 4
  %mul363 = mul nsw i32 %373, %374
  store i32 %mul363, ptr %t2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond364

for.cond364:                                      ; preds = %for.inc422, %if.end362
  %375 = load i32, ptr %j, align 4
  %376 = load i32, ptr %ipph, align 4
  %cmp365 = icmp slt i32 %375, %376
  br i1 %cmp365, label %for.body367, label %for.end424

for.body367:                                      ; preds = %for.cond364
  %377 = load i32, ptr %t0, align 4
  %378 = load i32, ptr %t1, align 4
  %add368 = add nsw i32 %378, %377
  store i32 %add368, ptr %t1, align 4
  %379 = load i32, ptr %t0, align 4
  %380 = load i32, ptr %t2, align 4
  %sub369 = sub nsw i32 %380, %379
  store i32 %sub369, ptr %t2, align 4
  %381 = load i32, ptr %t1, align 4
  store i32 %381, ptr %t3, align 4
  %382 = load i32, ptr %t2, align 4
  store i32 %382, ptr %t4, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond370

for.cond370:                                      ; preds = %for.inc419, %for.body367
  %383 = load i32, ptr %k, align 4
  %384 = load i32, ptr %l1.addr, align 4
  %cmp371 = icmp slt i32 %383, %384
  br i1 %cmp371, label %for.body373, label %for.end421

for.body373:                                      ; preds = %for.cond370
  %385 = load i32, ptr %t3, align 4
  store i32 %385, ptr %t5, align 4
  %386 = load i32, ptr %t4, align 4
  store i32 %386, ptr %t6, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond374

for.cond374:                                      ; preds = %for.inc414, %for.body373
  %387 = load i32, ptr %i, align 4
  %388 = load i32, ptr %ido.addr, align 4
  %cmp375 = icmp slt i32 %387, %388
  br i1 %cmp375, label %for.body377, label %for.end416

for.body377:                                      ; preds = %for.cond374
  %389 = load i32, ptr %t5, align 4
  %add378 = add nsw i32 %389, 2
  store i32 %add378, ptr %t5, align 4
  %390 = load i32, ptr %t6, align 4
  %add379 = add nsw i32 %390, 2
  store i32 %add379, ptr %t6, align 4
  %391 = load ptr, ptr %c1.addr, align 8
  %392 = load i32, ptr %t5, align 4
  %sub380 = sub nsw i32 %392, 1
  %idxprom381 = sext i32 %sub380 to i64
  %arrayidx382 = getelementptr inbounds float, ptr %391, i64 %idxprom381
  %393 = load float, ptr %arrayidx382, align 4
  %394 = load ptr, ptr %c1.addr, align 8
  %395 = load i32, ptr %t6, align 4
  %idxprom383 = sext i32 %395 to i64
  %arrayidx384 = getelementptr inbounds float, ptr %394, i64 %idxprom383
  %396 = load float, ptr %arrayidx384, align 4
  %sub385 = fsub float %393, %396
  %397 = load ptr, ptr %ch.addr, align 8
  %398 = load i32, ptr %t5, align 4
  %sub386 = sub nsw i32 %398, 1
  %idxprom387 = sext i32 %sub386 to i64
  %arrayidx388 = getelementptr inbounds float, ptr %397, i64 %idxprom387
  store float %sub385, ptr %arrayidx388, align 4
  %399 = load ptr, ptr %c1.addr, align 8
  %400 = load i32, ptr %t5, align 4
  %sub389 = sub nsw i32 %400, 1
  %idxprom390 = sext i32 %sub389 to i64
  %arrayidx391 = getelementptr inbounds float, ptr %399, i64 %idxprom390
  %401 = load float, ptr %arrayidx391, align 4
  %402 = load ptr, ptr %c1.addr, align 8
  %403 = load i32, ptr %t6, align 4
  %idxprom392 = sext i32 %403 to i64
  %arrayidx393 = getelementptr inbounds float, ptr %402, i64 %idxprom392
  %404 = load float, ptr %arrayidx393, align 4
  %add394 = fadd float %401, %404
  %405 = load ptr, ptr %ch.addr, align 8
  %406 = load i32, ptr %t6, align 4
  %sub395 = sub nsw i32 %406, 1
  %idxprom396 = sext i32 %sub395 to i64
  %arrayidx397 = getelementptr inbounds float, ptr %405, i64 %idxprom396
  store float %add394, ptr %arrayidx397, align 4
  %407 = load ptr, ptr %c1.addr, align 8
  %408 = load i32, ptr %t5, align 4
  %idxprom398 = sext i32 %408 to i64
  %arrayidx399 = getelementptr inbounds float, ptr %407, i64 %idxprom398
  %409 = load float, ptr %arrayidx399, align 4
  %410 = load ptr, ptr %c1.addr, align 8
  %411 = load i32, ptr %t6, align 4
  %sub400 = sub nsw i32 %411, 1
  %idxprom401 = sext i32 %sub400 to i64
  %arrayidx402 = getelementptr inbounds float, ptr %410, i64 %idxprom401
  %412 = load float, ptr %arrayidx402, align 4
  %add403 = fadd float %409, %412
  %413 = load ptr, ptr %ch.addr, align 8
  %414 = load i32, ptr %t5, align 4
  %idxprom404 = sext i32 %414 to i64
  %arrayidx405 = getelementptr inbounds float, ptr %413, i64 %idxprom404
  store float %add403, ptr %arrayidx405, align 4
  %415 = load ptr, ptr %c1.addr, align 8
  %416 = load i32, ptr %t5, align 4
  %idxprom406 = sext i32 %416 to i64
  %arrayidx407 = getelementptr inbounds float, ptr %415, i64 %idxprom406
  %417 = load float, ptr %arrayidx407, align 4
  %418 = load ptr, ptr %c1.addr, align 8
  %419 = load i32, ptr %t6, align 4
  %sub408 = sub nsw i32 %419, 1
  %idxprom409 = sext i32 %sub408 to i64
  %arrayidx410 = getelementptr inbounds float, ptr %418, i64 %idxprom409
  %420 = load float, ptr %arrayidx410, align 4
  %sub411 = fsub float %417, %420
  %421 = load ptr, ptr %ch.addr, align 8
  %422 = load i32, ptr %t6, align 4
  %idxprom412 = sext i32 %422 to i64
  %arrayidx413 = getelementptr inbounds float, ptr %421, i64 %idxprom412
  store float %sub411, ptr %arrayidx413, align 4
  br label %for.inc414

for.inc414:                                       ; preds = %for.body377
  %423 = load i32, ptr %i, align 4
  %add415 = add nsw i32 %423, 2
  store i32 %add415, ptr %i, align 4
  br label %for.cond374, !llvm.loop !27

for.end416:                                       ; preds = %for.cond374
  %424 = load i32, ptr %ido.addr, align 4
  %425 = load i32, ptr %t3, align 4
  %add417 = add nsw i32 %425, %424
  store i32 %add417, ptr %t3, align 4
  %426 = load i32, ptr %ido.addr, align 4
  %427 = load i32, ptr %t4, align 4
  %add418 = add nsw i32 %427, %426
  store i32 %add418, ptr %t4, align 4
  br label %for.inc419

for.inc419:                                       ; preds = %for.end416
  %428 = load i32, ptr %k, align 4
  %inc420 = add nsw i32 %428, 1
  store i32 %inc420, ptr %k, align 4
  br label %for.cond370, !llvm.loop !28

for.end421:                                       ; preds = %for.cond370
  br label %for.inc422

for.inc422:                                       ; preds = %for.end421
  %429 = load i32, ptr %j, align 4
  %inc423 = add nsw i32 %429, 1
  store i32 %inc423, ptr %j, align 4
  br label %for.cond364, !llvm.loop !29

for.end424:                                       ; preds = %for.cond364
  br label %L132

L128:                                             ; preds = %if.then361
  store i32 0, ptr %t1, align 4
  %430 = load i32, ptr %ipp2, align 4
  %431 = load i32, ptr %t0, align 4
  %mul425 = mul nsw i32 %430, %431
  store i32 %mul425, ptr %t2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond426

for.cond426:                                      ; preds = %for.inc484, %L128
  %432 = load i32, ptr %j, align 4
  %433 = load i32, ptr %ipph, align 4
  %cmp427 = icmp slt i32 %432, %433
  br i1 %cmp427, label %for.body429, label %for.end486

for.body429:                                      ; preds = %for.cond426
  %434 = load i32, ptr %t0, align 4
  %435 = load i32, ptr %t1, align 4
  %add430 = add nsw i32 %435, %434
  store i32 %add430, ptr %t1, align 4
  %436 = load i32, ptr %t0, align 4
  %437 = load i32, ptr %t2, align 4
  %sub431 = sub nsw i32 %437, %436
  store i32 %sub431, ptr %t2, align 4
  %438 = load i32, ptr %t1, align 4
  store i32 %438, ptr %t3, align 4
  %439 = load i32, ptr %t2, align 4
  store i32 %439, ptr %t4, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond432

for.cond432:                                      ; preds = %for.inc481, %for.body429
  %440 = load i32, ptr %i, align 4
  %441 = load i32, ptr %ido.addr, align 4
  %cmp433 = icmp slt i32 %440, %441
  br i1 %cmp433, label %for.body435, label %for.end483

for.body435:                                      ; preds = %for.cond432
  %442 = load i32, ptr %t3, align 4
  %add436 = add nsw i32 %442, 2
  store i32 %add436, ptr %t3, align 4
  %443 = load i32, ptr %t4, align 4
  %add437 = add nsw i32 %443, 2
  store i32 %add437, ptr %t4, align 4
  %444 = load i32, ptr %t3, align 4
  store i32 %444, ptr %t5, align 4
  %445 = load i32, ptr %t4, align 4
  store i32 %445, ptr %t6, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond438

for.cond438:                                      ; preds = %for.inc478, %for.body435
  %446 = load i32, ptr %k, align 4
  %447 = load i32, ptr %l1.addr, align 4
  %cmp439 = icmp slt i32 %446, %447
  br i1 %cmp439, label %for.body441, label %for.end480

for.body441:                                      ; preds = %for.cond438
  %448 = load ptr, ptr %c1.addr, align 8
  %449 = load i32, ptr %t5, align 4
  %sub442 = sub nsw i32 %449, 1
  %idxprom443 = sext i32 %sub442 to i64
  %arrayidx444 = getelementptr inbounds float, ptr %448, i64 %idxprom443
  %450 = load float, ptr %arrayidx444, align 4
  %451 = load ptr, ptr %c1.addr, align 8
  %452 = load i32, ptr %t6, align 4
  %idxprom445 = sext i32 %452 to i64
  %arrayidx446 = getelementptr inbounds float, ptr %451, i64 %idxprom445
  %453 = load float, ptr %arrayidx446, align 4
  %sub447 = fsub float %450, %453
  %454 = load ptr, ptr %ch.addr, align 8
  %455 = load i32, ptr %t5, align 4
  %sub448 = sub nsw i32 %455, 1
  %idxprom449 = sext i32 %sub448 to i64
  %arrayidx450 = getelementptr inbounds float, ptr %454, i64 %idxprom449
  store float %sub447, ptr %arrayidx450, align 4
  %456 = load ptr, ptr %c1.addr, align 8
  %457 = load i32, ptr %t5, align 4
  %sub451 = sub nsw i32 %457, 1
  %idxprom452 = sext i32 %sub451 to i64
  %arrayidx453 = getelementptr inbounds float, ptr %456, i64 %idxprom452
  %458 = load float, ptr %arrayidx453, align 4
  %459 = load ptr, ptr %c1.addr, align 8
  %460 = load i32, ptr %t6, align 4
  %idxprom454 = sext i32 %460 to i64
  %arrayidx455 = getelementptr inbounds float, ptr %459, i64 %idxprom454
  %461 = load float, ptr %arrayidx455, align 4
  %add456 = fadd float %458, %461
  %462 = load ptr, ptr %ch.addr, align 8
  %463 = load i32, ptr %t6, align 4
  %sub457 = sub nsw i32 %463, 1
  %idxprom458 = sext i32 %sub457 to i64
  %arrayidx459 = getelementptr inbounds float, ptr %462, i64 %idxprom458
  store float %add456, ptr %arrayidx459, align 4
  %464 = load ptr, ptr %c1.addr, align 8
  %465 = load i32, ptr %t5, align 4
  %idxprom460 = sext i32 %465 to i64
  %arrayidx461 = getelementptr inbounds float, ptr %464, i64 %idxprom460
  %466 = load float, ptr %arrayidx461, align 4
  %467 = load ptr, ptr %c1.addr, align 8
  %468 = load i32, ptr %t6, align 4
  %sub462 = sub nsw i32 %468, 1
  %idxprom463 = sext i32 %sub462 to i64
  %arrayidx464 = getelementptr inbounds float, ptr %467, i64 %idxprom463
  %469 = load float, ptr %arrayidx464, align 4
  %add465 = fadd float %466, %469
  %470 = load ptr, ptr %ch.addr, align 8
  %471 = load i32, ptr %t5, align 4
  %idxprom466 = sext i32 %471 to i64
  %arrayidx467 = getelementptr inbounds float, ptr %470, i64 %idxprom466
  store float %add465, ptr %arrayidx467, align 4
  %472 = load ptr, ptr %c1.addr, align 8
  %473 = load i32, ptr %t5, align 4
  %idxprom468 = sext i32 %473 to i64
  %arrayidx469 = getelementptr inbounds float, ptr %472, i64 %idxprom468
  %474 = load float, ptr %arrayidx469, align 4
  %475 = load ptr, ptr %c1.addr, align 8
  %476 = load i32, ptr %t6, align 4
  %sub470 = sub nsw i32 %476, 1
  %idxprom471 = sext i32 %sub470 to i64
  %arrayidx472 = getelementptr inbounds float, ptr %475, i64 %idxprom471
  %477 = load float, ptr %arrayidx472, align 4
  %sub473 = fsub float %474, %477
  %478 = load ptr, ptr %ch.addr, align 8
  %479 = load i32, ptr %t6, align 4
  %idxprom474 = sext i32 %479 to i64
  %arrayidx475 = getelementptr inbounds float, ptr %478, i64 %idxprom474
  store float %sub473, ptr %arrayidx475, align 4
  %480 = load i32, ptr %ido.addr, align 4
  %481 = load i32, ptr %t5, align 4
  %add476 = add nsw i32 %481, %480
  store i32 %add476, ptr %t5, align 4
  %482 = load i32, ptr %ido.addr, align 4
  %483 = load i32, ptr %t6, align 4
  %add477 = add nsw i32 %483, %482
  store i32 %add477, ptr %t6, align 4
  br label %for.inc478

for.inc478:                                       ; preds = %for.body441
  %484 = load i32, ptr %k, align 4
  %inc479 = add nsw i32 %484, 1
  store i32 %inc479, ptr %k, align 4
  br label %for.cond438, !llvm.loop !30

for.end480:                                       ; preds = %for.cond438
  br label %for.inc481

for.inc481:                                       ; preds = %for.end480
  %485 = load i32, ptr %i, align 4
  %add482 = add nsw i32 %485, 2
  store i32 %add482, ptr %i, align 4
  br label %for.cond432, !llvm.loop !31

for.end483:                                       ; preds = %for.cond432
  br label %for.inc484

for.inc484:                                       ; preds = %for.end483
  %486 = load i32, ptr %j, align 4
  %inc485 = add nsw i32 %486, 1
  store i32 %inc485, ptr %j, align 4
  br label %for.cond426, !llvm.loop !32

for.end486:                                       ; preds = %for.cond426
  br label %L132

L132:                                             ; preds = %for.end486, %for.end424, %if.then357
  %487 = load i32, ptr %ido.addr, align 4
  %cmp487 = icmp eq i32 %487, 1
  br i1 %cmp487, label %if.then489, label %if.end490

if.then489:                                       ; preds = %L132
  br label %for.end641

if.end490:                                        ; preds = %L132
  store i32 0, ptr %ik, align 4
  br label %for.cond491

for.cond491:                                      ; preds = %for.inc499, %if.end490
  %488 = load i32, ptr %ik, align 4
  %489 = load i32, ptr %idl1.addr, align 4
  %cmp492 = icmp slt i32 %488, %489
  br i1 %cmp492, label %for.body494, label %for.end501

for.body494:                                      ; preds = %for.cond491
  %490 = load ptr, ptr %ch2.addr, align 8
  %491 = load i32, ptr %ik, align 4
  %idxprom495 = sext i32 %491 to i64
  %arrayidx496 = getelementptr inbounds float, ptr %490, i64 %idxprom495
  %492 = load float, ptr %arrayidx496, align 4
  %493 = load ptr, ptr %c2.addr, align 8
  %494 = load i32, ptr %ik, align 4
  %idxprom497 = sext i32 %494 to i64
  %arrayidx498 = getelementptr inbounds float, ptr %493, i64 %idxprom497
  store float %492, ptr %arrayidx498, align 4
  br label %for.inc499

for.inc499:                                       ; preds = %for.body494
  %495 = load i32, ptr %ik, align 4
  %inc500 = add nsw i32 %495, 1
  store i32 %inc500, ptr %ik, align 4
  br label %for.cond491, !llvm.loop !33

for.end501:                                       ; preds = %for.cond491
  store i32 0, ptr %t1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond502

for.cond502:                                      ; preds = %for.inc519, %for.end501
  %496 = load i32, ptr %j, align 4
  %497 = load i32, ptr %ip.addr, align 4
  %cmp503 = icmp slt i32 %496, %497
  br i1 %cmp503, label %for.body505, label %for.end521

for.body505:                                      ; preds = %for.cond502
  %498 = load i32, ptr %t0, align 4
  %499 = load i32, ptr %t1, align 4
  %add506 = add nsw i32 %499, %498
  store i32 %add506, ptr %t1, align 4
  store i32 %add506, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond507

for.cond507:                                      ; preds = %for.inc516, %for.body505
  %500 = load i32, ptr %k, align 4
  %501 = load i32, ptr %l1.addr, align 4
  %cmp508 = icmp slt i32 %500, %501
  br i1 %cmp508, label %for.body510, label %for.end518

for.body510:                                      ; preds = %for.cond507
  %502 = load ptr, ptr %ch.addr, align 8
  %503 = load i32, ptr %t2, align 4
  %idxprom511 = sext i32 %503 to i64
  %arrayidx512 = getelementptr inbounds float, ptr %502, i64 %idxprom511
  %504 = load float, ptr %arrayidx512, align 4
  %505 = load ptr, ptr %c1.addr, align 8
  %506 = load i32, ptr %t2, align 4
  %idxprom513 = sext i32 %506 to i64
  %arrayidx514 = getelementptr inbounds float, ptr %505, i64 %idxprom513
  store float %504, ptr %arrayidx514, align 4
  %507 = load i32, ptr %ido.addr, align 4
  %508 = load i32, ptr %t2, align 4
  %add515 = add nsw i32 %508, %507
  store i32 %add515, ptr %t2, align 4
  br label %for.inc516

for.inc516:                                       ; preds = %for.body510
  %509 = load i32, ptr %k, align 4
  %inc517 = add nsw i32 %509, 1
  store i32 %inc517, ptr %k, align 4
  br label %for.cond507, !llvm.loop !34

for.end518:                                       ; preds = %for.cond507
  br label %for.inc519

for.inc519:                                       ; preds = %for.end518
  %510 = load i32, ptr %j, align 4
  %inc520 = add nsw i32 %510, 1
  store i32 %inc520, ptr %j, align 4
  br label %for.cond502, !llvm.loop !35

for.end521:                                       ; preds = %for.cond502
  %511 = load i32, ptr %nbd, align 4
  %512 = load i32, ptr %l1.addr, align 4
  %cmp522 = icmp sgt i32 %511, %512
  br i1 %cmp522, label %if.then524, label %if.end525

if.then524:                                       ; preds = %for.end521
  br label %L139

if.end525:                                        ; preds = %for.end521
  %513 = load i32, ptr %ido.addr, align 4
  %sub526 = sub nsw i32 0, %513
  %sub527 = sub nsw i32 %sub526, 1
  store i32 %sub527, ptr %is, align 4
  store i32 0, ptr %t1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond528

for.cond528:                                      ; preds = %for.inc581, %if.end525
  %514 = load i32, ptr %j, align 4
  %515 = load i32, ptr %ip.addr, align 4
  %cmp529 = icmp slt i32 %514, %515
  br i1 %cmp529, label %for.body531, label %for.end583

for.body531:                                      ; preds = %for.cond528
  %516 = load i32, ptr %ido.addr, align 4
  %517 = load i32, ptr %is, align 4
  %add532 = add nsw i32 %517, %516
  store i32 %add532, ptr %is, align 4
  %518 = load i32, ptr %t0, align 4
  %519 = load i32, ptr %t1, align 4
  %add533 = add nsw i32 %519, %518
  store i32 %add533, ptr %t1, align 4
  %520 = load i32, ptr %is, align 4
  store i32 %520, ptr %idij, align 4
  %521 = load i32, ptr %t1, align 4
  store i32 %521, ptr %t2, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond534

for.cond534:                                      ; preds = %for.inc578, %for.body531
  %522 = load i32, ptr %i, align 4
  %523 = load i32, ptr %ido.addr, align 4
  %cmp535 = icmp slt i32 %522, %523
  br i1 %cmp535, label %for.body537, label %for.end580

for.body537:                                      ; preds = %for.cond534
  %524 = load i32, ptr %t2, align 4
  %add538 = add nsw i32 %524, 2
  store i32 %add538, ptr %t2, align 4
  %525 = load i32, ptr %idij, align 4
  %add539 = add nsw i32 %525, 2
  store i32 %add539, ptr %idij, align 4
  %526 = load i32, ptr %t2, align 4
  store i32 %526, ptr %t3, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond540

for.cond540:                                      ; preds = %for.inc575, %for.body537
  %527 = load i32, ptr %k, align 4
  %528 = load i32, ptr %l1.addr, align 4
  %cmp541 = icmp slt i32 %527, %528
  br i1 %cmp541, label %for.body543, label %for.end577

for.body543:                                      ; preds = %for.cond540
  %529 = load ptr, ptr %wa.addr, align 8
  %530 = load i32, ptr %idij, align 4
  %sub544 = sub nsw i32 %530, 1
  %idxprom545 = sext i32 %sub544 to i64
  %arrayidx546 = getelementptr inbounds float, ptr %529, i64 %idxprom545
  %531 = load float, ptr %arrayidx546, align 4
  %532 = load ptr, ptr %ch.addr, align 8
  %533 = load i32, ptr %t3, align 4
  %sub547 = sub nsw i32 %533, 1
  %idxprom548 = sext i32 %sub547 to i64
  %arrayidx549 = getelementptr inbounds float, ptr %532, i64 %idxprom548
  %534 = load float, ptr %arrayidx549, align 4
  %535 = load ptr, ptr %wa.addr, align 8
  %536 = load i32, ptr %idij, align 4
  %idxprom551 = sext i32 %536 to i64
  %arrayidx552 = getelementptr inbounds float, ptr %535, i64 %idxprom551
  %537 = load float, ptr %arrayidx552, align 4
  %538 = load ptr, ptr %ch.addr, align 8
  %539 = load i32, ptr %t3, align 4
  %idxprom553 = sext i32 %539 to i64
  %arrayidx554 = getelementptr inbounds float, ptr %538, i64 %idxprom553
  %540 = load float, ptr %arrayidx554, align 4
  %mul555 = fmul float %537, %540
  %neg556 = fneg float %mul555
  %541 = call float @llvm.fmuladd.f32(float %531, float %534, float %neg556)
  %542 = load ptr, ptr %c1.addr, align 8
  %543 = load i32, ptr %t3, align 4
  %sub557 = sub nsw i32 %543, 1
  %idxprom558 = sext i32 %sub557 to i64
  %arrayidx559 = getelementptr inbounds float, ptr %542, i64 %idxprom558
  store float %541, ptr %arrayidx559, align 4
  %544 = load ptr, ptr %wa.addr, align 8
  %545 = load i32, ptr %idij, align 4
  %sub560 = sub nsw i32 %545, 1
  %idxprom561 = sext i32 %sub560 to i64
  %arrayidx562 = getelementptr inbounds float, ptr %544, i64 %idxprom561
  %546 = load float, ptr %arrayidx562, align 4
  %547 = load ptr, ptr %ch.addr, align 8
  %548 = load i32, ptr %t3, align 4
  %idxprom563 = sext i32 %548 to i64
  %arrayidx564 = getelementptr inbounds float, ptr %547, i64 %idxprom563
  %549 = load float, ptr %arrayidx564, align 4
  %550 = load ptr, ptr %wa.addr, align 8
  %551 = load i32, ptr %idij, align 4
  %idxprom566 = sext i32 %551 to i64
  %arrayidx567 = getelementptr inbounds float, ptr %550, i64 %idxprom566
  %552 = load float, ptr %arrayidx567, align 4
  %553 = load ptr, ptr %ch.addr, align 8
  %554 = load i32, ptr %t3, align 4
  %sub568 = sub nsw i32 %554, 1
  %idxprom569 = sext i32 %sub568 to i64
  %arrayidx570 = getelementptr inbounds float, ptr %553, i64 %idxprom569
  %555 = load float, ptr %arrayidx570, align 4
  %mul571 = fmul float %552, %555
  %556 = call float @llvm.fmuladd.f32(float %546, float %549, float %mul571)
  %557 = load ptr, ptr %c1.addr, align 8
  %558 = load i32, ptr %t3, align 4
  %idxprom572 = sext i32 %558 to i64
  %arrayidx573 = getelementptr inbounds float, ptr %557, i64 %idxprom572
  store float %556, ptr %arrayidx573, align 4
  %559 = load i32, ptr %ido.addr, align 4
  %560 = load i32, ptr %t3, align 4
  %add574 = add nsw i32 %560, %559
  store i32 %add574, ptr %t3, align 4
  br label %for.inc575

for.inc575:                                       ; preds = %for.body543
  %561 = load i32, ptr %k, align 4
  %inc576 = add nsw i32 %561, 1
  store i32 %inc576, ptr %k, align 4
  br label %for.cond540, !llvm.loop !36

for.end577:                                       ; preds = %for.cond540
  br label %for.inc578

for.inc578:                                       ; preds = %for.end577
  %562 = load i32, ptr %i, align 4
  %add579 = add nsw i32 %562, 2
  store i32 %add579, ptr %i, align 4
  br label %for.cond534, !llvm.loop !37

for.end580:                                       ; preds = %for.cond534
  br label %for.inc581

for.inc581:                                       ; preds = %for.end580
  %563 = load i32, ptr %j, align 4
  %inc582 = add nsw i32 %563, 1
  store i32 %inc582, ptr %j, align 4
  br label %for.cond528, !llvm.loop !38

for.end583:                                       ; preds = %for.cond528
  br label %for.end641

L139:                                             ; preds = %if.then524
  %564 = load i32, ptr %ido.addr, align 4
  %sub584 = sub nsw i32 0, %564
  %sub585 = sub nsw i32 %sub584, 1
  store i32 %sub585, ptr %is, align 4
  store i32 0, ptr %t1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond586

for.cond586:                                      ; preds = %for.inc639, %L139
  %565 = load i32, ptr %j, align 4
  %566 = load i32, ptr %ip.addr, align 4
  %cmp587 = icmp slt i32 %565, %566
  br i1 %cmp587, label %for.body589, label %for.end641

for.body589:                                      ; preds = %for.cond586
  %567 = load i32, ptr %ido.addr, align 4
  %568 = load i32, ptr %is, align 4
  %add590 = add nsw i32 %568, %567
  store i32 %add590, ptr %is, align 4
  %569 = load i32, ptr %t0, align 4
  %570 = load i32, ptr %t1, align 4
  %add591 = add nsw i32 %570, %569
  store i32 %add591, ptr %t1, align 4
  %571 = load i32, ptr %t1, align 4
  store i32 %571, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond592

for.cond592:                                      ; preds = %for.inc636, %for.body589
  %572 = load i32, ptr %k, align 4
  %573 = load i32, ptr %l1.addr, align 4
  %cmp593 = icmp slt i32 %572, %573
  br i1 %cmp593, label %for.body595, label %for.end638

for.body595:                                      ; preds = %for.cond592
  %574 = load i32, ptr %is, align 4
  store i32 %574, ptr %idij, align 4
  %575 = load i32, ptr %t2, align 4
  store i32 %575, ptr %t3, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond596

for.cond596:                                      ; preds = %for.inc632, %for.body595
  %576 = load i32, ptr %i, align 4
  %577 = load i32, ptr %ido.addr, align 4
  %cmp597 = icmp slt i32 %576, %577
  br i1 %cmp597, label %for.body599, label %for.end634

for.body599:                                      ; preds = %for.cond596
  %578 = load i32, ptr %idij, align 4
  %add600 = add nsw i32 %578, 2
  store i32 %add600, ptr %idij, align 4
  %579 = load i32, ptr %t3, align 4
  %add601 = add nsw i32 %579, 2
  store i32 %add601, ptr %t3, align 4
  %580 = load ptr, ptr %wa.addr, align 8
  %581 = load i32, ptr %idij, align 4
  %sub602 = sub nsw i32 %581, 1
  %idxprom603 = sext i32 %sub602 to i64
  %arrayidx604 = getelementptr inbounds float, ptr %580, i64 %idxprom603
  %582 = load float, ptr %arrayidx604, align 4
  %583 = load ptr, ptr %ch.addr, align 8
  %584 = load i32, ptr %t3, align 4
  %sub605 = sub nsw i32 %584, 1
  %idxprom606 = sext i32 %sub605 to i64
  %arrayidx607 = getelementptr inbounds float, ptr %583, i64 %idxprom606
  %585 = load float, ptr %arrayidx607, align 4
  %586 = load ptr, ptr %wa.addr, align 8
  %587 = load i32, ptr %idij, align 4
  %idxprom609 = sext i32 %587 to i64
  %arrayidx610 = getelementptr inbounds float, ptr %586, i64 %idxprom609
  %588 = load float, ptr %arrayidx610, align 4
  %589 = load ptr, ptr %ch.addr, align 8
  %590 = load i32, ptr %t3, align 4
  %idxprom611 = sext i32 %590 to i64
  %arrayidx612 = getelementptr inbounds float, ptr %589, i64 %idxprom611
  %591 = load float, ptr %arrayidx612, align 4
  %mul613 = fmul float %588, %591
  %neg614 = fneg float %mul613
  %592 = call float @llvm.fmuladd.f32(float %582, float %585, float %neg614)
  %593 = load ptr, ptr %c1.addr, align 8
  %594 = load i32, ptr %t3, align 4
  %sub615 = sub nsw i32 %594, 1
  %idxprom616 = sext i32 %sub615 to i64
  %arrayidx617 = getelementptr inbounds float, ptr %593, i64 %idxprom616
  store float %592, ptr %arrayidx617, align 4
  %595 = load ptr, ptr %wa.addr, align 8
  %596 = load i32, ptr %idij, align 4
  %sub618 = sub nsw i32 %596, 1
  %idxprom619 = sext i32 %sub618 to i64
  %arrayidx620 = getelementptr inbounds float, ptr %595, i64 %idxprom619
  %597 = load float, ptr %arrayidx620, align 4
  %598 = load ptr, ptr %ch.addr, align 8
  %599 = load i32, ptr %t3, align 4
  %idxprom621 = sext i32 %599 to i64
  %arrayidx622 = getelementptr inbounds float, ptr %598, i64 %idxprom621
  %600 = load float, ptr %arrayidx622, align 4
  %601 = load ptr, ptr %wa.addr, align 8
  %602 = load i32, ptr %idij, align 4
  %idxprom624 = sext i32 %602 to i64
  %arrayidx625 = getelementptr inbounds float, ptr %601, i64 %idxprom624
  %603 = load float, ptr %arrayidx625, align 4
  %604 = load ptr, ptr %ch.addr, align 8
  %605 = load i32, ptr %t3, align 4
  %sub626 = sub nsw i32 %605, 1
  %idxprom627 = sext i32 %sub626 to i64
  %arrayidx628 = getelementptr inbounds float, ptr %604, i64 %idxprom627
  %606 = load float, ptr %arrayidx628, align 4
  %mul629 = fmul float %603, %606
  %607 = call float @llvm.fmuladd.f32(float %597, float %600, float %mul629)
  %608 = load ptr, ptr %c1.addr, align 8
  %609 = load i32, ptr %t3, align 4
  %idxprom630 = sext i32 %609 to i64
  %arrayidx631 = getelementptr inbounds float, ptr %608, i64 %idxprom630
  store float %607, ptr %arrayidx631, align 4
  br label %for.inc632

for.inc632:                                       ; preds = %for.body599
  %610 = load i32, ptr %i, align 4
  %add633 = add nsw i32 %610, 2
  store i32 %add633, ptr %i, align 4
  br label %for.cond596, !llvm.loop !39

for.end634:                                       ; preds = %for.cond596
  %611 = load i32, ptr %ido.addr, align 4
  %612 = load i32, ptr %t2, align 4
  %add635 = add nsw i32 %612, %611
  store i32 %add635, ptr %t2, align 4
  br label %for.inc636

for.inc636:                                       ; preds = %for.end634
  %613 = load i32, ptr %k, align 4
  %inc637 = add nsw i32 %613, 1
  store i32 %inc637, ptr %k, align 4
  br label %for.cond592, !llvm.loop !40

for.end638:                                       ; preds = %for.cond592
  br label %for.inc639

for.inc639:                                       ; preds = %for.end638
  %614 = load i32, ptr %j, align 4
  %inc640 = add nsw i32 %614, 1
  store i32 %inc640, ptr %j, align 4
  br label %for.cond586, !llvm.loop !41

for.end641:                                       ; preds = %for.cond586, %for.end583, %if.then489
  ret void
}

attributes #0 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
