; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @unixFileSize(ptr noundef %id, ptr noundef %pSize) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %pSize.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  store ptr %id, ptr %id.addr, align 8
  store ptr %pSize, ptr %pSize.addr, align 8
  %0 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 5), i32 0, i32 1), align 8
  %1 = load ptr, ptr %id.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %h, align 8
  %call = call i32 %0(i32 noundef %2, ptr noundef %buf)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %id.addr, align 8
  %call1 = call ptr @__errno_location() #2
  %5 = load i32, ptr %call1, align 4
  call void @storeLastErrno(ptr noundef %4, i32 noundef %5)
  store i32 1802, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 8
  %6 = load i64, ptr %st_size, align 8
  %7 = load ptr, ptr %pSize.addr, align 8
  store i64 %6, ptr %7, align 8
  %8 = load ptr, ptr %pSize.addr, align 8
  %9 = load i64, ptr %8, align 8
  %cmp2 = icmp eq i64 %9, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %pSize.addr, align 8
  store i64 0, ptr %10, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
