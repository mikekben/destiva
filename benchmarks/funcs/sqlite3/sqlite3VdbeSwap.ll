; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeSwap(ptr noundef %pA, ptr noundef %pB) #1 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %tmp = alloca %struct.Vdbe, align 8
  %pTmp = alloca ptr, align 8
  %zTmp = alloca ptr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  %0 = load ptr, ptr %pA.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %tmp, ptr align 8 %0, i64 296, i1 false)
  %1 = load ptr, ptr %pA.addr, align 8
  %2 = load ptr, ptr %pB.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 296, i1 false)
  %3 = load ptr, ptr %pB.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %tmp, i64 296, i1 false)
  %4 = load ptr, ptr %pA.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pNext, align 8
  store ptr %5, ptr %pTmp, align 8
  %6 = load ptr, ptr %pB.addr, align 8
  %pNext1 = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pNext1, align 8
  %8 = load ptr, ptr %pA.addr, align 8
  %pNext2 = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 2
  store ptr %7, ptr %pNext2, align 8
  %9 = load ptr, ptr %pTmp, align 8
  %10 = load ptr, ptr %pB.addr, align 8
  %pNext3 = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 2
  store ptr %9, ptr %pNext3, align 8
  %11 = load ptr, ptr %pA.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.Vdbe, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pPrev, align 8
  store ptr %12, ptr %pTmp, align 8
  %13 = load ptr, ptr %pB.addr, align 8
  %pPrev4 = getelementptr inbounds nuw %struct.Vdbe, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %pPrev4, align 8
  %15 = load ptr, ptr %pA.addr, align 8
  %pPrev5 = getelementptr inbounds nuw %struct.Vdbe, ptr %15, i32 0, i32 1
  store ptr %14, ptr %pPrev5, align 8
  %16 = load ptr, ptr %pTmp, align 8
  %17 = load ptr, ptr %pB.addr, align 8
  %pPrev6 = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 1
  store ptr %16, ptr %pPrev6, align 8
  %18 = load ptr, ptr %pA.addr, align 8
  %zSql = getelementptr inbounds nuw %struct.Vdbe, ptr %18, i32 0, i32 41
  %19 = load ptr, ptr %zSql, align 8
  store ptr %19, ptr %zTmp, align 8
  %20 = load ptr, ptr %pB.addr, align 8
  %zSql7 = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 41
  %21 = load ptr, ptr %zSql7, align 8
  %22 = load ptr, ptr %pA.addr, align 8
  %zSql8 = getelementptr inbounds nuw %struct.Vdbe, ptr %22, i32 0, i32 41
  store ptr %21, ptr %zSql8, align 8
  %23 = load ptr, ptr %zTmp, align 8
  %24 = load ptr, ptr %pB.addr, align 8
  %zSql9 = getelementptr inbounds nuw %struct.Vdbe, ptr %24, i32 0, i32 41
  store ptr %23, ptr %zSql9, align 8
  %25 = load ptr, ptr %pA.addr, align 8
  %expmask = getelementptr inbounds nuw %struct.Vdbe, ptr %25, i32 0, i32 46
  %26 = load i32, ptr %expmask, align 4
  %27 = load ptr, ptr %pB.addr, align 8
  %expmask10 = getelementptr inbounds nuw %struct.Vdbe, ptr %27, i32 0, i32 46
  store i32 %26, ptr %expmask10, align 4
  %28 = load ptr, ptr %pA.addr, align 8
  %prepFlags = getelementptr inbounds nuw %struct.Vdbe, ptr %28, i32 0, i32 34
  %29 = load i8, ptr %prepFlags, align 4
  %30 = load ptr, ptr %pB.addr, align 8
  %prepFlags11 = getelementptr inbounds nuw %struct.Vdbe, ptr %30, i32 0, i32 34
  store i8 %29, ptr %prepFlags11, align 4
  %31 = load ptr, ptr %pB.addr, align 8
  %aCounter = getelementptr inbounds nuw %struct.Vdbe, ptr %31, i32 0, i32 39
  %arraydecay = getelementptr inbounds [7 x i32], ptr %aCounter, i64 0, i64 0
  %32 = load ptr, ptr %pA.addr, align 8
  %aCounter12 = getelementptr inbounds nuw %struct.Vdbe, ptr %32, i32 0, i32 39
  %arraydecay13 = getelementptr inbounds [7 x i32], ptr %aCounter12, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 8 %arraydecay13, i64 28, i1 false)
  %33 = load ptr, ptr %pB.addr, align 8
  %aCounter14 = getelementptr inbounds nuw %struct.Vdbe, ptr %33, i32 0, i32 39
  %arrayidx = getelementptr inbounds [7 x i32], ptr %aCounter14, i64 0, i64 5
  %34 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %arrayidx, align 4
  ret void
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
