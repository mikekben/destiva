; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dradfg.tpi = external hidden global float, align 4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind
declare double @cos(double noundef) #1

; Function Attrs: nounwind
declare double @sin(double noundef) #1

; Function Attrs: nounwind uwtable
define hidden void @dradfg(i32 noundef %ido, i32 noundef %ip, i32 noundef %l1, i32 noundef %idl1, ptr noundef %cc, ptr noundef %c1, ptr noundef %c2, ptr noundef %ch, ptr noundef %ch2, ptr noundef %wa) #2 {
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
  %ic = alloca i32, align 4
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
  %idp2 = alloca i32, align 4
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
  %0 = load float, ptr @dradfg.tpi, align 4
  %1 = load i32, ptr %ip.addr, align 4
  %conv = sitofp i32 %1 to float
  %div = fdiv float %0, %conv
  store float %div, ptr %arg, align 4
  %2 = load float, ptr %arg, align 4
  %conv1 = fpext float %2 to double
  %call = call double @cos(double noundef %conv1) #3
  %conv2 = fptrunc double %call to float
  store float %conv2, ptr %dcp, align 4
  %3 = load float, ptr %arg, align 4
  %conv3 = fpext float %3 to double
  %call4 = call double @sin(double noundef %conv3) #3
  %conv5 = fptrunc double %call4 to float
  store float %conv5, ptr %dsp, align 4
  %4 = load i32, ptr %ip.addr, align 4
  %add = add nsw i32 %4, 1
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %ipph, align 4
  %5 = load i32, ptr %ip.addr, align 4
  store i32 %5, ptr %ipp2, align 4
  %6 = load i32, ptr %ido.addr, align 4
  store i32 %6, ptr %idp2, align 4
  %7 = load i32, ptr %ido.addr, align 4
  %sub = sub nsw i32 %7, 1
  %shr6 = ashr i32 %sub, 1
  store i32 %shr6, ptr %nbd, align 4
  %8 = load i32, ptr %l1.addr, align 4
  %9 = load i32, ptr %ido.addr, align 4
  %mul = mul nsw i32 %8, %9
  store i32 %mul, ptr %t0, align 4
  %10 = load i32, ptr %ip.addr, align 4
  %11 = load i32, ptr %ido.addr, align 4
  %mul7 = mul nsw i32 %10, %11
  store i32 %mul7, ptr %t10, align 4
  %12 = load i32, ptr %ido.addr, align 4
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %L119

if.end:                                           ; preds = %entry
  store i32 0, ptr %ik, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %ik, align 4
  %14 = load i32, ptr %idl1.addr, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %c2.addr, align 8
  %16 = load i32, ptr %ik, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds float, ptr %15, i64 %idxprom
  %17 = load float, ptr %arrayidx, align 4
  %18 = load ptr, ptr %ch2.addr, align 8
  %19 = load i32, ptr %ik, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds float, ptr %18, i64 %idxprom11
  store float %17, ptr %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %ik, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %ik, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %t1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc30, %for.end
  %21 = load i32, ptr %j, align 4
  %22 = load i32, ptr %ip.addr, align 4
  %cmp14 = icmp slt i32 %21, %22
  br i1 %cmp14, label %for.body16, label %for.end32

for.body16:                                       ; preds = %for.cond13
  %23 = load i32, ptr %t0, align 4
  %24 = load i32, ptr %t1, align 4
  %add17 = add nsw i32 %24, %23
  store i32 %add17, ptr %t1, align 4
  %25 = load i32, ptr %t1, align 4
  store i32 %25, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %for.body16
  %26 = load i32, ptr %k, align 4
  %27 = load i32, ptr %l1.addr, align 4
  %cmp19 = icmp slt i32 %26, %27
  br i1 %cmp19, label %for.body21, label %for.end29

for.body21:                                       ; preds = %for.cond18
  %28 = load ptr, ptr %c1.addr, align 8
  %29 = load i32, ptr %t2, align 4
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds float, ptr %28, i64 %idxprom22
  %30 = load float, ptr %arrayidx23, align 4
  %31 = load ptr, ptr %ch.addr, align 8
  %32 = load i32, ptr %t2, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds float, ptr %31, i64 %idxprom24
  store float %30, ptr %arrayidx25, align 4
  %33 = load i32, ptr %ido.addr, align 4
  %34 = load i32, ptr %t2, align 4
  %add26 = add nsw i32 %34, %33
  store i32 %add26, ptr %t2, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body21
  %35 = load i32, ptr %k, align 4
  %inc28 = add nsw i32 %35, 1
  store i32 %inc28, ptr %k, align 4
  br label %for.cond18, !llvm.loop !8

for.end29:                                        ; preds = %for.cond18
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %36 = load i32, ptr %j, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, ptr %j, align 4
  br label %for.cond13, !llvm.loop !9

for.end32:                                        ; preds = %for.cond13
  %37 = load i32, ptr %ido.addr, align 4
  %sub33 = sub nsw i32 0, %37
  store i32 %sub33, ptr %is, align 4
  store i32 0, ptr %t1, align 4
  %38 = load i32, ptr %nbd, align 4
  %39 = load i32, ptr %l1.addr, align 4
  %cmp34 = icmp sgt i32 %38, %39
  br i1 %cmp34, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end32
  store i32 1, ptr %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc92, %if.then36
  %40 = load i32, ptr %j, align 4
  %41 = load i32, ptr %ip.addr, align 4
  %cmp38 = icmp slt i32 %40, %41
  br i1 %cmp38, label %for.body40, label %for.end94

for.body40:                                       ; preds = %for.cond37
  %42 = load i32, ptr %t0, align 4
  %43 = load i32, ptr %t1, align 4
  %add41 = add nsw i32 %43, %42
  store i32 %add41, ptr %t1, align 4
  %44 = load i32, ptr %ido.addr, align 4
  %45 = load i32, ptr %is, align 4
  %add42 = add nsw i32 %45, %44
  store i32 %add42, ptr %is, align 4
  %46 = load i32, ptr %ido.addr, align 4
  %sub43 = sub nsw i32 0, %46
  %47 = load i32, ptr %t1, align 4
  %add44 = add nsw i32 %sub43, %47
  store i32 %add44, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc89, %for.body40
  %48 = load i32, ptr %k, align 4
  %49 = load i32, ptr %l1.addr, align 4
  %cmp46 = icmp slt i32 %48, %49
  br i1 %cmp46, label %for.body48, label %for.end91

for.body48:                                       ; preds = %for.cond45
  %50 = load i32, ptr %is, align 4
  %sub49 = sub nsw i32 %50, 1
  store i32 %sub49, ptr %idij, align 4
  %51 = load i32, ptr %ido.addr, align 4
  %52 = load i32, ptr %t2, align 4
  %add50 = add nsw i32 %52, %51
  store i32 %add50, ptr %t2, align 4
  %53 = load i32, ptr %t2, align 4
  store i32 %53, ptr %t3, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc86, %for.body48
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %ido.addr, align 4
  %cmp52 = icmp slt i32 %54, %55
  br i1 %cmp52, label %for.body54, label %for.end88

for.body54:                                       ; preds = %for.cond51
  %56 = load i32, ptr %idij, align 4
  %add55 = add nsw i32 %56, 2
  store i32 %add55, ptr %idij, align 4
  %57 = load i32, ptr %t3, align 4
  %add56 = add nsw i32 %57, 2
  store i32 %add56, ptr %t3, align 4
  %58 = load ptr, ptr %wa.addr, align 8
  %59 = load i32, ptr %idij, align 4
  %sub57 = sub nsw i32 %59, 1
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx59 = getelementptr inbounds float, ptr %58, i64 %idxprom58
  %60 = load float, ptr %arrayidx59, align 4
  %61 = load ptr, ptr %c1.addr, align 8
  %62 = load i32, ptr %t3, align 4
  %sub60 = sub nsw i32 %62, 1
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds float, ptr %61, i64 %idxprom61
  %63 = load float, ptr %arrayidx62, align 4
  %64 = load ptr, ptr %wa.addr, align 8
  %65 = load i32, ptr %idij, align 4
  %idxprom64 = sext i32 %65 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %64, i64 %idxprom64
  %66 = load float, ptr %arrayidx65, align 4
  %67 = load ptr, ptr %c1.addr, align 8
  %68 = load i32, ptr %t3, align 4
  %idxprom66 = sext i32 %68 to i64
  %arrayidx67 = getelementptr inbounds float, ptr %67, i64 %idxprom66
  %69 = load float, ptr %arrayidx67, align 4
  %mul68 = fmul float %66, %69
  %70 = call float @llvm.fmuladd.f32(float %60, float %63, float %mul68)
  %71 = load ptr, ptr %ch.addr, align 8
  %72 = load i32, ptr %t3, align 4
  %sub69 = sub nsw i32 %72, 1
  %idxprom70 = sext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds float, ptr %71, i64 %idxprom70
  store float %70, ptr %arrayidx71, align 4
  %73 = load ptr, ptr %wa.addr, align 8
  %74 = load i32, ptr %idij, align 4
  %sub72 = sub nsw i32 %74, 1
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds float, ptr %73, i64 %idxprom73
  %75 = load float, ptr %arrayidx74, align 4
  %76 = load ptr, ptr %c1.addr, align 8
  %77 = load i32, ptr %t3, align 4
  %idxprom75 = sext i32 %77 to i64
  %arrayidx76 = getelementptr inbounds float, ptr %76, i64 %idxprom75
  %78 = load float, ptr %arrayidx76, align 4
  %79 = load ptr, ptr %wa.addr, align 8
  %80 = load i32, ptr %idij, align 4
  %idxprom78 = sext i32 %80 to i64
  %arrayidx79 = getelementptr inbounds float, ptr %79, i64 %idxprom78
  %81 = load float, ptr %arrayidx79, align 4
  %82 = load ptr, ptr %c1.addr, align 8
  %83 = load i32, ptr %t3, align 4
  %sub80 = sub nsw i32 %83, 1
  %idxprom81 = sext i32 %sub80 to i64
  %arrayidx82 = getelementptr inbounds float, ptr %82, i64 %idxprom81
  %84 = load float, ptr %arrayidx82, align 4
  %mul83 = fmul float %81, %84
  %neg = fneg float %mul83
  %85 = call float @llvm.fmuladd.f32(float %75, float %78, float %neg)
  %86 = load ptr, ptr %ch.addr, align 8
  %87 = load i32, ptr %t3, align 4
  %idxprom84 = sext i32 %87 to i64
  %arrayidx85 = getelementptr inbounds float, ptr %86, i64 %idxprom84
  store float %85, ptr %arrayidx85, align 4
  br label %for.inc86

for.inc86:                                        ; preds = %for.body54
  %88 = load i32, ptr %i, align 4
  %add87 = add nsw i32 %88, 2
  store i32 %add87, ptr %i, align 4
  br label %for.cond51, !llvm.loop !10

for.end88:                                        ; preds = %for.cond51
  br label %for.inc89

for.inc89:                                        ; preds = %for.end88
  %89 = load i32, ptr %k, align 4
  %inc90 = add nsw i32 %89, 1
  store i32 %inc90, ptr %k, align 4
  br label %for.cond45, !llvm.loop !11

for.end91:                                        ; preds = %for.cond45
  br label %for.inc92

for.inc92:                                        ; preds = %for.end91
  %90 = load i32, ptr %j, align 4
  %inc93 = add nsw i32 %90, 1
  store i32 %inc93, ptr %j, align 4
  br label %for.cond37, !llvm.loop !12

for.end94:                                        ; preds = %for.cond37
  br label %if.end152

if.else:                                          ; preds = %for.end32
  store i32 1, ptr %j, align 4
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc149, %if.else
  %91 = load i32, ptr %j, align 4
  %92 = load i32, ptr %ip.addr, align 4
  %cmp96 = icmp slt i32 %91, %92
  br i1 %cmp96, label %for.body98, label %for.end151

for.body98:                                       ; preds = %for.cond95
  %93 = load i32, ptr %ido.addr, align 4
  %94 = load i32, ptr %is, align 4
  %add99 = add nsw i32 %94, %93
  store i32 %add99, ptr %is, align 4
  %95 = load i32, ptr %is, align 4
  %sub100 = sub nsw i32 %95, 1
  store i32 %sub100, ptr %idij, align 4
  %96 = load i32, ptr %t0, align 4
  %97 = load i32, ptr %t1, align 4
  %add101 = add nsw i32 %97, %96
  store i32 %add101, ptr %t1, align 4
  %98 = load i32, ptr %t1, align 4
  store i32 %98, ptr %t2, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc146, %for.body98
  %99 = load i32, ptr %i, align 4
  %100 = load i32, ptr %ido.addr, align 4
  %cmp103 = icmp slt i32 %99, %100
  br i1 %cmp103, label %for.body105, label %for.end148

for.body105:                                      ; preds = %for.cond102
  %101 = load i32, ptr %idij, align 4
  %add106 = add nsw i32 %101, 2
  store i32 %add106, ptr %idij, align 4
  %102 = load i32, ptr %t2, align 4
  %add107 = add nsw i32 %102, 2
  store i32 %add107, ptr %t2, align 4
  %103 = load i32, ptr %t2, align 4
  store i32 %103, ptr %t3, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc143, %for.body105
  %104 = load i32, ptr %k, align 4
  %105 = load i32, ptr %l1.addr, align 4
  %cmp109 = icmp slt i32 %104, %105
  br i1 %cmp109, label %for.body111, label %for.end145

for.body111:                                      ; preds = %for.cond108
  %106 = load ptr, ptr %wa.addr, align 8
  %107 = load i32, ptr %idij, align 4
  %sub112 = sub nsw i32 %107, 1
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds float, ptr %106, i64 %idxprom113
  %108 = load float, ptr %arrayidx114, align 4
  %109 = load ptr, ptr %c1.addr, align 8
  %110 = load i32, ptr %t3, align 4
  %sub115 = sub nsw i32 %110, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds float, ptr %109, i64 %idxprom116
  %111 = load float, ptr %arrayidx117, align 4
  %112 = load ptr, ptr %wa.addr, align 8
  %113 = load i32, ptr %idij, align 4
  %idxprom119 = sext i32 %113 to i64
  %arrayidx120 = getelementptr inbounds float, ptr %112, i64 %idxprom119
  %114 = load float, ptr %arrayidx120, align 4
  %115 = load ptr, ptr %c1.addr, align 8
  %116 = load i32, ptr %t3, align 4
  %idxprom121 = sext i32 %116 to i64
  %arrayidx122 = getelementptr inbounds float, ptr %115, i64 %idxprom121
  %117 = load float, ptr %arrayidx122, align 4
  %mul123 = fmul float %114, %117
  %118 = call float @llvm.fmuladd.f32(float %108, float %111, float %mul123)
  %119 = load ptr, ptr %ch.addr, align 8
  %120 = load i32, ptr %t3, align 4
  %sub124 = sub nsw i32 %120, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds float, ptr %119, i64 %idxprom125
  store float %118, ptr %arrayidx126, align 4
  %121 = load ptr, ptr %wa.addr, align 8
  %122 = load i32, ptr %idij, align 4
  %sub127 = sub nsw i32 %122, 1
  %idxprom128 = sext i32 %sub127 to i64
  %arrayidx129 = getelementptr inbounds float, ptr %121, i64 %idxprom128
  %123 = load float, ptr %arrayidx129, align 4
  %124 = load ptr, ptr %c1.addr, align 8
  %125 = load i32, ptr %t3, align 4
  %idxprom130 = sext i32 %125 to i64
  %arrayidx131 = getelementptr inbounds float, ptr %124, i64 %idxprom130
  %126 = load float, ptr %arrayidx131, align 4
  %127 = load ptr, ptr %wa.addr, align 8
  %128 = load i32, ptr %idij, align 4
  %idxprom133 = sext i32 %128 to i64
  %arrayidx134 = getelementptr inbounds float, ptr %127, i64 %idxprom133
  %129 = load float, ptr %arrayidx134, align 4
  %130 = load ptr, ptr %c1.addr, align 8
  %131 = load i32, ptr %t3, align 4
  %sub135 = sub nsw i32 %131, 1
  %idxprom136 = sext i32 %sub135 to i64
  %arrayidx137 = getelementptr inbounds float, ptr %130, i64 %idxprom136
  %132 = load float, ptr %arrayidx137, align 4
  %mul138 = fmul float %129, %132
  %neg139 = fneg float %mul138
  %133 = call float @llvm.fmuladd.f32(float %123, float %126, float %neg139)
  %134 = load ptr, ptr %ch.addr, align 8
  %135 = load i32, ptr %t3, align 4
  %idxprom140 = sext i32 %135 to i64
  %arrayidx141 = getelementptr inbounds float, ptr %134, i64 %idxprom140
  store float %133, ptr %arrayidx141, align 4
  %136 = load i32, ptr %ido.addr, align 4
  %137 = load i32, ptr %t3, align 4
  %add142 = add nsw i32 %137, %136
  store i32 %add142, ptr %t3, align 4
  br label %for.inc143

for.inc143:                                       ; preds = %for.body111
  %138 = load i32, ptr %k, align 4
  %inc144 = add nsw i32 %138, 1
  store i32 %inc144, ptr %k, align 4
  br label %for.cond108, !llvm.loop !13

for.end145:                                       ; preds = %for.cond108
  br label %for.inc146

for.inc146:                                       ; preds = %for.end145
  %139 = load i32, ptr %i, align 4
  %add147 = add nsw i32 %139, 2
  store i32 %add147, ptr %i, align 4
  br label %for.cond102, !llvm.loop !14

for.end148:                                       ; preds = %for.cond102
  br label %for.inc149

for.inc149:                                       ; preds = %for.end148
  %140 = load i32, ptr %j, align 4
  %inc150 = add nsw i32 %140, 1
  store i32 %inc150, ptr %j, align 4
  br label %for.cond95, !llvm.loop !15

for.end151:                                       ; preds = %for.cond95
  br label %if.end152

if.end152:                                        ; preds = %for.end151, %for.end94
  store i32 0, ptr %t1, align 4
  %141 = load i32, ptr %ipp2, align 4
  %142 = load i32, ptr %t0, align 4
  %mul153 = mul nsw i32 %141, %142
  store i32 %mul153, ptr %t2, align 4
  %143 = load i32, ptr %nbd, align 4
  %144 = load i32, ptr %l1.addr, align 4
  %cmp154 = icmp slt i32 %143, %144
  br i1 %cmp154, label %if.then156, label %if.else220

if.then156:                                       ; preds = %if.end152
  store i32 1, ptr %j, align 4
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc217, %if.then156
  %145 = load i32, ptr %j, align 4
  %146 = load i32, ptr %ipph, align 4
  %cmp158 = icmp slt i32 %145, %146
  br i1 %cmp158, label %for.body160, label %for.end219

for.body160:                                      ; preds = %for.cond157
  %147 = load i32, ptr %t0, align 4
  %148 = load i32, ptr %t1, align 4
  %add161 = add nsw i32 %148, %147
  store i32 %add161, ptr %t1, align 4
  %149 = load i32, ptr %t0, align 4
  %150 = load i32, ptr %t2, align 4
  %sub162 = sub nsw i32 %150, %149
  store i32 %sub162, ptr %t2, align 4
  %151 = load i32, ptr %t1, align 4
  store i32 %151, ptr %t3, align 4
  %152 = load i32, ptr %t2, align 4
  store i32 %152, ptr %t4, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc214, %for.body160
  %153 = load i32, ptr %i, align 4
  %154 = load i32, ptr %ido.addr, align 4
  %cmp164 = icmp slt i32 %153, %154
  br i1 %cmp164, label %for.body166, label %for.end216

for.body166:                                      ; preds = %for.cond163
  %155 = load i32, ptr %t3, align 4
  %add167 = add nsw i32 %155, 2
  store i32 %add167, ptr %t3, align 4
  %156 = load i32, ptr %t4, align 4
  %add168 = add nsw i32 %156, 2
  store i32 %add168, ptr %t4, align 4
  %157 = load i32, ptr %t3, align 4
  %158 = load i32, ptr %ido.addr, align 4
  %sub169 = sub nsw i32 %157, %158
  store i32 %sub169, ptr %t5, align 4
  %159 = load i32, ptr %t4, align 4
  %160 = load i32, ptr %ido.addr, align 4
  %sub170 = sub nsw i32 %159, %160
  store i32 %sub170, ptr %t6, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond171

for.cond171:                                      ; preds = %for.inc211, %for.body166
  %161 = load i32, ptr %k, align 4
  %162 = load i32, ptr %l1.addr, align 4
  %cmp172 = icmp slt i32 %161, %162
  br i1 %cmp172, label %for.body174, label %for.end213

for.body174:                                      ; preds = %for.cond171
  %163 = load i32, ptr %ido.addr, align 4
  %164 = load i32, ptr %t5, align 4
  %add175 = add nsw i32 %164, %163
  store i32 %add175, ptr %t5, align 4
  %165 = load i32, ptr %ido.addr, align 4
  %166 = load i32, ptr %t6, align 4
  %add176 = add nsw i32 %166, %165
  store i32 %add176, ptr %t6, align 4
  %167 = load ptr, ptr %ch.addr, align 8
  %168 = load i32, ptr %t5, align 4
  %sub177 = sub nsw i32 %168, 1
  %idxprom178 = sext i32 %sub177 to i64
  %arrayidx179 = getelementptr inbounds float, ptr %167, i64 %idxprom178
  %169 = load float, ptr %arrayidx179, align 4
  %170 = load ptr, ptr %ch.addr, align 8
  %171 = load i32, ptr %t6, align 4
  %sub180 = sub nsw i32 %171, 1
  %idxprom181 = sext i32 %sub180 to i64
  %arrayidx182 = getelementptr inbounds float, ptr %170, i64 %idxprom181
  %172 = load float, ptr %arrayidx182, align 4
  %add183 = fadd float %169, %172
  %173 = load ptr, ptr %c1.addr, align 8
  %174 = load i32, ptr %t5, align 4
  %sub184 = sub nsw i32 %174, 1
  %idxprom185 = sext i32 %sub184 to i64
  %arrayidx186 = getelementptr inbounds float, ptr %173, i64 %idxprom185
  store float %add183, ptr %arrayidx186, align 4
  %175 = load ptr, ptr %ch.addr, align 8
  %176 = load i32, ptr %t5, align 4
  %idxprom187 = sext i32 %176 to i64
  %arrayidx188 = getelementptr inbounds float, ptr %175, i64 %idxprom187
  %177 = load float, ptr %arrayidx188, align 4
  %178 = load ptr, ptr %ch.addr, align 8
  %179 = load i32, ptr %t6, align 4
  %idxprom189 = sext i32 %179 to i64
  %arrayidx190 = getelementptr inbounds float, ptr %178, i64 %idxprom189
  %180 = load float, ptr %arrayidx190, align 4
  %sub191 = fsub float %177, %180
  %181 = load ptr, ptr %c1.addr, align 8
  %182 = load i32, ptr %t6, align 4
  %sub192 = sub nsw i32 %182, 1
  %idxprom193 = sext i32 %sub192 to i64
  %arrayidx194 = getelementptr inbounds float, ptr %181, i64 %idxprom193
  store float %sub191, ptr %arrayidx194, align 4
  %183 = load ptr, ptr %ch.addr, align 8
  %184 = load i32, ptr %t5, align 4
  %idxprom195 = sext i32 %184 to i64
  %arrayidx196 = getelementptr inbounds float, ptr %183, i64 %idxprom195
  %185 = load float, ptr %arrayidx196, align 4
  %186 = load ptr, ptr %ch.addr, align 8
  %187 = load i32, ptr %t6, align 4
  %idxprom197 = sext i32 %187 to i64
  %arrayidx198 = getelementptr inbounds float, ptr %186, i64 %idxprom197
  %188 = load float, ptr %arrayidx198, align 4
  %add199 = fadd float %185, %188
  %189 = load ptr, ptr %c1.addr, align 8
  %190 = load i32, ptr %t5, align 4
  %idxprom200 = sext i32 %190 to i64
  %arrayidx201 = getelementptr inbounds float, ptr %189, i64 %idxprom200
  store float %add199, ptr %arrayidx201, align 4
  %191 = load ptr, ptr %ch.addr, align 8
  %192 = load i32, ptr %t6, align 4
  %sub202 = sub nsw i32 %192, 1
  %idxprom203 = sext i32 %sub202 to i64
  %arrayidx204 = getelementptr inbounds float, ptr %191, i64 %idxprom203
  %193 = load float, ptr %arrayidx204, align 4
  %194 = load ptr, ptr %ch.addr, align 8
  %195 = load i32, ptr %t5, align 4
  %sub205 = sub nsw i32 %195, 1
  %idxprom206 = sext i32 %sub205 to i64
  %arrayidx207 = getelementptr inbounds float, ptr %194, i64 %idxprom206
  %196 = load float, ptr %arrayidx207, align 4
  %sub208 = fsub float %193, %196
  %197 = load ptr, ptr %c1.addr, align 8
  %198 = load i32, ptr %t6, align 4
  %idxprom209 = sext i32 %198 to i64
  %arrayidx210 = getelementptr inbounds float, ptr %197, i64 %idxprom209
  store float %sub208, ptr %arrayidx210, align 4
  br label %for.inc211

for.inc211:                                       ; preds = %for.body174
  %199 = load i32, ptr %k, align 4
  %inc212 = add nsw i32 %199, 1
  store i32 %inc212, ptr %k, align 4
  br label %for.cond171, !llvm.loop !16

for.end213:                                       ; preds = %for.cond171
  br label %for.inc214

for.inc214:                                       ; preds = %for.end213
  %200 = load i32, ptr %i, align 4
  %add215 = add nsw i32 %200, 2
  store i32 %add215, ptr %i, align 4
  br label %for.cond163, !llvm.loop !17

for.end216:                                       ; preds = %for.cond163
  br label %for.inc217

for.inc217:                                       ; preds = %for.end216
  %201 = load i32, ptr %j, align 4
  %inc218 = add nsw i32 %201, 1
  store i32 %inc218, ptr %j, align 4
  br label %for.cond157, !llvm.loop !18

for.end219:                                       ; preds = %for.cond157
  br label %if.end282

if.else220:                                       ; preds = %if.end152
  store i32 1, ptr %j, align 4
  br label %for.cond221

for.cond221:                                      ; preds = %for.inc279, %if.else220
  %202 = load i32, ptr %j, align 4
  %203 = load i32, ptr %ipph, align 4
  %cmp222 = icmp slt i32 %202, %203
  br i1 %cmp222, label %for.body224, label %for.end281

for.body224:                                      ; preds = %for.cond221
  %204 = load i32, ptr %t0, align 4
  %205 = load i32, ptr %t1, align 4
  %add225 = add nsw i32 %205, %204
  store i32 %add225, ptr %t1, align 4
  %206 = load i32, ptr %t0, align 4
  %207 = load i32, ptr %t2, align 4
  %sub226 = sub nsw i32 %207, %206
  store i32 %sub226, ptr %t2, align 4
  %208 = load i32, ptr %t1, align 4
  store i32 %208, ptr %t3, align 4
  %209 = load i32, ptr %t2, align 4
  store i32 %209, ptr %t4, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond227

for.cond227:                                      ; preds = %for.inc276, %for.body224
  %210 = load i32, ptr %k, align 4
  %211 = load i32, ptr %l1.addr, align 4
  %cmp228 = icmp slt i32 %210, %211
  br i1 %cmp228, label %for.body230, label %for.end278

for.body230:                                      ; preds = %for.cond227
  %212 = load i32, ptr %t3, align 4
  store i32 %212, ptr %t5, align 4
  %213 = load i32, ptr %t4, align 4
  store i32 %213, ptr %t6, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc271, %for.body230
  %214 = load i32, ptr %i, align 4
  %215 = load i32, ptr %ido.addr, align 4
  %cmp232 = icmp slt i32 %214, %215
  br i1 %cmp232, label %for.body234, label %for.end273

for.body234:                                      ; preds = %for.cond231
  %216 = load i32, ptr %t5, align 4
  %add235 = add nsw i32 %216, 2
  store i32 %add235, ptr %t5, align 4
  %217 = load i32, ptr %t6, align 4
  %add236 = add nsw i32 %217, 2
  store i32 %add236, ptr %t6, align 4
  %218 = load ptr, ptr %ch.addr, align 8
  %219 = load i32, ptr %t5, align 4
  %sub237 = sub nsw i32 %219, 1
  %idxprom238 = sext i32 %sub237 to i64
  %arrayidx239 = getelementptr inbounds float, ptr %218, i64 %idxprom238
  %220 = load float, ptr %arrayidx239, align 4
  %221 = load ptr, ptr %ch.addr, align 8
  %222 = load i32, ptr %t6, align 4
  %sub240 = sub nsw i32 %222, 1
  %idxprom241 = sext i32 %sub240 to i64
  %arrayidx242 = getelementptr inbounds float, ptr %221, i64 %idxprom241
  %223 = load float, ptr %arrayidx242, align 4
  %add243 = fadd float %220, %223
  %224 = load ptr, ptr %c1.addr, align 8
  %225 = load i32, ptr %t5, align 4
  %sub244 = sub nsw i32 %225, 1
  %idxprom245 = sext i32 %sub244 to i64
  %arrayidx246 = getelementptr inbounds float, ptr %224, i64 %idxprom245
  store float %add243, ptr %arrayidx246, align 4
  %226 = load ptr, ptr %ch.addr, align 8
  %227 = load i32, ptr %t5, align 4
  %idxprom247 = sext i32 %227 to i64
  %arrayidx248 = getelementptr inbounds float, ptr %226, i64 %idxprom247
  %228 = load float, ptr %arrayidx248, align 4
  %229 = load ptr, ptr %ch.addr, align 8
  %230 = load i32, ptr %t6, align 4
  %idxprom249 = sext i32 %230 to i64
  %arrayidx250 = getelementptr inbounds float, ptr %229, i64 %idxprom249
  %231 = load float, ptr %arrayidx250, align 4
  %sub251 = fsub float %228, %231
  %232 = load ptr, ptr %c1.addr, align 8
  %233 = load i32, ptr %t6, align 4
  %sub252 = sub nsw i32 %233, 1
  %idxprom253 = sext i32 %sub252 to i64
  %arrayidx254 = getelementptr inbounds float, ptr %232, i64 %idxprom253
  store float %sub251, ptr %arrayidx254, align 4
  %234 = load ptr, ptr %ch.addr, align 8
  %235 = load i32, ptr %t5, align 4
  %idxprom255 = sext i32 %235 to i64
  %arrayidx256 = getelementptr inbounds float, ptr %234, i64 %idxprom255
  %236 = load float, ptr %arrayidx256, align 4
  %237 = load ptr, ptr %ch.addr, align 8
  %238 = load i32, ptr %t6, align 4
  %idxprom257 = sext i32 %238 to i64
  %arrayidx258 = getelementptr inbounds float, ptr %237, i64 %idxprom257
  %239 = load float, ptr %arrayidx258, align 4
  %add259 = fadd float %236, %239
  %240 = load ptr, ptr %c1.addr, align 8
  %241 = load i32, ptr %t5, align 4
  %idxprom260 = sext i32 %241 to i64
  %arrayidx261 = getelementptr inbounds float, ptr %240, i64 %idxprom260
  store float %add259, ptr %arrayidx261, align 4
  %242 = load ptr, ptr %ch.addr, align 8
  %243 = load i32, ptr %t6, align 4
  %sub262 = sub nsw i32 %243, 1
  %idxprom263 = sext i32 %sub262 to i64
  %arrayidx264 = getelementptr inbounds float, ptr %242, i64 %idxprom263
  %244 = load float, ptr %arrayidx264, align 4
  %245 = load ptr, ptr %ch.addr, align 8
  %246 = load i32, ptr %t5, align 4
  %sub265 = sub nsw i32 %246, 1
  %idxprom266 = sext i32 %sub265 to i64
  %arrayidx267 = getelementptr inbounds float, ptr %245, i64 %idxprom266
  %247 = load float, ptr %arrayidx267, align 4
  %sub268 = fsub float %244, %247
  %248 = load ptr, ptr %c1.addr, align 8
  %249 = load i32, ptr %t6, align 4
  %idxprom269 = sext i32 %249 to i64
  %arrayidx270 = getelementptr inbounds float, ptr %248, i64 %idxprom269
  store float %sub268, ptr %arrayidx270, align 4
  br label %for.inc271

for.inc271:                                       ; preds = %for.body234
  %250 = load i32, ptr %i, align 4
  %add272 = add nsw i32 %250, 2
  store i32 %add272, ptr %i, align 4
  br label %for.cond231, !llvm.loop !19

for.end273:                                       ; preds = %for.cond231
  %251 = load i32, ptr %ido.addr, align 4
  %252 = load i32, ptr %t3, align 4
  %add274 = add nsw i32 %252, %251
  store i32 %add274, ptr %t3, align 4
  %253 = load i32, ptr %ido.addr, align 4
  %254 = load i32, ptr %t4, align 4
  %add275 = add nsw i32 %254, %253
  store i32 %add275, ptr %t4, align 4
  br label %for.inc276

for.inc276:                                       ; preds = %for.end273
  %255 = load i32, ptr %k, align 4
  %inc277 = add nsw i32 %255, 1
  store i32 %inc277, ptr %k, align 4
  br label %for.cond227, !llvm.loop !20

for.end278:                                       ; preds = %for.cond227
  br label %for.inc279

for.inc279:                                       ; preds = %for.end278
  %256 = load i32, ptr %j, align 4
  %inc280 = add nsw i32 %256, 1
  store i32 %inc280, ptr %j, align 4
  br label %for.cond221, !llvm.loop !21

for.end281:                                       ; preds = %for.cond221
  br label %if.end282

if.end282:                                        ; preds = %for.end281, %for.end219
  br label %L119

L119:                                             ; preds = %if.end282, %if.then
  store i32 0, ptr %ik, align 4
  br label %for.cond283

for.cond283:                                      ; preds = %for.inc291, %L119
  %257 = load i32, ptr %ik, align 4
  %258 = load i32, ptr %idl1.addr, align 4
  %cmp284 = icmp slt i32 %257, %258
  br i1 %cmp284, label %for.body286, label %for.end293

for.body286:                                      ; preds = %for.cond283
  %259 = load ptr, ptr %ch2.addr, align 8
  %260 = load i32, ptr %ik, align 4
  %idxprom287 = sext i32 %260 to i64
  %arrayidx288 = getelementptr inbounds float, ptr %259, i64 %idxprom287
  %261 = load float, ptr %arrayidx288, align 4
  %262 = load ptr, ptr %c2.addr, align 8
  %263 = load i32, ptr %ik, align 4
  %idxprom289 = sext i32 %263 to i64
  %arrayidx290 = getelementptr inbounds float, ptr %262, i64 %idxprom289
  store float %261, ptr %arrayidx290, align 4
  br label %for.inc291

for.inc291:                                       ; preds = %for.body286
  %264 = load i32, ptr %ik, align 4
  %inc292 = add nsw i32 %264, 1
  store i32 %inc292, ptr %ik, align 4
  br label %for.cond283, !llvm.loop !22

for.end293:                                       ; preds = %for.cond283
  store i32 0, ptr %t1, align 4
  %265 = load i32, ptr %ipp2, align 4
  %266 = load i32, ptr %idl1.addr, align 4
  %mul294 = mul nsw i32 %265, %266
  store i32 %mul294, ptr %t2, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond295

for.cond295:                                      ; preds = %for.inc326, %for.end293
  %267 = load i32, ptr %j, align 4
  %268 = load i32, ptr %ipph, align 4
  %cmp296 = icmp slt i32 %267, %268
  br i1 %cmp296, label %for.body298, label %for.end328

for.body298:                                      ; preds = %for.cond295
  %269 = load i32, ptr %t0, align 4
  %270 = load i32, ptr %t1, align 4
  %add299 = add nsw i32 %270, %269
  store i32 %add299, ptr %t1, align 4
  %271 = load i32, ptr %t0, align 4
  %272 = load i32, ptr %t2, align 4
  %sub300 = sub nsw i32 %272, %271
  store i32 %sub300, ptr %t2, align 4
  %273 = load i32, ptr %t1, align 4
  %274 = load i32, ptr %ido.addr, align 4
  %sub301 = sub nsw i32 %273, %274
  store i32 %sub301, ptr %t3, align 4
  %275 = load i32, ptr %t2, align 4
  %276 = load i32, ptr %ido.addr, align 4
  %sub302 = sub nsw i32 %275, %276
  store i32 %sub302, ptr %t4, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond303

for.cond303:                                      ; preds = %for.inc323, %for.body298
  %277 = load i32, ptr %k, align 4
  %278 = load i32, ptr %l1.addr, align 4
  %cmp304 = icmp slt i32 %277, %278
  br i1 %cmp304, label %for.body306, label %for.end325

for.body306:                                      ; preds = %for.cond303
  %279 = load i32, ptr %ido.addr, align 4
  %280 = load i32, ptr %t3, align 4
  %add307 = add nsw i32 %280, %279
  store i32 %add307, ptr %t3, align 4
  %281 = load i32, ptr %ido.addr, align 4
  %282 = load i32, ptr %t4, align 4
  %add308 = add nsw i32 %282, %281
  store i32 %add308, ptr %t4, align 4
  %283 = load ptr, ptr %ch.addr, align 8
  %284 = load i32, ptr %t3, align 4
  %idxprom309 = sext i32 %284 to i64
  %arrayidx310 = getelementptr inbounds float, ptr %283, i64 %idxprom309
  %285 = load float, ptr %arrayidx310, align 4
  %286 = load ptr, ptr %ch.addr, align 8
  %287 = load i32, ptr %t4, align 4
  %idxprom311 = sext i32 %287 to i64
  %arrayidx312 = getelementptr inbounds float, ptr %286, i64 %idxprom311
  %288 = load float, ptr %arrayidx312, align 4
  %add313 = fadd float %285, %288
  %289 = load ptr, ptr %c1.addr, align 8
  %290 = load i32, ptr %t3, align 4
  %idxprom314 = sext i32 %290 to i64
  %arrayidx315 = getelementptr inbounds float, ptr %289, i64 %idxprom314
  store float %add313, ptr %arrayidx315, align 4
  %291 = load ptr, ptr %ch.addr, align 8
  %292 = load i32, ptr %t4, align 4
  %idxprom316 = sext i32 %292 to i64
  %arrayidx317 = getelementptr inbounds float, ptr %291, i64 %idxprom316
  %293 = load float, ptr %arrayidx317, align 4
  %294 = load ptr, ptr %ch.addr, align 8
  %295 = load i32, ptr %t3, align 4
  %idxprom318 = sext i32 %295 to i64
  %arrayidx319 = getelementptr inbounds float, ptr %294, i64 %idxprom318
  %296 = load float, ptr %arrayidx319, align 4
  %sub320 = fsub float %293, %296
  %297 = load ptr, ptr %c1.addr, align 8
  %298 = load i32, ptr %t4, align 4
  %idxprom321 = sext i32 %298 to i64
  %arrayidx322 = getelementptr inbounds float, ptr %297, i64 %idxprom321
  store float %sub320, ptr %arrayidx322, align 4
  br label %for.inc323

for.inc323:                                       ; preds = %for.body306
  %299 = load i32, ptr %k, align 4
  %inc324 = add nsw i32 %299, 1
  store i32 %inc324, ptr %k, align 4
  br label %for.cond303, !llvm.loop !23

for.end325:                                       ; preds = %for.cond303
  br label %for.inc326

for.inc326:                                       ; preds = %for.end325
  %300 = load i32, ptr %j, align 4
  %inc327 = add nsw i32 %300, 1
  store i32 %inc327, ptr %j, align 4
  br label %for.cond295, !llvm.loop !24

for.end328:                                       ; preds = %for.cond295
  store float 1.000000e+00, ptr %ar1, align 4
  store float 0.000000e+00, ptr %ai1, align 4
  store i32 0, ptr %t1, align 4
  %301 = load i32, ptr %ipp2, align 4
  %302 = load i32, ptr %idl1.addr, align 4
  %mul329 = mul nsw i32 %301, %302
  store i32 %mul329, ptr %t2, align 4
  %303 = load i32, ptr %ip.addr, align 4
  %sub330 = sub nsw i32 %303, 1
  %304 = load i32, ptr %idl1.addr, align 4
  %mul331 = mul nsw i32 %sub330, %304
  store i32 %mul331, ptr %t3, align 4
  store i32 1, ptr %l, align 4
  br label %for.cond332

for.cond332:                                      ; preds = %for.inc403, %for.end328
  %305 = load i32, ptr %l, align 4
  %306 = load i32, ptr %ipph, align 4
  %cmp333 = icmp slt i32 %305, %306
  br i1 %cmp333, label %for.body335, label %for.end405

for.body335:                                      ; preds = %for.cond332
  %307 = load i32, ptr %idl1.addr, align 4
  %308 = load i32, ptr %t1, align 4
  %add336 = add nsw i32 %308, %307
  store i32 %add336, ptr %t1, align 4
  %309 = load i32, ptr %idl1.addr, align 4
  %310 = load i32, ptr %t2, align 4
  %sub337 = sub nsw i32 %310, %309
  store i32 %sub337, ptr %t2, align 4
  %311 = load float, ptr %dcp, align 4
  %312 = load float, ptr %ar1, align 4
  %313 = load float, ptr %dsp, align 4
  %314 = load float, ptr %ai1, align 4
  %mul339 = fmul float %313, %314
  %neg340 = fneg float %mul339
  %315 = call float @llvm.fmuladd.f32(float %311, float %312, float %neg340)
  store float %315, ptr %ar1h, align 4
  %316 = load float, ptr %dcp, align 4
  %317 = load float, ptr %ai1, align 4
  %318 = load float, ptr %dsp, align 4
  %319 = load float, ptr %ar1, align 4
  %mul342 = fmul float %318, %319
  %320 = call float @llvm.fmuladd.f32(float %316, float %317, float %mul342)
  store float %320, ptr %ai1, align 4
  %321 = load float, ptr %ar1h, align 4
  store float %321, ptr %ar1, align 4
  %322 = load i32, ptr %t1, align 4
  store i32 %322, ptr %t4, align 4
  %323 = load i32, ptr %t2, align 4
  store i32 %323, ptr %t5, align 4
  %324 = load i32, ptr %t3, align 4
  store i32 %324, ptr %t6, align 4
  %325 = load i32, ptr %idl1.addr, align 4
  store i32 %325, ptr %t7, align 4
  store i32 0, ptr %ik, align 4
  br label %for.cond343

for.cond343:                                      ; preds = %for.inc363, %for.body335
  %326 = load i32, ptr %ik, align 4
  %327 = load i32, ptr %idl1.addr, align 4
  %cmp344 = icmp slt i32 %326, %327
  br i1 %cmp344, label %for.body346, label %for.end365

for.body346:                                      ; preds = %for.cond343
  %328 = load ptr, ptr %c2.addr, align 8
  %329 = load i32, ptr %ik, align 4
  %idxprom347 = sext i32 %329 to i64
  %arrayidx348 = getelementptr inbounds float, ptr %328, i64 %idxprom347
  %330 = load float, ptr %arrayidx348, align 4
  %331 = load float, ptr %ar1, align 4
  %332 = load ptr, ptr %c2.addr, align 8
  %333 = load i32, ptr %t7, align 4
  %inc349 = add nsw i32 %333, 1
  store i32 %inc349, ptr %t7, align 4
  %idxprom350 = sext i32 %333 to i64
  %arrayidx351 = getelementptr inbounds float, ptr %332, i64 %idxprom350
  %334 = load float, ptr %arrayidx351, align 4
  %335 = call float @llvm.fmuladd.f32(float %331, float %334, float %330)
  %336 = load ptr, ptr %ch2.addr, align 8
  %337 = load i32, ptr %t4, align 4
  %inc353 = add nsw i32 %337, 1
  store i32 %inc353, ptr %t4, align 4
  %idxprom354 = sext i32 %337 to i64
  %arrayidx355 = getelementptr inbounds float, ptr %336, i64 %idxprom354
  store float %335, ptr %arrayidx355, align 4
  %338 = load float, ptr %ai1, align 4
  %339 = load ptr, ptr %c2.addr, align 8
  %340 = load i32, ptr %t6, align 4
  %inc356 = add nsw i32 %340, 1
  store i32 %inc356, ptr %t6, align 4
  %idxprom357 = sext i32 %340 to i64
  %arrayidx358 = getelementptr inbounds float, ptr %339, i64 %idxprom357
  %341 = load float, ptr %arrayidx358, align 4
  %mul359 = fmul float %338, %341
  %342 = load ptr, ptr %ch2.addr, align 8
  %343 = load i32, ptr %t5, align 4
  %inc360 = add nsw i32 %343, 1
  store i32 %inc360, ptr %t5, align 4
  %idxprom361 = sext i32 %343 to i64
  %arrayidx362 = getelementptr inbounds float, ptr %342, i64 %idxprom361
  store float %mul359, ptr %arrayidx362, align 4
  br label %for.inc363

for.inc363:                                       ; preds = %for.body346
  %344 = load i32, ptr %ik, align 4
  %inc364 = add nsw i32 %344, 1
  store i32 %inc364, ptr %ik, align 4
  br label %for.cond343, !llvm.loop !25

for.end365:                                       ; preds = %for.cond343
  %345 = load float, ptr %ar1, align 4
  store float %345, ptr %dc2, align 4
  %346 = load float, ptr %ai1, align 4
  store float %346, ptr %ds2, align 4
  %347 = load float, ptr %ar1, align 4
  store float %347, ptr %ar2, align 4
  %348 = load float, ptr %ai1, align 4
  store float %348, ptr %ai2, align 4
  %349 = load i32, ptr %idl1.addr, align 4
  store i32 %349, ptr %t4, align 4
  %350 = load i32, ptr %ipp2, align 4
  %sub366 = sub nsw i32 %350, 1
  %351 = load i32, ptr %idl1.addr, align 4
  %mul367 = mul nsw i32 %sub366, %351
  store i32 %mul367, ptr %t5, align 4
  store i32 2, ptr %j, align 4
  br label %for.cond368

for.cond368:                                      ; preds = %for.inc400, %for.end365
  %352 = load i32, ptr %j, align 4
  %353 = load i32, ptr %ipph, align 4
  %cmp369 = icmp slt i32 %352, %353
  br i1 %cmp369, label %for.body371, label %for.end402

for.body371:                                      ; preds = %for.cond368
  %354 = load i32, ptr %idl1.addr, align 4
  %355 = load i32, ptr %t4, align 4
  %add372 = add nsw i32 %355, %354
  store i32 %add372, ptr %t4, align 4
  %356 = load i32, ptr %idl1.addr, align 4
  %357 = load i32, ptr %t5, align 4
  %sub373 = sub nsw i32 %357, %356
  store i32 %sub373, ptr %t5, align 4
  %358 = load float, ptr %dc2, align 4
  %359 = load float, ptr %ar2, align 4
  %360 = load float, ptr %ds2, align 4
  %361 = load float, ptr %ai2, align 4
  %mul375 = fmul float %360, %361
  %neg376 = fneg float %mul375
  %362 = call float @llvm.fmuladd.f32(float %358, float %359, float %neg376)
  store float %362, ptr %ar2h, align 4
  %363 = load float, ptr %dc2, align 4
  %364 = load float, ptr %ai2, align 4
  %365 = load float, ptr %ds2, align 4
  %366 = load float, ptr %ar2, align 4
  %mul378 = fmul float %365, %366
  %367 = call float @llvm.fmuladd.f32(float %363, float %364, float %mul378)
  store float %367, ptr %ai2, align 4
  %368 = load float, ptr %ar2h, align 4
  store float %368, ptr %ar2, align 4
  %369 = load i32, ptr %t1, align 4
  store i32 %369, ptr %t6, align 4
  %370 = load i32, ptr %t2, align 4
  store i32 %370, ptr %t7, align 4
  %371 = load i32, ptr %t4, align 4
  store i32 %371, ptr %t8, align 4
  %372 = load i32, ptr %t5, align 4
  store i32 %372, ptr %t9, align 4
  store i32 0, ptr %ik, align 4
  br label %for.cond379

for.cond379:                                      ; preds = %for.inc397, %for.body371
  %373 = load i32, ptr %ik, align 4
  %374 = load i32, ptr %idl1.addr, align 4
  %cmp380 = icmp slt i32 %373, %374
  br i1 %cmp380, label %for.body382, label %for.end399

for.body382:                                      ; preds = %for.cond379
  %375 = load float, ptr %ar2, align 4
  %376 = load ptr, ptr %c2.addr, align 8
  %377 = load i32, ptr %t8, align 4
  %inc383 = add nsw i32 %377, 1
  store i32 %inc383, ptr %t8, align 4
  %idxprom384 = sext i32 %377 to i64
  %arrayidx385 = getelementptr inbounds float, ptr %376, i64 %idxprom384
  %378 = load float, ptr %arrayidx385, align 4
  %379 = load ptr, ptr %ch2.addr, align 8
  %380 = load i32, ptr %t6, align 4
  %inc387 = add nsw i32 %380, 1
  store i32 %inc387, ptr %t6, align 4
  %idxprom388 = sext i32 %380 to i64
  %arrayidx389 = getelementptr inbounds float, ptr %379, i64 %idxprom388
  %381 = load float, ptr %arrayidx389, align 4
  %382 = call float @llvm.fmuladd.f32(float %375, float %378, float %381)
  store float %382, ptr %arrayidx389, align 4
  %383 = load float, ptr %ai2, align 4
  %384 = load ptr, ptr %c2.addr, align 8
  %385 = load i32, ptr %t9, align 4
  %inc390 = add nsw i32 %385, 1
  store i32 %inc390, ptr %t9, align 4
  %idxprom391 = sext i32 %385 to i64
  %arrayidx392 = getelementptr inbounds float, ptr %384, i64 %idxprom391
  %386 = load float, ptr %arrayidx392, align 4
  %387 = load ptr, ptr %ch2.addr, align 8
  %388 = load i32, ptr %t7, align 4
  %inc394 = add nsw i32 %388, 1
  store i32 %inc394, ptr %t7, align 4
  %idxprom395 = sext i32 %388 to i64
  %arrayidx396 = getelementptr inbounds float, ptr %387, i64 %idxprom395
  %389 = load float, ptr %arrayidx396, align 4
  %390 = call float @llvm.fmuladd.f32(float %383, float %386, float %389)
  store float %390, ptr %arrayidx396, align 4
  br label %for.inc397

for.inc397:                                       ; preds = %for.body382
  %391 = load i32, ptr %ik, align 4
  %inc398 = add nsw i32 %391, 1
  store i32 %inc398, ptr %ik, align 4
  br label %for.cond379, !llvm.loop !26

for.end399:                                       ; preds = %for.cond379
  br label %for.inc400

for.inc400:                                       ; preds = %for.end399
  %392 = load i32, ptr %j, align 4
  %inc401 = add nsw i32 %392, 1
  store i32 %inc401, ptr %j, align 4
  br label %for.cond368, !llvm.loop !27

for.end402:                                       ; preds = %for.cond368
  br label %for.inc403

for.inc403:                                       ; preds = %for.end402
  %393 = load i32, ptr %l, align 4
  %inc404 = add nsw i32 %393, 1
  store i32 %inc404, ptr %l, align 4
  br label %for.cond332, !llvm.loop !28

for.end405:                                       ; preds = %for.cond332
  store i32 0, ptr %t1, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond406

for.cond406:                                      ; preds = %for.inc424, %for.end405
  %394 = load i32, ptr %j, align 4
  %395 = load i32, ptr %ipph, align 4
  %cmp407 = icmp slt i32 %394, %395
  br i1 %cmp407, label %for.body409, label %for.end426

for.body409:                                      ; preds = %for.cond406
  %396 = load i32, ptr %idl1.addr, align 4
  %397 = load i32, ptr %t1, align 4
  %add410 = add nsw i32 %397, %396
  store i32 %add410, ptr %t1, align 4
  %398 = load i32, ptr %t1, align 4
  store i32 %398, ptr %t2, align 4
  store i32 0, ptr %ik, align 4
  br label %for.cond411

for.cond411:                                      ; preds = %for.inc421, %for.body409
  %399 = load i32, ptr %ik, align 4
  %400 = load i32, ptr %idl1.addr, align 4
  %cmp412 = icmp slt i32 %399, %400
  br i1 %cmp412, label %for.body414, label %for.end423

for.body414:                                      ; preds = %for.cond411
  %401 = load ptr, ptr %c2.addr, align 8
  %402 = load i32, ptr %t2, align 4
  %inc415 = add nsw i32 %402, 1
  store i32 %inc415, ptr %t2, align 4
  %idxprom416 = sext i32 %402 to i64
  %arrayidx417 = getelementptr inbounds float, ptr %401, i64 %idxprom416
  %403 = load float, ptr %arrayidx417, align 4
  %404 = load ptr, ptr %ch2.addr, align 8
  %405 = load i32, ptr %ik, align 4
  %idxprom418 = sext i32 %405 to i64
  %arrayidx419 = getelementptr inbounds float, ptr %404, i64 %idxprom418
  %406 = load float, ptr %arrayidx419, align 4
  %add420 = fadd float %406, %403
  store float %add420, ptr %arrayidx419, align 4
  br label %for.inc421

for.inc421:                                       ; preds = %for.body414
  %407 = load i32, ptr %ik, align 4
  %inc422 = add nsw i32 %407, 1
  store i32 %inc422, ptr %ik, align 4
  br label %for.cond411, !llvm.loop !29

for.end423:                                       ; preds = %for.cond411
  br label %for.inc424

for.inc424:                                       ; preds = %for.end423
  %408 = load i32, ptr %j, align 4
  %inc425 = add nsw i32 %408, 1
  store i32 %inc425, ptr %j, align 4
  br label %for.cond406, !llvm.loop !30

for.end426:                                       ; preds = %for.cond406
  %409 = load i32, ptr %ido.addr, align 4
  %410 = load i32, ptr %l1.addr, align 4
  %cmp427 = icmp slt i32 %409, %410
  br i1 %cmp427, label %if.then429, label %if.end430

if.then429:                                       ; preds = %for.end426
  br label %L132

if.end430:                                        ; preds = %for.end426
  store i32 0, ptr %t1, align 4
  store i32 0, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond431

for.cond431:                                      ; preds = %for.inc450, %if.end430
  %411 = load i32, ptr %k, align 4
  %412 = load i32, ptr %l1.addr, align 4
  %cmp432 = icmp slt i32 %411, %412
  br i1 %cmp432, label %for.body434, label %for.end452

for.body434:                                      ; preds = %for.cond431
  %413 = load i32, ptr %t1, align 4
  store i32 %413, ptr %t3, align 4
  %414 = load i32, ptr %t2, align 4
  store i32 %414, ptr %t4, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond435

for.cond435:                                      ; preds = %for.inc445, %for.body434
  %415 = load i32, ptr %i, align 4
  %416 = load i32, ptr %ido.addr, align 4
  %cmp436 = icmp slt i32 %415, %416
  br i1 %cmp436, label %for.body438, label %for.end447

for.body438:                                      ; preds = %for.cond435
  %417 = load ptr, ptr %ch.addr, align 8
  %418 = load i32, ptr %t3, align 4
  %inc439 = add nsw i32 %418, 1
  store i32 %inc439, ptr %t3, align 4
  %idxprom440 = sext i32 %418 to i64
  %arrayidx441 = getelementptr inbounds float, ptr %417, i64 %idxprom440
  %419 = load float, ptr %arrayidx441, align 4
  %420 = load ptr, ptr %cc.addr, align 8
  %421 = load i32, ptr %t4, align 4
  %inc442 = add nsw i32 %421, 1
  store i32 %inc442, ptr %t4, align 4
  %idxprom443 = sext i32 %421 to i64
  %arrayidx444 = getelementptr inbounds float, ptr %420, i64 %idxprom443
  store float %419, ptr %arrayidx444, align 4
  br label %for.inc445

for.inc445:                                       ; preds = %for.body438
  %422 = load i32, ptr %i, align 4
  %inc446 = add nsw i32 %422, 1
  store i32 %inc446, ptr %i, align 4
  br label %for.cond435, !llvm.loop !31

for.end447:                                       ; preds = %for.cond435
  %423 = load i32, ptr %ido.addr, align 4
  %424 = load i32, ptr %t1, align 4
  %add448 = add nsw i32 %424, %423
  store i32 %add448, ptr %t1, align 4
  %425 = load i32, ptr %t10, align 4
  %426 = load i32, ptr %t2, align 4
  %add449 = add nsw i32 %426, %425
  store i32 %add449, ptr %t2, align 4
  br label %for.inc450

for.inc450:                                       ; preds = %for.end447
  %427 = load i32, ptr %k, align 4
  %inc451 = add nsw i32 %427, 1
  store i32 %inc451, ptr %k, align 4
  br label %for.cond431, !llvm.loop !32

for.end452:                                       ; preds = %for.cond431
  br label %L135

L132:                                             ; preds = %if.then429
  store i32 0, ptr %i, align 4
  br label %for.cond453

for.cond453:                                      ; preds = %for.inc470, %L132
  %428 = load i32, ptr %i, align 4
  %429 = load i32, ptr %ido.addr, align 4
  %cmp454 = icmp slt i32 %428, %429
  br i1 %cmp454, label %for.body456, label %for.end472

for.body456:                                      ; preds = %for.cond453
  %430 = load i32, ptr %i, align 4
  store i32 %430, ptr %t1, align 4
  %431 = load i32, ptr %i, align 4
  store i32 %431, ptr %t2, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond457

for.cond457:                                      ; preds = %for.inc467, %for.body456
  %432 = load i32, ptr %k, align 4
  %433 = load i32, ptr %l1.addr, align 4
  %cmp458 = icmp slt i32 %432, %433
  br i1 %cmp458, label %for.body460, label %for.end469

for.body460:                                      ; preds = %for.cond457
  %434 = load ptr, ptr %ch.addr, align 8
  %435 = load i32, ptr %t1, align 4
  %idxprom461 = sext i32 %435 to i64
  %arrayidx462 = getelementptr inbounds float, ptr %434, i64 %idxprom461
  %436 = load float, ptr %arrayidx462, align 4
  %437 = load ptr, ptr %cc.addr, align 8
  %438 = load i32, ptr %t2, align 4
  %idxprom463 = sext i32 %438 to i64
  %arrayidx464 = getelementptr inbounds float, ptr %437, i64 %idxprom463
  store float %436, ptr %arrayidx464, align 4
  %439 = load i32, ptr %ido.addr, align 4
  %440 = load i32, ptr %t1, align 4
  %add465 = add nsw i32 %440, %439
  store i32 %add465, ptr %t1, align 4
  %441 = load i32, ptr %t10, align 4
  %442 = load i32, ptr %t2, align 4
  %add466 = add nsw i32 %442, %441
  store i32 %add466, ptr %t2, align 4
  br label %for.inc467

for.inc467:                                       ; preds = %for.body460
  %443 = load i32, ptr %k, align 4
  %inc468 = add nsw i32 %443, 1
  store i32 %inc468, ptr %k, align 4
  br label %for.cond457, !llvm.loop !33

for.end469:                                       ; preds = %for.cond457
  br label %for.inc470

for.inc470:                                       ; preds = %for.end469
  %444 = load i32, ptr %i, align 4
  %inc471 = add nsw i32 %444, 1
  store i32 %inc471, ptr %i, align 4
  br label %for.cond453, !llvm.loop !34

for.end472:                                       ; preds = %for.cond453
  br label %L135

L135:                                             ; preds = %for.end472, %for.end452
  store i32 0, ptr %t1, align 4
  %445 = load i32, ptr %ido.addr, align 4
  %shl = shl i32 %445, 1
  store i32 %shl, ptr %t2, align 4
  store i32 0, ptr %t3, align 4
  %446 = load i32, ptr %ipp2, align 4
  %447 = load i32, ptr %t0, align 4
  %mul473 = mul nsw i32 %446, %447
  store i32 %mul473, ptr %t4, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond474

for.cond474:                                      ; preds = %for.inc500, %L135
  %448 = load i32, ptr %j, align 4
  %449 = load i32, ptr %ipph, align 4
  %cmp475 = icmp slt i32 %448, %449
  br i1 %cmp475, label %for.body477, label %for.end502

for.body477:                                      ; preds = %for.cond474
  %450 = load i32, ptr %t2, align 4
  %451 = load i32, ptr %t1, align 4
  %add478 = add nsw i32 %451, %450
  store i32 %add478, ptr %t1, align 4
  %452 = load i32, ptr %t0, align 4
  %453 = load i32, ptr %t3, align 4
  %add479 = add nsw i32 %453, %452
  store i32 %add479, ptr %t3, align 4
  %454 = load i32, ptr %t0, align 4
  %455 = load i32, ptr %t4, align 4
  %sub480 = sub nsw i32 %455, %454
  store i32 %sub480, ptr %t4, align 4
  %456 = load i32, ptr %t1, align 4
  store i32 %456, ptr %t5, align 4
  %457 = load i32, ptr %t3, align 4
  store i32 %457, ptr %t6, align 4
  %458 = load i32, ptr %t4, align 4
  store i32 %458, ptr %t7, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond481

for.cond481:                                      ; preds = %for.inc497, %for.body477
  %459 = load i32, ptr %k, align 4
  %460 = load i32, ptr %l1.addr, align 4
  %cmp482 = icmp slt i32 %459, %460
  br i1 %cmp482, label %for.body484, label %for.end499

for.body484:                                      ; preds = %for.cond481
  %461 = load ptr, ptr %ch.addr, align 8
  %462 = load i32, ptr %t6, align 4
  %idxprom485 = sext i32 %462 to i64
  %arrayidx486 = getelementptr inbounds float, ptr %461, i64 %idxprom485
  %463 = load float, ptr %arrayidx486, align 4
  %464 = load ptr, ptr %cc.addr, align 8
  %465 = load i32, ptr %t5, align 4
  %sub487 = sub nsw i32 %465, 1
  %idxprom488 = sext i32 %sub487 to i64
  %arrayidx489 = getelementptr inbounds float, ptr %464, i64 %idxprom488
  store float %463, ptr %arrayidx489, align 4
  %466 = load ptr, ptr %ch.addr, align 8
  %467 = load i32, ptr %t7, align 4
  %idxprom490 = sext i32 %467 to i64
  %arrayidx491 = getelementptr inbounds float, ptr %466, i64 %idxprom490
  %468 = load float, ptr %arrayidx491, align 4
  %469 = load ptr, ptr %cc.addr, align 8
  %470 = load i32, ptr %t5, align 4
  %idxprom492 = sext i32 %470 to i64
  %arrayidx493 = getelementptr inbounds float, ptr %469, i64 %idxprom492
  store float %468, ptr %arrayidx493, align 4
  %471 = load i32, ptr %t10, align 4
  %472 = load i32, ptr %t5, align 4
  %add494 = add nsw i32 %472, %471
  store i32 %add494, ptr %t5, align 4
  %473 = load i32, ptr %ido.addr, align 4
  %474 = load i32, ptr %t6, align 4
  %add495 = add nsw i32 %474, %473
  store i32 %add495, ptr %t6, align 4
  %475 = load i32, ptr %ido.addr, align 4
  %476 = load i32, ptr %t7, align 4
  %add496 = add nsw i32 %476, %475
  store i32 %add496, ptr %t7, align 4
  br label %for.inc497

for.inc497:                                       ; preds = %for.body484
  %477 = load i32, ptr %k, align 4
  %inc498 = add nsw i32 %477, 1
  store i32 %inc498, ptr %k, align 4
  br label %for.cond481, !llvm.loop !35

for.end499:                                       ; preds = %for.cond481
  br label %for.inc500

for.inc500:                                       ; preds = %for.end499
  %478 = load i32, ptr %j, align 4
  %inc501 = add nsw i32 %478, 1
  store i32 %inc501, ptr %j, align 4
  br label %for.cond474, !llvm.loop !36

for.end502:                                       ; preds = %for.cond474
  %479 = load i32, ptr %ido.addr, align 4
  %cmp503 = icmp eq i32 %479, 1
  br i1 %cmp503, label %if.then505, label %if.end506

if.then505:                                       ; preds = %for.end502
  br label %for.end658

if.end506:                                        ; preds = %for.end502
  %480 = load i32, ptr %nbd, align 4
  %481 = load i32, ptr %l1.addr, align 4
  %cmp507 = icmp slt i32 %480, %481
  br i1 %cmp507, label %if.then509, label %if.end510

if.then509:                                       ; preds = %if.end506
  br label %L141

if.end510:                                        ; preds = %if.end506
  %482 = load i32, ptr %ido.addr, align 4
  %sub511 = sub nsw i32 0, %482
  store i32 %sub511, ptr %t1, align 4
  store i32 0, ptr %t3, align 4
  store i32 0, ptr %t4, align 4
  %483 = load i32, ptr %ipp2, align 4
  %484 = load i32, ptr %t0, align 4
  %mul512 = mul nsw i32 %483, %484
  store i32 %mul512, ptr %t5, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond513

for.cond513:                                      ; preds = %for.inc586, %if.end510
  %485 = load i32, ptr %j, align 4
  %486 = load i32, ptr %ipph, align 4
  %cmp514 = icmp slt i32 %485, %486
  br i1 %cmp514, label %for.body516, label %for.end588

for.body516:                                      ; preds = %for.cond513
  %487 = load i32, ptr %t2, align 4
  %488 = load i32, ptr %t1, align 4
  %add517 = add nsw i32 %488, %487
  store i32 %add517, ptr %t1, align 4
  %489 = load i32, ptr %t2, align 4
  %490 = load i32, ptr %t3, align 4
  %add518 = add nsw i32 %490, %489
  store i32 %add518, ptr %t3, align 4
  %491 = load i32, ptr %t0, align 4
  %492 = load i32, ptr %t4, align 4
  %add519 = add nsw i32 %492, %491
  store i32 %add519, ptr %t4, align 4
  %493 = load i32, ptr %t0, align 4
  %494 = load i32, ptr %t5, align 4
  %sub520 = sub nsw i32 %494, %493
  store i32 %sub520, ptr %t5, align 4
  %495 = load i32, ptr %t1, align 4
  store i32 %495, ptr %t6, align 4
  %496 = load i32, ptr %t3, align 4
  store i32 %496, ptr %t7, align 4
  %497 = load i32, ptr %t4, align 4
  store i32 %497, ptr %t8, align 4
  %498 = load i32, ptr %t5, align 4
  store i32 %498, ptr %t9, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond521

for.cond521:                                      ; preds = %for.inc583, %for.body516
  %499 = load i32, ptr %k, align 4
  %500 = load i32, ptr %l1.addr, align 4
  %cmp522 = icmp slt i32 %499, %500
  br i1 %cmp522, label %for.body524, label %for.end585

for.body524:                                      ; preds = %for.cond521
  store i32 2, ptr %i, align 4
  br label %for.cond525

for.cond525:                                      ; preds = %for.inc576, %for.body524
  %501 = load i32, ptr %i, align 4
  %502 = load i32, ptr %ido.addr, align 4
  %cmp526 = icmp slt i32 %501, %502
  br i1 %cmp526, label %for.body528, label %for.end578

for.body528:                                      ; preds = %for.cond525
  %503 = load i32, ptr %idp2, align 4
  %504 = load i32, ptr %i, align 4
  %sub529 = sub nsw i32 %503, %504
  store i32 %sub529, ptr %ic, align 4
  %505 = load ptr, ptr %ch.addr, align 8
  %506 = load i32, ptr %i, align 4
  %507 = load i32, ptr %t8, align 4
  %add530 = add nsw i32 %506, %507
  %sub531 = sub nsw i32 %add530, 1
  %idxprom532 = sext i32 %sub531 to i64
  %arrayidx533 = getelementptr inbounds float, ptr %505, i64 %idxprom532
  %508 = load float, ptr %arrayidx533, align 4
  %509 = load ptr, ptr %ch.addr, align 8
  %510 = load i32, ptr %i, align 4
  %511 = load i32, ptr %t9, align 4
  %add534 = add nsw i32 %510, %511
  %sub535 = sub nsw i32 %add534, 1
  %idxprom536 = sext i32 %sub535 to i64
  %arrayidx537 = getelementptr inbounds float, ptr %509, i64 %idxprom536
  %512 = load float, ptr %arrayidx537, align 4
  %add538 = fadd float %508, %512
  %513 = load ptr, ptr %cc.addr, align 8
  %514 = load i32, ptr %i, align 4
  %515 = load i32, ptr %t7, align 4
  %add539 = add nsw i32 %514, %515
  %sub540 = sub nsw i32 %add539, 1
  %idxprom541 = sext i32 %sub540 to i64
  %arrayidx542 = getelementptr inbounds float, ptr %513, i64 %idxprom541
  store float %add538, ptr %arrayidx542, align 4
  %516 = load ptr, ptr %ch.addr, align 8
  %517 = load i32, ptr %i, align 4
  %518 = load i32, ptr %t8, align 4
  %add543 = add nsw i32 %517, %518
  %sub544 = sub nsw i32 %add543, 1
  %idxprom545 = sext i32 %sub544 to i64
  %arrayidx546 = getelementptr inbounds float, ptr %516, i64 %idxprom545
  %519 = load float, ptr %arrayidx546, align 4
  %520 = load ptr, ptr %ch.addr, align 8
  %521 = load i32, ptr %i, align 4
  %522 = load i32, ptr %t9, align 4
  %add547 = add nsw i32 %521, %522
  %sub548 = sub nsw i32 %add547, 1
  %idxprom549 = sext i32 %sub548 to i64
  %arrayidx550 = getelementptr inbounds float, ptr %520, i64 %idxprom549
  %523 = load float, ptr %arrayidx550, align 4
  %sub551 = fsub float %519, %523
  %524 = load ptr, ptr %cc.addr, align 8
  %525 = load i32, ptr %ic, align 4
  %526 = load i32, ptr %t6, align 4
  %add552 = add nsw i32 %525, %526
  %sub553 = sub nsw i32 %add552, 1
  %idxprom554 = sext i32 %sub553 to i64
  %arrayidx555 = getelementptr inbounds float, ptr %524, i64 %idxprom554
  store float %sub551, ptr %arrayidx555, align 4
  %527 = load ptr, ptr %ch.addr, align 8
  %528 = load i32, ptr %i, align 4
  %529 = load i32, ptr %t8, align 4
  %add556 = add nsw i32 %528, %529
  %idxprom557 = sext i32 %add556 to i64
  %arrayidx558 = getelementptr inbounds float, ptr %527, i64 %idxprom557
  %530 = load float, ptr %arrayidx558, align 4
  %531 = load ptr, ptr %ch.addr, align 8
  %532 = load i32, ptr %i, align 4
  %533 = load i32, ptr %t9, align 4
  %add559 = add nsw i32 %532, %533
  %idxprom560 = sext i32 %add559 to i64
  %arrayidx561 = getelementptr inbounds float, ptr %531, i64 %idxprom560
  %534 = load float, ptr %arrayidx561, align 4
  %add562 = fadd float %530, %534
  %535 = load ptr, ptr %cc.addr, align 8
  %536 = load i32, ptr %i, align 4
  %537 = load i32, ptr %t7, align 4
  %add563 = add nsw i32 %536, %537
  %idxprom564 = sext i32 %add563 to i64
  %arrayidx565 = getelementptr inbounds float, ptr %535, i64 %idxprom564
  store float %add562, ptr %arrayidx565, align 4
  %538 = load ptr, ptr %ch.addr, align 8
  %539 = load i32, ptr %i, align 4
  %540 = load i32, ptr %t9, align 4
  %add566 = add nsw i32 %539, %540
  %idxprom567 = sext i32 %add566 to i64
  %arrayidx568 = getelementptr inbounds float, ptr %538, i64 %idxprom567
  %541 = load float, ptr %arrayidx568, align 4
  %542 = load ptr, ptr %ch.addr, align 8
  %543 = load i32, ptr %i, align 4
  %544 = load i32, ptr %t8, align 4
  %add569 = add nsw i32 %543, %544
  %idxprom570 = sext i32 %add569 to i64
  %arrayidx571 = getelementptr inbounds float, ptr %542, i64 %idxprom570
  %545 = load float, ptr %arrayidx571, align 4
  %sub572 = fsub float %541, %545
  %546 = load ptr, ptr %cc.addr, align 8
  %547 = load i32, ptr %ic, align 4
  %548 = load i32, ptr %t6, align 4
  %add573 = add nsw i32 %547, %548
  %idxprom574 = sext i32 %add573 to i64
  %arrayidx575 = getelementptr inbounds float, ptr %546, i64 %idxprom574
  store float %sub572, ptr %arrayidx575, align 4
  br label %for.inc576

for.inc576:                                       ; preds = %for.body528
  %549 = load i32, ptr %i, align 4
  %add577 = add nsw i32 %549, 2
  store i32 %add577, ptr %i, align 4
  br label %for.cond525, !llvm.loop !37

for.end578:                                       ; preds = %for.cond525
  %550 = load i32, ptr %t10, align 4
  %551 = load i32, ptr %t6, align 4
  %add579 = add nsw i32 %551, %550
  store i32 %add579, ptr %t6, align 4
  %552 = load i32, ptr %t10, align 4
  %553 = load i32, ptr %t7, align 4
  %add580 = add nsw i32 %553, %552
  store i32 %add580, ptr %t7, align 4
  %554 = load i32, ptr %ido.addr, align 4
  %555 = load i32, ptr %t8, align 4
  %add581 = add nsw i32 %555, %554
  store i32 %add581, ptr %t8, align 4
  %556 = load i32, ptr %ido.addr, align 4
  %557 = load i32, ptr %t9, align 4
  %add582 = add nsw i32 %557, %556
  store i32 %add582, ptr %t9, align 4
  br label %for.inc583

for.inc583:                                       ; preds = %for.end578
  %558 = load i32, ptr %k, align 4
  %inc584 = add nsw i32 %558, 1
  store i32 %inc584, ptr %k, align 4
  br label %for.cond521, !llvm.loop !38

for.end585:                                       ; preds = %for.cond521
  br label %for.inc586

for.inc586:                                       ; preds = %for.end585
  %559 = load i32, ptr %j, align 4
  %inc587 = add nsw i32 %559, 1
  store i32 %inc587, ptr %j, align 4
  br label %for.cond513, !llvm.loop !39

for.end588:                                       ; preds = %for.cond513
  br label %for.end658

L141:                                             ; preds = %if.then509
  %560 = load i32, ptr %ido.addr, align 4
  %sub589 = sub nsw i32 0, %560
  store i32 %sub589, ptr %t1, align 4
  store i32 0, ptr %t3, align 4
  store i32 0, ptr %t4, align 4
  %561 = load i32, ptr %ipp2, align 4
  %562 = load i32, ptr %t0, align 4
  %mul590 = mul nsw i32 %561, %562
  store i32 %mul590, ptr %t5, align 4
  store i32 1, ptr %j, align 4
  br label %for.cond591

for.cond591:                                      ; preds = %for.inc656, %L141
  %563 = load i32, ptr %j, align 4
  %564 = load i32, ptr %ipph, align 4
  %cmp592 = icmp slt i32 %563, %564
  br i1 %cmp592, label %for.body594, label %for.end658

for.body594:                                      ; preds = %for.cond591
  %565 = load i32, ptr %t2, align 4
  %566 = load i32, ptr %t1, align 4
  %add595 = add nsw i32 %566, %565
  store i32 %add595, ptr %t1, align 4
  %567 = load i32, ptr %t2, align 4
  %568 = load i32, ptr %t3, align 4
  %add596 = add nsw i32 %568, %567
  store i32 %add596, ptr %t3, align 4
  %569 = load i32, ptr %t0, align 4
  %570 = load i32, ptr %t4, align 4
  %add597 = add nsw i32 %570, %569
  store i32 %add597, ptr %t4, align 4
  %571 = load i32, ptr %t0, align 4
  %572 = load i32, ptr %t5, align 4
  %sub598 = sub nsw i32 %572, %571
  store i32 %sub598, ptr %t5, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond599

for.cond599:                                      ; preds = %for.inc653, %for.body594
  %573 = load i32, ptr %i, align 4
  %574 = load i32, ptr %ido.addr, align 4
  %cmp600 = icmp slt i32 %573, %574
  br i1 %cmp600, label %for.body602, label %for.end655

for.body602:                                      ; preds = %for.cond599
  %575 = load i32, ptr %idp2, align 4
  %576 = load i32, ptr %t1, align 4
  %add603 = add nsw i32 %575, %576
  %577 = load i32, ptr %i, align 4
  %sub604 = sub nsw i32 %add603, %577
  store i32 %sub604, ptr %t6, align 4
  %578 = load i32, ptr %i, align 4
  %579 = load i32, ptr %t3, align 4
  %add605 = add nsw i32 %578, %579
  store i32 %add605, ptr %t7, align 4
  %580 = load i32, ptr %i, align 4
  %581 = load i32, ptr %t4, align 4
  %add606 = add nsw i32 %580, %581
  store i32 %add606, ptr %t8, align 4
  %582 = load i32, ptr %i, align 4
  %583 = load i32, ptr %t5, align 4
  %add607 = add nsw i32 %582, %583
  store i32 %add607, ptr %t9, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond608

for.cond608:                                      ; preds = %for.inc650, %for.body602
  %584 = load i32, ptr %k, align 4
  %585 = load i32, ptr %l1.addr, align 4
  %cmp609 = icmp slt i32 %584, %585
  br i1 %cmp609, label %for.body611, label %for.end652

for.body611:                                      ; preds = %for.cond608
  %586 = load ptr, ptr %ch.addr, align 8
  %587 = load i32, ptr %t8, align 4
  %sub612 = sub nsw i32 %587, 1
  %idxprom613 = sext i32 %sub612 to i64
  %arrayidx614 = getelementptr inbounds float, ptr %586, i64 %idxprom613
  %588 = load float, ptr %arrayidx614, align 4
  %589 = load ptr, ptr %ch.addr, align 8
  %590 = load i32, ptr %t9, align 4
  %sub615 = sub nsw i32 %590, 1
  %idxprom616 = sext i32 %sub615 to i64
  %arrayidx617 = getelementptr inbounds float, ptr %589, i64 %idxprom616
  %591 = load float, ptr %arrayidx617, align 4
  %add618 = fadd float %588, %591
  %592 = load ptr, ptr %cc.addr, align 8
  %593 = load i32, ptr %t7, align 4
  %sub619 = sub nsw i32 %593, 1
  %idxprom620 = sext i32 %sub619 to i64
  %arrayidx621 = getelementptr inbounds float, ptr %592, i64 %idxprom620
  store float %add618, ptr %arrayidx621, align 4
  %594 = load ptr, ptr %ch.addr, align 8
  %595 = load i32, ptr %t8, align 4
  %sub622 = sub nsw i32 %595, 1
  %idxprom623 = sext i32 %sub622 to i64
  %arrayidx624 = getelementptr inbounds float, ptr %594, i64 %idxprom623
  %596 = load float, ptr %arrayidx624, align 4
  %597 = load ptr, ptr %ch.addr, align 8
  %598 = load i32, ptr %t9, align 4
  %sub625 = sub nsw i32 %598, 1
  %idxprom626 = sext i32 %sub625 to i64
  %arrayidx627 = getelementptr inbounds float, ptr %597, i64 %idxprom626
  %599 = load float, ptr %arrayidx627, align 4
  %sub628 = fsub float %596, %599
  %600 = load ptr, ptr %cc.addr, align 8
  %601 = load i32, ptr %t6, align 4
  %sub629 = sub nsw i32 %601, 1
  %idxprom630 = sext i32 %sub629 to i64
  %arrayidx631 = getelementptr inbounds float, ptr %600, i64 %idxprom630
  store float %sub628, ptr %arrayidx631, align 4
  %602 = load ptr, ptr %ch.addr, align 8
  %603 = load i32, ptr %t8, align 4
  %idxprom632 = sext i32 %603 to i64
  %arrayidx633 = getelementptr inbounds float, ptr %602, i64 %idxprom632
  %604 = load float, ptr %arrayidx633, align 4
  %605 = load ptr, ptr %ch.addr, align 8
  %606 = load i32, ptr %t9, align 4
  %idxprom634 = sext i32 %606 to i64
  %arrayidx635 = getelementptr inbounds float, ptr %605, i64 %idxprom634
  %607 = load float, ptr %arrayidx635, align 4
  %add636 = fadd float %604, %607
  %608 = load ptr, ptr %cc.addr, align 8
  %609 = load i32, ptr %t7, align 4
  %idxprom637 = sext i32 %609 to i64
  %arrayidx638 = getelementptr inbounds float, ptr %608, i64 %idxprom637
  store float %add636, ptr %arrayidx638, align 4
  %610 = load ptr, ptr %ch.addr, align 8
  %611 = load i32, ptr %t9, align 4
  %idxprom639 = sext i32 %611 to i64
  %arrayidx640 = getelementptr inbounds float, ptr %610, i64 %idxprom639
  %612 = load float, ptr %arrayidx640, align 4
  %613 = load ptr, ptr %ch.addr, align 8
  %614 = load i32, ptr %t8, align 4
  %idxprom641 = sext i32 %614 to i64
  %arrayidx642 = getelementptr inbounds float, ptr %613, i64 %idxprom641
  %615 = load float, ptr %arrayidx642, align 4
  %sub643 = fsub float %612, %615
  %616 = load ptr, ptr %cc.addr, align 8
  %617 = load i32, ptr %t6, align 4
  %idxprom644 = sext i32 %617 to i64
  %arrayidx645 = getelementptr inbounds float, ptr %616, i64 %idxprom644
  store float %sub643, ptr %arrayidx645, align 4
  %618 = load i32, ptr %t10, align 4
  %619 = load i32, ptr %t6, align 4
  %add646 = add nsw i32 %619, %618
  store i32 %add646, ptr %t6, align 4
  %620 = load i32, ptr %t10, align 4
  %621 = load i32, ptr %t7, align 4
  %add647 = add nsw i32 %621, %620
  store i32 %add647, ptr %t7, align 4
  %622 = load i32, ptr %ido.addr, align 4
  %623 = load i32, ptr %t8, align 4
  %add648 = add nsw i32 %623, %622
  store i32 %add648, ptr %t8, align 4
  %624 = load i32, ptr %ido.addr, align 4
  %625 = load i32, ptr %t9, align 4
  %add649 = add nsw i32 %625, %624
  store i32 %add649, ptr %t9, align 4
  br label %for.inc650

for.inc650:                                       ; preds = %for.body611
  %626 = load i32, ptr %k, align 4
  %inc651 = add nsw i32 %626, 1
  store i32 %inc651, ptr %k, align 4
  br label %for.cond608, !llvm.loop !40

for.end652:                                       ; preds = %for.cond608
  br label %for.inc653

for.inc653:                                       ; preds = %for.end652
  %627 = load i32, ptr %i, align 4
  %add654 = add nsw i32 %627, 2
  store i32 %add654, ptr %i, align 4
  br label %for.cond599, !llvm.loop !41

for.end655:                                       ; preds = %for.cond599
  br label %for.inc656

for.inc656:                                       ; preds = %for.end655
  %628 = load i32, ptr %j, align 4
  %inc657 = add nsw i32 %628, 1
  store i32 %inc657, ptr %j, align 4
  br label %for.cond591, !llvm.loop !42

for.end658:                                       ; preds = %for.cond591, %for.end588, %if.then505
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
!42 = distinct !{!42, !7}
