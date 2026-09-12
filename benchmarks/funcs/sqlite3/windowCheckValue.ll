; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@windowCheckValue.azErr = external hidden global [5 x ptr], align 16
@windowCheckValue.aOp = external hidden global [5 x i32], align 16

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @windowCheckValue(ptr noundef %pParse, i32 noundef %reg, i32 noundef %eCond) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %reg.addr = alloca i32, align 4
  %eCond.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %regZero = alloca i32, align 4
  %regString = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  store i32 %eCond, ptr %eCond.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %call1 = call i32 @sqlite3GetTempReg(ptr noundef %1)
  store i32 %call1, ptr %regZero, align 4
  %2 = load ptr, ptr %v, align 8
  %3 = load i32, ptr %regZero, align 4
  %call2 = call i32 @sqlite3VdbeAddOp2(ptr noundef %2, i32 noundef 70, i32 noundef 0, i32 noundef %3)
  %4 = load i32, ptr %eCond.addr, align 4
  %cmp = icmp sge i32 %4, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pParse.addr, align 8
  %call3 = call i32 @sqlite3GetTempReg(ptr noundef %5)
  store i32 %call3, ptr %regString, align 4
  %6 = load ptr, ptr %v, align 8
  %7 = load i32, ptr %regString, align 4
  %call4 = call i32 @sqlite3VdbeAddOp4(ptr noundef %6, i32 noundef 113, i32 noundef 0, i32 noundef %7, i32 noundef 0, ptr noundef @.str.3, i32 noundef -1)
  %8 = load ptr, ptr %v, align 8
  %9 = load i32, ptr %regString, align 4
  %10 = load ptr, ptr %v, align 8
  %call5 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %10)
  %add = add nsw i32 %call5, 2
  %11 = load i32, ptr %reg.addr, align 4
  %call6 = call i32 @sqlite3VdbeAddOp3(ptr noundef %8, i32 noundef 57, i32 noundef %9, i32 noundef %add, i32 noundef %11)
  %12 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %12, i16 noundef zeroext 83)
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load ptr, ptr %v, align 8
  %14 = load i32, ptr %reg.addr, align 4
  %15 = load ptr, ptr %v, align 8
  %call7 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %15)
  %add8 = add nsw i32 %call7, 2
  %call9 = call i32 @sqlite3VdbeAddOp2(ptr noundef %13, i32 noundef 15, i32 noundef %14, i32 noundef %add8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %v, align 8
  %17 = load i32, ptr %eCond.addr, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr @windowCheckValue.aOp, i64 0, i64 %idxprom
  %18 = load i32, ptr %arrayidx, align 4
  %19 = load i32, ptr %regZero, align 4
  %20 = load ptr, ptr %v, align 8
  %call10 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %20)
  %add11 = add nsw i32 %call10, 2
  %21 = load i32, ptr %reg.addr, align 4
  %call12 = call i32 @sqlite3VdbeAddOp3(ptr noundef %16, i32 noundef %18, i32 noundef %19, i32 noundef %add11, i32 noundef %21)
  %22 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %22)
  %23 = load ptr, ptr %v, align 8
  %call13 = call i32 @sqlite3VdbeAddOp2(ptr noundef %23, i32 noundef 69, i32 noundef 1, i32 noundef 2)
  %24 = load ptr, ptr %v, align 8
  %25 = load i32, ptr %eCond.addr, align 4
  %idxprom14 = sext i32 %25 to i64
  %arrayidx15 = getelementptr inbounds [5 x ptr], ptr @windowCheckValue.azErr, i64 0, i64 %idxprom14
  %26 = load ptr, ptr %arrayidx15, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %24, ptr noundef %26, i32 noundef -1)
  %27 = load ptr, ptr %pParse.addr, align 8
  %28 = load i32, ptr %regZero, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %27, i32 noundef %28)
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
