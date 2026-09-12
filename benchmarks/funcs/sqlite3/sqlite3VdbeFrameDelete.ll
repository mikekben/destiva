; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeFrame = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releaseMemArray(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeFrameDelete(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %aMem = alloca ptr, align 8
  %apCsr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %arrayidx, ptr %aMem, align 8
  %1 = load ptr, ptr %aMem, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %nChildMem = getelementptr inbounds nuw %struct.VdbeFrame, ptr %2, i32 0, i32 14
  %3 = load i32, ptr %nChildMem, align 8
  %idxprom = sext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds %struct.sqlite3_value, ptr %1, i64 %idxprom
  store ptr %arrayidx1, ptr %apCsr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %nChildCsr = getelementptr inbounds nuw %struct.VdbeFrame, ptr %5, i32 0, i32 15
  %6 = load i32, ptr %nChildCsr, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %p.addr, align 8
  %v = getelementptr inbounds nuw %struct.VdbeFrame, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %v, align 8
  %9 = load ptr, ptr %apCsr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 %idxprom2
  %11 = load ptr, ptr %arrayidx3, align 8
  call void @sqlite3VdbeFreeCursor(ptr noundef %8, ptr noundef %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %aMem, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %nChildMem4 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %14, i32 0, i32 14
  %15 = load i32, ptr %nChildMem4, align 8
  call void @releaseMemArray(ptr noundef %13, i32 noundef %15)
  %16 = load ptr, ptr %p.addr, align 8
  %v5 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %v5, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %db, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %pAuxData = getelementptr inbounds nuw %struct.VdbeFrame, ptr %19, i32 0, i32 9
  call void @sqlite3VdbeDeleteAuxData(ptr noundef %18, ptr noundef %pAuxData, i32 noundef -1, i32 noundef 0)
  %20 = load ptr, ptr %p.addr, align 8
  %v6 = getelementptr inbounds nuw %struct.VdbeFrame, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %v6, align 8
  %db7 = getelementptr inbounds nuw %struct.Vdbe, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %db7, align 8
  %23 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DbFree(ptr noundef %22, ptr noundef %23)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeDeleteAuxData(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeFreeCursor(ptr noundef, ptr noundef) #0

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
