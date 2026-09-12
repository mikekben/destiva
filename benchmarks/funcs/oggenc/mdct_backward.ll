; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define dso_local void @mdct_backward(ptr noundef %init, ptr noundef %in, ptr noundef %out) #1 {
entry:
  %init.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n4 = alloca i32, align 4
  %iX = alloca ptr, align 8
  %oX = alloca ptr, align 8
  %T = alloca ptr, align 8
  %oX1 = alloca ptr, align 8
  %oX2 = alloca ptr, align 8
  %iX93 = alloca ptr, align 8
  store ptr %init, ptr %init.addr, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %init.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n1, align 8
  store i32 %1, ptr %n, align 4
  %2 = load i32, ptr %n, align 4
  %shr = ashr i32 %2, 1
  store i32 %shr, ptr %n2, align 4
  %3 = load i32, ptr %n, align 4
  %shr2 = ashr i32 %3, 2
  store i32 %shr2, ptr %n4, align 4
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load i32, ptr %n2, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds float, ptr %4, i64 %idx.ext
  %add.ptr3 = getelementptr inbounds float, ptr %add.ptr, i64 -7
  store ptr %add.ptr3, ptr %iX, align 8
  %6 = load ptr, ptr %out.addr, align 8
  %7 = load i32, ptr %n2, align 4
  %idx.ext4 = sext i32 %7 to i64
  %add.ptr5 = getelementptr inbounds float, ptr %6, i64 %idx.ext4
  %8 = load i32, ptr %n4, align 4
  %idx.ext6 = sext i32 %8 to i64
  %add.ptr7 = getelementptr inbounds float, ptr %add.ptr5, i64 %idx.ext6
  store ptr %add.ptr7, ptr %oX, align 8
  %9 = load ptr, ptr %init.addr, align 8
  %trig = getelementptr inbounds nuw %struct.mdct_lookup, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %trig, align 8
  %11 = load i32, ptr %n4, align 4
  %idx.ext8 = sext i32 %11 to i64
  %add.ptr9 = getelementptr inbounds float, ptr %10, i64 %idx.ext8
  store ptr %add.ptr9, ptr %T, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %12 = load ptr, ptr %oX, align 8
  %add.ptr10 = getelementptr inbounds float, ptr %12, i64 -4
  store ptr %add.ptr10, ptr %oX, align 8
  %13 = load ptr, ptr %iX, align 8
  %arrayidx = getelementptr inbounds float, ptr %13, i64 2
  %14 = load float, ptr %arrayidx, align 4
  %fneg = fneg float %14
  %15 = load ptr, ptr %T, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %15, i64 3
  %16 = load float, ptr %arrayidx11, align 4
  %17 = load ptr, ptr %iX, align 8
  %arrayidx12 = getelementptr inbounds float, ptr %17, i64 0
  %18 = load float, ptr %arrayidx12, align 4
  %19 = load ptr, ptr %T, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %19, i64 2
  %20 = load float, ptr %arrayidx13, align 4
  %mul14 = fmul float %18, %20
  %neg = fneg float %mul14
  %21 = call float @llvm.fmuladd.f32(float %fneg, float %16, float %neg)
  %22 = load ptr, ptr %oX, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %22, i64 0
  store float %21, ptr %arrayidx15, align 4
  %23 = load ptr, ptr %iX, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %23, i64 0
  %24 = load float, ptr %arrayidx16, align 4
  %25 = load ptr, ptr %T, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %25, i64 3
  %26 = load float, ptr %arrayidx17, align 4
  %27 = load ptr, ptr %iX, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %27, i64 2
  %28 = load float, ptr %arrayidx18, align 4
  %29 = load ptr, ptr %T, align 8
  %arrayidx19 = getelementptr inbounds float, ptr %29, i64 2
  %30 = load float, ptr %arrayidx19, align 4
  %mul20 = fmul float %28, %30
  %neg21 = fneg float %mul20
  %31 = call float @llvm.fmuladd.f32(float %24, float %26, float %neg21)
  %32 = load ptr, ptr %oX, align 8
  %arrayidx22 = getelementptr inbounds float, ptr %32, i64 1
  store float %31, ptr %arrayidx22, align 4
  %33 = load ptr, ptr %iX, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %33, i64 6
  %34 = load float, ptr %arrayidx23, align 4
  %fneg24 = fneg float %34
  %35 = load ptr, ptr %T, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %35, i64 1
  %36 = load float, ptr %arrayidx25, align 4
  %37 = load ptr, ptr %iX, align 8
  %arrayidx26 = getelementptr inbounds float, ptr %37, i64 4
  %38 = load float, ptr %arrayidx26, align 4
  %39 = load ptr, ptr %T, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %39, i64 0
  %40 = load float, ptr %arrayidx27, align 4
  %mul28 = fmul float %38, %40
  %neg29 = fneg float %mul28
  %41 = call float @llvm.fmuladd.f32(float %fneg24, float %36, float %neg29)
  %42 = load ptr, ptr %oX, align 8
  %arrayidx30 = getelementptr inbounds float, ptr %42, i64 2
  store float %41, ptr %arrayidx30, align 4
  %43 = load ptr, ptr %iX, align 8
  %arrayidx31 = getelementptr inbounds float, ptr %43, i64 4
  %44 = load float, ptr %arrayidx31, align 4
  %45 = load ptr, ptr %T, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %45, i64 1
  %46 = load float, ptr %arrayidx32, align 4
  %47 = load ptr, ptr %iX, align 8
  %arrayidx33 = getelementptr inbounds float, ptr %47, i64 6
  %48 = load float, ptr %arrayidx33, align 4
  %49 = load ptr, ptr %T, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %49, i64 0
  %50 = load float, ptr %arrayidx34, align 4
  %mul35 = fmul float %48, %50
  %neg36 = fneg float %mul35
  %51 = call float @llvm.fmuladd.f32(float %44, float %46, float %neg36)
  %52 = load ptr, ptr %oX, align 8
  %arrayidx37 = getelementptr inbounds float, ptr %52, i64 3
  store float %51, ptr %arrayidx37, align 4
  %53 = load ptr, ptr %iX, align 8
  %add.ptr38 = getelementptr inbounds float, ptr %53, i64 -8
  store ptr %add.ptr38, ptr %iX, align 8
  %54 = load ptr, ptr %T, align 8
  %add.ptr39 = getelementptr inbounds float, ptr %54, i64 4
  store ptr %add.ptr39, ptr %T, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %55 = load ptr, ptr %iX, align 8
  %56 = load ptr, ptr %in.addr, align 8
  %cmp = icmp uge ptr %55, %56
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %57 = load ptr, ptr %in.addr, align 8
  %58 = load i32, ptr %n2, align 4
  %idx.ext40 = sext i32 %58 to i64
  %add.ptr41 = getelementptr inbounds float, ptr %57, i64 %idx.ext40
  %add.ptr42 = getelementptr inbounds float, ptr %add.ptr41, i64 -8
  store ptr %add.ptr42, ptr %iX, align 8
  %59 = load ptr, ptr %out.addr, align 8
  %60 = load i32, ptr %n2, align 4
  %idx.ext43 = sext i32 %60 to i64
  %add.ptr44 = getelementptr inbounds float, ptr %59, i64 %idx.ext43
  %61 = load i32, ptr %n4, align 4
  %idx.ext45 = sext i32 %61 to i64
  %add.ptr46 = getelementptr inbounds float, ptr %add.ptr44, i64 %idx.ext45
  store ptr %add.ptr46, ptr %oX, align 8
  %62 = load ptr, ptr %init.addr, align 8
  %trig47 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %62, i32 0, i32 2
  %63 = load ptr, ptr %trig47, align 8
  %64 = load i32, ptr %n4, align 4
  %idx.ext48 = sext i32 %64 to i64
  %add.ptr49 = getelementptr inbounds float, ptr %63, i64 %idx.ext48
  store ptr %add.ptr49, ptr %T, align 8
  br label %do.body50

do.body50:                                        ; preds = %do.cond80, %do.end
  %65 = load ptr, ptr %T, align 8
  %add.ptr51 = getelementptr inbounds float, ptr %65, i64 -4
  store ptr %add.ptr51, ptr %T, align 8
  %66 = load ptr, ptr %iX, align 8
  %arrayidx52 = getelementptr inbounds float, ptr %66, i64 4
  %67 = load float, ptr %arrayidx52, align 4
  %68 = load ptr, ptr %T, align 8
  %arrayidx53 = getelementptr inbounds float, ptr %68, i64 3
  %69 = load float, ptr %arrayidx53, align 4
  %70 = load ptr, ptr %iX, align 8
  %arrayidx54 = getelementptr inbounds float, ptr %70, i64 6
  %71 = load float, ptr %arrayidx54, align 4
  %72 = load ptr, ptr %T, align 8
  %arrayidx55 = getelementptr inbounds float, ptr %72, i64 2
  %73 = load float, ptr %arrayidx55, align 4
  %mul56 = fmul float %71, %73
  %74 = call float @llvm.fmuladd.f32(float %67, float %69, float %mul56)
  %75 = load ptr, ptr %oX, align 8
  %arrayidx57 = getelementptr inbounds float, ptr %75, i64 0
  store float %74, ptr %arrayidx57, align 4
  %76 = load ptr, ptr %iX, align 8
  %arrayidx58 = getelementptr inbounds float, ptr %76, i64 4
  %77 = load float, ptr %arrayidx58, align 4
  %78 = load ptr, ptr %T, align 8
  %arrayidx59 = getelementptr inbounds float, ptr %78, i64 2
  %79 = load float, ptr %arrayidx59, align 4
  %80 = load ptr, ptr %iX, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %80, i64 6
  %81 = load float, ptr %arrayidx60, align 4
  %82 = load ptr, ptr %T, align 8
  %arrayidx61 = getelementptr inbounds float, ptr %82, i64 3
  %83 = load float, ptr %arrayidx61, align 4
  %mul62 = fmul float %81, %83
  %neg63 = fneg float %mul62
  %84 = call float @llvm.fmuladd.f32(float %77, float %79, float %neg63)
  %85 = load ptr, ptr %oX, align 8
  %arrayidx64 = getelementptr inbounds float, ptr %85, i64 1
  store float %84, ptr %arrayidx64, align 4
  %86 = load ptr, ptr %iX, align 8
  %arrayidx65 = getelementptr inbounds float, ptr %86, i64 0
  %87 = load float, ptr %arrayidx65, align 4
  %88 = load ptr, ptr %T, align 8
  %arrayidx66 = getelementptr inbounds float, ptr %88, i64 1
  %89 = load float, ptr %arrayidx66, align 4
  %90 = load ptr, ptr %iX, align 8
  %arrayidx67 = getelementptr inbounds float, ptr %90, i64 2
  %91 = load float, ptr %arrayidx67, align 4
  %92 = load ptr, ptr %T, align 8
  %arrayidx68 = getelementptr inbounds float, ptr %92, i64 0
  %93 = load float, ptr %arrayidx68, align 4
  %mul69 = fmul float %91, %93
  %94 = call float @llvm.fmuladd.f32(float %87, float %89, float %mul69)
  %95 = load ptr, ptr %oX, align 8
  %arrayidx70 = getelementptr inbounds float, ptr %95, i64 2
  store float %94, ptr %arrayidx70, align 4
  %96 = load ptr, ptr %iX, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %96, i64 0
  %97 = load float, ptr %arrayidx71, align 4
  %98 = load ptr, ptr %T, align 8
  %arrayidx72 = getelementptr inbounds float, ptr %98, i64 0
  %99 = load float, ptr %arrayidx72, align 4
  %100 = load ptr, ptr %iX, align 8
  %arrayidx73 = getelementptr inbounds float, ptr %100, i64 2
  %101 = load float, ptr %arrayidx73, align 4
  %102 = load ptr, ptr %T, align 8
  %arrayidx74 = getelementptr inbounds float, ptr %102, i64 1
  %103 = load float, ptr %arrayidx74, align 4
  %mul75 = fmul float %101, %103
  %neg76 = fneg float %mul75
  %104 = call float @llvm.fmuladd.f32(float %97, float %99, float %neg76)
  %105 = load ptr, ptr %oX, align 8
  %arrayidx77 = getelementptr inbounds float, ptr %105, i64 3
  store float %104, ptr %arrayidx77, align 4
  %106 = load ptr, ptr %iX, align 8
  %add.ptr78 = getelementptr inbounds float, ptr %106, i64 -8
  store ptr %add.ptr78, ptr %iX, align 8
  %107 = load ptr, ptr %oX, align 8
  %add.ptr79 = getelementptr inbounds float, ptr %107, i64 4
  store ptr %add.ptr79, ptr %oX, align 8
  br label %do.cond80

do.cond80:                                        ; preds = %do.body50
  %108 = load ptr, ptr %iX, align 8
  %109 = load ptr, ptr %in.addr, align 8
  %cmp81 = icmp uge ptr %108, %109
  br i1 %cmp81, label %do.body50, label %do.end82, !llvm.loop !8

do.end82:                                         ; preds = %do.cond80
  %110 = load ptr, ptr %init.addr, align 8
  %111 = load ptr, ptr %out.addr, align 8
  %112 = load i32, ptr %n2, align 4
  %idx.ext83 = sext i32 %112 to i64
  %add.ptr84 = getelementptr inbounds float, ptr %111, i64 %idx.ext83
  %113 = load i32, ptr %n2, align 4
  call void @mdct_butterflies(ptr noundef %110, ptr noundef %add.ptr84, i32 noundef %113)
  %114 = load ptr, ptr %init.addr, align 8
  %115 = load ptr, ptr %out.addr, align 8
  call void @mdct_bitreverse(ptr noundef %114, ptr noundef %115)
  %116 = load ptr, ptr %out.addr, align 8
  %117 = load i32, ptr %n2, align 4
  %idx.ext85 = sext i32 %117 to i64
  %add.ptr86 = getelementptr inbounds float, ptr %116, i64 %idx.ext85
  %118 = load i32, ptr %n4, align 4
  %idx.ext87 = sext i32 %118 to i64
  %add.ptr88 = getelementptr inbounds float, ptr %add.ptr86, i64 %idx.ext87
  store ptr %add.ptr88, ptr %oX1, align 8
  %119 = load ptr, ptr %out.addr, align 8
  %120 = load i32, ptr %n2, align 4
  %idx.ext89 = sext i32 %120 to i64
  %add.ptr90 = getelementptr inbounds float, ptr %119, i64 %idx.ext89
  %121 = load i32, ptr %n4, align 4
  %idx.ext91 = sext i32 %121 to i64
  %add.ptr92 = getelementptr inbounds float, ptr %add.ptr90, i64 %idx.ext91
  store ptr %add.ptr92, ptr %oX2, align 8
  %122 = load ptr, ptr %out.addr, align 8
  store ptr %122, ptr %iX93, align 8
  %123 = load ptr, ptr %init.addr, align 8
  %trig94 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %123, i32 0, i32 2
  %124 = load ptr, ptr %trig94, align 8
  %125 = load i32, ptr %n2, align 4
  %idx.ext95 = sext i32 %125 to i64
  %add.ptr96 = getelementptr inbounds float, ptr %124, i64 %idx.ext95
  store ptr %add.ptr96, ptr %T, align 8
  br label %do.body97

do.body97:                                        ; preds = %do.cond158, %do.end82
  %126 = load ptr, ptr %oX1, align 8
  %add.ptr98 = getelementptr inbounds float, ptr %126, i64 -4
  store ptr %add.ptr98, ptr %oX1, align 8
  %127 = load ptr, ptr %iX93, align 8
  %arrayidx99 = getelementptr inbounds float, ptr %127, i64 0
  %128 = load float, ptr %arrayidx99, align 4
  %129 = load ptr, ptr %T, align 8
  %arrayidx100 = getelementptr inbounds float, ptr %129, i64 1
  %130 = load float, ptr %arrayidx100, align 4
  %131 = load ptr, ptr %iX93, align 8
  %arrayidx101 = getelementptr inbounds float, ptr %131, i64 1
  %132 = load float, ptr %arrayidx101, align 4
  %133 = load ptr, ptr %T, align 8
  %arrayidx102 = getelementptr inbounds float, ptr %133, i64 0
  %134 = load float, ptr %arrayidx102, align 4
  %mul103 = fmul float %132, %134
  %neg104 = fneg float %mul103
  %135 = call float @llvm.fmuladd.f32(float %128, float %130, float %neg104)
  %136 = load ptr, ptr %oX1, align 8
  %arrayidx105 = getelementptr inbounds float, ptr %136, i64 3
  store float %135, ptr %arrayidx105, align 4
  %137 = load ptr, ptr %iX93, align 8
  %arrayidx106 = getelementptr inbounds float, ptr %137, i64 0
  %138 = load float, ptr %arrayidx106, align 4
  %139 = load ptr, ptr %T, align 8
  %arrayidx107 = getelementptr inbounds float, ptr %139, i64 0
  %140 = load float, ptr %arrayidx107, align 4
  %141 = load ptr, ptr %iX93, align 8
  %arrayidx108 = getelementptr inbounds float, ptr %141, i64 1
  %142 = load float, ptr %arrayidx108, align 4
  %143 = load ptr, ptr %T, align 8
  %arrayidx109 = getelementptr inbounds float, ptr %143, i64 1
  %144 = load float, ptr %arrayidx109, align 4
  %mul110 = fmul float %142, %144
  %145 = call float @llvm.fmuladd.f32(float %138, float %140, float %mul110)
  %fneg111 = fneg float %145
  %146 = load ptr, ptr %oX2, align 8
  %arrayidx112 = getelementptr inbounds float, ptr %146, i64 0
  store float %fneg111, ptr %arrayidx112, align 4
  %147 = load ptr, ptr %iX93, align 8
  %arrayidx113 = getelementptr inbounds float, ptr %147, i64 2
  %148 = load float, ptr %arrayidx113, align 4
  %149 = load ptr, ptr %T, align 8
  %arrayidx114 = getelementptr inbounds float, ptr %149, i64 3
  %150 = load float, ptr %arrayidx114, align 4
  %151 = load ptr, ptr %iX93, align 8
  %arrayidx115 = getelementptr inbounds float, ptr %151, i64 3
  %152 = load float, ptr %arrayidx115, align 4
  %153 = load ptr, ptr %T, align 8
  %arrayidx116 = getelementptr inbounds float, ptr %153, i64 2
  %154 = load float, ptr %arrayidx116, align 4
  %mul117 = fmul float %152, %154
  %neg118 = fneg float %mul117
  %155 = call float @llvm.fmuladd.f32(float %148, float %150, float %neg118)
  %156 = load ptr, ptr %oX1, align 8
  %arrayidx119 = getelementptr inbounds float, ptr %156, i64 2
  store float %155, ptr %arrayidx119, align 4
  %157 = load ptr, ptr %iX93, align 8
  %arrayidx120 = getelementptr inbounds float, ptr %157, i64 2
  %158 = load float, ptr %arrayidx120, align 4
  %159 = load ptr, ptr %T, align 8
  %arrayidx121 = getelementptr inbounds float, ptr %159, i64 2
  %160 = load float, ptr %arrayidx121, align 4
  %161 = load ptr, ptr %iX93, align 8
  %arrayidx122 = getelementptr inbounds float, ptr %161, i64 3
  %162 = load float, ptr %arrayidx122, align 4
  %163 = load ptr, ptr %T, align 8
  %arrayidx123 = getelementptr inbounds float, ptr %163, i64 3
  %164 = load float, ptr %arrayidx123, align 4
  %mul124 = fmul float %162, %164
  %165 = call float @llvm.fmuladd.f32(float %158, float %160, float %mul124)
  %fneg125 = fneg float %165
  %166 = load ptr, ptr %oX2, align 8
  %arrayidx126 = getelementptr inbounds float, ptr %166, i64 1
  store float %fneg125, ptr %arrayidx126, align 4
  %167 = load ptr, ptr %iX93, align 8
  %arrayidx127 = getelementptr inbounds float, ptr %167, i64 4
  %168 = load float, ptr %arrayidx127, align 4
  %169 = load ptr, ptr %T, align 8
  %arrayidx128 = getelementptr inbounds float, ptr %169, i64 5
  %170 = load float, ptr %arrayidx128, align 4
  %171 = load ptr, ptr %iX93, align 8
  %arrayidx129 = getelementptr inbounds float, ptr %171, i64 5
  %172 = load float, ptr %arrayidx129, align 4
  %173 = load ptr, ptr %T, align 8
  %arrayidx130 = getelementptr inbounds float, ptr %173, i64 4
  %174 = load float, ptr %arrayidx130, align 4
  %mul131 = fmul float %172, %174
  %neg132 = fneg float %mul131
  %175 = call float @llvm.fmuladd.f32(float %168, float %170, float %neg132)
  %176 = load ptr, ptr %oX1, align 8
  %arrayidx133 = getelementptr inbounds float, ptr %176, i64 1
  store float %175, ptr %arrayidx133, align 4
  %177 = load ptr, ptr %iX93, align 8
  %arrayidx134 = getelementptr inbounds float, ptr %177, i64 4
  %178 = load float, ptr %arrayidx134, align 4
  %179 = load ptr, ptr %T, align 8
  %arrayidx135 = getelementptr inbounds float, ptr %179, i64 4
  %180 = load float, ptr %arrayidx135, align 4
  %181 = load ptr, ptr %iX93, align 8
  %arrayidx136 = getelementptr inbounds float, ptr %181, i64 5
  %182 = load float, ptr %arrayidx136, align 4
  %183 = load ptr, ptr %T, align 8
  %arrayidx137 = getelementptr inbounds float, ptr %183, i64 5
  %184 = load float, ptr %arrayidx137, align 4
  %mul138 = fmul float %182, %184
  %185 = call float @llvm.fmuladd.f32(float %178, float %180, float %mul138)
  %fneg139 = fneg float %185
  %186 = load ptr, ptr %oX2, align 8
  %arrayidx140 = getelementptr inbounds float, ptr %186, i64 2
  store float %fneg139, ptr %arrayidx140, align 4
  %187 = load ptr, ptr %iX93, align 8
  %arrayidx141 = getelementptr inbounds float, ptr %187, i64 6
  %188 = load float, ptr %arrayidx141, align 4
  %189 = load ptr, ptr %T, align 8
  %arrayidx142 = getelementptr inbounds float, ptr %189, i64 7
  %190 = load float, ptr %arrayidx142, align 4
  %191 = load ptr, ptr %iX93, align 8
  %arrayidx143 = getelementptr inbounds float, ptr %191, i64 7
  %192 = load float, ptr %arrayidx143, align 4
  %193 = load ptr, ptr %T, align 8
  %arrayidx144 = getelementptr inbounds float, ptr %193, i64 6
  %194 = load float, ptr %arrayidx144, align 4
  %mul145 = fmul float %192, %194
  %neg146 = fneg float %mul145
  %195 = call float @llvm.fmuladd.f32(float %188, float %190, float %neg146)
  %196 = load ptr, ptr %oX1, align 8
  %arrayidx147 = getelementptr inbounds float, ptr %196, i64 0
  store float %195, ptr %arrayidx147, align 4
  %197 = load ptr, ptr %iX93, align 8
  %arrayidx148 = getelementptr inbounds float, ptr %197, i64 6
  %198 = load float, ptr %arrayidx148, align 4
  %199 = load ptr, ptr %T, align 8
  %arrayidx149 = getelementptr inbounds float, ptr %199, i64 6
  %200 = load float, ptr %arrayidx149, align 4
  %201 = load ptr, ptr %iX93, align 8
  %arrayidx150 = getelementptr inbounds float, ptr %201, i64 7
  %202 = load float, ptr %arrayidx150, align 4
  %203 = load ptr, ptr %T, align 8
  %arrayidx151 = getelementptr inbounds float, ptr %203, i64 7
  %204 = load float, ptr %arrayidx151, align 4
  %mul152 = fmul float %202, %204
  %205 = call float @llvm.fmuladd.f32(float %198, float %200, float %mul152)
  %fneg153 = fneg float %205
  %206 = load ptr, ptr %oX2, align 8
  %arrayidx154 = getelementptr inbounds float, ptr %206, i64 3
  store float %fneg153, ptr %arrayidx154, align 4
  %207 = load ptr, ptr %oX2, align 8
  %add.ptr155 = getelementptr inbounds float, ptr %207, i64 4
  store ptr %add.ptr155, ptr %oX2, align 8
  %208 = load ptr, ptr %iX93, align 8
  %add.ptr156 = getelementptr inbounds float, ptr %208, i64 8
  store ptr %add.ptr156, ptr %iX93, align 8
  %209 = load ptr, ptr %T, align 8
  %add.ptr157 = getelementptr inbounds float, ptr %209, i64 8
  store ptr %add.ptr157, ptr %T, align 8
  br label %do.cond158

do.cond158:                                       ; preds = %do.body97
  %210 = load ptr, ptr %iX93, align 8
  %211 = load ptr, ptr %oX1, align 8
  %cmp159 = icmp ult ptr %210, %211
  br i1 %cmp159, label %do.body97, label %do.end160, !llvm.loop !9

do.end160:                                        ; preds = %do.cond158
  %212 = load ptr, ptr %out.addr, align 8
  %213 = load i32, ptr %n2, align 4
  %idx.ext161 = sext i32 %213 to i64
  %add.ptr162 = getelementptr inbounds float, ptr %212, i64 %idx.ext161
  %214 = load i32, ptr %n4, align 4
  %idx.ext163 = sext i32 %214 to i64
  %add.ptr164 = getelementptr inbounds float, ptr %add.ptr162, i64 %idx.ext163
  store ptr %add.ptr164, ptr %iX93, align 8
  %215 = load ptr, ptr %out.addr, align 8
  %216 = load i32, ptr %n4, align 4
  %idx.ext165 = sext i32 %216 to i64
  %add.ptr166 = getelementptr inbounds float, ptr %215, i64 %idx.ext165
  store ptr %add.ptr166, ptr %oX1, align 8
  %217 = load ptr, ptr %oX1, align 8
  store ptr %217, ptr %oX2, align 8
  br label %do.body167

do.body167:                                       ; preds = %do.cond187, %do.end160
  %218 = load ptr, ptr %oX1, align 8
  %add.ptr168 = getelementptr inbounds float, ptr %218, i64 -4
  store ptr %add.ptr168, ptr %oX1, align 8
  %219 = load ptr, ptr %iX93, align 8
  %add.ptr169 = getelementptr inbounds float, ptr %219, i64 -4
  store ptr %add.ptr169, ptr %iX93, align 8
  %220 = load ptr, ptr %iX93, align 8
  %arrayidx170 = getelementptr inbounds float, ptr %220, i64 3
  %221 = load float, ptr %arrayidx170, align 4
  %222 = load ptr, ptr %oX1, align 8
  %arrayidx171 = getelementptr inbounds float, ptr %222, i64 3
  store float %221, ptr %arrayidx171, align 4
  %fneg172 = fneg float %221
  %223 = load ptr, ptr %oX2, align 8
  %arrayidx173 = getelementptr inbounds float, ptr %223, i64 0
  store float %fneg172, ptr %arrayidx173, align 4
  %224 = load ptr, ptr %iX93, align 8
  %arrayidx174 = getelementptr inbounds float, ptr %224, i64 2
  %225 = load float, ptr %arrayidx174, align 4
  %226 = load ptr, ptr %oX1, align 8
  %arrayidx175 = getelementptr inbounds float, ptr %226, i64 2
  store float %225, ptr %arrayidx175, align 4
  %fneg176 = fneg float %225
  %227 = load ptr, ptr %oX2, align 8
  %arrayidx177 = getelementptr inbounds float, ptr %227, i64 1
  store float %fneg176, ptr %arrayidx177, align 4
  %228 = load ptr, ptr %iX93, align 8
  %arrayidx178 = getelementptr inbounds float, ptr %228, i64 1
  %229 = load float, ptr %arrayidx178, align 4
  %230 = load ptr, ptr %oX1, align 8
  %arrayidx179 = getelementptr inbounds float, ptr %230, i64 1
  store float %229, ptr %arrayidx179, align 4
  %fneg180 = fneg float %229
  %231 = load ptr, ptr %oX2, align 8
  %arrayidx181 = getelementptr inbounds float, ptr %231, i64 2
  store float %fneg180, ptr %arrayidx181, align 4
  %232 = load ptr, ptr %iX93, align 8
  %arrayidx182 = getelementptr inbounds float, ptr %232, i64 0
  %233 = load float, ptr %arrayidx182, align 4
  %234 = load ptr, ptr %oX1, align 8
  %arrayidx183 = getelementptr inbounds float, ptr %234, i64 0
  store float %233, ptr %arrayidx183, align 4
  %fneg184 = fneg float %233
  %235 = load ptr, ptr %oX2, align 8
  %arrayidx185 = getelementptr inbounds float, ptr %235, i64 3
  store float %fneg184, ptr %arrayidx185, align 4
  %236 = load ptr, ptr %oX2, align 8
  %add.ptr186 = getelementptr inbounds float, ptr %236, i64 4
  store ptr %add.ptr186, ptr %oX2, align 8
  br label %do.cond187

do.cond187:                                       ; preds = %do.body167
  %237 = load ptr, ptr %oX2, align 8
  %238 = load ptr, ptr %iX93, align 8
  %cmp188 = icmp ult ptr %237, %238
  br i1 %cmp188, label %do.body167, label %do.end189, !llvm.loop !10

do.end189:                                        ; preds = %do.cond187
  %239 = load ptr, ptr %out.addr, align 8
  %240 = load i32, ptr %n2, align 4
  %idx.ext190 = sext i32 %240 to i64
  %add.ptr191 = getelementptr inbounds float, ptr %239, i64 %idx.ext190
  %241 = load i32, ptr %n4, align 4
  %idx.ext192 = sext i32 %241 to i64
  %add.ptr193 = getelementptr inbounds float, ptr %add.ptr191, i64 %idx.ext192
  store ptr %add.ptr193, ptr %iX93, align 8
  %242 = load ptr, ptr %out.addr, align 8
  %243 = load i32, ptr %n2, align 4
  %idx.ext194 = sext i32 %243 to i64
  %add.ptr195 = getelementptr inbounds float, ptr %242, i64 %idx.ext194
  %244 = load i32, ptr %n4, align 4
  %idx.ext196 = sext i32 %244 to i64
  %add.ptr197 = getelementptr inbounds float, ptr %add.ptr195, i64 %idx.ext196
  store ptr %add.ptr197, ptr %oX1, align 8
  %245 = load ptr, ptr %out.addr, align 8
  %246 = load i32, ptr %n2, align 4
  %idx.ext198 = sext i32 %246 to i64
  %add.ptr199 = getelementptr inbounds float, ptr %245, i64 %idx.ext198
  store ptr %add.ptr199, ptr %oX2, align 8
  br label %do.body200

do.body200:                                       ; preds = %do.cond211, %do.end189
  %247 = load ptr, ptr %oX1, align 8
  %add.ptr201 = getelementptr inbounds float, ptr %247, i64 -4
  store ptr %add.ptr201, ptr %oX1, align 8
  %248 = load ptr, ptr %iX93, align 8
  %arrayidx202 = getelementptr inbounds float, ptr %248, i64 3
  %249 = load float, ptr %arrayidx202, align 4
  %250 = load ptr, ptr %oX1, align 8
  %arrayidx203 = getelementptr inbounds float, ptr %250, i64 0
  store float %249, ptr %arrayidx203, align 4
  %251 = load ptr, ptr %iX93, align 8
  %arrayidx204 = getelementptr inbounds float, ptr %251, i64 2
  %252 = load float, ptr %arrayidx204, align 4
  %253 = load ptr, ptr %oX1, align 8
  %arrayidx205 = getelementptr inbounds float, ptr %253, i64 1
  store float %252, ptr %arrayidx205, align 4
  %254 = load ptr, ptr %iX93, align 8
  %arrayidx206 = getelementptr inbounds float, ptr %254, i64 1
  %255 = load float, ptr %arrayidx206, align 4
  %256 = load ptr, ptr %oX1, align 8
  %arrayidx207 = getelementptr inbounds float, ptr %256, i64 2
  store float %255, ptr %arrayidx207, align 4
  %257 = load ptr, ptr %iX93, align 8
  %arrayidx208 = getelementptr inbounds float, ptr %257, i64 0
  %258 = load float, ptr %arrayidx208, align 4
  %259 = load ptr, ptr %oX1, align 8
  %arrayidx209 = getelementptr inbounds float, ptr %259, i64 3
  store float %258, ptr %arrayidx209, align 4
  %260 = load ptr, ptr %iX93, align 8
  %add.ptr210 = getelementptr inbounds float, ptr %260, i64 4
  store ptr %add.ptr210, ptr %iX93, align 8
  br label %do.cond211

do.cond211:                                       ; preds = %do.body200
  %261 = load ptr, ptr %oX1, align 8
  %262 = load ptr, ptr %oX2, align 8
  %cmp212 = icmp ugt ptr %261, %262
  br i1 %cmp212, label %do.body200, label %do.end213, !llvm.loop !11

do.end213:                                        ; preds = %do.cond211
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @mdct_butterflies(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @mdct_bitreverse(ptr noundef, ptr noundef) #1

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
!11 = distinct !{!11, !7}
