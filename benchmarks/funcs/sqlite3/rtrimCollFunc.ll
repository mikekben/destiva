; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @binCollFunc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @rtrimCollFunc(ptr noundef %pUser, i32 noundef %nKey1, ptr noundef %pKey1, i32 noundef %nKey2, ptr noundef %pKey2) #0 {
entry:
  %pUser.addr = alloca ptr, align 8
  %nKey1.addr = alloca i32, align 4
  %pKey1.addr = alloca ptr, align 8
  %nKey2.addr = alloca i32, align 4
  %pKey2.addr = alloca ptr, align 8
  %pK1 = alloca ptr, align 8
  %pK2 = alloca ptr, align 8
  store ptr %pUser, ptr %pUser.addr, align 8
  store i32 %nKey1, ptr %nKey1.addr, align 4
  store ptr %pKey1, ptr %pKey1.addr, align 8
  store i32 %nKey2, ptr %nKey2.addr, align 4
  store ptr %pKey2, ptr %pKey2.addr, align 8
  %0 = load ptr, ptr %pKey1.addr, align 8
  store ptr %0, ptr %pK1, align 8
  %1 = load ptr, ptr %pKey2.addr, align 8
  store ptr %1, ptr %pK2, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %nKey1.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %pK1, align 8
  %4 = load i32, ptr %nKey1.addr, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, ptr %nKey1.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %nKey1.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond2

while.cond2:                                      ; preds = %while.body12, %while.end
  %8 = load i32, ptr %nKey2.addr, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %land.rhs4, label %land.end11

land.rhs4:                                        ; preds = %while.cond2
  %9 = load ptr, ptr %pK2, align 8
  %10 = load i32, ptr %nKey2.addr, align 4
  %sub5 = sub nsw i32 %10, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 %idxprom6
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 32
  br label %land.end11

land.end11:                                       ; preds = %land.rhs4, %while.cond2
  %12 = phi i1 [ false, %while.cond2 ], [ %cmp9, %land.rhs4 ]
  br i1 %12, label %while.body12, label %while.end14

while.body12:                                     ; preds = %land.end11
  %13 = load i32, ptr %nKey2.addr, align 4
  %dec13 = add nsw i32 %13, -1
  store i32 %dec13, ptr %nKey2.addr, align 4
  br label %while.cond2, !llvm.loop !8

while.end14:                                      ; preds = %land.end11
  %14 = load ptr, ptr %pUser.addr, align 8
  %15 = load i32, ptr %nKey1.addr, align 4
  %16 = load ptr, ptr %pKey1.addr, align 8
  %17 = load i32, ptr %nKey2.addr, align 4
  %18 = load ptr, ptr %pKey2.addr, align 8
  %call = call i32 @binCollFunc(ptr noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef %17, ptr noundef %18)
  ret i32 %call
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
