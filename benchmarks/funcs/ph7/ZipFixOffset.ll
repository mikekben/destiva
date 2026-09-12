; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

@.str.1229 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyLittleEndianUnpack16(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ZipFixOffset(ptr noundef %pEntry, ptr noundef %pSrc) #0 {
entry:
  %retval = alloca i32, align 4
  %pEntry.addr = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %nExtra = alloca i16, align 2
  %nNameLen = alloca i16, align 2
  %zHdr = alloca ptr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  store i16 0, ptr %nNameLen, align 2
  store i16 0, ptr %nExtra, align 2
  %0 = load ptr, ptr %pSrc.addr, align 8
  store ptr %0, ptr %zHdr, align 8
  %1 = load ptr, ptr %zHdr, align 8
  %2 = load ptr, ptr %pEntry.addr, align 8
  %nOfft = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nOfft, align 8
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %zHdr, align 8
  %4 = load ptr, ptr %zHdr, align 8
  %call = call i32 @SyMemcmp(ptr noundef %4, ptr noundef @.str.1229, i32 noundef 4)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %zHdr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 26
  %call2 = call i32 @SyLittleEndianUnpack16(ptr noundef %nNameLen, ptr noundef %arrayidx1, i32 noundef 2)
  %6 = load ptr, ptr %zHdr, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 28
  %call4 = call i32 @SyLittleEndianUnpack16(ptr noundef %nExtra, ptr noundef %arrayidx3, i32 noundef 2)
  %7 = load i16, ptr %nExtra, align 2
  %conv = zext i16 %7 to i32
  %add = add nsw i32 30, %conv
  %8 = load i16, ptr %nNameLen, align 2
  %conv5 = zext i16 %8 to i32
  %add6 = add nsw i32 %add, %conv5
  %9 = load ptr, ptr %pEntry.addr, align 8
  %nOfft7 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %nOfft7, align 8
  %add8 = add i32 %10, %add6
  store i32 %add8, ptr %nOfft7, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
