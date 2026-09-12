; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.AuxData = type { i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_get_auxdata(ptr noundef %pCtx, i32 noundef %iArg) #0 {
entry:
  %retval = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %iArg.addr = alloca i32, align 4
  %pAuxData = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %iArg, ptr %iArg.addr, align 4
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.sqlite3_context, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pVdbe, align 8
  %pAuxData1 = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 48
  %2 = load ptr, ptr %pAuxData1, align 8
  store ptr %2, ptr %pAuxData, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pAuxData, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pAuxData, align 8
  %iAuxArg = getelementptr inbounds nuw %struct.AuxData, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %iAuxArg, align 4
  %6 = load i32, ptr %iArg.addr, align 4
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %pAuxData, align 8
  %iAuxOp = getelementptr inbounds nuw %struct.AuxData, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %iAuxOp, align 8
  %9 = load ptr, ptr %pCtx.addr, align 8
  %iOp = getelementptr inbounds nuw %struct.sqlite3_context, ptr %9, i32 0, i32 4
  %10 = load i32, ptr %iOp, align 8
  %cmp2 = icmp eq i32 %8, %10
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %11 = load i32, ptr %iArg.addr, align 4
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %12 = load ptr, ptr %pAuxData, align 8
  %pAux = getelementptr inbounds nuw %struct.AuxData, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pAux, align 8
  store ptr %13, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load ptr, ptr %pAuxData, align 8
  %pNextAux = getelementptr inbounds nuw %struct.AuxData, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %pNextAux, align 8
  store ptr %15, ptr %pAuxData, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
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
