; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @ParseEndOfCentralDirectory(ptr noundef %pArch, ptr noundef %zBuf) #0 {
entry:
  %retval = alloca i32, align 4
  %pArch.addr = alloca ptr, align 8
  %zBuf.addr = alloca ptr, align 8
  %nMagic = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pArch, ptr %pArch.addr, align 8
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 0, ptr %nMagic, align 4
  %0 = load ptr, ptr %zBuf.addr, align 8
  %call = call i32 @SyLittleEndianUnpack32(ptr noundef %nMagic, ptr noundef %0, i32 noundef 4)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %nMagic, align 4
  %cmp = icmp ne i32 %1, 101010256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pArch.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.SyArchive, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %zBuf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 8
  %call1 = call i32 @SyLittleEndianUnpack16(ptr noundef %nEntry, ptr noundef %arrayidx, i32 noundef 2)
  store i32 %call1, ptr %rc, align 4
  %4 = load ptr, ptr %pArch.addr, align 8
  %nEntry2 = getelementptr inbounds nuw %struct.SyArchive, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %nEntry2, align 4
  %cmp3 = icmp ugt i32 %5, 32767
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -24, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %pArch.addr, align 8
  %nCentralSize = getelementptr inbounds nuw %struct.SyArchive, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %zBuf.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 12
  %call7 = call i32 @SyLittleEndianUnpack32(ptr noundef %nCentralSize, ptr noundef %arrayidx6, i32 noundef 4)
  store i32 %call7, ptr %rc, align 4
  %8 = load ptr, ptr %pArch.addr, align 8
  %nCentralSize8 = getelementptr inbounds nuw %struct.SyArchive, ptr %8, i32 0, i32 10
  %9 = load i32, ptr %nCentralSize8, align 8
  %cmp9 = icmp ugt i32 %9, 2147483647
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  store i32 -24, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end5
  %10 = load ptr, ptr %pArch.addr, align 8
  %nCentralOfft = getelementptr inbounds nuw %struct.SyArchive, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %zBuf.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %11, i64 16
  %call13 = call i32 @SyLittleEndianUnpack32(ptr noundef %nCentralOfft, ptr noundef %arrayidx12, i32 noundef 4)
  store i32 %call13, ptr %rc, align 4
  %12 = load ptr, ptr %pArch.addr, align 8
  %nCentralSize14 = getelementptr inbounds nuw %struct.SyArchive, ptr %12, i32 0, i32 10
  %13 = load i32, ptr %nCentralSize14, align 8
  %cmp15 = icmp ugt i32 %13, 2147483647
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  store i32 -24, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.then16, %if.then10, %if.then4, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLittleEndianUnpack32(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLittleEndianUnpack16(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
