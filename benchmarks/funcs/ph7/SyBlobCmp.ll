; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyBlobCmp(ptr noundef %pLeft, ptr noundef %pRight) #0 {
entry:
  %retval = alloca i32, align 4
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  %0 = load ptr, ptr %pLeft.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nByte, align 8
  %2 = load ptr, ptr %pRight.addr, align 8
  %nByte1 = getelementptr inbounds nuw %struct.SyBlob, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %nByte1, align 8
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pLeft.addr, align 8
  %nByte2 = getelementptr inbounds nuw %struct.SyBlob, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %nByte2, align 8
  %6 = load ptr, ptr %pRight.addr, align 8
  %nByte3 = getelementptr inbounds nuw %struct.SyBlob, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %nByte3, align 8
  %sub = sub i32 %5, %7
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %pLeft.addr, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyBlob, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %nByte4, align 8
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %pLeft.addr, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pBlob, align 8
  %12 = load ptr, ptr %pRight.addr, align 8
  %pBlob8 = getelementptr inbounds nuw %struct.SyBlob, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %pBlob8, align 8
  %14 = load ptr, ptr %pLeft.addr, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyBlob, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %nByte9, align 8
  %call = call i32 @SyMemcmp(ptr noundef %11, ptr noundef %13, i32 noundef %15)
  store i32 %call, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
