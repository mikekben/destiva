; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_commentheader_out(ptr noundef %vc, ptr noundef %op) #2 {
entry:
  %retval = alloca i32, align 4
  %vc.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %opb = alloca %struct.oggpack_buffer, align 8
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @oggpack_writeinit(ptr noundef %opb)
  %0 = load ptr, ptr %vc.addr, align 8
  %call = call i32 @_vorbis_pack_comment(ptr noundef %opb, ptr noundef %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -130, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i64 @oggpack_bytes(ptr noundef %opb)
  %call2 = call noalias ptr @malloc(i64 noundef %call1) #3
  %1 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %1, i32 0, i32 0
  store ptr %call2, ptr %packet, align 8
  %2 = load ptr, ptr %op.addr, align 8
  %packet3 = getelementptr inbounds nuw %struct.ogg_packet, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %packet3, align 8
  %buffer = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %opb, i32 0, i32 2
  %4 = load ptr, ptr %buffer, align 8
  %call4 = call i64 @oggpack_bytes(ptr noundef %opb)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %4, i64 %call4, i1 false)
  %call5 = call i64 @oggpack_bytes(ptr noundef %opb)
  %5 = load ptr, ptr %op.addr, align 8
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %5, i32 0, i32 1
  store i64 %call5, ptr %bytes, align 8
  %6 = load ptr, ptr %op.addr, align 8
  %b_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %6, i32 0, i32 2
  store i64 0, ptr %b_o_s, align 8
  %7 = load ptr, ptr %op.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %7, i32 0, i32 3
  store i64 0, ptr %e_o_s, align 8
  %8 = load ptr, ptr %op.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.ogg_packet, ptr %8, i32 0, i32 4
  store i64 0, ptr %granulepos, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_writeinit(ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @_vorbis_pack_comment(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_bytes(ptr noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
