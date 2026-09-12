; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_sync_clear(ptr noundef %oy) #1 {
entry:
  %oy.addr = alloca ptr, align 8
  store ptr %oy, ptr %oy.addr, align 8
  %0 = load ptr, ptr %oy.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %oy.addr, align 8
  %data = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %data, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %oy.addr, align 8
  %data3 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %data3, align 8
  call void @free(ptr noundef %4) #2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %5 = load ptr, ptr %oy.addr, align 8
  %call = call i32 @ogg_sync_init(ptr noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @ogg_sync_init(ptr noundef) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
