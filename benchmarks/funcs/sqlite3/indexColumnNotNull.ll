; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define hidden i32 @indexColumnNotNull(ptr noundef %pIdx, i32 noundef %iCol) #0 {
entry:
  %retval = alloca i32, align 4
  %pIdx.addr = alloca ptr, align 8
  %iCol.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %pIdx, ptr %pIdx.addr, align 8
  store i32 %iCol, ptr %iCol.addr, align 4
  %0 = load ptr, ptr %pIdx.addr, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aiColumn, align 8
  %2 = load i32, ptr %iCol.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, ptr %j, align 4
  %4 = load i32, ptr %j, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pIdx.addr, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %pTable, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %aCol, align 8
  %8 = load i32, ptr %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds %struct.Column, ptr %7, i64 %idxprom2
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %arrayidx3, i32 0, i32 3
  %9 = load i8, ptr %notNull, align 8
  %conv4 = zext i8 %9 to i32
  store i32 %conv4, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i32, ptr %j, align 4
  %cmp5 = icmp eq i32 %10, -1
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then7, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
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
