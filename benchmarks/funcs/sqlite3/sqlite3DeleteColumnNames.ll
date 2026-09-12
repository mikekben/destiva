; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DeleteColumnNames(ptr noundef %db, ptr noundef %pTable) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTable.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pCol = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTable, ptr %pTable.addr, align 8
  %0 = load ptr, ptr %pTable.addr, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %aCol, align 8
  store ptr %1, ptr %pCol, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %pTable.addr, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %3, i32 0, i32 11
  %4 = load i16, ptr %nCol, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp slt i32 %2, %conv
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %pCol, align 8
  %zName = getelementptr inbounds nuw %struct.Column, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %pCol, align 8
  %pDflt = getelementptr inbounds nuw %struct.Column, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pDflt, align 8
  call void @sqlite3ExprDelete(ptr noundef %8, ptr noundef %10)
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %pCol, align 8
  %zColl = getelementptr inbounds nuw %struct.Column, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %zColl, align 8
  call void @sqlite3DbFree(ptr noundef %11, ptr noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  %15 = load ptr, ptr %pCol, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Column, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %pCol, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %db.addr, align 8
  %17 = load ptr, ptr %pTable.addr, align 8
  %aCol3 = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %aCol3, align 8
  call void @sqlite3DbFree(ptr noundef %16, ptr noundef %18)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
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
