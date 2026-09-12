; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.SubProgram = type { ptr, i32, i32, i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeClearObject(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pSub = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %aColName = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 26
  %1 = load ptr, ptr %aColName, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %nResColumn = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 31
  %3 = load i16, ptr %nResColumn, align 8
  %conv = zext i16 %3 to i32
  %mul = mul nsw i32 %conv, 2
  call void @releaseMemArray(ptr noundef %1, i32 noundef %mul)
  %4 = load ptr, ptr %p.addr, align 8
  %pProgram = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 47
  %5 = load ptr, ptr %pProgram, align 8
  store ptr %5, ptr %pSub, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %pSub, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pSub, align 8
  %pNext1 = getelementptr inbounds nuw %struct.SubProgram, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %pNext1, align 8
  store ptr %8, ptr %pNext, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %pSub, align 8
  %aOp = getelementptr inbounds nuw %struct.SubProgram, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %aOp, align 8
  %12 = load ptr, ptr %pSub, align 8
  %nOp = getelementptr inbounds nuw %struct.SubProgram, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nOp, align 8
  call void @vdbeFreeOpArray(ptr noundef %9, ptr noundef %11, i32 noundef %13)
  %14 = load ptr, ptr %db.addr, align 8
  %15 = load ptr, ptr %pSub, align 8
  call void @sqlite3DbFree(ptr noundef %14, ptr noundef %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load ptr, ptr %pNext, align 8
  store ptr %16, ptr %pSub, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %p.addr, align 8
  %magic = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 6
  %18 = load i32, ptr %magic, align 4
  %cmp = icmp ne i32 %18, 381479589
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %19 = load ptr, ptr %p.addr, align 8
  %aVar = getelementptr inbounds nuw %struct.Vdbe, ptr %19, i32 0, i32 22
  %20 = load ptr, ptr %aVar, align 8
  %21 = load ptr, ptr %p.addr, align 8
  %nVar = getelementptr inbounds nuw %struct.Vdbe, ptr %21, i32 0, i32 4
  %22 = load i16, ptr %nVar, align 8
  %conv3 = sext i16 %22 to i32
  call void @releaseMemArray(ptr noundef %20, i32 noundef %conv3)
  %23 = load ptr, ptr %db.addr, align 8
  %24 = load ptr, ptr %p.addr, align 8
  %pVList = getelementptr inbounds nuw %struct.Vdbe, ptr %24, i32 0, i32 29
  %25 = load ptr, ptr %pVList, align 8
  call void @sqlite3DbFree(ptr noundef %23, ptr noundef %25)
  %26 = load ptr, ptr %db.addr, align 8
  %27 = load ptr, ptr %p.addr, align 8
  %pFree = getelementptr inbounds nuw %struct.Vdbe, ptr %27, i32 0, i32 42
  %28 = load ptr, ptr %pFree, align 8
  call void @sqlite3DbFree(ptr noundef %26, ptr noundef %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %29 = load ptr, ptr %db.addr, align 8
  %30 = load ptr, ptr %p.addr, align 8
  %aOp4 = getelementptr inbounds nuw %struct.Vdbe, ptr %30, i32 0, i32 23
  %31 = load ptr, ptr %aOp4, align 8
  %32 = load ptr, ptr %p.addr, align 8
  %nOp5 = getelementptr inbounds nuw %struct.Vdbe, ptr %32, i32 0, i32 24
  %33 = load i32, ptr %nOp5, align 8
  call void @vdbeFreeOpArray(ptr noundef %29, ptr noundef %31, i32 noundef %33)
  %34 = load ptr, ptr %db.addr, align 8
  %35 = load ptr, ptr %p.addr, align 8
  %aColName6 = getelementptr inbounds nuw %struct.Vdbe, ptr %35, i32 0, i32 26
  %36 = load ptr, ptr %aColName6, align 8
  call void @sqlite3DbFree(ptr noundef %34, ptr noundef %36)
  %37 = load ptr, ptr %db.addr, align 8
  %38 = load ptr, ptr %p.addr, align 8
  %zSql = getelementptr inbounds nuw %struct.Vdbe, ptr %38, i32 0, i32 41
  %39 = load ptr, ptr %zSql, align 8
  call void @sqlite3DbFree(ptr noundef %37, ptr noundef %39)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releaseMemArray(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeFreeOpArray(ptr noundef, ptr noundef, i32 noundef) #0

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
