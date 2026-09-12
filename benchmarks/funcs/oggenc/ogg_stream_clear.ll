; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_stream_clear(ptr noundef %os) #1 {
entry:
  %os.addr = alloca ptr, align 8
  store ptr %os, ptr %os.addr, align 8
  %0 = load ptr, ptr %os.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %os.addr, align 8
  %body_data = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %body_data, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %os.addr, align 8
  %body_data3 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %body_data3, align 8
  call void @free(ptr noundef %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %os.addr, align 8
  %lacing_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %lacing_vals, align 8
  %tobool4 = icmp ne ptr %6, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %os.addr, align 8
  %lacing_vals6 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %lacing_vals6, align 8
  call void @free(ptr noundef %8) #3
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %9 = load ptr, ptr %os.addr, align 8
  %granule_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %granule_vals, align 8
  %tobool8 = icmp ne ptr %10, null
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  %11 = load ptr, ptr %os.addr, align 8
  %granule_vals10 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %granule_vals10, align 8
  call void @free(ptr noundef %12) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7
  %13 = load ptr, ptr %os.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 408, i1 false)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
