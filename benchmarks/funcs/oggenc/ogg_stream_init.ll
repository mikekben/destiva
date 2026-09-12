; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_stream_state = type { ptr, i64, i64, i64, ptr, ptr, i64, i64, i64, i64, [282 x i8], i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_stream_init(ptr noundef %os, i32 noundef %serialno) #1 {
entry:
  %retval = alloca i32, align 4
  %os.addr = alloca ptr, align 8
  %serialno.addr = alloca i32, align 4
  store ptr %os, ptr %os.addr, align 8
  store i32 %serialno, ptr %serialno.addr, align 4
  %0 = load ptr, ptr %os.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %os.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 408, i1 false)
  %2 = load ptr, ptr %os.addr, align 8
  %body_storage = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %2, i32 0, i32 1
  store i64 16384, ptr %body_storage, align 8
  %3 = load ptr, ptr %os.addr, align 8
  %body_storage1 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %3, i32 0, i32 1
  %4 = load i64, ptr %body_storage1, align 8
  %mul = mul i64 %4, 1
  %call = call noalias ptr @malloc(i64 noundef %mul) #3
  %5 = load ptr, ptr %os.addr, align 8
  %body_data = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %5, i32 0, i32 0
  store ptr %call, ptr %body_data, align 8
  %6 = load ptr, ptr %os.addr, align 8
  %lacing_storage = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %6, i32 0, i32 6
  store i64 1024, ptr %lacing_storage, align 8
  %7 = load ptr, ptr %os.addr, align 8
  %lacing_storage2 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %7, i32 0, i32 6
  %8 = load i64, ptr %lacing_storage2, align 8
  %mul3 = mul i64 %8, 4
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #3
  %9 = load ptr, ptr %os.addr, align 8
  %lacing_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %9, i32 0, i32 4
  store ptr %call4, ptr %lacing_vals, align 8
  %10 = load ptr, ptr %os.addr, align 8
  %lacing_storage5 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %10, i32 0, i32 6
  %11 = load i64, ptr %lacing_storage5, align 8
  %mul6 = mul i64 %11, 8
  %call7 = call noalias ptr @malloc(i64 noundef %mul6) #3
  %12 = load ptr, ptr %os.addr, align 8
  %granule_vals = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %12, i32 0, i32 5
  store ptr %call7, ptr %granule_vals, align 8
  %13 = load i32, ptr %serialno.addr, align 4
  %conv = sext i32 %13 to i64
  %14 = load ptr, ptr %os.addr, align 8
  %serialno8 = getelementptr inbounds nuw %struct.ogg_stream_state, ptr %14, i32 0, i32 14
  store i64 %conv, ptr %serialno8, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
