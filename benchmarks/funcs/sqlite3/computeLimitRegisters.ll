; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsInteger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @computeLimitRegisters(ptr noundef %pParse, ptr noundef %p, i32 noundef %iBreak) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %iBreak.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %iLimit = alloca i32, align 4
  %iOffset = alloca i32, align 4
  %n = alloca i32, align 4
  %pLimit = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iBreak, ptr %iBreak.addr, align 4
  store ptr null, ptr %v, align 8
  store i32 0, ptr %iLimit, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pLimit1 = getelementptr inbounds nuw %struct.Select, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %pLimit1, align 8
  store ptr %1, ptr %pLimit, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %iLimit2 = getelementptr inbounds nuw %struct.Select, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %iLimit2, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end40

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pLimit, align 8
  %tobool3 = icmp ne ptr %4, null
  br i1 %tobool3, label %if.then4, label %if.end40

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %5, i32 0, i32 18
  %6 = load i32, ptr %nMem, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %nMem, align 8
  store i32 %inc, ptr %iLimit, align 4
  %7 = load ptr, ptr %p.addr, align 8
  %iLimit5 = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 4
  store i32 %inc, ptr %iLimit5, align 8
  %8 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %8)
  store ptr %call, ptr %v, align 8
  %9 = load ptr, ptr %pLimit, align 8
  %pLeft = getelementptr inbounds nuw %struct.Expr, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pLeft, align 8
  %call6 = call i32 @sqlite3ExprIsInteger(ptr noundef %10, ptr noundef %n)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else24

if.then8:                                         ; preds = %if.then4
  %11 = load ptr, ptr %v, align 8
  %12 = load i32, ptr %n, align 4
  %13 = load i32, ptr %iLimit, align 4
  %call9 = call i32 @sqlite3VdbeAddOp2(ptr noundef %11, i32 noundef 70, i32 noundef %12, i32 noundef %13)
  %14 = load i32, ptr %n, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %15 = load ptr, ptr %v, align 8
  %16 = load i32, ptr %iBreak.addr, align 4
  %call11 = call i32 @sqlite3VdbeGoto(ptr noundef %15, i32 noundef %16)
  br label %if.end23

if.else:                                          ; preds = %if.then8
  %17 = load i32, ptr %n, align 4
  %cmp12 = icmp sge i32 %17, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %if.else
  %18 = load ptr, ptr %p.addr, align 8
  %nSelectRow = getelementptr inbounds nuw %struct.Select, ptr %18, i32 0, i32 2
  %19 = load i16, ptr %nSelectRow, align 2
  %conv = sext i16 %19 to i32
  %20 = load i32, ptr %n, align 4
  %conv13 = sext i32 %20 to i64
  %call14 = call signext i16 @sqlite3LogEst(i64 noundef %conv13)
  %conv15 = sext i16 %call14 to i32
  %cmp16 = icmp sgt i32 %conv, %conv15
  br i1 %cmp16, label %if.then18, label %if.end22

if.then18:                                        ; preds = %land.lhs.true
  %21 = load i32, ptr %n, align 4
  %conv19 = sext i32 %21 to i64
  %call20 = call signext i16 @sqlite3LogEst(i64 noundef %conv19)
  %22 = load ptr, ptr %p.addr, align 8
  %nSelectRow21 = getelementptr inbounds nuw %struct.Select, ptr %22, i32 0, i32 2
  store i16 %call20, ptr %nSelectRow21, align 2
  %23 = load ptr, ptr %p.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %selFlags, align 4
  %or = or i32 %24, 16384
  store i32 %or, ptr %selFlags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %land.lhs.true, %if.else
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then10
  br label %if.end28

if.else24:                                        ; preds = %if.then4
  %25 = load ptr, ptr %pParse.addr, align 8
  %26 = load ptr, ptr %pLimit, align 8
  %pLeft25 = getelementptr inbounds nuw %struct.Expr, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %pLeft25, align 8
  %28 = load i32, ptr %iLimit, align 4
  call void @sqlite3ExprCode(ptr noundef %25, ptr noundef %27, i32 noundef %28)
  %29 = load ptr, ptr %v, align 8
  %30 = load i32, ptr %iLimit, align 4
  %call26 = call i32 @sqlite3VdbeAddOp1(ptr noundef %29, i32 noundef 15, i32 noundef %30)
  %31 = load ptr, ptr %v, align 8
  %32 = load i32, ptr %iLimit, align 4
  %33 = load i32, ptr %iBreak.addr, align 4
  %call27 = call i32 @sqlite3VdbeAddOp2(ptr noundef %31, i32 noundef 20, i32 noundef %32, i32 noundef %33)
  br label %if.end28

if.end28:                                         ; preds = %if.else24, %if.end23
  %34 = load ptr, ptr %pLimit, align 8
  %pRight = getelementptr inbounds nuw %struct.Expr, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %pRight, align 8
  %tobool29 = icmp ne ptr %35, null
  br i1 %tobool29, label %if.then30, label %if.end39

if.then30:                                        ; preds = %if.end28
  %36 = load ptr, ptr %pParse.addr, align 8
  %nMem31 = getelementptr inbounds nuw %struct.Parse, ptr %36, i32 0, i32 18
  %37 = load i32, ptr %nMem31, align 8
  %inc32 = add nsw i32 %37, 1
  store i32 %inc32, ptr %nMem31, align 8
  store i32 %inc32, ptr %iOffset, align 4
  %38 = load ptr, ptr %p.addr, align 8
  %iOffset33 = getelementptr inbounds nuw %struct.Select, ptr %38, i32 0, i32 5
  store i32 %inc32, ptr %iOffset33, align 4
  %39 = load ptr, ptr %pParse.addr, align 8
  %nMem34 = getelementptr inbounds nuw %struct.Parse, ptr %39, i32 0, i32 18
  %40 = load i32, ptr %nMem34, align 8
  %inc35 = add nsw i32 %40, 1
  store i32 %inc35, ptr %nMem34, align 8
  %41 = load ptr, ptr %pParse.addr, align 8
  %42 = load ptr, ptr %pLimit, align 8
  %pRight36 = getelementptr inbounds nuw %struct.Expr, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %pRight36, align 8
  %44 = load i32, ptr %iOffset, align 4
  call void @sqlite3ExprCode(ptr noundef %41, ptr noundef %43, i32 noundef %44)
  %45 = load ptr, ptr %v, align 8
  %46 = load i32, ptr %iOffset, align 4
  %call37 = call i32 @sqlite3VdbeAddOp1(ptr noundef %45, i32 noundef 15, i32 noundef %46)
  %47 = load ptr, ptr %v, align 8
  %48 = load i32, ptr %iLimit, align 4
  %49 = load i32, ptr %iOffset, align 4
  %add = add nsw i32 %49, 1
  %50 = load i32, ptr %iOffset, align 4
  %call38 = call i32 @sqlite3VdbeAddOp3(ptr noundef %47, i32 noundef 152, i32 noundef %48, i32 noundef %add, i32 noundef %50)
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %if.end28
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end, %if.then
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
