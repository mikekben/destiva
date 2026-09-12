; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3FreeIndex(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DeleteIndexSamples(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %pPartIdxWhere, align 8
  call void @sqlite3ExprDelete(ptr noundef %2, ptr noundef %4)
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %6, i32 0, i32 10
  %7 = load ptr, ptr %aColExpr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %zColAff = getelementptr inbounds nuw %struct.Index, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %zColAff, align 8
  call void @sqlite3DbFree(ptr noundef %8, ptr noundef %10)
  %11 = load ptr, ptr %p.addr, align 8
  %isResized = getelementptr inbounds nuw %struct.Index, ptr %11, i32 0, i32 16
  %bf.load = load i16, ptr %isResized, align 1
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %p.addr, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %azColl, align 8
  call void @sqlite3DbFree(ptr noundef %12, ptr noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %db.addr, align 8
  %16 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DbFree(ptr noundef %15, ptr noundef %16)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteIndexSamples(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
