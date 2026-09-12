; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @codeDistinct(ptr noundef %pParse, i32 noundef %iTab, i32 noundef %addrRepeat, i32 noundef %N, i32 noundef %iMem) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  %addrRepeat.addr = alloca i32, align 4
  %N.addr = alloca i32, align 4
  %iMem.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %r1 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  store i32 %addrRepeat, ptr %addrRepeat.addr, align 4
  store i32 %N, ptr %N.addr, align 4
  store i32 %iMem, ptr %iMem.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3GetTempReg(ptr noundef %2)
  store i32 %call, ptr %r1, align 4
  %3 = load ptr, ptr %v, align 8
  %4 = load i32, ptr %iTab.addr, align 4
  %5 = load i32, ptr %addrRepeat.addr, align 4
  %6 = load i32, ptr %iMem.addr, align 4
  %7 = load i32, ptr %N.addr, align 4
  %call1 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %3, i32 noundef 29, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %v, align 8
  %9 = load i32, ptr %iMem.addr, align 4
  %10 = load i32, ptr %N.addr, align 4
  %11 = load i32, ptr %r1, align 4
  %call2 = call i32 @sqlite3VdbeAddOp3(ptr noundef %8, i32 noundef 92, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  %12 = load ptr, ptr %v, align 8
  %13 = load i32, ptr %iTab.addr, align 4
  %14 = load i32, ptr %r1, align 4
  %15 = load i32, ptr %iMem.addr, align 4
  %16 = load i32, ptr %N.addr, align 4
  %call3 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %12, i32 noundef 132, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %17, i16 noundef zeroext 16)
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load i32, ptr %r1, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %18, i32 noundef %19)
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
