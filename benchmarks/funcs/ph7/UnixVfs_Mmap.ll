; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind uwtable
define hidden i32 @UnixVfs_Mmap(ptr noundef %zPath, ptr noundef %ppMap, ptr noundef %pSize) #0 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %ppMap.addr = alloca ptr, align 8
  %pSize.addr = alloca ptr, align 8
  %st = alloca %struct.stat, align 8
  %pMap = alloca ptr, align 8
  %fd = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %ppMap, ptr %ppMap.addr, align 8
  store ptr %pSize, ptr %pSize.addr, align 8
  %0 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0)
  store i32 %call, ptr %fd, align 4
  %1 = load i32, ptr %fd, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %fd, align 4
  %call1 = call i32 @fstat(i32 noundef %2, ptr noundef %st) #3
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 8
  %3 = load i64, ptr %st_size, align 8
  %4 = load i32, ptr %fd, align 4
  %call2 = call ptr @mmap(ptr noundef null, i64 noundef %3, i32 noundef 1, i32 noundef 2, i32 noundef %4, i64 noundef 0) #3
  store ptr %call2, ptr %pMap, align 8
  store i32 0, ptr %rc, align 4
  %5 = load ptr, ptr %pMap, align 8
  %cmp3 = icmp eq ptr %5, inttoptr (i64 -1 to ptr)
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %rc, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %pMap, align 8
  %7 = load ptr, ptr %ppMap.addr, align 8
  store ptr %6, ptr %7, align 8
  %st_size5 = getelementptr inbounds nuw %struct.stat, ptr %st, i32 0, i32 8
  %8 = load i64, ptr %st_size5, align 8
  %9 = load ptr, ptr %pSize.addr, align 8
  store i64 %8, ptr %9, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %10 = load i32, ptr %fd, align 4
  %call7 = call i32 @close(i32 noundef %10)
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @open(ptr noundef, i32 noundef, ...) #1

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #2

declare i32 @close(i32 noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
