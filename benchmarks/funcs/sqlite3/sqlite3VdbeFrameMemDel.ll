; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeFrame = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeFrameMemDel(ptr noundef %pArg) #0 {
entry:
  %pArg.addr = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %pArg.addr, align 8
  store ptr %0, ptr %pFrame, align 8
  %1 = load ptr, ptr %pFrame, align 8
  %v = getelementptr inbounds nuw %struct.VdbeFrame, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %v, align 8
  %pDelFrame = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 44
  %3 = load ptr, ptr %pDelFrame, align 8
  %4 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VdbeFrame, ptr %4, i32 0, i32 1
  store ptr %3, ptr %pParent, align 8
  %5 = load ptr, ptr %pFrame, align 8
  %6 = load ptr, ptr %pFrame, align 8
  %v1 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %v1, align 8
  %pDelFrame2 = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 44
  store ptr %5, ptr %pDelFrame2, align 8
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
