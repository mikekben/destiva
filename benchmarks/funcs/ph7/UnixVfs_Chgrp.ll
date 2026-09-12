; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { ptr, ptr, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @UnixVfs_Chgrp(ptr noundef %zPath, ptr noundef %zGroup) #0 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %zGroup.addr = alloca ptr, align 8
  %group = alloca ptr, align 8
  %gid = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %zGroup, ptr %zGroup.addr, align 8
  %0 = load ptr, ptr %zGroup.addr, align 8
  %call = call ptr @getgrnam(ptr noundef %0)
  store ptr %call, ptr %group, align 8
  %1 = load ptr, ptr %group, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %group, align 8
  %gr_gid = getelementptr inbounds nuw %struct.group, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %gr_gid, align 8
  store i32 %3, ptr %gid, align 4
  %4 = load ptr, ptr %zPath.addr, align 8
  %5 = load i32, ptr %gid, align 4
  %call1 = call i32 @chown(ptr noundef %4, i32 noundef -1, i32 noundef %5) #3
  store i32 %call1, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %6, 0
  %7 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 -1
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nounwind
declare i32 @chown(ptr noundef, i32 noundef, i32 noundef) #1

declare ptr @getgrnam(ptr noundef) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
