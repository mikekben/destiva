; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WindowCodeArg = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg, %struct.WindowCsrAndReg }
%struct.WindowCsrAndReg = type { i32, i32 }
%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @windowReadPeerValues(ptr noundef %p, i32 noundef %csr, i32 noundef %reg) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %csr.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %pMWin = alloca ptr, align 8
  %pOrderBy = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pPart = alloca ptr, align 8
  %iColOff = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %csr, ptr %csr.addr, align 4
  store i32 %reg, ptr %reg.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %pMWin1 = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pMWin1, align 8
  store ptr %1, ptr %pMWin, align 8
  %2 = load ptr, ptr %pMWin, align 8
  %pOrderBy2 = getelementptr inbounds nuw %struct.Window, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %pOrderBy2, align 8
  store ptr %3, ptr %pOrderBy, align 8
  %4 = load ptr, ptr %pOrderBy, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %p.addr, align 8
  %pParse = getelementptr inbounds nuw %struct.WindowCodeArg, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pParse, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %6)
  store ptr %call, ptr %v, align 8
  %7 = load ptr, ptr %pMWin, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pPartition, align 8
  store ptr %8, ptr %pPart, align 8
  %9 = load ptr, ptr %pMWin, align 8
  %nBufferCol = getelementptr inbounds nuw %struct.Window, ptr %9, i32 0, i32 22
  %10 = load i32, ptr %nBufferCol, align 8
  %11 = load ptr, ptr %pPart, align 8
  %tobool3 = icmp ne ptr %11, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load ptr, ptr %pPart, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %12, i32 0, i32 0
  %13 = load i32, ptr %nExpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 0, %cond.false ]
  %add = add nsw i32 %10, %cond
  store i32 %add, ptr %iColOff, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %pOrderBy, align 8
  %nExpr4 = getelementptr inbounds nuw %struct.ExprList, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %nExpr4, align 8
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %v, align 8
  %18 = load i32, ptr %csr.addr, align 4
  %19 = load i32, ptr %iColOff, align 4
  %20 = load i32, ptr %i, align 4
  %add5 = add nsw i32 %19, %20
  %21 = load i32, ptr %reg.addr, align 4
  %22 = load i32, ptr %i, align 4
  %add6 = add nsw i32 %21, %22
  %call7 = call i32 @sqlite3VdbeAddOp3(ptr noundef %17, i32 noundef 90, i32 noundef %18, i32 noundef %add5, i32 noundef %add6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
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
