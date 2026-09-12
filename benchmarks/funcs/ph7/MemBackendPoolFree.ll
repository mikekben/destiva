; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }

; Function Attrs: nounwind uwtable
define hidden i32 @MemBackendPoolFree(ptr noundef %pBackend, ptr noundef %pChunk) #0 {
entry:
  %retval = alloca i32, align 4
  %pBackend.addr = alloca ptr, align 8
  %pChunk.addr = alloca ptr, align 8
  %pHeader = alloca ptr, align 8
  %nBucket = alloca i32, align 4
  store ptr %pBackend, ptr %pBackend.addr, align 8
  store ptr %pChunk, ptr %pChunk.addr, align 8
  %0 = load ptr, ptr %pChunk.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr %add.ptr, ptr %pHeader, align 8
  %1 = load ptr, ptr %pHeader, align 8
  %2 = load i32, ptr %1, align 8
  %shr = lshr i32 %2, 16
  %cmp = icmp ne i32 %shr, 57005
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pHeader, align 8
  %4 = load i32, ptr %3, align 8
  %and = and i32 %4, 65535
  store i32 %and, ptr %nBucket, align 4
  %5 = load i32, ptr %nBucket, align 4
  %cmp1 = icmp eq i32 %5, 65535
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %pBackend.addr, align 8
  %7 = load ptr, ptr %pHeader, align 8
  %call = call i32 @MemBackendFree(ptr noundef %6, ptr noundef %7)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %pBackend.addr, align 8
  %apPool = getelementptr inbounds nuw %struct.SyMemBackend, ptr %8, i32 0, i32 8
  %9 = load i32, ptr %nBucket, align 4
  %and3 = and i32 %9, 15
  %idxprom = zext i32 %and3 to i64
  %arrayidx = getelementptr inbounds nuw [15 x ptr], ptr %apPool, i64 0, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load ptr, ptr %pHeader, align 8
  store ptr %10, ptr %11, align 8
  %12 = load ptr, ptr %pHeader, align 8
  %13 = load ptr, ptr %pBackend.addr, align 8
  %apPool4 = getelementptr inbounds nuw %struct.SyMemBackend, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %nBucket, align 4
  %and5 = and i32 %14, 15
  %idxprom6 = zext i32 %and5 to i64
  %arrayidx7 = getelementptr inbounds nuw [15 x ptr], ptr %apPool4, i64 0, i64 %idxprom6
  store ptr %12, ptr %arrayidx7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
declare hidden i32 @MemBackendFree(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
