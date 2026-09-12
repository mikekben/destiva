; ModuleID = 'bench/oggenc.ll'
source_filename = "oggenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oggpack_buffer = type { i64, i32, ptr, ptr, i64 }

; Function Attrs: nounwind uwtable
define dso_local i64 @oggpackB_read1(ptr noundef %b) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %endbyte = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %endbyte, align 8
  %2 = load ptr, ptr %b.addr, align 8
  %storage = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %2, i32 0, i32 4
  %3 = load i64, ptr %storage, align 8
  %cmp = icmp sge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, ptr %ret, align 8
  br label %overflow

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %b.addr, align 8
  %ptr = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %ptr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load ptr, ptr %b.addr, align 8
  %endbit = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %endbit, align 8
  %sub = sub nsw i32 7, %8
  %shr = ashr i32 %conv, %sub
  %and = and i32 %shr, 1
  %conv1 = sext i32 %and to i64
  store i64 %conv1, ptr %ret, align 8
  br label %overflow

overflow:                                         ; preds = %if.end, %if.then
  %9 = load ptr, ptr %b.addr, align 8
  %endbit2 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %endbit2, align 8
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %endbit2, align 8
  %11 = load ptr, ptr %b.addr, align 8
  %endbit3 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %endbit3, align 8
  %cmp4 = icmp sgt i32 %12, 7
  br i1 %cmp4, label %if.then6, label %if.end11

if.then6:                                         ; preds = %overflow
  %13 = load ptr, ptr %b.addr, align 8
  %endbit7 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %13, i32 0, i32 1
  store i32 0, ptr %endbit7, align 8
  %14 = load ptr, ptr %b.addr, align 8
  %ptr8 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %ptr8, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %ptr8, align 8
  %16 = load ptr, ptr %b.addr, align 8
  %endbyte9 = getelementptr inbounds nuw %struct.oggpack_buffer, ptr %16, i32 0, i32 0
  %17 = load i64, ptr %endbyte9, align 8
  %inc10 = add nsw i64 %17, 1
  store i64 %inc10, ptr %endbyte9, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %overflow
  %18 = load i64, ptr %ret, align 8
  ret i64 %18
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
