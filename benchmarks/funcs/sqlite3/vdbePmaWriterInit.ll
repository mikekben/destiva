; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaWriter = type { i32, ptr, i32, i32, i32, i64, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @vdbePmaWriterInit(ptr noundef %pFd, ptr noundef %p, i32 noundef %nBuf, i64 noundef %iStart) #0 {
entry:
  %pFd.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %nBuf.addr = alloca i32, align 4
  %iStart.addr = alloca i64, align 8
  store ptr %pFd, ptr %pFd.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nBuf, ptr %nBuf.addr, align 4
  store i64 %iStart, ptr %iStart.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 48, i1 false)
  %1 = load i32, ptr %nBuf.addr, align 4
  %conv = sext i32 %1 to i64
  %call = call ptr @sqlite3Malloc(i64 noundef %conv)
  %2 = load ptr, ptr %p.addr, align 8
  %aBuffer = getelementptr inbounds nuw %struct.PmaWriter, ptr %2, i32 0, i32 1
  store ptr %call, ptr %aBuffer, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %aBuffer1 = getelementptr inbounds nuw %struct.PmaWriter, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %aBuffer1, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %eFWErr = getelementptr inbounds nuw %struct.PmaWriter, ptr %5, i32 0, i32 0
  store i32 7, ptr %eFWErr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64, ptr %iStart.addr, align 8
  %7 = load i32, ptr %nBuf.addr, align 4
  %conv2 = sext i32 %7 to i64
  %rem = srem i64 %6, %conv2
  %conv3 = trunc i64 %rem to i32
  %8 = load ptr, ptr %p.addr, align 8
  %iBufStart = getelementptr inbounds nuw %struct.PmaWriter, ptr %8, i32 0, i32 3
  store i32 %conv3, ptr %iBufStart, align 4
  %9 = load ptr, ptr %p.addr, align 8
  %iBufEnd = getelementptr inbounds nuw %struct.PmaWriter, ptr %9, i32 0, i32 4
  store i32 %conv3, ptr %iBufEnd, align 8
  %10 = load i64, ptr %iStart.addr, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %iBufStart4 = getelementptr inbounds nuw %struct.PmaWriter, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %iBufStart4, align 4
  %conv5 = sext i32 %12 to i64
  %sub = sub nsw i64 %10, %conv5
  %13 = load ptr, ptr %p.addr, align 8
  %iWriteOff = getelementptr inbounds nuw %struct.PmaWriter, ptr %13, i32 0, i32 5
  store i64 %sub, ptr %iWriteOff, align 8
  %14 = load i32, ptr %nBuf.addr, align 4
  %15 = load ptr, ptr %p.addr, align 8
  %nBuffer = getelementptr inbounds nuw %struct.PmaWriter, ptr %15, i32 0, i32 2
  store i32 %14, ptr %nBuffer, align 8
  %16 = load ptr, ptr %pFd.addr, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %pFd6 = getelementptr inbounds nuw %struct.PmaWriter, ptr %17, i32 0, i32 6
  store ptr %16, ptr %pFd6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
