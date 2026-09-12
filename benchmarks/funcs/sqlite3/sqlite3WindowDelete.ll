; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Window = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3WindowDelete(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  call void @sqlite3WindowUnlinkFromSelect(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %p.addr, align 8
  %pFilter = getelementptr inbounds nuw %struct.Window, ptr %3, i32 0, i32 13
  %4 = load ptr, ptr %pFilter, align 8
  call void @sqlite3ExprDelete(ptr noundef %2, ptr noundef %4)
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %pPartition = getelementptr inbounds nuw %struct.Window, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pPartition, align 8
  call void @sqlite3ExprListDelete(ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %pOrderBy = getelementptr inbounds nuw %struct.Window, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %pOrderBy, align 8
  call void @sqlite3ExprListDelete(ptr noundef %8, ptr noundef %10)
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.Window, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %pEnd, align 8
  call void @sqlite3ExprDelete(ptr noundef %11, ptr noundef %13)
  %14 = load ptr, ptr %db.addr, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %pStart = getelementptr inbounds nuw %struct.Window, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %pStart, align 8
  call void @sqlite3ExprDelete(ptr noundef %14, ptr noundef %16)
  %17 = load ptr, ptr %db.addr, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Window, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %17, ptr noundef %19)
  %20 = load ptr, ptr %db.addr, align 8
  %21 = load ptr, ptr %p.addr, align 8
  %zBase = getelementptr inbounds nuw %struct.Window, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %zBase, align 8
  call void @sqlite3DbFree(ptr noundef %20, ptr noundef %22)
  %23 = load ptr, ptr %db.addr, align 8
  %24 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DbFree(ptr noundef %23, ptr noundef %24)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WindowUnlinkFromSelect(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
