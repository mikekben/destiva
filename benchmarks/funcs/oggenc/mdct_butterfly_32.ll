; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

; Function Attrs: nounwind uwtable
define hidden void @mdct_butterfly_32(ptr noundef %x) #1 {
entry:
  %x.addr = alloca ptr, align 8
  %r0 = alloca float, align 4
  %r1 = alloca float, align 4
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %arrayidx = getelementptr inbounds float, ptr %0, i64 30
  %1 = load float, ptr %arrayidx, align 4
  %2 = load ptr, ptr %x.addr, align 8
  %arrayidx1 = getelementptr inbounds float, ptr %2, i64 14
  %3 = load float, ptr %arrayidx1, align 4
  %sub = fsub float %1, %3
  store float %sub, ptr %r0, align 4
  %4 = load ptr, ptr %x.addr, align 8
  %arrayidx2 = getelementptr inbounds float, ptr %4, i64 31
  %5 = load float, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %x.addr, align 8
  %arrayidx3 = getelementptr inbounds float, ptr %6, i64 15
  %7 = load float, ptr %arrayidx3, align 4
  %sub4 = fsub float %5, %7
  store float %sub4, ptr %r1, align 4
  %8 = load ptr, ptr %x.addr, align 8
  %arrayidx5 = getelementptr inbounds float, ptr %8, i64 14
  %9 = load float, ptr %arrayidx5, align 4
  %10 = load ptr, ptr %x.addr, align 8
  %arrayidx6 = getelementptr inbounds float, ptr %10, i64 30
  %11 = load float, ptr %arrayidx6, align 4
  %add = fadd float %11, %9
  store float %add, ptr %arrayidx6, align 4
  %12 = load ptr, ptr %x.addr, align 8
  %arrayidx7 = getelementptr inbounds float, ptr %12, i64 15
  %13 = load float, ptr %arrayidx7, align 4
  %14 = load ptr, ptr %x.addr, align 8
  %arrayidx8 = getelementptr inbounds float, ptr %14, i64 31
  %15 = load float, ptr %arrayidx8, align 4
  %add9 = fadd float %15, %13
  store float %add9, ptr %arrayidx8, align 4
  %16 = load float, ptr %r0, align 4
  %17 = load ptr, ptr %x.addr, align 8
  %arrayidx10 = getelementptr inbounds float, ptr %17, i64 14
  store float %16, ptr %arrayidx10, align 4
  %18 = load float, ptr %r1, align 4
  %19 = load ptr, ptr %x.addr, align 8
  %arrayidx11 = getelementptr inbounds float, ptr %19, i64 15
  store float %18, ptr %arrayidx11, align 4
  %20 = load ptr, ptr %x.addr, align 8
  %arrayidx12 = getelementptr inbounds float, ptr %20, i64 28
  %21 = load float, ptr %arrayidx12, align 4
  %22 = load ptr, ptr %x.addr, align 8
  %arrayidx13 = getelementptr inbounds float, ptr %22, i64 12
  %23 = load float, ptr %arrayidx13, align 4
  %sub14 = fsub float %21, %23
  store float %sub14, ptr %r0, align 4
  %24 = load ptr, ptr %x.addr, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %24, i64 29
  %25 = load float, ptr %arrayidx15, align 4
  %26 = load ptr, ptr %x.addr, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %26, i64 13
  %27 = load float, ptr %arrayidx16, align 4
  %sub17 = fsub float %25, %27
  store float %sub17, ptr %r1, align 4
  %28 = load ptr, ptr %x.addr, align 8
  %arrayidx18 = getelementptr inbounds float, ptr %28, i64 12
  %29 = load float, ptr %arrayidx18, align 4
  %30 = load ptr, ptr %x.addr, align 8
  %arrayidx19 = getelementptr inbounds float, ptr %30, i64 28
  %31 = load float, ptr %arrayidx19, align 4
  %add20 = fadd float %31, %29
  store float %add20, ptr %arrayidx19, align 4
  %32 = load ptr, ptr %x.addr, align 8
  %arrayidx21 = getelementptr inbounds float, ptr %32, i64 13
  %33 = load float, ptr %arrayidx21, align 4
  %34 = load ptr, ptr %x.addr, align 8
  %arrayidx22 = getelementptr inbounds float, ptr %34, i64 29
  %35 = load float, ptr %arrayidx22, align 4
  %add23 = fadd float %35, %33
  store float %add23, ptr %arrayidx22, align 4
  %36 = load float, ptr %r0, align 4
  %37 = load float, ptr %r1, align 4
  %mul24 = fmul float %37, 0x3FD87DE2A0000000
  %neg = fneg float %mul24
  %38 = call float @llvm.fmuladd.f32(float %36, float 0x3FED906BC0000000, float %neg)
  %39 = load ptr, ptr %x.addr, align 8
  %arrayidx25 = getelementptr inbounds float, ptr %39, i64 12
  store float %38, ptr %arrayidx25, align 4
  %40 = load float, ptr %r0, align 4
  %41 = load float, ptr %r1, align 4
  %mul26 = fmul float %41, 0x3FED906BC0000000
  %42 = call float @llvm.fmuladd.f32(float %40, float 0x3FD87DE2A0000000, float %mul26)
  %43 = load ptr, ptr %x.addr, align 8
  %arrayidx27 = getelementptr inbounds float, ptr %43, i64 13
  store float %42, ptr %arrayidx27, align 4
  %44 = load ptr, ptr %x.addr, align 8
  %arrayidx28 = getelementptr inbounds float, ptr %44, i64 26
  %45 = load float, ptr %arrayidx28, align 4
  %46 = load ptr, ptr %x.addr, align 8
  %arrayidx29 = getelementptr inbounds float, ptr %46, i64 10
  %47 = load float, ptr %arrayidx29, align 4
  %sub30 = fsub float %45, %47
  store float %sub30, ptr %r0, align 4
  %48 = load ptr, ptr %x.addr, align 8
  %arrayidx31 = getelementptr inbounds float, ptr %48, i64 27
  %49 = load float, ptr %arrayidx31, align 4
  %50 = load ptr, ptr %x.addr, align 8
  %arrayidx32 = getelementptr inbounds float, ptr %50, i64 11
  %51 = load float, ptr %arrayidx32, align 4
  %sub33 = fsub float %49, %51
  store float %sub33, ptr %r1, align 4
  %52 = load ptr, ptr %x.addr, align 8
  %arrayidx34 = getelementptr inbounds float, ptr %52, i64 10
  %53 = load float, ptr %arrayidx34, align 4
  %54 = load ptr, ptr %x.addr, align 8
  %arrayidx35 = getelementptr inbounds float, ptr %54, i64 26
  %55 = load float, ptr %arrayidx35, align 4
  %add36 = fadd float %55, %53
  store float %add36, ptr %arrayidx35, align 4
  %56 = load ptr, ptr %x.addr, align 8
  %arrayidx37 = getelementptr inbounds float, ptr %56, i64 11
  %57 = load float, ptr %arrayidx37, align 4
  %58 = load ptr, ptr %x.addr, align 8
  %arrayidx38 = getelementptr inbounds float, ptr %58, i64 27
  %59 = load float, ptr %arrayidx38, align 4
  %add39 = fadd float %59, %57
  store float %add39, ptr %arrayidx38, align 4
  %60 = load float, ptr %r0, align 4
  %61 = load float, ptr %r1, align 4
  %sub40 = fsub float %60, %61
  %mul = fmul float %sub40, 0x3FE6A09E60000000
  %62 = load ptr, ptr %x.addr, align 8
  %arrayidx41 = getelementptr inbounds float, ptr %62, i64 10
  store float %mul, ptr %arrayidx41, align 4
  %63 = load float, ptr %r0, align 4
  %64 = load float, ptr %r1, align 4
  %add42 = fadd float %63, %64
  %mul43 = fmul float %add42, 0x3FE6A09E60000000
  %65 = load ptr, ptr %x.addr, align 8
  %arrayidx44 = getelementptr inbounds float, ptr %65, i64 11
  store float %mul43, ptr %arrayidx44, align 4
  %66 = load ptr, ptr %x.addr, align 8
  %arrayidx45 = getelementptr inbounds float, ptr %66, i64 24
  %67 = load float, ptr %arrayidx45, align 4
  %68 = load ptr, ptr %x.addr, align 8
  %arrayidx46 = getelementptr inbounds float, ptr %68, i64 8
  %69 = load float, ptr %arrayidx46, align 4
  %sub47 = fsub float %67, %69
  store float %sub47, ptr %r0, align 4
  %70 = load ptr, ptr %x.addr, align 8
  %arrayidx48 = getelementptr inbounds float, ptr %70, i64 25
  %71 = load float, ptr %arrayidx48, align 4
  %72 = load ptr, ptr %x.addr, align 8
  %arrayidx49 = getelementptr inbounds float, ptr %72, i64 9
  %73 = load float, ptr %arrayidx49, align 4
  %sub50 = fsub float %71, %73
  store float %sub50, ptr %r1, align 4
  %74 = load ptr, ptr %x.addr, align 8
  %arrayidx51 = getelementptr inbounds float, ptr %74, i64 8
  %75 = load float, ptr %arrayidx51, align 4
  %76 = load ptr, ptr %x.addr, align 8
  %arrayidx52 = getelementptr inbounds float, ptr %76, i64 24
  %77 = load float, ptr %arrayidx52, align 4
  %add53 = fadd float %77, %75
  store float %add53, ptr %arrayidx52, align 4
  %78 = load ptr, ptr %x.addr, align 8
  %arrayidx54 = getelementptr inbounds float, ptr %78, i64 9
  %79 = load float, ptr %arrayidx54, align 4
  %80 = load ptr, ptr %x.addr, align 8
  %arrayidx55 = getelementptr inbounds float, ptr %80, i64 25
  %81 = load float, ptr %arrayidx55, align 4
  %add56 = fadd float %81, %79
  store float %add56, ptr %arrayidx55, align 4
  %82 = load float, ptr %r0, align 4
  %83 = load float, ptr %r1, align 4
  %mul58 = fmul float %83, 0x3FED906BC0000000
  %neg59 = fneg float %mul58
  %84 = call float @llvm.fmuladd.f32(float %82, float 0x3FD87DE2A0000000, float %neg59)
  %85 = load ptr, ptr %x.addr, align 8
  %arrayidx60 = getelementptr inbounds float, ptr %85, i64 8
  store float %84, ptr %arrayidx60, align 4
  %86 = load float, ptr %r1, align 4
  %87 = load float, ptr %r0, align 4
  %mul62 = fmul float %87, 0x3FED906BC0000000
  %88 = call float @llvm.fmuladd.f32(float %86, float 0x3FD87DE2A0000000, float %mul62)
  %89 = load ptr, ptr %x.addr, align 8
  %arrayidx63 = getelementptr inbounds float, ptr %89, i64 9
  store float %88, ptr %arrayidx63, align 4
  %90 = load ptr, ptr %x.addr, align 8
  %arrayidx64 = getelementptr inbounds float, ptr %90, i64 22
  %91 = load float, ptr %arrayidx64, align 4
  %92 = load ptr, ptr %x.addr, align 8
  %arrayidx65 = getelementptr inbounds float, ptr %92, i64 6
  %93 = load float, ptr %arrayidx65, align 4
  %sub66 = fsub float %91, %93
  store float %sub66, ptr %r0, align 4
  %94 = load ptr, ptr %x.addr, align 8
  %arrayidx67 = getelementptr inbounds float, ptr %94, i64 7
  %95 = load float, ptr %arrayidx67, align 4
  %96 = load ptr, ptr %x.addr, align 8
  %arrayidx68 = getelementptr inbounds float, ptr %96, i64 23
  %97 = load float, ptr %arrayidx68, align 4
  %sub69 = fsub float %95, %97
  store float %sub69, ptr %r1, align 4
  %98 = load ptr, ptr %x.addr, align 8
  %arrayidx70 = getelementptr inbounds float, ptr %98, i64 6
  %99 = load float, ptr %arrayidx70, align 4
  %100 = load ptr, ptr %x.addr, align 8
  %arrayidx71 = getelementptr inbounds float, ptr %100, i64 22
  %101 = load float, ptr %arrayidx71, align 4
  %add72 = fadd float %101, %99
  store float %add72, ptr %arrayidx71, align 4
  %102 = load ptr, ptr %x.addr, align 8
  %arrayidx73 = getelementptr inbounds float, ptr %102, i64 7
  %103 = load float, ptr %arrayidx73, align 4
  %104 = load ptr, ptr %x.addr, align 8
  %arrayidx74 = getelementptr inbounds float, ptr %104, i64 23
  %105 = load float, ptr %arrayidx74, align 4
  %add75 = fadd float %105, %103
  store float %add75, ptr %arrayidx74, align 4
  %106 = load float, ptr %r1, align 4
  %107 = load ptr, ptr %x.addr, align 8
  %arrayidx76 = getelementptr inbounds float, ptr %107, i64 6
  store float %106, ptr %arrayidx76, align 4
  %108 = load float, ptr %r0, align 4
  %109 = load ptr, ptr %x.addr, align 8
  %arrayidx77 = getelementptr inbounds float, ptr %109, i64 7
  store float %108, ptr %arrayidx77, align 4
  %110 = load ptr, ptr %x.addr, align 8
  %arrayidx78 = getelementptr inbounds float, ptr %110, i64 4
  %111 = load float, ptr %arrayidx78, align 4
  %112 = load ptr, ptr %x.addr, align 8
  %arrayidx79 = getelementptr inbounds float, ptr %112, i64 20
  %113 = load float, ptr %arrayidx79, align 4
  %sub80 = fsub float %111, %113
  store float %sub80, ptr %r0, align 4
  %114 = load ptr, ptr %x.addr, align 8
  %arrayidx81 = getelementptr inbounds float, ptr %114, i64 5
  %115 = load float, ptr %arrayidx81, align 4
  %116 = load ptr, ptr %x.addr, align 8
  %arrayidx82 = getelementptr inbounds float, ptr %116, i64 21
  %117 = load float, ptr %arrayidx82, align 4
  %sub83 = fsub float %115, %117
  store float %sub83, ptr %r1, align 4
  %118 = load ptr, ptr %x.addr, align 8
  %arrayidx84 = getelementptr inbounds float, ptr %118, i64 4
  %119 = load float, ptr %arrayidx84, align 4
  %120 = load ptr, ptr %x.addr, align 8
  %arrayidx85 = getelementptr inbounds float, ptr %120, i64 20
  %121 = load float, ptr %arrayidx85, align 4
  %add86 = fadd float %121, %119
  store float %add86, ptr %arrayidx85, align 4
  %122 = load ptr, ptr %x.addr, align 8
  %arrayidx87 = getelementptr inbounds float, ptr %122, i64 5
  %123 = load float, ptr %arrayidx87, align 4
  %124 = load ptr, ptr %x.addr, align 8
  %arrayidx88 = getelementptr inbounds float, ptr %124, i64 21
  %125 = load float, ptr %arrayidx88, align 4
  %add89 = fadd float %125, %123
  store float %add89, ptr %arrayidx88, align 4
  %126 = load float, ptr %r1, align 4
  %127 = load float, ptr %r0, align 4
  %mul91 = fmul float %127, 0x3FD87DE2A0000000
  %128 = call float @llvm.fmuladd.f32(float %126, float 0x3FED906BC0000000, float %mul91)
  %129 = load ptr, ptr %x.addr, align 8
  %arrayidx92 = getelementptr inbounds float, ptr %129, i64 4
  store float %128, ptr %arrayidx92, align 4
  %130 = load float, ptr %r1, align 4
  %131 = load float, ptr %r0, align 4
  %mul94 = fmul float %131, 0x3FED906BC0000000
  %neg95 = fneg float %mul94
  %132 = call float @llvm.fmuladd.f32(float %130, float 0x3FD87DE2A0000000, float %neg95)
  %133 = load ptr, ptr %x.addr, align 8
  %arrayidx96 = getelementptr inbounds float, ptr %133, i64 5
  store float %132, ptr %arrayidx96, align 4
  %134 = load ptr, ptr %x.addr, align 8
  %arrayidx97 = getelementptr inbounds float, ptr %134, i64 2
  %135 = load float, ptr %arrayidx97, align 4
  %136 = load ptr, ptr %x.addr, align 8
  %arrayidx98 = getelementptr inbounds float, ptr %136, i64 18
  %137 = load float, ptr %arrayidx98, align 4
  %sub99 = fsub float %135, %137
  store float %sub99, ptr %r0, align 4
  %138 = load ptr, ptr %x.addr, align 8
  %arrayidx100 = getelementptr inbounds float, ptr %138, i64 3
  %139 = load float, ptr %arrayidx100, align 4
  %140 = load ptr, ptr %x.addr, align 8
  %arrayidx101 = getelementptr inbounds float, ptr %140, i64 19
  %141 = load float, ptr %arrayidx101, align 4
  %sub102 = fsub float %139, %141
  store float %sub102, ptr %r1, align 4
  %142 = load ptr, ptr %x.addr, align 8
  %arrayidx103 = getelementptr inbounds float, ptr %142, i64 2
  %143 = load float, ptr %arrayidx103, align 4
  %144 = load ptr, ptr %x.addr, align 8
  %arrayidx104 = getelementptr inbounds float, ptr %144, i64 18
  %145 = load float, ptr %arrayidx104, align 4
  %add105 = fadd float %145, %143
  store float %add105, ptr %arrayidx104, align 4
  %146 = load ptr, ptr %x.addr, align 8
  %arrayidx106 = getelementptr inbounds float, ptr %146, i64 3
  %147 = load float, ptr %arrayidx106, align 4
  %148 = load ptr, ptr %x.addr, align 8
  %arrayidx107 = getelementptr inbounds float, ptr %148, i64 19
  %149 = load float, ptr %arrayidx107, align 4
  %add108 = fadd float %149, %147
  store float %add108, ptr %arrayidx107, align 4
  %150 = load float, ptr %r1, align 4
  %151 = load float, ptr %r0, align 4
  %add109 = fadd float %150, %151
  %mul110 = fmul float %add109, 0x3FE6A09E60000000
  %152 = load ptr, ptr %x.addr, align 8
  %arrayidx111 = getelementptr inbounds float, ptr %152, i64 2
  store float %mul110, ptr %arrayidx111, align 4
  %153 = load float, ptr %r1, align 4
  %154 = load float, ptr %r0, align 4
  %sub112 = fsub float %153, %154
  %mul113 = fmul float %sub112, 0x3FE6A09E60000000
  %155 = load ptr, ptr %x.addr, align 8
  %arrayidx114 = getelementptr inbounds float, ptr %155, i64 3
  store float %mul113, ptr %arrayidx114, align 4
  %156 = load ptr, ptr %x.addr, align 8
  %arrayidx115 = getelementptr inbounds float, ptr %156, i64 0
  %157 = load float, ptr %arrayidx115, align 4
  %158 = load ptr, ptr %x.addr, align 8
  %arrayidx116 = getelementptr inbounds float, ptr %158, i64 16
  %159 = load float, ptr %arrayidx116, align 4
  %sub117 = fsub float %157, %159
  store float %sub117, ptr %r0, align 4
  %160 = load ptr, ptr %x.addr, align 8
  %arrayidx118 = getelementptr inbounds float, ptr %160, i64 1
  %161 = load float, ptr %arrayidx118, align 4
  %162 = load ptr, ptr %x.addr, align 8
  %arrayidx119 = getelementptr inbounds float, ptr %162, i64 17
  %163 = load float, ptr %arrayidx119, align 4
  %sub120 = fsub float %161, %163
  store float %sub120, ptr %r1, align 4
  %164 = load ptr, ptr %x.addr, align 8
  %arrayidx121 = getelementptr inbounds float, ptr %164, i64 0
  %165 = load float, ptr %arrayidx121, align 4
  %166 = load ptr, ptr %x.addr, align 8
  %arrayidx122 = getelementptr inbounds float, ptr %166, i64 16
  %167 = load float, ptr %arrayidx122, align 4
  %add123 = fadd float %167, %165
  store float %add123, ptr %arrayidx122, align 4
  %168 = load ptr, ptr %x.addr, align 8
  %arrayidx124 = getelementptr inbounds float, ptr %168, i64 1
  %169 = load float, ptr %arrayidx124, align 4
  %170 = load ptr, ptr %x.addr, align 8
  %arrayidx125 = getelementptr inbounds float, ptr %170, i64 17
  %171 = load float, ptr %arrayidx125, align 4
  %add126 = fadd float %171, %169
  store float %add126, ptr %arrayidx125, align 4
  %172 = load float, ptr %r1, align 4
  %173 = load float, ptr %r0, align 4
  %mul128 = fmul float %173, 0x3FED906BC0000000
  %174 = call float @llvm.fmuladd.f32(float %172, float 0x3FD87DE2A0000000, float %mul128)
  %175 = load ptr, ptr %x.addr, align 8
  %arrayidx129 = getelementptr inbounds float, ptr %175, i64 0
  store float %174, ptr %arrayidx129, align 4
  %176 = load float, ptr %r1, align 4
  %177 = load float, ptr %r0, align 4
  %mul131 = fmul float %177, 0x3FD87DE2A0000000
  %neg132 = fneg float %mul131
  %178 = call float @llvm.fmuladd.f32(float %176, float 0x3FED906BC0000000, float %neg132)
  %179 = load ptr, ptr %x.addr, align 8
  %arrayidx133 = getelementptr inbounds float, ptr %179, i64 1
  store float %178, ptr %arrayidx133, align 4
  %180 = load ptr, ptr %x.addr, align 8
  call void @mdct_butterfly_16(ptr noundef %180)
  %181 = load ptr, ptr %x.addr, align 8
  %add.ptr = getelementptr inbounds float, ptr %181, i64 16
  call void @mdct_butterfly_16(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @mdct_butterfly_16(ptr noundef) #1

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
