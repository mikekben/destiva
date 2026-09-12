; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeRewind(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %magic = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 6
  store i32 770837923, ptr %magic, align 4
  %1 = load ptr, ptr %p.addr, align 8
  %pc = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 10
  store i32 -1, ptr %pc, align 4
  %2 = load ptr, ptr %p.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 11
  store i32 0, ptr %rc, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %errorAction = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 32
  store i8 2, ptr %errorAction, align 2
  %4 = load ptr, ptr %p.addr, align 8
  %nChange = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 12
  store i32 0, ptr %nChange, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %cacheCtr = getelementptr inbounds nuw %struct.Vdbe, ptr %5, i32 0, i32 9
  store i32 1, ptr %cacheCtr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %minWriteFileFormat = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 33
  store i8 -1, ptr %minWriteFileFormat, align 1
  %7 = load ptr, ptr %p.addr, align 8
  %iStatement = getelementptr inbounds nuw %struct.Vdbe, ptr %7, i32 0, i32 13
  store i32 0, ptr %iStatement, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %nFkConstraint = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 16
  store i64 0, ptr %nFkConstraint, align 8
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
