; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA1Context = type { [5 x i32], [2 x i32], [64 x i8] }

; Function Attrs: nounwind uwtable
define hidden void @SHA1Init(ptr noundef %context) #0 {
entry:
  %context.addr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %state = getelementptr inbounds nuw %struct.SHA1Context, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [5 x i32], ptr %state, i64 0, i64 0
  store i32 1732584193, ptr %arrayidx, align 4
  %1 = load ptr, ptr %context.addr, align 8
  %state1 = getelementptr inbounds nuw %struct.SHA1Context, ptr %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [5 x i32], ptr %state1, i64 0, i64 1
  store i32 -271733879, ptr %arrayidx2, align 4
  %2 = load ptr, ptr %context.addr, align 8
  %state3 = getelementptr inbounds nuw %struct.SHA1Context, ptr %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %state3, i64 0, i64 2
  store i32 -1732584194, ptr %arrayidx4, align 4
  %3 = load ptr, ptr %context.addr, align 8
  %state5 = getelementptr inbounds nuw %struct.SHA1Context, ptr %3, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %state5, i64 0, i64 3
  store i32 271733878, ptr %arrayidx6, align 4
  %4 = load ptr, ptr %context.addr, align 8
  %state7 = getelementptr inbounds nuw %struct.SHA1Context, ptr %4, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [5 x i32], ptr %state7, i64 0, i64 4
  store i32 -1009589776, ptr %arrayidx8, align 4
  %5 = load ptr, ptr %context.addr, align 8
  %count = getelementptr inbounds nuw %struct.SHA1Context, ptr %5, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %count, i64 0, i64 1
  store i32 0, ptr %arrayidx9, align 4
  %6 = load ptr, ptr %context.addr, align 8
  %count10 = getelementptr inbounds nuw %struct.SHA1Context, ptr %6, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %count10, i64 0, i64 0
  store i32 0, ptr %arrayidx11, align 4
  ret void
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
