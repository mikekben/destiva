; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WindowCodeArg = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg }
%struct.WindowCsrAndReg = type { i32, i32 }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAppendP4(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @windowAggFinal(ptr noundef %p, i32 noundef %bFin) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %bFin.addr = alloca i32, align 4
  %pParse = alloca ptr, align 8
  %pMWin = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pWin = alloca ptr, align 8
  %nArg = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %bFin, ptr %bFin.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pParse1 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pParse1, align 8
  store ptr %1, ptr %pParse, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pMWin2 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pMWin2, align 8
  store ptr %3, ptr %pMWin, align 8
  %4 = load ptr, ptr %pParse, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %4)
  store ptr %call, ptr %v, align 8
  %5 = load ptr, ptr %pMWin, align 8
  store ptr %5, ptr %pWin, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %pWin, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pMWin, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %7, i32 0, i32 25
  %8 = load i32, ptr %regStartRowid, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %pWin, align 8
  %pFunc = getelementptr inbounds nuw %struct.Window, ptr %9, i32 0, i32 14
  %10 = load ptr, ptr %pFunc, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %funcFlags, align 4
  %and = and i32 %11, 4096
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %pWin, align 8
  %eStart = getelementptr inbounds nuw %struct.Window, ptr %12, i32 0, i32 5
  %13 = load i8, ptr %eStart, align 1
  %conv = zext i8 %13 to i32
  %cmp5 = icmp ne i32 %conv, 90
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  %14 = load ptr, ptr %v, align 8
  %15 = load ptr, ptr %pWin, align 8
  %regResult = getelementptr inbounds nuw %struct.Window, ptr %15, i32 0, i32 17
  %16 = load i32, ptr %regResult, align 8
  %call7 = call i32 @sqlite3VdbeAddOp2(ptr noundef %14, i32 noundef 73, i32 noundef 0, i32 noundef %16)
  %17 = load ptr, ptr %v, align 8
  %18 = load ptr, ptr %pWin, align 8
  %csrApp = getelementptr inbounds nuw %struct.Window, ptr %18, i32 0, i32 18
  %19 = load i32, ptr %csrApp, align 4
  %call8 = call i32 @sqlite3VdbeAddOp1(ptr noundef %17, i32 noundef 32, i32 noundef %19)
  %20 = load ptr, ptr %v, align 8
  %21 = load ptr, ptr %pWin, align 8
  %csrApp9 = getelementptr inbounds nuw %struct.Window, ptr %21, i32 0, i32 18
  %22 = load i32, ptr %csrApp9, align 4
  %23 = load ptr, ptr %pWin, align 8
  %regResult10 = getelementptr inbounds nuw %struct.Window, ptr %23, i32 0, i32 17
  %24 = load i32, ptr %regResult10, align 8
  %call11 = call i32 @sqlite3VdbeAddOp3(ptr noundef %20, i32 noundef 90, i32 noundef %22, i32 noundef 0, i32 noundef %24)
  %25 = load ptr, ptr %v, align 8
  %26 = load ptr, ptr %v, align 8
  %call12 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %26)
  %sub = sub nsw i32 %call12, 2
  call void @sqlite3VdbeJumpHere(ptr noundef %25, i32 noundef %sub)
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true, %for.body
  %27 = load ptr, ptr %pWin, align 8
  %regApp = getelementptr inbounds nuw %struct.Window, ptr %27, i32 0, i32 19
  %28 = load i32, ptr %regApp, align 8
  %tobool13 = icmp ne i32 %28, 0
  br i1 %tobool13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  br label %if.end31

if.else15:                                        ; preds = %if.else
  %29 = load ptr, ptr %pWin, align 8
  %call16 = call i32 @windowArgCount(ptr noundef %29)
  store i32 %call16, ptr %nArg, align 4
  %30 = load i32, ptr %bFin.addr, align 4
  %tobool17 = icmp ne i32 %30, 0
  br i1 %tobool17, label %if.then18, label %if.else26

if.then18:                                        ; preds = %if.else15
  %31 = load ptr, ptr %v, align 8
  %32 = load ptr, ptr %pWin, align 8
  %regAccum = getelementptr inbounds nuw %struct.Window, ptr %32, i32 0, i32 16
  %33 = load i32, ptr %regAccum, align 4
  %34 = load i32, ptr %nArg, align 4
  %call19 = call i32 @sqlite3VdbeAddOp2(ptr noundef %31, i32 noundef 157, i32 noundef %33, i32 noundef %34)
  %35 = load ptr, ptr %v, align 8
  %36 = load ptr, ptr %pWin, align 8
  %pFunc20 = getelementptr inbounds nuw %struct.Window, ptr %36, i32 0, i32 14
  %37 = load ptr, ptr %pFunc20, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %35, ptr noundef %37, i32 noundef -8)
  %38 = load ptr, ptr %v, align 8
  %39 = load ptr, ptr %pWin, align 8
  %regAccum21 = getelementptr inbounds nuw %struct.Window, ptr %39, i32 0, i32 16
  %40 = load i32, ptr %regAccum21, align 4
  %41 = load ptr, ptr %pWin, align 8
  %regResult22 = getelementptr inbounds nuw %struct.Window, ptr %41, i32 0, i32 17
  %42 = load i32, ptr %regResult22, align 8
  %call23 = call i32 @sqlite3VdbeAddOp2(ptr noundef %38, i32 noundef 78, i32 noundef %40, i32 noundef %42)
  %43 = load ptr, ptr %v, align 8
  %44 = load ptr, ptr %pWin, align 8
  %regAccum24 = getelementptr inbounds nuw %struct.Window, ptr %44, i32 0, i32 16
  %45 = load i32, ptr %regAccum24, align 4
  %call25 = call i32 @sqlite3VdbeAddOp2(ptr noundef %43, i32 noundef 73, i32 noundef 0, i32 noundef %45)
  br label %if.end

if.else26:                                        ; preds = %if.else15
  %46 = load ptr, ptr %v, align 8
  %47 = load ptr, ptr %pWin, align 8
  %regAccum27 = getelementptr inbounds nuw %struct.Window, ptr %47, i32 0, i32 16
  %48 = load i32, ptr %regAccum27, align 4
  %49 = load i32, ptr %nArg, align 4
  %50 = load ptr, ptr %pWin, align 8
  %regResult28 = getelementptr inbounds nuw %struct.Window, ptr %50, i32 0, i32 17
  %51 = load i32, ptr %regResult28, align 8
  %call29 = call i32 @sqlite3VdbeAddOp3(ptr noundef %46, i32 noundef 156, i32 noundef %48, i32 noundef %49, i32 noundef %51)
  %52 = load ptr, ptr %v, align 8
  %53 = load ptr, ptr %pWin, align 8
  %pFunc30 = getelementptr inbounds nuw %struct.Window, ptr %53, i32 0, i32 14
  %54 = load ptr, ptr %pFunc30, align 8
  call void @sqlite3VdbeAppendP4(ptr noundef %52, ptr noundef %54, i32 noundef -8)
  br label %if.end

if.end:                                           ; preds = %if.else26, %if.then18
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then14
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %55 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %55, i32 0, i32 12
  %56 = load ptr, ptr %pNextWin, align 8
  store ptr %56, ptr %pWin, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @windowArgCount(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
