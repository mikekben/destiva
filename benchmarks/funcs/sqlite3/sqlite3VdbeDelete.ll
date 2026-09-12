; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeClearObject(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeDelete(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %3 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeClearObject(ptr noundef %2, ptr noundef %3)
  %4 = load ptr, ptr %p.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.Vdbe, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %pPrev, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.Vdbe, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pNext, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %pPrev2 = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pPrev2, align 8
  %pNext3 = getelementptr inbounds nuw %struct.Vdbe, ptr %9, i32 0, i32 2
  store ptr %7, ptr %pNext3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %p.addr, align 8
  %pNext4 = getelementptr inbounds nuw %struct.Vdbe, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pNext4, align 8
  %12 = load ptr, ptr %db, align 8
  %pVdbe = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 1
  store ptr %11, ptr %pVdbe, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load ptr, ptr %p.addr, align 8
  %pNext5 = getelementptr inbounds nuw %struct.Vdbe, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %pNext5, align 8
  %tobool6 = icmp ne ptr %14, null
  br i1 %tobool6, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  %15 = load ptr, ptr %p.addr, align 8
  %pPrev8 = getelementptr inbounds nuw %struct.Vdbe, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pPrev8, align 8
  %17 = load ptr, ptr %p.addr, align 8
  %pNext9 = getelementptr inbounds nuw %struct.Vdbe, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %pNext9, align 8
  %pPrev10 = getelementptr inbounds nuw %struct.Vdbe, ptr %18, i32 0, i32 1
  store ptr %16, ptr %pPrev10, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end
  %19 = load ptr, ptr %p.addr, align 8
  %magic = getelementptr inbounds nuw %struct.Vdbe, ptr %19, i32 0, i32 6
  store i32 1443283912, ptr %magic, align 4
  %20 = load ptr, ptr %p.addr, align 8
  %db12 = getelementptr inbounds nuw %struct.Vdbe, ptr %20, i32 0, i32 0
  store ptr null, ptr %db12, align 8
  %21 = load ptr, ptr %db, align 8
  %22 = load ptr, ptr %p.addr, align 8
  call void @sqlite3DbFreeNN(ptr noundef %21, ptr noundef %22)
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
