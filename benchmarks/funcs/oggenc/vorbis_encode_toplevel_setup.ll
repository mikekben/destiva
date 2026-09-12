; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @vorbis_encode_toplevel_setup(ptr noundef %vi, i32 noundef %ch, i64 noundef %rate) #0 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %rate.addr = alloca i64, align 8
  store ptr %vi, ptr %vi.addr, align 8
  store i32 %ch, ptr %ch.addr, align 4
  store i64 %rate, ptr %rate.addr, align 8
  %0 = load ptr, ptr %vi.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %vi.addr, align 8
  %codec_setup = getelementptr inbounds nuw %struct.vorbis_info, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %codec_setup, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %vi.addr, align 8
  %version = getelementptr inbounds nuw %struct.vorbis_info, ptr %3, i32 0, i32 0
  store i32 0, ptr %version, align 8
  %4 = load i32, ptr %ch.addr, align 4
  %5 = load ptr, ptr %vi.addr, align 8
  %channels = getelementptr inbounds nuw %struct.vorbis_info, ptr %5, i32 0, i32 1
  store i32 %4, ptr %channels, align 4
  %6 = load i64, ptr %rate.addr, align 8
  %7 = load ptr, ptr %vi.addr, align 8
  %rate2 = getelementptr inbounds nuw %struct.vorbis_info, ptr %7, i32 0, i32 2
  store i64 %6, ptr %rate2, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 -131, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
