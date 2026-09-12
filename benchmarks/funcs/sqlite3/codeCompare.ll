; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BinaryCompareCollSeq(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @codeCompare(ptr noundef %pParse, ptr noundef %pLeft, ptr noundef %pRight, i32 noundef %opcode, i32 noundef %in1, i32 noundef %in2, i32 noundef %dest, i32 noundef %jumpIfNull) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pLeft.addr = alloca ptr, align 8
  %pRight.addr = alloca ptr, align 8
  %opcode.addr = alloca i32, align 4
  %in1.addr = alloca i32, align 4
  %in2.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %jumpIfNull.addr = alloca i32, align 4
  %p5 = alloca i32, align 4
  %addr = alloca i32, align 4
  %p4 = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pLeft, ptr %pLeft.addr, align 8
  store ptr %pRight, ptr %pRight.addr, align 8
  store i32 %opcode, ptr %opcode.addr, align 4
  store i32 %in1, ptr %in1.addr, align 4
  store i32 %in2, ptr %in2.addr, align 4
  store i32 %dest, ptr %dest.addr, align 4
  store i32 %jumpIfNull, ptr %jumpIfNull.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %1 = load ptr, ptr %pLeft.addr, align 8
  %2 = load ptr, ptr %pRight.addr, align 8
  %call = call ptr @sqlite3BinaryCompareCollSeq(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  store ptr %call, ptr %p4, align 8
  %3 = load ptr, ptr %pLeft.addr, align 8
  %4 = load ptr, ptr %pRight.addr, align 8
  %5 = load i32, ptr %jumpIfNull.addr, align 4
  %call1 = call zeroext i8 @binaryCompareP5(ptr noundef %3, ptr noundef %4, i32 noundef %5)
  %conv = zext i8 %call1 to i32
  store i32 %conv, ptr %p5, align 4
  %6 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pVdbe, align 8
  %8 = load i32, ptr %opcode.addr, align 4
  %9 = load i32, ptr %in2.addr, align 4
  %10 = load i32, ptr %dest.addr, align 4
  %11 = load i32, ptr %in1.addr, align 4
  %12 = load ptr, ptr %p4, align 8
  %call2 = call i32 @sqlite3VdbeAddOp4(ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12, i32 noundef -2)
  store i32 %call2, ptr %addr, align 4
  %13 = load ptr, ptr %pParse.addr, align 8
  %pVdbe3 = getelementptr inbounds nuw %struct.Parse, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %pVdbe3, align 8
  %15 = load i32, ptr %p5, align 4
  %conv4 = trunc i32 %15 to i8
  %conv5 = zext i8 %conv4 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %14, i16 noundef zeroext %conv5)
  %16 = load i32, ptr %addr, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @binaryCompareP5(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
