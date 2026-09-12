; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_look_floor0 = type { i32, i32, ptr, [2 x i32], ptr, i64, i64 }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_info_floor0 = type { i32, i64, i64, i32, i32, i32, [16 x i32], float, float }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @floor0_inverse2(ptr noundef %vb, ptr noundef %i, ptr noundef %memo, ptr noundef %out) #1 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %i.addr = alloca ptr, align 8
  %memo.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %look = alloca ptr, align 8
  %info = alloca ptr, align 8
  %lsp = alloca ptr, align 8
  %amp = alloca float, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %i, ptr %i.addr, align 8
  store ptr %memo, ptr %memo.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  %0 = load ptr, ptr %i.addr, align 8
  store ptr %0, ptr %look, align 8
  %1 = load ptr, ptr %look, align 8
  %vi = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %vi, align 8
  store ptr %2, ptr %info, align 8
  %3 = load ptr, ptr %vb.addr, align 8
  %4 = load ptr, ptr %info, align 8
  %5 = load ptr, ptr %look, align 8
  call void @floor0_map_lazy_init(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %memo.addr, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %memo.addr, align 8
  store ptr %7, ptr %lsp, align 8
  %8 = load ptr, ptr %lsp, align 8
  %9 = load ptr, ptr %look, align 8
  %m = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %m, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds float, ptr %8, i64 %idxprom
  %11 = load float, ptr %arrayidx, align 4
  store float %11, ptr %amp, align 4
  %12 = load ptr, ptr %out.addr, align 8
  %13 = load ptr, ptr %look, align 8
  %linearmap = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %linearmap, align 8
  %15 = load ptr, ptr %vb.addr, align 8
  %W = getelementptr inbounds nuw %struct.vorbis_block, ptr %15, i32 0, i32 3
  %16 = load i64, ptr %W, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %14, i64 %16
  %17 = load ptr, ptr %arrayidx1, align 8
  %18 = load ptr, ptr %look, align 8
  %n = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %vb.addr, align 8
  %W2 = getelementptr inbounds nuw %struct.vorbis_block, ptr %19, i32 0, i32 3
  %20 = load i64, ptr %W2, align 8
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %n, i64 0, i64 %20
  %21 = load i32, ptr %arrayidx3, align 4
  %22 = load ptr, ptr %look, align 8
  %ln = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %ln, align 8
  %24 = load ptr, ptr %lsp, align 8
  %25 = load ptr, ptr %look, align 8
  %m4 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %m4, align 4
  %27 = load float, ptr %amp, align 4
  %28 = load ptr, ptr %info, align 8
  %ampdB = getelementptr inbounds nuw %struct.vorbis_info_floor0, ptr %28, i32 0, i32 4
  %29 = load i32, ptr %ampdB, align 4
  %conv = sitofp i32 %29 to float
  call void @vorbis_lsp_to_curve(ptr noundef %12, ptr noundef %17, i32 noundef %21, i32 noundef %23, ptr noundef %24, i32 noundef %26, float noundef %27, float noundef %conv)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %30 = load ptr, ptr %out.addr, align 8
  %31 = load ptr, ptr %look, align 8
  %n5 = getelementptr inbounds nuw %struct.vorbis_look_floor0, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %vb.addr, align 8
  %W6 = getelementptr inbounds nuw %struct.vorbis_block, ptr %32, i32 0, i32 3
  %33 = load i64, ptr %W6, align 8
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %n5, i64 0, i64 %33
  %34 = load i32, ptr %arrayidx7, align 4
  %conv8 = sext i32 %34 to i64
  %mul = mul i64 4, %conv8
  call void @llvm.memset.p0.i64(ptr align 4 %30, i8 0, i64 %mul, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_lsp_to_curve(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, float noundef, float noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @floor0_map_lazy_init(ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
