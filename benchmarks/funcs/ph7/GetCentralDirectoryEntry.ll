; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLittleEndianUnpack32(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLittleEndianUnpack16(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GetCentralDirectoryEntry(ptr noundef %pArch, ptr noundef %pEntry, ptr noundef %zCentral, ptr noundef %pNextOffset) #0 {
entry:
  %pArch.addr = alloca ptr, align 8
  %pEntry.addr = alloca ptr, align 8
  %zCentral.addr = alloca ptr, align 8
  %pNextOffset.addr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %nDosDate = alloca i16, align 2
  %nDosTime = alloca i16, align 2
  %nComment = alloca i16, align 2
  %nMagic = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pArch, ptr %pArch.addr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store ptr %zCentral, ptr %zCentral.addr, align 8
  store ptr %pNextOffset, ptr %pNextOffset.addr, align 8
  %0 = load ptr, ptr %pEntry.addr, align 8
  %sFileName = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %0, i32 0, i32 8
  store ptr %sFileName, ptr %pName, align 8
  store i16 0, ptr %nComment, align 2
  store i32 0, ptr %nMagic, align 4
  store i16 0, ptr %nDosTime, align 2
  store i16 0, ptr %nDosDate, align 2
  store ptr null, ptr %pArch.addr, align 8
  %1 = load ptr, ptr %zCentral.addr, align 8
  %call = call i32 @SyLittleEndianUnpack32(ptr noundef %nMagic, ptr noundef %1, i32 noundef 4)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %nMagic, align 4
  %cmp = icmp ne i32 %2, 33639248
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %rc, align 4
  br label %update

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 28
  %call1 = call i32 @SyLittleEndianUnpack16(ptr noundef %nByte, ptr noundef %arrayidx, i32 noundef 2)
  %5 = load ptr, ptr %pName, align 8
  %nByte2 = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nByte2, align 8
  %cmp3 = icmp ugt i32 %6, 32767
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -32, ptr %rc, align 4
  br label %update

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %pEntry.addr, align 8
  %nExtra = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %7, i32 0, i32 7
  %8 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 30
  %call7 = call i32 @SyLittleEndianUnpack16(ptr noundef %nExtra, ptr noundef %arrayidx6, i32 noundef 2)
  %9 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %9, i64 32
  %call9 = call i32 @SyLittleEndianUnpack16(ptr noundef %nComment, ptr noundef %arrayidx8, i32 noundef 2)
  %10 = load ptr, ptr %pEntry.addr, align 8
  %nComprMeth = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 10
  %call11 = call i32 @SyLittleEndianUnpack16(ptr noundef %nComprMeth, ptr noundef %arrayidx10, i32 noundef 2)
  store i32 %call11, ptr %rc, align 4
  %12 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 12
  %call13 = call i32 @SyLittleEndianUnpack16(ptr noundef %nDosTime, ptr noundef %arrayidx12, i32 noundef 2)
  %13 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %13, i64 14
  %call15 = call i32 @SyLittleEndianUnpack16(ptr noundef %nDosDate, ptr noundef %arrayidx14, i32 noundef 2)
  %14 = load i16, ptr %nDosDate, align 2
  %conv = zext i16 %14 to i32
  %shl = shl i32 %conv, 16
  %15 = load i16, ptr %nDosTime, align 2
  %conv16 = zext i16 %15 to i32
  %or = or i32 %shl, %conv16
  %16 = load ptr, ptr %pEntry.addr, align 8
  %sFmt = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %16, i32 0, i32 4
  %call17 = call i32 @SyDosTimeFormat(i32 noundef %or, ptr noundef %sFmt)
  %17 = load ptr, ptr %pEntry.addr, align 8
  %sFmt18 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %17, i32 0, i32 4
  %tm_mon = getelementptr inbounds nuw %struct.Sytm, ptr %sFmt18, i32 0, i32 4
  %18 = load i32, ptr %tm_mon, align 8
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %tm_mon, align 8
  %19 = load ptr, ptr %pEntry.addr, align 8
  %nCrc = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, ptr %20, i64 16
  %call20 = call i32 @SyLittleEndianUnpack32(ptr noundef %nCrc, ptr noundef %arrayidx19, i32 noundef 4)
  store i32 %call20, ptr %rc, align 4
  %21 = load ptr, ptr %pEntry.addr, align 8
  %nByte21 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 24
  %call23 = call i32 @SyLittleEndianUnpack32(ptr noundef %nByte21, ptr noundef %arrayidx22, i32 noundef 4)
  store i32 %call23, ptr %rc, align 4
  %23 = load ptr, ptr %pEntry.addr, align 8
  %nByte24 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %nByte24, align 8
  %cmp25 = icmp ugt i32 %24, 2147483647
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end5
  store i32 -32, ptr %rc, align 4
  br label %update

if.end28:                                         ; preds = %if.end5
  %25 = load ptr, ptr %pEntry.addr, align 8
  %nByteCompr = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %26, i64 20
  %call30 = call i32 @SyLittleEndianUnpack32(ptr noundef %nByteCompr, ptr noundef %arrayidx29, i32 noundef 4)
  store i32 %call30, ptr %rc, align 4
  %27 = load ptr, ptr %pEntry.addr, align 8
  %nByteCompr31 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %27, i32 0, i32 1
  %28 = load i32, ptr %nByteCompr31, align 4
  %cmp32 = icmp ugt i32 %28, 2147483647
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  store i32 -32, ptr %rc, align 4
  br label %update

if.end35:                                         ; preds = %if.end28
  %29 = load ptr, ptr %pEntry.addr, align 8
  %nOfft = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %zCentral.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, ptr %30, i64 42
  %call37 = call i32 @SyLittleEndianUnpack32(ptr noundef %nOfft, ptr noundef %arrayidx36, i32 noundef 4)
  %31 = load ptr, ptr %pEntry.addr, align 8
  %nOfft38 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %31, i32 0, i32 5
  %32 = load i32, ptr %nOfft38, align 8
  %cmp39 = icmp ugt i32 %32, 2147483647
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end35
  store i32 -32, ptr %rc, align 4
  br label %update

if.end42:                                         ; preds = %if.end35
  store i32 0, ptr %rc, align 4
  br label %update

update:                                           ; preds = %if.end42, %if.then41, %if.then34, %if.then27, %if.then4, %if.then
  %33 = load ptr, ptr %pName, align 8
  %nByte43 = getelementptr inbounds nuw %struct.SyString, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %nByte43, align 8
  %add = add i32 46, %34
  %35 = load ptr, ptr %pEntry.addr, align 8
  %nExtra44 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %35, i32 0, i32 7
  %36 = load i16, ptr %nExtra44, align 2
  %conv45 = zext i16 %36 to i32
  %add46 = add i32 %add, %conv45
  %37 = load i16, ptr %nComment, align 2
  %conv47 = zext i16 %37 to i32
  %add48 = add i32 %add46, %conv47
  %38 = load ptr, ptr %pNextOffset.addr, align 8
  store i32 %add48, ptr %38, align 4
  %39 = load i32, ptr %rc, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyDosTimeFormat(i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
