; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ExprIsVector(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CodeSubselect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @codeExprOrVector(ptr noundef %pParse, ptr noundef %p, i32 noundef %iReg, i32 noundef %nReg) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %iReg.addr = alloca i32, align 4
  %nReg.addr = alloca i32, align 4
  %v = alloca ptr, align 8
  %iSelect = alloca i32, align 4
  %i = alloca i32, align 4
  %pList = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iReg, ptr %iReg.addr, align 4
  store i32 %nReg, ptr %nReg.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else6

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3ExprIsVector(ptr noundef %1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.else6

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.Expr, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2048
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pVdbe, align 8
  store ptr %5, ptr %v, align 8
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %call4 = call i32 @sqlite3CodeSubselect(ptr noundef %6, ptr noundef %7)
  store i32 %call4, ptr %iSelect, align 4
  %8 = load ptr, ptr %v, align 8
  %9 = load i32, ptr %iSelect, align 4
  %10 = load i32, ptr %iReg.addr, align 4
  %11 = load i32, ptr %nReg.addr, align 4
  %sub = sub nsw i32 %11, 1
  %call5 = call i32 @sqlite3VdbeAddOp3(ptr noundef %8, i32 noundef 78, i32 noundef %9, i32 noundef %10, i32 noundef %sub)
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load ptr, ptr %p.addr, align 8
  %x = getelementptr inbounds nuw %struct.Expr, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %x, align 8
  store ptr %13, ptr %pList, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %nReg.addr, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pList, align 8
  %a = getelementptr inbounds nuw %struct.ExprList, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a, i64 0, i64 %idxprom
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx, i32 0, i32 0
  %19 = load ptr, ptr %pExpr, align 8
  %20 = load i32, ptr %iReg.addr, align 4
  %21 = load i32, ptr %i, align 4
  %add = add nsw i32 %20, %21
  call void @sqlite3ExprCode(ptr noundef %16, ptr noundef %19, i32 noundef %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then3
  br label %if.end7

if.else6:                                         ; preds = %land.lhs.true, %entry
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %25 = load i32, ptr %iReg.addr, align 4
  call void @sqlite3ExprCode(ptr noundef %23, ptr noundef %24, i32 noundef %25)
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.end
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
