; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BtCursor = type { i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, %struct.CellInfo, i64, i32, i8, i8, i16, [19 x i16], ptr, ptr, [19 x ptr] }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @moveToChild(ptr noundef %pCur, i32 noundef %newPgno) #0 {
entry:
  %retval = alloca i32, align 4
  %pCur.addr = alloca ptr, align 8
  %newPgno.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %pCur, ptr %pCur.addr, align 8
  store i32 %newPgno, ptr %newPgno.addr, align 4
  %0 = load ptr, ptr %pCur.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.BtCursor, ptr %0, i32 0, i32 8
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pCur.addr, align 8
  %iPage = getelementptr inbounds nuw %struct.BtCursor, ptr %2, i32 0, i32 13
  %3 = load i8, ptr %iPage, align 4
  %conv = sext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @sqlite3CorruptError(i32 noundef 68452)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pCur.addr, align 8
  %info = getelementptr inbounds nuw %struct.BtCursor, ptr %4, i32 0, i32 10
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %info, i32 0, i32 4
  store i16 0, ptr %nSize, align 2
  %5 = load ptr, ptr %pCur.addr, align 8
  %curFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %5, i32 0, i32 1
  %6 = load i8, ptr %curFlags, align 1
  %conv3 = zext i8 %6 to i32
  %and = and i32 %conv3, -7
  %conv4 = trunc i32 %and to i8
  store i8 %conv4, ptr %curFlags, align 1
  %7 = load ptr, ptr %pCur.addr, align 8
  %ix = getelementptr inbounds nuw %struct.BtCursor, ptr %7, i32 0, i32 15
  %8 = load i16, ptr %ix, align 2
  %9 = load ptr, ptr %pCur.addr, align 8
  %aiIdx = getelementptr inbounds nuw %struct.BtCursor, ptr %9, i32 0, i32 16
  %10 = load ptr, ptr %pCur.addr, align 8
  %iPage5 = getelementptr inbounds nuw %struct.BtCursor, ptr %10, i32 0, i32 13
  %11 = load i8, ptr %iPage5, align 4
  %idxprom = sext i8 %11 to i64
  %arrayidx = getelementptr inbounds [19 x i16], ptr %aiIdx, i64 0, i64 %idxprom
  store i16 %8, ptr %arrayidx, align 2
  %12 = load ptr, ptr %pCur.addr, align 8
  %pPage = getelementptr inbounds nuw %struct.BtCursor, ptr %12, i32 0, i32 18
  %13 = load ptr, ptr %pPage, align 8
  %14 = load ptr, ptr %pCur.addr, align 8
  %apPage = getelementptr inbounds nuw %struct.BtCursor, ptr %14, i32 0, i32 19
  %15 = load ptr, ptr %pCur.addr, align 8
  %iPage6 = getelementptr inbounds nuw %struct.BtCursor, ptr %15, i32 0, i32 13
  %16 = load i8, ptr %iPage6, align 4
  %idxprom7 = sext i8 %16 to i64
  %arrayidx8 = getelementptr inbounds [19 x ptr], ptr %apPage, i64 0, i64 %idxprom7
  store ptr %13, ptr %arrayidx8, align 8
  %17 = load ptr, ptr %pCur.addr, align 8
  %ix9 = getelementptr inbounds nuw %struct.BtCursor, ptr %17, i32 0, i32 15
  store i16 0, ptr %ix9, align 2
  %18 = load ptr, ptr %pCur.addr, align 8
  %iPage10 = getelementptr inbounds nuw %struct.BtCursor, ptr %18, i32 0, i32 13
  %19 = load i8, ptr %iPage10, align 4
  %inc = add i8 %19, 1
  store i8 %inc, ptr %iPage10, align 4
  %20 = load ptr, ptr %pBt, align 8
  %21 = load i32, ptr %newPgno.addr, align 4
  %22 = load ptr, ptr %pCur.addr, align 8
  %pPage11 = getelementptr inbounds nuw %struct.BtCursor, ptr %22, i32 0, i32 18
  %23 = load ptr, ptr %pCur.addr, align 8
  %24 = load ptr, ptr %pCur.addr, align 8
  %curPagerFlags = getelementptr inbounds nuw %struct.BtCursor, ptr %24, i32 0, i32 2
  %25 = load i8, ptr %curPagerFlags, align 2
  %conv12 = zext i8 %25 to i32
  %call13 = call i32 @getAndInitPage(ptr noundef %20, i32 noundef %21, ptr noundef %pPage11, ptr noundef %23, i32 noundef %conv12)
  store i32 %call13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden i32 @getAndInitPage(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
