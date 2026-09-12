; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }
%struct.ogg_packet = type { ptr, i64, i64, i64, i64, i64 }

; Function Attrs: nounwind uwtable
define hidden i32 @_packetout(ptr noundef %os, ptr noundef %op, i32 noundef %adv) #0 {
entry:
  %retval = alloca i32, align 4
  %os.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %adv.addr = alloca i32, align 4
  %ptr = alloca i32, align 4
  %size = alloca i32, align 4
  %bytes = alloca i32, align 4
  %eos = alloca i32, align 4
  %bos = alloca i32, align 4
  %val = alloca i32, align 4
  store ptr %os, ptr %os.addr, align 8
  store ptr %op, ptr %op.addr, align 8
  store i32 %adv, ptr %adv.addr, align 4
  %0 = load ptr, ptr %os.addr, align 8
  %lacing_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %0, i32 0, i32 9
  %1 = load i64, ptr %lacing_returned, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %ptr, align 4
  %2 = load ptr, ptr %os.addr, align 8
  %lacing_packet = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %2, i32 0, i32 8
  %3 = load i64, ptr %lacing_packet, align 8
  %4 = load i32, ptr %ptr, align 4
  %conv1 = sext i32 %4 to i64
  %cmp = icmp sle i64 %3, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %os.addr, align 8
  %lacing_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %lacing_vals, align 8
  %7 = load i32, ptr %ptr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %and = and i32 %8, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %os.addr, align 8
  %lacing_returned4 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %9, i32 0, i32 9
  %10 = load i64, ptr %lacing_returned4, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %lacing_returned4, align 8
  %11 = load ptr, ptr %os.addr, align 8
  %packetno = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %11, i32 0, i32 16
  %12 = load i64, ptr %packetno, align 8
  %inc5 = add nsw i64 %12, 1
  store i64 %inc5, ptr %packetno, align 8
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %13 = load ptr, ptr %op.addr, align 8
  %tobool7 = icmp ne ptr %13, null
  br i1 %tobool7, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6
  %14 = load i32, ptr %adv.addr, align 4
  %tobool8 = icmp ne i32 %14, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %land.lhs.true, %if.end6
  %15 = load ptr, ptr %os.addr, align 8
  %lacing_vals11 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %lacing_vals11, align 8
  %17 = load i32, ptr %ptr, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %16, i64 %idxprom12
  %18 = load i32, ptr %arrayidx13, align 4
  %and14 = and i32 %18, 255
  store i32 %and14, ptr %size, align 4
  %19 = load i32, ptr %size, align 4
  store i32 %19, ptr %bytes, align 4
  %20 = load ptr, ptr %os.addr, align 8
  %lacing_vals15 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %lacing_vals15, align 8
  %22 = load i32, ptr %ptr, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %21, i64 %idxprom16
  %23 = load i32, ptr %arrayidx17, align 4
  %and18 = and i32 %23, 512
  store i32 %and18, ptr %eos, align 4
  %24 = load ptr, ptr %os.addr, align 8
  %lacing_vals19 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %lacing_vals19, align 8
  %26 = load i32, ptr %ptr, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %25, i64 %idxprom20
  %27 = load i32, ptr %arrayidx21, align 4
  %and22 = and i32 %27, 256
  store i32 %and22, ptr %bos, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.end10
  %28 = load i32, ptr %size, align 4
  %cmp23 = icmp eq i32 %28, 255
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load ptr, ptr %os.addr, align 8
  %lacing_vals25 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %lacing_vals25, align 8
  %31 = load i32, ptr %ptr, align 4
  %inc26 = add nsw i32 %31, 1
  store i32 %inc26, ptr %ptr, align 4
  %idxprom27 = sext i32 %inc26 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %30, i64 %idxprom27
  %32 = load i32, ptr %arrayidx28, align 4
  store i32 %32, ptr %val, align 4
  %33 = load i32, ptr %val, align 4
  %and29 = and i32 %33, 255
  store i32 %and29, ptr %size, align 4
  %34 = load i32, ptr %val, align 4
  %and30 = and i32 %34, 512
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %while.body
  store i32 512, ptr %eos, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %while.body
  %35 = load i32, ptr %size, align 4
  %36 = load i32, ptr %bytes, align 4
  %add = add nsw i32 %36, %35
  store i32 %add, ptr %bytes, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %37 = load ptr, ptr %op.addr, align 8
  %tobool34 = icmp ne ptr %37, null
  br i1 %tobool34, label %if.then35, label %if.end44

if.then35:                                        ; preds = %while.end
  %38 = load i32, ptr %eos, align 4
  %conv36 = sext i32 %38 to i64
  %39 = load ptr, ptr %op.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %39, i32 0, i32 3
  store i64 %conv36, ptr %e_o_s, align 8
  %40 = load i32, ptr %bos, align 4
  %conv37 = sext i32 %40 to i64
  %41 = load ptr, ptr %op.addr, align 8
  %b_o_s = getelementptr inbounds nuw %struct.ogg_packet, ptr %41, i32 0, i32 2
  store i64 %conv37, ptr %b_o_s, align 8
  %42 = load ptr, ptr %os.addr, align 8
  %body_data = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %body_data, align 8
  %44 = load ptr, ptr %os.addr, align 8
  %body_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %44, i32 0, i32 3
  %45 = load i64, ptr %body_returned, align 8
  %add.ptr = getelementptr inbounds i8, ptr %43, i64 %45
  %46 = load ptr, ptr %op.addr, align 8
  %packet = getelementptr inbounds nuw %struct.ogg_packet, ptr %46, i32 0, i32 0
  store ptr %add.ptr, ptr %packet, align 8
  %47 = load ptr, ptr %os.addr, align 8
  %packetno38 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %47, i32 0, i32 16
  %48 = load i64, ptr %packetno38, align 8
  %49 = load ptr, ptr %op.addr, align 8
  %packetno39 = getelementptr inbounds nuw %struct.ogg_packet, ptr %49, i32 0, i32 5
  store i64 %48, ptr %packetno39, align 8
  %50 = load ptr, ptr %os.addr, align 8
  %granule_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %50, i32 0, i32 5
  %51 = load ptr, ptr %granule_vals, align 8
  %52 = load i32, ptr %ptr, align 4
  %idxprom40 = sext i32 %52 to i64
  %arrayidx41 = getelementptr inbounds i64, ptr %51, i64 %idxprom40
  %53 = load i64, ptr %arrayidx41, align 8
  %54 = load ptr, ptr %op.addr, align 8
  %granulepos = getelementptr inbounds nuw %struct.ogg_packet, ptr %54, i32 0, i32 4
  store i64 %53, ptr %granulepos, align 8
  %55 = load i32, ptr %bytes, align 4
  %conv42 = sext i32 %55 to i64
  %56 = load ptr, ptr %op.addr, align 8
  %bytes43 = getelementptr inbounds nuw %struct.ogg_packet, ptr %56, i32 0, i32 1
  store i64 %conv42, ptr %bytes43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then35, %while.end
  %57 = load i32, ptr %adv.addr, align 4
  %tobool45 = icmp ne i32 %57, 0
  br i1 %tobool45, label %if.then46, label %if.end55

if.then46:                                        ; preds = %if.end44
  %58 = load i32, ptr %bytes, align 4
  %conv47 = sext i32 %58 to i64
  %59 = load ptr, ptr %os.addr, align 8
  %body_returned48 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %59, i32 0, i32 3
  %60 = load i64, ptr %body_returned48, align 8
  %add49 = add nsw i64 %60, %conv47
  store i64 %add49, ptr %body_returned48, align 8
  %61 = load i32, ptr %ptr, align 4
  %add50 = add nsw i32 %61, 1
  %conv51 = sext i32 %add50 to i64
  %62 = load ptr, ptr %os.addr, align 8
  %lacing_returned52 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %62, i32 0, i32 9
  store i64 %conv51, ptr %lacing_returned52, align 8
  %63 = load ptr, ptr %os.addr, align 8
  %packetno53 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %63, i32 0, i32 16
  %64 = load i64, ptr %packetno53, align 8
  %inc54 = add nsw i64 %64, 1
  store i64 %inc54, ptr %packetno53, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.end44
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end55, %if.then9, %if.then3, %if.then
  %65 = load i32, ptr %retval, align 4
  ret i32 %65
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
