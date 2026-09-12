; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @unixRead(ptr noundef %id, ptr noundef %pBuf, i32 noundef %amt, i64 noundef %offset) #2 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %pBuf.addr = alloca ptr, align 8
  %amt.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %pFile = alloca ptr, align 8
  %got = alloca i32, align 4
  %nCopy = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %amt, ptr %amt.addr, align 4
  store i64 %offset, ptr %offset.addr, align 8
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load i64, ptr %offset.addr, align 8
  %2 = load ptr, ptr %pFile, align 8
  %mmapSize = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 13
  %3 = load i64, ptr %mmapSize, align 8
  %cmp = icmp slt i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %offset.addr, align 8
  %5 = load i32, ptr %amt.addr, align 4
  %conv = sext i32 %5 to i64
  %add = add nsw i64 %4, %conv
  %6 = load ptr, ptr %pFile, align 8
  %mmapSize1 = getelementptr inbounds nuw %struct.unixFile, ptr %6, i32 0, i32 13
  %7 = load i64, ptr %mmapSize1, align 8
  %cmp2 = icmp sle i64 %add, %7
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %8 = load ptr, ptr %pBuf.addr, align 8
  %9 = load ptr, ptr %pFile, align 8
  %pMapRegion = getelementptr inbounds nuw %struct.unixFile, ptr %9, i32 0, i32 16
  %10 = load ptr, ptr %pMapRegion, align 8
  %11 = load i64, ptr %offset.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %11
  %12 = load i32, ptr %amt.addr, align 4
  %conv5 = sext i32 %12 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %arrayidx, i64 %conv5, i1 false)
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %pFile, align 8
  %mmapSize6 = getelementptr inbounds nuw %struct.unixFile, ptr %13, i32 0, i32 13
  %14 = load i64, ptr %mmapSize6, align 8
  %15 = load i64, ptr %offset.addr, align 8
  %sub = sub nsw i64 %14, %15
  %conv7 = trunc i64 %sub to i32
  store i32 %conv7, ptr %nCopy, align 4
  %16 = load ptr, ptr %pBuf.addr, align 8
  %17 = load ptr, ptr %pFile, align 8
  %pMapRegion8 = getelementptr inbounds nuw %struct.unixFile, ptr %17, i32 0, i32 16
  %18 = load ptr, ptr %pMapRegion8, align 8
  %19 = load i64, ptr %offset.addr, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %18, i64 %19
  %20 = load i32, ptr %nCopy, align 4
  %conv10 = sext i32 %20 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %arrayidx9, i64 %conv10, i1 false)
  %21 = load ptr, ptr %pBuf.addr, align 8
  %22 = load i32, ptr %nCopy, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %21, i64 %idxprom
  store ptr %arrayidx11, ptr %pBuf.addr, align 8
  %23 = load i32, ptr %nCopy, align 4
  %24 = load i32, ptr %amt.addr, align 4
  %sub12 = sub nsw i32 %24, %23
  store i32 %sub12, ptr %amt.addr, align 4
  %25 = load i32, ptr %nCopy, align 4
  %conv13 = sext i32 %25 to i64
  %26 = load i64, ptr %offset.addr, align 8
  %add14 = add nsw i64 %26, %conv13
  store i64 %add14, ptr %offset.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end, %entry
  %27 = load ptr, ptr %pFile, align 8
  %28 = load i64, ptr %offset.addr, align 8
  %29 = load ptr, ptr %pBuf.addr, align 8
  %30 = load i32, ptr %amt.addr, align 4
  %call = call i32 @seekAndRead(ptr noundef %27, i64 noundef %28, ptr noundef %29, i32 noundef %30)
  store i32 %call, ptr %got, align 4
  %31 = load i32, ptr %got, align 4
  %32 = load i32, ptr %amt.addr, align 4
  %cmp16 = icmp eq i32 %31, %32
  br i1 %cmp16, label %if.then18, label %if.else19

if.then18:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

if.else19:                                        ; preds = %if.end15
  %33 = load i32, ptr %got, align 4
  %cmp20 = icmp slt i32 %33, 0
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else19
  store i32 266, ptr %retval, align 4
  br label %return

if.else23:                                        ; preds = %if.else19
  %34 = load ptr, ptr %pFile, align 8
  call void @storeLastErrno(ptr noundef %34, i32 noundef 0)
  %35 = load ptr, ptr %pBuf.addr, align 8
  %36 = load i32, ptr %got, align 4
  %idxprom24 = sext i32 %36 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %35, i64 %idxprom24
  %37 = load i32, ptr %amt.addr, align 4
  %38 = load i32, ptr %got, align 4
  %sub26 = sub nsw i32 %37, %38
  %conv27 = sext i32 %sub26 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx25, i8 0, i64 %conv27, i1 false)
  store i32 522, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else23, %if.then22, %if.then18, %if.then4
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden i32 @seekAndRead(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
