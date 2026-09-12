; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeEndCoroutine(ptr noundef %v, i32 noundef %regYield) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %regYield.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %regYield, ptr %regYield.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %1 = load i32, ptr %regYield.addr, align 4
  %call = call i32 @sqlite3VdbeAddOp1(ptr noundef %0, i32 noundef 67, i32 noundef %1)
  %2 = load ptr, ptr %v.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pParse, align 8
  %nTempReg = getelementptr inbounds nuw %struct.Parse, ptr %3, i32 0, i32 7
  store i8 0, ptr %nTempReg, align 1
  %4 = load ptr, ptr %v.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pParse1, align 8
  %nRangeReg = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 14
  store i32 0, ptr %nRangeReg, align 8
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
