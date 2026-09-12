; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.510 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.776 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden ptr @explainIndexColumnName(ptr noundef %pIdx, i32 noundef %i) #0 {
entry:
  %retval = alloca ptr, align 8
  %pIdx.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  %0 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aiColumn, align 8
  %2 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, ptr %i.addr, align 4
  %4 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %4, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @.str.776, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %i.addr, align 4
  %cmp2 = icmp eq i32 %5, -1
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store ptr @.str.510, ptr %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pTable, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %aCol, align 8
  %9 = load i32, ptr %i.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds %struct.Column, ptr %8, i64 %idxprom6
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx7, i32 0, i32 0
  %10 = load ptr, ptr %zName, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
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
