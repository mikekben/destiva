; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @moveToChild(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @moveToLeftmost(ptr noundef %pCur) #0 {
entry:
  %pCur.addr = alloca ptr, align 8
  %pgno = alloca i32, align 4
  %rc = alloca i32, align 4
  %pPage = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 0, ptr %rc, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load ptr, ptr %pCur.addr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtCursor, ptr %1, i32 0, i32 18
  %2 = load ptr, ptr %pPage1, align 8
  store ptr %2, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 5
  %3 = load i8, ptr %leaf, align 8
  %tobool = icmp ne i8 %3, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 19
  %6 = load ptr, ptr %aData, align 8
  %7 = load ptr, ptr %pPage, align 8
  %maskPage = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 15
  %8 = load i16, ptr %maskPage, align 2
  %conv = zext i16 %8 to i32
  %9 = load ptr, ptr %pPage, align 8
  %aCellIdx = getelementptr inbounds nuw %struct.MemPage, ptr %9, i32 0, i32 21
  %10 = load ptr, ptr %aCellIdx, align 8
  %11 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %11, i32 0, i32 15
  %12 = load i16, ptr %ix, align 2
  %conv2 = zext i16 %12 to i32
  %mul = mul nsw i32 2, %conv2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %arrayidx3 = getelementptr inbounds i8, ptr %arrayidx, i64 0
  %13 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %13 to i32
  %shl = shl i32 %conv4, 8
  %14 = load ptr, ptr %pPage, align 8
  %aCellIdx5 = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 21
  %15 = load ptr, ptr %aCellIdx5, align 8
  %16 = load ptr, ptr %pCur.addr, align 8
  %ix6 = getelementptr inbounds nuw %struct.BtCursor, ptr %16, i32 0, i32 15
  %17 = load i16, ptr %ix6, align 2
  %conv7 = zext i16 %17 to i32
  %mul8 = mul nsw i32 2, %conv7
  %idxprom9 = sext i32 %mul8 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %15, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds i8, ptr %arrayidx10, i64 1
  %18 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %18 to i32
  %or = or i32 %shl, %conv12
  %and = and i32 %conv, %or
  %idx.ext = sext i32 %and to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  %call = call i32 @sqlite3Get4byte(ptr noundef %add.ptr)
  store i32 %call, ptr %pgno, align 4
  %19 = load ptr, ptr %pCur.addr, align 8
  %20 = load i32, ptr %pgno, align 4
  %call13 = call i32 @moveToChild(ptr noundef %19, i32 noundef %20)
  store i32 %call13, ptr %rc, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %21 = load i32, ptr %rc, align 4
  ret i32 %21
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
