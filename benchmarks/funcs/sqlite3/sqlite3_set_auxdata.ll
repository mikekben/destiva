; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.AuxData = type { i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @sqlite3_set_auxdata(ptr noundef %pCtx, i32 noundef %iArg, ptr noundef %pAux, ptr noundef %xDelete) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %iArg.addr = alloca i32, align 4
  %pAux.addr = alloca ptr, align 8
  %xDelete.addr = alloca ptr, align 8
  %pAuxData = alloca ptr, align 8
  %pVdbe = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %iArg, ptr %iArg.addr, align 4
  store ptr %pAux, ptr %pAux.addr, align 8
  store ptr %xDelete, ptr %xDelete.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVdbe1 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pVdbe1, align 8
  store ptr %1, ptr %pVdbe, align 8
  %2 = load ptr, ptr %pVdbe, align 8
  %pAuxData2 = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 48
  %3 = load ptr, ptr %pAuxData2, align 8
  store ptr %3, ptr %pAuxData, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %pAuxData, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pAuxData, align 8
  %iAuxArg = getelementptr inbounds nuw %struct.AuxData, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %iAuxArg, align 4
  %7 = load i32, ptr %iArg.addr, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %pAuxData, align 8
  %iAuxOp = getelementptr inbounds nuw %struct.AuxData, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %iAuxOp, align 8
  %10 = load ptr, ptr %pCtx.addr, align 8
  %iOp = getelementptr inbounds nuw %struct.sqlite3_context, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %iOp, align 8
  %cmp3 = icmp eq i32 %9, %11
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load i32, ptr %iArg.addr, align 4
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %pAuxData, align 8
  %pNextAux = getelementptr inbounds nuw %struct.AuxData, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pNextAux, align 8
  store ptr %14, ptr %pAuxData, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %15 = load ptr, ptr %pAuxData, align 8
  %cmp5 = icmp eq ptr %15, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.end
  %16 = load ptr, ptr %pVdbe, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %17, i64 noundef 32)
  store ptr %call, ptr %pAuxData, align 8
  %18 = load ptr, ptr %pAuxData, align 8
  %tobool7 = icmp ne ptr %18, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then6
  br label %failed

if.end9:                                          ; preds = %if.then6
  %19 = load ptr, ptr %pCtx.addr, align 8
  %iOp10 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %19, i32 0, i32 4
  %20 = load i32, ptr %iOp10, align 8
  %21 = load ptr, ptr %pAuxData, align 8
  %iAuxOp11 = getelementptr inbounds nuw %struct.AuxData, ptr %21, i32 0, i32 0
  store i32 %20, ptr %iAuxOp11, align 8
  %22 = load i32, ptr %iArg.addr, align 4
  %23 = load ptr, ptr %pAuxData, align 8
  %iAuxArg12 = getelementptr inbounds nuw %struct.AuxData, ptr %23, i32 0, i32 1
  store i32 %22, ptr %iAuxArg12, align 4
  %24 = load ptr, ptr %pVdbe, align 8
  %pAuxData13 = getelementptr inbounds nuw %struct.Vdbe, ptr %24, i32 0, i32 48
  %25 = load ptr, ptr %pAuxData13, align 8
  %26 = load ptr, ptr %pAuxData, align 8
  %pNextAux14 = getelementptr inbounds nuw %struct.AuxData, ptr %26, i32 0, i32 4
  store ptr %25, ptr %pNextAux14, align 8
  %27 = load ptr, ptr %pAuxData, align 8
  %28 = load ptr, ptr %pVdbe, align 8
  %pAuxData15 = getelementptr inbounds nuw %struct.Vdbe, ptr %28, i32 0, i32 48
  store ptr %27, ptr %pAuxData15, align 8
  %29 = load ptr, ptr %pCtx.addr, align 8
  %isError = getelementptr inbounds nuw %struct.sqlite3_context, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %isError, align 4
  %cmp16 = icmp eq i32 %30, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end9
  %31 = load ptr, ptr %pCtx.addr, align 8
  %isError18 = getelementptr inbounds nuw %struct.sqlite3_context, ptr %31, i32 0, i32 5
  store i32 -1, ptr %isError18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end9
  br label %if.end25

if.else:                                          ; preds = %for.end
  %32 = load ptr, ptr %pAuxData, align 8
  %xDeleteAux = getelementptr inbounds nuw %struct.AuxData, ptr %32, i32 0, i32 3
  %33 = load ptr, ptr %xDeleteAux, align 8
  %tobool20 = icmp ne ptr %33, null
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.else
  %34 = load ptr, ptr %pAuxData, align 8
  %xDeleteAux22 = getelementptr inbounds nuw %struct.AuxData, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %xDeleteAux22, align 8
  %36 = load ptr, ptr %pAuxData, align 8
  %pAux23 = getelementptr inbounds nuw %struct.AuxData, ptr %36, i32 0, i32 2
  %37 = load ptr, ptr %pAux23, align 8
  call void %35(ptr noundef %37)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end19
  %38 = load ptr, ptr %pAux.addr, align 8
  %39 = load ptr, ptr %pAuxData, align 8
  %pAux26 = getelementptr inbounds nuw %struct.AuxData, ptr %39, i32 0, i32 2
  store ptr %38, ptr %pAux26, align 8
  %40 = load ptr, ptr %xDelete.addr, align 8
  %41 = load ptr, ptr %pAuxData, align 8
  %xDeleteAux27 = getelementptr inbounds nuw %struct.AuxData, ptr %41, i32 0, i32 3
  store ptr %40, ptr %xDeleteAux27, align 8
  br label %if.end30

failed:                                           ; preds = %if.then8
  %42 = load ptr, ptr %xDelete.addr, align 8
  %tobool28 = icmp ne ptr %42, null
  br i1 %tobool28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %failed
  %43 = load ptr, ptr %xDelete.addr, align 8
  %44 = load ptr, ptr %pAux.addr, align 8
  call void %43(ptr noundef %44)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %failed, %if.end25
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

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
