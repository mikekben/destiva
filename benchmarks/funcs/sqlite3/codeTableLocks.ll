; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.TableLock = type { i32, i32, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @codeTableLocks(ptr noundef %pParse) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pVdbe = alloca ptr, align 8
  %p = alloca ptr, align 8
  %p1 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %call = call ptr @sqlite3GetVdbe(ptr noundef %0)
  store ptr %call, ptr %pVdbe, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %pParse.addr, align 8
  %nTableLock = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 32
  %3 = load i32, ptr %nTableLock, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pParse.addr, align 8
  %aTableLock = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 33
  %5 = load ptr, ptr %aTableLock, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.TableLock, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %iDb = getelementptr inbounds nuw %struct.TableLock, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %iDb, align 8
  store i32 %8, ptr %p1, align 4
  %9 = load ptr, ptr %pVdbe, align 8
  %10 = load i32, ptr %p1, align 4
  %11 = load ptr, ptr %p, align 8
  %iTab = getelementptr inbounds nuw %struct.TableLock, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %iTab, align 4
  %13 = load ptr, ptr %p, align 8
  %isWriteLock = getelementptr inbounds nuw %struct.TableLock, ptr %13, i32 0, i32 2
  %14 = load i8, ptr %isWriteLock, align 8
  %conv = zext i8 %14 to i32
  %15 = load ptr, ptr %p, align 8
  %zLockName = getelementptr inbounds nuw %struct.TableLock, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %zLockName, align 8
  %call1 = call i32 @sqlite3VdbeAddOp4(ptr noundef %9, i32 noundef 159, i32 noundef %10, i32 noundef %12, i32 noundef %conv, ptr noundef %16, i32 noundef -1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
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
