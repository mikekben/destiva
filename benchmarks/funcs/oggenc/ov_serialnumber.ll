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

; Function Attrs: nounwind uwtable
define dso_local i64 @ov_serialnumber(ptr noundef %vf, i32 noundef %i) #0 {
entry:
  %retval = alloca i64, align 8
  %vf.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %vf, ptr %vf.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %1 = load ptr, ptr %vf.addr, align 8
  %links = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %links, align 8
  %cmp = icmp sge i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %vf.addr, align 8
  %4 = load ptr, ptr %vf.addr, align 8
  %links1 = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %links1, align 8
  %sub = sub nsw i32 %5, 1
  %call = call i64 @ov_serialnumber(ptr noundef %3, i32 noundef %sub)
  store i64 %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %vf.addr, align 8
  %seekable = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %seekable, align 8
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end5, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, ptr %i.addr, align 4
  %cmp2 = icmp sge i32 %8, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %vf.addr, align 8
  %call4 = call i64 @ov_serialnumber(ptr noundef %9, i32 noundef -1)
  store i64 %call4, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %10 = load i32, ptr %i.addr, align 4
  %cmp6 = icmp slt i32 %10, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %vf.addr, align 8
  %current_serialno = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %11, i32 0, i32 14
  %12 = load i64, ptr %current_serialno, align 8
  store i64 %12, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end5
  %13 = load ptr, ptr %vf.addr, align 8
  %serialnos = getelementptr inbounds nuw %struct.OggVorbis_File, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %serialnos, align 8
  %15 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i64, ptr %14, i64 %idxprom
  %16 = load i64, ptr %arrayidx, align 8
  store i64 %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then7, %if.then3, %if.then
  %17 = load i64, ptr %retval, align 8
  ret i64 %17
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
