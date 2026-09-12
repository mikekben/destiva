; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3OpenTable(ptr noundef %pParse, i32 noundef %iCur, i32 noundef %iDb, ptr noundef %pTab, i32 noundef %opcode) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %iCur.addr = alloca i32, align 4
  %iDb.addr = alloca i32, align 4
  %pTab.addr = alloca ptr, align 8
  %opcode.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iCur, ptr %iCur.addr, align 4
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %opcode, ptr %opcode.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  %1 = load ptr, ptr %pParse.addr, align 8
  %2 = load i32, ptr %iDb.addr, align 4
  %3 = load ptr, ptr %pTab.addr, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %tnum, align 8
  %5 = load i32, ptr %opcode.addr, align 4
  %cmp = icmp eq i32 %5, 98
  %6 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %7 = load ptr, ptr %pTab.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %zName, align 8
  call void @sqlite3TableLock(ptr noundef %1, i32 noundef %2, i32 noundef %4, i8 noundef zeroext %conv, ptr noundef %8)
  %9 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %tabFlags, align 8
  %and = and i32 %10, 32
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %v, align 8
  %12 = load i32, ptr %opcode.addr, align 4
  %13 = load i32, ptr %iCur.addr, align 4
  %14 = load ptr, ptr %pTab.addr, align 8
  %tnum3 = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 7
  %15 = load i32, ptr %tnum3, align 8
  %16 = load i32, ptr %iDb.addr, align 4
  %17 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 11
  %18 = load i16, ptr %nCol, align 2
  %conv4 = sext i16 %18 to i32
  %call5 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef %16, i32 noundef %conv4)
  br label %if.end

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %pTab.addr, align 8
  %call6 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %19)
  store ptr %call6, ptr %pPk, align 8
  %20 = load ptr, ptr %v, align 8
  %21 = load i32, ptr %opcode.addr, align 4
  %22 = load i32, ptr %iCur.addr, align 4
  %23 = load ptr, ptr %pPk, align 8
  %tnum7 = getelementptr inbounds nuw %struct.Index, ptr %23, i32 0, i32 11
  %24 = load i32, ptr %tnum7, align 8
  %25 = load i32, ptr %iDb.addr, align 4
  %call8 = call i32 @sqlite3VdbeAddOp3(ptr noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %pPk, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %26, ptr noundef %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
