; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CellInfo = type { i64, ptr, i32, i16, i16 }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @btreeParseCellAdjustSizeForOverflow(ptr noundef %pPage, ptr noundef %pCell, ptr noundef %pInfo) #0 {
entry:
  %pPage.addr = alloca ptr, align 8
  %pCell.addr = alloca ptr, align 8
  %pInfo.addr = alloca ptr, align 8
  %minLocal = alloca i32, align 4
  %maxLocal = alloca i32, align 4
  %surplus = alloca i32, align 4
  store ptr %pPage, ptr %pPage.addr, align 8
  store ptr %pCell, ptr %pCell.addr, align 8
  store ptr %pInfo, ptr %pInfo.addr, align 8
  %0 = load ptr, ptr %pPage.addr, align 8
  %minLocal1 = getelementptr inbounds nuw %struct.MemPage, ptr %0, i32 0, i32 11
  %1 = load i16, ptr %minLocal1, align 8
  %conv = zext i16 %1 to i32
  store i32 %conv, ptr %minLocal, align 4
  %2 = load ptr, ptr %pPage.addr, align 8
  %maxLocal2 = getelementptr inbounds nuw %struct.MemPage, ptr %2, i32 0, i32 10
  %3 = load i16, ptr %maxLocal2, align 2
  %conv3 = zext i16 %3 to i32
  store i32 %conv3, ptr %maxLocal, align 4
  %4 = load i32, ptr %minLocal, align 4
  %5 = load ptr, ptr %pInfo.addr, align 8
  %nPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %nPayload, align 8
  %7 = load i32, ptr %minLocal, align 4
  %sub = sub i32 %6, %7
  %8 = load ptr, ptr %pPage.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.MemPage, ptr %8, i32 0, i32 18
  %9 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 16
  %10 = load i32, ptr %usableSize, align 4
  %sub4 = sub i32 %10, 4
  %rem = urem i32 %sub, %sub4
  %add = add i32 %4, %rem
  store i32 %add, ptr %surplus, align 4
  %11 = load i32, ptr %surplus, align 4
  %12 = load i32, ptr %maxLocal, align 4
  %cmp = icmp sle i32 %11, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load i32, ptr %surplus, align 4
  %conv6 = trunc i32 %13 to i16
  %14 = load ptr, ptr %pInfo.addr, align 8
  %nLocal = getelementptr inbounds nuw %struct.CellInfo, ptr %14, i32 0, i32 3
  store i16 %conv6, ptr %nLocal, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, ptr %minLocal, align 4
  %conv7 = trunc i32 %15 to i16
  %16 = load ptr, ptr %pInfo.addr, align 8
  %nLocal8 = getelementptr inbounds nuw %struct.CellInfo, ptr %16, i32 0, i32 3
  store i16 %conv7, ptr %nLocal8, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %pInfo.addr, align 8
  %pPayload = getelementptr inbounds nuw %struct.CellInfo, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %pPayload, align 8
  %19 = load ptr, ptr %pInfo.addr, align 8
  %nLocal9 = getelementptr inbounds nuw %struct.CellInfo, ptr %19, i32 0, i32 3
  %20 = load i16, ptr %nLocal9, align 4
  %idxprom = zext i16 %20 to i64
  %arrayidx = getelementptr inbounds nuw i8, ptr %18, i64 %idxprom
  %21 = load ptr, ptr %pCell.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv10 = trunc i64 %sub.ptr.sub to i16
  %conv11 = zext i16 %conv10 to i32
  %add12 = add nsw i32 %conv11, 4
  %conv13 = trunc i32 %add12 to i16
  %22 = load ptr, ptr %pInfo.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.CellInfo, ptr %22, i32 0, i32 4
  store i16 %conv13, ptr %nSize, align 2
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
