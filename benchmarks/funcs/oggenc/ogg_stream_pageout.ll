; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_stream_flush(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_stream_pageout(ptr noundef %os, ptr noundef %og) #0 {
entry:
  %retval = alloca i32, align 4
  %os.addr = alloca ptr, align 8
  %og.addr = alloca ptr, align 8
  store ptr %os, ptr %os.addr, align 8
  store ptr %og, ptr %og.addr, align 8
  %0 = load ptr, ptr %os.addr, align 8
  %e_o_s = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %e_o_s, align 8
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %os.addr, align 8
  %lacing_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %2, i32 0, i32 7
  %3 = load i64, ptr %lacing_fill, align 8
  %tobool1 = icmp ne i64 %3, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %os.addr, align 8
  %body_fill = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %4, i32 0, i32 2
  %5 = load i64, ptr %body_fill, align 8
  %6 = load ptr, ptr %os.addr, align 8
  %body_returned = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %6, i32 0, i32 3
  %7 = load i64, ptr %body_returned, align 8
  %sub = sub nsw i64 %5, %7
  %cmp = icmp sgt i64 %sub, 4096
  br i1 %cmp, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %os.addr, align 8
  %lacing_fill3 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %8, i32 0, i32 7
  %9 = load i64, ptr %lacing_fill3, align 8
  %cmp4 = icmp sge i64 %9, 255
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %10 = load ptr, ptr %os.addr, align 8
  %lacing_fill6 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %10, i32 0, i32 7
  %11 = load i64, ptr %lacing_fill6, align 8
  %tobool7 = icmp ne i64 %11, 0
  br i1 %tobool7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %lor.lhs.false5
  %12 = load ptr, ptr %os.addr, align 8
  %b_o_s = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %12, i32 0, i32 13
  %13 = load i32, ptr %b_o_s, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true8, %lor.lhs.false2, %lor.lhs.false, %land.lhs.true
  %14 = load ptr, ptr %os.addr, align 8
  %15 = load ptr, ptr %og.addr, align 8
  %call = call i32 @ogg_stream_flush(ptr noundef %14, ptr noundef %15)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true8, %lor.lhs.false5
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
