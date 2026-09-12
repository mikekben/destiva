; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3CtypeMap = external hidden constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrNDup(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3DbSpanDup(ptr noundef %db, ptr noundef %zStart, ptr noundef %zEnd) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zStart.addr = alloca ptr, align 8
  %zEnd.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zStart, ptr %zStart.addr, align 8
  store ptr %zEnd, ptr %zEnd.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %zStart.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %arrayidx1 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %zStart.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %zStart.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %zEnd.addr, align 8
  %5 = load ptr, ptr %zStart.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv2, ptr %n, align 4
  br label %while.cond3

while.cond3:                                      ; preds = %while.body12, %while.end
  %6 = load i32, ptr %n, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond3
  %7 = load ptr, ptr %zStart.addr, align 8
  %8 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %7, i64 %idxprom5
  %9 = load i8, ptr %arrayidx6, align 1
  %idxprom7 = zext i8 %9 to i64
  %arrayidx8 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom7
  %10 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %10 to i32
  %and10 = and i32 %conv9, 1
  %tobool11 = icmp ne i32 %and10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond3
  %11 = phi i1 [ false, %while.cond3 ], [ %tobool11, %land.rhs ]
  br i1 %11, label %while.body12, label %while.end13

while.body12:                                     ; preds = %land.end
  %12 = load i32, ptr %n, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %n, align 4
  br label %while.cond3, !llvm.loop !8

while.end13:                                      ; preds = %land.end
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load ptr, ptr %zStart.addr, align 8
  %15 = load i32, ptr %n, align 4
  %conv14 = sext i32 %15 to i64
  %call = call ptr @sqlite3DbStrNDup(ptr noundef %13, ptr noundef %14, i64 noundef %conv14)
  ret ptr %call
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
!8 = distinct !{!8, !7}
