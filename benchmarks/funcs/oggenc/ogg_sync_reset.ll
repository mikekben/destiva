; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_sync_reset(ptr noundef %oy) #0 {
entry:
  %oy.addr = alloca ptr, align 8
  store ptr %oy, ptr %oy.addr, align 8
  %0 = load ptr, ptr %oy.addr, align 8
  %fill = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %0, i32 0, i32 2
  store i32 0, ptr %fill, align 4
  %1 = load ptr, ptr %oy.addr, align 8
  %returned = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %1, i32 0, i32 3
  store i32 0, ptr %returned, align 8
  %2 = load ptr, ptr %oy.addr, align 8
  %unsynced = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %2, i32 0, i32 4
  store i32 0, ptr %unsynced, align 4
  %3 = load ptr, ptr %oy.addr, align 8
  %headerbytes = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %3, i32 0, i32 5
  store i32 0, ptr %headerbytes, align 8
  %4 = load ptr, ptr %oy.addr, align 8
  %bodybytes = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %bodybytes, align 4
  ret i32 0
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
