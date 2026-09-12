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
define hidden i32 @moveToRightmost(ptr noundef %pCur) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %pgno = alloca i32, align 4
  %rc = alloca i32, align 4
  %pPage = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pPage, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %pCur.addr, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pPage1, align 8
  store ptr %1, ptr %pPage, align 8
  %leaf = getelementptr inbounds nuw %struct.MemPage, ptr %1, i32 0, i32 5
  %2 = load i8, ptr %leaf, align 8
  %tobool = icmp ne i8 %2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %pPage, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %3, i32 0, i32 19
  %4 = load ptr, ptr %aData, align 8
  %5 = load ptr, ptr %pPage, align 8
  %hdrOffset = getelementptr inbounds nuw %struct.MemPage, ptr %5, i32 0, i32 6
  %6 = load i8, ptr %hdrOffset, align 1
  %conv = zext i8 %6 to i32
  %add = add nsw i32 %conv, 8
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %call = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  store i32 %call, ptr %pgno, align 4
  %7 = load ptr, ptr %pPage, align 8
  %nCell = getelementptr inbounds nuw %struct.MemPage, ptr %7, i32 0, i32 14
  %8 = load i16, ptr %nCell, align 8
  %9 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 15
  store i16 %8, ptr %ix, align 2
  %10 = load ptr, ptr %pCur.addr, align 8
  %11 = load i32, ptr %pgno, align 4
  %call2 = call i32 @moveToChild(ptr noundef %10, i32 noundef %11)
  store i32 %call2, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %tobool3 = icmp ne i32 %12, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load i32, ptr %rc, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %14 = load ptr, ptr %pPage, align 8
  %nCell4 = getelementptr inbounds nuw %struct.MemPage, ptr %14, i32 0, i32 14
  %15 = load i16, ptr %nCell4, align 8
  %conv5 = zext i16 %15 to i32
  %sub = sub nsw i32 %conv5, 1
  %conv6 = trunc i32 %sub to i16
  %16 = load ptr, ptr %pCur.addr, align 8
  %ix7 = getelementptr inbounds nuw %struct.BtCursor, ptr %16, i32 0, i32 15
  store i16 %conv6, ptr %ix7, align 2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
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
