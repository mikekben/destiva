; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @SySetGetNextEntry(ptr noundef %pSet, ptr noundef %ppEntry) #0 {
entry:
  %retval = alloca i32, align 4
  %pSet.addr = alloca ptr, align 8
  %ppEntry.addr = alloca ptr, align 8
  %zSrc = alloca ptr, align 8
  store ptr %pSet, ptr %pSet.addr, align 8
  store ptr %ppEntry, ptr %ppEntry.addr, align 8
  %0 = load ptr, ptr %pSet.addr, align 8
  %nCursor = getelementptr inbounds nuw %struct.SySet, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nCursor, align 4
  %2 = load ptr, ptr %pSet.addr, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %nUsed, align 8
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pSet.addr, align 8
  %nCursor1 = getelementptr inbounds nuw %struct.SySet, ptr %4, i32 0, i32 5
  store i32 0, ptr %nCursor1, align 4
  store i32 -18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pSet.addr, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pBase, align 8
  store ptr %6, ptr %zSrc, align 8
  %7 = load ptr, ptr %ppEntry.addr, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %zSrc, align 8
  %9 = load ptr, ptr %pSet.addr, align 8
  %nCursor3 = getelementptr inbounds nuw %struct.SySet, ptr %9, i32 0, i32 5
  %10 = load i32, ptr %nCursor3, align 4
  %11 = load ptr, ptr %pSet.addr, align 8
  %eSize = getelementptr inbounds nuw %struct.SySet, ptr %11, i32 0, i32 4
  %12 = load i32, ptr %eSize, align 8
  %mul = mul i32 %10, %12
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %8, i64 %idxprom
  %13 = load ptr, ptr %ppEntry.addr, align 8
  store ptr %arrayidx, ptr %13, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %14 = load ptr, ptr %pSet.addr, align 8
  %nCursor5 = getelementptr inbounds nuw %struct.SySet, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %nCursor5, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %nCursor5, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
