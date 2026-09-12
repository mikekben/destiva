; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_analysis_init(ptr noundef %v, ptr noundef %vi) #1 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %vi.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store ptr null, ptr %b, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %1 = load ptr, ptr %vi.addr, align 8
  %call = call i32 @_vds_shared_init(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %backend_state, align 8
  store ptr %3, ptr %b, align 8
  %4 = load ptr, ptr %vi.addr, align 8
  %call1 = call ptr @_vp_global_look(ptr noundef %4)
  %5 = load ptr, ptr %b, align 8
  %psy_g_look = getelementptr inbounds nuw %struct.private_state, ptr %5, i32 0, i32 8
  store ptr %call1, ptr %psy_g_look, align 8
  %call2 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 280) #2
  %6 = load ptr, ptr %b, align 8
  %ve = getelementptr inbounds nuw %struct.private_state, ptr %6, i32 0, i32 0
  store ptr %call2, ptr %ve, align 8
  %7 = load ptr, ptr %b, align 8
  %ve3 = getelementptr inbounds nuw %struct.private_state, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %ve3, align 8
  %9 = load ptr, ptr %vi.addr, align 8
  call void @_ve_envelope_init(ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %vi.addr, align 8
  %11 = load ptr, ptr %b, align 8
  %bms = getelementptr inbounds nuw %struct.private_state, ptr %11, i32 0, i32 12
  call void @vorbis_bitrate_init(ptr noundef %10, ptr noundef %bms)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden i32 @_vds_shared_init(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @_vp_global_look(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @_ve_envelope_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local void @vorbis_bitrate_init(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
