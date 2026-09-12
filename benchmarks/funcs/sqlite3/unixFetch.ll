; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @unixFetch(ptr noundef %fd, i64 noundef %iOff, i32 noundef %nAmt, ptr noundef %pp) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %iOff.addr = alloca i64, align 8
  %nAmt.addr = alloca i32, align 4
  %pp.addr = alloca ptr, align 8
  %pFd = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %fd, ptr %fd.addr, align 8
  store i64 %iOff, ptr %iOff.addr, align 8
  store i32 %nAmt, ptr %nAmt.addr, align 4
  store ptr %pp, ptr %pp.addr, align 8
  %0 = load ptr, ptr %fd.addr, align 8
  store ptr %0, ptr %pFd, align 8
  %1 = load ptr, ptr %pp.addr, align 8
  store ptr null, ptr %1, align 8
  %2 = load ptr, ptr %pFd, align 8
  %mmapSizeMax = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 15
  %3 = load i64, ptr %mmapSizeMax, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pFd, align 8
  %pMapRegion = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 16
  %5 = load ptr, ptr %pMapRegion, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pFd, align 8
  %call = call i32 @unixMapfile(ptr noundef %6, i64 noundef -1)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %8 = load i32, ptr %rc, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %9 = load ptr, ptr %pFd, align 8
  %mmapSize = getelementptr inbounds nuw %struct.unixFile, ptr %9, i32 0, i32 13
  %10 = load i64, ptr %mmapSize, align 8
  %11 = load i64, ptr %iOff.addr, align 8
  %12 = load i32, ptr %nAmt.addr, align 4
  %conv = sext i32 %12 to i64
  %add = add nsw i64 %11, %conv
  %cmp6 = icmp sge i64 %10, %add
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %13 = load ptr, ptr %pFd, align 8
  %pMapRegion9 = getelementptr inbounds nuw %struct.unixFile, ptr %13, i32 0, i32 16
  %14 = load ptr, ptr %pMapRegion9, align 8
  %15 = load i64, ptr %iOff.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %14, i64 %15
  %16 = load ptr, ptr %pp.addr, align 8
  store ptr %arrayidx, ptr %16, align 8
  %17 = load ptr, ptr %pFd, align 8
  %nFetchOut = getelementptr inbounds nuw %struct.unixFile, ptr %17, i32 0, i32 12
  %18 = load i32, ptr %nFetchOut, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %nFetchOut, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then4
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixMapfile(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
