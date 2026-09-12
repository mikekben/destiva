; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.vorbis_dsp_state = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.private_state = type { ptr, [2 x i32], [2 x ptr], [2 x %struct.drft_lookup], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bitrate_manager_state, i64 }
%struct.drft_lookup = type { i32, ptr, ptr }
%struct.bitrate_manager_state = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i32, double, ptr, ptr }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_analysis_headerout(ptr noundef %v, ptr noundef %vc, ptr noundef %op, ptr noundef %op_comm, ptr noundef %op_code) #3 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %vc.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %op_comm.addr = alloca ptr, align 8
  %op_code.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %vi = alloca ptr, align 8
  %opb = alloca %struct.oggpack_buffer, align 8
  %b = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store ptr %op_comm, ptr %op_comm.addr, align 8
  store ptr %op_code, ptr %op_code.addr, align 8
  store i32 -130, ptr %ret, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %vi1 = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %vi1, align 8
  store ptr %1, ptr %vi, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %backend_state = getelementptr inbounds nuw %struct.vorbis_dsp_state, ptr %2, i32 0, i32 19
  %3 = load ptr, ptr %backend_state, align 8
  store ptr %3, ptr %b, align 8
  %4 = load ptr, ptr %b, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -129, ptr %ret, align 4
  br label %err_out

if.end:                                           ; preds = %entry
  call void @oggpack_writeinit(ptr noundef %opb)
  %5 = load ptr, ptr %vi, align 8
  %call = call i32 @_vorbis_pack_info(ptr noundef %opb, ptr noundef %5)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %err_out

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %b, align 8
  %header = getelementptr inbounds nuw %struct.private_state, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %header, align 8
  %tobool5 = icmp ne ptr %7, null
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %8 = load ptr, ptr %b, align 8
  %header7 = getelementptr inbounds nuw %struct.private_state, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %header7, align 8
  call void @free(ptr noundef %9) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %call9 = call i64 @oggpack_bytes(ptr noundef %opb)
  %call10 = call noalias ptr @malloc(i64 noundef %call9) #6
  %10 = load ptr, ptr %b, align 8
  %header11 = getelementptr inbounds nuw %struct.private_state, ptr %10, i32 0, i32 9
  store ptr %call10, ptr %header11, align 8
  %11 = load ptr, ptr %b, align 8
  %header12 = getelementptr inbounds nuw %struct.private_state, ptr %11, i32 0, i32 9
  %12 = load ptr, ptr %header12, align 8
  %buffer = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %opb, i32 0, i32 2
  %13 = load ptr, ptr %buffer, align 8
  %call13 = call i64 @oggpack_bytes(ptr noundef %opb)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %call13, i1 false)
  %14 = load ptr, ptr %b, align 8
  %header14 = getelementptr inbounds nuw %struct.private_state, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %header14, align 8
  %16 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %16, i32 0, i32 0
  store ptr %15, ptr %packet, align 8
  %call15 = call i64 @oggpack_bytes(ptr noundef %opb)
  %17 = load ptr, ptr %op.addr, align 8
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %17, i32 0, i32 1
  store i64 %call15, ptr %bytes, align 8
  %18 = load ptr, ptr %op.addr, align 8
  %b_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %18, i32 0, i32 2
  store i64 1, ptr %b_o_s, align 8
  %19 = load ptr, ptr %op.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %19, i32 0, i32 3
  store i64 0, ptr %e_o_s, align 8
  %20 = load ptr, ptr %op.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.ogg_packet, ptr %20, i32 0, i32 4
  store i64 0, ptr %granulepos, align 8
  call void @oggpack_reset(ptr noundef %opb)
  %21 = load ptr, ptr %vc.addr, align 8
  %call16 = call i32 @_vorbis_pack_comment(ptr noundef %opb, ptr noundef %21)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end8
  br label %err_out

if.end19:                                         ; preds = %if.end8
  %22 = load ptr, ptr %b, align 8
  %header1 = getelementptr inbounds nuw %struct.private_state, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %header1, align 8
  %tobool20 = icmp ne ptr %23, null
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %24 = load ptr, ptr %b, align 8
  %header122 = getelementptr inbounds nuw %struct.private_state, ptr %24, i32 0, i32 10
  %25 = load ptr, ptr %header122, align 8
  call void @free(ptr noundef %25) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  %call24 = call i64 @oggpack_bytes(ptr noundef %opb)
  %call25 = call noalias ptr @malloc(i64 noundef %call24) #6
  %26 = load ptr, ptr %b, align 8
  %header126 = getelementptr inbounds nuw %struct.private_state, ptr %26, i32 0, i32 10
  store ptr %call25, ptr %header126, align 8
  %27 = load ptr, ptr %b, align 8
  %header127 = getelementptr inbounds nuw %struct.private_state, ptr %27, i32 0, i32 10
  %28 = load ptr, ptr %header127, align 8
  %buffer28 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %opb, i32 0, i32 2
  %29 = load ptr, ptr %buffer28, align 8
  %call29 = call i64 @oggpack_bytes(ptr noundef %opb)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %29, i64 %call29, i1 false)
  %30 = load ptr, ptr %b, align 8
  %header130 = getelementptr inbounds nuw %struct.private_state, ptr %30, i32 0, i32 10
  %31 = load ptr, ptr %header130, align 8
  %32 = load ptr, ptr %op_comm.addr, align 8
  %packet31 = getelementptr inbounds nuw %struct.ogg_packet, ptr %32, i32 0, i32 0
  store ptr %31, ptr %packet31, align 8
  %call32 = call i64 @oggpack_bytes(ptr noundef %opb)
  %33 = load ptr, ptr %op_comm.addr, align 8
  %bytes33 = getelementptr inbounds nuw %struct.ogg_packet, ptr %33, i32 0, i32 1
  store i64 %call32, ptr %bytes33, align 8
  %34 = load ptr, ptr %op_comm.addr, align 8
  %b_o_s34 = getelementptr inbounds nuw %struct.ogg_packet, ptr %34, i32 0, i32 2
  store i64 0, ptr %b_o_s34, align 8
  %35 = load ptr, ptr %op_comm.addr, align 8
  %e_o_s35 = getelementptr inbounds nuw %struct.ogg_packet, ptr %35, i32 0, i32 3
  store i64 0, ptr %e_o_s35, align 8
  %36 = load ptr, ptr %op_comm.addr, align 8
  %granulepos36 = getelementptr inbounds nuw %struct.ogg_packet, ptr %36, i32 0, i32 4
  store i64 0, ptr %granulepos36, align 8
  call void @oggpack_reset(ptr noundef %opb)
  %37 = load ptr, ptr %vi, align 8
  %call37 = call i32 @_vorbis_pack_books(ptr noundef %opb, ptr noundef %37)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end23
  br label %err_out

if.end40:                                         ; preds = %if.end23
  %38 = load ptr, ptr %b, align 8
  %header2 = getelementptr inbounds nuw %struct.private_state, ptr %38, i32 0, i32 11
  %39 = load ptr, ptr %header2, align 8
  %tobool41 = icmp ne ptr %39, null
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end40
  %40 = load ptr, ptr %b, align 8
  %header243 = getelementptr inbounds nuw %struct.private_state, ptr %40, i32 0, i32 11
  %41 = load ptr, ptr %header243, align 8
  call void @free(ptr noundef %41) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40
  %call45 = call i64 @oggpack_bytes(ptr noundef %opb)
  %call46 = call noalias ptr @malloc(i64 noundef %call45) #6
  %42 = load ptr, ptr %b, align 8
  %header247 = getelementptr inbounds nuw %struct.private_state, ptr %42, i32 0, i32 11
  store ptr %call46, ptr %header247, align 8
  %43 = load ptr, ptr %b, align 8
  %header248 = getelementptr inbounds nuw %struct.private_state, ptr %43, i32 0, i32 11
  %44 = load ptr, ptr %header248, align 8
  %buffer49 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %opb, i32 0, i32 2
  %45 = load ptr, ptr %buffer49, align 8
  %call50 = call i64 @oggpack_bytes(ptr noundef %opb)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %45, i64 %call50, i1 false)
  %46 = load ptr, ptr %b, align 8
  %header251 = getelementptr inbounds nuw %struct.private_state, ptr %46, i32 0, i32 11
  %47 = load ptr, ptr %header251, align 8
  %48 = load ptr, ptr %op_code.addr, align 8
  %packet52 = getelementptr inbounds nuw %struct.ogg_packet, ptr %48, i32 0, i32 0
  store ptr %47, ptr %packet52, align 8
  %call53 = call i64 @oggpack_bytes(ptr noundef %opb)
  %49 = load ptr, ptr %op_code.addr, align 8
  %bytes54 = getelementptr inbounds nuw %struct.ogg_packet, ptr %49, i32 0, i32 1
  store i64 %call53, ptr %bytes54, align 8
  %50 = load ptr, ptr %op_code.addr, align 8
  %b_o_s55 = getelementptr inbounds nuw %struct.ogg_packet, ptr %50, i32 0, i32 2
  store i64 0, ptr %b_o_s55, align 8
  %51 = load ptr, ptr %op_code.addr, align 8
  %e_o_s56 = getelementptr inbounds nuw %struct.ogg_packet, ptr %51, i32 0, i32 3
  store i64 0, ptr %e_o_s56, align 8
  %52 = load ptr, ptr %op_code.addr, align 8
  %granulepos57 = getelementptr inbounds nuw %struct.ogg_packet, ptr %52, i32 0, i32 4
  store i64 0, ptr %granulepos57, align 8
  call void @oggpack_writeclear(ptr noundef %opb)
  store i32 0, ptr %retval, align 4
  br label %return

err_out:                                          ; preds = %if.then39, %if.then18, %if.then3, %if.then
  call void @oggpack_writeclear(ptr noundef %opb)
  %53 = load ptr, ptr %op.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %53, i8 0, i64 48, i1 false)
  %54 = load ptr, ptr %op_comm.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 48, i1 false)
  %55 = load ptr, ptr %op_code.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %55, i8 0, i64 48, i1 false)
  %56 = load ptr, ptr %b, align 8
  %header58 = getelementptr inbounds nuw %struct.private_state, ptr %56, i32 0, i32 9
  %57 = load ptr, ptr %header58, align 8
  %tobool59 = icmp ne ptr %57, null
  br i1 %tobool59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %err_out
  %58 = load ptr, ptr %b, align 8
  %header61 = getelementptr inbounds nuw %struct.private_state, ptr %58, i32 0, i32 9
  %59 = load ptr, ptr %header61, align 8
  call void @free(ptr noundef %59) #5
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %err_out
  %60 = load ptr, ptr %b, align 8
  %header163 = getelementptr inbounds nuw %struct.private_state, ptr %60, i32 0, i32 10
  %61 = load ptr, ptr %header163, align 8
  %tobool64 = icmp ne ptr %61, null
  br i1 %tobool64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end62
  %62 = load ptr, ptr %b, align 8
  %header166 = getelementptr inbounds nuw %struct.private_state, ptr %62, i32 0, i32 10
  %63 = load ptr, ptr %header166, align 8
  call void @free(ptr noundef %63) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62
  %64 = load ptr, ptr %b, align 8
  %header268 = getelementptr inbounds nuw %struct.private_state, ptr %64, i32 0, i32 11
  %65 = load ptr, ptr %header268, align 8
  %tobool69 = icmp ne ptr %65, null
  br i1 %tobool69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end67
  %66 = load ptr, ptr %b, align 8
  %header271 = getelementptr inbounds nuw %struct.private_state, ptr %66, i32 0, i32 11
  %67 = load ptr, ptr %header271, align 8
  call void @free(ptr noundef %67) #5
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end67
  %68 = load ptr, ptr %b, align 8
  %header73 = getelementptr inbounds nuw %struct.private_state, ptr %68, i32 0, i32 9
  store ptr null, ptr %header73, align 8
  %69 = load ptr, ptr %b, align 8
  %header174 = getelementptr inbounds nuw %struct.private_state, ptr %69, i32 0, i32 10
  store ptr null, ptr %header174, align 8
  %70 = load ptr, ptr %b, align 8
  %header275 = getelementptr inbounds nuw %struct.private_state, ptr %70, i32 0, i32 11
  store ptr null, ptr %header275, align 8
  %71 = load i32, ptr %ret, align 4
  store i32 %71, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %if.end44
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_writeinit(ptr noundef) #3

; Function Attrs: nounwind uwtable
declare hidden i32 @_vorbis_pack_comment(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_bytes(ptr noundef) #3

; Function Attrs: nounwind uwtable
declare hidden i32 @_vorbis_pack_info(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_reset(ptr noundef) #3

; Function Attrs: nounwind uwtable
declare hidden i32 @_vorbis_pack_books(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_writeclear(ptr noundef) #3

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
