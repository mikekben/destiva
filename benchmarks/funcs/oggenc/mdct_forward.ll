; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdct_lookup = type { i32, i32, ptr, ptr, float }

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
declare hidden void @mdct_butterflies(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @mdct_bitreverse(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local void @mdct_forward(ptr noundef %init, ptr noundef %in, ptr noundef %out) #1 {
entry:
  %init.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %n2 = alloca i32, align 4
  %n4 = alloca i32, align 4
  %n8 = alloca i32, align 4
  %w = alloca ptr, align 8
  %w2 = alloca ptr, align 8
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  %x0 = alloca ptr, align 8
  %x1 = alloca ptr, align 8
  %T = alloca ptr, align 8
  %i = alloca i32, align 4
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
  %4 = load i32, ptr %n, align 4
  %shr3 = ashr i32 %4, 3
  store i32 %shr3, ptr %n8, align 4
  %5 = load i32, ptr %n, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 4
  %6 = alloca i8, i64 %mul, align 16
  store ptr %6, ptr %w, align 8
  %7 = load ptr, ptr %w, align 8
  %8 = load i32, ptr %n2, align 4
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds float, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %w2, align 8
  %9 = load ptr, ptr %in.addr, align 8
  %10 = load i32, ptr %n2, align 4
  %idx.ext4 = sext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds float, ptr %9, i64 %idx.ext4
  %11 = load i32, ptr %n4, align 4
  %idx.ext6 = sext i32 %11 to i64
  %add.ptr7 = getelementptr inbounds float, ptr %add.ptr5, i64 %idx.ext6
  store ptr %add.ptr7, ptr %x0, align 8
  %12 = load ptr, ptr %x0, align 8
  %add.ptr8 = getelementptr inbounds float, ptr %12, i64 1
  store ptr %add.ptr8, ptr %x1, align 8
  %13 = load ptr, ptr %init.addr, align 8
  %trig = getelementptr inbounds nuw %struct.mdct_lookup, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %trig, align 8
  %15 = load i32, ptr %n2, align 4
  %idx.ext9 = sext i32 %15 to i64
  %add.ptr10 = getelementptr inbounds float, ptr %14, i64 %idx.ext9
  store ptr %add.ptr10, ptr %T, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %n8, align 4
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %x0, align 8
  %add.ptr12 = getelementptr inbounds float, ptr %18, i64 -4
  store ptr %add.ptr12, ptr %x0, align 8
  %19 = load ptr, ptr %T, align 8
  %add.ptr13 = getelementptr inbounds float, ptr %19, i64 -2
  store ptr %add.ptr13, ptr %T, align 8
  %20 = load ptr, ptr %x0, align 8
  %arrayidx = getelementptr inbounds float, ptr %20, i64 2
  %21 = load float, ptr %arrayidx, align 4
  %22 = load ptr, ptr %x1, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %22, i64 0
  %23 = load float, ptr %arrayidx14, align 4
  %add = fadd float %21, %23
  store float %add, ptr %r0, align 4
  %24 = load ptr, ptr %x0, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %24, i64 0
  %25 = load float, ptr %arrayidx15, align 4
  %26 = load ptr, ptr %x1, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %26, i64 2
  %27 = load float, ptr %arrayidx16, align 4
  %add17 = fadd float %25, %27
  store float %add17, ptr %r1, align 4
  %28 = load float, ptr %r1, align 4
  %29 = load ptr, ptr %T, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %29, i64 1
  %30 = load float, ptr %arrayidx18, align 4
  %31 = load float, ptr %r0, align 4
  %32 = load ptr, ptr %T, align 8
  %arrayidx20 = getelementptr inbounds float, ptr %32, i64 0
  %33 = load float, ptr %arrayidx20, align 4
  %mul21 = fmul float %31, %33
  %34 = call float @llvm.fmuladd.f32(float %28, float %30, float %mul21)
  %35 = load ptr, ptr %w2, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom = sext i32 %36 to i64
  %arrayidx22 = getelementptr inbounds float, ptr %35, i64 %idxprom
  store float %34, ptr %arrayidx22, align 4
  %37 = load float, ptr %r1, align 4
  %38 = load ptr, ptr %T, align 8
  %arrayidx23 = getelementptr inbounds float, ptr %38, i64 0
  %39 = load float, ptr %arrayidx23, align 4
  %40 = load float, ptr %r0, align 4
  %41 = load ptr, ptr %T, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %41, i64 1
  %42 = load float, ptr %arrayidx25, align 4
  %mul26 = fmul float %40, %42
  %neg = fneg float %mul26
  %43 = call float @llvm.fmuladd.f32(float %37, float %39, float %neg)
  %44 = load ptr, ptr %w2, align 8
  %45 = load i32, ptr %i, align 4
  %add27 = add nsw i32 %45, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds float, ptr %44, i64 %idxprom28
  store float %43, ptr %arrayidx29, align 4
  %46 = load ptr, ptr %x1, align 8
  %add.ptr30 = getelementptr inbounds float, ptr %46, i64 4
  store ptr %add.ptr30, ptr %x1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %47 = load i32, ptr %i, align 4
  %add31 = add nsw i32 %47, 2
  store i32 %add31, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %48 = load ptr, ptr %in.addr, align 8
  %add.ptr32 = getelementptr inbounds float, ptr %48, i64 1
  store ptr %add.ptr32, ptr %x1, align 8
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc60, %for.end
  %49 = load i32, ptr %i, align 4
  %50 = load i32, ptr %n2, align 4
  %51 = load i32, ptr %n8, align 4
  %sub = sub nsw i32 %50, %51
  %cmp34 = icmp slt i32 %49, %sub
  br i1 %cmp34, label %for.body36, label %for.end62

for.body36:                                       ; preds = %for.cond33
  %52 = load ptr, ptr %T, align 8
  %add.ptr37 = getelementptr inbounds float, ptr %52, i64 -2
  store ptr %add.ptr37, ptr %T, align 8
  %53 = load ptr, ptr %x0, align 8
  %add.ptr38 = getelementptr inbounds float, ptr %53, i64 -4
  store ptr %add.ptr38, ptr %x0, align 8
  %54 = load ptr, ptr %x0, align 8
  %arrayidx39 = getelementptr inbounds float, ptr %54, i64 2
  %55 = load float, ptr %arrayidx39, align 4
  %56 = load ptr, ptr %x1, align 8
  %arrayidx40 = getelementptr inbounds float, ptr %56, i64 0
  %57 = load float, ptr %arrayidx40, align 4
  %sub41 = fsub float %55, %57
  store float %sub41, ptr %r0, align 4
  %58 = load ptr, ptr %x0, align 8
  %arrayidx42 = getelementptr inbounds float, ptr %58, i64 0
  %59 = load float, ptr %arrayidx42, align 4
  %60 = load ptr, ptr %x1, align 8
  %arrayidx43 = getelementptr inbounds float, ptr %60, i64 2
  %61 = load float, ptr %arrayidx43, align 4
  %sub44 = fsub float %59, %61
  store float %sub44, ptr %r1, align 4
  %62 = load float, ptr %r1, align 4
  %63 = load ptr, ptr %T, align 8
  %arrayidx45 = getelementptr inbounds float, ptr %63, i64 1
  %64 = load float, ptr %arrayidx45, align 4
  %65 = load float, ptr %r0, align 4
  %66 = load ptr, ptr %T, align 8
  %arrayidx47 = getelementptr inbounds float, ptr %66, i64 0
  %67 = load float, ptr %arrayidx47, align 4
  %mul48 = fmul float %65, %67
  %68 = call float @llvm.fmuladd.f32(float %62, float %64, float %mul48)
  %69 = load ptr, ptr %w2, align 8
  %70 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %70 to i64
  %arrayidx50 = getelementptr inbounds float, ptr %69, i64 %idxprom49
  store float %68, ptr %arrayidx50, align 4
  %71 = load float, ptr %r1, align 4
  %72 = load ptr, ptr %T, align 8
  %arrayidx51 = getelementptr inbounds float, ptr %72, i64 0
  %73 = load float, ptr %arrayidx51, align 4
  %74 = load float, ptr %r0, align 4
  %75 = load ptr, ptr %T, align 8
  %arrayidx53 = getelementptr inbounds float, ptr %75, i64 1
  %76 = load float, ptr %arrayidx53, align 4
  %mul54 = fmul float %74, %76
  %neg55 = fneg float %mul54
  %77 = call float @llvm.fmuladd.f32(float %71, float %73, float %neg55)
  %78 = load ptr, ptr %w2, align 8
  %79 = load i32, ptr %i, align 4
  %add56 = add nsw i32 %79, 1
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds float, ptr %78, i64 %idxprom57
  store float %77, ptr %arrayidx58, align 4
  %80 = load ptr, ptr %x1, align 8
  %add.ptr59 = getelementptr inbounds float, ptr %80, i64 4
  store ptr %add.ptr59, ptr %x1, align 8
  br label %for.inc60

for.inc60:                                        ; preds = %for.body36
  %81 = load i32, ptr %i, align 4
  %add61 = add nsw i32 %81, 2
  store i32 %add61, ptr %i, align 4
  br label %for.cond33, !llvm.loop !8

for.end62:                                        ; preds = %for.cond33
  %82 = load ptr, ptr %in.addr, align 8
  %83 = load i32, ptr %n, align 4
  %idx.ext63 = sext i32 %83 to i64
  %add.ptr64 = getelementptr inbounds float, ptr %82, i64 %idx.ext63
  store ptr %add.ptr64, ptr %x0, align 8
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc93, %for.end62
  %84 = load i32, ptr %i, align 4
  %85 = load i32, ptr %n2, align 4
  %cmp66 = icmp slt i32 %84, %85
  br i1 %cmp66, label %for.body68, label %for.end95

for.body68:                                       ; preds = %for.cond65
  %86 = load ptr, ptr %T, align 8
  %add.ptr69 = getelementptr inbounds float, ptr %86, i64 -2
  store ptr %add.ptr69, ptr %T, align 8
  %87 = load ptr, ptr %x0, align 8
  %add.ptr70 = getelementptr inbounds float, ptr %87, i64 -4
  store ptr %add.ptr70, ptr %x0, align 8
  %88 = load ptr, ptr %x0, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %88, i64 2
  %89 = load float, ptr %arrayidx71, align 4
  %fneg = fneg float %89
  %90 = load ptr, ptr %x1, align 8
  %arrayidx72 = getelementptr inbounds float, ptr %90, i64 0
  %91 = load float, ptr %arrayidx72, align 4
  %sub73 = fsub float %fneg, %91
  store float %sub73, ptr %r0, align 4
  %92 = load ptr, ptr %x0, align 8
  %arrayidx74 = getelementptr inbounds float, ptr %92, i64 0
  %93 = load float, ptr %arrayidx74, align 4
  %fneg75 = fneg float %93
  %94 = load ptr, ptr %x1, align 8
  %arrayidx76 = getelementptr inbounds float, ptr %94, i64 2
  %95 = load float, ptr %arrayidx76, align 4
  %sub77 = fsub float %fneg75, %95
  store float %sub77, ptr %r1, align 4
  %96 = load float, ptr %r1, align 4
  %97 = load ptr, ptr %T, align 8
  %arrayidx78 = getelementptr inbounds float, ptr %97, i64 1
  %98 = load float, ptr %arrayidx78, align 4
  %99 = load float, ptr %r0, align 4
  %100 = load ptr, ptr %T, align 8
  %arrayidx80 = getelementptr inbounds float, ptr %100, i64 0
  %101 = load float, ptr %arrayidx80, align 4
  %mul81 = fmul float %99, %101
  %102 = call float @llvm.fmuladd.f32(float %96, float %98, float %mul81)
  %103 = load ptr, ptr %w2, align 8
  %104 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %104 to i64
  %arrayidx83 = getelementptr inbounds float, ptr %103, i64 %idxprom82
  store float %102, ptr %arrayidx83, align 4
  %105 = load float, ptr %r1, align 4
  %106 = load ptr, ptr %T, align 8
  %arrayidx84 = getelementptr inbounds float, ptr %106, i64 0
  %107 = load float, ptr %arrayidx84, align 4
  %108 = load float, ptr %r0, align 4
  %109 = load ptr, ptr %T, align 8
  %arrayidx86 = getelementptr inbounds float, ptr %109, i64 1
  %110 = load float, ptr %arrayidx86, align 4
  %mul87 = fmul float %108, %110
  %neg88 = fneg float %mul87
  %111 = call float @llvm.fmuladd.f32(float %105, float %107, float %neg88)
  %112 = load ptr, ptr %w2, align 8
  %113 = load i32, ptr %i, align 4
  %add89 = add nsw i32 %113, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds float, ptr %112, i64 %idxprom90
  store float %111, ptr %arrayidx91, align 4
  %114 = load ptr, ptr %x1, align 8
  %add.ptr92 = getelementptr inbounds float, ptr %114, i64 4
  store ptr %add.ptr92, ptr %x1, align 8
  br label %for.inc93

for.inc93:                                        ; preds = %for.body68
  %115 = load i32, ptr %i, align 4
  %add94 = add nsw i32 %115, 2
  store i32 %add94, ptr %i, align 4
  br label %for.cond65, !llvm.loop !9

for.end95:                                        ; preds = %for.cond65
  %116 = load ptr, ptr %init.addr, align 8
  %117 = load ptr, ptr %w, align 8
  %118 = load i32, ptr %n2, align 4
  %idx.ext96 = sext i32 %118 to i64
  %add.ptr97 = getelementptr inbounds float, ptr %117, i64 %idx.ext96
  %119 = load i32, ptr %n2, align 4
  call void @mdct_butterflies(ptr noundef %116, ptr noundef %add.ptr97, i32 noundef %119)
  %120 = load ptr, ptr %init.addr, align 8
  %121 = load ptr, ptr %w, align 8
  call void @mdct_bitreverse(ptr noundef %120, ptr noundef %121)
  %122 = load ptr, ptr %init.addr, align 8
  %trig98 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %122, i32 0, i32 2
  %123 = load ptr, ptr %trig98, align 8
  %124 = load i32, ptr %n2, align 4
  %idx.ext99 = sext i32 %124 to i64
  %add.ptr100 = getelementptr inbounds float, ptr %123, i64 %idx.ext99
  store ptr %add.ptr100, ptr %T, align 8
  %125 = load ptr, ptr %out.addr, align 8
  %126 = load i32, ptr %n2, align 4
  %idx.ext101 = sext i32 %126 to i64
  %add.ptr102 = getelementptr inbounds float, ptr %125, i64 %idx.ext101
  store ptr %add.ptr102, ptr %x0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc128, %for.end95
  %127 = load i32, ptr %i, align 4
  %128 = load i32, ptr %n4, align 4
  %cmp104 = icmp slt i32 %127, %128
  br i1 %cmp104, label %for.body106, label %for.end129

for.body106:                                      ; preds = %for.cond103
  %129 = load ptr, ptr %x0, align 8
  %incdec.ptr = getelementptr inbounds float, ptr %129, i32 -1
  store ptr %incdec.ptr, ptr %x0, align 8
  %130 = load ptr, ptr %w, align 8
  %arrayidx107 = getelementptr inbounds float, ptr %130, i64 0
  %131 = load float, ptr %arrayidx107, align 4
  %132 = load ptr, ptr %T, align 8
  %arrayidx108 = getelementptr inbounds float, ptr %132, i64 0
  %133 = load float, ptr %arrayidx108, align 4
  %134 = load ptr, ptr %w, align 8
  %arrayidx110 = getelementptr inbounds float, ptr %134, i64 1
  %135 = load float, ptr %arrayidx110, align 4
  %136 = load ptr, ptr %T, align 8
  %arrayidx111 = getelementptr inbounds float, ptr %136, i64 1
  %137 = load float, ptr %arrayidx111, align 4
  %mul112 = fmul float %135, %137
  %138 = call float @llvm.fmuladd.f32(float %131, float %133, float %mul112)
  %139 = load ptr, ptr %init.addr, align 8
  %scale = getelementptr inbounds nuw %struct.mdct_lookup, ptr %139, i32 0, i32 4
  %140 = load float, ptr %scale, align 8
  %mul113 = fmul float %138, %140
  %141 = load ptr, ptr %out.addr, align 8
  %142 = load i32, ptr %i, align 4
  %idxprom114 = sext i32 %142 to i64
  %arrayidx115 = getelementptr inbounds float, ptr %141, i64 %idxprom114
  store float %mul113, ptr %arrayidx115, align 4
  %143 = load ptr, ptr %w, align 8
  %arrayidx116 = getelementptr inbounds float, ptr %143, i64 0
  %144 = load float, ptr %arrayidx116, align 4
  %145 = load ptr, ptr %T, align 8
  %arrayidx117 = getelementptr inbounds float, ptr %145, i64 1
  %146 = load float, ptr %arrayidx117, align 4
  %147 = load ptr, ptr %w, align 8
  %arrayidx119 = getelementptr inbounds float, ptr %147, i64 1
  %148 = load float, ptr %arrayidx119, align 4
  %149 = load ptr, ptr %T, align 8
  %arrayidx120 = getelementptr inbounds float, ptr %149, i64 0
  %150 = load float, ptr %arrayidx120, align 4
  %mul121 = fmul float %148, %150
  %neg122 = fneg float %mul121
  %151 = call float @llvm.fmuladd.f32(float %144, float %146, float %neg122)
  %152 = load ptr, ptr %init.addr, align 8
  %scale123 = getelementptr inbounds nuw %struct.mdct_lookup, ptr %152, i32 0, i32 4
  %153 = load float, ptr %scale123, align 8
  %mul124 = fmul float %151, %153
  %154 = load ptr, ptr %x0, align 8
  %arrayidx125 = getelementptr inbounds float, ptr %154, i64 0
  store float %mul124, ptr %arrayidx125, align 4
  %155 = load ptr, ptr %w, align 8
  %add.ptr126 = getelementptr inbounds float, ptr %155, i64 2
  store ptr %add.ptr126, ptr %w, align 8
  %156 = load ptr, ptr %T, align 8
  %add.ptr127 = getelementptr inbounds float, ptr %156, i64 2
  store ptr %add.ptr127, ptr %T, align 8
  br label %for.inc128

for.inc128:                                       ; preds = %for.body106
  %157 = load i32, ptr %i, align 4
  %inc = add nsw i32 %157, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond103, !llvm.loop !10

for.end129:                                       ; preds = %for.cond103
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
