; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %v, ptr noundef %pTab, i32 noundef %iTabCur, i32 noundef %iCol, i32 noundef %regOut) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %iTabCur.addr = alloca i32, align 4
  %iCol.addr = alloca i32, align 4
  %regOut.addr = alloca i32, align 4
  %op = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 %iTabCur, ptr %iTabCur.addr, align 4
  store i32 %iCol, ptr %iCol.addr, align 4
  store i32 %regOut, ptr %regOut.addr, align 4
  %0 = load ptr, ptr %pTab.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %v.addr, align 8
  %2 = load i32, ptr %iTabCur.addr, align 4
  %3 = load i32, ptr %iCol.addr, align 4
  %4 = load i32, ptr %regOut.addr, align 4
  %call = call i32 @sqlite3VdbeAddOp3(ptr noundef %1, i32 noundef 90, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %if.end21

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %iCol.addr, align 4
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %iCol.addr, align 4
  %7 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 10
  %8 = load i16, ptr %iPKey, align 4
  %conv = sext i16 %8 to i32
  %cmp2 = icmp eq i32 %6, %conv
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load ptr, ptr %v.addr, align 8
  %10 = load i32, ptr %iTabCur.addr, align 4
  %11 = load i32, ptr %regOut.addr, align 4
  %call5 = call i32 @sqlite3VdbeAddOp2(ptr noundef %9, i32 noundef 128, i32 noundef %10, i32 noundef %11)
  br label %if.end17

if.else:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 16
  %13 = load i32, ptr %nModuleArg, align 4
  %tobool = icmp ne i32 %13, 0
  %14 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 164, i32 90
  store i32 %cond, ptr %op, align 4
  %15 = load i32, ptr %iCol.addr, align 4
  store i32 %15, ptr %x, align 4
  %16 = load ptr, ptr %pTab.addr, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 9
  %17 = load i32, ptr %tabFlags, align 8
  %and = and i32 %17, 32
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %18 = load ptr, ptr %pTab.addr, align 8
  %nModuleArg8 = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 16
  %19 = load i32, ptr %nModuleArg8, align 4
  %tobool9 = icmp ne i32 %19, 0
  br i1 %tobool9, label %if.end15, label %if.then10

if.then10:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %pTab.addr, align 8
  %call11 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %20)
  %21 = load i32, ptr %iCol.addr, align 4
  %conv12 = trunc i32 %21 to i16
  %call13 = call signext i16 @sqlite3ColumnOfIndex(ptr noundef %call11, i16 noundef signext %conv12)
  %conv14 = sext i16 %call13 to i32
  store i32 %conv14, ptr %x, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %land.lhs.true, %if.else
  %22 = load ptr, ptr %v.addr, align 8
  %23 = load i32, ptr %op, align 4
  %24 = load i32, ptr %iTabCur.addr, align 4
  %25 = load i32, ptr %x, align 4
  %26 = load i32, ptr %regOut.addr, align 4
  %call16 = call i32 @sqlite3VdbeAddOp3(ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26)
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then4
  %27 = load i32, ptr %iCol.addr, align 4
  %cmp18 = icmp sge i32 %27, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end17
  %28 = load ptr, ptr %v.addr, align 8
  %29 = load ptr, ptr %pTab.addr, align 8
  %30 = load i32, ptr %iCol.addr, align 4
  %31 = load i32, ptr %regOut.addr, align 4
  call void @sqlite3ColumnDefault(ptr noundef %28, ptr noundef %29, i32 noundef %30, i32 noundef %31)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3ColumnOfIndex(ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ColumnDefault(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
