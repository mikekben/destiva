; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }
%struct.SyArchiveEntry = type { i32, i32, i32, i32, %struct.Sytm, i32, i16, i16, %struct.SyString, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.Sytm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i64 }
%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden i32 @SyArchiveGetNextEntry(ptr noundef %pArch, ptr noundef %ppEntry) #0 {
entry:
  %retval = alloca i32, align 4
  %pArch.addr = alloca ptr, align 8
  %ppEntry.addr = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pArch, ptr %pArch.addr, align 8
  store ptr %ppEntry, ptr %ppEntry.addr, align 8
  %0 = load ptr, ptr %pArch.addr, align 8
  %pCursor = getelementptr inbounds nuw %struct.SyArchive, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pCursor, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pArch.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyArchive, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pList, align 8
  %4 = load ptr, ptr %pArch.addr, align 8
  %pCursor1 = getelementptr inbounds nuw %struct.SyArchive, ptr %4, i32 0, i32 1
  store ptr %3, ptr %pCursor1, align 8
  store i32 -18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pArch.addr, align 8
  %pCursor2 = getelementptr inbounds nuw %struct.SyArchive, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pCursor2, align 8
  %7 = load ptr, ptr %ppEntry.addr, align 8
  store ptr %6, ptr %7, align 8
  %8 = load ptr, ptr %pArch.addr, align 8
  %pCursor3 = getelementptr inbounds nuw %struct.SyArchive, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pCursor3, align 8
  %pNext4 = getelementptr inbounds nuw %struct.SyArchiveEntry, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %pNext4, align 8
  store ptr %10, ptr %pNext, align 8
  %11 = load ptr, ptr %pNext, align 8
  %12 = load ptr, ptr %pArch.addr, align 8
  %pCursor5 = getelementptr inbounds nuw %struct.SyArchive, ptr %12, i32 0, i32 1
  store ptr %11, ptr %pCursor5, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
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
