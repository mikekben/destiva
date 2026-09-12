; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AuxData = type { i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeDeleteAuxData(ptr noundef %db, ptr noundef %pp, i32 noundef %iOp, i32 noundef %mask) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %iOp.addr = alloca i32, align 4
  %mask.addr = alloca i32, align 4
  %pAux = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 %iOp, ptr %iOp.addr, align 4
  store i32 %mask, ptr %mask.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load ptr, ptr %pp.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pp.addr, align 8
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %pAux, align 8
  %4 = load i32, ptr %iOp.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load ptr, ptr %pAux, align 8
  %iAuxOp = getelementptr inbounds nuw %struct.AuxData, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %iAuxOp, align 8
  %7 = load i32, ptr %iOp.addr, align 4
  %cmp1 = icmp eq i32 %6, %7
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load ptr, ptr %pAux, align 8
  %iAuxArg = getelementptr inbounds nuw %struct.AuxData, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %iAuxArg, align 4
  %cmp2 = icmp sge i32 %9, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.else

land.lhs.true3:                                   ; preds = %land.lhs.true
  %10 = load ptr, ptr %pAux, align 8
  %iAuxArg4 = getelementptr inbounds nuw %struct.AuxData, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %iAuxArg4, align 4
  %cmp5 = icmp sgt i32 %11, 31
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %land.lhs.true3
  %12 = load i32, ptr %mask.addr, align 4
  %13 = load ptr, ptr %pAux, align 8
  %iAuxArg7 = getelementptr inbounds nuw %struct.AuxData, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %iAuxArg7, align 4
  %shl = shl i32 1, %14
  %and = and i32 %12, %shl
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false6, %land.lhs.true3, %while.body
  %15 = load ptr, ptr %pAux, align 8
  %xDeleteAux = getelementptr inbounds nuw %struct.AuxData, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %xDeleteAux, align 8
  %tobool9 = icmp ne ptr %16, null
  br i1 %tobool9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  %17 = load ptr, ptr %pAux, align 8
  %xDeleteAux11 = getelementptr inbounds nuw %struct.AuxData, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %xDeleteAux11, align 8
  %19 = load ptr, ptr %pAux, align 8
  %pAux12 = getelementptr inbounds nuw %struct.AuxData, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %pAux12, align 8
  call void %18(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %21 = load ptr, ptr %pAux, align 8
  %pNextAux = getelementptr inbounds nuw %struct.AuxData, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %pNextAux, align 8
  %23 = load ptr, ptr %pp.addr, align 8
  store ptr %22, ptr %23, align 8
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load ptr, ptr %pAux, align 8
  call void @sqlite3DbFree(ptr noundef %24, ptr noundef %25)
  br label %if.end14

if.else:                                          ; preds = %lor.lhs.false6, %land.lhs.true, %lor.lhs.false
  %26 = load ptr, ptr %pAux, align 8
  %pNextAux13 = getelementptr inbounds nuw %struct.AuxData, ptr %26, i32 0, i32 4
  store ptr %pNextAux13, ptr %pp.addr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
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
