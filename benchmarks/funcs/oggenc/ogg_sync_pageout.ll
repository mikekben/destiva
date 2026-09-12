; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ogg_sync_state = type { ptr, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare dso_local i64 @ogg_sync_pageseek(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ogg_sync_pageout(ptr noundef %oy, ptr noundef %og) #0 {
entry:
  %retval = alloca i32, align 4
  %oy.addr = alloca ptr, align 8
  %og.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %oy, ptr %oy.addr, align 8
  store ptr %og, ptr %og.addr, align 8
  br label %while.body

while.body:                                       ; preds = %if.end6, %entry
  %0 = load ptr, ptr %oy.addr, align 8
  %1 = load ptr, ptr %og.addr, align 8
  %call = call i64 @ogg_sync_pageseek(ptr noundef %0, ptr noundef %1)
  store i64 %call, ptr %ret, align 8
  %2 = load i64, ptr %ret, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load i64, ptr %ret, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %oy.addr, align 8
  %unsynced = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %unsynced, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end3
  %6 = load ptr, ptr %oy.addr, align 8
  %unsynced5 = getelementptr inbounds nuw %struct.ogg_sync_state, ptr %6, i32 0, i32 4
  store i32 1, ptr %unsynced5, align 4
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  br label %while.body

return:                                           ; preds = %if.then4, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
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
