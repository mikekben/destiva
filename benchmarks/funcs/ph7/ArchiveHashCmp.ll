; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ArchiveHashCmp(ptr noundef %pStr1, ptr noundef %pStr2) #0 {
entry:
  %pStr1.addr = alloca ptr, align 8
  %pStr2.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pStr1, ptr %pStr1.addr, align 8
  store ptr %pStr2, ptr %pStr2.addr, align 8
  %0 = load ptr, ptr %pStr1.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %nByte, align 8
  %2 = load ptr, ptr %pStr2.addr, align 8
  %nByte1 = getelementptr inbounds nuw %struct.SyString, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %nByte1, align 8
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load ptr, ptr %pStr1.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zString, align 8
  %6 = load ptr, ptr %pStr2.addr, align 8
  %zString2 = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zString2, align 8
  %8 = load ptr, ptr %pStr2.addr, align 8
  %nByte3 = getelementptr inbounds nuw %struct.SyString, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %nByte3, align 8
  %call = call i32 @SyMemcmp(ptr noundef %5, ptr noundef %7, i32 noundef %9)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load ptr, ptr %pStr1.addr, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyString, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nByte4, align 8
  %12 = load ptr, ptr %pStr2.addr, align 8
  %nByte5 = getelementptr inbounds nuw %struct.SyString, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nByte5, align 8
  %sub = sub i32 %11, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
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
