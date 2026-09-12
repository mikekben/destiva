; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_sync_wrote(ptr noundef %oy, i64 noundef %bytes) #0 {
entry:
  %retval = alloca i32, align 4
  %oy.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  store ptr %oy, ptr %oy.addr, align 8
  store i64 %bytes, ptr %bytes.addr, align 8
  %0 = load ptr, ptr %oy.addr, align 8
  %fill = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %fill, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, ptr %bytes.addr, align 8
  %add = add nsw i64 %conv, %2
  %3 = load ptr, ptr %oy.addr, align 8
  %storage = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %storage, align 8
  %conv1 = sext i32 %4 to i64
  %cmp = icmp sgt i64 %add, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes.addr, align 8
  %6 = load ptr, ptr %oy.addr, align 8
  %fill3 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %fill3, align 4
  %conv4 = sext i32 %7 to i64
  %add5 = add nsw i64 %conv4, %5
  %conv6 = trunc i64 %add5 to i32
  store i32 %conv6, ptr %fill3, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
