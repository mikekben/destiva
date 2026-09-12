; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ValueFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @freeP4(ptr noundef %db, i32 noundef %p4type, ptr noundef %p4) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p4type.addr = alloca i32, align 4
  %p4.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %p4type, ptr %p4type.addr, align 4
  store ptr %p4, ptr %p4.addr, align 8
  %0 = load i32, ptr %p4type.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 -16, label %sw.bb
    i32 -13, label %sw.bb1
    i32 -14, label %sw.bb1
    i32 -7, label %sw.bb1
    i32 -17, label %sw.bb1
    i32 -15, label %sw.bb1
    i32 -9, label %sw.bb2
    i32 -8, label %sw.bb3
    i32 -11, label %sw.bb4
    i32 -12, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %p4.addr, align 8
  call void @freeP4FuncCtx(ptr noundef %1, ptr noundef %2)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry, %entry
  %3 = load ptr, ptr %db.addr, align 8
  %4 = load ptr, ptr %p4.addr, align 8
  call void @sqlite3DbFree(ptr noundef %3, ptr noundef %4)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 82
  %6 = load ptr, ptr %pnBytesFreed, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb2
  %7 = load ptr, ptr %p4.addr, align 8
  call void @sqlite3KeyInfoUnref(ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %p4.addr, align 8
  call void @freeEphemeralFunction(ptr noundef %8, ptr noundef %9)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %10 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed5 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 82
  %11 = load ptr, ptr %pnBytesFreed5, align 8
  %cmp6 = icmp eq ptr %11, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb4
  %12 = load ptr, ptr %p4.addr, align 8
  call void @sqlite3ValueFree(ptr noundef %12)
  br label %if.end8

if.else:                                          ; preds = %sw.bb4
  %13 = load ptr, ptr %db.addr, align 8
  %14 = load ptr, ptr %p4.addr, align 8
  call void @freeP4Mem(ptr noundef %13, ptr noundef %14)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %15 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed10 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 82
  %16 = load ptr, ptr %pnBytesFreed10, align 8
  %cmp11 = icmp eq ptr %16, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sw.bb9
  %17 = load ptr, ptr %p4.addr, align 8
  call void @sqlite3VtabUnlock(ptr noundef %17)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %sw.bb9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %if.end8, %sw.bb3, %if.end, %sw.bb1, %sw.bb, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @freeP4FuncCtx(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3KeyInfoUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freeEphemeralFunction(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @freeP4Mem(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlock(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
