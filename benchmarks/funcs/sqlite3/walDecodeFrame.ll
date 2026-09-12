; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Wal = type { ptr, ptr, ptr, i32, i64, i32, i32, ptr, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.WalIndexHdr, i32, i32, ptr, i32 }
%struct.WalIndexHdr = type { i32, i32, i32, i8, i8, i16, i32, i32, [2 x i32], [2 x i32], [2 x i32] }

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @walChecksumBytes(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @walDecodeFrame(ptr noundef %pWal, ptr noundef %piPage, ptr noundef %pnTruncate, ptr noundef %aData, ptr noundef %aFrame) #1 {
entry:
  %retval = alloca i32, align 4
  %pWal.addr = alloca ptr, align 8
  %piPage.addr = alloca ptr, align 8
  %pnTruncate.addr = alloca ptr, align 8
  %aData.addr = alloca ptr, align 8
  %aFrame.addr = alloca ptr, align 8
  %nativeCksum = alloca i32, align 4
  %aCksum = alloca ptr, align 8
  %pgno = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %piPage, ptr %piPage.addr, align 8
  store ptr %pnTruncate, ptr %pnTruncate.addr, align 8
  store ptr %aData, ptr %aData.addr, align 8
  store ptr %aFrame, ptr %aFrame.addr, align 8
  %0 = load ptr, ptr %pWal.addr, align 8
  %hdr = getelementptr inbounds nuw %struct.Wal, ptr %0, i32 0, i32 19
  %aFrameCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr, i32 0, i32 8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aFrameCksum, i64 0, i64 0
  store ptr %arraydecay, ptr %aCksum, align 8
  %1 = load ptr, ptr %pWal.addr, align 8
  %hdr1 = getelementptr inbounds nuw %struct.Wal, ptr %1, i32 0, i32 19
  %aSalt = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr1, i32 0, i32 9
  %2 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 8
  %call = call i32 @memcmp(ptr noundef %aSalt, ptr noundef %arrayidx, i64 noundef 8) #2
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 0
  %call3 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx2)
  store i32 %call3, ptr %pgno, align 4
  %4 = load i32, ptr %pgno, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %pWal.addr, align 8
  %hdr7 = getelementptr inbounds nuw %struct.Wal, ptr %5, i32 0, i32 19
  %bigEndCksum = getelementptr inbounds nuw %struct.WalIndexHdr, ptr %hdr7, i32 0, i32 4
  %6 = load i8, ptr %bigEndCksum, align 1
  %conv = zext i8 %6 to i32
  %cmp8 = icmp eq i32 %conv, 0
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, ptr %nativeCksum, align 4
  %7 = load i32, ptr %nativeCksum, align 4
  %8 = load ptr, ptr %aFrame.addr, align 8
  %9 = load ptr, ptr %aCksum, align 8
  %10 = load ptr, ptr %aCksum, align 8
  call void @walChecksumBytes(i32 noundef %7, ptr noundef %8, i32 noundef 8, ptr noundef %9, ptr noundef %10)
  %11 = load i32, ptr %nativeCksum, align 4
  %12 = load ptr, ptr %aData.addr, align 8
  %13 = load ptr, ptr %pWal.addr, align 8
  %szPage = getelementptr inbounds nuw %struct.Wal, ptr %13, i32 0, i32 8
  %14 = load i32, ptr %szPage, align 8
  %15 = load ptr, ptr %aCksum, align 8
  %16 = load ptr, ptr %aCksum, align 8
  call void @walChecksumBytes(i32 noundef %11, ptr noundef %12, i32 noundef %14, ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %aCksum, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %17, i64 0
  %18 = load i32, ptr %arrayidx10, align 4
  %19 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %19, i64 16
  %call12 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx11)
  %cmp13 = icmp ne i32 %18, %call12
  br i1 %cmp13, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6
  %20 = load ptr, ptr %aCksum, align 8
  %arrayidx15 = getelementptr inbounds i32, ptr %20, i64 1
  %21 = load i32, ptr %arrayidx15, align 4
  %22 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %22, i64 20
  %call17 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx16)
  %cmp18 = icmp ne i32 %21, %call17
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %lor.lhs.false, %if.end6
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false
  %23 = load i32, ptr %pgno, align 4
  %24 = load ptr, ptr %piPage.addr, align 8
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %aFrame.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %25, i64 4
  %call23 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx22)
  %26 = load ptr, ptr %pnTruncate.addr, align 8
  store i32 %call23, ptr %26, align 4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then20, %if.then5, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
