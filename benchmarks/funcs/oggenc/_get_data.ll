; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OggVorbis_File = type { ptr, i32, i64, i64, %struct.ogg_sync_state, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, double, double, %struct.ogg_stream_state, %struct.vorbis_dsp_state, %struct.vorbis_block, %struct.ov_callbacks }
%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ov_callbacks = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ogg_sync_buffer(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_sync_wrote(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i64 @_get_data(ptr noundef %vf) #1 {
entry:
  %retval = alloca i64, align 8
  %vf.addr = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %bytes = alloca i64, align 8
  store ptr %vf, ptr %vf.addr, align 8
  %call = call ptr @__errno_location() #2
  store i32 0, ptr %call, align 4
  %0 = load ptr, ptr %vf.addr, align 8
  %datasource = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %datasource, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vf.addr, align 8
  %oy = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %2, i32 0, i32 4
  %call1 = call ptr @ogg_sync_buffer(ptr noundef %oy, i64 noundef 8500)
  store ptr %call1, ptr %buffer, align 8
  %3 = load ptr, ptr %vf.addr, align 8
  %callbacks = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %3, i32 0, i32 21
  %read_func = getelementptr inbounds nuw %struct.ov_callbacks, ptr %callbacks, i32 0, i32 0
  %4 = load ptr, ptr %read_func, align 8
  %5 = load ptr, ptr %buffer, align 8
  %6 = load ptr, ptr %vf.addr, align 8
  %datasource2 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %datasource2, align 8
  %call3 = call i64 %4(ptr noundef %5, i64 noundef 1, i64 noundef 8500, ptr noundef %7)
  store i64 %call3, ptr %bytes, align 8
  %8 = load i64, ptr %bytes, align 8
  %cmp = icmp sgt i64 %8, 0
  br i1 %cmp, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %9 = load ptr, ptr %vf.addr, align 8
  %oy5 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %9, i32 0, i32 4
  %10 = load i64, ptr %bytes, align 8
  %call6 = call i32 @ogg_sync_wrote(ptr noundef %oy5, i64 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i64, ptr %bytes, align 8
  %cmp7 = icmp eq i64 %11, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %call8 = call ptr @__errno_location() #2
  %12 = load i32, ptr %call8, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  store i64 -1, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %land.lhs.true, %if.end
  %13 = load i64, ptr %bytes, align 8
  store i64 %13, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.end11, %if.then10
  %14 = load i64, ptr %retval, align 8
  ret i64 %14
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
