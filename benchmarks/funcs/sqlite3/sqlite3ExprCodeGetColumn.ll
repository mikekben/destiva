; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3ExprCodeGetColumn(ptr noundef %pParse, ptr noundef %pTab, i32 noundef %iColumn, i32 noundef %iTable, i32 noundef %iReg, i8 noundef zeroext %p5) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %iColumn.addr = alloca i32, align 4
  %iTable.addr = alloca i32, align 4
  %iReg.addr = alloca i32, align 4
  %p5.addr = alloca i8, align 1
  %v = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %iColumn, ptr %iColumn.addr, align 4
  store i32 %iTable, ptr %iTable.addr, align 4
  store i32 %iReg, ptr %iReg.addr, align 4
  store i8 %p5, ptr %p5.addr, align 1
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  %2 = load ptr, ptr %v, align 8
  %3 = load ptr, ptr %pTab.addr, align 8
  %4 = load i32, ptr %iTable.addr, align 4
  %5 = load i32, ptr %iColumn.addr, align 4
  %6 = load i32, ptr %iReg.addr, align 4
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %7 = load i8, ptr %p5.addr, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %v, align 8
  %9 = load i8, ptr %p5.addr, align 1
  %conv = zext i8 %9 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %8, i16 noundef zeroext %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %iReg.addr, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
