; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }
%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_stream_packetin(ptr noundef %os, ptr noundef %op) #1 {
entry:
  %os.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %lacing_vals = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %os, ptr %os.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  %0 = load ptr, ptr %op.addr, align 8
  %bytes = getelementptr inbounds nuw %struct.ogg_packet, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %bytes, align 8
  %div = sdiv i64 %1, 255
  %add = add nsw i64 %div, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, ptr %lacing_vals, align 4
  %2 = load ptr, ptr %os.addr, align 8
  %body_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %2, i32 0, i32 3
  %3 = load i64, ptr %body_returned, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %os.addr, align 8
  %body_returned1 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %4, i32 0, i32 3
  %5 = load i64, ptr %body_returned1, align 8
  %6 = load ptr, ptr %os.addr, align 8
  %body_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %6, i32 0, i32 2
  %7 = load i64, ptr %body_fill, align 8
  %sub = sub nsw i64 %7, %5
  store i64 %sub, ptr %body_fill, align 8
  %8 = load ptr, ptr %os.addr, align 8
  %body_fill2 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %8, i32 0, i32 2
  %9 = load i64, ptr %body_fill2, align 8
  %tobool3 = icmp ne i64 %9, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %10 = load ptr, ptr %os.addr, align 8
  %body_data = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %body_data, align 8
  %12 = load ptr, ptr %os.addr, align 8
  %body_data5 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %body_data5, align 8
  %14 = load ptr, ptr %os.addr, align 8
  %body_returned6 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %14, i32 0, i32 3
  %15 = load i64, ptr %body_returned6, align 8
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %15
  %16 = load ptr, ptr %os.addr, align 8
  %body_fill7 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %16, i32 0, i32 2
  %17 = load i64, ptr %body_fill7, align 8
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %11, ptr align 1 %add.ptr, i64 %17, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %18 = load ptr, ptr %os.addr, align 8
  %body_returned8 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %18, i32 0, i32 3
  store i64 0, ptr %body_returned8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %19 = load ptr, ptr %os.addr, align 8
  %20 = load ptr, ptr %op.addr, align 8
  %bytes10 = getelementptr inbounds nuw %struct.ogg_packet, ptr %20, i32 0, i32 1
  %21 = load i64, ptr %bytes10, align 8
  %conv11 = trunc i64 %21 to i32
  call void @_os_body_expand(ptr noundef %19, i32 noundef %conv11)
  %22 = load ptr, ptr %os.addr, align 8
  %23 = load i32, ptr %lacing_vals, align 4
  call void @_os_lacing_expand(ptr noundef %22, i32 noundef %23)
  %24 = load ptr, ptr %os.addr, align 8
  %body_data12 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %body_data12, align 8
  %26 = load ptr, ptr %os.addr, align 8
  %body_fill13 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %26, i32 0, i32 2
  %27 = load i64, ptr %body_fill13, align 8
  %add.ptr14 = getelementptr inbounds i8, ptr %25, i64 %27
  %28 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %packet, align 8
  %30 = load ptr, ptr %op.addr, align 8
  %bytes15 = getelementptr inbounds nuw %struct.ogg_packet, ptr %30, i32 0, i32 1
  %31 = load i64, ptr %bytes15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr14, ptr align 1 %29, i64 %31, i1 false)
  %32 = load ptr, ptr %op.addr, align 8
  %bytes16 = getelementptr inbounds nuw %struct.ogg_packet, ptr %32, i32 0, i32 1
  %33 = load i64, ptr %bytes16, align 8
  %34 = load ptr, ptr %os.addr, align 8
  %body_fill17 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %34, i32 0, i32 2
  %35 = load i64, ptr %body_fill17, align 8
  %add18 = add nsw i64 %35, %33
  store i64 %add18, ptr %body_fill17, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %36 = load i32, ptr %i, align 4
  %37 = load i32, ptr %lacing_vals, align 4
  %sub19 = sub nsw i32 %37, 1
  %cmp = icmp slt i32 %36, %sub19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %os.addr, align 8
  %lacing_vals21 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %lacing_vals21, align 8
  %40 = load ptr, ptr %os.addr, align 8
  %lacing_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %40, i32 0, i32 7
  %41 = load i64, ptr %lacing_fill, align 8
  %42 = load i32, ptr %i, align 4
  %conv22 = sext i32 %42 to i64
  %add23 = add nsw i64 %41, %conv22
  %arrayidx = getelementptr inbounds i32, ptr %39, i64 %add23
  store i32 255, ptr %arrayidx, align 4
  %43 = load ptr, ptr %os.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %43, i32 0, i32 17
  %44 = load i64, ptr %granulepos, align 8
  %45 = load ptr, ptr %os.addr, align 8
  %granule_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %45, i32 0, i32 5
  %46 = load ptr, ptr %granule_vals, align 8
  %47 = load ptr, ptr %os.addr, align 8
  %lacing_fill24 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %47, i32 0, i32 7
  %48 = load i64, ptr %lacing_fill24, align 8
  %49 = load i32, ptr %i, align 4
  %conv25 = sext i32 %49 to i64
  %add26 = add nsw i64 %48, %conv25
  %arrayidx27 = getelementptr inbounds i64, ptr %46, i64 %add26
  store i64 %44, ptr %arrayidx27, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, ptr %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %51 = load ptr, ptr %op.addr, align 8
  %bytes28 = getelementptr inbounds nuw %struct.ogg_packet, ptr %51, i32 0, i32 1
  %52 = load i64, ptr %bytes28, align 8
  %rem = srem i64 %52, 255
  %conv29 = trunc i64 %rem to i32
  %53 = load ptr, ptr %os.addr, align 8
  %lacing_vals30 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %lacing_vals30, align 8
  %55 = load ptr, ptr %os.addr, align 8
  %lacing_fill31 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %55, i32 0, i32 7
  %56 = load i64, ptr %lacing_fill31, align 8
  %57 = load i32, ptr %i, align 4
  %conv32 = sext i32 %57 to i64
  %add33 = add nsw i64 %56, %conv32
  %arrayidx34 = getelementptr inbounds i32, ptr %54, i64 %add33
  store i32 %conv29, ptr %arrayidx34, align 4
  %58 = load ptr, ptr %op.addr, align 8
  %granulepos35 = getelementptr inbounds nuw %struct.ogg_packet, ptr %58, i32 0, i32 4
  %59 = load i64, ptr %granulepos35, align 8
  %60 = load ptr, ptr %os.addr, align 8
  %granule_vals36 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %60, i32 0, i32 5
  %61 = load ptr, ptr %granule_vals36, align 8
  %62 = load ptr, ptr %os.addr, align 8
  %lacing_fill37 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %62, i32 0, i32 7
  %63 = load i64, ptr %lacing_fill37, align 8
  %64 = load i32, ptr %i, align 4
  %conv38 = sext i32 %64 to i64
  %add39 = add nsw i64 %63, %conv38
  %arrayidx40 = getelementptr inbounds i64, ptr %61, i64 %add39
  store i64 %59, ptr %arrayidx40, align 8
  %65 = load ptr, ptr %os.addr, align 8
  %granulepos41 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %65, i32 0, i32 17
  store i64 %59, ptr %granulepos41, align 8
  %66 = load ptr, ptr %os.addr, align 8
  %lacing_vals42 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %lacing_vals42, align 8
  %68 = load ptr, ptr %os.addr, align 8
  %lacing_fill43 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %68, i32 0, i32 7
  %69 = load i64, ptr %lacing_fill43, align 8
  %arrayidx44 = getelementptr inbounds i32, ptr %67, i64 %69
  %70 = load i32, ptr %arrayidx44, align 4
  %or = or i32 %70, 256
  store i32 %or, ptr %arrayidx44, align 4
  %71 = load i32, ptr %lacing_vals, align 4
  %conv45 = sext i32 %71 to i64
  %72 = load ptr, ptr %os.addr, align 8
  %lacing_fill46 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %72, i32 0, i32 7
  %73 = load i64, ptr %lacing_fill46, align 8
  %add47 = add nsw i64 %73, %conv45
  store i64 %add47, ptr %lacing_fill46, align 8
  %74 = load ptr, ptr %os.addr, align 8
  %packetno = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %74, i32 0, i32 16
  %75 = load i64, ptr %packetno, align 8
  %inc48 = add nsw i64 %75, 1
  store i64 %inc48, ptr %packetno, align 8
  %76 = load ptr, ptr %op.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %76, i32 0, i32 3
  %77 = load i64, ptr %e_o_s, align 8
  %tobool49 = icmp ne i64 %77, 0
  br i1 %tobool49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.end
  %78 = load ptr, ptr %os.addr, align 8
  %e_o_s51 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %78, i32 0, i32 12
  store i32 1, ptr %e_o_s51, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.end
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden void @_os_body_expand(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @_os_lacing_expand(ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
