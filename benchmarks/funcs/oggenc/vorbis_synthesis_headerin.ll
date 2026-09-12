; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.vorbis_info = type { i32, i32, i64, i64, i64, i64, i64, ptr }
%struct.vorbis_comment = type { ptr, ptr, i32, ptr }

@.str.148 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @vorbis_synthesis_headerin(ptr noundef %vi, ptr noundef %vc, ptr noundef %op) #2 {
entry:
  %retval = alloca i32, align 4
  %vi.addr = alloca ptr, align 8
  %vc.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %opb = alloca %struct.oggpack_buffer, align 8
  %buffer = alloca [6 x i8], align 1
  %packtype = alloca i32, align 4
  store ptr %vi, ptr %vi.addr, align 8
  store ptr %vc, ptr %vc.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  %0 = load ptr, ptr %op.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end30

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %packet, align 8
  %3 = load ptr, ptr %op.addr, align 8
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %bytes, align 8
  %conv = trunc i64 %4 to i32
  call void @oggpack_readinit(ptr noundef %opb, ptr noundef %2, i32 noundef %conv)
  %call = call i64 @oggpack_read(ptr noundef %opb, i32 noundef 8)
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, ptr %packtype, align 4
  %arraydecay = getelementptr inbounds [6 x i8], ptr %buffer, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 6, i1 false)
  %arraydecay2 = getelementptr inbounds [6 x i8], ptr %buffer, i64 0, i64 0
  call void @_v_readstring(ptr noundef %opb, ptr noundef %arraydecay2, i32 noundef 6)
  %arraydecay3 = getelementptr inbounds [6 x i8], ptr %buffer, i64 0, i64 0
  %call4 = call i32 @memcmp(ptr noundef %arraydecay3, ptr noundef @.str.148, i64 noundef 6) #3
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 -132, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i32, ptr %packtype, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb14
    i32 5, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %op.addr, align 8
  %b_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %b_o_s, align 8
  %tobool7 = icmp ne i64 %7, 0
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %sw.bb
  store i32 -133, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %sw.bb
  %8 = load ptr, ptr %vi.addr, align 8
  %rate = getelementptr inbounds nuw %struct.vorbis_info, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %rate, align 8
  %cmp = icmp ne i64 %9, 0
  br i1 %cmp, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i32 -133, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end9
  %10 = load ptr, ptr %vi.addr, align 8
  %call13 = call i32 @_vorbis_unpack_info(ptr noundef %10, ptr noundef %opb)
  store i32 %call13, ptr %retval, align 4
  br label %return

sw.bb14:                                          ; preds = %if.end
  %11 = load ptr, ptr %vi.addr, align 8
  %rate15 = getelementptr inbounds nuw %struct.vorbis_info, ptr %11, i32 0, i32 2
  %12 = load i64, ptr %rate15, align 8
  %cmp16 = icmp eq i64 %12, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %sw.bb14
  store i32 -133, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %sw.bb14
  %13 = load ptr, ptr %vc.addr, align 8
  %call20 = call i32 @_vorbis_unpack_comment(ptr noundef %13, ptr noundef %opb)
  store i32 %call20, ptr %retval, align 4
  br label %return

sw.bb21:                                          ; preds = %if.end
  %14 = load ptr, ptr %vi.addr, align 8
  %rate22 = getelementptr inbounds nuw %struct.vorbis_info, ptr %14, i32 0, i32 2
  %15 = load i64, ptr %rate22, align 8
  %cmp23 = icmp eq i64 %15, 0
  br i1 %cmp23, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb21
  %16 = load ptr, ptr %vc.addr, align 8
  %vendor = getelementptr inbounds nuw %struct.vorbis_comment, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %vendor, align 8
  %cmp25 = icmp eq ptr %17, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %lor.lhs.false, %sw.bb21
  store i32 -133, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %lor.lhs.false
  %18 = load ptr, ptr %vi.addr, align 8
  %call29 = call i32 @_vorbis_unpack_books(ptr noundef %18, ptr noundef %opb)
  store i32 %call29, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 -133, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %entry
  store i32 -133, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %sw.default, %if.end28, %if.then27, %if.end19, %if.then18, %if.end12, %if.then11, %if.then8, %if.then6
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare dso_local void @oggpack_readinit(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare dso_local i64 @oggpack_read(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @_v_readstring(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @_vorbis_unpack_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @_vorbis_unpack_comment(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @_vorbis_unpack_books(ptr noundef, ptr noundef) #2

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
