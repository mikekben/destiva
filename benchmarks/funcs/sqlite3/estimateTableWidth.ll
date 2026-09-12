; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3LogEst(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @estimateTableWidth(ptr noundef %pTab) #0 {
entry:
  %pTab.addr = alloca ptr, align 8
  %wTable = alloca i32, align 4
  %pTabCol = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pTab, ptr %pTab.addr, align 8
  store i32 0, ptr %wTable, align 4
  %0 = load ptr, ptr %pTab.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 11
  %1 = load i16, ptr %nCol, align 2
  %conv = sext i16 %1 to i32
  store i32 %conv, ptr %i, align 4
  %2 = load ptr, ptr %pTab.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %aCol, align 8
  store ptr %3, ptr %pTabCol, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pTabCol, align 8
  %szEst = getelementptr inbounds nuw %struct.Column, ptr %5, i32 0, i32 5
  %6 = load i8, ptr %szEst, align 2
  %conv2 = zext i8 %6 to i32
  %7 = load i32, ptr %wTable, align 4
  %add = add i32 %7, %conv2
  store i32 %add, ptr %wTable, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %i, align 4
  %9 = load ptr, ptr %pTabCol, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Column, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %pTabCol, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %pTab.addr, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 10
  %11 = load i16, ptr %iPKey, align 4
  %conv3 = sext i16 %11 to i32
  %cmp4 = icmp slt i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load i32, ptr %wTable, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %wTable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %13 = load i32, ptr %wTable, align 4
  %mul = mul i32 %13, 4
  %conv6 = zext i32 %mul to i64
  %call = call signext i16 @sqlite3LogEst(i64 noundef %conv6)
  %14 = load ptr, ptr %pTab.addr, align 8
  %szTabRow = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 13
  store i16 %call, ptr %szTabRow, align 2
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
