; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.119 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @SyBlobNullAppend(ptr noundef %pBlob) #0 {
entry:
  %pBlob.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pBlob, ptr %pBlob.addr, align 8
  %0 = load ptr, ptr %pBlob.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %nByte, align 8
  store i32 %1, ptr %n, align 4
  %2 = load ptr, ptr %pBlob.addr, align 8
  %call = call i32 @SyBlobAppend(ptr noundef %2, ptr noundef @.str.119, i32 noundef 1)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %pBlob.addr, align 8
  %nByte1 = getelementptr inbounds nuw %struct.SyBlob, ptr %5, i32 0, i32 2
  store i32 %4, ptr %nByte1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %rc, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
