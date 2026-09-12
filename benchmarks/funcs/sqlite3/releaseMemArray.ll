; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
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
declare hidden void @sqlite3VdbeMemRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFreeNN(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @releaseMemArray(ptr noundef %p, i32 noundef %N) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %pEnd = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %N.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end24

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load i32, ptr %N.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.sqlite3_value, ptr %2, i64 %idxprom
  store ptr %arrayidx, ptr %pEnd, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %4, i32 0, i32 9
  %5 = load ptr, ptr %db2, align 8
  store ptr %5, ptr %db, align 8
  %6 = load ptr, ptr %db, align 8
  %pnBytesFreed = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 82
  %7 = load ptr, ptr %pnBytesFreed, align 8
  %tobool3 = icmp ne ptr %7, null
  br i1 %tobool3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then4
  %8 = load ptr, ptr %p.addr, align 8
  %szMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %8, i32 0, i32 7
  %9 = load i32, ptr %szMalloc, align 8
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %do.body
  %10 = load ptr, ptr %db, align 8
  %11 = load ptr, ptr %p.addr, align 8
  %zMalloc = getelementptr inbounds nuw %struct.sqlite3_value, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %zMalloc, align 8
  call void @sqlite3DbFree(ptr noundef %10, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then6, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %13 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.sqlite3_value, ptr %13, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %14 = load ptr, ptr %pEnd, align 8
  %cmp = icmp ult ptr %incdec.ptr, %14
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end24

if.end7:                                          ; preds = %if.then
  br label %do.body8

do.body8:                                         ; preds = %do.cond19, %if.end7
  %15 = load ptr, ptr %p.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3_value, ptr %15, i32 0, i32 1
  %16 = load i16, ptr %flags, align 8
  %conv = zext i16 %16 to i32
  %and = and i32 %conv, 9216
  %tobool9 = icmp ne i32 %and, 0
  br i1 %tobool9, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.body8
  %17 = load ptr, ptr %p.addr, align 8
  call void @sqlite3VdbeMemRelease(ptr noundef %17)
  br label %if.end17

if.else:                                          ; preds = %do.body8
  %18 = load ptr, ptr %p.addr, align 8
  %szMalloc11 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %18, i32 0, i32 7
  %19 = load i32, ptr %szMalloc11, align 8
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.else
  %20 = load ptr, ptr %db, align 8
  %21 = load ptr, ptr %p.addr, align 8
  %zMalloc14 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %21, i32 0, i32 6
  %22 = load ptr, ptr %zMalloc14, align 8
  call void @sqlite3DbFreeNN(ptr noundef %20, ptr noundef %22)
  %23 = load ptr, ptr %p.addr, align 8
  %szMalloc15 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %23, i32 0, i32 7
  store i32 0, ptr %szMalloc15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then10
  %24 = load ptr, ptr %p.addr, align 8
  %flags18 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %24, i32 0, i32 1
  store i16 128, ptr %flags18, align 8
  br label %do.cond19

do.cond19:                                        ; preds = %if.end17
  %25 = load ptr, ptr %p.addr, align 8
  %incdec.ptr20 = getelementptr inbounds nuw %struct.sqlite3_value, ptr %25, i32 1
  store ptr %incdec.ptr20, ptr %p.addr, align 8
  %26 = load ptr, ptr %pEnd, align 8
  %cmp21 = icmp ult ptr %incdec.ptr20, %26
  br i1 %cmp21, label %do.body8, label %do.end23, !llvm.loop !8

do.end23:                                         ; preds = %do.cond19
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %do.end, %land.lhs.true, %entry
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
!8 = distinct !{!8, !7}
