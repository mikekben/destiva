; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyArchive = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBinHash(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyArchiveInit(ptr noundef %pArch, ptr noundef %pAllocator, ptr noundef %xHash, ptr noundef %xCmp) #0 {
entry:
  %retval = alloca i32, align 4
  %pArch.addr = alloca ptr, align 8
  %pAllocator.addr = alloca ptr, align 8
  %xHash.addr = alloca ptr, align 8
  %xCmp.addr = alloca ptr, align 8
  %apHash = alloca ptr, align 8
  store ptr %pArch, ptr %pArch.addr, align 8
  store ptr %pAllocator, ptr %pAllocator.addr, align 8
  store ptr %xHash, ptr %xHash.addr, align 8
  store ptr %xCmp, ptr %xCmp.addr, align 8
  %0 = load ptr, ptr %pArch.addr, align 8
  call void @SyZero(ptr noundef %0, i32 noundef 88)
  %1 = load ptr, ptr %pAllocator.addr, align 8
  %call = call ptr @SyMemBackendAlloc(ptr noundef %1, i32 noundef 512)
  store ptr %call, ptr %apHash, align 8
  %2 = load ptr, ptr %apHash, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %apHash, align 8
  call void @SyZero(ptr noundef %3, i32 noundef 512)
  %4 = load ptr, ptr %apHash, align 8
  %5 = load ptr, ptr %pArch.addr, align 8
  %apHash1 = getelementptr inbounds nuw %struct.SyArchive, ptr %5, i32 0, i32 3
  store ptr %4, ptr %apHash1, align 8
  %6 = load ptr, ptr %xHash.addr, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %7 = load ptr, ptr %xHash.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ @SyBinHash, %cond.false ]
  %8 = load ptr, ptr %pArch.addr, align 8
  %xHash2 = getelementptr inbounds nuw %struct.SyArchive, ptr %8, i32 0, i32 5
  store ptr %cond, ptr %xHash2, align 8
  %9 = load ptr, ptr %xCmp.addr, align 8
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  %10 = load ptr, ptr %xCmp.addr, align 8
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi ptr [ %10, %cond.true4 ], [ @ArchiveHashCmp, %cond.false5 ]
  %11 = load ptr, ptr %pArch.addr, align 8
  %xCmp8 = getelementptr inbounds nuw %struct.SyArchive, ptr %11, i32 0, i32 4
  store ptr %cond7, ptr %xCmp8, align 8
  %12 = load ptr, ptr %pArch.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.SyArchive, ptr %12, i32 0, i32 6
  store i32 64, ptr %nSize, align 8
  %13 = load ptr, ptr %pAllocator.addr, align 8
  %14 = load ptr, ptr %pArch.addr, align 8
  %pAllocator9 = getelementptr inbounds nuw %struct.SyArchive, ptr %14, i32 0, i32 0
  store ptr %13, ptr %pAllocator9, align 8
  %15 = load ptr, ptr %pArch.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.SyArchive, ptr %15, i32 0, i32 12
  store i32 -559062182, ptr %nMagic, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end6, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @ArchiveHashCmp(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
