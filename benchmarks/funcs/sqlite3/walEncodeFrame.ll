; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Put4byte(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden void @walChecksumBytes(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define hidden void @walEncodeFrame(ptr noundef %pWal, i32 noundef %iPage, i32 noundef %nTruncate, ptr noundef %aData, ptr noundef %aFrame) #2 {
entry:
  %pWal.addr = alloca ptr, align 8
  %iPage.addr = alloca i32, align 4
  %nTruncate.addr = alloca i32, align 4
  %aData.addr = alloca ptr, align 8
  %aFrame.addr = alloca ptr, align 8
  %nativeCksum = alloca i32, align 4
  %aCksum = alloca ptr, align 8
  store ptr %pWal, ptr %pWal.addr, align 8
  store i32 %iPage, ptr %iPage.addr, align 4
  store i32 %nTruncate, ptr %nTruncate.addr, align 4
  store ptr %aData, ptr %aData.addr, align 8
  store ptr %aFrame, ptr %aFrame.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 19
  %aFrameCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  store ptr %arraydecay, ptr %aCksum, align 8
  %1 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i32, ptr %iPage.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx, i32 noundef %2)
  %3 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 4
  %4 = load i32, ptr %nTruncate.addr, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx1, i32 noundef %4)
  %5 = load ptr, ptr %pWal.addr, align 8
  %iReCksum = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 21
  %6 = load i32, ptr %iReCksum, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 8
  %8 = load ptr, ptr %pWal.addr, align 8
  %hdr3 = getelementptr inbounds nuw %struct.Wal, ptr %8, i32 0, i32 19
  %aSalt = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr3, i32 0, i32 9
  %arraydecay4 = getelementptr inbounds [2 x i32], ptr %aSalt, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx2, ptr align 8 %arraydecay4, i64 8, i1 false)
  %9 = load ptr, ptr %pWal.addr, align 8
  %hdr5 = getelementptr inbounds nuw %struct.Wal, ptr %9, i32 0, i32 19
  %bigEndCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr5, i32 0, i32 4
  %10 = load i8, ptr %bigEndCksum, align 1
  %conv = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv, 0
  %conv7 = zext i1 %cmp6 to i32
  store i32 %conv7, ptr %nativeCksum, align 4
  %11 = load i32, ptr %nativeCksum, align 4
  %12 = load ptr, ptr %aFrame.addr, align 8
  %13 = load ptr, ptr %aCksum, align 8
  %14 = load ptr, ptr %aCksum, align 8
  call void @walChecksumBytes(i32 noundef %11, ptr noundef %12, i32 noundef 8, ptr noundef %13, ptr noundef %14)
  %15 = load i32, ptr %nativeCksum, align 4
  %16 = load ptr, ptr %aData.addr, align 8
  %17 = load ptr, ptr %pWal.addr, align 8
  %szPage = getelementptr inbounds nuw %struct.Wal, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %szPage, align 8
  %19 = load ptr, ptr %aCksum, align 8
  %20 = load ptr, ptr %aCksum, align 8
  call void @walChecksumBytes(i32 noundef %15, ptr noundef %16, i32 noundef %18, ptr noundef %19, ptr noundef %20)
  %21 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %21, i64 16
  %22 = load ptr, ptr %aCksum, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %22, i64 0
  %23 = load i32, ptr %arrayidx9, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx8, i32 noundef %23)
  %24 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %24, i64 20
  %25 = load ptr, ptr %aCksum, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %25, i64 1
  %26 = load i32, ptr %arrayidx11, align 4
  call void @sqlite3Put4byte(ptr noundef %arrayidx10, i32 noundef %26)
  br label %if.end

if.else:                                          ; preds = %entry
  %27 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %27, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %arrayidx12, i8 0, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

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
