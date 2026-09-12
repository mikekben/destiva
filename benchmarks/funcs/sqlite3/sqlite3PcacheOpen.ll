; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PCache = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PcacheOpen(i32 noundef %szPage, i32 noundef %szExtra, i32 noundef %bPurgeable, ptr noundef %xStress, ptr noundef %pStress, ptr noundef %p) #1 {
entry:
  %szPage.addr = alloca i32, align 4
  %szExtra.addr = alloca i32, align 4
  %bPurgeable.addr = alloca i32, align 4
  %xStress.addr = alloca ptr, align 8
  %pStress.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store i32 %szPage, ptr %szPage.addr, align 4
  store i32 %szExtra, ptr %szExtra.addr, align 4
  store i32 %bPurgeable, ptr %bPurgeable.addr, align 4
  store ptr %xStress, ptr %xStress.addr, align 8
  store ptr %pStress, ptr %pStress.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 72, i1 false)
  %1 = load ptr, ptr %p.addr, align 8
  %szPage1 = getelementptr inbounds nuw %struct.PCache, ptr %1, i32 0, i32 6
  store i32 1, ptr %szPage1, align 4
  %2 = load i32, ptr %szExtra.addr, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %szExtra2 = getelementptr inbounds nuw %struct.PCache, ptr %3, i32 0, i32 7
  store i32 %2, ptr %szExtra2, align 8
  %4 = load i32, ptr %bPurgeable.addr, align 4
  %conv = trunc i32 %4 to i8
  %5 = load ptr, ptr %p.addr, align 8
  %bPurgeable3 = getelementptr inbounds nuw %struct.PCache, ptr %5, i32 0, i32 8
  store i8 %conv, ptr %bPurgeable3, align 4
  %6 = load ptr, ptr %p.addr, align 8
  %eCreate = getelementptr inbounds nuw %struct.PCache, ptr %6, i32 0, i32 9
  store i8 2, ptr %eCreate, align 1
  %7 = load ptr, ptr %xStress.addr, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %xStress4 = getelementptr inbounds nuw %struct.PCache, ptr %8, i32 0, i32 10
  store ptr %7, ptr %xStress4, align 8
  %9 = load ptr, ptr %pStress.addr, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %pStress5 = getelementptr inbounds nuw %struct.PCache, ptr %10, i32 0, i32 11
  store ptr %9, ptr %pStress5, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %szCache = getelementptr inbounds nuw %struct.PCache, ptr %11, i32 0, i32 4
  store i32 100, ptr %szCache, align 4
  %12 = load ptr, ptr %p.addr, align 8
  %szSpill = getelementptr inbounds nuw %struct.PCache, ptr %12, i32 0, i32 5
  store i32 1, ptr %szSpill, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %14 = load i32, ptr %szPage.addr, align 4
  %call = call i32 @sqlite3PcacheSetPageSize(ptr noundef %13, i32 noundef %14)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcacheSetPageSize(ptr noundef, i32 noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
