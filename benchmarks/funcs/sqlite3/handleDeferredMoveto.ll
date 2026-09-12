; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeMovetoUnpacked(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @handleDeferredMoveto(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %res = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %uc, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %movetoTarget = getelementptr inbounds nuw %struct.VdbeCursor, ptr %2, i32 0, i32 18
  %3 = load i64, ptr %movetoTarget, align 8
  %call = call i32 @sqlite3BtreeMovetoUnpacked(ptr noundef %1, ptr noundef null, i64 noundef %3, i32 noundef 0, ptr noundef %res)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rc, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %res, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %call2 = call i32 @sqlite3CorruptError(i32 noundef 79882)
  store i32 %call2, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %p.addr, align 8
  %deferredMoveto = getelementptr inbounds nuw %struct.VdbeCursor, ptr %7, i32 0, i32 3
  store i8 0, ptr %deferredMoveto, align 1
  %8 = load ptr, ptr %p.addr, align 8
  %cacheStatus = getelementptr inbounds nuw %struct.VdbeCursor, ptr %8, i32 0, i32 9
  store i32 0, ptr %cacheStatus, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then1, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
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
