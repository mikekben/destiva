; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3HexToInt(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3HexToBlob(ptr noundef %db, ptr noundef %z, i32 noundef %n) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %zBlob = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %1, 2
  %add = add nsw i32 %div, 1
  %conv = sext i32 %add to i64
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %conv)
  store ptr %call, ptr %zBlob, align 8
  %2 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %n.addr, align 4
  %3 = load ptr, ptr %zBlob, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %z.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %8 to i32
  %call3 = call zeroext i8 @sqlite3HexToInt(i32 noundef %conv2)
  %conv4 = zext i8 %call3 to i32
  %shl = shl i32 %conv4, 4
  %9 = load ptr, ptr %z.addr, align 8
  %10 = load i32, ptr %i, align 4
  %add5 = add nsw i32 %10, 1
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 %idxprom6
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %call9 = call zeroext i8 @sqlite3HexToInt(i32 noundef %conv8)
  %conv10 = zext i8 %call9 to i32
  %or = or i32 %shl, %conv10
  %conv11 = trunc i32 %or to i8
  %12 = load ptr, ptr %zBlob, align 8
  %13 = load i32, ptr %i, align 4
  %div12 = sdiv i32 %13, 2
  %idxprom13 = sext i32 %div12 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 %idxprom13
  store i8 %conv11, ptr %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %add15 = add nsw i32 %14, 2
  store i32 %add15, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %zBlob, align 8
  %16 = load i32, ptr %i, align 4
  %div16 = sdiv i32 %16, 2
  %idxprom17 = sext i32 %div16 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %15, i64 %idxprom17
  store i8 0, ptr %arrayidx18, align 1
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %17 = load ptr, ptr %zBlob, align 8
  ret ptr %17
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
