; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releaseMemArray(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @initMemArray(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeSetNumCols(ptr noundef %p, i32 noundef %nResColumn) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %nResColumn.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %nResColumn, ptr %nResColumn.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %nResColumn2 = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 31
  %3 = load i16, ptr %nResColumn2, align 8
  %tobool = icmp ne i16 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %aColName = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 26
  %5 = load ptr, ptr %aColName, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %nResColumn3 = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 31
  %7 = load i16, ptr %nResColumn3, align 8
  %conv = zext i16 %7 to i32
  %mul = mul nsw i32 %conv, 2
  call void @releaseMemArray(ptr noundef %5, i32 noundef %mul)
  %8 = load ptr, ptr %db, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %aColName4 = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 26
  %10 = load ptr, ptr %aColName4, align 8
  call void @sqlite3DbFree(ptr noundef %8, ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %nResColumn.addr, align 4
  %mul5 = mul nsw i32 %11, 2
  store i32 %mul5, ptr %n, align 4
  %12 = load i32, ptr %nResColumn.addr, align 4
  %conv6 = trunc i32 %12 to i16
  %13 = load ptr, ptr %p.addr, align 8
  %nResColumn7 = getelementptr inbounds nuw %struct.Vdbe, ptr %13, i32 0, i32 31
  store i16 %conv6, ptr %nResColumn7, align 8
  %14 = load ptr, ptr %db, align 8
  %15 = load i32, ptr %n, align 4
  %conv8 = sext i32 %15 to i64
  %mul9 = mul i64 56, %conv8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %14, i64 noundef %mul9)
  %16 = load ptr, ptr %p.addr, align 8
  %aColName10 = getelementptr inbounds nuw %struct.Vdbe, ptr %16, i32 0, i32 26
  store ptr %call, ptr %aColName10, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %aColName11 = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 26
  %18 = load ptr, ptr %aColName11, align 8
  %cmp = icmp eq ptr %18, null
  br i1 %cmp, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  br label %return

if.end14:                                         ; preds = %if.end
  %19 = load ptr, ptr %p.addr, align 8
  %aColName15 = getelementptr inbounds nuw %struct.Vdbe, ptr %19, i32 0, i32 26
  %20 = load ptr, ptr %aColName15, align 8
  %21 = load i32, ptr %n, align 4
  %22 = load ptr, ptr %db, align 8
  call void @initMemArray(ptr noundef %20, i32 noundef %21, ptr noundef %22, i16 noundef zeroext 1)
  br label %return

return:                                           ; preds = %if.end14, %if.then13
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
