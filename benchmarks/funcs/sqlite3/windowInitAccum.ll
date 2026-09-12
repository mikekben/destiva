; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.FuncDef = type { i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }

@nth_valueName = external hidden constant [10 x i8], align 1
@first_valueName = external hidden constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @windowInitAccum(ptr noundef %pParse, ptr noundef %pMWin) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pMWin.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %regArg = alloca i32, align 4
  %nArg = alloca i32, align 4
  %pWin = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pMWin, ptr %pMWin.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %v, align 8
  store i32 0, ptr %nArg, align 4
  %1 = load ptr, ptr %pMWin.addr, align 8
  store ptr %1, ptr %pWin, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %pWin, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pWin, align 8
  %pFunc1 = getelementptr inbounds nuw %struct.Window, ptr %3, i32 0, i32 14
  %4 = load ptr, ptr %pFunc1, align 8
  store ptr %4, ptr %pFunc, align 8
  %5 = load ptr, ptr %v, align 8
  %6 = load ptr, ptr %pWin, align 8
  %regAccum = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 16
  %7 = load i32, ptr %regAccum, align 4
  %call2 = call i32 @sqlite3VdbeAddOp2(ptr noundef %5, i32 noundef 73, i32 noundef 0, i32 noundef %7)
  %8 = load i32, ptr %nArg, align 4
  %9 = load ptr, ptr %pWin, align 8
  %call3 = call i32 @windowArgCount(ptr noundef %9)
  %cmp = icmp sgt i32 %8, %call3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, ptr %nArg, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load ptr, ptr %pWin, align 8
  %call4 = call i32 @windowArgCount(ptr noundef %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %call4, %cond.false ]
  store i32 %cond, ptr %nArg, align 4
  %12 = load ptr, ptr %pMWin.addr, align 8
  %regStartRowid = getelementptr inbounds nuw %struct.Window, ptr %12, i32 0, i32 25
  %13 = load i32, ptr %regStartRowid, align 4
  %cmp5 = icmp eq i32 %13, 0
  br i1 %cmp5, label %if.then, label %if.end22

if.then:                                          ; preds = %cond.end
  %14 = load ptr, ptr %pFunc, align 8
  %zName = getelementptr inbounds nuw %struct.FuncDef, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %zName, align 8
  %cmp6 = icmp eq ptr %15, @nth_valueName
  br i1 %cmp6, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %16 = load ptr, ptr %pFunc, align 8
  %zName7 = getelementptr inbounds nuw %struct.FuncDef, ptr %16, i32 0, i32 8
  %17 = load ptr, ptr %zName7, align 8
  %cmp8 = icmp eq ptr %17, @first_valueName
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %lor.lhs.false, %if.then
  %18 = load ptr, ptr %v, align 8
  %19 = load ptr, ptr %pWin, align 8
  %regApp = getelementptr inbounds nuw %struct.Window, ptr %19, i32 0, i32 19
  %20 = load i32, ptr %regApp, align 8
  %call10 = call i32 @sqlite3VdbeAddOp2(ptr noundef %18, i32 noundef 70, i32 noundef 0, i32 noundef %20)
  %21 = load ptr, ptr %v, align 8
  %22 = load ptr, ptr %pWin, align 8
  %regApp11 = getelementptr inbounds nuw %struct.Window, ptr %22, i32 0, i32 19
  %23 = load i32, ptr %regApp11, align 8
  %add = add nsw i32 %23, 1
  %call12 = call i32 @sqlite3VdbeAddOp2(ptr noundef %21, i32 noundef 70, i32 noundef 0, i32 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then9, %lor.lhs.false
  %24 = load ptr, ptr %pFunc, align 8
  %funcFlags = getelementptr inbounds nuw %struct.FuncDef, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %funcFlags, align 4
  %and = and i32 %25, 4096
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %26 = load ptr, ptr %pWin, align 8
  %csrApp = getelementptr inbounds nuw %struct.Window, ptr %26, i32 0, i32 18
  %27 = load i32, ptr %csrApp, align 4
  %tobool14 = icmp ne i32 %27, 0
  br i1 %tobool14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %v, align 8
  %29 = load ptr, ptr %pWin, align 8
  %csrApp16 = getelementptr inbounds nuw %struct.Window, ptr %29, i32 0, i32 18
  %30 = load i32, ptr %csrApp16, align 4
  %call17 = call i32 @sqlite3VdbeAddOp1(ptr noundef %28, i32 noundef 138, i32 noundef %30)
  %31 = load ptr, ptr %v, align 8
  %32 = load ptr, ptr %pWin, align 8
  %regApp18 = getelementptr inbounds nuw %struct.Window, ptr %32, i32 0, i32 19
  %33 = load i32, ptr %regApp18, align 8
  %add19 = add nsw i32 %33, 1
  %call20 = call i32 @sqlite3VdbeAddOp2(ptr noundef %31, i32 noundef 70, i32 noundef 0, i32 noundef %add19)
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %land.lhs.true, %if.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %34 = load ptr, ptr %pWin, align 8
  %pNextWin = getelementptr inbounds nuw %struct.Window, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pNextWin, align 8
  store ptr %35, ptr %pWin, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %36 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %36, i32 0, i32 18
  %37 = load i32, ptr %nMem, align 8
  %add23 = add nsw i32 %37, 1
  store i32 %add23, ptr %regArg, align 4
  %38 = load i32, ptr %nArg, align 4
  %39 = load ptr, ptr %pParse.addr, align 8
  %nMem24 = getelementptr inbounds nuw %struct.Parse, ptr %39, i32 0, i32 18
  %40 = load i32, ptr %nMem24, align 8
  %add25 = add nsw i32 %40, %38
  store i32 %add25, ptr %nMem24, align 8
  %41 = load i32, ptr %regArg, align 4
  ret i32 %41
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
