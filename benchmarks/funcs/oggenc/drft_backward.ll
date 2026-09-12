; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drft_lookup = type { i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @drft_backward(ptr noundef %l, ptr noundef %data) #0 {
entry:
  %l.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %l.addr, align 8
  %n = getelementptr inbounds nuw %struct.drft_lookup, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %n, align 8
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %l.addr, align 8
  %n1 = getelementptr inbounds nuw %struct.drft_lookup, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %n1, align 8
  %4 = load ptr, ptr %data.addr, align 8
  %5 = load ptr, ptr %l.addr, align 8
  %trigcache = getelementptr inbounds nuw %struct.drft_lookup, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %trigcache, align 8
  %7 = load ptr, ptr %l.addr, align 8
  %trigcache2 = getelementptr inbounds nuw %struct.drft_lookup, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %trigcache2, align 8
  %9 = load ptr, ptr %l.addr, align 8
  %n3 = getelementptr inbounds nuw %struct.drft_lookup, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %n3, align 8
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds float, ptr %8, i64 %idx.ext
  %11 = load ptr, ptr %l.addr, align 8
  %splitcache = getelementptr inbounds nuw %struct.drft_lookup, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %splitcache, align 8
  call void @drftb1(i32 noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %add.ptr, ptr noundef %12)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @drftb1(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
