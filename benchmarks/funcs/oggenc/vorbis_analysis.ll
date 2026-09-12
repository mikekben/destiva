; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_func_mapping = type { ptr, ptr, ptr, ptr, ptr }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }

@_mapping_P = external dso_local global [1 x ptr], align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_analysis(ptr noundef %vb, ptr noundef %op) #0 {
entry:
  %retval = alloca i32, align 4
  %vb.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %vb, ptr %vb.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  %0 = load ptr, ptr %vb.addr, align 8
  %glue_bits = getelementptr inbounds nuw %struct.vorbis_block, ptr %0, i32 0, i32 16
  store i64 0, ptr %glue_bits, align 8
  %1 = load ptr, ptr %vb.addr, align 8
  %time_bits = getelementptr inbounds nuw %struct.vorbis_block, ptr %1, i32 0, i32 17
  store i64 0, ptr %time_bits, align 8
  %2 = load ptr, ptr %vb.addr, align 8
  %floor_bits = getelementptr inbounds nuw %struct.vorbis_block, ptr %2, i32 0, i32 18
  store i64 0, ptr %floor_bits, align 8
  %3 = load ptr, ptr %vb.addr, align 8
  %res_bits = getelementptr inbounds nuw %struct.vorbis_block, ptr %3, i32 0, i32 19
  store i64 0, ptr %res_bits, align 8
  %4 = load ptr, ptr %vb.addr, align 8
  %opb = getelementptr inbounds nuw %struct.vorbis_block, ptr %4, i32 0, i32 1
  call void @oggpack_reset(ptr noundef %opb)
  %5 = load ptr, ptr @_mapping_P, align 8
  %forward = getelementptr inbounds nuw %struct.vorbis_func_mapping, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %forward, align 8
  %7 = load ptr, ptr %vb.addr, align 8
  %call = call i32 %6(ptr noundef %7)
  store i32 %call, ptr %ret, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %ret, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %op.addr, align 8
  %tobool1 = icmp ne ptr %9, null
  br i1 %tobool1, label %if.then2, label %if.end12

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %vb.addr, align 8
  %call3 = call i32 @vorbis_bitrate_managed(ptr noundef %10)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then2
  store i32 -131, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.then2
  %11 = load ptr, ptr %vb.addr, align 8
  %opb7 = getelementptr inbounds nuw %struct.vorbis_block, ptr %11, i32 0, i32 1
  %call8 = call ptr @oggpack_get_buffer(ptr noundef %opb7)
  %12 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %12, i32 0, i32 0
  store ptr %call8, ptr %packet, align 8
  %13 = load ptr, ptr %vb.addr, align 8
  %opb9 = getelementptr inbounds nuw %struct.vorbis_block, ptr %13, i32 0, i32 1
  %call10 = call i64 @oggpack_bytes(ptr noundef %opb9)
  %14 = load ptr, ptr %op.addr, align 8
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %14, i32 0, i32 1
  store i64 %call10, ptr %bytes, align 8
  %15 = load ptr, ptr %op.addr, align 8
  %b_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %15, i32 0, i32 2
  store i64 0, ptr %b_o_s, align 8
  %16 = load ptr, ptr %vb.addr, align 8
  %eofflag = getelementptr inbounds nuw %struct.vorbis_block, ptr %16, i32 0, i32 7
  %17 = load i32, ptr %eofflag, align 8
  %conv = sext i32 %17 to i64
  %18 = load ptr, ptr %op.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %18, i32 0, i32 3
  store i64 %conv, ptr %e_o_s, align 8
  %19 = load ptr, ptr %vb.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.vorbis_block, ptr %19, i32 0, i32 8
  %20 = load i64, ptr %granulepos, align 8
  %21 = load ptr, ptr %op.addr, align 8
  %granulepos11 = getelementptr inbounds nuw %struct.ogg_packet, ptr %21, i32 0, i32 4
  store i64 %20, ptr %granulepos11, align 8
  %22 = load ptr, ptr %vb.addr, align 8
  %sequence = getelementptr inbounds nuw %struct.vorbis_block, ptr %22, i32 0, i32 9
  %23 = load i64, ptr %sequence, align 8
  %24 = load ptr, ptr %op.addr, align 8
  %packetno = getelementptr inbounds nuw %struct.ogg_packet, ptr %24, i32 0, i32 5
  store i64 %23, ptr %packetno, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end6, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then5, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_bytes(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @vorbis_bitrate_managed(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @oggpack_get_buffer(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
