; ModuleID = 'bench/bzip2.ll'
source_filename = "bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utimbuf = type { i64, i64 }

@fileMetaInfo = external hidden global %struct.stat, align 8

; Function Attrs: nounwind uwtable
define hidden void @applySavedMetaInfoToOutputFile(ptr noundef %dstName) #0 {
entry:
  %dstName.addr = alloca ptr, align 8
  %retVal = alloca i32, align 4
  %uTimBuf = alloca %struct.utimbuf, align 8
  store ptr %dstName, ptr %dstName.addr, align 8
  %0 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 11), align 8
  %actime = getelementptr inbounds nuw %struct.utimbuf, ptr %uTimBuf, i32 0, i32 0
  store i64 %0, ptr %actime, align 8
  %1 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 12), align 8
  %modtime = getelementptr inbounds nuw %struct.utimbuf, ptr %uTimBuf, i32 0, i32 1
  store i64 %1, ptr %modtime, align 8
  %2 = load ptr, ptr %dstName.addr, align 8
  %3 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 3), align 8
  %call = call i32 @chmod(ptr noundef %2, i32 noundef %3) #3
  store i32 %call, ptr %retVal, align 4
  %4 = load i32, ptr %retVal, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @ioError() #4
  unreachable

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dstName.addr, align 8
  %call1 = call i32 @utime(ptr noundef %5, ptr noundef %uTimBuf) #3
  store i32 %call1, ptr %retVal, align 4
  %6 = load i32, ptr %retVal, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @ioError() #4
  unreachable

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %dstName.addr, align 8
  %8 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 4), align 4
  %9 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 5), align 8
  %call5 = call i32 @chown(ptr noundef %7, i32 noundef %8, i32 noundef %9) #3
  store i32 %call5, ptr %retVal, align 4
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare hidden void @ioError() #1

; Function Attrs: nounwind
declare i32 @chmod(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @utime(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @chown(ptr noundef, i32 noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
