; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vorbis_block = type { ptr, %struct.oggpack_buffer, i64, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, i64, i64, i64, ptr, i64, i64, i64, i64, ptr }
%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }
%struct.alloc_chain = type { ptr, ptr }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local void @_vorbis_block_ripcord(ptr noundef %vb) #3 {
entry:
  %vb.addr = alloca ptr, align 8
  %reap = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %vb, ptr %vb.addr, align 8
  %0 = load ptr, ptr %vb.addr, align 8
  %reap1 = getelementptr inbounds nuw %struct.vorbis_block, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %reap1, align 8
  store ptr %1, ptr %reap, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %reap, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %reap, align 8
  %next2 = getelementptr inbounds nuw %struct.alloc_chain, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next2, align 8
  store ptr %4, ptr %next, align 8
  %5 = load ptr, ptr %reap, align 8
  %ptr = getelementptr inbounds nuw %struct.alloc_chain, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %ptr, align 8
  call void @free(ptr noundef %6) #4
  %7 = load ptr, ptr %reap, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 16, i1 false)
  %8 = load ptr, ptr %reap, align 8
  call void @free(ptr noundef %8) #4
  %9 = load ptr, ptr %next, align 8
  store ptr %9, ptr %reap, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %vb.addr, align 8
  %totaluse = getelementptr inbounds nuw %struct.vorbis_block, ptr %10, i32 0, i32 14
  %11 = load i64, ptr %totaluse, align 8
  %tobool3 = icmp ne i64 %11, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %12 = load ptr, ptr %vb.addr, align 8
  %localstore = getelementptr inbounds nuw %struct.vorbis_block, ptr %12, i32 0, i32 11
  %13 = load ptr, ptr %localstore, align 8
  %14 = load ptr, ptr %vb.addr, align 8
  %totaluse4 = getelementptr inbounds nuw %struct.vorbis_block, ptr %14, i32 0, i32 14
  %15 = load i64, ptr %totaluse4, align 8
  %16 = load ptr, ptr %vb.addr, align 8
  %localalloc = getelementptr inbounds nuw %struct.vorbis_block, ptr %16, i32 0, i32 13
  %17 = load i64, ptr %localalloc, align 8
  %add = add nsw i64 %15, %17
  %call = call ptr @realloc(ptr noundef %13, i64 noundef %add) #5
  %18 = load ptr, ptr %vb.addr, align 8
  %localstore5 = getelementptr inbounds nuw %struct.vorbis_block, ptr %18, i32 0, i32 11
  store ptr %call, ptr %localstore5, align 8
  %19 = load ptr, ptr %vb.addr, align 8
  %totaluse6 = getelementptr inbounds nuw %struct.vorbis_block, ptr %19, i32 0, i32 14
  %20 = load i64, ptr %totaluse6, align 8
  %21 = load ptr, ptr %vb.addr, align 8
  %localalloc7 = getelementptr inbounds nuw %struct.vorbis_block, ptr %21, i32 0, i32 13
  %22 = load i64, ptr %localalloc7, align 8
  %add8 = add nsw i64 %22, %20
  store i64 %add8, ptr %localalloc7, align 8
  %23 = load ptr, ptr %vb.addr, align 8
  %totaluse9 = getelementptr inbounds nuw %struct.vorbis_block, ptr %23, i32 0, i32 14
  store i64 0, ptr %totaluse9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %24 = load ptr, ptr %vb.addr, align 8
  %localtop = getelementptr inbounds nuw %struct.vorbis_block, ptr %24, i32 0, i32 12
  store i64 0, ptr %localtop, align 8
  %25 = load ptr, ptr %vb.addr, align 8
  %reap10 = getelementptr inbounds nuw %struct.vorbis_block, ptr %25, i32 0, i32 15
  store ptr null, ptr %reap10, align 8
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(1) }

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
